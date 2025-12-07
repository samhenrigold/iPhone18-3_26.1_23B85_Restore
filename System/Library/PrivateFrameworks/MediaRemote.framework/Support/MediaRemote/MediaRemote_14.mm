unint64_t sub_10023D738(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10023D958(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10023D958(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10023D958(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10023D9D4(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 16;
  result = *(a3 + 16);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v9 = *(v6 + 16 * result);

    v8 = a1(&v9);

    if (v3)
    {
      break;
    }

    result = v7 - 1;
  }

  while ((v8 & 1) == 0);
  return result;
}

uint64_t (*sub_10023DA8C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10023DB0C;
  }

  __break(1u);
  return result;
}

void sub_10023DB14(unint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*a2 + 16))
  {
    *a3 = *(*a2 + 16 * v3 + 32);

    return;
  }

  __break(1u);
}

unint64_t sub_10023DB94()
{
  result = qword_100523048;
  if (!qword_100523048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523048);
  }

  return result;
}

uint64_t sub_10023DBE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = a4;
    swift_errorRetain();

    return sub_10023DC40(a2, a3, v4);
  }

  return result;
}

uint64_t sub_10023DC40(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_10023DC58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = a4;

    return sub_10023DCB0(a2, a3, v4);
  }

  return result;
}

uint64_t sub_10023DCB0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

unint64_t sub_10023DCC8()
{
  result = qword_100523060;
  if (!qword_100523060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523060);
  }

  return result;
}

unint64_t sub_10023DD1C()
{
  result = qword_100523068;
  if (!qword_100523068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523068);
  }

  return result;
}

unint64_t sub_10023DD70()
{
  result = qword_100524EE0;
  if (!qword_100524EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524EE0);
  }

  return result;
}

uint64_t sub_10023DDC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x315654656C707041 && a2 == 0xE900000000000034 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x315654656C707041 && a2 == 0xE900000000000031 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0x365654656C707041 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x355654656C707041 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x6363416F69647541 && a2 == 0xEF3679726F737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x6363416F69647541 && a2 == 0xEF3579726F737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x6363416F69647541 && a2 == 0xEF3179726F737365)
  {
    return 2;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 2;
  }

  return 0;
}

