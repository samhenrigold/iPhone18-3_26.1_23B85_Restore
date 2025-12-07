void sub_4494C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_8CEAC();

  [a3 setNotificationType:v4];
}

unint64_t sub_449B0()
{
  result = qword_C2090;
  if (!qword_C2090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C2090);
  }

  return result;
}

unint64_t sub_449F4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8880;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_44A64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_449F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_44A94@<X0>(unint64_t *a1@<X8>)
{
  result = sub_44C80(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_44AD0()
{
  v0 = qword_C2098;

  return v0;
}

uint64_t sub_44B08(uint64_t a1)
{
  v2 = sub_4516C();

  return AppEnumRepresentation.lnValue.getter(a1, v2);
}

uint64_t sub_44B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_44FA8();

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, v4);
}

uint64_t sub_44B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4516C();

  return static AppEnumRepresentation.from(_:context:)(a1, a2, a3, v6);
}

uint64_t sub_44BF4(uint64_t a1)
{
  v2 = sub_4516C();

  return static AppEnumRepresentation.lnValueType.getter(a1, v2);
}

uint64_t sub_44C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_44FA8();

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, a2, v4);
}

unint64_t sub_44C80(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x7964616572;
      break;
    case 2:
      result = 0x6572676F72506E69;
      break;
    case 3:
      result = 0x73736563637573;
      break;
    case 4:
      result = 0x6572756C696166;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReadAnnouncementIntentResponseCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x44E64);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_44EA0()
{
  result = qword_C20A8;
  if (!qword_C20A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20A8);
  }

  return result;
}

unint64_t sub_44EF8()
{
  result = qword_C20B0;
  if (!qword_C20B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20B0);
  }

  return result;
}

unint64_t sub_44F50()
{
  result = qword_C20B8;
  if (!qword_C20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20B8);
  }

  return result;
}

unint64_t sub_44FA8()
{
  result = qword_C20C0;
  if (!qword_C20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20C0);
  }

  return result;
}

unint64_t sub_45000()
{
  result = qword_C20C8;
  if (!qword_C20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20C8);
  }

  return result;
}

unint64_t sub_45058()
{
  result = qword_C20D0;
  if (!qword_C20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20D0);
  }

  return result;
}

unint64_t sub_450B0()
{
  result = qword_C20D8;
  if (!qword_C20D8)
  {
    sub_B9BC(&qword_C20E0, &qword_92090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20D8);
  }

  return result;
}

unint64_t sub_45118()
{
  result = qword_C20E8;
  if (!qword_C20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20E8);
  }

  return result;
}

unint64_t sub_4516C()
{
  result = qword_C20F0;
  if (!qword_C20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C20F0);
  }

  return result;
}

uint64_t type metadata accessor for ReadAnnouncementRCHFlowDelegate(uint64_t a1)
{
  result = qword_C2108;
  if (!qword_C2108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_452E0(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, void *, void *, uint64_t))
{
  v6 = sub_8CA2C();
  __chkstk_darwin(v6 - 8);
  sub_16854();
  v7 = sub_8BCEC();
  __chkstk_darwin(v7 - 8);
  sub_16854();
  v10 = v9 - v8;
  sub_8B5BC();
  sub_8BE1C();
  sub_8BCDC();
  a1(0);
  sub_8CA1C();
  v11 = sub_8C92C();
  a2(0);
  swift_allocObject();
  return a3(v10, v14, v13, v11);
}

uint64_t sub_45410()
{
  sub_2664(&qword_C2170, &unk_921E0);
  swift_allocObject();
  return sub_8BBFC();
}

uint64_t sub_45454()
{
  v1 = sub_452A0();
  sub_E528(v0 + qword_C2100, v9);
  sub_E58C(v9, v9[3]);
  sub_E6E8();
  __chkstk_darwin(v2);
  sub_16854();
  v5 = v4 - v3;
  (*(v6 + 16))(v4 - v3);
  v7 = sub_46090(v1, v5);
  sub_2714(v9);
  return v7;
}

unsigned __int8 *sub_45540(uint64_t a1, uint64_t a2)
{
  v4 = sub_8BDEC();
  sub_E6E8();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_16854();
  v10 = v9 - v8;
  v11 = sub_8BE0C();
  sub_E6E8();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_16854();
  v17 = v16 - v15;
  (*(v13 + 16))(v16 - v15, a1, v11);
  v18 = sub_461E0();
  if (v19(v18) != enum case for Parse.directInvocation(_:))
  {
    v44 = sub_461E0();
    v45(v44);
    sub_2664(&qword_C2160, &qword_921C8);
    v46 = sub_8B9FC();
    return v46(a1, a2);
  }

  v20 = sub_461E0();
  v21(v20);
  (*(v6 + 32))(v10, v17, v4);
  v22 = sub_8BDDC();
  if (!v22)
  {
    goto LABEL_32;
  }

  sub_13E84(v22, v71);
  if (!v71[1])
  {
    goto LABEL_32;
  }

  v24 = v71[2];
  v23 = v72;
  v74 = v73;
  if (!v72)
  {
    sub_92C0(v71, &qword_C2168, &unk_921D0);
LABEL_32:
    v48 = [objc_allocWithZone(INReadAnnouncementIntent) init];
LABEL_33:
    v47 = v48;
    (*(v6 + 8))(v10, v4);
    return v47;
  }

  v25 = qword_BF818;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_8CD0C();
  sub_33F4(v26, qword_C3DF8);

  v27 = sub_8CCEC();
  v28 = sub_8D11C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v75 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_862D8(v24, v23, &v75);
    _os_log_impl(&dword_0, v27, v28, "Received DirectInvocation parse type, with announceId: %s", v29, 0xCu);
    sub_2714(v30);
  }

  v75 = v74;
  v31 = *(&v74 + 1);
  if (!*(&v74 + 1))
  {
    v49 = &qword_C2168;
    v50 = &unk_921D0;
    v51 = v71;
LABEL_36:
    sub_92C0(v51, v49, v50);
LABEL_91:
    v66 = objc_allocWithZone(INReadAnnouncementIntent);
    v48 = sub_45D60(1, v24, v23, 1);
    goto LABEL_33;
  }

  v32 = v75;
  sub_45DE4(&v75, v70);
  result = sub_92C0(v71, &qword_C2168, &unk_921D0);
  v34 = HIBYTE(v31) & 0xF;
  v35 = v32 & 0xFFFFFFFFFFFFLL;
  if ((v31 & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v31) & 0xF;
  }

  else
  {
    v36 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {
    v49 = &qword_C1A08;
    v50 = &unk_92B40;
    v51 = &v75;
    goto LABEL_36;
  }

  if ((v31 & 0x1000000000000000) != 0)
  {
    v67 = sub_461E0();
    v38 = sub_5C45C(v67, v68, 10);
    v62 = v69;
    goto LABEL_86;
  }

  if ((v31 & 0x2000000000000000) == 0)
  {
    if ((v32 & 0x1000000000000000) != 0)
    {
      result = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      sub_461E0();
      result = sub_8D2BC();
    }

    v37 = *result;
    if (v37 == 43)
    {
      if (v35 >= 1)
      {
        if (v35 != 1)
        {
          v38 = 0;
          if (result)
          {
            while (1)
            {
              sub_461D0();
              if (!v40 & v39)
              {
                goto LABEL_84;
              }

              sub_461BC();
              if (!v40)
              {
                goto LABEL_84;
              }

              v38 = v55 + v54;
              if (__OFADD__(v55, v54))
              {
                goto LABEL_84;
              }

              sub_461EC();
              if (v40)
              {
                goto LABEL_85;
              }
            }
          }

          goto LABEL_75;
        }

        goto LABEL_84;
      }

      goto LABEL_97;
    }

    if (v37 != 45)
    {
      if (v35)
      {
        v38 = 0;
        if (result)
        {
          while (1)
          {
            v58 = *result - 48;
            if (v58 > 9)
            {
              goto LABEL_84;
            }

            v59 = 10 * v38;
            if ((v38 * 10) >> 64 != (10 * v38) >> 63)
            {
              goto LABEL_84;
            }

            v38 = v59 + v58;
            if (__OFADD__(v59, v58))
            {
              goto LABEL_84;
            }

            ++result;
            if (!--v35)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_75;
      }

LABEL_84:
      v38 = 0;
      v43 = 1;
      goto LABEL_85;
    }

    if (v35 >= 1)
    {
      if (v35 != 1)
      {
        v38 = 0;
        if (result)
        {
          while (1)
          {
            sub_461D0();
            if (!v40 & v39)
            {
              goto LABEL_84;
            }

            sub_461BC();
            if (!v40)
            {
              goto LABEL_84;
            }

            v38 = v42 - v41;
            if (__OFSUB__(v42, v41))
            {
              goto LABEL_84;
            }

            sub_461EC();
            if (v40)
            {
              goto LABEL_85;
            }
          }
        }

LABEL_75:
        v43 = 0;
LABEL_85:
        v62 = v43;
LABEL_86:
        sub_92C0(&v75, &qword_C1A08, &unk_92B40);
        if ((v62 & 1) == 0 && v38 == 2)
        {

          v63 = sub_8CCEC();
          v64 = sub_8D12C();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 0;
            _os_log_impl(&dword_0, v63, v64, "DirectInvocation is a deliveryFailure notification. Returning nil.", v65, 2u);
          }

          (*(v6 + 8))(v10, v4);
          return 0;
        }

        goto LABEL_91;
      }

      goto LABEL_84;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v70[0] = v32;
  v70[1] = v31 & 0xFFFFFFFFFFFFFFLL;
  if (v32 != 43)
  {
    if (v32 != 45)
    {
      if (v34)
      {
        while (1)
        {
          sub_461D0();
          if (!v40 & v39)
          {
            break;
          }

          sub_461BC();
          if (!v40)
          {
            break;
          }

          v38 = v61 + v60;
          if (__OFADD__(v61, v60))
          {
            break;
          }

          sub_461EC();
          if (v40)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_84;
    }

    if (v34)
    {
      if (v34 != 1)
      {
        sub_461F8();
        while (1)
        {
          sub_461D0();
          if (!v40 & v39)
          {
            break;
          }

          sub_461BC();
          if (!v40)
          {
            break;
          }

          v38 = v53 - v52;
          if (__OFSUB__(v53, v52))
          {
            break;
          }

          sub_461EC();
          if (v40)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_84;
    }

    goto LABEL_96;
  }

  if (v34)
  {
    if (v34 != 1)
    {
      sub_461F8();
      while (1)
      {
        sub_461D0();
        if (!v40 & v39)
        {
          break;
        }

        sub_461BC();
        if (!v40)
        {
          break;
        }

        v38 = v57 + v56;
        if (__OFADD__(v57, v56))
        {
          break;
        }

        sub_461EC();
        if (v40)
        {
          goto LABEL_85;
        }
      }
    }

    goto LABEL_84;
  }

LABEL_98:
  __break(1u);
  return result;
}

uint64_t sub_45C24()
{
  sub_E528(v0 + qword_C20F8, v2);
  sub_2664(&qword_C2158, &qword_921C0);
  swift_allocObject();
  return sub_7E410();
}

uint64_t sub_45CEC()
{
  v0 = sub_8BA0C();
  v1 = qword_C20F8;

  sub_2714((v2 + v1));
  sub_2714((v0 + qword_C2100));

  return _swift_deallocClassInstance(v0, 96, 7);
}

id sub_45D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_8CEAC();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithReadType:a1 startAnnouncementIdentifier:v7 userNotificationType:a4];

  return v8;
}

uint64_t sub_45DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C1A08, &unk_92B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_45E54(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_8CA2C();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for SharedGlobals(0);
  v19[3] = v7;
  v19[4] = &off_BB508;
  v8 = sub_E5DC(v19);
  sub_E63C(a2, v8);
  type metadata accessor for ReadAnnouncementCATs(0);
  sub_8CA1C();
  *(a3 + qword_C1C28) = sub_8C92C();
  sub_E528(v19, v18);
  v9 = sub_E58C(v18, v18[3]);
  __chkstk_darwin(v9);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v17[3] = v7;
  v17[4] = &off_BB508;
  v13 = sub_E5DC(v17);
  sub_E63C(v11, v13);
  *(a3 + *(*a3 + qword_C3D60 + 16)) = a1;
  sub_E528(v17, a3 + *(*a3 + qword_C3D60 + 24));
  v14 = sub_8BB3C();
  sub_2714(v17);
  sub_2714(v19);
  sub_2714(v18);
  return v14;
}

uint64_t sub_46090(uint64_t a1, uint64_t a2)
{
  v14 = type metadata accessor for SharedGlobals(0);
  v15 = &off_BB508;
  v4 = sub_E5DC(v13);
  sub_E63C(a2, v4);
  type metadata accessor for ReadAnnouncementAceViewProvider(0);
  v5 = swift_allocObject();
  v6 = sub_E58C(v13, v14);
  __chkstk_darwin(v6);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_45E54(a1, v8, v5);
  sub_2714(v13);
  return v10;
}

uint64_t type metadata accessor for ReadAnnouncementTemplatingService(uint64_t a1)
{
  result = qword_C2190;
  if (!qword_C2190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_462B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_8B8CC();
  sub_3488();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8B8BC();
  sub_8B84C();
  sub_1E508(0);
  sub_8B87C();

  sub_8B89C();

  sub_8B8AC();
  v8 = sub_8B80C();
  (*(v4 + 8))(v7, v2);
  return v8;
}

uint64_t sub_463B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v27[0] = a2;
  v28 = a1;
  v9 = sub_2664(&qword_C0660, &qword_92260);
  __chkstk_darwin(v9 - 8);
  v11 = v27 - v10;
  v12 = sub_8B02C();
  sub_3488();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E528(a3, v5 + qword_C2178);
  v27[2] = a4;
  *(v5 + qword_C2188) = a4;
  sub_E528(a2, v5 + qword_C2180);
  v27[1] = "mentTemplatingService";
  sub_622C(a3, a3[3]);

  sub_8B5DC();
  v18 = sub_8B01C();
  v20 = v19;
  (*(v14 + 8))(v17, v12);
  v30[0] = v18;
  v30[1] = v20;
  v29[0] = 45;
  v29[1] = 0xE100000000000000;
  v30[5] = 95;
  v30[6] = 0xE100000000000000;
  sub_10C68();
  sub_8D1FC();

  type metadata accessor for INIntentSlotValueType(0);
  sub_47208(&qword_C0670, type metadata accessor for INIntentSlotValueType, &unk_8E30C);
  sub_8CE6C();
  v21 = v27[0];
  sub_E528(v27[0], v30);
  sub_E528(a3, v29);
  v22 = sub_8BCEC();
  v23 = *(v22 - 8);
  v24 = v28;
  (*(v23 + 16))(v11, v28, v22);
  sub_6270(v11, 0, 1, v22);
  v25 = sub_8BA5C();

  sub_2714(v21);
  (*(v23 + 8))(v24, v22);
  sub_2714(a3);
  return v25;
}

uint64_t sub_46718(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 && sub_471A8(a3))
  {
    v3 = sub_2D3B4();

    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v5 = sub_8CD0C();
  sub_33F4(v5, qword_C3DF8);
  v6 = sub_8CCEC();
  v7 = sub_8D11C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    if (v4)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (v4)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    v12 = sub_862D8(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "makeIntentHandledDialog isAnnouncementRecordsNilOrEmpty: %s.", v8, 0xCu);
    sub_2714(v9);
    sub_E890(v9);
    sub_E890(v8);
  }

  if (v4)
  {
    return sub_3B758();
  }

  else
  {
    return sub_3B934();
  }
}

void sub_468CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v50 = a4;
  v51 = a5;
  v10 = sub_2664(&qword_C1CE0, &unk_91EC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - v11;
  if (qword_BF828 != -1)
  {
    swift_once();
  }

  v13 = qword_C3E10;
  if (qword_BF830 != -1)
  {
    swift_once();
  }

  v14 = sub_462B4(v13, qword_C3E18);
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v15 = sub_8CD0C();
  sub_33F4(v15, qword_C3DF8);
  v16 = v14;
  v17 = sub_8CCEC();
  v18 = sub_8D11C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v49 = v12;
    v21 = a3;
    v22 = a1;
    v23 = v6;
    v24 = a2;
    v25 = v20;
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v26 = v16;
    _os_log_impl(&dword_0, v17, v18, "Submit an ace command to update background context for announcement playback: %@", v19, 0xCu);
    sub_92C0(v25, &qword_BFF40, &unk_90F70);
    v27 = v25;
    a2 = v24;
    v6 = v23;
    a1 = v22;
    a3 = v21;
    v12 = v49;
    sub_E890(v27);
    sub_E890(v19);
  }

  sub_622C((v6 + qword_C2180), *(v6 + qword_C2180 + 24));
  sub_8B95C();
  if (!a3)
  {
    goto LABEL_13;
  }

  v49 = a3;
  if (sub_471A8(v49))
  {
    v28 = sub_2D3B4();

    if (v28)
    {

LABEL_13:

      v29 = sub_8CCEC();
      v30 = sub_8D11C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v52 = a1;
        v53 = v32;
        *v31 = 136315138;
        sub_8CA8C();
        sub_47208(&qword_C2080, &type metadata accessor for App, &protocol conformance descriptor for App);
        v33 = sub_8D43C();
        v35 = sub_862D8(v33, v34, &v53);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_0, v29, v30, "Creating a dialog between Confirm and Handle for playing announcements using app: %s.", v31, 0xCu);
        sub_2714(v32);
        sub_E890(v32);
        sub_E890(v31);
      }

      if (a3)
      {
        sub_75540();
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      sub_75AD4(v37);
      v44 = v43;

      if (v44)
      {
        sub_8CF2C();

        v45 = 0;
      }

      else
      {
        v45 = 1;
      }

      v46 = sub_8C99C();
      sub_6270(v12, v45, 1, v46);
      v47 = swift_allocObject();
      *(v47 + 16) = v50;
      *(v47 + 24) = v51;

      sub_3B780(v12);

      sub_92C0(v12, &qword_C1CE0, &unk_91EC0);
      return;
    }
  }

  v38 = sub_8CCEC();
  v39 = sub_8D11C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_0, v38, v39, "Skipping interstitial since there are no announcements to play.", v40, 2u);
    sub_E890(v40);
  }

  sub_2664(&qword_C21E0, &qword_92250);
  v41 = sub_8BA6C();
  v41(a1, a2, a3, v50, v51);

  v42 = v49;
}

uint64_t sub_46E50(uint64_t a1, void (*a2)(void *))
{
  v4 = sub_2664(&qword_C0680, &unk_8ED30);
  __chkstk_darwin(v4);
  v6 = (&v12 - v5);
  v7 = sub_2664(&qword_C21E8, &qword_92258);
  __chkstk_darwin(v7);
  v9 = (&v12 - v8);
  sub_10D50(a1, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v9 = *v6;
  }

  else
  {
    v10 = sub_8B93C();
    (*(*(v10 - 8) + 32))(v9, v6, v10);
    sub_6270(v9, 0, 1, v10);
  }

  swift_storeEnumTagMultiPayload();
  a2(v9);
  return sub_92C0(v9, &qword_C21E8, &qword_92258);
}

uint64_t sub_47088()
{
  sub_2714((v0 + qword_C2178));
  sub_2714((v0 + qword_C2180));
}

uint64_t sub_470D8()
{
  v0 = sub_8BA7C();
  sub_2714((v0 + qword_C2178));
  sub_2714((v0 + qword_C2180));

  return v0;
}

uint64_t sub_47130()
{
  v0 = sub_470D8();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_47168()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_471A8(void *a1)
{
  v1 = [a1 announcementRecords];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2D74C();
  v3 = sub_8D04C();

  return v3;
}

uint64_t sub_47208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_47250@<X0>(char *a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v187 = a3;
  v184 = a1;
  v185 = a2;
  v171 = type metadata accessor for HomeCommunicationError(0);
  sub_6574();
  __chkstk_darwin(v5);
  sub_9378();
  v170 = v6;
  sub_22ACC();
  __chkstk_darwin(v7);
  sub_22B34();
  v169 = v8;
  v9 = sub_2664(&qword_C21F0, &qword_92268);
  __chkstk_darwin(v9 - 8);
  sub_9378();
  v175 = v10;
  sub_22ACC();
  __chkstk_darwin(v11);
  sub_22B34();
  v173 = v12;
  v13 = sub_2664(&qword_C05E8, &unk_8ECD0);
  __chkstk_darwin(v13 - 8);
  sub_9378();
  v174 = v14;
  sub_22ACC();
  __chkstk_darwin(v15);
  v172 = &v167 - v16;
  sub_22ACC();
  __chkstk_darwin(v17);
  sub_22B34();
  v177 = v18;
  v183 = sub_8CD3C();
  sub_E6E8();
  v178 = v19;
  __chkstk_darwin(v20);
  sub_9378();
  v176 = v21;
  sub_22ACC();
  __chkstk_darwin(v22);
  sub_22B34();
  v179 = v23;
  v24 = sub_8CDDC();
  sub_E6E8();
  v182 = v25;
  __chkstk_darwin(v26);
  sub_9378();
  v168 = v27;
  sub_22ACC();
  v29 = __chkstk_darwin(v28);
  v31 = (&v167 - v30);
  __chkstk_darwin(v29);
  v33 = &v167 - v32;
  v34 = sub_8CD8C();
  sub_E6E8();
  v36 = v35;
  __chkstk_darwin(v37);
  v39 = (&v167 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2664(&qword_C21F8, &unk_92270);
  sub_6574();
  v41 = __chkstk_darwin(v40);
  v43 = (&v167 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v41);
  v45 = &v167 - v44;
  v180 = sub_8CDCC();
  v181 = a4;
  v46 = sub_48744();
  sub_6270(v46, v47, 1, v48);
  *v39 = v184;
  (*(v36 + 104))(v39, enum case for RRQuery.usoReference(_:), v34);

  sub_8CBFC();
  (*(v36 + 8))(v39, v34);
  v187 = v45;
  sub_48184(v45, v43);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = *v43;
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v50 = sub_8CD0C();
    sub_22B78(v50, qword_C3DF8);
    swift_errorRetain();
    v51 = sub_8CCEC();
    v52 = sub_8D12C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = sub_1D358();
      v54 = swift_slowAlloc();
      v188 = v49;
      v189[0] = v54;
      *v53 = 136315138;
      swift_errorRetain();
      sub_2664(&qword_BFF30, &unk_8E4E0);
      v55 = sub_8CEEC();
      v57 = sub_862D8(v55, v56, v189);

      *(v53 + 4) = v57;
      sub_48734();
      _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
      sub_2714(v54);
      sub_E890(v54);
      sub_E890(v53);
    }

    else
    {
    }

    return sub_1D05C(v187, &qword_C21F8, &unk_92270);
  }

  v63 = v182;
  (*(v182 + 32))(v33, v43, v24);
  v64 = *(v63 + 16);
  v64(v31, v33, v24);
  v65 = (*(v63 + 88))(v31, v24);
  v186 = v24;
  v66 = v33;
  v67 = v31;
  if (v65 == enum case for RRResult.foundMatch(_:))
  {
    v68 = sub_48720();
    v69(v68);
    v71 = v178;
    v70 = v179;
    v72 = v67;
    v73 = v183;
    (*(v178 + 32))(v179, v72, v183);
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v74 = v33;
    v75 = sub_8CD0C();
    sub_22B78(v75, qword_C3DF8);
    v76 = v176;
    (*(v71 + 16))(v176, v70, v73);
    v77 = sub_8CCEC();
    v78 = sub_8D11C();
    if (sub_36AE0(v78))
    {
      v79 = v76;
      v80 = sub_1D358();
      v81 = swift_slowAlloc();
      v189[0] = v81;
      *v80 = 136315138;
      sub_48530(&unk_C2208, &type metadata accessor for RRCandidate, &protocol conformance descriptor for RRCandidate);
      v82 = sub_8D43C();
      v83 = v74;
      v85 = v84;
      v86 = *(v71 + 8);
      v86(v79, v183);
      v87 = sub_862D8(v82, v85, v189);
      v74 = v83;
      v73 = v183;

      *(v80 + 4) = v87;
      _os_log_impl(&dword_0, v77, v78, "#ReferenceResolution Found a candidate %s", v80, 0xCu);
      sub_2714(v81);
      v88 = v81;
      v70 = v179;
      v63 = v182;
      sub_E890(v88);
      sub_E890(v80);
    }

    else
    {

      v86 = *(v71 + 8);
      v86(v76, v73);
    }

    v110 = v177;
    sub_8CD2C();
    v86(v70, v73);
    (*(v63 + 8))(v74, v186);
    v111 = sub_1D05C(v187, &qword_C21F8, &unk_92270);
    sub_48750(v111, &qword_C05E8, &unk_8ECD0);
    sub_6270(v110, 0, 1, v180);
    v112 = v110;
    return sub_484C0(v112, v77);
  }

  v90 = v183;
  if (v65 == enum case for RRResult.needsDisambiguation(_:))
  {
    v91 = sub_48720();
    v92(v91);
    v77 = *v31;
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v93 = sub_8CD0C();
    sub_22B78(v93, qword_C3DF8);
    v94 = sub_8CCEC();
    v95 = sub_8D11C();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = sub_E8E0();
      *v96 = 0;
      sub_48734();
      _os_log_impl(v97, v98, v99, v100, v101, 2u);
      sub_E890(v96);
    }

    v102 = v175;
    sub_481F4(v77, v175);

    v103 = sub_48744();
    if (sub_3364(v103, v104, v90) == 1)
    {
      v105 = sub_48710();
      v106(v105);
      v107 = sub_1D05C(v187, &qword_C21F8, &unk_92270);
      sub_48750(v107, &qword_C05E8, &unk_8ECD0);
      sub_1D05C(v102, &qword_C21F0, &qword_92268);
      v108 = 1;
      v109 = v174;
LABEL_38:
      sub_6270(v109, v108, 1, v180);
      v112 = v109;
      return sub_484C0(v112, v77);
    }

    v109 = v174;
    goto LABEL_37;
  }

  if (v65 == enum case for RRResult.foundMatchPlural(_:))
  {
    v113 = sub_48720();
    v114(v113);
    v77 = *v31;
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v115 = sub_8CD0C();
    sub_22B78(v115, qword_C3DF8);

    v116 = sub_8CCEC();
    v117 = sub_8D11C();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = sub_1D358();
      *v118 = 134217984;
      *(v118 + 4) = v77[2];

      sub_48734();
      _os_log_impl(v119, v120, v121, v122, v123, 0xCu);
      sub_E890(v118);
    }

    else
    {
    }

    v109 = v172;
    v102 = v173;
    sub_75878(v77, v173);

    v133 = sub_48744();
    if (sub_3364(v133, v134, v90) == 1)
    {
      v135 = sub_48710();
      v136(v135);
      v137 = sub_1D05C(v187, &qword_C21F8, &unk_92270);
      sub_48750(v137, &qword_C05E8, &unk_8ECD0);
      sub_1D05C(v102, &qword_C21F0, &qword_92268);
      v108 = 1;
      goto LABEL_38;
    }

LABEL_37:
    sub_8CD2C();
    v138 = sub_48710();
    v139(v138);
    v140 = sub_1D05C(v187, &qword_C21F8, &unk_92270);
    sub_48750(v140, &qword_C05E8, &unk_8ECD0);
    (*(v178 + 8))(v102, v90);
    v108 = 0;
    goto LABEL_38;
  }

  if (v65 == enum case for RRResult.needsDisambiguationPlural(_:))
  {
    v124 = *(v63 + 8);
    v124(v31, v186);
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v125 = sub_8CD0C();
    sub_22B78(v125, qword_C3DF8);
    v126 = sub_8CCEC();
    v127 = sub_8D11C();
    if (sub_36AE0(v127))
    {
      v128 = sub_E8E0();
      *v128 = 0;
      sub_1D144(&dword_0, v129, v130, "#ReferenceResolution Found disambiguationPlural -> return nil");
      sub_E890(v128);
    }

    v131 = v170;
    *v170 = 0xD00000000000002ELL;
    *(v131 + 8) = 0x8000000000097670;
    swift_storeEnumTagMultiPayload();
    v132 = v169;
    sub_15350(v169);
    sub_48464(v131);
    sub_48464(v132);
    v124(v66, v186);
    return sub_1D05C(v187, &qword_C21F8, &unk_92270);
  }

  if (v65 == enum case for RRResult.noMatch(_:))
  {
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v141 = sub_8CD0C();
    sub_22B78(v141, qword_C3DF8);
    v142 = sub_8CCEC();
    v143 = sub_8D11C();
    if (sub_36AE0(v143))
    {
      v144 = sub_E8E0();
      *v144 = 0;
      sub_1D144(&dword_0, v145, v146, "#ReferenceResolution No matches found");
      sub_E890(v144);
    }

    v147 = sub_48710();
    v148(v147);
    return sub_1D05C(v187, &qword_C21F8, &unk_92270);
  }

  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v149 = sub_8CD0C();
  sub_22B78(v149, qword_C3DF8);
  v150 = v168;
  v64(v168, v33, v186);
  v151 = sub_8CCEC();
  v152 = sub_8D12C();
  if (sub_36AE0(v152))
  {
    v153 = sub_1D358();
    v183 = v153;
    v154 = v150;
    v155 = v63;
    v185 = swift_slowAlloc();
    v189[0] = v185;
    *v153 = 136315138;
    sub_48530(&qword_C2200, &type metadata accessor for RRResult, &protocol conformance descriptor for RRResult);
    v156 = v186;
    v157 = sub_8D43C();
    v184 = v66;
    v159 = v158;
    v160 = *(v155 + 8);
    v161 = v156;
    v160(v154, v156);
    v162 = sub_862D8(v157, v159, v189);

    v163 = v183;
    *(v183 + 4) = v162;
    v164 = v163;
    _os_log_impl(&dword_0, v151, v152, "#ReferenceResolution Received unknown result type %s", v163, 0xCu);
    v165 = v185;
    sub_2714(v185);
    sub_E890(v165);
    sub_E890(v164);

    v160(v184, v156);
  }

  else
  {

    v160 = *(v63 + 8);
    v166 = v66;
    v161 = v186;
    v160(v150, v186);
    v160(v166, v161);
  }

  sub_1D05C(v187, &qword_C21F8, &unk_92270);
  return (v160)(v67, v161);
}

