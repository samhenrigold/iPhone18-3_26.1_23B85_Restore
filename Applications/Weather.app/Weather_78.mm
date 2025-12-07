uint64_t sub_100840F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v14 = type metadata accessor for OverlayValueViewModifier(0, a6, a7, a8);
  result = (*(*(a6 - 8) + 32))(&a9[*(v14 + 44)], a3, a6);
  v16 = &a9[*(v14 + 48)];
  *v16 = a4;
  *(v16 + 1) = a5;
  return result;
}

uint64_t sub_100840FC8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a3;
  swift_getWitnessTable(byte_100A8CB70);
  v5 = type metadata accessor for _ViewModifier_Content();
  v7 = a2[3];
  v6 = a2[4];
  v20 = type metadata accessor for _OverlayModifier();
  v8 = type metadata accessor for ModifiedContent();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v20 - v13;
  v24 = a2[2];
  v25 = v7;
  v26 = v6;
  v27 = v3;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for _ViewModifier_Content<A>, v5, v12);
  View.overlay<A>(alignment:content:)();
  v16 = swift_getWitnessTable(&protocol conformance descriptor for _OverlayModifier<A>, v20);
  v28[0] = WitnessTable;
  v28[1] = v16;
  v17 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v28);
  sub_1000833D8(v10, v8, v17);
  v18 = *(v21 + 8);
  v18(v10, v8);
  sub_1000833D8(v14, v8, v17);
  return (v18)(v14, v8);
}

uint64_t sub_100841200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v16 = type metadata accessor for OverlayValueViewModifier(0, v13, v14, v15);
  (*(a1 + *(v16 + 48)))(a1 + *(v16 + 44));
  sub_1000833D8(v9, a3, a4);
  v17 = *(v7 + 8);
  v17(v9, a3);
  sub_1000833D8(v12, a3, a4);
  return (v17)(v12, a3);
}