uint64_t sub_10023DFFC(uint64_t a1)
{
  v2 = type metadata accessor for RoutingSessionConfiguration.Surface();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for RoutingSessionConfiguration.Surface.controlCenter(_:))
  {
    return 0;
  }

  if (v6 == enum case for RoutingSessionConfiguration.Surface.coverSheet(_:))
  {
    return 1;
  }

  if (v6 == enum case for RoutingSessionConfiguration.Surface.dynamicIsland(_:))
  {
    return 2;
  }

  if (v6 == enum case for RoutingSessionConfiguration.Surface.siri(_:))
  {
    return 4;
  }

  if (v6 == enum case for RoutingSessionConfiguration.Surface.home(_:))
  {
    return 5;
  }

  if (v6 == enum case for RoutingSessionConfiguration.Surface.proximityCard(_:))
  {
    return 6;
  }

  if (v6 == enum case for RoutingSessionConfiguration.Surface.app(_:))
  {
    return 3;
  }

  if (v6 == enum case for RoutingSessionConfiguration.Surface.ambient(_:))
  {
    return 7;
  }

  if (v6 == enum case for RoutingSessionConfiguration.Surface.bluePill(_:))
  {
    return 8;
  }

  if (v6 == enum case for RoutingSessionConfiguration.Surface.activityBanner(_:))
  {
    return 9;
  }

  if (v6 == enum case for RoutingSessionConfiguration.Surface.routeRecommendation(_:))
  {
    return 10;
  }

  if (v6 == enum case for RoutingSessionConfiguration.Surface.other(_:))
  {
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10023E264(uint64_t a1)
{
  v2 = 0;
  v3 = type metadata accessor for RoutingControl.Target();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RoutingControl.RoutingControlType();
  v36 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RoutingControl();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v35 - v15;
  (*(*a1 + 256))(v38, v14);
  v41[0] = v38[1];
  v41[1] = v38[2];
  v42 = v39;
  v40 = v38[0];
  v17 = sub_1001E6204(&v40);
  if (v42 <= 5u)
  {
    if (v42 <= 2u)
    {
      v2 = v42 == 1;
LABEL_28:
      sub_100238E4C(v41);
      return v2;
    }

    if (v42 != 3)
    {
      if (v42 == 4)
      {
        v2 = 5;
      }

      goto LABEL_28;
    }

    v25 = (*(*a1 + 232))(v17);
    if ((~v27 & 0x6FE) != 0)
    {
      if (((v27 >> 8) & 6 | (v27 >> 7) & 1) == 6)
      {
        v28 = *(v25 + 16);
        v29 = *(v25 + 24);
        v30 = *(v25 + 32);
        v31 = v25;
        v32 = v26;
        v33 = v27;
        sub_10003FE34(v28, v29, v30);
        sub_10003FE48(v31, v32, v33);
        if ((~v30 & 0x6FE) != 0)
        {
          sub_10003FE48(v28, v29, v30);
          v2 = 7;
          goto LABEL_28;
        }
      }

      else
      {
        sub_10003FE48(v25, v26, v27);
      }
    }

LABEL_27:
    v2 = 0;
    goto LABEL_28;
  }

  if (v42 <= 8u)
  {
    if (v42 == 6)
    {
      v2 = 4;
      goto LABEL_28;
    }

    if (v42 != 7)
    {
      goto LABEL_27;
    }

    v18 = swift_projectBox();
    (*(v10 + 16))(v16, v18, v9);
    RoutingControl.type.getter();
    (*(v10 + 8))(v16, v9);
    v19 = v36;
    v20 = (*(v36 + 88))(v8, v6);
    if (v20 != enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
    {
      v2 = 0;
      if (v20 != enum case for RoutingControl.RoutingControlType.tvRemote(_:) && v20 != enum case for RoutingControl.RoutingControlType.mute(_:))
      {
        (*(v19 + 8))(v8, v6);
        v2 = 6;
      }

      goto LABEL_28;
    }

    (*(v19 + 96))(v8, v6);
    v21 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
    (*(*(v21 - 8) + 8))(v8, v21);
LABEL_15:
    v2 = 3;
    goto LABEL_28;
  }

  if (v42 != 10)
  {
    goto LABEL_27;
  }

  v22 = swift_projectBox();
  (*(v10 + 16))(v13, v22, v9);
  RoutingControl.target.getter();
  v23 = v37;
  v24 = (*(v37 + 88))(v5, v3);
  if (v24 == enum case for RoutingControl.Target.session(_:))
  {
    (*(v10 + 8))(v13, v9);
    (*(v23 + 8))(v5, v3);
    goto LABEL_15;
  }

  if (v24 == enum case for RoutingControl.Target.item(_:))
  {
    (*(v10 + 8))(v13, v9);
    (*(v23 + 8))(v5, v3);
    v2 = 2;
    goto LABEL_28;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10023E7FC(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_10023D958(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_10023D958(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_10023D958(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
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
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
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

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_10023EC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *sub_100248D90();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_10024852C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C5400;
  v14 = _Block_copy(aBlock);
  v15 = v12;

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100248538(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);
}

void sub_10023EF5C(void *a1, uint64_t a2, uint64_t a3)
{
  v288 = a3;
  v289 = type metadata accessor for RoutingSessionConfiguration.Surface();
  v287 = *(v289 - 8);
  __chkstk_darwin(v289);
  v286 = &v270 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = type metadata accessor for Logger();
  v290 = *(v285 - 8);
  v6 = __chkstk_darwin(v285);
  v284 = &v270 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v273 = &v270 - v8;
  v9 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v10 = __chkstk_darwin(v9 - 8);
  v291 = &v270 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v281 = &v270 - v13;
  __chkstk_darwin(v12);
  v293 = &v270 - v14;
  v304 = type metadata accessor for Date();
  v296 = *(v304 - 8);
  v15 = __chkstk_darwin(v304);
  v276 = &v270 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v277 = &v270 - v18;
  v19 = __chkstk_darwin(v17);
  v301 = &v270 - v20;
  v21 = __chkstk_darwin(v19);
  v278 = &v270 - v22;
  v23 = __chkstk_darwin(v21);
  *&v279 = &v270 - v24;
  v25 = __chkstk_darwin(v23);
  v295 = &v270 - v26;
  v27 = __chkstk_darwin(v25);
  v274 = (&v270 - v28);
  v29 = __chkstk_darwin(v27);
  v303 = &v270 - v30;
  __chkstk_darwin(v29);
  v292 = &v270 - v31;
  v32 = type metadata accessor for HostedRoutingSession(0);
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32 - 8);
  v297 = (&v270 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = __chkstk_darwin(v34);
  v294 = &v270 - v37;
  v38 = __chkstk_darwin(v36);
  v282 = (&v270 - v39);
  v40 = __chkstk_darwin(v38);
  v306 = &v270 - v41;
  __chkstk_darwin(v40);
  v43 = &v270 - v42;
  v44 = sub_100032A00();
  swift_beginAccess();
  v298 = a1;
  v45 = a1[5];
  v313 = _swiftEmptyArrayStorage;
  v46 = v45 + 64;
  v47 = 1 << *(v45 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v45 + 64);
  v50 = (v47 + 63) >> 6;
  v307 = v45;
  swift_bridgeObjectRetain_n();
  v283 = 0;
  v51 = 0;
  v305 = v46;
  while (v49)
  {
    v52 = v51;
LABEL_11:
    v53 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v54 = *(*(v307 + 56) + ((v52 << 9) | (8 * v53)));
    v55 = *(v54 + 40);
    v56 = *(v54 + 48);
    v57 = *(v54 + 56);

    if (!sub_1002562CC(v55, v56, v57) || (*(v54 + OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_initiallyPicked) & 1) != 0)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    v51 = v52;
    v46 = v305;
  }

  while (1)
  {
    v52 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v52 >= v50)
    {
      break;
    }

    v49 = *(v46 + 8 * v52);
    ++v51;
    if (v49)
    {
      goto LABEL_11;
    }
  }

  v58 = v307;

  v300 = v313;
  v313 = _swiftEmptyArrayStorage;
  v59 = 1 << *(v58 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v49 = v60 & *(v58 + 64);
  v50 = (v59 + 63) >> 6;

  v61 = 0;
  while (v49)
  {
    v62 = v61;
LABEL_24:
    v63 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v64 = *(*(v307 + 56) + ((v62 << 9) | (8 * v63)));
    v65 = *(v64 + 40);
    v66 = *(v64 + 48);
    v67 = *(v64 + 56);

    if (!sub_1002562B4(v65, v66, v67) || (*(v64 + OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_initiallyPicked) & 1) != 0)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    v61 = v62;
    v46 = v305;
  }

  while (1)
  {
    v62 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_81;
    }

    if (v62 >= v50)
    {
      break;
    }

    v49 = *(v46 + 8 * v62);
    ++v61;
    if (v49)
    {
      goto LABEL_24;
    }
  }

  v68 = v313;
  if (v300 < 0)
  {
    v50 = 1;
  }

  else
  {
    v50 = (v300 >> 62) & 1;
  }

  v299 = v313;
  if (v50 == 1)
  {
    goto LABEL_84;
  }

  v69 = *(v300 + 16);
  while (1)
  {
    v70 = v68 < 0 || (v68 & 0x4000000000000000) != 0;
    if (v70)
    {
      v130 = _CocoaArrayWrapper.endIndex.getter();
      v72 = v69 + v130;
      if (__OFADD__(v69, v130))
      {
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }
    }

    else
    {
      v71 = *(v68 + 16);
      v72 = v69 + v71;
      if (__OFADD__(v69, v71))
      {
        goto LABEL_87;
      }
    }

    if (v72 <= 0)
    {

LABEL_207:

      return;
    }

    v272 = v50;
    v271 = v70;
    v73 = *(v44 + 16);
    v302 = v33;
    if (!v73)
    {
      break;
    }

    v50 = 0;
    v74 = _swiftEmptyArrayStorage;
    while (v50 < *(v44 + 16))
    {
      v75 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v49 = *(v33 + 72);
      v76 = sub_100238F04(v44 + v75 + v49 * v50, v43, type metadata accessor for HostedRoutingSession);
      if (sub_100031908(v76))
      {
        sub_10024889C(v43, type metadata accessor for HostedRoutingSession);
      }

      else
      {
        sub_100238EA0(v43, v306);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v313 = v74;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000326B8(0, v74[2] + 1, 1);
          v74 = v313;
        }

        v79 = v74[2];
        v78 = v74[3];
        if (v79 >= v78 >> 1)
        {
          sub_1000326B8((v78 > 1), v79 + 1, 1);
          v74 = v313;
        }

        v74[2] = v79 + 1;
        sub_100238EA0(v306, v74 + v75 + v79 * v49);
        v33 = v302;
      }

      if (v73 == ++v50)
      {
        goto LABEL_51;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    v69 = _CocoaArrayWrapper.endIndex.getter();
    v68 = v299;
  }

  v74 = _swiftEmptyArrayStorage;
LABEL_51:
  v80 = v74[2];

  v81 = v298;
  v82 = *(*v298[2] + 128);

  v84 = v293;
  v82(v83);

  v85 = v296;
  v50 = v296 + 48;
  v86 = *(v296 + 48);
  v87 = v304;
  v88 = v86(v84, 1, v304);
  v275 = v80;
  v306 = v50;
  *&v280 = v86;
  if (v88 == 1)
  {
    sub_1000038A4(v84, &qword_1005228D8, &unk_100450060);
    v89 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastTimeDetailedDiscoveryEnabled;
    swift_beginAccess();
    v90 = v81 + v89;
    v91 = v281;
    sub_10001D9AC(v90, v281, &qword_1005228D8, &unk_100450060);
    if (v86(v91, 1, v87) == 1)
    {
      sub_1000038A4(v91, &qword_1005228D8, &unk_100450060);
      v92 = &_swiftEmptyDictionarySingleton;
    }

    else
    {
      v99 = v296;
      v100 = v274;
      (*(v296 + 32))(v274, v91, v87);
      sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
      v101 = v303;
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v3 = v102;
      v103 = *(v99 + 8);
      v50 = v99 + 8;
      v103(v101, v87);
      isa = NSNumber.init(floatLiteral:)(v3).super.super.isa;
      v105 = swift_isUniquelyReferenced_nonNull_native();
      v312 = &_swiftEmptyDictionarySingleton;
      sub_10023C9CC(isa, 0xD00000000000001BLL, 0x800000010043D710, v105);
      v92 = v312;
      v103(v100, v87);
    }
  }

  else
  {
    (*(v85 + 32))(v292, v84, v87);
    v293 = "No picked items in snapshot";
    sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
    v50 = *(*v81[2] + 104);

    v94 = v303;
    (v50)(v93);

    Date.timeIntervalSince(_:)();
    v3 = v95;
    v96 = *(v85 + 8);
    v96(v94, v87);
    v97 = NSNumber.init(floatLiteral:)(v3).super.super.isa;
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v313 = &_swiftEmptyDictionarySingleton;
    sub_10023C9CC(v97, 0xD00000000000001BLL, v293 | 0x8000000000000000, v98);
    v92 = v313;
    v96(v292, v87);
  }

  v49 = v297;
  v106 = v294;
  v33 = v302;
  v107 = &qword_10052AF98[13];
  v294 = v92;
  if (!v73)
  {

    v43 = v298;
    goto LABEL_62;
  }

  if (!*(v44 + 16))
  {
    goto LABEL_88;
  }

  v108 = v44 + ((*(v302 + 80) + 32) & ~*(v302 + 80));
  sub_100238F04(v108, v106, type metadata accessor for HostedRoutingSession);
  v43 = v298;
  if (v73 != 1)
  {
    v125 = 1;
    while (v125 < *(v44 + 16))
    {
      sub_100238F04(v108 + *(v33 + 72) * v125, v49, type metadata accessor for HostedRoutingSession);
      v126 = v106;
      v50 = sub_10003AC60()[2];

      v127 = sub_10003AC60()[2];

      if (v50 >= v127)
      {
        sub_10024889C(v49, type metadata accessor for HostedRoutingSession);
      }

      else
      {
        sub_10024889C(v126, type metadata accessor for HostedRoutingSession);
        sub_100238EA0(v49, v126);
      }

      v106 = v126;
      ++v125;
      v107 = qword_10052AF98 + 104;
      if (v73 == v125)
      {
        goto LABEL_59;
      }
    }

    goto LABEL_83;
  }

LABEL_59:

  v109 = v282;
  sub_100238EA0(v106, v282);
  v110 = sub_10003AC60();
  sub_10024889C(v109, type metadata accessor for HostedRoutingSession);
  v111 = v110[2];

  if (!v111)
  {
LABEL_62:
    v112 = objc_opt_self();
    v113 = MSVAutoBugCaptureDomainMediaRemote;
    v50 = String._bridgeToObjectiveC()();
    v114 = String._bridgeToObjectiveC()();
    v115 = String._bridgeToObjectiveC()();
    [v112 snapshotWithDomain:v113 type:v50 subType:v114 context:v115 triggerThresholdValues:0 events:0 completion:0];

    v111 = 0;
  }

  v293 = v111;
  v116 = v107[263];
  swift_beginAccess();
  v117 = v291;
  sub_10001D9AC(&v43[v116], v291, &qword_1005228D8, &unk_100450060);
  v118 = v304;
  if ((v280)(v117, 1, v304) != 1)
  {
    v50 = v296;
    v122 = *(v296 + 32);
    v291 = v296 + 32;
    v282 = v122;
    (v122)(v295, v117, v118);
    v68 = v300;
    if (v272)
    {
      v123 = v300;
      v124 = _CocoaArrayWrapper.endIndex.getter();
      v68 = v123;
      v49 = v124;
    }

    else
    {
      v49 = *(v300 + 16);
    }

    LODWORD(v292) = v49 == 0;
    if (!v49)
    {

      v3 = 0.0;
      goto LABEL_104;
    }

    v302 = v68 & 0xC000000000000001;
    if ((v68 & 0xC000000000000001) == 0)
    {
      if (!*(v68 + 16))
      {
        goto LABEL_216;
      }

      v128 = v68;
      v306 = *(v68 + 32);

      if (v49 == 1)
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    }

LABEL_89:
    v128 = v68;
    v306 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (v49 == 1)
    {
LABEL_78:
      v129 = v306;
LABEL_102:

      v142 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
      swift_beginAccess();
      v50 = v296;
      v143 = v129 + v142;
      v144 = v278;
      v118 = v304;
      (*(v296 + 16))(v278, v143, v304);

      v145 = v279;
      (v282)(v279, v144, v118);
      Date.timeIntervalSince(_:)();
      v3 = v146;
      (*(v50 + 8))(v145, v118);
      if (v3 <= 0.0)
      {
        v3 = 0.0;
      }

LABEL_104:
      v147 = v299;
      if (v271)
      {
        v49 = _CocoaArrayWrapper.endIndex.getter();
        v147 = v299;
        if (v49)
        {
LABEL_106:
          v302 = v147 & 0xC000000000000001;
          if ((v147 & 0xC000000000000001) != 0)
          {
            goto LABEL_217;
          }

          if (!*(v147 + 16))
          {
            goto LABEL_234;
          }

          v306 = *(v147 + 32);

          if (v49 == 1)
          {
            goto LABEL_109;
          }

          goto LABEL_218;
        }
      }

      else
      {
        v49 = v299[2];
        if (v49)
        {
          goto LABEL_106;
        }
      }

      v158 = *(v50 + 8);
      v50 += 8;
      v119 = v158(v295, v118);
      LODWORD(v295) = 1;
      v121 = 0.0;
      goto LABEL_115;
    }

LABEL_90:
    v298 = (v50 + 16);
    v297 = (v50 + 8);
    v50 = 1;
    v131 = v128;
    v132 = v304;
    do
    {
      while (1)
      {
        if (v302)
        {
          v129 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v133 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_209;
          }
        }

        else
        {
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_210;
          }

          if (v50 >= *(v131 + 16))
          {
            goto LABEL_211;
          }

          v129 = *(v131 + 8 * v50 + 32);

          v133 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_209;
          }
        }

        v134 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
        swift_beginAccess();
        v135 = *v298;
        v136 = v303;
        (*v298)(v303, v129 + v134, v132);
        v137 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
        v138 = v306;
        swift_beginAccess();
        v139 = v138 + v137;
        v140 = v301;
        v135(v301, v139, v132);
        LOBYTE(v137) = static Date.< infix(_:_:)();
        v141 = *v297;
        (*v297)(v140, v132);
        v141(v136, v132);
        if ((v137 & 1) == 0)
        {
          break;
        }

        v306 = v129;
        v50 = v133;
        v131 = v300;
        if (v133 == v49)
        {
          goto LABEL_102;
        }
      }

      ++v50;
      v131 = v300;
    }

    while (v133 != v49);
    v129 = v306;
    goto LABEL_102;
  }

  v119 = sub_1000038A4(v117, &qword_1005228D8, &unk_100450060);
  LODWORD(v295) = 1;
  v121 = 0.0;
  v3 = 0.0;
  LODWORD(v292) = 1;
  while (1)
  {
LABEL_115:
    v159 = v290;
    v160 = 0;
    v302 = 0;
    v299 = 0;
    v306 = 0;
    v297 = 0;
    v298 = 0;
    v304 = 0;
    v300 = 0;
    v301 = 0;
    v161 = 0;
    v162 = 0;
    v163 = 1 << *(v307 + 32);
    v164 = -1;
    if (v163 < 64)
    {
      v164 = ~(-1 << v163);
    }

    v49 = v164 & *(v307 + 64);
    v165 = (v163 + 63) >> 6;
    v290 += 2;
    v282 = v159 + 1;
    v281 = &unk_100451130;
    *&v120 = 136315138;
    v280 = v120;
    *&v120 = 136315394;
    v279 = v120;
LABEL_118:
    if (v49)
    {
      goto LABEL_123;
    }

    while (1)
    {
      v166 = v162 + 1;
      if (__OFADD__(v162, 1))
      {
        break;
      }

      if (v166 >= v165)
      {

        sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
        v211 = NSNumber.init(integerLiteral:)(v161).super.super.isa;
        v212 = v294;
        v213 = swift_isUniquelyReferenced_nonNull_native();
        v310 = v212;
        sub_10023C9CC(v211, 0xD000000000000013, 0x800000010043D3D0, v213);
        v214 = v310;
        v215 = NSNumber.init(integerLiteral:)(v301).super.super.isa;
        v216 = swift_isUniquelyReferenced_nonNull_native();
        v310 = v214;
        sub_10023C9CC(v215, 0xD000000000000013, 0x800000010043D3F0, v216);
        v217 = v310;
        v218 = NSNumber.init(integerLiteral:)(v300).super.super.isa;
        v219 = swift_isUniquelyReferenced_nonNull_native();
        v310 = v217;
        sub_10023C9CC(v218, 0x746E756F43767461, 0xE800000000000000, v219);
        v220 = v310;
        v221 = NSNumber.init(integerLiteral:)(v304).super.super.isa;
        v222 = swift_isUniquelyReferenced_nonNull_native();
        v310 = v220;
        sub_10023C9CC(v221, 0x746F6F7465756C62, 0xEE00746E756F4368, v222);
        v223 = v310;
        v224 = NSNumber.init(integerLiteral:)(v298).super.super.isa;
        v225 = swift_isUniquelyReferenced_nonNull_native();
        v310 = v223;
        sub_10023C9CC(v224, 0x43646F50656D6F68, 0xEC000000746E756FLL, v225);
        v226 = v310;
        v227 = NSNumber.init(integerLiteral:)(v297).super.super.isa;
        v228 = swift_isUniquelyReferenced_nonNull_native();
        v310 = v226;
        sub_10023C9CC(v227, 0xD000000000000010, 0x800000010043D410, v228);
        v229 = v310;
        v230 = NSNumber.init(integerLiteral:)(v293).super.super.isa;
        v231 = swift_isUniquelyReferenced_nonNull_native();
        v310 = v229;
        sub_10023C9CC(v230, 0xD000000000000018, 0x800000010043D600, v231);
        v232 = v310;
        v233 = NSNumber.init(integerLiteral:)(v306).super.super.isa;
        v234 = swift_isUniquelyReferenced_nonNull_native();
        v310 = v232;
        sub_10023C9CC(v233, 0x756F43726568746FLL, 0xEA0000000000746ELL, v234);
        v235 = v310;
        v236 = NSNumber.init(integerLiteral:)(v299).super.super.isa;
        v237 = swift_isUniquelyReferenced_nonNull_native();
        v310 = v235;
        sub_10023C9CC(v236, 0xD000000000000015, 0x800000010043D430, v237);
        v238 = v310;
        if ((v292 & 1) == 0)
        {
          v239 = NSNumber.init(floatLiteral:)(v3).super.super.isa;
          v240 = swift_isUniquelyReferenced_nonNull_native();
          v310 = v238;
          sub_10023C9CC(v239, 0xD00000000000001BLL, 0x800000010043D6D0, v240);
          v238 = v310;
        }

        v241 = v275;
        if ((v295 & 1) == 0)
        {
          v242 = NSNumber.init(floatLiteral:)(v121).super.super.isa;
          v243 = swift_isUniquelyReferenced_nonNull_native();
          v310 = v238;
          sub_10023C9CC(v242, 0xD00000000000001DLL, 0x800000010043D6B0, v243);
          v238 = v310;
        }

        v244 = NSNumber.init(integerLiteral:)(v302).super.super.isa;
        v245 = swift_isUniquelyReferenced_nonNull_native();
        v310 = v238;
        sub_10023C9CC(v244, 0xD000000000000013, 0x800000010043D620, v245);
        v246 = v310;
        v247 = NSNumber.init(integerLiteral:)(v241).super.super.isa;
        v248 = swift_isUniquelyReferenced_nonNull_native();
        v310 = v246;
        sub_10023C9CC(v247, 0xD000000000000013, 0x800000010043D640, v248);
        v249 = v310;
        v250 = NSNumber.init(integerLiteral:)(v160).super.super.isa;
        v251 = swift_isUniquelyReferenced_nonNull_native();
        v310 = v249;
        sub_10023C9CC(v250, 0xD000000000000017, 0x800000010043D660, v251);
        v252 = v310;
        v253 = v286;
        RoutingSessionConfiguration.surface.getter();
        v254 = sub_10023DFFC(v253);
        LOBYTE(v250) = v255;
        (*(v287 + 8))(v253, v289);
        if ((v250 & 1) == 0)
        {
          v256 = NSNumber.init(integerLiteral:)(v254).super.super.isa;
          v257 = swift_isUniquelyReferenced_nonNull_native();
          v310 = v252;
          sub_10023C9CC(v256, 0x536C6F72746E6F63, 0xEE00656361667275, v257);
          v252 = v310;
        }

        sub_10023EC68(0xD00000000000002ELL, 0x800000010043D680, v252);
        goto LABEL_207;
      }

      v49 = *(v305 + 8 * v166);
      ++v162;
      if (v49)
      {
        v162 = v166;
LABEL_123:
        v167 = *(*(v307 + 56) + ((v162 << 9) | (8 * __clz(__rbit64(v49)))));
        v49 &= v49 - 1;
        v168 = *(v167 + 56);
        v169 = (v168 >> 8) & 6 | (v168 >> 7) & 1;
        if (v169 > 2)
        {
          if ((v169 - 5) >= 2 && v169 != 3)
          {
            v173 = __OFADD__(v306++, 1);
            if (v173)
            {
              goto LABEL_212;
            }
          }
        }

        else if (v169)
        {
          v50 = *(v167 + 40);
          v170 = *(v167 + 48);
          if (v169 == 1)
          {
            v296 = v161;
            v171 = *(v167 + 58);

            v291 = v170;
            sub_10001DAE0(v50, v170, v168);
            LOBYTE(v310) = *sub_10025774C();
            v309 = v171;
            sub_100248690();
            v172 = dispatch thunk of SetAlgebra.isSuperset(of:)();
            v303 = v160;
            if (v172)
            {
              v173 = __OFADD__(v302++, 1);
              if (v173)
              {
                goto LABEL_213;
              }
            }

            v174 = v50;
            v175 = *(v167 + 58);
            v50 = sub_100257758();
            LOBYTE(v310) = *v50;
            v309 = v175;
            if ((dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) == 0)
            {
              v176 = v285;
              v177 = v284;
              goto LABEL_143;
            }

            v173 = __OFADD__(v303++, 1);
            v176 = v285;
            v177 = v284;
            if (v173)
            {
              goto LABEL_214;
            }

LABEL_143:
            if (v168 >> 11 == 7)
            {
              sub_100019550(v174, v291, v168);

              v173 = __OFADD__(v300++, 1);
              v161 = v296;
              v160 = v303;
              if (v173)
              {
                goto LABEL_235;
              }
            }

            else if (v168 >> 11 == 6)
            {
              v178 = v291;
              if (v291)
              {
                v50 = v174;
                sub_10001CFE8(v174, v291, v168 & 0xF97F);
                if (sub_100256898(v174, v178))
                {
                  sub_100019550(v174, v178, v168);
                  sub_100019550(v174, v178, v168);

                  v173 = __OFADD__(v298, 1);
                  v298 = (v298 + 1);
                  v161 = v296;
                  v160 = v303;
                  if (v173)
                  {
                    goto LABEL_241;
                  }

                  goto LABEL_118;
                }

                v196 = sub_10025683C(v174, v178);
                v197 = v273;
                v160 = v303;
                if (v196)
                {
                  sub_100019550(v50, v178, v168);
                  sub_100019550(v50, v178, v168);

                  v173 = __OFADD__(v297, 1);
                  v297 = (v297 + 1);
                  v161 = v296;
                  if (v173)
                  {
                    goto LABEL_243;
                  }

                  goto LABEL_118;
                }

                v202 = sub_100028D40();
                (*v290)(v197, v202, v176);
                sub_10001CFE8(v50, v178, v168 & 0xF97F);
                v203 = Logger.logObject.getter();
                v204 = static os_log_type_t.error.getter();
                sub_100019550(v50, v178, v168);
                LODWORD(v277) = v204;
                if (os_log_type_enabled(v203, v204))
                {
                  v205 = swift_slowAlloc();
                  v274 = v203;
                  v206 = v205;
                  v276 = swift_slowAlloc();
                  v310 = v276;
                  *v206 = v279;
                  *(v206 + 4) = sub_10002C9C8(0xD000000000000015, v281 | 0x8000000000000000, &v310);
                  *(v206 + 12) = 2080;
                  v278 = v50;
                  v207 = v160;
                  v208 = sub_10002C9C8(v50, v178, &v310);
                  sub_100019550(v50, v178, v168);
                  *(v206 + 14) = v208;
                  v160 = v207;
                  v209 = v274;
                  _os_log_impl(&_mh_execute_header, v274, v277, "[%s] reportContext - item of type .homePod has unknown model: %s, skipping", v206, 0x16u);
                  v50 = v276;
                  swift_arrayDestroy();

                  sub_100019550(v278, v178, v168);
                }

                else
                {
                  sub_100019550(v50, v178, v168);
                  sub_100019550(v50, v178, v168);
                }

                v119 = (*v282)(v273, v285);
LABEL_196:
                v161 = v296;
              }

              else
              {
                sub_10001CFE8(v174, 0, v168 & 0xF97F);
                v190 = sub_100028D40();
                (*v290)(v177, v190, v176);
                v50 = v176;
                v191 = v177;
                v192 = Logger.logObject.getter();
                v193 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v192, v193))
                {
                  v194 = swift_slowAlloc();
                  v278 = v174;
                  v50 = v194;
                  v195 = swift_slowAlloc();
                  v310 = v195;
                  *v50 = v280;
                  *(v50 + 4) = sub_10002C9C8(0xD000000000000015, v281 | 0x8000000000000000, &v310);
                  _os_log_impl(&_mh_execute_header, v192, v193, "[%s] reportContext - item of type .homePod has no model, skipping", v50, 0xCu);
                  sub_100026A44(v195);
                  v160 = v303;

                  sub_100019550(v278, 0, v168);
                  v119 = (*v282)(v191, v285);
                  goto LABEL_196;
                }

                sub_100019550(v174, 0, v168);

                v119 = (*v282)(v191, v50);
                v161 = v296;
                v160 = v303;
              }
            }

            else
            {
              v188 = *(v167 + 58);
              LOBYTE(v310) = *v50;
              v309 = v188;
              v189 = dispatch thunk of SetAlgebra.isSuperset(of:)();

              v119 = sub_100019550(v174, v291, v168);
              if (v189)
              {
                v173 = __OFADD__(v299, 1);
                v299 = (v299 + 1);
                v161 = v296;
                v160 = v303;
                if (v173)
                {
                  goto LABEL_238;
                }
              }

              else
              {
                v161 = v296 + 1;
                v160 = v303;
                if (__OFADD__(v296, 1))
                {
                  goto LABEL_239;
                }
              }
            }
          }

          else
          {
            if ((v168 >> 11) - 1 < 2)
            {
              if (!v170)
              {
                v173 = __OFADD__(v304++, 1);
                if (v173)
                {
                  goto LABEL_240;
                }

                goto LABEL_118;
              }

              v296 = v161;
              v303 = v160;
              v310 = 44;
              v311 = 0xE100000000000000;
              __chkstk_darwin(v119);
              v269 = &v310;
              sub_10001DAE0(v50, v170, v168);

              sub_10001DAE0(v50, v170, v168);
              v179 = v170;
              v180 = v170;
              v181 = v283;
              v182 = sub_10001B9EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_100248974, (&v270 - 4), v50, v179, v308);
              v283 = v181;
              if (v182[2])
              {
                v291 = v180;
                v278 = v50;
                v50 = v182[4];
                v183 = v182[5];
                v184 = v182[6];
                v185 = v182[7];

                if ((v183 ^ v50) >> 14)
                {
                  v160 = v303;
                  if ((v185 & 0x1000000000000000) != 0)
                  {
                    v50 = sub_10023CFC8(v50, v183, v184, v185, 10);
                    v201 = v210;
                  }

                  else
                  {
                    v186 = v184;
                    if ((v185 & 0x2000000000000000) != 0)
                    {
                      v310 = v184;
                      v311 = v185 & 0xFFFFFFFFFFFFFFLL;
                      v187 = &v310;
                    }

                    else if ((v184 & 0x1000000000000000) != 0)
                    {
                      v187 = ((v185 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    }

                    else
                    {
                      v187 = _StringObject.sharedUTF8.getter();
                      v186 = v184;
                    }

                    v198 = v183;
                    v199 = v283;
                    v50 = sub_10023E7FC(v187, v50, v198, v186, v185, 10);
                    v283 = v199;
                    v309 = v200 & 1;
                    v201 = v200 & 1;
                  }

                  sub_100019550(v278, v291, v168);

                  v161 = v296;
                  if ((v201 & 1) == 0 && v50 == 76)
                  {
                    v173 = __OFADD__(v301++, 1);
                    if (v173)
                    {
                      goto LABEL_242;
                    }

                    goto LABEL_118;
                  }

                  goto LABEL_188;
                }

                sub_100019550(v278, v291, v168);
              }

              else
              {
                sub_100019550(v50, v180, v168);
              }

              v160 = v303;
              v161 = v296;
LABEL_188:
              v173 = __OFADD__(v304++, 1);
              if (v173)
              {
                goto LABEL_237;
              }

              goto LABEL_118;
            }

            if ((v168 >> 11) - 15 >= 2)
            {
              v173 = __OFADD__(v304++, 1);
              if (v173)
              {
                goto LABEL_236;
              }

              goto LABEL_118;
            }

            v173 = __OFADD__(v301++, 1);
            if (v173)
            {
              goto LABEL_215;
            }
          }
        }

        goto LABEL_118;
      }
    }

    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    v306 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (v49 != 1)
    {
      break;
    }

LABEL_109:
    v148 = v306;
LABEL_110:

    v149 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
    swift_beginAccess();
    v150 = v296;
    v151 = v148 + v149;
    v152 = v276;
    v153 = v304;
    (*(v296 + 16))(v276, v151, v304);

    v154 = v277;
    (v282)(v277, v152, v153);
    v155 = v295;
    Date.timeIntervalSince(_:)();
    v121 = v156;
    v157 = *(v150 + 8);
    v50 = v150 + 8;
    v157(v154, v153);
    v119 = (v157)(v155, v153);
    LODWORD(v295) = 0;
    if (v121 <= 0.0)
    {
      v121 = 0.0;
    }
  }

LABEL_218:
  v300 = v50 + 16;
  v298 = (v50 + 8);
  v258 = 1;
  v259 = v304;
  while (2)
  {
    if (v302)
    {
      v148 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v260 = v258 + 1;
      if (__OFADD__(v258, 1))
      {
        break;
      }

      goto LABEL_226;
    }

    if ((v258 & 0x8000000000000000) != 0)
    {
      goto LABEL_232;
    }

    if (v258 >= v299[2])
    {
      goto LABEL_233;
    }

    v148 = v299[v258 + 4];

    v260 = v258 + 1;
    if (!__OFADD__(v258, 1))
    {
LABEL_226:
      v261 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
      swift_beginAccess();
      v262 = *v300;
      v263 = v303;
      (*v300)(v303, v148 + v261, v259);
      v264 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
      v265 = v306;
      swift_beginAccess();
      v266 = v265 + v264;
      v267 = v301;
      v262(v301, v266, v259);
      LOBYTE(v264) = static Date.< infix(_:_:)();
      v268 = *v298;
      (*v298)(v267, v259);
      v268(v263, v259);
      if (v264)
      {

        v306 = v148;
        v258 = v260;
        if (v260 == v49)
        {
          goto LABEL_110;
        }
      }

      else
      {

        ++v258;
        if (v260 == v49)
        {
          goto LABEL_109;
        }
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
}

void sub_100241644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v176 = a2;
  v5 = type metadata accessor for RoutingSessionConfiguration.Surface();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v174 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HostedRoutingSession(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v168 = &v153 - v13;
  v164 = type metadata accessor for HostedRoutingItem(0);
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v165 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v16 = __chkstk_darwin(v15 - 8);
  v173 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v172 = &v153 - v19;
  v20 = __chkstk_darwin(v18);
  v167 = (&v153 - v21);
  v22 = __chkstk_darwin(v20);
  v24 = &v153 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v153 - v26;
  __chkstk_darwin(v25);
  v29 = &v153 - v28;
  v178 = type metadata accessor for Date();
  v179 = *(v178 - 8);
  v30 = __chkstk_darwin(v178);
  v169 = &v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v162 = &v153 - v33;
  v34 = __chkstk_darwin(v32);
  v166 = &v153 - v35;
  v36 = __chkstk_darwin(v34);
  v171 = (&v153 - v37);
  v38 = __chkstk_darwin(v36);
  v177 = &v153 - v39;
  __chkstk_darwin(v38);
  v41 = &v153 - v40;
  swift_beginAccess();
  v42 = a1;
  v43 = *(a1 + 32);
  if (v43)
  {
    v44 = *(v43 + 16) + 1;
    v45 = 32;
    do
    {
      if (!--v44)
      {
        return;
      }

      v46 = *(v43 + v45);
      v45 += 16;
    }

    while (!*(v46 + 16));
    v157 = v6;
    v159 = v5;
    v175 = v42;
    v47 = (v42 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_initialLocalRouteType);
    v48 = *(v42 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_initialLocalRouteType + 16);
    v158 = a3;
    if ((~v48 & 0x6FE) != 0)
    {
      v160 = v9;
      v161 = v41;
      v50 = *v47;
      v49 = v47[1];
      v170 = "timeSinceLastDismissal";
      sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
      v51 = 0;
      v52 = ((v48 >> 8) & 6 | (v48 >> 7) & 1) - 1;
      if (v52 <= 4)
      {
        v51 = qword_100451218[v52];
      }

      sub_10003FE34(v50, v49, v48);
      v53 = v49;
      v54 = v50;
      isa = NSNumber.init(integerLiteral:)(v51).super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v181[0] = &_swiftEmptyDictionarySingleton;
      sub_10023C9CC(isa, 0xD000000000000024, v170 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
      sub_10003FE48(v54, v53, v48);
      v170 = *&v181[0];
      v41 = v161;
      v9 = v160;
    }

    else
    {

      v170 = &_swiftEmptyDictionarySingleton;
    }

    v57 = *(**(v175 + 16) + 128);

    v57(v58);

    v59 = v179;
    v60 = v179 + 48;
    v61 = v178;
    v161 = *(v179 + 48);
    v62 = (v161)(v29, 1, v178);
    v160 = v60;
    if (v62 == 1)
    {
      sub_1000038A4(v29, &qword_1005228D8, &unk_100450060);
      v63 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastTimeDetailedDiscoveryEnabled;
      v64 = v175;
      swift_beginAccess();
      sub_10001D9AC(v64 + v63, v24, &qword_1005228D8, &unk_100450060);
      if ((v161)(v24, 1, v61) == 1)
      {
        sub_1000038A4(v24, &qword_1005228D8, &unk_100450060);
        v65 = v170;
      }

      else
      {
        v77 = v179;
        v78 = v166;
        v156 = *(v179 + 32);
        v156(v166, v24, v61);
        v79 = sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
        v80 = v177;
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v82 = v81;
        v171 = *(v77 + 8);
        v171(v80, v61);
        v155 = v79;
        v83 = NSNumber.init(floatLiteral:)(v82).super.super.isa;
        v84 = v170;
        v85 = swift_isUniquelyReferenced_nonNull_native();
        *&v181[0] = v84;
        sub_10023C9CC(v83, 0xD000000000000014, 0x800000010043D590, v85);
        v86 = *&v181[0];
        type metadata accessor for Preferences.Storage();
        v87 = v167;
        static Preferences.Storage.lastRoutePickerPresentationFinish.getter();
        if ((v161)(v87, 1, v61) == 1)
        {
          v171(v78, v61);
          sub_1000038A4(v87, &qword_1005228D8, &unk_100450060);
          v65 = v86;
        }

        else
        {
          v97 = v86;
          v98 = v162;
          v99 = v87;
          v100 = v61;
          v156(v162, v99, v61);
          v170 = "presentationDuration";
          Date.timeIntervalSince(_:)();
          v102 = NSNumber.init(floatLiteral:)(v101).super.super.isa;
          v103 = swift_isUniquelyReferenced_nonNull_native();
          *&v181[0] = v97;
          sub_10023C9CC(v102, 0xD000000000000016, v170 | 0x8000000000000000, v103);
          v104 = *&v181[0];
          v105 = v171;
          v171(v98, v100);
          v105(v78, v100);
          v65 = v104;
        }
      }
    }

    else
    {
      v66 = *(v59 + 32);
      v155 = v59 + 32;
      v154 = v66;
      v66(v41, v29, v61);
      v166 = "localDevicePlayingWhenPresented";
      v67 = sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
      v68 = *(**(v175 + 16) + 104);

      v162 = v27;
      v70 = v177;
      v68(v69);

      Date.timeIntervalSince(_:)();
      v72 = v71;
      v167 = *(v179 + 8);
      v167(v70, v61);
      v156 = v67;
      v73 = v162;
      v74 = NSNumber.init(floatLiteral:)(v72).super.super.isa;
      v75 = v170;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      *&v181[0] = v75;
      sub_10023C9CC(v74, 0xD000000000000014, v166 | 0x8000000000000000, v76);
      v65 = *&v181[0];
      type metadata accessor for Preferences.Storage();
      static Preferences.Storage.lastRoutePickerPresentationFinish.getter();
      if ((v161)(v73, 1, v61) == 1)
      {
        v167(v41, v61);
        sub_1000038A4(v73, &qword_1005228D8, &unk_100450060);
      }

      else
      {
        v154(v171, v73, v61);
        v170 = "presentationDuration";
        v88 = *(**(v175 + 16) + 104);

        v88(v89);

        Date.timeIntervalSince(_:)();
        v91 = v90;
        v92 = v70;
        v93 = v178;
        v94 = v167;
        v167(v92, v178);
        v95 = NSNumber.init(floatLiteral:)(v91).super.super.isa;
        v96 = swift_isUniquelyReferenced_nonNull_native();
        *&v181[0] = v65;
        sub_10023C9CC(v95, 0xD000000000000016, v170 | 0x8000000000000000, v96);
        v65 = *&v181[0];
        v94(v171, v93);
        v94(v41, v93);
      }
    }

    v106 = sub_10023BD58(v43);

    v170 = v65;
    if (v106 >> 62)
    {
LABEL_34:
      v107 = _CocoaArrayWrapper.endIndex.getter();
      if (v107)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v107 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v107)
      {
LABEL_21:
        v108 = 0;
        do
        {
          if ((v106 & 0xC000000000000001) != 0)
          {
            v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v110 = v108 + 1;
            if (__OFADD__(v108, 1))
            {
LABEL_31:
              __break(1u);
LABEL_32:

              sub_100238E4C(v184);
              v111 = 1;
              goto LABEL_36;
            }
          }

          else
          {
            if (v108 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_34;
            }

            v109 = *(v106 + 8 * v108 + 32);

            v110 = v108 + 1;
            if (__OFADD__(v108, 1))
            {
              goto LABEL_31;
            }
          }

          (*(*v109 + 256))(v181);

          v184[0] = v181[1];
          v184[1] = v181[2];
          v185 = v182;
          v183 = v181[0];
          sub_1001E6204(&v183);
          if (v185 <= 2u || v185 == 6)
          {
            goto LABEL_32;
          }

          sub_100238E4C(v184);
          ++v108;
        }

        while (v110 != v107);
      }
    }

    v111 = 0;
LABEL_36:
    sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
    v112 = NSNumber.init(BOOLeanLiteral:)(v111).super.super.isa;
    v113 = v170;
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v180 = v113;
    sub_10023C9CC(v112, 0x656D726F66726570, 0xED00006B63695064, v114);
    v115 = v180;
    v116 = *(v175 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_localPlayingWhenPresented);
    if (v116 != 2)
    {
      v117 = NSNumber.init(BOOLeanLiteral:)(v116 & 1).super.super.isa;
      v118 = swift_isUniquelyReferenced_nonNull_native();
      v180 = v115;
      sub_10023C9CC(v117, 0xD00000000000001FLL, 0x800000010043D570, v118);
      v115 = v180;
    }

    v119 = sub_100032A00();
    v120 = *(v119 + 16);
    if (v120)
    {
      v121 = 0;
      while (1)
      {
        if (v121 >= *(v119 + 16))
        {
          __break(1u);
          return;
        }

        v122 = sub_100238F04(v119 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v121, v12, type metadata accessor for HostedRoutingSession);
        if (sub_100031908(v122))
        {
          break;
        }

        ++v121;
        sub_10024889C(v12, type metadata accessor for HostedRoutingSession);
        if (v120 == v121)
        {
          goto LABEL_43;
        }
      }

      v142 = v168;
      sub_100238EA0(v12, v168);
      v143 = sub_10003AC60();
      sub_10024889C(v142, type metadata accessor for HostedRoutingSession);
      if (!v143[2])
      {
        goto LABEL_43;
      }

      v144 = v165;
      sub_100238F04(v143 + ((*(v163 + 80) + 32) & ~*(v163 + 80)), v165, type metadata accessor for HostedRoutingItem);

      v145 = v144 + *(v164 + 64);
      v146 = *v145;
      v147 = *(v145 + 8);
      v148 = *(v145 + 16);
      sub_10001DAE0(*v145, v147, v148);
      sub_10024889C(v144, type metadata accessor for HostedRoutingItem);
      v149 = ((v148 >> 8) & 6 | (v148 >> 7) & 1) - 1;
      v123 = v178;
      if (v149 > 4)
      {
        v150 = 0;
      }

      else
      {
        v150 = qword_100451218[v149];
      }

      v151 = NSNumber.init(integerLiteral:)(v150).super.super.isa;
      v152 = swift_isUniquelyReferenced_nonNull_native();
      v180 = v115;
      sub_10023C9CC(v151, 0xD000000000000024, 0x800000010043D4E0, v152);
      sub_100019550(v146, v147, v148);
      v115 = v180;
    }

    else
    {
LABEL_43:

      v123 = v178;
    }

    type metadata accessor for Preferences.Storage();
    v124 = v172;
    static Preferences.Storage.lastItemInteraction.getter();
    if ((v161)(v124, 1, v123) == 1)
    {
      sub_1000038A4(v124, &qword_1005228D8, &unk_100450060);
    }

    else
    {
      v125 = v179;
      v126 = v169;
      (*(v179 + 32))(v169, v124, v123);
      v127 = v177;
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v129 = v128;
      v130 = *(v125 + 8);
      v130(v127, v123);
      v131 = NSNumber.init(floatLiteral:)(v129).super.super.isa;
      v132 = swift_isUniquelyReferenced_nonNull_native();
      v180 = v115;
      sub_10023C9CC(v131, 0xD000000000000011, 0x800000010043D550, v132);
      v115 = v180;
      v130(v126, v123);
    }

    v133 = v159;
    v134 = v157;
    v135 = v174;
    RoutingSessionConfiguration.surface.getter();
    v136 = sub_10023DFFC(v135);
    v138 = v137;
    (*(v134 + 8))(v135, v133);
    if ((v138 & 1) == 0)
    {
      v139 = NSNumber.init(integerLiteral:)(v136).super.super.isa;
      v140 = swift_isUniquelyReferenced_nonNull_native();
      v180 = v115;
      sub_10023C9CC(v139, 0x536C6F72746E6F63, 0xEE00656361667275, v140);
      v115 = v180;
    }

    v141 = v173;
    sub_10023EC68(0xD000000000000035, 0x800000010043D510, v115);

    static Date.now.getter();
    (*(v179 + 56))(v141, 0, 1, v123);
    static Preferences.Storage.lastRoutePickerPresentationFinish.setter();
  }
}

unint64_t sub_100242968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&qword_100523618, &qword_1004511C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000698C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_100242A64(uint64_t a1)
{
  v65 = sub_100242968(&off_1004C52F0);
  sub_1001BC5A8(&qword_100523608, &qword_1004511B8);
  swift_arrayDestroy();
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = a1 + 32;
    v68 = xmmword_10044EC70;
    v66 = a1 + 32;
    v67 = v2;
    do
    {
      v7 = v5 + 24 * v4;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      sub_10001DAE0(*v7, v8, v10);
      v11 = sub_10001D898(v9, v8, v10);
      if ((v13 >> 11) - 8 >= 3)
      {
        sub_1000196F4(v11, v12, v13);
        sub_1001BC5A8(&qword_1005235F0, &unk_100451190);
        result = swift_allocObject();
        v19 = result;
        *(result + 16) = v68;
        *(result + 32) = v9;
        *(result + 40) = v8;
        *(result + 48) = v10;
      }

      else
      {
        v71 = v8;
        v14 = *(v11 + 16);
        v15 = v11;
        v16 = v13;
        v17 = v12;

        sub_1000196F4(v15, v17, v16);
        v18 = *(v14 + 16);
        if (v18)
        {
          LODWORD(v70) = v10;
          v72 = v3;
          v73[0] = _swiftEmptyArrayStorage;
          sub_10023CCB4(0, v18, 0);
          v19 = _swiftEmptyArrayStorage;
          v69 = v14;
          v20 = (v14 + 64);
          do
          {
            v21 = *(v20 - 2);
            v22 = *(v20 - 1);
            v23 = *v20;
            sub_10001DAE0(v21, v22, *v20);
            v73[0] = v19;
            v25 = v19[2];
            v24 = v19[3];
            if (v25 >= v24 >> 1)
            {
              sub_10023CCB4((v24 > 1), v25 + 1, 1);
              v19 = v73[0];
            }

            v20 += 20;
            v19[2] = v25 + 1;
            v26 = &v19[3 * v25];
            v26[4] = v21;
            v26[5] = v22;
            *(v26 + 24) = v23;
            --v18;
          }

          while (v18);

          result = sub_100019550(v9, v71, v70);
          v3 = v72;
          v5 = v66;
          v2 = v67;
        }

        else
        {

          result = sub_100019550(v9, v71, v10);
          v19 = _swiftEmptyArrayStorage;
        }
      }

      v27 = v19[2];
      v28 = v3[2];
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v29 <= v3[3] >> 1)
      {
        if (!v19[2])
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v28 <= v29)
        {
          v30 = v28 + v27;
        }

        else
        {
          v30 = v28;
        }

        result = sub_10023C608(result, v30, 1, v3);
        v3 = result;
        if (!v19[2])
        {
LABEL_3:

          if (v27)
          {
            goto LABEL_58;
          }

          goto LABEL_4;
        }
      }

      if ((v3[3] >> 1) - v3[2] < v27)
      {
        goto LABEL_59;
      }

      swift_arrayInitWithCopy();

      if (v27)
      {
        v31 = v3[2];
        v32 = __OFADD__(v31, v27);
        v33 = v31 + v27;
        if (v32)
        {
          goto LABEL_60;
        }

        v3[2] = v33;
      }

LABEL_4:
      ++v4;
    }

    while (v4 != v2);
  }

  v34 = v3[2];
  result = v65;
  if (v34)
  {
    v62 = 0;
    v63 = 0;
    v66 = 0;
    v67 = v34;
    v35 = 0;
    v36 = 0;
    v37 = (v3 + 6);
    v64 = 1;
    v72 = v3;
    while (1)
    {
      if (v35 >= v3[2])
      {
        __break(1u);
        goto LABEL_57;
      }

      v39 = *(v37 - 2);
      v40 = *(v37 - 1);
      v41 = *v37;
      sub_10001DAE0(v39, v40, v41);
      v42 = sub_10001D898(v39, v40, v41);
      v44 = v43;
      v46 = v45;
      if ((v45 & 0xF000) != 0x3000)
      {
        break;
      }

      if (!v43)
      {
        result = sub_100019550(v39, v40, v41);
        goto LABEL_30;
      }

      v71 = &v62;
      v73[0] = 44;
      v73[1] = 0xE100000000000000;
      v47 = __chkstk_darwin(v42);
      v61[2] = v73;
      v48 = v47;
      sub_10001CFE8(v47, v44, v46);
      v50 = sub_10001B9EC(1, 1, sub_100248588, v61, v48, v44, v49);
      if (v50[2])
      {
        *&v68 = v36;
        v70 = v50[4];
        v71 = v48;
        v69 = v50[6];

        v51 = static String._fromSubstring(_:)();
        v53 = v52;
        v54 = v65;
        if (*(v65 + 16))
        {
          v70 = v51;
          v55 = sub_10000698C(v51, v52);
          if (v56)
          {
            v69 = *(*(v54 + 56) + 8 * v55);
            if (v66)
            {
              result = v71;
              if (v64)
              {
                goto LABEL_61;
              }

              sub_1000196F4(v71, v44, v46);
              sub_100019550(v39, v40, v41);

              v57 = v69;
              if (v63 < v69)
              {

                v3 = v72;
                goto LABEL_47;
              }

              v64 = 0;
LABEL_44:
              v3 = v72;
            }

            else
            {
              sub_1000196F4(v71, v44, v46);
              sub_100019550(v39, v40, v41);

              v3 = v72;
              v57 = v69;
LABEL_47:
              v63 = v57;
              v64 = 0;
              v62 = v70;
              v66 = v53;
            }

            v34 = v67;
            v36 = v68;
            goto LABEL_31;
          }
        }

        sub_100019550(v39, v40, v41);

        result = sub_1000196F4(v71, v44, v46);
        goto LABEL_44;
      }

      sub_100019550(v39, v40, v41);
      result = sub_1000196F4(v48, v44, v46);
      v3 = v72;
      v34 = v67;
LABEL_31:
      ++v35;
      v37 += 12;
      if (v34 == v35)
      {

        if (!v66)
        {
          return 0;
        }

        v58 = sub_10023DDC4(v62, v66);
        v60 = v59;

        if (v60)
        {
          return 0;
        }

        else
        {
          return v58;
        }
      }
    }

    v38 = v42;
    sub_100019550(v39, v40, v41);
    result = sub_1000196F4(v38, v44, v46);
LABEL_30:
    v3 = v72;
    goto LABEL_31;
  }

  return 0;
}

uint64_t sub_1002430A0(uint64_t a1, uint64_t a2)
{
  v265 = a1;
  v272 = type metadata accessor for Logger();
  v276 = *(v272 - 8);
  v3 = __chkstk_darwin(v272);
  v263 = &v239 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v262 = &v239 - v6;
  v7 = __chkstk_darwin(v5);
  v264 = &v239 - v8;
  __chkstk_darwin(v7);
  v268 = &v239 - v9;
  v10 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v10 - 8);
  v12 = &v239 - v11;
  v277 = type metadata accessor for HostedRoutingItem(0);
  v13 = *(v277 - 8);
  v14 = __chkstk_darwin(v277);
  v266 = &v239 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v279 = &v239 - v17;
  __chkstk_darwin(v16);
  v19 = &v239 - v18;
  v20 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  __chkstk_darwin(v20 - 8);
  v22 = &v239 - v21;
  v23 = type metadata accessor for HostedRoutingSession(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v239 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D9AC(a2, v22, &qword_100523620, &unk_1004511D0);
  v27 = *(v24 + 48);
  v261 = v23;
  if (v27(v22, 1, v23) == 1)
  {
    return sub_1000038A4(v22, &qword_100523620, &unk_1004511D0);
  }

  sub_100238EA0(v22, v26);
  v29 = sub_10003AC60();
  v30 = 0;
  v281 = v29[2];
  v31 = v265;
  while (1)
  {
    if (v281 == v30)
    {
      goto LABEL_22;
    }

    if (v30 >= v29[2])
    {
      __break(1u);
LABEL_73:

      v244 = 2;
LABEL_74:
      v44 = v257;
      goto LABEL_82;
    }

    v278 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v32 = *(v13 + 72);
    v280 = v29 + v278;
    sub_100238F04(v29 + v278 + v32 * v30, v19, type metadata accessor for HostedRoutingItem);
    if (sub_100032ED8())
    {
      break;
    }

    ++v30;
    v33 = sub_100258890();
    sub_10024889C(v19, type metadata accessor for HostedRoutingItem);
    if (v33)
    {
      goto LABEL_11;
    }
  }

  sub_10024889C(v19, type metadata accessor for HostedRoutingItem);
LABEL_11:
  swift_beginAccess();
  if (!*(v31 + 32) || (v34 = , v35 = sub_10023BD58(v34), v36 = , (v37 = *(v31 + 32)) == 0) || ((v274 = v32, v257 = v29, __chkstk_darwin(v36), *(&v239 - 2) = v26, *&v291 = v37, , v38 = sub_10023D9D4(sub_1002486E4, (&v239 - 2), v37), v39 = __chkstk_darwin(v38), *(&v239 - 2) = &v291, (v40 & 1) == 0) ? (v294[0] = v39, sub_10024871C(v294, v288), v253 = 0, v247 = *(&v288[0] + 1), v41 = *&v288[0]) : (v253 = 0, v247 = 0, v41 = 0), , !v41))
  {

    goto LABEL_22;
  }

  v43 = sub_100031908(v42);
  v44 = v257;
  if (v43)
  {

    sub_10001D9AC(&v26[*(v261 + 28)], v12, &qword_100523640, qword_100451520);
    v45 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
    if ((*(*(v45 - 8) + 48))(v12, 1, v45) == 1)
    {
      v46 = sub_1000038A4(v12, &qword_100523640, qword_100451520);
      goto LABEL_26;
    }

    v50 = *(v12 + 48);
    v51 = *(v12 + 56);
    v52 = *(v12 + 60);
    sub_100248888(v50, v51, *(v12 + 60));
    sub_10024889C(v12, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    v53 = sub_10025FA74(v50, v51 | (v52 << 32));
    v46 = sub_1002488FC(v50, v51, v52);
    v49 = 3;
    if (v53)
    {
      v49 = 0;
    }
  }

  else
  {
    __chkstk_darwin(v43);
    *(&v239 - 2) = v26;
    v47 = v253;
    v48 = sub_100237E74(sub_10024873C, (&v239 - 2), v35);
    v253 = v47;

    if (v48)
    {

      v49 = 1;
    }

    else
    {
LABEL_26:
      v49 = 5;
    }
  }

  v244 = v49;
  v54 = (*(*v247 + 152))(v46);
  v55 = v54;
  v294[0] = _swiftEmptyArrayStorage;
  if (v54 >> 62)
  {
    goto LABEL_77;
  }

  v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_31:
  v250 = v26;
  if (v56)
  {
    v57 = 0;
    v26 = (v55 & 0xFFFFFFFFFFFFFF8);
    v44 = v288;
    while (1)
    {
      if ((v55 & 0xC000000000000001) != 0)
      {
        v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v59 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          v12 = v294[0];
          v26 = v250;
          v44 = v257;
          goto LABEL_45;
        }
      }

      else
      {
        if (v57 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          v56 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_31;
        }

        v58 = *(v55 + 8 * v57 + 32);

        v59 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_42;
        }
      }

      (*(*v58 + 256))(v288);
      v291 = v288[1];
      v292 = v288[2];
      v293 = v289;
      v290 = v288[0];
      sub_1001E6204(&v290);
      v60 = v293;
      sub_100238E4C(&v291);
      if (v60 >= 3)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v57;
      if (v59 == v56)
      {
        goto LABEL_43;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_45:

  LODWORD(v61) = v12 < 0 || (v12 & 0x4000000000000000) != 0;
  if (v61 != 1)
  {
    if (*(v12 + 16))
    {
      goto LABEL_50;
    }

LABEL_80:
    if (v244 == 1)
    {
      goto LABEL_81;
    }

LABEL_22:

    return sub_10024889C(v26, type metadata accessor for HostedRoutingSession);
  }

LABEL_79:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_80;
  }

LABEL_50:
  if (v244)
  {
LABEL_81:
  }

  else
  {
    if (v61)
    {
      v55 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v55 = *(v12 + 16);
    }

    if (v55)
    {
      v62 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v44 = (v62 + 1);
          if (__OFADD__(v62, 1))
          {
            goto LABEL_76;
          }
        }

        else
        {
          if (v62 >= *(v12 + 16))
          {
            __break(1u);
            goto LABEL_79;
          }

          v61 = *(v12 + 8 * v62 + 32);

          v44 = (v62 + 1);
          if (__OFADD__(v62, 1))
          {
            goto LABEL_76;
          }
        }

        v64 = (*(*v61 + 232))();
        if ((~v66 & 0x6FE) != 0)
        {
          v67 = v64;
          v68 = v65;
          v69 = v66;
          v70 = sub_1002562B4(v64, v65, v66);

          if (v70)
          {

            sub_10003FE48(v67, v68, v69);
            v244 = 5;
            v26 = v250;
            goto LABEL_74;
          }

          if (((v69 >> 8) & 6 | (v69 >> 7) & 1) == 1)
          {
            LODWORD(v61) = v69 & 0xF800;
            sub_10003FE48(v67, v68, v69);
            v26 = v250;
            if (v61 == 2048)
            {
              goto LABEL_73;
            }
          }

          else
          {
            sub_10003FE48(v67, v68, v69);
            v26 = v250;
          }
        }

        else
        {
        }

        ++v62;
        v63 = v44 == v55;
        v44 = v257;
      }

      while (!v63);
    }

    v244 = 0;
  }

LABEL_82:
  v267 = 0;
  v273 = 0;
  v252 = 0;
  v254 = 0;
  p_isa = 0;
  v73 = 0;
  v74 = 0;
  v260 = 0;
  v251 = 0;
  v269 = 0;
  v271 = 0;
  v259 = 0;
  v256 = (v276 + 16);
  v255 = (v276 + 8);
  v248 = &unk_100451130;
  *&v71 = 136315138;
  v243 = v71;
  *&v71 = 136315394;
  v239 = v71;
  while (1)
  {
    if (v74 >= *(v44 + 2))
    {
      goto LABEL_238;
    }

    v276 = v74;
    v12 = v279;
    sub_100238F04(&v280[v74 * v274], v279, type metadata accessor for HostedRoutingItem);
    v75 = v12 + *(v277 + 64);
    v76 = *(v75 + 16);
    v77 = (v76 >> 8) & 6 | (v76 >> 7) & 1;
    if (v77 > 2)
    {
      if ((v77 - 3) < 3)
      {
LABEL_92:
        result = sub_10024889C(v279, type metadata accessor for HostedRoutingItem);
        v84 = __OFADD__(v73++, 1);
        if (v84)
        {
          goto LABEL_239;
        }

        if (__OFADD__(v273, 1))
        {
          goto LABEL_240;
        }

        ++v273;
        p_isa = v73;
        v267 = v73;
        goto LABEL_154;
      }

LABEL_153:
      result = sub_10024889C(v279, type metadata accessor for HostedRoutingItem);
LABEL_154:
      v135 = v276;
      goto LABEL_155;
    }

    if (!v77)
    {
      goto LABEL_92;
    }

    v78 = *v75;
    v79 = *(v75 + 8);
    if (v77 == 1)
    {
      break;
    }

    if ((v76 >> 11) - 1 >= 2)
    {
      if ((v76 >> 11) - 15 >= 2)
      {
        result = sub_10024889C(v279, type metadata accessor for HostedRoutingItem);
        v84 = __OFADD__(v254++, 1);
        if (v84)
        {
          goto LABEL_252;
        }
      }

      else
      {
        result = sub_10024889C(v279, type metadata accessor for HostedRoutingItem);
        v84 = __OFADD__(v252++, 1);
        if (v84)
        {
          goto LABEL_250;
        }
      }

      goto LABEL_154;
    }

    if (!v79)
    {
      result = sub_10024889C(v279, type metadata accessor for HostedRoutingItem);
      v84 = __OFADD__(v254++, 1);
      if (v84)
      {
        goto LABEL_255;
      }

      goto LABEL_154;
    }

    v285 = 44;
    v286 = 0xE100000000000000;
    v123 = __chkstk_darwin(v78);
    *(&v239 - 2) = &v285;
    v125 = v124;
    v126 = v123;
    v128 = v127;
    sub_10001CFE8(v123, v127, v124 & 0xF97F);
    sub_10001CFE8(v126, v128, v125 & 0xF97F);
    v129 = v253;
    v130 = sub_10001B9EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_100248974, (&v239 - 2), v126, v128, &v285);
    v253 = v129;
    if (!v130[2])
    {
      v12 = v130;
      sub_10024889C(v279, type metadata accessor for HostedRoutingItem);
      v140 = v126;
      v141 = v128;
LABEL_167:
      sub_100019550(v140, v141, v125);

      v135 = v276;
LABEL_178:
      v84 = __OFADD__(v254++, 1);
      if (v84)
      {
        goto LABEL_253;
      }

      goto LABEL_155;
    }

    v245 = v128;
    v246 = v126;
    v132 = v130[4];
    v131 = v130[5];
    v133 = v130[6];
    v12 = v130[7];

    if (!((v131 ^ v132) >> 14))
    {
      sub_10024889C(v279, type metadata accessor for HostedRoutingItem);
      v140 = v246;
      v141 = v245;
      goto LABEL_167;
    }

    if ((v12 & 0x1000000000000000) != 0)
    {
      v144 = sub_10023CFC8(v132, v131, v133, v12, 10);
      v146 = v156;
      sub_100019550(v246, v245, v125);
      sub_10024889C(v279, type metadata accessor for HostedRoutingItem);
    }

    else
    {
      if ((v12 & 0x2000000000000000) != 0)
      {
        v285 = v133;
        v286 = v12 & 0xFFFFFFFFFFFFFFLL;
        v134 = &v285;
      }

      else if ((v133 & 0x1000000000000000) != 0)
      {
        v134 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v134 = _StringObject.sharedUTF8.getter();
      }

      v142 = v131;
      v143 = v253;
      v144 = sub_10023E7FC(v134, v132, v142, v133, v12, 10);
      v253 = v143;
      LOBYTE(v282[0]) = v145 & 1;
      v146 = v145 & 1;
      sub_10024889C(v279, type metadata accessor for HostedRoutingItem);
      sub_100019550(v246, v245, v125);
    }

    v135 = v276;
    if ((v146 & 1) != 0 || v144 != 76)
    {
      goto LABEL_178;
    }

    v84 = __OFADD__(v252++, 1);
    if (v84)
    {
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
      __break(1u);
      return result;
    }

LABEL_155:
    v74 = v135 + 1;
    if (v74 == v281)
    {
      v157 = sub_100031908(result);
      if (v157)
      {

        v159 = 1;
        v12 = v265;
        p_isa = _swiftEmptyArrayStorage;
      }

      else
      {
        v160 = *(v44 + 2);
        p_isa = _swiftEmptyArrayStorage;
        if (v160)
        {
          v285 = _swiftEmptyArrayStorage;
          sub_10023CCB4(0, v160, 0);
          v161 = v285;
          v162 = v44 + v278;
          do
          {
            v163 = v266;
            sub_100238F04(v162, v266, type metadata accessor for HostedRoutingItem);
            v164 = v163 + *(v277 + 64);
            v165 = *v164;
            v166 = *(v164 + 8);
            v167 = *(v164 + 16);
            sub_10001DAE0(*v164, v166, v167);
            sub_10024889C(v163, type metadata accessor for HostedRoutingItem);
            v285 = v161;
            v169 = v161[2];
            v168 = v161[3];
            if (v169 >= v168 >> 1)
            {
              sub_10023CCB4((v168 > 1), v169 + 1, 1);
              v161 = v285;
            }

            v161[2] = v169 + 1;
            v170 = &v161[3 * v169];
            v170[4] = v165;
            v170[5] = v166;
            *(v170 + 24) = v167;
            v162 += v274;
            --v160;
          }

          while (v160);

          p_isa = _swiftEmptyArrayStorage;
        }

        else
        {

          v161 = _swiftEmptyArrayStorage;
        }

        v159 = sub_100242A64(v161);

        v12 = v265;
      }

      if (__OFADD__(v254, v252))
      {
        goto LABEL_251;
      }

      v281 = v159;
      if (v254 + v252 <= 0)
      {
        swift_beginAccess();
        v12 = *(v12 + 40);
        v282[0] = _swiftEmptyArrayStorage;
        v172 = 1 << *(v12 + 32);
        v173 = -1;
        if (v172 < 64)
        {
          v173 = ~(-1 << v172);
        }

        v174 = v173 & *(v12 + 64);
        v175 = (v172 + 63) >> 6;

        v176 = 0;
        if (v174)
        {
          while (1)
          {
            v177 = v176;
LABEL_220:
            v178 = __clz(__rbit64(v174));
            v174 &= v174 - 1;
            v179 = *(*(*(v12 + 56) + ((v177 << 9) | (8 * v178))) + 58);

            v284 = *sub_100257758();
            v283 = v179;
            sub_100248690();
            if (dispatch thunk of SetAlgebra.isSuperset(of:)())
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v176 = v177;
              if (!v174)
              {
                break;
              }
            }

            else
            {

              v176 = v177;
              if (!v174)
              {
                break;
              }
            }
          }
        }

        while (1)
        {
          v177 = v176 + 1;
          if (__OFADD__(v176, 1))
          {
            goto LABEL_242;
          }

          if (v177 >= v175)
          {

            v12 = v282[0];
            if (v282[0] < 0 || (v282[0] & 0x4000000000000000) != 0)
            {
              goto LABEL_258;
            }

            v180 = *(v282[0] + 16);
            v26 = v250;
            if (!v180)
            {
              goto LABEL_259;
            }

            goto LABEL_228;
          }

          v174 = *(v12 + 64 + 8 * v177);
          ++v176;
          if (v174)
          {
            goto LABEL_220;
          }
        }
      }

      v171 = 1;
      goto LABEL_261;
    }
  }

  v80 = v76 >> 11;
  if ((v76 >> 11) - 8 >= 3)
  {
    v267 = (p_isa + 1);
    v117 = v263;
    v118 = v262;
    if (__OFADD__(p_isa, 1))
    {
      goto LABEL_249;
    }

    v119 = v272;
    if (v80 == 7)
    {
      result = sub_10024889C(v279, type metadata accessor for HostedRoutingItem);
      v84 = __OFADD__(v271++, 1);
      if (v84)
      {
        goto LABEL_254;
      }
    }

    else
    {
      if (v80 != 6)
      {
        v136 = v279;
        v137 = *(v279 + *(v277 + 44));
        p_isa = v76;
        v138 = v78;
        v139 = v79;
        sub_10001CFE8(v78, v79, v76 & 0xF97F);
        LOBYTE(v285) = *sub_100257758();
        LOBYTE(v282[0]) = v137;
        sub_100248690();
        v12 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        sub_10024889C(v136, type metadata accessor for HostedRoutingItem);
        result = sub_100019550(v138, v139, p_isa);
        if (v12)
        {
          v84 = __OFADD__(v260++, 1);
          v73 = v267;
          v135 = v276;
          if (v84)
          {
            goto LABEL_256;
          }
        }

        else
        {
          v84 = __OFADD__(v259++, 1);
          v73 = v267;
          v135 = v276;
          if (v84)
          {
            goto LABEL_257;
          }
        }

LABEL_195:
        p_isa = v73;
        goto LABEL_155;
      }

      if (!v79)
      {
        v147 = v76;
        v148 = v78;
        sub_10001CFE8(v78, 0, v76 & 0xF97F);
        v149 = sub_100028D40();
        (*v256)(v118, v149, v119);
        v12 = Logger.logObject.getter();
        v150 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v12, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v285 = v152;
          *v151 = v243;
          *(v151 + 4) = sub_10002C9C8(0xD000000000000015, v248 | 0x8000000000000000, &v285);
          _os_log_impl(&_mh_execute_header, v12, v150, "[%s] reportGroupCreation - item of type .homePod has no model, reporting as normal HomePod", v151, 0xCu);
          sub_100026A44(v152);

          (*v255)(v118, v272);
        }

        else
        {

          (*v255)(v118, v119);
        }

        sub_10024889C(v279, type metadata accessor for HostedRoutingItem);
        result = sub_100019550(v148, 0, v147);
        v84 = __OFADD__(v269++, 1);
        v73 = v267;
        v135 = v276;
        if (v84)
        {
          goto LABEL_271;
        }

        goto LABEL_195;
      }

      v120 = v76;
      v121 = v78;
      v122 = v79;
      sub_10001CFE8(v78, v79, v76 & 0xF97F);
      if (sub_100256898(v121, v122))
      {
        sub_10024889C(v279, type metadata accessor for HostedRoutingItem);
        result = sub_100019550(v121, v122, v120);
        v84 = __OFADD__(v269++, 1);
        if (v84)
        {
          goto LABEL_272;
        }
      }

      else
      {
        if (!sub_10025683C(v121, v122))
        {
          v153 = sub_100028D40();
          (*v256)(v117, v153, v119);
          sub_10001CFE8(v121, v122, v120 & 0xF97F);
          v12 = Logger.logObject.getter();
          v154 = static os_log_type_t.error.getter();
          sub_100019550(v121, v122, v120);
          if (os_log_type_enabled(v12, v154))
          {
            v155 = swift_slowAlloc();
            v285 = swift_slowAlloc();
            *v155 = v239;
            *(v155 + 4) = sub_10002C9C8(0xD000000000000015, v248 | 0x8000000000000000, &v285);
            *(v155 + 12) = 2080;
            *(v155 + 14) = sub_10002C9C8(v121, v122, &v285);
            _os_log_impl(&_mh_execute_header, v12, v154, "[%s] reportGroupCreation - item of type .homePod has unknown model: %s, reporting as normal HomePod", v155, 0x16u);
            swift_arrayDestroy();

            (*v255)(v117, v272);
          }

          else
          {

            (*v255)(v117, v119);
          }

          sub_10024889C(v279, type metadata accessor for HostedRoutingItem);
          result = sub_100019550(v121, v122, v120);
          v84 = __OFADD__(v269++, 1);
          v73 = v267;
          v135 = v276;
          if (v84)
          {
            goto LABEL_275;
          }

          goto LABEL_195;
        }

        sub_10024889C(v279, type metadata accessor for HostedRoutingItem);
        result = sub_100019550(v121, v122, v120);
        v84 = __OFADD__(v251++, 1);
        if (v84)
        {
          goto LABEL_274;
        }
      }
    }

    v73 = v267;
    p_isa = v267;
    goto LABEL_154;
  }

  v81 = *(v78 + 16);
  v82 = *(v81 + 16);
  if (!v82)
  {
    v73 = p_isa;
LABEL_152:
    v44 = v257;
    goto LABEL_153;
  }

  v246 = *v75;
  v245 = v79;
  v241 = v76;
  sub_10001DAE0(v78, v79, v76);
  v267 = (v82 + p_isa);

  p_isa = (p_isa - 0x7FFFFFFFFFFFFFFFLL);
  v83 = (v81 + 64);
  v275 = v81;
  while (1)
  {
    v87 = *(v83 - 3);
    v88 = *(v83 - 2);
    v12 = *(v83 - 1);
    v89 = *v83;
    v294[0] = *(v83 - 4);
    v294[1] = v87;
    v294[2] = v88;
    v294[3] = v12;
    v295 = v89;
    if (!p_isa)
    {
      break;
    }

    sub_10001DAE0(v88, v12, v89);
    v90 = sub_10025692C();
    v93 = v90;
    v94 = v91;
    v95 = v92;
    v96 = v92 >> 11;
    if (v96 == 7)
    {

      sub_100019550(v88, v12, v89);
      sub_1000196F4(v93, v94, v95);
      v97 = v271 + 1;
      if (__OFADD__(v271, 1))
      {
        goto LABEL_241;
      }

      v98 = &v292;
    }

    else
    {
      if (v96 != 6)
      {
        v270 = p_isa;
        p_isa = v82;
        v99 = v92;
        v100 = v90;
        v101 = *(v279 + *(v277 + 44));
        LOBYTE(v285) = *sub_100257758();
        LOBYTE(v282[0]) = v101;
        sub_100248690();
        v102 = dispatch thunk of SetAlgebra.isSuperset(of:)();

        sub_100019550(v88, v12, v89);
        sub_1000196F4(v100, v94, v99);
        if (v102)
        {
          v85 = v260 + 1;
          if (__OFADD__(v260, 1))
          {
            goto LABEL_244;
          }

          v82 = p_isa;
          v86 = v288;
        }

        else
        {
          v85 = v259 + 1;
          if (__OFADD__(v259, 1))
          {
            goto LABEL_243;
          }

          v82 = p_isa;
          v86 = &v287;
        }

        *(v86 - 32) = v85;
        p_isa = &v270->isa;
        goto LABEL_98;
      }

      if (!v91)
      {
        v258 = v90;
        v103 = sub_100028D40();
        (*v256)(v268, v103, v272);
        v104 = Logger.logObject.getter();
        v105 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v270 = v104;
          v107 = v106;
          v249 = swift_slowAlloc();
          v285 = v249;
          *v107 = v243;
          *(v107 + 4) = sub_10002C9C8(0xD000000000000015, v248 | 0x8000000000000000, &v285);
          _os_log_impl(&_mh_execute_header, v270, v105, "[%s] reportGroupCreation - item of type .homePod has no model, reporting as normal HomePod", v107, 0xCu);
          sub_100026A44(v249);

          sub_100019550(v88, v12, v89);
        }

        else
        {

          sub_100019550(v88, v12, v89);
        }

        sub_1000196F4(v258, 0, v95);
        (*v255)(v268, v272);
        if (__OFADD__(v269, 1))
        {
          goto LABEL_245;
        }

        ++v269;
        goto LABEL_98;
      }

      if (!sub_100256898(v90, v91))
      {
        if (sub_10025683C(v93, v94))
        {

          sub_100019550(v88, v12, v89);
          sub_1000196F4(v93, v94, v95);
          v84 = __OFADD__(v251++, 1);
          if (v84)
          {
            goto LABEL_248;
          }
        }

        else
        {
          v249 = v82;
          v108 = sub_100028D40();
          (*v256)(v264, v108, v272);

          LODWORD(v270) = v95;
          v109 = Logger.logObject.getter();
          v110 = static os_log_type_t.error.getter();
          sub_1000196F4(v93, v94, v270);
          v242 = v110;
          v111 = v110;
          v112 = v109;
          if (os_log_type_enabled(v109, v111))
          {
            v113 = swift_slowAlloc();
            v114 = v93;
            v258 = v93;
            v115 = v113;
            v240 = swift_slowAlloc();
            v285 = v240;
            *v115 = v239;
            *(v115 + 4) = sub_10002C9C8(0xD000000000000015, v248 | 0x8000000000000000, &v285);
            *(v115 + 12) = 2080;
            *(v115 + 14) = sub_10002C9C8(v114, v94, &v285);
            _os_log_impl(&_mh_execute_header, v112, v242, "[%s] reportGroupCreation - item of type .homePod has unknown model: %s, reporting as normal HomePod", v115, 0x16u);
            swift_arrayDestroy();

            sub_100019550(v88, v12, v89);

            v116 = v258;
          }

          else
          {

            sub_100019550(v88, v12, v89);

            v116 = v93;
          }

          sub_1000196F4(v116, v94, v270);
          (*v255)(v264, v272);
          v82 = v249;
          v84 = __OFADD__(v269++, 1);
          if (v84)
          {
            goto LABEL_247;
          }
        }

        goto LABEL_98;
      }

      sub_100019550(v88, v12, v89);
      sub_1000196F4(v93, v94, v95);
      v97 = v269 + 1;
      if (__OFADD__(v269, 1))
      {
        goto LABEL_246;
      }

      v98 = &v291;
    }

    *(v98 - 32) = v97;