uint64_t sub_48184(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C21F8, &unk_92270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_481F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2664(&qword_C21F0, &qword_92268);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  sub_75878(a1, &v22 - v5);
  v7 = sub_8CD3C();
  v8 = sub_48744();
  if (sub_3364(v8, v9, v7) == 1)
  {
    sub_1D05C(v6, &qword_C21F0, &qword_92268);
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v10 = sub_8CD0C();
    sub_22B78(v10, qword_C3DF8);
    v11 = sub_8CCEC();
    v12 = sub_8D11C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_E8E0();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "#ReferenceResolution could not fetch score from the first candidate", v13, 2u);
      sub_E890(v13);
    }

    return sub_6270(a2, 1, 1, v7);
  }

  else
  {
    sub_8CD1C();
    v16 = v15;
    sub_E6E8();
    v18 = (*(v17 + 8))(v6, v7);
    v23 = a1;
    v19 = *(a1 + 16);
    do
    {
      if (!v19)
      {
        break;
      }

      --v19;
      v18 = sub_8CD1C();
    }

    while (v20 != v16);
    __chkstk_darwin(v18);
    *(&v22 - 2) = &v23;
    return sub_48618(sub_486F0, v19, v21, a2);
  }
}

uint64_t sub_48464(uint64_t a1)
{
  v2 = type metadata accessor for HomeCommunicationError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_484C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C05E8, &unk_8ECD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_48530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_48578@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = sub_8CD3C();
      return (*(*(v6 - 8) + 16))(a3, a2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, v6);
    }
  }

  __break(1u);
  return result;
}

void *sub_48618@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = sub_8CD3C();
    return sub_6270(a4, 1, 1, v6);
  }

  else
  {
    v9 = a2;
    result = a1(a4, &v9);
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v8 = sub_8CD3C();
      return sub_6270(a4, 0, 1, v8);
    }
  }

  return result;
}

uint64_t sub_48750(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 160);

  return sub_1D05C(v5, a2, a3);
}

void *sub_48768()
{
  if (!sub_37EAC())
  {
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v16 = sub_8CD0C();
    sub_33F4(v16, qword_C3DF8);
    v17 = sub_8CCEC();
    v18 = sub_8D11C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "#ReferenceResolver couldn't extract UsoTask from Parse", v19, 2u);
      sub_E890(v19);
    }

    return 0;
  }

  sub_8C51C();
  sub_48CF0(v33, v32);
  if (!v32[3])
  {
    goto LABEL_19;
  }

  sub_48CF0(v32, v31);
  sub_8C5BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2714(v31);
LABEL_19:
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v20 = sub_8CD0C();
    sub_33F4(v20, qword_C3DF8);
    v21 = sub_8CCEC();
    v22 = sub_8D12C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "#ReferenceResolver Cannot transform UsoTask to task", v23, 2u);
      sub_E890(v23);
    }

    sub_92C0(v33, &qword_C05F0, &unk_8F020);
    v24 = v32;
    goto LABEL_30;
  }

  sub_8C09C();

  sub_2714(v31);
  sub_92C0(v32, &qword_C05F0, &unk_8F020);
  if (!v30)
  {
LABEL_25:
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v25 = sub_8CD0C();
    sub_33F4(v25, qword_C3DF8);
    v26 = sub_8CCEC();
    v27 = sub_8D11C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "#ReferenceResolver SRR didn't return an INHomeFilter", v28, 2u);
      sub_E890(v28);
    }

    v24 = v33;
LABEL_30:
    sub_92C0(v24, &qword_C05F0, &unk_8F020);
    return 0;
  }

  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v0 = sub_8CD0C();
  sub_33F4(v0, qword_C3DF8);

  v1 = sub_8CCEC();
  v2 = sub_8D11C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v32[0] = v4;
    *v3 = 136315138;
    v31[0] = v30;
    sub_8C0CC();

    v5 = sub_8CEEC();
    v7 = sub_862D8(v5, v6, v32);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_0, v1, v2, "#ReferenceResolver entity: %s", v3, 0xCu);
    sub_2714(v4);
    sub_E890(v4);
    sub_E890(v3);
  }

  sub_8C19C();

  sub_34F14();
  v9 = v8;

  if (!v9)
  {

    goto LABEL_25;
  }

  v10 = v9;
  v11 = sub_8CCEC();
  v12 = sub_8D11C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v9;
    v15 = v10;
    _os_log_impl(&dword_0, v11, v12, "#ReferenceResolver SRR selected homeName: %@ as the resolution result", v13, 0xCu);
    sub_92C0(v14, &qword_BFF40, &unk_90F70);
    sub_E890(v14);
    sub_E890(v13);
  }

  sub_92C0(v33, &qword_C05F0, &unk_8F020);
  return v9;
}

uint64_t sub_48CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C05F0, &unk_8F020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_48D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_8E860;
  sub_48E48();

  *(v8 + 32) = sub_48F18(a1, a2, a3, v4);
  v9 = [objc_allocWithZone(SASTItemGroup) init];
  sub_49088(v8, v9, &qword_C2280, &qword_92280, &selRef_setTemplateItems_);
  return v9;
}

unint64_t sub_48E48()
{
  result = qword_C2218;
  if (!qword_C2218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C2218);
  }

  return result;
}

id sub_48E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_49024(a1, a2, v6);
  sub_49088(a3, v6, &qword_C2288, &qword_92288, &selRef_setCommands_);

  return v6;
}

id sub_48F18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v8 setCentered:a4 & 1];
  v9 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  sub_49088(a3, v9, &qword_C2288, &qword_92288, &selRef_setCommands_);
  [v8 setAction:v9];

  v10 = [objc_allocWithZone(SAUIDecoratedText) init];
  sub_49024(a1, a2, v10);
  [v8 setDecoratedLabel:v10];

  return v8;
}

void sub_49024(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_8CEAC();

  [a3 setText:v4];
}

void sub_49088(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, SEL *a5)
{
  sub_2664(a3, a4);
  isa = sub_8D03C().super.isa;

  [a2 *a5];
}

id sub_49108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_37C8(a1, a2, v14, &selRef_setLabel_);
  sub_37C8(a3, a4, v14, &selRef_setType_);
  sub_37C8(a5, a6, v14, &selRef_setIconType_);
  sub_49450(a7, v14);

  return v14;
}

id sub_491D8()
{
  v4 = [objc_allocWithZone(sub_49624()) init];
  v5 = sub_494D0(v0);
  if (v5)
  {
    sub_2664(&qword_C2288, &qword_92288);
    sub_8D03C();
    v5 = sub_4960C();
  }

  else
  {
    v3 = 0;
  }

  sub_495F4(v5, "setConfirmCommands:");

  v6 = sub_494D0(v1);
  if (v6)
  {
    sub_2664(&qword_C2288, &qword_92288);
    sub_8D03C();
    v6 = sub_4960C();
  }

  else
  {
    v3 = 0;
  }

  sub_495F4(v6, "setDenyCommands:");

  v7 = sub_6348(v2, &selRef_type);
  if (v8)
  {
    sub_8CEAC();
    v7 = sub_4960C();
  }

  else
  {
    v3 = 0;
  }

  sub_495F4(v7, "setCancelTrigger:");

  v9 = sub_6348(v0, &selRef_label);
  if (v10)
  {
    sub_8CEAC();
    v9 = sub_4960C();
  }

  else
  {
    v3 = 0;
  }

  sub_495F4(v9, "setConfirmText:");

  v11 = sub_6348(v1, &selRef_label);
  if (v12)
  {
    sub_8CEAC();
    v11 = sub_4960C();
  }

  else
  {
    v3 = 0;
  }

  sub_495F4(v11, "setDenyText:");

  sub_2664(&qword_C0690, &unk_8EBF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_92290;
  *(v13 + 32) = v2;
  *(v13 + 40) = v1;
  *(v13 + 48) = v0;
  v14 = v2;
  v15 = v1;
  v16 = v0;
  sub_4953C(v13, v4);

  return v4;
}

id sub_493D4()
{
  v3 = [objc_allocWithZone(sub_49624()) init];
  sub_37C8(v2, v1, v3, &selRef_setAnnouncerName_);
  [v3 setConfirmationOptions:v0];

  return v3;
}

void sub_49450(uint64_t a1, void *a2)
{
  sub_2664(&qword_C2288, &qword_92288);
  isa = sub_8D03C().super.isa;

  [a2 setCommands:isa];
}

uint64_t sub_494D0(void *a1)
{
  v1 = [a1 commands];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2664(&qword_C2288, &qword_92288);
  v3 = sub_8D04C();

  return v3;
}

void sub_4953C(uint64_t a1, void *a2)
{
  sub_495B0();
  isa = sub_8D03C().super.isa;

  [a2 setAllConfirmationOptions:isa];
}

unint64_t sub_495B0()
{
  result = qword_C2290;
  if (!qword_C2290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C2290);
  }

  return result;
}

id sub_495F4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_4960C()
{
}

uint64_t sub_49624()
{

  return swift_getObjCClassFromMetadata();
}

uint64_t type metadata accessor for SendAnnouncementAceViewProvider(uint64_t a1)
{
  result = qword_C22B0;
  if (!qword_C22B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_496E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a2;
  v23 = a1;
  v6 = type metadata accessor for SignpostLog.Signpost(0);
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  v8 = __chkstk_darwin(v6);
  v9 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  if (qword_BF820 != -1)
  {
    swift_once();
  }

  v12 = qword_C0EE8;
  sub_8CCCC();
  sub_8D16C();
  sub_8CCBC();
  v13 = &v11[*(v6 + 20)];
  *v13 = "IdiomSensitiveViewBuilder";
  *(v13 + 1) = 25;
  v13[16] = 2;
  sub_4A270(v11, v9);
  v14 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v15 = swift_allocObject();
  sub_4A3B8(v9, v15 + v14);
  v16 = (v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v22;
  v16[1] = a3;
  sub_622C((v4 + 24), *(v4 + 48));

  if (sub_8B62C())
  {
    sub_11A5C(v23, sub_4A41C, v15);
  }

  else
  {
    sub_622C((v4 + 24), *(v4 + 48));
    if (sub_8B64C())
    {
      sub_11CD8(v23, sub_4A41C, v15, v17);
    }

    else
    {
      sub_622C((v4 + 24), *(v4 + 48));
      if (sub_8B65C())
      {
        sub_11CF8(v23, sub_4A41C, v15, v18);
      }

      else
      {
        sub_622C((v4 + 24), *(v4 + 48));
        if (sub_8B61C() & 1) != 0 || (sub_622C((v4 + 24), *(v4 + 48)), (sub_8B60C()))
        {
          sub_11EA0(v23, sub_4A41C, v15);
        }

        else
        {
          sub_122C8(v23, sub_4A41C, v15);
        }
      }
    }
  }

  return sub_4A4CC(v11);
}

uint64_t sub_49A48(uint64_t a1, void *a2)
{
  *(v2 + qword_C22A0) = a1;
  sub_E528(a2, v2 + qword_C22A8);
  v4 = sub_8BB3C();
  sub_2714(a2);
  return v4;
}

uint64_t sub_49A9C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, void))
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v6 = sub_8CD0C();
  sub_33F4(v6, qword_C3DF8);
  v7 = sub_8CCEC();
  v8 = sub_8D11C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Making a SAIntentGroupHandleIntent that contains INPlayAnnouncementSoundIntent.", v9, 2u);
  }

  v10 = [objc_allocWithZone(INPlayAnnouncementSoundIntent) initWithSoundType:1];
  v11 = [a2 _metadata];
  [v10 _setMetadata:v11];

  sub_4A528();
  v12 = sub_8CA7C();
  v14 = sub_349C(v10, v12, v13);
  sub_2664(&qword_C0690, &unk_8EBF0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_8E860;
  *(v15 + 32) = v14;
  v16 = v14;
  a4(v15, 0);
}

