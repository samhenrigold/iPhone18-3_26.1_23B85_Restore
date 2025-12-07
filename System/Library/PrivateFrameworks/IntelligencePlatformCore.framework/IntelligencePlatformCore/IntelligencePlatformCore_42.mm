void sub_1C47E5FB4()
{
  sub_1C43FBD3C();
  v1 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - v3;
  v5 = sub_1C4EF9D38();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  v32 = v9;
  v10 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap;
  swift_beginAccess();
  v11 = *(v0 + v10) + 64;
  sub_1C43FD030();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v30 = v7;
  v31 = (v7 + 32);
  swift_bridgeObjectRetain_n();
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v19 = v17;
    if (!v14)
    {
      break;
    }

LABEL_6:
    v14 &= v14 - 1;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9CE8();

    sub_1C440175C(v4, 1, v5);
    if (v20)
    {
      sub_1C4420C3C(v4, &qword_1EC0B9DC8, &unk_1C4F124A0);
    }

    else
    {
      v29 = *v31;
      v29(v32, v4, v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C458B324(0, *(v18 + 16) + 1, 1, v18);
        v18 = v26;
      }

      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1C458B324(v22 > 1, v23 + 1, 1, v18);
        v18 = v27;
      }

      *(v18 + 16) = v23 + 1;
      sub_1C43FBF6C();
      v29(v18 + v24 + *(v25 + 72) * v23, v32, v5);
    }
  }

  while (1)
  {
    v17 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      sub_1C43FE9F0();
      return;
    }

    v14 = *(v11 + 8 * v17);
    ++v19;
    if (v14)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t static HumanReadableFeaturizedBehaviorsGroup.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1C47F7A1C(a1);
  v4 = v1 == *v3 && v2 == v3[1];
  if (!v4 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v5 = sub_1C43FBC98();

  return sub_1C47E62F0(v5, v6);
}