LABEL_98:
    v83 += 20;
    p_isa = (p_isa + 1);
    v82 = (v82 - 1);
    if (!v82)
    {

      sub_100019550(v246, v245, v241);
      v73 = v267;
      p_isa = v267;
      v26 = v250;
      goto LABEL_152;
    }
  }

  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  v180 = _CocoaArrayWrapper.endIndex.getter();
  v26 = v250;
  if (!v180)
  {
LABEL_259:

    v182 = _swiftEmptyArrayStorage;
    goto LABEL_260;
  }

LABEL_228:
  v282[0] = p_isa;
  result = sub_10023CCB4(0, v180 & ~(v180 >> 63), 0);
  if (v180 < 0)
  {
    goto LABEL_273;
  }

  v181 = 0;
  v182 = v282[0];
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v183 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v183 = *(v12 + 8 * v181 + 32);
    }

    v184 = *(v183 + 40);
    v185 = *(v183 + 48);
    v186 = *(v183 + 56);
    sub_10001DAE0(v184, v185, v186);

    v282[0] = v182;
    v188 = v182[2];
    v187 = v182[3];
    if (v188 >= v187 >> 1)
    {
      sub_10023CCB4((v187 > 1), v188 + 1, 1);
      v182 = v282[0];
    }

    ++v181;
    v182[2] = v188 + 1;
    v189 = &v182[3 * v188];
    v189[4] = v184;
    v189[5] = v185;
    *(v189 + 24) = v186;
  }

  while (v180 != v181);

  v26 = v250;
