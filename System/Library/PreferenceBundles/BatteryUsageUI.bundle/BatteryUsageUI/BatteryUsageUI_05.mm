uint64_t sub_B68CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_115760();
  __chkstk_darwin(*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_ACADC();
        v21 = sub_117120();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

void sub_B6B4C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_117170();
  v4 = BatteryUILocalization(v3);

  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_1171B0();

  v5 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  sub_BA49C(v5, v6, v7);
  sub_1172D0();
  sub_1172D0();
  if (v36 == v34 && v37 == v35)
  {

    goto LABEL_6;
  }

  v8 = sub_1179E0();

  if (v8)
  {
LABEL_6:
    v9 = sub_117170();
    v10 = BatteryUILocalization(v9);

    if (v10)
    {

      sub_1171B0();

      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    return;
  }

LABEL_8:
  v11 = *(v2 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
  v12 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingTime;
  v13 = *(v11 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingTime);
  isa = sub_1156B0().super.isa;
  v15 = [v13 stringFromDate:isa];

  v16 = sub_1171B0();
  v18 = v17;

  v19 = *(v11 + v12);
  v20 = sub_1156B0().super.isa;
  v21 = [v19 stringFromDate:v20];

  v22 = sub_1171B0();
  v24 = v23;

  v25 = *(v11 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingInterval);
  v26 = [v25 stringFromTimeInterval:sub_D3624()];

  if (v26)
  {
    v27 = sub_1171B0();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  sub_46F9C(&qword_182EF8, &unk_125990);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1246D0;
  *(v30 + 56) = &type metadata for String;
  v33 = sub_53EE8(v30, v31, v32);
  *(v30 + 32) = v16;
  *(v30 + 40) = v18;
  *(v30 + 96) = &type metadata for String;
  *(v30 + 104) = v33;
  *(v30 + 64) = v33;
  *(v30 + 72) = v22;
  *(v30 + 80) = v24;
  *(v30 + 136) = &type metadata for String;
  *(v30 + 144) = v33;
  *(v30 + 112) = v27;
  *(v30 + 120) = v29;
  sub_1171C0();
}

void sub_B6E9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_46F9C(&qword_185318, &unk_12A0B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  v7 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_479B4(a1, v6, &qword_185318, &unk_12A0B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_488C8(v6, &qword_185318, &unk_12A0B0);
LABEL_8:
    v17 = sub_117170();
    v18 = BatteryUILocalization(v17);

    if (v18)
    {
      sub_1171B0();

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_BA4F0(v6, v10, type metadata accessor for BUIChartViewData.ScreenUsageElement);
  if (v10[v7[8]] != 1)
  {
    sub_BA43C(v10, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    goto LABEL_8;
  }

  if (sub_D2D88() > 0.0)
  {
    v11 = *(v2 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
    v12 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingInterval;
    v13 = *(v11 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingInterval);
    v14 = [v13 stringFromTimeInterval:sub_D2D88()];

    if (v14)
    {
      v15 = sub_1171B0();
      v52 = v16;
      v53 = v15;
    }

    else
    {
      v52 = 0xE000000000000000;
      v53 = 0;
    }

    v24 = [*(v11 + v12) stringFromTimeInterval:*&v10[v7[6]]];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1171B0();
      v50 = v27;
      v51 = v26;
    }

    else
    {
      v50 = 0xE000000000000000;
      v51 = 0;
    }

    v28 = [*(v11 + v12) stringFromTimeInterval:{*&v10[v7[7]], v50, v51}];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1171B0();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0xE000000000000000;
    }

    v33 = sub_117170();
    v34 = BatteryUILocalization(v33);

    if (!v34)
    {
      goto LABEL_24;
    }

    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1246D0;
    *(v35 + 56) = &type metadata for String;
    v38 = sub_53EE8(v35, v36, v37);
    v39 = v52;
    *(v35 + 32) = v53;
    *(v35 + 40) = v39;
    *(v35 + 96) = &type metadata for String;
    *(v35 + 104) = v38;
    v40 = v50;
    v41 = v51;
    *(v35 + 64) = v38;
    *(v35 + 72) = v41;
    *(v35 + 80) = v40;
    *(v35 + 136) = &type metadata for String;
    *(v35 + 144) = v38;
    *(v35 + 112) = v30;
    *(v35 + 120) = v32;
    v21 = sub_1171C0();
    v23 = v42;

LABEL_21:
    v55 = v21;
    v56 = v23;
    v43 = v7[5];
    v44.n128_u64[0] = *sub_A79F0();
    v57._countAndFlagsBits = (*(*v2 + 544))(&v10[v43], v44);
    v54._countAndFlagsBits = 8236;
    v54._object = 0xE200000000000000;
    sub_117220(v57);

    v58._countAndFlagsBits = 8236;
    v58._object = 0xE200000000000000;
    sub_117220(v58);

    countAndFlagsBits = v54._countAndFlagsBits;
    object = v54._object;
    v47 = (*(*v2 + 552))(&v10[v43]);
    v49 = v48;
    v54._countAndFlagsBits = countAndFlagsBits;
    v54._object = object;

    v59._countAndFlagsBits = v47;
    v59._object = v49;
    sub_117220(v59);

    sub_117220(v54);

    sub_BA43C(v10, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    return;
  }

  v19 = sub_117170();
  v20 = BatteryUILocalization(v19);

  if (v20)
  {
    v21 = sub_1171B0();
    v23 = v22;

    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_B7410(uint64_t a1)
{
  v3 = sub_46F9C(&qword_185320, &unk_12A560);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for BUIChartViewData.BatteryUsageElement(0);
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_479B4(a1, v5, &qword_185320, &unk_12A560);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_488C8(v5, &qword_185320, &unk_12A560);
LABEL_8:
    v19 = sub_117170();
    v20 = BatteryUILocalization(v19);

    if (v20)
    {
      sub_1171B0();

      return;
    }

    __break(1u);
    goto LABEL_17;
  }

  v10 = sub_BA4F0(v5, v9, type metadata accessor for BUIChartViewData.BatteryUsageElement);
  if (v9[v6[7]] != 1)
  {
    sub_BA43C(v9, type metadata accessor for BUIChartViewData.BatteryUsageElement);
    goto LABEL_8;
  }

  v11 = *&v9[v6[6]];
  if (v11 > 0.0)
  {
    v12 = v1;
    v13 = (*(**(v1 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg) + 584))(v10);
    v14 = [objc_allocWithZone(NSNumber) initWithDouble:v11];
    v15 = [v13 stringFromNumber:v14];

    if (v15)
    {
      v16 = sub_1171B0();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }

    v26 = sub_117170();
    v27 = BatteryUILocalization(v26);

    if (!v27)
    {
      goto LABEL_18;
    }

    v1 = v12;
    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_124890;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_53EE8(v28, v29, v30);
    *(v28 + 32) = v16;
    *(v28 + 40) = v18;
    v23 = sub_1171C0();
    v25 = v31;

LABEL_15:
    v33 = v23;
    v34 = v25;
    v35._countAndFlagsBits = (*(*v1 + 552))(&v9[v6[5]]);
    v32._countAndFlagsBits = 8236;
    v32._object = 0xE200000000000000;
    sub_117220(v35);

    sub_117220(v32);

    sub_BA43C(v9, type metadata accessor for BUIChartViewData.BatteryUsageElement);
    return;
  }

  v21 = sub_117170();
  v22 = BatteryUILocalization(v21);

  if (v22)
  {
    v23 = sub_1171B0();
    v25 = v24;

    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_B7884(uint64_t a1)
{
  v3 = sub_46F9C(&qword_185318, &unk_12A0B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - v4;
  v6 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_479B4(a1, v5, &qword_185318, &unk_12A0B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_488C8(v5, &qword_185318, &unk_12A0B0);
LABEL_8:
    v17 = sub_117170();
    v18 = BatteryUILocalization(v17);

    if (v18)
    {
      sub_1171B0();

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_BA4F0(v5, v9, type metadata accessor for BUIChartViewData.ScreenUsageElement);
  if (v9[v6[8]] != 1)
  {
    sub_BA43C(v9, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    goto LABEL_8;
  }

  v10 = v1;
  if (sub_D2D88() > 0.0)
  {
    v11 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
    v12 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingInterval;
    v13 = *(v11 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingInterval);
    v14 = [v13 stringFromTimeInterval:sub_D2D88()];

    if (v14)
    {
      v15 = sub_1171B0();
      v46 = v16;
      v47 = v15;
    }

    else
    {
      v46 = 0xE000000000000000;
      v47 = 0;
    }

    v25 = [*(v11 + v12) stringFromTimeInterval:*&v9[v6[6]]];
    v21 = v10;
    if (v25)
    {
      v26 = v25;
      v27 = sub_1171B0();
      v44 = v28;
      v45 = v27;
    }

    else
    {
      v44 = 0xE000000000000000;
      v45 = 0;
    }

    v29 = [*(v11 + v12) stringFromTimeInterval:{*&v9[v6[7]], v44, v45}];
    if (v29)
    {
      v30 = v29;
      v31 = sub_1171B0();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0xE000000000000000;
    }

    v34 = sub_117170();
    v35 = BatteryUILocalization(v34);

    if (!v35)
    {
      goto LABEL_24;
    }

    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1246D0;
    *(v36 + 56) = &type metadata for String;
    v39 = sub_53EE8(v36, v37, v38);
    v40 = v46;
    *(v36 + 32) = v47;
    *(v36 + 40) = v40;
    *(v36 + 96) = &type metadata for String;
    *(v36 + 104) = v39;
    v41 = v44;
    v42 = v45;
    *(v36 + 64) = v39;
    *(v36 + 72) = v42;
    *(v36 + 80) = v41;
    *(v36 + 136) = &type metadata for String;
    *(v36 + 144) = v39;
    *(v36 + 112) = v31;
    *(v36 + 120) = v33;
    v22 = sub_1171C0();
    v24 = v43;

LABEL_21:
    v49 = v22;
    v50 = v24;
    v51._countAndFlagsBits = (*(*v21 + 552))(&v9[v6[5]]);
    v48._countAndFlagsBits = 8236;
    v48._object = 0xE200000000000000;
    sub_117220(v51);

    sub_117220(v48);

    sub_BA43C(v9, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    return;
  }

  v19 = sub_117170();
  v20 = BatteryUILocalization(v19);

  if (v20)
  {
    v21 = v10;
    v22 = sub_1171B0();
    v24 = v23;

    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

unint64_t sub_B7D4C(uint64_t a1, __n128 a2)
{
  v69 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
  __chkstk_darwin(v69);
  v67 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v65 - v5;
  v6 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v70 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  __chkstk_darwin(v68);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v65 - v12);
  v14 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v14);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v65 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v65 - v22;
  v24 = (*(*v2 + 192))(v21);
  result = (*(*v2 + 240))();
  v27 = *(*v2 + 136);
  if (v24)
  {
    if (v26)
    {
      (v27)(result);
      v28 = v67;
      sub_BA3D4(&v16[*(v14 + 20)], v67, type metadata accessor for BUIChartViewData.DataFor10Days);
      sub_BA43C(v16, type metadata accessor for BUIChartViewData);
      v29 = *(v28 + *(v69 + 24));

      sub_BA43C(v28, type metadata accessor for BUIChartViewData.DataFor10Days);
      v30 = *(v29 + 16);
      if (v30)
      {
        v72 = _swiftEmptyArrayStorage;
        sub_BA008(0, v30, 0);
        v31 = v72;
        v32 = v29 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
        v33 = *(v70 + 72);
        do
        {
          sub_BA3D4(v32, v8, type metadata accessor for BUIChartViewData.ScreenUsageElement);
          swift_getAtKeyPath();
          sub_BA43C(v8, type metadata accessor for BUIChartViewData.ScreenUsageElement);
          v34 = v71;
          v72 = v31;
          v36 = v31[2];
          v35 = v31[3];
          if (v36 >= v35 >> 1)
          {
            sub_BA008((v35 > 1), v36 + 1, 1);
            v31 = v72;
          }

          v31[2] = v36 + 1;
          v31[v36 + 4] = v34;
          v32 += v33;
          --v30;
        }

        while (v30);

        v49 = v31[2];
        if (!v49)
        {
        }
      }

      else
      {

        v31 = _swiftEmptyArrayStorage;
        v49 = _swiftEmptyArrayStorage[2];
        if (!v49)
        {
        }
      }

      if (v49 > 3)
      {
        v50 = v49 & 0x7FFFFFFFFFFFFFFCLL;
        v55 = (v31 + 6);
        v51 = 0.0;
        v56 = v49 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v51 = v51 + *(v55 - 2) + *(v55 - 1) + *v55 + v55[1];
          v55 += 4;
          v56 -= 4;
        }

        while (v56);
        if (v49 == v50)
        {
        }
      }

      else
      {
        v50 = 0;
        v51 = 0.0;
      }

      v57 = v49 - v50;
      v58 = &v31[v50 + 4];
      do
      {
        v59 = *v58++;
        v51 = v51 + v59;
        --v57;
      }

      while (v57);
    }

    v45 = result;
    v27();
    v13 = type metadata accessor for BUIChartViewData.DataFor10Days;
    v46 = &v23[*(v14 + 20)];
    v47 = v66;
    sub_BA3D4(v46, v66, type metadata accessor for BUIChartViewData.DataFor10Days);
    sub_BA43C(v23, type metadata accessor for BUIChartViewData);
    v48 = *(v47 + *(v69 + 24));

    result = sub_BA43C(v47, type metadata accessor for BUIChartViewData.DataFor10Days);
    if ((v45 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v45 < *(v48 + 16))
    {
LABEL_21:
      sub_BA3D4(v48 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v45, v8, type metadata accessor for BUIChartViewData.ScreenUsageElement);

      swift_getAtKeyPath();
      return sub_BA43C(v8, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    }

    __break(1u);
  }

  else if (v26)
  {
    (v27)(result);
    sub_BA3D4(v19, v10, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    sub_BA43C(v19, type metadata accessor for BUIChartViewData);
    v37 = *&v10[*(v68 + 36)];

    sub_BA43C(v10, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    v38 = *(v37 + 16);
    if (v38)
    {
      v72 = _swiftEmptyArrayStorage;
      sub_BA008(0, v38, 0);
      v39 = v72;
      v40 = v37 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
      v41 = *(v70 + 72);
      do
      {
        sub_BA3D4(v40, v8, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        swift_getAtKeyPath();
        sub_BA43C(v8, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        v42 = v71;
        v72 = v39;
        v44 = v39[2];
        v43 = v39[3];
        if (v44 >= v43 >> 1)
        {
          sub_BA008((v43 > 1), v44 + 1, 1);
          v39 = v72;
        }

        v39[2] = v44 + 1;
        v39[v44 + 4] = v42;
        v40 += v41;
        --v38;
      }

      while (v38);

      v52 = v39[2];
      if (!v52)
      {
      }
    }

    else
    {

      v39 = _swiftEmptyArrayStorage;
      v52 = _swiftEmptyArrayStorage[2];
      if (!v52)
      {
      }
    }

    if (v52 > 3)
    {
      v53 = v52 & 0x7FFFFFFFFFFFFFFCLL;
      v60 = (v39 + 6);
      v54 = 0.0;
      v61 = v52 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v54 = v54 + *(v60 - 2) + *(v60 - 1) + *v60 + v60[1];
        v60 += 4;
        v61 -= 4;
      }

      while (v61);
      if (v52 == v53)
      {
      }
    }

    else
    {
      v53 = 0;
      v54 = 0.0;
    }

    v62 = v52 - v53;
    v63 = &v39[v53 + 4];
    do
    {
      v64 = *v63++;
      v54 = v54 + v64;
      --v62;
    }

    while (v62);
  }

  v45 = result;
  v27();
  sub_BA3D4(v23, v13, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_BA43C(v23, type metadata accessor for BUIChartViewData);
  v48 = *(v13 + *(v68 + 36));

  result = sub_BA43C(v13, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  if ((v45 & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v45 < *(v48 + 16))
  {
    goto LABEL_21;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_B8574()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__data;
  v2 = sub_46F9C(&qword_1852A0, &qword_129EB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__activeChart;
  v4 = sub_46F9C(&qword_1852C8, &unk_129EE0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__selectedIndex;
  v6 = sub_46F9C(&qword_1852C0, &qword_129ED8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__topMargin;
  v8 = sub_46F9C(&qword_1852B8, &qword_129ED0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__bottomMargin, v8);
  v10 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__containerBackgroundColor[0];
  v11 = sub_46F9C(&qword_1852B0, &qword_129EC8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  return swift_deallocClassInstance();
}

uint64_t sub_B878C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BUIChartViewModel(0);
  result = sub_115F20();
  *a2 = result;
  return result;
}

void sub_B8800(__n128 a1)
{
  v36 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  sub_115690();
  v11 = v10;
  v12 = sub_117170();
  v13 = BatteryUILocalization(v12);

  if (!v13)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v14 = *(v1 + *(type metadata accessor for BUIChartViewData.DataFor24Hrs(0) + 20));
  v15 = _swiftEmptyArrayStorage;
  v37 = *(v14 + 16);
  v33 = v13;
  if (v37)
  {
    v16 = 0;
    v17 = v36;
    v18 = v34;
    v35 = v6;
    while (v16 < *(v14 + 16))
    {
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v20 = *(v18 + 72);
      sub_BA3D4(v14 + v19 + v20 * v16, v9, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      if (v9[*(v17 + 32)] == 1)
      {
        sub_BA4F0(v9, v6, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_BA028(0, v15[2] + 1, 1);
          v18 = v34;
          v15 = v38;
        }

        v23 = v15[2];
        v22 = v15[3];
        if (v23 >= v22 >> 1)
        {
          sub_BA028((v22 > 1), v23 + 1, 1);
          v18 = v34;
          v15 = v38;
        }

        v15[2] = v23 + 1;
        v6 = v35;
        sub_BA4F0(v35, v15 + v19 + v23 * v20, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
        v17 = v36;
      }

      else
      {
        sub_BA43C(v9, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      }

      if (v37 == ++v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v17 = v36;
  v18 = v34;
LABEL_14:
  v24 = v15[2];
  if (v24)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_117780();
    sub_54960(0, &qword_185330, AXDataPoint_ptr);
    v25 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v26 = *(v18 + 72);
    do
    {
      sub_BA3D4(v25, v3, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      sub_115690();
      *&v39 = *&v3[*(v17 + 24)];
      *(&v39 + 1) = 0;
      v28._rawValue = _swiftEmptyArrayStorage;
      v40.value._countAndFlagsBits = 0;
      v40.value._object = 0;
      sub_1174B0(v27 - v11, v39, v28, v40, v29);
      sub_BA43C(v3, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      sub_117750();
      sub_117790();
      sub_1177A0();
      sub_117760();
      v25 += v26;
      --v24;
    }

    while (v24);
  }

  v30 = objc_allocWithZone(AXDataSeriesDescriptor);
  sub_54960(0, &qword_185330, AXDataPoint_ptr);
  isa = sub_117300().super.isa;

  v32 = v33;
  [v30 initWithName:v33 isContinuous:1 dataPoints:isa];
}

void sub_B8C44()
{
  v34 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v1 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  sub_115690();
  v11 = v10;
  v12 = sub_117170();
  v13 = BatteryUILocalization(v12);

  if (!v13)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v14 = *(v0 + *(type metadata accessor for BUIChartViewData.DataFor24Hrs(0) + 36));
  v15 = _swiftEmptyArrayStorage;
  v37 = *(v14 + 16);
  v33 = v13;
  if (v37)
  {
    v16 = 0;
    v17 = v34;
    v35 = v6;
    v36 = v1;
    while (v16 < *(v14 + 16))
    {
      v18 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v19 = *(v1 + 72);
      sub_BA3D4(v14 + v18 + v19 * v16, v9, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      if (v9[*(v17 + 32)] == 1)
      {
        sub_BA4F0(v9, v6, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_BA06C(0, v15[2] + 1, 1);
          v17 = v34;
          v15 = v38;
        }

        v22 = v15[2];
        v21 = v15[3];
        if (v22 >= v21 >> 1)
        {
          sub_BA06C((v21 > 1), v22 + 1, 1);
          v17 = v34;
          v15 = v38;
        }

        v15[2] = v22 + 1;
        v6 = v35;
        sub_BA4F0(v35, v15 + v18 + v22 * v19, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        v1 = v36;
      }

      else
      {
        sub_BA43C(v9, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      }

      if (v37 == ++v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v23 = v15[2];
  if (v23)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_117780();
    sub_54960(0, &qword_185330, AXDataPoint_ptr);
    v24 = v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v25 = *(v1 + 72);
    do
    {
      sub_BA3D4(v24, v3, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      sub_115690();
      v27 = v26 - v11;
      *&v39 = sub_D2D88();
      *(&v39 + 1) = 0;
      v28._rawValue = _swiftEmptyArrayStorage;
      v40.value._countAndFlagsBits = 0;
      v40.value._object = 0;
      sub_1174B0(v27, v39, v28, v40, v29);
      sub_BA43C(v3, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      sub_117750();
      sub_117790();
      sub_1177A0();
      sub_117760();
      v24 += v25;
      --v23;
    }

    while (v23);
  }

  v30 = objc_allocWithZone(AXDataSeriesDescriptor);
  sub_54960(0, &qword_185330, AXDataPoint_ptr);
  isa = sub_117300().super.isa;

  v32 = v33;
  [v30 initWithName:v33 isContinuous:0 dataPoints:isa];
}

void sub_B90BC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_115690();
  v6 = v5;
  v7 = sub_117170();
  v8 = BatteryUILocalization(v7);

  if (v8)
  {
    sub_54960(0, &qword_185328, AXNumericDataAxisDescriptor_ptr);
    sub_1171B0();

    if (*a1() >= 0.0)
    {
      *(swift_allocObject() + 16) = v6;
      sub_117580();
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_B91C8(void *a1, double a2, double a3)
{
  v4 = sub_115760();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115680();
  v8 = sub_5A754();
  swift_beginAccess();
  v9 = *(*v8 + *a1);
  isa = sub_1156B0().super.isa;
  v11 = [v9 stringFromDate:isa];

  v12 = sub_1171B0();
  (*(v5 + 8))(v7, v4);
  return v12;
}

void sub_B9324()
{
  v35 = type metadata accessor for BUIChartViewData.BatteryUsageElement(0);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v32 - v4;
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  sub_115690();
  v10 = v9;
  v11 = sub_117170();
  v12 = BatteryUILocalization(v11);

  if (!v12)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v13 = *(v0 + *(type metadata accessor for BUIChartViewData.DataFor10Days(0) + 20));
  v14 = _swiftEmptyArrayStorage;
  v36 = *(v13 + 16);
  v32 = v12;
  if (v36)
  {
    v15 = 0;
    v16 = v35;
    v17 = v33;
    v34 = v5;
    while (v15 < *(v13 + 16))
    {
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = *(v17 + 72);
      sub_BA3D4(v13 + v18 + v19 * v15, v8, type metadata accessor for BUIChartViewData.BatteryUsageElement);
      if (v8[*(v16 + 28)] == 1)
      {
        sub_BA4F0(v8, v5, type metadata accessor for BUIChartViewData.BatteryUsageElement);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_BA0B0(0, v14[2] + 1, 1);
          v17 = v33;
          v14 = v37;
        }

        v22 = v14[2];
        v21 = v14[3];
        if (v22 >= v21 >> 1)
        {
          sub_BA0B0((v21 > 1), v22 + 1, 1);
          v17 = v33;
          v14 = v37;
        }

        v14[2] = v22 + 1;
        v5 = v34;
        sub_BA4F0(v34, v14 + v18 + v22 * v19, type metadata accessor for BUIChartViewData.BatteryUsageElement);
        v16 = v35;
      }

      else
      {
        sub_BA43C(v8, type metadata accessor for BUIChartViewData.BatteryUsageElement);
      }

      if (v36 == ++v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v16 = v35;
  v17 = v33;
LABEL_14:
  v23 = v14[2];
  if (v23)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_117780();
    sub_54960(0, &qword_185330, AXDataPoint_ptr);
    v24 = v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v25 = *(v17 + 72);
    do
    {
      sub_BA3D4(v24, v2, type metadata accessor for BUIChartViewData.BatteryUsageElement);
      sub_115690();
      *&v38 = *&v2[*(v16 + 24)];
      *(&v38 + 1) = 0;
      v27._rawValue = _swiftEmptyArrayStorage;
      v39.value._countAndFlagsBits = 0;
      v39.value._object = 0;
      sub_1174B0(v26 - v10, v38, v27, v39, v28);
      sub_BA43C(v2, type metadata accessor for BUIChartViewData.BatteryUsageElement);
      sub_117750();
      sub_117790();
      sub_1177A0();
      sub_117760();
      v24 += v25;
      --v23;
    }

    while (v23);
  }

  v29 = objc_allocWithZone(AXDataSeriesDescriptor);
  sub_54960(0, &qword_185330, AXDataPoint_ptr);
  isa = sub_117300().super.isa;

  v31 = v32;
  [v29 initWithName:v32 isContinuous:0 dataPoints:isa];
}

void sub_B9768()
{
  v34 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v1 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  sub_115690();
  v11 = v10;
  v12 = sub_117170();
  v13 = BatteryUILocalization(v12);

  if (!v13)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v14 = *(v0 + *(type metadata accessor for BUIChartViewData.DataFor10Days(0) + 24));
  v15 = _swiftEmptyArrayStorage;
  v37 = *(v14 + 16);
  v33 = v13;
  if (v37)
  {
    v16 = 0;
    v17 = v34;
    v35 = v6;
    v36 = v1;
    while (v16 < *(v14 + 16))
    {
      v18 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v19 = *(v1 + 72);
      sub_BA3D4(v14 + v18 + v19 * v16, v9, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      if (v9[*(v17 + 32)] == 1)
      {
        sub_BA4F0(v9, v6, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_BA06C(0, v15[2] + 1, 1);
          v17 = v34;
          v15 = v38;
        }

        v22 = v15[2];
        v21 = v15[3];
        if (v22 >= v21 >> 1)
        {
          sub_BA06C((v21 > 1), v22 + 1, 1);
          v17 = v34;
          v15 = v38;
        }

        v15[2] = v22 + 1;
        v6 = v35;
        sub_BA4F0(v35, v15 + v18 + v22 * v19, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        v1 = v36;
      }

      else
      {
        sub_BA43C(v9, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      }

      if (v37 == ++v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v23 = v15[2];
  if (v23)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_117780();
    sub_54960(0, &qword_185330, AXDataPoint_ptr);
    v24 = v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v25 = *(v1 + 72);
    do
    {
      sub_BA3D4(v24, v3, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      sub_115690();
      v27 = v26 - v11;
      *&v39 = sub_D2D88();
      *(&v39 + 1) = 0;
      v28._rawValue = _swiftEmptyArrayStorage;
      v40.value._countAndFlagsBits = 0;
      v40.value._object = 0;
      sub_1174B0(v27, v39, v28, v40, v29);
      sub_BA43C(v3, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      sub_117750();
      sub_117790();
      sub_1177A0();
      sub_117760();
      v24 += v25;
      --v23;
    }

    while (v23);
  }

  v30 = objc_allocWithZone(AXDataSeriesDescriptor);
  sub_54960(0, &qword_185330, AXDataPoint_ptr);
  isa = sub_117300().super.isa;

  v32 = v33;
  [v30 initWithName:v33 isContinuous:0 dataPoints:isa];
}

void sub_B9BAC(void *a1, uint64_t (*a2)(void))
{
  v3 = a2();
  sub_117500();
  sub_117510();
  v4 = [v3 yAxis];
  [a1 setYAxis:v4];

  v5 = [v3 series];
  if (!v5)
  {
    sub_54960(0, &qword_185338, AXDataSeriesDescriptor_ptr);
    sub_117310();
    isa = sub_117300().super.isa;

    v5 = isa;
  }

  v7 = v5;
  [a1 setSeries:?];
}

uint64_t sub_B9CEC()
{
  v0 = sub_5A754();
  swift_beginAccess();
  v1 = *(**v0 + 560);

  v3 = v1(v2);
  v6 = sub_5822C(v3, v4, v5);
  sub_F59F0(&type metadata for PerfPowerServices, v6);
}

double sub_B9E48@<D0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{

  v6 = sub_116080();
  v7 = (*(*a1 + 440))(v6);
  *&v11[2] = v7;
  sub_A77E8(sub_BAA88, v11);
  sub_ACD88(a2, v12, v7);
  sub_116080();
  sub_116080();
  sub_116E80();
  sub_116070();
  v8 = v12[3];
  *(a3 + 32) = v12[2];
  *(a3 + 48) = v8;
  *(a3 + 64) = v12[4];
  *(a3 + 80) = v13;
  result = *v12;
  v10 = v12[1];
  *a3 = v12[0];
  *(a3 + 16) = v10;
  return result;
}

id sub_B9F74@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v9 = v1[1];
  v4 = sub_116EB0();
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v9;
  *a1 = v4;
  a1[1] = v6;
  a1[2] = sub_BAAEC;
  a1[3] = v7;

  return v9;
}

char *sub_BA008(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_BA0F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_BA028(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_BA1F8(a1, a2, a3, *v3, &qword_185638, &qword_12A298, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
  *v3 = result;
  return result;
}

void *sub_BA06C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_BA1F8(a1, a2, a3, *v3, &qword_185630, &qword_12A290, type metadata accessor for BUIChartViewData.ScreenUsageElement);
  *v3 = result;
  return result;
}

void *sub_BA0B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_BA1F8(a1, a2, a3, *v3, &qword_185628, &unk_12B850, type metadata accessor for BUIChartViewData.BatteryUsageElement);
  *v3 = result;
  return result;
}

char *sub_BA0F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_184E40, &qword_12BA20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_BA1F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_46F9C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_BA3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_BA43C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_BA49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_185310;
  if (!qword_185310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185310);
  }

  return result;
}

uint64_t sub_BA4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_BA5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_185340;
  if (!qword_185340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185340);
  }

  return result;
}

uint64_t type metadata accessor for BUIChartViewModel(uint64_t a1)
{
  result = qword_18ECD0;
  if (!qword_18ECD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_BA690(uint64_t a1)
{
  sub_BA838(319);
  if (v1 <= 0x3F)
  {
    sub_BA8F4(319, &qword_185378, &type metadata for BUIChartViewModel.ChartType);
    if (v2 <= 0x3F)
    {
      sub_BA890(319);
      if (v3 <= 0x3F)
      {
        sub_BA8F4(319, &qword_185388, &type metadata for CGFloat);
        if (v4 <= 0x3F)
        {
          sub_BA940(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_BA838(uint64_t a1)
{
  if (!qword_185370)
  {
    type metadata accessor for BUIChartViewData(255);
    v1 = sub_115F90();
    if (!v2)
    {
      atomic_store(v1, &qword_185370);
    }
  }
}

void sub_BA890(uint64_t a1)
{
  if (!qword_185380)
  {
    sub_47A1C(&qword_1835F8, &unk_1259E0);
    v1 = sub_115F90();
    if (!v2)
    {
      atomic_store(v1, &qword_185380);
    }
  }
}

void sub_BA8F4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_115F90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_BA940(uint64_t a1)
{
  if (!qword_185390)
  {
    sub_54960(255, &qword_1831A8, UIColor_ptr);
    v1 = sub_115F90();
    if (!v2)
    {
      atomic_store(v1, &qword_185390);
    }
  }
}

unint64_t sub_BA9E4()
{
  result = qword_185618;
  if (!qword_185618)
  {
    sub_47A1C(&qword_185620, &unk_12A280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185618);
  }

  return result;
}

uint64_t sub_BAA48()
{

  return swift_deallocObject();
}

uint64_t sub_BAA88(uint64_t a1)
{
  strcpy(v2, "plotWidth = ");
  v3._countAndFlagsBits = sub_117420();
  sub_117220(v3);

  return v2[0];
}

uint64_t sub_BAB50(uint64_t a1)
{
  v2 = sub_1158E0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1162B0();
}

uint64_t sub_BAC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_46F9C(&qword_183560, &qword_129070);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_5A754();
  swift_beginAccess();
  *(a2 + 16) = *v9;
  v10 = type metadata accessor for TenDayBatteryUsageChart(0);
  v11 = *(v10 + 40);
  *(a2 + v11) = swift_getKeyPath();
  sub_46F9C(&qword_185648, &qword_12B880);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for BUIChartViewModel(0);
  sub_C0EC8(&qword_185190, type metadata accessor for BUIChartViewModel, &unk_12A128);

  *a2 = sub_116120();
  *(a2 + 8) = v12;
  *(a2 + 24) = a3;

  nullsub_4();
  *(a2 + 32) = v13;
  v14 = (*(*a1 + 464))();
  v16 = v15;
  *(a2 + 40) = v14;

  sub_ECF08();
  v17 = *(v10 + 36);
  v18 = sub_48800(&qword_183570, &qword_183560, &qword_129070, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
  sub_E9054(v14, v8, v6, v18, a2 + v17, v16);
}

uint64_t sub_BAE48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_BAEA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v116 = a1;
  v3 = sub_46F9C(&qword_184138, &qword_127D50);
  __chkstk_darwin(v3 - 8);
  v97 = &v91 - v4;
  v5 = type metadata accessor for TenDayBatteryUsageChart(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
  __chkstk_darwin(v8);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v11);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_46F9C(&qword_185650, &qword_12A300);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v117 = &v91 - v14;
  v96 = sub_46F9C(&qword_185658, &qword_12A308);
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v91 - v15;
  v101 = sub_46F9C(&qword_185660, &qword_12A310);
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v91 - v16;
  v104 = sub_46F9C(&qword_185668, &qword_12A318);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v100 = &v91 - v17;
  v106 = sub_46F9C(&qword_185670, &qword_12A320);
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v102 = &v91 - v18;
  v110 = sub_46F9C(&qword_185678, &qword_12A328);
  v19 = __chkstk_darwin(v110);
  v111 = &v91 - v20;
  v21 = *(v1 + 8);
  v22 = (*v21 + 136);
  v108 = *v22;
  v109 = v21;
  v107 = v22;
  v108(v19);
  v112 = v11;
  sub_BCAB4(&v13[*(v11 + 20)], v10, type metadata accessor for BUIChartViewData.DataFor10Days);
  v113 = v13;
  sub_BAE48(v13, type metadata accessor for BUIChartViewData);
  v115 = v8;
  v23 = *&v10[*(v8 + 20)];

  v114 = v10;
  sub_BAE48(v10, type metadata accessor for BUIChartViewData.DataFor10Days);
  v118 = v23;
  sub_BCAB4(v2, &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TenDayBatteryUsageChart);
  v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = swift_allocObject();
  sub_BF528(&v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for TenDayBatteryUsageChart);
  sub_46F9C(&qword_185680, &qword_12A330);
  sub_46F9C(&qword_185688, &qword_12A338);
  sub_48800(&qword_185690, &qword_185680, &qword_12A330, &protocol conformance descriptor for [A]);
  v26 = sub_47A1C(&qword_185698, &qword_12A340);
  v27 = sub_47A1C(&qword_1856A0, &qword_12A348);
  v28 = sub_47A1C(&qword_1856A8, &qword_12A350);
  v29 = sub_47A1C(&qword_1856B0, &qword_12A358);
  v30 = sub_115E00();
  v33 = sub_4869C(v30, v31, v32);
  *&v122 = v30;
  *(&v122 + 1) = &type metadata for String;
  *&v123 = &protocol witness table for BarMark;
  *(&v123 + 1) = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v122 = v29;
  *(&v122 + 1) = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  *&v122 = v28;
  *(&v122 + 1) = v35;
  v36 = swift_getOpaqueTypeConformance2();
  *&v122 = v27;
  *(&v122 + 1) = &type metadata for Color;
  *&v123 = v36;
  *(&v123 + 1) = &protocol witness table for Color;
  v37 = swift_getOpaqueTypeConformance2();
  *&v122 = v26;
  *(&v122 + 1) = v37;
  v38 = v117;
  swift_getOpaqueTypeConformance2();
  sub_C0EC8(&qword_1856B8, type metadata accessor for BUIChartViewData.BatteryUsageElement, &unk_12B698);
  result = sub_115DE0();
  v40 = *(v2 + 40);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = *(v40 + 32);
    v43 = v41 - 1;
    if (v43)
    {
      v44 = (v40 + 40);
      do
      {
        v45 = *v44++;
        v46 = v45;
        if (v42 < v45)
        {
          v42 = v46;
        }

        --v43;
      }

      while (v43);
    }

    if (v42 >= 0.0)
    {
      *&v122 = 0;
      *(&v122 + 1) = v42;
      v47 = sub_115F00();
      v48 = v97;
      (*(*(v47 - 8) + 56))(v97, 1, 1, v47);
      v49 = sub_46F9C(&qword_1856C0, &qword_12A360);
      v50 = sub_48800(&qword_1856C8, &qword_185650, &qword_12A300, &protocol conformance descriptor for Chart<A>);
      v51 = sub_BCD44();
      v52 = v94;
      v53 = v93;
      sub_116970();
      sub_488C8(v48, &qword_184138, &qword_127D50);
      v54 = (*(v92 + 8))(v38, v53);
      __chkstk_darwin(v54);
      *(&v91 - 2) = v2;
      v55 = sub_46F9C(&qword_1856D8, &qword_12A368);
      *&v122 = v53;
      *(&v122 + 1) = v49;
      *&v123 = v50;
      *(&v123 + 1) = v51;
      v56 = swift_getOpaqueTypeConformance2();
      v57 = swift_getOpaqueTypeConformance2();
      v58 = v98;
      v59 = v96;
      sub_116910();
      v60 = (*(v95 + 8))(v52, v59);
      __chkstk_darwin(v60);
      *(&v91 - 2) = v2;
      v61 = sub_46F9C(&qword_1856E0, &qword_12A370);
      *&v122 = v59;
      *(&v122 + 1) = v55;
      *&v123 = v56;
      *(&v123 + 1) = v57;
      v62 = swift_getOpaqueTypeConformance2();
      v63 = sub_47A1C(&qword_183560, &qword_129070);
      v64 = sub_48800(&qword_183570, &qword_183560, &qword_129070, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
      *&v122 = v63;
      *(&v122 + 1) = v64;
      v65 = swift_getOpaqueTypeConformance2();
      v66 = v100;
      v67 = v101;
      sub_116930();
      v68.n128_f64[0] = (*(v99 + 8))(v58, v67);
      sub_BCE18(v68);
      v118 = v69;
      v119 = v70;
      *&v122 = v67;
      *(&v122 + 1) = v61;
      *&v123 = v62;
      *(&v123 + 1) = v65;
      v71 = swift_getOpaqueTypeConformance2();
      sub_BD25C(v71, v72, v73);
      v74 = v102;
      v75 = v104;
      sub_116AB0();

      (*(v103 + 8))(v66, v75);
      sub_116EA0();
      sub_116070();
      v76 = v111;
      (*(v105 + 32))(v111, v74, v106);
      v77 = v110;
      v78 = (v76 + *(v110 + 36));
      v79 = v123;
      *v78 = v122;
      v78[1] = v79;
      v78[2] = v124;
      type metadata accessor for BUIChartViewModel(0);
      sub_C0EC8(&qword_185190, type metadata accessor for BUIChartViewModel, &unk_12A128);
      sub_116130();
      swift_getKeyPath();
      sub_116140();

      v81 = v118;
      v82 = v119;
      v83 = v120;
      LOBYTE(v67) = v121;
      v84 = v113;
      (v108)(v80);
      v85 = v114;
      sub_BCAB4(v84 + *(v112 + 20), v114, type metadata accessor for BUIChartViewData.DataFor10Days);
      sub_BAE48(v84, type metadata accessor for BUIChartViewData);
      v86 = *(v85 + *(v115 + 20));

      sub_BAE48(v85, type metadata accessor for BUIChartViewData.DataFor10Days);
      v87 = type metadata accessor for BUIChartViewData.BatteryUsageElement(0);
      v88 = sub_D2208(v86, v87, &off_169370);

      v89 = sub_BD2B0(v88);

      v90 = sub_BD4E8();
      sub_AB1AC(v81, v82, v83, v67, v89, v77, v90);

      return sub_488C8(v76, &qword_185678, &qword_12A328);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_BBD40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a3;
  v5 = sub_116390();
  v96 = *(v5 - 8);
  __chkstk_darwin(v5);
  v117 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_46F9C(&qword_185320, &unk_12A560);
  __chkstk_darwin(v7 - 8);
  v116 = &v81 - v8;
  v9 = sub_46F9C(&qword_184418, &unk_1281A0);
  __chkstk_darwin(v9 - 8);
  v103 = &v81 - v10;
  v95 = sub_46F9C(&qword_185928, &unk_12A520);
  __chkstk_darwin(v95);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v92 = &v81 - v14;
  v15 = sub_115760();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_46F9C(&qword_185930, &qword_12BDF0);
  __chkstk_darwin(v93);
  v94 = &v81 - v19;
  v20 = sub_46F9C(&qword_1843C8, &qword_128140);
  __chkstk_darwin(v20 - 8);
  v97 = &v81 - v21;
  v102 = sub_115E00();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_46F9C(&qword_1856B0, &qword_12A358);
  v104 = *(v108 - 8);
  __chkstk_darwin(v108);
  v101 = &v81 - v23;
  v109 = sub_46F9C(&qword_1856A8, &qword_12A350);
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v81 - v24;
  v113 = sub_46F9C(&qword_1856A0, &qword_12A348);
  v110 = *(v113 - 8);
  __chkstk_darwin(v113);
  v106 = &v81 - v25;
  v26 = sub_46F9C(&qword_185698, &qword_12A340);
  v114 = *(v26 - 8);
  v115 = v26;
  v27 = __chkstk_darwin(v26);
  v112 = &v81 - v28;
  v29 = a2;
  v30 = *(a2 + 8);
  v31 = *(*v30 + 240);
  v118 = v30;
  v32 = v31(v27);
  if ((v33 & 1) != 0 || (v35 = (v31)(v32), (v36 & 1) == 0) && v35 == *a1)
  {
    v34 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_energyUsageColor;
  }

  else
  {
    v34 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_energyUsageGrayColor;
  }

  v37 = v29;
  v38 = *v34;
  v98 = *(v29 + 16);
  v39 = *(v98 + v38);

  v88 = sub_116370();
  v90 = v40;
  v87 = v41;
  v89 = v42;
  v91 = type metadata accessor for BUIChartViewData.BatteryUsageElement(0);
  v43 = a1 + *(v91 + 20);
  sub_A79FC();
  sub_115740();
  v86 = sub_C0EC8(&qword_182F10, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = sub_117130();
  if (result)
  {
    v45 = v16[2];
    v82 = a1;
    v46 = v92;
    v45(v92, v43, v15);
    v47 = v18;
    v48 = v12;
    v49 = v95;
    v50 = *(v95 + 48);
    v83 = v37;
    v51 = v16[4];
    v51(v46 + v50, v47, v15);
    sub_479B4(v46, v48, &qword_185928, &unk_12A520);
    v84 = v39;
    v52 = *(v49 + 48);
    v53 = v94;
    v51(v94, v48, v15);
    v85 = v5;
    v54 = v16[1];
    v54(v48 + v52, v15);
    sub_548D0(v46, v48, &qword_185928, &unk_12A520);
    v51(v53 + *(v93 + 36), (v48 + *(v49 + 48)), v15);
    v54(v48, v15);
    sub_115C50();

    sub_488C8(v53, &qword_185930, &qword_12BDF0);
    sub_116370();
    v55 = v91;
    v56 = v82;
    v120 = *(v82 + *(v91 + 24));
    sub_115C60();

    v95 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barWidthRatioFor10Days;
    v57 = v99;
    sub_115DF0();
    v58 = v116;
    sub_BCAB4(v56, v116, type metadata accessor for BUIChartViewData.BatteryUsageElement);
    (*(*(v55 - 8) + 56))(v58, 0, 1, v55);
    v59 = (*(*v118 + 592))(v58);
    v61 = v60;
    v62 = sub_488C8(v58, &qword_185320, &unk_12A560);
    v120 = v59;
    v121 = v61;
    v65 = sub_4869C(v62, v63, v64);
    v66 = v101;
    v67 = v102;
    sub_115B00();

    (*(v100 + 8))(v57, v67);
    sub_116370();
    v120 = v67;
    v121 = &type metadata for String;
    v122 = &protocol witness table for BarMark;
    v123 = v65;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v69 = v105;
    v70 = v108;
    sub_115B10();

    (*(v104 + 8))(v66, v70);
    sub_5952C();

    v120 = v70;
    v121 = OpaqueTypeConformance2;
    v71 = swift_getOpaqueTypeConformance2();
    v72 = v106;
    v73 = v109;
    sub_115B30();

    (*(v107 + 8))(v69, v73);
    v119 = v84;
    v120 = v73;
    v121 = v71;
    v74 = swift_getOpaqueTypeConformance2();
    v76 = v112;
    v75 = v113;
    sub_115AF0();
    (*(v110 + 8))(v72, v75);
    v77 = v96;
    v78 = v117;
    v79 = v85;
    (*(v96 + 104))(v117, enum case for RoundedCornerStyle.continuous(_:), v85);
    v120 = v75;
    v121 = &type metadata for Color;
    v122 = v74;
    v123 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v80 = v115;
    sub_115AE0();

    (*(v77 + 8))(v78, v79);
    return (*(v114 + 8))(v76, v80);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_BCAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_BCB1C()
{
  v1 = (type metadata accessor for TenDayBatteryUsageChart(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[11];

  v4 = *(sub_46F9C(&qword_185640, &unk_12A2C0) + 40);
  v5 = sub_46F9C(&qword_183560, &qword_129070);
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v1[12];
  sub_46F9C(&qword_185648, &qword_12B880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1158E0();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_BCCC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TenDayBatteryUsageChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_BBD40(a1, v6, a2);
}

unint64_t sub_BCD44()
{
  result = qword_1856D0;
  if (!qword_1856D0)
  {
    sub_47A1C(&qword_1856C0, &qword_12A360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1856D0);
  }

  return result;
}

uint64_t sub_BCDC0()
{
  type metadata accessor for TenDayBatteryUsageChart(0);
  v0 = sub_46F9C(&qword_185640, &unk_12A2C0);
  return sub_E9144(v0);
}

void sub_BCE18(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BUIChartViewData(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 8);
  v11 = *(*v10 + 136);
  v38 = *v10 + 136;
  v11(v7);
  sub_BCAB4(&v9[*(v6 + 20)], v5, type metadata accessor for BUIChartViewData.DataFor10Days);
  sub_BAE48(v9, type metadata accessor for BUIChartViewData);
  sub_B9088(v12);
  v14 = v13;
  sub_BAE48(v5, type metadata accessor for BUIChartViewData.DataFor10Days);
  v15 = sub_117170();
  v16 = BatteryUILocalization(v15);

  if (!v16)
  {
    goto LABEL_16;
  }

  sub_1171B0();

  v17 = *(v2 + 40);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    v20 = v18 - 1;
    if (v20)
    {
      v21 = (v17 + 40);
      do
      {
        v22 = *v21++;
        v23 = v22;
        if (v19 < v22)
        {
          v19 = v23;
        }

        --v20;
      }

      while (v20);
    }

    sub_54960(0, &qword_185328, AXNumericDataAxisDescriptor_ptr);
    if (v19 >= 0.0)
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  sub_54960(0, &qword_185328, AXNumericDataAxisDescriptor_ptr);
LABEL_11:
  v37 = v6;

  v24 = sub_117580();
  v25 = sub_117170();
  v26 = BatteryUILocalization(v25);

  if (v26)
  {
    v27 = sub_1171B0();
    v35 = v28;
    v36 = v27;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  sub_54960(0, &qword_1856F8, AXChartDescriptor_ptr);
  sub_46F9C(&qword_185700, &qword_12A3A0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_12A2B0;
  v30 = v14;
  v31 = v24;
  (v11)();
  sub_BCAB4(&v9[*(v37 + 20)], v5, type metadata accessor for BUIChartViewData.DataFor10Days);
  sub_BAE48(v9, type metadata accessor for BUIChartViewData);
  sub_B9324();
  v33 = v32;
  sub_BAE48(v5, type metadata accessor for BUIChartViewData.DataFor10Days);
  *(v29 + 32) = v33;
  v34 = sub_1174F0();
  *(swift_allocObject() + 16) = v34;
  j_nullsub_4();
}

unint64_t sub_BD25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1856E8;
  if (!qword_1856E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1856E8);
  }

  return result;
}

void *sub_BD2B0(uint64_t a1)
{
  v16 = sub_46F9C(&qword_185178, &unk_129BA0);
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - v3;
  v5 = sub_46F9C(&qword_185180, &qword_12A550);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_C0FF0(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_479B4(v11, v4, &qword_185178, &unk_129BA0);
      swift_dynamicCast();
      v17 = v10;
      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        sub_C0FF0((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      v10[2] = v14 + 1;
      sub_548D0(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, &qword_185180, &qword_12A550);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

unint64_t sub_BD4E8()
{
  result = qword_1856F0;
  if (!qword_1856F0)
  {
    sub_47A1C(&qword_185678, &qword_12A328);
    sub_47A1C(&qword_185668, &qword_12A318);
    sub_47A1C(&qword_185660, &qword_12A310);
    sub_47A1C(&qword_1856E0, &qword_12A370);
    sub_47A1C(&qword_185658, &qword_12A308);
    sub_47A1C(&qword_1856D8, &qword_12A368);
    sub_47A1C(&qword_185650, &qword_12A300);
    sub_47A1C(&qword_1856C0, &qword_12A360);
    sub_48800(&qword_1856C8, &qword_185650, &qword_12A300, &protocol conformance descriptor for Chart<A>);
    sub_BCD44();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_47A1C(&qword_183560, &qword_129070);
    sub_48800(&qword_183570, &qword_183560, &qword_129070, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_BD25C(OpaqueTypeConformance2, v1, v2);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1856F0);
  }

  return result;
}

uint64_t sub_BD7B0(double a1)
{
  v2 = sub_5A754();
  swift_beginAccess();
  v3 = *(**v2 + 584);

  v5 = v3(v4);

  v6 = [objc_allocWithZone(NSNumber) initWithDouble:a1];
  v7 = [v5 stringFromNumber:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1171B0();

  return v8;
}

uint64_t sub_BD8C4()
{

  return swift_deallocObject();
}

double sub_BD920@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_5A754();
  swift_beginAccess();
  *(a2 + 16) = *v6;
  v7 = *(type metadata accessor for TenDayBatteryActivityChart(0) + 40);
  *(a2 + v7) = swift_getKeyPath();
  sub_46F9C(&qword_185648, &qword_12B880);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for BUIChartViewModel(0);
  sub_C0EC8(&qword_185190, type metadata accessor for BUIChartViewModel, &unk_12A128);

  *a2 = sub_116120();
  *(a2 + 8) = v8;
  *(a2 + 24) = a3;

  nullsub_4();
  *(a2 + 32) = v9;
  v10 = (*(*a1 + 472))();
  v12 = v11;
  *(a2 + 40) = v10;

  nullsub_4();
  v16 = sub_BDACC(v13, v14, v15);
  sub_E9054(v10, v17, &type metadata for PLBUIHourMinutesFormatStyle, v16, v20, v12);

  result = *&v20[1];
  v19 = v21;
  *(a2 + 48) = v20[0];
  *(a2 + 56) = result;
  *(a2 + 64) = v19;
  return result;
}

unint64_t sub_BDACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_185708;
  if (!qword_185708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185708);
  }

  return result;
}

uint64_t sub_BDB20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v122 = a1;
  v3 = sub_46F9C(&qword_184138, &qword_127D50);
  __chkstk_darwin(v3 - 8);
  v100 = &v94 - v4;
  v5 = type metadata accessor for TenDayBatteryActivityChart(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
  __chkstk_darwin(v8);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v11);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_46F9C(&qword_185710, &qword_12A3A8);
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v123 = &v94 - v14;
  v99 = sub_46F9C(&qword_185718, &qword_12A3B0);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v94 - v15;
  v105 = sub_46F9C(&qword_185720, &qword_12A3B8);
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v101 = &v94 - v16;
  v107 = sub_46F9C(&qword_185728, &qword_12A3C0);
  v104 = *(v107 - 8);
  __chkstk_darwin(v107);
  v102 = &v94 - v17;
  v110 = sub_46F9C(&qword_185730, &qword_12A3C8);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v106 = &v94 - v18;
  v112 = sub_46F9C(&qword_185738, &qword_12A3D0);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v108 = &v94 - v19;
  v116 = sub_46F9C(&qword_185740, &qword_12A3D8);
  v20 = __chkstk_darwin(v116);
  v117 = &v94 - v21;
  v22 = *(v1 + 8);
  v23 = *(*v22 + 136);
  v24 = *v22 + 136;
  v115 = v22;
  v114 = v23;
  v113 = v24;
  v23(v20);
  v118 = v11;
  sub_BCAB4(&v13[*(v11 + 20)], v10, type metadata accessor for BUIChartViewData.DataFor10Days);
  v119 = v13;
  sub_BAE48(v13, type metadata accessor for BUIChartViewData);
  v121 = v8;
  v25 = *&v10[*(v8 + 24)];

  v120 = v10;
  sub_BAE48(v10, type metadata accessor for BUIChartViewData.DataFor10Days);
  v132 = v25;
  sub_BCAB4(v2, &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TenDayBatteryActivityChart);
  v26 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v27 = swift_allocObject();
  sub_BF528(&v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for TenDayBatteryActivityChart);
  sub_46F9C(&qword_185748, &qword_12A3E0);
  sub_46F9C(&qword_185750, &qword_12A3E8);
  sub_48800(&qword_185758, &qword_185748, &qword_12A3E0, &protocol conformance descriptor for [A]);
  v28 = sub_47A1C(&qword_185760, &qword_12A3F0);
  v29 = sub_47A1C(&qword_185768, &qword_12A3F8);
  v30 = sub_47A1C(&qword_185770, &qword_12A400);
  v31 = sub_48800(&qword_185778, &qword_185770, &qword_12A400, &protocol conformance descriptor for Plot<A>);
  *&v133 = v30;
  *(&v133 + 1) = v31;
  v32 = v123;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_4869C(OpaqueTypeConformance2, v34, v35);
  *&v133 = v29;
  *(&v133 + 1) = &type metadata for String;
  *&v134 = OpaqueTypeConformance2;
  *(&v134 + 1) = v36;
  v37 = swift_getOpaqueTypeConformance2();
  *&v133 = v28;
  *(&v133 + 1) = v37;
  swift_getOpaqueTypeConformance2();
  sub_C0EC8(&qword_185780, type metadata accessor for BUIChartViewData.ScreenUsageElement, &unk_12B3C0);
  result = sub_115DE0();
  v39 = *(v2 + 40);
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = *(v39 + 32);
    v42 = v40 - 1;
    if (v42)
    {
      v43 = (v39 + 40);
      do
      {
        v44 = *v43++;
        v45 = v44;
        if (v41 < v44)
        {
          v41 = v45;
        }

        --v42;
      }

      while (v42);
    }

    if (v41 >= 0.0)
    {
      v130 = 0;
      v131 = v41;
      v46 = sub_115F00();
      v47 = v100;
      (*(*(v46 - 8) + 56))(v100, 1, 1, v46);
      v48 = sub_46F9C(&qword_1856C0, &qword_12A360);
      v49 = sub_48800(&qword_185788, &qword_185710, &qword_12A3A8, &protocol conformance descriptor for Chart<A>);
      v50 = sub_BCD44();
      v51 = v97;
      v52 = v96;
      sub_116970();
      sub_488C8(v47, &qword_184138, &qword_127D50);
      v53 = (*(v95 + 8))(v32, v52);
      __chkstk_darwin(v53);
      *(&v94 - 2) = v2;
      v54 = sub_46F9C(&qword_1856D8, &qword_12A368);
      *&v133 = v52;
      *(&v133 + 1) = v48;
      *&v134 = v49;
      *(&v134 + 1) = v50;
      v55 = swift_getOpaqueTypeConformance2();
      v56 = swift_getOpaqueTypeConformance2();
      v57 = v101;
      v58 = v99;
      sub_116910();
      v59 = (*(v98 + 8))(v51, v58);
      __chkstk_darwin(v59);
      *(&v94 - 2) = v2;
      v60 = sub_46F9C(&qword_185790, qword_12A408);
      *&v133 = v58;
      *(&v133 + 1) = v54;
      *&v134 = v55;
      *(&v134 + 1) = v56;
      v61 = swift_getOpaqueTypeConformance2();
      v64 = sub_BDACC(v61, v62, v63);
      *&v133 = &type metadata for PLBUIHourMinutesFormatStyle;
      *(&v133 + 1) = v64;
      v65 = swift_getOpaqueTypeConformance2();
      v66 = v102;
      v67 = v105;
      sub_116930();
      (*(v103 + 8))(v57, v67);
      *&v133 = v67;
      *(&v133 + 1) = v60;
      *&v134 = v61;
      *(&v134 + 1) = v65;
      v68 = swift_getOpaqueTypeConformance2();
      v69 = v106;
      v70 = v107;
      sub_116950();
      v71.n128_f64[0] = (*(v104 + 8))(v66, v70);
      sub_BFE1C(v71);
      v128 = v72;
      v129 = v73;
      *&v133 = v70;
      *(&v133 + 1) = v68;
      v74 = swift_getOpaqueTypeConformance2();
      sub_BD25C(v74, v75, v76);
      v77 = v108;
      v78 = v110;
      sub_116AB0();

      (*(v109 + 8))(v69, v78);
      sub_116EA0();
      sub_116070();
      v79 = v117;
      (*(v111 + 32))(v117, v77, v112);
      v80 = v116;
      v81 = (v79 + *(v116 + 36));
      v82 = v134;
      *v81 = v133;
      v81[1] = v82;
      v81[2] = v135;
      type metadata accessor for BUIChartViewModel(0);
      sub_C0EC8(&qword_185190, type metadata accessor for BUIChartViewModel, &unk_12A128);
      sub_116130();
      swift_getKeyPath();
      sub_116140();

      v84 = v124;
      v85 = v125;
      v86 = v126;
      LOBYTE(v69) = v127;
      v87 = v119;
      (v114)(v83);
      v88 = v120;
      sub_BCAB4(v87 + *(v118 + 20), v120, type metadata accessor for BUIChartViewData.DataFor10Days);
      sub_BAE48(v87, type metadata accessor for BUIChartViewData);
      v89 = *(v88 + *(v121 + 24));

      sub_BAE48(v88, type metadata accessor for BUIChartViewData.DataFor10Days);
      v90 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
      v91 = sub_D2208(v89, v90, &off_169350);

      v92 = sub_BD2B0(v91);

      v93 = sub_C023C();
      sub_AB1AC(v84, v85, v86, v69, v92, v80, v93);

      return sub_488C8(v79, &qword_185740, &qword_12A3D8);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_BEA50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v5 = sub_46F9C(&qword_185318, &unk_12A0B0);
  __chkstk_darwin(v5 - 8);
  v83 = &v62 - v6;
  v7 = sub_116390();
  v75 = *(v7 - 8);
  v76 = v7;
  __chkstk_darwin(v7);
  v72 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_46F9C(&qword_185770, &qword_12A400);
  v71 = *(v78 - 8);
  __chkstk_darwin(v78);
  v70 = &v62 - v9;
  v82 = sub_46F9C(&qword_185768, &qword_12A3F8);
  v79 = *(v82 - 8);
  __chkstk_darwin(v82);
  v77 = &v62 - v10;
  v11 = sub_46F9C(&qword_185760, &qword_12A3F0);
  v84 = *(v11 - 8);
  __chkstk_darwin(v11);
  v81 = &v62 - v12;
  v13 = sub_46F9C(&qword_185928, &unk_12A520);
  __chkstk_darwin(v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v68 = &v62 - v17;
  v18 = sub_115760();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_46F9C(&qword_185930, &qword_12BDF0);
  v22 = __chkstk_darwin(v67);
  v73 = a2;
  v74 = &v62 - v23;
  v24 = *(a2 + 8);
  v25 = *(*v24 + 240);
  v26 = v25(v22);
  v69 = v24;
  if (v27)
  {
    v66 = 0;
  }

  else
  {
    v28 = (v25)(v26);
    v30 = (v29 & 1) != 0 || v28 != *a1;
    v66 = v30;
  }

  v31 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v32 = a1 + *(v31 + 20);
  sub_A79FC();
  sub_115740();
  sub_C0EC8(&qword_182F10, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = sub_117130();
  if (result)
  {
    v34 = v68;
    (*(v19 + 16))(v68, v32, v18);
    v35 = *(v13 + 48);
    v63 = a1;
    v64 = v31;
    v65 = v11;
    v36 = *(v19 + 32);
    (v36)(v34 + v35, v21, v18);
    sub_479B4(v34, v15, &qword_185928, &unk_12A520);
    v37 = *(v13 + 48);
    v38 = v13;
    v39 = v74;
    v36();
    v40 = *(v19 + 8);
    v40(&v15[v37], v18);
    sub_548D0(v34, v15, &qword_185928, &unk_12A520);
    (v36)(&v39[*(v67 + 36)], &v15[*(v38 + 48)], v18);
    v41 = (v40)(v15, v18);
    v68 = &v62;
    __chkstk_darwin(v41);
    v42 = v39;
    v43 = v63;
    *(&v62 - 4) = v39;
    *(&v62 - 3) = v43;
    *(&v62 - 2) = v73;
    *(&v62 - 8) = v66;
    sub_46F9C(&qword_185938, &qword_12A530);
    sub_C0F20();
    v44 = v70;
    sub_115DB0();
    v46 = v75;
    v45 = v76;
    v47 = v72;
    (*(v75 + 104))(v72, enum case for RoundedCornerStyle.continuous(_:), v76);
    v48 = sub_48800(&qword_185778, &qword_185770, &qword_12A400, &protocol conformance descriptor for Plot<A>);
    v50 = v77;
    v49 = v78;
    sub_115AE0();
    (*(v46 + 8))(v47, v45);
    (*(v71 + 8))(v44, v49);
    v51 = v83;
    sub_BCAB4(v43, v83, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    (*(*(v64 - 8) + 56))(v51, 0, 1);
    v52 = (*(*v69 + 600))(v51);
    v54 = v53;
    sub_488C8(v51, &qword_185318, &unk_12A0B0);
    v89 = v52;
    v90 = v54;
    v85 = v49;
    v86 = v48;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v58 = sub_4869C(OpaqueTypeConformance2, v56, v57);
    v60 = v81;
    v59 = v82;
    sub_115B00();

    (*(v79 + 8))(v50, v59);
    sub_116370();
    v85 = v59;
    v86 = &type metadata for String;
    v87 = OpaqueTypeConformance2;
    v88 = v58;
    swift_getOpaqueTypeConformance2();
    v61 = v65;
    sub_115B10();

    (*(v84 + 8))(v60, v61);
    return sub_488C8(v42, &qword_185930, &qword_12BDF0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_BF3EC()
{
  v1 = (type metadata accessor for TenDayBatteryActivityChart(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[12];
  sub_46F9C(&qword_185648, &qword_12B880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1158E0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_BF528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_BF590@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TenDayBatteryActivityChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_BEA50(a1, v6, a2);
}

uint64_t sub_BF610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v45) = a4;
  v44 = a3;
  v56 = a2;
  v42[2] = a1;
  v52 = a5;
  v51 = sub_46F9C(&qword_185948, &qword_12A538) - 8;
  __chkstk_darwin(v51);
  v50 = v42 - v5;
  v6 = sub_46F9C(&qword_184418, &unk_1281A0);
  __chkstk_darwin(v6 - 8);
  v7 = sub_46F9C(&qword_1843C8, &qword_128140);
  __chkstk_darwin(v7 - 8);
  v43 = sub_115E00();
  v57 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v42 - v10;
  v12 = sub_46F9C(&qword_185950, &unk_12A540);
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v47 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v55 = v42 - v15;
  __chkstk_darwin(v16);
  v54 = v42 - v17;
  __chkstk_darwin(v18);
  v53 = v42 - v19;
  sub_116370();
  sub_115760();
  v42[1] = sub_C0EC8(&qword_182F10, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_115C50();

  sub_116370();
  v42[0] = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v58 = *(v56 + *(v42[0] + 24));
  sub_115C60();

  v20 = *(v44 + 16);
  v44 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barWidthRatioFor10Days;
  sub_115DF0();
  v21 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffGrayColor;
  v22 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOnColor;
  if (v45)
  {
    v22 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffGrayColor;
  }

  v23 = *(v20 + *v22);
  if ((v45 & 1) == 0)
  {
    v21 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffColor;
  }

  v45 = v21;

  v58 = v23;
  v24 = v43;
  sub_115AF0();

  v25 = *(v57 + 8);
  v57 += 8;
  v25(v11, v24);
  sub_116370();
  sub_115C50();

  sub_116370();
  v58 = *(v56 + *(v42[0] + 28));
  sub_115C60();

  v26 = v46;
  sub_115DF0();
  v27 = *(v20 + *v45);

  v58 = v27;
  v28 = v54;
  sub_115AF0();

  v25(v26, v24);
  v30 = v48;
  v29 = v49;
  v31 = *(v48 + 16);
  v32 = v55;
  v33 = v53;
  v31(v55, v53, v49);
  v34 = v47;
  v31(v47, v28, v29);
  v35 = v50;
  v31(v50, v32, v29);
  v36 = v51;
  v37 = *(v51 + 56);
  v31(&v35[v37], v34, v29);
  v38 = *(v30 + 32);
  v39 = v52;
  v38(v52, v35, v29);
  v38(v39 + *(v36 + 56), &v35[v37], v29);
  v40 = *(v30 + 8);
  v40(v54, v29);
  v40(v33, v29);
  v40(v34, v29);
  return (v40)(v55, v29);
}

void sub_BFE1C(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BUIChartViewData(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 8);
  v11 = *(*v10 + 136);
  v38 = *v10 + 136;
  v11(v7);
  sub_BCAB4(&v9[*(v6 + 20)], v5, type metadata accessor for BUIChartViewData.DataFor10Days);
  sub_BAE48(v9, type metadata accessor for BUIChartViewData);
  sub_B9088(v12);
  v14 = v13;
  sub_BAE48(v5, type metadata accessor for BUIChartViewData.DataFor10Days);
  v15 = sub_117170();
  v16 = BatteryUILocalization(v15);

  if (!v16)
  {
    goto LABEL_16;
  }

  sub_1171B0();

  v17 = *(v2 + 40);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    v20 = v18 - 1;
    if (v20)
    {
      v21 = (v17 + 40);
      do
      {
        v22 = *v21++;
        v23 = v22;
        if (v19 < v22)
        {
          v19 = v23;
        }

        --v20;
      }

      while (v20);
    }
  }

  else
  {
    v19 = *sub_A79F0();
  }

  sub_54960(0, &qword_185328, AXNumericDataAxisDescriptor_ptr);
  if (v19 < 0.0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v37 = v6;

  v24 = sub_117580();
  v25 = sub_117170();
  v26 = BatteryUILocalization(v25);

  if (v26)
  {
    v27 = sub_1171B0();
    v35 = v28;
    v36 = v27;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  sub_54960(0, &qword_1856F8, AXChartDescriptor_ptr);
  sub_46F9C(&qword_185700, &qword_12A3A0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_12A2B0;
  v30 = v14;
  v31 = v24;
  (v11)();
  sub_BCAB4(&v9[*(v37 + 20)], v5, type metadata accessor for BUIChartViewData.DataFor10Days);
  sub_BAE48(v9, type metadata accessor for BUIChartViewData);
  sub_B9768();
  v33 = v32;
  sub_BAE48(v5, type metadata accessor for BUIChartViewData.DataFor10Days);
  *(v29 + 32) = v33;
  v34 = sub_1174F0();
  *(swift_allocObject() + 16) = v34;
  j_nullsub_4();
}

unint64_t sub_C023C()
{
  result = qword_185798;
  if (!qword_185798)
  {
    sub_47A1C(&qword_185740, &qword_12A3D8);
    sub_47A1C(&qword_185730, &qword_12A3C8);
    sub_47A1C(&qword_185728, &qword_12A3C0);
    sub_47A1C(&qword_185720, &qword_12A3B8);
    sub_47A1C(&qword_185790, qword_12A408);
    sub_47A1C(&qword_185718, &qword_12A3B0);
    sub_47A1C(&qword_1856D8, &qword_12A368);
    sub_47A1C(&qword_185710, &qword_12A3A8);
    sub_47A1C(&qword_1856C0, &qword_12A360);
    sub_48800(&qword_185788, &qword_185710, &qword_12A3A8, &protocol conformance descriptor for Chart<A>);
    sub_BCD44();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_BDACC(OpaqueTypeConformance2, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v6 = swift_getOpaqueTypeConformance2();
    sub_BD25C(v6, v4, v5);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185798);
  }

  return result;
}

uint64_t sub_C0504(double a1)
{
  v2 = sub_5A754();
  swift_beginAccess();
  v3 = *(*v2 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForHourMinutes);
  v4 = objc_allocWithZone(NSNumber);
  v5 = v3;
  v6 = [v4 initWithDouble:a1];
  v7 = [v5 stringFromNumber:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1171B0();

  return v8;
}

uint64_t sub_C0644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_46F9C(&qword_185640, &unk_12A2C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_46F9C(&qword_1857A0, &unk_12A4B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_C0794(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_46F9C(&qword_185640, &unk_12A2C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_46F9C(&qword_1857A0, &unk_12A4B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_C08E8(uint64_t a1)
{
  if (!qword_185800)
  {
    type metadata accessor for BUIChartViewModel(255);
    sub_C0EC8(&qword_185190, type metadata accessor for BUIChartViewModel, &unk_12A128);
    v1 = sub_116150();
    if (!v2)
    {
      atomic_store(v1, &qword_185800);
    }
  }
}

void sub_C097C()
{
  if (!qword_185808)
  {
    v0 = sub_1173A0();
    if (!v1)
    {
      atomic_store(v0, &qword_185808);
    }
  }
}

void sub_C09CC(uint64_t a1)
{
  if (!qword_185810)
  {
    v2 = sub_47A1C(&qword_183560, &qword_129070);
    v3 = sub_48800(&qword_183570, &qword_183560, &qword_129070, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
    v5 = type metadata accessor for BatteryYAxis(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_185810);
    }
  }
}

void sub_C0A70(uint64_t a1)
{
  if (!qword_185818)
  {
    sub_1158E0();
    v1 = sub_116000();
    if (!v2)
    {
      atomic_store(v1, &qword_185818);
    }
  }
}

uint64_t sub_C0ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_46F9C(&qword_1857A0, &unk_12A4B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C0BAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_46F9C(&qword_1857A0, &unk_12A4B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C0C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_C08E8(319);
  if (v5 <= 0x3F)
  {
    type metadata accessor for BUIChartViewConfig(319);
    if (v6 <= 0x3F)
    {
      sub_C097C();
      if (v7 <= 0x3F)
      {
        a4(319);
        if (v8 <= 0x3F)
        {
          sub_C0A70(319);
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_C0D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_1858B8)
  {
    v4 = sub_BDACC(0, a2, a3);
    v6 = type metadata accessor for BatteryYAxis(a1, &type metadata for PLBUIHourMinutesFormatStyle, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1858B8);
    }
  }
}

uint64_t sub_C0E44(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    v9 = a4();
    sub_AC5F8(v9, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C0EC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_C0F20()
{
  result = qword_185940;
  if (!qword_185940)
  {
    sub_47A1C(&qword_185938, &qword_12A530);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185940);
  }

  return result;
}

void *sub_C0FF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_C1010(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_C1010(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_46F9C(&qword_185958, &qword_12A558);
  v10 = *(sub_46F9C(&qword_185180, &qword_12A550) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_46F9C(&qword_185180, &qword_12A550) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_C120C(void *a1)
{
  sub_A77D0(sub_C125C, 0);
  v3 = sub_C7E28(a1, v2);

  return v3;
}

uint64_t sub_C1278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BreakdownCellButtonStyle(0);
  __chkstk_darwin(v4);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_46F9C(&qword_185960, &unk_12A580);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30[-v9];
  v31 = a1;

  sub_46F9C(&qword_182D80, &qword_124720);
  v11 = sub_48800(&qword_182D90, &qword_182D80, &qword_124720, &protocol conformance descriptor for HStack<A>);
  sub_C8B84(v11, v12, v13);
  sub_1160F0();
  v30[7] = 0;
  sub_116DB0();
  v14 = v31;
  v15 = v32;
  v16 = v33;
  v17 = variable initialization expression of PLBUIChartViewController.isUpdating();
  sub_EFC40(v17 & 1, v14, v15, v16, v6);
  sub_48800(&qword_185970, &qword_185960, &unk_12A580, &protocol conformance descriptor for NavigationLink<A, B>);
  sub_C8EA0(&qword_182DC0, type metadata accessor for BreakdownCellButtonStyle, &unk_12C458);
  sub_116A00();
  sub_CAF48(v6, type metadata accessor for BreakdownCellButtonStyle);
  (*(v8 + 8))(v10, v7);
  v18 = sub_116660();
  sub_115FD0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a2 + *(sub_46F9C(&qword_185978, &qword_12A590) + 36);
  *v27 = v18;
  *(v27 + 8) = v20;
  *(v27 + 16) = v22;
  *(v27 + 24) = v24;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  result = sub_46F9C(&qword_185980, &qword_12A598);
  v29 = (a2 + *(result + 36));
  *v29 = sub_C189C;
  v29[1] = 0;
  v29[2] = 0;
  v29[3] = 0;
  return result;
}

uint64_t sub_C15AC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_116320();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = sub_46F9C(&qword_182E18, &qword_1247F8);
  return sub_C15FC(a2 + *(v3 + 44));
}

uint64_t sub_C15FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_46F9C(&qword_182E20, &qword_124800);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  sub_116370();
  v9 = sub_1168E0();
  v21 = v10;
  v22 = v9;
  v23 = v11;
  v24 = v12;
  v13 = sub_116C00();
  v14 = sub_116720();
  KeyPath = swift_getKeyPath();
  v25 = v13;
  v26 = KeyPath;
  v27 = v14;
  sub_1166A0();
  sub_46F9C(&qword_182E30, &unk_127C70);
  sub_48748();
  sub_1169E0();

  v16 = [objc_opt_self() systemGray3Color];
  *&v8[*(v3 + 44)] = sub_116BE0();
  sub_479B4(v8, v5, &qword_182E20, &qword_124800);
  v18 = v21;
  v17 = v22;
  *a1 = v22;
  *(a1 + 8) = v18;
  LOBYTE(v14) = v23 & 1;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v24;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v19 = sub_46F9C(&qword_182E50, &qword_12AA90);
  sub_479B4(v5, a1 + *(v19 + 64), &qword_182E20, &qword_124800);
  sub_488B8(v17, v18, v14);

  sub_488C8(v8, &qword_182E20, &qword_124800);
  sub_488C8(v5, &qword_182E20, &qword_124800);
  sub_48928(v17, v18, v14);
}

void sub_C189C()
{
  sub_A77D0(sub_C1978, 0);
  v0 = sub_117170();
  v2[4] = sub_C1994;
  v2[5] = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_83460;
  v2[3] = &unk_168D80;
  v1 = _Block_copy(v2);
  AnalyticsSendEventLazy();
  _Block_release(v1);
}

unint64_t sub_C1994()
{
  sub_46F9C(&qword_1843A8, &unk_12B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_124890;
  *(inited + 32) = 0xD000000000000024;
  *(inited + 40) = 0x8000000000135F00;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v1 = sub_C96B0(inited, &qword_1843B8, &qword_12B290);
  swift_setDeallocating();
  sub_488C8(inited + 32, &qword_1843B0, &unk_128130);
  return v1;
}

void sub_C1A78(uint64_t a1)
{
  v2 = sub_115760();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v137 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v138 = &v127 - v6;
  __chkstk_darwin(v7);
  v139 = &v127 - v8;
  v143 = type metadata accessor for UrsaIssue(0);
  __chkstk_darwin(v143);
  v134 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v132 = &v127 - v12;
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  __chkstk_darwin(&v127 - v15);
  v141 = &v127 - v16;
  __chkstk_darwin(v17);
  v133 = (&v127 - v18);
  __chkstk_darwin(v19);
  v21 = &v127 - v20;
  __chkstk_darwin(v22);
  v140 = &v127 - v23;
  __chkstk_darwin(v24);
  v30 = &v127 - v29;
  v31 = *(a1 + 16);
  if (!v31)
  {
    v97 = _swiftEmptyArrayStorage;
    v117 = _swiftEmptyArrayStorage[2];

    v131 = _swiftEmptyArrayStorage[2];

    v99 = _swiftEmptyArrayStorage[2];

    v118 = _swiftEmptyArrayStorage[2];

LABEL_87:
    v119 = v97[2];

    sub_46F9C(&qword_185CD8, &qword_12A9D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_12A570;
    *(inited + 32) = 0xD000000000000020;
    *(inited + 40) = 0x8000000000135DF0;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
    *(inited + 56) = 0xD000000000000014;
    *(inited + 64) = 0x8000000000135E20;
    *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:v117];
    *(inited + 80) = 0xD000000000000017;
    *(inited + 88) = 0x8000000000135E40;
    *(inited + 96) = [objc_allocWithZone(NSNumber) initWithInteger:v99];
    *(inited + 104) = 0xD000000000000015;
    *(inited + 112) = 0x8000000000135E60;
    *(inited + 120) = [objc_allocWithZone(NSNumber) initWithInteger:v118];
    *(inited + 128) = 0xD000000000000018;
    *(inited + 136) = 0x8000000000135E80;
    *(inited + 144) = [objc_allocWithZone(NSNumber) initWithInteger:v119];
    *(inited + 152) = 0xD000000000000023;
    *(inited + 160) = 0x8000000000135EA0;
    v121 = objc_allocWithZone(NSNumber);
    *(inited + 168) = [v121 initWithInteger:v131];
    v122 = sub_C96B0(inited, &qword_185CE8, &qword_12A9E0);
    swift_setDeallocating();
    sub_46F9C(&qword_185CE0, &qword_12A9D8);
    v123 = swift_arrayDestroy();
    __chkstk_darwin(v123);
    *(&v127 - 2) = v122;
    sub_A77D0(sub_CAFA8, (&v127 - 4));
    v124 = sub_117170();
    v125 = swift_allocObject();
    *(v125 + 16) = v122;
    aBlock[4] = sub_CB054;
    aBlock[5] = v125;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_83460;
    aBlock[3] = &unk_168D30;
    v126 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v126);

    return;
  }

  v129 = v25;
  v130 = v3;
  v142 = v28;
  v135 = v27;
  v136 = v2;
  v32 = *(v26 + 72);
  v144 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v33 = a1 + v144;
  v34 = _swiftEmptyArrayStorage;
  v35 = v33;
  v36 = v31;
  v145 = v32;
  while (1)
  {
    sub_CA6AC(v35, v30, type metadata accessor for UrsaIssue);
    if (v30[48] != 1 || !*(v30 + 5))
    {
      goto LABEL_4;
    }

    v37 = MobileGestalt_get_current_device();
    if (!v37)
    {
      break;
    }

    v38 = v37;
    v39 = MobileGestalt_copy_buildVersion_obj();

    if (!v39)
    {
      goto LABEL_16;
    }

    v40 = sub_1171B0();
    v42 = v41;

    v43 = &v30[*(v143 + 48)];
    v44 = *(v43 + 1);
    if (!v44)
    {

      v32 = v145;
LABEL_16:
      sub_CA944(v30, v140, type metadata accessor for UrsaIssue);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_C7A04(0, v34[2] + 1, 1, v47);
        v34 = aBlock[0];
      }

      v49 = v34[2];
      v48 = v34[3];
      if (v49 >= v48 >> 1)
      {
        sub_C7A04((v48 > 1), v49 + 1, 1, v47);
        v34 = aBlock[0];
      }

      v34[2] = v49 + 1;
      sub_CA944(v140, v34 + v144 + v49 * v32, type metadata accessor for UrsaIssue);
      goto LABEL_5;
    }

    if (v40 == *v43 && v44 == v42)
    {

      v32 = v145;
    }

    else
    {
      v45 = sub_1179E0();

      v32 = v145;
      if (v45)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    sub_CAF48(v30, type metadata accessor for UrsaIssue);
LABEL_5:
    v35 += v32;
    if (!--v36)
    {
      v128 = v34[2];

      v50 = _swiftEmptyArrayStorage;
      v51 = v33;
      v52 = v31;
      v53 = v136;
      while (1)
      {
        sub_CA6AC(v51, v21, type metadata accessor for UrsaIssue);
        if (v21[48] == 1 && *(v21 + 5))
        {
          v54 = MobileGestalt_get_current_device();
          if (!v54)
          {
            goto LABEL_89;
          }

          v55 = v54;
          v56 = MobileGestalt_copy_buildVersion_obj();

          if (v56)
          {
            v57 = sub_1171B0();
            v59 = v58;

            v60 = &v21[*(v143 + 48)];
            v61 = *(v60 + 1);
            if (v61)
            {
              if (v57 == *v60 && v61 == v59)
              {

                v53 = v136;
LABEL_35:
                sub_CA944(v21, v133, type metadata accessor for UrsaIssue);
                v63 = swift_isUniquelyReferenced_nonNull_native();
                aBlock[0] = v50;
                if ((v63 & 1) == 0)
                {
                  sub_C7A04(0, v50[2] + 1, 1, v64);
                  v50 = aBlock[0];
                }

                v66 = v50[2];
                v65 = v50[3];
                if (v66 >= v65 >> 1)
                {
                  sub_C7A04((v65 > 1), v66 + 1, 1, v64);
                  v50 = aBlock[0];
                }

                v50[2] = v66 + 1;
                sub_CA944(v133, v50 + v144 + v66 * v32, type metadata accessor for UrsaIssue);
                goto LABEL_33;
              }

              v62 = sub_1179E0();

              v53 = v136;
              if ((v62 & 1) == 0)
              {
                goto LABEL_35;
              }
            }

            else
            {

              v53 = v136;
            }
          }
        }

        sub_CAF48(v21, type metadata accessor for UrsaIssue);
LABEL_33:
        v51 += v32;
        if (!--v52)
        {
          v131 = v50[2];

          v67 = _swiftEmptyArrayStorage;
          v68 = v33;
          v69 = v31;
          v70 = v142;
          v71 = v129;
          v72 = v141;
          do
          {
            sub_CA6AC(v68, v72, type metadata accessor for UrsaIssue);
            if (*(v72 + 48))
            {
              sub_CAF48(v72, type metadata accessor for UrsaIssue);
            }

            else
            {
              sub_CA944(v72, v71, type metadata accessor for UrsaIssue);
              v73 = swift_isUniquelyReferenced_nonNull_native();
              aBlock[0] = v67;
              if ((v73 & 1) == 0)
              {
                sub_C7A04(0, v67[2] + 1, 1, v74);
                v67 = aBlock[0];
              }

              v76 = v67[2];
              v75 = v67[3];
              if (v76 >= v75 >> 1)
              {
                sub_C7A04((v75 > 1), v76 + 1, 1, v74);
                v67 = aBlock[0];
              }

              v67[2] = v76 + 1;
              sub_CA944(v71, v67 + v144 + v76 * v32, type metadata accessor for UrsaIssue);
              v70 = v142;
              v72 = v141;
            }

            v68 += v32;
            --v69;
          }

          while (v69);
          v140 = v67[2];

          v141 = (v130 + 8);
          v133 = _swiftEmptyArrayStorage;
          v77 = v33;
          v78 = v31;
          while (2)
          {
            sub_CA6AC(v77, v70, type metadata accessor for UrsaIssue);
            if (*(v70 + 48) == 1 && !*(v70 + 40))
            {
              v79 = v138;
              sub_115750();
              sub_1156A0();
              v80 = *v141;
              (*v141)(v79, v53);
              if ((sub_1156C0() & 1) == 0)
              {
                goto LABEL_57;
              }

              v81 = (v142 + *(v143 + 44));
              v82 = *v81;
              v83 = v81[1];
              v84 = MobileGestalt_get_current_device();
              if (!v84)
              {
                goto LABEL_90;
              }

              v85 = v84;
              v86 = MobileGestalt_copy_buildVersion_obj();

              if (v86)
              {
                v87 = sub_1171B0();
                v89 = v88;

                if (v82 == v87 && v83 == v89)
                {

                  v53 = v136;
                  v80(v139, v136);
                  v32 = v145;
                  v70 = v142;
                  goto LABEL_62;
                }

                v90 = sub_1179E0();

                v53 = v136;
                v80(v139, v136);
                v32 = v145;
                v70 = v142;
                if (v90)
                {
LABEL_62:
                  sub_CA944(v70, v132, type metadata accessor for UrsaIssue);
                  v91 = v133;
                  v92 = swift_isUniquelyReferenced_nonNull_native();
                  aBlock[0] = v91;
                  if ((v92 & 1) == 0)
                  {
                    sub_C7A04(0, v91[2] + 1, 1, v93);
                    v91 = aBlock[0];
                  }

                  v95 = v91[2];
                  v94 = v91[3];
                  if (v95 >= v94 >> 1)
                  {
                    sub_C7A04((v94 > 1), v95 + 1, 1, v93);
                    v91 = aBlock[0];
                  }

                  v91[2] = v95 + 1;
                  v133 = v91;
                  sub_CA944(v132, v91 + v144 + v95 * v32, type metadata accessor for UrsaIssue);
LABEL_59:
                  v77 += v32;
                  if (--v78)
                  {
                    continue;
                  }

                  v96 = v133[2];

                  v97 = _swiftEmptyArrayStorage;
                  v98 = v135;
                  v99 = v140;
                  v100 = v96;
                  while (2)
                  {
                    sub_CA6AC(v33, v98, type metadata accessor for UrsaIssue);
                    if (*(v98 + 48) == 1 && !*(v98 + 40))
                    {
                      v101 = v138;
                      sub_115750();
                      sub_1156A0();
                      v102 = *v141;
                      (*v141)(v101, v53);
                      if ((sub_1156C0() & 1) == 0)
                      {
                        goto LABEL_79;
                      }

                      v103 = (v135 + *(v143 + 44));
                      v104 = *v103;
                      v105 = v103[1];
                      v106 = MobileGestalt_get_current_device();
                      if (!v106)
                      {
                        goto LABEL_91;
                      }

                      v107 = v106;
                      v108 = MobileGestalt_copy_buildVersion_obj();

                      if (!v108)
                      {
LABEL_79:
                        v102(v137, v53);
                        v98 = v135;
                        v99 = v140;
                        goto LABEL_80;
                      }

                      v109 = sub_1171B0();
                      v111 = v110;

                      if (v104 == v109 && v105 == v111)
                      {

                        v53 = v136;
                        v102(v137, v136);
                        v98 = v135;
                        v99 = v140;
                        v96 = v100;
                      }

                      else
                      {
                        v112 = sub_1179E0();

                        v53 = v136;
                        v102(v137, v136);
                        v98 = v135;
                        v99 = v140;
                        v96 = v100;
                        if ((v112 & 1) == 0)
                        {
LABEL_80:
                          sub_CA944(v98, v134, type metadata accessor for UrsaIssue);
                          v113 = swift_isUniquelyReferenced_nonNull_native();
                          aBlock[0] = v97;
                          if ((v113 & 1) == 0)
                          {
                            sub_C7A04(0, v97[2] + 1, 1, v114);
                            v97 = aBlock[0];
                          }

                          v116 = v97[2];
                          v115 = v97[3];
                          if (v116 >= v115 >> 1)
                          {
                            sub_C7A04((v115 > 1), v116 + 1, 1, v114);
                            v97 = aBlock[0];
                          }

                          v97[2] = v116 + 1;
                          sub_CA944(v134, v97 + v144 + v116 * v145, type metadata accessor for UrsaIssue);
                          v96 = v100;
LABEL_69:
                          v33 += v145;
                          if (!--v31)
                          {
                            v117 = v128;
                            v118 = v96;
                            goto LABEL_87;
                          }

                          continue;
                        }
                      }
                    }

                    break;
                  }

                  sub_CAF48(v98, type metadata accessor for UrsaIssue);
                  goto LABEL_69;
                }
              }

              else
              {
LABEL_57:
                v80(v139, v53);
                v32 = v145;
                v70 = v142;
              }
            }

            break;
          }

          sub_CAF48(v70, type metadata accessor for UrsaIssue);
          goto LABEL_59;
        }
      }
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
}

id sub_C2C6C(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v4 = MobileGestalt_copy_buildVersion_obj();

    if (v4)
    {
      v5 = sub_1171B0();
      v7 = v6;

      v8 = (v1 + *(type metadata accessor for UrsaIssue(0) + 48));
      v9 = v8[1];
      if (v9)
      {
        if (v5 == *v8 && v9 == v7)
        {

          v12 = 1;
        }

        else
        {
          v11 = sub_1179E0();

          v12 = v11 ^ 1;
        }
      }

      else
      {

        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    return (v12 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_C2D48()
{
  v1 = v0;
  v2 = sub_115760();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  sub_115750();
  sub_1156A0();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = type metadata accessor for UrsaIssue(0);
  if ((sub_1156C0() & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = (v1 + *(v10 + 44));
  v12 = *v11;
  v13 = v11[1];
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v15 = result;
    v16 = MobileGestalt_copy_buildVersion_obj();

    if (v16)
    {
      v17 = sub_1171B0();
      v19 = v18;

      if (v12 == v17 && v13 == v19)
      {
        v20 = 1;
      }

      else
      {
        v20 = sub_1179E0();
      }

      goto LABEL_10;
    }

LABEL_7:
    v20 = 0;
LABEL_10:
    v9(v8, v2);
    return (v20 & 1);
  }

  __break(1u);
  return result;
}

void sub_C2F24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_46F9C(&qword_1843B8, &qword_12B290);
    v2 = sub_117870();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_64F08(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_C3104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_46F9C(&qword_185988, &qword_12A5A0);
  v82 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v71 - v4;
  v84 = sub_46F9C(&qword_185990, &qword_12A5A8);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v7 = &v71 - v6;
  v88 = sub_46F9C(&qword_185998, &qword_12A5B0);
  __chkstk_darwin(v88);
  v9 = &v71 - v8;
  v86 = sub_46F9C(&qword_1859A0, &qword_12A5B8);
  __chkstk_darwin(v86);
  v87 = &v71 - v10;
  v76 = sub_46F9C(&qword_1859A8, &qword_12A5C0);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v71 - v11;
  v73 = sub_46F9C(&qword_1859B0, &qword_12A5C8);
  __chkstk_darwin(v73);
  v13 = &v71 - v12;
  v78 = sub_46F9C(&qword_1859B8, &qword_12A5D0);
  __chkstk_darwin(v78);
  v15 = &v71 - v14;
  v16 = sub_46F9C(&qword_1859C0, &qword_12A5D8);
  v81 = *(v16 - 8);
  __chkstk_darwin(v16);
  v79 = &v71 - v17;
  v18 = sub_46F9C(&qword_1859C8, &qword_12A5E0);
  v80 = *(v18 - 8);
  __chkstk_darwin(v18);
  v77 = &v71 - v19;
  v85 = sub_46F9C(&qword_1859D0, &qword_12A5E8);
  __chkstk_darwin(v85);
  __chkstk_darwin(v20);
  if (*(a1 + 16))
  {
    __chkstk_darwin(v21);
    sub_46F9C(&qword_1859D8, &qword_12A5F0);
    sub_C8D54();
    sub_116750();
    sub_116370();
    v26 = sub_48800(&qword_185A60, &qword_185988, &qword_12A5A0, &protocol conformance descriptor for List<A, B>);
    sub_116A30();

    (*(v82 + 8))(v5, v3);
    sub_116370();
    *&v92 = v3;
    *(&v92 + 1) = v26;
    swift_getOpaqueTypeConformance2();
    v27 = v84;
    sub_116A60();

    (*(v83 + 8))(v7, v27);
    v28 = swift_allocObject();
    *(v28 + 16) = a1;
    v29 = &v9[*(v88 + 36)];
    *v29 = sub_CB2F8;
    v29[1] = v28;
    v29[2] = 0;
    v29[3] = 0;
    v30 = &qword_185998;
    v31 = &qword_12A5B0;
    sub_479B4(v9, v87, &qword_185998, &qword_12A5B0);
    swift_storeEnumTagMultiPayload();
    sub_C9218();
    sub_C94F8();

    sub_116470();
    v32 = v9;
  }

  else
  {
    *&v92 = 0xD000000000000058;
    *(&v92 + 1) = 0x80000000001358F0;
    v84 = &v71 - v24;
    v83 = v25;
    sub_4869C(v21, v22, v23);
    v33 = sub_116900();
    v35 = v34;
    v71 = v16;
    v37 = v36;
    v39 = v38;
    KeyPath = swift_getKeyPath();
    v41 = sub_116720();
    v82 = v18;
    v42 = v41;
    v43 = swift_getKeyPath();
    v72 = a1;
    v44 = v37 & 1;
    LOBYTE(v90) = v37 & 1;
    v45 = sub_116B40();
    v46 = swift_getKeyPath();
    *&v92 = v33;
    *(&v92 + 1) = v35;
    LOBYTE(v93) = v44;
    *(&v93 + 1) = v39;
    *&v94 = KeyPath;
    BYTE8(v94) = 1;
    *&v95 = v43;
    *(&v95 + 1) = v42;
    *&v96 = v46;
    *(&v96 + 1) = v45;
    sub_46F9C(&qword_185A28, &qword_12A610);
    sub_C8FB8();
    v47 = v74;
    sub_116E60();
    sub_116EA0();
    sub_116190();
    (*(v75 + 32))(v13, v47, v76);
    v48 = &v13[*(v73 + 36)];
    v49 = v97;
    *(v48 + 4) = v96;
    *(v48 + 5) = v49;
    *(v48 + 6) = v98;
    v50 = v93;
    *v48 = v92;
    *(v48 + 1) = v50;
    v51 = v95;
    *(v48 + 2) = v94;
    *(v48 + 3) = v51;
    LOBYTE(v33) = sub_116600();
    sub_115FD0();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_548D0(v13, v15, &qword_1859B0, &qword_12A5C8);
    v60 = v78;
    v61 = &v15[*(v78 + 36)];
    *v61 = v33;
    *(v61 + 1) = v53;
    *(v61 + 2) = v55;
    *(v61 + 3) = v57;
    *(v61 + 4) = v59;
    v61[40] = 0;
    sub_116370();
    v62 = sub_C9358(&qword_185A70, &qword_1859B8, &qword_12A5D0, sub_C93DC);
    v63 = v79;
    sub_116A30();

    sub_488C8(v15, &qword_1859B8, &qword_12A5D0);
    sub_116370();
    v90 = v60;
    v91 = v62;
    swift_getOpaqueTypeConformance2();
    v64 = v77;
    v65 = v71;
    sub_116A60();

    (*(v81 + 8))(v63, v65);
    v66 = swift_allocObject();
    *(v66 + 16) = v72;
    v67 = v83;
    (*(v80 + 32))(v83, v64, v82);
    v68 = (v67 + *(v85 + 36));
    *v68 = sub_C9638;
    v68[1] = v66;
    v68[2] = 0;
    v68[3] = 0;
    v69 = v84;
    sub_C9640(v67, v84);
    v30 = &qword_1859D0;
    v31 = &qword_12A5E8;
    sub_479B4(v69, v87, &qword_1859D0, &qword_12A5E8);
    swift_storeEnumTagMultiPayload();
    sub_C9218();
    sub_C94F8();

    sub_116470();
    v32 = v69;
  }

  return sub_488C8(v32, v30, v31);
}

double sub_C3D60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v59 = a2;
  v60 = a3;
  v5 = type metadata accessor for UrsaIssue(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_46F9C(&qword_185D10, &qword_12AA78);
  __chkstk_darwin(v8);
  v10 = &v55 - v9;
  v11 = sub_46F9C(&qword_185D18, &unk_12AA80);
  __chkstk_darwin(v11 - 8);
  v58 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v55 - v14;
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  sub_CA6AC(a1, &v55 - v17, type metadata accessor for UrsaIssue);
  v19 = *(v6 + 56);
  v20 = 1;
  v19(v18, 0, 1, v5);
  v21 = *(v59 + 16);
  v57 = v21;
  if (v21)
  {
    sub_CA6AC(v59 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v21 - 1), v15, type metadata accessor for UrsaIssue);
    v20 = 0;
  }

  v19(v15, v20, 1, v5);
  v22 = *(v8 + 48);
  sub_479B4(v18, v10, &qword_185D18, &unk_12AA80);
  sub_479B4(v15, &v10[v22], &qword_185D18, &unk_12AA80);
  v23 = *(v6 + 48);
  if (v23(v10, 1, v5) != 1)
  {
    v27 = v58;
    sub_479B4(v10, v58, &qword_185D18, &unk_12AA80);
    if (v23(&v10[v22], 1, v5) != 1)
    {
      v28 = v27;
      v29 = v56;
      sub_CA944(&v10[v22], v56, type metadata accessor for UrsaIssue);
      v30 = sub_C97AC(v28, v29);
      sub_CAF48(v29, type metadata accessor for UrsaIssue);
      sub_488C8(v15, &qword_185D18, &unk_12AA80);
      sub_488C8(v18, &qword_185D18, &unk_12AA80);
      sub_CAF48(v28, type metadata accessor for UrsaIssue);
      v24 = sub_488C8(v10, &qword_185D18, &unk_12AA80);
      if (v30)
      {
        goto LABEL_11;
      }

LABEL_9:
      sub_CB1BC(&v70);
      goto LABEL_15;
    }

    sub_488C8(v15, &qword_185D18, &unk_12AA80);
    sub_488C8(v18, &qword_185D18, &unk_12AA80);
    sub_CAF48(v27, type metadata accessor for UrsaIssue);
LABEL_8:
    sub_488C8(v10, &qword_185D10, &qword_12AA78);
    goto LABEL_9;
  }

  sub_488C8(v15, &qword_185D18, &unk_12AA80);
  sub_488C8(v18, &qword_185D18, &unk_12AA80);
  if (v23(&v10[v22], 1, v5) != 1)
  {
    goto LABEL_8;
  }

  v24 = sub_488C8(v10, &qword_185D18, &unk_12AA80);
LABEL_11:
  v31 = 0xD000000000000058;
  if (v57)
  {
    v31 = 0xD000000000000060;
    v32 = "will not update.";
  }

  else
  {
    v32 = "are listed here.";
  }

  *&v61 = v31;
  *(&v61 + 1) = v32 | 0x8000000000000000;
  sub_4869C(v24, v25, v26);
  v59 = sub_116900();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  KeyPath = swift_getKeyPath();
  v40 = sub_116720();
  v41 = swift_getKeyPath();
  v42 = v36 & 1;
  v68 = v36 & 1;
  v43 = sub_116B40();
  v44 = swift_getKeyPath();
  v45 = sub_116660();
  sub_115FD0();
  v69 = 0;
  *&v61 = v59;
  *(&v61 + 1) = v34;
  LOBYTE(v62) = v42;
  *(&v62 + 1) = v38;
  *&v63 = KeyPath;
  BYTE8(v63) = 1;
  *&v64 = v41;
  *(&v64 + 1) = v40;
  *&v65 = v44;
  *(&v65 + 1) = v43;
  LOBYTE(v66) = v45;
  *(&v66 + 1) = v46;
  *&v67[0] = v47;
  *(&v67[0] + 1) = v48;
  *&v67[1] = v49;
  BYTE8(v67[1]) = 0;
  nullsub_4();
  v74 = v65;
  v75 = v66;
  v76[0] = v67[0];
  *(v76 + 9) = *(v67 + 9);
  v70 = v61;
  v71 = v62;
  v72 = v63;
  v73 = v64;
LABEL_15:
  v50 = v75;
  v51 = v60;
  v60[4] = v74;
  v51[5] = v50;
  v51[6] = v76[0];
  *(v51 + 105) = *(v76 + 9);
  v52 = v71;
  *v51 = v70;
  v51[1] = v52;
  result = *&v72;
  v54 = v73;
  v51[2] = v72;
  v51[3] = v54;
  return result;
}

uint64_t sub_C4360(uint64_t a1)
{
  v2 = sub_1160C0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_116270();
}

uint64_t sub_C4428@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v182 = a2;
  v3 = sub_46F9C(&qword_185C30, &qword_12A918);
  v175 = *(v3 - 8);
  v176 = v3;
  __chkstk_darwin(v3);
  v159 = &v152 - v4;
  v193 = sub_46F9C(&qword_185C38, &qword_12A920);
  __chkstk_darwin(v193);
  v177 = &v152 - v5;
  v6 = sub_46F9C(&qword_185AA8, qword_12A678);
  __chkstk_darwin(v6 - 8);
  v183 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v155 = &v152 - v9;
  v10 = sub_115650();
  v194 = *(v10 - 8);
  v11 = *(v194 + 64);
  __chkstk_darwin(v10);
  v172 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v162 = &v152 - v13;
  __chkstk_darwin(v14);
  v156 = &v152 - v15;
  v179 = sub_46F9C(&qword_185C40, &qword_12A928);
  __chkstk_darwin(v179);
  v161 = &v152 - v16;
  v190 = sub_46F9C(&qword_185C48, &qword_12A930);
  __chkstk_darwin(v190);
  v192 = &v152 - v17;
  v173 = sub_46F9C(&qword_185C50, &qword_12A938);
  __chkstk_darwin(v173);
  v174 = &v152 - v18;
  v191 = sub_46F9C(&qword_185C58, &qword_12A940);
  __chkstk_darwin(v191);
  v178 = &v152 - v19;
  v20 = sub_46F9C(&qword_185C60, &qword_12A948);
  v165 = *(v20 - 8);
  v166 = v20;
  __chkstk_darwin(v20);
  v157 = &v152 - v21;
  v22 = type metadata accessor for UrsaView(0);
  v163 = *(v22 - 8);
  v23 = *(v163 + 64);
  __chkstk_darwin(v22 - 8);
  v164 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_46F9C(&qword_185C68, &unk_12A950);
  __chkstk_darwin(v168);
  v170 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v180 = &v152 - v26;
  v167 = sub_46F9C(&qword_184EA0, &qword_129180);
  __chkstk_darwin(v167);
  v169 = &v152 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v181 = &v152 - v29;
  v171 = sub_46F9C(&qword_185C70, &qword_12A960);
  v160 = *(v171 - 8);
  __chkstk_darwin(v171);
  v154 = &v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v158 = &v152 - v32;
  v33 = sub_46F9C(&qword_185C78, &qword_12A968);
  __chkstk_darwin(v33 - 8);
  v189 = &v152 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v188 = &v152 - v36;
  v196 = sub_116320();
  v203 = 1;
  sub_C5A58(a1, &v199);
  v205 = *v200;
  v206 = *&v200[16];
  v207 = *&v200[32];
  v204 = v199;
  v209[1] = *v200;
  v209[2] = *&v200[16];
  v209[3] = *&v200[32];
  v209[4] = *&v200[48];
  v208 = *&v200[48];
  v209[0] = v199;
  sub_479B4(&v204, v197, &qword_185C80, &qword_12A970);
  sub_488C8(v209, &qword_185C80, &qword_12A970);
  *&v202[23] = v205;
  *&v202[39] = v206;
  *&v202[55] = v207;
  *&v202[71] = v208;
  *&v202[7] = v204;
  v195 = v203;
  *&v199 = sub_C5CD8(v208);
  *(&v199 + 1) = v37;
  sub_4869C(v199, v37, v38);
  v39 = sub_116900();
  v185 = v40;
  v186 = v39;
  v184 = v41;
  v187 = v42;
  v43 = *(a1 + 40);
  if (*(a1 + 48) == 1)
  {
    v44 = v194;
    if (v43)
    {
      if (sub_C2C6C(v39))
      {
        v45 = 1;
        v46 = v188;
        v47 = v161;
      }

      else
      {
        v109 = v155;
        sub_115640();
        v110 = v10;
        if ((*(v44 + 48))(v109, 1, v10) == 1)
        {
          sub_488C8(v109, &qword_185AA8, qword_12A678);
          v111 = 1;
          v46 = v188;
          v47 = v161;
          v112 = v154;
        }

        else
        {
          v115 = *(v44 + 32);
          v116 = v156;
          v115(v156, v109, v110);
          v117 = v181;
          sub_116DD0();
          v118 = sub_116660();
          sub_115FD0();
          v119 = v117 + *(v167 + 36);
          *v119 = v118;
          *(v119 + 8) = v120;
          *(v119 + 16) = v121;
          *(v119 + 24) = v122;
          *(v119 + 32) = v123;
          *(v119 + 40) = 0;
          v183 = sub_116370();
          v177 = v124;
          v125 = *(v44 + 16);
          v126 = v162;
          v153 = v110;
          v125(v162, v116, v110);
          v127 = (*(v44 + 80) + 16) & ~*(v44 + 80);
          v128 = swift_allocObject();
          v115((v128 + v127), v126, v110);
          v129 = v180;
          sub_116D10();
          v130 = sub_116AF0();
          KeyPath = swift_getKeyPath();
          v132 = v169;
          v133 = (v129 + *(v168 + 36));
          *v133 = KeyPath;
          v133[1] = v130;
          v134 = v181;
          sub_479B4(v181, v132, &qword_184EA0, &qword_129180);
          v135 = v170;
          sub_479B4(v129, v170, &qword_185C68, &unk_12A950);
          v136 = v157;
          sub_479B4(v132, v157, &qword_184EA0, &qword_129180);
          v137 = sub_46F9C(&qword_185CD0, &unk_12A9C0);
          sub_479B4(v135, v136 + *(v137 + 48), &qword_185C68, &unk_12A950);
          sub_488C8(v129, &qword_185C68, &unk_12A950);
          sub_488C8(v134, &qword_184EA0, &qword_129180);
          (*(v44 + 8))(v156, v153);
          sub_488C8(v135, &qword_185C68, &unk_12A950);
          sub_488C8(v132, &qword_184EA0, &qword_129180);
          v138 = v136;
          v112 = v154;
          sub_548D0(v138, v154, &qword_185C60, &qword_12A948);
          v111 = 0;
          v46 = v188;
          v47 = v161;
        }

        (*(v165 + 56))(v112, v111, 1, v166);
        sub_548D0(v112, v47, &qword_185C70, &qword_12A960);
        v45 = 0;
      }

      (*(v160 + 56))(v47, v45, 1, v171);
      v86 = &qword_185C40;
      v87 = &qword_12A928;
      sub_479B4(v47, v174, &qword_185C40, &qword_12A928);
      swift_storeEnumTagMultiPayload();
      sub_CA4C8();
      sub_CA578();
      v139 = v178;
      sub_116470();
      sub_479B4(v139, v192, &qword_185C58, &qword_12A940);
      swift_storeEnumTagMultiPayload();
      sub_CA43C();
      sub_CA5FC();
      sub_116470();
      v114 = v139;
    }

    else
    {
      if (sub_C2D48())
      {
        v89 = v181;
        sub_116DD0();
        v90 = sub_116660();
        sub_115FD0();
        v91 = v89 + *(v167 + 36);
        *v91 = v90;
        *(v91 + 8) = v92;
        *(v91 + 16) = v93;
        *(v91 + 24) = v94;
        *(v91 + 32) = v95;
        *(v91 + 40) = 0;
        sub_116370();
        v194 = v96;
        v97 = v164;
        sub_CA6AC(a1, v164, type metadata accessor for UrsaView);
        v98 = (*(v163 + 80) + 16) & ~*(v163 + 80);
        v99 = swift_allocObject();
        sub_CA944(v97, v99 + v98, type metadata accessor for UrsaView);
        v100 = v180;
        sub_116D10();
        v101 = sub_116AF0();
        v102 = swift_getKeyPath();
        v103 = v169;
        v104 = (v100 + *(v168 + 36));
        *v104 = v102;
        v104[1] = v101;
        sub_479B4(v89, v103, &qword_184EA0, &qword_129180);
        v105 = v170;
        sub_479B4(v100, v170, &qword_185C68, &unk_12A950);
        v106 = v157;
        sub_479B4(v103, v157, &qword_184EA0, &qword_129180);
        v107 = sub_46F9C(&qword_185CD0, &unk_12A9C0);
        sub_479B4(v105, v106 + *(v107 + 48), &qword_185C68, &unk_12A950);
        sub_488C8(v100, &qword_185C68, &unk_12A950);
        sub_488C8(v89, &qword_184EA0, &qword_129180);
        sub_488C8(v105, &qword_185C68, &unk_12A950);
        sub_488C8(v103, &qword_184EA0, &qword_129180);
        v47 = v158;
        sub_548D0(v106, v158, &qword_185C60, &qword_12A948);
        v108 = 0;
      }

      else
      {
        v108 = 1;
        v47 = v158;
      }

      (*(v165 + 56))(v47, v108, 1, v166);
      v86 = &qword_185C70;
      v87 = &qword_12A960;
      sub_479B4(v47, v174, &qword_185C70, &qword_12A960);
      swift_storeEnumTagMultiPayload();
      sub_CA4C8();
      sub_CA578();
      v113 = v178;
      sub_116470();
      sub_479B4(v113, v192, &qword_185C58, &qword_12A940);
      swift_storeEnumTagMultiPayload();
      sub_CA43C();
      sub_CA5FC();
      v46 = v188;
      sub_116470();
      v114 = v113;
    }

    sub_488C8(v114, &qword_185C58, &qword_12A940);
    v88 = v47;
  }

  else
  {
    *&v199 = *(a1 + 40);
    v210._countAndFlagsBits = sub_1179B0();
    strcpy(&v199, "livability://");
    HIWORD(v199) = -4864;
    sub_117220(v210);

    v48 = v183;
    sub_115640();

    v49 = v194;
    if ((*(v194 + 48))(v48, 1, v10) == 1)
    {
      sub_488C8(v183, &qword_185AA8, qword_12A678);
      v50 = v177;
      (*(v175 + 56))(v177, 1, 1, v176);
    }

    else
    {
      v179 = *(v49 + 32);
      v51 = v172;
      v179(v172, v183, v10);
      v52 = v181;
      sub_116DD0();
      v53 = sub_116660();
      v153 = v10;
      v54 = v53;
      sub_115FD0();
      v55 = v52 + *(v167 + 36);
      *v55 = v54;
      *(v55 + 8) = v56;
      *(v55 + 16) = v57;
      *(v55 + 24) = v58;
      *(v55 + 32) = v59;
      *(v55 + 40) = 0;
      v178 = sub_116370();
      v173 = v61;
      v174 = v60;
      LODWORD(v171) = v62;
      v63 = v164;
      sub_CA6AC(a1, v164, type metadata accessor for UrsaView);
      v183 = v43;
      v64 = v23;
      v65 = v194;
      v66 = v162;
      v67 = v153;
      (*(v194 + 16))(v162, v51, v153);
      v68 = (*(v163 + 80) + 16) & ~*(v163 + 80);
      v69 = (v64 + *(v65 + 80) + v68) & ~*(v65 + 80);
      v70 = swift_allocObject();
      sub_CA944(v63, v70 + v68, type metadata accessor for UrsaView);
      v179((v70 + v69), v66, v67);
      v71 = v180;
      sub_116D10();
      v72 = sub_116AF0();
      v73 = swift_getKeyPath();
      v74 = (v71 + *(v168 + 36));
      *v74 = v73;
      v74[1] = v72;
      strcpy(&v199, "rdar://");
      *(&v199 + 1) = 0xE700000000000000;
      v197[0] = v183;
      v211._countAndFlagsBits = sub_1179B0();
      sub_117220(v211);

      *&v199 = sub_116AF0();
      v75 = sub_116890();
      v77 = v76;
      LOBYTE(v68) = v78;
      v183 = v79;

      v80 = v181;
      v81 = v169;
      sub_479B4(v181, v169, &qword_184EA0, &qword_129180);
      v82 = v170;
      sub_479B4(v71, v170, &qword_185C68, &unk_12A950);
      LOBYTE(v68) = v68 & 1;
      LOBYTE(v199) = v68;
      v83 = v159;
      sub_479B4(v81, v159, &qword_184EA0, &qword_129180);
      v84 = sub_46F9C(&qword_185CC8, &qword_12A9B8);
      sub_479B4(v82, v83 + *(v84 + 48), &qword_185C68, &unk_12A950);
      v85 = v83 + *(v84 + 64);
      *v85 = v75;
      *(v85 + 8) = v77;
      *(v85 + 16) = v68;
      *(v85 + 24) = v183;
      sub_488B8(v75, v77, v68);

      sub_488C8(v180, &qword_185C68, &unk_12A950);
      sub_488C8(v80, &qword_184EA0, &qword_129180);
      (*(v194 + 8))(v172, v153);
      sub_48928(v75, v77, v199);

      sub_488C8(v82, &qword_185C68, &unk_12A950);
      sub_488C8(v81, &qword_184EA0, &qword_129180);
      v50 = v177;
      sub_548D0(v83, v177, &qword_185C30, &qword_12A918);
      (*(v175 + 56))(v50, 0, 1, v176);
    }

    v86 = &qword_185C38;
    v87 = &qword_12A920;
    sub_479B4(v50, v192, &qword_185C38, &qword_12A920);
    swift_storeEnumTagMultiPayload();
    sub_CA43C();
    sub_CA5FC();
    v46 = v188;
    sub_116470();
    v88 = v50;
  }

  sub_488C8(v88, v86, v87);
  v140 = v189;
  sub_479B4(v46, v189, &qword_185C78, &qword_12A968);
  v197[0] = v196;
  v197[1] = 0;
  v198[0] = v195;
  *&v198[1] = *v202;
  *&v198[17] = *&v202[16];
  *&v198[65] = *&v202[64];
  *&v198[49] = *&v202[48];
  *&v198[33] = *&v202[32];
  v141 = *&v202[79];
  *&v198[80] = *&v202[79];
  v142 = *v198;
  v143 = v182;
  *v182 = v196;
  v143[1] = v142;
  v144 = *&v198[16];
  v145 = *&v198[32];
  v146 = *&v198[64];
  v143[4] = *&v198[48];
  v143[5] = v146;
  v143[2] = v144;
  v143[3] = v145;
  *(v143 + 12) = v141;
  *(v143 + 13) = 0;
  *(v143 + 112) = 1;
  v148 = v185;
  v147 = v186;
  *(v143 + 15) = v186;
  *(v143 + 16) = v148;
  v149 = v184 & 1;
  *(v143 + 136) = v184 & 1;
  *(v143 + 18) = v187;
  v150 = v143 + *(sub_46F9C(&qword_185CB8, &qword_12A978) + 80);
  sub_479B4(v140, v150, &qword_185C78, &qword_12A968);
  sub_479B4(v197, &v199, &qword_185CC0, &qword_12A980);
  sub_488B8(v147, v148, v149);

  sub_488C8(v46, &qword_185C78, &qword_12A968);
  sub_488C8(v140, &qword_185C78, &qword_12A968);
  sub_48928(v147, v148, v149);

  v199 = v196;
  v200[0] = v195;
  *&v200[33] = *&v202[32];
  *&v200[49] = *&v202[48];
  *v201 = *&v202[64];
  *&v201[15] = *&v202[79];
  *&v200[1] = *v202;
  *&v200[17] = *&v202[16];
  return sub_488C8(&v199, &qword_185CC0, &qword_12A980);
}

uint64_t sub_C5A58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_116360();
  __chkstk_darwin(v4 - 8);
  sub_4869C(v5, v6, v7);

  v8 = sub_116900();
  v10 = v9;
  v12 = v11;
  sub_116730();
  v13 = sub_1168C0();
  v15 = v14;
  v26 = v16;
  v27 = v17;

  sub_48928(v8, v10, v12 & 1);

  if (a1[7])
  {
    sub_116350();
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_116340(v28);
    sub_116330();
    v29._countAndFlagsBits = 1919430437;
    v29._object = 0xE400000000000000;
    sub_116340(v29);
    sub_116380();
    v18 = sub_1168E0();
    v20 = v19;
    v22 = v21;
    v24 = v23 & 1;
    sub_488B8(v18, v19, v23 & 1);
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v24 = 0;
    v22 = 0;
  }

  sub_488B8(v13, v15, v26 & 1);

  sub_CAEC0(v18, v20, v24, v22);
  sub_CAF04(v18, v20, v24, v22);
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v18;
  *(a2 + 56) = v20;
  *(a2 + 64) = v24;
  *(a2 + 72) = v22;
  sub_CAF04(v18, v20, v24, v22);
  sub_48928(v13, v15, v26 & 1);
}

uint64_t sub_C5CD8(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for UrsaIssue(0);
  if (*(v1 + *(v3 + 40)) != 1)
  {
    sub_117710(89);
    v51._countAndFlagsBits = 0xD00000000000003ALL;
    v51._object = 0x8000000000135970;
    sub_117220(v51);
    v52._countAndFlagsBits = sub_1179B0();
    sub_117220(v52);

    v53._countAndFlagsBits = 0xD00000000000001DLL;
    v53._object = 0x80000000001359B0;
    sub_117220(v53);
  }

  if (*(v1 + 48) != 1)
  {
    v50 = 0;
    sub_117710(72);
    v70._countAndFlagsBits = 0xD000000000000021;
    v70._object = 0x80000000001359D0;
    sub_117220(v70);
    sub_117220(*(v1 + 24));
    v71._countAndFlagsBits = 0xD000000000000020;
    v71._object = 0x8000000000135A00;
    sub_117220(v71);
    v25 = sub_8D8B4()[6];
    isa = sub_1156B0().super.isa;
    v27 = [v25 stringFromDate:isa];

    v28 = sub_1171B0();
    v30 = v29;

    v72._countAndFlagsBits = v28;
    v72._object = v30;
    sub_117220(v72);

    v73._countAndFlagsBits = 46;
    v73._object = 0xE100000000000000;
    sub_117220(v73);
    v24._countAndFlagsBits = 0;
    goto LABEL_15;
  }

  if (!*(v1 + 40))
  {
    v31 = sub_C2D48();
    if (v31)
    {
      v32 = 0xD000000000000023;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = 0x8000000000135B40;
    }

    else
    {
      v33 = 0xE000000000000000;
    }

    if (*(v1 + 56) < 1)
    {
      sub_117710(49);

      v50 = 0x20737365636F7250;
      sub_117220(*(v1 + 24));
      v79._object = 0x8000000000135B20;
      v79._countAndFlagsBits = 0xD00000000000001FLL;
      sub_117220(v79);
      v41 = sub_8D8B4()[6];
      v42 = sub_1156B0().super.isa;
      v43 = [v41 stringFromDate:v42];

      v44 = sub_1171B0();
      v46 = v45;

      v80._countAndFlagsBits = v44;
      v80._object = v46;
      sub_117220(v80);

      v40._countAndFlagsBits = 46;
      v40._object = 0xE100000000000000;
    }

    else
    {
      v50 = 0;
      sub_117710(69);
      v74._countAndFlagsBits = 0x20737365636F7250;
      v74._object = 0xE900000000000027;
      sub_117220(v74);
      sub_117220(*(v1 + 24));
      v75._object = 0x8000000000135B20;
      v75._countAndFlagsBits = 0xD00000000000001FLL;
      sub_117220(v75);
      v34 = sub_8D8B4()[6];
      v35 = sub_1156B0().super.isa;
      v36 = [v34 stringFromDate:v35];

      v37 = sub_1171B0();
      v39 = v38;

      v76._countAndFlagsBits = v37;
      v76._object = v39;
      sub_117220(v76);

      v77._countAndFlagsBits = 0x6172206120746120;
      v77._object = 0xEE0020666F206574;
      sub_117220(v77);
      v78._countAndFlagsBits = sub_1179B0();
      sub_117220(v78);

      v40._countAndFlagsBits = 0x2E72682F25;
      v40._object = 0xE500000000000000;
    }

    sub_117220(v40);
    v81._countAndFlagsBits = 0;
    v81._object = 0xE000000000000000;
    sub_117220(v81);

    v82._countAndFlagsBits = v32;
    v82._object = v33;
    sub_117220(v82);
    goto LABEL_27;
  }

  sub_117710(141);
  v54._countAndFlagsBits = 0xD000000000000031;
  v54._object = 0x8000000000135A30;
  sub_117220(v54);
  v55 = *(v1 + 24);
  object = v55._object;
  countAndFlagsBits = v55._countAndFlagsBits;
  sub_117220(v55);
  v56._countAndFlagsBits = 0x206E6F2027;
  v56._object = 0xE500000000000000;
  sub_117220(v56);
  v4 = sub_8D8B4();
  v5 = v4[6];
  v6 = sub_1156B0().super.isa;
  v7 = [v5 stringFromDate:v6];

  v8 = sub_1171B0();
  v10 = v9;

  v57._countAndFlagsBits = v8;
  v57._object = v10;
  sub_117220(v57);

  v58._countAndFlagsBits = 0xD00000000000001ELL;
  v58._object = 0x8000000000135A70;
  sub_117220(v58);
  v11 = (v2 + *(v3 + 48));
  v12 = *v11;
  v13 = v11[1];
  if (v13)
  {
    v14 = *v11;
  }

  else
  {
    v14 = 0xD000000000000013;
  }

  if (v13)
  {
    v15 = v11[1];
  }

  else
  {
    v15 = 0x8000000000135A90;
  }

  v59._countAndFlagsBits = v14;
  v59._object = v15;
  sub_117220(v59);

  v60._countAndFlagsBits = 46;
  v60._object = 0xE100000000000000;
  sub_117220(v60);
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  sub_117220(v61);
  v62._countAndFlagsBits = 0xD000000000000030;
  v62._object = 0x8000000000135AB0;
  sub_117220(v62);
  v17 = 0;
  if (v13 && (sub_C2C6C(v16) & 1) != 0)
  {

    v50 = 0;
    sub_117710(106);
    v63._countAndFlagsBits = 0xD000000000000031;
    v63._object = 0x8000000000135A30;
    sub_117220(v63);
    v64._object = object;
    v64._countAndFlagsBits = countAndFlagsBits;
    sub_117220(v64);
    v65._countAndFlagsBits = 0x206E6F2027;
    v65._object = 0xE500000000000000;
    sub_117220(v65);
    v18 = v4[6];
    v19 = sub_1156B0().super.isa;
    v20 = [v18 stringFromDate:v19];

    v21 = sub_1171B0();
    v23 = v22;

    v66._countAndFlagsBits = v21;
    v66._object = v23;
    sub_117220(v66);

    v67._countAndFlagsBits = 0xD00000000000002ALL;
    v67._object = 0x8000000000135AF0;
    sub_117220(v67);
    v68._countAndFlagsBits = v12;
    v68._object = v13;
    sub_117220(v68);
    v69._countAndFlagsBits = 11819;
    v69._object = 0xE200000000000000;
    sub_117220(v69);
    v24._countAndFlagsBits = 0;
LABEL_15:
    v24._object = 0xE000000000000000;
    sub_117220(v24);
LABEL_27:

    return v50;
  }

  return v17;
}

uint64_t sub_C643C()
{
  v0 = sub_1160C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_A77D0(sub_C65E0, 0);
  v4 = sub_117170();
  aBlock[4] = sub_C65FC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_83460;
  aBlock[3] = &unk_168C90;
  v5 = _Block_copy(aBlock);
  AnalyticsSendEventLazy();
  _Block_release(v5);

  type metadata accessor for UrsaView(0);
  sub_C7804(v3);
  sub_C66D8(v3);
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_C65FC()
{
  sub_46F9C(&qword_1843A8, &unk_12B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_124890;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000000135D00;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v1 = sub_C96B0(inited, &qword_1843B8, &qword_12B290);
  swift_setDeallocating();
  sub_488C8(inited + 32, &qword_1843B0, &unk_128130);
  return v1;
}

void sub_C66D8(uint64_t a1)
{
  v3 = sub_46F9C(&qword_185AA8, qword_12A678);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = sub_115650();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  if (*(v1 + 48) == 1 && !*(v1 + 40))
  {
    v29 = v14;
    v17 = *(v1 + 32);
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = *(v1 + 24) & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      v28 = a1;
      v19 = objc_opt_self();
      v20 = sub_117170();
      type metadata accessor for UrsaIssue(0);
      v21 = sub_117170();
      v22 = [v19 createMetadataFile:v20 buildVersion:v21];

      if (v22)
      {
        sub_1171B0();
        v24 = v23;

        if (v24)
        {
          sub_C71E8(v24, v8);

          if ((*(v10 + 48))(v8, 1, v29) == 1)
          {
            sub_488C8(v8, &qword_185AA8, qword_12A678);
            sub_A7800(sub_C75F0, 0);
          }

          else
          {
            v27 = v29;
            (*(v10 + 32))(v16, v8, v29);
            sub_1160B0();
            (*(v10 + 8))(v16, v27);
          }

          return;
        }
      }
    }

    else
    {
      sub_A7800(sub_C75B8, 0);
    }

    sub_A7800(sub_C75D4, 0);
    sub_C71E8(0, v5);
    if ((*(v10 + 48))(v5, 1, v29) == 1)
    {
      sub_488C8(v5, &qword_185AA8, qword_12A678);
    }

    else
    {
      v25 = v5;
      v26 = v29;
      (*(v10 + 32))(v12, v25, v29);
      sub_1160B0();
      (*(v10 + 8))(v12, v26);
    }
  }
}

unint64_t sub_C6A90()
{
  sub_46F9C(&qword_1843A8, &unk_12B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_124890;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x8000000000135D50;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v1 = sub_C96B0(inited, &qword_1843B8, &qword_12B290);
  swift_setDeallocating();
  sub_488C8(inited + 32, &qword_1843B0, &unk_128130);
  return v1;
}

uint64_t sub_C6B6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1160C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_A77D0(sub_C6D1C, 0);
  v6 = sub_117170();
  aBlock[4] = sub_C6D38;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_83460;
  aBlock[3] = &unk_168CE0;
  v7 = _Block_copy(aBlock);
  AnalyticsSendEventLazy();
  _Block_release(v7);

  type metadata accessor for UrsaView(0);
  sub_C7804(v5);
  sub_1160B0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_C6D38()
{
  sub_46F9C(&qword_1843A8, &unk_12B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_124890;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x8000000000135DA0;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v1 = sub_C96B0(inited, &qword_1843B8, &qword_12B290);
  swift_setDeallocating();
  sub_488C8(inited + 32, &qword_1843B0, &unk_128130);
  return v1;
}

uint64_t sub_C6E14@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1163F0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_46F9C(&qword_185A98, &qword_12A668);
  sub_C4428(v2, (a2 + *(v4 + 44)));
  v5 = sub_116610();
  sub_115FD0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = sub_46F9C(&qword_185AA0, &qword_12A670);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

Swift::Int sub_C6F88()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_117A90();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    sub_117AA0(2uLL);
  }

  sub_117AA0(v1);
  return sub_117AD0();
}

void sub_C6FF4()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    sub_117AA0(2uLL);
  }

  sub_117AA0(v1);
}

Swift::Int sub_C7044(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_117A90();
  if (v3 == 1)
  {
    v2 = v2 != 0;
  }

  else
  {
    sub_117AA0(2uLL);
  }

  sub_117AA0(v2);
  return sub_117AD0();
}

uint64_t sub_C70AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_C70E8()
{
  v0 = kPLHPDConfigPath;
  v1 = sub_1171B0();
  v3 = v2;
  v4 = [objc_allocWithZone(NSDictionary) initWithContentsOfFile:v0];
  if (v4)
  {
    v7[5] = 0;
    v5 = v4;
    sub_117060();
  }

  __chkstk_darwin(v4);
  v7[2] = v1;
  v7[3] = v3;
  sub_A7800(sub_CA3C0, v7);

  return 0;
}

uint64_t sub_C71E8@<X0>(NSString a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_46F9C(&qword_185AA8, qword_12A678);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_C70E8();
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = v8;
  if (!*(v8 + 16))
  {
    goto LABEL_16;
  }

  v10 = sub_64F08(1634955893, 0xE400000000000000);
  if ((v11 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_6AD00(*(v9 + 56) + 32 * v10, v29);

  sub_46F9C(&qword_183580, &qword_1259A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v12 = v28;
  if (!*(v28 + 16))
  {
    goto LABEL_16;
  }

  v13 = sub_64F08(0x6378457265776F70, 0xEF736E6F69747065);
  if ((v14 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_6AD00(*(v12 + 56) + 32 * v13, v29);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v23 = sub_C7580;
LABEL_18:
    sub_A7800(v23, 0);
    v24 = sub_115650();
    return (*(*(v24 - 8) + 56))(a3, 1, 1, v24);
  }

  v15 = v28;
  if (!*(v28 + 16) || (v16 = sub_64F08(0x7261646172, 0xE500000000000000), (v17 & 1) == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  sub_6AD00(*(v15 + 56) + 32 * v16, v29);

  sub_46F9C(&qword_185C28, &qword_12A910);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!*(v28 + 16))
  {

    v23 = sub_C759C;
    goto LABEL_18;
  }

  v18.super.isa = sub_117050().super.isa;

  v19 = sub_117170();
  type metadata accessor for UrsaIssue(0);
  v20.super.isa = sub_1156B0().super.isa;
  if (a2)
  {
    a2 = sub_117170();
  }

  v21 = [objc_opt_self() generateTTRURLWithRadarParams:v18.super.isa procName:v19 violationTime:v20.super.isa metadataPath:a2];

  if (v21)
  {
    sub_115630();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v26 = sub_115650();
  (*(*(v26 - 8) + 56))(v7, v22, 1, v26);
  return sub_548D0(v7, a3, &qword_185AA8, qword_12A678);
}

void sub_C760C(uint64_t a1)
{
  sub_117200();
  sub_117AA0(*(v1 + 16));
  sub_117200();
  v2 = *(v1 + 40);
  if (*(v1 + 48) == 1)
  {
    v2 = v2 != 0;
  }

  else
  {
    sub_117AA0(2uLL);
  }

  sub_117AA0(v2);
  sub_117AA0(*(v1 + 56));
  v3 = type metadata accessor for UrsaIssue(0);
  sub_115760();
  sub_C8EA0(&qword_183548, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1170D0();
  sub_117AA0(*(v1 + *(v3 + 40)));
  sub_117200();
  if (*(v1 + *(v3 + 48) + 8))
  {
    sub_117AB0(1u);

    sub_117200();
  }

  else
  {
    sub_117AB0(0);
  }
}

Swift::Int sub_C7780()
{
  sub_117A90();
  sub_C760C(v1);
  return sub_117AD0();
}

Swift::Int sub_C77C4(uint64_t a1)
{
  sub_117A90();
  sub_C760C(v2);
  return sub_117AD0();
}

uint64_t sub_C7804@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1162F0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_46F9C(&qword_185A90, &qword_12A660);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_479B4(v2, &v14 - v9, &qword_185A90, &qword_12A660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1160C0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1174D0();
    v13 = sub_1165F0();
    sub_1159B0();

    sub_1162E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void *sub_C7A04(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  result = sub_C7A24(a1, a2, a3, *v4, a4);
  *v4 = result;
  return result;
}

void *sub_C7A24(void *result, int64_t a2, char a3, void *a4, __n128 a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (!v10)
  {
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_46F9C(&qword_185CF0, &qword_12A9E8);
  v11 = *(type metadata accessor for UrsaIssue(0) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v13) == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v9;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  v16 = *(type metadata accessor for UrsaIssue(0) - 8);
  if (v6)
  {
    if (v14 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v14 + v17 >= a4 + v17 + *(v16 + 72) * v9))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_C7BFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_116220();
  *a1 = result;
  return result;
}

void *sub_C7C50(void *result, int64_t a2, char a3, void *a4, __n128 a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (!v10)
  {
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_46F9C(&qword_185CF0, &qword_12A9E8);
  v11 = *(type metadata accessor for UrsaIssue(0) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v13) == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v9;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  v16 = *(type metadata accessor for UrsaIssue(0) - 8);
  if (v6)
  {
    if (v14 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v14 + v17 >= a4 + v17 + *(v16 + 72) * v9))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_C7E28(void *a1, __n128 a2)
{
  v3 = type metadata accessor for UrsaIssue(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v73 - v8;
  v10 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v73 - v11;
  v13 = sub_115760();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v94 = &v73 - v18;
  sub_A77D0(sub_C6EC4, 0);
  if (a1)
  {
    v93 = v16;
    v19 = a1;
    sub_A77D0(sub_C6EFC, 0);
    *&v97 = 0xD000000000000018;
    *(&v97 + 1) = 0x8000000000135FA0;
    v20 = sub_117A10();
    v95 = v19;
    v21 = [v19 __swift_objectForKeyedSubscript:v20];
    swift_unknownObjectRelease();
    if (v21)
    {
      sub_117660();
      swift_unknownObjectRelease();
    }

    else
    {
      v97 = 0u;
      v98 = 0u;
    }

    v99[0] = v97;
    v99[1] = v98;
    if (*(&v98 + 1))
    {
      sub_46F9C(&qword_185D20, &qword_12AA98);
      if (swift_dynamicCast())
      {
        v91 = v12;
        v92 = v6;
        v22 = v96;
        v23 = *(v96 + 16);
        if (v23)
        {
          v81 = v4;
          v82 = v3;
          v74 = (v14 + 32);
          v80 = (v14 + 56);
          v75 = (v14 + 48);
          v79 = 0x8000000000135FC0;
          v78 = (v14 + 16);
          v24 = _swiftEmptyArrayStorage;
          v77 = (v14 + 8);
          v25 = 32;
          v76 = 0xD00000000000001BLL;
          while (1)
          {
            v28 = *(v22 + v25);
            if (!*(v28 + 16))
            {
              break;
            }

            v29 = sub_64F08(0x617373654D697264, 0xEA00000000006567);
            if ((v30 & 1) == 0)
            {
              goto LABEL_16;
            }

            sub_6AD00(*(v28 + 56) + 32 * v29, v99);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_16;
            }

            v33 = *(&v97 + 1);
            v34 = HIBYTE(*(&v97 + 1)) & 0xFLL;
            if ((*(&v97 + 1) & 0x2000000000000000) == 0)
            {
              v34 = v97 & 0xFFFFFFFFFFFFLL;
            }

            if (!v34)
            {

LABEL_16:

              v27 = sub_C6F6C;
LABEL_17:
              sub_A77D0(v27, 0);
              goto LABEL_18;
            }

            v99[0] = v97;
            *&v97 = 58;
            *(&v97 + 1) = 0xE100000000000000;
            sub_4869C(v33, v31, v32);
            v35 = sub_117640();

            if (v35[2] == 2)
            {
              v89 = v24;
              v36 = v13;
              v38 = v35[4];
              v37 = v35[5];
              v39 = v35[7];
              v88 = v35[6];

              v90 = v39;

              if (v38 == 0x696C69626176696CLL && v37 == 0xEA00000000007974 || (sub_1179E0() & 1) != 0)
              {

                v13 = v36;
                if (*(v28 + 16))
                {
                  v40 = sub_64F08(0x7261646172, 0xE500000000000000);
                  v24 = v89;
                  if ((v41 & 1) != 0 && (sub_6AD00(*(v28 + 56) + 32 * v40, v99), swift_dynamicCast()))
                  {
                    v87 = v97;
                  }

                  else
                  {
                    v87 = 0;
                  }
                }

                else
                {
                  v87 = 0;
                  v24 = v89;
                }

                v86 = 0;
                if (*(v28 + 16))
                {
LABEL_38:
                  v43 = sub_64F08(0x746361706D69, 0xE600000000000000);
                  if (v44)
                  {
                    sub_6AD00(*(v28 + 56) + 32 * v43, v99);
                    if (swift_dynamicCast())
                    {
                      v45 = v97;
                      if (!*(v28 + 16))
                      {
                        goto LABEL_53;
                      }

LABEL_49:
                      v46 = sub_64F08(0x6E49746968, 0xE500000000000000);
                      if (v47 & 1) != 0 && (sub_6AD00(*(v28 + 56) + 32 * v46, v99), (swift_dynamicCast()))
                      {
                        v89 = *(&v97 + 1);
                        v85 = v97;
                        if (!*(v28 + 16))
                        {
                          goto LABEL_58;
                        }
                      }

                      else
                      {
LABEL_53:
                        v89 = 0xE700000000000000;
                        v85 = 0x6E776F6E6B6E55;
                        if (!*(v28 + 16))
                        {
                          goto LABEL_58;
                        }
                      }

                      v48 = sub_64F08(0x6E496465786966, 0xE700000000000000);
                      if (v49 & 1) != 0 && (sub_6AD00(*(v28 + 56) + 32 * v48, v99), (swift_dynamicCast()))
                      {
                        v83 = *(&v97 + 1);
                        v84 = v97;
                        if (!*(v28 + 16))
                        {
                          goto LABEL_63;
                        }
                      }

                      else
                      {
LABEL_58:
                        v84 = 0;
                        v83 = 0;
                        if (!*(v28 + 16))
                        {
                          goto LABEL_63;
                        }
                      }

                      v50 = sub_64F08(0x6369746972437369, 0xEA00000000006C61);
                      if ((v51 & 1) != 0 && (sub_6AD00(*(v28 + 56) + 32 * v50, v99), swift_dynamicCast()))
                      {
                        v52 = v97;
                        if (!*(v28 + 16))
                        {
LABEL_68:

                          goto LABEL_69;
                        }
                      }

                      else
                      {
LABEL_63:
                        v52 = 1;
                        if (!*(v28 + 16))
                        {
                          goto LABEL_68;
                        }
                      }

                      v53 = sub_64F08(0x6D617473656D6974, 0xEC000000646E4570);
                      if ((v54 & 1) == 0)
                      {
                        goto LABEL_68;
                      }

                      sub_6AD00(*(v28 + 56) + 32 * v53, v99);

                      sub_54960(0, &qword_185D28, NSDate_ptr);
                      if (swift_dynamicCast())
                      {
                        v55 = v97;
                        v56 = v94;
                        if (v97)
                        {
                          sub_115730();

                          v73 = v45;
                          v57 = *v74;
                          v58 = v91;
                          (*v74)(v91, v93, v13);
                          (*v80)(v58, 0, 1, v13);
                          v59 = v58;
                          v56 = v94;
                          v57(v94, v59, v13);
                          v45 = v73;
LABEL_72:
                          v61 = v82;
                          (*v78)(&v9[v82[9]], v56, v13);
                          v62 = v79;
                          *v9 = v76;
                          *(v9 + 1) = v62;
                          v63 = v88;
                          *(v9 + 2) = v45;
                          *(v9 + 3) = v63;
                          v64 = v87;
                          *(v9 + 4) = v90;
                          *(v9 + 5) = v64;
                          v9[48] = v86;
                          *(v9 + 7) = v45;
                          *&v9[v61[10]] = v52;
                          v65 = &v9[v61[11]];
                          v66 = v89;
                          *v65 = v85;
                          v65[1] = v66;
                          v67 = &v9[v61[12]];
                          v68 = v83;
                          *v67 = v84;
                          *(v67 + 1) = v68;
                          sub_CA6AC(v9, v92, type metadata accessor for UrsaIssue);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v24 = sub_C7C50(0, v24[2] + 1, 1, v24, v69);
                          }

                          v71 = v24[2];
                          v70 = v24[3];
                          if (v71 >= v70 >> 1)
                          {
                            v24 = sub_C7C50((v70 > 1), v71 + 1, 1, v24, v69);
                          }

                          sub_CAF48(v9, type metadata accessor for UrsaIssue);
                          (*v77)(v56, v13);
                          v24[2] = v71 + 1;
                          sub_CA944(v92, v24 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v71, type metadata accessor for UrsaIssue);
                          goto LABEL_18;
                        }
                      }

                      else
                      {
LABEL_69:
                        v56 = v94;
                      }

                      v60 = v91;
                      (*v80)(v91, 1, 1, v13);
                      sub_115750();
                      if ((*v75)(v60, 1, v13) != 1)
                      {
                        sub_488C8(v91, &qword_182EF0, &unk_124BB0);
                      }

                      goto LABEL_72;
                    }
                  }
                }

LABEL_48:
                v45 = 0;
                if (!*(v28 + 16))
                {
                  goto LABEL_53;
                }

                goto LABEL_49;
              }

              if (v38 == 0x6572617774666F73 && v37 == 0xEE00657461647055)
              {

                v87 = 1;
                v86 = 1;
                v13 = v36;
                goto LABEL_47;
              }

              v13 = v36;
              if (sub_1179E0())
              {

                v87 = 1;
                v86 = 1;
LABEL_47:
                v24 = v89;
                if (*(v28 + 16))
                {
                  goto LABEL_38;
                }

                goto LABEL_48;
              }

              v24 = v89;
              if (v38 == 7500916 && v37 == 0xE300000000000000 || (sub_1179E0() & 1) != 0)
              {

                v87 = 0;
                v86 = 1;
                if (*(v28 + 16))
                {
                  goto LABEL_38;
                }

                goto LABEL_48;
              }

              __chkstk_darwin(v72);
              vars0 = v38;
              vars8 = v37;
              sub_A7800(sub_CB260, &v100);
            }

            else
            {

              __chkstk_darwin(v42);
              vars0 = v35;
              sub_A7800(sub_CB1D8, &v100);
            }

LABEL_18:
            v25 += 8;
            if (!--v23)
            {

              return v24;
            }
          }

          v27 = sub_C6F50;
          goto LABEL_17;
        }

        sub_A77D0(sub_C6F34, 0);
        goto LABEL_12;
      }
    }

    else
    {
      sub_488C8(v99, &qword_182FC8, &qword_124DD0);
    }

    sub_A7800(sub_C6F18, 0);
LABEL_12:

    return _swiftEmptyArrayStorage;
  }

  sub_A77D0(sub_C6EE0, 0);
  return _swiftEmptyArrayStorage;
}

unint64_t sub_C8B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_185968;
  if (!qword_185968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185968);
  }

  return result;
}

uint64_t sub_C8BF8()
{
  v9 = *(v0 + 16);
  KeyPath = swift_getKeyPath();
  v2 = swift_allocObject();
  *(v2 + 16) = v9;
  swift_bridgeObjectRetain_n();
  v3 = sub_46F9C(&qword_185CF8, &qword_12AA70);
  v4 = sub_46F9C(&qword_1859F0, &qword_12A5F8);
  v5 = sub_48800(&qword_185D00, &qword_185CF8, &qword_12AA70, &protocol conformance descriptor for [A]);
  v6 = sub_C8EA0(&qword_185D08, type metadata accessor for UrsaIssue, &unk_12A7D8);
  v7 = sub_C8DD8();
  return sub_116E10(&v9, KeyPath, sub_CB05C, v2, v3, v4, v5, v6, v7);
}

unint64_t sub_C8D54()
{
  result = qword_1859E0;
  if (!qword_1859E0)
  {
    sub_47A1C(&qword_1859D8, &qword_12A5F0);
    sub_C8DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1859E0);
  }

  return result;
}

unint64_t sub_C8DD8()
{
  result = qword_1859E8;
  if (!qword_1859E8)
  {
    sub_47A1C(&qword_1859F0, &qword_12A5F8);
    sub_C8EA0(&qword_1859F8, type metadata accessor for UrsaView, &unk_12A720);
    sub_C8F08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1859E8);
  }

  return result;
}

uint64_t sub_C8EA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_C8F08()
{
  result = qword_185A00;
  if (!qword_185A00)
  {
    sub_47A1C(&qword_185A08, &qword_12A600);
    sub_C9358(&qword_185A10, &qword_185A18, &qword_12A608, sub_C8FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A00);
  }

  return result;
}

unint64_t sub_C8FB8()
{
  result = qword_185A20;
  if (!qword_185A20)
  {
    sub_47A1C(&qword_185A28, &qword_12A610);
    sub_C9070();
    sub_48800(&qword_1840C0, &qword_1840C8, &qword_127CF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A20);
  }

  return result;
}

unint64_t sub_C9070()
{
  result = qword_185A30;
  if (!qword_185A30)
  {
    sub_47A1C(&qword_185A38, &qword_12A618);
    sub_C9128();
    sub_48800(&qword_182E40, &qword_182E48, qword_124840, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A30);
  }

  return result;
}

unint64_t sub_C9128()
{
  result = qword_185A40;
  if (!qword_185A40)
  {
    sub_47A1C(&qword_185A48, &qword_12A620);
    sub_48800(&qword_185A50, &qword_185A58, &qword_12A628, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A40);
  }

  return result;
}

uint64_t sub_C91E0()
{

  return swift_deallocObject();
}

unint64_t sub_C9218()
{
  result = qword_185A68;
  if (!qword_185A68)
  {
    sub_47A1C(&qword_1859D0, &qword_12A5E8);
    sub_47A1C(&qword_1859C0, &qword_12A5D8);
    sub_47A1C(&qword_1859B8, &qword_12A5D0);
    sub_C9358(&qword_185A70, &qword_1859B8, &qword_12A5D0, sub_C93DC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A68);
  }

  return result;
}

uint64_t sub_C9358(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_C93DC()
{
  result = qword_185A78;
  if (!qword_185A78)
  {
    sub_47A1C(&qword_1859B0, &qword_12A5C8);
    sub_C9468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A78);
  }

  return result;
}

unint64_t sub_C9468()
{
  result = qword_185A80;
  if (!qword_185A80)
  {
    sub_47A1C(&qword_1859A8, &qword_12A5C0);
    sub_C8FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A80);
  }

  return result;
}

unint64_t sub_C94F8()
{
  result = qword_185A88;
  if (!qword_185A88)
  {
    sub_47A1C(&qword_185998, &qword_12A5B0);
    sub_47A1C(&qword_185990, &qword_12A5A8);
    sub_47A1C(&qword_185988, &qword_12A5A0);
    sub_48800(&qword_185A60, &qword_185988, &qword_12A5A0, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185A88);
  }

  return result;
}

uint64_t sub_C9640(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_1859D0, &qword_12A5E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_C96B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_46F9C(a2, a3);
    v5 = sub_117870();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_64F08(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_C97AC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (sub_1179E0()) && a1[2] == *(a2 + 16))
  {
    v5 = a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32);
    if (v5 || (sub_1179E0() & 1) != 0)
    {
      v6 = a1[5];
      v7 = *(a2 + 40);
      v8 = *(a2 + 48);
      if (*(a1 + 48) == 1)
      {
        if (v6)
        {
          if (!v7)
          {
            v8 = 0;
          }

          if ((v8 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v7)
          {
            v8 = 0;
          }

          if ((v8 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v6 != v7)
        {
          v8 = 1;
        }

        if (v8)
        {
          return 0;
        }
      }

      if (a1[7] == *(a2 + 56))
      {
        v9 = type metadata accessor for UrsaIssue(0);
        if ((sub_115720() & 1) != 0 && *(a1 + v9[10]) == *(a2 + v9[10]))
        {
          if (v10 = v9[11], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) && v12 == v13[1] || (sub_1179E0())
          {
            v14 = v9[12];
            v15 = (a1 + v14);
            v16 = *(a1 + v14 + 8);
            v17 = (a2 + v14);
            v18 = v17[1];
            if (v16)
            {
              if (v18 && (*v15 == *v17 && v16 == v18 || (sub_1179E0() & 1) != 0))
              {
                return 1;
              }
            }

            else if (!v18)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

unint64_t sub_C998C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_185AB0;
  if (!qword_185AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185AB0);
  }

  return result;
}

uint64_t sub_C9A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UrsaIssue(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_46F9C(&qword_185AC0, &qword_12A898);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_C9B6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UrsaIssue(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_46F9C(&qword_185AC0, &qword_12A898);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_C9C74(uint64_t a1)
{
  type metadata accessor for UrsaIssue(319);
  if (v1 <= 0x3F)
  {
    sub_C9CF8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_C9CF8(uint64_t a1)
{
  if (!qword_185B20)
  {
    sub_1160C0();
    v1 = sub_116000();
    if (!v2)
    {
      atomic_store(v1, &qword_185B20);
    }
  }
}

uint64_t sub_C9D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_115760();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C9E34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_115760();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C9ED8(uint64_t a1)
{
  sub_115760();
  if (v1 <= 0x3F)
  {
    sub_C9F98();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_C9F98()
{
  if (!qword_1849A8)
  {
    v0 = sub_117620();
    if (!v1)
    {
      atomic_store(v0, &qword_1849A8);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for UrsaIssue.OpenTarget(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for UrsaIssue.OpenTarget(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UrsaIssue.OpenTarget(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_CA04C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_CA068(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_CA09C()
{
  result = qword_185BF0;
  if (!qword_185BF0)
  {
    sub_47A1C(&qword_185980, &qword_12A598);
    sub_CA128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185BF0);
  }

  return result;
}

unint64_t sub_CA128()
{
  result = qword_185BF8;
  if (!qword_185BF8)
  {
    sub_47A1C(&qword_185978, &qword_12A590);
    sub_47A1C(&qword_185960, &unk_12A580);
    type metadata accessor for BreakdownCellButtonStyle(255);
    sub_48800(&qword_185970, &qword_185960, &unk_12A580, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_C8EA0(&qword_182DC0, type metadata accessor for BreakdownCellButtonStyle, &unk_12C458);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185BF8);
  }

  return result;
}

unint64_t sub_CA278()
{
  result = qword_185C00;
  if (!qword_185C00)
  {
    sub_47A1C(&qword_185C08, &qword_12A8F8);
    sub_C9218();
    sub_C94F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185C00);
  }

  return result;
}

unint64_t sub_CA308()
{
  result = qword_185C10;
  if (!qword_185C10)
  {
    sub_47A1C(&qword_185AA0, &qword_12A670);
    sub_48800(&qword_185C18, &qword_185C20, &unk_12A900, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185C10);
  }

  return result;
}

unint64_t sub_CA3C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_117710(33);

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  sub_117220(v4);
  return 0xD00000000000001FLL;
}

unint64_t sub_CA43C()
{
  result = qword_185C88;
  if (!qword_185C88)
  {
    sub_47A1C(&qword_185C58, &qword_12A940);
    sub_CA4C8();
    sub_CA578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185C88);
  }

  return result;
}

unint64_t sub_CA4C8()
{
  result = qword_185C90;
  if (!qword_185C90)
  {
    sub_47A1C(&qword_185C70, &qword_12A960);
    sub_48800(&qword_185C98, &qword_185C60, &qword_12A948, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185C90);
  }

  return result;
}

unint64_t sub_CA578()
{
  result = qword_185CA0;
  if (!qword_185CA0)
  {
    sub_47A1C(&qword_185C40, &qword_12A928);
    sub_CA4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185CA0);
  }

  return result;
}

unint64_t sub_CA5FC()
{
  result = qword_185CA8;
  if (!qword_185CA8)
  {
    sub_47A1C(&qword_185C38, &qword_12A920);
    sub_48800(&qword_185CB0, &qword_185C30, &qword_12A918, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185CA8);
  }

  return result;
}

uint64_t sub_CA6AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_CA714()
{
  v1 = (type metadata accessor for UrsaView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v11 = *(*v1 + 64);
  v3 = sub_115650();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);

  v6 = *(type metadata accessor for UrsaIssue(0) + 36);
  v7 = sub_115760();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  v8 = v1[7];
  sub_46F9C(&qword_185A90, &qword_12A660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1160C0();
    (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((v2 + v11 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_CA944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_CA9AC()
{
  v1 = *(type metadata accessor for UrsaView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_115650() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_C6B6C(v0 + v2, v5);
}

uint64_t sub_CAA78(__n128 a1)
{
  v2 = sub_115650();
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

void sub_CAB00(__n128 a1)
{
  v1 = *(*(sub_115650() - 8) + 80);
  sub_A77D0(sub_C6A74, 0);
  v2 = sub_117170();
  v9[4] = sub_C6A90;
  v9[5] = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_83460;
  v9[3] = &unk_168CB8;
  v3 = _Block_copy(v9);
  AnalyticsSendEventLazy();
  _Block_release(v3);

  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    sub_115620(((v1 + 16) & ~v1));
    v7 = v6;
    sub_8FC60(_swiftEmptyArrayStorage);
    isa = sub_117050().super.isa;

    [v5 openSensitiveURL:v7 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_CACB4()
{
  v1 = (type metadata accessor for UrsaView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = *(type metadata accessor for UrsaIssue(0) + 36);
  v4 = sub_115760();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v1[7];
  sub_46F9C(&qword_185A90, &qword_12A660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1160C0();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_CAE48()
{
  type metadata accessor for UrsaView(0);

  return sub_C643C();
}

uint64_t sub_CAEA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_CAEC0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_488B8(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_CAF04(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_48928(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_CAF48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_CAFA8()
{
  sub_117710(41);

  sub_54960(0, &qword_1831C0, NSNumber_ptr);
  v1._countAndFlagsBits = sub_117080();
  sub_117220(v1);

  return 0xD000000000000027;
}

uint64_t sub_CB05C(uint64_t a1, __n128 a2)
{
  sub_C3D60(a1, *(v2 + 16), v4);
  type metadata accessor for UrsaView(0);
  sub_46F9C(&qword_185A08, &qword_12A600);
  sub_C8EA0(&qword_1859F8, type metadata accessor for UrsaView, &unk_12A720);
  sub_C8F08();
  return sub_116E60();
}

uint64_t sub_CB130@<X0>(uint64_t a1@<X8>)
{
  sub_CA6AC(*(v1 + 16), a1, type metadata accessor for UrsaIssue);
  v3 = *(type metadata accessor for UrsaView(0) + 20);
  *(a1 + v3) = swift_getKeyPath();
  sub_46F9C(&qword_185A90, &qword_12A660);

  return swift_storeEnumTagMultiPayload();
}

double sub_CB1BC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_CB1D8()
{
  sub_117710(30);

  v1._countAndFlagsBits = sub_117320();
  sub_117220(v1);

  return 0xD00000000000001CLL;
}

unint64_t sub_CB260()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_117710(22);

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  sub_117220(v4);
  return 0xD000000000000014;
}

uint64_t sub_CB30C@<X0>(__int128 *a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for AppDetailViewModel(0);
  sub_116CB0();
  *a3 = v6;
  a3[1] = v7;
  return sub_CB368(a2, (a3 + 2));
}

uint64_t sub_CB368(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_CB380@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_46F9C(&qword_185D30, &qword_12AAC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-v5];
  v18 = v1;
  sub_46F9C(&qword_185D38, &qword_12AAC8);
  sub_48800(&qword_185D40, &qword_185D38, &qword_12AAC8, &protocol conformance descriptor for TupleView<A>);
  sub_116750();
  v7 = v1[5];
  v8 = v1[6];
  sub_66DE0(v1 + 2, v7);
  *&v19[0] = (*(v8 + 16))(v7, v8);
  *(&v19[0] + 1) = v9;
  v10 = sub_48800(&qword_185D48, &qword_185D30, &qword_12AAC0, &protocol conformance descriptor for List<A, B>);
  sub_4869C(v10, v11, v12);
  sub_116A40();

  (*(v4 + 8))(v6, v3);
  sub_CC4C8(v1, v19);
  v13 = swift_allocObject();
  v14 = v19[1];
  *(v13 + 16) = v19[0];
  *(v13 + 32) = v14;
  *(v13 + 48) = v19[2];
  *(v13 + 64) = v20;
  result = sub_46F9C(&qword_185D50, &qword_12AAD0);
  v16 = (a1 + *(result + 36));
  *v16 = sub_CC504;
  v16[1] = v13;
  v16[2] = 0;
  v16[3] = 0;
  return result;
}

void sub_CB5E8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v89 = sub_46F9C(&qword_185F10, &qword_12B298);
  v84 = *(v89 - 8);
  __chkstk_darwin(v89);
  v81 = &v75 - v3;
  v4 = sub_46F9C(&qword_185F18, &qword_12B2A0);
  __chkstk_darwin(v4 - 8);
  v86 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v92 = &v75 - v7;
  v88 = sub_46F9C(&qword_185F20, &qword_12B2A8);
  v91 = *(v88 - 8);
  __chkstk_darwin(v88);
  v78 = &v75 - v8;
  v9 = sub_46F9C(&qword_185F28, &qword_12B2B0);
  __chkstk_darwin(v9 - 8);
  v85 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v93 = &v75 - v12;
  v13 = sub_46F9C(&qword_185F30, &qword_12B2B8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v75 - v15;
  v17 = sub_46F9C(&qword_185F38, &qword_12B2C0);
  __chkstk_darwin(v17);
  v83 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v75 - v20;
  v90 = a1;
  v94 = a1;
  v22 = sub_117170();
  v23 = BatteryUILocalization(v22);

  if (!v23)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = sub_1171B0();
  v26 = v25;

  *&v102 = v24;
  *(&v102 + 1) = v26;
  v80 = sub_4869C(v27, v28, v29);
  *&v102 = sub_116900();
  *(&v102 + 1) = v30;
  LOBYTE(v103) = v31 & 1;
  *(&v103 + 1) = v32;
  sub_D1DA4(v102, v30, v31);
  sub_116E40();
  sub_116030();
  sub_D1DF8();
  sub_116A50();
  (*(v14 + 8))(v16, v13);
  v33 = &v21[*(v17 + 36)];
  *v33 = xmmword_12AAA0;
  *(v33 + 1) = xmmword_12AAA0;
  v79 = xmmword_12AAA0;
  v33[32] = 0;
  v34 = v90;
  v36 = *v90;
  v35 = v90[1];
  *&v102 = *v90;
  *(&v102 + 1) = v35;
  sub_46F9C(&qword_185D58, &qword_12AAD8);
  v37 = sub_116CC0();
  (*(**&v100[0] + 400))(v100, v37);

  v108 = v100[6];
  v109 = v100[7];
  v110 = v100[8];
  v104 = v100[2];
  v105 = v100[3];
  v111 = v101;
  v106 = v100[4];
  v107 = v100[5];
  v102 = v100[0];
  v103 = v100[1];
  v38 = sub_68BD4(&v102);
  v82 = v21;
  if (v38 != 1)
  {
    v43 = *(&v102 + 1);
    v112[0] = *(&v102 + 1);
    if (*(&v102 + 1))
    {
      sub_479B4(v112, &v95, &qword_185F70, &qword_12B2D8);
      sub_488C8(v100, &qword_1835F0, &unk_12B240);
      v42 = v93;
      if (*(v43 + 16))
      {
        v44 = sub_CC068(v43);
        sub_488C8(v112, &qword_185F70, &qword_12B2D8);
        v99 = v44;
        KeyPath = swift_getKeyPath();
        sub_CC4C8(v34, &v95);
        v45 = swift_allocObject();
        v46 = v96;
        *(v45 + 16) = v95;
        *(v45 + 32) = v46;
        *(v45 + 48) = v97;
        *(v45 + 64) = v98;
        v76 = sub_46F9C(&qword_183598, &unk_1259B0);
        v47 = sub_46F9C(&qword_185F78, &qword_12B310);
        v48 = sub_48800(&qword_185F80, &qword_183598, &unk_1259B0, &protocol conformance descriptor for [A]);
        v49 = sub_D2060();
        v50 = v78;
        sub_116E10(&v99, KeyPath, sub_D2058, v45, v76, v47, v48, &protocol witness table for Int, v49);
        v51 = v50;
        v52 = v88;
        (*(v91 + 32))(v42, v51, v88);
        v40 = v52;
        v39 = 0;
LABEL_10:
        v41 = v89;
        goto LABEL_11;
      }

      sub_488C8(v112, &qword_185F70, &qword_12B2D8);
      v39 = 1;
    }

    else
    {
      sub_488C8(v100, &qword_1835F0, &unk_12B240);
      v39 = 1;
      v42 = v93;
    }

    v40 = v88;
    goto LABEL_10;
  }

  v39 = 1;
  v40 = v88;
  v41 = v89;
  v42 = v93;
LABEL_11:
  v53 = 1;
  (*(v91 + 56))(v42, v39, 1, v40);
  *&v95 = v36;
  *(&v95 + 1) = v35;
  v54 = sub_116CC0();
  v55 = (*(*v99 + 440))(v54);

  if ((v55 & 1) == 0)
  {
LABEL_14:
    v68 = v92;
    (*(v84 + 56))(v92, v53, 1, v41);
    v69 = v82;
    v70 = v83;
    sub_479B4(v82, v83, &qword_185F38, &qword_12B2C0);
    v71 = v85;
    sub_479B4(v42, v85, &qword_185F28, &qword_12B2B0);
    v72 = v86;
    sub_479B4(v68, v86, &qword_185F18, &qword_12B2A0);
    v73 = v87;
    sub_479B4(v70, v87, &qword_185F38, &qword_12B2C0);
    v74 = sub_46F9C(&qword_185F50, &qword_12B2C8);
    sub_479B4(v71, v73 + *(v74 + 48), &qword_185F28, &qword_12B2B0);
    sub_479B4(v72, v73 + *(v74 + 64), &qword_185F18, &qword_12B2A0);
    sub_488C8(v68, &qword_185F18, &qword_12B2A0);
    sub_488C8(v93, &qword_185F28, &qword_12B2B0);
    sub_488C8(v69, &qword_185F38, &qword_12B2C0);
    sub_488C8(v72, &qword_185F18, &qword_12B2A0);
    sub_488C8(v71, &qword_185F28, &qword_12B2B0);
    sub_488C8(v70, &qword_185F38, &qword_12B2C0);
    return;
  }

  __chkstk_darwin(v56);
  v57 = sub_117170();
  v58 = BatteryUILocalization(v57);

  if (v58)
  {
    v59 = sub_1171B0();
    v61 = v60;

    *&v95 = v59;
    *(&v95 + 1) = v61;
    *&v95 = sub_116900();
    *(&v95 + 1) = v62;
    LOBYTE(v96) = v63 & 1;
    *(&v96 + 1) = v64;
    sub_46F9C(&qword_185F58, &qword_12B2D0);
    sub_D1F30();
    v65 = v81;
    sub_116E40();
    v66 = v65 + *(v41 + 36);
    v67 = v79;
    *v66 = v79;
    *(v66 + 16) = v67;
    *(v66 + 32) = 0;
    sub_548D0(v65, v92, &qword_185F10, &qword_12B298);
    v53 = 0;
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
}

void *sub_CC068(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v7 = *v2++;
      v6 = v7;
      if (sub_5D988(v7))
      {
        v27 = v3;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_65240(0, v3[2] + 1, 1);
          v3 = v27;
        }

        v5 = v3[2];
        v4 = v3[3];
        if (v5 >= v4 >> 1)
        {
          sub_65240((v4 > 1), v5 + 1, 1);
          v3 = v27;
        }

        v3[2] = v5 + 1;
        *(v3 + v5 + 32) = v6;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = sub_D0E50(v8, v9, v10);

  v28 = v11;
  v12 = v3[2];
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = 32;
  v14 = sub_5D938();
  do
  {
    v15 = *v14;
    if (*(*v14 + 16))
    {
      v16 = *(v3 + v13);

      v19 = sub_D0184(v16, v17, v18);
      if (v20)
      {
        v21 = *(*(v15 + 56) + v19);

        sub_D01F0(v21, v22, v23);
      }

      else
      {
      }
    }

    ++v13;
    --v12;
  }

  while (v12);

  v11 = v28;
  v24 = *(v28 + 16);
  if (v24)
  {
    while (1)
    {
      v25 = sub_D0CE0(v24, 0);
      v11 = sub_D0D54(&v27, v25 + 32, v24, v11);
      sub_D0EC4(v27);
      if (v11 == v24)
      {
        break;
      }

      __break(1u);
LABEL_21:

      v24 = *(v11 + 16);
      if (!v24)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:

    return _swiftEmptyArrayStorage;
  }

  return v25;
}

uint64_t sub_CC250@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_5E934(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_CC27C@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_46F9C(&qword_185F98, qword_12B318);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - v8;
  v10 = *a1;
  v11 = a2[1];
  v26[2] = *a2;
  v26[3] = v11;
  sub_46F9C(&qword_185D58, &qword_12AAD8);
  sub_116CC0();
  v12 = v26[1];
  v13 = a2[5];
  v14 = a2[6];
  sub_66DE0(a2 + 2, v13);
  v15 = (*(v14 + 16))(v13, v14);
  v17 = (*(*v12 + 424))(v10, v15, v16);
  v19 = v18;

  if (v19)
  {
    __chkstk_darwin(v20);
    LOBYTE(v26[-4]) = v10;
    v26[-3] = v17;
    v26[-2] = v19;
    sub_D2198(v21, v22, v23);
    sub_116E50();

    (*(v7 + 32))(a3, v9, v6);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  return (*(v7 + 56))(a3, v24, 1, v6);
}

uint64_t sub_CC504()
{
  v4[4] = sub_CC600;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_83460;
  v4[3] = &unk_169248;
  v0 = _Block_copy(v4);
  v1 = @"com.apple.batteryui";
  AnalyticsSendEventLazy();
  _Block_release(v0);

  sub_A77E8(sub_CC6CC, 0);
  v2 = sub_1171E0();
  notify_post((v2 + 32));
}

unint64_t sub_CC600()
{
  sub_46F9C(&qword_1843A8, &unk_12B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_124890;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000000136310;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v1 = sub_8CACC(inited);
  swift_setDeallocating();
  sub_488C8(inited + 32, &qword_1843B0, &unk_128130);
  return v1;
}

void sub_CC6EC(uint64_t a3@<X8>)
{
  sub_46F9C(&qword_185D58, &qword_12AAD8);
  sub_116CE0();
  v4 = sub_116610();
  sub_115FD0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_116620();
  sub_115FD0();
  *a3 = v18;
  *(a3 + 8) = v19;
  *(a3 + 24) = v4;
  *(a3 + 32) = v6;
  *(a3 + 40) = v8;
  *(a3 + 48) = v10;
  *(a3 + 56) = v12;
  *(a3 + 64) = 0;
  *(a3 + 72) = v13;
  *(a3 + 80) = v14;
  *(a3 + 88) = v15;
  *(a3 + 96) = v16;
  *(a3 + 104) = v17;
  *(a3 + 112) = 0;
}

double sub_CC7BC@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1163F0();
  v19 = 0;
  sub_CC6EC(&v10);
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v28[0] = v10;
  v28[1] = v11;
  v28[2] = v12;
  v28[3] = v13;
  v28[4] = v14;
  v28[5] = v15;
  v28[6] = v16;
  v29 = v17;
  sub_479B4(&v20, &v9, &qword_185E50, &qword_12B118);
  sub_488C8(v28, &qword_185E50, &qword_12B118);
  *&v18[71] = v24;
  *&v18[87] = v25;
  *&v18[103] = v26;
  *&v18[7] = v20;
  *&v18[23] = v21;
  *&v18[39] = v22;
  *&v18[55] = v23;
  v4 = *&v18[80];
  *(a2 + 81) = *&v18[64];
  *(a2 + 97) = v4;
  *(a2 + 113) = *&v18[96];
  v5 = *&v18[16];
  *(a2 + 17) = *v18;
  *(a2 + 33) = v5;
  result = *&v18[32];
  v7 = *&v18[48];
  *(a2 + 49) = *&v18[32];
  v18[119] = v27;
  v8 = v19;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 129) = *&v18[112];
  *(a2 + 65) = v7;
  return result;
}

uint64_t sub_CC8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a3;
  v5 = sub_46F9C(&qword_185EE8, &unk_12B250);
  __chkstk_darwin(v5);
  v100 = &v85[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v98 = &v85[-v8];
  v9 = sub_46F9C(&qword_184F40, &unk_12C690);
  __chkstk_darwin(v9);
  v97 = &v85[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v104 = &v85[-v12];
  v115 = a1;
  v116 = a2;
  v13 = sub_46F9C(&qword_185D58, &qword_12AAD8);
  v14 = sub_116CC0();
  v15 = (*(*v108 + 416))(v14);
  v17 = v16;

  if (v17)
  {
    v115 = v15;
    v116 = v17;
    sub_4869C(v18, v19, v20);
    v21 = sub_116900();
    v23 = v22;
    v25 = v24;
    v91 = a1;
    sub_116670();
    v89 = v9;
    v26 = sub_1168C0();
    v90 = v13;
    v28 = v27;
    v92 = a2;
    v93 = v5;
    v30 = v29;

    sub_48928(v21, v23, v25 & 1);
    a1 = v91;

    sub_1166C0();
    v31 = sub_116810();
    v95 = v32;
    v96 = v31;
    v103 = v33;
    LOBYTE(v21) = v34;
    v35 = v30 & 1;
    a2 = v92;
    sub_48928(v26, v28, v35);
    v5 = v93;

    KeyPath = swift_getKeyPath();
    v36 = sub_116610();
    sub_115FD0();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    LOBYTE(v115) = v21 & 1;
    LOBYTE(v108) = 1;
    LOBYTE(v128) = 0;
    v17 = v21 & 1;
    v102 = 1;
    v45 = v36;
    v9 = v89;
    v101 = v45;
  }

  else
  {
    v95 = 0;
    v96 = 0;
    v102 = 0;
    v103 = 0;
    KeyPath = 0;
    v101 = 0;
    v38 = 0;
    v40 = 0;
    v42 = 0;
    v44 = 0;
  }

  v89 = v17;
  v46 = v104;
  sub_116DD0();
  v47 = sub_116610();
  sub_115FD0();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = &v46[*(sub_46F9C(&qword_184EA0, &qword_129180) + 36)];
  *v56 = v47;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  v57 = sub_116620();
  sub_115FD0();
  v58 = &v46[*(v9 + 36)];
  *v58 = v57;
  *(v58 + 1) = v59;
  *(v58 + 2) = v60;
  *(v58 + 3) = v61;
  *(v58 + 4) = v62;
  v58[40] = 0;
  v115 = a1;
  v116 = a2;
  v63 = sub_116CC0();
  (*(*v108 + 304))(v63);

  sub_116EB0();
  sub_116070();
  v92 = v130;
  v93 = v128;
  v90 = v133;
  v91 = v132;
  v107 = 1;
  v106 = v129;
  v105 = v131;
  *&v108 = a1;
  *(&v108 + 1) = a2;
  sub_116CE0();
  v64 = type metadata accessor for AppDetailViewModel(0);
  v65 = sub_D1C7C(&qword_185EF0, type metadata accessor for AppDetailViewModel, &unk_12C8A8);
  v66 = v98;
  sub_7AA94(&v115, v64, v65, v98);
  LOBYTE(v64) = sub_116620();
  sub_115FD0();
  v67 = &v66[*(v5 + 36)];
  *v67 = v64;
  *(v67 + 1) = v68;
  *(v67 + 2) = v69;
  *(v67 + 3) = v70;
  *(v67 + 4) = v71;
  v67[40] = 0;
  v72 = v97;
  sub_479B4(v46, v97, &qword_184F40, &unk_12C690);
  v86 = v107;
  v87 = v106;
  v88 = v105;
  v73 = v100;
  sub_479B4(v66, v100, &qword_185EE8, &unk_12B250);
  v74 = v96;
  *&v108 = v96;
  *(&v108 + 1) = v103;
  *&v109 = v17;
  v76 = KeyPath;
  v75 = v95;
  *(&v109 + 1) = v95;
  v110 = KeyPath;
  *&v111 = v102;
  *(&v111 + 1) = v101;
  *&v112 = v38;
  *(&v112 + 1) = v40;
  *&v113 = v42;
  *(&v113 + 1) = v44;
  v114 = 0;
  v77 = v99;
  *(v99 + 96) = 0;
  v78 = v113;
  v77[4] = v112;
  v77[5] = v78;
  v79 = v109;
  *v77 = v108;
  v77[1] = v79;
  v80 = v111;
  v77[2] = v110;
  v77[3] = v80;
  v81 = sub_46F9C(&qword_185EF8, &unk_12B260);
  sub_479B4(v72, v77 + v81[12], &qword_184F40, &unk_12C690);
  v82 = v77 + v81[16];
  *v82 = 0;
  v82[8] = v86;
  *(v82 + 2) = v93;
  v82[24] = v87;
  *(v82 + 4) = v92;
  v82[40] = v88;
  v83 = v90;
  *(v82 + 6) = v91;
  *(v82 + 7) = v83;
  sub_479B4(v73, v77 + v81[20], &qword_185EE8, &unk_12B250);
  sub_479B4(&v108, &v115, &qword_183EB8, &unk_127930);
  sub_488C8(v66, &qword_185EE8, &unk_12B250);
  sub_488C8(v104, &qword_184F40, &unk_12C690);
  sub_488C8(v73, &qword_185EE8, &unk_12B250);
  sub_488C8(v72, &qword_184F40, &unk_12C690);
  v115 = v74;
  v116 = v103;
  v117 = v89;
  v118 = v75;
  v119 = v76;
  v120 = 0;
  v121 = v102;
  v122 = v101;
  v123 = v38;
  v124 = v40;
  v125 = v42;
  v126 = v44;
  v127 = 0;
  return sub_488C8(&v115, &qword_183EB8, &unk_127930);
}

uint64_t sub_CD028@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = sub_1163F0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = sub_46F9C(&qword_185D60, &qword_12AAE0);
  return sub_CC8FC(v5, v4, a2 + *(v6 + 44));
}

uint64_t sub_CD088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_46F9C(&qword_185D70, &qword_12AAF0);
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  *v8 = sub_1163F0();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v9 = sub_46F9C(&qword_185D78, &qword_12AAF8);
  sub_CD29C(a1, a2, a3, &v8[*(v9 + 44)]);
  v18 = a1;
  v19 = a2;
  v20 = a3;
  sub_46F9C(&qword_185D68, &qword_12AAE8);
  sub_116D90();
  v10 = v17[0];
  v11 = v17[1];
  v12 = v17[2];
  swift_getKeyPath();
  v18 = v10;
  v19 = v11;
  v20 = v12;
  sub_116D80();

  v16 = sub_48800(&qword_185D80, &qword_185D70, &qword_12AAF0, &protocol conformance descriptor for VStack<A>);
  sub_D0ECC(v16, v13, v14);
  sub_116AC0();

  return sub_488C8(v8, &qword_185D70, &qword_12AAF0);
}

void sub_CD29C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v171 = a4;
  v7 = sub_1164B0();
  v167 = *(v7 - 8);
  v168 = v7;
  __chkstk_darwin(v7);
  v166 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_46F9C(&qword_185E98, &qword_12B1C0);
  v164 = *(v9 - 8);
  v165 = v9;
  __chkstk_darwin(v9);
  v162 = &v158 - v10;
  v163 = sub_46F9C(&qword_185EA0, &qword_12B1C8);
  __chkstk_darwin(v163);
  v170 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v169 = &v158 - v13;
  v14 = sub_1163D0();
  v174 = *(v14 - 8);
  v175 = v14;
  __chkstk_darwin(v14);
  v173 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_46F9C(&qword_185EA8, &unk_12B1D0);
  __chkstk_darwin(v16 - 8);
  v183 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v184 = &v158 - v19;
  v20 = sub_116DE0();
  v178 = *(v20 - 8);
  v179 = v20;
  __chkstk_darwin(v20);
  v177 = &v158 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_46F9C(&qword_184EA0, &qword_129180);
  __chkstk_darwin(v176);
  v182 = &v158 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v158 - v24;
  __chkstk_darwin(v26);
  v185 = &v158 - v27;
  v181 = sub_116320();
  v194 = 1;
  v159 = a1;
  v160 = a2;
  *v192 = a1;
  *&v192[8] = a2;
  v161 = a3;
  *&v192[16] = a3;
  sub_46F9C(&qword_185D68, &qword_12AAE8);
  v28 = sub_116D60();
  (*(**v191 + 400))(v233, v28);

  v239 = v233[6];
  v240 = v233[7];
  v241 = v233[8];
  v242 = v234;
  v235[2] = v233[2];
  v236 = v233[3];
  v237 = v233[4];
  v238 = v233[5];
  v235[0] = v233[0];
  v235[1] = v233[1];
  if (sub_68BD4(v235) == 1)
  {
    sub_D1C20(v192);
    goto LABEL_17;
  }

  v29 = v236;
  v30 = sub_8D8B4();
  v31 = [v30[8] stringFromTimeInterval:*&v29];
  if (!v31)
  {
    goto LABEL_8;
  }

  v32 = v31;
  v33 = sub_1171B0();
  v35 = v34;

  v36 = AXDurationStringForDurationWithSeconds();
  if (!v36)
  {

LABEL_8:
    sub_D1C5C(v195);
    goto LABEL_9;
  }

  v37 = v36;
  v180 = sub_1171B0();
  *&v172 = v38;

  v39 = sub_117170();
  v40 = BatteryUILocalization(v39);

  if (!v40)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v41 = sub_1171B0();
  v43 = v42;

  v44 = sub_116BC0();
  v45 = sub_116BB0();
  sub_116E80();
  sub_116190();
  *v192 = v41;
  *&v192[8] = v43;
  *&v192[16] = v33;
  *&v192[24] = v35;
  *&v192[32] = v180;
  *&v192[40] = v172;
  *&v192[48] = v44;
  *&v192[56] = v45;
  nullsub_4();
  v195[8] = *&v192[128];
  v195[9] = *&v192[144];
  v195[10] = *&v192[160];
  v195[4] = *&v192[64];
  v195[5] = *&v192[80];
  v195[6] = *&v192[96];
  v195[7] = *&v192[112];
  v195[0] = *v192;
  v195[1] = *&v192[16];
  v195[2] = *&v192[32];
  v195[3] = *&v192[48];
LABEL_9:
  v46 = [v30[8] stringFromTimeInterval:*(&v29 + 1)];
  if (!v46)
  {
    sub_488C8(v233, &qword_1835F0, &unk_12B240);
LABEL_15:
    sub_D1C5C(&v222);
    goto LABEL_16;
  }

  v47 = v46;
  v48 = sub_1171B0();
  v50 = v49;

  v51 = AXDurationStringForDurationWithSeconds();
  if (!v51)
  {
    sub_488C8(v233, &qword_1835F0, &unk_12B240);

    goto LABEL_15;
  }

  v52 = v51;
  v53 = sub_1171B0();
  v55 = v54;

  v56 = sub_117170();
  v57 = BatteryUILocalization(v56);

  if (v57)
  {
    sub_488C8(v233, &qword_1835F0, &unk_12B240);
    v58 = sub_1171B0();
    v60 = v59;

    v61 = sub_116BC0();
    v62 = sub_116BB0();
    sub_116E80();
    sub_116190();
    *v192 = v58;
    *&v192[8] = v60;
    *&v192[16] = v48;
    *&v192[24] = v50;
    *&v192[32] = v53;
    *&v192[40] = v55;
    *&v192[48] = v61;
    *&v192[56] = v62;
    nullsub_4();
    v230 = *&v192[128];
    v231 = *&v192[144];
    v232 = *&v192[160];
    v226 = *&v192[64];
    v227 = *&v192[80];
    v228 = *&v192[96];
    v229 = *&v192[112];
    v222 = *v192;
    v223 = *&v192[16];
    v224 = *&v192[32];
    v225 = *&v192[48];
LABEL_16:
    v205 = v195[8];
    v206 = v195[9];
    v201 = v195[4];
    v202 = v195[5];
    v203 = v195[6];
    v204 = v195[7];
    v197 = v195[0];
    v198 = v195[1];
    v199 = v195[2];
    v200 = v195[3];
    v210[7] = v229;
    v210[8] = v230;
    v210[9] = v231;
    v210[10] = v232;
    v210[3] = v225;
    v210[4] = v226;
    v210[5] = v227;
    v210[6] = v228;
    v210[0] = v222;
    v210[1] = v223;
    v210[2] = v224;
    v208[7] = v195[7];
    v208[8] = v195[8];
    v208[9] = v195[9];
    v208[10] = v195[10];
    v208[3] = v195[3];
    v208[4] = v195[4];
    v208[5] = v195[5];
    v208[6] = v195[6];
    v207 = v195[10];
    v208[0] = v195[0];
    v208[1] = v195[1];
    v208[2] = v195[2];
    v196[8] = v195[8];
    v196[9] = v195[9];
    v196[4] = v195[4];
    v196[5] = v195[5];
    v196[6] = v195[6];
    v196[7] = v195[7];
    v196[0] = v195[0];
    v196[1] = v195[1];
    v196[2] = v195[2];
    v196[3] = v195[3];
    v209[7] = v229;
    v209[8] = v230;
    v209[9] = v231;
    v209[10] = v232;
    v209[3] = v225;
    v209[4] = v226;
    v209[5] = v227;
    v209[6] = v228;
    v209[0] = v222;
    v209[1] = v223;
    v209[2] = v224;
    v196[18] = v229;
    v196[19] = v230;
    v196[20] = v231;
    v196[21] = v232;
    v196[14] = v225;
    v196[15] = v226;
    v196[16] = v227;
    v196[17] = v228;
    v196[10] = v195[10];
    v196[11] = v222;
    v196[12] = v223;
    v196[13] = v224;
    sub_479B4(v208, v192, &qword_185EE0, &unk_12CB70);
    sub_479B4(v209, v192, &qword_185EE0, &unk_12CB70);
    sub_488C8(v210, &qword_185EE0, &unk_12CB70);
    v219 = v205;
    v220 = v206;
    v221 = v207;
    v215 = v201;
    v216 = v202;
    v217 = v203;
    v218 = v204;
    v211 = v197;
    v212 = v198;
    v213 = v199;
    v214 = v200;
    sub_488C8(&v211, &qword_185EE0, &unk_12CB70);
    memcpy(v191, v196, 0x160uLL);
    nullsub_4();
    memcpy(v192, v191, 0x160uLL);
LABEL_17:
    memcpy(v191, v192, 0x160uLL);
    memcpy(v195, v191, sizeof(v195));
    memcpy(v196, v191, sizeof(v196));
    sub_479B4(v195, v192, &qword_185EB0, &unk_12B1E0);
    sub_488C8(v196, &qword_185EB0, &unk_12B1E0);
    memcpy(&v193[7], v195, 0x160uLL);
    LODWORD(v180) = v194;
    v63 = v177;
    sub_116DD0();
    sub_46F9C(&qword_182E10, &qword_1247F0);
    v64 = swift_allocObject();
    v172 = xmmword_1248A0;
    *(v64 + 16) = xmmword_1248A0;
    v65 = sub_116610();
    *(v64 + 32) = v65;
    v66 = sub_116620();
    *(v64 + 33) = v66;
    v67 = sub_116640();
    sub_116640();
    if (sub_116640() != v65)
    {
      v67 = sub_116640();
    }

    sub_116640();
    if (sub_116640() != v66)
    {
      v67 = sub_116640();
    }

    sub_115FD0();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    (*(v178 + 32))(v25, v63, v179);
    v76 = &v25[*(v176 + 36)];
    *v76 = v67;
    *(v76 + 1) = v69;
    *(v76 + 2) = v71;
    *(v76 + 3) = v73;
    *(v76 + 4) = v75;
    v76[40] = 0;
    sub_548D0(v25, v185, &qword_184EA0, &qword_129180);
    v77 = sub_117170();
    v78 = BatteryUILocalization(v77);

    if (v78)
    {
      v79 = sub_1171B0();
      v81 = v80;

      *v192 = v79;
      *&v192[8] = v81;
      v179 = sub_4869C(v82, v83, v84);
      v85 = sub_116900();
      v87 = v86;
      LOBYTE(v81) = v88;
      sub_1166B0();
      v89 = sub_116810();
      v91 = v90;
      v93 = v92;
      v95 = v94;
      sub_48928(v85, v87, v81 & 1);

      *v192 = v89;
      *&v192[8] = v91;
      v192[16] = v93 & 1;
      *&v192[24] = v95;
      v96 = v173;
      sub_1163C0();
      sub_116A90();
      (*(v174 + 8))(v96, v175);
      sub_48928(v89, v91, v93 & 1);

      v97 = sub_117170();
      v98 = BatteryUILocalization(v97);

      if (v98)
      {
        v99 = sub_1171B0();
        v101 = v100;

        *v192 = v99;
        *&v192[8] = v101;
        v176 = sub_116900();
        v177 = v102;
        v104 = v103;
        v106 = v105;
        sub_46F9C(&qword_182E10, &qword_1247F0);
        inited = swift_initStackObject();
        *(inited + 16) = v172;
        v108 = sub_116610();
        *(inited + 32) = v108;
        v109 = sub_116620();
        *(inited + 33) = v109;
        v110 = sub_116640();
        sub_116640();
        if (sub_116640() != v108)
        {
          v110 = sub_116640();
        }

        sub_116640();
        if (sub_116640() != v109)
        {
          v110 = sub_116640();
        }

        sub_115FD0();
        v112 = v111;
        v114 = v113;
        v116 = v115;
        v118 = v117;
        v119 = v106 & 1;
        LOBYTE(v209[0]) = v106 & 1;
        LOBYTE(v208[0]) = 0;
        v120 = sub_117170();
        v121 = BatteryUILocalization(v120);

        if (v121)
        {
          v122 = sub_1171B0();
          v124 = v123;

          *v192 = v122;
          *&v192[8] = v124;
          v125 = sub_116900();
          v127 = v126;
          v175 = v128;
          v130 = v176;
          v129 = v177;
          *v191 = v176;
          *&v191[8] = v104;
          v131 = v104;
          v191[16] = v119;
          *&v191[24] = v177;
          v191[32] = v110;
          *&v191[40] = v112;
          *&v191[48] = v114;
          *&v191[56] = v116;
          *&v191[64] = v118;
          v191[72] = 0;
          *(v190 + 9) = *&v191[57];
          v189 = *&v191[32];
          v190[0] = *&v191[48];
          v187 = *v191;
          v188 = *&v191[16];
          v133 = v132 & 1;
          LOBYTE(v197) = v132 & 1;
          LODWORD(v174) = v132 & 1;
          sub_479B4(v191, v192, &qword_183530, &qword_12CCB0);
          v173 = v125;
          v178 = v127;
          sub_488B8(v125, v127, v133);

          sub_48928(v125, v127, v133);

          *v192 = v130;
          *&v192[8] = v131;
          v192[16] = v119;
          *&v192[17] = v211;
          *&v192[20] = *(&v211 + 3);
          *&v192[24] = v129;
          v192[32] = v110;
          *&v192[33] = v210[0];
          *&v192[36] = *(v210 + 3);
          *&v192[40] = v112;
          *&v192[48] = v114;
          *&v192[56] = v116;
          *&v192[64] = v118;
          v192[72] = 0;
          sub_488C8(v192, &qword_183530, &qword_12CCB0);
          v179 = sub_116BC0();
          v134 = swift_allocObject();
          v135 = v160;
          v134[2] = v159;
          v134[3] = v135;
          v134[4] = v161;

          sub_46F9C(&qword_185A48, &qword_12A620);
          sub_C9128();
          v136 = v162;
          sub_116D00();
          v137 = v166;
          sub_1164A0();
          sub_48800(&qword_185EB8, &qword_185E98, &qword_12B1C0, &protocol conformance descriptor for Button<A>);
          sub_D1C7C(&qword_185EC0, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
          v138 = v168;
          v139 = v169;
          v140 = v165;
          sub_1169F0();
          (*(v167 + 8))(v137, v138);
          (*(v164 + 8))(v136, v140);
          v141 = sub_116610();
          sub_115FD0();
          v142 = v139 + *(v163 + 36);
          *v142 = v141;
          *(v142 + 8) = v143;
          *(v142 + 16) = v144;
          *(v142 + 24) = v145;
          *(v142 + 32) = v146;
          *(v142 + 40) = 0;
          v147 = v182;
          sub_479B4(v185, v182, &qword_184EA0, &qword_129180);
          v148 = v183;
          sub_479B4(v184, v183, &qword_185EA8, &unk_12B1D0);
          v149 = v170;
          sub_479B4(v139, v170, &qword_185EA0, &qword_12B1C8);
          *v191 = v181;
          *&v191[8] = 0;
          v191[16] = v180;
          memcpy(&v191[17], v193, 0x167uLL);
          v150 = v171;
          memcpy(v171, v191, 0x178uLL);
          v151 = sub_46F9C(&qword_185EC8, &qword_12B1F0);
          sub_479B4(v147, &v150[v151[12]], &qword_184EA0, &qword_129180);
          sub_479B4(v148, &v150[v151[16]], &qword_185EA8, &unk_12B1D0);
          v152 = &v150[v151[20]];
          v213 = v189;
          v214 = v190[0];
          v215 = v190[1];
          v211 = v187;
          v212 = v188;
          v153 = v173;
          *&v216 = v173;
          *(&v216 + 1) = v178;
          LOBYTE(v147) = v174;
          LOBYTE(v217) = v174;
          *(&v217 + 1) = *v186;
          DWORD1(v217) = *&v186[3];
          v154 = v175;
          *(&v217 + 1) = v175;
          *&v218 = v179;
          *(v152 + 14) = v179;
          v155 = v216;
          *(v152 + 4) = v215;
          *(v152 + 5) = v155;
          *(v152 + 6) = v217;
          v156 = v212;
          *v152 = v211;
          *(v152 + 1) = v156;
          v157 = v214;
          *(v152 + 2) = v213;
          *(v152 + 3) = v157;
          sub_479B4(v149, &v150[v151[24]], &qword_185EA0, &qword_12B1C8);
          sub_479B4(v191, v192, &qword_185ED0, &qword_12B1F8);
          sub_479B4(&v211, v192, &qword_185ED8, &qword_12B200);
          sub_488C8(v139, &qword_185EA0, &qword_12B1C8);
          sub_488C8(v184, &qword_185EA8, &unk_12B1D0);
          sub_488C8(v185, &qword_184EA0, &qword_129180);
          sub_488C8(v149, &qword_185EA0, &qword_12B1C8);
          v224 = v189;
          v225 = v190[0];
          v226 = v190[1];
          v222 = v187;
          v223 = v188;
          *&v227 = v153;
          *(&v227 + 1) = v178;
          LOBYTE(v228) = v147;
          *(&v228 + 1) = *v186;
          DWORD1(v228) = *&v186[3];
          *(&v228 + 1) = v154;
          *&v229 = v179;
          sub_488C8(&v222, &qword_185ED8, &qword_12B200);
          sub_488C8(v183, &qword_185EA8, &unk_12B1D0);
          sub_488C8(v182, &qword_184EA0, &qword_129180);
          *v192 = v181;
          *&v192[8] = 0;
          v192[16] = v180;
          memcpy(&v192[17], v193, 0x167uLL);
          sub_488C8(v192, &qword_185ED0, &qword_12B1F8);
          return;
        }

        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_CE6E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

void sub_CE6F4(uint64_t a1@<X8>)
{
  v2 = sub_117170();
  v3 = BatteryUILocalization(v2);

  if (v3)
  {
    sub_1171B0();

    sub_4869C(v4, v5, v6);
    v7 = sub_116900();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    KeyPath = swift_getKeyPath();
    *a1 = v7;
    *(a1 + 8) = v9;
    *(a1 + 16) = v11 & 1;
    *(a1 + 24) = v13;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_CE7C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result & 1;
  return result;
}

Swift::Int sub_CE87C()
{
  sub_117A90();
  sub_117AA0(0);
  return sub_117AD0();
}

Swift::Int sub_CE8E8(uint64_t a1)
{
  sub_117A90();
  sub_117AA0(0);
  return sub_117AD0();
}

uint64_t sub_CE974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_D19DC(a1, a2, a3);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_CE9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_D19DC(a1, a2, a3);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_CEA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_D19DC(a1, a2, a3);
  sub_1165C0();
  __break(1u);
}

uint64_t sub_CEA64()
{
  v1 = sub_116530();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1163F0();
  v11 = 0;
  sub_CEC48(v0, v12);
  *&v10[55] = v13;
  *&v10[39] = v12[2];
  *&v10[23] = v12[1];
  *&v10[7] = v12[0];
  *&v9[17] = *&v10[16];
  *&v9[33] = *&v10[32];
  *&v9[49] = *&v10[48];
  *&v8 = v5;
  *(&v8 + 1) = 0x4000000000000000;
  v9[0] = v11;
  *&v9[64] = *(&v13 + 1);
  *&v9[1] = *v10;
  sub_116520();
  sub_46F9C(&qword_185D90, &qword_12AB28);
  sub_48800(&qword_185D98, &qword_185D90, &qword_12AB28, &protocol conformance descriptor for VStack<A>);
  sub_116A80();
  (*(v2 + 8))(v4, v1);
  v14[2] = *&v9[16];
  v14[3] = *&v9[32];
  v14[4] = *&v9[48];
  v15 = *&v9[64];
  v14[0] = v8;
  v14[1] = *v9;
  return sub_488C8(v14, &qword_185D90, &qword_12AB28);
}

uint64_t sub_CEC48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v79 = a2;
  v3 = sub_46F9C(&qword_182FF8, &qword_124E30);
  __chkstk_darwin(v3 - 8);
  v5 = &v64 - v4;
  v6 = sub_116740();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a1;
  v10 = a1[1];
  *&v84 = *a1;
  *(&v84 + 1) = v10;
  v81 = sub_4869C(v11, v12, v13);

  v14 = sub_116900();
  v16 = v15;
  v18 = v17;
  v19 = *(v7 + 104);
  v73 = v7 + 104;
  v74 = v19;
  v66 = v6;
  v19(v9, enum case for Font.TextStyle.footnote(_:), v6);
  v71 = sub_116690();
  v67 = *(v71 - 8);
  v20 = *(v67 + 56);
  v68 = v67 + 56;
  v72 = v20;
  v20(v5, 1, 1, v71);
  sub_1166B0();
  v65 = v9;
  sub_1166E0();
  sub_488C8(v5, &qword_182FF8, &qword_124E30);
  v21 = *(v7 + 8);
  v69 = v7 + 8;
  v70 = v21;
  v21(v9, v6);
  v22 = sub_1168C0();
  v24 = v23;
  v26 = v25;

  sub_48928(v14, v16, v18 & 1);

  v27 = v80;
  v78 = sub_116880();
  v76 = v28;
  v75 = v29;
  v77 = v30;
  sub_48928(v22, v24, v26 & 1);

  v31 = v27[3];
  *&v84 = v27[2];
  *(&v84 + 1) = v31;

  v32 = sub_116900();
  v34 = v33;
  LOBYTE(v14) = v35;
  v36 = v65;
  v37 = v66;
  v74(v65, enum case for Font.TextStyle.title2(_:), v66);
  v38 = v71;
  (*(v67 + 104))(v5, enum case for Font.Design.rounded(_:), v71);
  v72(v5, 0, 1, v38);
  sub_1166E0();
  sub_488C8(v5, &qword_182FF8, &qword_124E30);
  v70(v36, v37);
  v39 = sub_1168C0();
  v41 = v40;
  LOBYTE(v24) = v42;

  sub_48928(v32, v34, v14 & 1);

  sub_1166B0();
  v43 = sub_116810();
  v45 = v44;
  LOBYTE(v32) = v46;
  sub_48928(v39, v41, v24 & 1);

  v47 = v80;
  v85 = v80[7];
  *&v84 = v85;

  v48 = sub_116890();
  v50 = v49;
  LOBYTE(v14) = v51;
  sub_48928(v43, v45, v32 & 1);

  sub_D1A94(&v85);
  v84 = *(v47 + 2);
  v83[0] = *(v47 + 2);

  v52 = sub_1168A0();
  v54 = v53;
  LOBYTE(v32) = v55;
  v57 = v56;
  sub_48928(v48, v50, v14 & 1);

  sub_D1AE8(&v84);
  v58 = v75 & 1;
  v82 = v75 & 1;
  LOBYTE(v83[0]) = v75 & 1;
  LOBYTE(v48) = v32 & 1;
  v86 = v32 & 1;
  v60 = v78;
  v59 = v79;
  v62 = v76;
  v61 = v77;
  *v79 = v78;
  v59[1] = v62;
  *(v59 + 16) = v58;
  v59[3] = v61;
  v59[4] = v52;
  v59[5] = v54;
  *(v59 + 48) = v48;
  v59[7] = v57;
  sub_488B8(v60, v62, v58);

  sub_488B8(v52, v54, v48);

  sub_48928(v52, v54, v48);

  sub_48928(v60, v62, v82);
}

void sub_CF270(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v4 = a1;
  v46 = sub_1163F0();
  v49 = 0;
  v45 = sub_5DEA8(v4);
  v43 = v6;
  v44 = sub_5D9DC(v4);
  v42 = v7;
  v8 = sub_5D9AC(v4);
  v41 = v8;
  sub_4869C(v8, v9, v10);

  v11 = sub_116900();
  v13 = v12;
  v15 = v14;
  sub_116700();
  v16 = sub_1168C0();
  v18 = v17;
  v20 = v19;

  sub_48928(v11, v13, v15 & 1);

  sub_1164D0();
  v21 = sub_116890();
  v23 = v22;
  v25 = v24;
  v40 = v26;
  sub_48928(v16, v18, v20 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v11) = sub_116630();
  sub_115FD0();
  v47[0] = 0;
  *&v50 = v21;
  *(&v50 + 1) = v23;
  LOBYTE(v51) = v25 & 1;
  DWORD1(v51) = *(v65 + 3);
  *(&v51 + 1) = v65[0];
  *(&v51 + 1) = v40;
  *v52 = KeyPath;
  v52[16] = 1;
  *&v52[20] = *&v64[3];
  *&v52[17] = *v64;
  v52[24] = v11;
  *&v52[28] = *&v63[3];
  *&v52[25] = *v63;
  *&v52[32] = v28;
  *&v52[40] = v29;
  *&v52[48] = v30;
  *&v52[56] = v31;
  v52[64] = 0;
  v62[103] = 0;
  *&v62[87] = *&v52[48];
  *&v62[71] = *&v52[32];
  *&v62[55] = *&v52[16];
  *&v62[39] = KeyPath;
  *&v62[23] = v51;
  *&v62[7] = v50;
  v53 = v21;
  v54 = v23;
  LOBYTE(v55) = v25 & 1;
  HIDWORD(v55) = *(v65 + 3);
  *(&v55 + 1) = v65[0];
  v56 = v40;
  *v57 = KeyPath;
  *&v57[8] = 0;
  v57[16] = 1;
  *&v58[3] = *&v64[3];
  *v58 = *v64;
  v58[7] = v11;
  *&v58[11] = *&v63[3];
  *&v58[8] = *v63;
  *&v58[15] = v28;
  *&v58[23] = v29;
  *&v58[31] = v30;
  *&v58[39] = v31;
  v58[47] = 0;

  sub_479B4(&v50, v47, &qword_183EC8, &unk_129700);
  sub_488C8(&v53, &qword_183EC8, &unk_129700);

  *&v52[49] = *&v62[48];
  *&v52[65] = *&v62[64];
  *&v52[81] = *&v62[80];
  *&v52[1] = *v62;
  *&v52[17] = *&v62[16];
  *&v52[33] = *&v62[32];
  *&v58[32] = *&v62[48];
  v59 = *&v62[64];
  v60 = *&v62[80];
  *&v57[1] = *v62;
  *v58 = *&v62[16];
  *&v52[97] = *&v62[96];
  *&v50 = v45;
  *(&v50 + 1) = v43;
  *&v51 = v44;
  *(&v51 + 1) = v42;
  v52[0] = v41;
  v53 = v45;
  v54 = v43;
  v55 = v44;
  v56 = v42;
  v57[0] = v41;
  v61 = *&v62[96];
  *&v58[16] = *&v62[32];
  sub_479B4(&v50, v47, &qword_185E90, &qword_12B188);
  sub_488C8(&v53, &qword_185E90, &qword_12B188);
  *&v48[87] = *&v52[48];
  *&v48[103] = *&v52[64];
  *&v48[119] = *&v52[80];
  *&v48[128] = *&v52[89];
  *&v48[23] = v51;
  *&v48[39] = *v52;
  *&v48[55] = *&v52[16];
  *&v48[71] = *&v52[32];
  *&v48[7] = v50;
  LOBYTE(KeyPath) = v49;
  LOBYTE(v11) = sub_116620();
  sub_115FD0();
  v32 = *&v48[64];
  *(a4 + 97) = *&v48[80];
  v33 = *&v48[112];
  *(a4 + 113) = *&v48[96];
  *(a4 + 129) = v33;
  *(a4 + 145) = *&v48[128];
  v34 = *v48;
  *(a4 + 33) = *&v48[16];
  v35 = *&v48[48];
  *(a4 + 49) = *&v48[32];
  *(a4 + 65) = v35;
  *(a4 + 81) = v32;
  *a4 = v46;
  *(a4 + 8) = 0;
  *(a4 + 16) = KeyPath;
  *(a4 + 17) = v34;
  *(a4 + 168) = v11;
  *(a4 + 176) = v36;
  *(a4 + 184) = v37;
  *(a4 + 192) = v38;
  *(a4 + 200) = v39;
  *(a4 + 208) = 0;
}

uint64_t sub_CF6E4()
{
  sub_46F9C(&qword_185DA0, &qword_12AB30);
  sub_D1034();
  return sub_116E50();
}

uint64_t sub_CF760@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_46F9C(&qword_185E58, &qword_12B120);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v48 - v7);
  *v8 = sub_116EB0();
  v8[1] = v9;
  v10 = v8 + *(sub_46F9C(&qword_185E60, &qword_12B128) + 44);
  v48 = v8;
  sub_CFA5C(a1, v10);
  v11 = sub_116610();
  v12 = sub_115FD0();
  v13 = v8 + *(v4 + 44);
  *v13 = v11;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  v18 = a1[2];
  v19 = a1[3];
  v51 = v18;
  v52 = v19;
  sub_4869C(v12, v20, v21);

  v22 = sub_116900();
  v24 = v23;
  v26 = v25;
  sub_116730();
  v27 = sub_1168C0();
  v29 = v28;
  v31 = v30;

  sub_48928(v22, v24, v26 & 1);

  sub_1166B0();
  v32 = sub_116810();
  v34 = v33;
  v36 = v35;
  sub_48928(v27, v29, v31 & 1);

  sub_116BB0();
  v37 = sub_116880();
  v39 = v38;
  LOBYTE(v29) = v40;
  v42 = v41;

  sub_48928(v32, v34, v36 & 1);

  v44 = v48;
  v43 = v49;
  sub_479B4(v48, v49, &qword_185E58, &qword_12B120);
  v45 = v50;
  sub_479B4(v43, v50, &qword_185E58, &qword_12B120);
  v46 = v45 + *(sub_46F9C(&qword_185E68, &qword_12B130) + 48);
  *v46 = v37;
  *(v46 + 8) = v39;
  *(v46 + 16) = v29 & 1;
  *(v46 + 24) = v42;
  sub_488B8(v37, v39, v29 & 1);

  sub_488C8(v44, &qword_185E58, &qword_12B120);
  sub_48928(v37, v39, v29 & 1);

  return sub_488C8(v43, &qword_185E58, &qword_12B120);
}

uint64_t sub_CFA5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v51 = a2;
  v49 = sub_116C10();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_116180();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_46F9C(&qword_185E70, &qword_12B138);
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = sub_46F9C(&qword_185E78, &qword_12B140);
  __chkstk_darwin(v11);
  v50 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  __chkstk_darwin(v16);
  v48 = &v46 - v17;
  v18 = *(v5 + 28);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = sub_116390();
  v21 = v7 + v18;
  v22 = v46;
  (*(*(v20 - 8) + 104))(v21, v19, v20);
  __asm { FMOV            V0.2D, #8.0 }

  *v7 = _Q0;
  if (v22[4])
  {
    v28 = sub_116B80();
  }

  else
  {
    v28 = sub_116B30();
  }

  v29 = v28;
  sub_D1A30(v7, v10);
  *&v10[*(v8 + 52)] = v29;
  *&v10[*(v8 + 56)] = 256;
  sub_116EB0();
  sub_116070();
  sub_548D0(v10, v15, &qword_185E70, &qword_12B138);
  v30 = &v15[*(v11 + 36)];
  v31 = v63[1];
  *v30 = v63[0];
  *(v30 + 1) = v31;
  *(v30 + 2) = v63[2];
  v32 = v48;
  sub_548D0(v15, v48, &qword_185E78, &qword_12B140);

  sub_116C20();
  v33 = v47;
  v34 = v49;
  (*(v47 + 104))(v3, enum case for Image.ResizingMode.stretch(_:), v49);
  v35 = sub_116C30();

  (*(v33 + 8))(v3, v34);
  sub_116EB0();
  sub_116070();
  LOBYTE(v56[0]) = 1;
  *&v52[6] = v63[3];
  *&v52[22] = v63[4];
  *&v52[38] = v63[5];
  v36 = sub_116B70();
  KeyPath = swift_getKeyPath();
  v38 = v50;
  sub_479B4(v32, v50, &qword_185E78, &qword_12B140);
  v39 = v51;
  sub_479B4(v38, v51, &qword_185E78, &qword_12B140);
  v40 = v39 + *(sub_46F9C(&qword_185E80, &qword_12B178) + 48);
  v53[0] = v35;
  v53[1] = 0;
  LOWORD(v54[0]) = 1;
  *(v54 + 2) = *v52;
  *(&v54[1] + 2) = *&v52[16];
  *(&v54[2] + 2) = *&v52[32];
  *&v54[3] = *&v52[46];
  *(&v54[3] + 1) = KeyPath;
  v55 = v36;
  v41 = v54[0];
  *v40 = v35;
  *(v40 + 16) = v41;
  v42 = v54[1];
  v43 = v54[2];
  v44 = v54[3];
  *(v40 + 80) = v36;
  *(v40 + 48) = v43;
  *(v40 + 64) = v44;
  *(v40 + 32) = v42;
  sub_479B4(v53, v56, &qword_185E88, &qword_12B180);
  sub_488C8(v32, &qword_185E78, &qword_12B140);
  v56[0] = v35;
  v56[1] = 0;
  v57 = 1;
  v58 = *v52;
  v59 = *&v52[16];
  *v60 = *&v52[32];
  *&v60[14] = *&v52[46];
  v61 = KeyPath;
  v62 = v36;
  sub_488C8(v56, &qword_185E88, &qword_12B180);
  return sub_488C8(v38, &qword_185E78, &qword_12B140);
}

uint64_t sub_CFF90@<X0>(uint64_t a1@<X8>)
{
  v3 = *sub_8D6D8();
  *a1 = sub_116320();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = sub_46F9C(&qword_185DC0, &qword_12AB40);
  sub_CF760(v1, a1 + *(v4 + 44));
  v5 = sub_116680();
  KeyPath = swift_getKeyPath();
  v7 = (a1 + *(sub_46F9C(&qword_185DC8, &qword_12AB78) + 36));
  *v7 = KeyPath;
  v7[1] = v5;
  LODWORD(v5) = sub_1164C0();
  result = sub_46F9C(&qword_185DD0, &qword_12AB80);
  *(a1 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_D004C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *v3;
  sub_D1CC4(a1, a2, a3);
  v7 = sub_1170C0();
  v10 = -1 << *(v6 + 32);
  v11 = v7 & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    sub_68FB8(v7, v8, v9);
    while ((sub_117160() & 1) == 0)
    {
      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v4) = *(*(v6 + 48) + v11);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_D0B60(v4, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_D0184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_D1CC4(a1, a2, a3);
  v4 = sub_1170C0();
  return sub_D0A98(a1, v4, v5);
}

uint64_t sub_D01F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  sub_D1CC4(a1, a2, a3);
  v5 = sub_1170C0();
  v8 = -1 << *(v4 + 32);
  v9 = v5 & ~v8;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 26;
  }

  v10 = ~v8;
  sub_68FB8(v5, v6, v7);
  while ((sub_117160() & 1) == 0)
  {
    v9 = (v9 + 1) & v10;
    if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 26;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v15 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_D0320();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + v9);
  sub_D08E0(v9);
  result = v14;
  *v3 = v15;
  return result;
}

void *sub_D0320()
{
  v1 = v0;
  sub_46F9C(&qword_185F08, &qword_12B278);
  v2 = *v0;
  v3 = sub_1176D0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_D0460(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_46F9C(&qword_185F08, &qword_12B278);
  result = sub_1176E0();
  v7 = result;
  if (*(v3 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v3 + 48) + (v15 | (v8 << 6)));
      sub_D1CC4(result, v5, v6);
      result = sub_1170C0();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v3 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}