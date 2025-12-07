uint64_t SettingsControlSliderView.body.getter()
{
  v0 = sub_16F8(&qword_100C0, &qword_7B30);
  sub_7138(v0);
  sub_6FE8();
  __chkstk_darwin(v1);
  type metadata accessor for ViewData(0);
  sub_4ADC();
  sub_16F8(&qword_100C8, &qword_7B38);
  sub_5B20(&qword_100D0, &qword_100C8, &qword_7B38, &protocol conformance descriptor for VStack<A>);
  return sub_7564();
}

uint64_t sub_16F8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1740@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_7474();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_16F8(&qword_10490, &qword_7EB8);
  return sub_17E0(v3, a1 + *(v4 + 44));
}

uint64_t sub_1798(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_17E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = type metadata accessor for ViewData(0);
  v4 = sub_7138(v3);
  __chkstk_darwin(v4);
  sub_6FC4();
  v76 = v6 - v5;
  v84 = type metadata accessor for SettingsSliderView(0);
  sub_6F84();
  __chkstk_darwin(v7);
  sub_6FC4();
  v78 = v9 - v8;
  v87 = sub_16F8(&qword_10498, &qword_7EC0);
  sub_6F70();
  v83 = v10;
  sub_6FE8();
  __chkstk_darwin(v11);
  v79 = &v72 - v12;
  v85 = sub_16F8(&qword_104A0, &qword_7EC8);
  sub_6F70();
  v82 = v13;
  sub_6FE8();
  __chkstk_darwin(v14);
  v77 = &v72 - v15;
  sub_16F8(&qword_104A8, &qword_7ED0);
  sub_6F70();
  v88 = v17;
  v89 = v16;
  __chkstk_darwin(v16);
  sub_6FD4();
  v86 = v18;
  sub_72C0();
  __chkstk_darwin(v19);
  v81 = &v72 - v20;
  v21 = sub_16F8(&qword_100F0, &qword_7B40);
  sub_7138(v21);
  sub_6FE8();
  __chkstk_darwin(v22);
  v24 = &v72 - v23;
  v25 = sub_16F8(&qword_104B0, &qword_7ED8);
  sub_6F70();
  v72 = v26;
  sub_6FE8();
  __chkstk_darwin(v27);
  v29 = &v72 - v28;
  v30 = sub_16F8(&qword_104B8, &qword_7EE0);
  sub_6F70();
  v73 = v31;
  sub_6FE8();
  __chkstk_darwin(v32);
  v34 = &v72 - v33;
  v35 = sub_16F8(&qword_104C0, &qword_7EE8);
  sub_6F70();
  v74 = v36;
  sub_6FE8();
  __chkstk_darwin(v37);
  v39 = &v72 - v38;
  v40 = sub_16F8(&qword_104C8, &qword_7EF0);
  v41 = sub_7138(v40);
  __chkstk_darwin(v41);
  sub_6FD4();
  v75 = v42;
  sub_72C0();
  v44 = __chkstk_darwin(v43);
  v46 = &v72 - v45;
  __chkstk_darwin(v44);
  v48 = &v72 - v47;
  v80 = a1;
  sub_4ADC();
  v49 = sub_7354();
  if (sub_4FEC(v24, 1, v49) == 1)
  {
    sub_6C08(v24, &qword_100F0, &qword_7B40);
    v50 = 1;
  }

  else
  {
    sub_7344();
    (*(*(v49 - 8) + 8))(v24, v49);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_7494();
    (*(v72 + 8))(v29, v25);
    v91 = v25;
    v92 = OpaqueTypeConformance2;
    v52 = sub_70E0();
    sub_74E4();
    (*(v73 + 8))(v34, v30);
    v91 = v30;
    v92 = v52;
    sub_70B4();
    sub_74C4();
    (*(v74 + 8))(v39, v35);
    v50 = 0;
  }

  v53 = sub_16F8(&qword_104D0, &qword_7EF8);
  sub_4AB4(v46, v50, 1, v53);
  sub_6C60();
  sub_6F94();
  v54 = v76;
  sub_4C24();
  SettingsSliderView.init(model:)(v54);
  v55 = sub_31AC(&qword_104D8, type metadata accessor for SettingsSliderView, &protocol conformance descriptor for SettingsSliderView);
  v56 = v79;
  v57 = v84;
  sub_7494();
  sub_6CC0();
  v91 = v57;
  v92 = v55;
  v58 = sub_70E0();
  v59 = v77;
  v60 = v87;
  sub_74E4();
  (*(v83 + 8))(v56, v60);
  v91 = v60;
  v92 = v58;
  sub_70B4();
  v61 = v81;
  v62 = v85;
  sub_74C4();
  (*(v82 + 8))(v59, v62);
  v63 = v75;
  sub_6D14();
  v65 = v88;
  v64 = v89;
  v66 = *(v88 + 16);
  v67 = v86;
  v66(v86, v61, v89);
  v68 = v90;
  sub_6D14();
  v69 = sub_16F8(&qword_104E0, &qword_7F00);
  v66(v68 + *(v69 + 48), v67, v64);
  v70 = *(v65 + 8);
  v70(v61, v64);
  sub_6D74(v48);
  v70(v67, v64);
  return sub_6D74(v63);
}