uint64_t sub_49C80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v13 = sub_8CD0C();
  sub_33F4(v13, qword_C3DF8);
  v14 = sub_8CCEC();
  v15 = sub_8D11C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "Making a LaunchApp button.", v16, 2u);
  }

  sub_117E4(*(v8 + qword_C22A0), a4, (v8 + qword_C22A8), v18);
  sub_622C(v18, v18[3]);
  sub_496E8(a5, a6, a7);
  return sub_2714(v18);
}

uint64_t sub_49DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void (*a8)(void), uint64_t a9)
{
  v25 = a8;
  v9 = sub_8BE4C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v24 = a9;
  v13 = sub_8CD0C();
  sub_33F4(v13, qword_C3DF8);
  v14 = sub_8CCEC();
  v15 = sub_8D11C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "Building disambiguation snippet", v16, 2u);
  }

  sub_8B46C();
  sub_8B41C();
  sub_8B43C();

  sub_4A56C();
  if (sub_8B64C())
  {
    sub_8B4BC();
    v17 = sub_8B55C();

    sub_8B44C();

LABEL_9:

    goto LABEL_10;
  }

  sub_4A56C();
  if (sub_8B61C())
  {
    sub_8B4BC();
    (*(v10 + 104))(v12, enum case for ImageSize.original(_:), v9);
    v18 = sub_8B56C();

    (*(v10 + 8))(v12, v9);
    v19 = sub_8CEDC();
    sub_4A20C(v19, v20, v18);
    v21 = [objc_allocWithZone(SAUISash) init];
    v22 = sub_8CEAC();
    [v21 setApplicationBundleIdentifier:v22];

    [v18 setSash:v21];
    sub_8B42C();

    goto LABEL_9;
  }

LABEL_10:
  sub_8B45C();
  v25();
}

uint64_t sub_4A14C()
{

  v1 = (v0 + qword_C22A8);

  return sub_2714(v1);
}

uint64_t sub_4A18C()
{
  v0 = sub_8BB5C();

  sub_2714((v0 + qword_C22A8));
  return v0;
}

uint64_t sub_4A1D4()
{
  v0 = sub_4A18C();

  return _swift_deallocClassInstance(v0, 64, 7);
}

void sub_4A20C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_8CEAC();

  [a3 setItemType:v4];
}

uint64_t sub_4A270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostLog.Signpost(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4A2D4()
{
  v1 = *(type metadata accessor for SignpostLog.Signpost(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_8CCDC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_4A3B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostLog.Signpost(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_4A41C(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for SignpostLog.Signpost(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2BCD0(a1, a2 & 1, v2 + v6, v7);
}

uint64_t sub_4A4CC(uint64_t a1)
{
  v2 = type metadata accessor for SignpostLog.Signpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_4A528()
{
  result = qword_C2300;
  if (!qword_C2300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C2300);
  }

  return result;
}

uint64_t sub_4A56C()
{
  v1 = v0[3];
  sub_622C(v0, v1);
  return v1;
}

uint64_t sub_4A598(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_8B6BC();
  v2[5] = swift_task_alloc();
  v3 = sub_8BCBC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_4A684);
}

uint64_t sub_4A684()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_4A718;

  return sub_4D304();
}

uint64_t sub_4A718(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_E6F8();
  *v6 = v5;

  if (v1)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    *(v4 + 80) = a1;

    return _swift_task_switch(sub_4A870);
  }
}

uint64_t sub_4A870()
{
  v1 = v0[10];
  v2 = sub_8B8FC();
  swift_allocObject();
  v3 = sub_8B8EC();
  v0[11] = v3;
  v0[2] = v3;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v4 = swift_allocObject();
  v0[12] = v4;
  *(v4 + 16) = xmmword_8E860;
  *(v4 + 32) = v1;
  v5 = v1;
  sub_8B6AC();
  sub_8BC3C();
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_4A9CC;
  v7 = v0[8];
  v8 = v0[3];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v8, v4, v7, v2, &protocol witness table for ResponseFactory);
}

uint64_t sub_4A9CC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *v0;
  sub_E6F8();
  *v5 = v4;

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_4AB38);
}

uint64_t sub_4AB38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4ABC4()
{
  sub_2714((v0 + 16));

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_4AC28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3D7E4;

  return sub_4A598(a1);
}

uint64_t type metadata accessor for SendAnnouncementCATs(uint64_t a1)
{
  result = qword_C23B8;
  if (!qword_C23B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4AD50(unint64_t a1, unsigned __int8 a2)
{
  sub_2664(&qword_C1CE8, &unk_91960);
  v4 = swift_allocObject();
  v5 = sub_4BB0C(v4, xmmword_8FAD0);
  v5[2].n128_u64[0] = v6;
  v5[2].n128_u64[1] = 0xE600000000000000;
  v7 = sub_2664(&qword_C2408, &unk_92390);
  v4[3].n128_u64[0] = a1;
  v4[4].n128_u64[1] = v7;
  strcpy(&v4[5], "isHomeTarget");
  v4[5].n128_u8[13] = 0;
  v4[5].n128_u16[7] = -5120;
  v4[7].n128_u64[1] = &type metadata for Bool;
  v4[6].n128_u8[0] = a2;

  sub_4BB74(0xD00000000000003DLL);
}

uint64_t sub_4AE54(unint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_2664(&qword_C1CE8, &unk_91960);
  v6 = swift_allocObject();
  v7 = sub_4BB0C(v6, xmmword_8FAC0);
  v7[2].n128_u64[0] = v8;
  v7[2].n128_u64[1] = 0xE600000000000000;
  v9 = sub_2664(&qword_C2408, &unk_92390);
  v6[3].n128_u64[0] = a1;
  v6[4].n128_u64[1] = v9;
  v6[5].n128_u64[0] = 0x656D614E656D6F68;
  v6[5].n128_u64[1] = 0xE900000000000073;
  v6[6].n128_u64[0] = a2;
  v6[7].n128_u64[1] = v9;
  v6[8].n128_u64[0] = 0x656369766564;
  v6[8].n128_u64[1] = 0xE600000000000000;
  if (a3)
  {
    v10 = sub_8C9FC();
    v11 = a3;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v6[9].n128_u64[1] = 0;
    v6[10].n128_u64[0] = 0;
  }

  v6[9].n128_u64[0] = v11;
  v6[10].n128_u64[1] = v10;

  sub_4BB74(0xD000000000000026);
}

uint64_t sub_4B00C()
{
  sub_115EC();
  v0 = sub_2664(&qword_C1CE8, &unk_91960);
  v1 = sub_4BB8C(v0);
  v2 = sub_4BB0C(v1, xmmword_8E3F0);
  v2[2].n128_u64[0] = v3 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  v2[2].n128_u64[1] = 0xE700000000000000;
  v4 = sub_2664(&qword_C2408, &unk_92390);
  sub_4BB3C(v4);
  sub_4BB20(0xD000000000000041);
}

uint64_t sub_4B0E0()
{
  sub_115EC();
  v1 = sub_2664(&qword_C1CE8, &unk_91960);
  v2 = sub_4BB8C(v1);
  sub_4BB58(v2, "announcementRecipients", xmmword_8E3F0);
  v3 = sub_2664(&qword_C2408, &unk_92390);
  sub_4BB3C(v3);
  sub_4BB20(v0 + 39);
}

uint64_t sub_4B18C()
{
  sub_115EC();
  v1 = sub_2664(&qword_C1CE8, &unk_91960);
  v2 = sub_4BB8C(v1);
  sub_4BB58(v2, "announcementRecipients", xmmword_8E3F0);
  v3 = sub_2664(&qword_C2408, &unk_92390);
  sub_4BB3C(v3);
  sub_4BB20(v0 + 29);
}

uint64_t sub_4B2B0(uint64_t a1, char a2, char a3)
{
  sub_2664(&qword_C1CE8, &unk_91960);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_8FAC0;
  *(v6 + 32) = 0xD000000000000016;
  *(v6 + 40) = 0x8000000000097950;
  v7 = sub_2664(&qword_C2408, &unk_92390);
  *(v6 + 48) = a1;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0x6970696365527369;
  *(v6 + 88) = 0xEF656D6F48746E65;
  *(v6 + 96) = a2;
  *(v6 + 120) = &type metadata for Bool;
  *(v6 + 128) = 0x796C7065527369;
  *(v6 + 136) = 0xE700000000000000;
  *(v6 + 168) = &type metadata for Bool;
  *(v6 + 144) = a3;

  sub_4BB74(0xD000000000000026);
}

uint64_t sub_4B3F4(uint64_t a1)
{
  v2 = sub_2664(&qword_C1CE0, &unk_91EC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_2664(&qword_C1CE8, &unk_91960);
  v6 = sub_4BB8C(v5);
  *(v6 + 16) = xmmword_8E3F0;
  *(v6 + 32) = 0x656D614E707061;
  *(v6 + 40) = 0xE700000000000000;
  sub_4BA4C(a1, v4, &qword_C1CE0, &unk_91EC0);
  v7 = sub_8C99C();
  if (sub_3364(v4, 1, v7) == 1)
  {
    sub_4BAB0(v4, &qword_C1CE0, &unk_91EC0);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v7;
    sub_E5DC((v6 + 48));
    sub_4BBA4();
    (*(v8 + 32))();
  }

  sub_4BB74(0xD00000000000001CLL);
}

uint64_t sub_4B5D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C1CE0, &unk_91EC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  sub_2664(&qword_C1CE8, &unk_91960);
  v7 = swift_allocObject();
  v8 = sub_4BB0C(v7, xmmword_8FAD0);
  v8[2].n128_u64[0] = v9;
  v8[2].n128_u64[1] = 0xE600000000000000;
  sub_4BA4C(a1, v6, &qword_C1CE0, &unk_91EC0);
  v10 = sub_8C99C();
  if (sub_3364(v6, 1, v10) == 1)
  {
    sub_4BAB0(v6, &qword_C1CE0, &unk_91EC0);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v10;
    sub_E5DC((v7 + 48));
    sub_4BBA4();
    (*(v11 + 32))();
  }

  *(v7 + 80) = 0x656369766564;
  *(v7 + 88) = 0xE600000000000000;
  if (a2)
  {
    v12 = sub_8C9FC();
    v13 = a2;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
  }

  *(v7 + 96) = v13;
  *(v7 + 120) = v12;

  sub_4BB20(0xD000000000000036);
}

uint64_t sub_4B7B0()
{
  sub_115EC();
  v0 = sub_2664(&qword_C1CE8, &unk_91960);
  v1 = sub_4BB8C(v0);
  *(v1 + 16) = xmmword_8E3F0;
  *(v1 + 32) = 0x67726154656D6F68;
  *(v1 + 40) = 0xEA00000000007465;
  v2 = sub_2664(&qword_C2408, &unk_92390);
  sub_4BB3C(v2);
  sub_4BB20(0xD000000000000033);
}

uint64_t sub_4B86C()
{
  sub_115EC();
  swift_allocObject();
  return sub_4B8B8(v2, v1, v0);
}

uint64_t sub_4B8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_8CA2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664(&qword_BFF28, &unk_8EFD0);
  __chkstk_darwin(v9 - 8);
  sub_4BA4C(a1, &v13 - v10, &qword_BFF28, &unk_8EFD0);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_8C90C();
  (*(v6 + 8))(a2, v5);
  sub_4BAB0(a1, &qword_BFF28, &unk_8EFD0);
  return v11;
}

uint64_t sub_4BA4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2664(a3, a4);
  sub_4BBA4();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_4BAB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2664(a2, a3);
  sub_4BBA4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_4BB20(uint64_t a1)
{

  return sub_8C91C();
}

uint64_t sub_4BB3C(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 48) = v1;
}

__n128 *sub_4BB58@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[2].n128_u64[0] = 0xD000000000000016;
  result[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t sub_4BB74(uint64_t a1)
{

  return sub_8C91C();
}

uint64_t sub_4BB8C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t type metadata accessor for SendAnnouncementCATsSimple(uint64_t a1)
{
  result = qword_C2410;
  if (!qword_C2410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4BC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_4DF34();
}

uint64_t sub_4BC54()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_2664(&qword_C1CE8, &unk_91960);
  v4 = swift_allocObject();
  v0[6] = v4;
  v5 = sub_4BB0C(v4, xmmword_8FAC0);
  v5[2].n128_u64[0] = v6;
  v5[2].n128_u64[1] = 0xE600000000000000;
  v7 = sub_2664(&qword_C2408, &unk_92390);
  v4[3].n128_u64[0] = v3;
  v4[4].n128_u64[1] = v7;
  v4[5].n128_u64[0] = 0x656D614E656D6F68;
  v4[5].n128_u64[1] = 0xE900000000000073;
  v4[6].n128_u64[0] = v2;
  v4[7].n128_u64[1] = v7;
  v4[8].n128_u64[0] = 0x656369766564;
  v4[8].n128_u64[1] = 0xE600000000000000;
  v8 = 0;
  if (v1)
  {
    v8 = sub_8C9FC();
  }

  else
  {
    v4[9].n128_u64[1] = 0;
    v4[10].n128_u64[0] = 0;
  }

  v4[9].n128_u64[0] = v1;
  v4[10].n128_u64[1] = v8;
  v11 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_4BDF4;

  return v11(0xD000000000000026, 0x8000000000097BE0, v4);
}

uint64_t sub_4BDF4()
{
  sub_152A0();
  sub_4DF68();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_4DF78();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_4DF44();

    return v9(v8);
  }
}

uint64_t sub_4BF1C()
{
  sub_6608();

  sub_65A0();

  return v0();
}

uint64_t sub_4BF78()
{
  sub_152A0();
  v0 = sub_3C554();
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(49);

  return v4(v3);
}

uint64_t sub_4C01C()
{
  sub_152A0();
  v0 = sub_3C554();
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(39);

  return v4(v3);
}

uint64_t sub_4C0C0()
{
  sub_152A0();
  v0 = sub_3C554();
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(66);

  return v4(v3);
}

uint64_t sub_4C164()
{
  sub_152A0();
  v0 = sub_3C554();
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(61);

  return v4(v3);
}

uint64_t sub_4C208(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_4DF34();
}

uint64_t sub_4C21C()
{
  sub_4DFB4();
  v2 = sub_2664(&qword_C1CE8, &unk_91960);
  v3 = sub_4BB8C(v2);
  v4 = sub_4DFFC(v3);
  v5 = sub_4BB0C(v4, xmmword_8E3F0);
  v5[2].n128_u64[0] = v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  v5[2].n128_u64[1] = 0xE700000000000000;
  v7 = sub_2664(&qword_C2408, &unk_92390);
  sub_4DFF0(v7);
  v10 = sub_4DF88(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v8 = swift_task_alloc();
  *(v1 + 40) = v8;
  *v8 = v1;
  sub_4DFD0(v8);

  return (v10)(0xD000000000000041, 0x8000000000097AD0, v0);
}

uint64_t sub_4C334()
{
  sub_152A0();
  sub_4DF68();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_4DF78();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_4DF44();

    return v9(v8);
  }
}

uint64_t sub_4C45C()
{
  sub_152A0();
  v0 = sub_3C554();
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(61);

  return v4(v3);
}

uint64_t sub_4C500(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_4DF34();
}

uint64_t sub_4C514()
{
  sub_4DFB4();
  v0 = sub_2664(&qword_C1CE8, &unk_91960);
  v1 = sub_4BB8C(v0);
  v2 = sub_4DFFC(v1);
  sub_4DF98(v2, "announcementRecipients", xmmword_8E3F0);
  v3 = sub_2664(&qword_C2408, &unk_92390);
  sub_4DFF0(v3);
  sub_4DF88(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v4 = swift_task_alloc();
  v5 = sub_4DFC0(v4);
  *v5 = v6;
  sub_4DFD0(v5);
  sub_4DFDC();

  return v7();
}

uint64_t sub_4C618(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_4DF34();
}

uint64_t sub_4C62C()
{
  sub_4DFB4();
  v0 = sub_2664(&qword_C1CE8, &unk_91960);
  v1 = sub_4BB8C(v0);
  v2 = sub_4DFFC(v1);
  sub_4DF98(v2, "announcementRecipients", xmmword_8E3F0);
  v3 = sub_2664(&qword_C2408, &unk_92390);
  sub_4DFF0(v3);
  sub_4DF88(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v4 = swift_task_alloc();
  v5 = sub_4DFC0(v4);
  *v5 = v6;
  sub_4DFD0(v5);
  sub_4DFDC();

  return v7();
}

uint64_t sub_4C730()
{
  sub_152A0();
  v0 = sub_3C554();
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(52);

  return v4(v3);
}

uint64_t sub_4C7D4()
{
  sub_152A0();
  v0 = sub_3C554();
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(57);

  return v4(v3);
}

uint64_t sub_4C878()
{
  sub_152A0();
  v0 = sub_3C554();
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(29);

  return v4(v3);
}

uint64_t sub_4C91C(uint64_t a1, char a2, char a3)
{
  *(v4 + 57) = a3;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  return sub_4DF34();
}

uint64_t sub_4C938()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  sub_2664(&qword_C1CE8, &unk_91960);
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = xmmword_8FAC0;
  *(v4 + 32) = 0xD000000000000016;
  *(v4 + 40) = 0x8000000000097950;
  v5 = sub_2664(&qword_C2408, &unk_92390);
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0x6970696365527369;
  *(v4 + 88) = 0xEF656D6F48746E65;
  *(v4 + 96) = v2;
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 128) = 0x796C7065527369;
  *(v4 + 136) = 0xE700000000000000;
  *(v4 + 168) = &type metadata for Bool;
  *(v4 + 144) = v1;
  v10 = sub_4DF88(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = sub_4DFC0(v6);
  *v7 = v8;
  sub_4DFD0(v7);

  return (v10)(0xD000000000000026, 0x8000000000097920, v4);
}

uint64_t sub_4CAD0()
{
  sub_152A0();
  sub_4DF68();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_4DF78();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_4DF44();

    return v9(v8);
  }
}

uint64_t sub_4CBF8()
{
  sub_6608();

  sub_65A0();

  return v0();
}

BOOL sub_4CC54(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8970;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  return v4 != 0;
}

BOOL sub_4CCA8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_4CC54(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_4CCF8()
{
  sub_6608();
  v1[2] = v2;
  v1[3] = v0;
  sub_2664(&qword_C1CE0, &unk_91EC0);
  v1[4] = swift_task_alloc();
  sub_65B8();

  return _swift_task_switch(v3);
}

uint64_t sub_4CD8C()
{
  sub_4DFB4();
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_2664(&qword_C1CE8, &unk_91960);
  v4 = sub_4BB8C(v3);
  v0[5] = v4;
  *(v4 + 16) = xmmword_8E3F0;
  *(v4 + 32) = 0x656D614E707061;
  *(v4 + 40) = 0xE700000000000000;
  sub_4BA4C(v2, v1, &qword_C1CE0, &unk_91EC0);
  v5 = sub_8C99C();
  if (sub_4E01C(v5) == 1)
  {
    sub_4BAB0(v0[4], &qword_C1CE0, &unk_91EC0);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v2;
    sub_E5DC((v4 + 48));
    sub_4BBA4();
    (*(v6 + 32))();
  }

  v7 = sub_3C554();
  v0[6] = v7;
  v8 = sub_4DDAC();
  *v7 = v0;
  v7[1] = sub_4CF34;

  return v10(0xD00000000000001CLL, 0x8000000000097900, v4, &type metadata for SendAnnouncementCATsSimple.OpenHomeAppDialogIds, v8);
}

uint64_t sub_4CF34()
{
  sub_152A0();
  sub_4DF68();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_65B8();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_4E008();

    return v9(v8);
  }
}

uint64_t sub_4D064()
{
  sub_6608();

  sub_65A0();

  return v0();
}

uint64_t sub_4D0C8()
{
  sub_152A0();
  v0 = sub_3C554();
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(38);

  return v4(v3);
}

uint64_t sub_4D16C()
{
  sub_152A0();
  v0 = sub_3C554();
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4D210;
  sub_3C574();
  v3 = sub_3C58C(63);

  return v4(v3);
}

