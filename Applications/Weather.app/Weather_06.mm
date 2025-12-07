uint64_t sub_1000AF41C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000AF474()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000AF528(uint64_t a1, uint64_t a2)
{
  sub_100024D10(a1, a2, v2);
}

uint64_t sub_1000AF594()
{

  return swift_slowAlloc();
}

uint64_t sub_1000AF5B0()
{
}

uint64_t sub_1000AF5CC()
{

  return sub_10011A1F4(v1, v0);
}

uint64_t sub_1000AF5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 280);

  return sub_10001B350(a1, a2, a3, v5);
}

uint64_t sub_1000AF628()
{

  return sub_100051BBC();
}

uint64_t sub_1000AF67C(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1000AF69C()
{

  return type metadata accessor for AppConfiguration();
}

void sub_1000AF6DC()
{
  sub_10000C778();
  v3 = v1;
  v5 = v4;
  v115 = v6;
  v112 = type metadata accessor for WeatherMapPresentationState(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000038E4();
  v114 = v8;
  v9 = sub_1000038CC();
  v120 = type metadata accessor for DisplayMetrics(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000038E4();
  v113 = v11;
  v12 = sub_1000038CC();
  v108 = type metadata accessor for ViewState.SecondaryViewState(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000038E4();
  v111 = v14;
  v15 = sub_10022C350(&qword_100CA6698, &unk_100A314B0);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v103 - v17;
  v19 = sub_10022C350(&qword_100CA5CF8, &unk_100A302F0);
  sub_100003810(v19);
  sub_100003828();
  __chkstk_darwin(v20);
  sub_10002C698();
  v21 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_100003848();
  v110 = v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  sub_10000E70C();
  v118 = v25;
  v26 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003848();
  v109 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v117 = v30;
  v31 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  v32 = sub_100003810(v31);
  __chkstk_darwin(v32);
  sub_100003C38();
  v35 = v33 - v34;
  __chkstk_darwin(v36);
  v38 = &v103 - v37;
  v39 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  v40 = sub_100003810(v39);
  __chkstk_darwin(v40);
  sub_100003848();
  v106 = v41;
  sub_10000386C();
  __chkstk_darwin(v42);
  v119 = &v103 - v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  v46 = &v103 - v45;
  v116 = type metadata accessor for SearchViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v47);
  sub_1000037D8();
  sub_10000C790();
  v48 = type metadata accessor for ViewState(0);
  v49 = v48;
  v104 = v3 + *(v48 + 36);
  v50 = v5;
  v51 = *(v104 + 1) != 2 || *(v5 + 8) != 1;
  v105 = *(v48 + 32);
  sub_1000302D8(v3 + v105, v46, &qword_100CA6600, &unk_100A5C400);
  sub_1000038B4(v46, 1, v116);
  if (v52)
  {
    sub_1000180EC(v46, &qword_100CA6600, &unk_100A5C400);
LABEL_14:
    v107 = sub_1000B010C();
    goto LABEL_16;
  }

  sub_100019FD0();
  sub_1000AFEF8();
  v53 = v0[1];
  if ((v53 & 0x2000000000000000) != 0)
  {
    v54 = HIBYTE(v53) & 0xF;
  }

  else
  {
    v54 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  sub_1000B005C(v0, type metadata accessor for SearchViewState);
  if (v54)
  {
    v55 = v51;
  }

  else
  {
    v55 = 1;
  }

  if (v55)
  {
    goto LABEL_14;
  }

  v107 = 0;
LABEL_16:
  sub_100003934();
  v56 = v108;
  sub_10001B350(v57, v58, v59, v108);
  sub_100009084();
  sub_1000A078C();
  sub_10000E7B0();
  sub_10001B350(v60, v61, v62, v120);
  v63 = v49[10];
  v64 = *(v3 + v63);
  type metadata accessor for WeatherMapOverlayKind();
  sub_100003934();
  sub_10001B350(v65, v66, v67, v68);
  type metadata accessor for WeatherMapTrackingState(0);
  sub_100003934();
  sub_10001B350(v69, v70, v71, v72);
  v103 = v63;
  sub_1000B0430(v64, v50, v2, v18, v118);
  sub_1000180EC(v18, &qword_100CA6698, &unk_100A314B0);
  sub_1000180EC(v2, &qword_100CA5CF8, &unk_100A302F0);
  sub_10000E7B0();
  v73 = v112;
  sub_10001B350(v74, v75, v76, v112);
  v77 = *v3;
  sub_1000302D8(v38, v35, &qword_100CA6608, &unk_100A31430);
  v78 = sub_1000182B8();
  sub_1000038B4(v78, v79, v56);
  if (v52)
  {
    sub_10001F968();
    sub_1000A078C();
    v80 = sub_1000182B8();
    v82 = sub_100024D10(v80, v81, v56);

    if (v82 != 1)
    {
      sub_1000180EC(v35, &qword_100CA6608, &unk_100A31430);
    }
  }

  else
  {
    sub_10001CE5C();
    sub_1000AFEF8();
  }

  v83 = *(v3 + v49[6]);
  sub_1000180EC(v38, &qword_100CA6608, &unk_100A31430);
  v84 = v105;
  v85 = v106;
  sub_1000302D8(v3 + v105, v106, &qword_100CA6600, &unk_100A5C400);
  v86 = sub_100007FC4();
  v87 = v116;
  sub_1000038B4(v86, v88, v116);
  if (v52)
  {
    sub_1000302D8(v3 + v84, v119, &qword_100CA6600, &unk_100A5C400);
    v89 = sub_100007FC4();
    sub_1000038B4(v89, v90, v87);
    v94 = v120;
    if (!v52)
    {
      sub_1000180EC(v85, &qword_100CA6600, &unk_100A5C400);
    }
  }

  else
  {
    sub_100019FD0();
    sub_1000AFEF8();
    sub_10000E7B0();
    sub_10001B350(v91, v92, v93, v87);
    v94 = v120;
  }

  v95 = v109;
  sub_10011C0F0(v117, v109, &qword_100CA65F8, &dword_100A31420);
  v96 = sub_100007FC4();
  sub_1000038B4(v96, v97, v94);
  if (v52)
  {
    sub_100009084();
    sub_1000A078C();
    v98 = sub_100007FC4();
    sub_1000038B4(v98, v99, v94);
    if (!v52)
    {
      sub_1000180EC(v95, &qword_100CA65F8, &dword_100A31420);
    }
  }

  else
  {
    sub_10000686C();
    sub_1000AFEF8();
  }

  v100 = v110;
  sub_10011C0F0(v118, v110, &qword_100CA65F0, &unk_100A5C3F0);
  sub_1000038B4(v100, 1, v73);
  if (v52)
  {
    sub_100004BD8();
    sub_1000A078C();
    sub_1000038B4(v100, 1, v73);
    if (!v52)
    {
      sub_1000180EC(v100, &qword_100CA65F0, &unk_100A5C3F0);
    }
  }

  else
  {
    sub_100010CB8();
    sub_1000AFEF8();
  }

  v101 = *(v3 + v49[11]);
  v102 = v115;
  *v115 = v77;
  sub_10001CE5C();
  sub_1000AFEF8();
  *(v102 + v49[6]) = v83;
  *(v102 + v49[7]) = v107 & 1;
  sub_10011C0F0(v119, v102 + v49[8], &qword_100CA6600, &unk_100A5C400);
  sub_10000686C();
  sub_1000AFEF8();
  sub_100010CB8();
  sub_1000AFEF8();
  *(v102 + v49[11]) = v101;
  sub_10000536C();
}

uint64_t sub_1000AFEF8()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_1000AFF4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000AFFAC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B0004(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B005C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B00B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B010C()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  v3 = type metadata accessor for ViewState(0);
  if (v2 && *(v0 + *(v3 + 36) + 8) == 2)
  {
    return 1;
  }

  else
  {
    return *(v0 + *(v3 + 28));
  }
}

uint64_t sub_1000B0234@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a3 - 256);

  return sub_1002AB08C(v5, v3, a1, a2);
}

uint64_t sub_1000B0278(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_1000B0294(uint64_t a1)
{

  return sub_10009EEC0(a1, type metadata accessor for NotificationsOptInState);
}

uint64_t sub_1000B02B8()
{

  return static FixedSizeTypeBinaryCodable.read(from:)();
}

uint64_t sub_1000B02D4()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B02F0(uint64_t a1)
{

  return ShortDescription.init(name:_:)();
}

uint64_t sub_1000B0318()
{

  return sub_100051BBC();
}

uint64_t sub_1000B037C()
{

  return swift_getAtKeyPath();
}

uint64_t sub_1000B03C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10022C350(&qword_100CA6660, &unk_100A41280);

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1000B0430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v68 = a3;
  v69 = a4;
  v67 = a2;
  v70 = a5;
  v7 = type metadata accessor for WeatherMapTrackingState(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v73 = v10 - v9;
  v11 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v74 = v12;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v72 = v15 - v14;
  v16 = sub_10022C350(&qword_100CA6698, &unk_100A314B0);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_100003C38();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = &v67 - v22;
  __chkstk_darwin(v24);
  v26 = &v67 - v25;
  v27 = sub_10022C350(&qword_100CA5CF8, &unk_100A302F0);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003C38();
  v31 = v29 - v30;
  __chkstk_darwin(v32);
  v34 = &v67 - v33;
  __chkstk_darwin(v35);
  v37 = &v67 - v36;
  v38 = 0x80;
  v71 = a1;
  switch(a1)
  {
    case 1:
    case 3:
      if (DeviceIsSlow())
      {
        v38 = 64;
      }

      else
      {
        v38 = 65;
      }

      break;
    case 2:
      v38 = 65;
      break;
    case 4:
      break;
    case 5:
      v38 = sub_10099A07C(v67);
      break;
    default:
      v38 = 64;
      if (*(v67 + 8) != 1)
      {
        if (DeviceIsSlow())
        {
          v38 = 64;
        }

        else
        {
          v38 = 65;
        }
      }

      break;
  }

  v39 = v38;
  sub_100035AD0(v68, v34, &qword_100CA5CF8, &unk_100A302F0);
  sub_100003BFC(v34);
  if (v40)
  {
    type metadata accessor for WeatherMapPresentationState(0);
    sub_100023634();
    v41(v37);
    sub_100003BFC(v34);
    if (!v40)
    {
      sub_1000180EC(v34, &qword_100CA5CF8, &unk_100A302F0);
    }
  }

  else
  {
    (*(v74 + 32))(v37, v34, v11);
  }

  sub_10000E7B0();
  sub_10001B350(v42, v43, v44, v11);
  sub_100035AD0(v69, v23, &qword_100CA6698, &unk_100A314B0);
  if (sub_100024D10(v23, 1, v7) == 1)
  {
    v45 = type metadata accessor for WeatherMapPresentationState(0);
    sub_1000B0A6C(v5 + *(v45 + 32), v26);
    if (sub_100024D10(v23, 1, v7) != 1)
    {
      sub_1000180EC(v23, &qword_100CA6698, &unk_100A314B0);
    }
  }

  else
  {
    sub_1000B0AD0(v23, v26);
  }

  sub_10000E7B0();
  sub_10001B350(v46, v47, v48, v7);
  sub_100035AD0(v37, v31, &qword_100CA5CF8, &unk_100A302F0);
  sub_100003BFC(v31);
  if (v40)
  {
    type metadata accessor for WeatherMapPresentationState(0);
    sub_100023634();
    v49(v72);
    sub_100003BFC(v31);
    if (!v40)
    {
      sub_1000180EC(v31, &qword_100CA5CF8, &unk_100A302F0);
    }
  }

  else
  {
    (*(v74 + 32))(v72, v31, v11);
  }

  v50 = type metadata accessor for WeatherMapPresentationState(0);
  v51 = (v5 + v50[7]);
  v53 = *v51;
  v52 = v51[1];
  sub_100035AD0(v26, v20, &qword_100CA6698, &unk_100A314B0);
  v54 = sub_100007FC4();
  if (sub_100024D10(v54, v55, v7) == 1)
  {
    sub_1000B0A6C(v5 + v50[8], v73);
    v56 = sub_100007FC4();
    v58 = sub_100024D10(v56, v57, v7);

    if (v58 != 1)
    {
      sub_1000180EC(v20, &qword_100CA6698, &unk_100A314B0);
    }
  }

  else
  {
    sub_1000B0AD0(v20, v73);
  }

  v59 = *(v5 + 1);
  IsSlow = DeviceIsSlow();
  sub_1000180EC(v26, &qword_100CA6698, &unk_100A314B0);
  sub_1000180EC(v37, &qword_100CA5CF8, &unk_100A302F0);
  v61 = 0;
  if (IsSlow)
  {
    v63 = v71;
    v62 = v39;
  }

  else
  {
    v62 = v39;
    v63 = v71;
    if ((v39 & 0xC1) != 0x40)
    {
      v61 = (v59 & 0xFFFFFFC1) != 64;
    }
  }

  v64 = v70;
  *v70 = v63;
  v64[1] = v62;
  (*(v74 + 32))(&v64[v50[6]], v72, v11);
  v65 = &v64[v50[7]];
  *v65 = v53;
  v65[1] = v52;
  result = sub_1000B0AD0(v73, &v64[v50[8]]);
  v64[v50[9]] = v61;
  return result;
}

uint64_t sub_1000B0A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6660, &unk_100A41280);
  v5 = sub_100024D10(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B0A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapTrackingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B0AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapTrackingState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B0B48(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1000038D8();
  result = type metadata accessor for WeatherMapOverlayKind();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[6];
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + a4[7] + 8) = a2;
      return result;
    }

    v9 = type metadata accessor for WeatherMapTrackingState(0);
    v10 = a4[8];
  }

  return sub_10001B350(v4 + v10, a2, a2, v9);
}