void SettingsSliderView.init(model:)(uint64_t a1)
{
  sub_7220();
  v51 = v1;
  v3 = v2;
  v4 = type metadata accessor for ViewData(0);
  sub_6F84();
  __chkstk_darwin(v5);
  sub_6FD4();
  v53 = v6;
  sub_72C0();
  __chkstk_darwin(v7);
  v52 = &v49 - v8;
  v9 = sub_73F4();
  sub_6F70();
  v50 = v10;
  __chkstk_darwin(v11);
  sub_6FC4();
  v14 = v13 - v12;
  sub_65C8(0, &qword_100D8, OS_os_log_ptr);
  *v3 = sub_7194();
  v15 = type metadata accessor for SettingsSliderView(0);
  v16 = (v3 + v15[9]);
  sub_75B4();
  sub_703C();
  sub_31AC(v17, v18, &protocol conformance descriptor for Context);
  *v16 = sub_7454();
  v16[1] = v19;
  v20 = (v3 + v15[10]);
  sub_7594();
  sub_7024();
  sub_31AC(v21, v22, &protocol conformance descriptor for Form);
  *v20 = sub_7454();
  v20[1] = v23;
  v24 = v15[11];
  v25 = sub_7194();
  *(v3 + v24) = v25;
  v26 = v9;
  v27 = v50;
  v28 = v51;
  v29 = *(v50 + 16);
  v29(v14, v51 + v4[8], v26);
  v30 = v3 + v15[5];
  v54 = v26;
  v29(v30, v14, v26);
  v31 = (v28 + v4[6]);
  v32 = *v31;
  v33 = v31[1];
  v34 = (v3 + v15[6]);
  *v34 = v32;
  v34[1] = v33;
  *(v3 + v15[7]) = *(v28 + v4[7]);
  v35 = v25;

  v36 = sub_73A4();
  if (v37)
  {
    sub_73E4();
    v39 = v38;
  }

  else
  {
    v39 = v36;
  }

  v40 = (v3 + v15[8]);
  *v40 = v39;
  v40[1] = 0;
  v41 = sub_75F4();
  sub_6FAC();
  sub_4C24();
  sub_4C24();
  if (os_log_type_enabled(v35, v41))
  {
    v42 = sub_72EC();
    v49 = v35;
    v43 = v42;
    *v42 = 134218496;
    sub_73E4();
    v45 = v44;
    sub_6CC0();
    *(v43 + 4) = v45;
    *(v43 + 12) = 2048;
    sub_73D4();
    v47 = v46;
    sub_6CC0();
    *(v43 + 14) = v47;
    *(v43 + 22) = 2048;
    *(v43 + 24) = v39;
    v48 = v49;
    _os_log_impl(&dword_0, v49, v41, "[SettingsSliderView] Slider initialize with min: %f, max: %f, initialValue: %f", v43, 0x20u);
    sub_71EC(v43);
  }

  else
  {

    sub_6FAC();
    sub_6CC0();
    sub_6CC0();
  }

  sub_709C();
  sub_6CC0();
  (*(v27 + 8))(v14, v54);
  sub_7204();
}

uint64_t variable initialization expression of ViewData.text1()
{
  sub_7248();
  sub_7354();
  v0 = sub_71CC();

  return sub_4AB4(v0, v1, 1, v2);
}

uint64_t variable initialization expression of ViewData.action()
{
  sub_7248();
  sub_7364();
  v0 = sub_71CC();

  return sub_4AB4(v0, v1, 1, v2);
}

uint64_t ViewData.action.getter()
{
  v0 = sub_7248();
  type metadata accessor for ViewData(v0);
  return sub_4ADC();
}

uint64_t ViewData.action.setter()
{
  v0 = sub_7280();
  type metadata accessor for ViewData(v0);
  return sub_4B34();
}

void (*ViewData.action.modify())()
{
  v0 = sub_7280();
  type metadata accessor for ViewData(v0);
  return nullsub_1;
}