uint64_t sub_4D210()
{
  sub_6608();
  v3 = v2;
  v4 = *v1;
  sub_E6F8();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_4D304()
{
  sub_152A0();
  v0 = sub_3C554();
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(44);

  return v4(v3);
}

uint64_t sub_4D3A8()
{
  sub_152A0();
  v0 = sub_3C554();
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(42);

  return v4(v3);
}

uint64_t sub_4D44C()
{
  sub_152A0();
  v0 = sub_3C554();
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(36);

  return v4(v3);
}

uint64_t sub_4D4F0()
{
  sub_6608();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_2664(&qword_C1CE0, &unk_91EC0);
  v1[5] = swift_task_alloc();
  sub_65B8();

  return _swift_task_switch(v4);
}

uint64_t sub_4D588()
{
  sub_4DFB4();
  v1 = v0[5];
  v2 = v0[2];
  sub_2664(&qword_C1CE8, &unk_91960);
  v3 = swift_allocObject();
  v0[6] = v3;
  v4 = sub_4BB0C(v3, xmmword_8FAD0);
  v4[2].n128_u64[0] = v5;
  v4[2].n128_u64[1] = 0xE600000000000000;
  sub_4BA4C(v2, v1, &qword_C1CE0, &unk_91EC0);
  v6 = sub_8C99C();
  if (sub_4E01C(v6) == 1)
  {
    sub_4BAB0(v0[5], &qword_C1CE0, &unk_91EC0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    sub_E5DC((v3 + 48));
    sub_4BBA4();
    (*(v7 + 32))();
  }

  v8 = v0[3];
  *(v3 + 80) = 0x656369766564;
  *(v3 + 88) = 0xE600000000000000;
  v9 = 0;
  if (v8)
  {
    v9 = sub_8C9FC();
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  *(v3 + 96) = v8;
  *(v3 + 120) = v9;
  v12 = sub_4DF88(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_4D760;

  return (v12)(0xD000000000000036, 0x8000000000097850, v3);
}

uint64_t sub_4D760()
{
  sub_152A0();
  sub_4DF68();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_65B8();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_4E008();

    return v9(v8);
  }
}

uint64_t sub_4D890()
{
  sub_6608();

  sub_65A0();

  return v0();
}

uint64_t sub_4D8F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_4DF34();
}

uint64_t sub_4D908()
{
  sub_4DFB4();
  v2 = sub_2664(&qword_C1CE8, &unk_91960);
  v3 = sub_4BB8C(v2);
  v4 = sub_4DFFC(v3);
  *(v4 + 16) = xmmword_8E3F0;
  *(v4 + 32) = 0x67726154656D6F68;
  *(v4 + 40) = 0xEA00000000007465;
  v5 = sub_2664(&qword_C2408, &unk_92390);
  sub_4DFF0(v5);
  v8 = sub_4DF88(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v6 = swift_task_alloc();
  *(v1 + 40) = v6;
  *v6 = v1;
  sub_4DFD0(v6);

  return (v8)(0xD000000000000033, 0x8000000000097810, v0);
}

uint64_t sub_4DA30()
{
  sub_152A0();
  v0 = sub_3C554();
  v1 = sub_3C580(v0);
  *v1 = v2;
  v1[1] = sub_4DF30;
  sub_3C574();
  v3 = sub_3C58C(46);

  return v4(v3);
}

uint64_t sub_4DB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_8CA2C();
  sub_13DCC();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664(&qword_BFF28, &unk_8EFD0);
  __chkstk_darwin(v11 - 8);
  sub_4BA4C(a1, &v15 - v12, &qword_BFF28, &unk_8EFD0);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_8C9AC();
  (*(v7 + 8))(a2, v3);
  sub_4BAB0(a1, &qword_BFF28, &unk_8EFD0);
  return v13;
}

uint64_t sub_4DCA4(uint64_t a1, uint64_t a2)
{
  sub_8CA2C();
  sub_13DCC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_8C9BC();
  (*(v5 + 8))(a2, v2);
  return v9;
}

unint64_t sub_4DDAC()
{
  result = qword_C2460;
  if (!qword_C2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2460);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SendAnnouncementCATsSimple.OpenHomeAppDialogIds(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x4DE9CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_4DED8()
{
  result = qword_C2468;
  if (!qword_C2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2468);
  }

  return result;
}

__n128 *sub_4DF98@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[2].n128_u64[0] = 0xD000000000000016;
  result[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t sub_4DFF0(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t sub_4E01C(uint64_t a1)
{

  return sub_3364(v1, 1, a1);
}

uint64_t sub_4E03C(char a1)
{
  v15[3] = &unk_B9EC8;
  v15[4] = sub_565D0();
  LOBYTE(v15[0]) = a1 & 1;
  v2 = sub_8BE5C();
  sub_2714(v15);
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v3 = sub_8CD0C();
  sub_33F4(v3, qword_C3DF8);
  v4 = sub_8CCEC();
  v5 = sub_8D11C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136315650;
    v8 = sub_8D26C();
    v10 = sub_862D8(v8, v9, v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = sub_8D26C();
    v13 = sub_862D8(v11, v12, v15);

    *(v6 + 14) = v13;
    *(v6 + 22) = 1024;
    *(v6 + 24) = v2 & 1;
    _os_log_impl(&dword_0, v4, v5, "%s/%s=%{BOOL}d", v6, 0x1Cu);
    swift_arrayDestroy();
    sub_E890(v7);
    sub_E890(v6);
  }

  return v2 & 1;
}

uint64_t sub_4E218()
{
  v12[3] = &unk_B9F78;
  v12[4] = sub_55E7C();
  v0 = sub_8BE5C();
  sub_2714(v12);
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12[0] = swift_slowAlloc();
    *v4 = 136315650;
    v5 = sub_8D26C();
    v7 = sub_862D8(v5, v6, v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = sub_8D26C();
    v10 = sub_862D8(v8, v9, v12);

    *(v4 + 14) = v10;
    *(v4 + 22) = 1024;
    *(v4 + 24) = v0 & 1;
    _os_log_impl(&dword_0, v2, v3, "%s/%s=%{BOOL}d", v4, 0x1Cu);
    swift_arrayDestroy();
  }

  return v0 & 1;
}

uint64_t sub_4E3F0(unint64_t a1, unint64_t a2, NSObject *a3, uint64_t a4, void (*a5)(void), uint32_t *p_ivar_base_size)
{
  v12 = sub_2664(&qword_C1058, &unk_8FCA0);
  __chkstk_darwin(v12 - 8);
  v71 = &v66 - v13;
  v14 = sub_8B8CC();
  v70 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v69 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v66 - v17;
  if (qword_BF818 != -1)
  {
LABEL_36:
    swift_once();
  }

  v19 = sub_8CD0C();
  v73 = sub_33F4(v19, qword_C3DF8);
  v20 = sub_8CCEC();
  v21 = sub_8D11C();
  v22 = os_log_type_enabled(v20, v21);
  v74 = v18;
  if (v22)
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v20, v21, "#HomeCommunicationNLContextProvider makeNeedsDisambiguationContextFor called", v23, 2u);
  }

  if (sub_2670C(a2, a3) == 1)
  {
    sub_8B8BC();
    sub_1E508(0);
    sub_8B87C();
    sub_2664(&qword_C0F90, &unk_8FAE0);
    v24 = swift_allocObject();
    v72 = xmmword_8E3F0;
    *(v24 + 16) = xmmword_8E3F0;
    v77 = sub_8CF0C();
    v78 = v25;
    v75 = 32;
    v76 = 0xE100000000000000;
    v79 = 95;
    v80 = 0xE100000000000000;
    sub_10C68();
    a1 = sub_8D1FC();

    v77 = sub_1E508(3);
    v78 = v26;
    v82._countAndFlagsBits = 0x2E65756C61562ELL;
    v82._object = 0xE700000000000000;
    sub_8CF7C(v82);
    v83._countAndFlagsBits = sub_8CF0C();
    sub_8CF7C(v83);

    v18 = v74;

    v27 = v78;
    *(v24 + 32) = v77;
    *(v24 + 40) = v27;
    sub_8B89C();
    v28 = sub_2D8DC();
    a4 = sub_6C594(v28);

    if (a4)
    {
      v29 = swift_allocObject();
      *(v29 + 16) = v72;
      *(v29 + 32) = sub_1E508(5);
      *(v29 + 40) = v30;
      sub_8B8AC();
      sub_8B84C();

      a3 = sub_8CCEC();
      v31 = sub_8D11C();

      v32 = os_log_type_enabled(a3, v31);
      v67 = a5;
      v68 = p_ivar_base_size;
      v66 = v14;
      if (v32)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v77 = v34;
        *v33 = 136315138;
        sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
        v35 = sub_8D05C();
        a1 = v36;
        v37 = sub_862D8(v35, v36, &v77);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_0, a3, v31, "#HomeCommunicationNLContextProvider makeDisambiguationSDAForFilters for homes: %s", v33, 0xCu);
        sub_2714(v34);
        v18 = v74;
      }

      v38 = sub_2D3B4();
      a2 = 0;
      v14 = a4 & 0xC000000000000001;
      a5 = (a4 & 0xFFFFFFFFFFFFFF8);
      *&v72 = _swiftEmptyArrayStorage;
      p_ivar_base_size = &SKFlowFactory.ivar_base_size;
      while (v38 != a2)
      {
        if (v14)
        {
          v39 = sub_8D27C();
        }

        else
        {
          if (a2 >= *(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_35;
          }

          v39 = *(a4 + 8 * a2 + 32);
        }

        v40 = v39;
        a3 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v41 = [v39 home];
        if (v41)
        {
          v42 = v41;
          v43 = [v41 spokenPhrase];

          v44 = sub_8CEDC();
          a1 = v45;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            *&v72 = sub_75D80(0, *(v72 + 16) + 1, 1, v72);
          }

          v47 = *(v72 + 16);
          v46 = *(v72 + 24);
          if (v47 >= v46 >> 1)
          {
            *&v72 = sub_75D80((v46 > 1), v47 + 1, 1, v72);
          }

          v48 = v72;
          *(v72 + 16) = v47 + 1;
          v49 = v48 + 16 * v47;
          *(v49 + 32) = v44;
          *(v49 + 40) = a1;
          a2 = a3;
          v18 = v74;
        }

        else
        {

          ++a2;
        }
      }

      if (qword_BF7E8 != -1)
      {
        swift_once();
      }

      v55 = qword_C3DB0;

      v56 = v72;
      sub_55FD8(v72, v55);

      sub_8B82C();
      sub_50378(a4);

      sub_8B81C();
      sub_4ED38(v56);

      sub_8B83C();
      a5 = v67;
      v14 = v66;
    }

    v57 = sub_8CCEC();
    v58 = sub_8D11C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v77 = v60;
      *v59 = 136315138;
      swift_beginAccess();
      v61 = v70;
      (*(v70 + 16))(v69, v18, v14);
      v62 = sub_8CEEC();
      v64 = sub_862D8(v62, v63, &v77);
      v18 = v74;

      *(v59 + 4) = v64;
      _os_log_impl(&dword_0, v57, v58, "#HomeCommunicationNLContextProvider nlContext: %s", v59, 0xCu);
      sub_2714(v60);
    }

    else
    {

      v61 = v70;
    }

    v65 = v71;
    swift_beginAccess();
    (*(v61 + 16))(v65, v18, v14);
    sub_6270(v65, 0, 1, v14);
    a5(v65);
    sub_1D05C(v65, &qword_C1058, &unk_8FCA0);
    return (*(v61 + 8))(v18, v14);
  }

  else
  {
    v50 = sub_8CCEC();
    v51 = sub_8D12C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_0, v50, v51, "Incorrect slot presented for disambiguation", v52, 2u);
    }

    sub_2664(&qword_C2608, &unk_92760);
    v53 = sub_8BC1C();

    return v53(a1, a2, a3, a4, a5, p_ivar_base_size);
  }
}

uint64_t sub_4ED38(uint64_t a1)
{
  v2 = sub_8BE7C();
  __chkstk_darwin(v2 - 8);
  v116 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_8BF9C();
  v4 = *(v115 - 8);
  v5 = __chkstk_darwin(v115);
  v108 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v118 = &v80 - v7;
  v117 = sub_8BF1C();
  v8 = *(v117 - 8);
  v9 = __chkstk_darwin(v117);
  v114 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v80 - v11;
  v86 = sub_8BFDC();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_8C00C();
  v82 = *(v83 - 8);
  v14 = __chkstk_darwin(v83);
  v80 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v81 = &v80 - v16;
  v98 = sub_8C15C();
  v17 = *(v98 - 8);
  __chkstk_darwin(v98);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2664(&qword_C1090, &unk_92770);
  __chkstk_darwin(v20 - 8);
  v105 = &v80 - v21;
  v104 = sub_8C2DC();
  __chkstk_darwin(v104);
  v103 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v102 = (v24 + 104);
  v101 = (v24 + 8);
  v96 = (v17 + 8);
  v121 = _swiftEmptyArrayStorage;
  v107 = (v4 + 16);
  v93 = (v8 + 16);
  v25 = *(a1 + 16);
  v92 = v8 + 32;
  v95 = (v8 + 8);
  v100 = enum case for IdentifierValue.vHomeAutomationHome(_:);
  v97 = (v4 + 8);
  v26 = (a1 + 40);
  *(&v27 + 1) = 3;
  v99 = xmmword_8E860;
  *&v27 = 136315138;
  v88 = v27;
  v119 = _swiftEmptyArrayStorage;
  v106 = _swiftEmptyArrayStorage;
  v87 = v8;
  v94 = v19;
  if (v25)
  {
    while (1)
    {
      v112 = v26;
      v113 = v25;
      v29 = *(v26 - 1);
      v28 = *v26;
      sub_8C10C();
      swift_allocObject();

      v30 = sub_8C0FC();
      v31 = v103;
      v32 = v104;
      (*v102)(v103, v100, v104);
      sub_4FB38(v30, v29, v28, v31);

      v33 = v31;
      v34 = v30;
      (*v101)(v33, v32);
      sub_8C6AC();
      swift_allocObject();
      v35 = sub_8C69C();

      sub_8C0DC();

      sub_2664(&qword_C0690, &unk_8EBF0);
      v36 = swift_allocObject();
      *(v36 + 16) = v99;
      *(v36 + 32) = v35;
      v37 = sub_8C3FC();
      v38 = v105;
      sub_6270(v105, 1, 1, v37);

      v39 = sub_8C3AC();

      sub_1D05C(v38, &qword_C1090, &unk_92770);
      sub_8C6FC();
      if (v23)
      {
        break;
      }

      sub_ADE4(0, &qword_C10A0, USOSerializedGraph_ptr);
      v40 = sub_8D14C();
      (*v96)(v19, v98);
      v41 = objc_allocWithZone(SIRINLUUserStatedTask);
      v111 = v40;
      v42 = [v41 initWithTask:v40];
      sub_8D02C();
      if (*(&dword_10 + (v121 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v121 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_8D06C();
      }

      v110 = v42;
      sub_8D08C();
      v106 = v121;
      sub_8BF0C();
      sub_8BF8C();
      sub_8C05C();
      v109 = v39;
      v43 = v118;
      swift_beginAccess();
      sub_8BF7C();
      swift_endAccess();
      v44 = *v107;
      (*v107)(v108, v43, v115);
      sub_8BEFC();
      (*v93)(v114, v12, v117);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_762D0();
        v119 = v62;
      }

      v45 = v119[2];
      if (v45 >= v119[3] >> 1)
      {
        sub_762D0();
        v119 = v63;
      }

      v46 = v119;
      v119[2] = v45 + 1;
      (*(v8 + 32))(v46 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v45, v114, v117);
      if (qword_BF818 != -1)
      {
        swift_once();
      }

      v47 = sub_8CD0C();
      sub_33F4(v47, qword_C3DF8);
      v48 = sub_8CCEC();
      v49 = sub_8D11C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v90 = v34;
        v51 = v50;
        v52 = swift_slowAlloc();
        v120[0] = v52;
        *v51 = v88;
        v89 = v35;
        v53 = v108;
        v54 = v118;
        v55 = v115;
        v44(v108, v118, v115);
        v56 = sub_69A10(v53);
        v91 = 0;
        v58 = sub_862D8(v56, v57, v120);
        v59 = v54;
        v60 = v117;
        v23 = v91;

        *(v51 + 4) = v58;
        _os_log_impl(&dword_0, v48, v49, "#HomeCommunicationNLContextProvider Building UserStatedTask for disambiguating between homes: %s", v51, 0xCu);
        sub_2714(v52);

        (*v95)(v12, v60);
        v61 = v55;
        v8 = v87;
        (*v97)(v59, v61);
      }

      else
      {

        (*v95)(v12, v117);
        (*v97)(v118, v115);
      }

      v19 = v94;
      v26 = v112 + 2;
      v25 = v113 - 1;
      if (v113 == 1)
      {
        goto LABEL_15;
      }
    }

    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v64 = sub_8CD0C();
    sub_33F4(v64, qword_C3DF8);
    swift_errorRetain();
    v65 = sub_8CCEC();
    v66 = sub_8D12C();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v120[0] = v68;
      *v67 = v88;
      v120[3] = v23;
      swift_errorRetain();
      sub_2664(&qword_BFF30, &unk_8E4E0);
      v69 = sub_8CEEC();
      v71 = sub_862D8(v69, v70, v120);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_0, v65, v66, "#HomeCommunicationNLContextProvider Error building system dialog act for disambiguation: %s", v67, 0xCu);
      sub_2714(v68);
    }

    else
    {
    }
  }

  else
  {
LABEL_15:
  }

  v72 = v81;
  sub_8BFFC();
  sub_8BFEC();
  v73 = v84;
  sub_8BFCC();
  v74 = v82;
  v75 = v83;
  (*(v82 + 16))(v80, v72, v83);
  sub_8BFAC();
  sub_2664(&qword_C1098, &qword_8FCD8);
  v76 = v85;
  v77 = (*(v85 + 80) + 32) & ~*(v85 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_8E3F0;
  (*(v76 + 32))(v78 + v77, v73, v86);
  (*(v74 + 8))(v72, v75);
  return v78;
}

void sub_4FB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v5 = sub_2664(&qword_C1088, &qword_8FCC8);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = sub_2664(&qword_C0008, &qword_8FCD0);
  __chkstk_darwin(v8 - 8);
  v46 = v41 - v9;
  v10 = sub_8C2DC();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v56 = (v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_8C48C();
  v47 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_8C46C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_8C29C();
  v52 = *(v19 - 8);
  v53 = v19;
  v20 = __chkstk_darwin(v19);
  v49 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v48 = v41 - v22;
  v54 = a2;
  sub_8C0EC();
  sub_8C53C();
  v23 = sub_8C3CC();
  if (v23 && (v24 = sub_50190(v23), , v24))
  {
    v44 = enum case for IdentifierAppBundle.abHomeKit(_:);
    v45 = v7;
    v43 = *(v16 + 104);
    v43(v18);

    v25 = sub_8C45C();
    v41[1] = v26;
    v41[2] = v25;
    (*(v16 + 8))(v18, v15);
    v27 = v47;
    v41[0] = v24;
    v42 = *(v47 + 104);
    v42(v14, enum case for IdentifierNamespace.nsSemanticValue(_:), v12);
    sub_8C47C();
    (*(v27 + 8))(v14, v12);
    v28 = v48;
    sub_8C26C();
    sub_8C17C();
    (*(v50 + 16))(v56, v55, v51);
    (v43)(v18, v44, v15);
    v29 = v46;
    v42(v46, enum case for IdentifierNamespace.nsHomeKitEntityType(_:), v12);
    sub_6270(v29, 0, 1, v12);
    v30 = enum case for UsoIdentifier.NluComponent.unknown(_:);
    v31 = sub_8C21C();
    v32 = v45;
    (*(*(v31 - 8) + 104))(v45, v30, v31);
    sub_6270(v32, 0, 1, v31);
    v33 = v49;
    sub_8C25C();
    sub_8C17C();

    v34 = *(v52 + 8);
    v35 = v33;
    v36 = v53;
    v34(v35, v53);
    v34(v28, v36);
  }

  else
  {
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v37 = sub_8CD0C();
    sub_33F4(v37, qword_C3DF8);
    v56 = sub_8CCEC();
    v38 = sub_8D12C();
    if (os_log_type_enabled(v56, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v56, v38, "Unable to get name string builder", v39, 2u);
    }

    v40 = v56;
  }
}

uint64_t sub_50190(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }

LABEL_3:
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_2D3BC();
      if ((a1 & 0xC000000000000001) == 0)
      {
      }
    }

    sub_566C4();
    return sub_8D27C();
  }

  result = sub_8D35C();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