LABEL_260:
  v171 = sub_100242A64(v182);

LABEL_261:
  v190 = sub_100031908(v158);
  if (v190)
  {
    v191 = 1;
  }

  else
  {
    v191 = 0;
    v192 = &v26[*(v261 + 64)];
    if (*(v192 + 1))
    {
      v193 = *(v192 + 8);
      if (v193)
      {
        v194 = *(v192 + 7);
        v282[0] = 44;
        v282[1] = 0xE100000000000000;
        __chkstk_darwin(v190);
        *(&v239 - 2) = v282;

        if (sub_10001B9EC(1, 1, sub_100248974, (&v239 - 2), v194, v193, &v285)[2])
        {

          v195 = static String._fromSubstring(_:)();
          v197 = v196;

          v198 = sub_10023DDC4(v195, v197);
          v200 = v199;

          if (v200)
          {
            v191 = 0;
          }

          else
          {
            v191 = v198;
          }
        }

        else
        {

          v191 = 0;
        }
      }
    }
  }

  sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(v244).super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v282[0] = &_swiftEmptyDictionarySingleton;
  sub_10023C9CC(isa, 0x5366666F646E6168, 0xEC00000065746174, isUniquelyReferenced_nonNull_native);
  v203 = v282[0];
  v204 = NSNumber.init(integerLiteral:)(v259).super.super.isa;
  v205 = swift_isUniquelyReferenced_nonNull_native();
  v282[0] = v203;
  sub_10023C9CC(v204, 0xD000000000000013, 0x800000010043D3D0, v205);
  v206 = v282[0];
  v207 = NSNumber.init(integerLiteral:)(v252).super.super.isa;
  v208 = swift_isUniquelyReferenced_nonNull_native();
  v282[0] = v206;
  sub_10023C9CC(v207, 0xD000000000000013, 0x800000010043D3F0, v208);
  v209 = v282[0];
  v210 = NSNumber.init(integerLiteral:)(v271).super.super.isa;
  v211 = swift_isUniquelyReferenced_nonNull_native();
  v282[0] = v209;
  sub_10023C9CC(v210, 0x746E756F43767461, 0xE800000000000000, v211);
  v212 = v282[0];
  v213 = NSNumber.init(integerLiteral:)(v254).super.super.isa;
  v214 = swift_isUniquelyReferenced_nonNull_native();
  v282[0] = v212;
  sub_10023C9CC(v213, 0x746F6F7465756C62, 0xEE00746E756F4368, v214);
  v215 = v282[0];
  v216 = NSNumber.init(integerLiteral:)(v269).super.super.isa;
  v217 = swift_isUniquelyReferenced_nonNull_native();
  v282[0] = v215;
  sub_10023C9CC(v216, 0x43646F50656D6F68, 0xEC000000746E756FLL, v217);
  v218 = v282[0];
  v219 = NSNumber.init(integerLiteral:)(v251).super.super.isa;
  v220 = swift_isUniquelyReferenced_nonNull_native();
  v282[0] = v218;
  sub_10023C9CC(v219, 0xD000000000000010, 0x800000010043D410, v220);
  v221 = v282[0];
  v222 = NSNumber.init(integerLiteral:)(v273).super.super.isa;
  v223 = swift_isUniquelyReferenced_nonNull_native();
  v282[0] = v221;
  sub_10023C9CC(v222, 0x756F43726568746FLL, 0xEA0000000000746ELL, v223);
  v224 = v282[0];
  v225 = NSNumber.init(integerLiteral:)(v260).super.super.isa;
  v226 = swift_isUniquelyReferenced_nonNull_native();
  v282[0] = v224;
  sub_10023C9CC(v225, 0xD000000000000015, 0x800000010043D430, v226);
  v227 = v282[0];
  v228 = NSNumber.init(integerLiteral:)(v267).super.super.isa;
  v229 = swift_isUniquelyReferenced_nonNull_native();
  v282[0] = v227;
  sub_10023C9CC(v228, 0xD000000000000010, 0x800000010043D450, v229);
  v230 = v282[0];
  v231 = NSNumber.init(integerLiteral:)(v281).super.super.isa;
  v232 = swift_isUniquelyReferenced_nonNull_native();
  v282[0] = v230;
  sub_10023C9CC(v231, 0xD000000000000019, 0x800000010043D470, v232);
  v233 = v282[0];
  v234 = NSNumber.init(integerLiteral:)(v171).super.super.isa;
  v235 = swift_isUniquelyReferenced_nonNull_native();
  v282[0] = v233;
  sub_10023C9CC(v234, 0xD000000000000012, 0x800000010043D490, v235);
  v236 = v282[0];
  v237 = NSNumber.init(integerLiteral:)(v191).super.super.isa;
  v238 = swift_isUniquelyReferenced_nonNull_native();
  v282[0] = v236;
  sub_10023C9CC(v237, 0x4D7972616D697270, 0xEC0000006C65646FLL, v238);
  sub_10023EC68(0xD00000000000002BLL, 0x800000010043D4B0, v282[0]);

  return sub_10024889C(v26, type metadata accessor for HostedRoutingSession);
}

