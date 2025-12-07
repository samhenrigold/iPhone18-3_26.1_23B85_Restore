uint64_t sub_100125E0C()
{
  type metadata accessor for AccountDataState(0);
  v0 = sub_100125790(sub_100126408);
  v1 = (v0 == 2) | v0;
  v2 = sub_100125790(sub_100125ED4);
  return (v1 ^ ((v2 == 2) | v2)) & 1;
}

uint64_t sub_100125ED4@<X0>(_BYTE *a2@<X8>)
{
  result = static Date.> infix(_:_:)();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100125F10(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v21 = 0;
  v22 = v3;
  v9 = 0;
  while (v6)
  {
LABEL_8:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(a2 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_10011723C(*(a2 + 56) + 40 * v11, &v29);
    v24 = v29;
    v25 = v30;
    v15 = v31;

    if (!v13)
    {
LABEL_28:

      return v21;
    }

    v39[0] = v24;
    v39[1] = v25;
    v40 = v15;
    *&v29 = v14;
    *(&v29 + 1) = v13;
    __chkstk_darwin(v16);
    if (sub_10015D6FC())
    {
      sub_100117298(v39);

      v3 = v22;
      goto LABEL_26;
    }

    if (*(a1 + 16))
    {
      v17 = sub_10014EB30(v14, v13);
      v19 = v18;

      v3 = v22;
      if (v19)
      {
        sub_10011723C(*(a1 + 56) + 40 * v17, &v36);
      }

      else
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
      }
    }

    else
    {

      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      v3 = v22;
    }

    sub_10011723C(v39, v35);
    sub_100012C94(&v36, &v29, &qword_1002DD690, &qword_1002388C0);
    sub_100012C94(v35, &v32, &qword_1002DD690, &qword_1002388C0);
    if (*(&v30 + 1))
    {
      sub_100012C94(&v29, v28, &qword_1002DD690, &qword_1002388C0);
      if (*(&v33 + 1))
      {
        v26[0] = v32;
        v26[1] = v33;
        v27 = v34;
        v20 = static AnyHashable.== infix(_:_:)();
        sub_100117298(v26);
        sub_1000038EC(v35);
        sub_1000038EC(&v36);
        sub_100117298(v39);
        sub_100117298(v28);
        result = sub_1000038EC(&v29);
        if (v20)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }

      sub_1000038EC(v35);
      sub_1000038EC(&v36);
      sub_100117298(v39);
      sub_100117298(v28);
    }

    else
    {
      sub_1000038EC(v35);
      sub_1000038EC(&v36);
      sub_100117298(v39);
      if (!*(&v33 + 1))
      {
        result = sub_100004E24(&v29, &qword_1002DD690, &qword_1002388C0);
        goto LABEL_26;
      }
    }

    result = sub_100004E24(&v29, &qword_1002DD698, &unk_100238520);
LABEL_24:
    if (v21 == -1)
    {
      goto LABEL_30;
    }

    ++v21;
LABEL_26:
    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      goto LABEL_28;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_1001262D8()
{
  result = qword_1002DD688;
  if (!qword_1002DD688)
  {
    result = swift_getWitnessTable(byte_10023863C, &type metadata for AccountDataPayload, v0, v1);
    atomic_store(result, &qword_1002DD688);
  }

  return result;
}

uint64_t sub_10012634C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountDataServerRequest.Put(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001263B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000307C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100126448(uint64_t a1)
{
  sub_10003D104(319, &qword_1002DD708, &type metadata for AccountDataPayload);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_100126598(319, &qword_1002DA9F8, &type metadata accessor for Date);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v6 = type metadata accessor for Date();
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_10003D104(319, &qword_1002DD710, &type metadata for AccountDataChange);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_100126598(319, &unk_1002DD718, type metadata accessor for CachedServerDataSyncAttempt);
      if (v9 > 0x3F)
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

void sub_100126598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AccountDataChange(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65283;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountDataChange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100126794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C796150776172 && a2 == 0xEA00000000006461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4173657269707865 && a2 == 0xE900000000000074;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7466417972746572 && a2 == 0xEA00000000007265;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001002737F0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6168436C61636F6CLL && a2 == 0xEB0000000065676ELL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4274736575716572 && a2 == 0xEE0074416E616765;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x746867696C666E69 && a2 == 0xEE0065676E616843;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C6961467473616CLL && a2 == 0xED00007441657275;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000017 && 0x8000000100272610 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x8000000100273E40 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x6C69614668747561 && a2 == 0xED00007441657275)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

uint64_t sub_100126B24(char a1)
{
  result = 0x6F6C796150776172;
  switch(a1)
  {
    case 1:
      result = 0x4173657269707865;
      break;
    case 2:
      result = 0x7466417972746572;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6168436C61636F6CLL;
      break;
    case 5:
      result = 0x4274736575716572;
      break;
    case 6:
      result = 0x746867696C666E69;
      break;
    case 7:
      v3 = 1953718636;
      goto LABEL_11;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      v3 = 1752462689;
LABEL_11:
      result = v3 | 0x6C69614600000000;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100126C8C()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v131 = type metadata accessor for CachedServerDataSyncAttempt(0);
  sub_10000307C();
  __chkstk_darwin(v4);
  sub_10000306C();
  v125 = (v6 - v5);
  v7 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  sub_1000030B8(v7);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100003018();
  v127 = v9;
  v129 = sub_100099DF4(&qword_1002DD7D0, &unk_100238880);
  sub_10000307C();
  sub_100003774();
  __chkstk_darwin(v10);
  sub_100003018();
  v130 = v11;
  v12 = type metadata accessor for Date();
  sub_100003724();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10000306C();
  v137 = v17 - v16;
  v18 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v19 = sub_1000030B8(v18);
  __chkstk_darwin(v19);
  sub_1000037D4();
  v126 = v20;
  sub_100005238();
  __chkstk_darwin(v21);
  sub_100002DD0();
  v132 = v22;
  sub_100005238();
  __chkstk_darwin(v23);
  sub_100002DD0();
  v134 = v24;
  sub_100005238();
  __chkstk_darwin(v25);
  v27 = &v120[-v26];
  __chkstk_darwin(v28);
  v30 = &v120[-v29];
  v138 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_10000307C();
  __chkstk_darwin(v31);
  sub_1000037D4();
  v128 = v32;
  sub_100005238();
  __chkstk_darwin(v33);
  sub_100002DD0();
  v133 = v34;
  sub_100005238();
  __chkstk_darwin(v35);
  sub_100002DD0();
  v135 = v36;
  sub_100005238();
  __chkstk_darwin(v37);
  v39 = &v120[-v38];
  __chkstk_darwin(v40);
  v42 = &v120[-v41];
  memcpy(v143, v3, sizeof(v143));
  memcpy(v144, v1, sizeof(v144));
  memcpy(v142, v3, 0x148uLL);
  memcpy(&v142[328], v1, 0x148uLL);
  memcpy(v145, v3, 0x148uLL);
  if (sub_100013900(v145) == 1)
  {
    memcpy(v141, &v142[328], 0x148uLL);
    if (sub_100013900(v141) == 1)
    {
      v136 = v1;
      v124 = v14;
      memcpy(v140, v142, sizeof(v140));
      sub_10012EC78();
      sub_10012EC78();
      sub_100004E24(v140, &qword_1002DB920, &qword_100238870);
      goto LABEL_7;
    }

LABEL_5:
    memcpy(v141, v142, sizeof(v141));
    sub_10003D1E4();
    sub_10003D1E4();
    v43 = &unk_1002DD7D8;
    v44 = &unk_100238890;
    v45 = v141;
    goto LABEL_26;
  }

  memcpy(v141, &v142[328], 0x148uLL);
  if (sub_100013900(v141) == 1)
  {
    goto LABEL_5;
  }

  v136 = v1;
  v124 = v14;
  memcpy(v139, &v142[328], sizeof(v139));
  v46 = sub_10012B794();
  sub_10003D1E4();
  sub_10003D1E4();
  sub_100004E24(v139, &qword_1002DB920, &qword_100238870);
  memcpy(v140, v142, sizeof(v140));
  sub_100004E24(v140, &qword_1002DB920, &qword_100238870);
  if (!v46)
  {
    goto LABEL_27;
  }

LABEL_7:
  v122 = type metadata accessor for AccountDataState(0);
  v123 = v12;
  v47 = *(v138 + 48);
  sub_10012EC78();
  v48 = v123;
  sub_10012EC78();
  sub_1000071D8(v42);
  if (v50)
  {
    sub_1000071D8(&v42[v47]);
    if (v50)
    {
      sub_100004E24(v42, &qword_1002DA970, &qword_1002318B0);
      v49 = v48;
      goto LABEL_17;
    }

LABEL_15:
    v43 = &qword_1002DACF0;
    v44 = &qword_100232140;
    v45 = v42;
    goto LABEL_26;
  }

  sub_10003D1E4();
  sub_1000071D8(&v42[v47]);
  v51 = v124;
  if (v50)
  {
    (*(v124 + 8))(v30, v48);
    goto LABEL_15;
  }

  v52 = v137;
  (*(v124 + 32))(v137, &v42[v47], v48);
  sub_100004B94();
  sub_10012D8A8(v53, v54, &protocol conformance descriptor for Date);
  v49 = v48;
  v121 = dispatch thunk of static Equatable.== infix(_:_:)();
  v55 = *(v51 + 8);
  v55(v52, v48);
  v55(v30, v48);
  sub_100004E24(v42, &qword_1002DA970, &qword_1002318B0);
  if ((v121 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_17:
  v56 = v122;
  v57 = *(v138 + 48);
  sub_10012EC78();
  sub_10012EC78();
  sub_10000B3A0(v39, 1, v49);
  v58 = v49;
  if (v50)
  {
    sub_1000071D8(&v39[v57]);
    if (v50)
    {
      sub_100004E24(v39, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_29;
    }

LABEL_25:
    v43 = &qword_1002DACF0;
    v44 = &qword_100232140;
    v45 = v39;
    goto LABEL_26;
  }

  sub_10003D1E4();
  sub_1000071D8(&v39[v57]);
  v60 = v124;
  if (v59)
  {
    (*(v124 + 8))(v27, v49);
    goto LABEL_25;
  }

  v61 = v137;
  (*(v124 + 32))(v137, &v39[v57], v58);
  sub_100004B94();
  sub_10012D8A8(v62, v63, &protocol conformance descriptor for Date);
  v64 = dispatch thunk of static Equatable.== infix(_:_:)();
  v65 = *(v60 + 8);
  v65(v61, v58);
  v65(v27, v58);
  sub_100004E24(v39, &qword_1002DA970, &qword_1002318B0);
  if ((v64 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_29:
  v66 = v136;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v67 = sub_100002E90(v56[8]);
  if (v50)
  {
    if (v69 != 3)
    {
      goto LABEL_27;
    }
  }

  else if (v69 == 3 || (sub_100129094(v67, v68) & 1) == 0)
  {
    goto LABEL_27;
  }

  v70 = v56[9];
  v71 = *(v138 + 48);
  v72 = v135;
  sub_100004088(&v3[v70], v135);
  sub_100004088(&v66[v70], v72 + v71);
  v73 = v123;
  sub_10000B3A0(v72, 1, v123);
  if (v50)
  {
    sub_1000071D8(v72 + v71);
    if (!v50)
    {
      goto LABEL_44;
    }

    sub_100004E24(v72, &qword_1002DA970, &qword_1002318B0);
  }

  else
  {
    v74 = v134;
    sub_10003D1E4();
    sub_1000071D8(v72 + v71);
    if (v75)
    {
      (*(v124 + 8))(v74, v73);
      goto LABEL_44;
    }

    v76 = sub_10000DF10();
    v77(v76);
    sub_100004B94();
    sub_10012D8A8(v78, v79, &protocol conformance descriptor for Date);
    dispatch thunk of static Equatable.== infix(_:_:)();
    v80 = sub_10000AE44();
    qword_1002318B0(v80, v81);
    qword_1002318B0(v74, v73);
    sub_100004E24(v135, &qword_1002DA970, &qword_1002318B0);
    if ((&qword_1002DA970 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v82 = sub_100002E90(v56[10]);
  if (v50)
  {
    if (v84 != 3)
    {
      goto LABEL_27;
    }
  }

  else if (v84 == 3 || (sub_100129094(v82, v83) & 1) == 0)
  {
    goto LABEL_27;
  }

  v85 = v56[11];
  v86 = *(v138 + 48);
  v72 = v133;
  sub_100004088(&v3[v85], v133);
  sub_100004088(&v66[v85], v72 + v86);
  v87 = v123;
  sub_10000B3A0(v72, 1, v123);
  if (v50)
  {
    sub_1000071D8(v72 + v86);
    if (v50)
    {
      sub_100004E24(v72, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_61;
    }

LABEL_44:
    v43 = &qword_1002DACF0;
    v44 = &qword_100232140;
    v45 = v72;
    goto LABEL_26;
  }

  v88 = v132;
  sub_10003D1E4();
  sub_1000071D8(v72 + v86);
  if (v89)
  {
    (*(v124 + 8))(v88, v87);
    goto LABEL_44;
  }

  v90 = sub_10000DF10();
  v91(v90);
  sub_100004B94();
  sub_10012D8A8(v92, v93, &protocol conformance descriptor for Date);
  dispatch thunk of static Equatable.== infix(_:_:)();
  v94 = sub_10000AE44();
  qword_1002318B0(v94, v95);
  v96 = v88;
  v56 = v122;
  qword_1002318B0(v96, v87);
  sub_100004E24(v72, &qword_1002DA970, &qword_1002318B0);
  if (&qword_1002DA970)
  {
LABEL_61:
    if (*&v3[v56[12]] != *&v66[v56[12]])
    {
      goto LABEL_27;
    }

    v97 = v56[13];
    v98 = v130;
    v99 = *(v129 + 48);
    sub_100004088(&v3[v97], v130);
    v100 = &v66[v97];
    v101 = v98;
    sub_100004088(v100, v98 + v99);
    v102 = v131;
    sub_10000B3A0(v98, 1, v131);
    if (v50)
    {
      sub_10000B3A0(v98 + v99, 1, v102);
      if (v50)
      {
        sub_100004E24(v98, &qword_1002DB940, &qword_100232B48);
LABEL_67:
        v103 = v56[14];
        v104 = *(v138 + 48);
        v105 = &v3[v103];
        v106 = v128;
        sub_100004088(v105, v128);
        sub_100004088(&v66[v103], v106 + v104);
        sub_10000B3A0(v106, 1, v123);
        if (v50)
        {
          sub_1000071D8(v106 + v104);
          if (v50)
          {
            sub_100004E24(v128, &qword_1002DA970, &qword_1002318B0);
            goto LABEL_27;
          }
        }

        else
        {
          sub_10003D1E4();
          sub_1000071D8(v106 + v104);
          if (!v111)
          {
            v112 = v123;
            v113 = v124;
            v114 = v128;
            (*(v124 + 32))(v137, &v128[v104], v123);
            sub_100004B94();
            sub_10012D8A8(v115, v116, &protocol conformance descriptor for Date);
            v117 = v126;
            dispatch thunk of static Equatable.== infix(_:_:)();
            v118 = *(v113 + 8);
            v119 = sub_100005CF0();
            v118(v119);
            (v118)(v117, v112);
            sub_100004E24(v114, &qword_1002DA970, &qword_1002318B0);
            goto LABEL_27;
          }

          (*(v124 + 8))(v126, v123);
        }

        v43 = &qword_1002DACF0;
        v44 = &qword_100232140;
        v45 = v128;
        goto LABEL_26;
      }
    }

    else
    {
      v107 = v127;
      sub_10003D1E4();
      sub_10000B3A0(v98 + v99, 1, v102);
      if (!v108)
      {
        sub_10012EB84();
        v109 = v125;
        sub_10012E910();
        if (*v107 == *v109)
        {
          v110 = static Date.== infix(_:_:)();
          sub_10012DAE4();
          sub_10012DAE4();
          sub_100004E24(v101, &qword_1002DB940, &qword_100232B48);
          v56 = v122;
          if ((v110 & 1) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_67;
        }

        sub_10012DAE4();
        sub_10012DAE4();
        v43 = &qword_1002DB940;
        v44 = &qword_100232B48;
        v45 = v101;
LABEL_26:
        sub_100004E24(v45, v43, v44);
        goto LABEL_27;
      }

      sub_10000A248();
      sub_10012DAE4();
    }

    v43 = &qword_1002DD7D0;
    v44 = &unk_100238880;
    v45 = v98;
    goto LABEL_26;
  }

LABEL_27:
  sub_1000027F8();
}

void sub_100127ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  v26 = v23;
  v28 = v27;
  v29 = sub_100099DF4(&qword_1002DD7B0, &qword_100238878);
  sub_100003724();
  v31 = v30;
  sub_100003774();
  __chkstk_darwin(v32);
  sub_100002970();
  sub_100008B3C(v28, v28[3]);
  sub_10012D9E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v40, v26, sizeof(v40));
  memcpy(v39, v26, sizeof(v39));
  sub_10003D1E4();
  sub_10012DB38();
  sub_10012EB78();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v24)
  {
    memcpy(v38, v39, sizeof(v38));
    sub_100004E24(v38, &qword_1002DB920, &qword_100238870);
  }

  else
  {
    memcpy(v38, v39, sizeof(v38));
    sub_100004E24(v38, &qword_1002DB920, &qword_100238870);
    v37 = type metadata accessor for AccountDataState(0);
    type metadata accessor for Date();
    sub_100004B94();
    sub_10012D8A8(v33, v34, &protocol conformance descriptor for Date);
    sub_10000C650();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000EE58(v37[6]);
    sub_10000C650();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000EE58(v37[7]);
    sub_10000C650();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10012DB8C();
    sub_10012EB78();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000EE58(v37[9]);
    sub_10000C650();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10012EB78();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000EE58(v37[11]);
    sub_10000C650();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10012EBF4(8);
    sub_10012EB78();
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for CachedServerDataSyncAttempt(0);
    sub_10012EBB4();
    sub_10012D8A8(v35, v36, byte_100239DEC);
    sub_10012EB78();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000EE58(v37[14]);
    sub_10000C650();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v31 + 8))(v25, v29);
  sub_100005074();
}

void sub_100127EB4()
{
  sub_100004168();
  v2 = v0;
  v4 = v3;
  v63 = type metadata accessor for CachedServerDataSyncAttempt(0);
  sub_10000307C();
  __chkstk_darwin(v5);
  sub_10000306C();
  v8 = (v7 - v6);
  v9 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  sub_1000030B8(v9);
  sub_100003774();
  __chkstk_darwin(v10);
  sub_100003018();
  v61 = v11;
  v12 = type metadata accessor for Date();
  sub_100003724();
  v64 = v13;
  __chkstk_darwin(v14);
  sub_10000306C();
  v17 = v16 - v15;
  v18 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v19 = sub_1000030B8(v18);
  __chkstk_darwin(v19);
  sub_1000037D4();
  v62 = v20;
  sub_100005238();
  __chkstk_darwin(v21);
  sub_100002DD0();
  v60 = v22;
  sub_100005238();
  __chkstk_darwin(v23);
  sub_100002DD0();
  v59 = v24;
  sub_100005238();
  __chkstk_darwin(v25);
  sub_10012ECA4();
  __chkstk_darwin(v26);
  v28 = &v58 - v27;
  sub_10012EC60(&v65);
  sub_10012EC60(v66);
  if (sub_100013900(v66) == 1)
  {
    sub_100004FC8();
  }

  else
  {
    sub_10012EC00();
    sub_10012C0E0(v4);
  }

  v29 = type metadata accessor for AccountDataState(0);
  sub_10003D1E4();
  sub_1000075D8(v28);
  if (v30)
  {
    sub_100004FC8();
  }

  else
  {
    v58 = v8;
    (*(v64 + 32))(v17, v28, v12);
    sub_10012EC00();
    sub_100004B94();
    sub_10012D8A8(v31, v32, &protocol conformance descriptor for Date);
    sub_10000D04C();
    dispatch thunk of Hashable.hash(into:)();
    v8 = v58;
    v33 = sub_100013DE8();
    v34(v33);
  }

  sub_10003D1E4();
  sub_1000075D8(v1);
  if (v30)
  {
    sub_100004FC8();
  }

  else
  {
    (*(v64 + 32))(v17, v1, v12);
    sub_10012EC00();
    sub_100004B94();
    sub_10012D8A8(v35, v36, &protocol conformance descriptor for Date);
    sub_10000D04C();
    dispatch thunk of Hashable.hash(into:)();
    v37 = sub_10000BCE0();
    v38(v37);
  }

  sub_100004B94();
  sub_10012D8A8(v39, v40, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v0 + v29[8]) == 3)
  {
    sub_100004FC8();
  }

  else
  {
    sub_10012EC00();
    sub_10012923C();
  }

  v41 = v59;
  sub_10003D1E4();
  sub_1000075D8(v41);
  if (v30)
  {
    sub_100004FC8();
  }

  else
  {
    v42 = sub_100010E3C();
    v43(v42);
    sub_10012EC00();
    sub_10000D04C();
    dispatch thunk of Hashable.hash(into:)();
    v44 = sub_10000BCE0();
    v45(v44);
  }

  if (*(v2 + v29[10]) == 3)
  {
    sub_100004FC8();
  }

  else
  {
    sub_10012EC00();
    sub_10012923C();
  }

  v46 = v60;
  sub_10003D1E4();
  sub_1000075D8(v46);
  if (v30)
  {
    sub_100004FC8();
  }

  else
  {
    v47 = sub_100010E3C();
    v48(v47);
    sub_10012EC00();
    sub_10000D04C();
    dispatch thunk of Hashable.hash(into:)();
    v49 = sub_10000BCE0();
    v50(v49);
  }

  v51 = v63;
  Hasher._combine(_:)(*(v2 + v29[12]));
  v52 = v61;
  sub_10003D1E4();
  sub_10000B3A0(v52, 1, v51);
  if (v30)
  {
    sub_100004FC8();
  }

  else
  {
    sub_10012EB84();
    sub_10012E910();
    sub_10012EC00();
    Hasher._combine(_:)(*v8);
    dispatch thunk of Hashable.hash(into:)();
    sub_10000A248();
    sub_10012DAE4();
  }

  v53 = v62;
  sub_10003D1E4();
  sub_1000075D8(v53);
  if (v30)
  {
    sub_100004FC8();
  }

  else
  {
    v54 = sub_100010E3C();
    v55(v54);
    sub_10012EC00();
    sub_10000D04C();
    dispatch thunk of Hashable.hash(into:)();
    v56 = sub_100013DE8();
    v57(v56);
  }

  sub_1000027F8();
}

void sub_100128490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  v25 = v24;
  v79 = v26;
  v27 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  sub_1000030B8(v27);
  sub_100003774();
  __chkstk_darwin(v28);
  sub_100003018();
  v81 = v29;
  type metadata accessor for Date();
  sub_100003724();
  v86 = v31;
  v87 = v30;
  __chkstk_darwin(v30);
  sub_10000306C();
  v82 = v33 - v32;
  v34 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v35 = sub_1000030B8(v34);
  __chkstk_darwin(v35);
  sub_1000037D4();
  v80 = v36;
  sub_100005238();
  __chkstk_darwin(v37);
  v39 = v77 - v38;
  __chkstk_darwin(v40);
  sub_10012ECA4();
  __chkstk_darwin(v41);
  v43 = v77 - v42;
  __chkstk_darwin(v44);
  v85 = sub_100099DF4(&qword_1002DD788, &qword_100238868);
  sub_100003724();
  v83 = v45;
  sub_100003774();
  __chkstk_darwin(v46);
  v48 = v77 - v47;
  v91 = type metadata accessor for AccountDataState(0);
  sub_10000307C();
  __chkstk_darwin(v49);
  sub_10000306C();
  v88 = v25;
  v89 = (v51 - v50);
  v52 = v25[4];
  sub_100008B3C(v25, v25[3]);
  sub_10012D9E8();
  v84 = v48;
  v53 = v90;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  LODWORD(v54) = v53;
  if (v53)
  {
    v90 = v53;
    v55 = 0;
    sub_10012EC90();
    v56 = v89;
    sub_100004118(v88);
    v57 = 0;
    if (!v52)
    {
      goto LABEL_12;
    }

LABEL_5:
    v58 = v91;
    sub_100004E24(&v56[v91[5]], &qword_1002DA970, &qword_1002318B0);
    if (v43)
    {
      goto LABEL_13;
    }

LABEL_6:
    if (!v54)
    {
      goto LABEL_14;
    }

LABEL_7:
    (*(v86 + 8))(&v56[v58[7]], v87);
    if (v25)
    {
      goto LABEL_15;
    }

LABEL_8:
    if (!v57)
    {
      goto LABEL_16;
    }

LABEL_9:
    sub_100004E24(&v56[v58[11]], &qword_1002DA970, &qword_1002318B0);
    if ((v55 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v90 = v43;
  v77[1] = v39;
  v78 = v23;
  sub_10012DA3C();
  LODWORD(v25) = v84;
  LODWORD(v43) = v85;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v56 = v89;
  memcpy(v89, v92, 0x148uLL);
  LOBYTE(a11) = 1;
  sub_100004B94();
  sub_10012D8A8(v59, v60, &protocol conformance descriptor for Date);
  v54 = v87;
  sub_1000045C8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100012D44();
  sub_10012EBF4(2);
  sub_1000045C8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100012D44();
  sub_10012EBF4(3);
  v61 = v82;
  sub_1000045C8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v86 + 32))(&v56[v91[7]], v61, v54);
  sub_10012DA90();
  sub_10012EC38(&type metadata for AccountDataChange);
  *&v56[v91[8]] = a11;
  sub_10012EBF4(5);
  v62 = v78;
  sub_1000045C8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100012D44();
  sub_10012EC38(&type metadata for AccountDataChange);
  *&v56[v91[10]] = a11;
  sub_10012EBF4(7);
  sub_1000045C8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v90 = 0;
  sub_100012D44();
  v63 = v90;
  v64 = KeyedDecodingContainer.decode(_:forKey:)();
  v90 = v63;
  if (v63)
  {
    v65 = sub_10000492C();
    v66(v65);
    sub_100004118(v88);
    v55 = 0;
    sub_10000B028();
    v57 = 1;
  }

  else
  {
    *&v56[v91[12]] = v64;
    type metadata accessor for CachedServerDataSyncAttempt(0);
    sub_10012EBB4();
    sub_10012D8A8(v67, v68, byte_100239E14);
    v69 = v90;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v90 = v69;
    if (v69)
    {
      v70 = sub_10012EC18();
      v71(v70);
      sub_100004118(v88);
      v55 = 0;
      sub_10000B028();
      v57 = 1;
    }

    else
    {
      sub_100012D44();
      sub_10012EBF4(10);
      LODWORD(v25) = v84;
      v72 = v90;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v90 = v72;
      if (!v72)
      {
        v75 = sub_10012EC18();
        v76(v75);
        sub_100012D44();
        sub_10012E8B8();
        sub_100004118(v88);
        sub_10012DAE4();
        goto LABEL_18;
      }

      v73 = sub_10012EC18();
      v74(v73);
      sub_100004118(v88);
      sub_10000B028();
      v57 = 1;
      v55 = 1;
    }

    v56 = v89;
  }

  memcpy(v92, v56, 0x148uLL);
  sub_100004E24(v92, &qword_1002DB920, &qword_100238870);
  if (v62)
  {
    goto LABEL_5;
  }

LABEL_12:
  v58 = v91;
  if (!v43)
  {
    goto LABEL_6;
  }

LABEL_13:
  sub_100004E24(&v56[v58[6]], &qword_1002DA970, &qword_1002318B0);
  if (v54)
  {
    goto LABEL_7;
  }

LABEL_14:
  if (!v25)
  {
    goto LABEL_8;
  }

LABEL_15:
  sub_100004E24(&v56[v58[9]], &qword_1002DA970, &qword_1002318B0);
  if (v57)
  {
    goto LABEL_9;
  }

LABEL_16:
  if (v55)
  {
LABEL_17:
    sub_100004E24(&v56[v58[13]], &qword_1002DB940, &qword_100232B48);
  }

LABEL_18:
  sub_100005074();
}

uint64_t sub_100128D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100126794(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100128DB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100126B1C();
  *a1 = result;
  return result;
}

uint64_t sub_100128DE0(uint64_t a1)
{
  v2 = sub_10012D9E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100128E1C(uint64_t a1)
{
  v2 = sub_10012D9E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100128ED4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3C20, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100128F28(char a1)
{
  if (a1)
  {
    return 0x6C616E6F73726570;
  }

  else
  {
    return 0x79616C506F747561;
  }
}

uint64_t sub_100128F90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100128ED4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100128FC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100128F28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100128FF4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100128ED4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10012901C(uint64_t a1)
{
  v2 = sub_10012DBE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100129058(uint64_t a1)
{
  v2 = sub_10012DBE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100129094(int a1, int a2)
{
  if (a1 == 2)
  {
    if (a2 != 2)
    {
      return 0;
    }

LABEL_6:
    if (BYTE1(a1) == 2)
    {
      if (BYTE1(a2) != 2)
      {
        return 0;
      }
    }

    else if (BYTE1(a2) == 2 || ((BYTE1(a2) ^ BYTE1(a1)) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (a2 != 2 && ((a2 ^ a1) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100129108(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DD7F0, &qword_1002388A0);
  sub_100003724();
  v6 = v5;
  sub_100003774();
  __chkstk_darwin(v7);
  sub_100002970();
  v8 = sub_10000492C();
  sub_100008B3C(v8, v9);
  sub_10012DBE0();
  sub_10000CF84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10012EB78();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    sub_10000355C();
    sub_10012EB78();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v3, v4);
}

void sub_10012923C()
{
  sub_100002FBC();
  v3 = v2;
  if (v1 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = v0 & 1;
  }

  Hasher._combine(_:)(v4);
  if (v3 == 2)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = (v0 >> 8) & 1;
  }

  Hasher._combine(_:)(v5);
}

Swift::Int sub_1001292AC(unsigned int a1)
{
  v2 = a1;
  v3 = BYTE1(a1);
  sub_100005BE8();
  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = a1 & 1;
  }

  Hasher._combine(_:)(v4);
  if (v3 == 2)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = (a1 >> 8) & 1;
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_100129340(void *a1)
{
  sub_100099DF4(&qword_1002DD7E0, &qword_100238898);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v3);
  sub_100004880();
  v4 = a1[3];
  sub_100008B3C(a1, v4);
  sub_10012DBE0();
  sub_10000CF84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004118(a1);
  }

  else
  {
    v5 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10000355C();
    v6 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v7 = sub_100005CF0();
    v8(v7);
    sub_100004118(a1);
    return v5 | (v6 << 8);
  }

  return v4;
}

uint64_t sub_1001294BC()
{
  sub_100002FBC();
  if ((static AccountIdentity.DSID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for AccountDataServerRequest.Put(0);
  if (*(v1 + *(v2 + 20)) != *(v0 + *(v2 + 20)))
  {
    return 0;
  }

  v3 = *(v2 + 24);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);

  return sub_100129094(v4, v5);
}

void sub_10012952C()
{
  sub_100002834();
  type metadata accessor for AccountIdentity.DSID();
  sub_100006A10();
  sub_10012D8A8(v1, v2, &protocol conformance descriptor for AccountIdentity.DSID);
  sub_100008A44();
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for AccountDataServerRequest.Put(0);
  Hasher._combine(_:)(*(v0 + *(v3 + 20)));
  v4 = (v0 + *(v3 + 24));
  v5 = *v4;
  v6 = v4[1];
  if (v5 == 2)
  {
    v7 = 0;
  }

  else
  {
    sub_100005C20();
    v7 = v5 & 1;
  }

  Hasher._combine(_:)(v7);
  if (v6 == 2)
  {
    v8 = 0;
  }

  else
  {
    sub_100005C20();
    v8 = v6 & 1;
  }

  Hasher._combine(_:)(v8);
}

uint64_t sub_100129600()
{
  sub_100002834();
  type metadata accessor for AccountIdentity.DSID();
  sub_100006A10();
  sub_10012D8A8(v0, v1, &protocol conformance descriptor for AccountIdentity.DSID);
  sub_100008A44();

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10012966C()
{
  sub_100005BE8();
  type metadata accessor for AccountIdentity.DSID();
  sub_100006A10();
  sub_10012D8A8(v0, v1, &protocol conformance descriptor for AccountIdentity.DSID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_1001296DC()
{
  sub_100004168();
  v0 = type metadata accessor for AccountDataServerRequest.Get(0);
  v1 = sub_1000030B8(v0);
  __chkstk_darwin(v1);
  sub_10000306C();
  v2 = sub_100005140();
  v19 = type metadata accessor for AccountDataServerRequest.Put(v2);
  sub_10000307C();
  __chkstk_darwin(v3);
  sub_10000306C();
  v6 = v5 - v4;
  type metadata accessor for AccountDataServerRequest(0);
  sub_10000307C();
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_100099DF4(&qword_1002DDBE8, &qword_100238FE8);
  sub_1000030B8(v11);
  sub_100003774();
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_10012E8B8();
  sub_10012E8B8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000AB4C();
    sub_10012E8B8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10001405C();
      sub_10012E910();
      static AccountIdentity.DSID.== infix(_:_:)();
      sub_10012DAE4();
      sub_100005CF0();
      sub_10012DAE4();
      sub_10012EB50();
      goto LABEL_13;
    }

    sub_10012EB9C();
LABEL_7:
    sub_10012DAE4();
    sub_100004E24(v14, &qword_1002DDBE8, &qword_100238FE8);
    goto LABEL_13;
  }

  sub_10000AB4C();
  sub_1000050CC();
  sub_10012E8B8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000066BC();
    goto LABEL_7;
  }

  sub_10000D510();
  sub_10012E910();
  sub_10000DBC0();
  if ((static AccountIdentity.DSID.== infix(_:_:)() & 1) != 0 && *&v10[*(v19 + 20)] == *(v6 + *(v19 + 20)))
  {
    v15 = *(v19 + 24);
    v16 = *(v6 + v15);
    v17 = *&v10[v15];
    sub_1000066BC();
    sub_10012DAE4();
    sub_100129094(v17, v16);
  }

  else
  {
    sub_1000066BC();
    sub_10012DAE4();
  }

  sub_1000066BC();
  sub_10012DAE4();
  sub_10012EB50();
LABEL_13:
  sub_1000027F8();
}

uint64_t sub_1001299DC()
{
  v1 = sub_100002834();
  v2 = type metadata accessor for AccountDataServerRequest.Get(v1);
  v3 = sub_1000030B8(v2);
  __chkstk_darwin(v3);
  sub_10000306C();
  v4 = type metadata accessor for AccountDataServerRequest.Put(0);
  sub_10000307C();
  __chkstk_darwin(v5);
  sub_10000306C();
  v6 = sub_100005140();
  type metadata accessor for AccountDataServerRequest(v6);
  sub_10000307C();
  __chkstk_darwin(v7);
  sub_10000306C();
  sub_10000AB4C();
  sub_10012E8B8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001405C();
    sub_100005CF0();
    sub_10012E910();
    Hasher._combine(_:)(1uLL);
    type metadata accessor for AccountIdentity.DSID();
    sub_100006A10();
    sub_10012D8A8(v8, v9, &protocol conformance descriptor for AccountIdentity.DSID);
    sub_100008A44();
    dispatch thunk of Hashable.hash(into:)();
    sub_10012EB9C();
  }

  else
  {
    sub_10000D510();
    sub_10012E910();
    Hasher._combine(_:)(0);
    type metadata accessor for AccountIdentity.DSID();
    sub_100006A10();
    sub_10012D8A8(v10, v11, &protocol conformance descriptor for AccountIdentity.DSID);
    sub_100008A44();
    dispatch thunk of Hashable.hash(into:)();
    Hasher._combine(_:)(*(v0 + *(v4 + 20)));
    v12 = (v0 + *(v4 + 24));
    v13 = *v12;
    v14 = v12[1];
    if (v13 == 2)
    {
      v15 = 0;
    }

    else
    {
      sub_100005C20();
      v15 = v13 & 1;
    }

    Hasher._combine(_:)(v15);
    if (v14 == 2)
    {
      v16 = 0;
    }

    else
    {
      sub_100005C20();
      v16 = v14 & 1;
    }

    Hasher._combine(_:)(v16);
    sub_1000066BC();
  }

  return sub_10012DAE4();
}

Swift::Int sub_100129C0C(void (*a1)(_BYTE *))
{
  sub_100005BE8();
  a1(v3);
  return Hasher._finalize()();
}

void sub_100129C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for Date();
  sub_100003724();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_10000306C();
  v27 = sub_100005140();
  v28 = type metadata accessor for AccountDataServerResponse.Errors(v27);
  v29 = sub_1000030B8(v28);
  __chkstk_darwin(v29);
  sub_10000306C();
  v32 = v31 - v30;
  v33 = sub_100099DF4(&qword_1002DDBF0, &qword_100238FF0);
  sub_1000030B8(v33);
  sub_100003774();
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  v38 = *(v37 + 56);
  sub_10012E8B8();
  sub_10012E8B8();
  sub_100099DF4(&qword_1002DDA10, &qword_100238900);
  sub_1000075D8(v36);
  if (!v39)
  {
    sub_10000DBC0();
    sub_10012E8B8();
    sub_1000075D8(&v36[v38]);
    if (!v39)
    {
      (*(v25 + 32))(v20, &v36[v38], v23);
      static Date.== infix(_:_:)();
      v40 = *(v25 + 8);
      v40(v20, v23);
      v40(v32, v23);
      sub_10012EBCC();
      goto LABEL_10;
    }

    (*(v25 + 8))(v32, v23);
LABEL_9:
    sub_100004E24(v36, &qword_1002DDBF0, &qword_100238FF0);
    goto LABEL_10;
  }

  sub_1000075D8(&v36[v38]);
  if (!v39)
  {
    goto LABEL_9;
  }

  sub_10012EBCC();
LABEL_10:
  sub_1000027F8();
}

uint64_t sub_100129E94()
{
  sub_100002FBC();
  sub_10012EC60(&v4);
  memcpy(__dst, v0, sizeof(__dst));
  if (!sub_10012B794())
  {
    return 0;
  }

  v2 = type metadata accessor for AccountDataServerResponse(0);
  if ((static Date.== infix(_:_:)() & 1) == 0 || *(v1 + *(v2 + 24)) != *&v0[*(v2 + 24)])
  {
    return 0;
  }

  return static Date.== infix(_:_:)();
}

uint64_t sub_100129F54(uint64_t a1)
{
  sub_10012EC60(v7);
  sub_10012C0E0(a1);
  v3 = type metadata accessor for AccountDataServerResponse(0);
  type metadata accessor for Date();
  sub_100004B94();
  sub_10012D8A8(v4, v5, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(v3 + 24)));
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10012A02C()
{
  Hasher.init(_seed:)();
  sub_10012EC60(v6);
  sub_10012C0E0(&v5);
  v1 = type metadata accessor for AccountDataServerResponse(0);
  type metadata accessor for Date();
  sub_100004B94();
  sub_10012D8A8(v2, v3, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v0 + *(v1 + 24)));
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10012A11C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = v2 & 1;
  }

  Hasher._combine(_:)(v4);
  if (v3 == 2)
  {
    v5 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = v3 & 1;
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_10012A1B0@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_100129340(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_10012A25C(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for AccountIdentity.DSID();
  sub_10012D8A8(&qword_1002DDBE0, &type metadata accessor for AccountIdentity.DSID, &protocol conformance descriptor for AccountIdentity.DSID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10012A354(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_10012A39C@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 241);
  v4 = HIBYTE(a1);
  if (a1 == 2)
  {
    v5 = *(v2 + 25);
  }

  else
  {
    v5 = a1;
  }

  v7 = *v2;
  v6 = v2[1];
  if (v4 != 2)
  {
    v3 = v4;
  }

  v8 = *(v2 + 24);
  v9 = v2[4];
  v10 = v2[5];
  v12 = v2[9];
  v11 = v2[8];
  v13 = *(v2 + 88);
  v44 = *(v2 + 208);
  v43 = *(v2 + 240);
  v42 = *(v2 + 312);
  v14 = *(v2 + 89);
  *(a2 + 16) = v2[2];
  v15 = *(v2 + 90);
  *(a2 + 24) = v8;
  v16 = *(v2 + 91);
  *(a2 + 25) = v5 & 1;
  v17 = v2[12];
  *(a2 + 32) = v9;
  LOBYTE(v9) = *(v2 + 104);
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  LOBYTE(v12) = *(v2 + 105);
  *(a2 + 88) = v13;
  v18 = *(v2 + 106);
  *(a2 + 89) = v14;
  v19 = *(v2 + 107);
  *(a2 + 90) = v15;
  v20 = *(v2 + 108);
  *(a2 + 91) = v16;
  v21 = *(v2 + 109);
  *(a2 + 96) = v17;
  *(a2 + 104) = v9;
  v22 = v2[14];
  v23 = v2[15];
  *(a2 + 105) = v12;
  *(a2 + 106) = v18;
  v24 = v2[16];
  v25 = v2[17];
  *(a2 + 107) = v19;
  *(a2 + 108) = v20;
  v26 = v2[18];
  v27 = v2[19];
  *(a2 + 109) = v21;
  v28 = *(v2 + 160);
  *(a2 + 112) = v22;
  LOBYTE(v22) = *(v2 + 161);
  *(a2 + 128) = v24;
  *(a2 + 144) = v26;
  v29 = v2[21];
  v30 = v2[22];
  *(a2 + 160) = v28;
  v31 = v2[23];
  *(a2 + 161) = v22;
  v32 = v2[27];
  *(a2 + 168) = v29;
  *(a2 + 184) = v31;
  *(a2 + 208) = v44;
  v33 = v2[31];
  v34 = v2[32];
  *(a2 + 216) = v32;
  *(a2 + 240) = v43;
  LOBYTE(v32) = *(v2 + 264);
  *(a2 + 241) = v3 & 1;
  *(a2 + 248) = v33;
  v35 = v2[34];
  v36 = v2[35];
  *(a2 + 264) = v32;
  *(a2 + 272) = v35;
  v37 = v2[37];
  *(a2 + 288) = v2[36];
  *(a2 + 304) = v2[38];
  *(a2 + 312) = v42;
  *(a2 + 313) = *(v2 + 313);
  v38 = v2[40];
  *(a2 + 48) = *(v2 + 3);
  *(a2 + 320) = v38;
  *(a2 + 192) = *(v2 + 12);
  *a2 = v7;
  *(a2 + 8) = v6;
  v39 = *(v2 + 14);
  v40 = v2[10];
  *(a2 + 40) = v10;
  *(a2 + 80) = v40;
  *(a2 + 120) = v23;
  *(a2 + 136) = v25;
  *(a2 + 152) = v27;
  *(a2 + 176) = v30;
  *(a2 + 224) = v39;
  *(a2 + 256) = v34;
  *(a2 + 280) = v36;
  *(a2 + 296) = v37;
}

uint64_t sub_10012A608(const void *a1)
{
  memcpy(__dst, v1, 0x148uLL);
  sub_1001262D8();
  v3 = DictionaryExpressible.asDictionary()();
  v4 = sub_10014EB30(0xD000000000000013, 0x8000000100273E00);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v3;
    v8 = *(v3 + 24);
    sub_100099DF4(&qword_1002DD838, &qword_1002388C8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);

    sub_100006300((*(v20 + 56) + 40 * v6));
    _NativeDictionary._delete(at:)();
  }

  else
  {
    memset(__dst, 0, 40);
  }

  sub_100004E24(__dst, &qword_1002DD690, &qword_1002388C0);
  memcpy(__dst, a1, 0x148uLL);
  v9 = DictionaryExpressible.asDictionary()();
  v10 = sub_10014EB30(0xD000000000000013, 0x8000000100273E00);
  if (v11)
  {
    v12 = v10;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v9 + 24);
    sub_100099DF4(&qword_1002DD838, &qword_1002388C8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v13, v14);

    sub_100006300((*(v9 + 56) + 40 * v12));
    _NativeDictionary._delete(at:)();
  }

  else
  {
    memset(__dst, 0, 40);
  }

  sub_100004E24(__dst, &qword_1002DD690, &qword_1002388C0);
  v15 = sub_1000050CC();
  sub_100113EE0(v15, v16);
  v18 = v17;

  return v18 & 1;
}

uint64_t sub_10012A858(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E756F6363416361 && a2 == 0xED0000656D614E74;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000100273E00 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x727550776F6C6C61 && a2 == 0xEE00736573616863;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x79616C506F747561 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x8000000100273E60 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x72656D75736E6F63 && a2 == 0xEE007473694C6449;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6142746964657263 && a2 == 0xED000065636E616CLL;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000017 && 0x8000000100273E80 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x8000000100273EA0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000023 && 0x8000000100273EC0 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000015 && 0x8000000100273EF0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000014 && 0x8000000100273F10 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x426F546B73417369 && a2 == 0xEA00000000007975;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000011 && 0x8000000100273F30 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x436461426E497369 && a2 == 0xED00007469646572;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x696D61466E497369 && a2 == 0xEA0000000000796CLL;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000014 && 0x8000000100273F50 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000010 && 0x8000000100273F70 == a2;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x6E756F43326F7369 && a2 == 0xEF65646F43797274;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6E756F43336F7369 && a2 == 0xEF65646F43797274;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000013 && 0x8000000100273F90 == a2;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000019 && 0x8000000100273FB0 == a2;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD00000000000001CLL && 0x8000000100273FD0 == a2;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD00000000000001BLL && 0x8000000100273FF0 == a2;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000010 && 0x8000000100274010 == a2;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000014 && 0x8000000100274030 == a2;
                                                          if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0x6C616E6F73726570 && a2 == 0xEF6E6F6974617A69;
                                                            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x4C656C69666F7270 && a2 == 0xEB000000006B636FLL;
                                                              if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x65446C6961746572 && a2 == 0xEA00000000006F6DLL;
                                                                if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0x6F726665726F7473 && a2 == 0xEC0000006449746ELL;
                                                                  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000019 && 0x8000000100274050 == a2;
                                                                    if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD000000000000018 && 0x8000000100274070 == a2;
                                                                      if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0x6968547265646E75 && a2 == 0xED00006E65657472;
                                                                        if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else if (a1 == 0xD000000000000016 && 0x8000000100274090 == a2)
                                                                        {

                                                                          return 36;
                                                                        }

                                                                        else
                                                                        {
                                                                          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v42)
                                                                          {
                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            return 37;
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
      }
    }
  }
}

uint64_t sub_10012B350(char a1)
{
  result = 0x6E756F6363416361;
  switch(a1)
  {
    case 1:
    case 22:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x727550776F6C6C61;
      break;
    case 3:
      result = 0x79616C506F747561;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x72656D75736E6F63;
      break;
    case 6:
      result = 0x6142746964657263;
      break;
    case 7:
      result = 0x6D614E7473726966;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
    case 18:
    case 27:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000023;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x426F546B73417369;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x436461426E497369;
      break;
    case 16:
      result = 0x696D61466E497369;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0x746E756F436F7369;
      break;
    case 20:
      v3 = 846164841;
      goto LABEL_21;
    case 21:
      v3 = 862942057;
LABEL_21:
      result = v3 | 0x6E756F4300000000;
      break;
    case 23:
    case 33:
      result = 0xD000000000000019;
      break;
    case 24:
      result = 0x656D614E7473616CLL;
      break;
    case 25:
      result = 0xD00000000000001CLL;
      break;
    case 26:
      result = 0xD00000000000001BLL;
      break;
    case 28:
      result = 0xD000000000000014;
      break;
    case 29:
      result = 0x6C616E6F73726570;
      break;
    case 30:
      result = 0x4C656C69666F7270;
      break;
    case 31:
      result = 0x65446C6961746572;
      break;
    case 32:
      result = 0x6F726665726F7473;
      break;
    case 34:
      result = 0xD000000000000018;
      break;
    case 35:
      result = 0x6968547265646E75;
      break;
    case 36:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10012B794()
{
  sub_100002FBC();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v1 + 16) != *(v0 + 16))
  {
    return 0;
  }

  v4 = *(v1 + 24);
  v5 = *(v0 + 24);
  if (v4 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v5 == 2 || ((v5 ^ v4) & 1) != 0)
    {
      return result;
    }
  }

  if ((*(v1 + 25) ^ *(v0 + 25)))
  {
    return 0;
  }

  v7 = *(v1 + 40);
  v8 = *(v0 + 40);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *(v1 + 32) == *(v0 + 32) && v7 == v8;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(v0 + 48);
  if (*(v1 + 48))
  {
    if (!v10 || (sub_1001442CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v1 + 72) == *(v0 + 72) && *(v1 + 80) == *(v0 + 80);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((*(v1 + 88) ^ *(v0 + 88)) & 1) != 0 || ((*(v1 + 89) ^ *(v0 + 89)) & 1) != 0 || ((*(v1 + 90) ^ *(v0 + 90)) & 1) != 0 || ((*(v1 + 91) ^ *(v0 + 91)) & 1) != 0 || *(v1 + 96) != *(v0 + 96) || ((*(v1 + 104) ^ *(v0 + 104)) & 1) != 0 || ((*(v1 + 105) ^ *(v0 + 105)) & 1) != 0 || ((*(v1 + 106) ^ *(v0 + 106)) & 1) != 0 || ((*(v1 + 107) ^ *(v0 + 107)) & 1) != 0 || ((*(v1 + 108) ^ *(v0 + 108)) & 1) != 0 || ((*(v1 + 109) ^ *(v0 + 109)))
  {
    return 0;
  }

  v13 = *(v1 + 112) == *(v0 + 112) && *(v1 + 120) == *(v0 + 120);
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v1 + 128) == *(v0 + 128) && *(v1 + 136) == *(v0 + 136);
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v1 + 144) == *(v0 + 144) && *(v1 + 152) == *(v0 + 152);
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((*(v1 + 160) ^ *(v0 + 160)) & 1) != 0)
  {
    return 0;
  }

  v16 = *(v1 + 161);
  v17 = *(v0 + 161);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }

    goto LABEL_71;
  }

  result = 0;
  if (v17 != 2 && ((v17 ^ v16) & 1) == 0)
  {
LABEL_71:
    v18 = *(v1 + 168) == *(v0 + 168) && *(v1 + 176) == *(v0 + 176);
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    v19 = *(v1 + 192);
    v20 = *(v0 + 192);
    if (v19)
    {
      if (!v20)
      {
        return 0;
      }

      v21 = *(v1 + 184) == *(v0 + 184) && v19 == v20;
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v20)
    {
      return 0;
    }

    v22 = *(v0 + 208);
    if (*(v1 + 208))
    {
      if (!*(v0 + 208))
      {
        return 0;
      }
    }

    else
    {
      if (*(v1 + 200) != *(v0 + 200))
      {
        v22 = 1;
      }

      if (v22)
      {
        return 0;
      }
    }

    v23 = *(v1 + 224);
    v24 = *(v0 + 224);
    if (v23)
    {
      if (!v24)
      {
        return 0;
      }

      v25 = *(v1 + 216) == *(v0 + 216) && v23 == v24;
      if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v24)
    {
      return 0;
    }

    v26 = *(v0 + 240);
    if (*(v1 + 240))
    {
      if (!*(v0 + 240))
      {
        return 0;
      }
    }

    else
    {
      if (*(v1 + 232) != *(v0 + 232))
      {
        v26 = 1;
      }

      if (v26)
      {
        return 0;
      }
    }

    if (((*(v1 + 241) ^ *(v0 + 241)) & 1) == 0)
    {
      v27 = *(v1 + 256);
      v28 = *(v0 + 256);
      if (v27)
      {
        if (!v28)
        {
          return 0;
        }

        v29 = *(v1 + 248) == *(v0 + 248) && v27 == v28;
        if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v28)
      {
        return 0;
      }

      if ((*(v1 + 264) ^ *(v0 + 264)))
      {
        return 0;
      }

      v30 = *(v1 + 272) == *(v0 + 272) && *(v1 + 280) == *(v0 + 280);
      if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v31 = *(v1 + 296);
      v32 = *(v0 + 296);
      if (v31)
      {
        if (!v32)
        {
          return 0;
        }

        v33 = *(v1 + 288) == *(v0 + 288) && v31 == v32;
        if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v32)
      {
        return 0;
      }

      v34 = *(v0 + 312);
      if (*(v1 + 312))
      {
        if (!*(v0 + 312))
        {
          return 0;
        }
      }

      else
      {
        if (*(v1 + 304) != *(v0 + 304))
        {
          v34 = 1;
        }

        if (v34)
        {
          return 0;
        }
      }

      if (((*(v1 + 313) ^ *(v0 + 313)) & 1) == 0)
      {
        return *(v1 + 320) == *(v0 + 320);
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10012BBF0()
{
  v2 = sub_100099DF4(&qword_1002DD820, &qword_1002388B8);
  sub_100003724();
  v4 = v3;
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100002970();
  v6 = sub_10000492C();
  sub_100008B3C(v6, v7);
  sub_10012DC34();
  sub_10000CF84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_100006DC0(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100006DC0(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100006DC0(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100007C84(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100099DF4(&qword_1002DD808, &qword_1002388B0);
    sub_10012DCDC(&qword_1002DD828, sub_10012DD50);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100007C84(6);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100007C84(7);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100006DC0(8);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100006DC0(9);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100006DC0(10);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100006DC0(11);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100006DC0(12);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100006DC0(13);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100006DC0(14);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100006DC0(15);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100006DC0(16);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100006DC0(17);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100006DC0(18);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100007C84(19);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100007C84(20);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100007C84(21);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100006DC0(22);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100006DC0(23);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100007C84(24);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100007C84(25);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100007C84(26);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100007C84(27);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100007C84(28);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100006DC0(29);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100007C84(30);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100006DC0(31);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100007C84(32);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100007C84(33);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100007C84(34);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100006DC0(35);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100006DC0(36);
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v1, v2);
}

void sub_10012C0E0(uint64_t a1)
{
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16));
  v2 = *(v1 + 24);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = v2 & 1;
  }

  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(*(v1 + 25) & 1);
  if (*(v1 + 40))
  {
    Hasher._combine(_:)(1u);
    sub_10000DBC0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + 48))
  {
    Hasher._combine(_:)(1u);
    sub_100118390();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 88) & 1);
  Hasher._combine(_:)(*(v1 + 89) & 1);
  Hasher._combine(_:)(*(v1 + 90) & 1);
  Hasher._combine(_:)(*(v1 + 91) & 1);
  Hasher._combine(_:)(*(v1 + 96));
  Hasher._combine(_:)(*(v1 + 104) & 1);
  Hasher._combine(_:)(*(v1 + 105) & 1);
  Hasher._combine(_:)(*(v1 + 106) & 1);
  Hasher._combine(_:)(*(v1 + 107) & 1);
  Hasher._combine(_:)(*(v1 + 108) & 1);
  Hasher._combine(_:)(*(v1 + 109) & 1);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 160) & 1);
  v4 = *(v1 + 161);
  if (v4 == 2)
  {
    v5 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = v4 & 1;
  }

  Hasher._combine(_:)(v5);
  String.hash(into:)();
  if (*(v1 + 192))
  {
    Hasher._combine(_:)(1u);
    sub_10000DBC0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + 208) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v6 = *(v1 + 200);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v6);
  }

  if (*(v1 + 224))
  {
    Hasher._combine(_:)(1u);
    sub_10000DBC0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + 240) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v7 = *(v1 + 232);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v7);
  }

  Hasher._combine(_:)(*(v1 + 241) & 1);
  if (*(v1 + 256))
  {
    Hasher._combine(_:)(1u);
    sub_10000DBC0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + 264) & 1);
  String.hash(into:)();
  if (*(v1 + 296))
  {
    Hasher._combine(_:)(1u);
    sub_10000DBC0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + 312) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v8 = *(v1 + 304);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v8);
  }

  Hasher._combine(_:)(*(v1 + 313) & 1);
  Hasher._combine(_:)(*(v1 + 320));
}

Swift::Int sub_10012C404()
{
  sub_100005BE8();
  sub_10012C0E0(v1);
  return Hasher._finalize()();
}

void sub_10012C43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  sub_100004868();
  v12 = v11;
  v14 = v13;
  sub_100099DF4(&qword_1002DD7F8, &qword_1002388A8);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v15);
  sub_100008B3C(v12, v12[3]);
  sub_10012DC34();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    sub_1000031F0();
    sub_100004118(v12);
    if (v12)
    {

      if ((v84 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v84)
    {
LABEL_5:
      if (v86)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

    if (v86)
    {
LABEL_6:

      if ((v88 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

LABEL_13:
    if (!v88)
    {
LABEL_7:
      if (v90)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:

    if (v90)
    {
LABEL_8:

      if ((v92 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v92)
    {
LABEL_9:
      if (!a10)
      {
        goto LABEL_17;
      }

LABEL_10:

      goto LABEL_17;
    }

LABEL_16:

    if ((a10 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v170 = v14;
  LOBYTE(v95[0]) = 0;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v83 = v17;
  sub_100008048(1);
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(2);
  v93 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100008048(3);
  v91 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(4);
  v89 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v82 = v19;
  sub_100099DF4(&qword_1002DD808, &qword_1002388B0);
  LOBYTE(v94[0]) = 5;
  sub_10012DCDC(&qword_1002DD810, sub_10012DC88);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v81 = v95[0];
  sub_100008048(6);
  v87 = KeyedDecodingContainer.decode(_:forKey:)();
  v80 = v20;
  sub_100008048(7);
  v85 = KeyedDecodingContainer.decode(_:forKey:)();
  v79 = v21;
  sub_100008048(8);
  v69 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(9);
  v67 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(10);
  v66 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(11);
  v65 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(12);
  v64 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(13);
  v63 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(14);
  v62 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(15);
  v61 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(16);
  v60 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(17);
  v59 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(18);
  v58 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(19);
  v57 = KeyedDecodingContainer.decode(_:forKey:)();
  v76 = v22;
  sub_100008048(20);
  v56 = KeyedDecodingContainer.decode(_:forKey:)();
  v78 = v23;
  sub_100008048(21);
  v55 = KeyedDecodingContainer.decode(_:forKey:)();
  v77 = v24;
  sub_100008048(22);
  v54 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(23);
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100008048(24);
  v52 = KeyedDecodingContainer.decode(_:forKey:)();
  v75 = v25;
  sub_100008048(25);
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v74 = v26;
  sub_100008048(26);
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v165 = v27 & 1;
  sub_100008048(27);
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v73 = v28;
  sub_100008048(28);
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v163 = v29 & 1;
  sub_100008048(29);
  v46 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(30);
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v72 = v30;
  sub_100008048(31);
  v44 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(32);
  v43 = KeyedDecodingContainer.decode(_:forKey:)();
  v70 = v31;
  sub_100008048(33);
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v71 = v32;
  sub_100008048(34);
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v159 = v33 & 1;
  sub_100008048(35);
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v156 = 36;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v67 & 1;
  v65 &= 1u;
  v66 &= 1u;
  v62 &= 1u;
  v63 &= 1u;
  v60 &= 1u;
  v61 &= 1u;
  v58 &= 1u;
  v59 &= 1u;
  v54 &= 1u;
  v68 = v46 & 1;
  v34 = sub_10000A590();
  v35(v34);
  v94[0] = v16;
  v94[1] = v83;
  v94[2] = v18;
  LOBYTE(v94[3]) = v93;
  BYTE1(v94[3]) = v91 & 1;
  *(&v94[3] + 2) = v168;
  HIWORD(v94[3]) = v169;
  v94[4] = v89;
  v94[5] = v82;
  v94[6] = v81;
  v94[7] = v87;
  v94[8] = v80;
  v94[9] = v85;
  v94[10] = v79;
  LOBYTE(v94[11]) = v69 & 1;
  BYTE1(v94[11]) = v38;
  BYTE2(v94[11]) = v66;
  BYTE3(v94[11]) = v65;
  v94[12] = v64;
  LOBYTE(v94[13]) = v63;
  BYTE1(v94[13]) = v62;
  BYTE2(v94[13]) = v61;
  BYTE3(v94[13]) = v60;
  BYTE4(v94[13]) = v59;
  BYTE5(v94[13]) = v58;
  v94[14] = v57;
  v94[15] = v76;
  v94[16] = v56;
  v94[17] = v78;
  v94[18] = v55;
  v94[19] = v77;
  LOBYTE(v94[20]) = v54;
  BYTE1(v94[20]) = v53;
  *(&v94[20] + 2) = v166;
  HIWORD(v94[20]) = v167;
  v94[21] = v52;
  v94[22] = v75;
  v94[23] = v51;
  v94[24] = v74;
  v94[25] = v50;
  *(&v94[26] + 1) = *v164;
  *(&v94[30] + 2) = v161;
  *(&v94[33] + 1) = *v160;
  v47 = v165;
  LOBYTE(v94[26]) = v165;
  HIDWORD(v94[26]) = *&v164[3];
  v94[27] = v49;
  v94[28] = v73;
  v94[29] = v48;
  *(&v94[39] + 2) = v157;
  v36 = v163;
  LOBYTE(v94[30]) = v163;
  BYTE1(v94[30]) = v68;
  HIWORD(v94[30]) = v162;
  v94[31] = v45;
  v94[32] = v72;
  LOBYTE(v94[33]) = v44 & 1;
  HIDWORD(v94[33]) = *&v160[3];
  v94[34] = v43;
  v94[35] = v70;
  v94[36] = v42;
  v94[37] = v71;
  v94[38] = v41;
  HIWORD(v94[39]) = v158;
  v37 = v159;
  LOBYTE(v94[39]) = v159;
  BYTE1(v94[39]) = v40 & 1;
  v94[40] = v39;
  sub_10012627C(v94, v95);
  sub_100004118(v12);
  v95[0] = v16;
  v95[1] = v83;
  v95[2] = v18;
  v96 = v93;
  v97 = v91 & 1;
  v100 = v89;
  v101 = v82;
  v102 = v81;
  v103 = v87;
  v104 = v80;
  v105 = v85;
  v106 = v79;
  v107 = v69 & 1;
  v108 = v38;
  v109 = v66;
  v110 = v65;
  v111 = v64;
  v112 = v63;
  v113 = v62;
  v114 = v61;
  v115 = v60;
  v116 = v59;
  v117 = v58;
  v118 = v57;
  v119 = v76;
  v98 = v168;
  v99 = v169;
  v120 = v56;
  v121 = v78;
  v122 = v55;
  v123 = v77;
  v124 = v54;
  v125 = v53;
  v126 = v166;
  v127 = v167;
  v128 = v52;
  v129 = v75;
  v130 = v51;
  v131 = v74;
  v132 = v50;
  v133 = v47;
  *v134 = *v164;
  *&v134[3] = *&v164[3];
  v135 = v49;
  v136 = v73;
  v137 = v48;
  v138 = v36;
  v139 = v68;
  v141 = v162;
  v140 = v161;
  v142 = v45;
  v143 = v72;
  v144 = v44 & 1;
  *v145 = *v160;
  *&v145[3] = *&v160[3];
  v146 = v43;
  v147 = v70;
  v148 = v42;
  v149 = v71;
  v150 = v41;
  v151 = v37;
  v152 = v40 & 1;
  v153 = v157;
  v154 = v158;
  v155 = v39;
  sub_1000CA2A4(v95);
  memcpy(v170, v94, 0x148uLL);
LABEL_17:
  sub_100005074();
}

uint64_t sub_10012D1DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656D75736E6F63 && a2 == 0xEA00000000006449;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065)
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

uint64_t sub_10012D2B4(char a1)
{
  if (a1)
  {
    return 0x63617073656D616ELL;
  }

  else
  {
    return 0x72656D75736E6F63;
  }
}

void sub_10012D2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100004868();
  v25 = v24;
  v26 = sub_100099DF4(&qword_1002DDBD8, &qword_100238FE0);
  sub_100003724();
  v28 = v27;
  sub_100003774();
  __chkstk_darwin(v29);
  sub_100004880();
  sub_100008B3C(v25, v25[3]);
  sub_10012E864();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v22)
  {
    sub_10000355C();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v28 + 8))(v23, v26);
  sub_100005074();
}

void sub_10012D43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100004868();
  v24 = v23;
  sub_100099DF4(&qword_1002DDBC8, &qword_100238FD8);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v25);
  sub_100004880();
  sub_100008B3C(v24, v24[3]);
  sub_10012E864();
  sub_10000CF84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000355C();
    KeyedDecodingContainer.decode(_:forKey:)();
    v26 = sub_100013DE8();
    v27(v26);
  }

  sub_100004118(v24);
  sub_100005074();
}

Swift::Int sub_10012D5E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_10012D634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10012A858(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10012D65C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10012B348();
  *a1 = result;
  return result;
}

uint64_t sub_10012D684(uint64_t a1)
{
  v2 = sub_10012DC34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012D6C0(uint64_t a1)
{
  v2 = sub_10012DC34();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10012D6FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_10012C43C(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0]);
  if (!v9)
  {
    memcpy(a9, __src, 0x148uLL);
  }
}

Swift::Int sub_10012D770(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10012C0E0(v2);
  return Hasher._finalize()();
}

unint64_t sub_10012D7B4()
{
  result = qword_1002DD770;
  if (!qword_1002DD770)
  {
    result = swift_getWitnessTable(byte_100238614, &type metadata for AccountDataPayload, v0, v1);
    atomic_store(result, &qword_1002DD770);
  }

  return result;
}

unint64_t sub_10012D80C()
{
  result = qword_1002DD778;
  if (!qword_1002DD778)
  {
    result = swift_getWitnessTable("\rj\a", &type metadata for AccountDataChange, v0, v1);
    atomic_store(result, &qword_1002DD778);
  }

  return result;
}

uint64_t sub_10012D8A8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10012D8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10012D1DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10012D920(uint64_t a1)
{
  v2 = sub_10012E864();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012D95C(uint64_t a1)
{
  v2 = sub_10012E864();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10012D9E8()
{
  result = qword_1002DD790;
  if (!qword_1002DD790)
  {
    result = swift_getWitnessTable(byte_100238F84, &type metadata for AccountDataState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD790);
  }

  return result;
}

unint64_t sub_10012DA3C()
{
  result = qword_1002DD798;
  if (!qword_1002DD798)
  {
    result = swift_getWitnessTable(byte_1002386CC, &type metadata for AccountDataPayload, v0, v1);
    atomic_store(result, &qword_1002DD798);
  }

  return result;
}

unint64_t sub_10012DA90()
{
  result = qword_1002DD7A0;
  if (!qword_1002DD7A0)
  {
    result = swift_getWitnessTable("ej\a", &type metadata for AccountDataChange, v0, v1);
    atomic_store(result, &qword_1002DD7A0);
  }

  return result;
}

uint64_t sub_10012DAE4()
{
  v1 = sub_100002834();
  v2(v1);
  sub_10000307C();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_10012DB38()
{
  result = qword_1002DD7B8;
  if (!qword_1002DD7B8)
  {
    result = swift_getWitnessTable(byte_1002386A4, &type metadata for AccountDataPayload, v0, v1);
    atomic_store(result, &qword_1002DD7B8);
  }

  return result;
}

unint64_t sub_10012DB8C()
{
  result = qword_1002DD7C0;
  if (!qword_1002DD7C0)
  {
    result = swift_getWitnessTable("}j\a", &type metadata for AccountDataChange, v0, v1);
    atomic_store(result, &qword_1002DD7C0);
  }

  return result;
}

unint64_t sub_10012DBE0()
{
  result = qword_1002DD7E8;
  if (!qword_1002DD7E8)
  {
    result = swift_getWitnessTable(byte_100238F34, &type metadata for AccountDataChange.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD7E8);
  }

  return result;
}

unint64_t sub_10012DC34()
{
  result = qword_1002DD800;
  if (!qword_1002DD800)
  {
    result = swift_getWitnessTable("=c\a", &type metadata for AccountDataPayload.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DD800);
  }

  return result;
}

unint64_t sub_10012DC88()
{
  result = qword_1002DD818;
  if (!qword_1002DD818)
  {
    result = swift_getWitnessTable(byte_100238EBC, &type metadata for ConsumerIDPayload, v0, v1);
    atomic_store(result, &qword_1002DD818);
  }

  return result;
}

uint64_t sub_10012DCDC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(&qword_1002DD808, &qword_1002388B0);
    a2();
    v5 = sub_10000DBC0();
    result = swift_getWitnessTable(v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10012DD50()
{
  result = qword_1002DD830;
  if (!qword_1002DD830)
  {
    result = swift_getWitnessTable(byte_100238E94, &type metadata for ConsumerIDPayload, v0, v1);
    atomic_store(result, &qword_1002DD830);
  }

  return result;
}

uint64_t sub_10012DDEC(uint64_t a1)
{
  result = type metadata accessor for AccountIdentity.DSID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10012DE90(uint64_t a1)
{
  result = type metadata accessor for AccountDataServerRequest.Put(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AccountDataServerRequest.Get(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10012DF4C(uint64_t a1)
{
  result = type metadata accessor for AccountIdentity.DSID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10012E000(uint64_t a1)
{
  sub_10012E058();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_10012E058()
{
  if (!qword_1002DDA98)
  {
    v0 = type metadata accessor for Date();
    if (!v1)
    {
      atomic_store(v0, &qword_1002DDA98);
    }
  }
}

uint64_t sub_10012E0E8(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountDataPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDC)
  {
    if (a2 + 36 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 36) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 37;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v5 = v6 - 37;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AccountDataPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDB)
  {
    v6 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
          *result = a2 + 36;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccountDataState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10012E3D8()
{
  result = qword_1002DDB58;
  if (!qword_1002DDB58)
  {
    result = swift_getWitnessTable(byte_100238974, &type metadata for ConsumerIDPayload, v0, v1);
    atomic_store(result, &qword_1002DDB58);
  }

  return result;
}

unint64_t sub_10012E430()
{
  result = qword_1002DDB60;
  if (!qword_1002DDB60)
  {
    result = swift_getWitnessTable("mf\a", &type metadata for AccountDataState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDB60);
  }

  return result;
}

unint64_t sub_10012E488()
{
  result = qword_1002DDB68;
  if (!qword_1002DDB68)
  {
    result = swift_getWitnessTable("}e\a", &type metadata for AccountDataChange.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDB68);
  }

  return result;
}

unint64_t sub_10012E4E0()
{
  result = qword_1002DDB70;
  if (!qword_1002DDB70)
  {
    result = swift_getWitnessTable(byte_100238C3C, &type metadata for AccountDataPayload.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDB70);
  }

  return result;
}

unint64_t sub_10012E658()
{
  result = qword_1002DDB98;
  if (!qword_1002DDB98)
  {
    result = swift_getWitnessTable("%f\a", &type metadata for AccountDataPayload.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDB98);
  }

  return result;
}

unint64_t sub_10012E6B0()
{
  result = qword_1002DDBA0;
  if (!qword_1002DDBA0)
  {
    result = swift_getWitnessTable("\rf\a", &type metadata for AccountDataPayload.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDBA0);
  }

  return result;
}

unint64_t sub_10012E708()
{
  result = qword_1002DDBA8;
  if (!qword_1002DDBA8)
  {
    result = swift_getWitnessTable(byte_100238ABC, &type metadata for AccountDataChange.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDBA8);
  }

  return result;
}

unint64_t sub_10012E760()
{
  result = qword_1002DDBB0;
  if (!qword_1002DDBB0)
  {
    result = swift_getWitnessTable(byte_100238AE4, &type metadata for AccountDataChange.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDBB0);
  }

  return result;
}

unint64_t sub_10012E7B8()
{
  result = qword_1002DDBB8;
  if (!qword_1002DDBB8)
  {
    result = swift_getWitnessTable(byte_100238A04, &type metadata for AccountDataState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDBB8);
  }

  return result;
}

unint64_t sub_10012E810()
{
  result = qword_1002DDBC0;
  if (!qword_1002DDBC0)
  {
    result = swift_getWitnessTable(byte_100238A2C, &type metadata for AccountDataState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDBC0);
  }

  return result;
}

unint64_t sub_10012E864()
{
  result = qword_1002DDBD0;
  if (!qword_1002DDBD0)
  {
    result = swift_getWitnessTable("qa\a", &type metadata for ConsumerIDPayload.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDBD0);
  }

  return result;
}

uint64_t sub_10012E8B8()
{
  sub_100002FBC();
  v1(0);
  sub_10000307C();
  v2 = sub_1000050CC();
  v3(v2);
  return v0;
}

uint64_t sub_10012E910()
{
  sub_100002FBC();
  v1(0);
  sub_10000307C();
  v2 = sub_1000050CC();
  v3(v2);
  return v0;
}

_BYTE *sub_10012E968(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10012EA48()
{
  result = qword_1002DDBF8;
  if (!qword_1002DDBF8)
  {
    atomic_store(result, &qword_1002DDBF8);
  }

  return result;
}

unint64_t sub_10012EAA0()
{
  result = qword_1002DDC00;
  if (!qword_1002DDC00)
  {
    result = swift_getWitnessTable(byte_100238FF8, &type metadata for ConsumerIDPayload.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDC00);
  }

  return result;
}

unint64_t sub_10012EAF8()
{
  result = qword_1002DDC08;
  if (!qword_1002DDC08)
  {
    result = swift_getWitnessTable(byte_100239020, &type metadata for ConsumerIDPayload.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDC08);
  }

  return result;
}

uint64_t sub_10012EB50()
{

  return sub_10012DAE4();
}

uint64_t sub_10012EBCC()
{

  return sub_10012DAE4();
}

void sub_10012EC00()
{

  Hasher._combine(_:)(1u);
}

uint64_t sub_10012EC38(uint64_t a1)
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

void *sub_10012EC60(void *a1)
{

  return memcpy(a1, v1, 0x148uLL);
}

uint64_t sub_10012EC78()
{

  return sub_10003D1E4();
}

uint64_t sub_10012ECCC(uint64_t a1)
{
  v2 = type metadata accessor for AccountDataServerRequest.Put(0);
  sub_10000307C();
  __chkstk_darwin(v3);
  sub_10000306C();
  v6 = v5 - v4;
  type metadata accessor for AccountDataServerRequest(0);
  sub_10000307C();
  __chkstk_darwin(v7);
  sub_10000306C();
  v10 = v9 - v8;
  sub_1000CA2F8(a1, v9 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000066D4();
    sub_1001263B0(v10, v11);
    return 0;
  }

  else
  {
    sub_100006DD8();
    sub_10012FD78(v10, v6, v13);
    sub_100099DF4(&qword_1002DDC10, &unk_100239100);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10022E400;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 32) = 0xD000000000000013;
    *(v14 + 40) = 0x8000000100273E00;
    v15 = *(v6 + *(v2 + 20));
    *(v14 + 88) = &type metadata for UInt64;
    *(v14 + 64) = v15;
    sub_10012F650();
    v12 = NSDictionary.init(dictionaryLiteral:)();
    v16 = (v6 + *(v2 + 24));
    if (*v16 != 2)
    {
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      sub_100006A28(v18);

      swift_unknownObjectRelease();
    }

    if (v16[1] != 2)
    {
      v19 = Bool._bridgeToObjectiveC()().super.super.isa;
      v20 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      sub_100006A28(v20);

      swift_unknownObjectRelease();
    }

    sub_1001263B0(v6, type metadata accessor for AccountDataServerRequest.Put);
  }

  return v12;
}

void *sub_10012EF24()
{
  v0 = type metadata accessor for BagValueType();
  sub_100003724();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7.n128_f64[0] = __chkstk_darwin(v6);
  v9 = (&v25 - v8);
  v10 = 0;
  v11 = 0;
  v27 = 0x80000001002722B0;
  v28 = enum case for BagValueType.string(_:);
  v12 = (v2 + 104);
  v26 = 0x80000001002722D0;
  v13 = _swiftEmptyArrayStorage;
  do
  {
    v14 = v10;
    if (*(&off_1002B3710 + v11 + 32))
    {
      *v5 = 0xD000000000000013;
      v5[1] = v26;
      (*v12)(v5, v28, v0, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000731C();
        v13 = v20;
      }

      v16 = v13[2];
      v15 = v13[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_10000BA98(v15);
        v13 = v21;
      }

      v18 = v5;
    }

    else
    {
      *v9 = 0xD000000000000013;
      v9[1] = v27;
      (*v12)(v9, v28, v0, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000731C();
        v13 = v22;
      }

      v16 = v13[2];
      v19 = v13[3];
      v17 = v16 + 1;
      if (v16 >= v19 >> 1)
      {
        sub_10000BA98(v19);
        v13 = v23;
      }

      v18 = v9;
    }

    v13[2] = v17;
    (*(v2 + 32))(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, v18, v0);
    v10 = 1;
    v11 = &_mh_execute_header.magic + 1;
  }

  while ((v14 & 1) == 0);
  return v13;
}

id sub_10012F174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100099DF4(&qword_1002DB318, &qword_10023F230);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  type metadata accessor for AccountDataServerRequest(0);
  sub_10000307C();
  __chkstk_darwin(v13);
  sub_10000306C();
  v16 = v15 - v14;
  result = sub_10017A66C(a2);
  if (!v3)
  {
    v21 = result;
    v22 = v20;
    v29 = v19;
    v30 = v18;
    sub_1000CA2F8(a1, v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v30;
      URL.init(string:)();
      v24 = type metadata accessor for URL();
      if (sub_100004DFC(v12, 1, v24) != 1)
      {

        (*(*(v24 - 8) + 32))(a3, v12, v24);
        goto LABEL_10;
      }

      v9 = v12;
    }

    else
    {
      URL.init(string:)();
      v25 = type metadata accessor for URL();
      if (sub_100004DFC(v9, 1, v25) != 1)
      {

        (*(*(v25 - 8) + 32))(a3, v9, v25);
        goto LABEL_10;
      }

      v23 = v22;
      v21 = v29;
    }

    sub_10012F694(v9);
    type metadata accessor for AccountDataNetworkingCore.Errors(0);
    sub_10012F748();
    swift_allocError();
    *v26 = v21;
    v26[1] = v23;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_10:
    sub_1000066D4();
    return sub_1001263B0(v16, v27);
  }

  return result;
}

uint64_t sub_10012F41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccountDataServerRequest.Put(0);
  __chkstk_darwin(v4 - 8);
  sub_10000306C();
  v7 = v6 - v5;
  v8 = type metadata accessor for AccountDataServerRequest.Get(0);
  __chkstk_darwin(v8 - 8);
  sub_10000306C();
  v11 = v10 - v9;
  type metadata accessor for AccountDataServerRequest(0);
  sub_10000307C();
  __chkstk_darwin(v12);
  sub_10000306C();
  v15 = v14 - v13;
  sub_1000CA2F8(a1, v14 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10012FD78(v15, v11, type metadata accessor for AccountDataServerRequest.Get);
  }

  else
  {
    sub_100006DD8();
    sub_10012FD78(v15, v7, v16);
    v11 = v7;
  }

  type metadata accessor for AccountIdentity.DSID();
  sub_10000307C();
  return (*(v17 + 32))(a2, v11);
}

void *sub_10012F594@<X0>(void *a3@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10012DA3C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v3)
  {
    return memcpy(a3, __src, 0x148uLL);
  }

  return result;
}

unint64_t sub_10012F650()
{
  result = qword_1002DDC18;
  if (!qword_1002DDC18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002DDC18);
  }

  return result;
}

uint64_t sub_10012F694(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002DB318, &qword_10023F230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AccountDataNetworkingCore.Errors(uint64_t a1)
{
  result = qword_1002DDC90;
  if (!qword_1002DDC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10012F748()
{
  result = qword_1002DB9F0;
  if (!qword_1002DB9F0)
  {
    v3 = type metadata accessor for AccountDataNetworkingCore.Errors(255);
    result = swift_getWitnessTable(byte_100239234, v3, v0, v1);
    atomic_store(result, &qword_1002DB9F0);
  }

  return result;
}

uint64_t sub_10012F7A0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3C98, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012F820(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100099DF4(&qword_1002DDCF0, &qword_100239280);
  sub_100003724();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = v14 - v11;
  sub_10000C4FC(a1, a1[3]);
  sub_10012FF24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v7);
}

Swift::Int PIPersonalizedPrivateIdentifierMapping.Key.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10012F9FC(void *a1)
{
  sub_100099DF4(&qword_1002DDCE0, &qword_100239278);
  sub_100003724();
  __chkstk_darwin(v3);
  v4 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_10012FF24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v6 = sub_100002960();
    v7(v6);
  }

  sub_100004118(a1);
  return v4;
}

uint64_t sub_10012FBE0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10012F7A0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10012FC10@<X0>(void *a1@<X8>)
{
  result = sub_10012F7F4();
  *a1 = 0xD000000000000013;
  a1[1] = v3;
  return result;
}

uint64_t sub_10012FC68@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10012F7A0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10012FCA4(uint64_t a1)
{
  v2 = sub_10012FF24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012FCE0(uint64_t a1)
{
  v2 = sub_10012FF24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10012FD1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10012F9FC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10012FD78(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000307C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_10012FDE8(uint64_t a1)
{
  sub_10012FE5C();
  if (v1 <= 0x3F)
  {
    sub_10012FEA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10012FE5C()
{
  if (!qword_1002DDCA0)
  {
    v0 = type metadata accessor for AccountIdentity.DSID();
    if (!v1)
    {
      atomic_store(v0, &qword_1002DDCA0);
    }
  }
}

void *sub_10012FEA4()
{
  result = qword_1002DDCA8;
  if (!qword_1002DDCA8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1002DDCA8);
  }

  return result;
}

unint64_t sub_10012FED0()
{
  result = qword_1002DDCD8;
  if (!qword_1002DDCD8)
  {
    result = swift_getWitnessTable(byte_10023917C, &type metadata for AccountDataNetworkingBag, v0, v1);
    atomic_store(result, &qword_1002DDCD8);
  }

  return result;
}

unint64_t sub_10012FF24()
{
  result = qword_1002DDCE8;
  if (!qword_1002DDCE8)
  {
    result = swift_getWitnessTable("1^\a", &type metadata for AccountDataNetworkingBag.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDCE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccountDataNetworkingBag.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100130058()
{
  result = qword_1002DDCF8;
  if (!qword_1002DDCF8)
  {
    v3 = sub_10009A468(&qword_1002DDD00, qword_100239310);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1002DDCF8);
  }

  return result;
}

unint64_t sub_1001300C0()
{
  result = qword_1002DDD08;
  if (!qword_1002DDD08)
  {
    result = swift_getWitnessTable("9]\a", &type metadata for AccountDataNetworkingBag.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDD08);
  }

  return result;
}

unint64_t sub_100130118()
{
  result = qword_1002DDD10;
  if (!qword_1002DDD10)
  {
    result = swift_getWitnessTable("=_\a", &type metadata for AccountDataNetworkingBag.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDD10);
  }

  return result;
}

unint64_t sub_100130170()
{
  result = qword_1002DDD18;
  if (!qword_1002DDD18)
  {
    result = swift_getWitnessTable("%_\a", &type metadata for AccountDataNetworkingBag.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDD18);
  }

  return result;
}

void sub_1001301C4()
{
  sub_100004168();
  v63 = v1;
  v64 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_100099DF4(&qword_1002DDD20, &unk_100239440);
  v7 = sub_1000030B8(v6);
  __chkstk_darwin(v7);
  v9 = &v61[-v8];
  v10 = type metadata accessor for AccountDataServerResponse.Errors(0);
  sub_10000307C();
  __chkstk_darwin(v11);
  sub_10000308C();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v61[-v16];
  v18 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v19 = sub_1000030B8(v18);
  __chkstk_darwin(v19);
  sub_10000308C();
  v65 = v20 - v21;
  sub_100005238();
  __chkstk_darwin(v22);
  v24 = &v61[-v23];
  v25 = type metadata accessor for AccountDataState(0);
  v26 = v25;
  v27 = *&v3[v25[8]];
  if (*&v3[v25[10]] == 3)
  {
    goto LABEL_10;
  }

  if (*&v3[v25[8]] == 3)
  {
    v28 = *&v3[v25[10]];
  }

  else
  {
    v29 = v27 >> 8;
    if (*&v3[v25[8]] == 2)
    {
      LOBYTE(v28) = *&v3[v25[10]];
    }

    else
    {
      LOBYTE(v28) = *&v3[v25[8]];
    }

    if (v29 != 2)
    {
      goto LABEL_9;
    }
  }

  v29 = HIBYTE(*&v3[v25[10]]);
LABEL_9:
  v27 = v28 | (v29 << 8);
LABEL_10:
  v62 = v27;
  v30 = v25[6];
  sub_10003D178(&v3[v30], v24, &qword_1002DA970, &qword_1002318B0);
  v67[0] = v64;
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if (swift_dynamicCast())
  {
    sub_100004E24(v24, &qword_1002DA970, &qword_1002318B0);
    sub_10000B7B0();
    sub_100002728(v31, v32, v33, v10);
    sub_1001306DC(v9, v17);
    sub_1001306DC(v17, v14);
    v34 = sub_100099DF4(&qword_1002DDA10, &qword_100238900);
    if (sub_100004DFC(v14, 1, v34) == 1)
    {
      sub_10003D178(&v3[v30], v24, &qword_1002DA970, &qword_1002318B0);
      sub_100131634(v14, type metadata accessor for AccountDataServerResponse.Errors);
    }

    else
    {
      v38 = type metadata accessor for Date();
      sub_10000307C();
      (*(v39 + 32))(v24, v14, v38);
      sub_10000B7B0();
      sub_100002728(v40, v41, v42, v38);
    }
  }

  else
  {
    sub_100007B78();
    sub_100002728(v35, v36, v37, v10);
    sub_100004E24(v9, &qword_1002DDD20, &unk_100239440);
  }

  v43 = v63;
  v44 = type metadata accessor for Date();
  sub_100007B78();
  sub_100002728(v45, v46, v47, v44);
  if (static HTTPHelpers.isAuthError(error:)())
  {
    v48 = v65;
    sub_100004E24(v65, &qword_1002DA970, &qword_1002318B0);
    (*(*(v44 - 8) + 16))(v48, v43, v44);
    sub_10000B7B0();
    sub_100002728(v49, v50, v51, v44);
  }

  memcpy(v67, v3, 0x148uLL);
  sub_10003D178(&v3[v26[5]], &v5[v26[5]], &qword_1002DA970, &qword_1002318B0);
  v52 = *(*(v44 - 8) + 16);
  v52(&v5[v26[7]], &v3[v26[7]], v44);
  sub_100007B78();
  sub_100002728(v53, v54, v55, v44);
  v52(&v5[v26[11]], v43, v44);
  sub_10000B7B0();
  sub_100002728(v56, v57, v58, v44);
  v59 = *&v3[v26[12]];
  v60 = v59 + 1;
  if (v59 == -1)
  {
    __break(1u);
  }

  else
  {
    sub_10003D178(&v3[v26[13]], &v5[v26[13]], &qword_1002DB940, &qword_100232B48);
    memcpy(v5, v67, 0x148uLL);
    sub_100012CF4(v24, &v5[v26[6]], &qword_1002DA970, &qword_1002318B0);
    *&v5[v26[8]] = v62;
    *&v5[v26[10]] = 3;
    *&v5[v26[12]] = v60;
    sub_100012CF4(v65, &v5[v26[14]], &qword_1002DA970, &qword_1002318B0);
    sub_10003D178(v67, &v66, &qword_1002DB920, &qword_100238870);
    sub_1000027F8();
  }
}

uint64_t sub_1001306DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountDataServerResponse.Errors(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100130740()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Date();
  sub_100003724();
  v10 = v9;
  __chkstk_darwin(v11);
  v65 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v14 = sub_1000030B8(v13);
  __chkstk_darwin(v14);
  sub_10000308C();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v62 - v19;
  v64 = v1;
  memcpy(v71, v1, 0x148uLL);
  if (sub_100013900(v71) == 1 || (memcpy(v70, v71, sizeof(v70)), sub_10012A39C(v3, v69), sub_10000A5A0(), memcpy(v21, v22, v23), v24 = sub_10012A608(v69), sub_1000CA2A4(v69), (v24 & 1) == 0))
  {
    sub_10000A5A0();
    memcpy(v43, v44, v45);
    v46 = type metadata accessor for AccountDataServerResponse(0);
    v47 = *(v46 + 20);
    v63 = v10;
    v48 = *(v10 + 16);
    v48(v20, v5 + v47, v8);
    sub_10000B7B0();
    sub_100002728(v49, v50, v51, v8);
    sub_100007B78();
    sub_100002728(v52, v53, v54, v8);
    v48(v65, v5 + *(v46 + 28), v8);
    v55 = type metadata accessor for AccountDataState(0);
    v56 = v55;
    v57 = v64;
    v58 = *&v64[*(v55 + 32)];
    v59 = v3;
    if (v58 == 3 || ((v60 = HIBYTE(*&v64[*(v55 + 32)]), v58 != 2) ? (v59 = *&v64[*(v55 + 32)]) : (v59 = v3), v60 == 2))
    {
      LOWORD(v60) = HIBYTE(v3);
    }

    v61 = v59 | (v60 << 8);
    sub_1000066EC(*(v55 + 36));
    sub_1000066EC(v56[11]);
    sub_10003D178(&v57[v56[13]], &v7[v56[13]], &qword_1002DB940, &qword_100232B48);
    sub_1000066EC(v56[14]);
    memcpy(v67, v68, sizeof(v67));
    PIScheduledRotationConfiguration.rotationInterval.getter();
    memcpy(v7, v67, 0x148uLL);
    sub_100012CF4(v20, &v7[v56[5]], &qword_1002DA970, &qword_1002318B0);
    sub_100012CF4(v17, &v7[v56[6]], &qword_1002DA970, &qword_1002318B0);
    (*(v63 + 32))(&v7[v56[7]], v65, v8);
    *&v7[v56[8]] = v61;
    sub_100005354();
    v42 = v68;
  }

  else
  {
    sub_10000A5A0();
    memcpy(v25, v26, v27);
    sub_10000A5A0();
    memcpy(v28, v29, v30);
    PIScheduledRotationConfiguration.rotationInterval.getter();
    v31 = type metadata accessor for AccountDataState(0);
    v32 = v31[5];
    v33 = type metadata accessor for AccountDataServerResponse(0);
    v34 = *(v10 + 16);
    v34(&v7[v32], v5 + *(v33 + 20), v8);
    sub_10000B7B0();
    sub_100002728(v35, v36, v37, v8);
    sub_1000066EC(v31[6]);
    v34(&v7[v31[7]], v5 + *(v33 + 28), v8);
    v38 = v64;
    LOWORD(v33) = *&v64[v31[8]];
    sub_100007B78();
    sub_100002728(v39, v40, v41, v8);
    sub_1000066EC(v31[11]);
    sub_10003D178(&v38[v31[13]], &v7[v31[13]], &qword_1002DB940, &qword_100232B48);
    sub_1000066EC(v31[14]);
    memcpy(v7, v68, 0x148uLL);
    *&v7[v31[8]] = v33;
    sub_100005354();
    v42 = v67;
  }

  sub_10012627C(v42, &v66);
  sub_1000027F8();
}

void sub_100130B68()
{
  sub_100004168();
  v215 = v0;
  v216 = v1;
  v217 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v218 = type metadata accessor for Date();
  sub_100003724();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000308C();
  v207 = v12 - v13;
  sub_100005238();
  __chkstk_darwin(v14);
  v208 = v205 - v15;
  sub_100005238();
  __chkstk_darwin(v16);
  v214 = v205 - v17;
  v18 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v19 = sub_1000030B8(v18);
  __chkstk_darwin(v19);
  sub_10000308C();
  v210 = v20 - v21;
  sub_100005238();
  __chkstk_darwin(v22);
  v211 = v205 - v23;
  sub_100005238();
  __chkstk_darwin(v24);
  v209 = v205 - v25;
  sub_100005238();
  __chkstk_darwin(v26);
  v213 = v205 - v27;
  v28 = type metadata accessor for AccountDataState(0);
  sub_10000307C();
  __chkstk_darwin(v29);
  sub_10000308C();
  v32 = v30 - v31;
  sub_100005238();
  __chkstk_darwin(v33);
  v35 = v205 - v34;
  v36 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  v37 = sub_1000030B8(v36);
  __chkstk_darwin(v37);
  sub_10000308C();
  v40 = v38 - v39;
  __chkstk_darwin(v41);
  v43 = v205 - v42;
  v216 = v8;
  Date.timeIntervalSince(_:)();
  v212 = v4;
  if (v44 <= v4)
  {
    v95 = v10;
    sub_100007664();
    sub_10003D178(v96, v97, v98, v99);
    sub_100007664();
    sub_10003D178(v100, v101, v102, v103);
    v104 = type metadata accessor for CachedServerDataSyncAttempt(0);
    sub_1000071D8(v40);
    if (v79)
    {
      sub_100004E24(v43, &qword_1002DB940, &qword_100232B48);
      sub_100004E24(v40, &qword_1002DB940, &qword_100232B48);
      v154 = v218;
      (*(v95 + 16))(&v43[*(v104 + 20)], v216, v218);
      *v43 = v215;
      sub_10000B7B0();
      sub_100002728(v105, v106, v107, v104);
    }

    else
    {
      sub_100004E24(v40, &qword_1002DB940, &qword_100232B48);
      v154 = v218;
    }

    sub_10000A5A0();
    memcpy(v155, v156, v157);
    v158 = v217;
    sub_100003924();
    sub_10003D178(v159, v160, v161, v162);
    sub_100003924();
    sub_10003D178(v163, v164, v165, v166);
    (*(v95 + 16))(&v158[v28[7]], v6 + v28[7], v154);
    v167 = *(v6 + v28[8]);
    sub_10000320C();
    sub_10003D178(v168, v169, v170, v171);
    v172 = *(v6 + v28[10]);
    sub_10000320C();
    sub_10003D178(v173, v174, v175, v176);
    v177 = *(v6 + v28[12]);
    sub_100003924();
    sub_10003D178(v178, v179, v180, v181);
    memcpy(v158, v222, 0x148uLL);
    *&v158[v28[8]] = v167;
    *&v158[v28[10]] = v172;
    *&v158[v28[12]] = v177;
    v182 = sub_100012CF4(v43, &v158[v28[13]], &qword_1002DB940, &qword_100232B48);
    sub_100131948(v182, v183, &qword_1002DB920, &qword_100238870);
  }

  else
  {
    v45 = *(v6 + v28[10]);
    v206 = v10;
    v46 = (v10 + 16);
    sub_10000A5A0();
    if (v50 == 3)
    {
      memcpy(v47, v48, v49);
      v205[1] = v28[5];
      sub_100003924();
      sub_10003D178(v51, v52, v53, v54);
      v205[3] = v28[6];
      sub_100003924();
      sub_10003D178(v55, v56, v57, v58);
      v59 = v28[7];
      v60 = *v46;
      v205[4] = v59;
      v205[5] = v60;
      v61 = v218;
      v205[2] = v46;
      v60((v32 + v59), v6 + v59, v218);
      v62 = v28[9];
      v63 = *(v6 + v28[8]);
      sub_100007B78();
      sub_100002728(v64, v65, v66, v61);
      v67 = v28[11];
      v208 = v67;
      sub_10003D178(&v67[v6], &v67[v32], &qword_1002DA970, &qword_1002318B0);
      v68 = *(v6 + v28[12]);
      type metadata accessor for CachedServerDataSyncAttempt(0);
      sub_100007B78();
      v209 = v69;
      sub_100002728(v70, v71, v72, v69);
      v73 = v28[14];
      v211 = v73;
      sub_10003D178(&v73[v6], &v73[v32], &qword_1002DA970, &qword_1002318B0);
      memcpy(v32, v222, 0x148uLL);
      v74 = v28[8];
      LODWORD(v214) = v63;
      *(v32 + v74) = v63;
      *(v32 + v28[10]) = v45;
      v75 = v28[12];
      v213 = v68;
      *(v32 + v75) = v68;
      v76 = v210;
      sub_10003D178(v32 + v62, v210, &qword_1002DA970, &qword_1002318B0);
      v77 = sub_1000071D8(v76);
      if (v79)
      {
        sub_100131948(v77, v78, &qword_1002DB920, &qword_100238870);
        sub_100004E24(v76, &qword_1002DA970, &qword_1002318B0);
        if (v214 == 3)
        {
          memcpy(v221, v32, sizeof(v221));
          if (sub_100013900(v221) == 1 || v221[264] != 1)
          {
            memcpy(v220, v32, sizeof(v220));
            v80 = v217;
            sub_100007664();
            sub_10003D178(v193, v194, v195, v196);
            sub_100003C84();
            v197 = sub_10000C048();
            (qword_1002DA970)(v197);
            v198 = sub_1000045DC();
            (qword_1002DA970)(v198);
            sub_10000B7B0();
            sub_100002728(v199, v200, v201, v45);
            sub_100007340(v28[11]);
            sub_100007B78();
            sub_100002728(v202, v203, v204, v209);
            sub_100007340(v28[14]);
            memcpy(v80, v220, 0x148uLL);
            *&v80[v28[8]] = 3;
            v93 = v28[10];
            v94 = v214;
          }

          else
          {
            memcpy(v220, v32, sizeof(v220));
            v80 = v217;
            sub_100007664();
            sub_10003D178(v81, v82, v83, v84);
            sub_100003C84();
            v85 = sub_10000C048();
            (qword_1002DA970)(v85);
            v86 = sub_1000045DC();
            (qword_1002DA970)(v86);
            sub_10000B7B0();
            sub_100002728(v87, v88, v89, v45);
            sub_100007340(v28[11]);
            sub_100007B78();
            sub_100002728(v90, v91, v92, v209);
            sub_100007340(v28[14]);
            memcpy(v80, v220, 0x148uLL);
            *&v80[v28[8]] = v214;
            v93 = v28[10];
            v94 = 3;
          }

          *&v80[v93] = v94;
          *&v80[v28[12]] = v213;
          sub_10003D178(v220, &v219, &qword_1002DB920, &qword_100238870);
        }

        else
        {
          sub_10013168C();
        }
      }

      else
      {
        v184 = v206;
        v185 = v207;
        v186 = (*(v206 + 32))(v207, v76, v61);
        sub_100131948(v186, v187, &qword_1002DB920, &qword_100238870);
        sub_100130B68();
        (*(v184 + 8))(v185, v61);
      }

      sub_100006A4C();
      v192 = v32;
    }

    else
    {
      memcpy(v47, v48, v49);
      sub_10000320C();
      sub_10003D178(v108, v109, v110, v111);
      sub_10000320C();
      sub_10003D178(v112, v113, v114, v115);
      v116 = v218;
      (*v46)(v214, v6 + v28[7], v218);
      v117 = *(v6 + v28[8]);
      v118 = v45;
      if (v117 == 3 || ((v119 = HIBYTE(*(v6 + v28[8])), v117 != 2) ? (v118 = *(v6 + v28[8])) : (v118 = v45), v119 == 2))
      {
        v119 = v45 >> 8;
      }

      LODWORD(v210) = v118 | (v119 << 8);
      sub_100007B78();
      sub_100002728(v120, v121, v122, v116);
      sub_100007664();
      sub_10003D178(v123, v124, v125, v126);
      v127 = *(v6 + v28[12]);
      type metadata accessor for CachedServerDataSyncAttempt(0);
      sub_100007B78();
      sub_100002728(v128, v129, v130, v131);
      sub_100007664();
      sub_10003D178(v132, v133, v134, v135);
      memcpy(v35, v222, 0x148uLL);
      sub_100007664();
      sub_100012CF4(v136, v137, v138, v139);
      sub_100007664();
      sub_100012CF4(v140, v141, v142, v143);
      v144 = v206;
      v145 = *(v206 + 32);
      v145(&v35[v28[7]], v214, v218);
      *&v35[v28[8]] = v210;
      *&v35[v28[10]] = 3;
      *&v35[v28[12]] = v127;
      v146 = v211;
      sub_100007664();
      v147 = v218;
      sub_10003D178(v148, v149, v150, v151);
      v152 = sub_1000071D8(v146);
      if (v79)
      {
        sub_100131948(v152, v153, &qword_1002DB920, &qword_100238870);
        sub_100004E24(v146, &qword_1002DA970, &qword_1002318B0);
        sub_10013168C();
      }

      else
      {
        v188 = v208;
        v189 = (v145)(v208, v146, v147);
        sub_100131948(v189, v190, &qword_1002DB920, &qword_100238870);
        sub_100130B68();
        (*(v144 + 8))(v188, v147);
      }

      sub_100006A4C();
      v192 = v35;
    }

    sub_100131634(v192, v191);
  }

  sub_1000027F8();
}

uint64_t sub_100131634(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000307C();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_10013168C()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  memcpy(__dst, v0, 0x148uLL);
  if (sub_100013900(__dst) == 1 || __dst[264] != 1)
  {
    memcpy(__src, v1, sizeof(__src));
    v20 = type metadata accessor for AccountDataState(0);
    sub_100006DF0(v20[5]);
    sub_100006DF0(v20[6]);
    v21 = v20[7];
    v22 = type metadata accessor for Date();
    sub_10000307C();
    v24 = *(v23 + 16);
    v24(&v5[v21], &v1[v21], v22);
    v24(&v5[v20[9]], v3, v22);
    sub_10000B7B0();
    sub_100002728(v25, v26, v27, v22);
    v28 = *&v1[v20[8]];
    sub_100006DF0(v20[11]);
    v29 = *&v1[v20[12]];
    type metadata accessor for CachedServerDataSyncAttempt(0);
    sub_100007B78();
    sub_100002728(v30, v31, v32, v33);
    sub_100006DF0(v20[14]);
    memcpy(v5, __src, 0x148uLL);
    *&v5[v20[8]] = 3;
    *&v5[v20[10]] = v28;
    *&v5[v20[12]] = v29;
  }

  else
  {
    memcpy(__src, v1, sizeof(__src));
    v6 = type metadata accessor for AccountDataState(0);
    sub_100006DF0(v6[5]);
    sub_100006DF0(v6[6]);
    v7 = v6[7];
    v8 = type metadata accessor for Date();
    sub_10000307C();
    v10 = *(v9 + 16);
    v10(&v5[v7], &v1[v7], v8);
    v11 = *&v1[v6[8]];
    v10(&v5[v6[9]], v3, v8);
    sub_10000B7B0();
    sub_100002728(v12, v13, v14, v8);
    sub_10003D178(&v1[v6[11]], &v5[v6[11]], &qword_1002DA970, &qword_1002318B0);
    v15 = *&v1[v6[12]];
    type metadata accessor for CachedServerDataSyncAttempt(0);
    sub_100007B78();
    sub_100002728(v16, v17, v18, v19);
    sub_10003D178(&v1[v6[14]], &v5[v6[14]], &qword_1002DA970, &qword_1002318B0);
    memcpy(v5, __src, 0x148uLL);
    *&v5[v6[8]] = v11;
    *&v5[v6[10]] = 3;
    *&v5[v6[12]] = v15;
  }

  sub_10003D178(__src, &v34, &qword_1002DB920, &qword_100238870);
  sub_1000027F8();
}

uint64_t sub_100131948(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10003D178(v4 + 1136, v4 + 808, a3, a4);
}

uint64_t sub_100131960()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  sub_100003724();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000306C();
  v7 = v6 - v5;
  v19 = type metadata accessor for URL();
  sub_100003724();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000306C();
  v13 = v12 - v11;
  sub_10000C4FC(v0, v0[3]);
  sub_100131FC4(v13);
  sub_100006E10();
  (*(v3 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
  sub_1000BBBB0();
  URL.append<A>(component:directoryHint:)();
  (*(v3 + 8))(v7, v1);
  v14 = dispatch thunk of FileStore.contents(at:)();
  if (v20)
  {
    return (*(v9 + 8))(v13, v19);
  }

  v17 = v14;
  v18 = v15;
  (*(v9 + 8))(v13, v19);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for AccountDataState(0);
  sub_1001321AC(&qword_1002DDD30, byte_1002387FC);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10000D170(v17, v18);
}

uint64_t sub_100131BD8(uint64_t a1)
{
  type metadata accessor for FileStoreProtectionType();
  sub_100003724();
  v46 = v3;
  v47 = v2;
  __chkstk_darwin(v2);
  sub_10000306C();
  v48 = v5 - v4;
  v6 = type metadata accessor for URL.DirectoryHint();
  sub_100003724();
  v45 = v7;
  __chkstk_darwin(v8);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = type metadata accessor for URL();
  sub_100003724();
  v49 = v13;
  __chkstk_darwin(v14);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v37 - v18;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for AccountDataState(0);
  sub_1001321AC(&qword_1002DDD28, byte_1002387D4);
  v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v22 = v21;

  if (!v1)
  {
    v43 = v20;
    v44 = v22;
    v41 = v11;
    v42 = v16;
    v24 = v6;
    v25 = v48;
    sub_10000C4FC(v50, v50[3]);
    sub_100131FC4(v19);
    dispatch thunk of FileStore.createFolder(at:createIntermediateFolders:)();
    v26 = *(v49 + 1);
    v40 = v12;
    v49 = v26;
    v26(v19, v12);
    v27 = v50[4];
    v38 = v50[3];
    v39 = v27;
    v37[1] = sub_10000C4FC(v50, v38);
    v28 = v42;
    sub_100131FC4(v42);
    sub_100006E10();
    v29 = v45;
    v30 = v41;
    (*(v45 + 104))(v41, enum case for URL.DirectoryHint.inferFromPath(_:), v24);
    sub_1000BBBB0();
    URL.append<A>(component:directoryHint:)();
    (*(v29 + 8))(v30, v24);
    v31 = v46;
    v32 = v25;
    v33 = v28;
    v34 = v47;
    (*(v46 + 104))(v32, enum case for FileStoreProtectionType.completeUntilFirstUserAuthentication(_:), v47);
    v36 = v43;
    v35 = v44;
    dispatch thunk of FileStore.createFile(at:contents:protectionType:)();
    sub_10000D170(v36, v35);
    (*(v31 + 8))(v32, v34);
    return v49(v33, v40);
  }

  return result;
}

uint64_t sub_100131FC4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL.DirectoryHint();
  sub_100003724();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000306C();
  v9 = v8 - v7;
  v10 = type metadata accessor for AccountDataStoreFilesystemCore(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 16))(a1, v1 + v11, v12);
  v13 = sub_10000C4FC((v1 + *(v10 + 24)), *(v1 + *(v10 + 24) + 24));
  v14 = [*(v13 + *(type metadata accessor for AMPAccount(0) + 20)) ams_isSandboxAccount];
  sub_10000F454(v13, v14);
  (*(v5 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  sub_1000BBBB0();
  URL.append<A>(component:directoryHint:)();
  (*(v5 + 8))(v9, v3);
}

uint64_t type metadata accessor for AccountDataStoreFilesystemCore(uint64_t a1)
{
  result = qword_1002DDD90;
  if (!qword_1002DDD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001321AC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for AccountDataState(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100132218(uint64_t a1)
{
  result = sub_1001322D4(319, &qword_1002DB738, &protocol descriptor for FileStore);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      result = sub_1001322D4(319, &unk_1002DDDA0, &protocol descriptor for AccountRepresenting);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001322D4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

BOOL sub_100132328(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  sub_1000A9914(a1, v9);
  if (sub_100004DFC(v9, 1, v10) == 1)
  {
    v6 = v9;
LABEL_5:
    sub_1000ACD3C(v6);
    return 0;
  }

  v17 = *(v11 + 32);
  v17(v16, v9, v10);
  sub_1000A9914(a2, v6);
  if (sub_100004DFC(v6, 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
    goto LABEL_5;
  }

  v17(v13, v6, v10);
  v19 = static Date.> infix(_:_:)();
  v20 = *(v11 + 8);
  v20(v13, v10);
  v20(v16, v10);
  return (v19 & 1) != 0;
}

void *sub_10013256C()
{
  v2 = type metadata accessor for BagValueType();
  sub_100003724();
  v4 = v3;
  __chkstk_darwin(v5);
  v74 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100005238();
  __chkstk_darwin(v7);
  sub_100002DD0();
  v73 = v8;
  sub_100005238();
  __chkstk_darwin(v9);
  sub_100002DD0();
  v72 = v10;
  sub_100005238();
  __chkstk_darwin(v11);
  sub_100002DD0();
  v71 = v12;
  sub_100005238();
  __chkstk_darwin(v13);
  sub_100002DD0();
  v70 = v14;
  sub_100005238();
  __chkstk_darwin(v15);
  v17 = (&v63 - v16);
  v18 = 0;
  sub_100013BFC();
  v69 = v19;
  v20 = enum case for BagValueType.integer(_:);
  v21 = (v4 + 104);
  sub_100013BFC();
  v67 = v22;
  v68 = v23;
  sub_100013BFC();
  v65 = v24;
  v66 = v25;
  sub_100013BFC();
  v64 = v26;
  v27 = _swiftEmptyArrayStorage;
  do
  {
    v28 = *(&off_1002B3CE8 + v18++ + 32);
    switch(v28)
    {
      case 1:
        sub_100003CB0();
        v44 = sub_100007C9C(v70, v65);
        v45(v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100008060();
          v27 = v58;
        }

        sub_10000670C();
        if (v33)
        {
          sub_100006E30(v46);
          v27 = v59;
        }

        v34 = v70;
        break;
      case 2:
        sub_100003CB0();
        v38 = sub_100007C9C(v71, v66);
        v39(v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100008060();
          v27 = v52;
        }

        sub_10000670C();
        if (v33)
        {
          sub_100006E30(v40);
          v27 = v53;
        }

        v34 = v71;
        break;
      case 3:
        sub_100003CB0();
        v41 = sub_100007C9C(v72, v67);
        v42(v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100008060();
          v27 = v54;
        }

        sub_10000670C();
        if (v33)
        {
          sub_100006E30(v43);
          v27 = v55;
        }

        v34 = v72;
        break;
      case 4:
        sub_100003CB0();
        v35 = sub_100007C9C(v73, v68);
        v36(v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100008060();
          v27 = v50;
        }

        sub_10000670C();
        if (v33)
        {
          sub_100006E30(v37);
          v27 = v51;
        }

        v34 = v73;
        break;
      case 5:
        sub_100003CB0();
        v47 = v74;
        *v74 = v48;
        v47[1] = v69;
        (*v21)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100008060();
          v27 = v60;
        }

        sub_10000670C();
        if (v33)
        {
          sub_100006E30(v49);
          v27 = v61;
        }

        v34 = v74;
        break;
      default:
        sub_100003CB0();
        v30 = v29 + 8;
        v31 = v64;
        *v17 = v30;
        v17[1] = v31;
        (*v21)(v17, v20, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100008060();
          v27 = v56;
        }

        sub_10000670C();
        if (v33)
        {
          sub_100006E30(v32);
          v27 = v57;
        }

        v34 = v17;
        break;
    }

    v27[2] = v0;
    (*(v4 + 32))(v27 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v1, v34, v2);
  }

  while (v18 != 6);
  return v27;
}

unint64_t sub_1001329AC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3D10, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001329FC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4])
  {
    return a1[5] == a2[5];
  }

  else
  {
    return _s12amsaccountsd4AvroC20schemaEncodingOption33_E75BE20988CE4C068FC731DDC06586E6LLAA0b6SchemadE0Ovpfi_0();
  }
}

uint64_t sub_100132A64()
{
  v2 = sub_100099DF4(&qword_1002DDEA0, &qword_100239AE0);
  sub_100003724();
  v4 = v3;
  sub_100003774();
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  sub_100002810();
  v8 = sub_10000CD50();
  sub_10000EE2C(&unk_1002B8A60, v9, v8);
  v10 = *v0;
  v23 = 0;
  sub_100007360(v10, &v23);
  if (!v1)
  {
    v11 = v0[1];
    v22 = 1;
    sub_100007360(v11, &v22);
    v12 = v0[2];
    v21 = 2;
    sub_100007360(v12, &v21);
    v13 = v0[3];
    v20 = 3;
    sub_100007360(v13, &v20);
    v14 = v0[4];
    v19 = 4;
    sub_100007360(v14, &v19);
    v15 = v0[5];
    v18 = 5;
    sub_100007360(v15, &v18);
  }

  return (*(v4 + 8))(v7, v2);
}

void sub_100132BF4()
{
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v0[1]);
  Hasher._combine(_:)(v0[2]);
  Hasher._combine(_:)(v0[3]);
  Hasher._combine(_:)(v0[4]);
  Hasher._combine(_:)(v0[5]);
}

Swift::Int sub_100132C48()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v0[1]);
  Hasher._combine(_:)(v0[2]);
  Hasher._combine(_:)(v0[3]);
  Hasher._combine(_:)(v0[4]);
  Hasher._combine(_:)(v0[5]);
  return Hasher._finalize()();
}

unint64_t sub_100132CF0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001329AC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100132D20@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000CDB8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100132D4C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001329F8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100132D94(uint64_t a1)
{
  v2 = sub_10000CD50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100132DD0(uint64_t a1)
{
  v2 = sub_10000CD50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100132E30()
{
  type metadata accessor for BagValueType();
  sub_100003724();
  __chkstk_darwin(v2);
  sub_1000045F0();
  strcpy(v0, "account_data");
  *(v0 + 13) = 0;
  *(v0 + 14) = -5120;
  v3 = sub_10000B874();
  v4(v3);
  sub_10000B654(0, 1, 1, _swiftEmptyArrayStorage);
  sub_10000D05C();
  if (v6)
  {
    sub_100008DE0(v5);
    v1 = v10;
  }

  v7 = sub_100006A64();
  v8(v7);
  return v1;
}

BOOL sub_100132F38(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3DE8, v2);

  return v3 != 0;
}

uint64_t sub_100132F80()
{
  sub_100099DF4(&qword_1002DDE50, &qword_100239848);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v0);
  sub_100002810();
  v1 = sub_10000CA6C();
  sub_10000EE2C(&unk_1002B8940, v2, v1);
  sub_100003E88();
  v3 = sub_100133844();
  sub_10000D528(v3, v4);
  v5 = sub_10000A260();
  return v6(v5);
}

BOOL sub_10013308C@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100132F38(*a1);
  *a2 = result;
  return result;
}

void sub_1001330C0(uint64_t a1@<X8>)
{
  strcpy(a1, "account_data");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

BOOL sub_1001330E4@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100132F38(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100133124(uint64_t a1)
{
  v2 = sub_10000CA6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100133160(uint64_t a1)
{
  v2 = sub_10000CA6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1001331B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3E48, v2);

  return v3 != 0;
}

uint64_t sub_1001331FC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 8), *(a2 + 8)), vceqq_s64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && *(a1 + 40) == *(a2 + 40))
  {
    return static AvroSchemaEncodingError.__derived_enum_equals(_:_:)();
  }

  else
  {
    return _s12amsaccountsd4AvroC20schemaEncodingOption33_E75BE20988CE4C068FC731DDC06586E6LLAA0b6SchemadE0Ovpfi_0();
  }
}

uint64_t sub_100133250()
{
  sub_100099DF4(&qword_1002DDDF8, &qword_100239588);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v0);
  sub_100002810();
  v1 = sub_10000C540();
  sub_10000EE2C(&unk_1002B8830, v2, v1);
  sub_100003E88();
  v3 = sub_100133648();
  sub_10000D528(v3, v4);
  v5 = sub_10000A260();
  return v6(v5);
}

void sub_100133350()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
}

Swift::Int sub_1001333C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

BOOL sub_100133474@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001331B4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1001334A8@<X0>(void *a1@<X8>)
{
  result = sub_10000C7CC();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

BOOL sub_1001334D8@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001331B4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100133518(uint64_t a1)
{
  v2 = sub_10000C540();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100133554(uint64_t a1)
{
  v2 = sub_10000C540();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001335A8(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100132BF4();
  return Hasher._finalize()();
}

unint64_t sub_1001335F4()
{
  result = qword_1002DDDD8;
  if (!qword_1002DDDD8)
  {
    result = swift_getWitnessTable("=\\\a", &unk_1002B8798, v0, v1);
    atomic_store(result, &qword_1002DDDD8);
  }

  return result;
}

unint64_t sub_100133648()
{
  result = qword_1002DDE00;
  if (!qword_1002DDE00)
  {
    result = swift_getWitnessTable(byte_1002397A0, &unk_1002B88A8, v0, v1);
    atomic_store(result, &qword_1002DDE00);
  }

  return result;
}

unint64_t sub_1001336B8()
{
  result = qword_1002DDE08;
  if (!qword_1002DDE08)
  {
    result = swift_getWitnessTable("%[\a", &unk_1002B88A8, v0, v1);
    atomic_store(result, &qword_1002DDE08);
  }

  return result;
}

unint64_t sub_100133740()
{
  result = qword_1002DDE20;
  if (!qword_1002DDE20)
  {
    result = swift_getWitnessTable(byte_100239778, &unk_1002B8830, v0, v1);
    atomic_store(result, &qword_1002DDE20);
  }

  return result;
}

unint64_t sub_100133798()
{
  result = qword_1002DDE28;
  if (!qword_1002DDE28)
  {
    result = swift_getWitnessTable(byte_100239644, &unk_1002B8830, v0, v1);
    atomic_store(result, &qword_1002DDE28);
  }

  return result;
}

unint64_t sub_1001337F0()
{
  result = qword_1002DDE30;
  if (!qword_1002DDE30)
  {
    result = swift_getWitnessTable("u[\a", &unk_1002B8830, v0, v1);
    atomic_store(result, &qword_1002DDE30);
  }

  return result;
}

unint64_t sub_100133844()
{
  result = qword_1002DDE58;
  if (!qword_1002DDE58)
  {
    result = swift_getWitnessTable("aW\a", &unk_1002B89B8, v0, v1);
    atomic_store(result, &qword_1002DDE58);
  }

  return result;
}

unint64_t sub_1001338B4()
{
  result = qword_1002DDE60;
  if (!qword_1002DDE60)
  {
    result = swift_getWitnessTable(byte_100239874, &unk_1002B89B8, v0, v1);
    atomic_store(result, &qword_1002DDE60);
  }

  return result;
}

unint64_t sub_10013393C()
{
  result = qword_1002DDE78;
  if (!qword_1002DDE78)
  {
    result = swift_getWitnessTable(byte_100239A10, &unk_1002B8940, v0, v1);
    atomic_store(result, &qword_1002DDE78);
  }

  return result;
}

unint64_t sub_100133994()
{
  result = qword_1002DDE80;
  if (!qword_1002DDE80)
  {
    result = swift_getWitnessTable(byte_1002398DC, &unk_1002B8940, v0, v1);
    atomic_store(result, &qword_1002DDE80);
  }

  return result;
}

unint64_t sub_1001339EC()
{
  result = qword_1002DDE88;
  if (!qword_1002DDE88)
  {
    result = swift_getWitnessTable(byte_100239904, &unk_1002B8940, v0, v1);
    atomic_store(result, &qword_1002DDE88);
  }

  return result;
}

unint64_t sub_100133A80()
{
  result = qword_1002DDEB8;
  if (!qword_1002DDEB8)
  {
    result = swift_getWitnessTable(byte_100239C18, &unk_1002B8A60, v0, v1);
    atomic_store(result, &qword_1002DDEB8);
  }

  return result;
}

unint64_t sub_100133AD8()
{
  result = qword_1002DDEC0;
  if (!qword_1002DDEC0)
  {
    result = swift_getWitnessTable(byte_100239AE8, &unk_1002B8A60, v0, v1);
    atomic_store(result, &qword_1002DDEC0);
  }

  return result;
}

unint64_t sub_100133B30()
{
  result = qword_1002DDEC8;
  if (!qword_1002DDEC8)
  {
    result = swift_getWitnessTable(byte_100239B10, &unk_1002B8A60, v0, v1);
    atomic_store(result, &qword_1002DDEC8);
  }

  return result;
}

uint64_t sub_100133BB4(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100133C40(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a1;
  v6 = v5 == 2;
  v7 = *a2;
  v8 = *a2;
  if (v8 != 2)
  {
    v6 = 0;
  }

  if (v5 != 2 && v8 != 2)
  {
    v18 = v2;
    v19 = v3;
    v10 = *(a2 + 3);
    v16 = *(a2 + 1);
    v17[0] = v10;
    *(v17 + 12) = *(a2 + 36);
    v12 = v4;
    v13 = *(a1 + 1);
    v14[0] = *(a1 + 3);
    *(v14 + 12) = *(a1 + 36);
    v15 = v7;
    v6 = sub_1001B03D0(&v12, &v15);
  }

  return v6 & 1;
}

void sub_100133CD4(uint64_t a1)
{
  if (*v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    sub_1001B0534(a1);
  }
}

Swift::Int sub_100133D4C()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (*v0 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v0 + 3);
    v5 = *(v0 + 1);
    v6[0] = v2;
    *(v6 + 12) = *(v0 + 36);
    v4[9] = v1;
    Hasher._combine(_:)(1uLL);
    sub_1001B0534(v4);
  }

  return Hasher._finalize()();
}

uint64_t sub_100133DD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572656767697274 && a2 == 0xEB00000000744164)
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

uint64_t sub_100133EA0(char a1)
{
  if (a1)
  {
    return 0x6572656767697274;
  }

  else
  {
    return 0x72656767697274;
  }
}

uint64_t sub_100133EE0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for CachedServerDataSyncAttempt(0);

  return static Date.== infix(_:_:)();
}

uint64_t sub_100133F40(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002DDF88, &qword_100239E48);
  sub_100003724();
  v7 = v6;
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  sub_100008B3C(a1, a1[3]);
  sub_100137D98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[15] = *v3;
  v14[14] = 0;
  sub_100137EA4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for CachedServerDataSyncAttempt(0);
    v14[13] = 1;
    type metadata accessor for Date();
    sub_100004BAC();
    sub_100137D50(v11, v12, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1001340EC(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  type metadata accessor for CachedServerDataSyncAttempt(0);
  type metadata accessor for Date();
  sub_100004BAC();
  sub_100137D50(v2, v3, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100134174()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  type metadata accessor for CachedServerDataSyncAttempt(0);
  type metadata accessor for Date();
  sub_100004BAC();
  sub_100137D50(v1, v2, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_100134214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100004868();
  v28 = v27;
  v42 = v29;
  v44 = type metadata accessor for Date();
  sub_100003724();
  v41 = v30;
  __chkstk_darwin(v31);
  sub_10000306C();
  sub_1000051B0();
  v45 = sub_100099DF4(&qword_1002DDF70, &qword_100239E40);
  sub_100003724();
  v43 = v32;
  sub_100003774();
  __chkstk_darwin(v33);
  sub_100005244();
  v34 = type metadata accessor for CachedServerDataSyncAttempt(0);
  sub_10000B7EC();
  __chkstk_darwin(v35);
  sub_10000306C();
  v38 = (v37 - v36);
  sub_100008B3C(v28, v28[3]);
  sub_100137D98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v24)
  {
    sub_100137DEC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v38 = a14;
    sub_100004BAC();
    sub_100137D50(v39, v40, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v43 + 8))(v26, v45);
    (*(v41 + 32))(&v38[*(v34 + 20)], v25, v44);
    sub_100137E40(v38, v42);
  }

  sub_100004118(v28);
  sub_100005074();
}

uint64_t sub_1001344BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000100273890 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6970784561746164 && a2 == 0xEB00000000646572;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6168436C61636F6CLL && a2 == 0xEB0000000065676ELL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4674736575716572 && a2 == 0xED000064656C6961;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x70556D6574737973 && a2 == 0xEC00000065746164;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x676E696C6C6F70 && a2 == 0xE700000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001002740B0 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x646563726F66 && a2 == 0xE600000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6C6F486563616C70 && a2 == 0xEB00000000726564;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x79536C61756E616DLL && a2 == 0xEA0000000000636ELL;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x41746E756F636361 && a2 == 0xEB00000000687475)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_100134838(char a1)
{
  result = 0x6970784561746164;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6168436C61636F6CLL;
      break;
    case 3:
      result = 0x4674736575716572;
      break;
    case 4:
      result = 0x70556D6574737973;
      break;
    case 5:
      result = 0x676E696C6C6F70;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x646563726F66;
      break;
    case 8:
      result = 0x6C6F486563616C70;
      break;
    case 9:
      result = 0x79536C61756E616DLL;
      break;
    case 10:
      result = 0x41746E756F636361;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1001349A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100004868();
  a26 = v28;
  a27 = v29;
  v113 = v30;
  v32 = v31;
  sub_100099DF4(&qword_1002DE058, &qword_100239EB8);
  sub_100003724();
  v111 = v34;
  v112 = v33;
  sub_100003774();
  __chkstk_darwin(v35);
  sub_100003018();
  v110 = v36;
  sub_100099DF4(&qword_1002DE060, &qword_100239EC0);
  sub_100003724();
  v108 = v38;
  v109 = v37;
  sub_100003774();
  __chkstk_darwin(v39);
  sub_100003018();
  v107 = v40;
  sub_100099DF4(&qword_1002DE068, &qword_100239EC8);
  sub_100003724();
  v105 = v42;
  v106 = v41;
  sub_100003774();
  __chkstk_darwin(v43);
  sub_100003018();
  v104 = v44;
  sub_100099DF4(&qword_1002DE070, &qword_100239ED0);
  sub_100003724();
  v102 = v46;
  v103 = v45;
  sub_100003774();
  __chkstk_darwin(v47);
  sub_100003018();
  v101 = v48;
  sub_100099DF4(&qword_1002DE078, &qword_100239ED8);
  sub_100003724();
  v99 = v50;
  v100 = v49;
  sub_100003774();
  __chkstk_darwin(v51);
  sub_100003018();
  v98 = v52;
  v97 = sub_100099DF4(&qword_1002DE080, &qword_100239EE0);
  sub_100003724();
  v96 = v53;
  sub_100003774();
  __chkstk_darwin(v54);
  sub_100003018();
  sub_10000A1C0(v55);
  v95 = sub_100099DF4(&qword_1002DE088, &qword_100239EE8);
  sub_100003724();
  v94 = v56;
  sub_100003774();
  __chkstk_darwin(v57);
  sub_100003018();
  sub_10000A1C0(v58);
  v93 = sub_100099DF4(&qword_1002DE090, &qword_100239EF0);
  sub_100003724();
  v92 = v59;
  sub_100003774();
  __chkstk_darwin(v60);
  sub_100003018();
  sub_10000A1C0(v61);
  v91 = sub_100099DF4(&qword_1002DE098, &qword_100239EF8);
  sub_100003724();
  v90 = v62;
  sub_100003774();
  __chkstk_darwin(v63);
  sub_100003018();
  sub_10000A1C0(v64);
  v65 = sub_100099DF4(&qword_1002DE0A0, &qword_100239F00);
  sub_100003724();
  v89 = v66;
  sub_100003774();
  __chkstk_darwin(v67);
  v68 = sub_100099DF4(&qword_1002DE0A8, &qword_100239F08);
  sub_100003724();
  v88 = v69;
  sub_100003774();
  __chkstk_darwin(v70);
  sub_100005244();
  v115 = sub_100099DF4(&qword_1002DE0B0, &unk_100239F10);
  sub_100003724();
  v72 = v71;
  sub_100003774();
  __chkstk_darwin(v73);
  v75 = &v87 - v74;
  sub_100008B3C(v32, v32[3]);
  sub_100137EF8();
  v114 = v75;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v113)
  {
    case 1:
      v117 = 1;
      sub_10013870C();
      sub_100003218();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v82 = sub_10000C068();
      v83(v82, v65);
      v84 = sub_100005CD0();
      goto LABEL_17;
    case 2:
      v118 = 2;
      sub_1001386B8();
      sub_100003934(&type metadata for CachedServerDataSyncTrigger.LocalChangeCodingKeys, &v118);
      v76 = sub_10000C068();
      v78 = &a10;
      goto LABEL_7;
    case 3:
      a10 = 3;
      sub_100138664();
      sub_100003934(&type metadata for CachedServerDataSyncTrigger.RequestFailedCodingKeys, &a10);
      v76 = sub_10000C068();
      v78 = &a20;
      goto LABEL_7;
    case 4:
      a11 = 4;
      sub_100138610();
      sub_100003934(&type metadata for CachedServerDataSyncTrigger.SystemUpdateCodingKeys, &a11);
      v76 = sub_10000C068();
      v78 = &a23;
LABEL_7:
      v80 = *(v78 - 32);
      goto LABEL_15;
    case 5:
      a12 = 5;
      sub_1001385BC();
      sub_100003934(&type metadata for CachedServerDataSyncTrigger.PollingCodingKeys, &a12);
      v76 = sub_10000C068();
      v80 = v97;
      goto LABEL_15;
    case 6:
      a13 = 6;
      sub_100138568();
      v79 = v98;
      sub_100003934(&type metadata for CachedServerDataSyncTrigger.ScheduledActivityCodingKeys, &a13);
      v81 = v99;
      v80 = v100;
      goto LABEL_14;
    case 7:
      a14 = 7;
      sub_100138514();
      v79 = v101;
      sub_100003934(&type metadata for CachedServerDataSyncTrigger.ForcedCodingKeys, &a14);
      v81 = v102;
      v80 = v103;
      goto LABEL_14;
    case 8:
      a15 = 8;
      sub_1001384C0();
      v79 = v104;
      sub_100003934(&type metadata for CachedServerDataSyncTrigger.PlaceHolderCodingKeys, &a15);
      v81 = v105;
      v80 = v106;
      goto LABEL_14;
    case 9:
      a16 = 9;
      sub_10013846C();
      v79 = v107;
      sub_100003934(&type metadata for CachedServerDataSyncTrigger.ManualSyncCodingKeys, &a16);
      v81 = v108;
      v80 = v109;
      goto LABEL_14;
    case 10:
      a17 = 10;
      sub_100138418();
      v79 = v110;
      sub_100003934(&type metadata for CachedServerDataSyncTrigger.AccountAuthCodingKeys, &a17);
      v81 = v111;
      v80 = v112;
LABEL_14:
      v77 = *(v81 + 8);
      v76 = v79;
LABEL_15:
      v77(v76, v80);
      break;
    default:
      v116 = 0;
      sub_100138760();
      v32 = v114;
      v65 = v115;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v88 + 8))(v27, v68);
      break;
  }

  v86 = *(v72 + 8);
  v84 = v32;
  v85 = v65;
LABEL_17:
  v86(v84, v85);
  sub_100005074();
}

void sub_100135210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100004868();
  a26 = v28;
  a27 = v29;
  v120 = v27;
  v31 = v30;
  sub_100099DF4(&qword_1002DDF98, &qword_100239E50);
  sub_100003724();
  v108 = v33;
  v109 = v32;
  sub_100003774();
  __chkstk_darwin(v34);
  sub_100003018();
  v115 = v35;
  sub_100099DF4(&qword_1002DDFA0, &qword_100239E58);
  sub_100003724();
  v106 = v37;
  v107 = v36;
  sub_100003774();
  __chkstk_darwin(v38);
  sub_100003018();
  v114 = v39;
  sub_100099DF4(&qword_1002DDFA8, &qword_100239E60);
  sub_100003724();
  v104 = v41;
  v105 = v40;
  sub_100003774();
  __chkstk_darwin(v42);
  sub_100003018();
  v113 = v43;
  sub_100099DF4(&qword_1002DDFB0, &qword_100239E68);
  sub_100003724();
  v102 = v45;
  v103 = v44;
  sub_100003774();
  __chkstk_darwin(v46);
  sub_100003018();
  v118 = v47;
  v100[17] = sub_100099DF4(&qword_1002DDFB8, &qword_100239E70);
  sub_100003724();
  v101 = v48;
  sub_100003774();
  __chkstk_darwin(v49);
  sub_100003018();
  v117 = v50;
  v100[16] = sub_100099DF4(&qword_1002DDFC0, &qword_100239E78);
  sub_100003724();
  v100[15] = v51;
  sub_100003774();
  __chkstk_darwin(v52);
  sub_100003018();
  v116 = v53;
  v100[14] = sub_100099DF4(&qword_1002DDFC8, &qword_100239E80);
  sub_100003724();
  v100[13] = v54;
  sub_100003774();
  __chkstk_darwin(v55);
  sub_100003018();
  v112 = v56;
  v100[12] = sub_100099DF4(&qword_1002DDFD0, &qword_100239E88);
  sub_100003724();
  v100[11] = v57;
  sub_100003774();
  __chkstk_darwin(v58);
  sub_100003018();
  v111 = v59;
  v100[10] = sub_100099DF4(&qword_1002DDFD8, &qword_100239E90);
  sub_100003724();
  v100[9] = v60;
  sub_100003774();
  __chkstk_darwin(v61);
  sub_100003018();
  v110 = v62;
  v100[8] = sub_100099DF4(&qword_1002DDFE0, &qword_100239E98);
  sub_100003724();
  v100[7] = v63;
  sub_100003774();
  __chkstk_darwin(v64);
  v66 = v100 - v65;
  v67 = sub_100099DF4(&qword_1002DDFE8, &qword_100239EA0);
  sub_100003724();
  v100[6] = v68;
  sub_100003774();
  __chkstk_darwin(v69);
  v71 = v100 - v70;
  sub_100099DF4(&qword_1002DDFF0, &qword_100239EA8);
  sub_100003724();
  v73 = v72;
  sub_100003774();
  __chkstk_darwin(v74);
  sub_100005244();
  v75 = v31[3];
  v119 = v31;
  sub_100008B3C(v31, v75);
  sub_100137EF8();
  sub_100008E04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    goto LABEL_8;
  }

  v100[4] = v71;
  v100[3] = v67;
  v100[5] = v66;
  v76 = v117;
  v77 = v118;
  v120 = v73;
  KeyedDecodingContainer.allKeys.getter();
  sub_1000F8260();
  if (v79 == v80 >> 1)
  {
LABEL_7:
    type metadata accessor for DecodingError();
    swift_allocError();
    v91 = v90;
    sub_100099DF4(&qword_1002DC2F8, &qword_100239EB0);
    *v91 = &type metadata for CachedServerDataSyncTrigger;
    v92 = KeyedDecodingContainer.codingPath.getter();
    sub_10013A2BC(v92);
    sub_10000B7EC();
    (*(v93 + 104))(v91);
    swift_willThrow();
    swift_unknownObjectRelease();
    v94 = sub_10000A5AC();
    v95(v94);
LABEL_8:
    sub_100004118(v119);
LABEL_9:
    sub_100005074();
    return;
  }

  v100[2] = 0;
  if (v79 < (v80 >> 1))
  {
    v81 = *(v78 + v79);
    v82 = sub_1000F825C();
    v84 = v83;
    v86 = v85;
    swift_unknownObjectRelease();
    if (v84 == v86 >> 1)
    {
      v100[1] = v82;
      switch(v81)
      {
        case 1:
          v122 = 1;
          sub_10013870C();
          sub_100006E54(&type metadata for CachedServerDataSyncTrigger.DataExpiredCodingKeys, &v122);
          sub_100004608();
          v87 = sub_10000BABC();
          v89 = &a9;
          goto LABEL_18;
        case 2:
          v123 = 2;
          sub_1001386B8();
          sub_100006E54(&type metadata for CachedServerDataSyncTrigger.LocalChangeCodingKeys, &v123);
          sub_100004608();
          v87 = sub_10000BABC();
          v89 = &a18;
          goto LABEL_18;
        case 3:
          a10 = 3;
          sub_100138664();
          sub_100006E54(&type metadata for CachedServerDataSyncTrigger.RequestFailedCodingKeys, &a10);
          sub_100004608();
          v87 = sub_10000BABC();
          v89 = &a20;
          goto LABEL_18;
        case 4:
          a11 = 4;
          sub_100138610();
          sub_100006E54(&type metadata for CachedServerDataSyncTrigger.SystemUpdateCodingKeys, &a11);
          sub_100004608();
          v87 = sub_10000BABC();
          v89 = &a22;
          goto LABEL_18;
        case 5:
          a12 = 5;
          sub_1001385BC();
          sub_100007CB0(&type metadata for CachedServerDataSyncTrigger.PollingCodingKeys, &a12);
          sub_100004608();
          v87 = sub_10000BABC();
          v89 = &a24;
          goto LABEL_18;
        case 6:
          a13 = 6;
          sub_100138568();
          sub_100007CB0(&type metadata for CachedServerDataSyncTrigger.ScheduledActivityCodingKeys, &a13);
          sub_100004608();
          v88 = *(v101 + 8);
          v87 = v76;
          v89 = &a25;
          goto LABEL_18;
        case 7:
          a14 = 7;
          sub_100138514();
          sub_100006E54(&type metadata for CachedServerDataSyncTrigger.ForcedCodingKeys, &a14);
          sub_100004608();
          v97 = v102;
          v96 = v103;
          goto LABEL_21;
        case 8:
          a15 = 8;
          sub_1001384C0();
          v77 = v113;
          sub_100006E54(&type metadata for CachedServerDataSyncTrigger.PlaceHolderCodingKeys, &a15);
          sub_100004608();
          v97 = v104;
          v96 = v105;
          goto LABEL_21;
        case 9:
          a16 = 9;
          sub_10013846C();
          v77 = v114;
          sub_100006E54(&type metadata for CachedServerDataSyncTrigger.ManualSyncCodingKeys, &a16);
          sub_100004608();
          v97 = v106;
          v96 = v107;
          goto LABEL_21;
        case 10:
          a17 = 10;
          sub_100138418();
          v77 = v115;
          sub_100006E54(&type metadata for CachedServerDataSyncTrigger.AccountAuthCodingKeys, &a17);
          sub_100004608();
          v97 = v108;
          v96 = v109;
LABEL_21:
          v88 = *(v97 + 8);
          v87 = v77;
          break;
        default:
          v121 = 0;
          sub_100138760();
          sub_100006E54(&type metadata for CachedServerDataSyncTrigger.PushNotificationCodingKeys, &v121);
          sub_100004608();
          v87 = sub_10000BABC();
          v89 = &v118;
LABEL_18:
          v96 = *(v89 - 32);
          break;
      }

      v88(v87, v96);
      v98 = sub_10000A5AC();
      v99(v98);
      sub_100004118(v119);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_100135C74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xEC000000636E7953;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4974706D65747461 && a2 == 0xEF746867696C666ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x526572756C696166 && a2 == 0xEC00000079727465;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E696C6C6F70 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x797469726F697270 && a2 == 0xEC000000636E7953)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
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

uint64_t sub_100135E2C(char a1)
{
  result = 0x647261646E617473;
  switch(a1)
  {
    case 1:
      result = 0x4974706D65747461;
      break;
    case 2:
      result = 0x526572756C696166;
      break;
    case 3:
      result = 0x676E696C6C6F70;
      break;
    case 4:
      result = 0x797469726F697270;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100135EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100004868();
  a25 = v27;
  a26 = v28;
  v73 = v29;
  v31 = v30;
  sub_100099DF4(&qword_1002DE3A0, &qword_10023AC40);
  sub_100003724();
  v71 = v33;
  v72 = v32;
  sub_100003774();
  __chkstk_darwin(v34);
  sub_100003018();
  v70 = v35;
  sub_100099DF4(&qword_1002DE3A8, &qword_10023AC48);
  sub_100003724();
  v68 = v37;
  v69 = v36;
  sub_100003774();
  __chkstk_darwin(v38);
  sub_100003018();
  v67 = v39;
  sub_100099DF4(&qword_1002DE3B0, &qword_10023AC50);
  sub_100003724();
  v65 = v41;
  v66 = v40;
  sub_100003774();
  __chkstk_darwin(v42);
  sub_100003018();
  v64 = v43;
  sub_100099DF4(&qword_1002DE3B8, &qword_10023AC58);
  sub_100003724();
  v62 = v45;
  v63 = v44;
  sub_100003774();
  __chkstk_darwin(v46);
  sub_100005244();
  v47 = sub_100099DF4(&qword_1002DE3C0, &qword_10023AC60);
  sub_100003724();
  v61 = v48;
  sub_100003774();
  __chkstk_darwin(v49);
  v51 = &v61 - v50;
  v52 = sub_100099DF4(&qword_1002DE3C8, &qword_10023AC68);
  sub_100003724();
  v54 = v53;
  sub_100003774();
  __chkstk_darwin(v55);
  v57 = &v61 - v56;
  sub_100008B3C(v31, v31[3]);
  sub_1001399FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v73)
  {
    case 1:
      a13 = 1;
      sub_100139B4C();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v62 + 8))(v26, v63);
      break;
    case 2:
      a14 = 2;
      sub_100139AF8();
      v58 = v64;
      sub_100003CBC(&type metadata for CachedServerDataSyncReason.FailureRetryCodingKeys, &a14);
      v60 = v65;
      v59 = v66;
      goto LABEL_6;
    case 3:
      a15 = 3;
      sub_100139AA4();
      v58 = v67;
      sub_100003CBC(&type metadata for CachedServerDataSyncReason.PollingCodingKeys, &a15);
      v60 = v68;
      v59 = v69;
      goto LABEL_6;
    case 4:
      sub_10000D548();
      sub_100139A50();
      v58 = v70;
      sub_100003CBC(&type metadata for CachedServerDataSyncReason.PrioritySyncCodingKeys, &a16);
      v60 = v71;
      v59 = v72;
LABEL_6:
      (*(v60 + 8))(v58, v59);
      break;
    default:
      a12 = 0;
      sub_100139BA0();
      sub_100003CBC(&type metadata for CachedServerDataSyncReason.StandardSyncCodingKeys, &a12);
      (*(v61 + 8))(v51, v47);
      break;
  }

  (*(v54 + 8))(v57, v52);
  sub_100005074();
}

void sub_100136320()
{
  sub_100004868();
  v65 = v0;
  v3 = v2;
  v64 = sub_100099DF4(&qword_1002DE340, &qword_10023AC10);
  sub_100003724();
  v59 = v4;
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100003018();
  v63 = v6;
  sub_100099DF4(&qword_1002DE348, &qword_10023AC18);
  sub_100003724();
  v57 = v8;
  v58 = v7;
  sub_100003774();
  __chkstk_darwin(v9);
  sub_100003018();
  v61 = v10;
  sub_100099DF4(&qword_1002DE350, &qword_10023AC20);
  sub_100003724();
  v55 = v12;
  v56 = v11;
  sub_100003774();
  __chkstk_darwin(v13);
  sub_100003018();
  v60 = v14;
  sub_100099DF4(&qword_1002DE358, &qword_10023AC28);
  sub_100003724();
  v53 = v16;
  v54 = v15;
  sub_100003774();
  __chkstk_darwin(v17);
  sub_1000051B0();
  v18 = sub_100099DF4(&qword_1002DE360, &qword_10023AC30);
  sub_100003724();
  v52 = v19;
  sub_100003774();
  __chkstk_darwin(v20);
  v22 = &v48 - v21;
  sub_100099DF4(&qword_1002DE368, &qword_10023AC38);
  sub_100003724();
  v62 = v23;
  sub_100003774();
  __chkstk_darwin(v24);
  sub_100008B3C(v3, v3[3]);
  sub_1001399FC();
  v25 = v65;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    goto LABEL_8;
  }

  v49 = v18;
  v50 = v22;
  v51 = v1;
  v27 = v63;
  v26 = v64;
  v65 = v3;
  KeyedDecodingContainer.allKeys.getter();
  sub_1000F8260();
  if (v29 == v30 >> 1)
  {
LABEL_7:
    type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v37;
    sub_100099DF4(&qword_1002DC2F8, &qword_100239EB0);
    *v38 = &type metadata for CachedServerDataSyncReason;
    v39 = KeyedDecodingContainer.codingPath.getter();
    sub_10013A2BC(v39);
    sub_10000B7EC();
    (*(v40 + 104))(v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = sub_100005CD0();
    v42(v41);
    v3 = v65;
LABEL_8:
    sub_100004118(v3);
LABEL_9:
    sub_100005074();
    return;
  }

  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    sub_1000F825C();
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      switch(v31)
      {
        case 1:
          sub_100139B4C();
          v43 = v51;
          sub_100003218();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          v45 = v53;
          v44 = v54;
          goto LABEL_14;
        case 2:
          sub_100139AF8();
          v43 = v60;
          sub_100003218();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          v45 = v55;
          v44 = v56;
          goto LABEL_14;
        case 3:
          sub_100139AA4();
          v43 = v61;
          sub_100003218();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          v45 = v57;
          v44 = v58;
LABEL_14:
          (*(v45 + 8))(v43, v44);
          break;
        case 4:
          sub_10000D548();
          sub_100139A50();
          sub_100003218();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v59 + 8))(v27, v26);
          break;
        default:
          sub_100139BA0();
          v36 = v50;
          sub_100003218();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v52 + 8))(v36, v49);
          break;
      }

      v46 = sub_100005CD0();
      v47(v46);
      sub_100004118(v65);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_100136998(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636E79537478656ELL && a2 == 0xEA00000000007441;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x44496B736174 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
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

uint64_t sub_100136B48(char a1)
{
  result = 0x49746E756F636361;
  switch(a1)
  {
    case 1:
      result = 0x636E79537478656ELL;
      break;
    case 2:
      result = 0x72656767697274;
      break;
    case 3:
      result = 0x6E6F73616572;
      break;
    case 4:
      result = 0x44496B736174;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100136BE4(uint64_t a1, uint64_t a2)
{
  if ((static AccountIdentity.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
  if ((static Date.== infix(_:_:)() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v5 = v4[8];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 == *v8 && v7 == v8[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100136CB0(void *a1)
{
  v4 = v1;
  v6 = sub_100099DF4(&qword_1002DE330, &qword_10023AC08);
  sub_100003724();
  v8 = v7;
  sub_100003774();
  __chkstk_darwin(v9);
  sub_1000051B0();
  sub_100008B3C(a1, a1[3]);
  sub_100139840();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20[0]) = 0;
  type metadata accessor for AccountIdentity();
  sub_10000671C();
  sub_100137D50(v10, v11, &protocol conformance descriptor for AccountIdentity);
  sub_100014074(v4, v20);
  if (!v2)
  {
    v12 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
    v13 = v12[5];
    LOBYTE(v20[0]) = 1;
    type metadata accessor for Date();
    sub_100004BAC();
    sub_100137D50(v14, v15, &protocol conformance descriptor for Date);
    sub_100014074(v4 + v13, v20);
    LOBYTE(v20[0]) = *(v4 + v12[6]);
    v21 = 2;
    sub_100137EA4();
    sub_10000AB74();
    LOBYTE(v20[0]) = *(v4 + v12[7]);
    v21 = 3;
    sub_1001399A8();
    sub_10000AB74();
    v16 = (v4 + v12[8]);
    v18 = *v16;
    v17 = v16[1];
    v20[0] = v18;
    v20[1] = v17;
    sub_10000D548();
    sub_1000AEE94();
    sub_10000AB74();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_100136EEC(uint64_t a1)
{
  type metadata accessor for AccountIdentity();
  sub_10000671C();
  sub_100137D50(v2, v3, &protocol conformance descriptor for AccountIdentity);
  dispatch thunk of Hashable.hash(into:)();
  v4 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
  type metadata accessor for Date();
  sub_100004BAC();
  sub_100137D50(v5, v6, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(v4 + 24)));
  Hasher._combine(_:)(*(v1 + *(v4 + 28)));

  return String.hash(into:)();
}

Swift::Int sub_100136FF0()
{
  Hasher.init(_seed:)();
  sub_100136EEC(v1);
  return Hasher._finalize()();
}

void sub_100137030()
{
  sub_100004868();
  v3 = v2;
  v23 = v4;
  type metadata accessor for Date();
  sub_100003724();
  v25 = v6;
  v26 = v5;
  __chkstk_darwin(v5);
  sub_10000306C();
  v9 = v8 - v7;
  type metadata accessor for AccountIdentity();
  sub_100003724();
  v24 = v10;
  __chkstk_darwin(v11);
  sub_10000306C();
  v28 = v13 - v12;
  v29 = sub_100099DF4(&qword_1002DE318, &qword_10023AC00);
  sub_100003724();
  v27 = v14;
  sub_100003774();
  __chkstk_darwin(v15);
  sub_100005244();
  v16 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
  sub_10000B7EC();
  __chkstk_darwin(v17);
  sub_10000306C();
  sub_1000051B0();
  sub_100008B3C(v3, v3[3]);
  sub_100139840();
  sub_100008E04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v3);
  }

  else
  {
    sub_10000671C();
    sub_100137D50(v18, v19, &protocol conformance descriptor for AccountIdentity);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v24 + 32))(v1, v28);
    LOBYTE(v30) = 1;
    sub_100004BAC();
    sub_100137D50(v20, v21, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v25 + 32))(v1 + v16[5], v9, v26);
    sub_100137DEC();
    sub_10000536C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + v16[6]) = 1;
    sub_100139894();
    sub_10000536C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + v16[7]) = 1;
    sub_10000D548();
    sub_1000AEE40();
    sub_10000536C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v27 + 8))(0, v29);
    v22 = (v1 + v16[8]);
    *v22 = v30;
    v22[1] = v31;
    sub_1001398E8(v1, v23);
    sub_100004118(v3);
    sub_10013994C(v1);
  }

  sub_100005074();
}

Swift::Int sub_1001374B4(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100133CD4(v2);
  return Hasher._finalize()();
}

uint64_t sub_1001374FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100133DD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100137524(uint64_t a1)
{
  v2 = sub_100137D98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137560(uint64_t a1)
{
  v2 = sub_100137D98();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001375D4(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v1);
  type metadata accessor for Date();
  sub_100137D50(&qword_1002DAC90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100137680(uint64_t a1)
{
  v2 = sub_100138418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001376BC(uint64_t a1)
{
  v2 = sub_100138418();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001344BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100137740(uint64_t a1)
{
  v2 = sub_100137EF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013777C(uint64_t a1)
{
  v2 = sub_100137EF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001377B8(uint64_t a1)
{
  v2 = sub_10013870C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001377F4(uint64_t a1)
{
  v2 = sub_10013870C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137830(uint64_t a1)
{
  v2 = sub_100138514();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013786C(uint64_t a1)
{
  v2 = sub_100138514();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001378A8(uint64_t a1)
{
  v2 = sub_1001386B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001378E4(uint64_t a1)
{
  v2 = sub_1001386B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137920(uint64_t a1)
{
  v2 = sub_10013846C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013795C(uint64_t a1)
{
  v2 = sub_10013846C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137998(uint64_t a1)
{
  v2 = sub_1001384C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001379D4(uint64_t a1)
{
  v2 = sub_1001384C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137A10(uint64_t a1)
{
  v2 = sub_1001385BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137A4C(uint64_t a1)
{
  v2 = sub_1001385BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137A88(uint64_t a1)
{
  v2 = sub_100138760();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137AC4(uint64_t a1)
{
  v2 = sub_100138760();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137B00(uint64_t a1)
{
  v2 = sub_100138664();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137B3C(uint64_t a1)
{
  v2 = sub_100138664();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137B78(uint64_t a1)
{
  v2 = sub_100138568();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137BB4(uint64_t a1)
{
  v2 = sub_100138568();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137BF0(uint64_t a1)
{
  v2 = sub_100138610();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137C2C(uint64_t a1)
{
  v2 = sub_100138610();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100137CB4()
{
  result = qword_1002DDF60;
  if (!qword_1002DDF60)
  {
    result = swift_getWitnessTable(byte_100239D5C, &type metadata for CachedServerDataSyncTrigger, v0, v1);
    atomic_store(result, &qword_1002DDF60);
  }

  return result;
}

uint64_t sub_100137D50(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_100137D98()
{
  result = qword_1002DDF78;
  if (!qword_1002DDF78)
  {
    result = swift_getWitnessTable("qF\a", &type metadata for CachedServerDataSyncAttempt.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDF78);
  }

  return result;
}

unint64_t sub_100137DEC()
{
  result = qword_1002DDF80;
  if (!qword_1002DDF80)
  {
    result = swift_getWitnessTable(byte_100239CF4, &type metadata for CachedServerDataSyncTrigger, v0, v1);
    atomic_store(result, &qword_1002DDF80);
  }

  return result;
}

uint64_t sub_100137E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedServerDataSyncAttempt(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100137EA4()
{
  result = qword_1002DDF90;
  if (!qword_1002DDF90)
  {
    result = swift_getWitnessTable(byte_100239CCC, &type metadata for CachedServerDataSyncTrigger, v0, v1);
    atomic_store(result, &qword_1002DDF90);
  }

  return result;
}

unint64_t sub_100137EF8()
{
  result = qword_1002DDFF8;
  if (!qword_1002DDFF8)
  {
    result = swift_getWitnessTable(byte_10023AB60, &type metadata for CachedServerDataSyncTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DDFF8);
  }

  return result;
}

uint64_t sub_100137F4C(uint64_t a1)
{
  v2 = sub_100139B4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100137F88(uint64_t a1)
{
  v2 = sub_100139B4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100137FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100135C74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100137FF4(uint64_t a1)
{
  v2 = sub_1001399FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100138030(uint64_t a1)
{
  v2 = sub_1001399FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10013806C(uint64_t a1)
{
  v2 = sub_100139AF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001380A8(uint64_t a1)
{
  v2 = sub_100139AF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001380E4(uint64_t a1)
{
  v2 = sub_100139AA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100138120(uint64_t a1)
{
  v2 = sub_100139AA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10013815C(uint64_t a1)
{
  v2 = sub_100139A50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100138198(uint64_t a1)
{
  v2 = sub_100139A50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001381D4(uint64_t a1)
{
  v2 = sub_100139BA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100138210(uint64_t a1)
{
  v2 = sub_100139BA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100138264(_BYTE *a1@<X8>)
{
  sub_100136320();
  if (!v1)
  {
    *a1 = v3;
  }
}

Swift::Int sub_1001382AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_100138300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100136998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100138328(uint64_t a1)
{
  v2 = sub_100139840();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100138364(uint64_t a1)
{
  v2 = sub_100139840();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001383A8(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100136EEC(v2);
  return Hasher._finalize()();
}

unint64_t sub_100138418()
{
  result = qword_1002DE000;
  if (!qword_1002DE000)
  {
    result = swift_getWitnessTable(byte_10023AB10, &type metadata for CachedServerDataSyncTrigger.AccountAuthCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE000);
  }

  return result;
}

unint64_t sub_10013846C()
{
  result = qword_1002DE008;
  if (!qword_1002DE008)
  {
    result = swift_getWitnessTable("aG\a", &type metadata for CachedServerDataSyncTrigger.ManualSyncCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE008);
  }

  return result;
}

unint64_t sub_1001384C0()
{
  result = qword_1002DE010;
  if (!qword_1002DE010)
  {
    result = swift_getWitnessTable(byte_10023AA70, &type metadata for CachedServerDataSyncTrigger.PlaceHolderCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE010);
  }

  return result;
}

unint64_t sub_100138514()
{
  result = qword_1002DE018;
  if (!qword_1002DE018)
  {
    result = swift_getWitnessTable(byte_10023AA20, &type metadata for CachedServerDataSyncTrigger.ForcedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE018);
  }

  return result;
}

unint64_t sub_100138568()
{
  result = qword_1002DE020;
  if (!qword_1002DE020)
  {
    result = swift_getWitnessTable("QH\a", &type metadata for CachedServerDataSyncTrigger.ScheduledActivityCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE020);
  }

  return result;
}

unint64_t sub_1001385BC()
{
  result = qword_1002DE028;
  if (!qword_1002DE028)
  {
    result = swift_getWitnessTable(byte_10023A980, &type metadata for CachedServerDataSyncTrigger.PollingCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE028);
  }

  return result;
}

unint64_t sub_100138610()
{
  result = qword_1002DE030;
  if (!qword_1002DE030)
  {
    result = swift_getWitnessTable(byte_10023A930, &type metadata for CachedServerDataSyncTrigger.SystemUpdateCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE030);
  }

  return result;
}

unint64_t sub_100138664()
{
  result = qword_1002DE038;
  if (!qword_1002DE038)
  {
    result = swift_getWitnessTable("AI\a", &type metadata for CachedServerDataSyncTrigger.RequestFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE038);
  }

  return result;
}

unint64_t sub_1001386B8()
{
  result = qword_1002DE040;
  if (!qword_1002DE040)
  {
    result = swift_getWitnessTable(byte_10023A890, &type metadata for CachedServerDataSyncTrigger.LocalChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE040);
  }

  return result;
}

unint64_t sub_10013870C()
{
  result = qword_1002DE048;
  if (!qword_1002DE048)
  {
    result = swift_getWitnessTable(byte_10023A840, &type metadata for CachedServerDataSyncTrigger.DataExpiredCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE048);
  }

  return result;
}

unint64_t sub_100138760()
{
  result = qword_1002DE050;
  if (!qword_1002DE050)
  {
    result = swift_getWitnessTable("1J\a", &type metadata for CachedServerDataSyncTrigger.PushNotificationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE050);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CachedServerDataSyncScheduleAction(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for CachedServerDataSyncScheduleAction(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CachedServerDataSyncScheduleAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[52])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CachedServerDataSyncScheduleAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1001388A4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_1001388C0(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *a1 = a2 + 1;
  }

  return result;
}

uint64_t sub_100138950(uint64_t a1)
{
  result = type metadata accessor for AccountIdentity();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100138A28(uint64_t a1)
{
  type metadata accessor for AccountIdentity();
  if (v1 <= 0x3F)
  {
    sub_100126598(319, &qword_1002DA9F8, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      sub_100126598(319, &unk_1002DD718, type metadata accessor for CachedServerDataSyncAttempt);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *sub_100138B40(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CachedServerDataSyncAttempt.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100138DAC()
{
  result = qword_1002DE220;
  if (!qword_1002DE220)
  {
    result = swift_getWitnessTable("9O\a", &type metadata for CachedServerDataSyncAttempt.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE220);
  }

  return result;
}

unint64_t sub_100138E04()
{
  result = qword_1002DE228;
  if (!qword_1002DE228)
  {
    result = swift_getWitnessTable(byte_10023A5F0, &type metadata for CachedServerDataSyncTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE228);
  }

  return result;
}

unint64_t sub_100138E5C()
{
  result = qword_1002DE230;
  if (!qword_1002DE230)
  {
    result = swift_getWitnessTable("YJ\a", &type metadata for CachedServerDataSyncReason, v0, v1);
    atomic_store(result, &qword_1002DE230);
  }

  return result;
}

unint64_t sub_100138EFC()
{
  result = qword_1002DE240;
  if (!qword_1002DE240)
  {
    result = swift_getWitnessTable("yI\a", &type metadata for CachedServerDataSyncScheduleAction, v0, v1);
    atomic_store(result, &qword_1002DE240);
  }

  return result;
}

unint64_t sub_100138F54()
{
  result = qword_1002DE248;
  if (!qword_1002DE248)
  {
    result = swift_getWitnessTable(byte_10023A510, &type metadata for CachedServerDataSyncTrigger.PushNotificationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE248);
  }

  return result;
}

unint64_t sub_100138FAC()
{
  result = qword_1002DE250;
  if (!qword_1002DE250)
  {
    result = swift_getWitnessTable(byte_10023A538, &type metadata for CachedServerDataSyncTrigger.PushNotificationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE250);
  }

  return result;
}

unint64_t sub_100139004()
{
  result = qword_1002DE258;
  if (!qword_1002DE258)
  {
    result = swift_getWitnessTable(byte_10023A4C0, &type metadata for CachedServerDataSyncTrigger.DataExpiredCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE258);
  }

  return result;
}

unint64_t sub_10013905C()
{
  result = qword_1002DE260;
  if (!qword_1002DE260)
  {
    result = swift_getWitnessTable(byte_10023A4E8, &type metadata for CachedServerDataSyncTrigger.DataExpiredCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE260);
  }

  return result;
}

unint64_t sub_1001390B4()
{
  result = qword_1002DE268;
  if (!qword_1002DE268)
  {
    result = swift_getWitnessTable("aM\a", &type metadata for CachedServerDataSyncTrigger.LocalChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE268);
  }

  return result;
}

unint64_t sub_10013910C()
{
  result = qword_1002DE270;
  if (!qword_1002DE270)
  {
    result = swift_getWitnessTable("IM\a", &type metadata for CachedServerDataSyncTrigger.LocalChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE270);
  }

  return result;
}

unint64_t sub_100139164()
{
  result = qword_1002DE278;
  if (!qword_1002DE278)
  {
    result = swift_getWitnessTable(byte_10023A420, &type metadata for CachedServerDataSyncTrigger.RequestFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE278);
  }

  return result;
}

unint64_t sub_1001391BC()
{
  result = qword_1002DE280;
  if (!qword_1002DE280)
  {
    result = swift_getWitnessTable(byte_10023A448, &type metadata for CachedServerDataSyncTrigger.RequestFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE280);
  }

  return result;
}

unint64_t sub_100139214()
{
  result = qword_1002DE288;
  if (!qword_1002DE288)
  {
    result = swift_getWitnessTable(byte_10023A3D0, &type metadata for CachedServerDataSyncTrigger.SystemUpdateCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE288);
  }

  return result;
}

unint64_t sub_10013926C()
{
  result = qword_1002DE290;
  if (!qword_1002DE290)
  {
    result = swift_getWitnessTable(byte_10023A3F8, &type metadata for CachedServerDataSyncTrigger.SystemUpdateCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE290);
  }

  return result;
}

unint64_t sub_1001392C4()
{
  result = qword_1002DE298;
  if (!qword_1002DE298)
  {
    result = swift_getWitnessTable("QN\a", &type metadata for CachedServerDataSyncTrigger.PollingCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE298);
  }

  return result;
}

unint64_t sub_10013931C()
{
  result = qword_1002DE2A0;
  if (!qword_1002DE2A0)
  {
    result = swift_getWitnessTable("9N\a", &type metadata for CachedServerDataSyncTrigger.PollingCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE2A0);
  }

  return result;
}

unint64_t sub_100139374()
{
  result = qword_1002DE2A8;
  if (!qword_1002DE2A8)
  {
    result = swift_getWitnessTable(byte_10023A330, &type metadata for CachedServerDataSyncTrigger.ScheduledActivityCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE2A8);
  }

  return result;
}

unint64_t sub_1001393CC()
{
  result = qword_1002DE2B0;
  if (!qword_1002DE2B0)
  {
    result = swift_getWitnessTable(byte_10023A358, &type metadata for CachedServerDataSyncTrigger.ScheduledActivityCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE2B0);
  }

  return result;
}

unint64_t sub_100139424()
{
  result = qword_1002DE2B8;
  if (!qword_1002DE2B8)
  {
    result = swift_getWitnessTable(byte_10023A2E0, &type metadata for CachedServerDataSyncTrigger.ForcedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE2B8);
  }

  return result;
}

unint64_t sub_10013947C()
{
  result = qword_1002DE2C0;
  if (!qword_1002DE2C0)
  {
    result = swift_getWitnessTable(byte_10023A308, &type metadata for CachedServerDataSyncTrigger.ForcedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE2C0);
  }

  return result;
}

unint64_t sub_1001394D4()
{
  result = qword_1002DE2C8;
  if (!qword_1002DE2C8)
  {
    result = swift_getWitnessTable("AO\a", &type metadata for CachedServerDataSyncTrigger.PlaceHolderCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE2C8);
  }

  return result;
}

unint64_t sub_10013952C()
{
  result = qword_1002DE2D0;
  if (!qword_1002DE2D0)
  {
    result = swift_getWitnessTable(")O\a", &type metadata for CachedServerDataSyncTrigger.PlaceHolderCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE2D0);
  }

  return result;
}

unint64_t sub_100139584()
{
  result = qword_1002DE2D8;
  if (!qword_1002DE2D8)
  {
    result = swift_getWitnessTable(byte_10023A240, &type metadata for CachedServerDataSyncTrigger.ManualSyncCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE2D8);
  }

  return result;
}

unint64_t sub_1001395DC()
{
  result = qword_1002DE2E0;
  if (!qword_1002DE2E0)
  {
    result = swift_getWitnessTable("yO\a", &type metadata for CachedServerDataSyncTrigger.ManualSyncCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE2E0);
  }

  return result;
}

unint64_t sub_100139634()
{
  result = qword_1002DE2E8;
  if (!qword_1002DE2E8)
  {
    result = swift_getWitnessTable(byte_10023A1F0, &type metadata for CachedServerDataSyncTrigger.AccountAuthCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE2E8);
  }

  return result;
}

unint64_t sub_10013968C()
{
  result = qword_1002DE2F0;
  if (!qword_1002DE2F0)
  {
    result = swift_getWitnessTable(byte_10023A218, &type metadata for CachedServerDataSyncTrigger.AccountAuthCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE2F0);
  }

  return result;
}

unint64_t sub_1001396E4()
{
  result = qword_1002DE2F8;
  if (!qword_1002DE2F8)
  {
    result = swift_getWitnessTable("qL\a", &type metadata for CachedServerDataSyncTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE2F8);
  }

  return result;
}

unint64_t sub_10013973C()
{
  result = qword_1002DE300;
  if (!qword_1002DE300)
  {
    result = swift_getWitnessTable("YL\a", &type metadata for CachedServerDataSyncTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE300);
  }

  return result;
}

unint64_t sub_100139794()
{
  result = qword_1002DE308;
  if (!qword_1002DE308)
  {
    result = swift_getWitnessTable(byte_10023A138, &type metadata for CachedServerDataSyncAttempt.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE308);
  }

  return result;
}

unint64_t sub_1001397EC()
{
  result = qword_1002DE310;
  if (!qword_1002DE310)
  {
    result = swift_getWitnessTable(byte_10023A160, &type metadata for CachedServerDataSyncAttempt.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE310);
  }

  return result;
}

unint64_t sub_100139840()
{
  result = qword_1002DE320;
  if (!qword_1002DE320)
  {
    result = swift_getWitnessTable("Y@\a", &type metadata for CachedServerDataSyncTaskSchedule.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE320);
  }

  return result;
}

unint64_t sub_100139894()
{
  result = qword_1002DE328;
  if (!qword_1002DE328)
  {
    result = swift_getWitnessTable("iK\a", &type metadata for CachedServerDataSyncReason, v0, v1);
    atomic_store(result, &qword_1002DE328);
  }

  return result;
}

uint64_t sub_1001398E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013994C(uint64_t a1)
{
  v2 = type metadata accessor for CachedServerDataSyncTaskSchedule(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001399A8()
{
  result = qword_1002DE338;
  if (!qword_1002DE338)
  {
    result = swift_getWitnessTable(byte_10023A618, &type metadata for CachedServerDataSyncReason, v0, v1);
    atomic_store(result, &qword_1002DE338);
  }

  return result;
}

unint64_t sub_1001399FC()
{
  result = qword_1002DE370;
  if (!qword_1002DE370)
  {
    result = swift_getWitnessTable(byte_10023B178, &type metadata for CachedServerDataSyncReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE370);
  }

  return result;
}

unint64_t sub_100139A50()
{
  result = qword_1002DE378;
  if (!qword_1002DE378)
  {
    result = swift_getWitnessTable(byte_10023B128, &type metadata for CachedServerDataSyncReason.PrioritySyncCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE378);
  }

  return result;
}

unint64_t sub_100139AA4()
{
  result = qword_1002DE380;
  if (!qword_1002DE380)
  {
    result = swift_getWitnessTable("IA\a", &type metadata for CachedServerDataSyncReason.PollingCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE380);
  }

  return result;
}

unint64_t sub_100139AF8()
{
  result = qword_1002DE388;
  if (!qword_1002DE388)
  {
    result = swift_getWitnessTable(byte_10023B088, &type metadata for CachedServerDataSyncReason.FailureRetryCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE388);
  }

  return result;
}

unint64_t sub_100139B4C()
{
  result = qword_1002DE390;
  if (!qword_1002DE390)
  {
    result = swift_getWitnessTable(byte_10023B038, &type metadata for CachedServerDataSyncReason.AttemptInflightCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE390);
  }

  return result;
}

unint64_t sub_100139BA0()
{
  result = qword_1002DE398;
  if (!qword_1002DE398)
  {
    result = swift_getWitnessTable("9B\a", &type metadata for CachedServerDataSyncReason.StandardSyncCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DE398);
  }

  return result;
}

_BYTE *sub_100139C54(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}