unint64_t sub_50220()
{
  sub_2664(&qword_C07E0, &qword_8FCB0);
  sub_228D8();
  v0 = sub_8C16C();
  sub_75890(v0, v1);
  v3 = v2;

  if (v3)
  {
    v4 = sub_8CE8C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v10._countAndFlagsBits = v4;
  v10._object = v6;
  sub_8CF7C(v10);

  v7 = sub_8C16C();
  sub_1EB64(1uLL, v7, v8);
  sub_1ECF8();

  sub_8CF6C();

  return 0xD000000000000012;
}

void sub_50378(uint64_t a1)
{
  v71 = sub_8B00C();
  v2 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_8CDCC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v63 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v55 = &v52 - v9;
  __chkstk_darwin(v8);
  v76 = &v52 - v10;
  v11 = sub_2664(&qword_C1070, &qword_8FCB8);
  v12 = __chkstk_darwin(v11 - 8);
  v69 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v68 = &v52 - v15;
  __chkstk_darwin(v14);
  v17 = &v52 - v16;
  sub_8CD7C();
  swift_allocObject();
  v18 = sub_8CD6C();
  v73 = sub_2D3B4();
  if (v73)
  {
    v20 = v5;
    v21 = 0;
    v77 = 0;
    v72 = a1 & 0xC000000000000001;
    v56 = a1 & 0xFFFFFFFFFFFFFF8;
    v64 = "com.apple.siri.nl.";
    v65 = (v2 + 8);
    v60 = (v20 + 8);
    v61 = (v20 + 16);
    v22 = _swiftEmptyArrayStorage;
    v54 = v20;
    v53 = v20 + 32;
    *&v19 = 136315138;
    v52 = v19;
    v57 = v17;
    v66 = v18;
    v67 = a1;
    v62 = v4;
    while (1)
    {
      if (v72)
      {
        v23 = sub_8D27C();
      }

      else
      {
        if (v21 >= *(v56 + 16))
        {
          goto LABEL_31;
        }

        v23 = *(a1 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (sub_50C0C(v23))
      {
        v74 = v22;
        v75 = v21 + 1;
        v26 = sub_8CD4C();
        sub_6270(v17, 1, 1, v26);
        v27 = v68;
        sub_8CD5C();
        sub_1D05C(v17, &qword_C1070, &qword_8FCB8);
        sub_6270(v27, 0, 1, v26);
        sub_2293C(v27, v17);
        v28 = v70;
        sub_8AFFC();
        sub_8AFDC();
        (*v65)(v28, v71);
        sub_2FB74(v17, v69, &qword_C1070, &qword_8FCB8);
        sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);

        v29 = v24;
        v30 = v77;
        sub_8CDAC();
        v77 = v30;
        if (v30)
        {
          sub_1D05C(v17, &qword_C1070, &qword_8FCB8);
          if (qword_BF818 != -1)
          {
            swift_once();
          }

          v31 = sub_8CD0C();
          sub_33F4(v31, qword_C3DF8);
          v32 = sub_8CCEC();
          v33 = sub_8D12C();
          v34 = os_log_type_enabled(v32, v33);
          v22 = v74;
          if (v34)
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_0, v32, v33, "#HomeCommunicationNLContextProvider Error creating RREntity", v35, 2u);
            v17 = v57;
          }

          v77 = 0;
          a1 = v67;
        }

        else
        {
          v36 = v62;
          v37 = v55;
          if (qword_BF818 != -1)
          {
            swift_once();
          }

          v59 = v29;
          v38 = sub_8CD0C();
          sub_33F4(v38, qword_C3DF8);
          v39 = *v61;
          (*v61)(v37, v76, v36);
          v40 = sub_8CCEC();
          v41 = sub_8D11C();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v78[0] = v43;
            *v42 = v52;
            sub_56588(&qword_C1078, 255, &type metadata accessor for RREntity, &protocol conformance descriptor for RREntity);
            v44 = sub_8D43C();
            v46 = v45;
            v58 = *v60;
            v58(v37, v62);
            v47 = sub_862D8(v44, v46, v78);
            v36 = v62;

            *(v42 + 4) = v47;
            _os_log_impl(&dword_0, v40, v41, "#HomeCommunicationNLContextProvider rrEntity: %s", v42, 0xCu);
            sub_2714(v43);
          }

          else
          {

            v58 = *v60;
            v58(v37, v36);
          }

          v17 = v57;
          v22 = v74;
          v39(v63, v76, v36);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a1 = v67;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_761F8();
            v22 = v50;
          }

          v49 = v22[2];
          if (v49 >= v22[3] >> 1)
          {
            sub_761F8();
            v22 = v51;
          }

          v58(v76, v36);
          sub_1D05C(v17, &qword_C1070, &qword_8FCB8);
          v22[2] = v49 + 1;
          (*(v54 + 32))(v22 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v49, v63, v36);
        }

        v25 = v75;
      }

      else
      {
      }

      ++v21;
      if (v25 == v73)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_28:
  }
}

uint64_t sub_50C0C(void *a1)
{
  v2 = sub_8C2DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 home];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 spokenPhrase];

    v9 = sub_8CEDC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  sub_8C10C();
  swift_allocObject();
  v12 = sub_8C0FC();
  (*(v3 + 104))(v5, enum case for IdentifierValue.vHomeAutomationHome(_:), v2);
  sub_4FB38(v12, v9, v11, v5);

  (*(v3 + 8))(v5, v2);
  v13 = sub_8C52C();

  return v13;
}

uint64_t sub_50DB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v135 = sub_8BDBC();
  sub_3488();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8BDEC();
  sub_3488();
  v136 = v12;
  v137 = v11;
  __chkstk_darwin(v11);
  v139 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_8BE0C();
  sub_3488();
  v16 = v15;
  v18 = __chkstk_darwin(v17);
  v138 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v141 = &v134 - v21;
  __chkstk_darwin(v20);
  v23 = &v134 - v22;
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v24 = sub_8CD0C();
  v140 = sub_33F4(v24, qword_C3DF8);
  v25 = sub_8CCEC();
  v26 = sub_8D11C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = sub_E8E0();
    v134 = a1;
    v28 = v10;
    v29 = v7;
    v30 = v3;
    v31 = v23;
    v32 = v16;
    v33 = v14;
    v34 = a2;
    v35 = v27;
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "#SendAnnouncementDisambiguationStrategy actionForInput called", v27, 2u);
    v36 = v35;
    a2 = v34;
    v14 = v33;
    v16 = v32;
    v23 = v31;
    v3 = v30;
    v7 = v29;
    v10 = v28;
    a1 = v134;
    sub_E890(v36);
  }

  sub_8BD9C();
  v37 = v141;
  (*(v16 + 16))(v141, v23, v14);
  v38 = sub_566C4();
  v40 = v39(v38);
  if (v40 == enum case for Parse.NLv3IntentOnly(_:))
  {
    goto LABEL_6;
  }

  if (v40 == enum case for Parse.directInvocation(_:))
  {
    v48 = sub_566C4();
    v49(v48);
    v51 = v136;
    v50 = v137;
    v52 = v139;
    (*(v136 + 32))(v139, v37, v137);
    if (sub_8BDCC() == 0xD00000000000003ALL && 0x8000000000095C40 == v53)
    {
    }

    else
    {
      v55 = sub_8D45C();

      if ((v55 & 1) == 0)
      {
        v56 = sub_8CCEC();
        v57 = sub_8D12C();
        if (sub_E7DC(v57))
        {
LABEL_16:
          v58 = sub_E8E0();
          sub_56674(v58);
          sub_48734();
          _os_log_impl(v59, v60, v61, v62, v63, 2u);
          v52 = v139;
          sub_E890(a2);
        }

LABEL_37:

        goto LABEL_46;
      }
    }

    v85 = sub_8BDDC();
    if (!v85)
    {
      goto LABEL_46;
    }

    sub_5A1A8(0x7865646E69, 0xE500000000000000, v85, &v145);

    if (!v146)
    {
      sub_1D05C(&v145, &qword_C05F0, &unk_8F020);
      goto LABEL_46;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_46:
      if (*(v3 + 16))
      {
        sub_8B75C();
      }

      else
      {
        sub_8B76C();
      }

      (*(v51 + 8))(v52, v50);
      v116 = sub_566D0();
      return v117(v116);
    }

    v86 = v143;
    if (sub_2D3B4())
    {
      v141 = v23;
      v87 = *(v3 + 17);
      sub_2D3BC();
      if ((v87 & 0xC000000000000001) != 0)
      {

        sub_8D27C();
        sub_566DC();
      }

      else
      {
        v86 = *(v87 + 8 * v86 + 32);
      }

      v88 = *(v3 + 16);
      *(v3 + 16) = v86;

      v56 = sub_8CCEC();
      sub_8D11C();

      if (sub_566E8())
      {
        sub_1D358();
        v89 = sub_566A8();
        *&v145 = v89;
        *v52 = 136315138;
        *&v143 = *(v3 + 16);
        v90 = v143;
        sub_2664(&qword_C1950, &qword_92790);
        v91 = sub_8CEEC();
        v93 = sub_862D8(v91, v92, &v145);

        *(v52 + 4) = v93;
        v51 = v136;
        sub_56688(&dword_0, v94, v95, "#SendAnnouncementDisambiguationStrategy selectedHome from direct invocation: %s");
        sub_2714(v89);
        v96 = v89;
        v50 = v137;
        sub_E890(v96);
        v97 = v52;
        v52 = v139;
        sub_E890(v97);
      }

      goto LABEL_37;
    }

    v56 = sub_8CCEC();
    v133 = sub_8D12C();
    if (sub_E7DC(v133))
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

  if (v40 != enum case for Parse.NLv4IntentOnly(_:) && v40 != enum case for Parse.uso(_:))
  {
    v65 = sub_8CCEC();
    v66 = sub_8D11C();
    if (sub_E7DC(v66))
    {
      v67 = sub_E8E0();
      sub_56674(v67);
      sub_48734();
      _os_log_impl(v68, v69, v70, v71, v72, 2u);
      v14 = v10;
      sub_E890(a2);
    }

    v73 = *(v16 + 8);
    v73(v141, v14);
    sub_8B76C();
    v74 = sub_566D0();
    return (v73)(v74);
  }

LABEL_6:
  v41 = *(v16 + 8);
  v42 = sub_566C4();
  (v41)(v42);
  v43 = sub_48768();
  if (v43)
  {
    v44 = *(v3 + 16);
    *(v3 + 16) = v43;
    v45 = v43;

    sub_8B75C();
LABEL_8:
    v46 = sub_566D0();
    return (v41)(v46);
  }

  v139 = a2;
  sub_622C(v3 + 2, *(v3 + 5));

  v141 = v41;
  v75 = v138;
  sub_8BD9C();
  sub_2EBF0(v75, &v143);

  v76 = v75;
  v41 = v141;
  (v141)(v76, v14);
  if (!v144)
  {
    sub_1D05C(&v143, &qword_C0438, &qword_8EBD0);
    v98 = v135;
    (*(v7 + 16))(v10, a1, v135);
    v99 = sub_8CCEC();
    v100 = sub_8D12C();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = sub_1D358();
      v137 = v101;
      v140 = swift_slowAlloc();
      *&v145 = v140;
      *v101 = 136315138;
      v102 = v138;
      sub_8BD9C();
      v103 = v102;
      v41 = v141;
      v104 = sub_72160(v103);
      v105 = v10;
      v107 = v106;
      (*(v7 + 8))(v105, v98);
      v108 = sub_862D8(v104, v107, &v145);

      v109 = v137;
      *(v137 + 1) = v108;
      v110 = v109;
      _os_log_impl(&dword_0, v99, v100, "#SendAnnouncementDisambiguationStrategy couldn't transform input: %s", v109, 0xCu);
      v111 = v140;
      sub_2714(v140);
      sub_E890(v111);
      sub_E890(v110);
    }

    else
    {

      (*(v7 + 8))(v10, v98);
    }

    sub_8B76C();
    goto LABEL_8;
  }

  sub_E510(&v143, &v145);
  sub_E528(&v145, &v143);
  v77 = sub_8CCEC();
  v78 = sub_8D11C();
  if (os_log_type_enabled(v77, v78))
  {
    sub_1D358();
    v79 = sub_566A8();
    v138 = v3;
    v80 = v79;
    v142 = v79;
    *v10 = 136315138;
    sub_622C(&v143, v144);
    v81 = sub_8D43C();
    v83 = v82;
    sub_2714(&v143);
    v84 = sub_862D8(v81, v83, &v142);

    *(v10 + 4) = v84;
    _os_log_impl(&dword_0, v77, v78, "#SendAnnouncementDisambiguationStrategy nlIntent: %s", v10, 0xCu);
    sub_2714(v80);
    v3 = v138;
    sub_E890(v80);
    sub_E890(v10);
  }

  else
  {

    sub_2714(&v143);
  }

  v112 = v147;
  sub_622C(&v145, v146);
  v113 = sub_566DC();
  v115 = v114(v113, v112);
  if ((v115 - 1) >= 2)
  {
    if (!v115)
    {
      goto LABEL_56;
    }

    v118 = v147;
    sub_622C(&v145, v146);
    v119 = sub_566DC();
    v121 = v120(v119, v118);
    v122 = *(v3 + 16);
    *(v3 + 16) = v121;

    v123 = sub_8CCEC();
    sub_8D11C();

    if (sub_566E8())
    {
      sub_1D358();
      v124 = sub_566A8();
      v140 = v124;
      *v10 = 136315138;
      v142 = *(v3 + 16);
      *&v143 = v124;
      v125 = v142;
      sub_2664(&qword_C1950, &qword_92790);
      v126 = sub_8CEEC();
      v128 = sub_862D8(v126, v127, &v143);

      *(v10 + 4) = v128;
      sub_56688(&dword_0, v129, v130, "#SendAnnouncementDisambiguationStrategy selectedHome: %s");
      v131 = v140;
      sub_2714(v140);
      sub_E890(v131);
      sub_E890(v10);
    }

    if (*(v3 + 16))
    {
      sub_8B75C();
    }

    else
    {
LABEL_56:
      sub_8B76C();
    }
  }

  else
  {
    sub_8B74C();
  }

  v132 = sub_566D0();
  (v41)(v132);
  return sub_2714(&v145);
}

uint64_t sub_51970()
{
  sub_6608();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2664(&qword_C2610, &qword_92780);
  v1[5] = v4;
  sub_115AC(v4);
  v1[6] = v5;
  v1[7] = sub_E83C();
  v6 = sub_44348();

  return _swift_task_switch(v6);
}

uint64_t sub_51A24()
{
  v1 = v0[4];
  sub_2664(&qword_C25C8, &qword_92700);
  v2 = sub_8BD0C();
  sub_2664(&qword_C2618, &qword_92788);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_8E3F0;
  v4 = *(v1 + 128);
  *(v3 + 32) = v4;
  v5 = v4;
  sub_2664(&qword_C1950, &qword_92790);
  isa = sub_8D03C().super.isa;

  v7 = sub_8CEAC();
  [v2 setValue:isa forKey:v7];

  v8 = *(v1 + 128);
  if (v8)
  {
    sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  v12 = v8;
  sub_8BD0C();
  sub_ADE4(0, &qword_C2620, INSendAnnouncementIntent_ptr);
  sub_8B98C();
  sub_8BA4C();
  (*(v10 + 8))(v9, v11);

  sub_65A0();

  return v13();
}

uint64_t sub_51C10()
{
  sub_6608();
  v1[229] = v0;
  v1[223] = v2;
  v1[217] = v3;
  v1[211] = v4;
  v5 = type metadata accessor for HomeDisambiguationModel(0);
  v1[235] = v5;
  sub_65E4(v5);
  v1[236] = sub_E83C();
  v6 = sub_2664(&qword_C25D8, &unk_92708);
  v1[237] = v6;
  sub_65E4(v6);
  v1[238] = swift_task_alloc();
  v1[239] = swift_task_alloc();
  v7 = type metadata accessor for HomeTarget(0);
  sub_115AC(v7);
  v1[240] = v8;
  v1[241] = sub_E83C();
  v9 = sub_8B6BC();
  sub_65E4(v9);
  v1[242] = sub_E83C();
  v10 = sub_8BCBC();
  v1[243] = v10;
  sub_115AC(v10);
  v1[244] = v11;
  v1[245] = sub_E83C();
  v12 = sub_2664(&qword_C25C8, &qword_92700);
  v1[246] = v12;
  sub_115AC(v12);
  v1[247] = v13;
  v1[248] = *(v14 + 64);
  v1[249] = sub_E83C();
  v15 = sub_8C99C();
  v1[250] = v15;
  sub_115AC(v15);
  v1[251] = v16;
  v1[252] = sub_E83C();
  v17 = sub_2664(&qword_C1058, &unk_8FCA0);
  v1[253] = v17;
  sub_65E4(v17);
  v1[254] = sub_E83C();
  v18 = sub_8B4FC();
  v1[255] = v18;
  sub_115AC(v18);
  v1[256] = v19;
  v1[257] = sub_E83C();
  v20 = sub_44348();

  return _swift_task_switch(v20);
}

uint64_t sub_51EB8()
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  v0[258] = sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#SendAnnouncementDisambiguationStrategy makePromptForDisambiguation called", v4, 2u);
    sub_E890(v4);
  }

  sub_2664(&qword_C25E0, &qword_92718);
  v5 = *(sub_8BBAC() + 16);
  if (v5)
  {
    v6 = v0[256];
    v8 = *(v6 + 16);
    v7 = v6 + 16;
    v23 = v8;
    sub_22B9C();
    v11 = v9 + v10;
    v12 = *(v7 + 56);
    do
    {
      v13 = v0[257];
      v14 = v0[255];
      v23(v13, v11, v14);
      sub_8B4EC();
      (*(v7 - 8))(v13, v14);
      sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
      if ((swift_dynamicCast() & 1) != 0 && v0[187])
      {
        sub_8D02C();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_8D06C();
        }

        sub_8D08C();
      }

      v11 += v12;
      --v5;
    }

    while (v5);
  }

  v15 = v0[229];
  v16 = v0[223];
  *(v15 + 136) = _swiftEmptyArrayStorage;

  v17 = swift_task_alloc();
  v0[259] = v17;
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  swift_task_alloc();
  sub_44358();
  v0[260] = v18;
  *v18 = v19;
  v18[1] = sub_521C0;
  v20 = v0[254];
  v21 = v0[253];

  return withCheckedContinuation<A>(isolation:function:_:)(v20, 0, 0, 0xD00000000000003ALL, 0x8000000000097E80, sub_55AC0, v17, v21);
}

uint64_t sub_521C0()
{
  sub_6608();
  sub_E884();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  v3 = sub_44348();

  return _swift_task_switch(v3);
}

uint64_t sub_522C0()
{
  v62 = v0;
  v2 = *(*(v0 + 1832) + 136);
  v3 = sub_2D3B4();
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = v3;
    v61 = _swiftEmptyArrayStorage;
    v6 = v3 & ~(v3 >> 63);

    v7 = sub_551CC(0, v6, 0);
    if (v5 < 0)
    {
LABEL_32:
      __break(1u);
      return _swift_asyncLet_finish(v7);
    }

    v8 = 0;
    v9 = *(v0 + 2008);
    v4 = v61;
    v59 = v2 & 0xC000000000000001;
    v1 = v2;
    do
    {
      if (v59)
      {
        v10 = sub_8D27C();
      }

      else
      {
        v10 = *(v2 + 8 * v8 + 32);
      }

      v11 = v10;
      sub_2C094();

      v61 = v4;
      v13 = v4[2];
      v12 = v4[3];
      if (v13 >= v12 >> 1)
      {
        sub_551CC((v12 > 1), v13 + 1, 1);
        v4 = v61;
      }

      ++v8;
      v4[2] = v13 + 1;
      sub_22B9C();
      (*(v9 + 32))(v4 + v14 + *(v9 + 72) * v13);
      v2 = v1;
    }

    while (v5 != v8);
  }

  v15 = sub_8CCEC();
  sub_8D11C();

  if (sub_566E8())
  {
    sub_1D358();
    v16 = sub_566A8();
    v61 = v16;
    *v1 = 136315138;
    v17 = sub_8D05C();
    v19 = sub_862D8(v17, v18, &v61);

    *(v1 + 4) = v19;
    sub_56688(&dword_0, v20, v21, "#SendAnnouncementDisambiguationStrategy homeNames: %s");
    sub_2714(v16);
    sub_E890(v16);
    sub_E890(v1);
  }

  v22 = v4[2];
  v23 = _swiftEmptyArrayStorage;
  if (v22)
  {
    v24 = *(v0 + 2008);
    v54 = *(v0 + 1896);
    v61 = _swiftEmptyArrayStorage;

    v7 = sub_55264(0, v22, 0);
    v25 = 0;
    v23 = v61;
    v57 = v4;
    v58 = v4[2];
    v53 = v4 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v55 = v24;
    v56 = v22;
    while (v58 != v25)
    {
      if (v25 >= v4[2])
      {
        goto LABEL_31;
      }

      v26 = *(v0 + 1912);
      v27 = *(v54 + 48);
      v28 = *(v0 + 2000);
      v29 = *(v0 + 1928);
      v30 = *(v0 + 1904);
      (*(v55 + 16))(v26 + v27, &v53[*(v55 + 72) * v25], v28);
      *v30 = v25;
      (*(v55 + 32))(v30 + *(v54 + 48), v26 + v27, v28);
      sub_536F4(v25, v29);
      sub_1D05C(v30, &qword_C25D8, &unk_92708);
      v61 = v23;
      v32 = v23[2];
      v31 = v23[3];
      if (v32 >= v31 >> 1)
      {
        sub_55264((v31 > 1), v32 + 1, 1);
        v23 = v61;
      }

      v23[2] = v32 + 1;
      sub_22B9C();
      v7 = sub_55AC8(v35, v23 + v33 + *(v34 + 72) * v32);
      ++v25;
      v4 = v57;
      if (v56 == v25)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_21:
  *(v0 + 2088) = v23;
  v36 = *(v0 + 1992);
  v37 = *(v0 + 1984);
  v38 = *(v0 + 1976);
  v39 = *(v0 + 1968);
  v60 = *(v0 + 2032);
  v40 = *(v0 + 1832);
  (*(v38 + 16))(v36, *(v0 + 1784), v39);
  v41 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v42 = (v37 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v0 + 2096) = v43;
  *(v43 + 16) = v40;
  (*(v38 + 32))(v43 + v41, v36, v39);
  *(v43 + v42) = v4;

  sub_ADE4(0, &qword_C2088, DialogExecutionResult_ptr);
  swift_asyncLet_begin();

  swift_asyncLet_begin();
  sub_8B68C();
  *(swift_task_alloc() + 16) = v60;
  sub_8BC3C();

  *(v0 + 2104) = sub_8CA7C();
  *(v0 + 2112) = v44;
  if (!v44)
  {

    v46 = sub_8CCEC();
    v47 = sub_8D12C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = sub_E8E0();
      *v48 = 0;
      _os_log_impl(&dword_0, v46, v47, "#SendAnnouncementDisambiguationStrategy missing app identifier", v48, 2u);
      sub_E890(v48);
    }

    v49 = *(v0 + 1960);
    v50 = *(v0 + 1952);
    v51 = *(v0 + 1944);

    sub_8B6FC();
    sub_8B6EC();
    (*(v50 + 8))(v49, v51);
    v7 = sub_56628();

    return _swift_asyncLet_finish(v7);
  }

  *(v0 + 2169) = sub_4E218() & 1;
  v45 = sub_56628();

  return _swift_asyncLet_get_throwing(v45);
}