void sub_100245858(uint64_t a1, uint64_t a2)
{
  v114 = a2;
  v107 = type metadata accessor for HostedRoutingItem(0);
  v113 = *(v107 - 8);
  v3 = __chkstk_darwin(v107);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = (&v97 - v6);
  v8 = type metadata accessor for HostedRoutingSession(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v97 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v97 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = (&v97 - v20);
  v22 = __chkstk_darwin(v19);
  v112 = &v97 - v23;
  v24 = __chkstk_darwin(v22);
  v111 = &v97 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v97 - v27;
  v29 = (*(*a1 + 232))(v26);
  if ((~v31 & 0x6FE) != 0)
  {
    v32 = v31;
    v105 = v29;
    v106 = v30;
    (*(*a1 + 256))(&v117);
    v104 = v118;
    v110 = v119;
    v108 = v120;
    v109 = v121;
    v33 = v122;
    v123 = v117;
    sub_1001E6204(&v123);
    v103 = v28;
    if (v33 <= 1)
    {
      if (v33)
      {
        v36 = v104;
        v34 = v109;
        v35 = v108;
        v102 = v32;
        v98 = v5;
        v41 = v110;
        v99 = v109;
        v101 = v104;
        v100 = v110;
        v38 = v108;
        v40 = v109;
LABEL_9:
        v42 = v34;
        v43 = v35;
LABEL_11:

        sub_1002485A4(v36, v41, v43, v42, v33);
        v44 = sub_100032A00();
        v45 = *(v44 + 16);
        v46 = v101;
        v47 = v100;
        if (!v45)
        {
LABEL_20:
          sub_10003FE48(v105, v106, v102);

          return;
        }

        v48 = 0;
        while (v48 < *(v44 + 16))
        {
          sub_100238F04(v44 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v48, v21, type metadata accessor for HostedRoutingSession);
          v49 = *v21 == v38 && v21[1] == v40;
          if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v50 = v112;
            sub_100238EA0(v21, v112);
            v51 = v50;
            v52 = v111;
            sub_100238EA0(v51, v111);
            sub_100238EA0(v52, v103);
            v5 = v98;
            goto LABEL_22;
          }

          ++v48;
          sub_10024889C(v21, type metadata accessor for HostedRoutingSession);
          if (v45 == v48)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }
    }

    else if (v33 != 2)
    {
      v34 = v109;
      v35 = v108;
      if (v33 == 5)
      {
        v102 = v32;

        v60 = sub_100032A00();
        v61 = *(v60 + 16);
        if (!v61)
        {
LABEL_37:
          sub_10003FE48(v105, v106, v102);
          v64 = v104;
          v65 = v110;
          v66 = v108;
          v67 = v109;
          sub_1002485A4(v104, v110, v108, v109, 5u);

          sub_1002485A4(v64, v65, v66, v67, 5u);
          return;
        }

        v62 = 0;
        while (v62 < *(v60 + 16))
        {
          v63 = sub_100238F04(v60 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v62, v12, type metadata accessor for HostedRoutingSession);
          if (sub_100031908(v63))
          {

            sub_100238EA0(v12, v15);
            sub_100238EA0(v15, v18);
            sub_100238EA0(v18, v103);
            v46 = v104;
            v47 = v110;
            sub_1002485A4(v104, v110, v108, v109, 5u);
LABEL_22:
            v53 = sub_100261164();
            v54 = *(v53 + 16);
            v55 = v113;
            if (!v54)
            {
LABEL_31:

              sub_10003FE48(v105, v106, v102);

LABEL_44:
              sub_10024889C(v103, type metadata accessor for HostedRoutingSession);
              return;
            }

            v56 = 0;
            while (v56 < *(v53 + 16))
            {
              v57 = v53 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v56;
              sub_100238F04(v57, v7, type metadata accessor for HostedRoutingItem);
              if (*v7 == v46 && v7[1] == v47)
              {
                sub_10024889C(v7, type metadata accessor for HostedRoutingItem);
LABEL_40:

                sub_100238F04(v57, v5, type metadata accessor for HostedRoutingItem);

                v68 = *(*(v103 + 2) + 16);
                sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
                isa = NSNumber.init(BOOLeanLiteral:)(v56 >= v68).super.super.isa;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v116 = &_swiftEmptyDictionarySingleton;
                sub_10023C9CC(isa, 0x65746C6946736177, 0xEB00000000646572, isUniquelyReferenced_nonNull_native);
                v71 = v116;
                v72 = v102;
                v73 = v103;
                v75 = sub_100031908(v74);
                v76 = NSNumber.init(BOOLeanLiteral:)(v75 & 1).super.super.isa;
                v77 = swift_isUniquelyReferenced_nonNull_native();
                v116 = v71;
                sub_10023C9CC(v76, 0x536C61636F4C7369, 0xEE006E6F69737365, v77);
                v78 = v116;
                sub_1001BC5A8(&qword_1005235F0, &unk_100451190);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_10044EC70;
                v80 = v105;
                *(inited + 32) = v105;
                v81 = v106;
                *(inited + 40) = v106;
                *(inited + 48) = v72;
                v82 = v72;
                sub_10003FE34(v80, v81, v72);
                v83 = sub_100242A64(inited);
                swift_setDeallocating();
                sub_1002484D8(inited + 32);
                v84 = NSNumber.init(integerLiteral:)(v83).super.super.isa;
                v85 = swift_isUniquelyReferenced_nonNull_native();
                v116 = v78;
                sub_10023C9CC(v84, 0xD000000000000010, 0x800000010043D240, v85);
                v86 = v116;
                v87 = NSNumber.init(integerLiteral:)(v56).super.super.isa;
                v88 = swift_isUniquelyReferenced_nonNull_native();
                v116 = v86;
                sub_10023C9CC(v87, 0xD000000000000010, 0x800000010043D360, v88);
                v89 = v116;
                v90 = NSNumber.init(BOOLeanLiteral:)(*(*(v73 + 24) + 16) != 0).super.super.isa;
                v91 = swift_isUniquelyReferenced_nonNull_native();
                v116 = v89;
                sub_10023C9CC(v90, 0x4D776F6853646168, 0xEB0000000065726FLL, v91);
                v92 = v116;
                v93 = v5[*(v107 + 44)];
                LOBYTE(v116) = *sub_10025774C();
                v115 = v93;
                sub_100248690();
                if (dispatch thunk of SetAlgebra.isSuperset(of:)())
                {
                  v94 = 1;
                }

                else
                {
                  LOBYTE(v116) = *sub_100257758();
                  v115 = v93;
                  v94 = dispatch thunk of SetAlgebra.isSuperset(of:)();
                }

                v95 = NSNumber.init(BOOLeanLiteral:)(v94 & 1).super.super.isa;
                v96 = swift_isUniquelyReferenced_nonNull_native();
                v116 = v92;
                sub_10023C9CC(v95, 0xD000000000000013, 0x800000010043D380, v96);
                sub_10023EC68(0xD00000000000002ALL, 0x800000010043D3A0, v116);

                sub_10003FE48(v105, v106, v82);
                sub_10024889C(v5, type metadata accessor for HostedRoutingItem);
                goto LABEL_44;
              }

              v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_10024889C(v7, type metadata accessor for HostedRoutingItem);
              if (v59)
              {
                goto LABEL_40;
              }

              if (v54 == ++v56)
              {
                goto LABEL_31;
              }
            }

            goto LABEL_48;
          }

          ++v62;
          sub_10024889C(v12, type metadata accessor for HostedRoutingSession);
          if (v61 == v62)
          {
            goto LABEL_37;
          }
        }

        goto LABEL_49;
      }

      v36 = v104;
      if (v33 != 6)
      {
        sub_1002485A4(v104, v110, v108, v109, v33);
        sub_10003FE48(v105, v106, v32);
        return;
      }

      v102 = v32;
      v98 = v5;
      v38 = v104[2];
      v37 = v104[3];
      v39 = v104[5];
      v101 = v104[4];
      v99 = v39;
      v100 = v39;
      v40 = v37;
      v41 = v110;
      goto LABEL_9;
    }

    v102 = v32;
    v98 = v5;
    v41 = v110;
    v42 = v109;
    v99 = v109;
    v36 = v104;
    v101 = v104;
    v100 = v110;
    v43 = v108;
    v38 = v108;
    v40 = v109;
    goto LABEL_11;
  }
}

Swift::Int sub_100246450(char *a1, uint64_t a2, uint64_t a3)
{
  v190 = a3;
  v187 = a2;
  v181 = type metadata accessor for RoutingDecisionEngine.Decision.Element(0);
  __chkstk_darwin(v181);
  v182 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v6 = __chkstk_darwin(v5 - 8);
  v177 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v180 = &v175 - v8;
  v186 = type metadata accessor for Date();
  v185 = *(v186 - 8);
  v9 = __chkstk_darwin(v186);
  v179 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v195 = &v175 - v12;
  __chkstk_darwin(v11);
  v184 = &v175 - v13;
  v14 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v15 = __chkstk_darwin(v14 - 8);
  v178 = &v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v183 = &v175 - v17;
  v191 = type metadata accessor for HostedRoutingSession(0);
  v196 = *(v191 - 8);
  v18 = __chkstk_darwin(v191);
  v20 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v175 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v175 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v175 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v175 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v175 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v175 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v175 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v175 - v43;
  v45 = (*(*a1 + 208))(v42);
  if (!v45)
  {
    v193 = v41;
    v194 = v26;
    v192 = v35;
    v189 = v23;
    v188 = v20;
    v176 = v32;
    (*(*a1 + 256))(v200);
    v203[0] = v200[1];
    v203[1] = v200[2];
    v204 = v201;
    v202 = v200[0];
    sub_1001E6204(&v202);
    if (v204 - 4 < 2)
    {
      v189 = a1;
      sub_100238E4C(v203);
      result = sub_100032A00();
      v50 = result;
      v51 = v196;
      v194 = *(result + 16);
      if (v194)
      {
        v52 = 0;
        v53 = _swiftEmptyArrayStorage;
        v54 = v193;
        while (v52 < *(v50 + 16))
        {
          v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
          v56 = *(v51 + 72);
          v57 = sub_100238F04(v50 + v55 + v56 * v52, v44, type metadata accessor for HostedRoutingSession);
          if (sub_100031908(v57))
          {
            result = sub_10024889C(v44, type metadata accessor for HostedRoutingSession);
          }

          else
          {
            sub_100238EA0(v44, v54);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v199 = v53;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1000326B8(0, v53[2] + 1, 1);
              v53 = v199;
            }

            v60 = v53[2];
            v59 = v53[3];
            if (v60 >= v59 >> 1)
            {
              sub_1000326B8((v59 > 1), v60 + 1, 1);
              v53 = v199;
            }

            v53[2] = v60 + 1;
            v54 = v193;
            result = sub_100238EA0(v193, v53 + v55 + v60 * v56);
            v51 = v196;
          }

          if (v194 == ++v52)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
      }

      else
      {
        v53 = _swiftEmptyArrayStorage;
LABEL_30:

        v74 = sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
        v75 = v53[2];

        v194 = v74;
        isa = NSNumber.init(integerLiteral:)(v75).super.super.isa;
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v199 = &_swiftEmptyDictionarySingleton;
        sub_10023C9CC(isa, 0xD000000000000012, 0x800000010043D2D0, v77);
        v193 = v199;
        result = type metadata accessor for HostedRoutingSessionSnapshot(0);
        v78 = *(v190 + *(result + 20));
        v79 = *(v78 + 16);
        if (!v79)
        {
          v81 = _swiftEmptyArrayStorage;
          v84 = v195;
          v82 = v196;
LABEL_42:
          v91 = v81[2];

          v92 = v183;
          sub_10001D9AC(v190, v183, &qword_100523620, &unk_1004511D0);
          v93 = (*(v82 + 48))(v92, 1, v191);
          if (v93 == 1)
          {
            sub_1000038A4(v92, &qword_100523620, &unk_1004511D0);
            v94 = 0;
          }

          else
          {
            v95 = sub_100031908(v93);
            sub_10024889C(v92, type metadata accessor for HostedRoutingSession);
            v94 = (v95 & 1) == 0;
          }

          v96 = v187;
          v97 = v184;
          result = v91 + v94;
          if (!__OFADD__(v91, v94))
          {
            v98 = NSNumber.init(integerLiteral:)(result).super.super.isa;
            v99 = v193;
            v100 = swift_isUniquelyReferenced_nonNull_native();
            v199 = v99;
            sub_10023C9CC(v98, 0xD000000000000018, 0x800000010043D2F0, v100);
            v101 = v199;
            v102 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_timeFirstCurrentRemoteSessionAvailable;
            swift_beginAccess();
            v103 = v96 + v102;
            v104 = v180;
            sub_10001D9AC(v103, v180, &qword_1005228D8, &unk_100450060);
            v105 = v185;
            v106 = v186;
            if ((*(v185 + 48))(v104, 1, v186) == 1)
            {
              sub_1000038A4(v104, &qword_1005228D8, &unk_100450060);
              v107 = NSNumber.init(integerLiteral:)(0).super.super.isa;
              v108 = swift_isUniquelyReferenced_nonNull_native();
              v197[0] = v101;
              sub_10023C9CC(v107, 0xD000000000000018, 0x800000010043D340, v108);
              v110 = v197[0];
            }

            else
            {
              (*(v105 + 32))(v97, v104, v106);
              v111 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastInstanceOfNoRemoteSessionAvailable;
              swift_beginAccess();
              (*(v105 + 16))(v84, v96 + v111, v106);
              Date.timeIntervalSince(_:)();
              v113 = v112;
              v114 = *(v105 + 8);
              v114(v84, v106);
              v115 = NSNumber.init(floatLiteral:)(v113).super.super.isa;
              v116 = swift_isUniquelyReferenced_nonNull_native();
              v198 = v101;
              sub_10023C9CC(v115, 0xD000000000000018, 0x800000010043D340, v116);
              v110 = v198;
              v109 = (v114)(v97, v106);
            }

            v117 = v182;
            (*(**&v189[OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_decision] + 96))(v109);
            result = swift_getEnumCaseMultiPayload();
            if (result > 1)
            {
              if (result != 2)
              {
LABEL_93:
                __break(1u);
                return result;
              }

              v122 = *(sub_1001BC5A8(&qword_100523628, &unk_100457B90) + 48);
              v123 = NSNumber.init(integerLiteral:)(2).super.super.isa;
              v124 = swift_isUniquelyReferenced_nonNull_native();
              v198 = v110;
              sub_10023C9CC(v123, 0x7954686374697773, 0xEA00000000006570, v124);
              v120 = v198;
              sub_10024889C(v117 + v122, type metadata accessor for HostedRoutingItem);
              v125 = type metadata accessor for RoutingItem.Action.Kind();
              (*(*(v125 - 8) + 8))(v117, v125);
            }

            else
            {
              if (result)
              {
                v126 = v117;
                v117 = v176;
                v127 = sub_100238EA0(v126, v176);
                if (sub_100031908(v127))
                {
                  v128 = 4;
                }

                else
                {
                  v128 = 1;
                }

                v171 = NSNumber.init(integerLiteral:)(v128).super.super.isa;
                v172 = swift_isUniquelyReferenced_nonNull_native();
                v198 = v110;
                sub_10023C9CC(v171, 0x7954686374697773, 0xEA00000000006570, v172);
                v120 = v198;
                v121 = type metadata accessor for HostedRoutingSession;
              }

              else
              {
                v118 = NSNumber.init(integerLiteral:)(1).super.super.isa;
                v119 = swift_isUniquelyReferenced_nonNull_native();
                v198 = v110;
                sub_10023C9CC(v118, 0x7954686374697773, 0xEA00000000006570, v119);
                v120 = v198;
                v121 = type metadata accessor for RoutingDecisionEngine.Decision.Element;
              }

              sub_10024889C(v117, v121);
            }

            sub_10023EC68(0xD00000000000002ELL, 0x800000010043D310, v120);
          }

          goto LABEL_91;
        }

        v80 = 0;
        v81 = _swiftEmptyArrayStorage;
        v82 = v196;
        v83 = v192;
        while (v80 < *(v78 + 16))
        {
          v85 = (*(v82 + 80) + 32) & ~*(v82 + 80);
          v86 = *(v82 + 72);
          v87 = sub_100238F04(v78 + v85 + v86 * v80, v38, type metadata accessor for HostedRoutingSession);
          if (sub_100031908(v87))
          {
            result = sub_10024889C(v38, type metadata accessor for HostedRoutingSession);
          }

          else
          {
            sub_100238EA0(v38, v83);
            v88 = swift_isUniquelyReferenced_nonNull_native();
            v199 = v81;
            if ((v88 & 1) == 0)
            {
              sub_1000326B8(0, v81[2] + 1, 1);
              v81 = v199;
            }

            v90 = v81[2];
            v89 = v81[3];
            if (v90 >= v89 >> 1)
            {
              sub_1000326B8((v89 > 1), v90 + 1, 1);
              v81 = v199;
            }

            v81[2] = v90 + 1;
            v83 = v192;
            result = sub_100238EA0(v192, v81 + v85 + v90 * v86);
            v82 = v196;
          }

          ++v80;
          v84 = v195;
          if (v79 == v80)
          {
            goto LABEL_42;
          }
        }
      }

      __break(1u);
      goto LABEL_89;
    }

    v61 = v196;
    if (v204 == 6)
    {
      v62 = *(*&v203[0] + 40);
      v192 = *(*&v203[0] + 32);
      v184 = v62;
      result = sub_100032A00();
      v63 = result;
      v64 = *(result + 16);
      if (v64)
      {
        v65 = 0;
        v66 = _swiftEmptyArrayStorage;
        v67 = v194;
        v193 = *(result + 16);
        while (v65 < *(v63 + 16))
        {
          v68 = (*(v61 + 80) + 32) & ~*(v61 + 80);
          v69 = *(v61 + 72);
          v70 = sub_100238F04(v63 + v68 + v69 * v65, v29, type metadata accessor for HostedRoutingSession);
          if (sub_100031908(v70))
          {
            result = sub_10024889C(v29, type metadata accessor for HostedRoutingSession);
          }

          else
          {
            sub_100238EA0(v29, v67);
            v71 = swift_isUniquelyReferenced_nonNull_native();
            v199 = v66;
            if ((v71 & 1) == 0)
            {
              sub_1000326B8(0, v66[2] + 1, 1);
              v66 = v199;
            }

            v73 = v66[2];
            v72 = v66[3];
            if (v73 >= v72 >> 1)
            {
              sub_1000326B8((v72 > 1), v73 + 1, 1);
              v66 = v199;
            }

            v66[2] = v73 + 1;
            v67 = v194;
            result = sub_100238EA0(v194, v66 + v68 + v73 * v69);
            v64 = v193;
          }

          if (v64 == ++v65)
          {
            goto LABEL_57;
          }
        }

LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v66 = _swiftEmptyArrayStorage;
LABEL_57:

      v129 = sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
      v130 = v66[2];

      v194 = v129;
      v131 = NSNumber.init(integerLiteral:)(v130).super.super.isa;
      v132 = swift_isUniquelyReferenced_nonNull_native();
      v199 = &_swiftEmptyDictionarySingleton;
      sub_10023C9CC(v131, 0xD000000000000012, 0x800000010043D2D0, v132);
      v193 = v199;
      result = type metadata accessor for HostedRoutingSessionSnapshot(0);
      v133 = *(v190 + *(result + 20));
      v134 = *(v133 + 16);
      if (v134)
      {
        v135 = 0;
        v136 = _swiftEmptyArrayStorage;
        v137 = v191;
        v138 = v189;
        while (v135 < *(v133 + 16))
        {
          v139 = (*(v196 + 80) + 32) & ~*(v196 + 80);
          v140 = *(v196 + 72);
          v141 = sub_100238F04(v133 + v139 + v140 * v135, v138, type metadata accessor for HostedRoutingSession);
          if (sub_100031908(v141))
          {
            result = sub_10024889C(v138, type metadata accessor for HostedRoutingSession);
          }

          else
          {
            v142 = v188;
            sub_100238EA0(v138, v188);
            v143 = swift_isUniquelyReferenced_nonNull_native();
            v199 = v136;
            if ((v143 & 1) == 0)
            {
              sub_1000326B8(0, v136[2] + 1, 1);
              v136 = v199;
            }

            v145 = v136[2];
            v144 = v136[3];
            if (v145 >= v144 >> 1)
            {
              sub_1000326B8((v144 > 1), v145 + 1, 1);
              v136 = v199;
            }

            v136[2] = v145 + 1;
            result = sub_100238EA0(v142, v136 + v139 + v145 * v140);
            v137 = v191;
            v138 = v189;
          }

          if (v134 == ++v135)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_90;
      }

      v136 = _swiftEmptyArrayStorage;
      v137 = v191;
LABEL_69:
      v146 = v136[2];

      v147 = v178;
      sub_10001D9AC(v190, v178, &qword_100523620, &unk_1004511D0);
      v148 = (*(v196 + 48))(v147, 1, v137);
      if (v148 == 1)
      {
        sub_1000038A4(v147, &qword_100523620, &unk_1004511D0);
        v149 = 0;
      }

      else
      {
        v150 = sub_100031908(v148);
        sub_10024889C(v147, type metadata accessor for HostedRoutingSession);
        v149 = (v150 & 1) == 0;
      }

      v151 = v187;
      v152 = v195;
      v153 = v179;
      result = v146 + v149;
      if (__OFADD__(v146, v149))
      {
        goto LABEL_92;
      }

      v154 = NSNumber.init(integerLiteral:)(result).super.super.isa;
      v155 = v193;
      v156 = swift_isUniquelyReferenced_nonNull_native();
      v199 = v155;
      sub_10023C9CC(v154, 0xD000000000000018, 0x800000010043D2F0, v156);
      v157 = v199;
      v158 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_timeFirstCurrentRemoteSessionAvailable;
      swift_beginAccess();
      v159 = v151 + v158;
      v160 = v177;
      sub_10001D9AC(v159, v177, &qword_1005228D8, &unk_100450060);
      v161 = v185;
      v162 = v186;
      if ((*(v185 + 48))(v160, 1, v186) == 1)
      {
        sub_1000038A4(v160, &qword_1005228D8, &unk_100450060);
      }

      else
      {
        (*(v161 + 32))(v153, v160, v162);
        v163 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastInstanceOfNoRemoteSessionAvailable;
        swift_beginAccess();
        (*(v161 + 16))(v152, v151 + v163, v162);
        Date.timeIntervalSince(_:)();
        v165 = v164;
        v166 = *(v161 + 8);
        v166(v152, v162);
        v167 = NSNumber.init(floatLiteral:)(v165).super.super.isa;
        v168 = swift_isUniquelyReferenced_nonNull_native();
        v198 = v157;
        sub_10023C9CC(v167, 0xD000000000000018, 0x800000010043D340, v168);
        v157 = v198;
        v166(v153, v162);
      }

      v169 = sub_100257FC4();
      if (v192 == *v169 && v184 == v169[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v170 = 3;
      }

      else
      {
        v170 = 0;
      }

      v173 = NSNumber.init(integerLiteral:)(v170).super.super.isa;
      v174 = swift_isUniquelyReferenced_nonNull_native();
      v198 = v157;
      sub_10023C9CC(v173, 0x7954686374697773, 0xEA00000000006570, v174);
      sub_10023EC68(0xD00000000000002ELL, 0x800000010043D310, v198);
    }

    return sub_100238E4C(v203);
  }

  return sub_10023DC58(v45, v46, v47, v48);
}

void sub_10024788C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  __chkstk_darwin(v4 - 8);
  v6 = &v62 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10023E264(a1);
  if (v12)
  {
    return;
  }

  v13 = v11;
  v14 = (*(*a1 + 232))();
  if ((~v16 & 0x6FE) == 0)
  {
    return;
  }

  if (((v16 >> 8) & 6 | (v16 >> 7) & 1) != 1)
  {
    goto LABEL_7;
  }

  v68 = v8;
  v69 = v14;
  v70 = v15;
  v71 = v16;
  v17 = (*(*a1 + 160))();
  if (v18)
  {
    v14 = v69;
    v15 = v70;
    v16 = v71;
LABEL_7:

    sub_10003FE48(v14, v15, v16);
    return;
  }

  v19 = *&v17;
  (*(*a1 + 136))();
  v20 = v68;
  if ((*(v68 + 48))(v6, 1, v7) == 1)
  {
    sub_10003FE48(v69, v70, v71);
    sub_1000038A4(v6, &qword_1005228D8, &unk_100450060);
    return;
  }

  (*(v20 + 32))(v10, v6, v7);
  sub_1001BC5A8(&qword_1005235F0, &unk_100451190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  v22 = v69;
  v23 = v70;
  *(inited + 32) = v69;
  *(inited + 40) = v23;
  v24 = v71;
  *(inited + 48) = v71;
  sub_10001CFE8(v22, v23, v24 & 0xF97F);
  v63 = sub_100242A64(inited);
  swift_setDeallocating();
  sub_1002484D8(inited + 32);
  swift_beginAccess();
  if (*(a2 + 32))
  {

    v26 = sub_10023BD58(v25);
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  v27 = v19;
  v64 = v26 >> 62;
  v65 = v13;
  v66 = v7;
  v67 = v10;
  if (v26 >> 62)
  {
LABEL_49:
    v73 = v26 & 0xFFFFFFFFFFFFFF8;
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v73 = v26 & 0xFFFFFFFFFFFFFF8;
    v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = 0;
  v72 = v26 & 0xC000000000000001;
  v62 = v26 + 32;
  while (1)
  {
    if (v28 == v29)
    {
      (*(v68 + 8))(v67, v66);

      sub_10003FE48(v69, v70, v71);
      return;
    }

    if (v72)
    {
      v30 = v26;
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v32;
    }

    else
    {
      if (v29 >= *(v73 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v30 = v26;
      v31 = *(v26 + 8 * v29 + 32);
    }

    v33 = (*(*v31 + 256))(v75, v32);
    (*(*a1 + 256))(v77, v33);
    v34 = sub_10026D530(v75, v77);
    v84 = v77[0];
    sub_1001E6204(&v84);
    v82[0] = v77[1];
    v82[1] = v77[2];
    v83 = v78;
    sub_100238E4C(v82);
    v81 = v75[0];
    sub_1001E6204(&v81);
    v79[0] = v75[1];
    v79[1] = v75[2];
    v80 = v76;
    sub_100238E4C(v79);

    v35 = v29 + 1;
    v36 = __OFADD__(v29, 1);
    if (v34)
    {
      break;
    }

    ++v29;
    v26 = v30;
    if (v36)
    {
      goto LABEL_48;
    }
  }

  if (v36)
  {
    __break(1u);
    goto LABEL_51;
  }

  v37 = v65;
  v38 = v67;
  if (v64)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v39 = *(v73 + 16);
  }

  if (v35 < v39)
  {
    if (v72)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_41:

      v41 = sub_10023E264(v40);
      v42 = v43;

      goto LABEL_42;
    }

    if ((v35 & 0x8000000000000000) == 0)
    {
      if (v35 < *(v73 + 16))
      {
        v40 = *(v62 + 8 * v35);

        goto LABEL_41;
      }

LABEL_52:
      __break(1u);
      return;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v41 = 0;
  v42 = 1;
LABEL_42:
  sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(v37).super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = &_swiftEmptyDictionarySingleton;
  sub_10023C9CC(isa, 0x6F6974617265706FLL, 0xED0000657079546ELL, isUniquelyReferenced_nonNull_native);
  v46 = v74;
  v47 = NSNumber.init(floatLiteral:)(v27).super.super.isa;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v46;
  sub_10023C9CC(v47, 0xD000000000000011, 0x800000010043D200, v48);
  v49 = v74;
  Date.timeIntervalSince(_:)();
  v51 = NSNumber.init(floatLiteral:)(v50 - v27).super.super.isa;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v49;
  sub_10023C9CC(v51, 0xD000000000000011, 0x800000010043D220, v52);
  v53 = v74;
  if ((v42 & 1) == 0)
  {
    v54 = NSNumber.init(integerLiteral:)(v41).super.super.isa;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v53;
    sub_10023C9CC(v54, 0xD000000000000015, 0x800000010043D2B0, v55);
    v53 = v74;
  }

  v56 = (*(*a1 + 184))();
  if (v56 != 2)
  {
    v57 = NSNumber.init(BOOLeanLiteral:)((v56 & 1) == 0).super.super.isa;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v53;
    sub_10023C9CC(v57, 0xD000000000000011, 0x800000010043D290, v58);
    v53 = v74;
  }

  v59 = v68;
  v60 = NSNumber.init(integerLiteral:)(v63).super.super.isa;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v53;
  sub_10023C9CC(v60, 0xD000000000000010, 0x800000010043D240, v61);
  sub_10023EC68(0xD00000000000002DLL, 0x800000010043D260, v74);

  sub_10003FE48(v69, v70, v71);
  (*(v59 + 8))(v38, v66);
}

void sub_1002480FC(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100233710(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100248208(uint64_t a1)
{
  result = type metadata accessor for Date();
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

void sub_1002482D0(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100233710(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002483CC(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100233710(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100248538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1002485A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 5u)
  {
    if (a5 > 8u)
    {
      if (a5 != 9 && a5 != 10 && a5 != 11)
      {
        return result;
      }
    }

    else if (a5 != 6 && a5 != 7 && a5 != 8)
    {
      return result;
    }
  }

  else
  {
    if (a5 >= 4u)
    {
      if (a5 != 4 && a5 != 5)
      {
        return result;
      }
    }

    else
    {
    }
  }

  return result;
}

unint64_t sub_100248690()
{
  result = qword_100523638;
  if (!qword_100523638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523638);
  }

  return result;
}

BOOL sub_10024873C(uint64_t a1)
{
  v2 = *(v1 + 16);
  (*(**a1 + 256))(v10);
  v13[0] = v10[1];
  v13[1] = v10[2];
  v14 = v11;
  v12 = v10[0];
  sub_1001E6204(&v12);
  if (v14 != 6)
  {
    sub_100238E4C(v13);
    return 0;
  }

  v3 = *(*&v13[0] + 48);

  v4 = sub_100238E4C(v13);
  v5 = (*(*v3 + 136))(v4);
  if (!v6)
  {

    return 0;
  }

  if (v5 != *v2 || v6 != v2[1])
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v8 & 1) != 0;
  }

  return 1;
}

uint64_t sub_100248888(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return v3;
}

uint64_t sub_10024889C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002488FC(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return v3;
}

unint64_t sub_100248910()
{
  result = qword_100523648;
  if (!qword_100523648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523648);
  }

  return result;
}

uint64_t sub_100248990()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E0520();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_100248DE0();
  sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
  sub_100248E38();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1005384B8 = result;
  return result;
}

uint64_t sub_100248B90()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_1001E0520();
  static DispatchQoS.utility.getter();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v1);
  v7[1] = _swiftEmptyArrayStorage;
  sub_100248DE0();
  sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
  sub_100248E38();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1005384C0 = result;
  return result;
}

uint64_t *sub_100248D90()
{
  if (qword_10052BAB8 != -1)
  {
    swift_once();
  }

  return &qword_1005384C0;
}

unint64_t sub_100248DE0()
{
  result = qword_100522A90;
  if (!qword_100522A90)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522A90);
  }

  return result;
}

unint64_t sub_100248E38()
{
  result = qword_100522AA0;
  if (!qword_100522AA0)
  {
    sub_1001C2EC8(&qword_100521DF8, &unk_100450220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522AA0);
  }

  return result;
}

uint64_t sub_100248E9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  result = kMRMediaRemoteFrameworkErrorDomain;
  if (kMRMediaRemoteFrameworkErrorDomain)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    v13 = [v8 domain];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v14 == v10 && v16 == v12)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if ([v8 code] < 200)
    {
LABEL_13:

      return 0;
    }

    v19 = [v8 code];

    return v19 < 300;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002490BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  if (kMRMediaRemoteFrameworkErrorDomain)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v12 = [v8 domain];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v13 == v9 && v15 == v11)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {

        LOBYTE(v18) = 1;
LABEL_14:
        v20[12] = v18;
        return;
      }
    }

    v19 = [v8 code];

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v18 = HIDWORD(v19);
      if (!HIDWORD(v19))
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1002492E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v144 = type metadata accessor for HostedRoutingItem(0);
  v4 = *(v144 - 8);
  v5 = __chkstk_darwin(v144);
  v143 = v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v146 = v133 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = (v133 - v10);
  __chkstk_darwin(v9);
  v13 = (v133 - v12);

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = *(a1 + 16);
  v16 = _swiftEmptyArrayStorage;
  v135 = v14;
  v147 = a1;
  v145 = v4;
  v137 = v11;
  if (v15)
  {
    *&v151[0] = _swiftEmptyArrayStorage;
    v17 = v14;
    sub_1000089FC(0, v15, 0);
    v18 = *&v151[0];
    v19 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v20 = *(v4 + 72);
    do
    {
      sub_10001D948(v19, v13);
      if (sub_100258854())
      {
        v21 = MRIRRouteBuiltInSpeakerIdentifier();
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;
      }

      else
      {
        v22 = *v13;
        v24 = v13[1];
      }

      sub_10001DA14(v13);
      *&v151[0] = v18;
      v26 = v18[2];
      v25 = v18[3];
      if (v26 >= v25 >> 1)
      {
        sub_1000089FC((v25 > 1), v26 + 1, 1);
        v18 = *&v151[0];
      }

      v18[2] = v26 + 1;
      v27 = &v18[2 * v26];
      v27[4] = v22;
      v27[5] = v24;
      v19 += v20;
      --v15;
    }

    while (v15);
    v4 = v145;
    v11 = v137;
    v16 = _swiftEmptyArrayStorage;
  }

  else
  {
    v28 = v14;
    v18 = _swiftEmptyArrayStorage;
  }

  *&v151[0] = v18;

  sub_10024B6D4(v151);
  v133[1] = 0;

  v134 = *&v151[0];
  *&v151[0] = _swiftEmptyArrayStorage;
  v29 = v147;
  v148 = *(v147 + 16);
  if (v148)
  {
    v30 = 0;
    v142 = v11 + *(v144 + 64);
    v141 = v147 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v138 = 1;
    v140 = xmmword_10044EC70;
    while (1)
    {
      if (v30 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_74;
      }

      sub_10001D948(v141 + *(v4 + 72) * v30, v11);
      v38 = sub_100258554();
      if ((v40 & 0xF800) == 0x4000)
      {
        v41 = *(v38 + 16);
        v42 = v38;
        v43 = v40;
        v44 = v39;

        sub_1000196F4(v42, v44, v43);
        if (*(v41 + 16) == 2)
        {
          v139 = v30;
          v153 = _swiftEmptyArrayStorage;
          sub_10024B430(0, 2, 0);
          v31 = v153;
          v46 = *(v41 + 32);
          v45 = *(v41 + 40);
          v47 = *(v41 + 48);
          v48 = *(v41 + 56);
          v49 = *(v41 + 64);

          sub_10001DAE0(v47, v48, v49);
          v51 = v31[2];
          v50 = v31[3];
          if (v51 >= v50 >> 1)
          {
            sub_10024B430((v50 > 1), v51 + 1, 1);
            v31 = v153;
          }

          v31[2] = v51 + 1;
          v52 = &v31[5 * v51];
          v52[4] = v46;
          v52[5] = v45;
          v52[6] = v47;
          v52[7] = v48;
          *(v52 + 32) = v49;
          v54 = *(v41 + 72);
          v53 = *(v41 + 80);
          v55 = *(v41 + 88);
          v56 = *(v41 + 96);
          v57 = *(v41 + 104);

          sub_10001DAE0(v55, v56, v57);
          v153 = v31;
          v59 = v31[2];
          v58 = v31[3];
          if (v59 >= v58 >> 1)
          {
            sub_10024B430((v58 > 1), v59 + 1, 1);
            v31 = v153;
          }

          v31[2] = v59 + 1;
          v60 = &v31[5 * v59];
          v60[4] = v54;
          v60[5] = v53;
          v60[6] = v55;
          v60[7] = v56;
          *(v60 + 32) = v57;
LABEL_42:

          v4 = v145;
          v11 = v137;
          v30 = v139;
          goto LABEL_15;
        }
      }

      else
      {
        sub_1000196F4(v38, v39, v40);
        v61 = sub_100258554();
        if (v63 >> 11 == 9)
        {
          v64 = *(v61 + 16);
          v65 = *(v61 + 24);
          v66 = v61;
          v67 = v63;
          v68 = v62;

          sub_1000196F4(v66, v68, v67);
          v69 = *(v64 + 16);
          if (v69 == v65)
          {
            if (v69)
            {
              v139 = v30;
              v153 = _swiftEmptyArrayStorage;
              sub_10024B430(0, v69, 0);
              v70 = v64;
              v31 = v153;
              v136 = v70;
              v71 = (v70 + 64);
              do
              {
                v72 = *(v71 - 3);
                v149 = *(v71 - 4);
                v74 = *(v71 - 2);
                v73 = *(v71 - 1);
                v75 = *v71;

                sub_10001DAE0(v74, v73, v75);
                v153 = v31;
                v77 = v31[2];
                v76 = v31[3];
                if (v77 >= v76 >> 1)
                {
                  sub_10024B430((v76 > 1), v77 + 1, 1);
                  v31 = v153;
                }

                v71 += 20;
                v31[2] = v77 + 1;
                v78 = &v31[5 * v77];
                v78[4] = v149;
                v78[5] = v72;
                v78[6] = v74;
                v78[7] = v73;
                *(v78 + 32) = v75;
                --v69;
              }

              while (v69);
              goto LABEL_42;
            }

            goto LABEL_43;
          }
        }

        else
        {
          sub_1000196F4(v61, v62, v63);
          v79 = sub_100258554();
          if ((v81 & 0xF800) != 0x5000)
          {
            sub_1000196F4(v79, v80, v81);
            goto LABEL_14;
          }

          v82 = *(v79 + 16);
          v83 = *(v79 + 24);
          v84 = v79;
          v85 = v81;
          v86 = v80;

          sub_1000196F4(v84, v86, v85);
          v87 = *(v82 + 16);
          if (v87 == v83)
          {
            if (v87)
            {
              v139 = v30;
              v153 = _swiftEmptyArrayStorage;
              sub_10024B430(0, v87, 0);
              v88 = v82;
              v31 = v153;
              v136 = v88;
              v89 = (v88 + 64);
              do
              {
                v90 = *(v89 - 3);
                v149 = *(v89 - 4);
                v91 = *(v89 - 2);
                v92 = *(v89 - 1);
                v93 = *v89;

                sub_10001DAE0(v91, v92, v93);
                v153 = v31;
                v95 = v31[2];
                v94 = v31[3];
                if (v95 >= v94 >> 1)
                {
                  sub_10024B430((v94 > 1), v95 + 1, 1);
                  v31 = v153;
                }

                v89 += 20;
                v31[2] = v95 + 1;
                v96 = &v31[5 * v95];
                v96[4] = v149;
                v96[5] = v90;
                v96[6] = v91;
                v96[7] = v92;
                *(v96 + 32) = v93;
                --v87;
              }

              while (v87);
              goto LABEL_42;
            }

LABEL_43:

            goto LABEL_14;
          }
        }
      }

      v138 = 0;
LABEL_14:
      v31 = _swiftEmptyArrayStorage;
LABEL_15:
      ++v30;
      sub_1001BC5A8(&qword_100523678, &unk_100451240);
      inited = swift_initStackObject();
      *(inited + 16) = v140;
      v33 = v11[1];
      *(inited + 32) = *v11;
      *(inited + 40) = v33;
      v34 = *v142;
      v35 = *(v142 + 1);
      v36 = *(v142 + 8);
      *(inited + 48) = *v142;
      *(inited + 56) = v35;
      *(inited + 64) = v36;
      v153 = inited;

      sub_10001DAE0(v34, v35, v36);
      sub_10024AA00(v31);
      sub_10001DA14(v11);
      sub_10024AA00(v153);
      v29 = v147;
      v37 = v146;
      if (v30 == v148)
      {
        v16 = *&v151[0];
        goto LABEL_46;
      }
    }
  }

  v138 = 1;
  v37 = v146;
LABEL_46:
  v97 = sub_100249F0C(v16);

  v98 = v97[2] + 1;
  v99 = 64;
  while (--v98)
  {
    v100 = v99 + 40;
    v101 = HIBYTE(*(v97 + v99)) & 6 | (*(v97 + v99) >> 7) & 1;
    v99 += 40;
    if (v101 <= 4)
    {
      v99 = v100;
      if (v101 != 1)
      {
        break;
      }
    }
  }

  v149 = v97;
  if (v148)
  {
    v102 = 0;
    v103 = _swiftEmptyArrayStorage;
    while (v102 < *(v29 + 16))
    {
      v104 = (*(v145 + 80) + 32) & ~*(v145 + 80);
      v105 = *(v145 + 72);
      sub_10001D948(v29 + v104 + v105 * v102, v37);
      v106 = *(v37 + *(v144 + 44));
      LOBYTE(v153) = *sub_10025774C();
      LOBYTE(v150) = v106;
      sub_100248690();
      if (dispatch thunk of SetAlgebra.isSuperset(of:)())
      {
        sub_10001DA14(v37);
      }

      else
      {
        sub_10001DFD4(v37, v143);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v151[0] = v103;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10002A42C(0, v103[2] + 1, 1);
          v103 = *&v151[0];
        }

        v109 = v103[2];
        v108 = v103[3];
        if (v109 >= v108 >> 1)
        {
          sub_10002A42C((v108 > 1), v109 + 1, 1);
          v103 = *&v151[0];
        }

        v103[2] = v109 + 1;
        sub_10001DFD4(v143, v103 + v104 + v109 * v105);
        v37 = v146;
        v29 = v147;
      }

      if (v148 == ++v102)
      {
        goto LABEL_62;
      }
    }

LABEL_74:
    __break(1u);

    __break(1u);
  }

  else
  {
    v103 = _swiftEmptyArrayStorage;
LABEL_62:

    v110 = v103[2];

    *&v151[0] = v134;
    sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
    sub_10002C150();
    BidirectionalCollection<>.joined(separator:)();

    v111 = String._bridgeToObjectiveC()();

    v112 = v135;
    [v135 setRouteIdentifier:v111];

    if (v98)
    {
      v113 = 0;
    }

    else
    {
      v113 = v138 & (v110 < 2);
    }

    [v112 setDonateAsCandidate:v113];
    v114 = v149;
    v115 = v149[2];
    if (v115)
    {
      v153 = _swiftEmptyArrayStorage;
      sub_10024B3D0(0, v115, 0);
      v116 = v153;
      v117 = (v114 + 8);
      do
      {
        v118 = *(v117 - 2);
        v119 = *(v117 - 1);
        v120 = *v117;

        sub_10001DAE0(v118, v119, v120);
        v121 = sub_10001CD44(v118, v119, v120);
        v122 = objc_allocWithZone(MRIRNode);
        v123 = String._bridgeToObjectiveC()();
        v124 = [v122 initWithAVOutputDeviceID:v123 isLocal:v121];

        v150 = v124;
        sub_100018D7C(0, &qword_100523688, MRIRNode_ptr);
        sub_10024B740();
        v125 = v124;
        AnyHashable.init<A>(_:)();

        sub_100019550(v118, v119, v120);

        v153 = v116;
        v127 = v116[2];
        v126 = v116[3];
        if (v127 >= v126 >> 1)
        {
          sub_10024B3D0((v126 > 1), v127 + 1, 1);
          v116 = v153;
        }

        v117 += 20;
        v116[2] = v127 + 1;
        v128 = &v116[5 * v127];
        v129 = v151[0];
        v130 = v151[1];
        v128[8] = v152;
        *(v128 + 2) = v129;
        *(v128 + 3) = v130;
        --v115;
      }

      while (v115);
    }

    else
    {

      v116 = _swiftEmptyArrayStorage;
    }

    sub_10024C228(v116);

    isa = Set._bridgeToObjectiveC()().super.isa;

    v132 = v135;
    [v135 setNodes:isa];
  }
}