uint64_t ViewData.sliderModel.getter()
{
  v2 = sub_7248();
  v3 = *(type metadata accessor for ViewData(v2) + 32);
  sub_73F4();
  sub_6F84();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t sub_2604()
{
  sub_7188();
  v3 = v1 == 0x3174786574 && v2 == 0xE500000000000000;
  if (v3 || (sub_7158(0x3174786574) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6E6F69746361 && v0 == 0xE600000000000000;
    if (v5 || (sub_7158(0x6E6F69746361) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = v1 == 0xD000000000000010 && 0x80000000000085C0 == v0;
      if (v6 || (sub_7158(0xD000000000000010) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v7 = v1 == 0xD000000000000010 && 0x80000000000085E0 == v0;
        if (v7 || (sub_7158(0xD000000000000010) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v8 = sub_7254();
          if (v1 == v8 && v0 == v9)
          {

            return 4;
          }

          else
          {
            v11 = sub_7158(v8);

            if (v11)
            {
              return 4;
            }

            else
            {
              return 5;
            }
          }
        }
      }
    }
  }
}

Swift::Int sub_2790(unsigned __int8 a1)
{
  sub_7774();
  sub_7784(a1);
  return sub_7794();
}

uint64_t sub_27D8(char a1)
{
  result = 0x3174786574;
  switch(a1)
  {
    case 1:
      result = 0x6E6F69746361;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = sub_7254();
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_289C(uint64_t a1)
{
  v2 = *v1;
  sub_7774();
  sub_7784(v2);
  return sub_7794();
}

uint64_t sub_28E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2604();
  *a1 = result;
  return result;
}

uint64_t sub_2928(uint64_t a1)
{
  v2 = sub_4BD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2964(uint64_t a1)
{
  v2 = sub_4BD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ViewData.encode(to:)(void *a1)
{
  sub_16F8(&qword_100F8, &qword_7B48);
  sub_6F70();
  sub_6FE8();
  __chkstk_darwin(v3);
  sub_723C();
  sub_4B8C(a1, a1[3]);
  sub_4BD0();
  sub_77B4();
  sub_7354();
  sub_7084();
  sub_31AC(v4, v5, &protocol conformance descriptor for TextProperty);
  sub_7144();
  sub_76D4();
  if (!v1)
  {
    type metadata accessor for ViewData(0);
    sub_7364();
    sub_706C();
    sub_31AC(v6, v7, &protocol conformance descriptor for ActionProperty);
    sub_7144();
    sub_76D4();
    sub_76E4();
    sub_76F4();
    sub_73F4();
    sub_7054();
    sub_31AC(v8, v9, &protocol conformance descriptor for Slider);
    sub_7144();
    sub_7704();
  }

  v10 = sub_7274();
  return v11(v10);
}

uint64_t ViewData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v42 = sub_73F4();
  sub_6F70();
  v39 = v4;
  __chkstk_darwin(v5);
  sub_6FC4();
  v41 = v7 - v6;
  v8 = sub_16F8(&qword_100C0, &qword_7B30);
  sub_7138(v8);
  sub_6FE8();
  __chkstk_darwin(v9);
  v10 = sub_16F8(&qword_100F0, &qword_7B40);
  sub_7138(v10);
  sub_6FE8();
  __chkstk_darwin(v11);
  v46 = sub_16F8(&qword_10118, &qword_7B50);
  sub_6F70();
  v43 = v12;
  sub_6FE8();
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for ViewData(0);
  sub_6F84();
  __chkstk_darwin(v17);
  sub_6FC4();
  sub_723C();
  v18 = sub_7354();
  sub_4AB4(v2, 1, 1, v18);
  v44 = v16;
  v19 = *(v16 + 20);
  v20 = sub_7364();
  v48 = v19;
  sub_4AB4(v2 + v19, 1, 1, v20);
  v21 = a1[3];
  v49 = a1;
  sub_4B8C(a1, v21);
  sub_4BD0();
  v45 = v15;
  v22 = v47;
  sub_77A4();
  if (v22)
  {
    v26 = v48;
    sub_67CC(v49);
    sub_6C08(v2, &qword_100F0, &qword_7B40);
    return sub_6C08(v2 + v26, &qword_100C0, &qword_7B30);
  }

  else
  {
    v23 = v43;
    v54 = 0;
    sub_7084();
    sub_31AC(v24, v25, &protocol conformance descriptor for TextProperty);
    sub_7694();
    sub_4B34();
    v53 = 1;
    sub_706C();
    sub_31AC(v27, v28, &protocol conformance descriptor for ActionProperty);
    sub_7694();
    sub_4B34();
    v52 = 2;
    v29 = sub_76A4();
    v30 = v44;
    v31 = (v2 + *(v44 + 24));
    *v31 = v29;
    v31[1] = v32;
    v51 = 3;
    *(v2 + *(v30 + 28)) = sub_76B4();
    v50 = 4;
    sub_7054();
    sub_31AC(v33, v34, &protocol conformance descriptor for Slider);
    v36 = v41;
    v35 = v42;
    sub_76C4();
    (*(v23 + 8))(v45, v46);
    (*(v39 + 32))(v2 + *(v30 + 32), v36, v35);
    sub_4C24();
    sub_67CC(v49);
    sub_7274();
    return sub_6CC0();
  }
}

uint64_t sub_31AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_3220()
{
  sub_7774();
  sub_7784(0);
  return sub_7794();
}

Swift::Int sub_326C(uint64_t a1)
{
  sub_7774();
  sub_7784(0);
  return sub_7794();
}

uint64_t sub_32BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a2;
  v16 = a1;
  v5 = type metadata accessor for SettingsControlSliderView(0);
  sub_6F84();
  __chkstk_darwin(v6);
  sub_6FC4();
  sub_723C();
  v7 = sub_16F8(&qword_10418, &qword_7E78);
  sub_7138(v7);
  sub_6FE8();
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for ViewData(0);
  sub_6F84();
  __chkstk_darwin(v12);
  sub_6FC4();
  sub_7324();
  swift_allocObject();
  sub_7314();
  sub_31AC(&qword_10420, type metadata accessor for ViewData, &protocol conformance descriptor for ViewData);
  sub_7304();
  if (v4)
  {

    sub_4AB4(v10, 1, 1, v11);
    sub_6C08(v10, &qword_10418, &qword_7E78);
    sub_5E1C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {

    sub_4AB4(v10, 0, 1, v11);
    sub_6F94();
    sub_4C80();
    v13 = v16 == 0xD000000000000014 && 0x8000000000008600 == v17;
    if (v13 || (sub_7714() & 1) != 0)
    {
      sub_6FAC();
      sub_4C24();
      sub_31AC(&qword_10430, type metadata accessor for SettingsControlSliderView, &protocol conformance descriptor for SettingsControlSliderView);
      sub_7274();
      v5 = sub_7544();
      sub_6CC0();
    }

    else
    {
      sub_5E1C();
      swift_allocError();
      swift_willThrow();
      sub_709C();
      sub_6CC0();
    }
  }

  return v5;
}

uint64_t sub_35E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_35D0();
  *a1 = result;
  return result;
}

uint64_t sub_363C(uint64_t (*a1)(void))
{
  a1(0);

  return sub_717C();
}

uint64_t sub_3770(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  a1(0);
  sub_31AC(a2, a3, a4);

  return sub_7454();
}

void SettingsSliderView.body.getter(uint64_t a1, uint64_t a2)
{
  sub_7220();
  v4 = sub_7248();
  v5 = type metadata accessor for SettingsSliderView(v4);
  __chkstk_darwin(v5);
  sub_3A64(v3);
  sub_16F8(&qword_10138, &qword_7B58);
  sub_7504();
  sub_4C24();
  v6 = swift_allocObject();
  sub_4C80();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_4CD8;
  *(v7 + 24) = v6;
  v8 = (v2 + *(sub_16F8(&qword_10140, &qword_7B60) + 36));
  *v8 = v11;
  v8[1] = sub_4D78;
  v8[2] = v7;
  sub_4C24();
  v9 = swift_allocObject();
  sub_4C80();
  v10 = (v2 + *(sub_16F8(&qword_10148, &qword_7B68) + 36));
  *v10 = sub_4EC4;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  sub_7204();
}

void sub_3A64(uint64_t a1)
{
  sub_7220();
  v2 = v1;
  v4 = v3;
  v35[4] = sub_16F8(&qword_10458, &qword_7E98);
  sub_6F84();
  sub_6FE8();
  __chkstk_darwin(v5);
  v36 = v35 - v6;
  v35[2] = sub_16F8(&qword_10460, &qword_7EA0);
  sub_6F84();
  __chkstk_darwin(v7);
  sub_6FD4();
  v35[3] = v8;
  sub_72C0();
  __chkstk_darwin(v9);
  v10 = sub_16F8(&qword_10400, &qword_7D20);
  sub_6F70();
  v12 = v11;
  sub_6FE8();
  __chkstk_darwin(v13);
  v15 = v35 - v14;
  v16 = type metadata accessor for SettingsSliderView(0);
  v17 = sub_73C4();
  v18 = (v2 + *(v16 + 32));
  v19 = *v18;
  v20 = v18[1];
  if (v21)
  {
    v41 = v19;
    v42 = v20;
    sub_16F8(&qword_10138, &qword_7B58);
    sub_7514();
    v22 = v38;
    v23 = v39;
    v24 = v40;
    sub_73E4();
    v26 = v25;
    sub_73D4();
    if (v26 <= v27)
    {
      v38 = v22;
      v39 = v23;
      v40 = v24;
      v41 = v26;
      v42 = v27;
      sub_710C();
      sub_6FF4();
      sub_6A8C();
      sub_6BB4();
      sub_7524();
LABEL_6:
      (*(v12 + 16))(v36, v15, v10);
      swift_storeEnumTagMultiPayload();
      sub_5B20(&qword_103F8, &qword_10400, &qword_7D20, &protocol conformance descriptor for Slider<A, B>);
      sub_7484();
      (*(v12 + 8))(v15, v10);
      sub_7204();
      return;
    }

    __break(1u);
  }

  else
  {
    v28 = v17;
    v35[1] = v4;
    v41 = v19;
    v42 = v20;
    sub_16F8(&qword_10138, &qword_7B58);
    sub_7514();
    v29 = v38;
    v30 = v39;
    v31 = v40;
    sub_73E4();
    v33 = v32;
    sub_73D4();
    if (v33 <= v34)
    {
      v38 = v29;
      v39 = v30;
      v40 = v31;
      v41 = v33;
      v42 = v34;
      v37 = v28;
      sub_710C();
      sub_6FF4();
      sub_6A8C();
      sub_6BB4();
      sub_7534();
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_3E7C()
{
  v1 = sub_7334();
  sub_6F70();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_6FC4();
  v7 = v6 - v5;
  v8 = *(v0 + *(type metadata accessor for SettingsSliderView(0) + 36));
  if (v8)
  {
    v9 = v8;
    sub_75A4();

    sub_7604();
    result = (*(v3 + 88))(v7, v1);
    if (result != enum case for _ProtoIdiom.watch(_:))
    {
      return (*(v3 + 8))(v7, v1, 20.0);
    }
  }

  else
  {
    sub_75B4();
    sub_703C();
    v13 = sub_31AC(v11, v12, &protocol conformance descriptor for Context);
    result = sub_72CC(v13);
    __break(1u);
  }

  return result;
}

uint64_t sub_3FD8@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_16F8(&qword_10488, &qword_7EB0);
  sub_7138(v5);
  sub_6FE8();
  __chkstk_darwin(v6);
  sub_723C();
  type metadata accessor for SettingsSliderView(0);
  a1();
  v7 = sub_7384();
  if (sub_4FEC(v2, 1, v7) == 1)
  {
    sub_6C08(v2, &qword_10488, &qword_7EB0);
    sub_16F8(&qword_10478, &qword_7EA8);
    v8 = sub_71CC();
  }

  else
  {
    sub_7374();
    (*(*(v7 - 8) + 8))(v2, v7);
    sub_3E7C();
    sub_3E7C();
    sub_7554();
    sub_7434();
    v10 = sub_16F8(&qword_10478, &qword_7EA8);
    v11 = (a2 + *(v10 + 36));
    *v11 = v13;
    v11[1] = v14;
    v11[2] = v15;
    v8 = a2;
    v9 = 0;
  }

  return sub_4AB4(v8, v9, 1, v10);
}

void sub_4180(uint64_t a1, uint64_t a2)
{
  sub_7220();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for SettingsSliderView(0);
  sub_6F70();
  v44 = v7;
  __chkstk_darwin(v8);
  v45 = v9;
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_73B4();
  *&v50 = sub_7394();
  *(&v50 + 1) = v11;
  sub_7654();
  v51 = &type metadata for Double;
  *&v50 = v5;
  sub_5E70(&v50, v49);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v10;
  sub_6434(v49, v52, isUniquelyReferenced_nonNull_native);
  v43 = v48;
  sub_6574(v52);
  v13 = *(v2 + v6[7]);
  v14 = objc_allocWithZone(INSettingDevice);
  v15 = sub_492C(0, 0, 0, 0, v13);
  v16 = [objc_allocWithZone(NSNumber) initWithDouble:v5];
  v17 = objc_allocWithZone(INNumericSettingValue);
  v42 = v16;
  v18 = [v17 initWithValue:v16 unit:1];
  v19 = sub_75F4();
  v20 = *(v3 + v6[11]);
  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 134218242;
    *(v21 + 4) = v5;
    *(v21 + 12) = 2112;
    *(v21 + 14) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_0, v20, v19, "[updateForm] Slider update to new value %f, inNumbericSettingValue: %@.", v21, 0x16u);
    sub_6C08(v22, &qword_10440, &qword_7E80);
    sub_71EC(v22);
    sub_71EC(v21);
  }

  v24 = (v3 + v6[6]);
  v25 = *v24;
  v26 = v24[1];
  v47 = v18;
  v27 = v15;
  v28 = sub_75F4();
  if (os_log_type_enabled(v20, v28))
  {
    v29 = sub_72EC();
    v30 = swift_slowAlloc();
    v31 = sub_72EC();
    v52[0] = v31;
    *v29 = 136315650;
    *(v29 + 4) = sub_5E80(v25, v26, v52);
    *(v29 + 12) = 2048;
    *(v29 + 14) = 0;
    *(v29 + 22) = 2112;
    v32 = v47;
    *(v29 + 24) = v47;
    *v30 = v18;
    v33 = v32;
    _os_log_impl(&dword_0, v20, v28, "[getSetNumericIntent] settingsIdentifier: %s, boundedValue: %ld, numericValue: %@", v29, 0x20u);
    sub_6C08(v30, &qword_10440, &qword_7E80);
    sub_71EC(v30);
    sub_67CC(v31);
    sub_71EC(v31);
    sub_71EC(v29);
  }

  v34 = objc_allocWithZone(INSettingMetadata);
  v35 = v27;

  v36 = sub_49D4(v25, v26, v27, 0);
  sub_65C8(0, &qword_10438, INSetNumericSettingIntent_ptr);
  v37 = sub_4884(v36, v18, 0, 0, 0);

  sub_7424();
  v38 = sub_7414();
  sub_4C24();
  v39 = (v45 + ((*(v44 + 80) + 16) & ~*(v44 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_4C80();
  *(v40 + v39) = v43;
  sub_7404();

  sub_7204();
}

uint64_t sub_4628(uint64_t a1, os_log_t *a2, uint64_t a3)
{
  sub_71C0();
  v7 = sub_7584();
  sub_6F70();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_6FC4();
  sub_723C();
  if ([v3 code] == &dword_0 + 3)
  {
    if (*(a2 + *(type metadata accessor for SettingsSliderView(0) + 40)))
    {

      sub_7394();
      *v4 = a3;
      (*(v9 + 104))(v4, enum case for Form.State.valid(_:), v7);

      sub_7574();

      v11 = sub_7274();
      return v12(v11);
    }

    else
    {
      sub_7594();
      sub_7024();
      v23 = sub_31AC(v21, v22, &protocol conformance descriptor for Form);
      result = sub_72CC(v23);
      __break(1u);
    }
  }

  else
  {
    v14 = sub_75F4();
    v15 = *a2;
    result = os_log_type_enabled(*a2, v14);
    if (result)
    {
      v16 = swift_slowAlloc();
      v17 = sub_72EC();
      v24 = v17;
      *v16 = 136315138;
      [v3 code];
      type metadata accessor for INSetNumericSettingIntentResponseCode(0);
      v18 = sub_75D4();
      v20 = sub_5E80(v18, v19, &v24);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_0, v15, v14, "Settings slider not updated due to failure code %s", v16, 0xCu);
      sub_67CC(v17);
      sub_71EC(v17);
      return sub_71EC(v16);
    }
  }

  return result;
}

id sub_4884(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSettingMetadata:a1 numericValue:a2 boundedValue:a3 action:a4 temporalEventTrigger:a5];

  return v8;
}

id sub_492C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_75C4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_75C4();

LABEL_6:
  v10 = [v5 initWithDeviceName:v8 deviceModel:v9 deviceCategory:a5];

  return v10;
}

id sub_49D4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_75C4();

  v8 = [v4 initWithSettingId:v7 targetDevice:a3 targetApp:a4];

  return v8;
}

void sub_4A4C(uint64_t a2@<X8>)
{
  sub_4A80();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_4ADC()
{
  sub_7188();
  sub_16F8(v1, v2);
  sub_6F84();
  v3 = sub_717C();
  v4(v3);
  return v0;
}

uint64_t sub_4B34()
{
  sub_7188();
  sub_16F8(v1, v2);
  sub_6F84();
  v3 = sub_717C();
  v4(v3);
  return v0;
}

void *sub_4B8C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_4BD0()
{
  result = qword_10500[0];
  if (!qword_10500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10500);
  }

  return result;
}

uint64_t sub_4C24()
{
  sub_7188();
  v1(0);
  sub_6F84();
  v2 = sub_717C();
  v3(v2);
  return v0;
}

uint64_t sub_4C80()
{
  sub_7188();
  v1(0);
  sub_6F84();
  v2 = sub_717C();
  v3(v2);
  return v0;
}

void sub_4CD8()
{
  v0 = type metadata accessor for SettingsSliderView(0);
  v1 = sub_7138(v0);
  sub_4180(v1, v2);
}

uint64_t sub_4D40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4DA4()
{
  type metadata accessor for SettingsSliderView(0);
  sub_728C();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);

  v7 = v0[7];
  sub_73F4();
  sub_6F84();
  (*(v8 + 8))(v1 + v4 + v7);

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

void sub_4EC4()
{
  v0 = type metadata accessor for SettingsSliderView(0);
  sub_7138(v0);
  sub_16F8(&qword_10138, &qword_7B58);
  v1 = sub_7504();
  sub_4180(v1, v2);
}

uint64_t sub_4FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_71C0();
  v5 = type metadata accessor for ViewData(v4);

  return sub_4FEC(v2, a2, v5);
}

uint64_t sub_5028(uint64_t a1, uint64_t a2)
{
  v4 = sub_71C0();
  v5 = type metadata accessor for ViewData(v4);

  return sub_4AB4(v2, a2, a2, v5);
}

uint64_t sub_5090(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_50C8()
{
  result = type metadata accessor for ViewData(319);
  if (v1 <= 0x3F)
  {
    sub_71DC();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_5140(uint64_t a1, uint64_t a2, int *a3)
{
  sub_16F8(&qword_100F0, &qword_7B40);
  sub_72B4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_16F8(&qword_100C0, &qword_7B30);
    sub_72B4();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      if (a2 == 0x7FFFFFFF)
      {
        return sub_72A0(*(a1 + a3[6] + 8));
      }

      v8 = sub_73F4();
      v12 = a3[8];
    }

    v9 = a1 + v12;
  }

  return sub_4FEC(v9, a2, v8);
}

void sub_5270(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_16F8(&qword_100F0, &qword_7B40);
  sub_72B4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_16F8(&qword_100C0, &qword_7B30);
    sub_72B4();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[6] + 8) = (a2 - 1);
        return;
      }

      v10 = sub_73F4();
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  sub_4AB4(v11, a2, a2, v10);
}

void sub_5394()
{
  sub_5478(319, &qword_10228, &type metadata accessor for TextProperty);
  if (v0 <= 0x3F)
  {
    sub_5478(319, &unk_10230, &type metadata accessor for ActionProperty);
    if (v1 <= 0x3F)
    {
      sub_73F4();
      if (v2 <= 0x3F)
      {
        sub_71DC();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_5478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_7624();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_5504(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_72A0(*a1);
  }

  v7 = sub_73F4();
  v8 = a1 + *(a3 + 20);

  return sub_4FEC(v8, a2, v7);
}

void *sub_5594(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_73F4();
    v8 = v5 + *(a4 + 20);

    return sub_4AB4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_5614()
{
  v0 = sub_65C8(319, &qword_100D8, OS_os_log_ptr);
  if (v1 <= 0x3F)
  {
    v2 = sub_73F4();
    if (v3 > 0x3F)
    {
      return v2;
    }

    sub_68A0(319, &qword_10360, &type metadata for Double, &type metadata accessor for State);
    if (v4 > 0x3F)
    {
      return v2;
    }

    sub_5738(319);
    if (v5 > 0x3F)
    {
      return v2;
    }

    sub_57CC(319);
    if (v6 > 0x3F)
    {
      return v2;
    }

    else
    {
      sub_71DC();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

void sub_5738(uint64_t a1)
{
  if (!qword_10368)
  {
    sub_75B4();
    sub_31AC(&qword_100E0, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    v1 = sub_7464();
    if (!v2)
    {
      atomic_store(v1, &qword_10368);
    }
  }
}

void sub_57CC(uint64_t a1)
{
  if (!qword_10370)
  {
    sub_7594();
    sub_31AC(&qword_100E8, &type metadata accessor for Form, &protocol conformance descriptor for Form);
    v1 = sub_7464();
    if (!v2)
    {
      atomic_store(v1, &qword_10370);
    }
  }
}

unint64_t sub_58A8()
{
  result = qword_103C8;
  if (!qword_103C8)
  {
    sub_1798(&qword_10148, &qword_7B68);
    sub_5934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103C8);
  }

  return result;
}

unint64_t sub_5934()
{
  result = qword_103D0;
  if (!qword_103D0)
  {
    sub_1798(&qword_10140, &qword_7B60);
    sub_59EC();
    sub_5B20(&qword_10408, &qword_10410, &qword_7D28, &protocol conformance descriptor for _ValueActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103D0);
  }

  return result;
}

unint64_t sub_59EC()
{
  result = qword_103D8;
  if (!qword_103D8)
  {
    sub_1798(&qword_103E0, &qword_7D10);
    sub_5A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103D8);
  }

  return result;
}

unint64_t sub_5A70()
{
  result = qword_103E8;
  if (!qword_103E8)
  {
    sub_1798(&qword_103F0, &qword_7D18);
    sub_5B20(&qword_103F8, &qword_10400, &qword_7D20, &protocol conformance descriptor for Slider<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103E8);
  }

  return result;
}

uint64_t sub_5B20(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1798(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViewData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ViewData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x5CCCLL);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_5D18()
{
  result = qword_10840[0];
  if (!qword_10840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10840);
  }

  return result;
}

unint64_t sub_5D70()
{
  result = qword_109D0;
  if (!qword_109D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109D0);
  }

  return result;
}

unint64_t sub_5DC8()
{
  result = qword_109D8[0];
  if (!qword_109D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_109D8);
  }

  return result;
}

unint64_t sub_5E1C()
{
  result = qword_10428;
  if (!qword_10428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10428);
  }

  return result;
}

_OWORD *sub_5E70(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_5E80(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_5F44(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_6818(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_67CC(v11);
  return v7;
}

unint64_t sub_5F44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_6044(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_7674();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_6044(uint64_t a1, unint64_t a2)
{
  v3 = sub_6090(a1, a2);
  sub_61A8(&off_C898);
  return v3;
}

char *sub_6090(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_75E4())
  {
    result = sub_628C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_7664();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_7674();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_61A8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_62FC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_628C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_16F8(&qword_10448, &qword_7E88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_62FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_16F8(&qword_10448, &qword_7E88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_63F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7634(*(v2 + 40));

  return sub_69C8(a1, v4);
}

_OWORD *sub_6434(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_63F0(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  v15 = v10;
  sub_16F8(&qword_10450, &qword_7E90);
  if (!sub_7684(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = sub_63F0(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_7724();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = (v18[7] + 32 * v14);
    sub_67CC(v19);

    return sub_5E70(a1, v19);
  }

  else
  {
    sub_68F0(a2, v21);
    return sub_694C(v14, v21, a1, v18);
  }
}

uint64_t sub_65C8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_6608()
{
  type metadata accessor for SettingsSliderView(0);
  sub_728C();
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1 + v7;

  v10 = v0[7];
  sub_73F4();
  sub_6F84();
  (*(v11 + 8))(v9 + v10);

  return _swift_deallocObject(v1, v8 + 8, v6 | 7);
}

uint64_t sub_6734()
{
  v2 = sub_7280();
  v3 = *(type metadata accessor for SettingsSliderView(v2) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_4628(v0, (v1 + v4), v5);
}

uint64_t sub_67CC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_6818(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_68A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_OWORD *sub_694C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_5E70(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_69C8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_68F0(*(v2 + 48) + 40 * i, v7);
    v5 = sub_7644();
    sub_6574(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_6A8C()
{
  result = qword_10468;
  if (!qword_10468)
  {
    sub_1798(&qword_10460, &qword_7EA0);
    sub_6B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10468);
  }

  return result;
}

unint64_t sub_6B10()
{
  result = qword_10470;
  if (!qword_10470)
  {
    sub_1798(&qword_10478, &qword_7EA8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10470);
  }

  return result;
}

unint64_t sub_6BB4()
{
  result = qword_10480;
  if (!qword_10480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10480);
  }

  return result;
}

uint64_t sub_6C08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_16F8(a2, a3);
  sub_6F84();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_6C60()
{
  sub_7188();
  sub_16F8(&qword_104C8, &qword_7EF0);
  sub_6F84();
  v1 = sub_717C();
  v2(v1);
  return v0;
}

uint64_t sub_6CC0()
{
  v1 = sub_7280();
  v2(v1);
  sub_6F84();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_6D14()
{
  sub_7188();
  sub_16F8(&qword_104C8, &qword_7EF0);
  sub_6F84();
  v1 = sub_717C();
  v2(v1);
  return v0;
}

uint64_t sub_6D74(uint64_t a1)
{
  sub_16F8(&qword_104C8, &qword_7EF0);
  sub_6F84();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for SettingsControlSliderCustomCanvasPlugin.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SettingsControlSliderCustomCanvasPlugin.Error(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x6EC4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_6F08()
{
  result = qword_104F0;
  if (!qword_104F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104F0);
  }

  return result;
}

uint64_t sub_6FF4()
{
  v2 = *(v0 - 168);

  return sub_3FD8(&Slider.trailingThumbnail.getter, v2);
}

uint64_t sub_70B4()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_70E0()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_710C()
{

  return sub_3FD8(&Slider.leadingThumbnail.getter, v0);
}

uint64_t sub_7158(uint64_t a1)
{

  return sub_7714();
}

uint64_t sub_7194()
{

  return sub_7614();
}

uint64_t sub_71EC(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

uint64_t sub_72A0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_72CC(uint64_t a1)
{

  return EnvironmentObject.error()(0, v1, v2, a1);
}

uint64_t sub_72EC()
{

  return swift_slowAlloc();
}