uint64_t sub_52920()
{
  sub_6608();
  *(v1 + 2120) = v0;
  if (v0)
  {

    v2 = sub_53038;
  }

  else
  {
    v2 = sub_529A8;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_529A8()
{
  v1 = *(v0 + 2169);
  v2 = *(v0 + 2112);
  v3 = *(v0 + 2088);
  v4 = *(v0 + 1888);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1456);
  *(v0 + 1464) = *(v0 + 2104);
  *(v0 + 1472) = v2;

  sub_8B05C();
  *(v0 + 1592) = v3;
  sub_2664(&qword_C1338, &qword_907C0);
  sub_8B05C();
  *(v0 + 2168) = v1;
  sub_8B05C();
  *(v0 + 1480) = v5;
  *(v0 + 1488) = v6;
  sub_8B05C();
  v7 = sub_8B8FC();
  *(v0 + 2128) = v7;
  sub_E824(v7);
  v8 = sub_8B8EC();
  *(v0 + 2136) = v8;
  *(v0 + 1640) = v8;
  *(v0 + 1360) = type metadata accessor for HomeCommunicationSnippetModel(0);
  *(v0 + 1368) = sub_56588(&qword_C2078, 255, type metadata accessor for HomeCommunicationSnippetModel, &protocol conformance descriptor for HomeCommunicationSnippetModel);
  v9 = sub_E5DC((v0 + 1336));
  sub_55DBC(v4, v9);
  swift_storeEnumTagMultiPayload();
  sub_2664(&qword_C0690, &unk_8EBF0);
  v10 = swift_allocObject();
  *(v0 + 2144) = v10;
  *(v10 + 16) = xmmword_8E860;

  return _swift_asyncLet_get_throwing(v0 + 16);
}

uint64_t sub_52B94()
{
  sub_6608();
  *(v1 + 2152) = v0;
  if (v0)
  {

    v2 = sub_531EC;
  }

  else
  {
    v2 = sub_52C10;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_52C10()
{
  sub_6608();
  v1 = v0[193];
  *(v0[268] + 32) = v1;
  v2 = v1;
  swift_task_alloc();
  sub_44358();
  v0[270] = v3;
  *v3 = v4;
  v3[1] = sub_52CD0;
  v5 = v0[268];
  v6 = v0[266];
  v7 = v0[245];
  v8 = v0[211];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v8, v0 + 167, v5, v7, v6, &protocol witness table for ResponseFactory);
}

uint64_t sub_52CD0()
{
  sub_152A0();
  sub_E884();
  v2 = v1;
  sub_65D8();
  *v3 = v2;
  v4 = *v0;
  sub_E6F8();
  *v5 = v4;

  sub_2714((v2 + 1336));
  v6 = sub_44348();

  return _swift_task_switch(v6);
}

uint64_t sub_52DF8()
{
  sub_152A0();
  sub_55E20(*(v0 + 1888));
  v1 = sub_566C4();
  v2(v1);
  v3 = sub_56628();

  return _swift_asyncLet_finish(v3);
}

uint64_t sub_52EC8()
{
  sub_1D05C(*(v0 + 2032), &qword_C1058, &unk_8FCA0);

  sub_65A0();

  return v1();
}

uint64_t sub_53038()
{
  sub_6608();
  (*(v0[244] + 8))(v0[245], v0[243]);
  v1 = sub_56628();

  return _swift_asyncLet_finish(v1);
}

uint64_t sub_530F4()
{
  sub_56638();
  sub_1D05C(v0, &qword_C1058, &unk_8FCA0);

  sub_65A0();

  return v1();
}

uint64_t sub_531EC()
{
  sub_152A0();
  v1 = v0[268];
  v2 = v0[245];
  v3 = v0[244];
  v4 = v0[243];
  sub_55E20(v0[236]);
  (*(v3 + 8))(v2, v4);
  *(v1 + 16) = 0;

  sub_2714(v0 + 167);
  v5 = sub_56628();

  return _swift_asyncLet_finish(v5);
}

uint64_t sub_532D8()
{
  sub_56638();
  sub_1D05C(v0, &qword_C1058, &unk_8FCA0);

  sub_65A0();

  return v1();
}

void sub_533D0(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v21 = sub_2664(&qword_C2600, &unk_93370);
  v3 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v17 - v4;
  v6 = sub_8BA3C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 120);
  sub_2664(&qword_C25C8, &qword_92700);
  v19 = sub_8BD0C();
  sub_8BD2C();
  v18 = sub_8BA2C();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  v12 = sub_8BD1C();
  v13 = v21;
  (*(v3 + 16))(v5, v22, v21);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v14, v5, v13);
  v16 = v19;
  sub_4E3F0(v19, v18, v11, v12, sub_55F60, v15);
}

uint64_t sub_53634(uint64_t a1)
{
  v2 = sub_2664(&qword_C1058, &unk_8FCA0);
  __chkstk_darwin(v2 - 8);
  sub_2FB74(a1, &v5 - v3, &qword_C1058, &unk_8FCA0);
  sub_2664(&qword_C2600, &unk_93370);
  return sub_8D0CC();
}

uint64_t sub_536F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_8B00C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664(&qword_C25C0, &unk_926F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_8E3F0;
  *(inited + 32) = 0x7865646E69;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a1;
  v9 = sub_8CE6C();
  sub_ADE4(0, &qword_C25B8, SKIDirectInvocationPayload_ptr);
  v10 = sub_6A1B4(0xD00000000000003ALL, 0x8000000000095C40);
  v11 = sub_6A228(v9);

  sub_6BB88(v11, v10);
  v12 = sub_8C98C();
  v14 = v13;
  sub_8BE1C();
  sub_EAD4(v16);
  sub_2714(v16);
  sub_8AFFC();
  (*(v5 + 16))(a2, v7, v4);
  type metadata accessor for HomeTarget(0);
  v16[0] = v12;
  v16[1] = v14;
  sub_8B05C();
  sub_ADE4(0, &qword_C12F0, SAIntentGroupRunSiriKitExecutor_ptr);
  sub_8B03C();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_53940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_53964);
}

uint64_t sub_53964()
{
  sub_2664(&qword_C25C8, &qword_92700);
  v1 = sub_8BD0C();
  v2 = sub_2CD3C();
  v0[6] = v2;

  sub_8C9FC();
  sub_8BE1C();
  v3 = sub_8C9EC();
  v0[7] = v3;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_53A60;
  v5 = v0[5];

  return sub_4BC3C(v2, v5, v3);
}

uint64_t sub_53A60()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_65D8();
  *v6 = v5;
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (v0)
  {
    v9 = sub_53BB4;
  }

  else
  {

    *(v5 + 80) = v3;
    v9 = sub_53B84;
  }

  return _swift_task_switch(v9);
}

uint64_t sub_53B84()
{
  **(v0 + 16) = *(v0 + 80);
  sub_65A0();
  return v1();
}

uint64_t sub_53BB4()
{
  sub_6608();

  sub_65A0();

  return v0();
}

uint64_t sub_53C18(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_53C38);
}

uint64_t sub_53C38()
{
  sub_6608();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_53CC8;

  return sub_14718();
}

uint64_t sub_53CC8()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_65D8();
  *v6 = v5;
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 40) = v3;

    return _swift_task_switch(sub_53E00);
  }
}

uint64_t sub_53E00()
{
  sub_152A0();
  v1 = *(v0 + 16);
  v2 = sub_8CA0C();
  v4 = v3;

  *v1 = v2;
  v1[1] = v4;
  sub_65A0();

  return v5();
}

uint64_t sub_53E7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_8B70C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664(&qword_C1058, &unk_8FCA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_8BC7C();
  sub_8BCAC();
  sub_2FB74(a2, v9, &qword_C1058, &unk_8FCA0);
  sub_8BC8C();
  sub_8BC6C();
  (*(v4 + 104))(v6, enum case for ResponseType.disambiguation(_:), v3);
  return sub_8BC5C();
}

uint64_t sub_53FFC()
{
  sub_6608();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_8B9DC();
  sub_65E4(v3);
  v1[5] = sub_E83C();
  v4 = sub_8BA3C();
  v1[6] = v4;
  sub_115AC(v4);
  v1[7] = v5;
  v1[8] = sub_E83C();
  v6 = sub_44348();

  return _swift_task_switch(v6);
}

uint64_t sub_540C0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  sub_2664(&qword_C25C8, &qword_92700);
  sub_8BCFC();
  v5 = sub_8BD0C();
  sub_8BD2C();
  sub_8BA2C();
  (*(v2 + 8))(v1, v3);
  v6 = sub_8BD1C();
  sub_54278(v6, v7, v8, v9, v6);

  sub_8BE1C();
  v0[2] = v4;
  type metadata accessor for SendAnnouncementDisambiguationStrategy();
  sub_56588(&qword_C25D0, v10, type metadata accessor for SendAnnouncementDisambiguationStrategy, &unk_92650);
  sub_8B1AC();
  v11 = sub_8B51C();
  v12 = sub_E824(v11);
  sub_8B50C();
  sub_566DC();

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_54278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_2D8DC();
  v7 = sub_6C594(v6);
  if (v7)
  {
    v8 = v7;
    v9 = sub_2D3B4();
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (v9 != v10)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = sub_8D27C();
      }

      else
      {
        if (v10 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_37;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      a5 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v14 = [v12 home];
      if (v14)
      {
        v15 = v14;
        v16 = v11;
        v17 = [v14 spokenPhrase];

        v60 = sub_8CEDC();
        v19 = v18;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_75D80(0, *(v16 + 2) + 1, 1, v16);
        }

        v21 = *(v16 + 2);
        v20 = *(v16 + 3);
        v22 = v16;
        if (v21 >= v20 >> 1)
        {
          v22 = sub_75D80((v20 > 1), v21 + 1, 1, v16);
        }

        *(v22 + 2) = v21 + 1;
        v23 = &v22[16 * v21];
        v11 = v22;
        *(v23 + 4) = v60;
        *(v23 + 5) = v19;
        v10 = a5;
      }

      else
      {

        ++v10;
      }
    }

    if (*(v11 + 2) >= 2uLL)
    {
      if (qword_BF818 != -1)
      {
        sub_E754(&qword_BF818);
      }

      v48 = sub_8CD0C();
      sub_33F4(v48, qword_C3DF8);

      v49 = sub_8CCEC();
      v50 = sub_8D11C();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = sub_1D358();
        v52 = swift_slowAlloc();
        v61 = v52;
        *v51 = 136315138;
        v53 = v11;
        v54 = sub_8D05C();
        v56 = sub_862D8(v54, v55, &v61);

        *(v51 + 4) = v56;
        _os_log_impl(&dword_0, v49, v50, "#SendAnnouncementDisambiguationStrategy Disambiguating between homes : %s", v51, 0xCu);
        sub_2714(v52);
        sub_E890(v52);
        sub_E890(v51);
      }

      else
      {
        v53 = v11;
      }

      if (qword_BF7E8 != -1)
      {
        swift_once();
      }

      sub_557D4(v53);

      v58 = sub_8B4DC();
      sub_E824(v58);
    }

    else
    {

      if (qword_BF818 != -1)
      {
        sub_E754(&qword_BF818);
      }

      v24 = sub_8CD0C();
      sub_33F4(v24, qword_C3DF8);

      v25 = sub_8CCEC();
      sub_8D12C();

      if (sub_566E8())
      {
        v26 = sub_1D358();
        v27 = swift_slowAlloc();
        v61 = v27;
        *v26 = 136315138;
        v28 = sub_8D05C();
        v30 = v29;

        v31 = sub_862D8(v28, v30, &v61);

        *(v26 + 4) = v31;
        sub_48734();
        _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
        sub_2714(v27);
        sub_E890(v27);
        sub_E890(v26);
      }

      else
      {
      }

      v57 = sub_8B4DC();
      sub_E824(v57);
    }
  }

  else
  {

    if (qword_BF818 != -1)
    {
LABEL_38:
      sub_E754(&qword_BF818);
    }

    v37 = sub_8CD0C();
    sub_33F4(v37, qword_C3DF8);
    v38 = sub_8CCEC();
    v39 = sub_8D12C();
    if (sub_E7DC(v39))
    {
      v40 = sub_E8E0();
      *v40 = 0;
      sub_48734();
      _os_log_impl(v41, v42, v43, v44, v45, 2u);
      sub_E890(v40);
    }

    v46 = [a5 disambiguationItems];
    sub_8D04C();

    v47 = sub_8B4DC();
    sub_E824(v47);
  }

  return sub_8B4CC();
}

uint64_t sub_547D0()
{
  sub_2714((v0 + 16));

  sub_2714((v0 + 64));

  return v0;
}

uint64_t sub_54828()
{
  sub_547D0();

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_54884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SendAnnouncementDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:)(a1, v5, a3);
}

uint64_t sub_548FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_54998;

  return sub_53FFC();
}

uint64_t sub_54998()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_65D8();
  *v6 = v5;
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_54A94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3B650;

  return sub_51970();
}

uint64_t sub_54B40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_E2A0;

  return sub_51C10();
}

uint64_t sub_54BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SendAnnouncementDisambiguationStrategy();
  *v10 = v5;
  v10[1] = sub_3B650;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, v11, a5);
}

uint64_t sub_54CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SendAnnouncementDisambiguationStrategy();
  *v10 = v5;
  v10[1] = sub_3B650;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)(a1, a2, a3, v11, a5);
}

uint64_t sub_54D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendAnnouncementDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_3B650;

  return NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t sub_54E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendAnnouncementDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_3B650;

  return NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t sub_54F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SendAnnouncementDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)(a1, v5, a3);
}

uint64_t sub_54F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SendAnnouncementDisambiguationStrategy();
  *v12 = v6;
  v12[1] = sub_3B650;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_5503C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for SendAnnouncementDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_3B650;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v15, a7);
}

void *sub_55174(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_55618(a1, a2, a3, *v3, &qword_C0018, &unk_927C0, &type metadata accessor for UsoIdentifier, sub_766EC);
  *v3 = result;
  return result;
}

void *sub_551CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_55618(a1, a2, a3, *v3, &qword_C25F8, &unk_92750, &type metadata accessor for SpeakableString, sub_76704);
  *v3 = result;
  return result;
}