uint64_t sub_100841350(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((static Alignment.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for OverlayValueViewModifier(0, a3, a4, a6);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t sub_10084140C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_10013DB50();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1008414A4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = (result + v7 + 16) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((v9 + v18) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return sub_100024D10(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((v9 + ((v7 + 16) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1008415FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = &a1[v10 + 16] & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = ((v11 + v19) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              v20[1] = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *v20 = v21;
          }

          else
          {

            sub_10001B350(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_100841824()
{
  result = qword_100CDDE20;
  if (!qword_100CDDE20)
  {
    v3 = sub_10022E824(&qword_100CDDE28, &qword_100A8CBF8);
    result = swift_getWitnessTable(&protocol conformance descriptor for _ShapeView<A, B>, v3, v0, v1);
    atomic_store(result, &qword_100CDDE20);
  }

  return result;
}

unint64_t sub_10084188C()
{
  result = qword_100CDDE30;
  if (!qword_100CDDE30)
  {
    result = swift_getWitnessTable(aA_0, &type metadata for RoundedRectangle, v0, v1);
    atomic_store(result, &qword_100CDDE30);
  }

  return result;
}

unint64_t sub_1008418E4()
{
  result = qword_100CDDE38;
  if (!qword_100CDDE38)
  {
    result = swift_getWitnessTable(aA_1, &type metadata for RoundedRectangle, v0, v1);
    atomic_store(result, &qword_100CDDE38);
  }

  return result;
}

unint64_t sub_100841938()
{
  result = qword_100CDDE40;
  if (!qword_100CDDE40)
  {
    result = swift_getWitnessTable(")*\x1B", &type metadata for RoundedRectangle, v0, v1);
    atomic_store(result, &qword_100CDDE40);
  }

  return result;
}

void sub_10084198C(uint64_t a1)
{
  type metadata accessor for EnvironmentValues();
  type metadata accessor for KeyPath();
  if (v1 <= 0x3F)
  {
    sub_10013DB50();
    if (v2 <= 0x3F)
    {
      sub_100841A88(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100841A88(uint64_t a1)
{
  if (!qword_100CDDED0)
  {
    type metadata accessor for EnvironmentValues();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100CDDED0);
    }
  }
}

uint64_t sub_100841B34(uint64_t a1)
{
  v169 = a1;
  v189 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000038E4();
  v193 = v2;
  v3 = sub_1000038CC();
  v185 = type metadata accessor for TimeState(v3);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v192 = v5;
  v6 = sub_1000038CC();
  v183 = type metadata accessor for NotificationsOptInState(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000038E4();
  v191 = v8;
  v9 = sub_1000038CC();
  v184 = type metadata accessor for NotificationsState(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000038E4();
  v190 = v11;
  v12 = sub_1000038CC();
  v182 = type metadata accessor for LocationsState(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000038E4();
  v188 = v14;
  v15 = sub_1000038CC();
  v181 = type metadata accessor for EnvironmentState(v15);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000038E4();
  v187 = v17;
  v18 = sub_1000038CC();
  v180 = type metadata accessor for AppConfigurationState(v18);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000038E4();
  v186 = v20;
  v21 = sub_1000038CC();
  v173 = type metadata accessor for ModalViewState(v21);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_100003848();
  v179 = v23;
  __chkstk_darwin(v24);
  sub_100003908();
  __chkstk_darwin(v25);
  v178 = &v165 - v26;
  v27 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003C38();
  v31 = v29 - v30;
  __chkstk_darwin(v32);
  v165 = &v165 - v33;
  v34 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v35 = sub_100003810(v34);
  __chkstk_darwin(v35);
  sub_100003848();
  v177 = v36;
  __chkstk_darwin(v37);
  v39 = &v165 - v38;
  v40 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v41 = sub_100003810(v40);
  __chkstk_darwin(v41);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v42);
  v44 = &v165 - v43;
  v45 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v46 = sub_100003810(v45);
  __chkstk_darwin(v46);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v47);
  v49 = &v165 - v48;
  v50 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v51 = sub_100003810(v50);
  __chkstk_darwin(v51);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v52);
  v54 = &v165 - v53;
  v55 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v56 = sub_100003810(v55);
  __chkstk_darwin(v56);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v57);
  v59 = &v165 - v58;
  v60 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v61 = sub_100003810(v60);
  __chkstk_darwin(v61);
  sub_100003C38();
  v64 = v62 - v63;
  __chkstk_darwin(v65);
  v67 = &v165 - v66;
  v68 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v69 = sub_100003810(v68);
  __chkstk_darwin(v69);
  sub_100003C38();
  v72 = v70 - v71;
  __chkstk_darwin(v73);
  v75 = &v165 - v74;
  sub_100003934();
  sub_10001B350(v76, v77, v78, v180);
  sub_100003934();
  sub_10001B350(v79, v80, v81, v181);
  v166 = v59;
  sub_100003934();
  sub_10001B350(v82, v83, v84, v182);
  v168 = v54;
  sub_100003934();
  sub_10001B350(v85, v86, v87, v184);
  v171 = v49;
  v88 = v172;
  sub_100003934();
  sub_10001B350(v89, v90, v91, v183);
  static WeatherClock.date.getter();
  *&v175 = v44;
  sub_10001B350(v44, 0, 1, v185);
  v176 = v39;
  sub_100003934();
  sub_10001B350(v92, v93, v94, v189);
  v95 = v165;
  sub_100003934();
  v96 = v173;
  sub_10001B350(v97, v98, v99, v173);
  v100 = v169;
  sub_1000BCAE0(v169 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v88, type metadata accessor for ModalViewState);
  sub_1002AB08C(v95, v31, &qword_100CA65E8, &unk_100A31410);
  sub_1000038B4(v31, 1, v96);
  if (v101)
  {
    sub_1000180EC(v31, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_10037B08C(v88);
    sub_100005518();
    sub_100073030(v31, v88, v102);
  }

  sub_100005518();
  v103 = v178;
  sub_100073030(v88, v178, v104);
  v105 = *(v100 + 16);
  LODWORD(v172) = *(v100 + 24);
  sub_1002AB08C(v75, v72, &qword_100CA6640, qword_100A32640);
  v106 = sub_100016298();
  v107 = v180;
  sub_1000038B4(v106, v108, v180);
  v109 = v193;
  v110 = v167;
  if (v101)
  {
    v111 = sub_1000750B8(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
    sub_1000BCAE0(v111, v186, v112);
    v113 = sub_100016298();
    v115 = sub_100024D10(v113, v114, v107);

    v116 = v183;
    if (v115 != 1)
    {
      sub_1000180EC(v72, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_100073030(v72, v186, type metadata accessor for AppConfigurationState);

    v116 = v183;
  }

  sub_1002AB08C(v67, v64, &qword_100CA6638, &unk_100A31460);
  v117 = sub_10000C7F0();
  v118 = v181;
  sub_1000038B4(v117, v119, v181);
  if (v101)
  {
    v120 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    sub_1000BCAE0(v100 + v120, v187, type metadata accessor for EnvironmentState);
    v121 = sub_10000C7F0();
    sub_1000038B4(v121, v122, v118);
    v123 = v189;
    v124 = v184;
    v125 = v170;
    if (!v101)
    {
      sub_1000180EC(v64, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_100073030(v64, v187, type metadata accessor for EnvironmentState);
    v123 = v189;
    v124 = v184;
    v125 = v170;
  }

  sub_1002AB08C(v166, v110, &qword_100CA6630, &unk_100A32630);
  v126 = v182;
  sub_1000038B4(v110, 1, v182);
  if (v101)
  {
    v127 = sub_1000750B8(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
    sub_1000BCAE0(v127, v188, v128);
    sub_1000038B4(v110, 1, v126);
    v129 = v185;
    if (!v101)
    {
      sub_1000180EC(v110, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_100073030(v110, v188, type metadata accessor for LocationsState);
    v129 = v185;
  }

  sub_1002AB08C(v168, v125, &qword_100CA6628, &unk_100A31450);
  sub_1000038B4(v125, 1, v124);
  if (v101)
  {
    v130 = sub_1000750B8(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
    sub_1000BCAE0(v130, v190, v131);
    sub_1000038B4(v125, 1, v124);
    if (!v101)
    {
      sub_1000180EC(v125, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_100073030(v125, v190, type metadata accessor for NotificationsState);
  }

  v132 = v174;
  sub_1002AB08C(v171, v174, &qword_100CA6620, &unk_100A32620);
  v133 = sub_100016298();
  sub_1000038B4(v133, v134, v116);
  if (v101)
  {
    v135 = sub_1000750B8(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
    sub_1000BCAE0(v135, v191, v136);
    v137 = sub_100016298();
    sub_1000038B4(v137, v138, v116);
    if (!v101)
    {
      sub_1000180EC(v132, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_100073030(v132, v191, type metadata accessor for NotificationsOptInState);
  }

  v139 = *(&v175 + 1);
  sub_1002AB08C(v175, *(&v175 + 1), &qword_100CA6618, &unk_100A31440);
  sub_1000038B4(v139, 1, v129);
  if (v101)
  {
    v140 = sub_1000750B8(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
    sub_1000BCAE0(v140, v192, v141);
    sub_1000038B4(v139, 1, v129);
    if (!v101)
    {
      sub_1000180EC(v139, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_100073030(v139, v192, type metadata accessor for TimeState);
  }

  v142 = v177;
  sub_1002AB08C(v176, v177, &qword_100CA6610, &unk_100A32610);
  v143 = sub_10000C7F0();
  sub_1000038B4(v143, v144, v123);
  v173 = v105;
  if (v101)
  {
    v145 = sub_1000750B8(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
    sub_1000BCAE0(v145, v109, v146);
    v147 = sub_10000C7F0();
    sub_1000038B4(v147, v148, v123);
    if (!v101)
    {
      sub_1000180EC(v142, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_100073030(v142, v109, type metadata accessor for ViewState);
  }

  sub_100005518();
  v149 = v179;
  sub_100073030(v103, v179, v150);
  v151 = v100 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
  v153 = *(v100 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v152 = *(v100 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v154 = v100;
  v156 = *(v100 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v155 = *(v151 + 24);
  v157 = *(v154 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v159 = *(v154 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v158 = *(v154 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v160 = *(v154 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v164) = v157;
  sub_10003E038(v173, v172, v186, v187, v188, v190, v191, v192, v193, v149, v153, v152, v156, v155, v164, v159, v158, v160, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181);
  v162 = v161;

  return v162;
}

uint64_t sub_100842838@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v34 = a5;
  v33 = type metadata accessor for ConditionDetailChartHeaderStringModel();
  sub_1000037C4();
  v36 = v5;
  __chkstk_darwin(v6);
  v35 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DetailChartCondition();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  v29 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v27[-v14];
  ConditionDetailChartHeaderInput.condition.getter();
  sub_100842B34(v15, v38);
  v16 = *(v10 + 8);
  v16(v15, v8);
  ConditionDetailChartHeaderInput.condition.getter();
  v17 = sub_100842D30(v15);
  v18 = v17;
  v28 = v17;
  v16(v15, v8);
  sub_1000161C0(v38, v38[3]);
  sub_100926274(v18, v37);
  v19 = v35;
  dispatch thunk of ConditionDetailChartHeaderStringBuilderType.makeModel(from:units:extrema:secondaryValueExtrema:style:)();
  sub_100006F14(v37);
  v20 = v34;
  v21 = v19;
  v22 = v33;
  (*(v36 + 16))(v34, v21, v33);
  ConditionDetailChartHeaderInput.condition.getter();
  v23 = v29;
  (*(v10 + 104))(v29, enum case for DetailChartCondition.chanceOfRain(_:), v8);
  sub_100842FB4();
  v24 = v23;
  LOBYTE(v23) = dispatch thunk of static Equatable.== infix(_:_:)();
  v16(v24, v8);
  v16(v15, v8);
  (*(v36 + 8))(v35, v22);
  v25 = type metadata accessor for ConditionDetailChartHeaderViewModel(0);
  *(v20 + *(v25 + 20)) = v28;
  *(v20 + *(v25 + 24)) = (v23 & 1) == 0;
  return sub_100006F14(v38);
}

uint64_t sub_100842B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DetailChartCondition();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DetailChartCondition.humidity(_:))
  {
    v11 = 16;
    return sub_100035B30(v2 + v11, a2);
  }

  if (v10 == enum case for DetailChartCondition.pressure(_:))
  {
    v11 = 96;
    return sub_100035B30(v2 + v11, a2);
  }

  if (v10 == enum case for DetailChartCondition.precipitationTotal(_:))
  {
    v11 = 56;
    return sub_100035B30(v2 + v11, a2);
  }

  if (v10 == enum case for DetailChartCondition.temperature(_:))
  {
    v11 = 136;
    return sub_100035B30(v2 + v11, a2);
  }

  if (v10 == enum case for DetailChartCondition.temperatureFeelsLike(_:))
  {
    v11 = 176;
    return sub_100035B30(v2 + v11, a2);
  }

  if (v10 == enum case for DetailChartCondition.uvIndex(_:))
  {
    v11 = 216;
    return sub_100035B30(v2 + v11, a2);
  }

  if (v10 == enum case for DetailChartCondition.visibility(_:))
  {
    v11 = 256;
    return sub_100035B30(v2 + v11, a2);
  }

  if (v10 == enum case for DetailChartCondition.wind(_:))
  {
    v11 = 296;
    return sub_100035B30(v2 + v11, a2);
  }

  if (v10 == enum case for DetailChartCondition.chanceOfRain(_:))
  {
    v11 = 336;
    return sub_100035B30(v2 + v11, a2);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100842D30(uint64_t a1)
{
  v2 = type metadata accessor for DetailChartCondition();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DetailChartCondition.precipitationTotal(_:))
  {
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    v8 = UnitManager.precipitationRainfall.getter();

    v9 = NSUnitLength.isMetricPrecipitation.getter();

    return v9 & 1;
  }

  else if (v7 == enum case for DetailChartCondition.temperature(_:) || v7 == enum case for DetailChartCondition.temperatureFeelsLike(_:))
  {
    return 4;
  }

  else if (v7 == enum case for DetailChartCondition.uvIndex(_:))
  {
    return 6;
  }

  else if (v7 == enum case for DetailChartCondition.visibility(_:))
  {
    return 5;
  }

  else if (v7 == enum case for DetailChartCondition.chanceOfRain(_:))
  {
    return 3;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 2;
  }
}

void *sub_100842EFC()
{
  sub_100006F14(v0 + 2);
  sub_100006F14(v0 + 7);
  sub_100006F14(v0 + 12);
  sub_100006F14(v0 + 17);
  sub_100006F14(v0 + 22);
  sub_100006F14(v0 + 27);
  sub_100006F14(v0 + 32);
  sub_100006F14(v0 + 37);
  sub_100006F14(v0 + 42);
  return v0;
}

uint64_t sub_100842F5C()
{
  sub_100842EFC();

  return swift_deallocClassInstance();
}

unint64_t sub_100842FB4()
{
  result = qword_100CA39E0;
  if (!qword_100CA39E0)
  {
    v3 = type metadata accessor for DetailChartCondition();
    result = swift_getWitnessTable(&protocol conformance descriptor for DetailChartCondition, v3, v0, v1);
    atomic_store(result, &qword_100CA39E0);
  }

  return result;
}

uint64_t sub_10084300C(uint64_t a1, uint64_t a2)
{
  v578 = a2;
  v3 = sub_10022C350(&qword_100CA65C0, &unk_100A313E0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003990(v515 - v5);
  v6 = sub_10022C350(&qword_100CA65D0, &unk_100A313F0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003990(v515 - v8);
  v9 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  v12 = sub_100003918(v515 - v11);
  v577 = type metadata accessor for LocationPreviewModalViewState(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003848();
  v592 = v14;
  __chkstk_darwin(v15);
  sub_10000E70C();
  v17 = sub_100003918(v16);
  v576 = type metadata accessor for LocationPreviewViewState(v17);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003848();
  v593 = v19;
  __chkstk_darwin(v20);
  sub_10000E70C();
  v22 = sub_100003918(v21);
  v600 = type metadata accessor for ViewState(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  v27 = sub_100003918(v26);
  v595 = type metadata accessor for TimeState(v27);
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_10000E70C();
  v591 = v31;
  v32 = sub_1000038CC();
  v594 = type metadata accessor for NotificationsOptInState(v32);
  sub_1000037E8();
  __chkstk_darwin(v33);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_10000E70C();
  v590 = v36;
  v37 = sub_1000038CC();
  v597 = type metadata accessor for NotificationsState(v37);
  sub_1000037E8();
  __chkstk_darwin(v38);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_10000E70C();
  v589 = v41;
  v42 = sub_1000038CC();
  v596 = type metadata accessor for LocationsState(v42);
  sub_1000037E8();
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_10000E70C();
  v588 = v46;
  v47 = sub_1000038CC();
  v601 = type metadata accessor for EnvironmentState(v47);
  sub_1000037E8();
  __chkstk_darwin(v48);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_10000E70C();
  v587 = v51;
  v52 = sub_1000038CC();
  v599 = type metadata accessor for AppConfigurationState(v52);
  sub_1000037E8();
  __chkstk_darwin(v53);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_10000E70C();
  v586 = v56;
  v57 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v58 = sub_100003810(v57);
  __chkstk_darwin(v58);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_10000E70C();
  sub_100003990(v64);
  v65 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v66 = sub_100003810(v65);
  __chkstk_darwin(v66);
  sub_100003848();
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
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_10000E70C();
  v585 = v72;
  v73 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v74 = sub_100003810(v73);
  __chkstk_darwin(v74);
  sub_100003848();
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
  sub_10000E70C();
  v584 = v80;
  v81 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v82 = sub_100003810(v81);
  __chkstk_darwin(v82);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_10000E70C();
  sub_100003990(v88);
  v89 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v90 = sub_100003810(v89);
  __chkstk_darwin(v90);
  sub_100003848();
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
  sub_10000E70C();
  sub_100003990(v96);
  v97 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v98 = sub_100003810(v97);
  __chkstk_darwin(v98);
  sub_100003848();
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
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_10000E70C();
  sub_100003990(v104);
  v105 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v106 = sub_100003810(v105);
  __chkstk_darwin(v106);
  sub_100003848();
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
  sub_10000E70C();
  sub_100003990(v112);
  v113 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v114 = sub_100003810(v113);
  __chkstk_darwin(v114);
  sub_100003848();
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
  sub_10000E70C();
  v121 = sub_100003918(v120);
  v122 = type metadata accessor for AveragesDetailViewState(v121);
  v123 = sub_100003810(v122);
  __chkstk_darwin(v123);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  v127 = v515 - v126;
  v128 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v129);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v131);
  v133 = v515 - v132;
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  v138 = v515 - v137;
  __chkstk_darwin(v139);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v140);
  v142 = v515 - v141;
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  v146 = v515 - v145;
  type metadata accessor for ModalViewState.LocationDetailModal(0);
  sub_1000037E8();
  __chkstk_darwin(v147);
  v149 = v515 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v150);
  v152 = v515 - v151;
  sub_10001CEF0();
  v598 = v153;
  sub_1000BCBF8(a1 + v153, v146, v154);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v515[0] = a1;
    sub_1000D3A5C(v146, v152, type metadata accessor for ModalViewState.LocationDetailModal);
    sub_1000D3A5C(v152, v149, type metadata accessor for ModalViewState.LocationDetailModal);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_10000CF20();
      sub_1000D3A5C(v149, v127, v155);
      v156 = sub_100003BCC(&v603);
      v157 = v599;
      sub_10001B350(v156, v158, v159, v599);
      v160 = sub_100003BCC(&v604);
      sub_10001B350(v160, v161, v162, v601);
      v163 = sub_100003BCC(&v605);
      sub_10001B350(v163, v164, v165, v596);
      v166 = sub_100003BCC(&v606);
      sub_10001B350(v166, v167, v168, v597);
      v169 = sub_100003BCC(&v607);
      v170 = v594;
      sub_10001B350(v169, v171, v172, v594);
      sub_100003934();
      v173 = v595;
      sub_10001B350(v174, v175, v176, v595);
      sub_100003934();
      sub_10001B350(v177, v178, v179, v600);
      sub_1008454A4(v578, v556);
      sub_10004EBAC();
      sub_1000E02A8(v127, v180);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v181, v182, v183, v128);
      sub_10001CEF0();
      v184 = v515[0];
      sub_1000BCBF8(v515[0] + v598, v142, v185);
      sub_1000113EC();
      sub_100051B60(v186, v187, v188, v189);
      sub_10000394C(v127);
      if (v190)
      {
        sub_1000180EC(v127, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100010D80();
        sub_1000E02A8(v142, v319);
        sub_10001FA14();
        sub_1000D3A5C(v127, v142, v320);
      }

      v321 = v555;
      v322 = v553;
      sub_10001FA14();
      sub_1000D3A5C(v142, v323, v324);
      v325 = *(v184 + 16);
      LODWORD(v593) = *(v184 + 24);
      sub_100051B60(v579, v322, &qword_100CA6640, qword_100A32640);
      sub_1000038B4(v322, 1, v157);
      v326 = v597;
      v598 = v325;
      if (v190)
      {
        sub_100016FDC();
        sub_1000BCBF8(v184 + v327, v586, v328);
        v329 = sub_100024D10(v322, 1, v157);

        v331 = v559;
        if (v329 != 1)
        {
          sub_1000180EC(v322, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100037DEC();
        sub_1000D3A5C(v322, v586, v330);

        v331 = v559;
      }

      v332 = v554;
      sub_100051B60(v580, v554, &qword_100CA6638, &unk_100A31460);
      sub_1000187A0();
      if (v190)
      {
        v333 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C(v184 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10000EE34();
        sub_1000BCBF8(v184 + v333, v587, v334);
        sub_1000187A0();
        v337 = v560;
        v338 = v557;
        if (!v190)
        {
          sub_1000180EC(v332, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        v335 = sub_1000750C4();
        sub_1000D3A5C(v335, v587, v336);
        v337 = v560;
        v338 = v557;
      }

      sub_100051B60(v581, v321, &qword_100CA6630, &unk_100A32630);
      sub_10000394C(v321);
      if (v190)
      {
        sub_10002CB20();
        sub_1000BCBF8(v184 + v339, v588, v340);
        sub_10000394C(v321);
        v342 = v558;
        if (!v190)
        {
          sub_1000180EC(v321, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100020BEC();
        sub_1000D3A5C(v321, v588, v341);
        v342 = v558;
      }

      sub_100051B60(v582, v338, &qword_100CA6628, &unk_100A31450);
      sub_1000038B4(v338, 1, v326);
      if (v190)
      {
        sub_100024AEC();
        sub_1000BCBF8(v184 + v343, v589, v344);
        sub_1000038B4(v338, 1, v326);
        v346 = v561;
        if (!v190)
        {
          sub_1000180EC(v338, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10003C938();
        sub_1000D3A5C(v338, v589, v345);
        v346 = v561;
      }

      sub_100051B60(v583, v342, &qword_100CA6620, &unk_100A32620);
      v347 = sub_100016298();
      sub_1000038B4(v347, v348, v170);
      if (v190)
      {
        sub_100017EA4();
        sub_1000BCBF8(v184 + v349, v590, v350);
        v351 = sub_100016298();
        sub_1000038B4(v351, v352, v170);
        if (!v190)
        {
          sub_1000180EC(v342, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        v353 = sub_100028C1C();
        sub_1000D3A5C(v353, v590, v354);
      }

      sub_100051B60(v584, v331, &qword_100CA6618, &unk_100A31440);
      v355 = sub_10000C834();
      sub_1000038B4(v355, v356, v173);
      if (v190)
      {
        sub_100069B00();
        sub_1000BCBF8(v184 + v357, v591, v358);
        v359 = sub_10000C834();
        sub_1000038B4(v359, v360, v173);
        if (!v190)
        {
          sub_1000180EC(v331, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        v361 = sub_100023338();
        sub_1000D3A5C(v361, v591, v362);
      }

      sub_100051B60(v585, v337, &qword_100CA6610, &unk_100A32610);
      v363 = sub_1000131C4();
      v364 = v600;
      sub_1000038B4(v363, v365, v600);
      if (v190)
      {
        sub_100013D30();
        sub_1000BCBF8(v184 + v366, v346, v367);
        v368 = sub_1000131C4();
        sub_1000038B4(v368, v369, v364);
        if (!v190)
        {
          sub_1000180EC(v337, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10003186C();
      }

      sub_10001FA14();
      sub_1000113EC();
      sub_1000D3A5C(v370, v371, v372);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      v373 = sub_100052150();
      v375 = v586;
      v376 = v587;
      v377 = v588;
      v378 = v589;
      v379 = v590;
      v380 = v591;
      goto LABEL_115;
    }

    sub_1000E02A8(v149, type metadata accessor for ModalViewState.LocationDetailModal);
    a1 = v515[0];
  }

  else
  {
    sub_100010D80();
    sub_1000E02A8(v146, v191);
  }

  sub_10001CEF0();
  v192 = v598;
  sub_1000BCBF8(a1 + v598, v138, v193);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v195 = v601;
  v196 = v599;
  if (EnumCaseMultiPayload)
  {
    sub_100010D80();
    v198 = v138;
  }

  else
  {
    sub_100041BC4();
    v199 = v568[0];
    sub_1000D3A5C(v138, v568[0], v200);
    v201 = sub_10002540C();
    v202 = v566;
    sub_1000BCBF8(v201, v566, v203);
    v204 = v577;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_10000CF20();
      v205 = v195;
      v206 = v526;
      sub_1000D3A5C(v202, v526, v207);
      v208 = sub_100003BCC(&v590);
      sub_10001B350(v208, v209, v210, v196);
      v211 = sub_100003BCC(&v591);
      sub_10001B350(v211, v212, v213, v205);
      v214 = sub_100003BCC(&v592);
      sub_10001B350(v214, v215, v216, v596);
      v217 = sub_100003BCC(&v593);
      sub_10001B350(v217, v218, v219, v597);
      v220 = sub_100003BCC(&v596);
      sub_10001B350(v220, v221, v222, v594);
      v223 = sub_100003BCC(&v598);
      sub_10001B350(v223, v224, v225, v595);
      v226 = sub_100003BCC(&v599);
      sub_10001B350(v226, v227, v228, v600);
      type metadata accessor for PreviewLocation(0);
      v229 = v199;
      v230 = v549;
      sub_100003934();
      sub_10001B350(v231, v232, v233, v234);
      v235 = v550;
      sub_1008454A4(v578, v550);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v236, v237, v238, v204);
      type metadata accessor for SelectedSearchResult(0);
      v239 = v551;
      sub_100003934();
      sub_10001B350(v240, v241, v242, v243);
      v244 = v531;
      sub_10043DB64(v230, v235, v239, v531);
      sub_1000180EC(v239, &qword_100CA65C0, &unk_100A313E0);
      sub_1000180EC(v235, &qword_100CA65D0, &unk_100A313F0);
      sub_1000180EC(v230, &qword_100CA65C8, &unk_100A31670);
      sub_10004EBAC();
      sub_1000E02A8(v206, v245);
      sub_100014FA4();
      sub_1000E02A8(v229, v246);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v247, v248, v249, v128);
      sub_10001CEF0();
      sub_1000113EC();
      sub_1000BCBF8(v250, v251, v252);
      v253 = v532;
      sub_100051B60(v244, v532, &qword_100CA65E8, &unk_100A31410);
      sub_10000394C(v253);
      if (v190)
      {
        sub_1000180EC(v253, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100010D80();
        sub_1000E02A8(v229, v382);
        sub_10001FA14();
        v383 = sub_100003940();
        sub_1000D3A5C(v383, v384, v385);
      }

      v386 = *(&v534 + 1);
      v387 = v530;
      v388 = v529;
      v389 = v528;
      sub_10001FA14();
      sub_1000D3A5C(v229, v390, v391);
      v392 = *(a1 + 16);
      LODWORD(v593) = *(a1 + 24);
      sub_100051B60(v562, v389, &qword_100CA6640, qword_100A32640);
      v393 = sub_100007FC4();
      v394 = v599;
      sub_1000038B4(v393, v395, v599);
      v396 = v597;
      v598 = v392;
      if (v190)
      {
        sub_100016FDC();
        sub_1000BCBF8(a1 + v397, v570, v398);
        v399 = sub_100007FC4();
        v401 = sub_100024D10(v399, v400, v394);

        if (v401 != 1)
        {
          sub_1000180EC(v389, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100037DEC();
        sub_1000D3A5C(v389, v570, v402);
      }

      sub_100051B60(v563, v388, &qword_100CA6638, &unk_100A31460);
      sub_1000187A0();
      if (v190)
      {
        v403 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10000EE34();
        sub_1000BCBF8(a1 + v403, v571, v404);
        sub_1000187A0();
        v407 = v533;
        if (!v190)
        {
          sub_1000180EC(v388, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        v405 = sub_1000750C4();
        sub_1000D3A5C(v405, v571, v406);
        v407 = v533;
      }

      sub_100051B60(v564, v387, &qword_100CA6630, &unk_100A32630);
      sub_10000394C(v387);
      if (v190)
      {
        sub_10002CB20();
        sub_1000BCBF8(a1 + v408, v572, v409);
        sub_10000394C(v387);
        v411 = v534;
        if (!v190)
        {
          sub_1000180EC(v387, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100020BEC();
        sub_1000D3A5C(v387, v572, v410);
        v411 = v534;
      }

      sub_1000C8878(&qword_100CA6628, &v593, &unk_100A31450);
      v412 = sub_1000131C4();
      sub_1000038B4(v412, v413, v396);
      if (v190)
      {
        sub_100024AEC();
        sub_1000BCBF8(a1 + v414, v573, v415);
        v416 = sub_1000131C4();
        sub_1000038B4(v416, v417, v396);
        v419 = v536;
        if (!v190)
        {
          sub_1000180EC(v407, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10003C938();
        sub_1000D3A5C(v407, v573, v418);
        v419 = v536;
      }

      sub_100051B60(v567, v411, &qword_100CA6620, &unk_100A32620);
      v420 = sub_100016298();
      v421 = v594;
      sub_1000038B4(v420, v422, v594);
      if (v190)
      {
        sub_100017EA4();
        sub_1000BCBF8(a1 + v423, v574, v424);
        v425 = sub_100016298();
        sub_1000038B4(v425, v426, v421);
        v429 = v535;
        if (!v190)
        {
          sub_1000180EC(v411, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        v427 = sub_100028C1C();
        sub_1000D3A5C(v427, v574, v428);
        v429 = v535;
      }

      sub_100051B60(v568[1], v386, &qword_100CA6618, &unk_100A31440);
      v430 = sub_10000C834();
      sub_1000038B4(v430, v431, v595);
      if (v190)
      {
        sub_100069B00();
        sub_1000BCBF8(a1 + v432, v575, v433);
        sub_10000394C(v386);
        if (!v190)
        {
          sub_1000180EC(v386, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        v434 = sub_100023338();
        sub_1000D3A5C(v434, v575, v435);
      }

      sub_1000C8878(&qword_100CA6610, &v599, &unk_100A32610);
      v436 = sub_1000131C4();
      v437 = v600;
      sub_1000038B4(v436, v438, v600);
      if (v190)
      {
        sub_100013D30();
        sub_1000BCBF8(a1 + v439, v419, v440);
        v441 = sub_1000131C4();
        sub_1000038B4(v441, v442, v437);
        if (!v190)
        {
          sub_1000180EC(v429, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10003186C();
      }

      sub_10001FA14();
      sub_1000113EC();
      sub_1000D3A5C(v443, v444, v445);
      sub_10008686C();
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      v373 = sub_100052150();
      v375 = v570;
      v376 = v571;
      v377 = v572;
      v378 = v573;
      v379 = v574;
      v446 = &v602;
      goto LABEL_114;
    }

    sub_100014FA4();
    sub_1000E02A8(v199, v254);
    sub_10002172C();
    v198 = v202;
  }

  sub_1000E02A8(v198, v197);
  sub_10001CEF0();
  sub_1000BCBF8(a1 + v192, v133, v255);
  v256 = swift_getEnumCaseMultiPayload();
  v257 = v592;
  v258 = v593;
  if (v256 != 4)
  {
    sub_100010D80();
    v263 = v133;
LABEL_20:
    sub_1000E02A8(v263, v262);
    goto LABEL_21;
  }

  v259 = type metadata accessor for ModalViewState.MapViewModal(0);
  sub_1000038B4(v133, 1, v259);
  v260 = v600;
  v261 = v595;
  if (!v190)
  {
    sub_100041BC4();
    sub_1000D3A5C(v133, v258, v264);
    v265 = sub_10002540C();
    sub_1000BCBF8(v265, v257, v266);
    sub_1000113EC();
    v267 = swift_getEnumCaseMultiPayload();
    if (v267 == 7)
    {
      sub_10000CF20();
      sub_1000D3A5C(v257, v552, v268);
      v269 = sub_100003BCC(v565);
      sub_10001B350(v269, v270, v271, v196);
      v272 = sub_100003BCC(&v566);
      sub_10001B350(v272, v273, v274, v195);
      v275 = sub_100003BCC(&v567);
      sub_10001B350(v275, v276, v277, v596);
      v278 = sub_100003BCC(v568);
      sub_10001B350(v278, v279, v280, v597);
      v281 = sub_100003BCC(v569);
      sub_10001B350(v281, v282, v283, v594);
      v284 = sub_100003BCC(&v570);
      sub_10001B350(v284, v285, v286, v261);
      v287 = sub_100003BCC(&v571);
      sub_10001B350(v287, v288, v289, v260);
      type metadata accessor for PreviewLocation(0);
      v290 = v549;
      sub_100003934();
      sub_10001B350(v291, v292, v293, v294);
      v295 = v258;
      v296 = v550;
      sub_1008454A4(v578, v550);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v297, v298, v299, v133);
      type metadata accessor for SelectedSearchResult(0);
      v300 = v551;
      sub_100003934();
      sub_10001B350(v301, v302, v303, v304);
      v305 = v519;
      v306 = v295;
      sub_10043DB64(v290, v296, v300, v519);
      sub_1000180EC(v300, &qword_100CA65C0, &unk_100A313E0);
      sub_1000180EC(v296, &qword_100CA65D0, &unk_100A313F0);
      sub_1000180EC(v290, &qword_100CA65C8, &unk_100A31670);
      sub_10004EBAC();
      sub_1000E02A8(v552, v307);
      sub_100014FA4();
      sub_1000E02A8(v295, v308);
      sub_10000E7B0();
      sub_10001B350(v309, v310, v311, v259);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v312, v313, v314, v128);
      sub_10001CEF0();
      sub_1000113EC();
      sub_1000BCBF8(v315, v316, v317);
      v318 = v520;
      sub_100051B60(v305, v520, &qword_100CA65E8, &unk_100A31410);
      sub_10000394C(v318);
      if (v190)
      {
        sub_1000180EC(v318, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_100010D80();
        sub_1000E02A8(v295, v447);
        sub_10001FA14();
        v448 = sub_100003940();
        sub_1000D3A5C(v448, v449, v450);
      }

      v451 = v523;
      v452 = v518;
      v453 = v517;
      v454 = v516;
      sub_10001FA14();
      sub_1000D3A5C(v306, v455, v456);
      v457 = *(a1 + 16);
      LODWORD(v593) = *(a1 + 24);
      sub_100051B60(v537, v454, &qword_100CA6640, qword_100A32640);
      v458 = sub_100007FC4();
      sub_1000038B4(v458, v459, v196);
      v460 = v597;
      v598 = v457;
      if (v190)
      {
        sub_100016FDC();
        sub_1000BCBF8(a1 + v461, v543, v462);
        v463 = sub_100007FC4();
        v465 = sub_100024D10(v463, v464, v196);

        if (v465 != 1)
        {
          sub_1000180EC(v454, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100037DEC();
        sub_1000D3A5C(v454, v543, v466);
      }

      sub_100051B60(v538, v453, &qword_100CA6638, &unk_100A31460);
      sub_1000187A0();
      if (v190)
      {
        v467 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        sub_10002014C(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10000EE34();
        sub_1000BCBF8(a1 + v467, v544, v468);
        sub_1000187A0();
        v471 = v521;
        v472 = v595;
        if (!v190)
        {
          sub_1000180EC(v453, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        v469 = sub_1000750C4();
        sub_1000D3A5C(v469, v544, v470);
        v471 = v521;
        v472 = v595;
      }

      sub_100051B60(v539, v452, &qword_100CA6630, &unk_100A32630);
      sub_10000394C(v452);
      if (v190)
      {
        sub_10002CB20();
        sub_1000BCBF8(a1 + v473, v545, v474);
        sub_10000394C(v452);
        v476 = v522;
        if (!v190)
        {
          sub_1000180EC(v452, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100020BEC();
        sub_1000D3A5C(v452, v545, v475);
        v476 = v522;
      }

      sub_1000C8878(&qword_100CA6628, v568, &unk_100A31450);
      v477 = sub_1000131C4();
      sub_1000038B4(v477, v478, v460);
      if (v190)
      {
        sub_100024AEC();
        sub_1000BCBF8(a1 + v479, v546, v480);
        v481 = sub_1000131C4();
        sub_1000038B4(v481, v482, v460);
        v484 = v525;
        v485 = v600;
        if (!v190)
        {
          sub_1000180EC(v471, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10003C938();
        sub_1000D3A5C(v471, v546, v483);
        v484 = v525;
        v485 = v600;
      }

      sub_100051B60(v541, v476, &qword_100CA6620, &unk_100A32620);
      v486 = sub_100016298();
      v487 = v594;
      sub_1000038B4(v486, v488, v594);
      if (v190)
      {
        sub_100017EA4();
        sub_1000BCBF8(a1 + v489, v547, v490);
        v491 = sub_100016298();
        sub_1000038B4(v491, v492, v487);
        v495 = v524;
        if (!v190)
        {
          sub_1000180EC(v476, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        v493 = sub_100028C1C();
        sub_1000D3A5C(v493, v547, v494);
        v495 = v524;
      }

      sub_100051B60(v542, v451, &qword_100CA6618, &unk_100A31440);
      v496 = sub_10000C834();
      sub_1000038B4(v496, v497, v472);
      if (v190)
      {
        sub_100069B00();
        sub_1000BCBF8(a1 + v498, v548, v499);
        v500 = sub_10000C834();
        sub_1000038B4(v500, v501, v472);
        if (!v190)
        {
          sub_1000180EC(v451, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        v502 = sub_100023338();
        sub_1000D3A5C(v502, v548, v503);
      }

      sub_1000C8878(&qword_100CA6610, &v571, &unk_100A32610);
      v504 = sub_1000131C4();
      sub_1000038B4(v504, v505, v485);
      if (v190)
      {
        sub_100013D30();
        sub_1000BCBF8(a1 + v506, v484, v507);
        v508 = sub_1000131C4();
        sub_1000038B4(v508, v509, v485);
        if (!v190)
        {
          sub_1000180EC(v495, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10003186C();
      }

      sub_10001FA14();
      sub_1000113EC();
      sub_1000D3A5C(v510, v511, v512);
      sub_10008686C();
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      v373 = sub_100052150();
      v375 = v543;
      v376 = v544;
      v377 = v545;
      v378 = v546;
      v379 = v547;
      v446 = &v577;
LABEL_114:
      v380 = *(v446 - 32);
LABEL_115:
      sub_10003E038(v373, v374, v375, v376, v377, v378, v379, v380, v515[0], v515[1], v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537, v538, v539, v540);
      a1 = v513;

      return a1;
    }

    sub_100014FA4();
    sub_1000E02A8(v258, v381);
    sub_10002172C();
    v263 = v257;
    goto LABEL_20;
  }

  sub_1000180EC(v133, &qword_100CA65E0, &unk_100A31400);
LABEL_21:

  return a1;
}

__n128 sub_1008454A4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DetailHeroChartLollipopPosition(0);
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AveragesDetailViewAction(0);
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BCBF8(a1, v10, type metadata accessor for AveragesDetailViewAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000D3A5C(v10, v7, type metadata accessor for DetailHeroChartLollipopPosition);
      v12 = type metadata accessor for Location();
      (*(*(v12 - 8) + 16))(a2, v2, v12);
      v13 = type metadata accessor for AveragesDetailViewState(0);
      v14 = v13 + 5;
      v15 = *(v2 + v13[5]);
      v16 = v13[6];
      sub_1000D3A5C(v7, a2 + v16, type metadata accessor for DetailHeroChartLollipopPosition);
      v17 = a2 + v16;
      v18 = 0;
    }

    else
    {
      v24 = type metadata accessor for Location();
      (*(*(v24 - 8) + 16))(a2, v2, v24);
      v13 = type metadata accessor for AveragesDetailViewState(0);
      v14 = v13 + 5;
      v15 = *(v2 + v13[5]);
      v17 = a2 + v13[6];
      v18 = 1;
    }

    sub_10001B350(v17, v18, 1, v5);
    v25 = v13[7];
    v21 = v13 + 7;
    v23 = (v2 + v25);
  }

  else
  {
    v15 = *v10;
    v19 = type metadata accessor for Location();
    (*(*(v19 - 8) + 16))(a2, v2, v19);
    v20 = type metadata accessor for AveragesDetailViewState(0);
    sub_1002ED164(v2 + *(v20 + 24), a2 + *(v20 + 24));
    v22 = *(v20 + 28);
    v21 = (v20 + 28);
    v23 = (v2 + v22);
    v14 = v21 - 2;
  }

  v26 = v23[2].n128_u8[0];
  v28 = v23[1].n128_u64[0];
  v27 = v23[1].n128_u64[1];
  result = *v23;
  *(a2 + *v14) = v15;
  v30 = (a2 + *v21);
  *v30 = result;
  v30[1].n128_u64[0] = v28;
  v30[1].n128_u64[1] = v27;
  v30[2].n128_u8[0] = v26;
  return result;
}

void *sub_10084575C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDE0E8, &qword_100A8CF18);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4D80, &qword_100A2EFE0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = sub_10002D7F8(v22, v23);
      v7 = __chkstk_darwin(v6);
      v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for ListMenuInteractor();
      v21[3] = v12;
      v21[4] = &off_100C59BB8;
      v21[0] = v11;
      v13 = type metadata accessor for ListMenuModule();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v21, v12);
      v16 = __chkstk_darwin(v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[5] = v12;
      v14[6] = &off_100C59BB8;
      v14[2] = v20;
      v14[7] = v5;
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v13;
      a2[4] = &off_100C4DCA8;
      *a2 = v14;
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

uint64_t sub_1008459D8()
{
  sub_10022C350(&qword_100CDE0E8, &qword_100A8CF18);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDE0F0, &qword_100A8CF20);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CDE0F8, &qword_100A8CF28);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4D80, &qword_100A2EFE0);
  RegistrationContainer.register<A>(_:name:factory:)();
}

void *sub_100845B04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for ListMenuInteractor();
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v6;
    a2[3] = v4;
    a2[4] = &off_100C59BB8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100845BE8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void *sub_100845C38(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v21;
  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v23;
  v4 = v24;
  v6 = v22;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDE0F0, &qword_100A8CF20);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v19, v20);
  v17 = type metadata accessor for ListMenuInputFactory();
  v18 = &off_100C75638;
  v16[0] = v7;
  sub_100035B30(v16, v15);
  v8 = swift_allocObject();
  sub_100013188(v15, v8 + 16);

  sub_100006F14(v16);
  sub_100006F14(v19);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100846020;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CDE0F8, &qword_100A8CF28);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v20)
  {
    v10 = *sub_1000161C0(v19, v20);
    v17 = type metadata accessor for ListMenuViewModelFactory();
    v18 = &off_100C6CE80;
    v16[0] = v10;
    sub_100035B30(v16, v15);
    v11 = swift_allocObject();
    sub_100013188(v15, v11 + 16);

    sub_100006F14(v16);
    sub_100006F14(v19);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100846060;
    *(v12 + 24) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100846028;
    *(v13 + 24) = v9;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_10084606C;
    *(v14 + 24) = v12;
    sub_10022C350(&qword_100CA4D80, &qword_100A2EFE0);
    swift_allocObject();
    return sub_10024C064(v3, v6, v5, v4, sub_100266DE8, 0, sub_1008460A4, v13, sub_1008460F0, v14);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100845FDC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(*a1, *(a1 + 8), *(a1 + 16));
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_100846028@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_100846074@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  result = sub_100318B54(*a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  return result;
}

uint64_t sub_1008460AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, void *)@<X2>, uint64_t a4@<X8>)
{
  result = sub_100318C64(*a1, *(a1 + 8), *(a1 + 16), a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationSettingsPredictedLocationsViewModel(_BYTE *result, unsigned int a2, unsigned int a3)
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

double sub_1008461D4@<D0>(uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v3 = type metadata accessor for GridGeometryComputerModifier(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  swift_storeEnumTagMultiPayload();
  v5 = v3[6];
  *(a2 + v5) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v3[7];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a2 + v3[8];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = v3[9];
  *(a2 + v8) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  swift_storeEnumTagMultiPayload();
  v9 = v3[10];
  *(a2 + v9) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v10 = a2 + v3[11];
  *v10 = sub_1000F73D0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v11 = (a2 + v3[12]);
  type metadata accessor for GridGeometryCache(0);
  swift_allocObject();
  sub_10084753C();
  State.init(wrappedValue:)();
  *v11 = v15;
  v11[1] = v16;
  v12 = a2 + v3[13];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a2 + v3[14];
  *v13 = swift_getKeyPath();
  result = 0.0;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 33) = 0u;
  return result;
}

uint64_t sub_1008463DC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a2;
  v99 = a5;
  v103 = type metadata accessor for LocationViewGeometry(0);
  v98 = *(v103 - 8);
  v97 = *(v98 + 64);
  __chkstk_darwin(v103);
  v96 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for GridGeometryRoot(0, a3, a4, v9);
  v94 = *(v75 - 8);
  v95 = *(v94 + 64);
  __chkstk_darwin(v75);
  v93 = &v69 - v10;
  v11 = sub_10022C350(&qword_100CE1230, &qword_100A8D0D0);
  __chkstk_darwin(v11 - 8);
  v84 = &v69 - v12;
  sub_10022E824(&qword_100CDE308, &qword_100A8D0C0);
  v77 = a3;
  v13 = type metadata accessor for ModifiedContent();
  v76 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v69 - v14;
  sub_10022E824(&qword_100CB0568, &unk_100A734B0);
  v71 = type metadata accessor for ModifiedContent();
  v80 = *(v71 - 8);
  __chkstk_darwin(v71);
  v72 = &v69 - v16;
  sub_10022E824(&qword_100CE1580, &unk_100A408E0);
  v79 = type metadata accessor for ModifiedContent();
  v82 = *(v79 - 8);
  __chkstk_darwin(v79);
  v101 = &v69 - v17;
  sub_10022E824(&qword_100CDE310, &qword_100A91B20);
  v81 = type metadata accessor for ModifiedContent();
  KeyPath = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v69 - v18;
  v85 = type metadata accessor for ModifiedContent();
  v88 = *(v85 - 8);
  __chkstk_darwin(v85);
  v102 = &v69 - v19;
  sub_10022E824(&qword_100CCAF30, &unk_100A69770);
  v86 = type metadata accessor for ModifiedContent();
  v91 = *(v86 - 8);
  __chkstk_darwin(v86);
  v104 = &v69 - v20;
  sub_10022E824(&qword_100CDE318, &qword_100A8D0C8);
  v90 = type metadata accessor for ModifiedContent();
  v92 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v89 = &v69 - v23;
  swift_getKeyPath();
  v100 = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v74 = a4;
  View.environment<A>(_:_:)();

  swift_getKeyPath();
  __dst[0] = a1[72];
  LOBYTE(a3) = __dst[0];
  v24 = sub_100006F64(&qword_100CDE328, &qword_100CDE308, &qword_100A8D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v111[0] = a4;
  v111[1] = v24;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v111);
  v26 = v72;
  View.environment<A>(_:_:)();

  (*(v76 + 8))(v15, v13);
  swift_getKeyPath();
  __dst[0] = (a3 & 0xC1) == 0;
  v69 = &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>;
  v27 = sub_100006F64(&qword_100CB0560, &qword_100CB0568, &unk_100A734B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v110[0] = WitnessTable;
  v110[1] = v27;
  v28 = v71;
  v29 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v71, v110);
  View.environment<A>(_:_:)();

  (*(v80 + 8))(v26, v28);
  swift_getKeyPath();
  v30 = v103;
  v31 = *(v103 + 24);
  v32 = type metadata accessor for TargetWindowSizeClass();
  v33 = v100;
  v34 = v84;
  (*(*(v32 - 8) + 16))(v84, &v100[v31], v32);
  sub_10001B350(v34, 0, 1, v32);
  v80 = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v109[0] = v29;
  v109[1] = v80;
  v70 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v35 = v79;
  v36 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v79, v109);
  v37 = v78;
  v38 = v101;
  View.environment<A>(_:_:)();

  sub_100018144(v34, &qword_100CE1230, &qword_100A8D0D0);
  (*(v82 + 8))(v38, v35);
  swift_getKeyPath();
  v39 = v33;
  __dst[0] = v33[*(v30 + 32)];
  v40 = sub_100006F64(&unk_100CE1210, &qword_100CDE310, &qword_100A91B20, v69);
  v108[0] = v36;
  v108[1] = v40;
  v41 = v81;
  v84 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v81, v108);
  View.environment<A>(_:_:)();

  (*(KeyPath + 8))(v37, v41);
  KeyPath = swift_getKeyPath();
  v42 = v94;
  v43 = v93;
  v44 = v75;
  (*(v94 + 16))(v93, v73, v75);
  v45 = v96;
  sub_1000F7F28(v39, v96, type metadata accessor for LocationViewGeometry);
  v46 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v47 = *(v98 + 80);
  v48 = (v95 + v47 + v46) & ~v47;
  v101 = (v47 | 7);
  v49 = swift_allocObject();
  v50 = v74;
  *(v49 + 16) = v77;
  *(v49 + 24) = v50;
  (*(v42 + 32))(v49 + v46, v43, v44);
  v51 = v45;
  sub_1000FA6B0(v45, v49 + v48, type metadata accessor for LocationViewGeometry);
  v107[0] = v84;
  v107[1] = v80;
  v52 = v70;
  v53 = v85;
  v54 = swift_getWitnessTable(v70, v85, v107);
  v55 = v102;
  View.transformEnvironment<A>(_:transform:)();

  (*(v88 + 8))(v55, v53);
  v56 = v100;
  sub_1000F7F28(v100, v51, type metadata accessor for LocationViewGeometry);
  v57 = swift_allocObject();
  sub_1000FA6B0(v51, v57 + ((v47 + 16) & ~v47), type metadata accessor for LocationViewGeometry);
  v58 = sub_100006F64(&qword_100CCAF28, &qword_100CCAF30, &unk_100A69770, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
  v106[0] = v54;
  v106[1] = v58;
  v59 = v86;
  v60 = swift_getWitnessTable(v52, v86, v106);
  sub_1000EA958(&qword_100CDE348, type metadata accessor for LocationViewGeometry, asc_100A8CFF8);
  v61 = v87;
  v62 = v104;
  sub_1000A203C(v56, v59, v103, v60, v87);

  (*(v91 + 8))(v62, v59);
  v63 = sub_100006F64(&qword_100CDE330, &qword_100CDE318, &qword_100A8D0C8, &protocol conformance descriptor for _ValueTransactionModifier<A>);
  v105[0] = v60;
  v105[1] = v63;
  v64 = v90;
  v65 = swift_getWitnessTable(v52, v90, v105);
  v66 = v89;
  sub_1000833D8(v61, v64, v65);
  v67 = *(v92 + 8);
  v67(v61, v64);
  sub_1000833D8(v66, v64, v65);
  return (v67)(v66, v64);
}

void sub_1008471C4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a2;
  if (*(a2 + 8) == 1)
  {
    v11 = 0uLL;
    v12 = 0uLL;
    if (v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  static os_log_type_t.fault.getter();
  v13 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000EBD74(v10, 0);
  (*(v7 + 8))(v9, v6);
  v11 = 0uLL;
  v12 = 0uLL;
  if ((v15[15] & 1) == 0)
  {
LABEL_5:
    v14 = (a3 + *(type metadata accessor for LocationViewGeometry(0) + 28));
    v11 = *v14;
    v12 = v14[1];
  }

LABEL_6:
  *a1 = v11;
  a1[1] = v12;
}

uint64_t sub_100847388()
{
  sub_1008485F4(v0 + OBJC_IVAR____TtC7WeatherP33_6CEEE08596B0687FCFF88ED9BB8421E217GridGeometryCache_previousLocationViewGeometry, type metadata accessor for LocationViewGeometry);
  v1 = OBJC_IVAR____TtC7WeatherP33_6CEEE08596B0687FCFF88ED9BB8421E217GridGeometryCache___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100847470(uint64_t a1)
{
  result = type metadata accessor for LocationViewGeometry(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10084753C()
{
  v1 = (v0 + OBJC_IVAR____TtC7WeatherP33_6CEEE08596B0687FCFF88ED9BB8421E217GridGeometryCache_previousLocationViewGeometry);
  sub_1009E86F0(0, 3, __src);
  v2 = type metadata accessor for LocationViewGeometry(0);
  v3 = v2[6];
  v4 = enum case for TargetWindowSizeClass.compact(_:);
  v5 = type metadata accessor for TargetWindowSizeClass();
  (*(*(v5 - 8) + 104))(&v1[v3], v4, v5);
  memcpy(v1, __src, 0x48uLL);
  v1[72] = 0x80;
  v6 = &v1[v2[7]];
  *v6 = 0u;
  v6[1] = 0u;
  v1[v2[8]] = 0;
  v1[v2[9]] = 0;
  ObservationRegistrar.init()();
  return v0;
}

void *sub_100847630@<X0>(double *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = static Color.clear.getter();
  v10 = sub_10022C350(&qword_100CDE460, &unk_100A8D470);
  result = sub_1000FB310(v7, v8, 0, a2 + *(v10 + 36), v3, v4, v5, v6);
  *a2 = v9;
  return result;
}

uint64_t sub_1008476C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserInterfaceSizeClass();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1000FC5D4(a1, &v21 - v12);
  sub_1000FC5D4(a2, &v13[v15]);
  if (sub_100024D10(v13, 1, v4) == 1)
  {
    if (sub_100024D10(&v13[v15], 1, v4) == 1)
    {
      sub_100018144(v13, &qword_100CA6028, &qword_100A40610);
LABEL_9:
      v19 = type metadata accessor for GridGeometryComputerModifier.CacheBustingUpdates(0);
      v16 = *(a1 + *(v19 + 20)) ^ *(a2 + *(v19 + 20)) ^ 1;
      return v16 & 1;
    }

    goto LABEL_6;
  }

  sub_1000FC5D4(v13, v10);
  if (sub_100024D10(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_100018144(v13, &qword_100CA64E8, &unk_100A46060);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1000EA958(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v10, v4);
  sub_100018144(v13, &qword_100CA6028, &qword_100A40610);
  if (v17)
  {
    goto LABEL_9;
  }

LABEL_7:
  v16 = 0;
  return v16 & 1;
}

BOOL sub_1008479BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 2 * *(a1 + 48) + 2;
  v9 = *(a1 + 40) * ((2 * *(a1 + 48)) | 1uLL);
  v10 = *(a1 + 56) + *(a1 + 56);
  v11 = *(a1 + 8);
  if (*(a1 + 32))
  {
    v12 = sub_1000FDB68();
    v13 = 20.0;
    if (*(a1 + 49) - 3 < 2)
    {
      v13 = 0.0;
    }

    v14 = v11 - v10 - v12 - v13;
    v15 = sub_1000FDE84();
    if (*(a1 + 64) >= v14 / dbl_100A8D650[v15])
    {
      v11 = v14 / dbl_100A8D650[v15];
    }

    else
    {
      v11 = *(a1 + 64);
    }
  }

  v16 = v9 + v10 + v11 * v8;
  if (v16 <= 320.0)
  {
    return 1;
  }

  if (v16 > 375.0)
  {
    return 0;
  }

  v18 = *a2;
  if (*(a2 + 8) == 1)
  {
    v19 = *a2;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v5 + 8))(v7, v4);
    v19 = *&v21[1];
  }

  return v19 <= 2.0;
}

BOOL sub_100847C54(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_100847BEC(v7, v8);
}

double sub_100847C9C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_100847CAC(_OWORD *a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v6);
  result = *v6;
  v4 = v6[1];
  v5 = v6[2];
  *a1 = v6[0];
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double sub_100847CF4@<D0>(_OWORD *a1@<X8>)
{
  sub_100847C9C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void sub_100847D50(uint64_t *a2@<X8>)
{
  v3 = static Color.clear.getter();
  GeometryProxy.safeAreaInsets.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  GeometryProxy.size.getter();
  *a2 = v3;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v9;
  a2[4] = v11;
  a2[5] = v12;
  a2[6] = v13;
}

double sub_100847DC0()
{
  v0 = type metadata accessor for LocationViewGeometry(0);
  sub_100007074(v0, qword_100CDE100);
  v1 = sub_10000703C(v0, qword_100CDE100);
  sub_1009E86F0(0, 3, __src);
  v2 = v0[6];
  v3 = enum case for TargetWindowSizeClass.compact(_:);
  v4 = type metadata accessor for TargetWindowSizeClass();
  (*(*(v4 - 8) + 104))(&v1[v2], v3, v4);
  memcpy(v1, __src, 0x48uLL);
  v1[72] = 0x80;
  v5 = &v1[v0[7]];
  result = 0.0;
  *v5 = 0u;
  v5[1] = 0u;
  v1[v0[8]] = 0;
  v1[v0[9]] = 0;
  return result;
}

uint64_t sub_100847EAC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA28D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocationViewGeometry(0);
  v3 = sub_10000703C(v2, qword_100CDE100);
  return sub_1000F7F28(v3, a1, type metadata accessor for LocationViewGeometry);
}

uint64_t sub_100847F30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 9) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 > 0xFE)
      {
        return sub_100024D10((a1 + v7 + 9) & ~v7, v6, v4);
      }

      v16 = *(a1 + 8);
      if (v16 > 1)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1008480B0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 9) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v8 > 0xFE)
          {
            v21 = &a1[v10 + 9] & ~v10;

            sub_10001B350(v21, a2, v8, v6);
          }

          else if (a2 > 0xFE)
          {
            a1[8] = 0;
            *a1 = (a2 - 255);
          }

          else
          {
            a1[8] = -a2;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_100848308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for GridGeometryRoot(0, v5, v6, a4);
  sub_100003810(v7);
  v8 = sub_1000750E0();

  return sub_1008463DC(v8, v9, v5, v6, v10);
}

void sub_100848394(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for GridGeometryRoot(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for LocationViewGeometry(0);
  sub_100003810(v9);
  v11 = v4 + ((v7 + v8 + *(v10 + 80)) & ~*(v10 + 80));

  sub_1008471C4(a1, v4 + v7, v11);
}

uint64_t sub_100848480(uint64_t a1)
{
  v3 = type metadata accessor for LocationViewGeometry(0);
  sub_100003810(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_100847350(a1, v5);
}

unint64_t sub_10084855C(uint64_t a1)
{
  result = sub_1000EAD38();
  *(a1 + 8) = result;
  return result;
}

void *sub_100848584()
{
  v0 = type metadata accessor for GridGeometryComputerModifier(0);
  sub_100003810(v0);
  v1 = sub_1000750E0();

  return sub_100847630(v1, v2);
}

uint64_t sub_1008485F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100848668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewGeometry(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1008486F4(uint64_t a1)
{
  sub_1000817EC(319, &unk_100CDE4D8, &type metadata accessor for UserInterfaceSizeClass, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1008487B8()
{
  result = qword_100CDE508;
  if (!qword_100CDE508)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDE450, &qword_100A8D460);
    v4[0] = sub_100848870();
    v4[1] = sub_100006F64(&qword_100CDE530, &qword_100CDE458, &qword_100A8D468, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDE508);
  }

  return result;
}

unint64_t sub_100848870()
{
  result = qword_100CDE510;
  if (!qword_100CDE510)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDE448, &qword_100A8D458);
    v4[0] = sub_100006F64(&qword_100CDE518, &qword_100CDE440, &qword_100A8D450, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CDE520, &qword_100CDE528, qword_100A8D508, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDE510);
  }

  return result;
}

id sub_100848988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v93 = a4;
  v88 = a3;
  v98 = a1;
  ObjectType = swift_getObjectType();
  type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  v86 = v8;
  v87 = v7;
  __chkstk_darwin(v7);
  sub_100003C38();
  v85 = (v9 - v10);
  __chkstk_darwin(v11);
  v84 = &v78 - v12;
  sub_1000038CC();
  type metadata accessor for LocationModel();
  sub_1000037C4();
  v96 = v14;
  v97 = v13;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v91 = v16 - v15;
  v17 = sub_1000038CC();
  v18 = type metadata accessor for WeatherEditorView(v17);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = (v21 - v20);
  type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_100003C38();
  v90 = v24 - v25;
  __chkstk_darwin(v26);
  v28 = &v78 - v27;
  v29 = type metadata accessor for NewsDataModel(0);
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  sub_1000037D8();
  v89 = v32 - v31;
  v33 = sub_1000038CC();
  v34 = type metadata accessor for PreprocessedWeatherData(v33);
  v35 = sub_100003810(v34);
  __chkstk_darwin(v35);
  sub_1000037D8();
  v38 = v37 - v36;
  v39 = sub_1000038CC();
  v40 = type metadata accessor for WeatherData(v39);
  sub_1000037E8();
  __chkstk_darwin(v41);
  sub_100003C38();
  v44 = v42 - v43;
  __chkstk_darwin(v45);
  v47 = &v78 - v46;
  sub_100028C38();
  v95 = a2;
  sub_10084BF74(a2, v28, v48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
    v50 = *(v49 + 48);
    v51 = *(v49 + 64);
    v81 = v40;
    v83 = v47;
    sub_1000FC9F0(v28, v47, type metadata accessor for WeatherData);
    v82 = v38;
    sub_1000FC9F0(&v28[v50], v38, type metadata accessor for PreprocessedWeatherData);
    v52 = &v28[v51];
    v53 = v89;
    sub_1000FC9F0(v52, v89, type metadata accessor for NewsDataModel);
    v79 = *(v96 + 16);
    v54 = v91;
    v55 = v97;
    v79(v91, v98, v97);
    sub_100028C38();
    v80 = v56;
    v57 = v90;
    sub_10084BF74(v95, v90, v58);
    sub_10084BF74(v47, v44, type metadata accessor for WeatherData);
    sub_10084BF74(v53, v22 + v18[10], type metadata accessor for NewsDataModel);
    sub_10084BF74(v38, v22 + v18[9], type metadata accessor for PreprocessedWeatherData);
    *v22 = swift_getKeyPath();
    sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
    swift_storeEnumTagMultiPayload();
    v79(v22 + v18[5], v54, v55);
    v59 = v18;
    *(v22 + v18[6]) = a5;
    sub_10084BF74(v57, v22 + v18[7], v80);
    v60 = v44;
    sub_10084BF74(v44, v22 + v18[8], type metadata accessor for WeatherData);
    v62 = v86;
    v61 = v87;
    v63 = *(v86 + 16);
    v64 = v84;
    v63(v84, v60 + *(v81 + 24), v87);
    v63(v85, v64, v61);
    v65 = v93;

    State.init(wrappedValue:)();
    (*(v62 + 8))(v64, v61);
    sub_100105F90(v60, type metadata accessor for WeatherData);
    sub_100105F90(v90, type metadata accessor for LocationWeatherDataState);
    v66 = v97;
    v67 = *(v96 + 8);
    v67(v91, v97);
    v68 = (v22 + v59[11]);
    *v68 = v88;
    v68[1] = v65;
    v69 = objc_allocWithZone(sub_10022C350(&qword_100CDE6D8, &unk_100A8D7A0));
    v70 = UIHostingController.init(rootView:)();
    v71 = v92;
    *&v92[OBJC_IVAR____TtC7Weather31WeatherDataEditorViewController_hostingController] = v70;
    v72 = v98;
    v73 = LocationModel.name.getter();
    v74 = &v71[OBJC_IVAR____TtC7Weather31WeatherDataEditorViewController_locationName];
    *v74 = v73;
    v74[1] = v75;
    v99.receiver = v71;
    v99.super_class = ObjectType;
    v76 = objc_msgSendSuper2(&v99, "initWithNibName:bundle:", 0, 0);

    sub_100105F90(v95, type metadata accessor for LocationWeatherDataState);
    v67(v72, v66);
    sub_100105F90(v89, type metadata accessor for NewsDataModel);
    sub_100105F90(v82, type metadata accessor for PreprocessedWeatherData);
    sub_100105F90(v83, type metadata accessor for WeatherData);
  }

  else
  {

    sub_100105F90(v95, type metadata accessor for LocationWeatherDataState);
    (*(v96 + 8))(v98, v97);
    sub_100105F90(v28, type metadata accessor for LocationWeatherDataState);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v76;
}

void sub_100849140()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC7Weather31WeatherDataEditorViewController_hostingController];
  [v0 addChildViewController:v1];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v3 addSubview:v4];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [v7 setFrame:{v11, v13, v15, v17}];
    [v1 didMoveToParentViewController:v0];
    v18 = String._bridgeToObjectiveC()();
    [v0 setTitle:v18];

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t type metadata accessor for WeatherEditorView(uint64_t a1)
{
  result = qword_100CDE5E0;
  if (!qword_100CDE5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10084946C(uint64_t a1)
{
  sub_100081BC8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LocationModel();
    if (v2 <= 0x3F)
    {
      type metadata accessor for LocationWeatherDataState(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for WeatherData(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PreprocessedWeatherData(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for NewsDataModel(319);
            if (v6 <= 0x3F)
            {
              sub_10013DB50();
              if (v7 <= 0x3F)
              {
                sub_100849588(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100849588(uint64_t a1)
{
  if (!qword_100CDE5F0)
  {
    type metadata accessor for WeatherDataModel();
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100CDE5F0);
    }
  }
}

uint64_t sub_1008495FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  sub_10084BCB8(v2, &v16 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100463960(v13, a1);
  }

  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_100849798@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = type metadata accessor for InsetGroupedListStyle();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = sub_10022C350(&qword_100CDE640, &qword_100A8D710);
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = v18 - v13;
  v19 = v1;
  sub_10022C350(&qword_100CDE648, &qword_100A8D718);
  sub_100006F64(&qword_100CDE650, &qword_100CDE648, &qword_100A8D718, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  sub_100005DFC();
  sub_100006F64(v15, &qword_100CDE640, &qword_100A8D710, v16);
  View.listStyle<A>(_:)();
  (*(v4 + 8))(v8, v2);
  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_1008499A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v39 = sub_10022C350(&qword_100CDE660, &qword_100A8D720);
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v32 - v5;
  __chkstk_darwin(v6);
  v43 = &v32 - v7;
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v42 = sub_10022C350(&qword_100CDE668, &qword_100A8D728);
  v35 = *(v42 - 8);
  v11 = v35;
  __chkstk_darwin(v42);
  v36 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v46 = a1;
  v47 = 0xD00000000000003ELL;
  v48 = 0x8000000100AE0FC0;
  v49 = 0;
  v50 = _swiftEmptyArrayStorage;
  sub_10022C350(&qword_100CDE670, &qword_100A8D730);
  sub_100006F64(&qword_100CDE678, &qword_100CDE670, &qword_100A8D730, &protocol conformance descriptor for TupleView<A>);
  v34 = v15;
  Section<>.init(footer:content:)();
  v45 = a1;
  v47 = 0xD000000000000039;
  v48 = 0x8000000100AE1000;
  v49 = 0;
  v50 = _swiftEmptyArrayStorage;
  sub_10022C350(&qword_100CDE680, &qword_100A8D738);
  sub_10084BBB4();
  v33 = v10;
  Section<>.init(footer:content:)();
  v44 = a1;
  v47 = 0xD000000000000037;
  v48 = 0x8000000100AE1040;
  v49 = 0;
  v50 = _swiftEmptyArrayStorage;
  v16 = v43;
  Section<>.init(footer:content:)();
  v17 = *(v11 + 16);
  v18 = v36;
  v19 = v42;
  v17(v36, v15, v42);
  v20 = *(v41 + 16);
  v21 = v37;
  v22 = v39;
  v20(v37, v10, v39);
  v23 = v38;
  v24 = v16;
  v25 = v22;
  v20(v38, v24, v22);
  v26 = v40;
  v17(v40, v18, v19);
  v27 = sub_10022C350(&qword_100CDE690, &unk_100A8D740);
  v20(&v26[*(v27 + 48)], v21, v25);
  v20(&v26[*(v27 + 64)], v23, v25);
  v28 = *(v41 + 8);
  v28(v43, v25);
  v28(v33, v25);
  v29 = *(v35 + 8);
  v30 = v42;
  v29(v34, v42);
  v28(v23, v25);
  v28(v21, v25);
  return (v29)(v18, v30);
}

uint64_t sub_100849ED4@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_10022C350(&qword_100CDE698, &qword_100A8D750);
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_10022C350(&qword_100CDE6A0, &qword_100A8D758);
  v27 = *(v8 - 8);
  v9 = v27;
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  sub_10084A17C(&v25 - v13);
  sub_10084A5E8(v7);
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(sub_10022C350(&qword_100CDE6A8, &qword_100A8D760) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_10084A17C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for WeatherEditorView(0);
  v30 = *(v2 - 8);
  v29 = *(v30 + 64);
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CurrentWeather();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v31 = &v27 - v8;
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for WeatherDataModel();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CurrentWeatherEditorView(0);
  __chkstk_darwin(v16);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10022C350(&qword_100CDE580, &qword_100A8D698);
  v28 = v1;
  State.wrappedValue.getter();
  WeatherDataModel.currentWeather.getter();
  (*(v13 + 8))(v15, v12);
  sub_10084BF74(v1, v4, type metadata accessor for WeatherEditorView);
  v19 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v30 = swift_allocObject();
  sub_1000FC9F0(v4, v30 + v19, type metadata accessor for WeatherEditorView);
  *v18 = swift_getKeyPath();
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  swift_storeEnumTagMultiPayload();
  v20 = v32;
  v21 = *(v32 + 16);
  v21(v18 + *(v16 + 20), v11, v5);
  v22 = v31;
  v21(v31, v11, v5);
  v21(v33, v22, v5);
  State.init(wrappedValue:)();
  v23 = *(v20 + 8);
  v23(v22, v5);
  v23(v11, v5);
  v24 = (v18 + *(v16 + 24));
  v25 = v30;
  *v24 = sub_10084BE40;
  v24[1] = v25;
  v35 = v28;
  sub_10084BF2C(&qword_100CDE6C8, type metadata accessor for CurrentWeatherEditorView, a9_29);
  return NavigationLink.init(destination:label:)();
}

uint64_t sub_10084A5E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for WeatherEditorView(0);
  v4 = v3 - 8;
  v38 = *(v3 - 8);
  __chkstk_darwin(v3);
  v39 = v5;
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  __chkstk_darwin(v9);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v13 = &v36 - v12;
  v14 = type metadata accessor for WeatherDataModel();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DailyForecastEditorView(0);
  __chkstk_darwin(v18);
  v20 = (&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10022C350(&qword_100CDE580, &qword_100A8D698);
  State.wrappedValue.getter();
  WeatherDataModel.dailyForecast.getter();
  (*(v15 + 8))(v17, v14);
  v21 = v36;
  v22 = *(v1 + *(v4 + 32));
  LocationModel.timeZone.getter();
  if (sub_100024D10(v8, 1, v21) == 1)
  {
    static TimeZone.current.getter();
    v23 = sub_100024D10(v8, 1, v21);
    v24 = v37;
    if (v23 != 1)
    {
      sub_100018144(v8, &qword_100CACE08, &unk_100A3C1B0);
    }
  }

  else
  {
    v24 = v37;
    (*(v37 + 32))(v44, v8, v21);
  }

  v25 = v41;
  sub_10084BF74(v1, v41, type metadata accessor for WeatherEditorView);
  v26 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v27 = swift_allocObject();
  sub_1000FC9F0(v25, v27 + v26, type metadata accessor for WeatherEditorView);
  *v20 = swift_getKeyPath();
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  swift_storeEnumTagMultiPayload();
  v28 = v40;
  v29 = v42;
  (*(v40 + 16))(v20 + v18[5], v13, v42);
  v30 = Forecast.forecast.getter();
  v31 = (v20 + v18[9]);
  v45 = v30;
  sub_10022C350(&qword_100CDE6B0, &qword_100A9B400);
  State.init(wrappedValue:)();
  (*(v28 + 8))(v13, v29);
  v32 = v47;
  *v31 = v46;
  v31[1] = v32;
  *(v20 + v18[6]) = v22;
  v33 = (*(v24 + 32))(v20 + v18[7], v44, v21);
  v34 = (v20 + v18[8]);
  *v34 = sub_10084BDB0;
  v34[1] = v27;
  __chkstk_darwin(v33);
  *(&v36 - 2) = v2;
  sub_10084BF2C(&qword_100CDE6B8, type metadata accessor for DailyForecastEditorView, aY_78);
  return NavigationLink.init(destination:label:)();
}

uint64_t sub_10084ABA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherEditorView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  LocalizedStringKey.init(stringLiteral:)();
  sub_10084BF74(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WeatherEditorView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1000FC9F0(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for WeatherEditorView);
  Button<>.init(_:action:)();
  v9 = static Color.red.getter();
  result = sub_10022C350(&qword_100CDE680, &qword_100A8D738);
  *(a2 + *(result + 36)) = v9;
  return result;
}

uint64_t sub_10084AD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherEditorView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  LocalizedStringKey.init(stringLiteral:)();
  sub_10084BF74(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WeatherEditorView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1000FC9F0(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for WeatherEditorView);
  Button<>.init(_:action:)();
  v9 = static Color.green.getter();
  result = sub_10022C350(&qword_100CDE680, &qword_100A8D738);
  *(a2 + *(result + 36)) = v9;
  return result;
}

uint64_t sub_10084AECC()
{
  v0 = type metadata accessor for CurrentWeather();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for WeatherDataModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeatherEditorView(0);
  sub_10022C350(&qword_100CDE580, &qword_100A8D698);
  State.wrappedValue.getter();
  WeatherDataModel.currentWeather.getter();
  (*(v8 + 8))(v10, v7);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  sub_10084BF2C(&qword_100CDE6D0, &type metadata accessor for CurrentWeather, &protocol conformance descriptor for CurrentWeather);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  if (v11)
  {
    return 0;
  }

  else
  {
    return 42;
  }
}

uint64_t sub_10084B128(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataModel();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for CurrentWeather();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  type metadata accessor for WeatherEditorView(0);
  sub_10022C350(&qword_100CDE580, &qword_100A8D698);
  State.wrappedValue.getter();
  WeatherDataModel.currentWeather.setter();
  return State.wrappedValue.setter();
}

uint64_t sub_10084B280()
{
  v0 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for WeatherDataModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeatherEditorView(0);
  sub_10022C350(&qword_100CDE580, &qword_100A8D698);
  State.wrappedValue.getter();
  WeatherDataModel.dailyForecast.getter();
  (*(v8 + 8))(v10, v7);
  type metadata accessor for WeatherData(0);
  WeatherDataModel.dailyForecast.getter();
  sub_100006F64(&qword_100CDE6C0, &qword_100CA7000, &unk_100A3E7F0, &protocol conformance descriptor for Forecast<A>);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  if (v11)
  {
    return 0;
  }

  else
  {
    return 42;
  }
}

uint64_t sub_10084B4E4(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataModel();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v8 - v5, a1, v4);
  type metadata accessor for WeatherEditorView(0);
  sub_10022C350(&qword_100CDE580, &qword_100A8D698);
  State.wrappedValue.getter();
  WeatherDataModel.dailyForecast.setter();
  return State.wrappedValue.setter();
}

void sub_10084B644(Swift::Int a1@<X1>, uint64_t (*a2)(uint64_t, uint64_t)@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  _StringGuts.grow(_:)(a1);
  v11 = a2(v9, v10);
  v13 = v12;

  v14._countAndFlagsBits = a3;
  v14._object = a4;
  String.append(_:)(v14);
  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = 0;
  *(a5 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_10084B6F4(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for WeatherEditorView(0) + 32);
  v7 = type metadata accessor for WeatherData(0);
  (*(v3 + 16))(v5, v6 + *(v7 + 24), v2);
  sub_10022C350(&qword_100CDE580, &qword_100A8D698);
  return State.wrappedValue.setter();
}

uint64_t sub_10084B804(uint64_t a1)
{
  v2 = type metadata accessor for PresentationMode();
  __chkstk_darwin(v2 - 8);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0);
  __chkstk_darwin(v23);
  v22 = &v21 - v4;
  v21 = type metadata accessor for LocationWeatherDataState(0);
  __chkstk_darwin(v21);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WeatherDataModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WeatherData(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WeatherEditorView(0);
  sub_10084BF74(a1 + v15[8], v14, type metadata accessor for WeatherData);
  sub_10022C350(&qword_100CDE580, &qword_100A8D698);
  State.wrappedValue.getter();
  (*(v8 + 40))(&v14[*(v12 + 32)], v10, v7);
  v16 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
  v17 = *(v16 + 48);
  v18 = *(v16 + 64);
  sub_10084BF74(v14, v6, type metadata accessor for WeatherData);
  sub_10084BF74(a1 + v15[9], &v6[v17], type metadata accessor for PreprocessedWeatherData);
  sub_10084BF74(a1 + v15[10], &v6[v18], type metadata accessor for NewsDataModel);
  swift_storeEnumTagMultiPayload();
  (*(a1 + v15[11]))(v6);
  v19 = v22;
  sub_1008495FC(v22);
  Binding.wrappedValue.getter();
  PresentationMode.dismiss()();
  Binding.wrappedValue.setter();
  sub_100018144(v19, &qword_100CA6D28, &qword_100A4CEA0);
  sub_100105F90(v6, type metadata accessor for LocationWeatherDataState);
  return sub_100105F90(v14, type metadata accessor for WeatherData);
}

unint64_t sub_10084BBB4()
{
  result = qword_100CDE688;
  if (!qword_100CDE688)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDE680, &qword_100A8D738);
    v4[0] = sub_100006F64(&qword_100CA5548, &qword_100CA5528, &qword_100A2F940, &protocol conformance descriptor for Button<A>);
    v4[1] = sub_100006F64(&qword_100CAF708, &qword_100CAF710, &qword_100A6E3E0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDE688);
  }

  return result;
}

uint64_t sub_10084BCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10084BD40(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for WeatherEditorView(0);
  sub_100003810(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_10084BE58(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for WeatherEditorView(0);
  sub_100003810(v4);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(a1, v6);
}

uint64_t sub_10084BF2C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10084BF74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

void sub_10084BFD0(uint64_t a2@<X1>, objc_class *a3@<X2>, Class *a4@<X8>)
{
  v572 = a3;
  v504 = a2;
  v565 = a4;
  v4 = type metadata accessor for DetailCondition();
  v5 = sub_100003E5C(v4, v528);
  v503 = v6;
  __chkstk_darwin(v5);
  sub_1000038E4();
  sub_100003918(v7);
  v8 = type metadata accessor for WeatherFormatScaling();
  v9 = sub_100003E5C(v8, &v540);
  v513 = v10;
  __chkstk_darwin(v9);
  sub_1000038E4();
  sub_100003918(v11);
  v12 = type metadata accessor for NSUnitLength.WeatherFormatUsage();
  v13 = sub_100003E5C(v12, &v552);
  v512 = v14;
  __chkstk_darwin(v13);
  sub_1000038E4();
  sub_100003918(v15);
  v16 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  v17 = sub_100003E5C(v16, &v546);
  v519 = v18;
  __chkstk_darwin(v17);
  sub_1000038E4();
  sub_100003990(v19);
  v20 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_100003E5C(v20, &v543);
  v516 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_100003918(v23);
  v24 = type metadata accessor for UVIndex();
  v25 = sub_100003E5C(v24, &v551);
  v523 = v26;
  __chkstk_darwin(v25);
  sub_1000038E4();
  sub_100003918(v27);
  v28 = type metadata accessor for WeatherCondition();
  v29 = sub_100003E5C(v28, &v564);
  v532 = v30;
  __chkstk_darwin(v29);
  sub_1000038E4();
  sub_100003918(v31);
  v32 = type metadata accessor for WeatherConditionIcon();
  v33 = sub_100003E5C(v32, &v565);
  v533 = v34;
  __chkstk_darwin(v33);
  sub_1000038E4();
  sub_100003918(v35);
  object = type metadata accessor for Locale.Language();
  sub_1000037C4();
  v529 = v36;
  __chkstk_darwin(v37);
  sub_1000038E4();
  sub_100003918(v38);
  v39 = type metadata accessor for Locale();
  v40 = sub_100003E5C(v39, &v584);
  v527[3] = v41;
  __chkstk_darwin(v40);
  sub_1000038E4();
  sub_100003990(v42);
  v43 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v44 = sub_100003810(v43);
  __chkstk_darwin(v44);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_10000E70C();
  sub_100003918(v46);
  v47 = type metadata accessor for Date();
  v48 = sub_100003E5C(v47, &countAndFlagsBits);
  v540 = v49;
  __chkstk_darwin(v48);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_10000E70C();
  sub_100003918(v51);
  v52 = type metadata accessor for Precipitation();
  v53 = sub_100003E5C(v52, &v557);
  v527[0] = v54;
  __chkstk_darwin(v53);
  sub_1000038E4();
  sub_100003918(v55);
  v56 = type metadata accessor for ApparentPrecipitationIntensity();
  v57 = sub_100003E5C(v56, &v567);
  v536 = v58;
  __chkstk_darwin(v57);
  sub_1000038E4();
  sub_100003918(v59);
  v60 = type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle();
  v61 = sub_100003E5C(v60, &v577);
  v546 = v62;
  __chkstk_darwin(v61);
  sub_1000038E4();
  sub_100003990(v63);
  v64 = sub_10022C350(&qword_100CAC3D0, &unk_100AA0D60);
  v65 = sub_100003E5C(v64, &v579);
  v544 = v66;
  __chkstk_darwin(v65);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_10000E70C();
  v567 = v68;
  v69 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v70 = sub_100003E5C(v69, v583);
  v552 = v71;
  __chkstk_darwin(v70);
  sub_1000038E4();
  sub_100003990(v72);
  v73 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v74 = sub_100003E5C(v73, &v585);
  v556 = v75;
  __chkstk_darwin(v74);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003908();
  __chkstk_darwin(v77);
  sub_10000E70C();
  sub_100003990(v78);
  v79 = sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_100003E5C(v79, v527);
  v509 = v80;
  sub_100003828();
  __chkstk_darwin(v81);
  sub_1000039BC();
  sub_100003918(v82);
  v83 = type metadata accessor for WeatherFormatPlaceholder();
  v84 = sub_100003E5C(v83, &v586);
  v569 = v85;
  __chkstk_darwin(v84);
  sub_1000038E4();
  sub_100003990(v86);
  v87 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  sub_100003810(v87);
  sub_100003828();
  __chkstk_darwin(v88);
  sub_1000039BC();
  sub_100003918(v89);
  v90 = type metadata accessor for NSUnitSpeed.WeatherFormatUsage();
  v91 = sub_100003E5C(v90, v531);
  v506 = v92;
  __chkstk_darwin(v91);
  sub_1000038E4();
  sub_100003918(v93);
  v94 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle();
  v95 = sub_100003E5C(v94, &v534);
  v507 = v96;
  __chkstk_darwin(v95);
  sub_1000038E4();
  sub_100003918(v97);
  v98 = type metadata accessor for Wind();
  v99 = sub_100003E5C(v98, &v547);
  v522 = v100;
  __chkstk_darwin(v99);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v101);
  v103 = v500 - v102;
  v104 = sub_10022C350(&qword_100CAEC90, &unk_100A5CFE0);
  sub_100003810(v104);
  sub_100003828();
  __chkstk_darwin(v105);
  sub_1000039BC();
  sub_100003990(v106);
  v107 = sub_10022C350(&qword_100CDE6E0, &unk_100A8D7D0);
  v108 = sub_100003810(v107);
  __chkstk_darwin(v108);
  v110 = v500 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v111);
  v113 = v500 - v112;
  __chkstk_darwin(v114);
  v116 = v500 - v115;
  v117 = type metadata accessor for TimeZone();
  v118 = sub_100003E5C(v117, &v587);
  v561 = v119;
  __chkstk_darwin(v118);
  sub_1000037D8();
  v122 = v121 - v120;
  v123 = type metadata accessor for ConditionUnits();
  v124 = sub_100003E5C(v123, &v588);
  v563 = v125;
  __chkstk_darwin(v124);
  sub_1000037D8();
  v128 = (v127 - v126);
  type metadata accessor for DetailChartCondition();
  sub_1000037C4();
  v574 = v130;
  v575 = v129;
  __chkstk_darwin(v129);
  v132 = v500 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v133);
  v135 = v500 - v134;
  v136 = type metadata accessor for HourWeather();
  v137 = sub_100003E5C(v136, &v589);
  v564 = v138;
  __chkstk_darwin(v137);
  sub_1000038E4();
  v576 = v139;
  WeatherValueCalculationContext.hourWeather.getter();
  v573 = v135;
  WeatherValueCalculationContext.chartCondition.getter();
  v566 = v128;
  v140 = v122;
  WeatherValueCalculationContext.units.getter();
  WeatherValueCalculationContext.timeZone.getter();
  v141 = swift_allocObject();
  *(v141 + 16) = 0;
  *(v141 + 24) = 0;
  v568 = v141;
  sub_10084F1F4(v572, v116);
  isa = type metadata accessor for DetailChartDataPoint();
  sub_10000394C(v116);
  if (v143)
  {
    sub_10003FDF4(v116, &qword_100CDE6E0, &unk_100A8D7D0);
    LODWORD(countAndFlagsBits) = 1;
    v147 = 0.0;
  }

  else
  {
    v144 = DetailChartDataPoint.value.getter();
    LODWORD(countAndFlagsBits) = v145;
    sub_100022F14();
    (*(v146 + 8))(v116, isa);
    v147 = *&v144;
  }

  v148 = v574;
  v149 = v575;
  (*(v574 + 16))(v132, v573, v575);
  v150 = (*(v148 + 88))(v132, v149);
  v151 = v567;
  if (v150 == enum case for DetailChartCondition.humidity(_:))
  {
    sub_100030660();
    if (countAndFlagsBits)
    {
      HourWeather.humidity.getter();
    }

    v152 = [objc_opt_self() mainBundle];
    v590._object = 0x8000000100AE1210;
    sub_100003CD0();
    v156 = NSLocalizedString(_:tableName:bundle:value:comment:)(v153, v154, v152, v155, v590);
    object = v156._object;
    countAndFlagsBits = v156._countAndFlagsBits;

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v157 = swift_allocObject();
    *(v157 + 16) = xmmword_100A2C3F0;
    v103 = v550;
    HourWeather.dewPoint.getter();
    v158 = v551;
    static WeatherFormatStyle<>.weather.getter();
    v159 = v569;
    v160 = sub_10003BFA0();
    v162 = *(v161 - 256);
    v163(v160);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_100009114();
    sub_10084FC0C(v164, v165, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
    v166 = v557;
    v167 = v553;
    Measurement.formatted<A>(_:placeholder:unitManager:)();
    v567 = v168;

    (*(v159 + 8))(v140, v162);
    sub_10000E73C();
    v169(v158, v167);
    sub_10000E73C();
    v170(v103, v166);
    *(v157 + 56) = &type metadata for String;
    v171 = sub_100035744();
    v172 = sub_100024390(v171);
    v567 = v173;

    v174 = sub_10000C70C(0, &qword_100CA72F8, NSNumberFormatter_ptr);
    v175 = static NSNumberFormatter.percent.getter();
    v176.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
    v177 = [v175 stringFromNumber:v176.super.super.isa];

    if (!v177)
    {
      v103 = 0;
      object = 0;
      countAndFlagsBits = 0;
      v184 = v555;
      goto LABEL_20;
    }

    object = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v179 = v178;

    countAndFlagsBits = v179;

    v180 = static NSNumberFormatter.percent.getter();
    v181 = sub_1008FBDF4(v180);
    if (v182)
    {
      v176.super.super.isa = countAndFlagsBits;
      v183 = String.hasSuffix(_:)(*&v181);

      v184 = v555;
      if (!v183)
      {
        v103 = 0;
        v177 = 0;
        goto LABEL_20;
      }

      v581 = object;
      v582 = countAndFlagsBits;
      v185 = static NSNumberFormatter.percent.getter();
      v186 = sub_1008FBDF4(v185);
      if (v187)
      {
        v579 = v186;
        v580 = v187;
        v577 = 0;
        v578 = 0xE000000000000000;
        sub_10002D5A4();
        sub_100003CD0();
        object = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v176.super.super.isa = v188;

        v177 = v174;
        v189 = static NSNumberFormatter.percent.getter();
        sub_1008FBDF4(v189);
        sub_100031898();
        countAndFlagsBits = v176.super.super.isa;
LABEL_20:
        sub_10005217C();
        isa = v576;
        v199 = sub_10084F264(v197, v198, v572, v576, v184);
        v201 = v200;
        v202 = sub_100004C6C();
        v203(v202);
        v204 = sub_1000068D0();
        v205(v204);
        v206 = sub_100023370();
        v207(v206);
        sub_10000CF44();
        sub_100024B04();
        v208();

        sub_10000EE4C();
LABEL_36:
        v240 = v567;
        goto LABEL_37;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_84;
  }

  if (v150 == enum case for DetailChartCondition.pressure(_:))
  {
    if (countAndFlagsBits)
    {
      v190 = v576;
      HourWeather.pressure.getter();
    }

    else
    {
      ConditionUnits.pressure.getter();
      v209 = sub_10000C70C(0, &qword_100CAC448, NSUnitPressure_ptr);
      sub_1000203A0(v210, v209, v209);
      v190 = v576;
    }

    sub_10005217C();
    v211 = v554;
    v213 = sub_10084F264(v568, v212, v572, v190, v122);
    sub_1000300F0(v213, v214);
    static Set<>.value.getter();
    v215 = v548;
    sub_100003934();
    sub_10001B350(v216, v217, v218, v211);
    sub_100025434();
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_10003FDF4(v215, &qword_100CAA9F0, qword_100A44F50);
    LODWORD(v557) = enum case for WeatherFormatPlaceholder.none(_:);
    v219 = v569;
    v556 = *(v569 + 104);
    v220 = v558;
    v221 = v559;
    (v556)(v558);
    v553 = type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_100030660();
    v552 = sub_10084FC0C(&qword_100CAC470, &type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitPressure.BaseWeatherFormatStyle);
    object = Measurement.formatted<A>(_:placeholder:unitManager:)();
    countAndFlagsBits = v222;

    v223 = *(v219 + 8);
    v569 = v219 + 8;
    v551 = v223;
    v223(v220, v221);
    v550 = *(v546 + 8);
    v224 = sub_10001148C();
    v225(v224);
    v226 = v543;
    HourWeather.pressure.getter();
    static Set<>.unit.getter();
    sub_10003C95C(v215);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_10003FDF4(v215, &qword_100CAA9F0, qword_100A44F50);
    (v556)(v220, v557, v221);
    static UnitManager.standard.getter();
    v176.super.super.isa = v549;
    v227 = v226;
    v228 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v230 = v229;

    v103 = v228;
    v551(v220, v221);
    v231 = sub_10001148C();
    (v550)(v231);
    isa = (v544 + 8);
    v232 = *(v544 + 8);
    v233 = v227;
    v177 = v230;
    v201 = v560;
    v199 = v572;
    v232(v233, v176.super.super.isa);
    v232(v567, v176.super.super.isa);
    sub_100010260();
    sub_100020C04();
    v234();
    v235 = sub_1000068D0();
    v236(v235);
    v237 = sub_100023370();
    v238(v237);
    sub_10000CF44();
    sub_100024B04();
    v239();
LABEL_23:

    sub_10000EE4C();
LABEL_24:
    v172 = 0;
    v240 = 0;
LABEL_37:
    v299 = v565;
    *v565 = v199;
    v299[1] = v201;
    v300 = countAndFlagsBits;
    v299[2] = object;
    v299[3] = v300;
    v299[4] = isa;
    v299[5] = v176.super.super.isa;
    *(v299 + 3) = 0u;
    *(v299 + 4) = 0u;
    v299[10] = v103;
    v299[11] = v177;
    v299[12] = 0;
    v299[13] = 0;
    v299[14] = v172;
    v299[15] = v240;
    v299[16] = 0;
    v299[17] = 0;
    return;
  }

  v191 = v576;
  if (v150 == enum case for DetailChartCondition.precipitationTotal(_:))
  {
    sub_1000161C0(v560, *(v560 + 3));
    dispatch thunk of PrecipitationCalculatorType.apparentPrecipitationIntensityForDisplay(from:)();
    object = ApparentPrecipitationIntensity.standaloneDescription.getter();
    countAndFlagsBits = v192;
    ApparentPrecipitationIntensity.value.getter();
    if (v193 <= 0.0)
    {
      v241 = [objc_opt_self() mainBundle];
      v591._object = 0x8000000100AE1190;
      sub_100003CD0();
      v245 = NSLocalizedString(_:tableName:bundle:value:comment:)(v242, v243, v241, v244, v591);
      v172 = v245._countAndFlagsBits;
      v567 = v245._object;
    }

    else
    {
      v194 = v526;
      HourWeather.precipitation.getter();
      v172 = Precipitation.standaloneDescription.getter();
      v567 = v195;
      sub_10000E73C();
      v196(v194, v527[1]);
    }

    v246 = v541;
    v247 = v540;
    sub_10084F1F4(v572, v113);
    sub_10000394C(v113);
    if (v143)
    {
      sub_10003FDF4(v113, &qword_100CDE6E0, &unk_100A8D7D0);
      isa = v539;
      sub_100003934();
      sub_10001B350(v248, v249, v250, v246);
      sub_100071E74();
      HourWeather.date.getter();
      if (sub_100024D10(isa, 1, v246) != 1)
      {
        sub_10003FDF4(isa, &unk_100CB2CF0, &unk_100A2D7F0);
      }
    }

    else
    {
      v285 = v539;
      DetailChartDataPoint.date.getter();
      sub_100022F14();
      (*(v286 + 8))(v113, isa);
      sub_10001B350(v285, 0, 1, v246);
      v113 = v538;
      (*(v247 + 32))(v538, v285, v246);
    }

    v199 = sub_10084F624(v113, v140);
    v288 = v287;
    v289 = *(v247 + 8);
    v176.super.super.isa = (v247 + 8);
    v290 = v246;
    v201 = v288;
    v289(v113, v290);
    sub_10000E73C();
    v291(v555, v537);
    v292 = sub_100004C6C();
    v293(v292);
    v294 = sub_1000068D0();
    v295(v294);
    v296 = sub_100023370();
    v297(v296);
    sub_10000CF44();
    sub_100024B04();
    v298();

    sub_10000EE4C();
    v103 = 0;
    v177 = 0;
    goto LABEL_36;
  }

  if (v150 == enum case for DetailChartCondition.temperature(_:))
  {
    if (countAndFlagsBits)
    {
      sub_100020250();
      HourWeather.temperature.getter();
    }

    else
    {
      ConditionUnits.temperature.getter();
      sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
      sub_100020250();
      sub_1000203A0(v303, v301, v302);
    }

    v304 = v554;
    v176.super.super.isa = v542;
    (*(v556 + 32))(v542, isa, v557);
    v305 = v527[2];
    static Locale.current.getter();
    sub_100020250();
    Locale.language.getter();
    sub_10000E73C();
    v306(v305, v304);
    v307 = Locale.Language.prefersFullTemperatureScale.getter();
    sub_10000E73C();
    v308(isa, object);
    if (v307)
    {
      static Set<>.value.getter();
      v309 = v548;
      sub_100003934();
      sub_10001B350(v310, v311, v312, v304);
      sub_100025434();
      static WeatherFormatStyle<>.weather(_:locale:)();

      sub_10003FDF4(v309, &qword_100CAA9F0, qword_100A44F50);
      LODWORD(v567) = enum case for WeatherFormatPlaceholder.none(_:);
      v313 = v569;
      v550 = *(v569 + 104);
      v314 = v558;
      v315 = v559;
      (v550)(v558);
      v549 = type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_100009114();
      sub_10084FC0C(v316, v317, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
      sub_100030660();
      v547 = v318;
      object = Measurement.formatted<A>(_:placeholder:unitManager:)();
      countAndFlagsBits = v319;

      v320 = *(v313 + 8);
      v569 = v313 + 8;
      v546 = v320;
      v321 = v315;
      v320(v314, v315);
      v322 = (v552 + 8);
      v552 = *(v552 + 8);
      v323 = sub_10001148C();
      v324(v323);
      static Set<>.unit.getter();
      sub_10003C95C(v309);
      static WeatherFormatStyle<>.weather(_:locale:)();

      sub_10003FDF4(v309, &qword_100CAA9F0, qword_100A44F50);
      (v550)(v314, v567, v315);
      static UnitManager.standard.getter();
      v325 = v555;
      isa = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v176.super.super.isa = v326;

      (v546)(v314, v321);
      v140 = v325;
      v327 = sub_10001148C();
      (v552)(v327);
    }

    else
    {
      v328 = v551;
      static WeatherFormatStyle<>.weather.getter();
      v329 = v569;
      isa = v176.super.super.isa;
      v330 = sub_100016534();
      v332 = *(v331 - 256);
      v333(v330);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_100009114();
      sub_10084FC0C(v334, v335, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
      sub_10003BC0C();
      v336 = v553;
      object = Measurement.formatted<A>(_:placeholder:unitManager:)();
      countAndFlagsBits = v337;

      v338 = *(v329 + 8);
      v322 = (v329 + 8);
      v338(v176.super.super.isa, v332);
      sub_10000E73C();
      v339(v328, v336);
      sub_10000EE4C();
    }

    sub_10005217C();
    v199 = sub_10084F264(v568, v340, v572, v576, v140);
    v342 = v341;
    v103 = v530;
    HourWeather.condition.getter();
    v343 = HourWeather.isDaylight.getter();
    sub_1000187C4(v343);
    WeatherCondition.conditionIcon(isDaylight:isFilled:forLightBackground:)();
    sub_10000E73C();
    v344(v103, v534);
    v177 = v322;
    WeatherConditionIcon.name.getter();
    sub_100031898();
    sub_10000E73C();
    v345 = v322;
    v201 = v342;
    v346(v345, v535);
    sub_10000E73C();
    v347(v542, v557);
    v348 = sub_100004C6C();
    v349(v348);
    v350 = sub_1000068D0();
    v351(v350);
    v352 = sub_100023370();
    v353(v352);
    sub_10000CF44();
    sub_100024B04();
    v354();

    goto LABEL_24;
  }

  if (v150 == enum case for DetailChartCondition.temperatureFeelsLike(_:))
  {
    v251 = [objc_opt_self() mainBundle];
    v592._object = 0x8000000100AE1100;
    sub_100003CD0();
    v252._object = 0xEA00000000004025;
    v255 = NSLocalizedString(_:tableName:bundle:value:comment:)(v253, v254, v251, v252, v592);
    object = v255._object;
    countAndFlagsBits = v255._countAndFlagsBits;

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v256 = swift_allocObject();
    *(v256 + 16) = xmmword_100A2C3F0;
    v257 = v550;
    HourWeather.temperature.getter();
    sub_100011868();
    static WeatherFormatStyle<>.weather.getter();
    LODWORD(v554) = enum case for WeatherFormatPlaceholder.none(_:);
    v258 = v569;
    v259 = *(v569 + 104);
    v548 = v569 + 104;
    v549 = v259;
    v260 = sub_1000211B0();
    v262 = *(v261 - 256);
    v263(v260);
    v547 = type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_100009114();
    v546 = sub_10084FC0C(v264, v265, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
    v266 = v553;
    Measurement.formatted<A>(_:placeholder:unitManager:)();
    v567 = v267;

    v268 = *(v258 + 8);
    v569 = v258 + 8;
    v545 = v268;
    v268(v103, v262);
    v552 = *(v552 + 8);
    (v552)(0x8000000100AE1100, v266);
    sub_100030660();
    v544 = *(v556 + 8);
    isa = v557;
    (v544)(v257, v557);
    *(v256 + 56) = &type metadata for String;
    v269 = sub_100035744();
    v556 = sub_100024390(v269);
    v567 = v270;

    HourWeather.apparentTemperature.getter();
    static WeatherFormatStyle<>.weather.getter();
    v271 = v559;
    (v549)(v103, v554, v559);
    static UnitManager.standard.getter();
    object = Measurement.formatted<A>(_:placeholder:unitManager:)();
    countAndFlagsBits = v272;

    v545(v103, v271);
    (v552)(0x8000000100AE1100, v266);
    (v544)(v257, isa);
    sub_10005217C();
    v199 = sub_10084F264(v273, v274, v572, v576, v555);
    v176.super.super.isa = v275;
    sub_100020250();
    HourWeather.condition.getter();
    v276 = HourWeather.isDaylight.getter();
    sub_1000187C4(v276);
    WeatherCondition.conditionIcon(isDaylight:isFilled:forLightBackground:)();
    sub_10000E73C();
    v277(isa, v534);
    v177 = 0x8000000100AE1100;
    WeatherConditionIcon.name.getter();
    sub_100031898();
    sub_10000E73C();
    v201 = v176.super.super.isa;
    v278(0x8000000100AE1100, v535);
    sub_100010260();
    sub_100020C04();
    v279();
    v280 = sub_1000068D0();
    v281(v280);
    v282 = sub_100023370();
    v283(v282);
    sub_10000CF44();
    sub_100024B04();
    v284();

    v172 = v556;
    sub_10000EE4C();
    goto LABEL_37;
  }

  if (v150 == enum case for DetailChartCondition.uvIndex(_:))
  {
    if (countAndFlagsBits)
    {
      sub_1000372F8();
      HourWeather.uvIndex.getter();
    }

    else
    {
      sub_1006278DC(v147);
    }

    isa = v566;
    v355 = v560;
    sub_10000C70C(0, &qword_100CA72F8, NSNumberFormatter_ptr);
    v356 = static NSNumberFormatter.digits.getter();
    v357 = [objc_allocWithZone(NSNumber) initWithInteger:UVIndex.value.getter()];
    v358 = [v356 stringFromNumber:v357];

    if (v358)
    {
      object = static String._unconditionallyBridgeFromObjectiveC(_:)();
      countAndFlagsBits = v359;
    }

    else
    {
      v581 = UVIndex.value.getter();
      object = dispatch thunk of CustomStringConvertible.description.getter();
      countAndFlagsBits = v369;
    }

    v370 = sub_10084F264(v568, v355, v572, v191, v140);
    v176.super.super.isa = v191;
    v199 = v370;
    v201 = v371;
    UVIndex.category.getter();
    v103 = UVIndex.ExposureCategory.localizedString.getter();
    v177 = v372;
    sub_10000E73C();
    v373();
    v374 = sub_100004C6C();
    v375(v374);
    sub_10000E73C();
    v376(isa, v562);
    v377 = sub_100023370();
    v378(v377);
    sub_10000CF44();
    sub_100024B04();
    v379();
    goto LABEL_23;
  }

  if (v150 == enum case for DetailChartCondition.visibility(_:))
  {
    if (countAndFlagsBits)
    {
      sub_100011868();
      HourWeather.visibility.getter();
    }

    else
    {
      ConditionUnits.visibility.getter();
      sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
      sub_100011868();
      sub_1000203A0(v382, v380, v381);
    }

    sub_10005217C();
    v384 = sub_10084F264(v568, v383, v572, v191, v140);
    sub_1000300F0(v384, v385);
    v386 = v110;
    object = Measurement<>.formattedAndClampedVisibility.getter();
    countAndFlagsBits = v387;
    static Set<>.unit.getter();
    sub_100071E74();
    v103 = v510;
    (*(v388 + 104))(v510);
    v389 = sub_100013D74();
    sub_10001B350(v389, v390, v391, v554);
    v392 = v513;
    v393 = v511;
    v394 = v514;
    (*(v513 + 104))(v511, enum case for WeatherFormatScaling.automatic(_:), v514);
    v395 = v518;
    static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

    (*(v392 + 8))(v393, v394);
    sub_10003FDF4(v386, &qword_100CAA9F0, qword_100A44F50);
    (*(v113 + 1))(v103, v524);
    v396 = v569;
    v555 = v140;
    v397 = sub_10003BFA0();
    v399 = *(v398 - 256);
    v400(v397);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_10084FC0C(&qword_100CAB948, &type metadata accessor for NSUnitLength.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitLength.BaseWeatherFormatStyle);
    isa = v517;
    v401 = v520;
    v402 = v525;
    v177 = v525;
    Measurement.formatted<A>(_:placeholder:unitManager:)();
    sub_100031898();

    v403 = *(v396 + 8);
    v176.super.super.isa = (v396 + 8);
    v404 = v399;
    v199 = v572;
    v403(v140, v404);
    sub_10000E73C();
    v405(v395, v401);
    sub_10000E73C();
    v406(v402, isa);
    sub_100010260();
    sub_100020C04();
    v407();
    v408 = sub_1000068D0();
    v409(v408);
    v410 = sub_100023370();
    v411(v410);
    sub_10000CF44();
    sub_100024B04();
    v412();
    v201 = v560;
    goto LABEL_23;
  }

  v360 = v566;
  if (v150 == enum case for DetailChartCondition.wind(_:))
  {
    sub_100030660();
    sub_1000372F8();
    HourWeather.wind.getter();
    v361 = v500[0];
    Wind.gust.getter();
    v362 = v522 + 8;
    v363 = *(v522 + 8);
    v364 = v521;
    v363(v103, v521);
    v365 = v501;
    v366 = sub_100024D10(v361, 1, v501);
    v522 = v362;
    v557 = v363;
    if (v366 == 1)
    {
      v367 = v365;
      sub_10003FDF4(v361, &qword_100CAEC90, &unk_100A5CFE0);
      v556 = 0;
      v567 = 0;
      v368 = v554;
    }

    else
    {
      v417 = sub_100017EBC();
      v418(v417);
      v419 = sub_100013D74();
      sub_10001B350(v419, v420, v421, v554);
      static Set<>.full.getter();
      sub_100071E74();
      static WeatherFormatStyle<>.weather(_:usage:locale:)();

      sub_10003FDF4(v362, &qword_100CAA9F0, qword_100A44F50);
      (*(isa + 1))(v151, v363);
      v422 = v569;
      v423 = sub_1000211B0();
      v425 = *(v424 - 256);
      v426(v423);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_100069B44();
      sub_10084FC0C(v427, v428, &protocol conformance descriptor for NSUnitSpeed.BaseWeatherFormatStyle);
      v429 = v365;
      v430 = v508;
      object = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v432 = v431;

      (*(v422 + 8))(&enum case for WeatherFormatPlaceholder.none(_:), v425);
      (*(v507 + 8))(v113, v430);
      v367 = v429;
      (*(v509 + 8))(v361, v429);
      v433 = [objc_opt_self() mainBundle];
      v593._object = 0x8000000100AE1260;
      sub_100003CD0();
      v434._object = 0xE900000000000040;
      v593._countAndFlagsBits = 0xD000000000000022;
      v437 = NSLocalizedString(_:tableName:bundle:value:comment:)(v435, v436, v433, v434, v593);
      isa = v437._countAndFlagsBits;
      v151 = v437._object;

      sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
      v438 = swift_allocObject();
      *(v438 + 16) = xmmword_100A2C3F0;
      *(v438 + 56) = &type metadata for String;
      *(v438 + 64) = sub_100035744();
      *(v438 + 32) = object;
      *(v438 + 40) = v432;
      v364 = v521;
      v556 = static String.localizedStringWithFormat(_:_:)();
      v567 = v439;

      v363 = v557;
      v368 = v554;
    }

    v440 = v500[3];
    v103 = v500[2];
    if (countAndFlagsBits)
    {
      sub_1000372F8();
      HourWeather.wind.getter();
      v441 = v103;
      Wind.speed.getter();
      v363(v103, v364);
    }

    else
    {
      v441 = v566;
      ConditionUnits.windSpeed.getter();
      v442 = sub_10000C70C(0, &qword_100CAC428, NSUnitSpeed_ptr);
      sub_1000203A0(v443, v442, v442);
    }

    static Set<>.value.getter();
    v444 = sub_100017EBC();
    v445(v444);
    v446 = sub_100013D74();
    sub_10001B350(v446, v447, v448, v368);
    sub_100025434();
    static WeatherFormatStyle<>.weather(_:usage:locale:)();

    sub_10003FDF4(v441, &qword_100CAA9F0, qword_100A44F50);
    (*(isa + 1))(v151, v363);
    v449 = v569;
    v450 = sub_100016534();
    v452 = *(v451 - 256);
    v453(v450);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_100069B44();
    sub_10084FC0C(v454, v455, &protocol conformance descriptor for NSUnitSpeed.BaseWeatherFormatStyle);
    sub_10003BC0C();
    v456 = v508;
    object = Measurement.formatted<A>(_:placeholder:unitManager:)();
    countAndFlagsBits = v457;

    (*(v449 + 8))(v151, v452);
    sub_10000E73C();
    v458(v191, v456);
    sub_10000E73C();
    v459(v440, v367);
    sub_10005217C();
    isa = v555;
    v176.super.super.isa = sub_10084F264(v460, v461, v572, v576, v555);
    v463 = v462;
    sub_1000372F8();
    HourWeather.wind.getter();
    v177 = v103;
    Wind.compassDirection.getter();
    v557(v103, v521);
    Wind.CompassDirection.abbreviation.getter();
    sub_100031898();
    sub_100010260();
    sub_100020C04();
    v464();
    v465 = sub_1000068D0();
    v466(v465);
    v467 = sub_100023370();
    v468(v467);
    sub_10000CF44();
    v199 = v176.super.super.isa;
    sub_100024B04();
    v469();
    v201 = v463;

    sub_10000EE4C();
    v172 = v556;
    goto LABEL_36;
  }

  if (v150 == enum case for DetailChartCondition.chanceOfRain(_:))
  {
    v103 = v515;
    if (countAndFlagsBits)
    {
      HourWeather.chanceOfRain.getter();
    }

    sub_10084F1F4(v572, v110);
    sub_10000394C(v110);
    if (v143)
    {
      sub_10003FDF4(v110, &qword_100CDE6E0, &unk_100A8D7D0);
      v110 = v500[1];
      sub_100003934();
      v413 = v541;
      sub_10001B350(v414, v415, v416, v541);
      sub_1000372F8();
      HourWeather.date.getter();
      if (sub_100024D10(v110, 1, v413) != 1)
      {
        sub_10003FDF4(v110, &unk_100CB2CF0, &unk_100A2D7F0);
      }
    }

    else
    {
      sub_100071E74();
      DetailChartDataPoint.date.getter();
      sub_100022F14();
      (*(v470 + 8))(v110, isa);
      v471 = v541;
      sub_10001B350(v113, 0, 1, v541);
      (*(v540 + 32))(v103, v113, v471);
    }

    sub_100011868();
    v473 = v502;
    v474 = v505;
    (*(v472 + 104))(v502);
    v475 = static DetailCondition.== infix(_:_:)();
    (*(v110 + 1))(v473, v474);
    if (v475)
    {
      v476 = sub_10084F624(v103, v140);
    }

    else
    {
      v476 = sub_10084F554();
    }

    sub_1000300F0(v476, v477);
    v478 = sub_10000C70C(0, &qword_100CA72F8, NSNumberFormatter_ptr);
    v479 = static NSNumberFormatter.percent.getter();
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    v177 = [v479 stringFromNumber:isa];

    v480 = v540;
    if (v177)
    {
      v481 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v483 = v482;

      countAndFlagsBits = v483;

      v484 = static NSNumberFormatter.percent.getter();
      v485 = sub_1008FBDF4(v484);
      if (!v486)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      isa = countAndFlagsBits;
      v487 = String.hasSuffix(_:)(*&v485);

      if (v487)
      {
        v581 = v481;
        v582 = countAndFlagsBits;
        v488 = static NSNumberFormatter.percent.getter();
        v489 = sub_1008FBDF4(v488);
        if (!v490)
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v579 = v489;
        v580 = v490;
        v577 = 0;
        v578 = 0xE000000000000000;
        sub_10002D5A4();
        sub_100003CD0();
        v481 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        isa = v491;

        v177 = v478;
        v492 = static NSNumberFormatter.percent.getter();
        sub_1008FBDF4(v492);
        sub_100031898();
        countAndFlagsBits = isa;
      }

      else
      {
        v103 = 0;
        v177 = 0;
      }
    }

    else
    {
      v103 = 0;
      v481 = 0;
      countAndFlagsBits = 0;
    }

    object = v481;
    v493 = *(v480 + 8);
    v176.super.super.isa = (v480 + 8);
    v493(v515, v541);
    v494 = sub_100004C6C();
    v495(v494);
    sub_10000E73C();
    v496(v360, v562);
    v497 = sub_100023370();
    v498(v497);
    sub_10000CF44();
    sub_100024B04();
    v499();

    sub_10000EE4C();
    v172 = 0;
    v240 = 0;
    v199 = v572;
    v201 = v560;
    goto LABEL_37;
  }

LABEL_86:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_10084F1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CDE6E0, &unk_100A8D7D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10084F264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10022C350(&qword_100CDE6E0, &unk_100A8D7D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {
    v17 = *(a1 + 16);
  }

  else
  {
    sub_10084F1F4(a3, v9);
    v18 = type metadata accessor for DetailChartDataPoint();
    if (sub_100024D10(v9, 1, v18) == 1)
    {
      sub_10003FDF4(v9, &qword_100CDE6E0, &unk_100A8D7D0);
      sub_10001B350(v12, 1, 1, v13);
      HourWeather.date.getter();
      if (sub_100024D10(v12, 1, v13) != 1)
      {
        sub_10003FDF4(v12, &unk_100CB2CF0, &unk_100A2D7F0);
      }
    }

    else
    {
      DetailChartDataPoint.date.getter();
      (*(*(v18 - 8) + 8))(v9, v18);
      sub_10001B350(v12, 0, 1, v13);
      (*(v14 + 32))(v16, v12, v13);
    }

    v17 = sub_10084F554();
    v20 = v19;
    (*(v14 + 8))(v16, v13);
    swift_beginAccess();
    *(a1 + 16) = v17;
    *(a1 + 24) = v20;
  }

  return v17;
}

uint64_t sub_10084F554()
{
  if (qword_100CA1EC8 != -1)
  {
    swift_once();
  }

  v0 = qword_100D8FAD8;
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  [v0 setTimeZone:isa];

  v2 = Date._bridgeToObjectiveC()().super.isa;
  v3 = [v0 stringFromDate:v2];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_10084F624(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date.FormatStyle();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for Calendar();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  type metadata accessor for Date();
  sub_1000037C4();
  v38 = v17;
  v39 = v16;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v37 = v19 - v18;
  static Calendar.currentCalendar(with:)();
  Date.wc_addHours(_:calendar:)();
  (*(v11 + 8))(v15, v9);
  v20 = [objc_opt_self() mainBundle];
  v40._object = 0x8000000100AE12C0;
  sub_100003CD0();
  v21._object = 0xA900000000000040;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v20, v21, v40);

  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100A3B020;
  sub_10084F9B0(COERCE_DOUBLE(4));
  v25 = Date.hour(timeZone:formatStyle:)();
  v26 = *(v4 + 8);
  v27 = v26(v8, v2);
  *(v24 + 56) = &type metadata for Int;
  *(v24 + 64) = &protocol witness table for Int;
  *(v24 + 32) = v25;
  sub_10084F9B0(v27);
  v28 = Date.hour(timeZone:formatStyle:)();
  v26(v8, v2);
  *(v24 + 96) = &type metadata for Int;
  *(v24 + 104) = &protocol witness table for Int;
  *(v24 + 72) = v28;
  v29 = Date.formattedHoursForText(timeZone:)();
  v31 = v30;
  *(v24 + 136) = &type metadata for String;
  v32 = sub_100035744();
  *(v24 + 144) = v32;
  *(v24 + 112) = v29;
  *(v24 + 120) = v31;
  v33 = Date.formattedHoursForText(timeZone:)();
  *(v24 + 176) = &type metadata for String;
  *(v24 + 184) = v32;
  *(v24 + 152) = v33;
  *(v24 + 160) = v34;
  v35 = static String.localizedStringWithFormat(_:_:)();

  (*(v38 + 8))(v37, v39);
  return v35;
}

uint64_t sub_10084F9B0(double a1)
{
  v1 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for TimeZone();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Calendar();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10022C350(&qword_100CBD420, &qword_100A54300);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_10022C350(&qword_100CBD428, &qword_100A54308);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for Date.FormatStyle.DateStyle();
  sub_10001B350(v10, 1, 1, v11);
  v12 = type metadata accessor for Date.FormatStyle.TimeStyle();
  sub_10001B350(v7, 1, 1, v12);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  return Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
}

uint64_t sub_10084FC0C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10084FC64@<X0>(Swift::OpaquePointer *a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a3;
  v71[1] = type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v87 = v6 - v5;
  v83 = type metadata accessor for SevereAlertComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v80 = (v9 - v8);
  v10 = sub_10022C350(&qword_100CDE7A0, &qword_100A8D898);
  __chkstk_darwin(v10 - 8);
  v77 = v71 - v11;
  v91 = type metadata accessor for WeatherAlert.Prominence();
  sub_1000037C4();
  v89 = v12;
  __chkstk_darwin(v13);
  v81 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v75 = v71 - v16;
  __chkstk_darwin(v17);
  v92 = v71 - v18;
  type metadata accessor for SevereAlertComponentStringsBuilder.SevereAlertSummary();
  sub_1000037C4();
  v85 = v20;
  v86 = v19;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v23 = v22 - v21;
  v24 = sub_10022C350(&qword_100CC0A50, &unk_100A594E0);
  __chkstk_darwin(v24 - 8);
  v84 = v71 - v25;
  sub_1008503B8(a2, v71 - v25);
  rawValue = a2->_rawValue;
  v27 = SevereAlertComponentStringsBuilder.title(for:characterLimit:)(a2->_rawValue, 25);
  object = v27._object;
  countAndFlagsBits = v27._countAndFlagsBits;
  v93 = rawValue;

  sub_10022C350(&qword_100CB4738, &qword_100A47928);
  sub_100850C88();
  v28 = Sequence.unique<A>(by:)();

  type metadata accessor for SevereAlertComponent(0);
  sub_100010DB0();
  SevereAlertComponentStringsBuilder.descriptions(for:location:currentDate:bulletString:)();
  sub_100010DB0();
  v76 = SevereAlertComponentStringsBuilder.descriptions(for:location:currentDate:bulletString:)();
  v82 = a2;
  v29 = v28;
  v30 = v77;
  v90 = v23;
  SevereAlertComponentStringsBuilder.summary(alertDescriptions:events:location:currentDate:)();

  sub_1003DFB60(rawValue, v30);
  v31 = type metadata accessor for WeatherAlert();
  if (sub_100024D10(v30, 1, v31) == 1)
  {
    sub_1000180EC(v30, &qword_100CDE7A0, &qword_100A8D898);
    v32 = *(v89 + 104);
    LODWORD(v77) = enum case for WeatherAlert.Prominence.high(_:);
    v32(v92);
  }

  else
  {
    v33 = v75;
    WeatherAlert.prominence.getter();
    (*(*(v31 - 8) + 8))(v30, v31);
    (*(v89 + 32))(v92, v33, v91);
    LODWORD(v77) = enum case for WeatherAlert.Prominence.high(_:);
  }

  v74 = SevereAlertComponentStringsBuilder.longAlertDescription(for:location:)();
  v73 = v34;
  v35 = SevereAlertComponentStringsBuilder.SevereAlertSummary.description.getter();
  v37 = v36;
  v72 = SevereAlertComponentStringsBuilder.SevereAlertSummary.footer.getter();
  v75 = v29;
  v39 = v38;
  v40 = v83;
  v41 = v89;
  v42 = *(v89 + 16);
  v43 = v80;
  v45 = v91;
  v44 = v92;
  v42(v80 + *(v83 + 36), v92, v91);
  v46 = v82;
  v47 = v82[1]._rawValue;
  *v43 = v35;
  v43[1] = v37;
  v48 = v73;
  v43[2] = v74;
  v43[3] = v48;
  v49 = object;
  v50 = countAndFlagsBits;
  v43[4] = v76;
  v43[5] = v50;
  v43[6] = v49;
  v43[7] = v72;
  v43[8] = v39;
  *(v43 + *(v40 + 40)) = v47;
  v51 = sub_100850638(v44, v46);
  v53 = v52;
  v54 = v81;
  v42(v81, v44, v45);
  v55 = (*(v41 + 88))(v54, v45);
  if (v55 == v77)
  {
    v56 = v87;
    v57 = sub_10000912C();
    sub_100014FD4(v57, v58, v59, v60);
  }

  else
  {
    v61 = v45;
    v56 = v87;
    if (v55 == enum case for WeatherAlert.Prominence.low(_:))
    {

      *v56 = v51;
      *(v56 + 8) = v53;
      *(v56 + 16) = 0xD00000000000001DLL;
      *(v56 + 24) = 0x8000000100AC04D0;
      *(v56 + 32) = 0;
      *(v56 + 40) = 0;
      *(v56 + 48) = 0;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v62 = sub_10000912C();
      sub_100014FD4(v62, v63, v64, v65);

      (*(v41 + 8))(v54, v61);
    }
  }

  v66 = v88;
  sub_100850CEC(v56, v88, type metadata accessor for LocationComponentHeaderViewModel);
  v67 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_100850CEC(v43, v66 + v67[5], type metadata accessor for SevereAlertComponentViewModel);
  type metadata accessor for LocationComponentViewModel(0);
  swift_storeEnumTagMultiPayload();
  v68 = v84;
  sub_100850D4C(v84, v66 + v67[8]);
  sub_10013D288();
  v69 = Dictionary.init(dictionaryLiteral:)();
  sub_1001883B0(v56, type metadata accessor for LocationComponentHeaderViewModel);
  sub_1001883B0(v43, type metadata accessor for SevereAlertComponentViewModel);
  (*(v41 + 8))(v92, v91);
  (*(v85 + 8))(v90, v86);
  result = sub_1000180EC(v68, &qword_100CC0A50, &unk_100A594E0);
  *(v66 + v67[6]) = 256;
  *(v66 + v67[7]) = v69;
  return result;
}

uint64_t sub_1008503B8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CDE7A0, &qword_100A8D898);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  sub_1003DFB60(*a1, v6);
  v14 = type metadata accessor for WeatherAlert();
  if (sub_100024D10(v6, 1, v14) == 1)
  {
    sub_1000180EC(v6, &qword_100CDE7A0, &qword_100A8D898);
    v15 = type metadata accessor for LocationComponentAction(0);
    v16 = a2;
    v17 = 1;
  }

  else
  {
    WeatherAlert.detailsURL.getter();
    (*(*(v14 - 8) + 8))(v6, v14);
    v18 = *(v8 + 32);
    v18(v13, v10, v7);
    v19 = *(sub_10022C350(&qword_100CA6680, &qword_100A3DB20) + 48);
    v18(a2, v13, v7);
    a2[v19] = 1;
    v20 = type metadata accessor for LocationComponentAction(0);
    swift_storeEnumTagMultiPayload();
    v16 = a2;
    v17 = 0;
    v15 = v20;
  }

  return sub_10001B350(v16, v17, 1, v15);
}

uint64_t sub_1008505FC@<X0>(uint64_t *a2@<X8>)
{
  result = WeatherAlert.summary.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100850638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherAlert.Prominence();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for WeatherAlert.Prominence.high(_:))
  {
    v10 = [objc_opt_self() mainBundle];
    v24._object = 0x8000000100AE1370;
    v11._countAndFlagsBits = 0x5720657265766553;
    v11._object = 0xEE00726568746165;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD000000000000028;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v24)._countAndFlagsBits;
  }

  else if (v9 == enum case for WeatherAlert.Prominence.low(_:))
  {
    v14 = [objc_opt_self() mainBundle];
    v15._countAndFlagsBits = 0xD000000000000016;
    v25._object = 0x8000000100AE13C0;
    v16._countAndFlagsBits = 0x2072656874616557;
    v16._object = 0xEE00737472656C41;
    v15._object = 0x8000000100AE13A0;
    v25._countAndFlagsBits = 0xD00000000000005ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v25);

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100A2C3F0;
    v18 = *(*a2 + 16);
    *(v17 + 56) = &type metadata for Int;
    *(v17 + 64) = &protocol witness table for Int;
    *(v17 + 32) = v18;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    v19 = [objc_opt_self() mainBundle];
    v26._object = 0x8000000100AE1370;
    v20._countAndFlagsBits = 0x5720657265766553;
    v20._object = 0xEE00726568746165;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0xD000000000000028;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v26)._countAndFlagsBits;

    (*(v5 + 8))(v8, v4);
  }

  return countAndFlagsBits;
}

uint64_t sub_100850994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v47 = a2;
  v48 = a6;
  v44 = a1;
  v45 = a5;
  v46 = a7;
  v9 = type metadata accessor for WeatherAlert();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = *(a3 + 40);
  v42 = *(a3 + 48);
  v43 = v15;
  v16 = *(a4 + 16);
  if (v16)
  {
    v40 = &v39 - v14;
    v41 = v10;
    v19 = *(v10 + 16);
    v18 = v10 + 16;
    v17 = v19;
    v20 = a4 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v21 = *(v18 + 56);

    while (1)
    {
      v17(v12, v20, v9);
      v22 = WeatherAlert.source.getter();
      v24 = v23;

      v25 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v25 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        break;
      }

      (*(v18 - 8))(v12, v9);
      v20 += v21;
      if (!--v16)
      {
        goto LABEL_9;
      }
    }

    v30 = v40;
    v31 = v41 + 32;
    (*(v41 + 32))(v40, v12, v9);
    v28 = WeatherAlert.source.getter();
    v29 = v32;
    (*(v31 - 24))(v30, v9);
    v26 = v42;
    v27 = v43;
  }

  else
  {

LABEL_9:

    v27 = v43;
    v28 = v43;
    v29 = v26;
  }

  v34 = v46;
  v33 = v47;
  v35 = v44;
  *v46 = v44;
  v34[1] = v33;
  v34[2] = v27;
  v34[3] = v26;
  v34[4] = v28;
  v34[5] = v29;
  v36 = v45;
  v37 = v48;
  v34[6] = v45;
  v34[7] = v37;
  v34[8] = v35;
  v34[9] = v33;
  v34[10] = v36;
  v34[11] = v37;
  *(v34 + 96) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  v34[13] = 0;
  v34[14] = 0;
  *(v34 + 120) = 0;
  swift_storeEnumTagMultiPayload();
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_100850BEC()
{
  v1 = OBJC_IVAR____TtC7Weather36SevereAlertComponentViewModelFactory_severeAlertComponentStringBuilder;
  type metadata accessor for SevereAlertComponentStringsBuilder();
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

unint64_t sub_100850C88()
{
  result = qword_100CDE7A8;
  if (!qword_100CDE7A8)
  {
    v3 = sub_10022E824(&qword_100CB4738, &qword_100A47928);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_100CDE7A8);
  }

  return result;
}

uint64_t sub_100850CEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100850D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC0A50, &unk_100A594E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_100850DBC(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA28F0 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2900 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA28F8 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA28E8 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA28E0 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:

  return result;
}

void *sub_100850F28(char a1, char a2, uint64_t a3)
{
  v80 = type metadata accessor for TipPriorityQueue.GridEntry(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v77 = &v73 - v10;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  v15 = type metadata accessor for LocationComponentViewModel(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  __chkstk_darwin(v21);
  sub_100013628();
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  __chkstk_darwin(v25);
  v27 = &v73 - v26;
  v28 = sub_10022C350(&qword_100CAC7F8, &qword_100A65EA0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  v33 = &v73 - v32;
  __chkstk_darwin(v34);
  v36 = &v73 - v35;
  sub_100850DBC(a1, a2);
  v38 = v37;
  v39 = OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v39, v14, &qword_100CA5008, &unk_100A2F7B0);
  v40 = type metadata accessor for LocationComponentContainerViewModel(0);
  if (sub_100024D10(v14, 1, v40) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008, &unk_100A2F7B0);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v41], v24, v42);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v24, v27, v43);
    sub_100566A5C(v38, v82);
    if ((v83 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v27, v33, v46);
      v44 = 0;
      v45 = v80;
      v47 = &v33[*(v80 + 20)];
      v48 = v82[1];
      *v47 = v82[0];
      *(v47 + 1) = v48;
      goto LABEL_7;
    }

    sub_1003169AC(v27, type metadata accessor for LocationComponentViewModel);
  }

  v44 = 1;
  v45 = v80;
LABEL_7:
  sub_10001B350(v33, v44, 1, v45);
  sub_1003168DC(v33, v36);
  sub_10031694C(a3 + *(v40 + 20) + OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v38, v84);
  sub_100924AFC(v3, v84, v81);
  sub_10031694C(*(a3 + 16) + *(v40 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v20, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v38, v85);
  v49 = v75;
  if (v86 & 1) != 0 || (sub_100011474(), v50 = v77, sub_1001B6FB0(v20, v77, v51), v52 = (v50 + *(v45 + 20)), v53 = v85[1], *v52 = v85[0], v52[1] = v53, sub_100035AD0(v36, v49, &qword_100CAC7F8, &qword_100A65EA0), sub_10001BD64(), v56 = v74, sub_10031694C(v54 + v55, v74, v57), sub_100566AB0(v38, v87), v58 = v78, (v88))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v56, v58, v59);
    v60 = (v58 + *(v45 + 20));
    v61 = v87[1];
    *v60 = v87[0];
    v60[1] = v61;
    sub_10001BD64();
    v64 = v76;
    sub_10031694C(v62 + v63, v76, v65);
    sub_100566AE8(v38, v89);
    if ((v90 & 1) == 0)
    {

      sub_100011474();
      v66 = v64;
      v67 = v79;
      sub_1001B6FB0(v66, v79, v68);
      v69 = (v67 + *(v45 + 20));
      v70 = v89[1];
      *v69 = v89[0];
      v69[1] = v70;
      v71 = sub_100924C14(v81, v50, v49, v58, v67);
      sub_1000180EC(v36, &qword_100CAC7F8, &qword_100A65EA0);
      return v71;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1008515AC(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v127 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100024D10(v5, 1, v6);
  v131 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008, &unk_100A2F7B0);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    sub_10001361C(v16, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(v17 + v18, v16 + v13, v19);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v20;
    *(v12 + 48) = v21;
    v22 = sub_100013600();
    sub_100003E18(v22);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v22 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v22);
    *(v12 + 64) = v23;
    *(v12 + 72) = v24;
    v25 = sub_100013600();
    sub_100003E18(v25);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_newsArticle, v25 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v25);
    *(v12 + 88) = v26;
    *(v12 + 96) = v27;
    v28 = sub_100013600();
    sub_100003E18(v28);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_airQuality, v28 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v28);
    *(v12 + 112) = v29;
    *(v12 + 120) = v30;
    v128 = v13 + 2 * v14;
    v129 = v14;
    v31 = v14;
    v32 = v15;
    v33 = swift_allocObject();
    v34 = sub_10001361C(v33, xmmword_100A2D320) + v13;
    v35 = a1;
    v36 = *(a1 + 16);
    v37 = v35;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v36 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v34[v31], v7);
    *(v12 + 128) = sub_1001B38A0(v33);
    *(v12 + 136) = v38;
    *(v12 + 144) = v39;
    v130 = v32;
    v40 = swift_allocObject();
    sub_1000056EC(v40);
    v42 = v41 + v13;
    v43 = *(v37 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v43 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, &v129[v42], v7);
    *(v12 + 152) = sub_1001B38A0(v33);
    *(v12 + 160) = v44;
    *(v12 + 168) = v45;
    v46 = swift_allocObject();
    sub_1000056EC(v46);
    v48 = v47 + v13;
    v49 = v131;
    v50 = *(v131 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v51 = v129;
    sub_10031694C(v50 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, &v129[v48], v7);
    *(v12 + 176) = sub_1001B38A0(v33);
    *(v12 + 184) = v52;
    *(v12 + 192) = v53;
    v54 = sub_10000C998();
    sub_1000056EC(v54);
    v56 = v55 + v13;
    v57 = *(v49 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v58 = v56 + v51;
    v59 = v51;
    sub_10031694C(v57 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v58, v7);
    *(v12 + 200) = sub_1001B38A0(v33);
    *(v12 + 208) = v60;
    *(v12 + 216) = v61;
    v62 = sub_10000C998();
    sub_100003E18(v62);
    v64 = v63 + v13;
    v65 = *(v49 + 16);
    sub_10031694C(v65 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v63 + v13, v7);
    sub_10031694C(v65 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v64 + v59, v7);
    *(v12 + 224) = sub_1001B38A0(v62);
    *(v12 + 232) = v66;
    *(v12 + 240) = v67;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v68 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v69 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v70 = *(v7 + 72);
    v71 = *(v7 + 80);
    v72 = v68;
    v73 = swift_allocObject();
    sub_10001361C(v73, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(v74 + v75, v73 + v69, v76);
    *(v12 + 32) = sub_1001B38A0(v73);
    *(v12 + 40) = v77;
    *(v12 + 48) = v78;
    sub_1000167B0();
    v79 = swift_allocObject();
    sub_1000056EC(v79);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v73 + v69, v7);
    *(v12 + 56) = sub_1001B38A0(v73);
    *(v12 + 64) = v80;
    *(v12 + 72) = v81;
    sub_1000167B0();
    v82 = swift_allocObject();
    sub_1000056EC(v82);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_newsArticle, v73 + v69, v7);
    *(v12 + 80) = sub_1001B38A0(v73);
    *(v12 + 88) = v83;
    *(v12 + 96) = v84;
    sub_1000167B0();
    v85 = swift_allocObject();
    sub_1000056EC(v85);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather23DefaultTrendNewsContent8_Storage_airQuality, v73 + v69, v7);
    *(v12 + 104) = sub_1001B38A0(v73);
    *(v12 + 112) = v86;
    *(v12 + 120) = v87;
    v130 = v71;
    v88 = swift_allocObject();
    sub_1000056EC(v88);
    sub_10031694C(v9, v89 + v69, v7);
    *(v12 + 128) = sub_1001B38A0(v73);
    *(v12 + 136) = v90;
    *(v12 + 144) = v91;
    v92 = v69 + 2 * v70;
    v93 = v70;
    sub_1000167B0();
    v94 = swift_allocObject();
    v95 = sub_10001361C(v94, xmmword_100A2D320);
    v129 = v9;
    v96 = v95 + v69;
    v97 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v127[0] = v93;
    sub_10031694C(v97 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v96[v93], v7);
    *(v12 + 152) = sub_1001B38A0(v94);
    *(v12 + 160) = v98;
    *(v12 + 168) = v99;
    v127[1] = v92;
    v100 = swift_allocObject();
    sub_100003E18(v100);
    v102 = v101 + v69;
    v103 = v131;
    v104 = *(v131 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v104 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v102 + v93, v7);
    *(v12 + 176) = sub_1001B38A0(v100);
    *(v12 + 184) = v105;
    *(v12 + 192) = v106;
    sub_1000167B0();
    v128 = v72;
    v107 = swift_allocObject();
    sub_100003E18(v107);
    v109 = v108 + v69;
    v110 = *(v103 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v111 = v127[0];
    sub_10031694C(v110 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v109 + v127[0], v7);
    *(v12 + 200) = sub_1001B38A0(v107);
    *(v12 + 208) = v112;
    *(v12 + 216) = v113;
    sub_1000167B0();
    v114 = swift_allocObject();
    sub_100003E18(v114);
    v116 = v115 + v69;
    v117 = *(v103 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v117 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v116 + v111, v7);
    *(v12 + 224) = sub_1001B38A0(v114);
    *(v12 + 232) = v118;
    *(v12 + 240) = v119;
    v120 = swift_allocObject();
    sub_100003E18(v120);
    v122 = v121 + v69;
    v123 = *(v131 + 16);
    sub_10031694C(v123 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v121 + v69, v7);
    sub_10031694C(v123 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v122 + v111, v7);
    *(v12 + 248) = sub_1001B38A0(v120);
    *(v12 + 256) = v124;
    *(v12 + 264) = v125;
    sub_1003169AC(v129, v7);
  }

  return v12;
}

void sub_100851E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BC50;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BBF0;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3F970;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BC00;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A3BB70;
  v18[1] = xmmword_100A3BBB0;
  v17[0] = xmmword_100A2C3F0;
  v17[1] = xmmword_100A3BC00;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A41B80;
  v15[0] = xmmword_100A3BBB0;
  v15[1] = xmmword_100A3BBF0;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BC60;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BBC0;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = xmmword_100A3BC10;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC20;
  v33 = v12;
  v34 = v11;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BC20;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BBC0;
  v35 = v10;
  v36 = v9;
  sub_10004E984(a1, a2, a3, a4, a5, a6, a7, a8, 0);
  qword_100D90F10 = v8;
}

void sub_100851F70()
{
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BC50;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3F970;
  v11[0] = xmmword_100A3BBB0;
  v11[1] = xmmword_100A3BC20;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A3BB70;
  v10[1] = xmmword_100A3BBB0;
  v9[0] = xmmword_100A2C3F0;
  v9[1] = xmmword_100A3BC20;
  v19 = v10;
  v20 = v9;
  v8[0] = xmmword_100A3BBB0;
  v8[1] = xmmword_100A3BC00;
  v7[0] = xmmword_100A3BB70;
  v7[1] = xmmword_100A3BC60;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC10;
  v5[0] = xmmword_100A2C3F0;
  v5[1] = xmmword_100A3BC30;
  v23 = v6;
  v24 = v5;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BB80;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BB80;
  v25 = v4;
  v26 = v3;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC10;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC30;
  v27 = v2;
  v28 = v1;
  sub_100557528();
  qword_100D90F18 = v0;
}

void sub_100852088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[0] = xmmword_100A2D320;
  v28[1] = xmmword_100A3BC40;
  v27[0] = xmmword_100A3BC40;
  v27[1] = xmmword_100A3BB80;
  v29 = v28;
  v30 = v27;
  v24 = xmmword_100A3BB70;
  v25 = 1;
  v26 = 4;
  v23[0] = xmmword_100A3BC40;
  v23[1] = xmmword_100A3BC50;
  v31 = &v24;
  v32 = v23;
  v20 = 0;
  v21 = xmmword_100A3F980;
  v22 = 1;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BB80;
  v33 = &v20;
  v34 = v19;
  v15[1] = xmmword_100A3BC50;
  v16 = xmmword_100A2D320;
  v17 = 1;
  v18 = 3;
  v35 = &v16;
  v36 = v15;
  v13[1] = xmmword_100A3BB80;
  v14[0] = xmmword_100A2D320;
  v14[1] = xmmword_100A3BC60;
  v15[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BC50;
  v13[0] = xmmword_100A3BBD0;
  v37 = v14;
  v38 = v13;
  v11[1] = xmmword_100A3BC60;
  v12[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v11[0] = xmmword_100A2C3F0;
  v39 = v12;
  v40 = v11;
  v9[1] = xmmword_100A3BB80;
  v10[0] = xmmword_100A3BBB0;
  v9[0] = xmmword_100A2C3F0;
  v41 = v10;
  v42 = v9;
  sub_10004E984(a1, a2, a3, a4, a5, a6, a7, a8, 1);
  qword_100D90F20 = v8;
}

void sub_1008521B8()
{
  v16[0] = 2;
  v16[1] = 4;
  v17 = xmmword_100A2C3F0;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC50;
  v18 = v16;
  v19 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3F970;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BC60;
  v20 = v14;
  v21 = v13;
  v10 = 0;
  v11 = xmmword_100A3F980;
  v12 = 1;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BC50;
  v22 = &v10;
  v23 = v9;
  v8[0] = xmmword_100A3BBB0;
  v8[1] = xmmword_100A3BC60;
  v7[0] = xmmword_100A2D320;
  v7[1] = xmmword_100A3BBD0;
  v24 = v8;
  v25 = v7;
  v6[0] = xmmword_100A3BBD0;
  v6[1] = xmmword_100A3BC50;
  v5[0] = xmmword_100A3BBD0;
  v5[1] = xmmword_100A3BC60;
  v26 = v6;
  v27 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC40;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC40;
  v28 = v4;
  v29 = v3;
  v2[0] = xmmword_100A2C3F0;
  v2[1] = xmmword_100A3BC50;
  v1[0] = xmmword_100A2C3F0;
  v1[1] = xmmword_100A3BC60;
  v30 = v2;
  v31 = v1;
  sub_100557528();
  qword_100D90F28 = v0;
}

void sub_1008522E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A2D320;
  v22[1] = xmmword_100A2C3F0;
  v21[0] = xmmword_100A3BC50;
  v21[1] = xmmword_100A3BC60;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3F970;
  v19[0] = xmmword_100A3BC60;
  v19[1] = xmmword_100A3BC40;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A3BC80;
  v18[1] = xmmword_100A3BBB0;
  v17[0] = xmmword_100A3BBD0;
  v17[1] = xmmword_100A3BC60;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BC90;
  v16[1] = xmmword_100A3BB70;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BC60;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A3BC90;
  v14[1] = xmmword_100A3BBD0;
  v13[0] = xmmword_100A3BC60;
  v13[1] = xmmword_100A3BC60;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A3BC50;
  v12[1] = xmmword_100A3BC40;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC40;
  v33 = v12;
  v34 = v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC40;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC60;
  v35 = v10;
  v36 = v9;
  sub_10004E984(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D90F30 = v8;
}

uint64_t sub_1008523FC(uint64_t a1, void (*a2)(char *))
{
  v5 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003848();
  v34 = v7;
  __chkstk_darwin(v8);
  sub_100003878();
  v33 = v9;
  __chkstk_darwin(v10);
  sub_100013628();
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for LocationViewComponent(0);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v31 - v23;

  sub_1005D71C4(v25, a2);
  v32 = v26;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather37LocationDefaultTrendNewsConfiguration8_Storage_map, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10001B350(v24, 0, 1, v5);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather37LocationDefaultTrendNewsConfiguration8_Storage_airQuality, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather37LocationDefaultTrendNewsConfiguration8_Storage_newsArticle, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v24, v21, &qword_100CA5008, &unk_100A2F7B0);
  v27 = v33;
  sub_10031694C(v13, v33, type metadata accessor for LocationComponentContainerViewModel);
  v28 = v34;
  sub_10031694C(v2, v34, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for DefaultTrendNewsContent._Storage(0);
  swift_allocObject();
  v29 = sub_1002BE128(v32, v21, v27, v28);
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v13, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v24, &qword_100CA5008, &unk_100A2F7B0);
  return v29;
}

uint64_t type metadata accessor for CurrentWeatherEditorView(uint64_t a1)
{
  result = qword_100CDE810;
  if (!qword_100CDE810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008527AC(uint64_t a1)
{
  sub_100081BC8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CurrentWeather();
    if (v2 <= 0x3F)
    {
      sub_10013DB50();
      if (v3 <= 0x3F)
      {
        sub_100852860(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100852860(uint64_t a1)
{
  if (!qword_100CDE820)
  {
    type metadata accessor for CurrentWeather();
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100CDE820);
    }
  }
}

void sub_1008528D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v33);
  v35 = &a9 - v34;
  sub_1000955E0(v23, &a9 - v34, &qword_100CA54B0, &qword_100A2F8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100463960(v35, v25);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v28 + 8))(v32, v26);
  }

  sub_10000536C();
}

void sub_100852A74()
{
  sub_10000C778();
  v46 = v0;
  v58 = v1;
  v2 = type metadata accessor for CurrentWeatherEditorView(0);
  v55 = *(v2 - 8);
  v54 = *(v55 + 64);
  __chkstk_darwin(v2 - 8);
  v52 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  sub_1000037C4();
  v56 = v4;
  v57 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  v53 = &v45 - v7;
  v8 = type metadata accessor for InsetGroupedListStyle();
  sub_1000037C4();
  v47 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = sub_10022C350(&qword_100CDE858, &qword_100A8D980);
  sub_1000037C4();
  v16 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  sub_10022C350(&qword_100CDE860, &qword_100A8D988);
  sub_1000037C4();
  v48 = v20;
  v49 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  sub_10022C350(&qword_100CDE868, &qword_100A8D990);
  sub_1000037C4();
  v50 = v25;
  v51 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v45 = &v45 - v28;
  v59 = v0;
  sub_10022C350(&qword_100CDE870, &qword_100A8D998);
  sub_100006F64(&qword_100CDE878, &qword_100CDE870, &qword_100A8D998, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  sub_100005DFC();
  v31 = sub_100006F64(v29, &qword_100CDE858, &qword_100A8D980, v30);
  View.listStyle<A>(_:)();
  (*(v47 + 8))(v13, v8);
  (*(v16 + 8))(v19, v14);
  LocalizedStringKey.init(stringLiteral:)();
  v60 = v14;
  v61 = v8;
  v62 = v31;
  v63 = &protocol witness table for InsetGroupedListStyle;
  sub_100005DB4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v45;
  v34 = v48;
  View.navigationTitle(_:)();

  v35 = v34;
  (*(v49 + 8))(v24, v34);
  LocalizedStringKey.init(stringLiteral:)();
  v36 = v52;
  sub_100855C18();
  v37 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v38 = swift_allocObject();
  sub_100855724(v36, v38 + v37);
  v39 = v53;
  Button<>.init(_:action:)();
  v60 = v35;
  v61 = OpaqueTypeConformance2;
  sub_100004C88();
  swift_getOpaqueTypeConformance2();
  sub_100005DCC();
  sub_100006F64(v40, &qword_100CA5528, &qword_100A2F940, v41);
  v42 = v39;
  v43 = v50;
  v44 = v56;
  View.navigationBarItems<A>(trailing:)();
  (*(v57 + 8))(v42, v44);
  (*(v51 + 8))(v33, v43);
  sub_10000536C();
}

uint64_t sub_10085303C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = sub_10022C350(&qword_100CBB730, &qword_100A51028);
  __chkstk_darwin(v3 - 8);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = (&v46 - v6);
  v50 = sub_10022C350(&qword_100CDE888, &qword_100A8D9A0);
  v53 = *(v50 - 8);
  __chkstk_darwin(v50);
  v54 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = sub_10022C350(&qword_100CDE890, &qword_100A8D9A8);
  v48 = *(v11 - 8);
  v12 = v48;
  v49 = v11;
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = LocalizedStringKey.init(stringLiteral:)();
  v58 = Text.init(_:tableName:bundle:comment:)(v18, v20, v19 & 1, v21, 0, 0, 0, 0, 0, 256);
  v59 = v22;
  v60 = v23 & 1;
  v61 = v24;
  v57 = a1;
  sub_10022C350(&qword_100CDE898, &qword_100A8D9B0);
  sub_100006F64(&qword_100CDE8A0, &qword_100CDE898, &qword_100A8D9B0, &protocol conformance descriptor for TupleView<A>);
  v47 = v17;
  Section<>.init(header:content:)();
  v25 = LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v45) = 256;
  v58 = Text.init(_:tableName:bundle:comment:)(v25, v27, v26 & 1, v28, 0, 0, 0, 0, 0, v45);
  v59 = v29;
  v60 = v30 & 1;
  v61 = v31;
  v56 = a1;
  sub_10022C350(&qword_100CDE8A8, &qword_100A8D9B8);
  sub_100006F64(&qword_100CDE8B0, &qword_100CDE8A8, &qword_100A8D9B8, &protocol conformance descriptor for TupleView<A>);
  v46 = v10;
  Section<>.init(header:content:)();
  v32 = v55;
  sub_1008549C8(v55);
  v33 = *(v12 + 16);
  v34 = v49;
  v33(v14, v17, v49);
  v35 = v54;
  v36 = *(v53 + 16);
  v37 = v50;
  v36(v54, v10, v50);
  v38 = v32;
  v39 = v51;
  sub_1000955E0(v38, v51, &qword_100CBB730, &qword_100A51028);
  v40 = v52;
  v33(v52, v14, v34);
  v41 = sub_10022C350(&qword_100CDE8B8, &unk_100A8D9C0);
  v36(&v40[*(v41 + 48)], v35, v37);
  sub_1000955E0(v39, &v40[*(v41 + 64)], &qword_100CBB730, &qword_100A51028);
  sub_1000180EC(v55, &qword_100CBB730, &qword_100A51028);
  v42 = *(v53 + 8);
  v42(v46, v37);
  v43 = *(v48 + 8);
  v43(v47, v34);
  sub_1000180EC(v39, &qword_100CBB730, &qword_100A51028);
  v42(v54, v37);
  return (v43)(v14, v34);
}

uint64_t sub_10085359C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CC4470, &qword_100A5D9F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  __chkstk_darwin(v11);
  v13 = (&v22 - v12);
  __chkstk_darwin(v14);
  v16 = (&v22 - v15);
  __chkstk_darwin(v17);
  v19 = &v22 - v18;
  sub_1008537EC((&v22 - v18));
  sub_100853C70(v16);
  sub_1008540F8(v13);
  sub_1000955E0(v19, v10, &qword_100CC4470, &qword_100A5D9F0);
  sub_1000955E0(v16, v7, &qword_100CC4470, &qword_100A5D9F0);
  sub_1000955E0(v13, v4, &qword_100CC4470, &qword_100A5D9F0);
  sub_1000955E0(v10, a1, &qword_100CC4470, &qword_100A5D9F0);
  v20 = sub_10022C350(&qword_100CDE8C8, &qword_100A8D9F8);
  sub_1000955E0(v7, a1 + *(v20 + 48), &qword_100CC4470, &qword_100A5D9F0);
  sub_1000955E0(v4, a1 + *(v20 + 64), &qword_100CC4470, &qword_100A5D9F0);
  sub_1000180EC(v13, &qword_100CC4470, &qword_100A5D9F0);
  sub_1000180EC(v16, &qword_100CC4470, &qword_100A5D9F0);
  sub_1000180EC(v19, &qword_100CC4470, &qword_100A5D9F0);
  sub_1000180EC(v4, &qword_100CC4470, &qword_100A5D9F0);
  sub_1000180EC(v7, &qword_100CC4470, &qword_100A5D9F0);
  return sub_1000180EC(v10, &qword_100CC4470, &qword_100A5D9F0);
}

uint64_t sub_1008537EC@<X0>(void *a1@<X8>)
{
  v34 = a1;
  v1 = type metadata accessor for CurrentWeatherEditorView(0);
  v35 = *(v1 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v1);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CurrentWeather();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(qword_100CA5418, &qword_100A2F670);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  CurrentWeather.temperature.getter();
  v13 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_10001B350(v12, 0, 1, v13);
  sub_10022C350(&qword_100CDE7B0, &qword_100A8D8F8);
  State.wrappedValue.getter();
  CurrentWeather.temperature.getter();
  (*(v4 + 8))(v6, v3);
  v14 = v34;
  sub_10001B350(v9, 0, 1, v13);
  v15 = v33;
  sub_100855C18();
  v16 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v17 = swift_allocObject();
  sub_100855724(v15, v17 + v16);
  v18 = sub_10022C350(&qword_100CC4470, &qword_100A5D9F0);
  v19 = v18[10];
  sub_10001B350(v14 + v19, 1, 1, v13);
  *v14 = 0x74617265706D6574;
  v14[1] = 0xEB00000000657275;
  sub_1000955E0(v12, v14 + v18[7], qword_100CA5418, &qword_100A2F670);
  sub_1007EE580(v9, v14 + v19, qword_100CA5418, &qword_100A2F670);
  v20 = (v14 + v18[8]);
  *v20 = sub_100855CFC;
  v20[1] = v17;
  sub_10022C350(&qword_100CBB748, &qword_100A51048);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v22 = objc_opt_self();
  *(inited + 32) = [v22 celsius];
  *(inited + 40) = 0x737569736C6563;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = [v22 fahrenheit];
  *(inited + 64) = 0x65686E6572686166;
  *(inited + 72) = 0xEA00000000007469;
  sub_1008558A8(inited, sub_1006A80E4, &qword_100CD14A0, &unk_100A8DA00, v23, v24, v25, v26, v32, v33, v34, v35, *v36, *&v36[8], *&v36[16], *&v36[24], *&v36[32], *&v36[40], *&v36[48], *&v36[56], *&v36[64], *&v36[72], v37, v38, v39, v40, v41, v42);
  v28 = v27;
  swift_setDeallocating();
  sub_1005C2008();
  if (v28)
  {
    sub_100855AB8();
    v30 = v29;
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v9, qword_100CA5418, &qword_100A2F670);
  result = sub_1000180EC(v12, qword_100CA5418, &qword_100A2F670);
  *(v14 + v18[9]) = v30;
  return result;
}

uint64_t sub_100853C70@<X0>(void *a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for CurrentWeatherEditorView(0);
  v35 = *(v1 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v1);
  v34 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for CurrentWeather();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(qword_100CA5418, &qword_100A2F670);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  CurrentWeather.apparentTemperature.getter();
  v12 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_10001B350(v11, 0, 1, v12);
  v13 = v8;
  v14 = v33;
  sub_10022C350(&qword_100CDE7B0, &qword_100A8D8F8);
  State.wrappedValue.getter();
  CurrentWeather.apparentTemperature.getter();
  (*(v3 + 8))(v5, v32);
  sub_10001B350(v13, 0, 1, v12);
  v15 = v34;
  sub_100855C18();
  v16 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v17 = swift_allocObject();
  sub_100855724(v15, v17 + v16);
  v18 = sub_10022C350(&qword_100CC4470, &qword_100A5D9F0);
  v19 = v18[10];
  sub_10001B350(v14 + v19, 1, 1, v12);
  *v14 = 0x696C20736C656566;
  v14[1] = 0xEA0000000000656BLL;
  sub_1000955E0(v11, v14 + v18[7], qword_100CA5418, &qword_100A2F670);
  sub_1007EE580(v13, v14 + v19, qword_100CA5418, &qword_100A2F670);
  v20 = (v14 + v18[8]);
  *v20 = sub_100855CE4;
  v20[1] = v17;
  sub_10022C350(&qword_100CBB748, &qword_100A51048);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v22 = objc_opt_self();
  *(inited + 32) = [v22 celsius];
  *(inited + 40) = 0x737569736C6563;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = [v22 fahrenheit];
  *(inited + 64) = 0x65686E6572686166;
  *(inited + 72) = 0xEA00000000007469;
  sub_1008558A8(inited, sub_1006A80E4, &qword_100CD14A0, &unk_100A8DA00, v23, v24, v25, v26, v32, v33, v34, v35, *v36, *&v36[8], *&v36[16], *&v36[24], *&v36[32], *&v36[40], *&v36[48], *&v36[56], *&v36[64], *&v36[72], v37, v38, v39, v40, v41, v42);
  v28 = v27;
  swift_setDeallocating();
  sub_1005C2008();
  if (v28)
  {
    sub_100855AB8();
    v30 = v29;
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v13, qword_100CA5418, &qword_100A2F670);
  result = sub_1000180EC(v11, qword_100CA5418, &qword_100A2F670);
  *(v14 + v18[9]) = v30;
  return result;
}

uint64_t sub_1008540F8@<X0>(void *a1@<X8>)
{
  v34 = a1;
  v1 = type metadata accessor for CurrentWeatherEditorView(0);
  v35 = *(v1 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v1);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CurrentWeather();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(qword_100CA5418, &qword_100A2F670);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  CurrentWeather.dewPoint.getter();
  v13 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_10001B350(v12, 0, 1, v13);
  sub_10022C350(&qword_100CDE7B0, &qword_100A8D8F8);
  State.wrappedValue.getter();
  CurrentWeather.dewPoint.getter();
  (*(v4 + 8))(v6, v3);
  v14 = v34;
  sub_10001B350(v9, 0, 1, v13);
  v15 = v33;
  sub_100855C18();
  v16 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v17 = swift_allocObject();
  sub_100855724(v15, v17 + v16);
  v18 = sub_10022C350(&qword_100CC4470, &qword_100A5D9F0);
  v19 = v18[10];
  sub_10001B350(v14 + v19, 1, 1, v13);
  *v14 = 0x6E696F7020776564;
  v14[1] = 0xE900000000000074;
  sub_1000955E0(v12, v14 + v18[7], qword_100CA5418, &qword_100A2F670);
  sub_1007EE580(v9, v14 + v19, qword_100CA5418, &qword_100A2F670);
  v20 = (v14 + v18[8]);
  *v20 = sub_100855CCC;
  v20[1] = v17;
  sub_10022C350(&qword_100CBB748, &qword_100A51048);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v22 = objc_opt_self();
  *(inited + 32) = [v22 celsius];
  *(inited + 40) = 0x737569736C6563;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = [v22 fahrenheit];
  *(inited + 64) = 0x65686E6572686166;
  *(inited + 72) = 0xEA00000000007469;
  sub_1008558A8(inited, sub_1006A80E4, &qword_100CD14A0, &unk_100A8DA00, v23, v24, v25, v26, v32, v33, v34, v35, *v36, *&v36[8], *&v36[16], *&v36[24], *&v36[32], *&v36[40], *&v36[48], *&v36[56], *&v36[64], *&v36[72], v37, v38, v39, v40, v41, v42);
  v28 = v27;
  swift_setDeallocating();
  sub_1005C2008();
  if (v28)
  {
    sub_100855AB8();
    v30 = v29;
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v9, qword_100CA5418, &qword_100A2F670);
  result = sub_1000180EC(v12, qword_100CA5418, &qword_100A2F670);
  *(v14 + v18[9]) = v30;
  return result;
}

uint64_t sub_100854578@<X0>(uint64_t a2@<X8>)
{
  v42 = a2;
  v2 = type metadata accessor for CurrentWeatherEditorView(0);
  v3 = v2 - 8;
  v39 = *(v2 - 8);
  v38 = *(v39 + 64);
  __chkstk_darwin(v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CurrentWeather();
  v32 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrecipitationAmountsEditorRowView(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v41 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v40 = v31 - v14;
  __chkstk_darwin(v15);
  v17 = (v31 - v16);
  __chkstk_darwin(v18);
  v20 = (v31 - v19);
  v21 = *(v3 + 28);
  v36 = 0x8000000100AD3EC0;
  v37 = v21;
  CurrentWeather.precipitationAmount.getter();
  v35 = *(v3 + 36);
  v34 = sub_10022C350(&qword_100CDE7B0, &qword_100A8D8F8);
  State.wrappedValue.getter();
  CurrentWeather.precipitationAmount.getter();
  v22 = *(v7 + 8);
  v31[2] = v7 + 8;
  v33 = v22;
  v22(v9, v6);
  v31[1] = type metadata accessor for CurrentWeatherEditorView;
  sub_100855C18();
  v23 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v24 = swift_allocObject();
  sub_100855724(v5, v24 + v23);
  *v20 = 0xD000000000000014;
  v20[1] = v36;
  v25 = (v20 + *(v11 + 36));
  *v25 = sub_100855B80;
  v25[1] = v24;
  CurrentWeather.snowfallAmount.getter();
  State.wrappedValue.getter();
  CurrentWeather.snowfallAmount.getter();
  v33(v9, v32);
  sub_100855C18();
  v26 = swift_allocObject();
  sub_100855724(v5, v26 + v23);
  *v17 = 0x6C6C6166776F6E73;
  v17[1] = 0xEF746E756F6D6120;
  v27 = (v17 + *(v11 + 36));
  *v27 = sub_100855C00;
  v27[1] = v26;
  v28 = v40;
  sub_100855C18();
  v29 = v41;
  sub_100855C18();
  sub_100855C18();
  sub_10022C350(&qword_100CDE8C0, &unk_100A8D9E8);
  sub_100855C18();
  sub_100855C70(v17);
  sub_100855C70(v20);
  sub_100855C70(v29);
  return sub_100855C70(v28);
}

uint64_t sub_1008549C8@<X0>(void *a1@<X8>)
{
  v43 = a1;
  v1 = type metadata accessor for CurrentWeatherEditorView(0);
  *&v42 = *(v1 - 8);
  v2 = *(v42 + 64);
  __chkstk_darwin(v1);
  v41 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CurrentWeather();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CBB740, &qword_100A51038);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  CurrentWeather.visibility.getter();
  v13 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_10001B350(v12, 0, 1, v13);
  sub_10022C350(&qword_100CDE7B0, &qword_100A8D8F8);
  State.wrappedValue.getter();
  CurrentWeather.visibility.getter();
  (*(v4 + 8))(v6, v3);
  sub_10001B350(v9, 0, 1, v13);
  v14 = v41;
  sub_100855C18();
  v15 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v16 = swift_allocObject();
  v17 = v14;
  v18 = v43;
  sub_100855724(v17, v16 + v15);
  v19 = sub_10022C350(&qword_100CBB730, &qword_100A51028);
  v20 = v19[10];
  sub_10001B350(v18 + v20, 1, 1, v13);
  *v18 = 0x696C696269736976;
  v18[1] = 0xEA00000000007974;
  sub_1000955E0(v12, v18 + v19[7], &qword_100CBB740, &qword_100A51038);
  sub_1007EE580(v9, v18 + v20, &qword_100CBB740, &qword_100A51038);
  v21 = (v18 + v19[8]);
  *v21 = sub_1008557F4;
  v21[1] = v16;
  sub_10022C350(&qword_100CBB748, &qword_100A51048);
  inited = swift_initStackObject();
  v42 = xmmword_100A2D320;
  *(inited + 16) = xmmword_100A2D320;
  v23 = objc_opt_self();
  *(inited + 32) = [v23 kilometers];
  *(inited + 40) = 0x6574656D6F6C696BLL;
  *(inited + 48) = 0xEA00000000007372;
  *(inited + 56) = [v23 miles];
  *(inited + 64) = 0x73656C696DLL;
  *(inited + 72) = 0xE500000000000000;
  sub_1008558A8(inited, sub_1006A7F4C, &qword_100CD1480, &unk_100A8D9D0, v24, v25, v26, v27, v40, v41, v42, *(&v42 + 1), v43, *v44, *&v44[8], *&v44[16], *&v44[24], *&v44[32], *&v44[40], *&v44[48], *&v44[56], *&v44[64], *&v44[72], *v45, *&v45[8], *&v45[16], *&v45[24], *&v45[32]);
  v29 = v28;

  if (v29 || (v30 = swift_initStackObject(), *(v30 + 16) = v42, *(v30 + 32) = [v23 inches], *(v30 + 40) = 0x736568636E69, *(v30 + 48) = 0xE600000000000000, *(v30 + 56) = objc_msgSend(v23, "millimeters"), *(v30 + 64) = 0x74656D696C6C696DLL, *(v30 + 72) = 0xEB00000000737265, sub_1008558A8(v30, sub_1006A7F4C, &qword_100CD1480, &unk_100A8D9D0, v31, v32, v33, v34, v40, v41, v42, *(&v42 + 1), v43, *v44, *&v44[8], *&v44[16], *&v44[24], *&v44[32], *&v44[40], *&v44[48], *&v44[56], *&v44[64], *&v44[72], *v45, *&v45[8], *&v45[16], *&v45[24], *&v45[32]), v36 = v35, swift_setDeallocating(), sub_1005C2008(), v36))
  {
    sub_1008559F0();
    v38 = v37;
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v9, &qword_100CBB740, &qword_100A51038);
  result = sub_1000180EC(v12, &qword_100CBB740, &qword_100A51038);
  *(v18 + v19[9]) = v38;
  return result;
}

uint64_t sub_100854F24(uint64_t a1)
{
  v2 = type metadata accessor for PresentationMode();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0);
  __chkstk_darwin(v3);
  v5 = var50 - v4;
  v6 = type metadata accessor for CurrentWeather();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = var50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(type metadata accessor for CurrentWeatherEditorView(0) + 24));
  sub_10022C350(&qword_100CDE7B0, &qword_100A8D8F8);
  State.wrappedValue.getter();
  v10(v9);
  v11 = (*(v7 + 8))(v9, v6);
  sub_1008528D4(v11, v12, v13, v14, v15, v16, v17, v18, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  Binding.wrappedValue.getter();
  PresentationMode.dismiss()();
  Binding.wrappedValue.setter();
  return sub_1000180EC(v5, &qword_100CA6D28, &qword_100A4CEA0);
}

void sub_100855120()
{
  sub_10000C778();
  v18 = v1;
  sub_100003B38();
  v2 = type metadata accessor for CurrentWeather();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v4 = sub_10022C350(qword_100CA5418, &qword_100A2F670);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v17 - v15;
  sub_1000955E0(v0, v7, qword_100CA5418, &qword_100A2F670);
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    sub_1000180EC(v7, qword_100CA5418, &qword_100A2F670);
  }

  else
  {
    (*(v10 + 32))(v16, v7, v8);
    (*(v10 + 16))(v13, v16, v8);
    type metadata accessor for CurrentWeatherEditorView(0);
    sub_10022C350(&qword_100CDE7B0, &qword_100A8D8F8);
    State.wrappedValue.getter();
    v18(v13);
    State.wrappedValue.setter();
    (*(v10 + 8))(v16, v8);
  }

  sub_10000536C();
}

uint64_t sub_100855368(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_100003B38();
  v5 = type metadata accessor for CurrentWeather();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  type metadata accessor for PrecipitationAmount();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8, v3);
  type metadata accessor for CurrentWeatherEditorView(0);
  sub_10022C350(&qword_100CDE7B0, &qword_100A8D8F8);
  State.wrappedValue.getter();
  a3(v10);
  return State.wrappedValue.setter();
}

uint64_t sub_1008554A8(uint64_t a1)
{
  v2 = type metadata accessor for CurrentWeather();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CBB740, &qword_100A51038);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  sub_1000955E0(a1, v5, &qword_100CBB740, &qword_100A51038);
  if (sub_100024D10(v5, 1, v6) == 1)
  {
    return sub_1000180EC(v5, &qword_100CBB740, &qword_100A51038);
  }

  (*(v7 + 32))(v12, v5, v6);
  (*(v7 + 16))(v9, v12, v6);
  type metadata accessor for CurrentWeatherEditorView(0);
  sub_10022C350(&qword_100CDE7B0, &qword_100A8D8F8);
  State.wrappedValue.getter();
  CurrentWeather.visibility.setter();
  State.wrappedValue.setter();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_100855724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentWeatherEditorView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100855788()
{
  v1 = type metadata accessor for CurrentWeatherEditorView(0);
  sub_100003810(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_100854F24(v3);
}

uint64_t sub_1008557F4(uint64_t a1)
{
  v2 = type metadata accessor for CurrentWeatherEditorView(0);
  sub_100003810(v2);
  sub_100008550();

  return sub_1008554A8(a1);
}

void sub_1008558A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_10003C97C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = *(v32 + 16);
  v41 = v35;
  v35(0, v34, 0);
  v36 = v33 + 48;
  if (v34)
  {
    while (1)
    {
      v37 = *(v36 - 16);

      sub_10022C350(&qword_100CC83E0, &qword_100A8D9E0);
      sub_10022C350(v31, v29);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v39 = _swiftEmptyArrayStorage[2];
      v38 = _swiftEmptyArrayStorage[3];
      if (v39 >= v38 >> 1)
      {
        v41(v38 > 1, v39 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v39 + 1;
      v40 = &_swiftEmptyArrayStorage[3 * v39];
      v40[4] = a10;
      v40[5] = a11;
      v40[6] = a12;
      v36 += 24;
      if (!--v34)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  sub_100017EE8();
}

void sub_1008559F0()
{
  sub_10003C97C();
  if (*(v0 + 16))
  {
    v1 = sub_100049DEC();
    sub_1006A7F0C(v1, v2, v3);
    do
    {
      sub_10000CF50();

      v4 = sub_10022C350(&qword_100CD1480, &unk_100A8D9D0);
      v5 = sub_10022C350(&qword_100CD1470, &qword_100A768D8);
      sub_100013D8C(v5, v6);
      sub_1000750F4();
      if (v8)
      {
        sub_1006A7F0C(v7 > 1, v4, 1);
      }

      sub_100028C50();
    }

    while (!v9);
  }

  sub_100017EE8();
}

void sub_100855AB8()
{
  sub_10003C97C();
  if (*(v0 + 16))
  {
    v1 = sub_100049DEC();
    sub_1006A80A4(v1, v2, v3);
    do
    {
      sub_10000CF50();

      v4 = sub_10022C350(&qword_100CD14A0, &unk_100A8DA00);
      v5 = sub_10022C350(&qword_100CD1490, &qword_100A768F8);
      sub_100013D8C(v5, v6);
      sub_1000750F4();
      if (v8)
      {
        sub_1006A80A4(v7 > 1, v4, 1);
      }

      sub_100028C50();
    }

    while (!v9);
  }

  sub_100017EE8();
}

uint64_t sub_100855B98(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for CurrentWeatherEditorView(0);
  sub_100003810(v4);
  sub_100008550();
  return sub_100855368(a1, v5, a2);
}

uint64_t sub_100855C18()
{
  v2 = sub_100003B38();
  v3(v2);
  sub_1000037E8();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_100855C70(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationAmountsEditorRowView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100855D14()
{
  v0 = type metadata accessor for CurrentWeatherEditorView(0);
  sub_100003810(v0);
  sub_100008550();
  sub_100855120();
}

uint64_t sub_100855D8C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for LocationViewComponentContainerDescriptor(0, a1, a2, a3);
  v6 = sub_100588E2C(v5);
  if (v6)
  {
    sub_1001B3B30(v6 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, a4);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for LocationComponentContainerViewModel(0);

  return sub_10001B350(a4, v7, 1, v8);
}

uint64_t sub_100855E1C@<X0>(void (*a1)(uint64_t, void, uint64_t)@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v94 = a6;
  v97 = a5;
  v98 = a4;
  v99 = a3;
  v106 = a2;
  v96 = a1;
  v103 = a7;
  v115 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v119 = v7;
  __chkstk_darwin(v8);
  sub_1000038E4();
  v114 = v9;
  v10 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  __chkstk_darwin(v10 - 8);
  v112 = v80 - v11;
  v110 = type metadata accessor for WeatherFormatScaling();
  sub_1000037C4();
  v117 = v12;
  __chkstk_darwin(v13);
  sub_1000038E4();
  v109 = v14;
  v108 = type metadata accessor for NSUnitLength.WeatherFormatUsage();
  sub_1000037C4();
  v16 = v15;
  v116 = v15;
  __chkstk_darwin(v17);
  sub_1000038E4();
  v107 = v18;
  v113 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  sub_1000037C4();
  v118 = v19;
  __chkstk_darwin(v20);
  sub_1000038E4();
  v95 = v21;
  v22 = [objc_opt_self() mainBundle];
  v120._object = 0x8000000100AE14A0;
  v23._object = 0x8000000100AE1470;
  v120._countAndFlagsBits = 0xD000000000000120;
  v23._countAndFlagsBits = 0xD000000000000024;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v120);
  object = v25._object;
  countAndFlagsBits = v25._countAndFlagsBits;

  sub_10022C350(&qword_100CA5408, &unk_100A533E0);
  v26 = type metadata accessor for WeatherDescription.Argument();
  sub_1000037C4();
  v28 = v27;
  v30 = *(v29 + 72);
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = swift_allocObject();
  v100 = v32;
  *(v32 + 16) = xmmword_100A3F990;
  v33 = (v32 + v31);
  v111 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  Measurement.value.getter();
  *v33 = Double.pluralRuleInteger.getter();
  v34 = enum case for WeatherDescription.Argument.pluralRule(_:);
  v35 = *(v28 + 104);
  (v35)(v33, enum case for WeatherDescription.Argument.pluralRule(_:), v26);
  v88 = v28 + 104;
  Measurement.value.getter();
  *(v33 + v30) = Double.pluralRuleInteger.getter();
  v104 = v35;
  v105 = v26;
  (v35)(v33 + v30, v34, v26);
  v36 = (v33 + 2 * v30);
  v37 = v106;
  *v36 = v96;
  v36[1] = v37;
  v35();
  v38 = (v33 + 3 * v30);
  v39 = v98;
  *v38 = v99;
  v38[1] = v39;
  v35();
  v87 = (v33 + 4 * v30);
  LODWORD(v99) = enum case for NSUnitLength.WeatherFormatUsage.rainfall(_:);
  v40 = *(v16 + 104);
  v93 = v16 + 104;
  v96 = v40;
  v41 = v107;
  v42 = v108;
  v40(v107);
  v92 = enum case for WeatherFormatScaling.asProvidedButRounded(_:);
  v43 = v117;
  v44 = *(v117 + 104);
  v90 = v117 + 104;
  v91 = v44;
  v46 = v109;
  v45 = v110;
  v44(v109);
  v89 = type metadata accessor for Locale();
  v47 = v112;
  sub_10001B350(v112, 1, 1, v89);

  static Set<>.full.getter();
  v48 = v95;
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  sub_1001235D8(v47);
  v49 = *(v43 + 8);
  v117 = v43 + 8;
  v106 = v49;
  v49(v46, v45);
  v50 = *(v116 + 8);
  v116 += 8;
  v98 = v50;
  v50(v41, v42);
  v86 = enum case for WeatherFormatPlaceholder.none(_:);
  v51 = v119;
  v52 = *(v119 + 104);
  v80[1] = v119 + 104;
  v85 = v52;
  v53 = v114;
  v54 = v115;
  v52(v114);
  v84 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v83 = sub_100123738();
  v55 = v113;
  v56 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v58 = v57;

  v59 = *(v51 + 8);
  v119 = v51 + 8;
  v94 = v59;
  v59(v53, v54);
  v60 = *(v118 + 8);
  v118 += 8;
  v82 = v60;
  v60(v48, v55);
  v61 = v87;
  *v87 = v56;
  v61[1] = v58;
  v81 = enum case for WeatherDescription.Argument.measurement(_:);
  v63 = v104;
  v62 = v105;
  v104();
  *(v33 + 5 * v30) = 30;
  (v63)(v33 + 5 * v30, enum case for WeatherDescription.Argument.integer(_:), v62);
  v64 = (v33 + 6 * v30);
  v65 = v107;
  v66 = v108;
  v96(v107, v99, v108);
  v67 = v109;
  v68 = v110;
  v91(v109, v92, v110);
  v69 = v112;
  sub_10001B350(v112, 1, 1, v89);
  static Set<>.full.getter();
  v70 = v48;
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  sub_1001235D8(v69);
  v106(v67, v68);
  v98(v65, v66);
  v71 = v114;
  v72 = v115;
  v85(v114, v86, v115);
  static UnitManager.standard.getter();
  v73 = v70;
  v74 = v71;
  v75 = v113;
  v76 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v78 = v77;

  v94(v74, v72);
  v82(v73, v75);
  *v64 = v76;
  v64[1] = v78;
  (v104)(v64, v81, v105);
  return WeatherDescription.init(format:_:)();
}

uint64_t sub_100856748(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C6369747261 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100856818(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x73656C6369747261;
  }
}

uint64_t sub_100856848(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CDEA30, &qword_100A8DC10);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_100856EF0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = *v3;
  HIBYTE(v21) = 0;
  sub_10022C350(&qword_100CDEA18, &qword_100A8DC08);
  v11 = sub_100857004(&qword_100CDEA38, &qword_100CB99F8, byte_100A9627C, &protocol conformance descriptor for <A> [A]);
  sub_100005AE0(&v22, &v21 + 7, v12, v13, v11);
  if (!v2)
  {
    v14 = *(type metadata accessor for NewsArticlePlacement(0) + 20);
    BYTE6(v21) = 1;
    type metadata accessor for ArticlePlacementLocation();
    sub_10001FA48();
    v17 = sub_1008570A0(v15, v16, &protocol conformance descriptor for ArticlePlacementLocation);
    sub_100005AE0(v3 + v14, &v21 + 6, v18, v19, v17);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100856A28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v31 = type metadata accessor for ArticlePlacementLocation();
  sub_1000037C4();
  v28 = v4;
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10022C350(&qword_100CDEA08, &qword_100A8DC00);
  sub_1000037C4();
  v30 = v8;
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for NewsArticlePlacement(0);
  __chkstk_darwin(v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_100856EF0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v27 = a1;
  v15 = v14;
  v17 = v30;
  v16 = v31;
  sub_10022C350(&qword_100CDEA18, &qword_100A8DC08);
  v34 = 0;
  sub_100857004(&qword_100CDEA20, &qword_100CB99A0, byte_100A962A4, &protocol conformance descriptor for <A> [A]);
  v18 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v15;
  v26 = v35;
  *v15 = v35;
  v33 = 1;
  sub_10001FA48();
  sub_1008570A0(v19, v20, &protocol conformance descriptor for ArticlePlacementLocation);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v11, v18);
  v21 = *(v12 + 20);
  v22 = v25;
  (*(v28 + 32))(&v25[v21], v7, v16);
  sub_100856F44(v22, v29);
  sub_100006F14(v27);
  return sub_100856FA8(v22);
}

uint64_t sub_100856D7C(void *a1, void *a2)
{
  sub_1009ED768();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for NewsArticlePlacement(0) + 20);

  return sub_100747D24(a1 + v5, a2 + v5);
}

uint64_t sub_100856DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100856748(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100856E14(uint64_t a1)
{
  v2 = sub_100856EF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100856E50(uint64_t a1)
{
  v2 = sub_100856EF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100856EF0()
{
  result = qword_100CDEA10;
  if (!qword_100CDEA10)
  {
    result = swift_getWitnessTable(byte_100A8DCDC, &type metadata for NewsArticlePlacement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDEA10);
  }

  return result;
}

uint64_t sub_100856F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticlePlacement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100856FA8(uint64_t a1)
{
  v2 = type metadata accessor for NewsArticlePlacement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100857004(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_10022E824(&qword_100CDEA18, &qword_100A8DC08);
    v10 = sub_1008570A0(a2, type metadata accessor for NewsArticle, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1008570A0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

_BYTE *storeEnumTagSinglePayload for NewsArticlePlacement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1008571C8()
{
  result = qword_100CDEA48;
  if (!qword_100CDEA48)
  {
    result = swift_getWitnessTable(aM_3, &type metadata for NewsArticlePlacement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDEA48);
  }

  return result;
}

unint64_t sub_100857220()
{
  result = qword_100CDEA50;
  if (!qword_100CDEA50)
  {
    result = swift_getWitnessTable(byte_100A8DC24, &type metadata for NewsArticlePlacement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDEA50);
  }

  return result;
}

unint64_t sub_100857278()
{
  result = qword_100CDEA58;
  if (!qword_100CDEA58)
  {
    result = swift_getWitnessTable(byte_100A8DC4C, &type metadata for NewsArticlePlacement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDEA58);
  }

  return result;
}

uint64_t sub_1008572F4(uint64_t a1)
{
  result = type metadata accessor for WeatherMapOverlayKind();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WeatherData(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100857378(uint64_t a1, uint64_t a2)
{
  if ((static WeatherMapOverlayKind.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MapComponent(0) + 20);

  return sub_100883064((a1 + v4), (a2 + v4));
}

uint64_t sub_1008573D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v25);
  sub_1000037D8();
  v6 = v5 - v4;
  v27 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v24 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v26 = v10 - v9;
  sub_10022C350(&qword_100CDEAF0, &qword_100A8DDB8);
  sub_1000037C4();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for MapComponent(0);
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  sub_1000161C0(a1, a1[3]);
  sub_100857AE4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  sub_10001CF08();
  sub_100857BF8(v16, v17, &protocol conformance descriptor for WeatherMapOverlayKind);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v24 + 32))(v15, v26, v27);
  sub_10001FA60();
  sub_100857BF8(v18, v19, byte_100A907F8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = sub_1000064BC();
  v21(v20);
  sub_1003BD374(v6, v15 + *(v12 + 20));
  sub_100857B38(v15, a2);
  sub_100006F14(a1);
  return sub_100857B9C(v15);
}

uint64_t sub_10085773C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B79616C7265766FLL && a2 == 0xEB00000000646E69;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4472656874616577 && a2 == 0xEB00000000617461)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10085780C(char a1)
{
  if (a1)
  {
    return 0x4472656874616577;
  }

  else
  {
    return 0x4B79616C7265766FLL;
  }
}

uint64_t sub_10085785C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10085773C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100857884(uint64_t a1)
{
  v2 = sub_100857AE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008578C0(uint64_t a1)
{
  v2 = sub_100857AE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008578FC(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CDEB00, &qword_100A8DDC0);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_100857AE4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = 0;
  type metadata accessor for WeatherMapOverlayKind();
  sub_10001CF08();
  v13 = sub_100857BF8(v11, v12, &protocol conformance descriptor for WeatherMapOverlayKind);
  sub_100005AE0(v3, &v25, v14, v15, v13);
  if (!v2)
  {
    v16 = *(type metadata accessor for MapComponent(0) + 20);
    v24 = 1;
    type metadata accessor for WeatherData(0);
    sub_10001FA60();
    v19 = sub_100857BF8(v17, v18, byte_100A907D0);
    sub_100005AE0(v3 + v16, &v24, v20, v21, v19);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_100857AE4()
{
  result = qword_100CDEAF8;
  if (!qword_100CDEAF8)
  {
    result = swift_getWitnessTable(aE_9, &type metadata for MapComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDEAF8);
  }

  return result;
}

uint64_t sub_100857B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100857B9C(uint64_t a1)
{
  v2 = type metadata accessor for MapComponent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100857BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

_BYTE *storeEnumTagSinglePayload for MapComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100857D20()
{
  result = qword_100CDEB08;
  if (!qword_100CDEB08)
  {
    result = swift_getWitnessTable(byte_100A8DE64, &type metadata for MapComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDEB08);
  }

  return result;
}

unint64_t sub_100857D78()
{
  result = qword_100CDEB10;
  if (!qword_100CDEB10)
  {
    result = swift_getWitnessTable(asc_100A8DDD4, &type metadata for MapComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDEB10);
  }

  return result;
}

unint64_t sub_100857DD0()
{
  result = qword_100CDEB18;
  if (!qword_100CDEB18)
  {
    result = swift_getWitnessTable(byte_100A8DDFC, &type metadata for MapComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDEB18);
  }

  return result;
}

double sub_100857E24()
{
  sub_10022C350(&qword_100CA47E8, &qword_100A2EB20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100A3B030;
  *(v0 + 32) = static Color.green.getter();
  *(v0 + 40) = static Color.yellow.getter();
  *(v0 + 48) = static Color.orange.getter();
  *(v0 + 56) = static Color.pink.getter();
  *(v0 + 64) = static Color.purple.getter();

  Gradient.init(colors:)();
  return result;
}

uint64_t sub_100857ECC()
{
  if (*(v0 + 400))
  {
    v1 = *(v0 + 400);
  }

  else
  {
    v1 = static Color.black.getter();
    *(v0 + 400) = v1;
  }

  return v1;
}

double sub_100857F14()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  *(v0 + 16) = 0x4034000000000000;
  *(v0 + 24) = 0;
  return 20.0;
}

uint64_t sub_100857F38()
{
  if (*(v0 + 576) != 1)
  {
    return *(v0 + 568);
  }

  result = 2;
  *(v0 + 568) = 2;
  *(v0 + 576) = 0;
  return result;
}

double sub_100857F5C()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    return *(v0 + 144);
  }

  result = 40.0 - sub_100858048();
  *(v0 + 144) = result;
  *(v0 + 152) = 0;
  return result;
}

double sub_100857F98(__n128 a1)
{
  if ((*(v1 + 168) & 1) == 0)
  {
    return *(v1 + 160);
  }

  result = 32.0 - sub_100858048();
  *(v1 + 160) = result;
  *(v1 + 168) = 0;
  return result;
}

double sub_100857FD4()
{
  if ((*(v0 + 376) & 1) == 0)
  {
    return *(v0 + 368);
  }

  *(v0 + 368) = 0x4061800000000000;
  *(v0 + 376) = 0;
  return 140.0;
}

double sub_100858000()
{
  if ((*(v0 + 200) & 1) == 0)
  {
    return *(v0 + 192);
  }

  *(v0 + 192) = 0x4030000000000000;
  *(v0 + 200) = 0;
  return sub_10001ECF0();
}

void sub_100858020()
{
  if (*(v0 + 121))
  {
    *(v0 + 112) = 0x4024000000000000;
    *(v0 + 120) = 0;
  }

  sub_1000068EC();
}

double sub_100858048()
{
  if ((*(v0 + 104) & 1) == 0)
  {
    return *(v0 + 96);
  }

  *(v0 + 96) = 0x4020000000000000;
  *(v0 + 104) = 0;
  return 8.0;
}

double sub_10085806C()
{
  if ((*(v0 + 328) & 1) == 0)
  {
    return *(v0 + 320);
  }

  *(v0 + 320) = 0x4024000000000000;
  *(v0 + 328) = 0;
  return sub_100010DC4();
}

double sub_10085808C()
{
  if ((*(v0 + 248) & 1) == 0)
  {
    return *(v0 + 240);
  }

  *(v0 + 240) = 0x4024000000000000;
  *(v0 + 248) = 0;
  return sub_100010DC4();
}

double sub_1008580AC()
{
  if ((*(v0 + 216) & 1) == 0)
  {
    return *(v0 + 208);
  }

  *(v0 + 208) = 0x4028000000000000;
  *(v0 + 216) = 0;
  return 12.0;
}

double sub_1008580D0()
{
  if ((*(v0 + 232) & 1) == 0)
  {
    return *(v0 + 224);
  }

  *(v0 + 224) = 0x4030000000000000;
  *(v0 + 232) = 0;
  return sub_10001ECF0();
}

double sub_1008580F0()
{
  if ((*(v0 + 264) & 1) == 0)
  {
    return *(v0 + 256);
  }

  *(v0 + 256) = 0x4030000000000000;
  *(v0 + 264) = 0;
  return sub_10001ECF0();
}

double sub_100858110()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  *(v0 + 48) = 0x4030000000000000;
  *(v0 + 56) = 0;
  return sub_10001ECF0();
}

double sub_100858130(uint64_t a1)
{
  if ((*(v1 + 296) & 1) == 0)
  {
    return *(v1 + 288);
  }

  v2 = 12.0;
  if (static Solarium.isEnabled.getter())
  {
    if (qword_100CA20B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = sub_100472854();
  }

  *(v1 + 288) = v2;
  *(v1 + 296) = 0;
  return v2;
}

double sub_1008581DC()
{
  if ((*(v0 + 312) & 1) == 0)
  {
    return *(v0 + 304);
  }

  *(v0 + 304) = 0x4030000000000000;
  *(v0 + 312) = 0;
  return sub_10001ECF0();
}

double sub_1008581FC()
{
  if ((*(v0 + 184) & 1) == 0)
  {
    return *(v0 + 176);
  }

  *(v0 + 176) = 0x4040000000000000;
  *(v0 + 184) = 0;
  return 32.0;
}

void sub_100858220()
{
  if (*(v0 + 137))
  {
    *(v0 + 128) = 0x403C000000000000;
    *(v0 + 136) = 0;
  }

  sub_1000068EC();
}

void sub_100858248()
{
  if (*(v0 + 393))
  {
    *(v0 + 384) = 0;
    *(v0 + 392) = 1;
    *(v0 + 393) = 0;
  }

  sub_1000068EC();
}

double sub_100858274()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  *(v0 + 32) = 0x4020000000000000;
  *(v0 + 40) = 0;
  return 8.0;
}

double sub_100858298()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  *(v0 + 64) = 0x4010000000000000;
  *(v0 + 72) = 0;
  return sub_10001CF20();
}

double sub_1008582B8()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    return *(v0 + 80);
  }

  *(v0 + 80) = 0x4030000000000000;
  *(v0 + 88) = 0;
  return sub_10001ECF0();
}

double sub_1008582D8()
{
  if ((*(v0 + 280) & 1) == 0)
  {
    return *(v0 + 272);
  }

  *(v0 + 272) = 0x4034000000000000;
  *(v0 + 280) = 0;
  return 20.0;
}

double sub_1008582FC()
{
  if ((*(v0 + 360) & 1) == 0)
  {
    return *(v0 + 352);
  }

  *(v0 + 352) = 0x406D000000000000;
  *(v0 + 360) = 0;
  return 232.0;
}

double sub_100858320()
{
  if ((*(v0 + 344) & 1) == 0)
  {
    return *(v0 + 336);
  }

  *(v0 + 336) = 0x406DC00000000000;
  *(v0 + 344) = 0;
  return 238.0;
}

double sub_10085834C()
{
  if ((*(v0 + 464) & 1) == 0)
  {
    return *(v0 + 456);
  }

  *(v0 + 456) = 0x4010000000000000;
  *(v0 + 464) = 0;
  return sub_10001CF20();
}

double sub_10085836C()
{
  if ((*(v0 + 480) & 1) == 0)
  {
    return *(v0 + 472);
  }

  *(v0 + 472) = 0x4024000000000000;
  *(v0 + 480) = 0;
  return sub_100010DC4();
}

double sub_10085838C()
{
  if ((*(v0 + 496) & 1) == 0)
  {
    return *(v0 + 488);
  }

  *(v0 + 488) = 0x4010000000000000;
  *(v0 + 496) = 0;
  return sub_10001CF20();
}

double sub_1008583AC()
{
  if ((*(v0 + 512) & 1) == 0)
  {
    return *(v0 + 504);
  }

  *(v0 + 504) = 0x3FF999999999999ALL;
  *(v0 + 512) = 0;
  return 1.6;
}

double sub_1008583DC()
{
  if ((*(v0 + 544) & 1) == 0)
  {
    return *(v0 + 536);
  }

  *(v0 + 536) = 0x4010000000000000;
  *(v0 + 544) = 0;
  return sub_10001CF20();
}

uint64_t sub_1008583FC()
{
  v35[0] = 1;
  v34[0] = 1;
  v33[0] = 1;
  v32[0] = 1;
  v27[0] = 1;
  v26[0] = 1;
  v25[0] = 1;
  v24[0] = 1;
  v23[0] = 1;
  v22[0] = 1;
  v21[0] = 1;
  v20[0] = 1;
  v19[0] = 1;
  v18[0] = 1;
  v17[0] = 1;
  v16[0] = 1;
  v15[0] = 1;
  v14[0] = 1;
  v13[0] = 1;
  v10[0] = 1;
  v9[0] = 1;
  v8[0] = 1;
  v7[0] = 1;
  v6[0] = 1;
  v5[0] = 1;
  v4[0] = 1;
  v3[0] = 1;
  v2[0] = 1;
  v1[0] = 1;
  LOBYTE(v30) = 1;
  LOBYTE(v28) = 1;
  LOBYTE(v11) = 1;
  qword_100D90F40 = 0;
  byte_100D90F48 = 0;
  byte_100D90F49 = 1;
  qword_100D90F50 = 0;
  byte_100D90F58 = 1;
  qword_100D90F60 = 0;
  byte_100D90F68 = 1;
  qword_100D90F70 = 0;
  byte_100D90F78 = 1;
  dword_100D90F7C = *&v35[3];
  *algn_100D90F79 = *v35;
  qword_100D90F80 = 0;
  byte_100D90F88 = 1;
  dword_100D90F8C = *&v34[3];
  *algn_100D90F89 = *v34;
  qword_100D90F90 = 0;
  byte_100D90F98 = 1;
  dword_100D90F9C = *&v33[3];
  *algn_100D90F99 = *v33;
  qword_100D90FA0 = 0;
  byte_100D90FA8 = 1;
  dword_100D90FAC = *&v32[3];
  *algn_100D90FA9 = *v32;
  qword_100D90FB0 = 0;
  byte_100D90FB8 = 0;
  byte_100D90FB9 = 1;
  word_100D90FBE = v31;
  unk_100D90FBA = v30;
  qword_100D90FC0 = 0;
  byte_100D90FC8 = 0;
  byte_100D90FC9 = 1;
  word_100D90FCE = v29;
  unk_100D90FCA = v28;
  qword_100D90FD0 = 0;
  byte_100D90FD8 = 1;
  dword_100D90FDC = *&v27[3];
  *algn_100D90FD9 = *v27;
  qword_100D90FE0 = 0;
  byte_100D90FE8 = 1;
  result = *&v26[3];
  dword_100D90FEC = *&v26[3];
  *algn_100D90FE9 = *v26;
  qword_100D90FF0 = 0;
  byte_100D90FF8 = 1;
  dword_100D90FFC = *&v25[3];
  *algn_100D90FF9 = *v25;
  qword_100D91000 = 0;
  byte_100D91008 = 1;
  dword_100D9100C = *&v24[3];
  *algn_100D91009 = *v24;
  qword_100D91010 = 0;
  byte_100D91018 = 1;
  dword_100D9101C = *&v23[3];
  *algn_100D91019 = *v23;
  qword_100D91020 = 0;
  byte_100D91028 = 1;
  dword_100D9102C = *&v22[3];
  *algn_100D91029 = *v22;
  qword_100D91030 = 0;
  byte_100D91038 = 1;
  dword_100D9103C = *&v21[3];
  *algn_100D91039 = *v21;
  qword_100D91040 = 0;
  byte_100D91048 = 1;
  *(&dword_100D91049 + 3) = *&v20[3];
  dword_100D91049 = *v20;
  qword_100D91050 = 0;
  byte_100D91058 = 1;
  *(&dword_100D91059 + 3) = *&v19[3];
  dword_100D91059 = *v19;
  qword_100D91060 = 0;
  byte_100D91068 = 1;
  *(&dword_100D91069 + 3) = *&v18[3];
  dword_100D91069 = *v18;
  qword_100D91070 = 0;
  byte_100D91078 = 1;
  *(&dword_100D91079 + 3) = *&v17[3];
  dword_100D91079 = *v17;
  qword_100D91080 = 0;
  byte_100D91088 = 1;
  *(&dword_100D91089 + 3) = *&v16[3];
  dword_100D91089 = *v16;
  qword_100D91090 = 0;
  byte_100D91098 = 1;
  *(&dword_100D91099 + 3) = *&v15[3];
  dword_100D91099 = *v15;
  qword_100D910A0 = 0;
  byte_100D910A8 = 1;
  *(&dword_100D910A9 + 3) = *&v14[3];
  dword_100D910A9 = *v14;
  qword_100D910B0 = 0;
  byte_100D910B8 = 1;
  *(&dword_100D910B9 + 3) = *&v13[3];
  dword_100D910B9 = *v13;
  qword_100D910C0 = 0;
  word_100D910C8 = 256;
  word_100D910CE = v12;
  dword_100D910CA = v11;
  qword_100D910D0 = 0;
  unk_100D910D8 = 0;
  byte_100D910E0 = 1;
  *(&dword_100D910E1 + 3) = *&v10[3];
  dword_100D910E1 = *v10;
  qword_100D910E8 = 0;
  byte_100D910F0 = 1;
  *(&dword_100D910F1 + 3) = *&v9[3];
  dword_100D910F1 = *v9;
  qword_100D910F8 = 0;
  byte_100D91100 = 1;
  *(&dword_100D91101 + 3) = *&v8[3];
  dword_100D91101 = *v8;
  qword_100D91108 = 0;
  byte_100D91110 = 1;
  *(&dword_100D91111 + 3) = *&v7[3];
  dword_100D91111 = *v7;
  qword_100D91118 = 0;
  byte_100D91120 = 1;
  *(&dword_100D91121 + 3) = *&v6[3];
  dword_100D91121 = *v6;
  qword_100D91128 = 0;
  byte_100D91130 = 1;
  *(&dword_100D91131 + 3) = *&v5[3];
  dword_100D91131 = *v5;
  qword_100D91138 = 0;
  byte_100D91140 = 1;
  *(&dword_100D91141 + 3) = *&v4[3];
  dword_100D91141 = *v4;
  qword_100D91148 = 0;
  byte_100D91150 = 1;
  *(&dword_100D91151 + 3) = *&v3[3];
  dword_100D91151 = *v3;
  qword_100D91158 = 0;
  byte_100D91160 = 1;
  *(&dword_100D91161 + 3) = *&v2[3];
  dword_100D91161 = *v2;
  qword_100D91168 = 0;
  byte_100D91170 = 1;
  *(&dword_100D91171 + 3) = *&v1[3];
  dword_100D91171 = *v1;
  qword_100D91178 = 0;
  byte_100D91180 = 1;
  return result;
}

void sub_100858878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1008588C4(uint64_t a1)
{
  v2 = sub_10085B29C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100858900(uint64_t a1)
{
  v2 = sub_10085B29C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10085893C()
{
  sub_10000E8AC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10022C350(&qword_100CDEE18, &qword_100A8E138);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  sub_100003CF8();
  sub_1000161C0(v7, v7[3]);
  sub_10085B29C();
  sub_100020E58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000049E8();
  sub_100003CDC();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_10022C350(&qword_100CDEDB8, &qword_100A8E108);
    inited = swift_initStackObject();
    v13 = sub_100069B5C(inited, xmmword_100A2C3F0);
    v13[2].n128_u64[0] = v14;
    v13[2].n128_u64[1] = v15;
    v13[3].n128_u64[0] = v5;
    v13[3].n128_u64[1] = v3;

    Dictionary.init(dictionaryLiteral:)();
    sub_10022C350(&qword_100CDEDC0, &qword_100A8E110);
    sub_10085AFC8();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v10 + 8))(v1, v8);
  sub_100041B68();
  sub_10000C8F4();
}

uint64_t sub_100858B04()
{
  sub_10003BFB4();
  v3 = v3 && v2 == 0xE400000000000000;
  if (v3 || (v4 = v1, (sub_10004EBC4(1701869940) & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = v4 == 1635017060 && v0 == 0xE400000000000000;
    if (v6 || (sub_10004EBC4(1635017060) & 1) != 0)
    {

      return 1;
    }

    else if (v4 == 0x696669746E656469 && v0 == 0xEA00000000007265)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100858BF8(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 1635017060;
  }

  return 0x696669746E656469;
}

uint64_t sub_100858C68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100858B04();
  *a1 = result;
  return result;
}

uint64_t sub_100858C9C(uint64_t a1)
{
  v2 = sub_10085AC64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100858CD8(uint64_t a1)
{
  v2 = sub_10085AC64();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100858D14()
{
  sub_10000E8AC();
  v2 = sub_1000038D8();
  type metadata accessor for AutomationCellInfo(v2);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v27 = v5 - v4;
  v6 = sub_1000038CC();
  type metadata accessor for AutomationViewInfo(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v26 = v9 - v8;
  v10 = sub_1000038CC();
  type metadata accessor for AutomationInfo(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  sub_10022C350(&qword_100CDED58, &qword_100A8E0E0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v15);
  sub_100003CF8();
  sub_1000161C0(v0, v0[3]);
  sub_10085AC64();
  sub_100020E58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10085AE5C(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10085AD0C(v14, v26);
    LOBYTE(v28[0]) = 0;
    sub_100011874(2003134838, 0xE400000000000000, v28);
    if (!v1)
    {
      LOBYTE(v28[0]) = 1;
      sub_10085ADC0(&qword_100CDED78, type metadata accessor for AutomationViewInfo, byte_100A8E090);
      sub_100003CDC();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_1000068F4();
    }

    v17 = type metadata accessor for AutomationViewInfo;
    v18 = v26;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_10085AD0C(v14, v27);
    LOBYTE(v28[0]) = 0;
    sub_100011874(1819043171, 0xE400000000000000, v28);
    if (!v1)
    {
      LOBYTE(v28[0]) = 1;
      sub_10085ADC0(&qword_100CDED70, type metadata accessor for AutomationCellInfo, a1_35);
      sub_100003CDC();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_1000068F4();
    }

    v17 = type metadata accessor for AutomationCellInfo;
    v18 = v27;
LABEL_11:
    sub_10085AD68(v18, v17);
    goto LABEL_12;
  }

  v21 = *v14;
  v22 = *(v14 + 8);
  v23 = *(v14 + 16);
  LOBYTE(v28[0]) = 0;
  sub_100011874(0x6E656E6F706D6F63, 0xE900000000000074, v28);
  if (v1)
  {
    v24 = sub_100016548();
    v25(v24);
    sub_100576A4C(v21, v22, v23);
    goto LABEL_16;
  }

  v28[0] = v21;
  v28[1] = v22;
  v29 = v23;
  sub_1000168D0();
  sub_10085ACB8();
  sub_100003CDC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100576A4C(v21, v22, v23);
  sub_1000068F4();
LABEL_12:
  v19 = sub_100016548();
  v20(v19);
LABEL_16:
  sub_100041B68();
  sub_10000C8F4();
}

uint64_t sub_10085913C(uint64_t a1)
{
  v2 = sub_10085AE08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100859178(uint64_t a1)
{
  v2 = sub_10085AE08();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1008591B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  sub_1000038D8();
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v61 = v26;
  v62 = v25;
  __chkstk_darwin(v25);
  sub_1000037D8();
  v63 = v28 - v27;
  v29 = sub_1000038CC();
  type metadata accessor for AutomationViewInfo(v29);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_1000037D8();
  v33 = (v32 - v31);
  v34 = sub_10022C350(&qword_100CDED80, &qword_100A8E0E8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v35);
  sub_100003CF8();
  sub_1000161C0(v23, v23[3]);
  sub_10085AE08();
  sub_100020E58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10085AE5C(v23, v33);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v52 = *v33;
      v53 = v33[1];
      v54 = sub_100037304();
      sub_100024B10(v54 & 0xFFFFFFFFFFFFLL | 0x6553000000000000, 0xEF6E6F697463656CLL, v64);
      if (!v24)
      {
        v64[0] = v52;
        v64[1] = v53;
        sub_1000168D0();
        sub_10085AF74();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      goto LABEL_12;
    case 2u:
      (*(v61 + 32))(v63, v33, v62);
      LOBYTE(v64[0]) = 0;
      sub_100024B10(7364973, 0xE300000000000000, v64);
      if (!v24)
      {
        sub_10022C350(&qword_100CDED90, &qword_100A8E0F0);
        sub_10022C350(&qword_100CDED98, &qword_100A8E0F8);
        sub_1000243B8();
        v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_100A2C3F0;
        sub_100017F04((v58 + v57));
        (*(v61 + 16))(v59 + v60, v63, v62);
        v64[0] = Dictionary.init(dictionaryLiteral:)();
        sub_1000168D0();
        sub_10022C350(&qword_100CDEDA0, &qword_100A8E100);
        sub_10085AEB8();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      (*(v61 + 8))(v63, v62);
      v43 = sub_10000EE58();
      v55 = v34;
      goto LABEL_21;
    case 3u:
      v47 = *v33;
      v48 = v33[1];
      LOBYTE(v64[0]) = 0;
      sub_100024B10(v47, v48, v64);
      v49 = sub_10003066C();
      goto LABEL_13;
    case 4u:
      LOBYTE(v64[0]) = 0;
      v45 = 1953720684;
      v46 = 0xE400000000000000;
      goto LABEL_19;
    case 5u:
      v45 = sub_100037304();
      v46 = 0xE600000000000000;
      goto LABEL_19;
    case 6u:
      LOBYTE(v64[0]) = 0;
      v45 = 0x6163696669746F6ELL;
      v46 = 0xEC0000006E6F6974;
      goto LABEL_19;
    case 7u:
      LOBYTE(v64[0]) = 0;
      v45 = 0x6F4374726F706572;
      v51 = 0x6E7265636ELL;
      goto LABEL_18;
    case 8u:
      LOBYTE(v64[0]) = 0;
      v45 = 0x53657369726E7573;
      v51 = 0x7465736E75;
LABEL_18:
      v46 = v51 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      goto LABEL_19;
    case 9u:
      LOBYTE(v64[0]) = 0;
      v45 = 0x696C617551726961;
      v46 = 0xEA00000000007974;
      goto LABEL_19;
    case 0xAu:
      LOBYTE(v64[0]) = 0;
      v46 = 0x8000000100ABACA0;
      v45 = 0xD000000000000015;
LABEL_19:
      sub_100024B10(v45, v46, v64);
      v43 = sub_10003066C();
      goto LABEL_20;
    default:
      v36 = *v33;
      v37 = v33[1];
      LOBYTE(v64[0]) = 0;
      v38 = sub_1000049E8();
      sub_100024B10(v38, 0xE800000000000000, v64);
      if (v24)
      {
LABEL_12:
        v49 = sub_10000EE58();
LABEL_13:
        v50(v49, v34);
      }

      else
      {
        sub_10022C350(&qword_100CDEDB8, &qword_100A8E108);
        inited = swift_initStackObject();
        v40 = sub_100069B5C(inited, xmmword_100A2C3F0);
        v40[2].n128_u64[0] = v41;
        v40[2].n128_u64[1] = v42;
        v40[3].n128_u64[0] = v36;
        v40[3].n128_u64[1] = v37;
        v64[0] = Dictionary.init(dictionaryLiteral:)();
        sub_1000168D0();
        sub_10022C350(&qword_100CDEDC0, &qword_100A8E110);
        sub_10085AFC8();
        KeyedEncodingContainer.encode<A>(_:forKey:)();

        v43 = sub_10000EE58();
LABEL_20:
        v55 = v34;
LABEL_21:
        v44(v43, v55);
      }

      sub_100041B68();
      sub_10000C8F4();
      return;
  }
}

unint64_t sub_100859788(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45798, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1008597D4(char a1)
{
  if (!a1)
  {
    return sub_1000049E8();
  }

  if (a1 == 1)
  {
    return 0x697472417377656ELL;
  }

  return 0xD000000000000016;
}

uint64_t sub_10085984C(uint64_t a1)
{
  v2 = sub_10085B044();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100859888(uint64_t a1)
{
  v2 = sub_10085B044();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1008598E8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100859788(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100859918@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1008597D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_100859994()
{
  sub_10000E8AC();
  v2 = v1;
  v4 = v3;
  v17 = v5;
  v7 = v6;
  v8 = sub_10022C350(&qword_100CDEDD0, &qword_100A8E118);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  sub_100003CF8();
  sub_1000161C0(v7, v7[3]);
  sub_10085B044();
  sub_100020E58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v2)
  {
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
LABEL_8:
    (*(v10 + 8))(v0, v8);
    goto LABEL_9;
  }

  if (v2 != 1)
  {
    sub_10085B098();
    sub_100037E04();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    goto LABEL_8;
  }

  v12 = sub_10085B098();

  sub_100037E04();
  sub_100003CDC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v12)
  {
    sub_10022C350(&qword_100CDEDB8, &qword_100A8E108);
    inited = swift_initStackObject();
    v14 = sub_100014FF4(inited, xmmword_100A2C3F0);
    v14[2].n128_u64[0] = v15;
    v14[2].n128_u64[1] = v16;
    v14[3].n128_u64[0] = v17;
    v14[3].n128_u64[1] = v4;
    Dictionary.init(dictionaryLiteral:)();
    sub_1000168D0();
    sub_10022C350(&qword_100CDEDC0, &qword_100A8E110);
    sub_10085AFC8();
    sub_100037E04();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    goto LABEL_8;
  }

  (*(v10 + 8))(v0, v8);
  sub_100576A4C(v17, v4, 1u);
LABEL_9:
  sub_100041B68();
  sub_10000C8F4();
}

uint64_t sub_100859C00()
{
  sub_10003BFB4();
  v3 = v3 && v2 == 0xE400000000000000;
  if (v3 || (v4 = v1, (sub_10004EBC4(1701869940) & 1) != 0))
  {

    return 0;
  }

  else if (v4 == 1635017060 && v0 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_10004EBC4(1635017060);

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100859CA4(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 1701869940;
  }
}

unint64_t sub_100859CC4(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100859D18()
{
  result = sub_1000049E8();
  switch(v1)
  {
    case 1:
      result = 1684957559;
      break;
    case 2:
      result = 0x726F46796C696164;
      break;
    case 3:
      result = 0x6F46796C72756F68;
      break;
    case 4:
      result = 0x79746964696D7568;
      break;
    case 5:
      result = 0x6572757373657270;
      break;
    case 6:
      result = 0x7865646E497675;
      break;
    case 7:
      v2 = 0x696269736976;
      goto LABEL_14;
    case 8:
      result = 0x6557657265766573;
      break;
    case 9:
      v2 = 0x617551726961;
LABEL_14:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x696C000000000000;
      break;
    case 10:
      result = 0x6B694C736C656566;
      break;
    case 11:
      result = sub_100075110();
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = sub_10002C588();
      break;
    case 15:
      result = 0x6F697469646E6F63;
      break;
    case 16:
      result = 0x74617265706D6574;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0x6E6F43726568746FLL;
      break;
    case 19:
      result = 0x7470697263736564;
      break;
    case 20:
      result = 0x656C6369747261;
      break;
    case 21:
      result = 0x68436C6961746564;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0xD000000000000014;
      break;
    case 24:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100859FF0(uint64_t a1)
{
  v2 = sub_10085B0EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10085A02C(uint64_t a1)
{
  v2 = sub_10085B0EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10085A08C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100859CC4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10085A0BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100859D18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_10085A138()
{
  sub_10000E8AC();
  v118 = v1;
  sub_1000038D8();
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v116 = v2;
  v117 = v3;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = sub_1000038CC();
  type metadata accessor for AutomationCellInfo(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = (v10 - v9);
  v121 = sub_10022C350(&qword_100CDEDE8, &qword_100A8E120);
  sub_1000037C4();
  v119 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v114 - v14;
  sub_1000161C0(v0, v0[3]);
  sub_10085B0EC();
  v120 = v15;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10085AE5C(v0, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v17 = *v11;
      v16 = v11[1];
      v53 = sub_100020C10(8);
      sub_10001CF28(v53, v54, v55, &type metadata for AutomationCellInfo.AutomationInfoKind, v53);
      if (v1)
      {
        goto LABEL_41;
      }

      if (!v16)
      {
        goto LABEL_61;
      }

      goto LABEL_29;
    case 2u:
      v17 = *v11;
      v16 = v11[1];
      v45 = sub_100020C10(12);
      sub_10001CF28(v45, v46, v47, &type metadata for AutomationCellInfo.AutomationInfoKind, v45);
      if (v1)
      {
        goto LABEL_41;
      }

      if (v16)
      {
        goto LABEL_29;
      }

      goto LABEL_61;
    case 3u:
      v17 = *v11;
      v16 = v11[1];
      v48 = sub_100020C10(13);
      sub_10001CF28(v48, v49, v50, &type metadata for AutomationCellInfo.AutomationInfoKind, v48);
      if (v1)
      {
        goto LABEL_41;
      }

      if (!v16)
      {
        goto LABEL_61;
      }

LABEL_29:
      sub_10022C350(&qword_100CDEDB8, &qword_100A8E108);
      inited = swift_initStackObject();
      v57 = sub_100014FF4(inited, xmmword_100A2C3F0);
      goto LABEL_60;
    case 4u:
      v17 = *v11;
      v16 = v11[1];
      v31 = sub_100020C10(3);
      sub_10001CF28(v31, v32, v33, &type metadata for AutomationCellInfo.AutomationInfoKind, v31);
      if (!v1)
      {
        goto LABEL_33;
      }

      goto LABEL_41;
    case 5u:
      v17 = *v11;
      v16 = v11[1];
      v60 = sub_100020C10(2);
      sub_10001CF28(v60, v61, v62, &type metadata for AutomationCellInfo.AutomationInfoKind, v60);
      if (!v1)
      {
        goto LABEL_33;
      }

      goto LABEL_41;
    case 6u:
      v65 = v116;
      v64 = v117;
      (*(v117 + 32))(v6, v11, v116);
      sub_100020C10(14);
      sub_100028C6C();
      v66 = v121;
      v67 = v118;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v67)
      {
        (*(v64 + 8))(v6, v65);
        goto LABEL_38;
      }

      sub_10022C350(&qword_100CDED90, &qword_100A8E0F0);
      sub_10022C350(&qword_100CDED98, &qword_100A8E0F8);
      sub_1000243B8();
      v103 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_100A2C3F0;
      sub_100017F04((v104 + v103));
      (*(v64 + 16))(v105 + v106, v6, v65);
      v15 = v121;
      v107 = Dictionary.init(dictionaryLiteral:)();
      sub_100009140(v107);
      sub_10022C350(&qword_100CDEDA0, &qword_100A8E100);
      sub_10085AEB8();
      sub_100028C6C();
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      (*(v117 + 8))(v6, v65);
      goto LABEL_61;
    case 7u:
      v51 = v11[1];
      if (v51)
      {
        v52 = *v11 == 11565 && v51 == 0xE200000000000000;
        if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v21 = 17;
LABEL_48:
          sub_100020C10(v21);
          sub_100028C6C();
          v88 = v121;
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          v68 = sub_100010DCC();
          v70 = v88;
          goto LABEL_49;
        }
      }

      sub_100020C10(16);
      sub_100028C6C();
      v66 = v121;
      v89 = v118;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v89)
      {
        if (!v51)
        {
LABEL_38:
          v68 = sub_100010DCC();
          v70 = v66;
          goto LABEL_49;
        }

        v122[0] = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      v90 = sub_100010DCC();
      v91(v90, v66);
      goto LABEL_42;
    case 8u:
      v76 = v11[1];
      v117 = *v11;
      v78 = v11[2];
      v77 = v11[3];
      v80 = v11[4];
      v79 = v11[5];
      sub_100020C10(20);
      v81 = sub_100028C6C();
      sub_100030100(v81, v82, v83, v84, v85);
      if (v1)
      {
        v86 = sub_100010DCC();
        v87(v86, v11);

        goto LABEL_42;
      }

      v115 = v80;
      v116 = v77;
      v118 = v79;
      v109 = v117;
      v114 = v78;
      if (v76)
      {
        sub_10022C350(&qword_100CDEE00, &qword_100A8E128);
        v110 = swift_initStackObject();
        *(v110 + 16) = xmmword_100A3BBA0;
        *(v110 + 32) = 0x696669746E656469;
        *(v110 + 40) = 0xEA00000000007265;
        *(v110 + 48) = v109;
        *(v110 + 56) = v76;
        *(v110 + 64) = 0x656C746974;
        *(v110 + 72) = 0xE500000000000000;
        v111 = v116;
        *(v110 + 80) = v114;
        *(v110 + 88) = v111;
        *(v110 + 96) = 0x4E6C656E6E616863;
        *(v110 + 104) = 0xEB00000000656D61;
        v112 = v118;
        *(v110 + 112) = v115;
        *(v110 + 120) = v112;
        sub_10022C350(&qword_100CA6078, &unk_100A30870);
        v113 = Dictionary.init(dictionaryLiteral:)();
        sub_100009140(v113);
        sub_10022C350(&qword_100CDEE08, &qword_100A8E130);
        sub_10085B194();
        sub_100028C6C();
        goto LABEL_64;
      }

      (*(v119 + 8))(v120, v11);

      goto LABEL_42;
    case 9u:
      v35 = *v11;
      v34 = v11[1];
      v37 = v11[2];
      v36 = v11[3];
      sub_100020C10(22);
      v38 = sub_100028C6C();
      sub_100030100(v38, v39, v40, v41, v42);
      if (v1)
      {
        goto LABEL_12;
      }

      sub_10022C350(&qword_100CDEE00, &qword_100A8E128);
      v97 = swift_initStackObject();
      v98 = sub_100014FF4(v97, xmmword_100A2D320);
      v98[2].n128_u64[0] = v99;
      v98[2].n128_u64[1] = v100;
      v98[3].n128_u64[0] = v35;
      v98[3].n128_u64[1] = v34;
      v98[4].n128_u64[0] = 0x656C746974627573;
      v98[4].n128_u64[1] = 0xE800000000000000;
      v98[5].n128_u64[0] = v37;
      v98[5].n128_u64[1] = v36;
      sub_10022C350(&qword_100CA6078, &unk_100A30870);
      v101 = Dictionary.init(dictionaryLiteral:)();
      sub_100009140(v101);
      sub_10022C350(&qword_100CDEE08, &qword_100A8E130);
      sub_10085B194();
      goto LABEL_57;
    case 0xAu:
      v17 = *v11;
      v16 = v11[1];
      v71 = sub_100020C10(23);
      sub_10001CF28(v71, v72, v73, &type metadata for AutomationCellInfo.AutomationInfoKind, v71);
      if (v1)
      {
        goto LABEL_41;
      }

      sub_10022C350(&qword_100CDEDB8, &qword_100A8E108);
      v57 = swift_initStackObject();
      *(v57 + 16) = xmmword_100A2C3F0;
      v58 = 0x64657463656C6573;
      v59 = 0xEC00000065746144;
      goto LABEL_60;
    case 0xBu:
      v23 = *v11;
      v22 = v11[1];
      v25 = v11[2];
      v24 = v11[3];
      sub_100020C10(24);
      v26 = sub_100028C6C();
      sub_100030100(v26, v27, v28, v29, v30);
      if (v1)
      {
LABEL_12:
        v43 = sub_100010DCC();
        v44(v43, v11);

        goto LABEL_42;
      }

      sub_10022C350(&qword_100CDEDB8, &qword_100A8E108);
      v92 = swift_initStackObject();
      v93 = sub_100014FF4(v92, xmmword_100A2D320);
      v93[2].n128_u64[0] = v94;
      v93[2].n128_u64[1] = v95;
      v93[3].n128_u64[0] = v23;
      v93[3].n128_u64[1] = v22;
      v93[4].n128_u64[0] = 1954047348;
      v93[4].n128_u64[1] = 0xE400000000000000;
      v93[5].n128_u64[0] = v25;
      v93[5].n128_u64[1] = v24;
      v96 = Dictionary.init(dictionaryLiteral:)();
      sub_100009140(v96);
      sub_10022C350(&qword_100CDEDC0, &qword_100A8E110);
      sub_10085AFC8();
LABEL_57:
      sub_100028C6C();
LABEL_64:
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      v68 = sub_100010DCC();
      v70 = v11;
      goto LABEL_49;
    case 0xCu:
      v21 = 1;
      goto LABEL_48;
    case 0xDu:
      v21 = 4;
      goto LABEL_48;
    case 0xEu:
      v21 = 5;
      goto LABEL_48;
    case 0xFu:
      v21 = 6;
      goto LABEL_48;
    case 0x10u:
      v21 = 7;
      goto LABEL_48;
    case 0x11u:
      v21 = 9;
      goto LABEL_48;
    case 0x12u:
      v21 = 10;
      goto LABEL_48;
    case 0x13u:
      v21 = 11;
      goto LABEL_48;
    case 0x14u:
      v21 = 15;
      goto LABEL_48;
    case 0x15u:
      v21 = 18;
      goto LABEL_48;
    case 0x16u:
      v21 = 19;
      goto LABEL_48;
    case 0x17u:
      v21 = 21;
      goto LABEL_48;
    default:
      v17 = *v11;
      v16 = v11[1];
      v122[0] = 0;
      v18 = sub_10085B140();
      sub_10001CF28(v18, v19, v20, &type metadata for AutomationCellInfo.AutomationInfoKind, v18);
      if (v1)
      {
LABEL_41:
        v74 = sub_100010DCC();
        v75(v74, v15);
LABEL_42:
      }

      else
      {
LABEL_33:
        sub_10022C350(&qword_100CDEDB8, &qword_100A8E108);
        v63 = swift_initStackObject();
        v57 = sub_100069B5C(v63, xmmword_100A2C3F0);
LABEL_60:
        *(v57 + 32) = v58;
        *(v57 + 40) = v59;
        *(v57 + 48) = v17;
        *(v57 + 56) = v16;
        v108 = Dictionary.init(dictionaryLiteral:)();
        sub_100009140(v108);
        sub_10022C350(&qword_100CDEDC0, &qword_100A8E110);
        sub_10085AFC8();
        sub_100028C6C();
        KeyedEncodingContainer.encode<A>(_:forKey:)();

LABEL_61:
        v68 = sub_100010DCC();
        v70 = v15;
LABEL_49:
        v69(v68, v70);
      }

      sub_10000C8F4();
      return;
  }
}