void *sub_100249F0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10024B3F0(0, v1, 0);
    v3 = (a1 + 64);
    do
    {
      v4 = *(v3 - 2);
      v5 = *(v3 - 1);
      v6 = *v3;

      sub_10001DAE0(v4, v5, v6);
      sub_1001BC5A8(&qword_100523708, &qword_100451430);
      sub_1001BC5A8(&qword_100523720, &qword_100451450);
      swift_dynamicCast();
      v7 = v14;
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_10024B3F0((v8 > 1), v9 + 1, 1);
        v7 = v14;
      }

      v3 += 20;
      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[5 * v9];
      v10[4] = v12;
      v10[5] = v13;
      *(v10 + 3) = v7;
      *(v10 + 32) = v15;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10024A06C(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_1001BC5A8(&qword_1005236E8, &unk_100451418);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for RoutingItem.Attributes.Properties();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_10001CD5C(&qword_1005236F0, &type metadata accessor for RoutingItem.Attributes.Properties, &protocol conformance descriptor for RoutingItem.Attributes.Properties);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_10001CD5C(&qword_1005236F8, &type metadata accessor for RoutingItem.Attributes.Properties, &protocol conformance descriptor for RoutingItem.Attributes.Properties);
  v24 = a2;
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v27;
  sub_10003AEF0(v7, v27, &qword_1005236E8, &unk_100451418);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_10024A370(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10024A3E8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10024A468@<X0>(void *a3@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String._bridgeToObjectiveC()();

  *a3 = v4;
  return result;
}

uint64_t sub_10024A4AC(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10024A4E8(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10024A53C(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

_DWORD *sub_10024A5B0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_10024A5CC(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10024A654@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

void *sub_10024A69C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001BC5A8(&qword_100523678, &unk_100451240);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001BC5A8(&qword_100523708, &qword_100451430);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10024A7E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&unk_100527540, &unk_100451460);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10024A8E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_100523700, &qword_100451428);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10024AA00(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10024A69C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1001BC5A8(&qword_100523708, &qword_100451430);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10024AB08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_100018BE4(*(v6 + 48) + 40 * v9, v16);
      v11 = static AnyHashable.== infix(_:_:)();
      sub_10001BF10(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_10001BF10(a2);
    sub_100018BE4(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100018BE4(a2, v16);
    v15 = *v3;
    sub_10024AEB4(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

void sub_10024AC54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_100523710, &qword_100451438);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v28 = *v18;
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      v19 = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v28;
      *(v14 + 16) = v29;
      *(v14 + 32) = v30;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10024AEB4(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10024AC54(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_10024B02C();
      goto LABEL_12;
    }

    sub_10024B1A4(v7 + 1);
  }

  v9 = *v3;
  v10 = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_100018BE4(*(v9 + 48) + 40 * a2, v20);
      v13 = static AnyHashable.== infix(_:_:)();
      sub_10001BF10(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(result + 16);
  *v15 = *result;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(result + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10024B02C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100523710, &qword_100451438);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        sub_100018BE4(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_10024B1A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_100523710, &qword_100451438);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_100018BE4(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v27);
      v19 = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v27[0];
      v15 = v27[1];
      *(v13 + 32) = v28;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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
    *v2 = v5;
  }
}

char *sub_10024B3D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10024B470(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10024B3F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10024B590(a1, a2, a3, *v3, &qword_100523728, &qword_100451458, &qword_100523720, &qword_100451450);
  *v3 = result;
  return result;
}

void *sub_10024B430(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10024B590(a1, a2, a3, *v3, &qword_100523678, &unk_100451240, &qword_100523708, &qword_100451430);
  *v3 = result;
  return result;
}

char *sub_10024B470(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_100523718, &unk_100451440);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10024B590(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1001BC5A8(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001BC5A8(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

Swift::Int sub_10024B6D4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10024C214(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10024B7A8(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_10024B740()
{
  result = qword_100523690;
  if (!qword_100523690)
  {
    sub_100018D7C(255, &qword_100523688, MRIRNode_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523690);
  }

  return result;
}

Swift::Int sub_10024B7A8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10024B970(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10024B8A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10024B8A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10024B970(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_10024C200(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10024BF4C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10024A7E0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10024A7E0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10024BF4C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10024C200(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10024C174(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10024BF4C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_10024C174(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10024C200(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10024C228(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_100018BE4(v4, v5);
      sub_10024AB08(v6, v5);
      sub_10001BF10(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_10024C2B4()
{
  result = qword_100523698;
  if (!qword_100523698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523698);
  }

  return result;
}

uint64_t sub_10024C44C(uint64_t a1, uint64_t a2)
{
  v5 = [v2 userInfo];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v12 = a1;
  *(&v12 + 1) = a2;
  AnyHashable.init<A>(_:)();
  if (!*(v7 + 16) || (v8 = sub_10001BF64(v11), (v9 & 1) == 0))
  {

    sub_10001BF10(v11);
LABEL_9:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_10;
  }

  sub_100020E0C(*(v7 + 56) + 32 * v8, &v12);
  sub_10001BF10(v11);

  if (!*(&v13 + 1))
  {
LABEL_10:
    sub_100037768(&v12);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v11[0];
  }

  else
  {
    return 2;
  }
}

Swift::Int sub_10024C63C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024C6A4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

void type metadata accessor for CFString()
{
  if (!qword_100523750)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100523750);
    }
  }
}

uint64_t sub_10024C7D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10024C81C()
{
  v0 = [objc_opt_self() server];
  v1 = [v0 nowPlayingServer];

  return v1;
}

void sub_10024C87C(uint64_t *a1@<X8>)
{
  v3 = [v1 localOriginClient];
  v6 = v3;
  v4 = [v6 activeNowPlayingClient];
  v5 = [v4 activePlayerClient];

  sub_100026A90(v3, v5, a1);
}

uint64_t sub_10024C928(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x657469726F766166;
    case 1:
      return 0x6C61727475656ELL;
    case 2:
      return 0x726F707075736E75;
  }

  v7[6] = v1;
  v7[7] = v2;
  v4 = *(a1 + 16);
  strcpy(v7, ".optimistic(");
  sub_1002540AC(v4);
  v5._countAndFlagsBits = sub_10024C928(v4);
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  sub_1002540BC(v4);
  return v7[0];
}

BOOL sub_10024CA24(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      return !a2;
    case 1:
      return a2 == 1;
    case 2:
      return a2 == 2;
  }

  if (a2 < 3)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  sub_1002540AC(v4);
  LOBYTE(v3) = sub_10024CA24(v3, v4);
  sub_1002540BC(v4);
  return v3 & 1;
}

void sub_10024CAB4(Swift::UInt a1)
{
  if (a1 > 2)
  {
    v1 = *(a1 + 16);
    Hasher._combine(_:)(3uLL);
    sub_1002540AC(v1);
    sub_10024CAB4(v1);

    sub_1002540BC(v1);
  }

  else
  {

    Hasher._combine(_:)(a1);
  }
}

Swift::Int sub_10024CB30()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        v3 = *(v1 + 16);
        Hasher._combine(_:)(3uLL);
        sub_1002540AC(v3);
        sub_10024CAB4(v3);
        sub_1002540BC(v3);
        return Hasher._finalize()();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10024CBD4()
{
  v1 = *v0;
  if (!*v0)
  {
    v2 = 0;
    goto LABEL_7;
  }

  if (v1 == 1)
  {
    v2 = 1;
    goto LABEL_7;
  }

  if (v1 == 2)
  {
    v2 = 2;
LABEL_7:
    Hasher._combine(_:)(v2);
    return;
  }

  v3 = *(v1 + 16);
  Hasher._combine(_:)(3uLL);
  sub_1002540AC(v3);
  sub_10024CAB4(v3);

  sub_1002540BC(v3);
}

Swift::Int sub_10024CC64(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        v4 = *(v2 + 16);
        Hasher._combine(_:)(3uLL);
        sub_1002540AC(v4);
        sub_10024CAB4(v4);
        sub_1002540BC(v4);
        return Hasher._finalize()();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10024CD18(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void *sub_10024CDB0(uint64_t a1)
{
  result = swift_allocObject();
  result[3] = _swiftEmptyArrayStorage;
  result[4] = &_swiftEmptyDictionarySingleton;
  result[2] = a1;
  return result;
}

uint64_t sub_10024CDF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 24) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1002530B4(0, v5[2] + 1, 1, v5);
    *(v2 + 24) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1002530B4((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = a1;
  v9[5] = a2;
  *(v2 + 24) = v5;
  swift_endAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_10024CED0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  v4 = sub_100254270((v2 + 24), a1);
  result = swift_unknownObjectRelease();
  v6 = *(*(v2 + 24) + 16);
  if (v6 < v4)
  {
    __break(1u);
  }

  else
  {
    sub_1002544B0(v4, v6);
    return swift_endAccess();
  }

  return result;
}

unint64_t sub_10024CF68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (*(v5 + 16))
  {

    v6 = sub_10000698C(a1, a2);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      v9 = *(v8 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status);
      sub_1002540AC(v9);

      return v9;
    }
  }

  return 3;
}

void sub_10024D04C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  if (*(*(v3 + 32) + 16))
  {

    sub_10000698C(a1, a2);
    if (v7)
    {

      a3(v8);
    }

    else
    {
    }
  }
}

uint64_t sub_10024D0F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v7 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  sub_10001D9AC(a1, v6, &qword_100523640, qword_100451520);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000038A4(v6, &qword_100523640, qword_100451520);
    v14 = sub_100037234();
    v15 = *v14;
    v16 = v14[1];
    swift_beginAccess();

    sub_10024D5F0(0, v15, v16);
    return swift_endAccess();
  }

  sub_100254570(v6, v13);
  result = sub_10025FA68(*(v13 + 6), *(v13 + 14) | (v13[60] << 32));
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = sub_100037234();
  v19 = *v18;
  v20 = v18[1];
  swift_beginAccess();
  if (!*(*(v2 + 32) + 16) || (, , sub_10000698C(v19, v20), v22 = v21, , result = , (v22 & 1) == 0))
  {
    v28 = *v18;
    v27 = v18[1];
    sub_1002548B8(v13, v11, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    swift_bridgeObjectRetain_n();
    v29 = *sub_100021264();
    type metadata accessor for MusicFavoritingController(0);
    v30 = swift_allocObject();
    v31 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatus;
    v32 = type metadata accessor for MusicFavoriteStatusController.Status();
    (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
    *(v30 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status) = 2;
    *(v30 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_musicController) = 0;
    *(v30 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatusObserver) = 0;
    *(v30 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    v33 = v30 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item;
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 18) = 0;
    *(v33 + 16) = 252;
    v34 = (v30 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier);
    *v34 = v28;
    v34[1] = v27;
    *(v30 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_targetQueue) = v29;
    sub_1002548B8(v11, v30 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_nowPlayingInfo, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    v35 = v29;
    v36 = sub_100254620(v11);
    v37 = (v30 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
    v38 = *(v30 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
    v39 = *(v30 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8);
    v41 = *(v30 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
    v40 = v30 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16;
    *v37 = v36;
    v37[1] = v42;
    LODWORD(v37) = v41 | (*(v40 + 2) << 16);
    *v40 = v43;
    *(v40 + 2) = v44;
    sub_10025488C(v38, v39, v37);
    sub_1002505D0();

    sub_100254920(v11, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    *(v30 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_delegate + 8) = &off_1004C55E0;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v2 + 32);
    *(v2 + 32) = 0x8000000000000000;
    sub_100253490(v30, v28, v27, isUniquelyReferenced_nonNull_native);

    *(v2 + 32) = v47;
    swift_endAccess();
    return sub_100254920(v13, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  }

  if (!*(*(v2 + 32) + 16))
  {
    goto LABEL_13;
  }

  v23 = *v18;
  v24 = v18[1];

  sub_10000698C(v23, v24);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_10024F9A4(v13);

  return sub_100254920(v13, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
}

uint64_t sub_10024D5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100253490(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10000698C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_10025360C();
        v14 = v16;
      }

      result = sub_1001DEE44(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void sub_10024D6E8(uint64_t a1)
{
  v3 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v3 - 8);
  v5 = &v84 - v4;
  v93 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v91 = *(v93 - 8);
  v6 = __chkstk_darwin(v93);
  v89 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v84 - v8;
  v86 = type metadata accessor for HostedRoutingSourceSession(0);
  v10 = *(v86 - 8);
  __chkstk_darwin(v86);
  v12 = (&v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  v14 = sub_100037234();
  v16 = *v14;
  v15 = *(v14 + 1);
  *(inited + 32) = v16;
  *(inited + 40) = v15;

  v17 = sub_10021FAD4(inited);
  swift_setDeallocating();
  sub_1001E6204(inited + 32);
  v97 = v17;
  v18 = *(a1 + 16);
  v90 = v1;
  if (!v18)
  {
    goto LABEL_16;
  }

  v92 = v5;
  v19 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  swift_beginAccess();
  v20 = (v91 + 48);
  v21 = *(v10 + 72);
  v22 = v86;
  v85 = (v91 + 48);
  v23 = v21;
  v84 = v21;
  while (1)
  {
    sub_1002548B8(v19, v12, type metadata accessor for HostedRoutingSourceSession);
    v24 = v92;
    sub_10001D9AC(v12 + *(v22 + 28), v92, &qword_100523640, qword_100451520);
    if ((*v20)(v24, 1, v93) != 1)
    {
      break;
    }

    sub_100254920(v12, type metadata accessor for HostedRoutingSourceSession);
    sub_1000038A4(v24, &qword_100523640, qword_100451520);
LABEL_4:
    v19 += v23;
    if (!--v18)
    {
      v17 = v97;
      v1 = v90;
LABEL_16:
      swift_beginAccess();
      v57 = *(v1 + 32);
      v60 = *(v57 + 64);
      v59 = v57 + 64;
      v58 = v60;
      v61 = 1 << *(*(v1 + 32) + 32);
      if (v61 < 64)
      {
        v62 = ~(-1 << v61);
      }

      else
      {
        v62 = -1;
      }

      v63 = v62 & v58;
      v64 = (v61 + 63) >> 6;
      v65 = v17 + 56;
      v93 = *(v1 + 32);

      v66 = 0;
      if (!v63)
      {
        goto LABEL_23;
      }

LABEL_27:
      while (1)
      {
        v68 = __clz(__rbit64(v63));
        v63 &= v63 - 1;
        v69 = (*(v93 + 48) + ((v66 << 10) | (16 * v68)));
        v71 = *v69;
        v70 = v69[1];
        if (!*(v17 + 16))
        {
          break;
        }

        Hasher.init(_seed:)();

        String.hash(into:)();
        v72 = Hasher._finalize()();
        v73 = -1 << *(v17 + 32);
        v74 = v72 & ~v73;
        if ((*(v65 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
        {
          v75 = ~v73;
          while (1)
          {
            v76 = (*(v17 + 48) + 16 * v74);
            v77 = *v76 == v71 && v76[1] == v70;
            if (v77 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v74 = (v74 + 1) & v75;
            if (((*(v65 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          if (!v63)
          {
LABEL_23:
            while (1)
            {
              v67 = v66 + 1;
              if (__OFADD__(v66, 1))
              {
                break;
              }

              if (v67 >= v64)
              {

                return;
              }

              v63 = *(v59 + 8 * v67);
              ++v66;
              if (v63)
              {
                v66 = v67;
                goto LABEL_27;
              }
            }

            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }
        }

        else
        {
LABEL_38:
          swift_beginAccess();
          v78 = sub_10000698C(v71, v70);
          v80 = v79;

          if (v80)
          {
            v81 = v90;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v83 = *(v81 + 32);
            v94 = v83;
            *(v81 + 32) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_10025360C();
              v83 = v94;
            }

            sub_1001DEE44(v78, v83);
            *(v81 + 32) = v83;
          }

          swift_endAccess();
          if (!v63)
          {
            goto LABEL_23;
          }
        }
      }

      goto LABEL_38;
    }
  }

  sub_100254570(v24, v9);
  v25 = v91 & 0xFFFFFF0000000000 | *(v9 + 14) | (v9[60] << 32);
  v26 = sub_10025FA68(*(v9 + 6), v25);
  v91 = v25;
  if (!v26)
  {
    sub_100254920(v12, type metadata accessor for HostedRoutingSourceSession);
    sub_100254920(v9, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    goto LABEL_4;
  }

  v27 = *v12;
  v28 = v12[1];

  sub_100008318(&v95, v27, v28);

  if (!*(*(v90 + 32) + 16) || (, sub_10000698C(v27, v28), v30 = v29, , (v30 & 1) == 0))
  {
    v87 = type metadata accessor for HostedRoutingSession.NowPlayingInfo;
    sub_1002548B8(v9, v89, type metadata accessor for HostedRoutingSession.NowPlayingInfo);

    v32 = *sub_100021264();
    type metadata accessor for MusicFavoritingController(0);
    v33 = swift_allocObject();
    v34 = v27;
    v88 = v27;
    v35 = v33;
    v36 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatus;
    v37 = type metadata accessor for MusicFavoriteStatusController.Status();
    (*(*(v37 - 8) + 56))(v35 + v36, 1, 1, v37);
    *(v35 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status) = 2;
    *(v35 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_musicController) = 0;
    *(v35 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatusObserver) = 0;
    *(v35 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    v38 = v35 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item;
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 18) = 0;
    *(v38 + 16) = 252;
    v39 = (v35 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier);
    *v39 = v34;
    v39[1] = v28;
    v40 = v32;
    *(v35 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_targetQueue) = v32;
    v41 = v89;
    v42 = v87;
    sub_1002548B8(v89, v35 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_nowPlayingInfo, v87);
    v43 = v40;

    v44 = v43;
    v45 = sub_100254620(v41);
    v46 = (v35 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
    v47 = *(v35 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
    v48 = *(v35 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8);
    v49 = (v35 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
    v50 = *v49;
    *v46 = v45;
    v46[1] = v51;
    LODWORD(v46) = v50 | (*(v49 + 2) << 16);
    *v49 = v52;
    *(v49 + 2) = v53;
    sub_10025488C(v47, v48, v46);
    sub_1002505D0();

    v54 = v90;
    sub_100254920(v41, v42);
    *(v35 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_delegate + 8) = &off_1004C55E0;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();

    v55 = swift_isUniquelyReferenced_nonNull_native();
    v96[0] = *(v54 + 32);
    *(v54 + 32) = 0x8000000000000000;
    sub_100253490(v35, v88, v28, v55);

    *(v54 + 32) = v96[0];
    swift_endAccess();
    v56 = *(v35 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status);
    sub_1002540AC(v56);
    sub_10024E09C(v35, v56);
    sub_1002540BC(v56);
    goto LABEL_14;
  }

  if (!*(*(v90 + 32) + 16))
  {
    goto LABEL_45;
  }

  sub_10000698C(v27, v28);
  if (v31)
  {

    sub_10024F9A4(v9);
LABEL_14:

    sub_100254920(v12, type metadata accessor for HostedRoutingSourceSession);
    sub_100254920(v9, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    v22 = v86;
    v20 = v85;
    v23 = v84;
    goto LABEL_4;
  }

LABEL_46:
  __break(1u);
}

void sub_10024E09C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = 0;
  v11 = *(v3 + 32);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = v10;
LABEL_10:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v18 = v17 | (v16 << 6);
    if (*(*(v11 + 56) + 8 * v18) == a1)
    {
      v19 = (*(v11 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];

      swift_beginAccess();
      v22 = *(*(v3 + 24) + 16);
      if (v22)
      {

        v37 = a2;
        v23 = (v36 + 40);
        v38 = v20;
        do
        {
          v24 = *v23;
          ObjectType = swift_getObjectType();
          v26 = *(v24 + 8);
          swift_unknownObjectRetain();
          v26(v3, v37, v21, v38, ObjectType, v24);
          swift_unknownObjectRelease();
          v23 += 2;
          --v22;
        }

        while (v22);
      }

      else
      {
      }

      return;
    }
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return;
    }

    if (v16 >= v15)
    {
      break;
    }

    v14 = *(v11 + 64 + 8 * v16);
    ++v10;
    if (v14)
    {
      v10 = v16;
      goto LABEL_10;
    }
  }

  v27 = sub_1001D911C();
  (*(v7 + 16))(v9, v27, v6);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39[0] = v31;
    *v30 = 136315138;
    v32 = _typeName(_:qualified:)();
    v34 = sub_10002C9C8(v32, v33, v39);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "[%s] controllerDidUpdateStatus - update received for unmapped controller", v30, 0xCu);
    sub_100026A44(v31);
  }

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_10024E404()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10024E44C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  for (i = 0; v4; result = )
  {
    v8 = i;
LABEL_9:
    v9 = (*(v1 + 48) + 16 * (__clz(__rbit64(v4)) | (v8 << 6)));
    v10 = *v9;
    v11 = v9[1];
    v4 &= v4 - 1;

    _StringGuts.grow(_:)(30);

    v12._countAndFlagsBits = v10;
    v12._object = v11;
    String.append(_:)(v12);

    v13._object = 0x800000010043D840;
    v13._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v13);
    v14._countAndFlagsBits = sub_10024F5D4();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 10;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x3A6E6F6973736573;
    v16._object = 0xE900000000000020;
    String.append(_:)(v16);
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return 0xD000000000000020;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double sub_10024E664(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status;
  v9 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status);
  sub_1002540AC(v9);
  LOBYTE(a1) = sub_10024CA24(a1, v9);
  result = sub_1002540BC(v9);
  if ((a1 & 1) == 0)
  {
    v11 = sub_1001D911C();
    (*(v5 + 16))(v7, v11, v4);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v31 = v13;
      v15 = v14;
      v32 = swift_slowAlloc();
      v33 = v32;
      *v15 = 136315650;
      v16 = _typeName(_:qualified:)();
      v18 = sub_10002C9C8(v16, v17, &v33);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_10002C9C8(*(v2 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier), *(v2 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier + 8), &v33);
      *(v15 + 22) = 2082;
      v19 = *(v2 + v8);
      sub_1002540AC(v19);
      v20 = sub_10024C928(v19);
      v22 = v21;
      sub_1002540BC(v19);
      v23 = sub_10002C9C8(v20, v22, &v33);

      *(v15 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v12, v31, "[%s]<%s> setStatus - value: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v7, v4);
    v24 = v2 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v24 + 8);
      ObjectType = swift_getObjectType();
      v27 = *(v2 + v8);
      v28 = *(v25 + 8);
      v29 = sub_1002540AC(v27);
      v28(v2, v27, ObjectType, v25, v29);
      swift_unknownObjectRelease();
      return sub_1002540BC(v27);
    }
  }

  return result;
}

uint64_t sub_10024E984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = type metadata accessor for Logger();
  v37 = *(v8 - 8);
  v38 = v8;
  result = __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item;
  v13 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
  v14 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8);
  v15 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16) | (*(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16);
  v16 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16) & 0xFC;
  if ((~v5 & 0xFC) != 0)
  {
    if (v16 != 252)
    {
      result = sub_1002540CC(a1, a2, v5 & 0xFFFFFF, *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item), *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8), *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16) | (*(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16));
      if (result)
      {
        return result;
      }

      goto LABEL_6;
    }
  }

  else if (v16 == 252)
  {
    return result;
  }

  sub_100254E5C(a1, a2, v5);
  sub_100254E5C(v13, v14, v15);
  sub_10025488C(a1, a2, v5);
  sub_10025488C(v13, v14, v15);
LABEL_6:
  v17 = sub_1001D911C();
  v19 = v37;
  v18 = v38;
  (*(v37 + 16))(v11, v17, v38);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v22 = 136315650;
    v23 = _typeName(_:qualified:)();
    v25 = sub_10002C9C8(v23, v24, &v39);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_10002C9C8(*(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier), *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier + 8), &v39);
    *(v22 + 22) = 2082;
    v26 = *(v12 + 16);
    if ((~v26 & 0xFC) != 0)
    {
      v29 = v26 | (*(v12 + 18) << 16);
      v31 = *v12;
      v30 = *(v12 + 8);
      sub_100254DE0(*v12, v30, v29);
      v32 = sub_10024ECFC(v31, v30, v29 & 0xFFFFFF);
      v27 = v33;
      v34 = v31;
      v19 = v37;
      sub_10025488C(v34, v30, v29);
      v28 = v32;
      v18 = v38;
    }

    else
    {
      v27 = 0xE300000000000000;
      v28 = 7104878;
    }

    v35 = sub_10002C9C8(v28, v27, &v39);

    *(v22 + 24) = v35;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%s]<%s> setItem - value: %{public}s", v22, 0x20u);
    swift_arrayDestroy();
  }

  return (*(v19 + 8))(v11, v18);
}

unint64_t sub_10024ECFC(uint64_t a1, void *a2, int a3)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      _StringGuts.grow(_:)(41);

      v6 = 0x692865726F74732ELL;
    }

    else
    {
      _StringGuts.grow(_:)(43);

      v6 = 0x7972617262696C2ELL;
    }

    v34 = v6;
    v10._countAndFlagsBits = a1;
    v10._object = a2;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 0x203A646E696B202CLL;
    v11._object = 0xE800000000000000;
    String.append(_:)(v11);
    v9 = a3 & 0x3F;
  }

  else
  {
    _StringGuts.grow(_:)(48);

    v34 = 0xD000000000000012;
    v7._countAndFlagsBits = a1;
    v7._object = a2;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 0x203A646E696B202CLL;
    v8._object = 0xE800000000000000;
    String.append(_:)(v8);
    v9 = a3;
  }

  v12 = 0xED0000636973754DLL;
  if (v9 != 2)
  {
    v12 = 0xED00006F65646956;
  }

  v13 = 0x646956636973756DLL;
  v14 = 0xEA00000000006F65;
  if (!v9)
  {
    v13 = 0x636973756DLL;
    v14 = 0xE500000000000000;
  }

  if (v9 <= 1)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x646564616F6C7075;
  }

  if (v9 <= 1)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  v18._countAndFlagsBits = 0x203A7865202CLL;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v19 = a3 & 0xFF00;
  if ((a3 & 0x100) != 0)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if ((a3 & 0x100) != 0)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  if (v19 == 512)
  {
    v22 = 7104878;
  }

  else
  {
    v22 = v20;
  }

  if (v19 == 512)
  {
    v23 = 0xE300000000000000;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23;
  String.append(_:)(*&v22);

  v25._countAndFlagsBits = 0x203A62696C202CLL;
  v25._object = 0xE700000000000000;
  String.append(_:)(v25);
  v26 = a3 & 0xFF0000;
  if ((a3 & 0x10000) != 0)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if ((a3 & 0x10000) != 0)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  if (v26 == 0x20000)
  {
    v29 = 7104878;
  }

  else
  {
    v29 = v27;
  }

  if (v26 == 0x20000)
  {
    v30 = 0xE300000000000000;
  }

  else
  {
    v30 = v28;
  }

  v31 = v30;
  String.append(_:)(*&v29);

  v32._countAndFlagsBits = 41;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  return v34;
}