char *sub_55224(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_553CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_55244(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_55508(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_55264(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_55618(a1, a2, a3, *v3, &qword_C25F0, &qword_92748, type metadata accessor for HomeTarget, sub_76754);
  *v3 = result;
  return result;
}

void *sub_552BC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2664(&qword_C2640, &unk_927B0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_77294(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_2664(&qword_BFFF8, &qword_8E628);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_553CC(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2664(&qword_C0F90, &unk_8FAE0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_766CC((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_55508(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2664(&qword_C2630, &qword_927A0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_77294(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_2664(&qword_C2638, &qword_927A8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_55618(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2664(a5, a6);
  v16 = a7(0);
  sub_115AC(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  result = j__malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v20) == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((result - v20) / v18);
LABEL_19:
  a7(0);
  sub_22B9C();
  if (v11)
  {
    a8(a4 + v23, v14, v21 + v23);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v21;
}

void *sub_557D4(uint64_t a1)
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v2 = sub_8CD0C();
  sub_33F4(v2, qword_C3DF8);
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#SendAnnouncementRCHFlowDelegate isDirectInvocation in SiriX path", v5, 2u);
  }

  result = _swiftEmptyArrayStorage;
  v16 = *(a1 + 16);
  if (v16)
  {
    sub_8D2EC();
    sub_ADE4(0, &qword_C25B8, SKIDirectInvocationPayload_ptr);
    sub_8B54C();
    v7 = 0;
    v8 = a1 + 40;
    do
    {
      v9 = v7 + 1;
      sub_2664(&qword_C25C0, &unk_926F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_8E3F0;
      *(inited + 32) = 0x7865646E69;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = v7;

      v11 = sub_8CE6C();
      v12 = sub_6A1B4(0xD00000000000003ALL, 0x8000000000095C40);
      v13 = sub_6A228(v11);

      sub_6BB88(v13, v12);
      sub_8B52C();
      v14 = sub_8B53C();

      sub_2664(&qword_C0690, &unk_8EBF0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_8E860;
      *(v15 + 32) = v14;
      sub_8B4AC();
      swift_allocObject();
      sub_8B48C();

      sub_8D2CC();
      sub_8D2FC();
      sub_8D30C();
      sub_8D2DC();
      v8 += 16;
      v7 = v9;
    }

    while (v16 != v9);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_55AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeTarget(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_55B2C()
{
  v1 = sub_2664(&qword_C25C8, &qword_92700);
  sub_3488();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_55C04(uint64_t a1)
{
  v4 = sub_2664(&qword_C25C8, &qword_92700);
  sub_115AC(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  sub_44358();
  *(v2 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_3B650;

  return sub_53940(a1, v8, v1 + v6, v9);
}

uint64_t sub_55D20()
{
  sub_6608();
  v3 = v2;
  swift_task_alloc();
  sub_44358();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_E2A0;

  return sub_53C18(v3, v0);
}

uint64_t sub_55DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeDisambiguationModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_55E20(uint64_t a1)
{
  v2 = type metadata accessor for HomeDisambiguationModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_55E7C()
{
  result = qword_C25E8;
  if (!qword_C25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C25E8);
  }

  return result;
}

uint64_t sub_55ED4()
{
  sub_2664(&qword_C2600, &unk_93370);
  sub_6574();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_55F60(uint64_t a1)
{
  v2 = sub_2664(&qword_C2600, &unk_93370);
  sub_65E4(v2);

  return sub_53634(a1);
}

void *sub_55FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C1080, &qword_8FCC0);
  __chkstk_darwin(v4 - 8);
  v48 = &v38 - v5;
  v47 = sub_8B6DC();
  v6 = *(v47 - 8);
  __chkstk_darwin(v47);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_8B73C();
  v9 = *(v53 - 8);
  v10 = __chkstk_darwin(v53);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v51 = &v38 - v13;
  __chkstk_darwin(v12);
  v52 = &v38 - v14;
  v15 = sub_8BD5C();
  v39 = *(v15 - 8);
  v40 = v15;
  __chkstk_darwin(v15);
  v38 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a2;
  v55 = _swiftEmptyArrayStorage;
  v17 = *(a1 + 16);
  v49 = a2;
  if (v17)
  {
    v50 = (v9 + 16);
    v42 = (v9 + 8);
    v43 = v9 + 32;
    v41 = v6 + 32;

    v18 = _swiftEmptyArrayStorage;
    v19 = (a1 + 40);
    v54 = _swiftEmptyArrayStorage;
    v44 = v6;
    v45 = v9;
    do
    {
      v20 = HIBYTE(*v19) & 0xFLL;
      if ((*v19 & 0x2000000000000000) == 0)
      {
        v20 = *(v19 - 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {

        sub_2664(&qword_C07E0, &qword_8FCB0);
        sub_228D8();
        sub_8C16C();
        sub_50220();
        v21 = v52;
        sub_8B72C();
        v22 = *v50;
        (*v50)(v51, v21, v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_76120();
          v54 = v31;
        }

        v23 = v54[2];
        if (v23 >= v54[3] >> 1)
        {
          sub_76120();
          v54 = v32;
        }

        v24 = v54;
        v54[2] = v23 + 1;
        v25 = v24 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v23;
        v26 = v53;
        (*(v45 + 32))(v25, v51, v53);
        v27 = v48;
        v28 = v52;
        v22(v48, v52, v26);
        sub_6270(v27, 0, 1, v26);
        v22(v46, v28, v26);
        sub_8B6CC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_76048();
          v18 = v33;
        }

        v29 = v18[2];
        v30 = v44;
        if (v29 >= v18[3] >> 1)
        {
          sub_76048();
          v18 = v34;
        }

        (*v42)(v52, v53);
        v18[2] = v29 + 1;
        (*(v30 + 32))(v18 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v29, v8, v47);
        v55 = v18;
      }

      v19 += 2;
      --v17;
    }

    while (v17);
  }

  else
  {

    v54 = _swiftEmptyArrayStorage;
  }

  if (qword_BF8B0 != -1)
  {
    swift_once();
  }

  sub_8C14C();
  v35 = v38;
  sub_8BD3C();
  v36 = sub_8BD4C();

  (*(v39 + 8))(v35, v40);
  sub_2C7E8(v36);

  return v55;
}

uint64_t sub_56588(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_565D0()
{
  result = qword_C2648;
  if (!qword_C2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2648);
  }

  return result;
}

void sub_56688(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_566A8()
{

  return swift_slowAlloc();
}

BOOL sub_566E8()
{

  return os_log_type_enabled(v0, v1);
}

void sub_56700(uint64_t a1)
{
  sub_ADE4(0, &qword_C2620, INSendAnnouncementIntent_ptr);
  sub_ADE4(0, &qword_C27A8, INSendAnnouncementIntentResponse_ptr);
  sub_8B31C();
  sub_8B28C();
  sub_2664(&qword_C2788, &unk_92930);
  sub_8B2EC();
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  oslog = sub_8CCEC();
  v2 = sub_8D11C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, oslog, v2, "RCHChildFlowProducers.SendAnnouncementProducers", v3, 2u);
  }
}

void sub_5687C(char a1)
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  oslog = sub_8CCEC();
  v2 = sub_8D11C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = sub_8CEEC();
    v7 = sub_862D8(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_0, oslog, v2, "#SendAnnouncementFlow state => %s", v3, 0xCu);
    sub_2714(v4);
  }

  else
  {
  }
}

BOOL sub_569FC()
{
  v0 = sub_8BE0C();
  sub_E6E8();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_16854();
  v6 = v5 - v4;
  sub_8BD9C();
  v7 = (*(v2 + 88))(v6, v0);
  v8 = enum case for Parse.directInvocation(_:);
  if (v7 == enum case for Parse.directInvocation(_:))
  {
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v9 = sub_8CD0C();
    sub_33F4(v9, qword_C3DF8);
    v10 = sub_8CCEC();
    v11 = sub_8D11C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = sub_E8E0();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "#ReadAnnouncementFlow handling direct invocation.", v12, 2u);
      sub_E890(v12);
    }
  }

  (*(v2 + 8))(v6, v0);
  return v7 == v8;
}

uint64_t sub_56B94(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SendAnnouncementFlow(0);
  sub_5A000(&qword_C0448, type metadata accessor for SendAnnouncementFlow, &unk_928D8);
  return sub_8B34C();
}

uint64_t sub_56C24(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = sub_44348();
  return _swift_task_switch(v3);
}

uint64_t sub_56C4C()
{
  v20 = v0;
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);

  v2 = sub_8CCEC();
  v3 = sub_8D11C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_862D8(0x2865747563657865, 0xE900000000000029, &v19);
    *(v5 + 12) = 2080;
    *(v0 + 56) = *(v4 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20SendAnnouncementFlow_state);
    v7 = sub_8CEEC();
    v9 = sub_862D8(v7, v8, &v19);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_0, v2, v3, "#SendAnnouncementFlow %s state=%s", v5, 0x16u);
    swift_arrayDestroy();
    sub_E890(v6);
    sub_E890(v5);
  }

  switch(*(*(v0 + 24) + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20SendAnnouncementFlow_state))
  {
    case 1:
      v17 = swift_task_alloc();
      *(v0 + 40) = v17;
      *v17 = v0;
      sub_5A0A8(v17);
      sub_5A0BC();

      result = sub_578AC();
      break;
    case 2:
      v13 = swift_task_alloc();
      *(v0 + 48) = v13;
      *v13 = v0;
      sub_5A0A8(v13);
      sub_5A0BC();

      result = sub_57E2C();
      break;
    case 3:
      sub_8B7FC();
      sub_65A0();
      sub_5A0BC();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      v10 = swift_task_alloc();
      *(v0 + 32) = v10;
      *v10 = v0;
      v10[1] = sub_56F9C;
      sub_5A0BC();

      result = sub_5723C();
      break;
  }

  return result;
}

uint64_t sub_56F9C()
{
  sub_6608();
  sub_E884();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  sub_65A0();

  return v3();
}

uint64_t sub_5707C()
{
  sub_6608();
  sub_E884();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  sub_65A0();

  return v3();
}

uint64_t sub_5715C()
{
  sub_6608();
  sub_E884();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  sub_65A0();

  return v3();
}

uint64_t sub_5723C()
{
  sub_6608();
  v1[23] = v2;
  v1[24] = v0;
  v3 = sub_8CA2C();
  sub_65E4(v3);
  v1[25] = sub_E83C();
  v4 = sub_44348();

  return _swift_task_switch(v4);
}

uint64_t sub_572B4(uint64_t a1)
{
  sub_8BE1C();
  v2 = v1[6];
  sub_622C(v1 + 2, v1[5]);
  v3 = sub_8B61C();
  sub_2714(v1 + 2);
  if (v3)
  {
    v4 = v1[24];
    sub_2664(&qword_C27D8, &qword_92950);
    v5 = sub_8B25C();
    sub_115AC(v5);
    *(swift_allocObject() + 16) = xmmword_8E3F0;
    sub_59E54(v4 + 64, (v1 + 12));
    type metadata accessor for SendAnnouncementCATsSimple(0);
    sub_8CA1C();
    v29 = sub_8C9CC();
    v6 = v1[15];
    v7 = sub_E58C((v1 + 12), v6);
    sub_E6E8();
    v9 = v8;
    v10 = sub_E83C();
    (*(v9 + 16))(v10, v7, v6);
    v11 = type metadata accessor for SharedGlobals(0);
    v1[20] = v11;
    v1[21] = &off_BB508;
    v12 = sub_E5DC(v1 + 17);
    sub_E63C(v10, v12);
    v13 = type metadata accessor for SendAnnouncementActiveCallCheckStrategy();
    v14 = swift_allocObject();
    v15 = v1[20];
    v16 = sub_E58C((v1 + 17), v15);
    sub_E6E8();
    v18 = v17;
    v19 = sub_E83C();
    (*(v18 + 16))(v19, v16, v15);
    v14[5] = v11;
    v14[6] = &off_BB508;
    v20 = sub_E5DC(v14 + 2);
    sub_E63C(v19, v20);
    v14[7] = v29;
    sub_2714(v1 + 17);

    sub_2714(v1 + 12);

    v1[10] = v13;
    v1[11] = sub_5A000(&qword_C27E0, type metadata accessor for SendAnnouncementActiveCallCheckStrategy, &unk_92338);
    v1[7] = v14;
    sub_8B24C();
    sub_2714(v1 + 7);
    v21 = sub_8B0CC();

    v1[22] = v21;
    sub_8B21C();

    sub_8B7CC();
  }

  else
  {
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v22 = sub_8CD0C();
    sub_33F4(v22, qword_C3DF8);
    v23 = sub_8CCEC();
    v24 = sub_8D11C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = sub_E8E0();
      sub_1D274(v25);
      _os_log_impl(&dword_0, v23, v24, "#SendAnnouncementFlow skipping executeActiveCallPrecheck for non-iOS idiom", v2, 2u);
      sub_1D214();
    }

    v26 = v1[24];

    sub_5687C(1);
    *(v26 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20SendAnnouncementFlow_state) = 1;
    sub_8B7BC();
  }

  sub_65A0();

  return v27();
}

void sub_5772C(unsigned __int8 *a1, uint64_t a2)
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v3 = sub_8CD0C();
  sub_33F4(v3, qword_C3DF8);
  v4 = sub_8CCEC();
  v5 = sub_8D11C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    v8 = sub_8B22C();
    v10 = sub_862D8(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v4, v5, "#SendAnnouncementFlow ensuringNoActiveCall outcome: %s", v6, 0xCu);
    sub_2714(v7);
  }

  if (sub_8B23C())
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

  sub_5687C(v11);
  *(a2 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20SendAnnouncementFlow_state) = v11;
}

uint64_t sub_578AC()
{
  sub_6608();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = sub_8CA2C();
  sub_65E4(v4);
  v1[16] = sub_E83C();
  v5 = sub_8BDBC();
  v1[17] = v5;
  sub_115AC(v5);
  v1[18] = v6;
  v1[19] = sub_E83C();
  v7 = sub_44348();

  return _swift_task_switch(v7);
}

uint64_t sub_57974()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v23 = v3;
  v24 = v1;
  v4 = v0[14];
  sub_59E54(v0[15] + 64, (v0 + 2));
  (*(v2 + 16))(v1, v4, v3);
  type metadata accessor for SendAnnouncementCATsSimple(0);
  sub_8CA1C();
  v22 = sub_8C9CC();
  v5 = v0[5];
  v6 = sub_E58C((v0 + 2), v5);
  sub_E6E8();
  v8 = v7;
  v9 = sub_E83C();
  (*(v8 + 16))(v9, v6, v5);
  v10 = type metadata accessor for SharedGlobals(0);
  v0[10] = v10;
  v0[11] = &off_BB508;
  v11 = sub_E5DC(v0 + 7);
  sub_E63C(v9, v11);
  v12 = type metadata accessor for SendAnnouncementPreflightGuardFlow(0);
  v13 = sub_E824(v12);
  v14 = v0[10];
  v15 = sub_E58C((v0 + 7), v14);
  sub_E6E8();
  v17 = v16;
  v18 = sub_E83C();
  (*(v17 + 16))(v18, v15, v14);
  *(v13 + 48) = v10;
  *(v13 + 56) = &off_BB508;
  v19 = sub_E5DC((v13 + 24));
  sub_E63C(v18, v19);
  *(v13 + 16) = 0;
  (*(v2 + 32))(v13 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin34SendAnnouncementPreflightGuardFlow_input, v24, v23);
  *(v13 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin34SendAnnouncementPreflightGuardFlow_sendAnnouncementCATsSimple) = v22;
  sub_2714(v0 + 7);

  sub_2714(v0 + 2);

  v0[12] = v13;
  sub_5A000(&qword_C27D0, type metadata accessor for SendAnnouncementPreflightGuardFlow, &unk_93400);

  sub_8B7CC();

  sub_65A0();

  return v20();
}

void sub_57C88(unsigned __int8 *a1, uint64_t a2)
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v3 = sub_8CD0C();
  sub_33F4(v3, qword_C3DF8);
  v4 = sub_8CCEC();
  v5 = sub_8D11C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    if (sub_8B23C())
    {
      v8 = 0x737361702ELL;
    }

    else
    {
      v8 = 0x6C6961662ELL;
    }

    v9 = sub_862D8(v8, 0xE500000000000000, &v11);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_0, v4, v5, "#SendAnnouncementFlow completed SendAnnouncementPreflightGuardFlow with exit value %s", v6, 0xCu);
    sub_2714(v7);
  }

  if (sub_8B23C())
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  sub_5687C(v10);
  *(a2 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20SendAnnouncementFlow_state) = v10;
}

uint64_t sub_57E2C()
{
  sub_6608();
  v1[30] = v2;
  v1[31] = v0;
  v1[29] = v3;
  v4 = sub_2664(&qword_C2788, &unk_92930);
  sub_65E4(v4);
  v1[32] = sub_E83C();
  v5 = sub_2664(&qword_C27B0, &unk_934E0);
  sub_65E4(v5);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v6 = sub_8BE0C();
  v1[36] = v6;
  sub_115AC(v6);
  v1[37] = v7;
  v1[38] = sub_E83C();
  v8 = sub_44348();

  return _swift_task_switch(v8);
}

uint64_t sub_57F4C()
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  *(v0 + 312) = sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D10C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#SendAnnouncementFlow starting RCH", v4, 2u);
    sub_E890(v4);
  }

  v5 = *(v0 + 248);

  sub_59E54(v5 + 64, v0 + 16);
  sub_59E54(v5 + 16, v0 + 56);
  sub_8B3FC();
  v6 = *(v0 + 40);
  v7 = sub_E58C(v0 + 16, v6);
  sub_E6E8();
  v9 = v8;
  v10 = sub_E83C();
  (*(v9 + 16))(v10, v7, v6);
  v11 = type metadata accessor for SharedGlobals(0);
  *(v0 + 320) = v11;
  *(v0 + 160) = v11;
  *(v0 + 168) = &off_BB508;
  v12 = sub_E5DC((v0 + 136));
  sub_E63C(v10, v12);
  type metadata accessor for SendAnnouncementFlowStrategy();
  v13 = swift_allocObject();
  *(v0 + 328) = v13;
  v14 = *(v0 + 160);
  v15 = sub_E58C(v0 + 136, v14);
  sub_E6E8();
  v17 = v16;
  v18 = sub_E83C();
  (*(v17 + 16))(v18, v15, v14);
  v13[5] = v11;
  v13[6] = &off_BB508;
  v19 = sub_E5DC(v13 + 2);
  sub_E63C(v18, v19);
  sub_E510((v0 + 56), (v13 + 7));
  sub_E510((v0 + 96), (v13 + 12));
  sub_2714((v0 + 136));

  sub_2714((v0 + 16));

  sub_8BD9C();
  v20 = swift_task_alloc();
  *(v0 + 336) = v20;
  *v20 = v0;
  v20[1] = sub_58250;

  return sub_5A6C0();
}

uint64_t sub_58250()
{
  sub_E884();
  v3 = v2[38];
  v4 = v2[37];
  v5 = v2[36];
  v6 = *v1;
  sub_E6F8();
  *v7 = v6;
  *(v9 + 344) = v8;
  *(v9 + 352) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v10 = sub_5890C;
  }

  else
  {
    v10 = sub_583B8;
  }

  return _swift_task_switch(v10);
}

uint64_t sub_583B8()
{
  v51 = v0;
  v1 = *(v0 + 344);
  sub_8BE1C();
  sub_622C((v0 + 176), *(v0 + 200));
  [v1 _setIdiom:sub_C794()];

  sub_2714((v0 + 176));
  v2 = v1;
  v3 = sub_8CCEC();
  v4 = sub_8D11C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 344);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v50 = v7;
    *v6 = 136315138;
    *(v0 + 224) = [v5 _idiom];
    type metadata accessor for INDeviceIdiom(0);
    v8 = sub_8CEEC();
    v10 = sub_862D8(v8, v9, &v50);

    *(v6 + 4) = v10;
    sub_5A048();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_2714(v7);
    sub_E890(v7);
    sub_1D214();
  }

  v16 = *(v0 + 320);
  v17 = *(v0 + 272);
  v18 = *(v0 + 248);
  v19 = sub_622C((v18 + 64), *(v18 + 88));
  sub_59EB4(v19 + *(v16 + 28), v17);
  v20 = sub_8B78C();
  if (sub_5A058() == 1)
  {
    sub_8C7CC();
    if (sub_8C7BC())
    {
      sub_8C79C();

      sub_8BAAC();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    sub_6270(*(v0 + 280), v21, 1, v20);
    if (sub_5A058() != 1)
    {
      sub_59F24(*(v0 + 272));
    }
  }

  else
  {
    v22 = *(v0 + 280);
    sub_4BBA4();
    (*(v23 + 32))(v22);
    sub_6270(v22, 0, 1, v20);
  }

  sub_59EB4(*(v0 + 280), *(v0 + 264));
  v24 = sub_5A058();
  v25 = *(v0 + 264);
  if (v24 == 1)
  {
    sub_59F24(*(v0 + 264));
LABEL_16:
    v35 = sub_8CCEC();
    v36 = sub_8D11C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = sub_E8E0();
      sub_1D274(v37);
      sub_5A048();
      _os_log_impl(v38, v39, v40, v41, v42, 2u);
      sub_1D214();
    }

    goto LABEL_19;
  }

  v26 = sub_8B77C();
  v28 = v27;
  sub_4BBA4();
  (*(v29 + 8))(v25, v20);
  if (!v28)
  {
    goto LABEL_16;
  }

  v30 = sub_8CCEC();
  v31 = sub_8D11C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v50 = v33;
    *v32 = 136315138;

    v34 = sub_862D8(v26, v28, &v50);

    *(v32 + 4) = v34;
    _os_log_impl(&dword_0, v30, v31, "#SendAnnouncementFlow sharedUserID: %s", v32, 0xCu);
    sub_2714(v33);
    sub_E890(v33);
    sub_E890(v32);
  }

  sub_6BC08(v26, v28, *(v0 + 344));
LABEL_19:
  v43 = *(v0 + 344);
  v44 = *(v0 + 280);
  v45 = *(v0 + 248);
  sub_58A08(*(v0 + 256));
  v46 = sub_2664(&qword_C27B8, &qword_92940);
  sub_E824(v46);
  sub_8B32C();
  v47 = sub_622C((v45 + 64), *(v18 + 88));
  sub_622C(v47 + 2, v47[5]);
  *(v0 + 216) = sub_77EF4();
  sub_2664(&qword_C27C0, &qword_92948);
  sub_59F8C();
  sub_8B33C();

  sub_8B7EC();

  sub_59F24(v44);

  sub_65A0();

  return v48();
}

uint64_t sub_5890C()
{

  v0 = sub_8CCEC();
  v1 = sub_8D12C();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = sub_E8E0();
    sub_1D274(v2);
    sub_5A048();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    sub_1D214();
  }

  sub_8B7FC();

  sub_65A0();

  return v8();
}

uint64_t sub_58A08@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_8CA2C();
  v6 = sub_65E4(v5);
  __chkstk_darwin(v6);
  sub_16854();
  v7 = *(v1 + 56);
  sub_56700(v7);
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v8 = sub_8CD0C();
  sub_33F4(v8, qword_C3DF8);
  v9 = sub_8CCEC();
  v10 = sub_8D11C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_E8E0();
    sub_1D274(v11);
    _os_log_impl(&dword_0, v9, v10, "#SendAnnouncementFlow async producers with app resolution", v2, 2u);
    sub_1D214();
  }

  sub_59E54(v3 + 64, v66);
  v12 = type metadata accessor for SendAnnouncementCATsSimple(0);
  swift_retain_n();
  sub_8CA1C();
  sub_5A088();
  v54 = v12;
  v13 = sub_8C9CC();
  sub_E58C(v66, v67);
  v58 = v3;
  sub_E6E8();
  __chkstk_darwin(v14);
  sub_16854();
  v16 = sub_5A074(v15);
  v17(v16);

  v57 = sub_59D1C(v18, v2, v13, type metadata accessor for SendAnnouncementIntentHandledStrategy, &OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37SendAnnouncementIntentHandledStrategy_completionOutputManifest, sub_DE24);
  sub_2714(v66);
  v66[0] = v57;
  type metadata accessor for SendAnnouncementIntentHandledStrategy(0);
  sub_5A000(&qword_C2780, type metadata accessor for SendAnnouncementIntentHandledStrategy, &unk_92D08);
  sub_8B27C();
  v59 = sub_2664(&qword_C2788, &unk_92930);
  sub_8B2DC();
  sub_59E54(v3 + 64, v66);
  sub_8CA1C();
  sub_5A088();
  v53 = sub_8C9CC();
  v19 = sub_2664(&qword_C2790, &unk_934F0);
  v56 = a1;
  sub_E824(v19);
  v51 = sub_8BBFC();
  sub_E58C(v66, v67);
  v52 = &v50;
  sub_E6E8();
  __chkstk_darwin(v20);
  sub_16854();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21);
  v25 = type metadata accessor for SharedGlobals(0);
  v64 = v25;
  v65 = &off_BB508;
  v26 = sub_E5DC(v63);
  sub_E63C(v23, v26);
  v27 = type metadata accessor for SendAnnouncementNeedsValueStrategy();
  v28 = swift_allocObject();
  v55 = v7;
  sub_E58C(v63, v64);
  sub_E6E8();
  __chkstk_darwin(v29);
  sub_16854();
  v32 = v31 - v30;
  (*(v33 + 16))(v31 - v30);
  v28[5] = v25;
  v28[6] = &off_BB508;
  v34 = sub_E5DC(v28 + 2);
  sub_E63C(v32, v34);
  v28[7] = v53;
  v28[8] = v7;
  v28[9] = v51;
  sub_2714(v63);
  sub_2714(v66);
  v66[0] = v28;
  sub_5A000(&qword_C2798, type metadata accessor for SendAnnouncementNeedsValueStrategy, &unk_93300);
  sub_8B26C();
  sub_8B2CC();
  sub_59E54(v58 + 64, v66);
  sub_8CA1C();
  sub_5A088();
  v54 = sub_8C9CC();
  type metadata accessor for HomeCommunicationDisplayTextCATsSimple(0);
  sub_8CA1C();
  sub_5A088();
  v35 = sub_8C9CC();
  swift_allocObject();
  v36 = sub_8BBFC();
  sub_E58C(v66, v67);
  sub_E6E8();
  __chkstk_darwin(v37);
  sub_16854();
  v39 = sub_5A074(v38);
  v40(v39);
  v64 = v25;
  v65 = &off_BB508;
  v41 = sub_E5DC(v63);
  sub_E63C(v27, v41);
  type metadata accessor for SendAnnouncementDisambiguationStrategy();
  v42 = swift_allocObject();
  sub_E58C(v63, v64);
  sub_E6E8();
  __chkstk_darwin(v43);
  sub_16854();
  v45 = sub_5A094(v44);
  v46(v45);
  v61 = v25;
  v62 = &off_BB508;
  v47 = sub_E5DC(v60);
  sub_E63C(&off_BB508, v47);
  v42[16] = 0;
  v42[17] = _swiftEmptyArrayStorage;
  v42[7] = v55;
  sub_59E54(v60, (v42 + 2));
  v42[13] = v54;
  v42[14] = v35;
  v48 = sub_622C(v60, v61);
  sub_59E54(v48[1] + 96, (v42 + 8));
  v42[15] = v36;
  sub_2714(v60);
  sub_2714(v63);
  sub_2714(v66);
  v66[0] = v42;
  sub_5A000(&qword_C25D0, type metadata accessor for SendAnnouncementDisambiguationStrategy, &unk_92650);
  sub_8B29C();
  sub_8B30C();

  sub_8B2FC();
}