uint64_t sub_1C47E62F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1C4F02938() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1C4F02938() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1C47E63BC()
{
  sub_1C43FBD3C();
  v2 = sub_1C442F8D4();
  v3 = type metadata accessor for LongitudinalEventData(v2);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD2D8();
  v57 = v5;
  v6 = sub_1C456902C(&qword_1EC0BD660, &unk_1C4F45450);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - v8;
  v10 = sub_1C456902C(&qword_1EC0BD668, &qword_1C4F2F370);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  v58 = v12;
  v13 = sub_1C43FBE44();
  v59 = type metadata accessor for LongitudinalEvent(v13);
  sub_1C44057B8();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C444B140();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v21 = *(v1 + 16);
  if (v21 != *(v0 + 16) || !v21 || v1 == v0)
  {
    goto LABEL_31;
  }

  v55 = v17;
  v56 = v3;
  sub_1C4441064();
  v23 = v1 + v22;
  v24 = v0 + v22;
  v53 = *(v25 + 72);
  v54 = v9;
  v52 = v10;
  while (1)
  {
    sub_1C47F5C60(v23, v20);
    sub_1C47F5C60(v24, v17);
    sub_1C447F6BC();
    if (v27)
    {
      if (!v26)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_1C43FD5A0();
      if (v28)
      {
        goto LABEL_30;
      }
    }

    sub_1C447F6BC();
    if (v30)
    {
      if (!v29)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_1C43FD5A0();
      if (v31)
      {
        goto LABEL_30;
      }
    }

    v32 = v58;
    v33 = *(v59 + 28);
    v34 = *(v10 + 48);
    sub_1C4460108(&v20[v33], v58, &qword_1EC0BD660, &unk_1C4F45450);
    sub_1C4460108(v17 + v33, v32 + v34, &qword_1EC0BD660, &unk_1C4F45450);
    v35 = v56;
    sub_1C440175C(v32, 1, v56);
    if (!v41)
    {
      break;
    }

    v36 = sub_1C44755FC();
    sub_1C440175C(v36, v37, v35);
    if (!v41)
    {
      goto LABEL_27;
    }

    sub_1C4420C3C(v32, &qword_1EC0BD660, &unk_1C4F45450);
    v17 = v55;
LABEL_22:
    sub_1C4F00328();
    sub_1C4419704();
    sub_1C47F6E3C(&qword_1EC0BB6B8, v47, MEMORY[0x1E69AAC10]);
    v48 = sub_1C4F010B8();
    sub_1C47F5CB8();
    sub_1C47F5CB8();
    if (v48)
    {
      v24 += v53;
      v23 += v53;
      if (--v21)
      {
        continue;
      }
    }

    goto LABEL_31;
  }

  v38 = v54;
  sub_1C4460108(v32, v54, &qword_1EC0BD660, &unk_1C4F45450);
  v39 = sub_1C44755FC();
  sub_1C440175C(v39, v40, v35);
  if (v41)
  {
    sub_1C47F5CB8();
LABEL_27:
    v49 = &qword_1EC0BD668;
    v50 = &qword_1C4F2F370;
    v51 = v32;
    goto LABEL_29;
  }

  v42 = v57;
  sub_1C47F5C08(v32 + v34, v57);
  if (*(v38 + *(v35 + 20)) == *(v42 + *(v35 + 20)) || (, , sub_1C4A11920(), v44 = v43, , , (v44 & 1) != 0))
  {
    sub_1C4F00328();
    sub_1C4419704();
    sub_1C47F6E3C(&qword_1EC0BB6B8, v45, MEMORY[0x1E69AAC10]);
    v46 = sub_1C4F010B8();
    sub_1C47F5CB8();
    sub_1C47F5CB8();
    sub_1C4420C3C(v58, &qword_1EC0BD660, &unk_1C4F45450);
    v10 = v52;
    v17 = v55;
    if ((v46 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  sub_1C47F5CB8();
  sub_1C47F5CB8();
  v49 = &qword_1EC0BD660;
  v50 = &unk_1C4F45450;
  v51 = v58;
LABEL_29:
  sub_1C4420C3C(v51, v49, v50);
LABEL_30:
  sub_1C47F5CB8();
  sub_1C47F5CB8();
LABEL_31:
  sub_1C44A1E7C();
  sub_1C43FE9F0();
}

void sub_1C47E6904()
{
  sub_1C43FBD3C();
  v3 = v2;
  v5 = v4;
  type metadata accessor for EntityTaggingPersonDataCollection(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v37 = v7;
  v8 = sub_1C456902C(&qword_1EC0BC4E8, &unk_1C4F24360);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  v39 = v10;
  v38 = sub_1C456902C(&qword_1EC0BC4F0, &unk_1C4F2F350);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C441B2EC();
  v41 = type metadata accessor for EntityTaggingPersonEntity(v12);
  sub_1C44057B8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C444B140();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C44AE8BC();
  v18 = *(v5 + 16);
  if (v18 == *(v3 + 16) && v18 && v5 != v3)
  {
    sub_1C4441064();
    v20 = v5 + v19;
    v21 = v3 + v19;
    v36 = *(v22 + 72);
    v40 = v0;
    while (1)
    {
      sub_1C47F5C60(v20, v0);
      if (!v18)
      {
        break;
      }

      sub_1C47F5C60(v21, v16);
      v23 = v0;
      v24 = *(v41 + 20);
      v25 = *(v38 + 48);
      sub_1C4460108(v23 + v24, v1, &qword_1EC0BC4E8, &unk_1C4F24360);
      sub_1C4460108(v16 + v24, v1 + v25, &qword_1EC0BC4E8, &unk_1C4F24360);
      sub_1C440582C(v1);
      if (v27)
      {
        sub_1C440582C(v1 + v25);
        if (!v27)
        {
          goto LABEL_28;
        }

        sub_1C4420C3C(v1, &qword_1EC0BC4E8, &unk_1C4F24360);
        v26 = v40;
      }

      else
      {
        sub_1C4460108(v1, v39, &qword_1EC0BC4E8, &unk_1C4F24360);
        sub_1C440582C(v1 + v25);
        if (v27)
        {
          sub_1C47F5CB8();
LABEL_28:
          sub_1C4420C3C(v1, &qword_1EC0BC4F0, &unk_1C4F2F350);
LABEL_29:
          sub_1C47F5CB8();
          sub_1C47F5CB8();
          goto LABEL_30;
        }

        sub_1C47F5C08(v1 + v25, v37);
        v35 = sub_1C4734FB8(v39, v37);
        sub_1C47F5CB8();
        sub_1C47F5CB8();
        sub_1C4420C3C(v1, &qword_1EC0BC4E8, &unk_1C4F24360);
        v26 = v40;
        if ((v35 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v28 = *(v41 + 24);
      v29 = *(v16 + v28 + 8);
      if (*(v26 + v28 + 8))
      {
        if (!v29)
        {
          goto LABEL_29;
        }

        sub_1C4402FD0(v26 + v28);
        v32 = v27 && v30 == v31;
        if (!v32 && (sub_1C4F02938() & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else if (v29)
      {
        goto LABEL_29;
      }

      sub_1C4F00328();
      sub_1C4419704();
      sub_1C47F6E3C(&qword_1EC0BB6B8, v33, MEMORY[0x1E69AAC10]);
      v34 = sub_1C4F010B8();
      sub_1C47F5CB8();
      sub_1C47F5CB8();
      if (v34)
      {
        v21 += v36;
        v20 += v36;
        v27 = v18-- == 1;
        v0 = v40;
        if (!v27)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    __break(1u);
  }

  else
  {
LABEL_30:
    sub_1C44A1E7C();
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C47E6D78(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1C4456958();
  }

  if (!v2 || result == a2)
  {
    return sub_1C4415EFC();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C47E6DCC()
{
  sub_1C442ABCC();
  if (v11 && v0 && v1 != v2)
  {
    v3 = (v1 + 56);
    v4 = (v2 + 56);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v5)
      {
        if (!v8)
        {
          return;
        }

        v11 = *(v3 - 3) == *(v4 - 3) && v5 == v8;
        if (!v11)
        {
          if ((sub_1C4F02938() & 1) == 0)
          {
            return;
          }

          if (v6 != v9 || v7 != v10)
          {
            return;
          }

          goto LABEL_24;
        }
      }

      else
      {

        if (v8)
        {
          return;
        }
      }

      if (v6 != v9 || v7 != v10)
      {
        return;
      }

LABEL_24:
      v3 += 4;
      v4 += 4;
      --v0;
    }

    while (v0);
  }
}

void sub_1C47E6EAC()
{
  sub_1C43FBD3C();
  sub_1C44145A4();
  if (v10 && v1 && v2 != v3)
  {
    v4 = (v2 + 32);
    v5 = (v3 + 32);
    do
    {
      v6 = 0xE700000000000000;
      v7 = 0x7463656A627573;
      switch(*v4)
      {
        case 1:
          v7 = 0x7461636964657270;
          v6 = 0xE900000000000065;
          break;
        case 2:
          v7 = 0x6E6F6974616C6572;
          v6 = 0xEE00644970696873;
          break;
        case 3:
          v7 = 0xD000000000000015;
          v6 = 0x80000001C4F86600;
          break;
        case 4:
          v6 = 0xE600000000000000;
          v7 = 0x7463656A626FLL;
          break;
        case 5:
          v7 = 0x73656372756F73;
          break;
        case 6:
          v7 = 0x6E656469666E6F63;
          v6 = 0xEA00000000006563;
          break;
        case 7:
          v7 = 0xD000000000000010;
          v6 = 0x80000001C4F86630;
          break;
        case 8:
          v6 = 0xE900000000000070;
          v7 = 0x6D617473656D6974;
          break;
        default:
          break;
      }

      v8 = 0xE700000000000000;
      v9 = 0x7463656A627573;
      switch(*v5)
      {
        case 1:
          v9 = 0x7461636964657270;
          v8 = 0xE900000000000065;
          break;
        case 2:
          v9 = 0x6E6F6974616C6572;
          v8 = 0xEE00644970696873;
          break;
        case 3:
          v9 = 0xD000000000000015;
          v8 = 0x80000001C4F86600;
          break;
        case 4:
          v8 = 0xE600000000000000;
          v9 = 0x7463656A626FLL;
          break;
        case 5:
          v9 = 0x73656372756F73;
          break;
        case 6:
          v9 = 0x6E656469666E6F63;
          v8 = 0xEA00000000006563;
          break;
        case 7:
          v9 = 0xD000000000000010;
          v8 = 0x80000001C4F86630;
          break;
        case 8:
          v8 = 0xE900000000000070;
          v9 = 0x6D617473656D6974;
          break;
        default:
          break;
      }

      v10 = v7 == v9 && v6 == v8;
      if (v10)
      {
      }

      else
      {
        sub_1C43FFF90(v7, v3, v9);
        sub_1C44A3C98();

        if ((v0 & 1) == 0)
        {
          break;
        }
      }

      sub_1C444171C();
    }

    while (!v10);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C47E7154(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C4F02938() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1C47E71E0()
{
  sub_1C44145A4();
  if (v3 && v0 && v1 != v2)
  {
    v4 = (v1 + 40);
    v5 = (v2 + 40);
    do
    {
      v6 = *(v5 - 1);
      if (*v4)
      {
        if ((*v5 & 1) == 0)
        {
          return;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C47C80C0();
      }

      else
      {
        if (*v5)
        {
          return;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v8 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C47C7F00(v8, v6);
      }

      v9 = v7;

      if ((v9 & 1) == 0)
      {
        break;
      }

      v4 += 16;
      v5 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_1C47E72B4()
{
  sub_1C43FBD3C();
  sub_1C44145A4();
  if (v12 && v1 && v2 != v3)
  {
    v4 = (v2 + 32);
    v5 = (v3 + 32);
    do
    {
      v6 = 0xE500000000000000;
      v7 = 0x6574756F72;
      switch(*v4)
      {
        case 1:
          v7 = 0x656D695464616F72;
          goto LABEL_12;
        case 2:
          v7 = 0x6570795464616F72;
LABEL_12:
          v6 = 0xE900000000000073;
          break;
        case 3:
          v7 = 0x546E696172726574;
          goto LABEL_15;
        case 4:
          v7 = 0xD000000000000010;
          v6 = 0x80000001C4F8F740;
          break;
        case 5:
          v7 = 0x6375426465657073;
          v6 = 0xEC0000007374656BLL;
          break;
        case 6:
          v7 = 0x4263696666617274;
          v8 = 0x7374656B6375;
          goto LABEL_20;
        case 7:
          v7 = 0x5472656874616577;
LABEL_15:
          v6 = 0xEC00000073657079;
          break;
        case 8:
          v7 = 0x65766974616C6572;
          v8 = 0x736465657053;
LABEL_20:
          v6 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 9:
          v7 = 0x65726F6373;
          break;
        case 0xA:
          v6 = 0xE800000000000000;
          v7 = 0x68774B6567617375;
          break;
        case 0xB:
          v7 = 0x556C616D6974706FLL;
          v6 = 0xEF68774B65676173;
          break;
        default:
          break;
      }

      v9 = 0xE500000000000000;
      v10 = 0x6574756F72;
      switch(*v5)
      {
        case 1:
          v10 = 0x656D695464616F72;
          goto LABEL_27;
        case 2:
          v10 = 0x6570795464616F72;
LABEL_27:
          v9 = 0xE900000000000073;
          break;
        case 3:
          v10 = 0x546E696172726574;
          goto LABEL_30;
        case 4:
          v10 = 0xD000000000000010;
          v9 = 0x80000001C4F8F740;
          break;
        case 5:
          v10 = 0x6375426465657073;
          v9 = 0xEC0000007374656BLL;
          break;
        case 6:
          v10 = 0x4263696666617274;
          v11 = 0x7374656B6375;
          goto LABEL_35;
        case 7:
          v10 = 0x5472656874616577;
LABEL_30:
          v9 = 0xEC00000073657079;
          break;
        case 8:
          v10 = 0x65766974616C6572;
          v11 = 0x736465657053;
LABEL_35:
          v9 = v11 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 9:
          v10 = 0x65726F6373;
          break;
        case 0xA:
          v9 = 0xE800000000000000;
          v10 = 0x68774B6567617375;
          break;
        case 0xB:
          v10 = 0x556C616D6974706FLL;
          v9 = 0xEF68774B65676173;
          break;
        default:
          break;
      }

      v12 = v7 == v10 && v6 == v9;
      if (v12)
      {
      }

      else
      {
        sub_1C43FFF90(v7, v3, v10);
        sub_1C44A3C98();

        if ((v0 & 1) == 0)
        {
          break;
        }
      }

      sub_1C444171C();
    }

    while (!v12);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C47E75FC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v23 = a2 + 32;
  v24 = result + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_50;
    }

    v4 = v24 + 40 * v3;
    result = *v4;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);
    v8 = *(v4 + 32);
    v9 = v23 + 40 * v3;
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    v12 = *(v9 + 32);
    if (result != *v9 || v5 != *(v9 + 8))
    {
      result = sub_1C4F02938();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v6)
    {
      if (!v10)
      {
        return 0;
      }

      v14 = *(v6 + 16);
      if (v14 != *(v10 + 16))
      {
        return 0;
      }

      if (v14)
      {
        v15 = v6 == v10;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        v16 = (v6 + 40);
        v17 = (v10 + 40);
        while (v14)
        {
          result = *(v16 - 1);
          if (result != *(v17 - 1) || *v16 != *v17)
          {
            result = sub_1C4F02938();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v16 += 2;
          v17 += 2;
          if (!--v14)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
        __break(1u);
LABEL_50:
        __break(1u);
        return result;
      }
    }

    else if (v10)
    {
      return 0;
    }

LABEL_28:
    if (v7)
    {
      break;
    }

    result = 0;
    if (v11 || ((v8 ^ v12) & 1) != 0)
    {
      return result;
    }

LABEL_44:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  if (!v11)
  {
    return 0;
  }

  v19 = *(v7 + 16);
  if (v19 != *(v11 + 16))
  {
    return 0;
  }

  if (!v19 || v7 == v11)
  {
LABEL_40:
    if (v8 != v12)
    {
      return 0;
    }

    goto LABEL_44;
  }

  v20 = (v7 + 40);
  v21 = (v11 + 40);
  while (1)
  {
    v22 = *(v20 - 1) == *(v21 - 1) && *v20 == *v21;
    if (!v22 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }

    v20 += 2;
    v21 += 2;
    if (!--v19)
    {
      goto LABEL_40;
    }
  }
}

void sub_1C47E77CC()
{
  sub_1C43FBD3C();
  v4 = v3;
  v6 = v5;
  type metadata accessor for NicknameEntry(0);
  sub_1C44057B8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C444B140();
  sub_1C44AE8BC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C44A17A8();
  if (v17 && v2 && v6 != v4)
  {
    sub_1C4441064();
    v10 = v6 + v9;
    v11 = v4 + v9;
    while (1)
    {
      sub_1C47F5C60(v10, v1);
      sub_1C47F5C60(v11, v0);
      sub_1C44BBDDC();
      if (v14)
      {
        if (!v12 || ((sub_1C4402FD0(v13), v17) ? (v17 = v15 == v16) : (v17 = 0), !v17 && (sub_1C4F02938() & 1) == 0))
        {
LABEL_29:
          sub_1C47F5CB8();
          sub_1C47F5CB8();
          break;
        }
      }

      else if (v12)
      {
        goto LABEL_29;
      }

      sub_1C44BBDDC();
      if (v20)
      {
        if (!v18)
        {
          goto LABEL_29;
        }

        sub_1C4402FD0(v19);
        v23 = v17 && v21 == v22;
        if (!v23 && (sub_1C4F02938() & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else if (v18)
      {
        goto LABEL_29;
      }

      sub_1C4F00328();
      sub_1C4419704();
      v25 = sub_1C47F6E3C(&qword_1EC0BB6B8, v24, MEMORY[0x1E69AAC10]);
      v26 = sub_1C445BAE8(v25);
      sub_1C47F5CB8();
      sub_1C47F5CB8();
      if (v26)
      {
        sub_1C440EDBC();
        if (!v17)
        {
          continue;
        }
      }

      break;
    }
  }

  sub_1C44A1E7C();
  sub_1C43FE9F0();
}

void sub_1C47E79F0()
{
  sub_1C442ABCC();
  if (v3 && v0 && v1 != v2)
  {
    do
    {
      sub_1C44C0450();
      sub_1C44586C4();
      sub_1C47F5D0C(v4, v5);
      sub_1C47F5D0C(v9, &v7);
      v6 = sub_1C4CC4DC8(v8, v9);
      sub_1C47F5D68(v9);
      sub_1C47F5D68(v8);
      if ((v6 & 1) == 0)
      {
        break;
      }

      sub_1C44263D4();
    }

    while (!v3);
  }
}

void sub_1C47E7A98()
{
  sub_1C442ABCC();
  if (v3 && v0 && v1 != v2)
  {
    v4 = (v1 + 32);
    v5 = (v2 + 32);
    do
    {
      v6 = v4[1];
      v12[0] = *v4;
      v12[1] = v6;
      v7 = v4[3];
      v12[2] = v4[2];
      v12[3] = v7;
      v8 = v5[1];
      v13[0] = *v5;
      v13[1] = v8;
      v9 = v5[3];
      v13[2] = v5[2];
      v13[3] = v9;
      sub_1C445CD7C(v12, v11);
      sub_1C445CD7C(v13, v11);
      v10 = sub_1C4CC687C(v12, v13);
      sub_1C445DA1C(v13);
      sub_1C445DA1C(v12);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v4 += 4;
      v5 += 4;
      --v0;
    }

    while (v0);
  }
}

void sub_1C47E7B70()
{
  sub_1C44145A4();
  if (v22 && v1 && v2 != v3)
  {
    v4 = (v3 + 36);
    v5 = (v2 + 36);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v4 - 4);
      v9 = *(v4 - 3);
      v10 = *(v4 - 2);
      v25 = *(v4 - 1);
      v26 = *(v5 - 1);
      v11 = 0xE400000000000000;
      v23 = *v4;
      v24 = *v5;
      v12 = 1702259052;
      switch(*(v5 - 4))
      {
        case 1u:
          v12 = 1701736302;
          break;
        case 2u:
          v11 = 0xE500000000000000;
          v12 = 0x796C696164;
          break;
        case 3u:
          v12 = sub_1C44289B8();
          v11 = 0x80000001C4F86260;
          break;
        case 4u:
          v11 = 0xE600000000000000;
          v13 = 1801807223;
          goto LABEL_13;
        case 5u:
          v14 = sub_1C43FE694() & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
          goto LABEL_16;
        case 6u:
          v14 = sub_1C4428E78();
LABEL_16:
          v12 = v14 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v11 = 0xEB00000000737275;
          break;
        case 7u:
          v11 = 0xE600000000000000;
          v13 = 1920298856;
LABEL_13:
          v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8u:
          v12 = sub_1C4428E78() & 0xFFFFFFFFFFFFLL | 0x4D31000000000000;
          v11 = 0xEE00736574756E69;
          break;
        case 9u:
          v12 = sub_1C43FE694() | 0x694D377900000000;
          v11 = 0xED0000736574756ELL;
          break;
        case 0xAu:
          v12 = sub_1C44289B8();
          v11 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      v15 = 0xE400000000000000;
      v16 = 1702259052;
      switch(v8)
      {
        case 1:
          v16 = 1701736302;
          break;
        case 2:
          v15 = 0xE500000000000000;
          v16 = 0x796C696164;
          break;
        case 3:
          sub_1C47F79F8();
          v15 = 0x80000001C4F86260;
          break;
        case 4:
          v15 = 0xE600000000000000;
          v17 = 1801807223;
          goto LABEL_26;
        case 5:
          sub_1C440EFA8();
          v20 = v19 & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
          goto LABEL_29;
        case 6:
          sub_1C444C270();
LABEL_29:
          v16 = v20 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v15 = 0xEB00000000737275;
          break;
        case 7:
          v15 = 0xE600000000000000;
          v17 = 1920298856;
LABEL_26:
          v16 = v17 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          sub_1C444C270();
          v16 = v21 & 0xFFFFFFFFFFFFLL | 0x4D31000000000000;
          v15 = 0xEE00736574756E69;
          break;
        case 9:
          sub_1C440EFA8();
          v16 = v18 | 0x694D377900000000;
          v15 = 0xED0000736574756ELL;
          break;
        case 10:
          sub_1C47F79F8();
          v15 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      v22 = v12 == v16 && v11 == v15;
      if (v22)
      {
      }

      else
      {
        sub_1C43FFF90(v12, v3, v16);
        sub_1C44A3C98();

        if ((v0 & 1) == 0)
        {
          return;
        }
      }

      if (v6 == 2)
      {
        if (v9 != 2)
        {
          return;
        }
      }

      else if (v9 == 2 || ((v9 ^ v6) & 1) != 0)
      {
        return;
      }

      if (v7 == 2)
      {
        if (v10 != 2)
        {
          return;
        }
      }

      else if (v10 == 2 || ((v10 ^ v7) & 1) != 0)
      {
        return;
      }

      if (v26 == 2)
      {
        if (v25 != 2)
        {
          return;
        }
      }

      else if (v25 == 2 || ((v25 ^ v26) & 1) != 0)
      {
        return;
      }

      if (v24 == 2)
      {
        if (v23 != 2)
        {
          return;
        }
      }

      else if (v23 == 2 || ((v23 ^ v24) & 1) != 0)
      {
        return;
      }

      v4 += 5;
      v5 += 5;
      --v1;
    }

    while (v1);
  }
}

void sub_1C47E7F00()
{
  sub_1C442ABCC();
  if (v3 && v0 && v1 != v2)
  {
    v4 = v1 + 32;
    v5 = v2 + 32;
    do
    {
      v6 = *(v4 + 16);
      v11[0] = *v4;
      v11[1] = v6;
      v11[2] = *(v4 + 32);
      v12 = *(v4 + 48);
      v7 = *(v5 + 16);
      v13[0] = *v5;
      v8 = *(v5 + 32);
      v13[1] = v7;
      v13[2] = v8;
      v14 = *(v5 + 48);
      sub_1C47F5DBC(v11, v10);
      sub_1C47F5DBC(v13, v10);
      v9 = sub_1C4CC821C(v11, v13);
      sub_1C47F5E18(v13);
      sub_1C47F5E18(v11);
      if ((v9 & 1) == 0)
      {
        break;
      }

      v5 += 56;
      v4 += 56;
      --v0;
    }

    while (v0);
  }
}

void sub_1C47E7FF4()
{
  sub_1C442ABCC();
  if (v3 && v0 && v1 != v2)
  {
    do
    {
      sub_1C44C0450();
      sub_1C44586C4();
      sub_1C47F5E6C(v4, v5);
      sub_1C47F5E6C(v9, &v7);
      v6 = sub_1C4CC8FAC(v8, v9);
      sub_1C47F5EC8(v9);
      sub_1C47F5EC8(v8);
      if ((v6 & 1) == 0)
      {
        break;
      }

      sub_1C44263D4();
    }

    while (!v3);
  }
}

void sub_1C47E809C(uint64_t a1)
{
  sub_1C47F7A30();
  v3 = *(v1 + 16);
  if (v3 == *(v2 + 16) && v3 && v1 != v2)
  {
    v4 = (v2 + 59);
    v5 = (v1 + 59);
    do
    {
      v39 = *(v5 - 19);
      v6 = *(v5 - 11);
      v36 = *(v5 - 3);
      v33 = *(v5 - 1);
      v34 = *(v5 - 2);
      v32 = *v5;
      v7 = *(v4 - 27);
      v8 = *(v4 - 19);
      v9 = *(v4 - 11);
      v10 = *(v4 - 3);
      v11 = *(v4 - 2);
      v38 = *(v4 - 1);
      v12 = 0xE400000000000000;
      v13 = *v4;
      v14 = 1702259052;
      switch(*(v5 - 27))
      {
        case 1u:
          v14 = 1701736302;
          break;
        case 2u:
          v12 = 0xE500000000000000;
          v14 = 0x796C696164;
          break;
        case 3u:
          v14 = sub_1C44289B8();
          v12 = 0x80000001C4F86260;
          break;
        case 4u:
          v12 = 0xE600000000000000;
          v15 = 1801807223;
          goto LABEL_12;
        case 5u:
          v16 = sub_1C43FE694() & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
          goto LABEL_15;
        case 6u:
          v16 = sub_1C4428E78();
LABEL_15:
          v14 = v16 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v12 = 0xEB00000000737275;
          break;
        case 7u:
          v12 = 0xE600000000000000;
          v15 = 1920298856;
LABEL_12:
          v14 = v15 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8u:
          v14 = sub_1C4428E78() & 0xFFFFFFFFFFFFLL | 0x4D31000000000000;
          v12 = 0xEE00736574756E69;
          break;
        case 9u:
          v14 = sub_1C43FE694() | 0x694D377900000000;
          v12 = 0xED0000736574756ELL;
          break;
        case 0xAu:
          v14 = sub_1C44289B8();
          v12 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      v17 = 0xE400000000000000;
      v18 = 1702259052;
      switch(v7)
      {
        case 1:
          v18 = 1701736302;
          break;
        case 2:
          v17 = 0xE500000000000000;
          v18 = 0x796C696164;
          break;
        case 3:
          sub_1C47F79F8();
          v17 = 0x80000001C4F86260;
          break;
        case 4:
          v17 = 0xE600000000000000;
          v19 = 1801807223;
          goto LABEL_25;
        case 5:
          sub_1C440EFA8();
          v22 = v21 & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
          goto LABEL_28;
        case 6:
          sub_1C444C270();
LABEL_28:
          v18 = v22 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v17 = 0xEB00000000737275;
          break;
        case 7:
          v17 = 0xE600000000000000;
          v19 = 1920298856;
LABEL_25:
          v18 = v19 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          sub_1C444C270();
          v18 = v23 & 0xFFFFFFFFFFFFLL | 0x4D31000000000000;
          v17 = 0xEE00736574756E69;
          break;
        case 9:
          sub_1C440EFA8();
          v18 = v20 | 0x694D377900000000;
          v17 = 0xED0000736574756ELL;
          break;
        case 10:
          sub_1C47F79F8();
          v17 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      v37 = v11;
      v35 = v13;
      v24 = v14 == v18 && v12 == v17;
      if (v24)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v25 = sub_1C4F02938();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        if ((v25 & 1) == 0)
        {

          break;
        }
      }

      if (v39 == v8 && v6 == v9)
      {
      }

      else
      {
        v27 = sub_1C4F02938();

        if ((v27 & 1) == 0)
        {
          break;
        }
      }

      if (v36 == 2)
      {
        v24 = v10 == 2;
        v28 = v35;
        v30 = v37;
        v29 = v38;
        if (!v24)
        {
          break;
        }
      }

      else
      {
        v31 = v10;
        v24 = v10 == 2;
        v28 = v35;
        v30 = v37;
        v29 = v38;
        if (v24 || ((v31 ^ v36) & 1) != 0)
        {
          break;
        }
      }

      if (v34 == 2)
      {
        if (v30 != 2)
        {
          break;
        }
      }

      else if (v30 == 2 || ((v30 ^ v34) & 1) != 0)
      {
        break;
      }

      if (v33 == 2)
      {
        if (v29 != 2)
        {
          break;
        }
      }

      else if (v29 == 2 || ((v29 ^ v33) & 1) != 0)
      {
        break;
      }

      if (v32 == 2)
      {
        if (v28 != 2)
        {
          break;
        }
      }

      else if (v28 == 2 || ((v28 ^ v32) & 1) != 0)
      {
        break;
      }

      v4 += 32;
      v5 += 32;
      --v3;
    }

    while (v3);
  }

  sub_1C4488800();
}

uint64_t sub_1C47E84E0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v28 = a2 + 32;
  v29 = result + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_66;
    }

    v4 = v29 + 56 * v3;
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = *(v4 + 48);
    v9 = v28 + 56 * v3;
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    v13 = *(v9 + 32);
    v14 = *(v9 + 48);
    v30 = *(v9 + 40);
    v31 = *(v4 + 40);
    if (*(v4 + 8))
    {
      if (!v10)
      {
        return 0;
      }

      result = sub_1C4402FD0(v4);
      v17 = v17 && v15 == v16;
      if (!v17)
      {
        result = sub_1C4F02938();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v10)
    {
      return 0;
    }

    if (v5 == 2)
    {
      if (v11 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v11 == 2 || ((v11 ^ v5) & 1) != 0)
      {
        return result;
      }
    }

    if (v6)
    {
      if (!v12)
      {
        return 0;
      }

      v18 = *(v6 + 16);
      if (v18 != *(v12 + 16))
      {
        return 0;
      }

      if (v18)
      {
        v19 = v6 == v12;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v20 = (v6 + 40);
        v21 = (v12 + 40);
        while (v18)
        {
          result = *(v20 - 1);
          if (result != *(v21 - 1) || *v20 != *v21)
          {
            result = sub_1C4F02938();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v20 += 2;
          v21 += 2;
          if (!--v18)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
        __break(1u);
LABEL_66:
        __break(1u);
        return result;
      }
    }

    else if (v12)
    {
      return 0;
    }

LABEL_37:
    if (!v7)
    {
      if (v13)
      {
        return 0;
      }

      goto LABEL_51;
    }

    if (!v13)
    {
      return 0;
    }

    v23 = *(v7 + 16);
    if (v23 != *(v13 + 16))
    {
      return 0;
    }

    if (v23 && v7 != v13)
    {
      break;
    }

LABEL_51:
    if (v8)
    {
      if (!v14)
      {
        return 0;
      }

      v27 = v31 == v30 && v8 == v14;
      if (!v27 && (sub_1C4F02938() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v14)
    {
      return 0;
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  v24 = (v7 + 40);
  v25 = (v13 + 40);
  while (1)
  {
    v26 = *(v24 - 1) == *(v25 - 1) && *v24 == *v25;
    if (!v26 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }

    v24 += 2;
    v25 += 2;
    if (!--v23)
    {
      goto LABEL_51;
    }
  }
}

void sub_1C47E8710()
{
  sub_1C43FBD3C();
  sub_1C44145A4();
  if (v12 && v1 && v2 != v3)
  {
    v4 = (v2 + 32);
    v5 = (v3 + 32);
    do
    {
      v6 = 0xEF6E776F6E6B6E55;
      v7 = 0x6D726F6674616C70;
      switch(*v4)
      {
        case 1:
          v7 = 0x6D726F6674616C70;
          v6 = 0xEC00000064615069;
          break;
        case 2:
          v7 = 0x6D726F6674616C70;
          v8 = 0x656E6F685069;
          goto LABEL_15;
        case 3:
          v7 = 0xD000000000000012;
          v6 = 0x80000001C4F87CB0;
          break;
        case 4:
          v7 = 0xD000000000000013;
          v6 = 0x80000001C4F87CD0;
          break;
        case 5:
          v7 = 0x6D726F6674616C70;
          v6 = 0xEA00000000005654;
          break;
        case 6:
          v7 = 0x6D726F6674616C70;
          v6 = 0xED00006863746157;
          break;
        case 7:
          v7 = 0x6D726F6674616C70;
          v6 = 0xEF646F50656D6F48;
          break;
        case 8:
          v7 = 0x6D726F6674616C70;
          v8 = 0x6E6F69736956;
LABEL_15:
          v6 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        default:
          break;
      }

      v9 = 0x6D726F6674616C70;
      v10 = 0xEF6E776F6E6B6E55;
      switch(*v5)
      {
        case 1:
          v9 = 0x6D726F6674616C70;
          v10 = 0xEC00000064615069;
          break;
        case 2:
          v9 = 0x6D726F6674616C70;
          v11 = 0x656E6F685069;
          goto LABEL_25;
        case 3:
          v9 = 0xD000000000000012;
          v10 = 0x80000001C4F87CB0;
          break;
        case 4:
          v9 = 0xD000000000000013;
          v10 = 0x80000001C4F87CD0;
          break;
        case 5:
          v9 = 0x6D726F6674616C70;
          v10 = 0xEA00000000005654;
          break;
        case 6:
          v9 = 0x6D726F6674616C70;
          v10 = 0xED00006863746157;
          break;
        case 7:
          v9 = 0x6D726F6674616C70;
          v10 = 0xEF646F50656D6F48;
          break;
        case 8:
          v9 = 0x6D726F6674616C70;
          v11 = 0x6E6F69736956;
LABEL_25:
          v10 = v11 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        default:
          break;
      }

      v12 = v7 == v9 && v6 == v10;
      if (v12)
      {
      }

      else
      {
        sub_1C43FFF90(v7, v3, v9);
        sub_1C44A3C98();

        if ((v0 & 1) == 0)
        {
          break;
        }
      }

      sub_1C444171C();
    }

    while (!v12);
  }

  sub_1C43FE9F0();
}

void sub_1C47E8984()
{
  sub_1C43FBD3C();
  v4 = sub_1C442F8D4();
  v5 = type metadata accessor for FeatureValue.BasicValue(v4);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v104 = v7;
  v8 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  v105 = v10;
  v106 = sub_1C456902C(&qword_1EC0BD5B8, &unk_1C4F2F340);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  v110 = v12;
  v13 = sub_1C43FBE44();
  v113 = type metadata accessor for FeatureValue(v13);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v114 = v15;
  v16 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v16);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v115 = v18;
  v111 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD64();
  type metadata accessor for Feature.FeatureIdentifier(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  v109 = v21;
  v22 = sub_1C456902C(&qword_1EC0BD4B0, &unk_1C4F2E1C0);
  sub_1C43FBD18(v22);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBC74();
  v108 = v24;
  v112 = sub_1C456902C(&qword_1EC0BD4B8, &unk_1C4F2F360);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v95 - v26;
  v28 = type metadata accessor for Feature(0);
  sub_1C44057B8();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C444B140();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C44AE8BC();
  v34 = *(v3 + 16);
  if (v34 == *(v0 + 16) && v34 && v3 != v0)
  {
    v96 = v5;
    v97 = v32;
    v35 = 0;
    sub_1C4441064();
    v100 = v3 + v36;
    v101 = v2;
    v38 = *(v37 + 72);
    v98 = v0 + v36;
    v99 = v38;
    v102 = v28;
    v107 = v39;
    while (1)
    {
      v40 = v99 * v35;
      sub_1C47F5C60(v100 + v99 * v35, v1);
      if (v35 == v107)
      {
        break;
      }

      sub_1C47F5C60(v98 + v40, v32);
      v41 = *(v28 + 20);
      v42 = *(v112 + 48);
      sub_1C4460108(v1 + v41, v27, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
      sub_1C4460108(v32 + v41, &v27[v42], &qword_1EC0BD4B0, &unk_1C4F2E1C0);
      sub_1C440582C(v27);
      if (v43)
      {
        sub_1C440582C(&v27[v42]);
        if (!v43)
        {
          goto LABEL_68;
        }

        sub_1C4420C3C(v27, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
        v28 = v102;
      }

      else
      {
        sub_1C4460108(v27, v108, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
        sub_1C440582C(&v27[v42]);
        if (v43)
        {
          sub_1C47F5CB8();
LABEL_68:
          v91 = &qword_1EC0BD4B8;
          v92 = &unk_1C4F2F360;
LABEL_69:
          sub_1C4420C3C(v27, v91, v92);
LABEL_76:
          sub_1C47F5CB8();
          sub_1C47F5CB8();
          goto LABEL_77;
        }

        sub_1C47F5C08(&v27[v42], v109);
        sub_1C44623F8();
        if (v46)
        {
          if (!v44 || ((sub_1C4402FD0(v45), v43) ? (v49 = v47 == v48) : (v49 = 0), !v49 && (sub_1C4F02938() & 1) == 0))
          {
LABEL_66:
            sub_1C47F5CB8();
            sub_1C47F5CB8();
            v91 = &qword_1EC0BD4B0;
            v92 = &unk_1C4F2E1C0;
            goto LABEL_69;
          }
        }

        else if (v44)
        {
          goto LABEL_66;
        }

        sub_1C44623F8();
        if (v52)
        {
          if (!v50)
          {
            goto LABEL_66;
          }

          sub_1C4402FD0(v51);
          v55 = v43 && v53 == v54;
          if (!v55 && (sub_1C4F02938() & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        else if (v50)
        {
          goto LABEL_66;
        }

        sub_1C44623F8();
        if (v58)
        {
          if (!v56)
          {
            goto LABEL_66;
          }

          sub_1C4402FD0(v57);
          v61 = v43 && v59 == v60;
          if (!v61 && (sub_1C4F02938() & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        else if (v56)
        {
          goto LABEL_66;
        }

        sub_1C4F00328();
        sub_1C4419704();
        sub_1C47F6E3C(&qword_1EC0BB6B8, v62, MEMORY[0x1E69AAC10]);
        sub_1C4475834();
        v63 = sub_1C4F010B8();
        sub_1C47F5CB8();
        sub_1C47F5CB8();
        sub_1C4420C3C(v27, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
        v28 = v102;
        if ((v63 & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      v103 = v35;
      v64 = *(v28 + 24);
      v65 = *(v111 + 48);
      v66 = v101;
      sub_1C4460108(v1 + v64, v101, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4460108(v32 + v64, v66 + v65, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      v67 = v113;
      sub_1C440175C(v66, 1, v113);
      if (v43)
      {
        sub_1C440175C(v66 + v65, 1, v67);
        if (!v43)
        {
          goto LABEL_71;
        }

        sub_1C4420C3C(v66, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
        v32 = v97;
        v68 = v103;
      }

      else
      {
        sub_1C4460108(v66, v115, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
        sub_1C440175C(v66 + v65, 1, v67);
        if (v69)
        {
          sub_1C47F5CB8();
LABEL_71:
          v93 = &qword_1EC0BB6C0;
          v94 = &unk_1C4F20AE0;
LABEL_75:
          sub_1C4420C3C(v66, v93, v94);
          goto LABEL_76;
        }

        sub_1C47F5C08(v66 + v65, v114);
        sub_1C47E9434();
        if ((v70 & 1) == 0)
        {
          goto LABEL_74;
        }

        v71 = *(v115 + 8);
        v72 = *(v114 + 8);
        v73 = *(v71 + 16);
        if (v73 != *(v72 + 16))
        {
          goto LABEL_74;
        }

        if (v73 && v71 != v72)
        {
          v74 = (v71 + 32);
          v75 = (v72 + 32);
          while (*v74 == *v75)
          {
            ++v74;
            ++v75;
            if (!--v73)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_74;
        }

LABEL_53:
        sub_1C47E96CC();
        if ((v76 & 1) == 0)
        {
          goto LABEL_74;
        }

        v77 = *(v67 + 32);
        v78 = *(v106 + 48);
        v79 = v110;
        sub_1C4460108(v115 + v77, v110, &qword_1EC0BB438, qword_1C4F1F960);
        sub_1C4460108(v114 + v77, v79 + v78, &qword_1EC0BB438, qword_1C4F1F960);
        v80 = v96;
        sub_1C440175C(v79, 1, v96);
        if (v43)
        {
          sub_1C440175C(v110 + v78, 1, v80);
          if (!v43)
          {
            goto LABEL_73;
          }

          sub_1C4420C3C(v110, &qword_1EC0BB438, qword_1C4F1F960);
        }

        else
        {
          v81 = v110;
          sub_1C4460108(v110, v105, &qword_1EC0BB438, qword_1C4F1F960);
          sub_1C440175C(v81 + v78, 1, v80);
          if (v82)
          {
            sub_1C441B94C();
            sub_1C47F5CB8();
            v66 = v101;
LABEL_73:
            sub_1C4420C3C(v110, &qword_1EC0BD5B8, &unk_1C4F2F340);
LABEL_74:
            sub_1C47F5CB8();
            sub_1C47F5CB8();
            v93 = &qword_1EC0BB6C8;
            v94 = &unk_1C4F2E1B0;
            goto LABEL_75;
          }

          sub_1C44250B4();
          v83 = v81 + v78;
          LOBYTE(v78) = v104;
          sub_1C47F5C08(v83, v104);
          v84 = sub_1C44333A0();
          v86 = sub_1C47E419C(v84, v85);
          sub_1C47F5CB8();
          sub_1C47F5CB8();
          sub_1C4420C3C(v81, &qword_1EC0BB438, qword_1C4F1F960);
          v66 = v101;
          if ((v86 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        sub_1C4F00328();
        sub_1C4419704();
        sub_1C47F6E3C(&qword_1EC0BB6B8, v87, MEMORY[0x1E69AAC10]);
        sub_1C4F010B8();
        sub_1C4461F98();
        v28 = v102;
        sub_1C47F5CB8();
        sub_1C47F5CB8();
        sub_1C4420C3C(v66, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
        v32 = v97;
        v68 = v103;
        if ((v78 & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      sub_1C4F00328();
      sub_1C4419704();
      v89 = sub_1C47F6E3C(&qword_1EC0BB6B8, v88, MEMORY[0x1E69AAC10]);
      v90 = sub_1C4485B6C(v89);
      sub_1C47F5CB8();
      sub_1C47F5CB8();
      if (v90)
      {
        v35 = v68 + 1;
        if (v35 != v107)
        {
          continue;
        }
      }

      goto LABEL_77;
    }

    __break(1u);
  }

  else
  {
LABEL_77:
    sub_1C44A1E7C();
    sub_1C43FE9F0();
  }
}

void sub_1C47E9434()
{
  sub_1C43FBD3C();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C44057B8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C444B140();
  sub_1C44AE8BC();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44A17A8();
  if (v28 && v2 && v6 != v4)
  {
    sub_1C4441064();
    v11 = v6 + v10;
    v12 = v4 + v10;
    while (1)
    {
      sub_1C47F5C60(v11, v1);
      sub_1C47F5C60(v12, v0);
      sub_1C44F19AC();
      if (v14)
      {
        if (!v13)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_1C43FD5A0();
        if (v15)
        {
          goto LABEL_32;
        }
      }

      sub_1C44F19AC();
      if (v17)
      {
        if (!v16)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_1C449959C();
        if (v18)
        {
          goto LABEL_32;
        }
      }

      v19 = *(v7 + 28);
      v20 = *(v1 + v19 + 4);
      v21 = *(v0 + v19 + 4);
      if (v20)
      {
        if (!v21)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_1C44B6760();
        if (v22)
        {
          goto LABEL_32;
        }
      }

      sub_1C44BBDDC();
      if (v25)
      {
        if (!v23 || ((sub_1C4402FD0(v24), v28) ? (v28 = v26 == v27) : (v28 = 0), !v28 && (sub_1C4F02938() & 1) == 0))
        {
LABEL_32:
          sub_1C47F5CB8();
          sub_1C47F5CB8();
          break;
        }
      }

      else if (v23)
      {
        goto LABEL_32;
      }

      sub_1C4F00328();
      sub_1C4419704();
      v30 = sub_1C47F6E3C(&qword_1EC0BB6B8, v29, MEMORY[0x1E69AAC10]);
      sub_1C445BAE8(v30);
      sub_1C441E3AC();
      sub_1C47F5CB8();
      sub_1C47F5CB8();
      if (v4)
      {
        sub_1C440EDBC();
        if (!v28)
        {
          continue;
        }
      }

      break;
    }
  }

  sub_1C44A1E7C();
  sub_1C43FE9F0();
}

uint64_t sub_1C47E9678(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1C4456958();
  }

  if (!v2 || result == a2)
  {
    return sub_1C4415EFC();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C47E96CC()
{
  sub_1C43FBD3C();
  v3 = sub_1C442F8D4();
  v4 = type metadata accessor for FeatureValue.BasicValue(v3);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  v60 = v6;
  v7 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v63 = v9;
  v62 = sub_1C456902C(&qword_1EC0BD5B8, &unk_1C4F2F340);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4402A68();
  v11 = type metadata accessor for FeatureValue.NamedValue(0);
  sub_1C44057B8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C444B140();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  v19 = *(v2 + 16);
  if (v19 != *(v0 + 16) || !v19 || v2 == v0)
  {
    goto LABEL_51;
  }

  sub_1C4441064();
  v21 = v2 + v20;
  v22 = v0 + v20;
  v58 = *(v23 + 72);
  v59 = v11;
  v56 = v18;
  v57 = v1;
  while (1)
  {
    sub_1C47F5C60(v21, v18);
    sub_1C47F5C60(v22, v15);
    v24 = *(v11 + 20);
    v25 = *(v15 + v24 + 8);
    if (*&v18[v24 + 8])
    {
      if (!v25)
      {
        goto LABEL_47;
      }

      sub_1C4402FD0(&v18[v24]);
      v28 = v28 && v26 == v27;
      if (!v28 && (sub_1C4F02938() & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (v25)
    {
      goto LABEL_47;
    }

    v61 = v21;
    v29 = *(v11 + 24);
    v30 = *(v62 + 48);
    sub_1C4460108(&v18[v29], v1, &qword_1EC0BB438, qword_1C4F1F960);
    sub_1C4460108(v15 + v29, v1 + v30, &qword_1EC0BB438, qword_1C4F1F960);
    sub_1C440175C(v1, 1, v4);
    if (!v28)
    {
      break;
    }

    v31 = sub_1C44755FC();
    sub_1C440175C(v31, v32, v4);
    if (!v28)
    {
      sub_1C4433388();
      goto LABEL_49;
    }

    sub_1C4420C3C(v1, &qword_1EC0BB438, qword_1C4F1F960);
LABEL_42:
    sub_1C4F00328();
    sub_1C4419704();
    sub_1C47F6E3C(&qword_1EC0BB6B8, v54, MEMORY[0x1E69AAC10]);
    v55 = sub_1C4F010B8();
    sub_1C47F5CB8();
    sub_1C47F5CB8();
    if (v55)
    {
      v11 = v59;
      v22 += v58;
      v21 = v61 + v58;
      if (--v19)
      {
        continue;
      }
    }

    goto LABEL_51;
  }

  sub_1C4460108(v1, v63, &qword_1EC0BB438, qword_1C4F1F960);
  v33 = sub_1C44755FC();
  sub_1C440175C(v33, v34, v4);
  if (!v35)
  {
    sub_1C44250B4();
    v36 = v60;
    sub_1C47F5C08(v1 + v30, v60);
    sub_1C441D6C0();
    if (v38)
    {
      if (!v37)
      {
        goto LABEL_46;
      }
    }

    else
    {
      sub_1C43FD5A0();
      if (v39)
      {
        goto LABEL_46;
      }
    }

    sub_1C441D6C0();
    if (v41)
    {
      if (!v40)
      {
        goto LABEL_46;
      }
    }

    else
    {
      sub_1C449959C();
      if (v42)
      {
        goto LABEL_46;
      }
    }

    v43 = *(v4 + 28);
    v44 = *(v63 + v43 + 4);
    v45 = *(v36 + v43 + 4);
    if (v44)
    {
      if (!v45)
      {
        goto LABEL_46;
      }
    }

    else
    {
      sub_1C44B6760();
      if (v46)
      {
        goto LABEL_46;
      }
    }

    v47 = *(v4 + 32);
    v48 = *(v36 + v47 + 8);
    if (*(v63 + v47 + 8))
    {
      if (!v48 || ((sub_1C4402FD0(v63 + v47), v28) ? (v51 = v49 == v50) : (v51 = 0), !v51 && (sub_1C4F02938() & 1) == 0))
      {
LABEL_46:
        sub_1C47F5CB8();
        sub_1C47F5CB8();
        sub_1C4420C3C(v57, &qword_1EC0BB438, qword_1C4F1F960);
LABEL_47:
        sub_1C4433388();
        sub_1C47F5CB8();
        goto LABEL_50;
      }
    }

    else if (v48)
    {
      goto LABEL_46;
    }

    sub_1C4F00328();
    sub_1C4419704();
    v53 = sub_1C47F6E3C(&qword_1EC0BB6B8, v52, MEMORY[0x1E69AAC10]);
    sub_1C4485B6C(v53);
    sub_1C441E3AC();
    v18 = v56;
    sub_1C47F5CB8();
    sub_1C47F5CB8();
    v1 = v57;
    sub_1C4420C3C(v57, &qword_1EC0BB438, qword_1C4F1F960);
    if ((v30 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  sub_1C4433388();
  sub_1C47F5CB8();
  sub_1C441B94C();
LABEL_49:
  sub_1C47F5CB8();
  sub_1C4420C3C(v1, &qword_1EC0BD5B8, &unk_1C4F2F340);
LABEL_50:
  sub_1C4433388();
  sub_1C47F5CB8();
LABEL_51:
  sub_1C44A1E7C();
  sub_1C43FE9F0();
}

void sub_1C47E9C30()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v54 = type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = sub_1C456902C(&qword_1EC0BD5B8, &unk_1C4F2F340);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C441B2EC();
  v16 = type metadata accessor for FeatureValue(v15);
  sub_1C44057B8();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C444B140();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  v24 = *(v4 + 16);
  if (v24 == *(v2 + 16) && v24 && v4 != v2)
  {
    v50 = *(v4 + 16);
    v51 = v13;
    v48 = v8;
    v49 = v12;
    v25 = 0;
    sub_1C4441064();
    v27 = v4 + v26;
    v29 = *(v28 + 72);
    v52 = v2 + v26;
    v53 = v29;
    v47 = v16;
    while (1)
    {
      v30 = v53 * v25;
      sub_1C47F5C60(v27 + v53 * v25, v23);
      if (v25 == v24)
      {
        break;
      }

      sub_1C47F5C60(v52 + v30, v20);
      sub_1C47E9434();
      if ((v31 & 1) == 0)
      {
        goto LABEL_30;
      }

      v32 = *(v23 + 1);
      v33 = *(v20 + 8);
      v34 = *(v32 + 16);
      if (v34 != *(v33 + 16))
      {
        goto LABEL_30;
      }

      if (v34)
      {
        v35 = v32 == v33;
      }

      else
      {
        v35 = 1;
      }

      if (!v35)
      {
        v36 = (v32 + 32);
        v37 = (v33 + 32);
        while (v34)
        {
          if (*v36 != *v37)
          {
            goto LABEL_30;
          }

          ++v36;
          ++v37;
          if (!--v34)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }

LABEL_16:
      sub_1C47E96CC();
      if ((v38 & 1) == 0)
      {
        goto LABEL_30;
      }

      v39 = *(v16 + 32);
      v40 = *(v51 + 48);
      sub_1C4460108(&v23[v39], v0, &qword_1EC0BB438, qword_1C4F1F960);
      sub_1C4460108(v20 + v39, v0 + v40, &qword_1EC0BB438, qword_1C4F1F960);
      v41 = v54;
      sub_1C440175C(v0, 1, v54);
      if (v35)
      {
        sub_1C440175C(v0 + v40, 1, v41);
        if (!v35)
        {
          goto LABEL_29;
        }

        sub_1C4420C3C(v0, &qword_1EC0BB438, qword_1C4F1F960);
        v24 = v50;
      }

      else
      {
        v42 = v27;
        v43 = v49;
        sub_1C4460108(v0, v49, &qword_1EC0BB438, qword_1C4F1F960);
        sub_1C440175C(v0 + v40, 1, v41);
        if (v44)
        {
          sub_1C441B94C();
          sub_1C47F5CB8();
LABEL_29:
          sub_1C4420C3C(v0, &qword_1EC0BD5B8, &unk_1C4F2F340);
LABEL_30:
          sub_1C47F5CB8();
          sub_1C47F5CB8();
          goto LABEL_31;
        }

        sub_1C44250B4();
        v45 = v48;
        sub_1C47F5C08(v0 + v40, v48);
        sub_1C47E419C(v43, v45);
        sub_1C441E3AC();
        sub_1C47F5CB8();
        sub_1C47F5CB8();
        sub_1C4420C3C(v0, &qword_1EC0BB438, qword_1C4F1F960);
        v27 = v42;
        v16 = v47;
        v24 = v50;
        if ((v40 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      sub_1C4F00328();
      sub_1C4419704();
      sub_1C47F6E3C(&qword_1EC0BB6B8, v46, MEMORY[0x1E69AAC10]);
      sub_1C4F010B8();
      sub_1C4461F98();
      sub_1C47F5CB8();
      sub_1C47F5CB8();
      if ((v40 & 1) != 0 && ++v25 != v24)
      {
        continue;
      }

      goto LABEL_31;
    }

    __break(1u);
  }

  else
  {
LABEL_31:
    sub_1C44A1E7C();
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C47EA0C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E747865746E6F63 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C4F9B7E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

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

uint64_t sub_1C47EA194(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x4E747865746E6F63;
  }
}

uint64_t sub_1C47EA1F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47EA0C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47EA220(uint64_t a1)
{
  v2 = sub_1C47EA438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47EA25C(uint64_t a1)
{
  v2 = sub_1C47EA438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void HumanReadableFeaturizedBehaviorsGroup.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FE96C();
  a21 = v25;
  a22 = v26;
  v28 = v27;
  v29 = sub_1C456902C(&qword_1EC0BD5D8, "Vs\n");
  sub_1C43FCDF8();
  v34 = v30;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C4402A68();
  v32 = *v22;
  v33 = v22[1];
  sub_1C4409678(v28, v28[3]);
  sub_1C47EA438();
  sub_1C4F02BF8();
  HIBYTE(a12) = 0;
  sub_1C442899C(v32, v33, &a12 + 1);
  if (!v23)
  {
    sub_1C4405BEC();
    sub_1C456902C(&qword_1EC0BD5E8, &qword_1C4F2EF08);
    sub_1C47EA6C4(&qword_1EC0BD5F0, sub_1C47EA48C, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
  }

  (*(v34 + 8))(v24, v29);
  sub_1C43FBC80();
}

unint64_t sub_1C47EA438()
{
  result = qword_1EC0BD5E0;
  if (!qword_1EC0BD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD5E0);
  }

  return result;
}

unint64_t sub_1C47EA48C()
{
  result = qword_1EC0BD5F8;
  if (!qword_1EC0BD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD5F8);
  }

  return result;
}

void HumanReadableFeaturizedBehaviorsGroup.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FE96C();
  v24 = v23;
  v26 = v25;
  sub_1C456902C(&qword_1EC0BD600, &qword_1C4F2EF10);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBD64();
  v28 = sub_1C4475834();
  sub_1C4409678(v28, v29);
  v30 = sub_1C47EA438();
  sub_1C4475D8C(&type metadata for HumanReadableFeaturizedBehaviorsGroup.CodingKeys, v31, v30);
  if (v22)
  {
    sub_1C440962C(v24);
  }

  else
  {
    v32 = sub_1C444BFF0();
    v34 = v33;
    sub_1C456902C(&qword_1EC0BD5E8, &qword_1C4F2EF08);
    sub_1C4405BEC();
    sub_1C47EA6C4(&qword_1EC0BD608, sub_1C47EA73C, MEMORY[0x1E69E6330]);
    sub_1C4F026C8();
    v35 = sub_1C4408A58();
    v36(v35);
    *v26 = v32;
    v26[1] = v34;
    v26[2] = v37;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v24);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C47EA6C4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BD5E8, &qword_1C4F2EF08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C47EA73C()
{
  result = qword_1EC0BD610;
  if (!qword_1EC0BD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD610);
  }

  return result;
}

uint64_t static BehaviorIdentifierFeatureValuePair.== infix(_:_:)(uint64_t a1)
{
  v2 = sub_1C47F7A1C(a1);
  v6 = *(v5 + 24);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v2 == *v4 && v3 == v4[1];
  if (v9 || (v10 = sub_1C4F02938(), result = 0, (v10 & 1) != 0))
  {
    if (v1 == v7 && v6 == v8)
    {
      return 1;
    }

    else
    {
      sub_1C43FBC98();

      return sub_1C4F02938();
    }
  }

  return result;
}

uint64_t sub_1C47EA8B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001C4F855A0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5665727574616566 && a2 == 0xEC00000065756C61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

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

uint64_t sub_1C47EA984(char a1)
{
  if (a1)
  {
    return 0x5665727574616566;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1C47EA9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C47EAA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47EA8B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47EAA44(uint64_t a1)
{
  v2 = sub_1C47EABF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47EAA80(uint64_t a1)
{
  v2 = sub_1C47EABF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BehaviorIdentifierFeatureValuePair.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FE96C();
  a21 = v25;
  a22 = v26;
  v28 = v27;
  v29 = sub_1C456902C(&qword_1EC0BD618, &qword_1C4F2EF18);
  sub_1C43FCDF8();
  v36 = v30;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C4402A68();
  v32 = *v22;
  v33 = v22[1];
  v34 = v22[3];
  v35 = v22[2];
  sub_1C4409678(v28, v28[3]);
  sub_1C47EABF4();
  sub_1C4F02BF8();
  HIBYTE(a12) = 0;
  sub_1C442899C(v32, v33, &a12 + 1);
  if (!v23)
  {
    sub_1C4405BEC();
    sub_1C442899C(v35, v34, &a12);
  }

  (*(v36 + 8))(v24, v29);
  sub_1C43FBC80();
}

unint64_t sub_1C47EABF4()
{
  result = qword_1EC0BD620;
  if (!qword_1EC0BD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD620);
  }

  return result;
}

void BehaviorIdentifierFeatureValuePair.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FE96C();
  v25 = v24;
  v27 = v26;
  v28 = sub_1C456902C(&qword_1EC0BD628, &qword_1C4F2EF20);
  sub_1C43FCDF8();
  v30 = v29;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBD64();
  v32 = sub_1C4475834();
  sub_1C4409678(v32, v33);
  v34 = sub_1C47EABF4();
  sub_1C4475D8C(&type metadata for BehaviorIdentifierFeatureValuePair.CodingKeys, v35, v34);
  if (v22)
  {
    sub_1C440962C(v25);
  }

  else
  {
    v36 = sub_1C444BFF0();
    v38 = v37;
    sub_1C4405BEC();
    v39 = sub_1C4F02678();
    v41 = v40;
    v42 = v39;
    (*(v30 + 8))(v23, v28);
    *v27 = v36;
    v27[1] = v38;
    v27[2] = v42;
    v27[3] = v41;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v25);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C47EAE3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1C47EAE7C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1C47EAEF8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C47EAFD8()
{
  result = qword_1EC0BD630;
  if (!qword_1EC0BD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD630);
  }

  return result;
}

unint64_t sub_1C47EB030()
{
  result = qword_1EC0BD638;
  if (!qword_1EC0BD638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD638);
  }

  return result;
}

unint64_t sub_1C47EB088()
{
  result = qword_1EC0BD640;
  if (!qword_1EC0BD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD640);
  }

  return result;
}

unint64_t sub_1C47EB0E0()
{
  result = qword_1EC0BD648;
  if (!qword_1EC0BD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD648);
  }

  return result;
}

unint64_t sub_1C47EB138()
{
  result = qword_1EC0BD650;
  if (!qword_1EC0BD650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD650);
  }

  return result;
}

unint64_t sub_1C47EB190()
{
  result = qword_1EC0BD658;
  if (!qword_1EC0BD658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD658);
  }

  return result;
}

void sub_1C47EB1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  v649 = v20;
  v650 = v21;
  v648 = v22;
  v651 = v23;
  v25 = v24;
  v642 = sub_1C456902C(&qword_1EC0B8BB8, &unk_1C4F10E70);
  sub_1C43FCDF8();
  v647 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  v641 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  v640 = v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD230();
  v645 = v32;
  v639 = sub_1C456902C(&qword_1EC0B9358, &unk_1C4F0EE90);
  sub_1C43FCDF8();
  v643 = v33;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  v632 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  v631 = v38;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  v627 = v42;
  v634 = sub_1C456902C(&qword_1EC0B8BC0, &unk_1C4F0DFF0);
  sub_1C43FCDF8();
  v646 = v43;
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBFDC();
  v636 = v45;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  v635 = v47;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  v644 = v49;
  sub_1C456902C(&qword_1EC0B9370, &unk_1C4F0EEB0);
  sub_1C43FCDF8();
  v637 = v51;
  v638 = v50;
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FD230();
  v629 = v57;
  v58 = sub_1C456902C(&qword_1EC0B8BB0, &unk_1C4F0DFE0);
  sub_1C43FCDF8();
  v623 = v59;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v614 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v614 - v64;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v614 - v67;
  v69 = sub_1C456902C(&qword_1EC0B9320, &unk_1C4F0EE50);
  sub_1C43FCDF8();
  v633 = v70;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v614 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v614 - v75;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v614 - v78;
  v80 = v650;
  v81 = sub_1C47EE5F4(v25, v651);
  if (!v80)
  {
    v617 = v79;
    v615 = v76;
    v616 = v73;
    v82 = v649;
    v618 = v69;
    v620 = v68;
    v650 = v65;
    v619 = v62;
    v621 = v58;
    v84 = v646;
    v83 = v647;
    v622 = v25;
    switch(v81)
    {
      case 4:
        v457 = sub_1C4400384();
        type metadata accessor for TrendingBehaviorHistogram(v457);
        sub_1C4409A78();
        sub_1C442CA74();
        v458();
        sub_1C456902C(&qword_1EC0B8F08, &unk_1C4F0E9B0);
        sub_1C4403FC0();
        v459 = sub_1C4EF9CD8();
        sub_1C43FCF7C(v459);
        v460 = sub_1C442F1BC();
        *(v460 + 16) = xmmword_1C4F0D130;
        sub_1C4EF9CC8();
        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v461);
        sub_1C4406E68();
        sub_1C440D430();
        v463 = sub_1C47F61DC;
        goto LABEL_126;
      case 5:
        v468 = sub_1C4400384();
        type metadata accessor for ShortTermTrendingBehaviorHistogram(v468);
        sub_1C4409A78();
        sub_1C442CA74();
        v469();
        sub_1C456902C(&qword_1EC0B8F08, &unk_1C4F0E9B0);
        sub_1C4403FC0();
        v470 = sub_1C4EF9CD8();
        sub_1C43FCF7C(v470);
        v460 = sub_1C442F1BC();
        *(v460 + 16) = xmmword_1C4F0D130;
        sub_1C4EF9CC8();
        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v471);
        sub_1C4406E68();
        sub_1C440D430();
        v463 = sub_1C47F79B8;
        goto LABEL_126;
      case 6:
        v464 = sub_1C4400384();
        type metadata accessor for LongTermTrendingBehaviorHistogram(v464);
        sub_1C4409A78();
        sub_1C442CA74();
        v465();
        sub_1C456902C(&qword_1EC0B8F08, &unk_1C4F0E9B0);
        sub_1C4403FC0();
        v466 = sub_1C4EF9CD8();
        sub_1C43FCF7C(v466);
        v460 = sub_1C442F1BC();
        *(v460 + 16) = xmmword_1C4F0D130;
        sub_1C4EF9CC8();
        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v467);
        sub_1C4406E68();
        sub_1C440D430();
        v463 = sub_1C47F79B8;
LABEL_126:
        sub_1C47EF8D8(v79, v460, v463, v462, v82, &qword_1EC0B92B0, &qword_1C4F0EDE0, sub_1C47F4BF0, v614, v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626);
        sub_1C44D0B48();

        swift_setDeallocating();
        goto LABEL_75;
      case 9:
      case 10:
      case 11:
      case 15:
      case 16:
      case 17:
      case 50:
      case 52:
        v85 = sub_1C4400384();
        type metadata accessor for TimeOfDayBehaviorHistogram(v85);
        sub_1C4409A78();
        sub_1C442CA74();
        v86();
        sub_1C442A930();
        sub_1C4614C70();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v87);
        sub_1C4406E68();
        goto LABEL_42;
      case 12:
      case 13:
      case 14:
      case 51:
        v165 = sub_1C4400384();
        type metadata accessor for PartOfDayBehaviorHistogram(v165);
        sub_1C4409A78();
        sub_1C442CA74();
        v166();
        sub_1C442A930();
        sub_1C4615350();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v167);
        sub_1C4406E68();
        goto LABEL_42;
      case 18:
      case 19:
      case 20:
      case 53:
        v171 = sub_1C4400384();
        type metadata accessor for DayOfWeekBehaviorHistogram(v171);
        sub_1C4409A78();
        sub_1C442CA74();
        v172();
        sub_1C442A930();
        sub_1C4615834();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v173);
        sub_1C4406E68();
        goto LABEL_42;
      case 21:
      case 22:
      case 23:
      case 54:
        v210 = sub_1C4400384();
        type metadata accessor for PartOfWeekBehaviorHistogram(v210);
        sub_1C4409A78();
        sub_1C442CA74();
        v211();
        sub_1C442A930();
        sub_1C461662C();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v212);
        sub_1C4406E68();
LABEL_42:
        sub_1C440C4E8();
        sub_1C47EEFB0();
        goto LABEL_47;
      case 24:
      case 25:
        sub_1C4409678(v649 + 5, v649[8]);
        v340 = v648;
        v341 = sub_1C45EA9C0(v648);
        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v342);
        sub_1C4406E68();
        sub_1C47EF2E8(v340, v341, sub_1C47F61C0, v343, v82);
        goto LABEL_202;
      case 26:
      case 27:
      case 28:
      case 55:
        v168 = sub_1C4400384();
        type metadata accessor for MicroLocationBehaviorHistogram(v168);
        sub_1C4409A78();
        sub_1C442CA74();
        v169();
        sub_1C442A930();
        sub_1C47E5B7C();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v170);
        sub_1C4406E68();
        goto LABEL_30;
      case 29:
      case 30:
      case 31:
      case 56:
        v224 = sub_1C4400384();
        type metadata accessor for SpecificGeoHashBehaviorHistogram(v224);
        sub_1C4409A78();
        sub_1C442CA74();
        v225();
        sub_1C442A930();
        sub_1C47E5C30();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v226);
        sub_1C4406E68();
        goto LABEL_45;
      case 32:
      case 33:
      case 34:
      case 57:
        v174 = sub_1C4400384();
        type metadata accessor for CoarseGeoHashBehaviorHistogram(v174);
        sub_1C4409A78();
        sub_1C442CA74();
        v175();
        sub_1C442A930();
        sub_1C47E5C30();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v176);
        sub_1C4406E68();
        goto LABEL_45;
      case 35:
      case 36:
      case 37:
      case 58:
        v177 = sub_1C4400384();
        type metadata accessor for LargeGeoHashBehaviorHistogram(v177);
        sub_1C4409A78();
        sub_1C442CA74();
        v178();
        sub_1C442A930();
        sub_1C47E5C30();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v179);
        sub_1C4406E68();
LABEL_45:
        v227 = sub_1C440C4E8();
        sub_1C47EF638(v227, v228, v229, v230, v231);
        goto LABEL_47;
      case 38:
      case 39:
      case 40:
      case 59:
        v213 = sub_1C4400384();
        type metadata accessor for LocationOfInterestBehaviorHistogram(v213);
        sub_1C4409A78();
        sub_1C442CA74();
        v214();
        sub_1C442A930();
        sub_1C47E5FB4();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v215);
        sub_1C4406E68();
        v612 = MEMORY[0x1E69695A8];
        v216 = sub_1C440C4E8();
        sub_1C47EF8D8(v216, v217, v218, v219, v220, v221, v222, v223, v612, v613, v614, v615, v616, v617, v618, v619, v620, v621, v622, v623, v624);
        goto LABEL_47;
      case 41:
      case 42:
      case 43:
      case 60:
        v180 = sub_1C4400384();
        type metadata accessor for WiFiBehaviorHistogram(v180);
        sub_1C4409A78();
        sub_1C442CA74();
        v181();
        sub_1C442A930();
        sub_1C47E5B7C();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v182);
        sub_1C4406E68();
        goto LABEL_30;
      case 44:
      case 45:
      case 46:
      case 61:
        v162 = sub_1C4400384();
        type metadata accessor for FocusModeBehaviorHistogram(v162);
        sub_1C4409A78();
        sub_1C442CA74();
        v163();
        sub_1C442A930();
        sub_1C47E5B7C();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v164);
        sub_1C4406E68();
LABEL_30:
        v183 = sub_1C440C4E8();
        sub_1C47EFC28(v183, v184, v185, v186, v187);
        goto LABEL_47;
      case 47:
      case 48:
      case 49:
      case 62:
        v232 = sub_1C4400384();
        type metadata accessor for MotionStateBehaviorHistogram(v232);
        sub_1C4409A78();
        sub_1C442CA74();
        v233();
        sub_1C442A930();
        sub_1C4616D38();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v234);
        sub_1C4406E68();
        v235 = sub_1C440C4E8();
        sub_1C47EFEEC(v235, v236, v237, v238, v239);
LABEL_47:

        goto LABEL_202;
      case 63:
      case 66:
      case 85:
      case 88:
        v188 = sub_1C43FC338(v649, v649[3]);
        type metadata accessor for TimeOfDayBehaviorHistogram(v188);
        sub_1C442F674();
        sub_1C4403164();
        v190 = v189();
        v191 = 0;
        v192 = sub_1C43FC338(v82, v82[3]);
        type metadata accessor for DayOfWeekBehaviorHistogram(v192);
        sub_1C442F674();
        sub_1C442232C();
        v193();
        sub_1C4495CF4();
        sub_1C4614C70();
        v473 = v472;
        v474 = sub_1C4615834();
        sub_1C47F1CAC(v473, v474);
        v476 = v475;

        v477 = *(v476 + 16);
        if (v477)
        {
          v643 = v83;
          v644 = v190;
          sub_1C4404EE4(MEMORY[0x1E69E7CC0]);
          sub_1C47F5F1C(v477, v478);
          sub_1C43FBF6C();
          v642 = v476;
          v480 = v476 + v479;
          sub_1C449AEA0();
          v481 = v617;
          v647 = 0;
          do
          {
            v482 = v620;
            v483 = &qword_1EC0B8BB0;
            sub_1C4460108(v480, v620, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            sub_1C4460108(v482, v84, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            v646 = *(v476 + 48);
            v484 = v482;
            v485 = v619;
            sub_1C44CDA30(v484, v619, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            v486 = *(v476 + 48);
            sub_1C4EF9CD8();
            sub_1C44022CC();
            v488 = v487;
            v489 = *(v487 + 32);
            v489(v481, v650, &qword_1EC0B8BB0);
            sub_1C4449398();
            v489(v481 + v490, (v485 + v486), &qword_1EC0B8BB0);
            v84 = v650;
            v491 = *(v488 + 8);
            v492 = sub_1C43FBC98();
            v491(v492);
            v493 = sub_1C47F79E8();
            v491(v493);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E310();
              v483 = a10;
            }

            v495 = v483[2];
            v494 = v483[3];
            v191 = v647;
            v476 = v621;
            v496 = v633;
            if (v495 >= v494 >> 1)
            {
              sub_1C442BB28(v494);
              sub_1C459E310();
              v483 = a10;
            }

            v483[2] = v495 + 1;
            sub_1C440BD14();
            v481 = v498;
            sub_1C44CDA30(v498, v483 + v497 + *(v496 + 72) * v495, &qword_1EC0B9320, &unk_1C4F0EE50);
            v480 += v645;
            --v477;
          }

          while (v477);
        }

        else
        {

          v483 = MEMORY[0x1E69E7CC0];
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v568);
        sub_1C441FA00();
        v80 = v191;
        sub_1C47F018C(v648, v483, sub_1C47F6088, v569, v570, type metadata accessor for DayOfWeekBehaviorHistogram, type metadata accessor for TimeOfDayBehaviorHistogram, sub_1C461E650, sub_1C461DC50, v613, v614, v615, v616, v617, v618, v619, v620, v621, v622, v623, v624);
        goto LABEL_187;
      case 64:
      case 86:
        v394 = sub_1C4400384();
        type metadata accessor for PartOfDayBehaviorHistogram(v394);
        sub_1C4409A78();
        sub_1C442CA74();
        v396 = v395();
        v397 = sub_1C442FD94();
        v399 = sub_1C43FC338(v397, v398);
        type metadata accessor for DayOfWeekBehaviorHistogram(v399);
        sub_1C4409A78();
        sub_1C442232C();
        sub_1C442EB34();
        v401 = 0;
        v499 = v400();
        sub_1C4615350();
        sub_1C4615834();
        v500 = sub_1C4404328();
        sub_1C47F1CAC(v500, v501);
        sub_1C440167C();

        v502 = *(v69 + 16);
        if (v502)
        {
          v643 = v499;
          v644 = v396;
          sub_1C4404EE4(MEMORY[0x1E69E7CC0]);
          sub_1C47F5F1C(v502, v503);
          sub_1C43FBF6C();
          v642 = v69;
          v505 = v69 + v504;
          sub_1C449AEA0();
          v506 = v615;
          v647 = 0;
          do
          {
            v507 = v620;
            sub_1C4460108(v505, v620, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            sub_1C4460108(v507, v396, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            v646 = *(v69 + 48);
            v508 = v619;
            sub_1C44CDA30(v507, v619, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            v509 = *(v69 + 48);
            sub_1C4EF9CD8();
            sub_1C44022CC();
            v511 = v510;
            v512 = *(v510 + 32);
            v512(v506, v650, v507);
            sub_1C4449398();
            v512(v506 + v513, (v508 + v509), v507);
            v396 = v650;
            v514 = *(v511 + 8);
            v514(v508, v507);
            v515 = sub_1C47F79E8();
            (v514)(v515);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E310();
              v507 = a10;
            }

            v516 = *(v507 + 2);
            sub_1C447E468();
            v401 = v647;
            v518 = v651;
            v69 = v621;
            if (v132)
            {
              sub_1C442BB28(v517);
              sub_1C459E310();
              v507 = a10;
            }

            *(v507 + 2) = v514;
            sub_1C43FD780();
            v521 = v519 + v520 * v516;
            v506 = v522;
            sub_1C44CDA30(v522, v521, &qword_1EC0B9320, &unk_1C4F0EE50);
            sub_1C4455388();
          }

          while (!v161);
        }

        else
        {

          v518 = v651;
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v594);
        sub_1C43FEFFC();
        v595 = v622;
        *(v597 - 32) = v596;
        *(v597 - 24) = v595;
        *(v597 - 16) = v518;
        v598 = sub_1C440DE0C();
        sub_1C47F018C(v598, v599, v600, v601, v602, v603, v604, v605, sub_1C461E62C, v613, v614, v615, v616, v617, v618, v619, v620, v621, v622, v623, v624);
        sub_1C44D0B48();
        if (!v401)
        {
          goto LABEL_194;
        }

        goto LABEL_198;
      case 65:
      case 87:
        v445 = sub_1C4400384();
        type metadata accessor for PartOfDayBehaviorHistogram(v445);
        sub_1C4409A78();
        sub_1C442CA74();
        v447 = v446();
        v448 = sub_1C442FD94();
        v450 = sub_1C43FC338(v448, v449);
        type metadata accessor for PartOfWeekBehaviorHistogram(v450);
        sub_1C4409A78();
        sub_1C442232C();
        sub_1C442EB34();
        v452 = 0;
        v523 = v451();
        sub_1C4615350();
        sub_1C461662C();
        v524 = sub_1C4404328();
        sub_1C47F1CAC(v524, v525);
        sub_1C440167C();

        v526 = MEMORY[0x10];
        if (MEMORY[0x10])
        {
          v643 = v523;
          v644 = v447;
          sub_1C4404EE4(MEMORY[0x1E69E7CC0]);
          sub_1C47F5F1C(v526, v527);
          sub_1C43FBF6C();
          v642 = 0;
          v529 = v528;
          v645 = *(v530 + 72);
          v531 = v650;
          v532 = v620;
          v533 = v616;
          v647 = 0;
          do
          {
            v534 = &qword_1EC0B8BB0;
            sub_1C4460108(v529, v532, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            sub_1C4460108(v532, v531, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            v535 = v621;
            v646 = *(v621 + 48);
            v536 = v532;
            v537 = v619;
            sub_1C44CDA30(v536, v619, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            v538 = *(v535 + 48);
            sub_1C4EF9CD8();
            sub_1C44022CC();
            v540 = v539;
            v541 = *(v539 + 32);
            v541(v533, v650, &qword_1EC0B8BB0);
            sub_1C4449398();
            v541(v533 + v542, (v537 + v538), &qword_1EC0B8BB0);
            v531 = v650;
            v543 = *(v540 + 8);
            v544 = sub_1C44333A0();
            v543(v544);
            v545 = sub_1C47F79E8();
            v543(v545);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E310();
              v534 = a10;
            }

            v546 = v534[2];
            sub_1C447E468();
            v452 = v647;
            v548 = v622;
            v532 = v620;
            if (v132)
            {
              sub_1C442BB28(v547);
              sub_1C459E310();
              v534 = a10;
            }

            v534[2] = v543;
            sub_1C43FD780();
            v551 = v549 + v550 * v546;
            v533 = v552;
            sub_1C44CDA30(v552, v551, &qword_1EC0B9320, &unk_1C4F0EE50);
            v529 += v645;
            --v526;
          }

          while (v526);
        }

        else
        {

          v534 = MEMORY[0x1E69E7CC0];
          v548 = v622;
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v607);
        sub_1C43FEFFC();
        *(v609 - 32) = v608;
        *(v609 - 24) = v548;
        *(v609 - 16) = v651;
        sub_1C47F018C(v648, v534, sub_1C47F79A0, v610, v608, type metadata accessor for PartOfDayBehaviorHistogram, type metadata accessor for PartOfWeekBehaviorHistogram, sub_1C461E62C, sub_1C461E714, v613, v614, v615, v616, v617, v618, v619, v620, v621, v622, v623, v624);
        sub_1C44D0B48();
        if (v452)
        {
          goto LABEL_198;
        }

        sub_1C4482CDC();
LABEL_194:

        goto LABEL_201;
      case 67:
      case 89:
        v305 = v649[4];
        v306 = sub_1C43FC338(v649, v649[3]);
        type metadata accessor for DayOfWeekBehaviorHistogram(v306);
        sub_1C442F674();
        sub_1C4403164();
        v307();
        v308 = sub_1C44322F4();
        type metadata accessor for MicroLocationBehaviorHistogram(v308);
        sub_1C442F674();
        sub_1C440F688();
        v309();
        sub_1C4495CF4();
        sub_1C4615834();
        sub_1C44A1D40();
        v310 = sub_1C4404328();
        sub_1C47F2060(v310, v311);
        sub_1C440167C();

        v312 = *(v305 + 16);
        if (v312)
        {
          sub_1C4422ADC();
          sub_1C440AAE4(MEMORY[0x1E69E7CC0]);
          sub_1C47F5F1C(v312, v313);
          sub_1C443FC58();
          v315 = v305 + v314;
          v650 = (v635 + 8);
          v316 = *(v84 + 72);
          v317 = v624;
          do
          {
            sub_1C4405BE0();
            sub_1C4460108(v318, v319, v320, v321);
            v322 = v635;
            sub_1C4405BE0();
            sub_1C4460108(v323, v324, v325, v326);
            sub_1C443E31C();
            v327 = v636;
            sub_1C4405BE0();
            sub_1C44CDA30(v328, v329, v330, v331);
            sub_1C446BED8();
            sub_1C44AE01C(v332);
            sub_1C44022CC();
            v333 = v317;
            v335 = v334;
            (*(v334 + 32))(v333, v322, v76);
            (*(v335 + 8))(v327, v76);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E250();
              v76 = a10;
            }

            v336 = *(v76 + 2);
            if (v336 >= *(v76 + 3) >> 1)
            {
              sub_1C459E250();
              v76 = a10;
            }

            *(v76 + 2) = v336 + 1;
            sub_1C43FD780();
            v317 = v624;
            sub_1C44CDA30(v624, v337 + v338 * v336, &qword_1EC0B9370, &unk_1C4F0EEB0);
            v315 += v316;
            --v312;
            v339 = v622;
          }

          while (v312);

          v80 = v647;
        }

        else
        {

          v76 = MEMORY[0x1E69E7CC0];
          v339 = v622;
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v590);
        sub_1C43FEFFC();
        *(v591 - 32) = v576;
        *(v591 - 24) = v339;
        *(v591 - 16) = v651;
        v592 = sub_1C47F7988;
        goto LABEL_178;
      case 68:
      case 69:
      case 90:
      case 91:
        v255 = sub_1C4400384();
        type metadata accessor for TimeOfDayBehaviorHistogram(v255);
        sub_1C4409A78();
        sub_1C442CA74();
        v256();
        v257 = sub_1C442FD94();
        v259 = sub_1C43FC338(v257, v258);
        type metadata accessor for MicroLocationBehaviorHistogram(v259);
        sub_1C4409A78();
        sub_1C442232C();
        sub_1C442EB34();
        v260();
        sub_1C4495CF4();
        sub_1C4614C70();
        sub_1C44A1D40();
        v261 = sub_1C4404328();
        sub_1C47F2060(v261, v262);
        sub_1C440167C();

        v263 = *(v69 + 16);
        if (!v263)
        {
          goto LABEL_170;
        }

        sub_1C4422ADC();
        sub_1C440AAE4(MEMORY[0x1E69E7CC0]);
        sub_1C47F5F1C(v263, v264);
        sub_1C443FC58();
        v650 = (v635 + 8);
        v646 = *(v84 + 72);
        do
        {
          sub_1C4405BE0();
          sub_1C4460108(v265, v266, v267, v268);
          sub_1C4405BE0();
          sub_1C4460108(v269, v270, v271, v272);
          sub_1C443E31C();
          v273 = v636;
          sub_1C4405BE0();
          sub_1C44CDA30(v274, v275, v276, v277);
          sub_1C446BED8();
          sub_1C44AE01C(v278);
          sub_1C44022CC();
          v280 = v279;
          v281 = sub_1C4475834();
          v282(v281);
          v283 = v280 + 8;
          v284 = sub_1C44333A0();
          v285(v284);
          if ((sub_1C445C170() & 1) == 0)
          {
            sub_1C4411CDC();
            sub_1C459E250();
            v76 = a10;
          }

          sub_1C440C4FC();
          v287 = v629;
          if (v132)
          {
            sub_1C442BB28(v286);
            sub_1C459E250();
            v287 = v629;
            v76 = a10;
          }

          *(v76 + 2) = v283;
          sub_1C43FD780();
          sub_1C44CDA30(v287, v288 + v289 * v273, &qword_1EC0B9370, &unk_1C4F0EEB0);
          sub_1C4455388();
        }

        while (!v161);
        goto LABEL_65;
      case 70:
      case 92:
        v379 = sub_1C4400384();
        type metadata accessor for DayOfWeekBehaviorHistogram(v379);
        sub_1C4409A78();
        sub_1C442CA74();
        v380();
        v381 = sub_1C44322F4();
        type metadata accessor for SpecificGeoHashBehaviorHistogram(v381);
        sub_1C442F674();
        sub_1C440F688();
        v382();
        v198 = 0;
        sub_1C448077C();
        sub_1C4615834();
        sub_1C447F800();
        v383 = sub_1C4404328();
        sub_1C47F2310(v383, v384);
        sub_1C440167C();

        if (!*(v69 + 16))
        {
          goto LABEL_172;
        }

        sub_1C4480394();
        sub_1C4417190(MEMORY[0x1E69E7CC0]);
        sub_1C4408A38();
        sub_1C4424CB8();
        do
        {
          sub_1C4433CD0();
          sub_1C4409CA0();
          sub_1C447F0A0();
          sub_1C442DF38();
          sub_1C445E80C();
          v386 = v385;
          v387 = sub_1C44160A0();
          v388(v387);
          v389 = sub_1C4469170();
          v390(v389);
          if ((sub_1C445C170() & 1) == 0)
          {
            sub_1C4411CDC();
            sub_1C459E190();
            v386 = a10;
          }

          sub_1C44159E8();
          v198 = v645;
          if (v132)
          {
            sub_1C4410C88(v391);
            sub_1C459E190();
            sub_1C47F79D8();
          }

          *(v386 + 2) = v58;
          sub_1C43FD780();
          v392 = sub_1C44BBC3C();
          sub_1C44CDA30(v392, v393, &qword_1EC0B9358, &unk_1C4F0EE90);
          sub_1C4410364();
        }

        while (!v161);
        goto LABEL_74;
      case 71:
      case 72:
      case 95:
      case 98:
        v194 = sub_1C4400384();
        type metadata accessor for TimeOfDayBehaviorHistogram(v194);
        sub_1C4409A78();
        sub_1C442CA74();
        v195();
        v196 = sub_1C44322F4();
        type metadata accessor for SpecificGeoHashBehaviorHistogram(v196);
        sub_1C442F674();
        sub_1C440F688();
        v197();
        v198 = 0;
        sub_1C448077C();
        sub_1C4614C70();
        sub_1C447F800();
        v199 = sub_1C4404328();
        sub_1C47F2310(v199, v200);
        sub_1C440167C();

        if (!*(v69 + 16))
        {
          goto LABEL_172;
        }

        sub_1C4480394();
        sub_1C4417190(MEMORY[0x1E69E7CC0]);
        sub_1C4408A38();
        sub_1C4424CB8();
        do
        {
          sub_1C4433CD0();
          sub_1C4409CA0();
          sub_1C447F0A0();
          sub_1C442DF38();
          sub_1C445E80C();
          v202 = v201;
          v203 = sub_1C44160A0();
          v204(v203);
          v205 = sub_1C4469170();
          v206(v205);
          if ((sub_1C445C170() & 1) == 0)
          {
            sub_1C4411CDC();
            sub_1C459E190();
            v202 = a10;
          }

          sub_1C44159E8();
          v198 = v645;
          if (v132)
          {
            sub_1C4410C88(v207);
            sub_1C459E190();
            sub_1C47F79D8();
          }

          *(v202 + 2) = v58;
          sub_1C43FD780();
          v208 = sub_1C44BBC3C();
          sub_1C44CDA30(v208, v209, &qword_1EC0B9358, &unk_1C4F0EE90);
          sub_1C4410364();
        }

        while (!v161);
        goto LABEL_74;
      case 73:
      case 93:
        v453 = sub_1C4400384();
        type metadata accessor for DayOfWeekBehaviorHistogram(v453);
        sub_1C4409A78();
        sub_1C442CA74();
        v454();
        v455 = sub_1C44322F4();
        type metadata accessor for CoarseGeoHashBehaviorHistogram(v455);
        sub_1C442F674();
        sub_1C440F688();
        v456();
        v433 = 0;
        sub_1C448077C();
        sub_1C4615834();
        sub_1C447F800();
        v553 = sub_1C4404328();
        sub_1C47F2310(v553, v554);
        sub_1C440167C();

        if (!*(v69 + 16))
        {
          goto LABEL_195;
        }

        sub_1C4480394();
        sub_1C4417190(MEMORY[0x1E69E7CC0]);
        sub_1C4408A38();
        sub_1C4424CB8();
        do
        {
          sub_1C4433CD0();
          sub_1C4409CA0();
          sub_1C447F0A0();
          sub_1C442DF38();
          sub_1C445E80C();
          v556 = v555;
          v557 = sub_1C44160A0();
          v558(v557);
          v559 = sub_1C4469170();
          v560(v559);
          if ((sub_1C445C170() & 1) == 0)
          {
            sub_1C4411CDC();
            sub_1C459E190();
            v556 = a10;
          }

          sub_1C44159E8();
          v433 = v645;
          if (v132)
          {
            sub_1C4410C88(v561);
            sub_1C459E190();
            sub_1C47F79D8();
          }

          *(v556 + 2) = v58;
          sub_1C43FD780();
          v562 = sub_1C44BBC3C();
          sub_1C44CDA30(v562, v563, &qword_1EC0B9358, &unk_1C4F0EE90);
          sub_1C4410364();
        }

        while (!v161);
        goto LABEL_160;
      case 74:
      case 75:
      case 96:
      case 99:
        v240 = sub_1C4400384();
        type metadata accessor for TimeOfDayBehaviorHistogram(v240);
        sub_1C4409A78();
        sub_1C442CA74();
        v241();
        v242 = sub_1C44322F4();
        type metadata accessor for CoarseGeoHashBehaviorHistogram(v242);
        sub_1C442F674();
        sub_1C440F688();
        v243();
        v198 = 0;
        sub_1C448077C();
        sub_1C4614C70();
        sub_1C447F800();
        v244 = sub_1C4404328();
        sub_1C47F2310(v244, v245);
        sub_1C440167C();

        if (!*(v69 + 16))
        {
          goto LABEL_172;
        }

        sub_1C4480394();
        sub_1C4417190(MEMORY[0x1E69E7CC0]);
        sub_1C4408A38();
        sub_1C4424CB8();
        do
        {
          sub_1C4433CD0();
          sub_1C4409CA0();
          sub_1C447F0A0();
          sub_1C442DF38();
          sub_1C445E80C();
          v247 = v246;
          v248 = sub_1C44160A0();
          v249(v248);
          v250 = sub_1C4469170();
          v251(v250);
          if ((sub_1C445C170() & 1) == 0)
          {
            sub_1C4411CDC();
            sub_1C459E190();
            v247 = a10;
          }

          sub_1C44159E8();
          v198 = v645;
          if (v132)
          {
            sub_1C4410C88(v252);
            sub_1C459E190();
            v247 = a10;
          }

          *(v247 + 2) = v58;
          sub_1C43FD780();
          v253 = sub_1C44BBC3C();
          sub_1C44CDA30(v253, v254, &qword_1EC0B9358, &unk_1C4F0EE90);
          sub_1C4410364();
        }

        while (!v161);
        goto LABEL_74;
      case 76:
      case 94:
        v429 = sub_1C4400384();
        type metadata accessor for DayOfWeekBehaviorHistogram(v429);
        sub_1C4409A78();
        sub_1C442CA74();
        v430();
        v431 = sub_1C44322F4();
        type metadata accessor for LargeGeoHashBehaviorHistogram(v431);
        sub_1C442F674();
        sub_1C440F688();
        v432();
        v433 = 0;
        sub_1C448077C();
        sub_1C4615834();
        sub_1C447F800();
        v434 = sub_1C4404328();
        sub_1C47F2310(v434, v435);
        sub_1C440167C();

        if (*(v69 + 16))
        {
          sub_1C4480394();
          sub_1C4417190(MEMORY[0x1E69E7CC0]);
          sub_1C4408A38();
          sub_1C4424CB8();
          do
          {
            sub_1C4433CD0();
            sub_1C4409CA0();
            sub_1C447F0A0();
            sub_1C442DF38();
            sub_1C445E80C();
            v437 = v436;
            v438 = sub_1C44160A0();
            v439(v438);
            v440 = sub_1C4469170();
            v441(v440);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E190();
              v437 = a10;
            }

            sub_1C44159E8();
            v433 = v645;
            if (v132)
            {
              sub_1C4410C88(v442);
              sub_1C459E190();
              sub_1C47F79D8();
            }

            *(v437 + 2) = v58;
            sub_1C43FD780();
            v443 = sub_1C44BBC3C();
            sub_1C44CDA30(v443, v444, &qword_1EC0B9358, &unk_1C4F0EE90);
            sub_1C4410364();
          }

          while (!v161);
LABEL_160:
          sub_1C44E76B8();
          sub_1C44358D4();
        }

        else
        {
LABEL_195:
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v611);
        sub_1C441FA00();
        v581 = sub_1C440DE0C();
        v588 = v433;
        v589 = 544108320;
        goto LABEL_197;
      case 77:
      case 78:
      case 97:
      case 100:
        v290 = sub_1C4400384();
        type metadata accessor for TimeOfDayBehaviorHistogram(v290);
        sub_1C4409A78();
        sub_1C442CA74();
        v291();
        v292 = sub_1C44322F4();
        type metadata accessor for LargeGeoHashBehaviorHistogram(v292);
        sub_1C442F674();
        sub_1C440F688();
        v293();
        v198 = 0;
        sub_1C448077C();
        sub_1C4614C70();
        sub_1C447F800();
        v294 = sub_1C4404328();
        sub_1C47F2310(v294, v295);
        sub_1C440167C();

        if (*(v69 + 16))
        {
          sub_1C4480394();
          sub_1C4417190(MEMORY[0x1E69E7CC0]);
          sub_1C4408A38();
          sub_1C4424CB8();
          do
          {
            sub_1C4433CD0();
            sub_1C4409CA0();
            sub_1C447F0A0();
            sub_1C442DF38();
            sub_1C445E80C();
            v297 = v296;
            v298 = sub_1C44160A0();
            v299(v298);
            v300 = sub_1C4469170();
            v301(v300);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E190();
              v297 = a10;
            }

            sub_1C44159E8();
            v198 = v645;
            if (v132)
            {
              sub_1C4410C88(v302);
              sub_1C459E190();
              v297 = a10;
            }

            *(v297 + 2) = v58;
            sub_1C43FD780();
            v303 = sub_1C44BBC3C();
            sub_1C44CDA30(v303, v304, &qword_1EC0B9358, &unk_1C4F0EE90);
            sub_1C4410364();
          }

          while (!v161);
LABEL_74:
          sub_1C44E76B8();
          sub_1C44358D4();
        }

        else
        {
LABEL_172:
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v580);
        sub_1C441FA00();
        v581 = sub_1C440DE0C();
        v588 = v198;
        v589 = 544497952;
LABEL_197:
        sub_1C47F0808(v581, v582, v583, v584, v585, v586, v589, v587, v614, v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625);
        if (v588)
        {
          goto LABEL_198;
        }

        goto LABEL_200;
      case 79:
      case 103:
        v344 = sub_1C4400384();
        type metadata accessor for DayOfWeekBehaviorHistogram(v344);
        sub_1C4409A78();
        sub_1C442CA74();
        v345();
        v346 = sub_1C442FD94();
        v348 = sub_1C43FC338(v346, v347);
        type metadata accessor for WiFiBehaviorHistogram(v348);
        sub_1C4409A78();
        sub_1C442232C();
        sub_1C442EB34();
        v349();
        sub_1C4495CF4();
        sub_1C4615834();
        sub_1C44A1D40();
        v350 = sub_1C4404328();
        sub_1C47F2060(v350, v351);
        sub_1C440167C();

        v352 = *(v69 + 16);
        if (v352)
        {
          sub_1C4422ADC();
          sub_1C440AAE4(MEMORY[0x1E69E7CC0]);
          sub_1C47F5F1C(v352, v353);
          sub_1C443FC58();
          v355 = v69 + v354;
          v356 = v636;
          sub_1C443F600(v635);
          v357 = v625;
          do
          {
            sub_1C4405BE0();
            sub_1C4460108(v358, v359, v360, v361);
            v362 = v635;
            sub_1C4405BE0();
            sub_1C4460108(v363, v364, v365, v366);
            sub_1C443E31C();
            sub_1C4405BE0();
            sub_1C44CDA30(v367, v368, v369, v370);
            sub_1C446BED8();
            sub_1C44AE01C(v371);
            sub_1C44022CC();
            v373 = v372;
            (*(v372 + 32))(v357, v362, v76);
            v375 = *(v373 + 8);
            v374 = v373 + 8;
            v375(v356, v76);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E250();
              v76 = a10;
            }

            sub_1C440C4FC();
            v357 = v625;
            if (v132)
            {
              sub_1C442BB28(v376);
              sub_1C459E250();
              v357 = v625;
              v76 = a10;
            }

            *(v76 + 2) = v374;
            sub_1C43FD780();
            sub_1C44CDA30(v357, v377 + v378 * v362, &qword_1EC0B9370, &unk_1C4F0EEB0);
            v355 += v646;
            --v352;
          }

          while (v352);

          v80 = v647;
        }

        else
        {

          v76 = MEMORY[0x1E69E7CC0];
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v593);
        sub_1C441FA00();
        v592 = sub_1C47F5FD0;
LABEL_178:
        v574 = v592;
        v577 = type metadata accessor for DayOfWeekBehaviorHistogram;
        v578 = sub_1C461E650;
        v572 = v648;
        goto LABEL_185;
      case 80:
      case 81:
      case 101:
      case 102:
        v92 = sub_1C442FD94();
        sub_1C4409678(v92, v93);
        v94 = v82;
        v95 = sub_1C43FBE94();
        type metadata accessor for TimeOfDayBehaviorHistogram(v95);
        sub_1C4409A78();
        sub_1C442EB34();
        v97 = v96();
        v98 = sub_1C43FC338(v94, v94[3]);
        type metadata accessor for WiFiBehaviorHistogram(v98);
        sub_1C4409A78();
        v99 = 0;
        sub_1C442EB34();
        v101 = v100();
        sub_1C4614C70();
        sub_1C47E5B7C();
        v102 = sub_1C4404328();
        sub_1C47F2060(v102, v103);
        sub_1C440167C();

        v104 = v82[2];
        if (v104)
        {
          v643 = v101;
          v645 = v97;
          v647 = 0;
          sub_1C440AAE4(MEMORY[0x1E69E7CC0]);
          sub_1C47F5F1C(v104, v105);
          sub_1C443FC58();
          v107 = v94 + v106;
          sub_1C443F600(v635);
          v108 = v628;
          do
          {
            v109 = v644;
            sub_1C4405BE0();
            sub_1C4460108(v110, v111, v112, v113);
            v114 = v635;
            sub_1C4405BE0();
            sub_1C4460108(v115, v116, v117, v118);

            sub_1C44627AC();
            sub_1C4405BE0();
            sub_1C44CDA30(v119, v120, v121, v122);
            sub_1C446BED8();
            sub_1C44AE01C(v123);
            sub_1C44022CC();
            v124 = v108;
            v126 = v125;
            (*(v125 + 32))(v124, v114, v109);
            v127 = v126 + 8;
            v128 = sub_1C44333A0();
            v129(v128);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E250();
              v109 = a10;
            }

            sub_1C440C4FC();
            v131 = v637;
            if (v132)
            {
              sub_1C442BB28(v130);
              sub_1C459E250();
              v109 = a10;
            }

            *(v109 + 2) = v127;
            sub_1C43FC354();
            v108 = v628;
            sub_1C44CDA30(v628, &v109[v133 + *(v131 + 72) * v94], &qword_1EC0B9370, &unk_1C4F0EEB0);
            v107 += v646;
            --v104;
          }

          while (v104);

          v99 = v647;
        }

        else
        {

          v109 = MEMORY[0x1E69E7CC0];
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v564);
        v565 = v648;
        v566 = v649;
        v567 = v622;
        *(&v614 - 4) = v649;
        *(&v614 - 3) = v567;
        LOBYTE(v612) = v651;
        sub_1C47F0530(v565, v109, sub_1C47F7928, (&v614 - 6), v566, type metadata accessor for TimeOfDayBehaviorHistogram, 544497952, sub_1C461DC50, v614, v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625);
        if (v99)
        {

          goto LABEL_199;
        }

        sub_1C4482CDC();

        goto LABEL_201;
      case 82:
      case 106:
        v402 = sub_1C4400384();
        type metadata accessor for DayOfWeekBehaviorHistogram(v402);
        sub_1C4409A78();
        sub_1C442CA74();
        v403();
        v404 = sub_1C44322F4();
        type metadata accessor for FocusModeBehaviorHistogram(v404);
        sub_1C442F674();
        sub_1C440F688();
        v405();
        sub_1C4495CF4();
        sub_1C4615834();
        sub_1C44A1D40();
        v406 = sub_1C4404328();
        sub_1C47F2060(v406, v407);
        sub_1C440167C();

        v408 = *(v69 + 16);
        if (v408)
        {
          sub_1C4422ADC();
          sub_1C440AAE4(MEMORY[0x1E69E7CC0]);
          sub_1C47F5F1C(v408, v409);
          sub_1C443FC58();
          v79 = (v69 + v410);
          sub_1C443F600(v635);
          sub_1C44CD03C();
          do
          {
            sub_1C4433CD0();
            sub_1C445FD2C();
            sub_1C4460108(v411, v412, v413, v414);
            sub_1C447535C();
            sub_1C44627AC();
            sub_1C445FD2C();
            sub_1C44CDA30(v415, v416, v417, v418);
            sub_1C446BED8();
            sub_1C44AE01C(v419);
            sub_1C445E80C();
            v421 = v420;
            v422 = sub_1C44578C0();
            v423(v422);
            v424 = *(v421 + 8);
            v76 = (v421 + 8);
            v424(v69, v58);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E250();
              v76 = a10;
            }

            v69 = *(v76 + 2);
            v425 = *(v76 + 3);
            v58 = v69 + 1;
            v426 = v626;
            if (v69 >= v425 >> 1)
            {
              sub_1C4410C88(v425);
              sub_1C459E250();
              sub_1C44CD03C();
              v76 = a10;
            }

            *(v76 + 2) = v58;
            sub_1C43FD780();
            sub_1C44CDA30(v426, v427 + v428 * v69, &qword_1EC0B9370, &unk_1C4F0EEB0);
            sub_1C4455388();
          }

          while (!v161);

          sub_1C447CD98();
        }

        else
        {

          v76 = MEMORY[0x1E69E7CC0];
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v606);
        sub_1C441FA00();
        v574 = sub_1C47F5FAC;
        v577 = type metadata accessor for DayOfWeekBehaviorHistogram;
        v578 = sub_1C461E650;
        v572 = v79;
LABEL_185:
        v573 = v76;
        v579 = 544108320;
        goto LABEL_186;
      case 83:
      case 84:
      case 104:
      case 105:
        v134 = sub_1C4400384();
        type metadata accessor for TimeOfDayBehaviorHistogram(v134);
        sub_1C4409A78();
        sub_1C442CA74();
        v135();
        v136 = sub_1C44322F4();
        type metadata accessor for WiFiBehaviorHistogram(v136);
        sub_1C442F674();
        sub_1C440F688();
        v137();
        sub_1C4495CF4();
        sub_1C4614C70();
        sub_1C44A1D40();
        v138 = sub_1C4404328();
        sub_1C47F2060(v138, v139);
        sub_1C440167C();

        v140 = *(v69 + 16);
        if (v140)
        {
          sub_1C4422ADC();
          sub_1C440AAE4(MEMORY[0x1E69E7CC0]);
          sub_1C47F5F1C(v140, v141);
          sub_1C443FC58();
          sub_1C443F600(v635);
          do
          {
            sub_1C4433CD0();
            sub_1C445FD2C();
            sub_1C4460108(v142, v143, v144, v145);
            sub_1C447535C();
            sub_1C44627AC();
            sub_1C445FD2C();
            sub_1C44CDA30(v146, v147, v148, v149);
            sub_1C446BED8();
            sub_1C44AE01C(v150);
            sub_1C445E80C();
            v152 = v151;
            v153 = sub_1C44578C0();
            v154(v153);
            v156 = *(v152 + 8);
            v155 = (v152 + 8);
            v156(v69, v58);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E250();
              v155 = a10;
            }

            v69 = *(v155 + 2);
            v157 = *(v155 + 3);
            v58 = v69 + 1;
            v158 = v630;
            if (v69 >= v157 >> 1)
            {
              sub_1C4410C88(v157);
              sub_1C459E250();
              v158 = v630;
              v155 = a10;
            }

            *(v155 + 2) = v58;
            sub_1C43FD780();
            sub_1C44CDA30(v158, v159 + v160 * v69, &qword_1EC0B9370, &unk_1C4F0EEB0);
            sub_1C4455388();
          }

          while (!v161);
LABEL_65:

          sub_1C447CD98();
        }

        else
        {
LABEL_170:
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v571);
        sub_1C441FA00();
        v572 = sub_1C440DE0C();
        v579 = 544497952;
LABEL_186:
        sub_1C47F0530(v572, v573, v574, v575, v576, v577, v579, v578, v614, v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625);
LABEL_187:
        if (v80)
        {
LABEL_198:

LABEL_199:
        }

        else
        {
LABEL_200:
          sub_1C4482CDC();

LABEL_201:

LABEL_202:
        }

        break;
      default:
        sub_1C456902C(&qword_1EC0B8F08, &unk_1C4F0E9B0);
        sub_1C4403FC0();
        v88 = sub_1C4EF9CD8();
        sub_1C43FCF7C(v88);
        sub_1C447CBCC();
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_1C4F0D130;
        sub_1C4EF9CC8();
        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v90);
        sub_1C4406E68();
        sub_1C440D430();
        sub_1C47EF8D8(v648, v89, sub_1C47F79B8, v91, v82, &qword_1EC0B92B0, &qword_1C4F0EDE0, sub_1C47F4BF0, v614, v615, v616, v617, v618, v619, v620, v621, v622, v623, v624, v625, v626);
        sub_1C44D0B48();
        swift_setDeallocating();
LABEL_75:
        sub_1C49E1584();
        break;
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C47EE5F4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      v3 = a1;
      v4 = &unk_1C4F2F6E2;
      return v4[v3];
    case 2:
      sub_1C4D50668();
      sub_1C4413F2C(v6);
      sub_1C43FD000();
      if (v2)
      {
        return 11;
      }

      sub_1C4D50668();
      sub_1C4413F2C(v8);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v10);
      sub_1C43FD000();
      if (v2)
      {
        return 17;
      }

      sub_1C4D50668();
      sub_1C4413F2C(v12);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v14);
      sub_1C43FD000();
      if (v2)
      {
        return 23;
      }

      sub_1C4D50668();
      sub_1C4413F2C(v16);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v18);
      sub_1C43FD000();
      if (v2)
      {
        return 28;
      }

      sub_1C4D50668();
      sub_1C4413F2C(v20);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v22);
      sub_1C43FD000();
      if (v2)
      {
        return 34;
      }

      sub_1C4D50668();
      sub_1C4413F2C(v24);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v26);
      sub_1C43FD000();
      if (v2)
      {
        return 43;
      }

      sub_1C4D50668();
      sub_1C4413F2C(v28);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v30);
      sub_1C43FD000();
      if (v2)
      {
        return 48;
      }

      sub_1C4D50668();
      sub_1C4413F2C(v32);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v34);
      sub_1C43FD000();
      if (v2)
      {
        return 86;
      }

      sub_1C4D50668();
      sub_1C4413F2C(v36);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v38);
      sub_1C43FD000();
      if (v2)
      {
        return 88;
      }

      sub_1C4D50668();
      sub_1C4413F2C(v40);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v42);
      sub_1C43FD000();
      if (v2)
      {
        return 95;
      }

      sub_1C4D50668();
      sub_1C4413F2C(v44);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v45);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v48);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v50);
      sub_1C43FD000();
      if (v2)
      {
        return 104;
      }

      sub_1C4D50668();
      sub_1C4413F2C(v52);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v54);
      sub_1C43FD000();
      if (v2)
      {
        return 98;
      }

      sub_1C4D50668();
      sub_1C4413F2C(v56);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v58);
      sub_1C43FD000();
      if (v2)
      {
        return 100;
      }

      sub_1C4D50668();
      sub_1C4413F2C(v60);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v62);
      sub_1C43FD000();
      if (v2)
      {
        return 105;
      }

      sub_1C4D50668();
      sub_1C4413F2C(v64);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v66);
      sub_1C43FD000();
      if (v2)
      {
        return 92;
      }

      sub_1C4D50668();
      sub_1C4413F2C(v68);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v70);
      sub_1C43FD000();
      if (v2)
      {
        return 94;
      }

      sub_1C4D50668();
      sub_1C4413F2C(v72);
      sub_1C43FD000();
      sub_1C4D50668();
      sub_1C4413F2C(v74);
      v76 = v75;

      if ((v76 & 1) == 0)
      {
        goto LABEL_107;
      }

      result = 106;
      break;
    case 3:
      sub_1C4D50668();
      sub_1C4413F2C(v7);
      sub_1C43FD000();
      if (v2)
      {
        result = 50;
      }

      else
      {
        sub_1C4D50668();
        sub_1C4413F2C(v9);
        sub_1C43FD000();
        sub_1C4D50668();
        sub_1C4413F2C(v11);
        sub_1C43FD000();
        if (v2)
        {
          result = 52;
        }

        else
        {
          sub_1C4D50668();
          sub_1C4413F2C(v13);
          sub_1C43FD000();
          sub_1C4D50668();
          sub_1C4413F2C(v15);
          sub_1C43FD000();
          if (v2)
          {
            result = 54;
          }

          else
          {
            sub_1C4D50668();
            sub_1C4413F2C(v17);
            sub_1C43FD000();
            sub_1C4D50668();
            sub_1C4413F2C(v19);
            sub_1C43FD000();
            if (v2)
            {
              result = 55;
            }

            else
            {
              sub_1C4D50668();
              sub_1C4413F2C(v21);
              sub_1C43FD000();
              sub_1C4D50668();
              sub_1C4413F2C(v23);
              sub_1C43FD000();
              if (v2)
              {
                result = 57;
              }

              else
              {
                sub_1C4D50668();
                sub_1C4413F2C(v25);
                sub_1C43FD000();
                sub_1C4D50668();
                sub_1C4413F2C(v27);
                sub_1C43FD000();
                if (v2)
                {
                  result = 60;
                }

                else
                {
                  sub_1C4D50668();
                  sub_1C4413F2C(v29);
                  sub_1C43FD000();
                  sub_1C4D50668();
                  sub_1C4413F2C(v31);
                  sub_1C43FD000();
                  if (v2)
                  {
                    result = 62;
                  }

                  else
                  {
                    sub_1C4D50668();
                    sub_1C4413F2C(v33);
                    sub_1C43FD000();
                    sub_1C4D50668();
                    sub_1C4413F2C(v35);
                    sub_1C43FD000();
                    if (v2)
                    {
                      result = 64;
                    }

                    else
                    {
                      sub_1C4D50668();
                      sub_1C4413F2C(v37);
                      sub_1C43FD000();
                      sub_1C4D50668();
                      sub_1C4413F2C(v39);
                      sub_1C43FD000();
                      if (v2)
                      {
                        result = 66;
                      }

                      else
                      {
                        sub_1C4D50668();
                        sub_1C4413F2C(v41);
                        sub_1C43FD000();
                        sub_1C4D50668();
                        sub_1C4413F2C(v43);
                        sub_1C43FD000();
                        if (v2)
                        {
                          result = 71;
                        }

                        else
                        {
                          sub_1C4D50668();
                          sub_1C4413F2C(v46);
                          sub_1C43FD000();
                          sub_1C4D50668();
                          sub_1C4413F2C(v47);
                          sub_1C43FD000();
                          sub_1C4D50668();
                          sub_1C4413F2C(v49);
                          sub_1C43FD000();
                          sub_1C4D50668();
                          sub_1C4413F2C(v51);
                          sub_1C43FD000();
                          if (v2)
                          {
                            result = 83;
                          }

                          else
                          {
                            sub_1C4D50668();
                            sub_1C4413F2C(v53);
                            sub_1C43FD000();
                            sub_1C4D50668();
                            sub_1C4413F2C(v55);
                            sub_1C43FD000();
                            if (v2)
                            {
                              result = 72;
                            }

                            else
                            {
                              sub_1C4D50668();
                              sub_1C4413F2C(v57);
                              sub_1C43FD000();
                              sub_1C4D50668();
                              sub_1C4413F2C(v59);
                              sub_1C43FD000();
                              if (v2)
                              {
                                result = 78;
                              }

                              else
                              {
                                sub_1C4D50668();
                                sub_1C4413F2C(v61);
                                sub_1C43FD000();
                                sub_1C4D50668();
                                sub_1C4413F2C(v63);
                                sub_1C43FD000();
                                if (v2)
                                {
                                  result = 84;
                                }

                                else
                                {
                                  sub_1C4D50668();
                                  sub_1C4413F2C(v65);
                                  sub_1C43FD000();
                                  sub_1C4D50668();
                                  sub_1C4413F2C(v67);
                                  sub_1C43FD000();
                                  if (v2)
                                  {
                                    result = 70;
                                  }

                                  else
                                  {
                                    sub_1C4D50668();
                                    sub_1C4413F2C(v69);
                                    sub_1C43FD000();
                                    sub_1C4D50668();
                                    sub_1C4413F2C(v71);
                                    sub_1C43FD000();
                                    if (v2)
                                    {
                                      result = 76;
                                    }

                                    else
                                    {
                                      sub_1C4D50668();
                                      sub_1C4413F2C(v73);
                                      sub_1C43FD000();
                                      sub_1C4D50668();
                                      sub_1C4413F2C(v77);
                                      v79 = v78;

                                      if (v79)
                                      {
                                        result = 82;
                                      }

                                      else
                                      {
LABEL_107:
                                        type metadata accessor for FeaturizedBehaviorsGroupError(0);
                                        sub_1C442A3EC();
                                        v82 = sub_1C47F6E3C(v80, v81, &unk_1C4F2F688);
                                        sub_1C43FFC70(v82);
                                        v84 = v83;
                                        v85 = sub_1C456902C(&qword_1EC0BD678, &qword_1C4F2F378);
                                        sub_1C440BAA8(v84, 2, 2, v85);
                                        result = swift_willThrow();
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

      break;
    case 4:
      return byte_1C4F2F6CA[a1];
    default:
      v3 = a1;
      v4 = &unk_1C4F2F6D5;
      return v4[v3];
  }

  return result;
}

void sub_1C47EEFB0()
{
  sub_1C43FE628();
  v2 = v1;
  v65 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1C456902C(&qword_1EC0B92B0, &qword_1C4F0EDE0);
  sub_1C43FCDF8();
  v59 = v13;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v55 - v15;
  v17 = sub_1C47F4BF0(v11, v9, v7, v5);
  if (v0)
  {
    goto LABEL_17;
  }

  v18 = v17;
  v19 = v65;
  v57 = v16;
  v58 = v12;
  v55[1] = 0;
  v20 = *(v17 + 16);
  if (!v20)
  {
LABEL_16:

LABEL_17:
    sub_1C44109F8();
    return;
  }

  sub_1C445067C(MEMORY[0x1E69E7CC0]);
  v21 = v69;
  v22 = v59;
  sub_1C43FC354();
  v24 = sub_1C4460668(v23);
  v60 = v19(v24);
  v25 = 0;
  v26 = v58;
  v27 = v57;
  v56 = v2;
  v61 = v20;
  v62 = v18;
  while (v25 < *(v18 + 16))
  {
    v65 = v21;
    v28 = sub_1C441674C(*(v22 + 72));
    sub_1C4460108(v28, v29, &qword_1EC0B92B0, &qword_1C4F0EDE0);
    v30 = sub_1C43FE6A0();
    v31 = v2(v30);
    v63 = v32;
    v64 = v31;
    v33 = *(v27 + *(v26 + 28));
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = sub_1C44409A0(MEMORY[0x1E69E7CC0]);
      sub_1C459E0F8(v35, v34, 0);
      v36 = v68;
      v37 = v33 + 80;
      do
      {
        sub_1C445BD44();
        v38 = sub_1C45D2400();
        v40 = v39;
        sub_1C443F1DC();
        sub_1C4F01A28();
        sub_1C45EC75C(&v70);
        v42 = v66;
        v41 = v67;
        v68 = v36;
        v43 = *(v36 + 16);
        sub_1C447E468();
        if (v45)
        {
          sub_1C459E0F8(v44 > 1, v18, 1);
          v36 = v68;
        }

        *(v36 + 16) = v18;
        v46 = (v36 + 32 * v43);
        v46[4] = v38;
        v46[5] = v40;
        v46[6] = v42;
        v46[7] = v41;
        v37 += 56;
        --v34;
      }

      while (v34);
      v2 = v56;
      v26 = v58;
      v22 = v59;
      v27 = v57;
    }

    else
    {
      v36 = MEMORY[0x1E69E7CC0];
    }

    sub_1C4420C3C(v27, &qword_1EC0B92B0, &qword_1C4F0EDE0);
    v21 = v65;
    v69 = v65;
    v47 = *(v65 + 16);
    if (v47 >= *(v65 + 24) >> 1)
    {
      sub_1C4401DCC();
      sub_1C459E0D8(v52, v53, v54);
      v21 = v69;
    }

    v48 = v64;
    *(v21 + 16) = v47 + 1;
    v49 = (v21 + 24 * v47);
    v18 = v62;
    v50 = v63;
    v49[4] = v48;
    v49[5] = v50;
    v49[6] = v36;
    sub_1C44AB24C();
    if (v51)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1C47EF2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C47F4980(a1, a2, a3, a4);
  if (v5)
  {
    return a5;
  }

  v8 = v7;
  v9 = *(v7 + 16);
  if (!v9)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v64 = MEMORY[0x1E69E7CC0];
  result = sub_1C459E0D8(0, v9, 0);
  v11 = 0;
  a5 = v64;
  v44 = v8 + 32;
  v45 = v9;
  v46 = v8;
  while (v11 < *(v8 + 16))
  {
    v55 = a5;
    v12 = v44 + 56 * v11;
    v14 = *v12;
    v13 = *(v12 + 8);
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    v17 = *(v12 + 32);
    v18 = *(v12 + 40);
    v19 = *(v12 + 48);
    v62 = 0;
    v63 = 0xE000000000000000;
    v56 = v14;
    v57 = v13;
    v58 = v16;
    v59 = v15;
    v60 = v17;
    v61 = v18;
    sub_1C45D7F78(v14, v13, v16, v15, v17, v18);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02438();
    v20 = *(v19 + 16);
    if (v20)
    {
      v47 = v18;
      v48 = v17;
      v49 = v15;
      v50 = v13;
      v51 = v14;
      v52 = v63;
      v53 = v62;
      v54 = v11;
      v62 = MEMORY[0x1E69E7CC0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C459E0F8(0, v20, 0);
      v21 = v62;
      v22 = v19 + 80;
      do
      {
        v23 = *(v22 - 48);
        v24 = *(v22 - 32);
        *&v66[9] = *(v22 - 23);
        v65 = v23;
        *v66 = v24;
        sub_1C45A2358(&v65, &v56);
        v25 = sub_1C45D2400();
        v27 = v26;
        v56 = 0;
        v57 = 0xE000000000000000;
        sub_1C4F01A28();
        sub_1C45EC75C(&v65);
        v28 = v56;
        v29 = v57;
        v62 = v21;
        v31 = *(v21 + 16);
        v30 = *(v21 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1C459E0F8(v30 > 1, v31 + 1, 1);
          v21 = v62;
        }

        *(v21 + 16) = v31 + 1;
        v32 = (v21 + 32 * v31);
        v32[4] = v25;
        v32[5] = v27;
        v32[6] = v28;
        v32[7] = v29;
        v22 += 56;
        --v20;
      }

      while (v20);

      sub_1C45A23B4(v51, v50, v16, v49, v48, v47);

      v33 = v45;
      v8 = v46;
      v11 = v54;
      a5 = v55;
      v35 = v52;
      v34 = v53;
    }

    else
    {
      v36 = v15;
      v37 = v62;
      v38 = v63;
      sub_1C45A23B4(v14, v13, v16, v36, v17, v18);

      v35 = v38;
      v34 = v37;
      v21 = MEMORY[0x1E69E7CC0];
      v33 = v45;
      v8 = v46;
      a5 = v55;
    }

    v64 = a5;
    v40 = *(a5 + 16);
    v39 = *(a5 + 24);
    if (v40 >= v39 >> 1)
    {
      v42 = v34;
      v43 = v35;
      result = sub_1C459E0D8((v39 > 1), v40 + 1, 1);
      v35 = v43;
      v34 = v42;
      a5 = v64;
    }

    ++v11;
    *(a5 + 16) = v40 + 1;
    v41 = (a5 + 24 * v40);
    v41[4] = v34;
    v41[5] = v35;
    v41[6] = v21;
    if (v11 == v33)
    {

      return a5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47EF638(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, uint64_t *), uint64_t a4, uint64_t a5)
{
  v7 = sub_1C47F4810(a1, a2, a3, a4);
  if (v5)
  {
    return a5;
  }

  v8 = v7;
  v9 = *(v7 + 16);
  if (!v9)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v43 = MEMORY[0x1E69E7CC0];
  result = sub_1C459E0D8(0, v9, 0);
  v11 = 0;
  a5 = v43;
  v34 = v8;
  v35 = v8 + 32;
  v33 = v9;
  while (v11 < *(v8 + 16))
  {
    v12 = (v35 + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v40 = 0;
    v41 = 0xE000000000000000;
    v42 = v13;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02438();
    v15 = v40;
    v16 = v41;
    v17 = *(v14 + 16);
    if (v17)
    {
      v36 = v41;
      v37 = v40;
      v38 = v11;
      v39 = a5;
      v42 = MEMORY[0x1E69E7CC0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C459E0F8(0, v17, 0);
      v18 = v42;
      v19 = v14 + 80;
      do
      {
        v20 = *(v19 - 48);
        v21 = *(v19 - 32);
        *&v45[9] = *(v19 - 23);
        v44 = v20;
        *v45 = v21;
        sub_1C45A2358(&v44, &v40);
        v22 = sub_1C45D2400();
        v24 = v23;
        v40 = 0;
        v41 = 0xE000000000000000;
        sub_1C4F01A28();
        sub_1C45EC75C(&v44);
        v25 = v40;
        v26 = v41;
        v42 = v18;
        v28 = *(v18 + 16);
        v27 = *(v18 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1C459E0F8(v27 > 1, v28 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v28 + 1;
        v29 = (v18 + 32 * v28);
        v29[4] = v22;
        v29[5] = v24;
        v29[6] = v25;
        v29[7] = v26;
        v19 += 56;
        --v17;
      }

      while (v17);
      result = swift_bridgeObjectRelease_n();
      v9 = v33;
      v8 = v34;
      v11 = v38;
      a5 = v39;
      v16 = v36;
      v15 = v37;
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    v43 = a5;
    v31 = *(a5 + 16);
    v30 = *(a5 + 24);
    if (v31 >= v30 >> 1)
    {
      result = sub_1C459E0D8((v30 > 1), v31 + 1, 1);
      a5 = v43;
    }

    ++v11;
    *(a5 + 16) = v31 + 1;
    v32 = (a5 + 24 * v31);
    v32[4] = v15;
    v32[5] = v16;
    v32[6] = v18;
    if (v11 == v9)
    {

      return a5;
    }
  }

  __break(1u);
  return result;
}

void sub_1C47EF8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void))
{
  sub_1C43FE628();
  v63 = v26;
  sub_1C4459B68();
  sub_1C456902C(v27, v28);
  sub_1C43FCDF8();
  v58 = v29;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  v31 = sub_1C4418A74();
  v32 = v63(v31);
  if (v21)
  {
    goto LABEL_17;
  }

  v57 = v25;
  v33 = *(v32 + 16);
  if (!v33)
  {

LABEL_17:
    sub_1C44109F8();
    return;
  }

  v66 = MEMORY[0x1E69E7CC0];
  v61 = v32;
  sub_1C459E0D8(0, v33, 0);
  v34 = v66;
  v35 = v58;
  sub_1C440BD14();
  v59 = v36 + v37;
  sub_1C44B8F5C();
  v40 = v25;
  v60 = v33;
  while (v39 < *(v38 + 16))
  {
    v62 = v39;
    v64 = v34;
    sub_1C4460108(v59 + *(v35 + 72) * v39, v40, v23, v22);
    a21(0);
    sub_1C4F02438();
    v41 = *(v40 + *(v24 + 28));
    v42 = *(v41 + 16);
    if (v42)
    {
      v43 = sub_1C44409A0(MEMORY[0x1E69E7CC0]);
      sub_1C459E0F8(v43, v42, 0);
      v44 = v65;
      v22 = (v41 + 80);
      do
      {
        sub_1C4441478();
        v45 = sub_1C45D2400();
        v47 = v46;
        sub_1C443F1DC();
        sub_1C4F01A28();
        sub_1C45EC75C(&v67);
        v24 = 0;
        v23 = 0xE000000000000000;
        v65 = v44;
        v48 = *(v44 + 16);
        sub_1C447E468();
        if (v50)
        {
          sub_1C459E0F8(v49 > 1, v33, 1);
        }

        *(v44 + 16) = v33;
        v51 = (v44 + 32 * v48);
        v51[4] = v45;
        v51[5] = v47;
        v51[6] = 0;
        v51[7] = 0xE000000000000000;
        v22 += 7;
        --v42;
      }

      while (v42);
      sub_1C44B8F5C();
      v35 = v58;
      v40 = v57;
    }

    else
    {
      v44 = MEMORY[0x1E69E7CC0];
    }

    sub_1C4420C3C(v40, v23, v22);
    v34 = v64;
    v52 = *(v64 + 16);
    if (v52 >= *(v64 + 24) >> 1)
    {
      sub_1C4401DCC();
      sub_1C459E0D8(v54, v55, v56);
      v40 = v57;
      v34 = v64;
    }

    v39 = v62 + 1;
    *(v34 + 16) = v52 + 1;
    v53 = (v34 + 24 * v52);
    v38 = v61;
    v53[4] = 0;
    v53[5] = 0xE000000000000000;
    v53[6] = v44;
    v33 = v60;
    if (v62 + 1 == v60)
    {

      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_1C47EFC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C47F424C(a1, a2, a3, a4);
  if (v5)
  {
    return a5;
  }

  v8 = v7;
  v9 = *(v7 + 16);
  if (!v9)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v43 = MEMORY[0x1E69E7CC0];
  result = sub_1C459E0D8(0, v9, 0);
  v11 = 0;
  a5 = v43;
  v33 = v8;
  v34 = v8 + 32;
  v32 = v9;
  while (v11 < *(v8 + 16))
  {
    v12 = (v34 + 24 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v39 = 0;
    v40 = 0xE000000000000000;
    v41 = v13;
    v42 = v14;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02438();
    v37 = v40;
    v38 = v39;
    v16 = *(v15 + 16);
    if (v16)
    {
      v35 = v11;
      v36 = a5;
      v41 = MEMORY[0x1E69E7CC0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C459E0F8(0, v16, 0);
      v17 = v41;
      v18 = v15 + 80;
      do
      {
        v19 = *(v18 - 48);
        v20 = *(v18 - 32);
        *&v45[9] = *(v18 - 23);
        v44 = v19;
        *v45 = v20;
        sub_1C45A2358(&v44, &v39);
        v21 = sub_1C45D2400();
        v23 = v22;
        v39 = 0;
        v40 = 0xE000000000000000;
        sub_1C4F01A28();
        sub_1C45EC75C(&v44);
        v24 = v39;
        v25 = v40;
        v41 = v17;
        v27 = *(v17 + 16);
        v26 = *(v17 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1C459E0F8(v26 > 1, v27 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v27 + 1;
        v28 = (v17 + 32 * v27);
        v28[4] = v21;
        v28[5] = v23;
        v28[6] = v24;
        v28[7] = v25;
        v18 += 56;
        --v16;
      }

      while (v16);

      result = swift_bridgeObjectRelease_n();
      v9 = v32;
      v8 = v33;
      v11 = v35;
      a5 = v36;
    }

    else
    {

      v17 = MEMORY[0x1E69E7CC0];
    }

    v43 = a5;
    v30 = *(a5 + 16);
    v29 = *(a5 + 24);
    if (v30 >= v29 >> 1)
    {
      result = sub_1C459E0D8((v29 > 1), v30 + 1, 1);
      a5 = v43;
    }

    ++v11;
    *(a5 + 16) = v30 + 1;
    v31 = (a5 + 24 * v30);
    v31[4] = v38;
    v31[5] = v37;
    v31[6] = v17;
    if (v11 == v9)
    {

      return a5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47EFEEC(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, uint64_t *), uint64_t a4, uint64_t a5)
{
  v7 = sub_1C47F40DC(a1, a2, a3, a4);
  if (v5)
  {
    return a5;
  }

  v8 = v7;
  v9 = *(v7 + 16);
  if (!v9)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v43 = MEMORY[0x1E69E7CC0];
  result = sub_1C459E0D8(0, v9, 0);
  v11 = 0;
  a5 = v43;
  v34 = v8;
  v35 = v8 + 32;
  v33 = v9;
  while (v11 < *(v8 + 16))
  {
    v12 = (v35 + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v40 = 0;
    v41 = 0xE000000000000000;
    v42 = v13;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02438();
    v15 = v40;
    v16 = v41;
    v17 = *(v14 + 16);
    if (v17)
    {
      v36 = v41;
      v37 = v40;
      v38 = v11;
      v39 = a5;
      v42 = MEMORY[0x1E69E7CC0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C459E0F8(0, v17, 0);
      v18 = v42;
      v19 = v14 + 80;
      do
      {
        v20 = *(v19 - 48);
        v21 = *(v19 - 32);
        *&v45[9] = *(v19 - 23);
        v44 = v20;
        *v45 = v21;
        sub_1C45A2358(&v44, &v40);
        v22 = sub_1C45D2400();
        v24 = v23;
        v40 = 0;
        v41 = 0xE000000000000000;
        sub_1C4F01A28();
        sub_1C45EC75C(&v44);
        v25 = v40;
        v26 = v41;
        v42 = v18;
        v28 = *(v18 + 16);
        v27 = *(v18 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1C459E0F8(v27 > 1, v28 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v28 + 1;
        v29 = (v18 + 32 * v28);
        v29[4] = v22;
        v29[5] = v24;
        v29[6] = v25;
        v29[7] = v26;
        v19 += 56;
        --v17;
      }

      while (v17);
      result = swift_bridgeObjectRelease_n();
      v9 = v33;
      v8 = v34;
      v11 = v38;
      a5 = v39;
      v16 = v36;
      v15 = v37;
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    v43 = a5;
    v31 = *(a5 + 16);
    v30 = *(a5 + 24);
    if (v31 >= v30 >> 1)
    {
      result = sub_1C459E0D8((v30 > 1), v31 + 1, 1);
      a5 = v43;
    }

    ++v11;
    *(a5 + 16) = v31 + 1;
    v32 = (a5 + 24 * v31);
    v32[4] = v15;
    v32[5] = v16;
    v32[6] = v18;
    if (v11 == v9)
    {

      return a5;
    }
  }

  __break(1u);
  return result;
}

void sub_1C47F018C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(uint64_t))
{
  sub_1C43FE628();
  a19 = v22;
  a20 = v23;
  v69 = v24;
  v70 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1C456902C(&qword_1EC0B9310, &qword_1C4F0EE40);
  sub_1C43FCDF8();
  v35 = v34;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBD64();
  v37 = sub_1C47F3D2C(v33, v31, v29, v27);
  if (v21)
  {
    goto LABEL_18;
  }

  v38 = v37;
  v40 = v69;
  v39 = v70;
  if (!*(v37 + 16))
  {

LABEL_18:
    sub_1C440431C();
    sub_1C44109F8();
    return;
  }

  v67 = a21;
  sub_1C445067C(MEMORY[0x1E69E7CC0]);
  v41 = v35;
  sub_1C440BD14();
  v66 = v38 + v42;
  v43 = v69(0);
  v44 = sub_1C47F7A10(v43, &a16);
  v45 = v70(v44);
  sub_1C446BC48(v45, &a15);
  sub_1C4485A78();
  sub_1C44CD03C();
  v68 = v38;
  while (v46 < *(v38 + 16))
  {
    sub_1C4460108(v66 + *(v41 + 72) * v46, v33, &qword_1EC0B9310, &qword_1C4F0EE40);
    v47 = sub_1C456902C(&qword_1EC0B9320, &unk_1C4F0EE50);
    v71 = v39(v33 + *(v47 + 52));
    v72 = v48;
    MEMORY[0x1C6940010](32, 0xE100000000000000);
    v49 = v67(v33);
    MEMORY[0x1C6940010](v49);

    v50 = *(v33 + *(v40 + 7));
    v51 = *(v50 + 16);
    if (v51)
    {
      v52 = sub_1C44409A0(MEMORY[0x1E69E7CC0]);
      sub_1C459E0F8(v52, v51, 0);
      v53 = v73;
      v33 = v50 + 80;
      do
      {
        sub_1C445BD44();
        v54 = sub_1C45D2400();
        v56 = v55;
        sub_1C443F1DC();
        sub_1C4F01A28();
        sub_1C45EC75C(&v74);
        v39 = v71;
        v73 = v53;
        v58 = *(v53 + 16);
        v57 = *(v53 + 24);
        v40 = (v58 + 1);
        if (v58 >= v57 >> 1)
        {
          sub_1C459E0F8(v57 > 1, v58 + 1, 1);
        }

        *(v53 + 16) = v40;
        v59 = (v53 + 32 * v58);
        v59[4] = v54;
        v59[5] = v56;
        v59[6] = v71;
        v59[7] = v72;
        v33 += 56;
        --v51;
      }

      while (v51);
      sub_1C4485A78();
      v41 = v35;
      sub_1C44CD03C();
    }

    else
    {
      v53 = MEMORY[0x1E69E7CC0];
    }

    sub_1C4420C3C(v33, &qword_1EC0B9310, &qword_1C4F0EE40);
    sub_1C44141EC();
    v38 = v68;
    if (v60)
    {
      sub_1C4401DCC();
      sub_1C459E0D8(v63, v64, v65);
    }

    sub_1C44345C0();
    *(v61 + 40) = v72;
    *(v61 + 48) = v53;
    sub_1C44AB24C();
    if (v62)
    {

      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_1C47F0530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v28 = v20;
  sub_1C4459B68();
  v29 = sub_1C456902C(&qword_1EC0B9338, &qword_1C4F0EE70);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  v31 = sub_1C4418A74();
  sub_1C47F397C(v31, v32, v33, v34);
  if (v20)
  {
    goto LABEL_19;
  }

  sub_1C44951EC();
  if (!v29)
  {

LABEL_19:
    sub_1C440431C();
    sub_1C44109F8();
    return;
  }

  sub_1C445067C(MEMORY[0x1E69E7CC0]);
  sub_1C47F7A04();
  sub_1C43FC354();
  v36 = sub_1C4460668(v35);
  v37 = v21(v36);
  sub_1C446BC48(v37, &a17);
  sub_1C441AEB4();
  sub_1C445A960();
  while (v38 < *(v28 + 16))
  {
    v39 = sub_1C441674C(*(v22 + 72));
    sub_1C4460108(v39, v40, &qword_1EC0B9338, &qword_1C4F0EE70);
    sub_1C456902C(&qword_1EC0B9370, &unk_1C4F0EEB0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v21, 0xE400000000000000);
    v41 = sub_1C43FE6A0();
    v42 = v27(v41);
    v44 = v43;
    MEMORY[0x1C6940010](v42);

    sub_1C4466CE4();
    if (v28)
    {
      v45 = sub_1C44409A0(MEMORY[0x1E69E7CC0]);
      sub_1C459E0F8(v45, v28, 0);
      v46 = v59;
      v21 = (v44 + 80);
      do
      {
        sub_1C4441478();
        sub_1C45D2400();
        v22 = v47;
        sub_1C443F1DC();
        sub_1C4F01A28();
        sub_1C45EC75C(&v60);
        sub_1C4475490();
        if (v49)
        {
          sub_1C4488924(v48 > 1);
          v46 = v59;
        }

        sub_1C4428E88();
      }

      while (!v50);
      v27 = v55;
      sub_1C441AEB4();
      sub_1C47F7A04();
      v23 = v56;
    }

    else
    {
      v46 = MEMORY[0x1E69E7CC0];
    }

    sub_1C4420C3C(v23, &qword_1EC0B9338, &qword_1C4F0EE70);
    sub_1C44141EC();
    if (v49)
    {
      sub_1C4401DCC();
      sub_1C459E0D8(v52, v53, v54);
    }

    sub_1C44345C0();
    v28 = v57;
    *(v51 + 40) = v58;
    *(v51 + 48) = v46;
    sub_1C44AB24C();
    if (v50)
    {

      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1C47F0808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v28 = v20;
  sub_1C4459B68();
  v29 = sub_1C456902C(&qword_1EC0B9348, &qword_1C4F0EE80);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  v31 = sub_1C4418A74();
  sub_1C47F35CC(v31, v32, v33, v34);
  if (v20)
  {
    goto LABEL_19;
  }

  sub_1C44951EC();
  if (!v29)
  {

LABEL_19:
    sub_1C440431C();
    sub_1C44109F8();
    return;
  }

  sub_1C445067C(MEMORY[0x1E69E7CC0]);
  sub_1C47F7A04();
  sub_1C43FC354();
  v36 = sub_1C4460668(v35);
  v37 = v21(v36);
  sub_1C446BC48(v37, &a17);
  sub_1C441AEB4();
  sub_1C445A960();
  while (v38 < *(v28 + 16))
  {
    v39 = sub_1C441674C(*(v22 + 72));
    sub_1C4460108(v39, v40, &qword_1EC0B9348, &qword_1C4F0EE80);
    v59 = *(v23 + *(sub_1C456902C(&qword_1EC0B9358, &unk_1C4F0EE90) + 52));
    sub_1C4F02858();
    MEMORY[0x1C6940010](v21, 0xE400000000000000);
    v41 = sub_1C43FE6A0();
    v42 = v27(v41);
    v44 = v43;
    MEMORY[0x1C6940010](v42);

    sub_1C4466CE4();
    if (v28)
    {
      v45 = sub_1C44409A0(MEMORY[0x1E69E7CC0]);
      sub_1C459E0F8(v45, v28, 0);
      v46 = v59;
      v21 = (v44 + 80);
      do
      {
        sub_1C4441478();
        sub_1C45D2400();
        v22 = v47;
        sub_1C443F1DC();
        sub_1C4F01A28();
        sub_1C45EC75C(&v60);
        sub_1C4475490();
        if (v49)
        {
          sub_1C4488924(v48 > 1);
          v46 = v59;
        }

        sub_1C4428E88();
      }

      while (!v50);
      v27 = v55;
      sub_1C441AEB4();
      sub_1C47F7A04();
      v23 = v56;
    }

    else
    {
      v46 = MEMORY[0x1E69E7CC0];
    }

    sub_1C4420C3C(v23, &qword_1EC0B9348, &qword_1C4F0EE80);
    sub_1C44141EC();
    if (v49)
    {
      sub_1C4401DCC();
      sub_1C459E0D8(v52, v53, v54);
    }

    sub_1C44345C0();
    v28 = v57;
    *(v51 + 40) = v58;
    *(v51 + 48) = v46;
    sub_1C44AB24C();
    if (v50)
    {

      goto LABEL_19;
    }
  }

  __break(1u);
}

double sub_1C47F0C1C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  HIDWORD(v27) = a5;
  v7 = sub_1C4EF9CD8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = a2[1];
  v32 = *a2;
  v33[0] = v8;
  *(v33 + 9) = *(a2 + 25);
  v9 = *(a2 + 4);
  v10 = *(a2 + 40);
  sub_1C4409678((a3 + 80), *(a3 + 104));
  sub_1C4EF9C88();
  v30 = 0;
  LOWORD(v31) = 256;
  sub_1C456902C(&qword_1EC0BAEA0, &qword_1C4F17BA0);
  v11 = (sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90) - 8);
  v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C4F0D130;
  v14 = v13 + v12;
  v15 = v13 + v12 + v11[14];
  sub_1C45D5A24(v14);
  v16 = a2[1];
  *v15 = *a2;
  *(v15 + 16) = v16;
  *(v15 + 32) = v9;
  *(v15 + 40) = v10;
  sub_1C45A2358(&v32, v29);
  sub_1C4EFDAB8();
  sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
  sub_1C47F6E3C(&qword_1EDDEFFD0, MEMORY[0x1E69A9478], MEMORY[0x1E69A9488]);
  sub_1C4F00F28();
  type metadata accessor for BehaviorContext(0);
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(a4, HIDWORD(v27), a1, v17, v18, v19, v20, v21, a1, a4, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v30, v31, v32, *(&v32 + 1));
  v23 = v22;

  return v23;
}

double sub_1C47F108C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  HIDWORD(v39) = a5;
  v38 = a4;
  *&v42 = a3;
  v37 = a1;
  v7 = sub_1C4EFDAB8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1C4EF9CD8();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C442E860(a3 + 80, v49);
  v36 = sub_1C4409678(v49, v49[3]);
  v46 = v12;
  sub_1C4EF9C88();
  v47 = 0;
  v48 = 256;
  sub_1C456902C(&qword_1EC0BAEA0, &qword_1C4F17BA0);
  v35 = sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90);
  v13 = (*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C4F0D130;
  v15 = v14 + v13;
  v16 = *MEMORY[0x1E69A9458];
  *&v45 = v8;
  v17 = *(v8 + 104);
  v17(v15, v16, v7);
  v18 = sub_1C4EF9CF8();
  v20 = v19;
  v17(v10, v16, v7);
  v21 = v44;
  sub_1C47F1518(v18, v20, v10, v50);
  if (v21)
  {

    v22 = *(v45 + 8);
    v22(v10, v7);
    (*(v40 + 8))(v46, v41);
    v22(v15, v7);
    *(v14 + 16) = 0;
    swift_setDeallocating();
    sub_1C49E167C();
  }

  else
  {
    v44 = v51;
    v23 = v52;
    v24 = v15 + *(v35 + 48);
    v25 = *(v45 + 8);
    v45 = v50[0];
    v42 = v50[1];
    v25(v10, v7);

    v26 = v42;
    *v24 = v45;
    *(v24 + 16) = v26;
    *(v24 + 32) = v44;
    *(v24 + 40) = v23;
    sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
    sub_1C47F6E3C(&qword_1EDDEFFD0, MEMORY[0x1E69A9478], MEMORY[0x1E69A9488]);
    sub_1C4F00F28();
    type metadata accessor for BehaviorContext(0);
    swift_allocObject();
    sub_1C45D689C();
    sub_1C4601D10(v38, HIDWORD(v39), v37, v27, v28, v29, v30, v31, v34, v35, v36, v37, v38, v39, v40, v41, v42, *(&v42 + 1), v43, v44, v45, *(&v45 + 1));
    v5 = v32;
  }

  sub_1C440962C(v49);
  return v5;
}

uint64_t sub_1C47F1518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = sub_1C4EFDAB8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a3, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == *MEMORY[0x1E69A9438])
  {
    sub_1C4409678((v6 + 40), *(v6 + 64));
    result = sub_1C45EA9C0(a3);
    if (v5)
    {
      return result;
    }

    sub_1C47F54D8(a1, a2, result, v24);
    a1 = v24[0];
    a2 = v24[1];
    v19 = v24[2];
    v18 = v24[3];
    v20 = v24[4];
    v21 = v25;
    goto LABEL_14;
  }

  if (v16 == *MEMORY[0x1E69A9428])
  {
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = 0;
    v20 = 0;
    v21 = 7;
LABEL_8:
    v19 = 1;
LABEL_9:
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = v19;
    *(a4 + 24) = v18;
    *(a4 + 32) = v20;
    *(a4 + 40) = v21;
    return result;
  }

  if (v16 == *MEMORY[0x1E69A9470])
  {
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = 0;
    v20 = 0;
    v21 = 9;
    goto LABEL_8;
  }

  if (v16 != *MEMORY[0x1E69A9458])
  {
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000034, 0x80000001C4F9B840);
    sub_1C47F6E3C(&qword_1EDDEFFB0, MEMORY[0x1E69A9478], MEMORY[0x1E69A94A8]);
    v22 = sub_1C4F02858();
    MEMORY[0x1C6940010](v22);

    result = sub_1C4F024A8();
    __break(1u);
    return result;
  }

  sub_1C4409678((v6 + 40), *(v6 + 64));
  result = sub_1C45EA9C0(a3);
  if (!v5)
  {
    sub_1C47F5784(a1, a2, result, v26);
    a1 = v26[0];
    a2 = v26[1];
    v19 = v26[2];
    v18 = v26[3];
    v20 = v26[4];
    v21 = v27;
LABEL_14:

    goto LABEL_9;
  }

  return result;
}

void sub_1C47F185C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v22;
  a20 = v23;
  sub_1C44A1BFC(v24, v25, v26, v27, v28);
  v30 = v29;
  v76 = v29;
  v32 = v31;
  sub_1C47F7A10(v33, &a14);
  v34 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBCC4();
  v40 = v39 - v38;
  v75 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v74 = v41;
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBCC4();
  sub_1C4423B7C();
  v77 = v32[1];
  *&v78 = *v32;
  sub_1C442E860(v30 + 80, v82);
  v70 = sub_1C4409678(v82, v82[3]);
  v81 = v20;
  sub_1C4EF9C88();
  sub_1C456902C(&qword_1EC0BAEA0, &qword_1C4F17BA0);
  v43 = sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90);
  sub_1C443FC6C();
  sub_1C447CBCC();
  v46 = v45 & ~v44;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1C4F0D130;
  v48 = v47 + v46;
  v49 = *(v36 + 104);
  sub_1C449F420();
  v49();
  sub_1C449F420();
  v49();
  sub_1C4456294();
  if (v21)
  {
    v50 = *(v36 + 8);
    v50(v40, v34);
    v51 = sub_1C4460814();
    v52(v51);
    v50(v48, v34);
    *(v47 + 16) = 0;
    swift_setDeallocating();
    sub_1C49E167C();
  }

  else
  {
    v53 = v82[9];
    v54 = v83;
    v55 = v48 + *(v43 + 48);
    v56 = sub_1C4425754();
    v57(v56);
    *v55 = v79;
    *(v55 + 16) = v78;
    *(v55 + 32) = v53;
    *(v55 + 40) = v54;
    sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
    sub_1C440E2C4();
    sub_1C47F6E3C(v58, v59, MEMORY[0x1E69A9488]);
    sub_1C4F00F28();
    v60 = sub_1C4403FC0();
    v61 = type metadata accessor for BehaviorContext(v60);
    sub_1C44099C4(v61);
    sub_1C44A14A0();
    sub_1C4460A54(v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, v81);
    sub_1C44A3BD8();
  }

  sub_1C440962C(v82);
  sub_1C44109F8();
}

double sub_1C47F1B90(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C4EF9CD8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = *a2;
  sub_1C4409678((a3 + 80), *(a3 + 104));
  sub_1C4EF9C88();
  LOWORD(v20) = 0;
  type metadata accessor for BehaviorContext(0);
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(a4, a5, a1, v12, v13, v14, v15, v16, v11, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, vars0, vars8);
  v18 = v17;

  return v18;
}

void sub_1C47F1CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8BB0, &unk_1C4F0DFE0);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v7 = sub_1C4EF9CD8();
  v9 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a1 + 16);
  if (v38)
  {
    v11 = MEMORY[0x1E69E7CC0];
    v37 = *(a2 + 16);
    if (v37)
    {
      v12 = 0;
      v15 = *(v8 + 16);
      v13 = v8 + 16;
      v14 = v15;
      v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
      v36 = a1 + v16;
      v43 = *(v13 + 56);
      v44 = v13;
      v35 = a2 + v16;
      v34 = (v13 - 8);
      v17 = MEMORY[0x1E69E7CC0];
      while (v12 != v38)
      {
        v40 = v17;
        v14(v45, v36 + v43 * v12, v7, v9);
        v39 = v12 + 1;
        v46 = v11;
        v18 = v37;
        sub_1C459E350();
        v19 = v46;
        v20 = v35;
        do
        {
          v21 = *(v42 + 48);
          (v14)(v6, v45, v7);
          (v14)(&v6[v21], v20, v7);
          v46 = v19;
          v22 = *(v19 + 16);
          if (v22 >= *(v19 + 24) >> 1)
          {
            sub_1C459E350();
            v19 = v46;
          }

          *(v19 + 16) = v22 + 1;
          sub_1C44CDA30(v6, v19 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v22, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
          v20 += v43;
          --v18;
        }

        while (v18);
        (*v34)(v45, v7);
        v23 = *(v19 + 16);
        v24 = *(v40 + 16);
        if (__OFADD__(v24, v23))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          return;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v24 + v23 > *(v40 + 24) >> 1)
        {
          sub_1C458D674();
          v26 = v27;
        }

        if (*(v19 + 16))
        {
          if ((*(v26 + 24) >> 1) - *(v26 + 16) < v23)
          {
            goto LABEL_23;
          }

          v28 = v26;
          swift_arrayInitWithCopy();

          v17 = v28;
          v11 = MEMORY[0x1E69E7CC0];
          v12 = v39;
          if (v23)
          {
            v29 = *(v17 + 16);
            v30 = __OFADD__(v29, v23);
            v31 = v29 + v23;
            if (v30)
            {
              goto LABEL_24;
            }

            *(v17 + 16) = v31;
          }
        }

        else
        {
          v32 = v26;

          v17 = v32;
          v11 = MEMORY[0x1E69E7CC0];
          v12 = v39;
          if (v23)
          {
            __break(1u);
            return;
          }
        }
      }
    }
  }
}

uint64_t sub_1C47F2060(uint64_t a1, uint64_t a2)
{
  v33 = sub_1C4EF9CD8();
  v5 = MEMORY[0x1EEE9AC00](v33);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8 && *(a2 + 16))
  {
    v31 = *(v4 + 16);
    v32 = v4 + 16;
    v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v29 = *(v4 + 72);
    v30 = (v4 + 8);
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = v33;
      v12 = v31(v7, v9, v33, v5);
      MEMORY[0x1EEE9AC00](v12);
      *(&v29 - 2) = v7;
      v13 = a2;
      sub_1C45DA868(sub_1C47F6EC0, (&v29 - 4), a2, v14, v15, v16, v17, v18, v29, v30);
      v20 = v19;
      result = (*v30)(v7, v11);
      v22 = *(v20 + 16);
      v23 = *(v10 + 16);
      if (__OFADD__(v23, v22))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v23 + v22 > *(v10 + 24) >> 1)
      {
        sub_1C458D638();
        v10 = v24;
      }

      if (*(v20 + 16))
      {
        v25 = (*(v10 + 24) >> 1) - *(v10 + 16);
        result = sub_1C456902C(&qword_1EC0B8BC0, &unk_1C4F0DFF0);
        if (v25 < v22)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v22)
        {
          v26 = *(v10 + 16);
          v27 = __OFADD__(v26, v22);
          v28 = v26 + v22;
          if (v27)
          {
            goto LABEL_21;
          }

          *(v10 + 16) = v28;
        }
      }

      else
      {

        if (v22)
        {
          goto LABEL_19;
        }
      }

      v9 += v29;
      --v8;
      a2 = v13;
      if (!v8)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C47F2310(uint64_t a1, uint64_t a2)
{
  v33 = sub_1C4EF9CD8();
  v5 = MEMORY[0x1EEE9AC00](v33);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8 && *(a2 + 16))
  {
    v31 = *(v4 + 16);
    v32 = v4 + 16;
    v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v29 = *(v4 + 72);
    v30 = (v4 + 8);
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = v33;
      v12 = v31(v7, v9, v33, v5);
      MEMORY[0x1EEE9AC00](v12);
      *(&v29 - 2) = v7;
      v13 = a2;
      sub_1C45DA728(sub_1C47F6EA0, (&v29 - 4), a2, v14, v15, v16, v17, v18, v29, v30);
      v20 = v19;
      result = (*v30)(v7, v11);
      v22 = *(v20 + 16);
      v23 = *(v10 + 16);
      if (__OFADD__(v23, v22))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v23 + v22 > *(v10 + 24) >> 1)
      {
        sub_1C458D5FC();
        v10 = v24;
      }

      if (*(v20 + 16))
      {
        v25 = (*(v10 + 24) >> 1) - *(v10 + 16);
        result = sub_1C456902C(&qword_1EC0B8BB8, &unk_1C4F10E70);
        if (v25 < v22)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v22)
        {
          v26 = *(v10 + 16);
          v27 = __OFADD__(v26, v22);
          v28 = v26 + v22;
          if (v27)
          {
            goto LABEL_21;
          }

          *(v10 + 16) = v28;
        }
      }

      else
      {

        if (v22)
        {
          goto LABEL_19;
        }
      }

      v9 += v29;
      --v8;
      a2 = v13;
      if (!v8)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1C47F25C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v22;
  a20 = v23;
  HIDWORD(v78) = v24;
  v77 = v25;
  v75 = v26;
  v28 = v27;
  sub_1C47F7A10(v29, &a17);
  sub_1C4EF9EB8();
  sub_1C43FCDF8();
  v88 = v31;
  v89 = v30;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD2D8();
  v87 = v32;
  sub_1C43FBE44();
  sub_1C4EF9ED8();
  sub_1C43FCDF8();
  v85 = v34;
  v86 = v33;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD2D8();
  v84 = v35;
  sub_1C43FBE44();
  sub_1C4EF9E88();
  sub_1C43FCDF8();
  v92 = v36;
  v93 = v37;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD2D8();
  v82 = v38;
  v39 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v39);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBC74();
  v83 = v41;
  sub_1C43FBE44();
  v81 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v74 = v42;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD230();
  v73 = v45;
  sub_1C43FBE44();
  v46 = sub_1C4EF9F68();
  sub_1C43FCDF8();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBCC4();
  v52 = v51 - v50;
  sub_1C4EF9F88();
  sub_1C43FCDF8();
  v90 = v54;
  v91 = v53;
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBCC4();
  sub_1C4423B7C();
  sub_1C456902C(&qword_1EC0B9320, &unk_1C4F0EE50);
  sub_1C4EF9F58();
  v55 = *(v48 + 104);
  v55(v52, *MEMORY[0x1E6969A58], v46);
  v80 = sub_1C4EF9F78();
  v56 = *(v48 + 8);
  v56(v52, v46);
  v55(v52, *MEMORY[0x1E6969A88], v46);
  v79 = sub_1C4EF9F78();
  v56(v52, v46);
  (*(v93 + 104))(v82, *MEMORY[0x1E69698D0], v92);
  (*(v85 + 104))(v84, *MEMORY[0x1E69699C8], v86);
  (*(v88 + 104))(v87, *MEMORY[0x1E6969998], v89);
  sub_1C4EF9EF8();
  (*(v88 + 8))(v87, v89);
  (*(v85 + 8))(v84, v86);
  (*(v93 + 8))(v82, v92);
  v57 = v81;
  if (sub_1C44157D4(v83, 1, v81) == 1)
  {
    sub_1C4420C3C(v83, &unk_1EC0B84E0, qword_1C4F0D2D0);
    type metadata accessor for FeaturizedBehaviorsGroupError(0);
    sub_1C442A3EC();
    v60 = sub_1C47F6E3C(v58, v59, &unk_1C4F2F688);
    sub_1C43FFC70(v60);
    v62 = v61;
    v63 = sub_1C456902C(&qword_1EC0BD678, &qword_1C4F2F378);
    sub_1C440BAA8(v62, 1, 2, v63);
    swift_willThrow();
  }

  else
  {
    v64 = v74;
    v65 = v73;
    (*(v74 + 32))(v73, v83, v81);
    sub_1C4409678((v75 + 80), *(v75 + 104));
    (*(v74 + 16))(v72, v73, v81);
    v66 = type metadata accessor for BehaviorContext(0);
    sub_1C44099C4(v66);
    sub_1C45D689C();
    sub_1C4601D10(v77, HIDWORD(v78), v76, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v21, v79, v28, v80, v81, v82, v83);

    (*(v64 + 8))(v65, v57);
  }

  (*(v90 + 8))(v20, v91);
  sub_1C440431C();
  sub_1C44109F8();
}

void sub_1C47F2C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v22;
  a20 = v23;
  sub_1C44A1BFC(v24, v25, v26, v27, v28);
  v30 = v29;
  v79 = v29;
  v32 = v31;
  sub_1C47F7A10(v33, &a14);
  v34 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBCC4();
  v40 = v39 - v38;
  v41 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBCC4();
  sub_1C4423B7C();
  v45 = (v32 + *(sub_1C456902C(&qword_1EC0B9370, &unk_1C4F0EEB0) + 52));
  v80 = v45[1];
  *&v81 = *v45;
  sub_1C442E860(v30 + 80, v85);
  v73 = sub_1C4409678(v85, v85[3]);
  v77 = v43;
  v84 = v20;
  v78 = v41;
  (*(v43 + 16))(v20, v32, v41);
  sub_1C456902C(&qword_1EC0BAEA0, &qword_1C4F17BA0);
  v46 = sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90);
  sub_1C443FC6C();
  sub_1C447CBCC();
  v49 = v48 & ~v47;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1C4F0D130;
  v51 = v50 + v49;
  v52 = *(v36 + 104);
  sub_1C449F420();
  v52();
  sub_1C449F420();
  v52();
  sub_1C4456294();
  if (v21)
  {
    v53 = *(v36 + 8);
    v53(v40, v34);
    v54 = sub_1C4460814();
    v55(v54);
    v53(v51, v34);
    *(v50 + 16) = 0;
    swift_setDeallocating();
    sub_1C49E167C();
  }

  else
  {
    v56 = v85[9];
    v57 = v86;
    v58 = v51 + *(v46 + 48);
    v59 = sub_1C4425754();
    v60(v59);
    *v58 = v82;
    *(v58 + 16) = v81;
    *(v58 + 32) = v56;
    *(v58 + 40) = v57;
    sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
    sub_1C440E2C4();
    sub_1C47F6E3C(v61, v62, MEMORY[0x1E69A9488]);
    sub_1C4F00F28();
    v63 = sub_1C4403FC0();
    v64 = type metadata accessor for BehaviorContext(v63);
    sub_1C44099C4(v64);
    sub_1C44A14A0();
    sub_1C4460A54(v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84);
    sub_1C44A3BD8();
  }

  sub_1C440962C(v85);
  sub_1C44109F8();
}

void sub_1C47F31EC()
{
  sub_1C43FE628();
  v3 = v2;
  HIDWORD(v54) = v4;
  v52 = v5;
  v53 = v6;
  v8 = v7;
  v10 = v9;
  v11 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBFDC();
  v51 = v18;
  sub_1C43FD1D0();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v56 = v16;
  v57 = &v46 - v21;
  v22 = *(v16 + 16);
  v58 = v23;
  v22(v20);
  v24 = (v10 + *(sub_1C456902C(&qword_1EC0B9370, &unk_1C4F0EEB0) + 52));
  v25 = *v24;
  v26 = v24[1];
  v27 = *(v13 + 104);
  HIDWORD(v50) = *v3;
  v49 = v27;
  (v27)(v1);
  sub_1C47F1518(v25, v26, v1, v61);
  if (v0)
  {
    (*(v13 + 8))(v1, v11);
  }

  else
  {
    v28 = v62;
    HIDWORD(v48) = v63;
    v29 = *(v13 + 8);
    v47 = v61[0];
    v46 = v61[1];
    v29(v1, v11);
    v55 = sub_1C4409678((v8 + 80), *(v8 + 104));
    (v22)(v51, v57, v58);
    v59 = 0;
    v60 = 256;
    sub_1C456902C(&qword_1EC0BAEA0, &qword_1C4F17BA0);
    v30 = sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90) - 8;
    sub_1C447CBCC();
    v33 = v32 & ~v31;
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1C4F0D130;
    v35 = v34 + v33 + *(v30 + 56);
    v49();
    v36 = v46;
    *v35 = v47;
    *(v35 + 16) = v36;
    *(v35 + 32) = v28;
    *(v35 + 40) = BYTE4(v48);
    sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
    sub_1C440E2C4();
    sub_1C47F6E3C(v37, v38, MEMORY[0x1E69A9488]);
    sub_1C4F00F28();
    v39 = sub_1C43FBE94();
    v40 = type metadata accessor for BehaviorContext(v39);
    sub_1C44099C4(v40);
    sub_1C45D689C();
    sub_1C4601D10(v53, HIDWORD(v54), v52, v41, v42, v43, v44, v45, v46, *(&v46 + 1), v47, *(&v47 + 1), v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
  }

  (*(v56 + 8))(v57, v58);
  sub_1C44109F8();
}

uint64_t sub_1C47F35CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v35 = a2;
  v8 = sub_1C456902C(&qword_1EC0B9358, &unk_1C4F0EE90);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_1C456902C(&qword_1EC0B9348, &qword_1C4F0EE80);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *sub_1C4409678((v4 + 40), *(v4 + 64));
  v17 = sub_1C45EA9C0(a1);
  if (!v5)
  {
    v19 = v9;
    v30 = v12;
    v31 = a3;
    v20 = v35;
    v21 = *(v35 + 16);
    if (v21)
    {
      v32 = v17;
      v37 = MEMORY[0x1E69E7CC0];
      sub_1C459E130();
      v16 = v37;
      v22 = v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v29 = *(v19 + 72);
      do
      {
        v35 = v22;
        v23 = sub_1C4460108(v22, v11, &qword_1EC0B9358, &unk_1C4F0EE90);
        MEMORY[0x1EEE9AC00](v23);
        v24 = v32;
        v25 = v33;
        *(&v29 - 4) = v31;
        *(&v29 - 3) = v25;
        *(&v29 - 2) = v11;
        v26 = sub_1C45DA5AC(sub_1C47F78F8, (&v29 - 6), v24);
        v34 = v21;
        v36 = v26;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C47E5B10(&v36);

        v27 = v36;
        sub_1C4460108(v11, v15, &qword_1EC0B9358, &unk_1C4F0EE90);
        *&v15[*(v30 + 28)] = v27;
        sub_1C4420C3C(v11, &qword_1EC0B9358, &unk_1C4F0EE90);
        v37 = v16;
        v28 = *(v16 + 16);
        if (v28 >= *(v16 + 24) >> 1)
        {
          sub_1C459E130();
          v16 = v37;
        }

        *(v16 + 16) = v28 + 1;
        sub_1C44CDA30(v15, v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v28, &qword_1EC0B9348, &qword_1C4F0EE80);
        v22 = v35 + v29;
        v21 = v34 - 1;
      }

      while (v34 != 1);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v16;
}

uint64_t sub_1C47F397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v35 = a2;
  v8 = sub_1C456902C(&qword_1EC0B9370, &unk_1C4F0EEB0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_1C456902C(&qword_1EC0B9338, &qword_1C4F0EE70);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *sub_1C4409678((v4 + 40), *(v4 + 64));
  v17 = sub_1C45EA9C0(a1);
  if (!v5)
  {
    v19 = v9;
    v30 = v12;
    v31 = a3;
    v20 = v35;
    v21 = *(v35 + 16);
    if (v21)
    {
      v32 = v17;
      v37 = MEMORY[0x1E69E7CC0];
      sub_1C459E210();
      v16 = v37;
      v22 = v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v29 = *(v19 + 72);
      do
      {
        v35 = v22;
        v23 = sub_1C4460108(v22, v11, &qword_1EC0B9370, &unk_1C4F0EEB0);
        MEMORY[0x1EEE9AC00](v23);
        v24 = v32;
        v25 = v33;
        *(&v29 - 4) = v31;
        *(&v29 - 3) = v25;
        *(&v29 - 2) = v11;
        v26 = sub_1C45DA5AC(sub_1C47F78F8, (&v29 - 6), v24);
        v34 = v21;
        v36 = v26;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C47E5B10(&v36);

        v27 = v36;
        sub_1C4460108(v11, v15, &qword_1EC0B9370, &unk_1C4F0EEB0);
        *&v15[*(v30 + 28)] = v27;
        sub_1C4420C3C(v11, &qword_1EC0B9370, &unk_1C4F0EEB0);
        v37 = v16;
        v28 = *(v16 + 16);
        if (v28 >= *(v16 + 24) >> 1)
        {
          sub_1C459E210();
          v16 = v37;
        }

        *(v16 + 16) = v28 + 1;
        sub_1C44CDA30(v15, v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v28, &qword_1EC0B9338, &qword_1C4F0EE70);
        v22 = v35 + v29;
        v21 = v34 - 1;
      }

      while (v34 != 1);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v16;
}

uint64_t sub_1C47F3D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v35 = a2;
  v8 = sub_1C456902C(&qword_1EC0B9320, &unk_1C4F0EE50);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_1C456902C(&qword_1EC0B9310, &qword_1C4F0EE40);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *sub_1C4409678((v4 + 40), *(v4 + 64));
  v17 = sub_1C45EA9C0(a1);
  if (!v5)
  {
    v19 = v9;
    v30 = v12;
    v31 = a3;
    v20 = v35;
    v21 = *(v35 + 16);
    if (v21)
    {
      v32 = v17;
      v37 = MEMORY[0x1E69E7CC0];
      sub_1C459E2D0();
      v16 = v37;
      v22 = v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v29 = *(v19 + 72);
      do
      {
        v35 = v22;
        v23 = sub_1C4460108(v22, v11, &qword_1EC0B9320, &unk_1C4F0EE50);
        MEMORY[0x1EEE9AC00](v23);
        v24 = v32;
        v25 = v33;
        *(&v29 - 4) = v31;
        *(&v29 - 3) = v25;
        *(&v29 - 2) = v11;
        v26 = sub_1C45DA5AC(sub_1C47F78F8, (&v29 - 6), v24);
        v34 = v21;
        v36 = v26;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C47E5B10(&v36);

        v27 = v36;
        sub_1C4460108(v11, v15, &qword_1EC0B9320, &unk_1C4F0EE50);
        *&v15[*(v30 + 28)] = v27;
        sub_1C4420C3C(v11, &qword_1EC0B9320, &unk_1C4F0EE50);
        v37 = v16;
        v28 = *(v16 + 16);
        if (v28 >= *(v16 + 24) >> 1)
        {
          sub_1C459E2D0();
          v16 = v37;
        }

        *(v16 + 16) = v28 + 1;
        sub_1C44CDA30(v15, v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v28, &qword_1EC0B9310, &qword_1C4F0EE40);
        v22 = v35 + v29;
        v21 = v34 - 1;
      }

      while (v34 != 1);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v16;
}

uint64_t sub_1C47F40DC(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, uint64_t *), uint64_t a4)
{
  v10 = *sub_1C4409678((v4 + 40), *(v4 + 64));
  v11 = sub_1C45EA9C0(a1);
  if (!v5)
  {
    v13 = v11;
    v14 = *(a2 + 16);
    if (v14)
    {
      v26 = MEMORY[0x1E69E7CC0];
      sub_1C459E390(0, v14, 0);
      v10 = v26;
      v15 = (a2 + 32);
      v23 = v13;
      v24 = a3;
      do
      {
        v16 = *v15++;
        sub_1C47F4F9C(v16, v13, a3, v25);
        v17 = a4;
        v19 = v25[0];
        v18 = v25[1];
        v26 = v10;
        v21 = *(v10 + 16);
        v20 = *(v10 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1C459E390((v20 > 1), v21 + 1, 1);
          v10 = v26;
        }

        *(v10 + 16) = v21 + 1;
        v22 = v10 + 16 * v21;
        *(v22 + 32) = v19;
        *(v22 + 40) = v18;
        --v14;
        a4 = v17;
        v13 = v23;
        a3 = v24;
      }

      while (v14);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v10;
}

uint64_t sub_1C47F424C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *sub_1C4409678((v4 + 40), *(v4 + 64));
  v11 = sub_1C45EA9C0(a1);
  if (!v5)
  {
    v13 = v11;
    v14 = *(a2 + 16);
    if (v14)
    {
      v25 = a3;
      v29 = MEMORY[0x1E69E7CC0];
      sub_1C459E3B0(0, v14, 0);
      v10 = v29;
      v16 = (a2 + 40);
      v24 = a4;
      do
      {
        v26 = v14;
        v17 = *(v16 - 1);
        v18 = *v16;
        v28[0] = v17;
        v28[1] = v18;
        MEMORY[0x1EEE9AC00](v15);
        v23[2] = v25;
        v23[3] = a4;
        v23[4] = v28;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v27 = sub_1C45DA5AC(sub_1C47F6E84, v23, v13);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C47E5B10(&v27);

        v19 = v27;
        v29 = v10;
        v21 = *(v10 + 16);
        v20 = *(v10 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1C459E3B0(v20 > 1, v21 + 1, 1);
          v10 = v29;
        }

        *(v10 + 16) = v21 + 1;
        v22 = (v10 + 24 * v21);
        v22[4] = v17;
        v22[5] = v18;
        v22[6] = v19;
        v16 += 2;
        v14 = v26 - 1;
        a4 = v24;
      }

      while (v26 != 1);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v10;
}

uint64_t sub_1C47F4464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v29 = a2;
  v7 = sub_1C4EF9D38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0B92E0, &qword_1C4F0EE10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = *sub_1C4409678((v4 + 40), *(v4 + 64));
  v16 = sub_1C45EA9C0(a1);
  if (!v5)
  {
    v30 = v12;
    v31 = v11;
    v36 = v7;
    v18 = v29;
    v19 = *(v29 + 16);
    if (v19)
    {
      v32 = v16;
      v38 = MEMORY[0x1E69E7CC0];
      sub_1C459E3F0();
      v15 = v38;
      v20 = v8 + 16;
      v35 = *(v8 + 16);
      v21 = v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v28 = *(v8 + 72);
      v29 = v8 + 8;
      do
      {
        v22 = v20;
        v23 = v35(v10, v21, v36);
        MEMORY[0x1EEE9AC00](v23);
        v24 = v34;
        *(&v28 - 4) = v33;
        *(&v28 - 3) = v24;
        *(&v28 - 2) = v10;
        v37 = sub_1C45DA5AC(sub_1C47F78F8, (&v28 - 6), v32);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C47E5B10(&v37);

        v26 = v36;
        v25 = v37;
        v35(v14, v10, v36);
        *&v14[*(v31 + 28)] = v25;
        (*v29)(v10, v26);
        v38 = v15;
        v27 = *(v15 + 16);
        if (v27 >= *(v15 + 24) >> 1)
        {
          sub_1C459E3F0();
          v15 = v38;
        }

        *(v15 + 16) = v27 + 1;
        sub_1C44CDA30(v14, v15 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27, &qword_1EC0B92E0, &qword_1C4F0EE10);
        v21 += v28;
        --v19;
        v20 = v22;
      }

      while (v19);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v15;
}

uint64_t sub_1C47F4810(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, uint64_t *), uint64_t a4)
{
  v10 = *sub_1C4409678((v4 + 40), *(v4 + 64));
  v11 = sub_1C45EA9C0(a1);
  if (!v5)
  {
    v13 = v11;
    v14 = *(a2 + 16);
    if (v14)
    {
      v26 = MEMORY[0x1E69E7CC0];
      sub_1C459E430(0, v14, 0);
      v10 = v26;
      v15 = (a2 + 32);
      v24 = v13;
      v25 = a3;
      do
      {
        v16 = *v15++;
        v17 = sub_1C47F5154(v16, v13, a3);
        v19 = v18;
        v20 = a4;
        v22 = *(v26 + 16);
        v21 = *(v26 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1C459E430((v21 > 1), v22 + 1, 1);
        }

        *(v26 + 16) = v22 + 1;
        v23 = v26 + 16 * v22;
        *(v23 + 32) = v17;
        *(v23 + 40) = v19;
        --v14;
        a4 = v20;
        v13 = v24;
        a3 = v25;
      }

      while (v14);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v10;
}

unint64_t sub_1C47F4980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *sub_1C4409678((v4 + 40), *(v4 + 64));
  v11 = sub_1C45EA9C0(a1);
  if (!v5)
  {
    v13 = *(a2 + 16);
    if (v13)
    {
      v32 = a4;
      v33 = v11;
      v31 = a3;
      v40 = MEMORY[0x1E69E7CC0];
      v14 = sub_1C459E450(0, v13, 0);
      v10 = v40;
      v15 = (a2 + 72);
      do
      {
        v34 = v13;
        v36 = v10;
        v17 = *(v15 - 4);
        v19 = *(v15 - 3);
        v18 = *(v15 - 2);
        v20 = *(v15 - 1);
        v21 = *v15;
        v38[0] = *(v15 - 5);
        v16 = v38[0];
        v38[1] = v17;
        v38[2] = v19;
        v38[3] = v18;
        v38[4] = v20;
        v39 = v21;
        MEMORY[0x1EEE9AC00](v14);
        v29[2] = v31;
        v29[3] = v32;
        v29[4] = v38;
        v35 = v22;
        sub_1C45D7F78(v16, v17, v19, v22, v20, v21);
        v37 = sub_1C45DA5AC(sub_1C47F6DD4, v29, v33);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C47E5B10(&v37);

        v10 = v36;
        v23 = v37;
        v40 = v36;
        v25 = *(v36 + 16);
        v24 = *(v36 + 24);
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          v36 = v25 + 1;
          v30 = v37;
          v14 = sub_1C459E450((v24 > 1), v25 + 1, 1);
          v26 = v36;
          v23 = v30;
          v10 = v40;
        }

        v15 += 48;
        *(v10 + 16) = v26;
        v27 = v10 + 56 * v25;
        *(v27 + 32) = v16;
        *(v27 + 40) = v17;
        v28 = v35;
        *(v27 + 48) = v19;
        *(v27 + 56) = v28;
        *(v27 + 64) = v20;
        *(v27 + 72) = v21;
        *(v27 + 80) = v23;
        v13 = v34 - 1;
      }

      while (v34 != 1);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v10;
}

uint64_t sub_1C47F4BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v29 = a2;
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0B92B0, &qword_1C4F0EDE0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = *sub_1C4409678((v4 + 40), *(v4 + 64));
  v16 = sub_1C45EA9C0(a1);
  if (!v5)
  {
    v30 = v12;
    v31 = v11;
    v36 = v7;
    v18 = v29;
    v19 = *(v29 + 16);
    if (v19)
    {
      v32 = v16;
      v38 = MEMORY[0x1E69E7CC0];
      sub_1C459E470();
      v15 = v38;
      v20 = v8 + 16;
      v35 = *(v8 + 16);
      v21 = v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v28 = *(v8 + 72);
      v29 = v8 + 8;
      do
      {
        v22 = v20;
        v23 = v35(v10, v21, v36);
        MEMORY[0x1EEE9AC00](v23);
        v24 = v34;
        *(&v28 - 4) = v33;
        *(&v28 - 3) = v24;
        *(&v28 - 2) = v10;
        v37 = sub_1C45DA5AC(sub_1C47F6DB8, (&v28 - 6), v32);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C47E5B10(&v37);

        v26 = v36;
        v25 = v37;
        v35(v14, v10, v36);
        *&v14[*(v31 + 28)] = v25;
        (*v29)(v10, v26);
        v38 = v15;
        v27 = *(v15 + 16);
        if (v27 >= *(v15 + 24) >> 1)
        {
          sub_1C459E470();
          v15 = v38;
        }

        *(v15 + 16) = v27 + 1;
        sub_1C44CDA30(v14, v15 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27, &qword_1EC0B92B0, &qword_1C4F0EDE0);
        v21 += v28;
        --v19;
        v20 = v22;
      }

      while (v19);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v15;
}

uint64_t sub_1C47F4F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(__int128 *, uint64_t *)@<X2>, void *a4@<X8>)
{
  v5 = a4;
  v6 = *(a2 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1C459E170(0, v6, 0);
    v7 = v27;
    v9 = (a2 + 64);
    while (1)
    {
      v10 = *(v9 - 1);
      v28 = *(v9 - 2);
      v29[0] = v10;
      *(v29 + 9) = *(v9 - 7);
      v23 = *(v9 - 1);
      v24 = v28;
      v11 = *v9;
      v12 = *(v9 + 8);
      v26 = a1;
      sub_1C45A2358(&v28, v25);
      a3(&v28, &v26);
      if (v4)
      {
        break;
      }

      v14 = v13;
      v27 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C459E170(v15 > 1, v16 + 1, 1);
        v7 = v27;
      }

      *(v7 + 16) = v16 + 1;
      v17 = v7 + 56 * v16;
      *(v17 + 32) = v24;
      *(v17 + 48) = v23;
      *(v17 + 64) = v11;
      *(v17 + 72) = v12;
      *(v17 + 80) = v14;
      v9 += 6;
      if (!--v6)
      {
        v5 = a4;
        goto LABEL_9;
      }
    }

    sub_1C45EC75C(&v28);
  }

  else
  {
LABEL_9:
    v25[0] = v7;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C47E5B10(v25);
    if (v4)
    {

      __break(1u);
    }

    else
    {

      v19 = v25[0];
      *v5 = a1;
      v5[1] = v19;
    }
  }

  return result;
}

uint64_t sub_1C47F5154(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, uint64_t *))
{
  v4 = *(a2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1C459E170(0, v4, 0);
    v5 = v23;
    v7 = (a2 + 64);
    while (1)
    {
      v8 = *(v7 - 1);
      v24 = *(v7 - 2);
      v25[0] = v8;
      *(v25 + 9) = *(v7 - 7);
      v19 = *(v7 - 1);
      v20 = v24;
      v9 = *v7;
      v10 = *(v7 + 8);
      v22 = a1;
      sub_1C45A2358(&v24, v21);
      a3(&v24, &v22);
      if (v3)
      {
        break;
      }

      v12 = v11;
      v23 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C459E170(v13 > 1, v14 + 1, 1);
        v5 = v23;
      }

      *(v5 + 16) = v14 + 1;
      v15 = v5 + 56 * v14;
      *(v15 + 32) = v20;
      *(v15 + 48) = v19;
      *(v15 + 64) = v9;
      *(v15 + 72) = v10;
      *(v15 + 80) = v12;
      v7 += 6;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    sub_1C45EC75C(&v24);

    return a1;
  }

LABEL_7:
  v21[0] = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C47E5B10(v21);
  if (!v3)
  {

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47F52FC@<X0>(__int128 *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v13 = a1[1];
  v14 = *a1;
  v8 = *(a1 + 4);
  v9 = *(a1 + 40);
  v15[0] = a3;
  v15[1] = a4;
  result = a2();
  if (!v5)
  {
    v12 = v11;
    result = sub_1C45A2358(a1, v15);
    *a5 = v14;
    *(a5 + 16) = v13;
    *(a5 + 32) = v8;
    *(a5 + 40) = v9;
    *(a5 + 48) = v12;
  }

  return result;
}

uint64_t sub_1C47F5398@<X0>(__int128 *a1@<X0>, uint64_t (*a2)(void)@<X1>, __int128 *a3@<X3>, uint64_t a4@<X8>)
{
  v13 = a1[1];
  v14 = *a1;
  v7 = *(a1 + 4);
  v8 = *(a1 + 40);
  v9 = a3[1];
  v15 = *a3;
  v16[0] = v9;
  *(v16 + 9) = *(a3 + 25);
  result = a2();
  if (!v4)
  {
    v12 = v11;
    result = sub_1C45A2358(a1, &v15);
    *a4 = v14;
    *(a4 + 16) = v13;
    *(a4 + 32) = v7;
    *(a4 + 40) = v8;
    *(a4 + 48) = v12;
  }

  return result;
}

uint64_t sub_1C47F5440@<X0>(__int128 *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v11 = a1[1];
  v12 = *a1;
  v6 = *(a1 + 4);
  v7 = *(a1 + 40);
  result = a2();
  if (!v3)
  {
    v10 = v9;
    result = sub_1C45A2358(a1, v13);
    *a3 = v12;
    *(a3 + 16) = v11;
    *(a3 + 32) = v6;
    *(a3 + 40) = v7;
    *(a3 + 48) = v10;
  }

  return result;
}

uint64_t sub_1C47F54D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = (a3 + 64);
  if (!v7)
  {
LABEL_9:
    type metadata accessor for FeaturizedBehaviorsGroupError(0);
    sub_1C47F6E3C(&qword_1EC0BD670, type metadata accessor for FeaturizedBehaviorsGroupError, &unk_1C4F2F688);
    swift_allocError();
    v19 = v18;
    v20 = sub_1C456902C(&qword_1EC0BD678, &qword_1C4F2F378);
    v21 = *(v20 + 48);
    *v19 = a1;
    *(v19 + 1) = a2;
    v22 = *MEMORY[0x1E69A9438];
    v23 = sub_1C4EFDAB8();
    (*(*(v23 - 8) + 104))(&v19[v21], v22, v23);
    sub_1C440BAA8(v19, 0, 2, v20);
    swift_willThrow();
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  while (1)
  {
    v9 = *(v8 - 1);
    v28 = *(v8 - 2);
    *v29 = v9;
    *&v29[9] = *(v8 - 7);
    v10 = *(v8 + 8);
    v11 = *v8;
    type metadata accessor for FocusModeBehaviorHistogram(0);
    v12 = *(v8 - 1);
    v30[0] = *(v8 - 2);
    v30[1] = v12;
    v31 = v11;
    v32 = v10;
    sub_1C45A2358(&v28, v27);
    v13 = sub_1C4617E2C(v30, 0);
    if (!v14)
    {
      goto LABEL_8;
    }

    if (v13 == a1 && v14 == a2)
    {
      break;
    }

    v16 = sub_1C4F02938();

    if (v16)
    {
      goto LABEL_11;
    }

LABEL_8:
    sub_1C45EC75C(&v28);
    v8 += 6;
    if (!--v7)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  if (v29[24] == 4)
  {
    v24 = *(&v28 + 1);
    v25 = *v29 | 0x100000000;
    *a4 = v28;
    *(a4 + 8) = v24;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 16) = v25;
    *(a4 + 40) = 4;
  }

  else
  {
    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000003FLL, 0x80000001C4F9B880);
    v26 = sub_1C45D58F8();
    MEMORY[0x1C6940010](v26);

    result = sub_1C4F024A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C47F5784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = a3 + 40;
  if (v7)
  {
    while (1)
    {
      v9 = *v8;
      if (*(v8 + 32) == 14 && v9 != 0)
      {
        v11 = *(v8 - 8);
        v12 = *(v8 + 8);
        if (v11 == a1 && v9 == a2)
        {
          goto LABEL_14;
        }

        if (sub_1C4F02938())
        {
          break;
        }
      }

      v8 += 48;
      if (!--v7)
      {
        goto LABEL_12;
      }
    }

    a1 = v11;
    a2 = v9;
LABEL_14:
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 16) = v12 | 0x100000000;
    *(a4 + 40) = 14;
  }

  else
  {
LABEL_12:
    type metadata accessor for FeaturizedBehaviorsGroupError(0);
    sub_1C47F6E3C(&qword_1EC0BD670, type metadata accessor for FeaturizedBehaviorsGroupError, &unk_1C4F2F688);
    swift_allocError();
    v15 = v14;
    v16 = sub_1C456902C(&qword_1EC0BD678, &qword_1C4F2F378);
    v17 = *(v16 + 48);
    *v15 = a1;
    *(v15 + 1) = a2;
    v18 = *MEMORY[0x1E69A9458];
    v19 = sub_1C4EFDAB8();
    (*(*(v19 - 8) + 104))(&v15[v17], v18, v19);
    sub_1C440BAA8(v15, 0, 2, v16);
    swift_willThrow();
  }

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C47F5940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(sub_1C456902C(&qword_1EC0B8BB8, &unk_1C4F10E70) + 48);
  v7 = sub_1C4EF9CD8();
  result = (*(*(v7 - 8) + 16))(a3, a2, v7);
  *(a3 + v6) = a1;
  return result;
}

uint64_t sub_1C47F59D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (a4 + *(sub_1C456902C(&qword_1EC0B8BC0, &unk_1C4F0DFF0) + 48));
  v9 = sub_1C4EF9CD8();
  (*(*(v9 - 8) + 16))(a4, a3, v9);
  *v8 = a1;
  v8[1] = a2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C47F5A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1C4F010B8())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for HashableTuple(0, v12);
    v10 = sub_1C4F010B8();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1C47F5B64(void *a1)
{
  sub_1C4F02AF8();
  sub_1C47F5B14(v3, a1);
  return sub_1C4F02B68();
}

uint64_t sub_1C47F5BB4(uint64_t a1, void *a2)
{
  sub_1C4F02AF8();
  sub_1C47F5B14(v4, a2);
  return sub_1C4F02B68();
}

uint64_t sub_1C47F5C08(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C47F5C60(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C47F5CB8()
{
  v1 = sub_1C4403FC0();
  v2(v1);
  sub_1C43FBCE0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C47F5F1C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

uint64_t sub_1C47F61F8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C47F638C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1C47F62EC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C47F62EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 56;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 56 * a3 + 48);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 + 48) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 88);
        v11 = *(v9 + 96);
        v12 = *(v9 + 56);
        v13 = *(v9 + 16);
        *(v9 + 56) = *v9;
        v14 = *(v9 + 72);
        *(v9 + 72) = v13;
        *(v9 + 88) = *(v9 + 32);
        *(v9 + 104) = *(v9 + 48);
        *v9 = v12;
        *(v9 + 16) = v14;
        *(v9 + 32) = v10;
        *(v9 + 40) = v11;
        *(v9 + 48) = v7;
        v9 -= 56;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 56;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C47F638C(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v91 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 56 * v9 + 48);
        v11 = 56 * v7;
        v12 = *a3 + 56 * v7;
        v13 = *(v12 + 48);
        v14 = (v12 + 160);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 7;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 56 * v6 - 56;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v11);
                v25 = *(v23 + v11 + 32);
                v26 = (v23 + v20);
                v27 = *(v24 + 40);
                v28 = *(v24 + 6);
                v29 = *v24;
                v30 = v24[1];
                v32 = v26[1];
                v31 = v26[2];
                v33 = *v26;
                *(v24 + 6) = *(v26 + 6);
                v24[1] = v32;
                v24[2] = v31;
                *v24 = v33;
                *v26 = v29;
                v26[1] = v30;
                *(v26 + 4) = v25;
                *(v26 + 40) = v27;
                *(v26 + 6) = v28;
              }

              ++v22;
              v20 -= 56;
              v11 += 56;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v34 = *a3;
            v35 = *a3 + 56 * v9 - 56;
            v36 = v7 - v9;
            do
            {
              v37 = *(v34 + 56 * v9 + 48);
              v38 = v36;
              v39 = v35;
              do
              {
                if (*(v39 + 48) >= v37)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_111;
                }

                v40 = *(v39 + 88);
                v41 = *(v39 + 96);
                v42 = *(v39 + 56);
                v43 = *(v39 + 16);
                *(v39 + 56) = *v39;
                v44 = *(v39 + 72);
                *(v39 + 72) = v43;
                *(v39 + 88) = *(v39 + 32);
                *(v39 + 104) = *(v39 + 48);
                *v39 = v42;
                *(v39 + 16) = v44;
                *(v39 + 32) = v40;
                *(v39 + 40) = v41;
                *(v39 + 48) = v37;
                v39 -= 56;
              }

              while (!__CFADD__(v38++, 1));
              ++v9;
              v35 += 56;
              --v36;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v93 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458A358();
        v8 = v89;
      }

      v46 = v8[2];
      v47 = v46 + 1;
      if (v46 >= v8[3] >> 1)
      {
        sub_1C458A358();
        v8 = v90;
      }

      v8[2] = v47;
      v48 = v8 + 4;
      v49 = &v8[2 * v46 + 4];
      *v49 = v7;
      v49[1] = v93;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v46)
      {
        while (1)
        {
          v50 = v47 - 1;
          v51 = &v48[2 * v47 - 2];
          v52 = &v8[2 * v47];
          if (v47 >= 4)
          {
            break;
          }

          if (v47 == 3)
          {
            v53 = v8[4];
            v54 = v8[5];
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_56:
            if (v56)
            {
              goto LABEL_96;
            }

            v68 = *v52;
            v67 = v52[1];
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_99;
            }

            v72 = v51[1];
            v73 = v72 - *v51;
            if (__OFSUB__(v72, *v51))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v70, v73))
            {
              goto LABEL_104;
            }

            if (v70 + v73 >= v55)
            {
              if (v55 < v73)
              {
                v50 = v47 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v47 < 2)
          {
            goto LABEL_98;
          }

          v75 = *v52;
          v74 = v52[1];
          v63 = __OFSUB__(v74, v75);
          v70 = v74 - v75;
          v71 = v63;
LABEL_71:
          if (v71)
          {
            goto LABEL_101;
          }

          v77 = *v51;
          v76 = v51[1];
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_103;
          }

          if (v78 < v70)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v50 - 1 >= v47)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v82 = &v48[2 * v50 - 2];
          v83 = *v82;
          v84 = &v48[2 * v50];
          v85 = v84[1];
          sub_1C47F6A10((*a3 + 56 * *v82), (*a3 + 56 * *v84), *a3 + 56 * v85, v94);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v85 < v83)
          {
            goto LABEL_91;
          }

          v86 = v8;
          v87 = v8[2];
          if (v50 > v87)
          {
            goto LABEL_92;
          }

          *v82 = v83;
          v82[1] = v85;
          if (v50 >= v87)
          {
            goto LABEL_93;
          }

          v47 = v87 - 1;
          memmove(&v48[2 * v50], v84 + 2, 16 * (v87 - 1 - v50));
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v8 = v86;
          v5 = 0;
          if (!v88)
          {
            goto LABEL_85;
          }
        }

        v57 = &v48[2 * v47];
        v58 = *(v57 - 8);
        v59 = *(v57 - 7);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_94;
        }

        v62 = *(v57 - 6);
        v61 = *(v57 - 5);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_95;
        }

        v64 = v52[1];
        v65 = v64 - *v52;
        if (__OFSUB__(v64, *v52))
        {
          goto LABEL_97;
        }

        v63 = __OFADD__(v55, v65);
        v66 = v55 + v65;
        if (v63)
        {
          goto LABEL_100;
        }

        if (v66 >= v60)
        {
          v80 = *v51;
          v79 = v51[1];
          v63 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v63)
          {
            goto LABEL_105;
          }

          if (v55 < v81)
          {
            v50 = v47 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v93;
      a4 = v91;
      if (v93 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C47F68D8(&v96, *a1, a3);
LABEL_89:
}

uint64_t sub_1C47F68D8(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C46194F4();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C47F6A10((*a3 + 56 * *v4), (*a3 + 56 * *v9), *a3 + 56 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C47F6A10(char *a1, double *a2, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 < v9)
  {
    sub_1C459C934(a1, (a2 - a1) / 56, a4);
    v10 = &v4[7 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[6] >= v6[6])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 7;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 56;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 7;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    v16 = *(v12 + 2);
    *(v7 + 6) = v12[6];
    *(v7 + 1) = v15;
    *(v7 + 2) = v16;
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1C459C934(a2, (a3 - a2) / 56, a4);
  v10 = &v4[7 * v9];
LABEL_15:
  for (v5 -= 56; v10 > v4 && v6 > v7; v5 -= 56)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v21 = v6 - 7;
      v13 = v5 + 56 == v6;
      v6 -= 7;
      if (!v13)
      {
        v22 = *v21;
        v23 = *(v21 + 1);
        v24 = *(v21 + 2);
        *(v5 + 48) = v21[6];
        *(v5 + 16) = v23;
        *(v5 + 32) = v24;
        *v5 = v22;
        v6 = v21;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 56))
    {
      v18 = *(v10 - 7);
      v19 = *(v10 - 5);
      v20 = *(v10 - 3);
      *(v5 + 48) = *(v10 - 1);
      *(v5 + 16) = v19;
      *(v5 + 32) = v20;
      *v5 = v18;
    }

    v10 -= 7;
  }

LABEL_28:
  v25 = (v10 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[7 * v25])
  {
    memmove(v6, v4, 56 * v25);
  }

  return 1;
}

double sub_1C47F6C04@<D0>(__int128 *a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v7 = a1[1];
  v13 = *a1;
  v14[0] = v7;
  *(v14 + 9) = *(a1 + 25);
  sub_1C47F5440(&v13, a2, v10);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    v9 = v10[1];
    *a4 = v10[0];
    *(a4 + 16) = v9;
    result = *&v11;
    *(a4 + 32) = v11;
    *(a4 + 48) = v12;
  }

  return result;
}

double sub_1C47F6CB4@<D0>(__int128 *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = a1[1];
  v14 = *a1;
  v15[0] = v8;
  *(v15 + 9) = *(a1 + 25);
  sub_1C47F52FC(&v14, a2, *a3, a3[1], v11);
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    v10 = v11[1];
    *a5 = v11[0];
    *(a5 + 16) = v10;
    result = *&v12;
    *(a5 + 32) = v12;
    *(a5 + 48) = v13;
  }

  return result;
}

double sub_1C47F6D30@<D0>(__int128 *a1@<X0>, uint64_t (*a2)(void)@<X1>, __int128 *a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = a1[1];
  v15 = *a1;
  v16[0] = v8;
  *(v16 + 9) = *(a1 + 25);
  v9 = a3[1];
  v17 = *a3;
  v18[0] = v9;
  *(v18 + 9) = *(a3 + 25);
  sub_1C47F5398(&v15, a2, &v17, v12);
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    v11 = v12[1];
    *a5 = v12[0];
    *(a5 + 16) = v11;
    result = *&v13;
    *(a5 + 32) = v13;
    *(a5 + 48) = v14;
  }

  return result;
}

uint64_t type metadata accessor for FeaturizedBehaviorsGroupError(uint64_t a1)
{
  result = qword_1EC0BD680;
  if (!qword_1EC0BD680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C47F6E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C47F6F08(uint64_t a1)
{
  sub_1C47F6F60(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}