uint64_t sub_1000B0CD0(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, char a14)
{

  return sub_100042DA8(a1, a2, a3, 0, 0, 0, 0xE000000000000000, 0, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000B0D14(uint64_t a1, uint64_t a2)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t sub_1000B0D6C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1000038D8();
  v6 = type metadata accessor for WeatherMapOverlayKind();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[6];
LABEL_10:

    return sub_100024D10(v3 + v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = type metadata accessor for WeatherMapTrackingState(0);
    v8 = a3[8];
    goto LABEL_10;
  }

  v9 = *(v3 + a3[7] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_1000B0E70(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000B0F30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B0F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v1173 = a3;
  v1174 = a2;
  v1161 = a1;
  v1156 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v1132 = v3;
  __chkstk_darwin(v4);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v5);
  sub_10000E70C();
  sub_100003990(v6);
  v7 = sub_10022C350(&qword_100CA6698, &unk_100A314B0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_10000E70C();
  sub_100003990(v10);
  v11 = sub_10022C350(&qword_100CA5CF8, &unk_100A302F0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_10000E70C();
  sub_100003918(v14);
  v1159 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v1153 = v15;
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_10000E70C();
  v19 = sub_100003918(v18);
  v1148 = type metadata accessor for WeatherMapTrackingState(v19);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_10000E70C();
  v23 = sub_100003918(v22);
  v1165 = type metadata accessor for WeatherMapPresentationState(v23);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v26);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_10000E70C();
  v29 = sub_100003918(v28);
  v1160 = type metadata accessor for DisplayMetrics(v29);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_10000E70C();
  v35 = sub_100003918(v34);
  v1163 = type metadata accessor for ViewState.SecondaryViewState(v35);
  sub_1000037E8();
  __chkstk_darwin(v36);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_10000E70C();
  sub_100003990(v41);
  v42 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  v43 = sub_100003810(v42);
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_10000E70C();
  sub_100003990(v50);
  v51 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  v52 = sub_100003810(v51);
  __chkstk_darwin(v52);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v58);
  sub_10000E70C();
  sub_100003990(v59);
  v60 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  v61 = sub_100003810(v60);
  __chkstk_darwin(v61);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_10000E70C();
  sub_100003990(v71);
  v72 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  v73 = sub_100003810(v72);
  __chkstk_darwin(v73);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  v1158 = v77;
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v80);
  sub_10000E70C();
  v82 = sub_100003918(v81);
  v1127 = type metadata accessor for NotificationsOptInInput(v82);
  sub_1000037E8();
  __chkstk_darwin(v83);
  sub_1000037D8();
  v86 = sub_100003918(v85 - v84);
  v1172 = type metadata accessor for ViewState(v86);
  sub_1000037E8();
  __chkstk_darwin(v87);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  v1162 = v92;
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_10000E70C();
  v101 = sub_100003918(v100);
  v1166 = type metadata accessor for TimeState(v101);
  sub_1000037E8();
  __chkstk_darwin(v102);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_10000E70C();
  v109 = sub_100003918(v108);
  v1171 = type metadata accessor for NotificationsState(v109);
  sub_1000037E8();
  __chkstk_darwin(v110);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_10000E70C();
  v117 = sub_100003918(v116);
  v1169 = type metadata accessor for LocationsState(v117);
  sub_1000037E8();
  __chkstk_darwin(v118);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v120);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_10000E70C();
  v125 = sub_100003918(v124);
  v1170 = type metadata accessor for EnvironmentState(v125);
  sub_1000037E8();
  __chkstk_darwin(v126);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v131);
  sub_10000E70C();
  v133 = sub_100003918(v132);
  v1167 = type metadata accessor for AppConfigurationState(v133);
  sub_1000037E8();
  __chkstk_darwin(v134);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_10000E70C();
  v141 = sub_100003918(v140);
  v1168 = type metadata accessor for ModalViewState(v141);
  sub_1000037E8();
  __chkstk_darwin(v142);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v148);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v149);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v150);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v151);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v152);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  v1164 = v154;
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_10000E70C();
  sub_100003990(v157);
  v158 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v159 = sub_100003810(v158);
  __chkstk_darwin(v159);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v161);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v162);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_10000E70C();
  sub_100003990(v172);
  v173 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v174 = sub_100003810(v173);
  __chkstk_darwin(v174);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v175);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v180);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v184);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v185);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v186);
  sub_10000E70C();
  sub_100003918(v187);
  v1157 = type metadata accessor for Date();
  sub_1000037C4();
  v1131 = v188;
  __chkstk_darwin(v189);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v190);
  sub_10000E70C();
  sub_100003990(v191);
  v192 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v193 = sub_100003810(v192);
  __chkstk_darwin(v193);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v194);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v195);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v196);
  sub_10000E70C();
  v198 = sub_100003918(v197);
  v1175 = type metadata accessor for NotificationsOptInState(v198);
  sub_1000037E8();
  __chkstk_darwin(v199);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v200);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v201);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v202);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v203);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v204);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v205);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v206);
  sub_10000E70C();
  sub_100003990(v207);
  v208 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v209 = sub_100003810(v208);
  __chkstk_darwin(v209);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v210);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v211);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v212);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v213);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v214);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v215);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v216);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v217);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v218);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v219);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v220);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v221);
  sub_10000E70C();
  sub_100003990(v222);
  v223 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v224 = sub_100003810(v223);
  __chkstk_darwin(v224);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v225);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v226);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v227);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v228);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v229);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v230);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v231);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v232);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v233);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v234);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v235);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v236);
  sub_10000E70C();
  sub_100003990(v237);
  v238 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v239 = sub_100003810(v238);
  __chkstk_darwin(v239);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v240);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v241);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v242);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v243);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v244);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v245);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v246);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v247);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v248);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v249);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v250);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v251);
  sub_10000E70C();
  sub_100003990(v252);
  v253 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v254 = sub_100003810(v253);
  __chkstk_darwin(v254);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v255);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v256);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v257);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v258);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v259);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v260);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v261);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v262);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v263);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v264);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v265);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v266);
  sub_10000E70C();
  sub_100003990(v267);
  v268 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v269 = sub_100003810(v268);
  __chkstk_darwin(v269);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v270);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v271);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v272);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v273);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v274);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v275);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v276);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v277);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v278);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v279);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v280);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v281);
  sub_10000E70C();
  sub_100003990(v282);
  v283 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v284 = sub_100003810(v283);
  __chkstk_darwin(v284);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v285);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v286);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v287);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v288);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v289);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v290);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v291);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v292);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v293);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v294);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v295);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v296);
  sub_10000E70C();
  v298 = sub_100003918(v297);
  active = type metadata accessor for LocationViewerActiveLocationState(v298);
  sub_1000037E8();
  __chkstk_darwin(v299);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v300);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v301);
  v303 = &v1000 - v302;
  __chkstk_darwin(v304);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v305);
  v307 = &v1000 - v306;
  v308 = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  v309 = sub_100003810(v308);
  __chkstk_darwin(v309);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v310);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v311);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v312);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v313);
  v315 = &v1000 - v314;
  __chkstk_darwin(v316);
  v318 = &v1000 - v317;
  __chkstk_darwin(v319);
  v321 = &v1000 - v320;
  __chkstk_darwin(v322);
  v324 = &v1000 - v323;
  v325 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v1144 = v326;
  __chkstk_darwin(v327);
  sub_1000037D8();
  v330 = (v329 - v328);
  type metadata accessor for LocationViewerViewAction(0);
  sub_1000037E8();
  __chkstk_darwin(v331);
  sub_1000037D8();
  v334 = v333 - v332;
  sub_1000B7D3C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v423 = v1153;
      v424 = *(v1153 + 32);
      v425 = v1152;
      v426 = v1159;
      v424(v1152, v334, v1159);
      v427 = sub_100003BCC(&v1168);
      sub_10001B350(v427, v428, v429, v1167);
      v430 = sub_100003BCC(&v1170);
      sub_10001B350(v430, v431, v432, v1170);
      v433 = sub_100003BCC(&v1171);
      sub_10001B350(v433, v434, v435, v1169);
      v436 = sub_100003BCC(&v1173);
      sub_10001B350(v436, v437, v438, v1171);
      v439 = sub_100003BCC(&v1175);
      sub_10001B350(v439, v440, v441, v1175);
      v442 = sub_100003BCC(&v1176);
      sub_10001B350(v442, v443, v444, v1166);
      v445 = v1174 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      sub_10001C83C();
      sub_1000B7D3C();
      sub_100003934();
      sub_10001B350(v446, v447, v448, v1163);
      type metadata accessor for SearchViewState(0);
      v449 = sub_100003BCC(&v1177);
      v1173 = v450;
      sub_10001B350(v449, v451, v452, v450);
      v453 = sub_100003BCC(&v1178);
      sub_10001B350(v453, v454, v455, v1160);
      sub_10002FF74();
      v1157 = v445;
      sub_100037814();
      sub_1000B7D3C();
      v456 = *(v423 + 16);
      v456(v1150, v425, v426);
      v457 = sub_1000A7CCC();
      sub_10001B350(v457, v458, v459, v426);
      v460 = sub_100021088(v1145);
      sub_10001B350(v460, v461, v462, v1148);
      LODWORD(v1161) = *v324;
      v463 = v324[1];
      sub_100032590();
      sub_100095588();
      sub_10000554C(v425);
      if (v341)
      {
        v456(v1138, &v324[v1165[6]], v426);
        sub_10000554C(v425);
        if (!v341)
        {
          sub_1000180EC(v425, &qword_100CA5CF8, &unk_100A302F0);
        }
      }

      else
      {
        v424(v1138, v425, v426);
      }

      v598 = &v324[v1165[7]];
      v600 = *v598;
      v599 = *(v598 + 1);
      sub_100021424();
      sub_100095588();
      v601 = sub_100016298();
      v602 = v1148;
      sub_1000038B4(v601, v603, v1148);
      if (v341)
      {
        sub_100037814();
        sub_1000B7D3C();
        v604 = sub_100016298();
        v606 = v456;
        v607 = sub_100024D10(v604, v605, v602);

        if (v607 != 1)
        {
          sub_1000180EC(v606, &qword_100CA6698, &unk_100A314B0);
        }
      }

      else
      {
        sub_100079524();
        sub_100037814();
        sub_100620EDC();
      }

      v608 = v1165;
      v609 = v1149;
      v610 = *(v1149 + v1165[9]);
      sub_1000180EC(v445, &qword_100CA6698, &unk_100A314B0);
      sub_1000180EC(v1150, &qword_100CA5CF8, &unk_100A302F0);
      sub_10009EEC0(v609, type metadata accessor for WeatherMapPresentationState);
      v611 = v1151;
      *v1151 = v1161;
      v611[1] = v463;
      v424(&v611[v608[6]], v1138, v1159);
      v612 = &v611[v608[7]];
      *v612 = v600;
      v612[1] = v599;
      sub_100079524();
      sub_100620EDC();
      v611[v608[9]] = v610;
      sub_10000E7B0();
      sub_10001B350(v613, v614, v615, v608);
      v616 = v1162;
      v617 = *v1162;
      sub_100042230();
      sub_100095588();
      v618 = sub_1000182B8();
      v619 = v1163;
      sub_1000038B4(v618, v620, v1163);
      if (v341)
      {
        v624 = v1172;
        sub_100051F44();
        sub_1000B7D3C();
        v621 = sub_1000182B8();
        v623 = sub_100024D10(v621, v622, v619);

        v625 = v1122;
        v626 = v1119;
        v627 = v1113;
        v628 = v1112;
        if (v623 != 1)
        {
          sub_1000180EC(v424, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_10002490C();
        sub_100620EDC();

        v624 = v1172;
        v625 = v1122;
        v626 = v1119;
        v627 = v1113;
        v628 = v1112;
      }

      LODWORD(v1163) = *(v616 + v624[6]);
      v629 = [objc_opt_self() currentDevice];
      v630 = v616;
      v631 = [v629 userInterfaceIdiom];

      if (v631 && *(v630 + v624[9] + 8) == 2)
      {
        v632 = 1;
      }

      else
      {
        v632 = *(v630 + v624[7]);
      }

      sub_1000180EC(v1158, &qword_100CA6608, &unk_100A31430);
      (*(v1153 + 8))(v1152, v1159);
      sub_1000C8B14(&v1177);
      sub_100051BBC();
      v633 = v1173;
      sub_1000038B4(v627, 1, v1173);
      if (v341)
      {
        sub_100095588();
        sub_10000C814(v627);
        if (!v341)
        {
          sub_1000180EC(v627, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_100021584();
        sub_1000113EC();
        sub_100620EDC();
        sub_10000E7B0();
        sub_10001B350(v634, v635, v636, v633);
      }

      sub_1000870F8(&v1178);
      sub_100051BBC();
      sub_10000554C(v626);
      if (v341)
      {
        sub_100031E5C();
        sub_1000B7D3C();
        sub_10000554C(v626);
        v637 = v1095;
        if (!v341)
        {
          sub_1000180EC(v626, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100022F24();
        sub_100620EDC();
        v637 = v1095;
      }

      sub_1000C8EE0();
      sub_100003A40(v625);
      if (v341)
      {
        sub_10002FF74();
        sub_1000519E0();
        sub_1000B7D3C();
        sub_100003A40(v625);
        if (!v341)
        {
          sub_1000180EC(v625, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_100019BD0();
        sub_1000519E0();
        sub_100620EDC();
      }

      v638 = *(v1162 + v624[11]);
      sub_1000105CC();
      sub_10009EEC0(v639, v640);
      *v628 = v617;
      sub_10002490C();
      sub_100620EDC();
      *(v628 + v624[6]) = v1163;
      *(v628 + v624[7]) = v632;
      sub_100051BBC();
      sub_100022F24();
      sub_100620EDC();
      sub_100019BD0();
      sub_100620EDC();
      *(v628 + v624[11]) = v638;
      sub_10000E7B0();
      sub_10001B350(v641, v642, v643, v624);
      v644 = sub_100020EE4(v1137);
      v645 = v1168;
      sub_10001B350(v644, v646, v647, v1168);
      sub_100006378();
      sub_1000325C0();
      sub_1000B7D3C();
      sub_100051BBC();
      v648 = sub_10000C834();
      if (sub_100024D10(v648, v649, v645) == 1)
      {
        sub_1000180EC(v637, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100014B40();
        sub_10009EEC0(v625, v650);
        sub_10001F304();
        sub_100620EDC();
      }

      v651 = v1167;
      v652 = v1110;
      v653 = v1097;
      sub_10001F304();
      sub_100620EDC();
      v654 = *(v1174 + 16);
      LODWORD(v1169) = *(v1174 + 24);
      sub_1000325C0();
      sub_100051BBC();
      sub_10000394C(v625);
      if (v341)
      {
        sub_10000EC10();
        sub_1000B7D3C();
        v655 = sub_100024D10(v625, 1, v651);

        v656 = v625;
        v657 = v1099;
        if (v655 != 1)
        {
          sub_1000180EC(v656, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10002C8CC();
        sub_100620EDC();

        v657 = v1099;
      }

      v1173 = v654;
      sub_1000870F8(&v1170);
      sub_100051BBC();
      sub_10000C814(v653);
      if (v341)
      {
        sub_10002014C(v1174 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100020968();
        sub_1000B7D3C();
        sub_10000C814(v653);
        v658 = v1105;
        v659 = v1101;
        if (!v341)
        {
          sub_1000180EC(v653, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10000CD2C();
        sub_100620EDC();
        v658 = v1105;
        v659 = v1101;
      }

      sub_1000C8EE0();
      sub_100005404(v657);
      if (v341)
      {
        sub_10003C680();
        sub_1000B7D3C();
        sub_100005404(v657);
        if (!v341)
        {
          sub_1000180EC(v657, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100017B7C();
        sub_100620EDC();
      }

      sub_100051BBC();
      sub_10001627C(v659, 1);
      if (v341)
      {
        sub_10006976C();
        sub_1000B7D3C();
        sub_100005404(v659);
        if (!v341)
        {
          sub_1000180EC(v659, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100013A48();
        sub_100620EDC();
      }

      sub_100052378(&v1175);
      sub_100051BBC();
      v660 = sub_100016298();
      sub_10001627C(v660, v661);
      if (v341)
      {
        sub_100008AEC();
        sub_1000B7D3C();
        sub_100005404(v658);
        v662 = v1115[0];
        if (!v341)
        {
          sub_1000180EC(v658, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10004E800();
        sub_100620EDC();
        v662 = v1115[0];
      }

      sub_1000C8B14(&v1176);
      sub_100051BBC();
      sub_10000554C(v652);
      if (v341)
      {
        sub_100016C70();
        sub_1000B7D3C();
        sub_10000554C(v652);
        if (!v341)
        {
          sub_1000180EC(v652, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100049A3C();
        sub_100620EDC();
      }

      sub_100051BBC();
      sub_1000038B4(v662, 1, v624);
      if (v341)
      {
        sub_10001C83C();
        sub_1000113EC();
        sub_1000B7D3C();
        sub_1000038B4(v662, 1, v624);
        if (!v341)
        {
          sub_1000180EC(v662, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100028844();
        sub_1000113EC();
        sub_100620EDC();
      }

      sub_10001F304();
      v663 = v1164;
      sub_100620EDC();
      sub_10001327C();
      sub_1000BCED8();
      v665 = *(v664 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v666 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v666);
      sub_100071D94();
      sub_10003E038(v1173, v1169, v1139, v1140, v1141, v1142, v1137[0], v1143, v652, v663, v994, v995, v996, v997, v998, v999, v658, v665, v1000, v1001, v1002, v1003, v1004, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016);
      goto LABEL_135;
    case 2u:
      v390 = v1132;
      v391 = v1133;
      v392 = v1156;
      (*(v1132 + 32))(v1133, v334, v1156);
      v393 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      sub_10001C83C();
      v343 = v1174;
      sub_1000131DC();
      sub_1000B7D3C();
      v394 = v1172;
      sub_100051F44();
      sub_10003778C();
      sub_1000B7D3C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1000105CC();
        sub_10009EEC0(v318, v395);
        (*(v390 + 8))(v391, v392);
        sub_10012CD60();
        v397 = &OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
        goto LABEL_40;
      }

      v1173 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      if (*&v318[v394[9] + 8] == 1)
      {
        v518 = [objc_opt_self() currentDevice];
        [v518 userInterfaceIdiom];

        LOBYTE(v518) = v318[v394[7]];
        sub_1000105CC();
        sub_10009EEC0(v318, v519);
        v520 = v1169;
        v521 = v1170;
        v522 = v1092;
        if ((v518 & 1) == 0)
        {
          (*(v1132 + 8))(v1133, v392);
          goto LABEL_238;
        }
      }

      else
      {
        sub_1000105CC();
        sub_10009EEC0(v318, v762);
        v520 = v1169;
        v521 = v1170;
        v522 = v1092;
      }

      v1162 = v393;
      sub_100074CF0();
      sub_1000113EC();
      sub_1000B7D3C();
      v763 = v1091;
      sub_10089E774(v1091);
      sub_1000719A4();
      sub_10009EEC0(v392, v764);
      sub_100042230();
      if ((static Location.Identifier.== infix(_:_:)() & 1) == 0)
      {

        v847 = *(v1132 + 8);
        sub_1000113EC();
        v847();
        (v847)(&OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v392);
        goto LABEL_240;
      }

      v765 = sub_100003BCC(&v1102);
      sub_10001B350(v765, v766, v767, v1167);
      v768 = sub_100003BCC(&v1103);
      sub_10001B350(v768, v769, v770, v521);
      v771 = sub_100003BCC(&v1104);
      sub_10001B350(v771, v772, v773, v520);
      v774 = sub_100003BCC(&v1105);
      sub_10001B350(v774, v775, v776, v1171);
      v777 = sub_100003BCC(v1106);
      sub_10001B350(v777, v778, v779, v1175);
      v780 = sub_100003BCC(&v1107);
      sub_10001B350(v780, v781, v782, v1166);
      sub_10001C83C();
      sub_1000B7D3C();
      v783 = sub_100020EE4(&v1055);
      sub_1000AF5E4(v783, v784, v785);
      sub_10003778C();
      sub_100095588();
      sub_100003A40(v520);
      if (v341)
      {
        sub_100074CF0();
        v871 = v1173;
        sub_100020FE8();
        sub_1000B7D3C();
        sub_100003A40(v520);
        v870 = v1027;
        if (!v341)
        {
          sub_1000180EC(v520, &qword_100CA65B8, &unk_100A313D0);
        }
      }

      else
      {
        sub_1000046C0();
        sub_100020FE8();
        sub_100620EDC();
        v870 = v1027;
        v871 = v1173;
      }

      sub_1000046C0();
      sub_100032590();
      sub_100620EDC();
      v872 = *(v871 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
      v873 = *(v871 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
      v874 = *(v871 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger);
      v875 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v871);
      v876 = type metadata accessor for LocationViewerViewState._Storage(0);
      sub_100003B6C(v876);
      v877 = sub_10003DDB8(v763, v875, v872, v874, v873, 2);
      sub_1000180EC(v1034, &qword_100CA65B8, &unk_100A313D0);
      v878 = v1049;
      *v1049 = v877;
      v879 = v1163;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v880, v881, v882, v879);
      v883 = type metadata accessor for SearchViewState(0);
      v884 = sub_100003BCC(&v1109);
      sub_10001B350(v884, v885, v886, v883);
      v887 = sub_100003BCC(&v1110);
      sub_10001B350(v887, v888, v889, v1160);
      v890 = sub_100003BCC(v1111);
      sub_10001B350(v890, v891, v892, v1165);
      v893 = *v522;
      sub_1000131DC();
      sub_100095588();
      sub_100003A40(v878);
      if (v341)
      {
        sub_100051F44();
        sub_1000B7D3C();
        v894 = sub_100024D10(v878, 1, v879);

        v895 = v1031;
        if (v894 != 1)
        {
          sub_1000180EC(v878, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_10002490C();
        sub_100620EDC();

        v895 = v1031;
      }

      v896 = *(v522 + v394[6]);
      v897 = sub_1000B010C();
      sub_100095588();
      sub_100005404(v870);
      if (v341)
      {
        sub_100095588();
        sub_100005404(v870);
        v901 = v1030;
        if (!v341)
        {
          sub_1000180EC(v870, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_100021584();
        sub_1000519E0();
        sub_100620EDC();
        v898 = sub_1000A7CCC();
        sub_10001B350(v898, v899, v900, v883);
        v901 = v1030;
      }

      sub_1000870F8(&v1110);
      sub_100095588();
      v902 = sub_100007FC4();
      sub_10001627C(v902, v903);
      if (v341)
      {
        sub_100031E5C();
        sub_100087FF4(v904);
        sub_1000B7D3C();
        sub_100005404(v901);
        if (!v341)
        {
          sub_1000180EC(v901, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100022F24();
        sub_100620EDC();
      }

      sub_1000519E0();
      sub_100095588();
      v905 = sub_100007FC4();
      sub_10001627C(v905, v906);
      if (v341)
      {
        sub_10002FF74();
        sub_100087FF4(v907);
        sub_1000B7D3C();
        sub_100005404(v901);
        if (!v341)
        {
          sub_1000180EC(v901, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_100019BD0();
        sub_100620EDC();
      }

      v908 = v1092;
      v909 = *(v1092 + v394[11]);
      v910 = v1088;
      *v1088 = v893;
      sub_10002490C();
      sub_100620EDC();
      *(v910 + v394[6]) = v896;
      *(v910 + v394[7]) = v897 & 1;
      sub_100051BBC();
      sub_100022F24();
      sub_100620EDC();
      sub_100019BD0();
      sub_100620EDC();
      *(v910 + v394[11]) = v909;
      sub_1000180EC(v1090, &qword_100CA65F0, &unk_100A5C3F0);
      sub_1000180EC(v1089, &qword_100CA65F8, &dword_100A31420);
      v911 = sub_1000C893C(&v1109);
      sub_1000180EC(v911, v912, &unk_100A5C400);
      sub_1000180EC(v1049, &qword_100CA6608, &unk_100A31430);
      sub_1000105CC();
      sub_10009EEC0(v908, v913);
      v914 = sub_1000A7CCC();
      sub_10001B350(v914, v915, v916, v394);
      v917 = sub_100021088(v1066);
      sub_10001B350(v917, v918, v919, v1168);
      sub_100006378();
      sub_100021424();
      sub_1000B7D3C();
      sub_1000113EC();
      sub_100095588();
      sub_10000554C(&unk_100A5C400);
      if (v341)
      {
        sub_1000180EC(&unk_100A5C400, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100014B40();
        sub_10009EEC0(v895, v920);
        sub_10001F304();
        sub_100620EDC();
      }

      v921 = v1019;
      v922 = v1014;
      v923 = v1012;
      sub_10001F304();
      v925 = v924;
      sub_100620EDC();
      v926 = *(v343 + 16);
      LODWORD(v1169) = *(v343 + 24);
      sub_1000C893C(&v1102);
      sub_100095588();
      v927 = sub_10000C834();
      v928 = v1167;
      sub_1000038B4(v927, v929, v1167);
      v1170 = v926;
      if (v341)
      {
        sub_10000EC10();
        sub_1000B7D3C();
        v930 = sub_10000C834();
        v932 = v923;
        v933 = sub_100024D10(v930, v931, v928);

        v934 = v1020;
        if (v933 != 1)
        {
          sub_1000180EC(v932, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10002C8CC();
        sub_100620EDC();

        v934 = v1020;
      }

      sub_1000870F8(&v1103);
      sub_100095588();
      sub_100005404(v922);
      if (v341)
      {
        sub_10002014C(v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100020968();
        sub_1000B7D3C();
        sub_100005404(v922);
        v935 = v1025;
        v936 = v1016;
        if (!v341)
        {
          sub_1000180EC(v922, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10000CD2C();
        sub_100620EDC();
        v935 = v1025;
        v936 = v1016;
      }

      sub_1000C893C(&v1104);
      sub_100095588();
      sub_100003A40(v936);
      if (v341)
      {
        sub_10003C680();
        sub_1000B7D3C();
        sub_100003A40(v936);
        v937 = v1029;
        if (!v341)
        {
          sub_1000180EC(v936, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100017B7C();
        sub_100620EDC();
        v937 = v1029;
      }

      sub_100095588();
      v938 = sub_1000182B8();
      sub_1000038B4(v938, v939, v1171);
      if (v341)
      {
        sub_10006976C();
        sub_1000B7D3C();
        sub_10000554C(v921);
        if (!v341)
        {
          sub_1000180EC(v921, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100013A48();
        sub_100620EDC();
      }

      sub_100052378(v1106);
      sub_100095588();
      v940 = sub_100016298();
      sub_1000038B4(v940, v941, v1175);
      if (v341)
      {
        sub_100008AEC();
        sub_1000B7D3C();
        sub_10000554C(v934);
        v942 = v1032;
        if (!v341)
        {
          sub_1000180EC(v934, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10004E800();
        sub_100620EDC();
        v942 = v1032;
      }

      sub_1000436AC(&v1107);
      sub_100095588();
      sub_1000038B4(v935, 1, v1166);
      if (v341)
      {
        sub_100016C70();
        sub_1000B7D3C();
        sub_10000394C(v935);
        if (!v341)
        {
          sub_1000180EC(v935, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100049A3C();
        sub_100620EDC();
      }

      sub_1000C8B14(&v1108);
      sub_100095588();
      sub_100003BDC(v937);
      if (v341)
      {
        sub_10001C83C();
        sub_1000B7D3C();
        sub_100003BDC(v937);
        v943 = v942;
        if (!v341)
        {
          sub_1000180EC(v937, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100028844();
        sub_100620EDC();
        v943 = v942;
      }

      sub_10001F304();
      sub_10008889C(v925);
      v944 = (v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v945 = v343;
      v947 = *(v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v946 = v944[1];
      v949 = v944[2];
      v948 = v944[3];
      v950 = *(v945 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v952 = *(v945 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v951 = *(v945 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v953 = *(v945 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v954 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v954);
      LOBYTE(v998) = v950;
      sub_10003E038(v1170, v1169, v1050, v1051, v1052, v1053, v1046, v1054, v943, v937, v947, v946, v949, v948, v998, v952, v951, v953, v1000, v1001, v1002, v1003, v1004, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016);
      v343 = v955;

      sub_1000180EC(v1041, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v1088, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1087, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1086, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v1085, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1084, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v1083, &qword_100CA6638, &unk_100A31460);
      sub_1000180EC(v1082, &qword_100CA6640, qword_100A32640);
      v956 = *(v1132 + 8);
      sub_1000113EC();
      v956();
      v957 = sub_1000C8B14(&v1147);
      (v956)(v957);
      return v343;
    case 3u:
      v398 = sub_100003BCC(&v1164);
      sub_10001B350(v398, v399, v400, v1167);
      v401 = sub_100003BCC(&v1165);
      sub_10001B350(v401, v402, v403, v1170);
      v404 = sub_100003BCC(&v1166);
      sub_10001B350(v404, v405, v406, v1169);
      v407 = sub_100003BCC(&v1167);
      sub_10001B350(v407, v408, v409, v1171);
      sub_100008AEC();
      v1160 = v410;
      sub_1000131DC();
      sub_1000B7D3C();
      v411 = v1125;
      sub_100003934();
      v412 = v1157;
      sub_10001B350(v413, v414, v415, v1157);
      LODWORD(v1161) = *v318;
      v416 = *(v318 + 1);
      LODWORD(v1173) = v318[17];
      LODWORD(v1165) = v318[18];
      LODWORD(v1163) = v318[19];
      LODWORD(v1162) = v318[20];
      sub_100020FE8();
      sub_100051BBC();
      sub_10000394C(v411);
      if (v341)
      {
        v524 = v1175;
        v523 = v1131;
        (*(v1131 + 16))(v1135[0], &v318[v1175[11]], v412);
        v417 = sub_10000C834();
        v419 = sub_100024D10(v417, v418, v412);

        if (v419 != 1)
        {
          sub_1000180EC(v411, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        v523 = v1131;
        (*(v1131 + 32))(v1135[0], v411, v412);

        v524 = v1175;
      }

      v525 = v318[v524[12]];
      v526 = v318[v524[13]];
      v527 = v318[v1175[14]];
      v528 = v318[v1175[15]];
      sub_100044E24();
      v530 = v318[v529];
      v531 = v318;
      v533 = v318[v532];
      v534 = *(v531 + v1175[18]);
      sub_1000B0294(v531);
      v535 = v1146;
      *v1146 = v1161;
      *(v535 + 1) = v416;
      v535[16] = 1;
      v535[17] = v1173;
      v535[18] = v1165;
      v535[19] = v1163;
      v535[20] = v1162;
      (*(v523 + 32))(&v535[v1175[11]], v1135[0], v1157);
      v535[v1175[12]] = v525;
      v535[v1175[13]] = v526;
      v536 = v1175;
      v535[v1175[14]] = v527;
      v535[v536[15]] = v528;
      v535[v536[16]] = v530;
      v535[v536[17]] = v533;
      v535[v536[18]] = v534;
      sub_10000E7B0();
      sub_10001B350(v537, v538, v539, v536);
      v540 = sub_100003BCC(&v1172);
      sub_10001B350(v540, v541, v542, v1166);
      v543 = sub_100003BCC(&v1174);
      sub_10001B350(v543, v544, v545, v1172);
      v546 = sub_100020EE4(v1136);
      sub_10001B350(v546, v547, v548, v1168);
      sub_100006378();
      v549 = v1174;
      sub_100042230();
      sub_1000B7D3C();
      sub_10003778C();
      sub_100051BBC();
      sub_10000554C(v530);
      if (v341)
      {
        sub_1000180EC(v530, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100014B40();
        sub_10009EEC0(v534, v550);
        sub_10001F304();
        sub_100620EDC();
      }

      v551 = v1167;
      v552 = v1100;
      v553 = v1094;
      v554 = v1093;
      sub_10001F304();
      sub_100620EDC();
      v555 = *(v549 + 16);
      LODWORD(v1168) = *(v549 + 24);
      sub_1000C8EE0();
      sub_100005404(v554);
      v556 = v1171;
      v1173 = v555;
      if (v341)
      {
        sub_10000EC10();
        sub_1000B7D3C();
        v557 = sub_100024D10(v554, 1, v551);

        if (v557 != 1)
        {
          sub_1000180EC(v554, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10002C8CC();
        sub_100620EDC();
      }

      sub_100051BBC();
      sub_1000038B4(v553, 1, v1170);
      if (v341)
      {
        sub_10002014C(v549 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100020968();
        sub_1000B7D3C();
        sub_100003BDC(v553);
        v558 = v1096;
        if (!v341)
        {
          sub_1000180EC(v553, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10000CD2C();
        sub_100620EDC();
        v558 = v1096;
      }

      sub_100037814();
      sub_100051BBC();
      sub_100005404(v553);
      if (v341)
      {
        sub_10003C680();
        sub_1000B7D3C();
        sub_100005404(v553);
        v559 = v1103;
        if (!v341)
        {
          sub_1000180EC(v553, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100017B7C();
        sub_100620EDC();
        v559 = v1103;
      }

      sub_1000C8EE0();
      sub_10000C814(v558);
      if (v341)
      {
        sub_10006976C();
        sub_1000B7D3C();
        sub_10000C814(v558);
        if (!v341)
        {
          sub_1000180EC(v558, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100013A48();
        sub_100620EDC();
      }

      sub_100042230();
      sub_100051BBC();
      v560 = sub_1000182B8();
      sub_1000038B4(v560, v561, v536);
      if (v341)
      {
        sub_100008AEC();
        sub_1000B7D3C();
        v562 = sub_1000182B8();
        sub_1000038B4(v562, v563, v536);
        if (!v341)
        {
          sub_1000180EC(v556, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10004E800();
        sub_100620EDC();
      }

      sub_1000C893C(&v1172);
      sub_100051BBC();
      sub_100003A40(v552);
      if (v341)
      {
        sub_100016C70();
        sub_1000B7D3C();
        sub_100003A40(v552);
        if (!v341)
        {
          sub_1000180EC(v552, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100049A3C();
        sub_100620EDC();
      }

      sub_1000436AC(&v1174);
      sub_100051BBC();
      sub_100003BFC(v559);
      if (v341)
      {
        sub_10001C83C();
        sub_1000B7D3C();
        sub_100003BFC(v559);
        if (!v341)
        {
          sub_1000180EC(v559, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100028844();
        sub_100021CEC();
        sub_100620EDC();
      }

      sub_10001F304();
      sub_10008889C(v1135[2]);
      sub_10001327C();
      sub_1000BCED8();
      v564 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v564);
      v565 = sub_100030540();
      v566 = v1168;
      v567 = v1136[0];
      v568 = v1136[1];
      v569 = v1137[1];
      v570 = v1137[2];
      v571 = v1135[1];
      v572 = v1154;
      goto LABEL_230;
    case 4u:
      sub_1000161C0(v1154[0] + 2, v1154[0][5]);
      v342 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      sub_10001C83C();
      v343 = v1174;
      sub_1000131DC();
      sub_1000B7D3C();
      v344 = v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      v345 = *(v344 + 1);
      v346 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications;
      v347 = *(v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
      v348 = v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
      v349 = v1175;
      v350 = *(v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v1175[15]);
      v351 = *(v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v1175[18]);
      v352 = *(v344 + 2);
      v353 = *(v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v1175[16]);
      v354 = *(v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn + v1175[17]);
      v355 = v1127;
      *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + *(v1127 + 20)) = 0;
      *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + v355[6]) = v345;
      *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + v355[7]) = v347;
      *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + v355[8]) = v352;
      *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + v355[9]) = v350;
      *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + v355[10]) = v351;
      *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + v355[11]) = v353;
      *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + v355[12]) = v354;
      v356 = sub_1007274D0(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      sub_10009EEC0(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, type metadata accessor for NotificationsOptInInput);
      if (v356 > 1u)
      {
        goto LABEL_240;
      }

      active = v344;
      v1159 = v342;
      v357 = v356 >> 8;
      type metadata accessor for NotificationsOptInViewState._Storage();
      v358 = swift_allocObject();
      *(v358 + 16) = v356;
      *(v358 + 18) = BYTE2(v356) & 1;
      *(v358 + 21) = BYTE5(v356);
      *(v358 + 19) = v356 >> 24;
      *(v358 + 22) = BYTE6(v356) & 1;
      v359 = sub_100003BCC(&v1112);
      sub_10001B350(v359, v360, v361, v1167);
      v362 = sub_100003BCC(&v1114);
      sub_10001B350(v362, v363, v364, v1170);
      v365 = sub_100003BCC(&v1116);
      sub_10001B350(v365, v366, v367, v1169);
      v368 = sub_100003BCC(&v1118);
      sub_10001B350(v368, v369, v370, v1171);
      sub_100008AEC();
      sub_1000325C0();
      sub_1000B7D3C();
      v371 = sub_100021088(&v1087);
      v372 = v1157;
      sub_10001B350(v371, v373, v374, v1157);
      LODWORD(v1160) = *v307;
      v1173 = *(v307 + 1);
      v375 = v307[17];
      v376 = v307[18];
      LODWORD(v1162) = v307[19];
      LODWORD(v1161) = v307[20];
      sub_100042230();
      sub_100051BBC();
      sub_10000394C(v356 >> 8);
      v1158 = v348;
      v1156 = v346;
      LODWORD(v1165) = v375;
      LODWORD(v1163) = v376;
      if (v341)
      {
        v716 = v1131;
        v717 = v1067[0];
        (*(v1131 + 16))(v1067[0], &v307[v349[11]], v372);
        v377 = sub_1000182B8();
        v379 = sub_100024D10(v377, v378, v372);

        if (v379 != 1)
        {
          sub_1000180EC(v357, &unk_100CB2CF0, &unk_100A2D7F0);
        }
      }

      else
      {
        v716 = v1131;
        v717 = v1067[0];
        (*(v1131 + 32))(v1067[0], v357, v372);
      }

      v718 = v307[v349[12]];
      v719 = v307[v349[13]];
      v720 = v307;
      v721 = v307[v349[14]];
      v722 = v720[v349[15]];
      sub_100044E24();
      v725 = *(v723 + v724);
      v727 = *(v723 + v726);
      sub_1000B0294(v723);
      v728 = v1098;
      *v1098 = v1160;
      *(v728 + 1) = v1173;
      v728[16] = 0;
      v728[17] = v1165;
      v728[18] = v1163;
      v728[19] = v1162;
      v728[20] = v1161;
      (*(v716 + 32))(&v728[v1175[11]], v717, v1157);
      v728[v1175[12]] = v718;
      v728[v1175[13]] = v719;
      v728[v1175[14]] = v721;
      v728[v1175[15]] = v722;
      v729 = v1175;
      v728[v1175[16]] = v725;
      v728[v729[17]] = v727;
      v728[v729[18]] = 0;
      sub_10000E7B0();
      sub_10001B350(v730, v731, v732, v729);
      v733 = sub_100003BCC(&v1123);
      sub_10001B350(v733, v734, v735, v1166);
      v736 = sub_100003BCC(v1124);
      sub_10001B350(v736, v737, v738, v1172);
      v739 = v1055;
      *v1055 = v358;
      v740 = v1168;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v741, v742, v743, v740);
      sub_100006378();
      v744 = v1174;
      sub_1000131DC();
      sub_1000B7D3C();
      sub_10003778C();
      sub_100051BBC();
      sub_10000554C(v739);
      if (v341)
      {
        sub_1000180EC(v739, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100014B40();
        sub_10009EEC0(v718, v745);
        sub_10001F304();
        sub_100620EDC();
      }

      v746 = v1072;
      v747 = v1067[1];
      v748 = v1060;
      v749 = v1058;
      sub_10001F304();
      sub_100620EDC();
      v750 = *(v744 + 16);
      LODWORD(v1168) = *(v744 + 24);
      sub_100051BBC();
      v751 = v1167;
      sub_1000038B4(v749, 1, v1167);
      v1173 = v750;
      if (v341)
      {
        sub_10000EC10();
        sub_1000B7D3C();
        v752 = sub_100024D10(v749, 1, v751);

        v341 = v752 == 1;
        v753 = v1170;
        if (!v341)
        {
          sub_1000180EC(v749, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10002C8CC();
        sub_100620EDC();

        v753 = v1170;
      }

      sub_100052378(&v1114);
      sub_100051BBC();
      sub_100003BFC(v748);
      if (v341)
      {
        sub_100020968();
        sub_1000B7D3C();
        sub_100003BFC(v748);
        if (!v341)
        {
          sub_1000180EC(v748, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10000CD2C();
        sub_100620EDC();
      }

      sub_1000131DC();
      sub_100051BBC();
      sub_1000038B4(v753, 1, v1169);
      if (v341)
      {
        sub_10003C680();
        sub_1000B7D3C();
        sub_10000394C(v753);
        v754 = v1069;
        if (!v341)
        {
          sub_1000180EC(v753, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100017B7C();
        sub_100620EDC();
        v754 = v1069;
      }

      sub_1000436AC(&v1118);
      sub_100051BBC();
      sub_100003BDC(v747);
      if (v341)
      {
        sub_10006976C();
        sub_1000B7D3C();
        sub_100003BDC(v747);
        v755 = v1108;
        if (!v341)
        {
          sub_1000180EC(v747, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100013A48();
        sub_100620EDC();
        v755 = v1108;
      }

      sub_100052378(&v1120);
      sub_100051BBC();
      v756 = sub_100016298();
      sub_1000038B4(v756, v757, v729);
      if (v341)
      {
        sub_100008AEC();
        sub_1000B7D3C();
        v758 = sub_100016298();
        sub_1000038B4(v758, v759, v729);
        v760 = v1074;
        if (!v341)
        {
          sub_1000180EC(v754, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10004E800();
        sub_100620EDC();
        v760 = v1074;
      }

      sub_1000C893C(&v1123);
      sub_100051BBC();
      sub_100003A40(v746);
      if (v341)
      {
        sub_100016C70();
        sub_1000B7D3C();
        sub_100003A40(v746);
        if (!v341)
        {
          sub_1000180EC(v746, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100049A3C();
        sub_100620EDC();
      }

      sub_1000436AC(v1124);
      sub_100051BBC();
      sub_100003BFC(v760);
      if (v341)
      {
        sub_10001C83C();
        sub_1000B7D3C();
        sub_100003BFC(v760);
        if (!v341)
        {
          sub_1000180EC(v760, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100028844();
        sub_100021CEC();
        sub_100620EDC();
      }

      sub_10001F304();
      sub_10008889C(v755);
      sub_10001327C();
      sub_1000BCED8();
      v761 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v761);
      v565 = sub_100030540();
      v566 = v1168;
      v567 = v1111[0];
      v568 = v1111[1];
      v569 = v1111[4];
      v570 = v1115[1];
      v571 = v1102;
      v572 = &v1128;
      goto LABEL_230;
    case 5u:
      sub_100006378();
      v343 = v1174;
      sub_1000B7D3C();
      v464 = v1130;
      swift_storeEnumTagMultiPayload();
      sub_1000BC008();
      v466 = v465;
      sub_10009EEC0(v464, type metadata accessor for ModalViewState);
      v467 = sub_100021CEC();
      sub_10009EEC0(v467, v468);
      if ((v466 & 1) == 0)
      {
        if (qword_100CA26B0 != -1)
        {
          swift_once();
        }

        v668 = type metadata accessor for Logger();
        sub_10000703C(v668, qword_100D90A78);
        v669 = Logger.logObject.getter();
        v670 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v669, v670))
        {
          v671 = swift_slowAlloc();
          *v671 = 0;
          _os_log_impl(&_mh_execute_header, v669, v670, "Trying to dismiss Location Viewer while modal view is presented, aborting dismissal.", v671, 2u);
        }

        goto LABEL_240;
      }

      v469 = sub_100003BCC(v1115);
      sub_10001B350(v469, v470, v471, v1167);
      v472 = sub_100003BCC(&v1117);
      sub_10001B350(v472, v473, v474, v1170);
      v475 = sub_100003BCC(&v1119);
      sub_10001B350(v475, v476, v477, v1169);
      v478 = sub_100003BCC(v1121);
      sub_10001B350(v478, v479, v480, v1171);
      v481 = sub_100003BCC(&v1122);
      sub_10001B350(v481, v482, v483, v1175);
      v484 = sub_100003BCC(&v1125);
      sub_10001B350(v484, v485, v486, v1166);
      sub_10001C83C();
      v1162 = v487;
      sub_1000519E0();
      sub_1000B7D3C();
      sub_100074CF0();
      sub_100021424();
      sub_1000B7D3C();
      v488 = sub_1000E0924();
      v490 = v489;
      sub_1000719A4();
      sub_10009EEC0(v464, v491);
      type metadata accessor for ListViewState._Storage();
      swift_allocObject();
      sub_10000E7B0();
      v495 = sub_100042DA8(v492, v493, v494, 0, 0, 0, 0xE000000000000000, 0, 0, 0, v488, v490, 1, 0);
      sub_100003934();
      v496 = v1163;
      sub_10001B350(v497, v498, v499, v1163);
      v500 = type metadata accessor for SearchViewState(0);
      v501 = sub_100003BCC(v1126);
      sub_10001B350(v501, v502, v503, v500);
      sub_100003934();
      sub_10001B350(v504, v505, v506, v1160);
      v507 = v1080;
      sub_100003934();
      sub_10001B350(v508, v509, v510, v1165);
      sub_1000325C0();
      sub_100051BBC();
      sub_100005404(v307);
      if (v341)
      {
        v786 = v1172;
        sub_100051F44();
        sub_1000B7D3C();
        v511 = sub_100024D10(v307, 1, v496);

        v787 = v1077;
        if (v511 != 1)
        {
          sub_1000180EC(v307, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_10002490C();
        sub_100620EDC();

        v786 = v1172;
        v787 = v1077;
      }

      v788 = *(v1134 + v786[6]);
      sub_1000870F8(v1126);
      sub_100051BBC();
      sub_100003A40(v787);
      if (v341)
      {
        sub_100095588();
        sub_100003A40(v787);
        v789 = v787;
        v793 = v1079;
        v794 = v1073;
        if (!v341)
        {
          sub_1000180EC(v789, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_100021584();
        sub_100021424();
        sub_100620EDC();
        sub_10000E7B0();
        sub_10001B350(v790, v791, v792, v500);
        v793 = v1079;
        v794 = v1073;
      }

      sub_100051BBC();
      v795 = sub_100007FC4();
      sub_1000038B4(v795, v796, v1160);
      if (v341)
      {
        sub_100031E5C();
        sub_100087FF4(v797);
        sub_1000B7D3C();
        sub_10000394C(v793);
        if (!v341)
        {
          sub_1000180EC(v793, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100022F24();
        sub_100620EDC();
      }

      sub_100032590();
      sub_100051BBC();
      sub_100003A40(v507);
      if (v341)
      {
        sub_10002FF74();
        sub_100087FF4(v798);
        sub_1000B7D3C();
        sub_100003A40(v507);
        v799 = v1076;
        if (!v341)
        {
          sub_1000180EC(v507, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_100019BD0();
        sub_100620EDC();
        v799 = v1076;
      }

      v800 = *(v1134 + v786[11]);
      sub_1000105CC();
      sub_10009EEC0(v801, v802);
      *v799 = v495;
      sub_10002490C();
      sub_100620EDC();
      *(v799 + v786[6]) = v788;
      *(v799 + v786[7]) = 0;
      sub_100051BBC();
      sub_100022F24();
      sub_100620EDC();
      sub_100019BD0();
      sub_100620EDC();

      *(v799 + v786[11]) = v800;
      v803 = sub_1000A7CCC();
      sub_10001B350(v803, v804, v805, v786);
      v806 = sub_100021088(v1081);
      sub_10001B350(v806, v807, v808, v1168);
      sub_100006378();
      sub_1000B7D3C();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v800);
      if (v341)
      {
        sub_1000180EC(v800, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100014B40();
        sub_10009EEC0(v794, v809);
        sub_10001F304();
        sub_100620EDC();
      }

      v810 = v1075;
      v811 = v1071;
      v812 = v1070;
      v813 = v1061;
      sub_10001F304();
      sub_100620EDC();
      v814 = *(v343 + 16);
      LODWORD(v1170) = *(v343 + 24);
      sub_100052378(v1115);
      sub_100051BBC();
      v815 = sub_100016298();
      v816 = v1167;
      sub_10001627C(v815, v817);
      v1173 = v814;
      if (v341)
      {
        sub_10000EC10();
        sub_1000B7D3C();
        v818 = sub_100016298();
        v820 = sub_100024D10(v818, v819, v816);

        v821 = v1068;
        if (v820 != 1)
        {
          sub_1000180EC(v813, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10002C8CC();
        sub_100620EDC();

        v821 = v1068;
      }

      sub_100021424();
      sub_100051BBC();
      sub_100003A40(v813);
      if (v341)
      {
        sub_10002014C(v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100020968();
        sub_1000B7D3C();
        sub_100003A40(v813);
        v822 = v1078;
        if (!v341)
        {
          sub_1000180EC(v813, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10000CD2C();
        sub_100620EDC();
        v822 = v1078;
      }

      sub_1000C8EE0();
      sub_100003A40(v821);
      if (v341)
      {
        sub_10003C680();
        sub_1000B7D3C();
        sub_100003A40(v821);
        if (!v341)
        {
          sub_1000180EC(v821, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100017B7C();
        sub_100620EDC();
      }

      sub_100051BBC();
      sub_1000038B4(v812, 1, v1171);
      if (v341)
      {
        sub_10006976C();
        sub_1000B7D3C();
        sub_100003BDC(v812);
        if (!v341)
        {
          sub_1000180EC(v812, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100013A48();
        sub_100620EDC();
      }

      sub_100051BBC();
      sub_100003BDC(v811);
      if (v341)
      {
        sub_100008AEC();
        sub_1000B7D3C();
        sub_100003BDC(v811);
        if (!v341)
        {
          sub_1000180EC(v811, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10004E800();
        sub_100620EDC();
      }

      sub_1000C893C(&v1125);
      sub_100051BBC();
      sub_10000394C(v810);
      if (v341)
      {
        sub_100016C70();
        sub_1000B7D3C();
        sub_10000394C(v810);
        if (!v341)
        {
          sub_1000180EC(v810, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100049A3C();
        sub_100620EDC();
      }

      sub_100051BBC();
      sub_10000C814(v822);
      if (v341)
      {
        sub_10001C83C();
        sub_1000B7D3C();
        sub_10000C814(v822);
        if (!v341)
        {
          sub_1000180EC(v822, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100028844();
        sub_100021CEC();
        sub_100620EDC();
      }

      sub_10001F304();
      sub_10008889C(v1111[3]);
      sub_10001327C();
      sub_1000BCED8();
      v823 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v823);
      v565 = sub_100030540();
      v566 = v1170;
      v567 = v1116;
      v568 = v1118;
      v569 = v1120;
      v570 = v1121[1];
      v571 = v1107;
      v572 = v1135;
LABEL_230:
      sub_10003E038(v565, v566, v567, v568, v569, v570, v571, *(v572 - 32), v1000, v1001, v1002, v1003, v1004, v1005, v1006, v1007, v1008, v1009, v1010, *(&v1010 + 1), v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1021, v1022, v1023, v1024, v1025);
      v343 = v824;

      goto LABEL_231;
    case 6u:
      sub_10022C350(&qword_100CA6660, &unk_100A41280);
      v386 = v1129;
      v512 = sub_10000C834();
      sub_10001B350(v512, v513, 3, v514);
      v387 = v386;
      v388 = v1161;
      v389 = v1174;
      goto LABEL_37;
    case 7u:
      sub_100003934();
      sub_10001B350(v420, v421, v422, active);
      sub_100051BBC();
      sub_10000554C(v315);
      if (v341)
      {
        sub_100074CF0();
        v575 = v1161;
        sub_1000B7D3C();
        sub_10000554C(v315);
        v573 = v1174;
        v574 = v1168;
        if (!v341)
        {
          sub_1000180EC(v315, &qword_100CA65B8, &unk_100A313D0);
        }
      }

      else
      {
        sub_1000046C0();
        sub_100620EDC();
        v573 = v1174;
        v574 = v1168;
        v575 = v1161;
      }

      v576 = *(v575 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
      v577 = *(v575 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
      v578 = type metadata accessor for LocationViewerViewState._Storage(0);
      sub_100003B6C(v578);
      sub_1000C85E8(v303, 0, v576);
      v579 = sub_100021088(&v1179);
      sub_10001B350(v579, v580, v581, v574);
      v582 = sub_100003940();
      v343 = sub_10061D0E8(v582, v583, v573);

      v584 = &qword_100CA65E8;
      v585 = &unk_100A31410;
      v586 = v577;
      goto LABEL_77;
    case 8u:
      sub_10001C83C();
      v343 = v1174;
      sub_100021424();
      sub_1000B7D3C();
      v515 = v1172;
      sub_100051F44();
      sub_100020FE8();
      sub_1000B7D3C();
      v516 = v1163;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v672 = *v330;
        if (*(v325 + *(v515 + 36) + 8) == 1)
        {
          v673 = [objc_opt_self() currentDevice];
          [v673 userInterfaceIdiom];

          LOBYTE(v673) = *(v325 + *(v515 + 28));
          sub_1000105CC();
          sub_10009EEC0(v325, v674);
          v675 = v1166;
          v676 = v1171;
          v677 = v1175;
          if ((v673 & 1) == 0)
          {
            goto LABEL_238;
          }
        }

        else
        {
          sub_1000105CC();
          sub_10009EEC0(v325, v825);
          v675 = v1166;
          v676 = v1171;
          v677 = v1175;
        }

        if (*(v672 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState) == 1)
        {
          v826 = sub_100003BCC(&v1058);
          sub_10001B350(v826, v827, v828, v1167);
          v829 = sub_100003BCC(v1059);
          sub_10001B350(v829, v830, v831, v1170);
          v832 = sub_100003BCC(&v1061);
          sub_10001B350(v832, v833, v834, v1169);
          v835 = sub_100003BCC(v1062);
          sub_10001B350(v835, v836, v837, v676);
          v838 = sub_100003BCC(v1063);
          sub_10001B350(v838, v839, v840, v677);
          v841 = sub_100003BCC(v1065);
          sub_10001B350(v841, v842, v843, v675);
          sub_10001C83C();
          sub_1000B7D3C();
          v844 = sub_100020EE4(&v1054);
          sub_1000AF5E4(v844, v845, v846);
          sub_100021424();
          sub_100095588();
          sub_100003A40(v675);
          if (v341)
          {
            sub_100074CF0();
            sub_10003778C();
            sub_1000B7D3C();
            sub_100003A40(v675);
            v958 = v1026;
            if (!v341)
            {
              sub_1000180EC(v675, &qword_100CA65B8, &unk_100A313D0);
            }
          }

          else
          {
            sub_1000046C0();
            sub_10003778C();
            sub_100620EDC();
            v958 = v1026;
          }

          sub_1000046C0();
          sub_100042230();
          sub_100620EDC();
          v959 = *(v672 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
          v960 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v672);
          v961 = type metadata accessor for LocationViewerViewState._Storage(0);
          sub_100003B6C(v961);
          v962 = sub_1000C85E8(&OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v960, 0);
          sub_1000180EC(v1033, &qword_100CA65B8, &unk_100A313D0);
          v963 = v1022;
          *v1022 = v962;
          swift_storeEnumTagMultiPayload();
          sub_10000E7B0();
          sub_10001B350(v964, v965, v966, v516);
          type metadata accessor for SearchViewState(0);
          v967 = v1023;
          sub_100003934();
          sub_10001B350(v968, v969, v970, v971);
          v972 = sub_100020EE4(v1048);
          sub_10001B350(v972, v973, v974, v1160);
          sub_100003934();
          sub_10001B350(v975, v976, v977, v1165);
          v978 = v1017;
          v979 = v1043;
          sub_10081B470();
          sub_1000180EC(v958, &qword_100CA65F0, &unk_100A5C3F0);
          sub_1000180EC(v959, &qword_100CA65F8, &dword_100A31420);
          sub_1000180EC(v967, &qword_100CA6600, &unk_100A5C400);
          sub_1000180EC(v963, &qword_100CA6608, &unk_100A31430);
          sub_1000105CC();
          sub_10009EEC0(v979, v980);
          v981 = sub_1000A7CCC();
          sub_10001B350(v981, v982, v983, v515);
          v984 = v1154[1];
          sub_100003934();
          sub_10001B350(v985, v986, v987, v1168);
          v988 = v1035;
          v989 = v1036;
          v990 = v1037;
          v991 = v1038;
          v992 = v1039;
          v993 = v1040;
          v343 = sub_1000D2C20(0, 3u, v1035, v1036, v1037, v1038, v1039, v1040, v978, v984, 0, 0, 0, 0, 0, 0, 0, 0, v343);

          sub_1000180EC(v984, &qword_100CA65E8, &unk_100A31410);
          sub_1000180EC(v978, &qword_100CA6610, &unk_100A32610);
          sub_1000180EC(v993, &qword_100CA6618, &unk_100A31440);
          sub_1000180EC(v992, &qword_100CA6620, &unk_100A32620);
          sub_1000180EC(v991, &qword_100CA6628, &unk_100A31450);
          sub_1000180EC(v990, &qword_100CA6630, &unk_100A32630);
          sub_1000180EC(v989, &qword_100CA6638, &unk_100A31460);
          v584 = &qword_100CA6640;
          v585 = qword_100A32640;
          v586 = v988;
LABEL_77:
          sub_1000180EC(v586, v584, v585);
          return v343;
        }

LABEL_238:

        goto LABEL_240;
      }

      sub_1000105CC();
      sub_10009EEC0(v325, v517);
      sub_10012CD60();
      v397 = v330;
LABEL_40:
      sub_10009EEC0(v397, v396);
LABEL_240:

      return v343;
    case 9u:
      if (qword_100CA24D0 != -1)
      {
        swift_once();
      }

      v343 = v1174;
      v380 = v1172;
      if ((byte_100D90788 & 1) == 0)
      {
        goto LABEL_240;
      }

      v381 = v1174 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      sub_100031E5C();
      sub_10003778C();
      sub_1000B7D3C();
      v382 = sub_1004B5684();
      sub_10009EEC0(v334, type metadata accessor for DisplayMetrics);
      v383 = v1171;
      v384 = v1175;
      if ((v382 & 1) != 0 || (*(v381 + *(v380 + 40) + 1) & 0xC0) != 0x40)
      {
        v1173 = v381;
        v678 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
        sub_100006378();
        v679 = v1164;
        sub_1000B7D3C();
        type metadata accessor for ModalViewState.MapViewModal(0);
        v680 = v1130;
        sub_100003934();
        sub_10001B350(v681, v682, v683, v684);
        v685 = v1168;
        swift_storeEnumTagMultiPayload();
        sub_1000BC008();
        v687 = v686;
        sub_10009EEC0(v680, type metadata accessor for ModalViewState);
        sub_10009EEC0(v679, type metadata accessor for ModalViewState);
        if ((v687 & 1) == 0)
        {
          goto LABEL_240;
        }

        v688 = sub_100003BCC(v1056);
        v689 = v1167;
        sub_10001B350(v688, v690, v691, v1167);
        v692 = sub_100003BCC(v1057);
        sub_10001B350(v692, v693, v694, v1170);
        v695 = sub_100003BCC(&v1060);
        sub_10001B350(v695, v696, v697, v1169);
        v698 = sub_100021088(&v1036);
        sub_10001B350(v698, v699, v700, v383);
        v701 = sub_100003BCC(v1064);
        sub_10001B350(v701, v702, v703, v384);
        v704 = sub_100003BCC(v1067);
        sub_10001B350(v704, v705, v706, v1166);
        v707 = sub_100003BCC(&v1068);
        sub_10001B350(v707, v708, v709, v380);
        v710 = v1005;
        swift_storeEnumTagMultiPayload();
        v711 = sub_1000A7CCC();
        sub_10001B350(v711, v712, v713, v685);
        sub_100006378();
        sub_100021424();
        sub_1000B7D3C();
        sub_1000519E0();
        sub_100051BBC();
        v714 = sub_100007FC4();
        sub_1000038B4(v714, v715, v685);
        if (v341)
        {
          sub_1000180EC(v710, &qword_100CA65E8, &unk_100A31410);
        }

        else
        {
          sub_100014B40();
          sub_10009EEC0(v678, v849);
          sub_10001F304();
          sub_100620EDC();
        }

        v850 = v1008;
        sub_10001F304();
        sub_100620EDC();
        v851 = *(v343 + 16);
        LODWORD(v1165) = *(v343 + 24);
        sub_100021424();
        sub_100051BBC();
        sub_10000C814(v678);
        v1168 = v851;
        if (v341)
        {
          sub_10000EC10();
          sub_1000B7D3C();
          v852 = sub_100016298();
          v854 = sub_100024D10(v852, v853, v689);
          v855 = v678;
          v856 = v854;

          if (v856 != 1)
          {
            sub_1000180EC(v855, &qword_100CA6640, qword_100A32640);
          }
        }

        else
        {
          sub_10002C8CC();
          sub_100620EDC();
        }

        sub_100051BBC();
        sub_1000038B4(v850, 1, v1170);
        if (v341)
        {
          sub_10002014C(v343 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
          sub_100020968();
          sub_1000B7D3C();
          sub_10000C814(v850);
          v857 = *(&v1019 + 1);
          v858 = v1018;
          if (!v341)
          {
            sub_1000180EC(v850, &qword_100CA6638, &unk_100A31460);
          }
        }

        else
        {
          sub_10000CD2C();
          sub_100620EDC();
          v857 = *(&v1019 + 1);
          v858 = v1018;
        }

        sub_100032590();
        sub_100051BBC();
        sub_100005404(v850);
        if (v341)
        {
          sub_10003C680();
          sub_1000B7D3C();
          sub_100005404(v850);
          v859 = v1028;
          if (!v341)
          {
            sub_1000180EC(v850, &qword_100CA6630, &unk_100A32630);
          }
        }

        else
        {
          sub_100017B7C();
          sub_100620EDC();
          v859 = v1028;
        }

        sub_1000113EC();
        sub_100051BBC();
        sub_100003BDC(v687);
        if (v341)
        {
          sub_10006976C();
          sub_1000B7D3C();
          sub_100003BDC(v687);
          v860 = v1166;
          if (!v341)
          {
            sub_1000180EC(v687, &qword_100CA6628, &unk_100A31450);
          }
        }

        else
        {
          sub_100013A48();
          sub_100620EDC();
          v860 = v1166;
        }

        sub_1000325C0();
        sub_100051BBC();
        sub_10000554C(v383);
        if (v341)
        {
          sub_100008AEC();
          sub_1000B7D3C();
          sub_10000554C(v383);
          if (!v341)
          {
            sub_1000180EC(v383, &qword_100CA6620, &unk_100A32620);
          }
        }

        else
        {
          sub_10004E800();
          sub_100620EDC();
        }

        sub_100051BBC();
        v861 = sub_1000182B8();
        sub_1000038B4(v861, v862, v860);
        if (v341)
        {
          sub_100016C70();
          sub_1000B7D3C();
          v863 = sub_1000182B8();
          sub_1000038B4(v863, v864, v860);
          if (!v341)
          {
            sub_1000180EC(v858, &qword_100CA6618, &unk_100A31440);
          }
        }

        else
        {
          sub_100049A3C();
          sub_100620EDC();
        }

        sub_100052378(&v1068);
        sub_100051BBC();
        sub_100003BFC(v857);
        if (v341)
        {
          sub_10001C83C();
          sub_1000B7D3C();
          sub_100003BFC(v857);
          v865 = v859;
          if (!v341)
          {
            sub_1000180EC(v857, &qword_100CA6610, &unk_100A32610);
          }
        }

        else
        {
          sub_100028844();
          sub_100620EDC();
          v865 = v859;
        }

        sub_10001F304();
        v866 = v1164;
        sub_100620EDC();
        sub_10001327C();
        sub_1000BCED8();
        v868 = *(v867 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
        v869 = type metadata accessor for MainState._Storage(0);
        sub_100003B6C(v869);
        sub_100071D94();
        sub_10003E038(v1168, v1165, v1044, v1045, v1047, v1048[0], v1042, v1048[1], v865, v866, v994, v995, v996, v997, v998, v999, v857, v868, v1000, v1001, v1002, v1003, v1004, v1005, v1006, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016);
LABEL_135:
        v343 = v667;

LABEL_231:
      }

      else
      {
        v385 = sub_10022C350(&qword_100CA6660, &unk_100A41280);
        v386 = v1129;
        sub_10001B350(v1129, 2, 3, v385);
        v387 = v386;
        v388 = v1161;
        v389 = v343;
LABEL_37:
        v343 = sub_10061EA14(v387, v388, v389, v1154[0], v1173);
        sub_10009EEC0(v386, type metadata accessor for WeatherMapTrackingState);
      }

      return v343;
    default:
      (*(v1144 + 32))(v330, v334, v325);
      LocationModel.identifier.getter();
      sub_10000E7B0();
      sub_10001B350(v335, v336, v337, v1156);
      sub_10000E7B0();
      sub_1000AF5E4(v338, v339, v340);
      sub_100051BBC();
      sub_100003A40(v321);
      if (v341)
      {
        sub_100074CF0();
        v588 = v1161;
        sub_1000B7D3C();
        sub_100003A40(v321);
        v587 = v1174;
        if (!v341)
        {
          sub_1000180EC(v321, &qword_100CA65B8, &unk_100A313D0);
        }
      }

      else
      {
        sub_1000046C0();
        sub_100620EDC();
        v587 = v1174;
        v588 = v1161;
      }

      v589 = *(v588 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
      v590 = *(v588 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
      v591 = *(v588 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
      v592 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v588);
      v593 = type metadata accessor for LocationViewerViewState._Storage(0);
      sub_100003B6C(v593);
      v594 = sub_10003DDB8(v307, v592, v589, 1, v590, v591);
      v595 = sub_100020EE4(&v1179);
      sub_10001B350(v595, v596, v597, v1168);
      v343 = sub_10061D0E8(v594, v590, v587);

      sub_1000180EC(v590, &qword_100CA65E8, &unk_100A31410);
      (*(v1144 + 8))(v330, v325);
      return v343;
  }
}

void sub_1000B7B40(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{
  v6 = *(v3 + 2256);

  _os_log_impl(a1, v6, a3, a2, v4, 0x16u);
}

uint64_t sub_1000B7BA4()
{

  return swift_unknownObjectRelease();
}

void *sub_1000B7BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a2 - 256);
  *v2 = a1;
  return v2;
}

uint64_t sub_1000B7C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 224);

  return sub_10001B350(a1, a2, a3, v5);
}

uint64_t type metadata accessor for NotificationsOptInInput(uint64_t a1)
{
  result = qword_100CCBA48;
  if (!qword_100CCBA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B7C90(uint64_t a1)
{
  result = type metadata accessor for ViewState(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000B7D3C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000B7D94()
{
  result = sub_1000B7DB8();
  byte_100D90788 = result & 1;
  return result;
}

uint64_t sub_1000B7DB8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 != 1 || (DeviceIsSlow() & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for MapsExperiments();
  return static MapsExperiments.isPinnedMapEnabledOnIpad.getter() & 1;
}

void sub_1000B7E38()
{
  v1 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for BannerStateComputer(0);
  v8 = *(v0 + *(v7 + 20));
  v9 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  if (*(v8 + v9 + *(type metadata accessor for ViewState(0) + 36) + 8) == 1 && *(v0 + *(v7 + 28)) == 1)
  {
    v10 = v8 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    if (*(v10 + *(type metadata accessor for EnvironmentState(0) + 68)))
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v12 = type metadata accessor for ContentStatusBanner(0);
    sub_10087ECB4(&v6[*(v12 + 24)]);
    *v6 = v11;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    sub_10001B350(v6, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for ContentStatusBanner(0);
    sub_10001B350(v3, 1, 1, v13);
  }

  sub_1000B8080();
}

uint64_t sub_1000B7FF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 16) = (a2 + 1);
  }

  else
  {
    v7 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

void sub_1000B8080()
{
  sub_100022B34();
  v2 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v4 = sub_10002841C();
  type metadata accessor for ContentStatusBanner(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  v6 = sub_10001EBE0();
  sub_1000038B4(v6, v7, v8);
  if (v9)
  {
    v10 = sub_10000E78C();
    sub_1000180EC(v10, v11, &unk_100A2F250);
    sub_10004E570();
    sub_1000B8260();
    sub_1000B84FC(v1, v0);
    sub_1000315A8();
  }

  else
  {
    sub_10000E78C();
    sub_100107040();
    swift_isUniquelyReferenced_nonNull_native();
    sub_100005C10();
    sub_100239AA0();
    sub_1000B84FC(v1, v0);
    sub_10002FED8();
  }
}

uint64_t sub_1000B81BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 2;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
    v10 = a1 + *(a3 + 24);

    return sub_100024D10(v10, a2, v9);
  }
}

uint64_t sub_1000B8260()
{
  sub_100020714();
  v3 = sub_1000B8384(v1, v2);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v0;
    v7 = *(*v0 + 24);
    sub_10022C350(&qword_100CA3A30, &unk_100A4A650);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
    sub_1000B84FC(*(*(v14 + 48) + 16 * v5), *(*(v14 + 48) + 16 * v5 + 8));
    v8 = type metadata accessor for ContentStatusBanner(0);
    sub_1000037E8();
    sub_100107040();
    sub_100072E1C();
    _NativeDictionary._delete(at:)();
    *v0 = v14;
    v9 = sub_10000FEF4();
    v12 = v8;
  }

  else
  {
    type metadata accessor for ContentStatusBanner(0);
    v9 = sub_100007E1C();
  }

  return sub_10001B350(v9, v10, v11, v12);
}

unint64_t sub_1000B8384(uint64_t a1, uint64_t a2)
{
  sub_10006A6C0();
  if (!a2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v3 = 2;
LABEL_5:
    Hasher._combine(_:)(v3);
    goto LABEL_7;
  }

  Hasher._combine(_:)(1uLL);
  sub_10003140C();
  String.hash(into:)();
LABEL_7:
  Hasher._finalize()();
  v4 = sub_100003984();

  return sub_1000B8418(v4, v5, v6);
}

unint64_t sub_1000B8418(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (v12 == 1)
        {
          if (a2 == 1)
          {
            return v6;
          }
        }

        else if (a2 >= 2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1000B84FC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

BOOL sub_1000B855C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v38 = v2;
  v39 = v3;
  v7 = a2[1];
  v8 = LocationAuthorizationState.rawValue.getter(a1[1]);
  v10 = v9;
  v11 = LocationAuthorizationState.rawValue.getter(v7);
  v13 = v8 == v11 && v10 == v12;
  if (v13)
  {
  }

  else
  {
    v14 = sub_10001F23C(v11);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = a2[2];
  v16 = PredictedLocationsAuthorizationState.rawValue.getter(a1[2]);
  v18 = v17;
  v19 = PredictedLocationsAuthorizationState.rawValue.getter(v15);
  if (v16 == v19 && v18 == v20)
  {
  }

  else
  {
    v22 = sub_10001F23C(v19);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  if (!sub_1000B89C4(a1[3], a2[3]))
  {
    return 0;
  }

  v23 = type metadata accessor for EnvironmentState(0);
  if ((static Locale.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v24 = v23[9];
  v25 = *&a1[v24];
  v26 = *&a1[v24 + 8];
  v27 = &a2[v24];
  v28 = v25 == *v27 && v26 == *(v27 + 1);
  if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v13)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v13)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v13)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v13)
  {
    return 0;
  }

  if (*&a1[v23[14]] != *&a2[v23[14]])
  {
    return 0;
  }

  sub_100003CE8();
  if (!v13)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v13)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v13)
  {
    return 0;
  }

  v29 = v23[18];
  v30 = *&a1[v29 + 16];
  v36[0] = *&a1[v29];
  v36[1] = v30;
  v31 = *&a1[v29 + 32];
  v32 = &a2[v29];
  v33 = *v32;
  v34 = *(v32 + 1);
  v36[2] = v31;
  v37[0] = v33;
  v35 = *(v32 + 2);
  v37[1] = v34;
  v37[2] = v35;
  if ((sub_1000B8A2C(v36, v37) & 1) == 0)
  {
    return 0;
  }

  sub_100003CE8();
  return v13;
}

unint64_t LocationAuthorizationState.rawValue.getter(char a1)
{
  result = 0x7265746544746F6ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6465696E6564;
      break;
    case 4:
      result = 0x7463697274736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B8844()
{
  sub_1000186F0();
  sub_100017D38();
  v4 = v2;
  v5 = v0;
  switch(v6)
  {
    case 1:
      break;
    case 2:
      v5 = 0xE700000000000000;
      v4 = 0x64656C62616E65;
      break;
    case 3:
      v5 = 0x8000000100ABA9E0;
      v4 = v3 + 6;
      break;
    case 4:
      v5 = 0x8000000100ABAA00;
      v4 = v3 + 7;
      break;
    default:
      v5 = 0x8000000100ABA9C0;
      v4 = 0xD000000000000012;
      break;
  }

  switch(v1)
  {
    case 1:
      break;
    case 2:
      v0 = 0xE700000000000000;
      v2 = 0x64656C62616E65;
      break;
    case 3:
      v0 = 0x8000000100ABA9E0;
      v2 = v3 + 6;
      break;
    case 4:
      v0 = 0x8000000100ABAA00;
      v2 = v3 + 7;
      break;
    default:
      v0 = 0x8000000100ABA9C0;
      v2 = 0xD000000000000012;
      break;
  }

  if (v4 == v2 && v5 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013BC0(v4, v1, v2);
  }

  return v8 & 1;
}

BOOL sub_1000B89C4(char a1, char a2)
{
  if (a1 == 4)
  {
    return a2 == 4;
  }

  if (a2 == 4)
  {
    return 0;
  }

  return a1 == a2;
}

uint64_t sub_1000B8A2C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v33 = *a2;
  v34 = v4;
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v33, &v32);
    sub_1000B8CEC(&v34, &v32);
    v6 = sub_100019FE8();
    sub_1000B8D48(&v34);
    sub_1000B8D48(&v33);
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v32 = a1[1];
  v7 = a2[1];
  v31 = v7;
  if (v32)
  {
    if (!v7)
    {
      return 0;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v31, &v30);
    sub_1000B8CEC(&v32, &v30);
    v8 = sub_100019FE8();
    sub_1000B8D48(&v32);
    sub_1000B8D48(&v31);
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = a1[2];
  v10 = a2[2];
  v29 = v10;
  v30 = v9;
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v29, &v28);
    sub_1000B8CEC(&v30, &v28);
    v11 = sub_100019FE8();
    sub_1000B8D48(&v30);
    sub_1000B8D48(&v29);
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = a1[3];
  v13 = a2[3];
  v27 = v13;
  v28 = v12;
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v27, &v26);
    sub_1000B8CEC(&v28, &v26);
    v14 = sub_100019FE8();
    sub_1000B8D48(&v28);
    sub_1000B8D48(&v27);
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v15 = a1[4];
  v16 = a2[4];
  v25 = v16;
  v26 = v15;
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v25, &v24);
    sub_1000B8CEC(&v26, &v24);
    v17 = sub_100019FE8();
    sub_1000B8D48(&v26);
    sub_1000B8D48(&v25);
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = a1[5];
  v19 = a2[5];
  v23 = v19;
  v24 = v18;
  if (v18)
  {
    if (v19)
    {
      sub_1000B8CA8();
      sub_1000B8CEC(&v23, v22);
      sub_1000B8CEC(&v24, v22);
      v20 = static NSObject.== infix(_:_:)();
      sub_1000B8D48(&v24);
      sub_1000B8D48(&v23);
      if (v20)
      {
        return 1;
      }
    }
  }

  else if (!v19)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1000B8CA8()
{
  result = qword_100CBC9B8;
  if (!qword_100CBC9B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CBC9B8);
  }

  return result;
}

uint64_t sub_1000B90CC(uint64_t result, double a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1000B90D8()
{

  return type metadata accessor for LocationComponentHeaderViewModel(0);
}

double sub_1000B90F0(uint64_t a1, uint64_t a2, ...)
{

  swift_beginAccess();
  return result;
}

uint64_t sub_1000B911C(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1000B9164()
{

  return Error.logSafeDescription.getter();
}

uint64_t sub_1000B9194()
{
}

uint64_t sub_1000B91E8()
{

  return Hasher.init(_seed:)();
}

void sub_1000B9218()
{
  sub_10000C778();
  v34 = v0;
  v35 = v1;
  v33 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100003C38();
  v13.n128_f64[0] = __chkstk_darwin(v12);
  v15 = &v30 - v14;
  v16 = *(v6 + 16);
  if (v16 == *(v4 + 16) && v16 && v6 != v4)
  {
    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = v6 + v17;
    v19 = v4 + v17;
    v21 = *(v10 + 16);
    v20 = v10 + 16;
    v22 = (v20 - 8);
    v31 = *(v20 + 56);
    v32 = v21;
    while (1)
    {
      v23 = v32;
      (v32)(v15, v18, v8, v13);
      if (!v16)
      {
        break;
      }

      sub_1000C8C48();
      v24 = v20;
      v23();
      sub_1000E1334(v33, v34, v35);
      sub_10000810C();
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *v22;
      v27 = sub_1000314C8();
      v26(v27);
      v28 = sub_100027E24();
      v26(v28);
      if (v25)
      {
        v19 += v31;
        v18 += v31;
        v29 = v16-- == 1;
        v20 = v24;
        if (!v29)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_10000536C();
  }
}

void sub_1000B946C()
{
  sub_10000C778();
  sub_1000B8A08();
  type metadata accessor for LocationModel();
  sub_10000FB48();
  __chkstk_darwin(v3);
  sub_10002820C();
  __chkstk_darwin(v4);
  sub_10000E70C();
  sub_1002E56F4(v5);
  v6 = sub_10022C350(&qword_100CAA838, &qword_100A35308);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100031BFC();
  __chkstk_darwin(v8);
  sub_1002E4BB4();
  if (!v9)
  {
    sub_1002E4D00();
    if (v9)
    {
      sub_1002E539C();
      sub_100069460();
      sub_100172164();
      while (1)
      {
        if (v10)
        {
          sub_100074730();
          sub_1002E5850();
LABEL_10:
          v12 = sub_1000C86FC();
          v13(v12);
          v14 = sub_10022C350(&qword_100CAA840, &qword_100A35310);
          v15 = sub_100044D44(v14);
          v16(v15);
          v17 = sub_100163700();
          sub_1002E5980(v17, v18, v19, v20);
        }

        else
        {
          while (v2 > 1)
          {
            sub_1002E570C();
            if (v11)
            {
              sub_10003B93C();
              sub_10003B8A4();
              goto LABEL_10;
            }
          }

          sub_10022C350(&qword_100CAA840, &qword_100A35310);
          sub_1000BA214();
          sub_100003934();
          sub_10001B350(v31, v32, v33, v34);
          v37 = 0;
        }

        sub_1000E14F8();
        sub_100051BBC();
        v21 = sub_100003A60();
        v23 = sub_10022C350(v21, v22);
        sub_1000BAEAC(v23);
        if (v9)
        {
          break;
        }

        v24 = sub_1000522BC();
        v25(v24);
        sub_100003A80();
        sub_100031B34();
        sub_1002E558C();
        if ((v0 & 1) == 0)
        {
          v35 = sub_1002E4D14();
          v36(v35);
          break;
        }

        v26 = sub_1000377B0();
        v27(v26);
        v28 = sub_1000E1628(&qword_100CAA848, 255, &type metadata accessor for LocationModel, &protocol conformance descriptor for LocationModel);
        sub_1000E15F4(v28);
        v29 = sub_1001921F8();
        v1(v29);
        v30 = sub_1002E52D0();
        v1(v30);
        v10 = v37;
      }
    }
  }

  sub_1002E5700();
  sub_10000536C();
}

uint64_t sub_1000B97CC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1000B97E4()
{
}

uint64_t sub_1000B9858(uint64_t a1)
{
  sub_10001B350(a1, 1, 1, v1[265]);
  v2 = v1[203];
  v3 = v1[266];

  return sub_10001B350(v2, 1, 1, v3);
}

uint64_t sub_1000B98A4(uint64_t a1)
{
  *(v1 - 160) = a1;

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1000B9A0C()
{

  return sub_1000D394C();
}

uint64_t sub_1000B9A44()
{

  return static Logger.automation.getter();
}

uint64_t sub_1000B9AB0(uint64_t a1)
{

  return sub_100024D10(v1, 1, a1);
}

uint64_t sub_1000B9AD0()
{
  v2 = *(v0 - 688);

  return sub_10011CA9C(v2, type metadata accessor for DetailChartsViewModel);
}

uint64_t sub_1000B9AFC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000B9B2C(uint64_t a1)
{
  v4 = *(v1 - 168);

  return sub_10001B350(v4, 1, 1, a1);
}

void sub_1000B9B64()
{
  sub_10000C778();
  sub_1000B8A08();
  type metadata accessor for Location();
  sub_10000FB48();
  __chkstk_darwin(v3);
  sub_10002820C();
  __chkstk_darwin(v4);
  sub_10000E70C();
  sub_1002E56F4(v5);
  v6 = sub_10022C350(&qword_100CAA828, &qword_100A352F8);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100031BFC();
  __chkstk_darwin(v8);
  sub_1002E4BB4();
  if (!v9)
  {
    sub_1002E4D00();
    if (v9)
    {
      sub_1002E539C();
      sub_100069460();
      sub_100172164();
      while (1)
      {
        if (v10)
        {
          sub_100074730();
          sub_1002E5850();
LABEL_10:
          v12 = sub_1000C86FC();
          v13(v12);
          v14 = sub_10022C350(&qword_100CAA830, &qword_100A35300);
          v15 = sub_100044D44(v14);
          v16(v15);
          v17 = sub_100163700();
          sub_1002E5980(v17, v18, v19, v20);
        }

        else
        {
          while (v2 > 1)
          {
            sub_1002E570C();
            if (v11)
            {
              sub_10003B93C();
              sub_10003B8A4();
              goto LABEL_10;
            }
          }

          sub_10022C350(&qword_100CAA830, &qword_100A35300);
          sub_1000BA214();
          sub_100003934();
          sub_10001B350(v31, v32, v33, v34);
          v37 = 0;
        }

        sub_1000E14F8();
        sub_100051BBC();
        v21 = sub_100003A60();
        v23 = sub_10022C350(v21, v22);
        sub_1000BAEAC(v23);
        if (v9)
        {
          break;
        }

        v24 = sub_1000522BC();
        v25(v24);
        sub_100003A80();
        sub_100031B34();
        sub_1002E558C();
        if ((v0 & 1) == 0)
        {
          v35 = sub_1002E4D14();
          v36(v35);
          break;
        }

        v26 = sub_1000377B0();
        v27(v26);
        v28 = sub_1000E1628(&qword_100CA3A00, 255, &type metadata accessor for Location, &protocol conformance descriptor for Location);
        sub_1000E15F4(v28);
        v29 = sub_1001921F8();
        v1(v29);
        v30 = sub_1002E52D0();
        v1(v30);
        v10 = v37;
      }
    }
  }

  sub_1002E5700();
  sub_10000536C();
}

uint64_t sub_1000B9E54()
{

  return type metadata accessor for WeatherAlert.Prominence();
}

void sub_1000B9E84(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 == 1)
      {
        goto LABEL_8;
      }

      break;
    case 2:
      if (a6 == 2)
      {
        sub_1000B9424();
        if (v6)
        {
          goto LABEL_8;
        }
      }

      break;
    case 3:
      return;
    default:
      if (!a6)
      {
LABEL_8:

        sub_1000B9424();
      }

      break;
  }
}

void sub_1000B9F58()
{
  sub_10000C778();
  sub_1000B8A08();
  type metadata accessor for LocationDisplayContext();
  sub_10000FB48();
  __chkstk_darwin(v3);
  sub_10002820C();
  __chkstk_darwin(v4);
  sub_10000E70C();
  sub_1002E56F4(v5);
  v6 = sub_10022C350(&qword_100CAA810, &qword_100A352E8);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100031BFC();
  __chkstk_darwin(v8);
  sub_1002E4BB4();
  if (!v9)
  {
    sub_1002E4D00();
    if (v9)
    {
      sub_1002E539C();
      sub_100069460();
      sub_100172164();
      while (1)
      {
        if (v10)
        {
          sub_100074730();
          sub_1002E5850();
LABEL_10:
          v12 = sub_1000C86FC();
          v13(v12);
          v14 = sub_10022C350(&qword_100CAA818, &qword_100A352F0);
          v15 = sub_100044D44(v14);
          v16(v15);
          v17 = sub_100163700();
          sub_1002E5980(v17, v18, v19, v20);
        }

        else
        {
          while (v2 > 1)
          {
            sub_1002E570C();
            if (v11)
            {
              sub_10003B93C();
              sub_10003B8A4();
              goto LABEL_10;
            }
          }

          sub_10022C350(&qword_100CAA818, &qword_100A352F0);
          sub_1000BA214();
          sub_100003934();
          sub_10001B350(v31, v32, v33, v34);
          v37 = 0;
        }

        sub_1000E14F8();
        sub_100051BBC();
        v21 = sub_100003A60();
        v23 = sub_10022C350(v21, v22);
        sub_1000BAEAC(v23);
        if (v9)
        {
          break;
        }

        v24 = sub_1000522BC();
        v25(v24);
        sub_100003A80();
        sub_100031B34();
        sub_1002E558C();
        if ((v0 & 1) == 0)
        {
          v35 = sub_1002E4D14();
          v36(v35);
          break;
        }

        v26 = sub_1000377B0();
        v27(v26);
        v28 = sub_1000E1628(&qword_100CAA820, 255, &type metadata accessor for LocationDisplayContext, &protocol conformance descriptor for LocationDisplayContext);
        sub_1000E15F4(v28);
        v29 = sub_1001921F8();
        v1(v29);
        v30 = sub_1002E52D0();
        v1(v30);
        v10 = v37;
      }
    }
  }

  sub_1002E5700();
  sub_10000536C();
}

uint64_t sub_1000BA240(uint64_t a1, uint64_t a2)
{
  if (sub_1000BA238() & 1) != 0 && (sub_1000BA494(), (v4) && (sub_1000BA494(), (v5) && (v6 = type metadata accessor for NotificationsState(0), type metadata accessor for PredictedLocationsNotificationSubscription.Kind(), sub_10001C59C(), sub_1000BA524(v7, v8, &protocol conformance descriptor for PredictedLocationsNotificationSubscription.Kind), sub_10002C598(), dispatch thunk of RawRepresentable.rawValue.getter(), sub_10002C598(), dispatch thunk of RawRepresentable.rawValue.getter(), v12 == v11))
  {
    v9 = *(a1 + *(v6 + 32)) ^ *(a2 + *(v6 + 32)) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000BA344()
{
  sub_1000186F0();
  sub_100017D38();
  v3 = v2;
  v4 = v0;
  switch(v5)
  {
    case 1:
      v4 = 0xE700000000000000;
      v3 = 0x6465776F6C6C61;
      break;
    case 2:
      v3 = sub_1000B0ED0();
      break;
    case 3:
      v3 = 0xD000000000000011;
      v4 = 0x8000000100ABABC0;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE700000000000000;
      v2 = 0x6465776F6C6C61;
      break;
    case 2:
      sub_1000F0040();
      break;
    case 3:
      sub_10002168C();
      v0 = v6 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013BC0(v3, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000BA4DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000BA524(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1000BA584(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    sub_100073B0C(*(a1 + 1), *(a2 + 1));
    if (v5 & 1) != 0 && a1[16] == a2[16] && a1[17] == a2[17] && a1[18] == a2[18] && a1[19] == a2[19] && a1[20] == a2[20] && (v6 = type metadata accessor for NotificationsOptInState(0), (static Date.== infix(_:_:)()) && (sub_100003CE8(), v7) && (sub_100003CE8(), v7) && (sub_100003CE8(), v7) && (sub_100003CE8(), v7) && (sub_100003CE8(), v7) && (sub_100003CE8(), v7))
    {
      v2 = a1[*(v6 + 72)] ^ a2[*(v6 + 72)] ^ 1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1000BA9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  v21 = type metadata accessor for VFXTestViewState(0);
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_100003C38();
  v29 = v27 - v28;
  __chkstk_darwin(v30);
  v31 = sub_10022C350(&qword_100CDC288, &unk_100A8A148);
  sub_100003810(v31);
  sub_100003828();
  __chkstk_darwin(v32);
  sub_10000C790();
  sub_1000A078C();
  sub_1000A078C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001F968();
    sub_1000A078C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100014F5C();
      sub_1000AFEF8();
      sub_1007488C4(v29, v25);
      sub_1000B005C(v25, type metadata accessor for VFXTestViewState);
      sub_1000B005C(v29, type metadata accessor for VFXTestViewState);
LABEL_9:
      sub_100075088();
      sub_1000B005C(v20, v34);
      goto LABEL_10;
    }

    sub_10004EB7C();
    sub_1000B005C(v29, v33);
  }

  else
  {
    sub_10001F968();
    sub_1000A078C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      type metadata accessor for LocationViewerViewState._Storage(0);
      sub_1000BAD54();

      goto LABEL_9;
    }
  }

  sub_1000180EC(v20, &qword_100CDC288, &unk_100A8A148);
LABEL_10:
  sub_10000536C();
}

uint64_t sub_1000BAC0C()
{
  sub_100003A00();
  v4 = *(v2 + 24);
  if (*(v3 + 24) == 1)
  {
    if ((*(v2 + 24) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*(v1 + 16) != *(v0 + 16))
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_25;
    }
  }

  if (*(v1 + 25) != *(v0 + 25) || *(v1 + 26) != *(v0 + 26) || *(v1 + 27) != *(v0 + 27))
  {
    goto LABEL_25;
  }

  v5 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v6 = *(v1 + 56);
  v7 = *(v0 + 56);
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_25;
    }

    v8 = *(v1 + 48) == *(v0 + 48) && v6 == v7;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v7)
  {
    goto LABEL_25;
  }

  if (*(v1 + 64) == *(v0 + 64))
  {
    v11 = *(v1 + 80);
    v12 = *(v0 + 80);
    if (v11)
    {
      if (!v12)
      {
        goto LABEL_25;
      }

      v13 = *(v1 + 72) == *(v0 + 72) && v11 == v12;
      if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v12)
    {
      goto LABEL_25;
    }

    if (*(v1 + 88) == *(v0 + 88))
    {
      v9 = *(v1 + 89) ^ *(v0 + 89) ^ 1;
      return v9 & 1;
    }
  }

LABEL_25:
  v9 = 0;
  return v9 & 1;
}

BOOL sub_1000BAD54()
{
  v0 = sub_100003B38();
  active = type metadata accessor for LocationViewerActiveLocationState(v0);
  v2 = sub_100003810(active);
  __chkstk_darwin(v2);
  sub_1000281F0();
  __chkstk_darwin(v3);
  sub_100030230();
  sub_100066B44();
  sub_100066B44();
  v4 = sub_100003984();
  v6 = sub_1000BAF7C(v4, v5);
  sub_100040B64();
  sub_100040B64();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v7)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v7)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v7)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v7)
  {
    return 0;
  }

  sub_100003CE8();
  return v7 != 0;
}

void sub_1000BAED4(void *a1@<X8>)
{
  *a1 = v2;
  a1[1] = v1;
  v5 = (v4 + *(v3 + 128));
  *v5 = 0;
  v5[1] = 0;
}

uint64_t sub_1000BAEF0(uint64_t a1)
{
}

uint64_t sub_1000BAF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_10022C350(a5, a6);
}

uint64_t sub_1000BAF48()
{

  return sub_100095588();
}

uint64_t sub_1000BAF7C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_10001365C();
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  v10 = sub_100003810(active);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = sub_10022C350(&qword_100CE2448, &qword_100A94BD0);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1000BB194(a1, &v24 - v16);
  sub_1000BB194(a2, &v17[v19]);
  sub_10000554C(v17);
  if (!v21)
  {
    sub_1000BB194(v17, v13);
    sub_10000554C(&v17[v19]);
    if (!v21)
    {
      (*(v7 + 32))(v2, &v17[v19], v5);
      v20 = static Location.Identifier.== infix(_:_:)();
      v22 = *(v7 + 8);
      v22(v2, v5);
      v22(v13, v5);
      sub_1000BB1F8(v17);
      return v20 & 1;
    }

    (*(v7 + 8))(v13, v5);
LABEL_9:
    sub_10002C4AC(v17, &qword_100CE2448, &qword_100A94BD0);
    v20 = 0;
    return v20 & 1;
  }

  sub_10000554C(&v17[v19]);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_1000BB1F8(v17);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1000BB194(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_1000BB1F8(uint64_t a1)
{
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  (*(*(active - 8) + 8))(a1, active);
  return a1;
}

uint64_t sub_1000BB818(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000BB878()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000BB8D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000BB930(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  switch(*(a2 + 16))
  {
    case 1:
      if (v2 != 1)
      {
        return 0;
      }

      break;
    case 2:
      if (v2 != 2)
      {
        return 0;
      }

      break;
    case 3:
      if (v2 != 3)
      {
        return 0;
      }

      break;
    default:
      if (*(a1 + 16))
      {
        return 0;
      }

      break;
  }

  if (*(a2 + 17) == 1)
  {
    if ((*(a1 + 17) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a1 + 17))
  {
    return 0;
  }

  v3 = *(a1 + 18);
  if (!*(a2 + 18))
  {
    if (!*(a1 + 18))
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (*(a2 + 18) == 1)
  {
    if (v3 == 1)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v3 != 2)
  {
    return 0;
  }

LABEL_18:
  type metadata accessor for DisplayMetrics(0);

  return static DynamicTypeSize.== infix(_:_:)();
}

uint64_t sub_1000BBA50(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 5)
  {
    if (v5 != 5)
    {
      goto LABEL_36;
    }
  }

  else if (v4 == 4)
  {
    if (v5 != 4)
    {
      goto LABEL_36;
    }
  }

  else if (v4 != v5 || (v5 & 0xFE) == 4)
  {
    goto LABEL_36;
  }

  v7 = a1[1];
  v8 = a2[1];
  if (v7 >> 6)
  {
    if (v7 >> 6 == 1)
    {
      v9 = v8 & 0xC0;
      v10 = (v8 ^ v7) & 1;
      if (v9 != 64 || v10 != 0)
      {
        goto LABEL_36;
      }
    }

    else if (v8 != 128)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v12 = (v8 ^ v7) & 1;
    if (v8 > 0x3F || v12 != 0)
    {
      goto LABEL_36;
    }
  }

  v14 = type metadata accessor for WeatherMapPresentationState(0);
  if ((static WeatherMapOverlayKind.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_36;
  }

  v15 = v14[7];
  v16 = &a1[v15];
  v17 = *&a1[v15 + 8];
  v18 = &a2[v15];
  v19 = *(v18 + 1);
  if (!v17)
  {
    if (!v19)
    {
      goto LABEL_34;
    }

LABEL_36:
    v21 = 0;
    return v21 & 1;
  }

  if (!v19)
  {
    goto LABEL_36;
  }

  v20 = *v16 == *v18 && v17 == v19;
  if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  if ((sub_1000BBBA8(&a1[v14[8]], &a2[v14[8]]) & 1) == 0)
  {
    goto LABEL_36;
  }

  v21 = a1[v14[9]] ^ a2[v14[9]] ^ 1;
  return v21 & 1;
}

uint64_t sub_1000BBBA8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for WeatherMapTrackingState(0);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = (v17 - v16);
  v19 = sub_10022C350(&qword_100CB1CA0, &qword_100A42930);
  sub_100003810(v19);
  sub_100003828();
  __chkstk_darwin(v20);
  sub_10000C8C8();
  v22 = (v2 + *(v21 + 56));
  sub_1000BBEF8(a1, v2);
  sub_1000BBEF8(a2, v22);
  v23 = sub_10022C350(&qword_100CA6660, &unk_100A41280);
  switch(sub_100024D10(v2, 3, v23))
  {
    case 1u:
      if (sub_100036CC8() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 2u:
      if (sub_100036CC8() == 2)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 3u:
      if (sub_100036CC8() != 3)
      {
        goto LABEL_7;
      }

LABEL_5:
      sub_1000059AC();
      sub_1000BBFB0(v2, v25);
      v26 = 1;
      return v26 & 1;
    default:
      sub_10000FDE0();
      sub_1000BBEF8(v2, v18);
      v24 = *(v23 + 48);
      if (sub_100036CC8())
      {
        (*(v7 + 8))(&v18[v24], v5);
LABEL_7:
        sub_1000180EC(v2, &qword_100CB1CA0, &qword_100A42930);
        goto LABEL_8;
      }

      v28 = *v18;
      v35 = *v22;
      v36 = v28;
      v29 = *(v7 + 32);
      v29(v13, &v18[v24], v5);
      v29(v10, &v22[v24], v5);
      if (v36 != v35)
      {
        v30 = *(v7 + 8);
        v30(v10, v5);
        v30(v13, v5);
        sub_1000059AC();
        sub_1000BBFB0(v2, v31);
LABEL_8:
        v26 = 0;
        return v26 & 1;
      }

      v26 = static WeatherMapOverlayKind.== infix(_:_:)();
      v32 = *(v7 + 8);
      v32(v10, v5);
      v32(v13, v5);
      sub_1000059AC();
      sub_1000BBFB0(v2, v33);
      return v26 & 1;
  }
}

uint64_t sub_1000BBEF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1000BBF54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000BBFB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1000BC008()
{
  sub_10000C778();
  v64 = v5;
  v65 = v6;
  v7 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000038E4();
  v61 = v9;
  v10 = sub_1000038CC();
  v62 = type metadata accessor for ModalViewState.MapViewModal(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  v56 = v12;
  v13 = sub_10022C350(&qword_100CA65E0, &unk_100A31400);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v57 = v15;
  v60 = sub_10022C350(&qword_100CDA930, &qword_100A85B30);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  v63 = v17;
  v18 = sub_1000038CC();
  v58 = type metadata accessor for LocationPreviewViewState(v18);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000038E4();
  v59 = v20;
  v21 = sub_1000038CC();
  type metadata accessor for ModalViewState(v21);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_100003C38();
  sub_10000C930();
  __chkstk_darwin(v23);
  sub_10003C868();
  __chkstk_darwin(v24);
  sub_100017E40();
  __chkstk_darwin(v25);
  v27 = (&v56 - v26);
  __chkstk_darwin(v28);
  sub_10003A2D4();
  __chkstk_darwin(v29);
  v31 = &v56 - v30;
  v32 = sub_10022C350(&qword_100CDA938, &qword_100A85B38);
  sub_100003810(v32);
  sub_100003828();
  __chkstk_darwin(v33);
  sub_10000C8C8();
  v35 = (v0 + *(v34 + 56));
  sub_1000BCB40(v64, v0);
  sub_1000BCB40(v65, v35);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100010C3C();
      sub_1000BCB40(v0, v1);
      if (sub_100014300() != 1)
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    case 2u:
      sub_100010C3C();
      sub_1000BCB40(v0, v27);
      v41 = *v27;
      if (sub_100014300() != 2)
      {
        goto LABEL_13;
      }

      v42 = *v35;
      type metadata accessor for NotificationsOptInViewState._Storage();
      sub_1002D4854(v41, v42);
      goto LABEL_12;
    case 3u:
      sub_100010C3C();
      sub_1000BCB40(v0, v4);
      v43 = *v4;
      if (sub_100014300() != 3)
      {
LABEL_13:

        goto LABEL_25;
      }

      v44 = *v35;
      type metadata accessor for ReportWeatherViewState._Storage();
      sub_1002D88C8(v43, v44);
LABEL_12:

      goto LABEL_35;
    case 4u:
      sub_100010C3C();
      sub_1000BCB40(v0, v3);
      if (sub_100014300() != 4)
      {
        sub_1000180EC(v3, &qword_100CA65E0, &unk_100A31400);
        goto LABEL_25;
      }

      v38 = *(v60 + 48);
      v39 = v63;
      sub_1003C9FB0(v3, v63);
      sub_1003C9FB0(v35, v39 + v38);
      v40 = v62;
      if (sub_100024D10(v39, 1, v62) == 1)
      {
        if (sub_100024D10(v39 + v38, 1, v40) == 1)
        {
          sub_1000180EC(v39, &qword_100CA65E0, &unk_100A31400);
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      v51 = v57;
      sub_1007F43F4(v39, v57);
      if (sub_100024D10(v39 + v38, 1, v40) == 1)
      {
        sub_1000D4010();
        sub_1000E01F8(v51, v52);
LABEL_34:
        sub_1000180EC(v39, &qword_100CDA930, &qword_100A85B30);
        goto LABEL_35;
      }

      sub_100017E28();
      v53 = v56;
      sub_1007F4464(v39 + v38, v56);
      v54 = sub_10000C8E8();
      sub_1007EE674(v54, v55);
      sub_1000E01F8(v53, type metadata accessor for ModalViewState.MapViewModal);
      sub_1000E01F8(v51, type metadata accessor for ModalViewState.MapViewModal);
      sub_1000180EC(v39, &qword_100CA65E0, &unk_100A31400);
LABEL_35:
      sub_100013C84();
LABEL_26:
      sub_10000536C();
      return;
    case 5u:
      sub_100010C3C();
      sub_1000BCB40(v0, v2);
      if (sub_100014300() == 5)
      {
        sub_100075018();
        v45 = v61;
        sub_1007F4464(v35, v61);
        sub_10000C8E8();
        sub_1007EF290();
        sub_1000E01F8(v45, type metadata accessor for ModalViewState.LocationDetailModal);
        sub_1000E01F8(v2, type metadata accessor for ModalViewState.LocationDetailModal);
        goto LABEL_35;
      }

      sub_10000682C();
      v37 = v2;
      goto LABEL_24;
    case 6u:
      if (sub_100014300() == 6)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    case 7u:
      if (sub_100014300() != 7)
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    default:
      sub_100010C3C();
      sub_1000BCB40(v0, v31);
      if (!sub_100014300())
      {
        sub_100023278();
        v46 = v59;
        sub_1007F4464(v35, v59);
        sub_1006E6E98();
        if (v47 & 1) != 0 && (sub_10043F9F0(&v31[*(v58 + 20)], v46 + *(v58 + 20)))
        {
          sub_1009614B0(&v31[*(v58 + 24)], v46 + *(v58 + 24));
          sub_10001CDBC();
          sub_1000E01F8(v46, v48);
        }

        else
        {
          sub_10001CDBC();
          sub_1000E01F8(v46, v50);
        }

        sub_10001CDBC();
        sub_1000E01F8(v31, v49);
        goto LABEL_35;
      }

      sub_10001CDBC();
      v37 = v31;
LABEL_24:
      sub_1000E01F8(v37, v36);
LABEL_25:
      sub_1000180EC(v0, &qword_100CDA938, &qword_100A85B38);
      goto LABEL_26;
  }
}

uint64_t sub_1000BC6C0()
{

  return swift_task_create();
}

uint64_t sub_1000BC6F0(uint64_t a1)
{

  return sub_100024D10(v2 + v1, 1, a1);
}

uint64_t sub_1000BC728(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000BC784(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000BC7E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000BC84C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000BC8AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000BC914(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000BC974()
{
  sub_100003A00();
  v2(0);
  sub_1000037E8();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1000BC9D0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000BCA28()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000BCA80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000BCAE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000BCB40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1000BCB9C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000BCBF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000BCC54()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000BCCAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000BCD08()
{
  v2 = sub_100003B38();
  v3(v2);
  sub_1000037E8();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1000BCD60()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

void sub_1000BCDB8(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *v3 = *(v2 - 224);
  *(v3 + 8) = v1;
}

uint64_t sub_1000BCDDC(unint64_t *a1)
{

  return sub_10011C0A0(a1, &protocol conformance descriptor for Forecast<A>);
}

void sub_1000BCE4C()
{
  v0[560] = v1[18];
  v0[558] = v1[19];
  v0[556] = v1[20];
}

uint64_t sub_1000BCE74()
{

  return sub_1000B0F30(v0, type metadata accessor for ViewAction);
}

uint64_t sub_1000BCEE4(unint64_t *a1)
{

  return sub_10068280C(a1, v2, v1);
}

uint64_t sub_1000BCEFC()
{

  return swift_allocObject();
}

uint64_t sub_1000BCF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return swift_deallocObject();
}

uint64_t sub_1000BCF8C()
{
  *(v2 - 128) = v1;
  *(v2 - 120) = v0;

  return State.wrappedValue.getter();
}

void sub_1000BCFBC()
{
  sub_10000C778();
  v2 = sub_1000B8A08();
  v3 = type metadata accessor for LocationWeatherDataState(v2);
  __chkstk_darwin(v3 - 8);
  sub_100003C38();
  __chkstk_darwin(v4);
  sub_1000B9E20();
  v5 = sub_10022C350(&qword_100CAA800, &qword_100A352D8);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_100003848();
  v41 = v7;
  sub_10000386C();
  __chkstk_darwin(v8);
  sub_1000B9E30();
  if (v0 == v1 || *(v0 + 16) != *(v1 + 16))
  {
LABEL_19:
    sub_1002E5700();
    sub_10000536C();
  }

  else
  {
    v40 = v9;
    v10 = 0;
    sub_1002E539C();
    v39 = v0;
    sub_100069460();
    v13 = v12 >> 6;
    while (v11)
    {
      sub_100074730();
      v42 = v14;
      v15 = v41;
LABEL_11:
      sub_1002E5390();
      v21 = *v20;
      v22 = v20[1];
      sub_1002E4F70();
      sub_100066B44();
      v23 = sub_10022C350(&qword_100CAA808, &qword_100A352E0);
      *v15 = v21;
      v15[1] = v22;
      sub_1002E4F58();
      sub_10003DE74();
      sub_10000E7B0();
      sub_10001B350(v24, v25, v26, v23);

      v16 = v40;
LABEL_12:
      sub_100051BBC();
      v27 = sub_1000BA488();
      v29 = sub_10022C350(v27, v28);
      sub_1000038B4(v16, 1, v29);
      if (v30)
      {
        goto LABEL_19;
      }

      sub_1002E4F58();
      sub_10003DE74();
      sub_100031B34();
      v32 = v31;

      if ((v32 & 1) == 0)
      {
        sub_100040B64();
        goto LABEL_19;
      }

      sub_1002E4F70();
      sub_100066B44();
      sub_10070EA0C();
      v34 = v33;
      sub_100040B64();
      sub_10002FDB4();
      sub_100040B64();
      v11 = v42;
      if ((v34 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v16 = v40;
    v15 = v41;
    while (1)
    {
      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v17 >= v13)
      {
        sub_10022C350(&qword_100CAA808, &qword_100A352E0);
        sub_100003934();
        sub_10001B350(v35, v36, v37, v38);
        v42 = 0;
        goto LABEL_12;
      }

      ++v10;
      if (*(v39 + 8 * v17))
      {
        sub_10003B93C();
        v42 = v18;
        v10 = v19;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1000BD330()
{
  sub_10000C778();
  v4 = v3;
  sub_1002E5718();
  v78 = type metadata accessor for AvailableDataSets();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000038E4();
  v76 = v8;
  v83 = sub_10022C350(&qword_100CAA7E0, &qword_100A352C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v89 = v10;
  v11 = sub_1000038CC();
  v88 = type metadata accessor for LocationAvailableDataSetState(v11);
  sub_1000037C4();
  v86 = v12;
  __chkstk_darwin(v13);
  sub_100003848();
  v77 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  v17 = v72 - v16;
  __chkstk_darwin(v18);
  sub_100003878();
  v87 = v19;
  sub_10000386C();
  __chkstk_darwin(v20);
  sub_100003878();
  v79 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  sub_10000E70C();
  v82 = v23;
  v24 = sub_10022C350(&qword_100CAA7E8, &qword_100A352C8);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_100003C38();
  sub_1000886FC();
  __chkstk_darwin(v26);
  sub_10003C300();
  if (v0 == v4 || *(v0 + 16) != *(v4 + 16))
  {
LABEL_37:
    sub_10000536C();
    return;
  }

  v80 = v0;
  v81 = v4;
  v27 = 0;
  v28 = v0 + 64;
  sub_100069460();
  v30 = v29 >> 6;
  v72[1] = v6 + 32;
  v73 = v1;
  v74 = v17;
  v75 = (v6 + 8);
  v31 = v79;
  v84 = v2;
  if (!v32)
  {
    goto LABEL_5;
  }

  do
  {
    v33 = v31;
    sub_100074730();
    v85 = v34;
LABEL_9:
    sub_1002E5390();
    v40 = *v38;
    v39 = v38[1];
    sub_1002E5890(v86);
    sub_1001711A8();
    sub_100066B44();
    v41 = sub_10022C350(&qword_100CAA7F0, &qword_100A352D0);
    v42 = v84;
    *v84 = v40;
    v42[1] = v39;
    sub_1002E4F28();
    sub_10003DE74();
    sub_10000E7B0();
    sub_1002E5980(v43, v44, v45, v41);
LABEL_10:
    sub_1000BA488();
    sub_100051BBC();
    v46 = sub_10022C350(&qword_100CAA7F0, &qword_100A352D0);
    sub_1000038B4(v1, 1, v46);
    if (v56)
    {
      goto LABEL_37;
    }

    sub_1002E4F28();
    v31 = v33;
    sub_10003DE74();
    sub_100031B34();
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      goto LABEL_33;
    }

    sub_100066B44();
    v49 = (v89 + *(v83 + 48));
    sub_10008672C();
    sub_100066B44();
    sub_100003940();
    sub_100066B44();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1001711A8();
        v51 = v77;
        sub_100066B44();
        v53 = *v51;
        v52 = v51[1];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v54 = *v49;
          v55 = v49[1];
          v56 = v53 == v54 && v52 == v55;
          if (v56)
          {

            sub_100071468();
            sub_100040B64();
            sub_100003940();
            sub_100040B64();
          }

          else
          {
            v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_100071468();
            sub_100040B64();
            sub_100003940();
            sub_100040B64();
            if ((v57 & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          goto LABEL_28;
        }

        sub_100040B64();
        sub_100003B2C();
        sub_100040B64();
LABEL_36:
        sub_1000180EC(v89, &qword_100CAA7E0, &qword_100A352C0);
        goto LABEL_37;
      }

      sub_100040B64();
      sub_1000370B0();
      sub_100040B64();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_36;
      }
    }

    else
    {
      sub_1001711A8();
      v58 = v74;
      sub_100066B44();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100071468();
        sub_100040B64();
        sub_100040B64();
        (*v75)(v58, v78);
        goto LABEL_36;
      }

      v59 = sub_100027E24();
      v60 = v78;
      v61(v59);
      sub_1000E1628(&qword_100CAA7F8, 255, &type metadata accessor for AvailableDataSets, &protocol conformance descriptor for AvailableDataSets);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v62 = *v75;
      v63 = sub_10008672C();
      (v62)(v63);
      sub_100071468();
      sub_100040B64();
      v64 = v79;
      sub_100027E24();
      sub_100040B64();
      v66 = v90;
      v65 = v91;
      v67 = v58;
      v31 = v64;
      v62(v67, v60);
      v1 = v73;
      if (v65 != v66)
      {
LABEL_32:
        sub_1000BA56C();
LABEL_33:
        sub_100040B64();
        goto LABEL_37;
      }
    }

LABEL_28:
    sub_1000BA56C();
    sub_100040B64();
  }

  while (v85);
LABEL_5:
  while (1)
  {
    v35 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v35 >= v30)
    {
      v33 = v31;
      sub_10022C350(&qword_100CAA7F0, &qword_100A352D0);
      sub_100003934();
      sub_10001B350(v68, v69, v70, v71);
      v85 = 0;
      goto LABEL_10;
    }

    ++v27;
    if (*(v28 + 8 * v35))
    {
      v33 = v31;
      sub_10003B93C();
      v85 = v36;
      v27 = v37;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1000BDA70()
{
  sub_10000C778();
  sub_1000B8A08();
  type metadata accessor for WeatherCondition();
  sub_10000FB48();
  __chkstk_darwin(v3);
  sub_10002820C();
  __chkstk_darwin(v4);
  sub_10000E70C();
  sub_1002E56F4(v5);
  v6 = sub_10022C350(&qword_100CAA7C8, &qword_100A352B0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100031BFC();
  __chkstk_darwin(v8);
  sub_1002E4BB4();
  if (!v9)
  {
    sub_1002E4D00();
    if (v9)
    {
      sub_1002E539C();
      sub_100069460();
      sub_100172164();
      while (1)
      {
        if (v10)
        {
          sub_100074730();
          sub_1002E5850();
LABEL_10:
          v12 = sub_1000C86FC();
          v13(v12);
          v14 = sub_10022C350(&qword_100CAA7D0, &qword_100A352B8);
          v15 = sub_100044D44(v14);
          v16(v15);
          v17 = sub_100163700();
          sub_1002E5980(v17, v18, v19, v20);
        }

        else
        {
          while (v2 > 1)
          {
            sub_1002E570C();
            if (v11)
            {
              sub_10003B93C();
              sub_10003B8A4();
              goto LABEL_10;
            }
          }

          sub_10022C350(&qword_100CAA7D0, &qword_100A352B8);
          sub_1000BA214();
          sub_100003934();
          sub_10001B350(v31, v32, v33, v34);
          v37 = 0;
        }

        sub_1000E14F8();
        sub_100051BBC();
        v21 = sub_100003A60();
        v23 = sub_10022C350(v21, v22);
        sub_1000BAEAC(v23);
        if (v9)
        {
          break;
        }

        v24 = sub_1000522BC();
        v25(v24);
        sub_100003A80();
        sub_100031B34();
        sub_1002E558C();
        if ((v0 & 1) == 0)
        {
          v35 = sub_1002E4D14();
          v36(v35);
          break;
        }

        v26 = sub_1000377B0();
        v27(v26);
        v28 = sub_1000E1628(&qword_100CAA7D8, 255, &type metadata accessor for WeatherCondition, &protocol conformance descriptor for WeatherCondition);
        sub_1000E15F4(v28);
        v29 = sub_1001921F8();
        v1(v29);
        v30 = sub_1002E52D0();
        v1(v30);
        v10 = v37;
      }
    }
  }

  sub_1002E5700();
  sub_10000536C();
}

void sub_1000BDD2C(uint64_t a1, uint64_t a2)
{
  sub_1002E56CC();
  if (v4 != v3)
  {
    v5 = v3;
    sub_1000A403C();
    if (v47)
    {
      v7 = 0;
      v8 = v6 + 64;
      sub_1002E4F88();
      sub_100030378();
      sub_1002E589C();
      v10 = v9 >> 6;
      while (v2)
      {
        sub_1002E4CD8();
LABEL_12:
        v16 = *(*(v11 + 56) + (v12 | (v7 << 6)));

        v17 = sub_100031B34();
        v19 = v18;

        if ((v19 & 1) == 0)
        {
          goto LABEL_78;
        }

        v20 = *(*(v5 + 56) + v17);
        v21 = 0xE700000000000000;
        v22 = 0x746C7561666564;
        switch(v20)
        {
          case 1:
            v22 = sub_1002E5558() | 0x77654E6900000000;
            v21 = 0xE900000000000073;
            break;
          case 2:
            v21 = 0xE600000000000000;
            v22 = sub_1002E4EE8();
            break;
          case 3:
            v21 = 0xE300000000000000;
            v22 = 7366766;
            break;
          case 4:
            sub_1002E54E0();
            v22 = v24 - 4;
            v21 = 0x8000000100ABA1D0;
            break;
          case 5:
            v22 = 0x4E746C7561666564;
            v28 = 7567205;
            goto LABEL_40;
          case 6:
            v22 = sub_1002E5748();
            v26 = 1315504128;
            goto LABEL_33;
          case 7:
            v22 = sub_1002E4E54();
            v26 = 1315241984;
LABEL_33:
            v21 = v26 | 0xEF73776500000000;
            break;
          case 8:
            v22 = sub_1002E4E54();
            v21 = 0xEE0070684E650000;
            break;
          case 9:
            v22 = sub_1002E5558() | 0x70684E6900000000;
            v25 = 1937204558;
            goto LABEL_21;
          case 10:
            v22 = 0xD000000000000015;
            v21 = 0x8000000100ABA230;
            break;
          case 11:
            v22 = sub_1002E4EE8() & 0xFFFFFFFFFFFFLL | 0x684E000000000000;
            v21 = 0xE900000000000070;
            break;
          case 12:
            v22 = sub_1002E4EE8() & 0xFFFFFFFFFFFFLL | 0x684E000000000000;
            v25 = 1769030000;
LABEL_21:
            v21 = v25 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 13:
            v22 = sub_1002E4EE8() & 0xFFFFFFFFFFFFLL | 0x654E000000000000;
            v21 = 0xEA00000000007377;
            break;
          case 14:
            v22 = 0x7377654E70686ELL;
            break;
          case 15:
            v22 = 0xD000000000000015;
            v21 = 0x8000000100ABA270;
            break;
          case 16:
            sub_1002E54E0();
            v22 = v23 - 3;
            v21 = 0x8000000100ABA290;
            break;
          case 17:
            v22 = 0x726F6E694D70686ELL;
            v27 = 0x7472656C41;
            goto LABEL_38;
          case 18:
            v22 = sub_1002E5748();
            v28 = 0xE700000000690000;
            goto LABEL_40;
          case 19:
            v22 = sub_1002E4E54();
            v28 = 0xE700000000650000;
LABEL_40:
            v21 = v28 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 20:
            v21 = 0xE800000000000000;
            v22 = sub_1002E5558() | 0x70684E6900000000;
            break;
          case 21:
            v21 = 0xE500000000000000;
            v22 = sub_1002E5558() & 0xFFFF0000FFFFFFFFLL | 0x6900000000;
            break;
          case 22:
            v22 = sub_1002E4EE8() & 0xFFFFFFFFFFFFLL | 0x684E000000000000;
            v27 = 0x7377654E70;
LABEL_38:
            v21 = v27 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 23:
            sub_1002E54E0();
            v22 = v29 - 5;
            v21 = 0x8000000100ABA2F0;
            break;
          case 24:
            v22 = 0x656C41726F6E696DLL;
            v21 = 0xEA00000000007472;
            break;
          default:
            break;
        }

        v30 = 0xE700000000000000;
        v31 = 0x746C7561666564;
        switch(v16)
        {
          case 1:
            sub_1002E5528();
            v31 = v32 | 0x77654E6900000000;
            v30 = 0xE900000000000073;
            break;
          case 2:
            v30 = 0xE600000000000000;
            sub_1002E4E14();
            break;
          case 3:
            v30 = 0xE300000000000000;
            v31 = 7366766;
            break;
          case 4:
            sub_1002E54E0();
            v31 = v35 - 4;
            v30 = 0x8000000100ABA1D0;
            break;
          case 5:
            v31 = 0x4E746C7561666564;
            v42 = 7567205;
            goto LABEL_69;
          case 6:
            sub_1000E67DC();
            v39 = 1315504128;
            goto LABEL_62;
          case 7:
            sub_1002E4E24();
            v39 = 1315241984;
LABEL_62:
            v30 = v39 | 0xEF73776500000000;
            break;
          case 8:
            sub_1002E4E24();
            v30 = 0xEE0070684E650000;
            break;
          case 9:
            sub_1002E5528();
            v31 = v38 | 0x70684E6900000000;
            v37 = 1937204558;
            goto LABEL_50;
          case 10:
            v31 = 0xD000000000000015;
            v30 = 0x8000000100ABA230;
            break;
          case 11:
            sub_1002E4E14();
            v31 = v34 & 0xFFFFFFFFFFFFLL | 0x684E000000000000;
            v30 = 0xE900000000000070;
            break;
          case 12:
            sub_1002E4E14();
            v31 = v36 & 0xFFFFFFFFFFFFLL | 0x684E000000000000;
            v37 = 1769030000;
LABEL_50:
            v30 = v37 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 13:
            sub_1002E4E14();
            v31 = v44 & 0xFFFFFFFFFFFFLL | 0x654E000000000000;
            v30 = 0xEA00000000007377;
            break;
          case 14:
            v31 = 0x7377654E70686ELL;
            break;
          case 15:
            v31 = 0xD000000000000015;
            v30 = 0x8000000100ABA270;
            break;
          case 16:
            sub_1002E54E0();
            v31 = v33 - 3;
            v30 = 0x8000000100ABA290;
            break;
          case 17:
            v31 = 0x726F6E694D70686ELL;
            v40 = 0x7472656C41;
            goto LABEL_67;
          case 18:
            sub_1000E67DC();
            v42 = 0xE700000000690000;
            goto LABEL_69;
          case 19:
            sub_1002E4E24();
            v42 = 0xE700000000650000;
LABEL_69:
            v30 = v42 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 20:
            v30 = 0xE800000000000000;
            sub_1002E5528();
            v31 = v41 | 0x70684E6900000000;
            break;
          case 21:
            v30 = 0xE500000000000000;
            sub_1002E5528();
            v31 = v43 & 0xFFFF0000FFFFFFFFLL | 0x6900000000;
            break;
          case 22:
            sub_1002E4E14();
            v31 = v45 & 0xFFFFFFFFFFFFLL | 0x684E000000000000;
            v40 = 0x7377654E70;
LABEL_67:
            v30 = v40 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 23:
            sub_1002E54E0();
            v31 = v46 - 5;
            v30 = 0x8000000100ABA2F0;
            break;
          case 24:
            v31 = 0x656C41726F6E696DLL;
            v30 = 0xEA00000000007472;
            break;
          default:
            break;
        }

        v47 = v22 == v31 && v21 == v30;
        if (v47)
        {
        }

        else
        {
          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v48 & 1) == 0)
          {
            goto LABEL_78;
          }
        }
      }

      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          JUMPOUT(0x1000BE2E4);
        }

        if (v7 >= v10)
        {
          break;
        }

        ++v13;
        if (*(v8 + 8 * v7))
        {
          sub_1000C825C();
          v2 = v15 & v14;
          goto LABEL_12;
        }
      }
    }
  }

LABEL_78:
  sub_1002E56B0();
}

void sub_1000BE3AC()
{
  sub_10000C778();
  sub_1000E1520();
  v79 = type metadata accessor for Date();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000038E4();
  v71 = v7;
  v8 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v72 = v10;
  v11 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  sub_100021368(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_100003CB4();
  type metadata accessor for ContentStatusBanner(0);
  sub_1000037C4();
  v78 = v13;
  __chkstk_darwin(v14);
  sub_100003848();
  v80 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  sub_100021390();
  __chkstk_darwin(v17);
  sub_1002E4BCC(v18, v19, v20, v21, v22, v23, v24, v25, v67);
  v26 = sub_10022C350(&qword_100CA38A0, &qword_100A2D7B0);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100031BFC();
  __chkstk_darwin(v28);
  sub_1000B9E30();
  if (v1 != v0 && *(v1 + 16) == *(v0 + 16))
  {
    v73 = v29;
    v74 = v30;
    v31 = 0;
    v32 = v30;
    sub_100069460();
    v68 = v33 >> 6;
    v69 = v1 + 64;
    v70 = (v5 + 8);
    v76 = v2;
    if (!v34)
    {
      goto LABEL_5;
    }

    while (1)
    {
      sub_100074730();
      v77 = v35;
LABEL_9:
      sub_1002E5390();
      v40 = *v39;
      v41 = v39[1];
      sub_1002E5890(v78);
      sub_100086524();
      sub_100066B44();
      v42 = sub_10022C350(&qword_100CA38A8, &qword_100A2D7B8);
      *v32 = v40;
      v32[1] = v41;
      sub_100087D60();
      sub_10003DE74();
      sub_10000E7B0();
      sub_10001B350(v43, v44, v45, v42);
      sub_10010ABD0(v40, v41);
LABEL_10:
      sub_100051BBC();
      sub_10022C350(&qword_100CA38A8, &qword_100A2D7B8);
      sub_100005404(v73);
      if (v54)
      {
        break;
      }

      v46 = *v73;
      v47 = v73[1];
      sub_100087D60();
      sub_10003DE74();
      sub_1000B8384(v46, v47);
      v49 = v48;
      sub_1000B84FC(v46, v47);
      if ((v49 & 1) == 0)
      {
        goto LABEL_39;
      }

      sub_100086524();
      sub_100066B44();
      v32 = v74;
      if (*v80 != *v76)
      {
        goto LABEL_38;
      }

      v50 = *(v80 + 2);
      v51 = *(v76 + 2);
      if (v50)
      {
        if (v50 == 1)
        {
          if (v51 != 1)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v51 < 2)
          {
            goto LABEL_38;
          }

          sub_1002E585C();
          v54 = v54 && v52 == v53;
          if (!v54 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_38;
          }
        }
      }

      else if (v51)
      {
        goto LABEL_38;
      }

      v55 = *(v75 + 48);
      sub_100095588();
      sub_100095588();
      sub_1000038B4(v3, 1, v79);
      if (v54)
      {
        sub_1000038B4(v3 + v55, 1, v79);
        if (!v54)
        {
          goto LABEL_37;
        }

        v56 = sub_1000E17C0();
        sub_1000180EC(v56, v57, &unk_100A2D7F0);
      }

      else
      {
        sub_100095588();
        sub_1000038B4(v3 + v55, 1, v79);
        if (v58)
        {
          (*v70)(v72, v79);
LABEL_37:
          sub_1000180EC(v3, qword_100CA4F80, &unk_100A580C0);
LABEL_38:
          sub_1002E5308();
LABEL_39:
          sub_100040B64();
          break;
        }

        sub_10003E21C();
        v59(v71, v3 + v55, v79);
        sub_1000426B4();
        sub_1000E1628(&qword_100CA39D0, 255, v60, &protocol conformance descriptor for Date);
        v61 = dispatch thunk of static Equatable.== infix(_:_:)();
        v62 = *v70;
        (*v70)(v71, v79);
        v62(v72, v79);
        sub_1000180EC(v3, &unk_100CB2CF0, &unk_100A2D7F0);
        if ((v61 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      sub_100040B64();
      sub_100040B64();
      if (!v77)
      {
LABEL_5:
        while (1)
        {
          v36 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v36 >= v68)
          {
            sub_10022C350(&qword_100CA38A8, &qword_100A2D7B8);
            sub_100003934();
            sub_10001B350(v63, v64, v65, v66);
            v77 = 0;
            goto LABEL_10;
          }

          ++v31;
          if (*(v69 + 8 * v36))
          {
            sub_10003B93C();
            v77 = v37;
            v31 = v38;
            goto LABEL_9;
          }
        }

        __break(1u);
        return;
      }
    }
  }

  sub_10000536C();
}

uint64_t sub_1000BEA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

unint64_t sub_1000BEA60()
{
  result = qword_100CB3D98;
  if (!qword_100CB3D98)
  {
    v3 = sub_10000C70C(255, &qword_100CB3D90, NSUserActivity_ptr);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v3, v0, v1);
    atomic_store(result, &qword_100CB3D98);
  }

  return result;
}

uint64_t sub_1000BEB58(uint64_t a1, const char *a2, void (*a3)(uint64_t, uint64_t))
{
  if (qword_100CA26C8 != -1)
  {
    sub_10001EAC4(&qword_100CA26C8);
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100019600(v5, qword_100D90AC0);
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_10000389C();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a2, v8, 2u);
    sub_100003884(v8);
  }

  sub_1003BF5AC(v12);
  v9 = v13;
  v10 = v14;
  sub_1000161C0(v12, v13);
  a3(v9, v10);
  return sub_100006F14(v12);
}

uint64_t sub_1000BECF0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  sub_10000C70C(0, &qword_100CA2E40, OS_os_log_ptr);
  v4 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  v5 = sub_100003984();
  sub_1000167F8(v5);
  os_log(_:dso:log:type:_:)(v6);

  sub_1003558E0(v10);
  v7 = v11;
  v8 = v12;
  sub_1000161C0(v10, v11);
  a3(v7, v8);
  return sub_100006F14(v10);
}

uint64_t sub_1000BEDB8(char a1)
{
  type metadata accessor for MainAction(0);
  sub_100003D98();
  __chkstk_darwin(v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  sub_10000FE08();
  sub_10004F034(v5, v8, v7, v6);
  sub_100018144(v10, &unk_100CD81B0, &unk_100A3B000);
  return sub_1000547B8(v5);
}

uint64_t sub_1000BEE7C(uint64_t (*a1)(void *, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[7];
  v4 = v1[8];
  sub_1000161C0(v1 + 4, v3);
  v5 = sub_1000BEF0C();
  return a1(v1, v5, v3, v4);
}

unint64_t sub_1000BEF0C()
{
  result = qword_100CCDE60;
  if (!qword_100CCDE60)
  {
    v3 = type metadata accessor for AppConfigurationMonitor();
    result = swift_getWitnessTable(byte_100A6EB58, v3, v0, v1);
    atomic_store(result, &qword_100CCDE60);
  }

  return result;
}

uint64_t sub_1000BEF8C()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  v5 = *(v0 + 144);
  OSSignpostID.init(log:)();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v2 + 8))(v4, v1);
  sub_1000161C0((v0 + 32), *(v0 + 56));
  return dispatch thunk of LocationManagerType.requestAuthorization()();
}

uint64_t sub_1000BF0B0()
{
  sub_1000BEF8C();
  sub_1000161C0((v0 + 32), *(v0 + 56));
  sub_1000BF0FC();
  sub_100010A98();
  return dispatch thunk of LocationManagerType.addObserver(_:)();
}

unint64_t sub_1000BF0FC()
{
  result = qword_100CD7510[0];
  if (!qword_100CD7510[0])
  {
    v3 = type metadata accessor for CurrentLocationMonitor();
    result = swift_getWitnessTable(aQ_14, v3, v0, v1);
    atomic_store(result, qword_100CD7510);
  }

  return result;
}

uint64_t sub_1000BF150()
{
  v64 = type metadata accessor for UnitConfiguration.Temperature();
  v60 = *(v64 - 8);
  __chkstk_darwin(v64);
  v57 = &v55[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = sub_10022C350(&qword_100CBE7F8, &qword_100A8B0C0);
  __chkstk_darwin(v63);
  v68 = &v55[-v2];
  v3 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  __chkstk_darwin(v3 - 8);
  v59 = &v55[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v67 = &v55[-v6];
  v69 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v69);
  v65 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10022C350(&qword_100CAA9F8, &qword_100A35390);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v55[-v10];
  v12 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  __chkstk_darwin(v12 - 8);
  v62 = &v55[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v58 = &v55[-v15];
  __chkstk_darwin(v16);
  v18 = &v55[-v17];
  v19 = type metadata accessor for Locale();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v55[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v55[-v24];
  static Locale.current.getter();
  v70 = v20;
  v71 = v25;
  v61 = *(v20 + 16);
  v61(v18, v25, v19);
  sub_10001B350(v18, 0, 1, v19);
  v26 = OBJC_IVAR____TtC7Weather13LocaleMonitor_lastLocale;
  swift_beginAccess();
  v27 = *(v9 + 56);
  sub_100060DE0(v18, v11, &qword_100CAA9F0, qword_100A44F50);
  v66 = v0;
  sub_100060DE0(v0 + v26, &v11[v27], &qword_100CAA9F0, qword_100A44F50);
  if (sub_100024D10(v11, 1, v19) == 1)
  {
    sub_10003FDF4(v18, &qword_100CAA9F0, qword_100A44F50);
    v28 = sub_100024D10(&v11[v27], 1, v19);
    v29 = v66;
    v30 = v68;
    if (v28 == 1)
    {
      sub_10003FDF4(v11, &qword_100CAA9F0, qword_100A44F50);
      v31 = v67;
      v32 = v65;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v33 = v58;
  sub_100060DE0(v11, v58, &qword_100CAA9F0, qword_100A44F50);
  if (sub_100024D10(&v11[v27], 1, v19) == 1)
  {
    sub_10003FDF4(v18, &qword_100CAA9F0, qword_100A44F50);
    (*(v70 + 8))(v33, v19);
    v29 = v66;
    v30 = v68;
LABEL_6:
    sub_10003FDF4(v11, &qword_100CAA9F8, &qword_100A35390);
    v32 = v65;
LABEL_7:
    v34 = *(v29 + 16);
    v35 = *(v29 + 24);
    v36 = v71;
    v37 = v61;
    v61(v32, v71, v19);
    type metadata accessor for EnvironmentAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
    sub_10004F034(v32, &v72, v34, v35);
    sub_10003FDF4(&v72, &unk_100CD81B0, &unk_100A3B000);
    sub_1000547B8(v32);
    v38 = v62;
    v37(v62, v36, v19);
    v31 = v67;
    sub_10001B350(v38, 0, 1, v19);
    swift_beginAccess();
    sub_1000C8C54(v38, v29 + v26);
    swift_endAccess();
    goto LABEL_8;
  }

  v46 = v70;
  (*(v70 + 32))(v22, &v11[v27], v19);
  sub_1004B866C(&qword_100CAAA10, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  v47 = v33;
  v56 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = *(v46 + 8);
  v48(v22, v19);
  sub_10003FDF4(v18, &qword_100CAA9F0, qword_100A44F50);
  v48(v47, v19);
  sub_10003FDF4(v11, &qword_100CAA9F0, qword_100A44F50);
  v29 = v66;
  v31 = v67;
  v32 = v65;
  v30 = v68;
  if ((v56 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  UnitManager.systemWideTemperatureUnit.getter();

  v39 = OBJC_IVAR____TtC7Weather13LocaleMonitor_lastTemperatureUnit;
  swift_beginAccess();
  v40 = *(v63 + 48);
  sub_100060DE0(v31, v30, &qword_100CB6198, &unk_100A49BC0);
  sub_100060DE0(v29 + v39, &v30[v40], &qword_100CB6198, &unk_100A49BC0);
  v41 = v64;
  if (sub_100024D10(v30, 1, v64) == 1)
  {
    if (sub_100024D10(&v30[v40], 1, v41) == 1)
    {
      sub_10003FDF4(v30, &qword_100CB6198, &unk_100A49BC0);
LABEL_18:
      v45 = v31;
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v42 = v59;
  sub_100060DE0(v30, v59, &qword_100CB6198, &unk_100A49BC0);
  if (sub_100024D10(&v30[v40], 1, v41) == 1)
  {
    (*(v60 + 8))(v42, v41);
LABEL_13:
    sub_10003FDF4(v30, &qword_100CBE7F8, &qword_100A8B0C0);
    goto LABEL_14;
  }

  v49 = v30;
  v50 = v60;
  v51 = &v49[v40];
  v52 = v57;
  (*(v60 + 32))(v57, v51, v41);
  sub_1004B866C(qword_100CBE800, &type metadata accessor for UnitConfiguration.Temperature, &protocol conformance descriptor for UnitConfiguration.Temperature);
  LODWORD(v66) = dispatch thunk of static Equatable.== infix(_:_:)();
  v53 = *(v50 + 8);
  v53(v52, v41);
  v53(v42, v41);
  sub_10003FDF4(v68, &qword_100CB6198, &unk_100A49BC0);
  if (v66)
  {
    goto LABEL_18;
  }

LABEL_14:
  swift_beginAccess();
  sub_1000C8CC4(v31, v29 + v39);
  swift_endAccess();
  v44 = *(v29 + 16);
  v43 = *(v29 + 24);
  sub_100060DE0(v31, v32, &qword_100CB6198, &unk_100A49BC0);
  type metadata accessor for ConfiguredUnitsAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  sub_10004F034(v32, &v72, v44, v43);
  sub_10003FDF4(&v72, &unk_100CD81B0, &unk_100A3B000);
  sub_1000547B8(v32);
  v45 = v31;
LABEL_19:
  sub_10003FDF4(v45, &qword_100CB6198, &unk_100A49BC0);
  return (*(v70 + 8))(v71, v19);
}

Swift::Void __swiftcall LocaleMonitor.applicationWillEnterForeground()()
{
  sub_1000BF150();

  sub_1000C9138();
}

uint64_t sub_1000BFBA0(_BYTE *a1, uint64_t a2, void (*a3)(uint64_t, unsigned __int8 *, uint64_t))
{
  v1598 = a1;
  v1599 = a3;
  v1602 = a2;
  v3 = type metadata accessor for ActivityAction(0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  v6 = sub_100003918(&v1420 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1605 = type metadata accessor for ViewState(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_100003878();
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
  sub_10000E70C();
  v17 = sub_100003918(v16);
  v1604 = type metadata accessor for TimeState(v17);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003848();
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
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v26);
  sub_10000E70C();
  v28 = sub_100003918(v27);
  v1603 = type metadata accessor for NotificationsOptInState(v28);
  sub_1000037E8();
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_10000E70C();
  v39 = sub_100003918(v38);
  v1601 = type metadata accessor for NotificationsState(v39);
  sub_1000037E8();
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_10000E70C();
  v50 = sub_100003918(v49);
  v1600 = type metadata accessor for LocationsState(v50);
  sub_1000037E8();
  __chkstk_darwin(v51);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v58);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_10000E70C();
  v61 = sub_100003918(v60);
  v1607 = type metadata accessor for EnvironmentState(v61);
  sub_1000037E8();
  __chkstk_darwin(v62);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_10000E70C();
  v72 = sub_100003918(v71);
  v1606 = type metadata accessor for AppConfigurationState(v72);
  sub_1000037E8();
  __chkstk_darwin(v73);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v80);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_10000E70C();
  v83 = sub_100003918(v82);
  v1596[1] = type metadata accessor for ModalViewState(v83);
  sub_1000037E8();
  __chkstk_darwin(v84);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_10000E70C();
  sub_100003990(v103);
  v104 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v105 = sub_100003810(v104);
  __chkstk_darwin(v105);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v108);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v120);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_10000E70C();
  sub_100003990(v124);
  v125 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v126 = sub_100003810(v125);
  __chkstk_darwin(v126);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v131);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v140);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v141);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v142);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_10000E70C();
  sub_100003990(v145);
  v146 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v147 = sub_100003810(v146);
  __chkstk_darwin(v147);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v148);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v149);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v150);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v151);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v152);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v161);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v162);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_10000E70C();
  sub_100003990(v166);
  v167 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v168 = sub_100003810(v167);
  __chkstk_darwin(v168);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v174);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v175);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v180);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v184);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v185);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v186);
  sub_10000E70C();
  sub_100003990(v187);
  v188 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v189 = sub_100003810(v188);
  __chkstk_darwin(v189);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v190);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v191);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v192);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v193);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v194);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v195);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v196);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v197);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v198);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v199);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v200);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v201);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v202);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v203);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v204);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v205);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v206);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v207);
  sub_10000E70C();
  sub_100003990(v208);
  v209 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v210 = sub_100003810(v209);
  __chkstk_darwin(v210);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v211);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v212);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v213);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v214);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v215);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v216);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v217);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v218);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v219);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v220);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v221);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v222);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v223);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v224);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v225);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v226);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v227);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v228);
  sub_10000E70C();
  sub_100003918(v229);
  v1596[0] = type metadata accessor for Locale();
  v1597 = *(v1596[0] - 8);
  __chkstk_darwin(v1596[0]);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v230);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v231);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v232);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v233);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v234);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v235);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v236);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v237);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v238);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v239);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v240);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v241);
  sub_10000E70C();
  sub_100003990(v242);
  v243 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  v244 = sub_100003810(v243);
  __chkstk_darwin(v244);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v245);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v246);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v247);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v248);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v249);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v250);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v251);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v252);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v253);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v254);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v255);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v256);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v257);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v258);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v259);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v260);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v261);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v262);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v263);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v264);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v265);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v266);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v267);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v268);
  sub_10000E70C();
  sub_100003990(v269);
  v270 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v271 = sub_100003810(v270);
  __chkstk_darwin(v271);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v272);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v273);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v274);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v275);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v276);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v277);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v278);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v279);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v280);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v281);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v282);
  v284 = &v1420 - v283;
  __chkstk_darwin(v285);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v286);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v287);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v288);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v289);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v290);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v291);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v292);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v293);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v294);
  v296 = &v1420 - v295;
  v297 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v298 = sub_100003810(v297);
  __chkstk_darwin(v298);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v299);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v300);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v301);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v302);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v303);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v304);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v305);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v306);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v307);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v308);
  v310 = (&v1420 - v309);
  __chkstk_darwin(v311);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v312);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v313);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v314);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v315);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v316);
  v318 = (&v1420 - v317);
  __chkstk_darwin(v319);
  v321 = &v1420 - v320;
  __chkstk_darwin(v322);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v323);
  __chkstk_darwin(v324);
  v326 = &v1420 - v325;
  __chkstk_darwin(v327);
  v329 = &v1420 - v328;
  type metadata accessor for EnvironmentAction(0);
  sub_1000037E8();
  __chkstk_darwin(v330);
  v332 = &v1420 - ((v331 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C81EC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      LODWORD(v1599) = *v332;
      v432 = sub_100003BCC(&v1592);
      sub_10001B350(v432, v433, v434, v1606);
      v435 = sub_100031F38(v1452);
      sub_1000C8420(v435, v436, v437);
      v438 = v1598;
      sub_1000D3DC0(*v1598);
      sub_1000F0054(v438[1]);
      sub_1000C8A78(v438[3]);
      sub_100021424();
      sub_100051BBC();
      sub_100003A40(v332);
      if (v344)
      {
        sub_100038068();
        v439 = sub_1000E159C(&v1525);
        v440(v439);
        sub_100003A40(v332);
        if (!v344)
        {
          sub_1000180EC(v332, &qword_100CAA9F0, qword_100A44F50);
        }
      }

      else
      {
        v1099 = sub_1000B91C8();
        v1100(v1099);
        v310 = v1607;
      }

      v1101 = &v438[v310[9]];
      v1102 = v310[11];
      LODWORD(v1585) = v438[v310[10]];
      LODWORD(v1589) = v438[v1102];
      v1103 = v310[13];
      LODWORD(v1583) = v438[v310[12]];
      LODWORD(v1588) = v438[v1103];
      v1104 = v1607[15];
      v1582 = *&v438[v1607[14]];
      LODWORD(v1587) = v438[v1104];
      v1105 = v1607[17];
      LODWORD(v1581) = v438[v1607[16]];
      LODWORD(v1586) = v438[v1105];
      v1106 = *v1101;
      v1596[0] = v1101[1];
      v1107 = v1596[0];
      sub_1000E1414();
      v1109 = &v438[v1108];
      v1110 = v1109[1];
      v1590 = *v1109;
      v1111 = v1590;
      v1591 = v1110;
      v1113 = v1109[2];
      v1112 = v1109[3];
      v1115 = v438[v1114];
      v1117 = v1109[4];
      v1116 = v1109[5];
      v1118 = v1564;
      sub_1000C8A6C();
      *v1118 = v1119;
      sub_10005275C();
      v1118[1] = v1120;
      v1118[2] = v1599;
      sub_1001707F0();
      v1118[3] = v1121;
      (*(v1597 + 4))(&v1118[v1122], v1506);
      sub_1000884A4();
      v1124 = &v1118[v1123];
      *v1124 = v1106;
      v1124[1] = v1107;
      sub_1000D3C58();
      sub_100011524(v1125);
      sub_100011524(v1607[11]);
      sub_100011524(v1607[12]);
      v1126 = v1607;
      sub_100011524(v1607[13]);
      *&v1118[v1126[14]] = v1582;
      sub_100011524(v1126[15]);
      sub_100011524(v1126[16]);
      sub_100011524(v1126[17]);
      v1127 = &v1118[v1126[18]];
      *v1127 = v1111;
      v1127[1] = v1110;
      v1127[2] = v1113;
      v1127[3] = v1112;
      v1127[4] = v1117;
      v1127[5] = v1116;
      v1118[v1126[19]] = v1115;
      sub_10000E7B0();
      sub_10001B350(v1128, v1129, v1130, v1126);
      v1131 = sub_100003BCC(&v1599);
      sub_10001B350(v1131, v1132, v1133, v1600);
      v1134 = sub_100003BCC(&v1603);
      sub_10001B350(v1134, v1135, v1136, v1601);
      v1137 = sub_100003BCC(&v1607);
      sub_10001B350(v1137, v1138, v1139, v1603);
      v1140 = sub_100003BCC(&v1611);
      sub_10001B350(v1140, v1141, v1142, v1604);
      v1143 = sub_100003BCC(&v1612[24]);
      sub_10001B350(v1143, v1144, v1145, v1605);
      v1146 = sub_100021088(v1556);
      sub_100043840(v1146, v1147, v1148);
      sub_100017D68();
      v1149 = v1602;
      sub_10003778C();
      sub_1000C81EC();
      sub_1000131DC();
      sub_100095588();
      v1150 = sub_1000162A4();
      sub_100041064(v1150, v1151);
      v1152 = v1116;

      sub_100040D24();
      v1153 = v1591;
      v1154 = v1113;
      v1155 = v1112;
      v1156 = v1117;
      if (v1110 == 1)
      {
        sub_1000180EC(v1118, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v1111, v1157);
        sub_10001F700();
        sub_1000730E8();
      }

      v1158 = v1606;
      v1159 = v1473;
      sub_10001F700();
      sub_1000730E8();
      v1160 = *(v1149 + 16);
      LODWORD(v1599) = *(v1149 + 24);
      sub_10003778C();
      sub_100095588();
      sub_100003A40(v1111);
      v1161 = v1465;
      if (v344)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v1162 = sub_1000131C4();
        v1164 = sub_100024D10(v1162, v1163, v1158);
        v1165 = v1111;
        v1166 = v1164;

        v344 = v1166 == 1;
        v1167 = v1450;
        if (!v344)
        {
          sub_1000180EC(v1165, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();

        v1167 = v1450;
      }

      v1606 = v1160;
      sub_1000436AC(v1596);
      sub_100095588();
      v1168 = sub_1000131C4();
      sub_1000038B4(v1168, v1169, v1126);
      if (v344)
      {
        v1170 = v1167;
        sub_10008661C(v1149 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100016E84();
        sub_1000C81EC();
        sub_1000038B4(v1167, 1, v1126);
        v370 = v1483;
        if (!v344)
        {
          sub_1000180EC(v1170, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v370 = v1483;
      }

      sub_100037814();
      sub_100095588();
      v1171 = sub_1000201BC();
      sub_1000038B4(v1171, v1172, v1600);
      if (v344)
      {
        sub_100074F64();
        sub_1000C81EC();
        sub_10000C814(v1126);
        if (!v344)
        {
          sub_1000180EC(v1126, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
      }

      sub_1000519E0();
      sub_100095588();
      sub_10000E7EC(v1113);
      if (v344)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_10000E7EC(v1113);
        if (!v344)
        {
          sub_1000180EC(v1113, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
      }

      sub_100030224(&v1607);
      sub_100095588();
      sub_10000C814(v1161);
      if (v344)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_10000C814(v1161);
        if (!v344)
        {
          sub_1000180EC(v1161, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
      }

      sub_1000C893C(&v1611);
      sub_100095588();
      sub_100003A40(v1159);
      if (v344)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_100003A40(v1159);
        if (!v344)
        {
          sub_1000180EC(v1159, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_1000436AC(&v1612[24]);
      sub_100095588();
      v1173 = sub_1000131C4();
      sub_100013710(v1173, v1174);
      if (v344)
      {
        sub_100010A64();
        sub_1000113EC();
        sub_1000C81EC();
        sub_10000554C(v370);
        if (!v344)
        {
          sub_1000180EC(v370, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_1000730E8();
      }

      sub_10001F700();
      sub_100071A00();
      sub_100120148();
      sub_1000B0EFC();
      v1175 = sub_1000E5A60();
      sub_100003B6C(v1175);
      sub_100020B34();
      sub_1000888E4();
      sub_10001322C();
      sub_10003E038(v1176, v1177, v1178, v1179, v1180, v1181, v1182, v1183, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, *(&v1430 + 1), v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445);
      sub_1000BCF58();

      sub_1000180EC(v1526, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v1584, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1580, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1576, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v1572, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1568, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v1564, &qword_100CA6638, &unk_100A31460);
      v611 = &v1592;
      goto LABEL_253;
    case 2u:
      v395 = *v332;
      v396 = v332[1];
      sub_100045448();
      sub_1000161C0((v397 + 56), *(v397 + 80));
      v335 = sub_10017F658(v1598[3], v1602, v395 | (v396 << 8));
      goto LABEL_25;
    case 3u:
      v408 = v1597;
      v409 = v1597 + 32;
      v410 = *(v1597 + 4);
      v411 = sub_1000326C8(v1461);
      v412 = v1596[0];
      v410(v411, v332, v1596[0]);
      sub_100003934();
      sub_10001B350(v413, v414, v415, v1606);
      v416 = sub_100192448(&v1450);
      v410(v416, v329, v412);
      sub_10000E7B0();
      sub_10001B350(v417, v418, v419, v412);
      v420 = v1598;
      sub_1000D3DC0(*v1598);
      sub_1000F0054(v420[1]);
      sub_100040FAC(v420[2]);
      LODWORD(v1590) = v420[3];
      sub_100042230();
      sub_100051BBC();
      sub_10000554C(v329);
      v1599 = v410;
      v1594 = v409;
      if (v344)
      {
        v971 = v1607;
        v408[2](v1504, &v420[v1607[8]], v412);
        sub_10000554C(v329);
        if (!v344)
        {
          sub_1000180EC(v329, &qword_100CAA9F0, qword_100A44F50);
        }
      }

      else
      {
        v410(v1504, v329, v412);
        v971 = v1607;
      }

      v972 = v971[11];
      LODWORD(v1586) = v420[v971[10]];
      LODWORD(v1587) = v420[v972];
      v973 = v971[13];
      LODWORD(v1584) = v420[v971[12]];
      LODWORD(v1585) = v420[v973];
      v974 = v971[15];
      v1582 = *&v420[v971[14]];
      v975 = v420;
      LODWORD(v1583) = v420[v974];
      v976 = &v420[v971[9]];
      v977 = v971[17];
      LODWORD(v1581) = v420[v971[16]];
      v979 = *v976;
      v1597 = *(v976 + 1);
      v978 = v1597;
      LODWORD(v1580) = v975[v977];
      v980 = v971[19];
      v981 = &v975[v971[18]];
      v982 = *(v981 + 1);
      v1588 = *v981;
      v983 = v1588;
      v1589 = v982;
      v985 = *(v981 + 3);
      v1596[0] = *(v981 + 2);
      v984 = v1596[0];
      LODWORD(v1598) = v975[v980];
      v986 = *(v981 + 4);
      v1579 = *(v981 + 5);
      v987 = v1495;
      sub_1000C8A6C();
      *v987 = v988;
      sub_10005275C();
      v987[1] = v989;
      sub_100192580();
      v987[2] = v990;
      v987[3] = v1590;
      (v1599)(&v987[v991], v1504);
      v992 = &v987[v971[9]];
      *v992 = v979;
      v992[1] = v978;
      sub_100043AA4(v971[10]);
      sub_100043AA4(v971[11]);
      sub_100043AA4(v971[12]);
      sub_100043AA4(v971[13]);
      *&v987[v971[14]] = v1582;
      sub_100043AA4(v971[15]);
      sub_100043AA4(v971[16]);
      sub_100043AA4(v971[17]);
      v993 = &v987[v971[18]];
      *v993 = v983;
      v993[1] = v982;
      v993[2] = v984;
      v993[3] = v985;
      v994 = v1579;
      v993[4] = v986;
      v993[5] = v994;
      v987[v971[19]] = v1598;
      sub_10000E7B0();
      sub_10001B350(v995, v996, v997, v971);
      v998 = sub_100003BCC(&v1533);
      v999 = v1600;
      sub_10001B350(v998, v1000, v1001, v1600);
      v1002 = sub_100003BCC(&v1538);
      sub_10001B350(v1002, v1003, v1004, v1601);
      v1005 = sub_100003BCC(&v1543);
      sub_10001B350(v1005, v1006, v1007, v1603);
      v1008 = sub_100003BCC(&v1548);
      sub_10001B350(v1008, v1009, v1010, v1604);
      v1011 = sub_100003BCC(&v1553);
      sub_10001B350(v1011, v1012, v1013, v1605);
      v1014 = sub_100021088(&v1481);
      sub_100043840(v1014, v1015, v1016);
      sub_100017D68();
      v1017 = v1602;
      sub_10003778C();
      sub_1000C81EC();
      sub_1000131DC();
      sub_100051BBC();
      v1018 = sub_1000162A4();
      sub_100041064(v1018, v1019);
      v1020 = v994;

      v1021 = v1588;
      v1022 = v1589;
      sub_100195598();
      v1023 = v985;
      v1024 = v986;
      v1025 = v999;
      if (v978 == 1)
      {
        sub_1000180EC(v983, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v982, v1026);
        sub_10001F700();
        sub_1000730E8();
      }

      v1027 = v1606;
      v1028 = v1472;
      sub_10001F700();
      sub_1000730E8();
      v1029 = *(v1017 + 16);
      LODWORD(v1599) = *(v1017 + 24);
      sub_10003778C();
      sub_100051BBC();
      sub_100003A40(v982);
      v1030 = v1464;
      if (v344)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v1031 = sub_1000131C4();
        v1033 = sub_100024D10(v1031, v1032, v1027);
        v1034 = v982;
        v1035 = v1033;

        v344 = v1035 == 1;
        v1036 = v1458;
        v1037 = v1449;
        if (!v344)
        {
          sub_1000180EC(v1034, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();

        v1036 = v1458;
        v1037 = v1449;
      }

      v1606 = v1029;
      sub_1000436AC(v1519);
      sub_100051BBC();
      v1038 = sub_1000131C4();
      sub_1000113D0(v1038, v1039);
      if (v344)
      {
        v1040 = v1037;
        sub_10008661C(v1017 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100016E84();
        sub_1000C81EC();
        sub_100003A40(v1037);
        v370 = v1482;
        if (!v344)
        {
          sub_1000180EC(v1040, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v370 = v1482;
      }

      sub_100042230();
      sub_100051BBC();
      sub_1000038B4(v994, 1, v1025);
      if (v344)
      {
        sub_100074F64();
        sub_1000C81EC();
        sub_10000E7EC(v994);
        if (!v344)
        {
          sub_1000180EC(v994, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
      }

      sub_1000870F8(&v1538);
      sub_100051BBC();
      sub_1000038B4(v1036, 1, v1601);
      if (v344)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_10000C814(v1036);
        if (!v344)
        {
          sub_1000180EC(v1036, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
      }

      sub_100030224(&v1543);
      sub_100051BBC();
      sub_10000C814(v1030);
      if (v344)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_10000C814(v1030);
        if (!v344)
        {
          sub_1000180EC(v1030, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
      }

      sub_1000C893C(&v1548);
      sub_100051BBC();
      sub_1000038B4(v1028, 1, v1604);
      if (v344)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_100003BFC(v1028);
        if (!v344)
        {
          sub_1000180EC(v1028, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_1000436AC(&v1553);
      sub_100051BBC();
      v1041 = sub_1000131C4();
      sub_100013710(v1041, v1042);
      if (v344)
      {
        sub_100010A64();
        sub_1000C81EC();
        sub_10000554C(v370);
        if (!v344)
        {
          sub_1000180EC(v370, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_10008803C();
      }

      sub_10001F700();
      sub_100071A00();
      sub_100120148();
      sub_1000B0EFC();
      v1043 = sub_1000E5A60();
      sub_100003B6C(v1043);
      sub_100020B34();
      sub_1000888E4();
      goto LABEL_320;
    case 4u:
      v368 = v1489;
      sub_1000730E8();
      sub_100045448();
      sub_1000161C0((v369 + 96), *(v369 + 120));
      v370 = sub_100728154(v1602, v368);
      v371 = type metadata accessor for ActivityAction;
      v372 = v368;
      goto LABEL_153;
    case 5u:
      v441 = *(v332 + 1);
      v1594 = *v332;
      v1593 = v441;
      sub_100003934();
      sub_10001B350(v442, v443, v444, v1606);
      v445 = sub_100031F38(&v1451);
      v446 = v1596[0];
      sub_10001B350(v445, v447, v448, v1596[0]);
      v449 = v1598;
      sub_1000F0054(*v1598);
      sub_100040FAC(v449[1]);
      LODWORD(v1590) = v449[2];
      LODWORD(v1589) = v449[3];
      sub_1000131DC();
      sub_100051BBC();
      sub_100005404(v284);
      if (v344)
      {
        sub_100038068();
        sub_1000C8F78();
        v451(v1502, &v449[v450], v446);
        sub_100005404(v284);
        if (!v344)
        {
          sub_1000180EC(v284, &qword_100CAA9F0, qword_100A44F50);
        }
      }

      else
      {
        sub_1000AF66C();
        v1184(v1502, v284, v446);
        v310 = v1607;
      }

      sub_100021DCC(v449[v310[10]]);
      LODWORD(v1588) = v449[v1185];
      v1186 = v310[13];
      LODWORD(v1585) = v449[v310[12]];
      LODWORD(v1586) = v449[v1186];
      v1187 = v310[15];
      v1583 = *&v449[v310[14]];
      LODWORD(v1584) = v449[v1187];
      v1188 = v310[17];
      LODWORD(v1581) = v449[v310[16]];
      LODWORD(v1582) = v449[v1188];
      v1189 = v310[19];
      v1190 = &v449[v310[18]];
      v1191 = *(v1190 + 1);
      v1599 = *v1190;
      v1596[0] = v1191;
      v1193 = *(v1190 + 2);
      v1192 = *(v1190 + 3);
      v1195 = *(v1190 + 4);
      v1194 = *(v1190 + 5);
      v1597 = v1195;
      v1580 = v1194;
      v1196 = v449[v1189];
      v1197 = v1494;
      sub_10005275C();
      *v1197 = v1198;
      sub_100192580();
      v1197[1] = v1199;
      v1197[2] = v1590;
      v1197[3] = v1589;
      v1201 = *(v332 + 4);
      v1200 = (v332 + 32);
      v1201(&v1197[v310[8]], v1502);
      v1202 = &v1197[v310[9]];
      v1203 = v1593;
      *v1202 = v1594;
      v1202[1] = v1203;
      sub_10003BB84(v310[10]);
      sub_10003BB84(v310[11]);
      sub_10003BB84(v310[12]);
      sub_10003BB84(v310[13]);
      *&v1197[v310[14]] = v1583;
      sub_10003BB84(v310[15]);
      sub_10003BB84(v310[16]);
      sub_10003BB84(v310[17]);
      v1204 = &v1197[v310[18]];
      *v1204 = v1599;
      v1204[1] = v1191;
      v1204[2] = v1193;
      v1204[3] = v1192;
      v1205 = v1580;
      v1204[4] = v1195;
      v1204[5] = v1205;
      v1197[v310[19]] = v1196;
      sub_10000E7B0();
      sub_10001B350(v1206, v1207, v1208, v310);
      v1209 = sub_100003BCC(&v1532);
      sub_1000C8B5C(v1209, v1210, v1211);
      v1212 = sub_100003BCC(&v1537);
      sub_10001B350(v1212, v1213, v1214, v1601);
      v1215 = sub_100003BCC(&v1542);
      sub_10001B350(v1215, v1216, v1217, v1603);
      v1218 = sub_100003BCC(&v1547);
      sub_10001B350(v1218, v1219, v1220, v1604);
      v1221 = sub_100003BCC(&v1552);
      sub_10001B350(v1221, v1222, v1223, v1605);
      v1224 = v1468;
      sub_1000253CC();
      sub_100051B1C(v1225, v1226, v1227, v1228);
      sub_100017D68();
      v1229 = v1602;
      sub_100021424();
      sub_1000C81EC();
      sub_10003778C();
      sub_100051BBC();
      v1230 = sub_1000131C4();
      v1232 = sub_100024D10(v1230, v1231, v310);
      v1233 = v1205;
      v1234 = v1599;
      sub_100195598();
      v1235 = v1193;
      v1236 = v1192;
      v1237 = v1597;
      v1238 = v1196;
      if (v1232 == 1)
      {
        sub_1000180EC(v1224, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v1200, v1239);
        sub_10001F700();
        sub_1000730E8();
      }

      sub_10001F700();
      sub_1000730E8();
      v1240 = *(v1229 + 16);
      LODWORD(v1598) = *(v1229 + 24);
      sub_100051BBC();
      v1241 = v1606;
      sub_100013710(v318, 1);
      v1242 = v1463;
      v1599 = v1240;
      if (v344)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v1243 = sub_100024D10(v318, 1, v1241);

        v344 = v1243 == 1;
        v1244 = v1471;
        v1245 = v1457;
        if (!v344)
        {
          sub_1000180EC(v318, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();

        v1244 = v1471;
        v1245 = v1457;
      }

      sub_1000325C0();
      sub_100051BBC();
      v1246 = sub_1000162B0();
      sub_100013710(v1246, v1247);
      if (v344)
      {
        sub_10008661C(v1229 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100016E84();
        sub_1000C81EC();
        sub_10000554C(v1240);
        v1248 = v1481;
        if (!v344)
        {
          sub_1000180EC(v1240, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v1248 = v1481;
      }

      sub_100042230();
      sub_100051BBC();
      sub_1000038B4(v1192, 1, v1238);
      if (v344)
      {
        sub_100074F64();
        sub_1000C81EC();
        sub_100003BDC(v1192);
        if (!v344)
        {
          sub_1000180EC(v1192, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
      }

      sub_100051BBC();
      sub_1000038B4(v1245, 1, v1601);
      if (v344)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_10000C814(v1245);
        if (!v344)
        {
          sub_1000180EC(v1245, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
      }

      sub_1000436AC(&v1542);
      sub_100051BBC();
      sub_10000C814(v1242);
      if (v344)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_10000C814(v1242);
        if (!v344)
        {
          sub_1000180EC(v1242, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
      }

      sub_100051BBC();
      sub_1000038B4(v1244, 1, v1604);
      if (v344)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_100005404(v1244);
        if (!v344)
        {
          sub_1000180EC(v1244, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_100051BBC();
      sub_100005404(v1248);
      if (v344)
      {
        sub_100010A64();
        sub_1000C81EC();
        sub_100005404(v1248);
        if (!v344)
        {
          sub_1000180EC(v1248, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_1000730E8();
      }

      sub_10001F700();
      sub_1000E3238();
      v370 = *(v1229 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v1249 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v1249);
      sub_100041990();
      v910 = sub_10004277C();
      v912 = v1536;
      v913 = v1545;
      v914 = v1554;
      v915 = v1558;
      v916 = v1560;
      v917 = &v1580;
      goto LABEL_287;
    case 6u:
      v463 = *v332;
      v464 = sub_100003BCC(v1514);
      sub_10001B350(v464, v465, v466, v1606);
      v467 = v1429;
      sub_10002435C();
      v469 = *(v468 - 256);
      sub_10001B350(v470, v471, v472, v469);
      v473 = *v1598;
      v474 = v1598[1];
      v475 = v1598[2];
      v476 = v1598[3];
      sub_10003778C();
      sub_100051BBC();
      sub_100003A40(v467);
      LODWORD(v1599) = v463;
      LODWORD(v1594) = v473;
      LODWORD(v1593) = v474;
      LODWORD(v1592) = v475;
      LODWORD(v1591) = v476;
      if (v344)
      {
        v1323 = v1607;
        v477 = sub_1000E159C(&v1526);
        v478(v477);
        sub_100003A40(v467);
        if (!v344)
        {
          sub_1000180EC(v467, &qword_100CAA9F0, qword_100A44F50);
        }
      }

      else
      {
        (*(v1597 + 4))(v1507, v467, v469);
        v1323 = v1607;
      }

      v1324 = &v1598[v1323[9]];
      v1325 = *v1324;
      v1596[0] = v1324[1];
      v1326 = v1596[0];
      v1327 = v1323[12];
      LODWORD(v1586) = v1598[v1323[11]];
      LODWORD(v1589) = v1598[v1327];
      v1328 = v1323[14];
      LODWORD(v1585) = v1598[v1323[13]];
      v1588 = *&v1598[v1328];
      v1329 = v1323[16];
      LODWORD(v1584) = v1598[v1323[15]];
      sub_100021DCC(v1598[v1329]);
      v1330 = v1323[18];
      LODWORD(v1583) = *(v1331 + v1323[17]);
      v1333 = *(v1331 + v1330 + 8);
      v1590 = *(v1331 + v1330);
      v1332 = v1590;
      v1335 = *(v1331 + v1330 + 16);
      v1334 = *(v1331 + v1330 + 24);
      LODWORD(v1598) = *(v1331 + v1323[19]);
      v1337 = *(v1331 + v1330 + 32);
      v1336 = *(v1331 + v1330 + 40);
      v1338 = v1496;
      sub_1001707F0();
      *v1338 = v1339;
      sub_1000C8A6C();
      v1338[1] = v1340;
      sub_10005275C();
      v1338[2] = v1341;
      sub_100192580();
      v1343 = sub_1000B7C04(v1342);
      v1344(v1343, v1507);
      v1345 = &v1338[v1323[9]];
      *v1345 = v1325;
      v1345[1] = v1326;
      v1338[v1323[10]] = v1599;
      sub_10003BB84(v1323[11]);
      sub_10003BB84(v1323[12]);
      sub_10003BB84(v1323[13]);
      *&v1338[v1323[14]] = v1588;
      sub_10003BB84(v1323[15]);
      sub_10003BB84(v1323[16]);
      sub_10003BB84(v1323[17]);
      v1346 = &v1338[v1323[18]];
      *v1346 = v1332;
      v1346[1] = v1333;
      v1346[2] = v1335;
      v1346[3] = v1334;
      v1346[4] = v1337;
      v1346[5] = v1336;
      v1338[v1323[19]] = v1598;
      sub_10000E7B0();
      sub_10001B350(v1347, v1348, v1349, v1323);
      v1350 = sub_100003BCC(v1534);
      sub_10001B350(v1350, v1351, v1352, v1600);
      v1353 = sub_100003BCC(&v1539);
      sub_10001B350(v1353, v1354, v1355, v1601);
      v1356 = sub_100003BCC(&v1544);
      sub_10001B350(v1356, v1357, v1358, v1603);
      v1359 = sub_100003BCC(&v1549);
      sub_10001B350(v1359, v1360, v1361, v1604);
      v1362 = sub_100003BCC(&v1554);
      sub_10001B350(v1362, v1363, v1364, v1605);
      v1365 = sub_100021088(&v1483);
      sub_100043840(v1365, v1366, v1367);
      sub_100017D68();
      v1368 = v1602;
      sub_10003778C();
      sub_1000C81EC();
      sub_1000325C0();
      sub_100051BBC();
      v1369 = sub_1000162B0();
      sub_100041064(v1369, v1370);
      v1371 = v1336;

      sub_100040D24();
      v1372 = v1333;
      v1373 = v1335;
      v1374 = v1334;
      v1375 = v1337;
      if (v1325 == 1)
      {
        sub_1000180EC(v1323, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v1338, v1376);
        sub_10001F700();
        sub_1000730E8();
      }

      v1377 = v1427;
      sub_10001F700();
      sub_1000730E8();
      v1378 = v1368;
      v1379 = *(v1368 + 16);
      LODWORD(v1598) = *(v1368 + 24);
      sub_100030224(v1514);
      sub_100051BBC();
      v1380 = sub_1000162A4();
      v1381 = v1606;
      sub_100013710(v1380, v1382);
      v1383 = v1459;
      v1384 = v1451;
      v1385 = v1600;
      v1599 = v1379;
      if (v344)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v1386 = sub_1000162A4();
        v1388 = sub_100024D10(v1386, v1387, v1381);

        if (v1388 != 1)
        {
          sub_1000180EC(v1377, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();
      }

      sub_100051BBC();
      v1389 = sub_1000162B0();
      sub_1000113D0(v1389, v1390);
      if (v344)
      {
        sub_10008661C(v1368 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100016E84();
        sub_1000C81EC();
        sub_100003A40(v1384);
        v1391 = v1490;
        v1392 = v1484;
        if (!v344)
        {
          sub_1000180EC(v1384, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v1391 = v1490;
        v1392 = v1484;
      }

      sub_1000325C0();
      sub_100051BBC();
      v1393 = sub_1000162B0();
      sub_1000038B4(v1393, v1394, v1385);
      if (v344)
      {
        sub_100074F64();
        sub_1000C81EC();
        v1395 = sub_1000162B0();
        sub_1000038B4(v1395, v1396, v1385);
        v1397 = v1466;
        if (!v344)
        {
          sub_1000180EC(v1384, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
        v1397 = v1466;
      }

      sub_1000436AC(&v1539);
      sub_100051BBC();
      sub_10000C814(v1383);
      if (v344)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_10000C814(v1383);
        v1398 = v1383;
        v1399 = v1474;
        if (!v344)
        {
          sub_1000180EC(v1398, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
        v1399 = v1474;
      }

      sub_100051BBC();
      sub_10000E7EC(v1397);
      if (v344)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_10000E7EC(v1397);
        if (!v344)
        {
          sub_1000180EC(v1397, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
      }

      sub_1000436AC(&v1549);
      sub_100051BBC();
      sub_10000C814(v1399);
      if (v344)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_10000C814(v1399);
        if (!v344)
        {
          sub_1000180EC(v1399, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_100051BBC();
      sub_100003BFC(v1392);
      if (v344)
      {
        sub_100010A64();
        sub_1000C81EC();
        sub_100003BFC(v1392);
        v370 = v1391;
        if (!v344)
        {
          sub_1000180EC(v1392, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_1000730E8();
        v370 = v1391;
      }

      sub_10001F700();
      sub_1000113EC();
      sub_1000730E8();
      v1401 = *(v1368 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v1400 = *(v1368 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v1403 = *(v1378 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v1402 = *(v1378 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v1404 = v1378;
      v1405 = *(v1378 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v1407 = *(v1378 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v1406 = *(v1378 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v1408 = *(v1404 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v1409 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v1409);
      LOBYTE(v1419) = v1405;
      sub_10001322C();
      sub_10003E038(v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v370, v1392, v1401, v1400, v1403, v1402, v1419, v1407, v1406, v1408, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436);
      sub_1000BCF58();

      goto LABEL_322;
    case 7u:
      LODWORD(v1599) = *v332;
      v421 = sub_100003BCC(v1515);
      sub_10001B350(v421, v422, v423, v1606);
      sub_10002435C();
      v425 = *(v424 - 256);
      sub_10001B350(v426, v427, v428, v425);
      v429 = v1598;
      LODWORD(v1606) = *v1598;
      v1595 = v1598[1];
      sub_1000F0054(v1598[2]);
      LODWORD(v1587) = v429[3];
      sub_100042230();
      sub_100051BBC();
      sub_100003A40(v329);
      if (v344)
      {
        v370 = v1607;
        sub_1000C8F78();
        v430 = sub_1000E159C(&v1527);
        v431(v430);
        sub_100003A40(v329);
        if (!v344)
        {
          sub_1000180EC(v329, &qword_100CAA9F0, qword_100A44F50);
        }
      }

      else
      {
        sub_1000AF66C();
        v1044(v1508, v329, v425);
        v370 = v1607;
      }

      v1045 = &v429[*(v370 + 36)];
      LODWORD(v1578) = v429[*(v370 + 40)];
      v1046 = *(v370 + 52);
      LODWORD(v1581) = v429[*(v370 + 48)];
      v1047 = v429;
      LODWORD(v1584) = v429[v1046];
      v1048 = *(v370 + 60);
      v1580 = *&v429[*(v370 + 56)];
      LODWORD(v1583) = v429[v1048];
      v1049 = *(v370 + 68);
      LODWORD(v1579) = v429[*(v370 + 64)];
      LODWORD(v1582) = v429[v1049];
      v1050 = *v1045;
      v1607 = v1045[1];
      v1051 = v1607;
      v1052 = *(v370 + 76);
      v1053 = &v1047[*(v370 + 72)];
      v1054 = *(v1053 + 1);
      v1585 = *v1053;
      v1055 = v1585;
      v1586 = v1054;
      v1057 = *(v1053 + 3);
      v1596[0] = *(v1053 + 2);
      v1056 = v1596[0];
      v1597 = v1057;
      LODWORD(v1598) = v1047[v1052];
      v1058 = *(v1053 + 4);
      v1577 = *(v1053 + 5);
      *v284 = v1606;
      v284[1] = v1595;
      sub_10005275C();
      v284[2] = v1059;
      v284[3] = v1587;
      (*(v332 + 4))(&v284[v1060], v1508);
      v1061 = &v284[*(v370 + 36)];
      *v1061 = v1050;
      v1061[1] = v1051;
      sub_100011524(*(v370 + 40));
      v284[*(v370 + 44)] = v1599;
      sub_100011524(*(v370 + 48));
      sub_100011524(*(v370 + 52));
      *&v284[*(v370 + 56)] = v1580;
      sub_100011524(*(v370 + 60));
      sub_100011524(*(v370 + 64));
      sub_100011524(*(v370 + 68));
      v1062 = &v284[*(v370 + 72)];
      *v1062 = v1055;
      *(v1062 + 1) = v1054;
      *(v1062 + 2) = v1056;
      *(v1062 + 3) = v1057;
      v1063 = v1577;
      *(v1062 + 4) = v1058;
      *(v1062 + 5) = v1063;
      v284[*(v370 + 76)] = v1598;
      sub_10000E7B0();
      sub_10001B350(v1064, v1065, v1066, v370);
      v1067 = v1588;
      sub_100003934();
      sub_100045288(v1068, v1069, v1070);
      sub_100192448(v1071);
      sub_1000372BC();
      sub_10001B350(v1072, v1073, v1074, v1075);
      v1076 = sub_100020FBC(&v1615);
      sub_100040E40(v1076, v1077, v1078);
      v1080 = *(v1079 - 256);
      sub_100003934();
      sub_100040F10(v1081, v1082, v1083);
      v1085 = sub_100021088(v1084);
      sub_1000FFC84(v1085, v1086, v1087);
      v1089 = sub_100031F38(v1088);
      sub_100040C3C(v1089, v1090, v1091);
      v1092 = v1063;

      v1093 = v1585;
      v1094 = v1586;
      sub_100195598();
      v1095 = v1597;
      v1096 = v1058;
      sub_100030610();
      v1097 = sub_100037894();
      v666 = v1491;
      sub_1000D2C20(v1097, v1098, v1491, v284, v1067, v1054, v1051, v1080, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430);
      sub_1000C8560();
      sub_1000180EC(v1050, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v1056, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1080, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1051, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v1054, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1067, &qword_100CA6630, &unk_100A32630);
      v668 = v284;
      goto LABEL_220;
    case 8u:
      v483 = *v332;
      v484 = v1607;
      v485 = v1598;
      v486 = v1598[v1607[15]] | v483;
      v370 = 1;
      sub_100003934();
      sub_10001B350(v487, v488, v489, v490);
      sub_1000326C8(&v1457);
      sub_10002435C();
      sub_10001B350(v492, v493, v494, *(v491 - 256));
      *v1612 = 1;
      memset(&v1612[8], 0, 40);
      v495 = v1428;
      sub_100816210(2, 5, 5, 5, v329, 0, 0, 2, v1428, 2u, 2u, 2u, v486 & 1, 0, 1, 2u, 2u, v1612, 3u);
      sub_1000180EC(v329, &qword_100CAA9F0, qword_100A44F50);
      sub_10000E7B0();
      sub_10001B350(v496, v497, v498, v484);
      v499 = v1588;
      sub_100003934();
      sub_100045288(v500, v501, v502);
      sub_100192448(v503);
      sub_1000372BC();
      sub_10001B350(v504, v505, v506, v507);
      v508 = sub_100020FBC(&v1615);
      sub_100040E40(v508, v509, v510);
      v512 = *(v511 - 256);
      sub_100003934();
      sub_100040F10(v513, v514, v515);
      v517 = *(v516 - 256);
      sub_100003934();
      sub_1000FFC84(v518, v519, v520);
      v522 = sub_100021088(v521);
      sub_100040C3C(v522, v523, v524);
      sub_100030610();
      sub_1000D2C20(0, 3u, v310, v495, v499, v321, v329, v512, v517, v485, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430);
      sub_1000C8560();
      sub_1000180EC(v485, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v517, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v512, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v329, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v321, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v499, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v495, &qword_100CA6638, &unk_100A31460);
      v525 = v310;
      goto LABEL_254;
    case 9u:
      v381 = *v332;
      v382 = sub_100003BCC(v1516);
      sub_10001B350(v382, v383, v384, v1606);
      v385 = sub_100031F38(v1455);
      sub_1000C8420(v385, v386, v387);
      v388 = v1598;
      v389 = *v1598;
      v390 = v1598[1];
      v391 = v1598[2];
      v392 = v1598[3];
      sub_10003778C();
      sub_100051BBC();
      sub_100003A40(v296);
      LODWORD(v1599) = v381;
      LODWORD(v1594) = v389;
      LODWORD(v1593) = v390;
      LODWORD(v1592) = v391;
      LODWORD(v1591) = v392;
      if (v344)
      {
        sub_100038068();
        v835 = v1597;
        v393 = sub_1000E159C(&v1528);
        v394(v393);
        sub_100003A40(v296);
        if (!v344)
        {
          sub_1000180EC(v296, &qword_100CAA9F0, qword_100A44F50);
        }
      }

      else
      {
        v835 = v1597;
        (*(v1597 + 4))(v1509, v296, v318);
        v310 = v1607;
      }

      v836 = &v388[v310[9]];
      v837 = v836[1];
      v1583 = *v836;
      v1597 = v837;
      v838 = v388[v310[10]];
      LODWORD(v1582) = v388[v310[11]];
      v839 = v1607[14];
      LODWORD(v1586) = v388[v1607[13]];
      v1588 = *&v388[v839];
      v840 = v1607[16];
      LODWORD(v1585) = v388[v1607[15]];
      sub_100021DCC(v388[v840]);
      v841 = v1607[18];
      LODWORD(v1584) = v388[v1607[17]];
      v843 = *&v388[v841 + 8];
      v1590 = *&v388[v841];
      v842 = v1590;
      v1596[0] = v843;
      v845 = *&v388[v841 + 16];
      v844 = *&v388[v841 + 24];
      sub_1000E1414();
      LODWORD(v1589) = v388[v846];
      v848 = *(v847 + 40);
      v1598 = *(v847 + 32);
      v849 = v1598;
      v850 = v1497;
      sub_1001707F0();
      *v850 = v851;
      sub_1000C8A6C();
      v850[1] = v852;
      sub_10005275C();
      v850[2] = v853;
      sub_100192580();
      v850[3] = v854;
      (*(v835 + 4))(&v850[v855], v1509);
      sub_1000884A4();
      v857 = &v850[v856];
      *v857 = v1583;
      v857[1] = v837;
      sub_1000D3C58();
      v850[v858] = v838;
      sub_100028B04(v1607[11]);
      v859 = v1607;
      v850[v1607[12]] = v1599;
      sub_100028B04(v859[13]);
      *&v850[v859[14]] = v1588;
      sub_100028B04(v859[15]);
      sub_100028B04(v859[16]);
      sub_100028B04(v859[17]);
      v860 = &v850[v859[18]];
      *v860 = v842;
      v860[1] = v843;
      v860[2] = v845;
      v860[3] = v844;
      v860[4] = v849;
      v860[5] = v848;
      sub_100028B04(v859[19]);
      sub_10000E7B0();
      sub_10001B350(v861, v862, v863, v859);
      v864 = sub_100003BCC(v1535);
      sub_10001B350(v864, v865, v866, v1600);
      v867 = sub_100003BCC(&v1540);
      sub_10001B350(v867, v868, v869, v1601);
      v870 = sub_100003BCC(&v1545);
      sub_10001B350(v870, v871, v872, v1603);
      v873 = sub_100003BCC(&v1550);
      sub_10001B350(v873, v874, v875, v1604);
      v876 = sub_100003BCC(&v1555);
      sub_10001B350(v876, v877, v878, v1605);
      v879 = v1469;
      sub_1000253CC();
      v881 = *(v880 - 256);
      sub_10001B350(v882, v883, v884, v881);
      sub_100017D68();
      v885 = v1602;
      sub_100037814();
      sub_1000C81EC();
      sub_1000325C0();
      sub_100051BBC();
      v886 = sub_1000162B0();
      LODWORD(v881) = sub_100024D10(v886, v887, v881);
      v888 = v848;

      sub_100040D24();
      sub_100195598();
      v889 = v845;
      v890 = v844;
      v891 = v1598;
      if (v881 == 1)
      {
        sub_1000180EC(v879, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v843, v892);
        sub_10001F700();
        sub_1000730E8();
      }

      sub_10001F700();
      sub_1000730E8();
      v893 = *(v885 + 16);
      LODWORD(v1598) = *(v885 + 24);
      sub_1000325C0();
      sub_100051BBC();
      v894 = sub_1000162B0();
      v895 = v1606;
      sub_1000113D0(v894, v896);
      v897 = v1454;
      v1599 = v893;
      if (v344)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v898 = sub_1000162B0();
        v900 = sub_100024D10(v898, v899, v895);

        if (v900 != 1)
        {
          sub_1000180EC(v879, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();
      }

      sub_1000325C0();
      sub_100051BBC();
      v901 = sub_1000162B0();
      sub_1000038B4(v901, v902, v859);
      if (v344)
      {
        sub_10008661C(v885 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100016E84();
        sub_1000C81EC();
        v903 = sub_1000162B0();
        sub_1000038B4(v903, v904, v859);
        v905 = v1486;
        v906 = v1460;
        if (!v344)
        {
          sub_1000180EC(v879, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v905 = v1486;
        v906 = v1460;
      }

      sub_100051BBC();
      sub_10000C814(v897);
      if (v344)
      {
        sub_100074F64();
        sub_1000C81EC();
        sub_10000C814(v897);
        v907 = v1467;
        if (!v344)
        {
          sub_1000180EC(v897, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
        v907 = v1467;
      }

      sub_1000870F8(&v1540);
      sub_100051BBC();
      sub_10000554C(v906);
      if (v344)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_10000554C(v906);
        v908 = v1476;
        if (!v344)
        {
          sub_1000180EC(v906, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
        v908 = v1476;
      }

      sub_100051BBC();
      sub_10000554C(v907);
      if (v344)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_10000554C(v907);
        if (!v344)
        {
          sub_1000180EC(v907, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
      }

      sub_100051BBC();
      sub_100003BDC(v908);
      if (v344)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_100003BDC(v908);
        if (!v344)
        {
          sub_1000180EC(v908, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_100051BBC();
      sub_100005404(v905);
      if (v344)
      {
        sub_100010A64();
        sub_1000C81EC();
        sub_100005404(v905);
        if (!v344)
        {
          sub_1000180EC(v905, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_1000730E8();
      }

      sub_10001F700();
      sub_1000E3238();
      v370 = *(v885 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v909 = sub_1000E5A60();
      sub_100003B6C(v909);
      sub_100041990();
      v910 = sub_10004277C();
      v912 = v1542;
      v913 = v1551;
      v914 = v1557;
      v915 = v1559;
      v916 = v1561;
      v917 = &v1586;
LABEL_287:
      v1250 = *(v917 - 32);
      goto LABEL_321;
    case 0xAu:
      v479 = *v332;
      v480 = *(v332 + 1);
      sub_100045448();
      sub_1000161C0((v481 + 136), *(v481 + 160));
      sub_100333940(v1602, v479, v480);
      v370 = v482;
      sub_1000B84FC(v479, v480);
      return v370;
    case 0xBu:
      v1599 = *v332;
      v359 = sub_100003BCC(&v1594);
      sub_10001B350(v359, v360, v361, v1606);
      v362 = sub_100021088(v1521);
      sub_100051B1C(v362, v363, v364, &v1616);
      v365 = v1598;
      sub_1000C8A78(*v1598);
      sub_1000D3DC0(v365[1]);
      sub_1000F0054(v365[2]);
      sub_100040FAC(v365[3]);
      sub_100021424();
      sub_100095588();
      sub_10000554C(v332);
      if (v344)
      {
        sub_100030280();
        v367(v1510, &v365[v366], v310);
        sub_10000554C(v332);
        if (!v344)
        {
          sub_1000180EC(v332, &qword_100CAA9F0, qword_100A44F50);
        }
      }

      else
      {
        v284 = v1597;
        v669 = sub_1000B91C8();
        v670(v669);
        v318 = v1607;
      }

      v671 = &v365[v318[9]];
      v672 = *(v671 + 1);
      v1589 = *v671;
      v673 = v318[11];
      LODWORD(v1585) = v365[v318[10]];
      LODWORD(v1588) = v365[v673];
      v674 = v365[v318[12]];
      sub_100021DCC(v365[v318[13]]);
      v675 = v318[16];
      LODWORD(v1596[0]) = v365[v318[15]];
      LODWORD(v1597) = v365[v675];
      v676 = v318[18];
      LODWORD(v1590) = v365[v318[17]];
      v677 = *&v365[v676];
      v678 = *&v365[v676 + 8];
      v680 = *&v365[v676 + 16];
      v679 = *&v365[v676 + 24];
      sub_1000E1414();
      LODWORD(v1598) = v365[v681];
      v684 = *(v682 + 32);
      v683 = *(v682 + 40);
      v685 = v1566;
      sub_1001707F0();
      *v685 = v686;
      sub_1000C8A6C();
      v685[1] = v687;
      sub_10005275C();
      v685[2] = v688;
      sub_100192580();
      v685[3] = v689;
      (*(v284 + 4))(&v685[v690], v1510);
      sub_1000884A4();
      v692 = &v685[v691];
      *v692 = v1589;
      v692[1] = v672;
      sub_1000D3C58();
      sub_1000A7D34(v693);
      sub_1000A7D34(*(v694 + 44));
      v685[*(v695 + 48)] = v674;
      sub_1000A7D34(v1607[13]);
      *&v685[*(v696 + 56)] = v1599;
      sub_1000A7D34(v1607[15]);
      v685[*(v697 + 64)] = v1597;
      sub_1000A7D34(v1607[17]);
      v699 = &v685[*(v698 + 72)];
      *v699 = v677;
      v699[1] = v678;
      v699[2] = v680;
      v699[3] = v679;
      v699[4] = v684;
      v699[5] = v683;
      v685[v1607[19]] = v1598;
      v700 = v683;

      v701 = v677;
      v702 = v678;
      v703 = v1607;
      v704 = v680;
      v705 = v679;
      v706 = v684;
      sub_1000180EC(v1499, &qword_100CAA9F0, qword_100A44F50);
      sub_10000E7B0();
      sub_10001B350(v707, v708, v709, v703);
      v710 = sub_100003BCC(&v1601);
      sub_1000C8B5C(v710, v711, v712);
      v713 = sub_100003BCC(&v1605);
      v714 = v1601;
      sub_10001B350(v713, v715, v716, v1601);
      v717 = sub_100003BCC(v1609);
      sub_10001B350(v717, v718, v719, v1603);
      v720 = sub_100003BCC(&v1612[8]);
      sub_10001B350(v720, v721, v722, v1604);
      v723 = sub_100003BCC(&v1612[40]);
      sub_10001B350(v723, v724, v725, v1605);
      v726 = v1529;
      sub_1000253CC();
      sub_100051B1C(v727, v728, v729, v730);
      sub_100017D68();
      v731 = v1602;
      sub_1000519E0();
      sub_1000C81EC();
      sub_10003778C();
      sub_100095588();
      sub_10000554C(v726);
      if (v344)
      {
        sub_1000180EC(v726, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v680, v732);
        sub_10001F700();
        sub_1000730E8();
      }

      v733 = v1606;
      v734 = v1477;
      v735 = v1436;
      sub_10001F700();
      sub_1000730E8();
      v736 = *(v731 + 16);
      LODWORD(v1599) = *(v731 + 24);
      sub_100030224(&v1594);
      sub_100095588();
      sub_100005404(v735);
      v737 = v1455[0];
      v1606 = v736;
      if (v344)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v738 = sub_1000162A4();
        v740 = sub_100024D10(v738, v739, v733);

        if (v740 != 1)
        {
          sub_1000180EC(v735, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();
      }

      sub_1000131DC();
      sub_100095588();
      v741 = sub_1000162A4();
      sub_1000038B4(v741, v742, v703);
      if (v344)
      {
        sub_10008661C(v731 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100016E84();
        sub_1000C81EC();
        v743 = sub_1000162A4();
        sub_1000038B4(v743, v744, v703);
        v370 = v1487;
        if (!v344)
        {
          sub_1000180EC(v735, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v370 = v1487;
      }

      sub_1000870F8(&v1601);
      sub_100095588();
      sub_100003BDC(v737);
      if (v344)
      {
        sub_100074F64();
        sub_1000C81EC();
        sub_100003BDC(v737);
        if (!v344)
        {
          sub_1000180EC(v737, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
      }

      sub_1000325C0();
      sub_100095588();
      sub_10000E7EC(v679);
      if (v344)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_10000E7EC(v679);
        if (!v344)
        {
          sub_1000180EC(v679, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
      }

      sub_100032590();
      sub_100095588();
      sub_100003A40(v714);
      if (v344)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_100003A40(v714);
        if (!v344)
        {
          sub_1000180EC(v714, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
      }

      sub_1000C893C(&v1612[8]);
      sub_100095588();
      sub_100003BFC(v734);
      if (v344)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_100003BFC(v734);
        if (!v344)
        {
          sub_1000180EC(v734, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_1000436AC(&v1612[40]);
      sub_100095588();
      v745 = sub_1000131C4();
      sub_100013710(v745, v746);
      if (v344)
      {
        sub_100010A64();
        sub_1000C81EC();
        sub_10000554C(v370);
        if (!v344)
        {
          sub_1000180EC(v370, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_10008803C();
      }

      sub_10001F700();
      sub_100071A00();
      sub_100120148();
      sub_1000B0EFC();
      v747 = sub_1000E5A60();
      sub_100003B6C(v747);
      sub_100020B34();
      sub_1000888E4();
      sub_10001322C();
      sub_10003E038(v748, v749, v750, v751, v752, v753, v754, v755, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, *(&v1430 + 1), v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445);
      sub_1000BCF58();

      sub_1000180EC(v1529, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v1586, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1582, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1578, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v1574, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1570, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v1566, &qword_100CA6638, &unk_100A31460);
      v611 = &v1594;
      goto LABEL_253;
    case 0xCu:
      v373 = sub_100003BCC(&v1593);
      sub_10001B350(v373, v374, v375, v1606);
      v376 = sub_100031F38(v1520);
      sub_1000C8420(v376, v377, v378);
      sub_10002F7A8();
      v379 = v1598;
      LODWORD(v1599) = *v1598;
      sub_1000C8A78(v1598[1]);
      sub_1000D3DC0(v379[2]);
      sub_1000F0054(v379[3]);
      sub_10003778C();
      sub_100095588();
      sub_100003A40(v296);
      if (v344)
      {
        sub_100038068();
        v756 = v1597;
        v757 = v1453;
        (*(v1597 + 2))(v1453, &v379[v380], v318);
        sub_100003A40(v296);
        if (!v344)
        {
          sub_1000180EC(v296, &qword_100CAA9F0, qword_100A44F50);
        }
      }

      else
      {
        v756 = v1597;
        v757 = v1453;
        (*(v1597 + 4))(v1453, v296, v318);
        v310 = v1607;
      }

      v758 = v310[11];
      LODWORD(v1596[0]) = v379[v310[10]];
      LODWORD(v1597) = v379[v758];
      v759 = v310[13];
      LODWORD(v1590) = v379[v310[12]];
      sub_100040FAC(v379[v759]);
      v760 = *&v379[v1607[14]];
      LODWORD(v1589) = v379[v1607[15]];
      v761 = v379[v1607[16]];
      v762 = v379[v1607[17]];
      sub_1000884A4();
      sub_1000E1414();
      v764 = v379[v763];
      v767 = *v765;
      v766 = v765[1];
      v768 = v1565;
      *v1565 = v1599;
      sub_1001707F0();
      v768[1] = v769;
      sub_1000C8A6C();
      v768[2] = v770;
      sub_10005275C();
      v768[3] = v771;
      (*(v756 + 4))(&v768[v772], v757);
      sub_1000884A4();
      v774 = &v768[v773];
      *v774 = v767;
      v774[1] = v766;
      sub_1000D3C58();
      sub_10003BB84(v775);
      v768[v1607[11]] = v1597;
      sub_10003BB84(v1607[12]);
      sub_10003BB84(v1607[13]);
      v776 = v1607;
      *&v768[v1607[14]] = v760;
      sub_10003BB84(v776[15]);
      v768[v776[16]] = v761;
      v768[v776[17]] = v762;
      v777 = &v768[v776[18]];
      v778 = *&v1612[16];
      *v777 = *v1612;
      v777[1] = v778;
      v777[2] = *&v1612[32];
      v768[v776[19]] = v764;

      sub_1000180EC(v1498, &qword_100CAA9F0, qword_100A44F50);
      sub_10000E7B0();
      sub_10001B350(v779, v780, v781, v776);
      v782 = sub_100003BCC(&v1600);
      sub_1000C8B5C(v782, v783, v784);
      v785 = sub_100003BCC(&v1604);
      v786 = v1601;
      sub_10001B350(v785, v787, v788, v1601);
      v789 = sub_100003BCC(v1608);
      sub_10001B350(v789, v790, v791, v1603);
      v792 = sub_100003BCC(v1612);
      sub_10001B350(v792, v793, v794, v1604);
      v795 = sub_100003BCC(&v1612[32]);
      sub_10001B350(v795, v796, v797, v1605);
      v798 = v1527;
      sub_1000253CC();
      sub_10001B350(v800, v801, v802, *(v799 - 256));
      sub_100017D68();
      v803 = v1602;
      sub_1000113EC();
      sub_1000C81EC();
      sub_100037814();
      sub_100095588();
      sub_100005404(v798);
      if (v344)
      {
        sub_1000180EC(v798, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v760, v804);
        sub_10001F700();
        sub_1000730E8();
      }

      v805 = v1606;
      sub_10001F700();
      sub_1000730E8();
      v806 = *(v803 + 16);
      LODWORD(v1599) = *(v803 + 24);
      sub_100037814();
      sub_100095588();
      sub_100005404(v798);
      v1606 = v806;
      if (v344)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v807 = sub_1000201BC();
        v809 = sub_100024D10(v807, v808, v805);

        v810 = v1475;
        if (v809 != 1)
        {
          sub_1000180EC(v798, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();

        v810 = v1475;
      }

      sub_100037814();
      sub_100095588();
      v811 = sub_1000201BC();
      sub_1000038B4(v811, v812, v776);
      if (v344)
      {
        swift_beginAccess();
        sub_100016E84();
        sub_1000C81EC();
        v813 = sub_1000201BC();
        sub_1000038B4(v813, v814, v776);
        v815 = v1485;
        if (!v344)
        {
          sub_1000180EC(v798, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v815 = v1485;
      }

      sub_1000519E0();
      sub_100095588();
      sub_100003BDC(v776);
      if (v344)
      {
        sub_100074F64();
        sub_1000C81EC();
        sub_100003BDC(v776);
        if (!v344)
        {
          sub_1000180EC(v776, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
      }

      sub_1000325C0();
      sub_100095588();
      sub_10000E7EC(v764);
      if (v344)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_10000E7EC(v764);
        if (!v344)
        {
          sub_1000180EC(v764, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
      }

      sub_100032590();
      sub_100095588();
      sub_10000554C(v786);
      if (v344)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_10000554C(v786);
        v816 = v1562;
        if (!v344)
        {
          sub_1000180EC(v786, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
        v816 = v1562;
      }

      sub_100095588();
      sub_10000C814(v810);
      if (v344)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_10000C814(v810);
        if (!v344)
        {
          sub_1000180EC(v810, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_1000436AC(&v1612[32]);
      sub_100095588();
      v817 = sub_1000131C4();
      sub_1000113D0(v817, v818);
      if (v344)
      {
        sub_100010A64();
        sub_1000C81EC();
        sub_100003A40(v815);
        if (!v344)
        {
          sub_1000180EC(v815, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_1000730E8();
      }

      sub_10001F700();
      sub_1000E3238();
      v370 = *(v803 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v819 = *(v803 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v821 = *(v803 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v820 = *(v803 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v822 = *(v803 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v824 = *(v803 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v823 = *(v803 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v825 = *(v803 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v826 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v826);
      LOBYTE(v1419) = v822;
      v1418 = v1562;
      sub_1000888E4();
      sub_10001322C();
      sub_10003E038(v827, v828, v829, v830, v831, v832, v833, v834, v1418, v816, v370, v819, v821, v820, v1419, v824, v823, v825, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436);
      sub_1000BCF58();

      sub_1000180EC(v1527, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v1585, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1581, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1577, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v1573, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1569, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v1565, &qword_100CA6638, &unk_100A31460);
      sub_1000180EC(v1563, &qword_100CA6640, qword_100A32640);
      v371 = type metadata accessor for EnvironmentAction;
      v372 = v332;
LABEL_153:
      sub_1000E01A0(v372, v371);
      return v370;
    case 0xDu:
      sub_100003934();
      sub_10001B350(v452, v453, v454, v1606);
      v455 = sub_100021088(&v1448);
      v456 = v1596[0];
      sub_10001B350(v455, v457, v458, v1596[0]);
      v459 = v1598;
      v460 = v1598[1];
      v461 = v1598[2];
      v462 = v1598[3];
      sub_100021424();
      sub_100051BBC();
      sub_100003BFC(v332);
      LODWORD(v1599) = v460;
      LODWORD(v1594) = v461;
      LODWORD(v1593) = v462;
      if (v344)
      {
        (*(v1597 + 2))(v1501, &v459[v1607[8]], v456);
        sub_100003BFC(v332);
        if (!v344)
        {
          sub_1000180EC(v332, &qword_100CAA9F0, qword_100A44F50);
        }
      }

      else
      {
        v1251 = sub_1000B91C8();
        v1252(v1251);
      }

      v1253 = v1607;
      v1254 = &v459[v1607[9]];
      v1255 = v1607[11];
      LODWORD(v1583) = v459[v1607[10]];
      LODWORD(v1588) = v459[v1255];
      v1256 = v1607[13];
      LODWORD(v1582) = v459[v1607[12]];
      LODWORD(v1587) = v459[v1256];
      v1257 = v1607[15];
      v1258 = v459;
      v1581 = *&v459[v1607[14]];
      LODWORD(v1586) = v459[v1257];
      v1259 = v1607[17];
      LODWORD(v1580) = v459[v1607[16]];
      LODWORD(v1585) = v459[v1259];
      v1260 = v1254[1];
      v1578 = *v1254;
      v1592 = v1260;
      v1261 = v1607[19];
      v1262 = &v1258[v1607[18]];
      v1264 = *(v1262 + 1);
      v1589 = *v1262;
      v1263 = v1589;
      v1590 = v1264;
      v1266 = *(v1262 + 3);
      v1591 = *(v1262 + 2);
      v1265 = v1591;
      LODWORD(v1584) = v1258[v1261];
      v1268 = *(v1262 + 4);
      v1267 = *(v1262 + 5);
      v1598 = v1268;
      v1579 = v1267;
      *v296 = 0;
      v296[1] = v1599;
      sub_1001707F0();
      v296[2] = v1269;
      sub_1000C8A6C();
      v1271 = sub_1000B7C04(v1270);
      v1272(v1271, v1501);
      v1273 = &v296[v1253[9]];
      *v1273 = v1578;
      *(v1273 + 1) = v1260;
      sub_10003BB84(v1253[10]);
      sub_10003BB84(v1253[11]);
      sub_10003BB84(v1253[12]);
      sub_10003BB84(v1253[13]);
      *&v296[v1253[14]] = v1581;
      sub_10003BB84(v1253[15]);
      sub_10003BB84(v1253[16]);
      sub_10003BB84(v1253[17]);
      v1274 = &v296[v1253[18]];
      *v1274 = v1263;
      *(v1274 + 1) = v1264;
      *(v1274 + 2) = v1265;
      *(v1274 + 3) = v1266;
      *(v1274 + 4) = v1268;
      v1275 = v1579;
      *(v1274 + 5) = v1579;
      sub_10003BB84(v1253[19]);
      sub_10000E7B0();
      sub_10001B350(v1276, v1277, v1278, v1253);
      v1279 = sub_100003BCC(v1531);
      sub_10001B350(v1279, v1280, v1281, v1600);
      v1282 = sub_100003BCC(&v1536);
      sub_10001B350(v1282, v1283, v1284, v1601);
      v1285 = sub_100003BCC(&v1541);
      sub_10001B350(v1285, v1286, v1287, v1603);
      v1288 = sub_100003BCC(&v1546);
      sub_10001B350(v1288, v1289, v1290, v1604);
      v1291 = sub_100003BCC(&v1551);
      sub_10001B350(v1291, v1292, v1293, v1605);
      v1294 = sub_100021088(v1479);
      sub_100043840(v1294, v1295, v1296);
      sub_100017D68();
      v1297 = v1602;
      sub_100021424();
      sub_1000C81EC();
      sub_100032590();
      sub_100051BBC();
      sub_100041064(v1264, 1);
      v1298 = v1275;

      v1299 = v1589;
      sub_100040D24();
      v1300 = v1591;
      v1301 = v1266;
      v1302 = v1598;
      if (v1263 == 1)
      {
        sub_1000180EC(v1264, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v1265, v1303);
        sub_10001F700();
        sub_1000730E8();
      }

      v1304 = v1470;
      sub_10001F700();
      sub_1000730E8();
      v1305 = *(v1297 + 16);
      LODWORD(v1598) = *(v1297 + 24);
      sub_100051BBC();
      v1306 = sub_1000201BC();
      v1307 = v1606;
      sub_1000113D0(v1306, v1308);
      v1309 = v1446;
      v1599 = v1305;
      if (v344)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v1310 = sub_1000201BC();
        v1312 = sub_100024D10(v1310, v1311, v1307);

        v344 = v1312 == 1;
        v1313 = v1605;
        if (!v344)
        {
          sub_1000180EC(v326, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();

        v1313 = v1605;
      }

      sub_100051BBC();
      sub_1000113D0(v1309, 1);
      if (v344)
      {
        sub_10008661C(v1297 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100016E84();
        sub_1000C81EC();
        sub_100003A40(v1309);
        v1314 = v1456;
        if (!v344)
        {
          sub_1000180EC(v1309, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v1314 = v1456;
      }

      sub_1000519E0();
      sub_100051BBC();
      sub_10000E7EC(v1266);
      if (v344)
      {
        sub_100074F64();
        sub_1000C81EC();
        sub_10000E7EC(v1266);
        v1315 = v1462;
        if (!v344)
        {
          sub_1000180EC(v1266, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
        v1315 = v1462;
      }

      sub_100051BBC();
      sub_100005404(v1314);
      if (v344)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_100005404(v1314);
        v1316 = v1480;
        if (!v344)
        {
          sub_1000180EC(v1314, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
        v1316 = v1480;
      }

      sub_100051BBC();
      sub_100003A40(v1315);
      if (v344)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_100003A40(v1315);
        if (!v344)
        {
          sub_1000180EC(v1315, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
      }

      sub_1000C893C(&v1546);
      sub_100051BBC();
      sub_10000C814(v1304);
      if (v344)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_10000C814(v1304);
        if (!v344)
        {
          sub_1000180EC(v1304, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_100051BBC();
      v1317 = sub_1000131C4();
      sub_1000038B4(v1317, v1318, v1313);
      if (v344)
      {
        sub_100010A64();
        sub_1000C81EC();
        v1319 = sub_1000131C4();
        sub_1000038B4(v1319, v1320, v1313);
        if (!v344)
        {
          sub_1000180EC(v1316, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_10008803C();
      }

      sub_10001F700();
      sub_1000113EC();
      sub_1000730E8();
      v370 = *(v1297 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v1321 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v1321);
      sub_100020B34();
LABEL_320:
      sub_10001322C();
LABEL_321:
      sub_10003E038(v910, v911, v912, v913, v914, v915, v916, v1250, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, *(&v1430 + 1), v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445);
      sub_1000BCF58();

LABEL_322:

      return v370;
    case 0xEu:
      v347 = v1602 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      v348 = v1607;
      LODWORD(v1599) = *(v347 + v1607[16]) ^ 1;
      v349 = sub_100003BCC(v1517);
      sub_10001B350(v349, v350, v351, v352);
      v353 = sub_100021088(v1522);
      sub_100051B1C(v353, v354, v355, &v1616);
      v356 = v1598;
      LODWORD(v1606) = *v1598;
      v1595 = v1598[1];
      sub_1000F0054(v1598[2]);
      LODWORD(v1587) = v356[3];
      sub_1000113EC();
      sub_100095588();
      sub_10000554C(v318);
      if (v344)
      {
        sub_1000C8F78();
        v358(v1511, &v356[v357], v347);
        sub_10000554C(v318);
        if (!v344)
        {
          sub_1000180EC(v318, &qword_100CAA9F0, qword_100A44F50);
        }
      }

      else
      {
        sub_1000AF66C();
        v612(v1511, v318, v347);
      }

      v613 = &v356[v348[9]];
      v370 = *(v613 + 1);
      v1586 = *v613;
      v614 = v348[11];
      LODWORD(v1582) = v356[v348[10]];
      LODWORD(v1585) = v356[v614];
      v615 = v356[v348[12]];
      LODWORD(v1584) = v356[v348[13]];
      v616 = v348[15];
      v1581 = *&v356[v348[14]];
      LODWORD(v1583) = v356[v616];
      v617 = v348[18];
      LODWORD(v1597) = v356[v348[17]];
      v618 = *&v356[v617];
      v619 = *&v356[v617 + 8];
      v620 = v348;
      v622 = *&v356[v617 + 16];
      v621 = *&v356[v617 + 24];
      LODWORD(v1598) = v356[v348[19]];
      v623 = *&v356[v617 + 40];
      v1596[0] = *&v356[v617 + 32];
      v624 = v1447;
      *v1447 = v1606;
      v624[1] = v1595;
      sub_10005275C();
      v624[2] = v625;
      v624[3] = v1587;
      (*(v332 + 4))(&v624[v626], v1511);
      v627 = &v624[v620[9]];
      *v627 = v1586;
      v627[1] = v370;
      sub_100028B04(v620[10]);
      sub_100028B04(v620[11]);
      v624[v620[12]] = v615;
      sub_100028B04(v620[13]);
      *&v624[v620[14]] = v1581;
      sub_100028B04(v620[15]);
      v624[v620[16]] = v1599 & 1;
      v624[v620[17]] = v1597;
      v628 = &v624[v620[18]];
      *v628 = v618;
      v628[1] = v619;
      v628[2] = v622;
      v628[3] = v621;
      v629 = v1596[0];
      v628[4] = v1596[0];
      v628[5] = v623;
      v624[v620[19]] = v1598;
      v630 = v623;

      v631 = v618;
      v632 = v619;
      v633 = v622;
      v634 = v621;
      v635 = v629;
      sub_1000180EC(v1500, &qword_100CAA9F0, qword_100A44F50);
      sub_10000E7B0();
      sub_10001B350(v636, v637, v638, v620);
      v639 = v1588;
      sub_100003934();
      sub_100045288(v640, v641, v642);
      sub_1000326C8(v643);
      sub_1000372BC();
      sub_10001B350(v644, v645, v646, v647);
      v648 = v1590;
      sub_100003934();
      sub_100040E40(v649, v650, v651);
      v653 = *(v652 - 256);
      sub_100003934();
      sub_100040F10(v654, v655, v656);
      v658 = sub_100021088(v657);
      sub_1000FFC84(v658, v659, v660);
      v662 = sub_100031F38(v661);
      sub_100040C3C(v662, v663, v664);
      sub_100030610();
      v665 = sub_100037894();
      v666 = v1492;
      sub_1000D2C20(v665, v667, v1492, v624, v639, v615, v648, v653, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430);
      sub_1000C8560();
      sub_1000180EC(v620, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v618, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v653, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v648, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v615, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v639, &qword_100CA6630, &unk_100A32630);
      v668 = v624;
LABEL_220:
      sub_1000180EC(v668, &qword_100CA6638, &unk_100A31460);
      v525 = v666;
      goto LABEL_254;
    case 0xFu:
      v398 = sub_100003BCC(v1518);
      sub_10001B350(v398, v399, v400, v1606);
      v401 = sub_100021088(v1523);
      v402 = v1596[0];
      sub_10001B350(v401, v403, v404, v1596[0]);
      v405 = v1598;
      sub_1000F0054(*v1598);
      LODWORD(v1606) = v405[1];
      LODWORD(v1599) = v405[2];
      v1595 = v405[3];
      sub_100042230();
      sub_100095588();
      sub_100005404(v329);
      if (v344)
      {
        sub_100030280();
        v407(v1512, &v405[v406], v402);
        sub_100005404(v329);
        if (!v344)
        {
          sub_1000180EC(v329, &qword_100CAA9F0, qword_100A44F50);
        }
      }

      else
      {
        v284 = v1597;
        (*(v1597 + 4))(v1512, v329, v402);
        v318 = v1607;
      }

      v918 = &v405[v318[9]];
      v919 = v918[1];
      v1607 = *v918;
      v920 = v318[11];
      LODWORD(v1585) = v405[v318[10]];
      LODWORD(v1597) = v405[v920];
      v921 = v318[13];
      LODWORD(v1584) = v405[v318[12]];
      LODWORD(v1596[0]) = v405[v921];
      v922 = v318[15];
      v1583 = *&v405[v318[14]];
      sub_100021DCC(v405[v922]);
      v923 = v318[17];
      LODWORD(v1582) = v405[v318[16]];
      LODWORD(v1586) = v405[v923];
      v924 = &v405[v318[18]];
      v926 = *v924;
      v925 = *(v924 + 1);
      v928 = *(v924 + 2);
      v927 = *(v924 + 3);
      v929 = v1448;
      *v1448 = v1592;
      v370 = *(v924 + 4);
      v930 = *(v924 + 5);
      v929[1] = v1606;
      v929[2] = v1599;
      v929[3] = v1595;
      (*(v284 + 4))(&v929[v931], v1512);
      v932 = &v929[v318[9]];
      *v932 = v1607;
      v932[1] = v919;
      sub_100087234(v318[10]);
      v929[v318[11]] = v1597;
      sub_100087234(v318[12]);
      sub_100087234(v318[13]);
      *&v929[v318[14]] = v1583;
      sub_100087234(v318[15]);
      sub_100087234(v318[16]);
      sub_100087234(v318[17]);
      v933 = &v929[v318[18]];
      *v933 = v926;
      v933[1] = v925;
      v933[2] = v928;
      v933[3] = v927;
      v933[4] = v370;
      v933[5] = v930;
      v929[v318[19]] = 0;
      v934 = v930;

      v935 = v926;
      v936 = v925;
      v937 = v928;
      v938 = v927;
      v939 = v370;
      sub_1000180EC(v1503, &qword_100CAA9F0, qword_100A44F50);
      sub_10000E7B0();
      sub_10001B350(v940, v941, v942, v318);
      sub_100192448(&v1614);
      sub_100003934();
      sub_100045288(v943, v944, v945);
      sub_1000326C8(v946);
      sub_1000372BC();
      sub_10001B350(v947, v948, v949, v950);
      v951 = v1590;
      sub_100003934();
      sub_100040E40(v952, v953, v954);
      v956 = *(v955 - 256);
      sub_100003934();
      sub_100040F10(v957, v958, v959);
      v961 = sub_100021088(v960);
      sub_1000FFC84(v961, v962, v963);
      v965 = sub_100031F38(v964);
      sub_100040C3C(v965, v966, v967);
      sub_100030610();
      v968 = sub_100037894();
      v969 = v1493;
      sub_1000D2C20(v968, v970, v1493, v929, v928, v927, v951, v956, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430);
      sub_1000C8560();
      sub_1000180EC(v930, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v318, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v956, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v951, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v927, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v928, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v929, &qword_100CA6638, &unk_100A31460);
      v525 = v969;
      goto LABEL_254;
    case 0x10u:
      v336 = sub_100003BCC(&v1595);
      sub_10001B350(v336, v337, v338, v1606);
      v339 = sub_100031F38(v1524);
      sub_1000C8420(v339, v340, v341);
      v342 = v1598;
      v343 = *v1598;
      LODWORD(v1599) = v1598[1];
      sub_1000C8A78(v1598[2]);
      sub_1000D3DC0(v342[3]);
      sub_100021424();
      sub_100095588();
      sub_100003A40(v332);
      if (v344)
      {
        sub_100038068();
        v526 = v1597;
        v345 = sub_1000E159C(&v1530);
        v346(v345);
        sub_100003A40(v332);
        if (!v344)
        {
          sub_1000180EC(v332, &qword_100CAA9F0, qword_100A44F50);
        }
      }

      else
      {
        v526 = v1597;
        v527 = sub_1000B91C8();
        v528(v527);
        v310 = v1607;
      }

      v529 = &v342[v310[9]];
      v530 = v529[1];
      v1597 = *v529;
      v531 = v310[11];
      LODWORD(v1589) = v342[v310[10]];
      LODWORD(v1596[0]) = v342[v531];
      v532 = v310[13];
      LODWORD(v1588) = v342[v310[12]];
      LODWORD(v1592) = v342[v532];
      v533 = v310[15];
      v1586 = *&v342[v310[14]];
      LODWORD(v1591) = v342[v533];
      v534 = v342[v310[16]];
      LODWORD(v1590) = v342[v310[17]];
      v535 = &v342[v1607[18]];
      v537 = *v535;
      v536 = *(v535 + 1);
      v539 = *(v535 + 2);
      v538 = *(v535 + 3);
      v540 = v1567;
      *v1567 = v343;
      v542 = *(v535 + 4);
      v541 = *(v535 + 5);
      v540[1] = v1599;
      sub_1001707F0();
      v540[2] = v543;
      sub_1000C8A6C();
      v540[3] = v544;
      (*(v526 + 4))(&v540[v545], v1513);
      sub_1000884A4();
      v547 = &v540[v546];
      *v547 = v1597;
      v547[1] = v530;
      sub_1000D3C58();
      sub_1000715E4(v548);
      sub_1000715E4(*(v549 + 44));
      sub_1000715E4(*(v550 + 48));
      sub_1000715E4(*(v551 + 52));
      *&v540[*(v552 + 56)] = v1586;
      sub_1000715E4(v1607[15]);
      v540[*(v553 + 64)] = v534;
      v554 = v1607;
      v540[v1607[17]] = v1590;
      v555 = &v540[*(v554 + 72)];
      *v555 = v537;
      v555[1] = v536;
      v555[2] = v539;
      v555[3] = v538;
      v555[4] = v542;
      v555[5] = v541;
      v540[*(v554 + 76)] = 1;
      v556 = v541;

      v557 = v537;
      v558 = v536;
      v559 = v539;
      v560 = v538;
      v561 = v542;
      sub_1000180EC(v1505, &qword_100CAA9F0, qword_100A44F50);
      sub_10000E7B0();
      sub_10001B350(v562, v563, v564, v554);
      v565 = sub_100003BCC(&v1602);
      sub_1000C8B5C(v565, v566, v567);
      v568 = sub_100003BCC(&v1606);
      v569 = v1601;
      sub_10001B350(v568, v570, v571, v1601);
      v572 = sub_100003BCC(v1610);
      sub_10001B350(v572, v573, v574, v1603);
      v575 = sub_100003BCC(&v1612[16]);
      sub_10001B350(v575, v576, v577, v1604);
      v578 = sub_100003BCC(v1613);
      sub_10001B350(v578, v579, v580, v1605);
      v581 = v1530;
      sub_1000253CC();
      sub_100051B1C(v582, v583, v584, v585);
      sub_100017D68();
      v586 = v1602;
      sub_1000519E0();
      sub_1000C81EC();
      sub_10003778C();
      sub_100095588();
      sub_10000554C(v581);
      if (v344)
      {
        sub_1000180EC(v581, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000699D8();
        sub_1000E01A0(v537, v587);
        sub_10001F700();
        sub_1000730E8();
      }

      v588 = v1606;
      v589 = v1478;
      v590 = v1440;
      sub_10001F700();
      sub_1000730E8();
      v591 = *(v586 + 16);
      LODWORD(v1599) = *(v586 + 24);
      sub_100030224(&v1595);
      sub_100095588();
      sub_100005404(v590);
      v592 = v1455[1];
      v1606 = v591;
      if (v344)
      {
        sub_100013BF4();
        sub_1000C81EC();
        v593 = sub_1000162A4();
        v595 = sub_100024D10(v593, v594, v588);

        if (v595 != 1)
        {
          sub_1000180EC(v590, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10004EA64();
        sub_1000730E8();
      }

      sub_1000131DC();
      sub_100095588();
      v596 = sub_1000162A4();
      sub_1000038B4(v596, v597, v554);
      if (v344)
      {
        sub_10008661C(v586 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100016E84();
        sub_1000C81EC();
        v598 = sub_1000162A4();
        sub_1000038B4(v598, v599, v554);
        v370 = v1488;
        if (!v344)
        {
          sub_1000180EC(v590, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100049C1C();
        sub_1000730E8();
        v370 = v1488;
      }

      sub_1000870F8(&v1602);
      sub_100095588();
      sub_100003BDC(v592);
      if (v344)
      {
        sub_100074F64();
        sub_1000C81EC();
        sub_100003BDC(v592);
        if (!v344)
        {
          sub_1000180EC(v592, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100028AEC();
        sub_1000730E8();
      }

      sub_1000325C0();
      sub_100095588();
      sub_10000E7EC(v536);
      if (v344)
      {
        sub_10002316C();
        sub_1000C81EC();
        sub_10000E7EC(v536);
        if (!v344)
        {
          sub_1000180EC(v536, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100019EC8();
        sub_1000730E8();
      }

      sub_100032590();
      sub_100095588();
      sub_100003A40(v569);
      if (v344)
      {
        sub_100004A30();
        sub_1000C81EC();
        sub_100003A40(v569);
        if (!v344)
        {
          sub_1000180EC(v569, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100014E04();
        sub_1000730E8();
      }

      sub_1000C893C(&v1612[16]);
      sub_100095588();
      sub_100003BFC(v589);
      if (v344)
      {
        sub_100008E4C();
        sub_1000C81EC();
        sub_100003BFC(v589);
        if (!v344)
        {
          sub_1000180EC(v589, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100006720();
        sub_1000730E8();
      }

      sub_1000436AC(v1613);
      sub_100095588();
      v600 = sub_1000131C4();
      sub_100013710(v600, v601);
      if (v344)
      {
        sub_100010A64();
        sub_1000C81EC();
        sub_10000554C(v370);
        if (!v344)
        {
          sub_1000180EC(v370, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10001CC90();
        sub_10008803C();
      }

      sub_10001F700();
      sub_100071A00();
      sub_100120148();
      sub_1000B0EFC();
      v602 = sub_1000E5A60();
      sub_100003B6C(v602);
      sub_100020B34();
      sub_1000888E4();
      sub_10001322C();
      sub_10003E038(v603, v604, v605, v606, v607, v608, v609, v610, v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, *(&v1430 + 1), v1431, v1432, v1433, v1434, v1435, v1436, v1437, v1438, v1439, v1440, v1441, v1442, v1443, v1444, v1445);
      sub_1000BCF58();

      sub_1000180EC(v1530, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v1587, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1583, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1579, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v1575, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1571, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v1567, &qword_100CA6638, &unk_100A31460);
      v611 = &v1595;
LABEL_253:
      v525 = *(v611 - 32);
LABEL_254:
      sub_1000180EC(v525, &qword_100CA6640, qword_100A32640);
      break;
    default:
      sub_100045448();
      v333 = *v332;
      sub_1000161C0((v334 + 16), *(v334 + 40));
      v335 = sub_1003D3E3C(v1598[1], v1602, v333);
LABEL_25:
      v370 = v335;
      break;
  }

  return v370;
}