uint64_t sub_5920C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v42 = sub_8BA3C();
  v5 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664(&qword_C25C8, &qword_92700);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - v10;
  v12 = sub_8CA2C();
  __chkstk_darwin(v12 - 8);
  v13 = *(a3 + 56);
  sub_59E54(a3 + 64, v43);
  type metadata accessor for SendAnnouncementCATsSimple(0);

  sub_8CA1C();
  v14 = sub_8C9CC();
  v15 = sub_E58C(v43, v44);
  __chkstk_darwin(v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = sub_59D1C(v13, v17, v14, type metadata accessor for SendAnnouncementUnsupportedValueStrategy, &OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin40SendAnnouncementUnsupportedValueStrategy_completionOutputManifest, sub_DE24);
  sub_2714(v43);
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v20 = sub_8CD0C();
  sub_33F4(v20, qword_C3DF8);
  (*(v9 + 16))(v11, a2, v8);
  v21 = v8;
  v22 = sub_8CCEC();
  v23 = sub_8D11C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v40 = a2;
    v25 = v24;
    v38 = swift_slowAlloc();
    v43[0] = v38;
    *v25 = 136315138;
    sub_8BD2C();
    v26 = sub_8BA2C();
    v39 = v19;
    v28 = v27;
    (*(v5 + 8))(v7, v42);
    (*(v9 + 8))(v11, v21);
    v29 = sub_862D8(v26, v28, v43);
    v19 = v39;

    *(v25 + 4) = v29;
    _os_log_impl(&dword_0, v22, v23, "#SendAnnouncementFlow generating unsupportedFlowProducer for %s", v25, 0xCu);
    sub_2714(v38);

    a2 = v40;
  }

  else
  {

    (*(v9 + 8))(v11, v21);
  }

  sub_8BD2C();
  v30 = sub_8BA2C();
  v32 = v31;
  (*(v5 + 8))(v7, v42);
  if (sub_2670C(v30, v32) == 1 && (sub_8BE1C(), sub_622C(v43, v44), v33 = sub_8B64C(), sub_2714(v43), (v33 & 1) == 0))
  {
    v43[0] = v19;
    type metadata accessor for SendAnnouncementUnsupportedValueStrategy(0);
    sub_5A000(&qword_C27A0, type metadata accessor for SendAnnouncementUnsupportedValueStrategy, &unk_93608);
    v34 = sub_8B2AC();
  }

  else
  {
    v43[0] = v19;
    type metadata accessor for SendAnnouncementUnsupportedValueStrategy(0);
    sub_5A000(&qword_C27A0, type metadata accessor for SendAnnouncementUnsupportedValueStrategy, &unk_93608);
    v34 = sub_8B2BC();
  }

  v35 = v34;

  v36 = v35(v41, a2);

  return v36;
}

char *sub_597E0()
{
  sub_2714((v0 + 16));

  sub_2714((v0 + 64));
  v1 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20SendAnnouncementFlow_input;
  sub_8BDBC();
  sub_4BBA4();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_59854()
{
  sub_597E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SendAnnouncementFlow(uint64_t a1)
{
  result = qword_C2680;
  if (!qword_C2680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_59900(uint64_t a1)
{
  result = sub_8BDBC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SendAnnouncementFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x59A80);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_59ABC()
{
  result = qword_C2778;
  if (!qword_C2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2778);
  }

  return result;
}

uint64_t sub_59B50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E2A0;

  return sub_56C24(a1);
}

uint64_t sub_59BEC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SendAnnouncementFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_59C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_8B6BC();
  v11 = sub_65E4(v10);
  __chkstk_darwin(v11);
  sub_16854();
  v15 = type metadata accessor for SharedGlobals(0);
  v16 = &off_BB508;
  v12 = sub_E5DC(&v14);
  sub_E63C(a2, v12);
  sub_8B68C();
  sub_8BC3C();
  *(a4 + 64) = a1;
  sub_E510(&v14, a4 + 16);
  *(a4 + 56) = a3;
  return a4;
}

uint64_t sub_59D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v23 = type metadata accessor for SharedGlobals(0);
  v24 = &off_BB508;
  v13 = sub_E5DC(v22);
  sub_E63C(a2, v13);
  v14 = a4(0);
  v15 = sub_E824(v14);
  sub_E58C(v22, v23);
  sub_E6E8();
  __chkstk_darwin(v16);
  sub_16854();
  v18 = sub_5A094(v17);
  v19(v18);
  v20 = sub_59C30(a1, v6, a3, v15, a5, a6);
  sub_2714(v22);
  return v20;
}

uint64_t sub_59E54(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_4BBA4();
  (*v3)(a2);
  return a2;
}

uint64_t sub_59EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C27B0, &unk_934E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_59F24(uint64_t a1)
{
  v2 = sub_2664(&qword_C27B0, &unk_934E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_59F8C()
{
  result = qword_C27C8;
  if (!qword_C27C8)
  {
    sub_B9BC(&qword_C27C0, &qword_92948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C27C8);
  }

  return result;
}

uint64_t sub_5A000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5A058()
{

  return sub_3364(v1, 1, v0);
}

BOOL sub_5A0D4(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_8C7FC() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

double sub_5A1A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_71C64(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1412C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_5A20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_71C64(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_5A264(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_71CDC(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5A2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_71C64(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

unint64_t sub_5A304(unint64_t result, unint64_t a2)
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
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v15 = v22 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                break;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                break;
              }

              v10 = __CFADD__(10 * v7, v16);
              v7 = 10 * v7 + v16;
              if (v10)
              {
                break;
              }

              ++v15;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v18 = v22;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = __CFADD__(10 * v7, v19);
            v7 = 10 * v7 + v19;
            if (v10)
            {
              break;
            }

            ++v18;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v22 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = 10 * v7 >= v12;
            v7 = 10 * v7 - v12;
            if (!v10)
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
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
        result = sub_8D2BC();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v7, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v10 = __CFADD__(10 * v7, v14);
                v7 = 10 * v7 + v14;
                if (v10)
                {
                  goto LABEL_63;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v17 = *result - 48;
              if (v17 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = __CFADD__(10 * v7, v17);
              v7 = 10 * v7 + v17;
              if (v10)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = 10 * v7 >= v9;
              v7 = 10 * v7 - v9;
              if (!v10)
              {
                goto LABEL_63;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v20 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v7 = sub_5C974(result, a2, 10);
  v20 = v21;
LABEL_65:

  if (v20)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_5A5FC()
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (sub_E7DC(v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v0, "#SendAnnouncementFlowStrategy.actionForInput() handling", v4, 2u);
    sub_E890(v4);
  }

  return sub_8B75C();
}

uint64_t sub_5A6C0()
{
  sub_6608();
  v1[7] = v2;
  v1[8] = v0;
  sub_2664(&qword_C28C8, &qword_92B00);
  v1[9] = swift_task_alloc();
  v3 = sub_8C7FC();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_5A7B4);
}

void sub_5A7B4()
{
  v124 = v0;
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  v2 = sub_33F4(v1, qword_C3DF8);
  v0[13] = v2;
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_125A0(v4))
  {
    v5 = sub_E8E0();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#SendAnnouncementFlowStrategy makeIntentFromParse() called", v5, 2u);
    sub_E890(v5);
  }

  v6 = v0[7];

  v7 = v0[7];
  if (v6)
  {
    v8 = v0[7];
  }

  else
  {
    v8 = [objc_allocWithZone(INSendAnnouncementIntent) init];
  }

  v0[14] = v8;
  v9 = v0[8];
  v10 = v9[10];
  v11 = v9[11];
  sub_5D528();
  v12 = *(v11 + 16);
  v13 = v7;
  if (v12(v10, v11) == 1)
  {
    v14 = v8;
    sub_5B630(v14);
  }

  sub_36598();
  v15 = v9[10];
  v16 = v9[11];
  sub_622C(v9 + 7, v15);
  v17 = (*(v16 + 112))(v15, v16);
  v18 = v9[10];
  v19 = v9[11];
  sub_622C(v9 + 7, v18);
  v20 = (*(v19 + 96))(v18, v19);
  v21 = v9[10];
  v22 = v9[11];
  sub_622C(v9 + 7, v21);
  v23 = (*(v22 + 104))(v21, v22);
  sub_2C2A4(v17, v20, v23);

  if (sub_2D3B4())
  {
    v24 = v8;
    isa = sub_8D03C().super.isa;

    v26 = sub_8CEAC();
    [v24 setValue:isa forKey:v26];
  }

  else
  {
  }

  v27 = v9[10];
  v28 = v9[11];
  sub_5D528();
  v29 = (*(v28 + 120))(v27, v28);
  v122 = v8;
  if (v30 & 1) != 0 || (v31 = v29, v32 = v9[10], v33 = v9[11], sub_5D528(), v34 = (*(v33 + 128))(v32, v33), (v35))
  {
    sub_5D49C();
    sub_622C((v2 + 56), *(v2 + 80));
    v36 = sub_5D484();
    v38 = v37(v36);
    v39 = sub_1D6AC(v38);
    v40 = [v39 _className];

    sub_8CEDC();

    LOBYTE(v123) = 0;
    v41 = sub_5D3F0();
    sub_5D508(v41);

    v42 = sub_8CCEC();
    v43 = sub_8D11C();
    if (sub_125A0(v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v123 = v45;
      *v44 = 136315138;
      v46 = v8;
      v47 = [v46 description];
      v48 = sub_8CEDC();
      v50 = v49;

      v51 = sub_862D8(v48, v50, &v123);

      *(v44 + 4) = v51;
      sub_5D4E8(&dword_0, v52, v53, "#SendAnnouncementFlowStrategy Finished creating intent from parse: %s");
      sub_2714(v45);
      sub_5D434();
      sub_E890(v44);
    }

    else
    {
    }

    sub_5D4DC();

    v54(v8);
    return;
  }

  v55 = v34;
  v56 = sub_8CCEC();
  v57 = sub_8D11C();
  if (sub_E7DC(v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 134218240;
    *(v58 + 4) = v31;
    *(v58 + 12) = 2048;
    *(v58 + 14) = v55;
    sub_5D450();
    _os_log_impl(v59, v60, v61, v62, v63, 0x16u);
    sub_5D434();
  }

  sub_8C7CC();
  if (sub_8C7BC())
  {
    v120 = v55;
    v64 = v0[11];
    v65 = v0[12];
    v66 = v0[10];
    sub_8C7AC();

    sub_8CB4C();
    sub_2664(&qword_C28D0, qword_92B08);
    v67 = *(v64 + 72);
    v68 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_8FAD0;
    v70 = v69 + v68;
    v71 = *(v64 + 104);
    v71(v70, enum case for InputOrigin.voiceTrigger(_:), v66);
    v71(v70 + v67, enum case for InputOrigin.bluetoothVoiceTrigger(_:), v66);
    v72 = swift_task_alloc();
    *(v72 + 16) = v65;
    LOBYTE(v70) = sub_5A0D4(sub_5C43C, v72, v69);
    swift_setDeallocating();
    sub_5C2C8();

    (*(v64 + 8))(v65, v66);
    if (v70)
    {
      v73 = sub_8CCEC();
      v74 = sub_8D11C();
      v8 = v122;
      if (sub_E7DC(v74))
      {
        *sub_E8E0() = 0;
        sub_5D450();
        _os_log_impl(v75, v76, v77, v78, v79, 2u);
        sub_5D434();
      }

      v80 = sub_8CB5C();
      if (v80)
      {
        v81 = v80;
        v82 = sub_5A20C(0xD000000000000013, 0x8000000000097F60, v80);
        if (v83)
        {
          v84 = v82;
          v85 = v83;
          v119 = sub_5A20C(0xD000000000000012, 0x8000000000097F80, v81);
          v87 = v86;

          if (!v87 || (v88 = sub_5A304(v84, v85), (v89 & 1) != 0))
          {

LABEL_39:

            v8 = v122;
            goto LABEL_40;
          }

          v103 = v88;
          v104 = sub_5A304(v119, v87);
          if (v105)
          {
            goto LABEL_39;
          }

          v106 = v104;
          v107 = sub_8CCEC();
          v108 = sub_8D11C();
          if (sub_125A0(v108))
          {
            v109 = swift_slowAlloc();
            *v109 = 134218240;
            *(v109 + 4) = v103;
            *(v109 + 12) = 2048;
            *(v109 + 14) = v106;
            _os_log_impl(&dword_0, v107, v108, "#SendAnnouncementFlowStrategy extraSamplesAtStart from CoreSpeech: %llu at hardwareSampleRate: %llu", v109, 0x16u);
            sub_E890(v109);
          }

          if (is_mul_ok(v103, 0x3E8uLL))
          {
            v8 = v122;
            if (v106)
            {
              v110 = 1000 * v103 / v106;
              if (!__CFADD__(v31, v110))
              {
                v111 = __CFADD__(v120, v110);
                v121 = v120 + v110;
                if (!v111)
                {
                  v90 = sub_8CCEC();
                  v112 = sub_8D11C();
                  if (!sub_E7DC(v112))
                  {

                    goto LABEL_40;
                  }

                  v113 = swift_slowAlloc();
                  *v113 = 134218496;
                  *(v113 + 4) = v110;
                  *(v113 + 12) = 2048;
                  *(v113 + 14) = v31 + v110;
                  *(v113 + 22) = 2048;
                  *(v113 + 24) = v121;
                  sub_5D450();
                  _os_log_impl(v114, v115, v116, v117, v118, 0x20u);
                  sub_5D434();

                  goto LABEL_35;
                }

LABEL_59:
                __break(1u);
                return;
              }

LABEL_58:
              __break(1u);
              goto LABEL_59;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_58;
        }
      }

      goto LABEL_40;
    }

    v8 = v122;
  }

  v90 = sub_8CCEC();
  v91 = sub_8D11C();
  if (sub_E7DC(v91))
  {
    *sub_E8E0() = 0;
    sub_5D450();
    _os_log_impl(v92, v93, v94, v95, v96, 2u);
    sub_5D434();
  }

LABEL_35:

LABEL_40:
  v97 = v9[10];
  v98 = v9[11];
  sub_5D528();
  v99 = *(v98 + 152);
  v8;
  v99(v97, v98);
  v0[15] = v100;
  sub_8B5AC();
  if (sub_8C7BC())
  {
    sub_8C7AC();

    sub_8CB4C();

    v101 = 0;
  }

  else
  {
    v101 = 1;
  }

  sub_6270(v0[9], v101, 1, v0[10]);
  v102 = swift_task_alloc();
  v0[16] = v102;
  *v102 = v0;
  v102[1] = sub_5B21C;

  sub_60C94();
}

uint64_t sub_5B21C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_E6F8();
  *v6 = v5;
  *v6 = *v2;
  v5[17] = v1;

  v7 = v4[14];
  v8 = v4[9];
  if (v1)
  {

    sub_5C340(v8);
    sub_2714(v5 + 2);
    v9 = sub_5B5B8;
  }

  else
  {

    v5[18] = a1;

    sub_5C340(v8);
    sub_2714(v5 + 2);
    v9 = sub_5B3BC;
  }

  return _swift_task_switch(v9);
}

uint64_t sub_5B3BC()
{
  v24 = v0;

  v22 = *(v0 + 144);
  sub_5D49C();
  sub_622C((v1 + 56), *(v1 + 80));
  v2 = sub_5D484();
  v4 = v3(v2);
  v5 = sub_1D6AC(v4);
  v6 = [v5 _className];

  sub_8CEDC();

  v7 = sub_5D3F0();
  sub_5D508(v7);

  v8 = sub_8CCEC();
  v9 = sub_8D11C();
  if (sub_125A0(v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    v12 = v22;
    v13 = [v12 description];
    v14 = sub_8CEDC();
    v16 = v15;

    v17 = sub_862D8(v14, v16, &v23);

    *(v10 + 4) = v17;
    sub_5D4E8(&dword_0, v18, v19, "#SendAnnouncementFlowStrategy Finished creating intent from parse: %s");
    sub_2714(v11);
    sub_5D434();
    sub_E890(v10);
  }

  else
  {
  }

  sub_5D4DC();

  return v20(v22);
}

uint64_t sub_5B5B8()
{
  sub_6608();

  v1 = *(v0 + 8);

  return v1();
}

id sub_5B630(void *a1)
{
  v2 = v1;
  v4 = sub_2664(&qword_BFF28, &unk_8EFD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v7 = sub_8CD0C();
  sub_33F4(v7, qword_C3DF8);
  v8 = sub_8CCEC();
  v9 = sub_8D11C();
  if (sub_125A0(v9))
  {
    v10 = sub_E8E0();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "#SendAnnouncementFlowStrategy setting reply and announcement ID", v10, 2u);
    sub_5D434();
  }

  isa = sub_8D09C().super.super.isa;
  v12 = sub_8CEAC();
  [a1 setValue:isa forKey:v12];

  v13 = sub_8AF9C();
  sub_6270(v6, 1, 1, v13);
  v14 = v2[10];
  v15 = v2[11];
  sub_622C(v2 + 7, v14);
  v16 = (*(v15 + 136))(v14, v15);
  v18 = v17;
  v19 = objc_allocWithZone(INAnnouncement);
  v20 = sub_64758(v6, v16, v18, 0, 0);
  v21 = sub_8CEAC();
  [a1 setValue:v20 forKey:v21];

  v22 = a1;
  return v22;
}

uint64_t sub_5B8A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_5B93C;

  return sub_5A6C0();
}

uint64_t sub_5B93C()
{
  sub_6608();
  v3 = v2;
  v4 = *v1;
  sub_E6F8();
  *v5 = v4;

  sub_5D4DC();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_5BA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SendAnnouncementFlowStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t sub_5BA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_5D3D0;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_5BB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SendAnnouncementFlowStrategy();
  *v10 = v5;
  v10[1] = sub_5D3D0;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_5BC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SendAnnouncementFlowStrategy();
  *v10 = v5;
  v10[1] = sub_5D3D0;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_5BCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SendAnnouncementFlowStrategy();
  *v10 = v5;
  v10[1] = sub_5D3D0;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_5BDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SendAnnouncementFlowStrategy();
  *v12 = v6;
  v12[1] = sub_5BE7C;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_5BE7C()
{
  sub_6608();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_5BF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SendAnnouncementFlowStrategy();
  *v12 = v6;
  v12[1] = sub_5D3D0;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_5C040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendAnnouncementFlowStrategy();
  *v8 = v4;
  v8[1] = sub_5C104;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v9, a4);
}

uint64_t sub_5C104()
{
  sub_6608();
  v2 = v1;
  v3 = *v0;
  sub_E6F8();
  *v4 = v3;

  sub_5D4DC();

  return v5(v2);
}

uint64_t sub_5C2C8()
{
  sub_8C7FC();
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_5C340(uint64_t a1)
{
  v2 = sub_2664(&qword_C28C8, &qword_92B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5C3A8(uint64_t a1, uint64_t a2)
{
  sub_8C7FC();
  sub_5D388(&qword_C28D8, 255, &type metadata accessor for InputOrigin, &protocol conformance descriptor for InputOrigin);
  return sub_8CE9C() & 1;
}

unsigned __int8 *sub_5C45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = sub_8CFFC();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_5CEFC(result, v5);
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_8D2BC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          sub_5D46C();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  sub_5D460();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        sub_5D46C();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                sub_5D460();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
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

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        sub_5D3D4();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              sub_5D460();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        sub_5D3D4();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              sub_5D460();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      sub_5D3D4();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            sub_5D460();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}