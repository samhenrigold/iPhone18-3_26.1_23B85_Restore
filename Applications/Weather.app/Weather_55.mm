unint64_t sub_1005F23C4(uint64_t a1)
{
  result = sub_1001097BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1005F240C()
{
  result = qword_100CCA040;
  if (!qword_100CCA040)
  {
    result = swift_getWitnessTable(byte_100A68454, &type metadata for DisableAnimationsWhilePageControlExperiencingInteractionModifier.Phase, v0, v1);
    atomic_store(result, &qword_100CCA040);
  }

  return result;
}

uint64_t sub_1005F24B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  __chkstk_darwin(a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - v13;
  v15(v12);
  sub_1000833D8(v10, a4, a6);
  v16 = *(v8 + 8);
  v16(v10, a4);
  sub_1000833D8(v14, a4, a6);
  return (v16)(v14, a4);
}

unint64_t sub_1005F2610()
{
  result = qword_100CCA0B0;
  if (!qword_100CCA0B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA0A0, &qword_100A68820);
    v4[0] = sub_1000EA178(&unk_100CCA0B8);
    v4[1] = sub_1005F26CC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA0B0);
  }

  return result;
}

unint64_t sub_1005F26CC()
{
  result = qword_100CCA0C0;
  if (!qword_100CCA0C0)
  {
    result = swift_getWitnessTable(asc_100A68EE8, &type metadata for OccupiesFullSceneWidthModifier, v0, v1);
    atomic_store(result, &qword_100CCA0C0);
  }

  return result;
}

unint64_t sub_1005F2720()
{
  result = qword_100CCA0C8;
  if (!qword_100CCA0C8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA0A8, &qword_100A68880);
    v4[0] = sub_1005F2610();
    v4[1] = sub_10010EC48();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA0C8);
  }

  return result;
}

uint64_t sub_1005F27D8()
{
  sub_1000C87D0();
  type metadata accessor for RegularContent(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v4 + 8))(v3);
  type metadata accessor for LocationViewerViewModel(0);
  sub_1000717B4();

  sub_1000AF5B0();
  type metadata accessor for ConditionPickerMenuViewModel(0);
  v5 = sub_100016410();
  if (!sub_100020918(v5))
  {
    sub_100003B20();
    v6 = sub_1000437BC();
    v7(v6);
  }

  sub_10003263C();

  sub_100088420();

  sub_10003BEA0();
  v8 = type metadata accessor for ContentStatusBanner(0);
  if (!sub_100003EB0(v8))
  {
    sub_1000D4274();
    if (v9)
    {
    }

    v10 = sub_100172198();
    if (!sub_100021564(v10))
    {
      sub_100019B68();
      v11 = sub_1000749D4();
      v12(v11);
    }
  }

  swift_unknownObjectRelease();
  sub_100006F14((v3 + v0[9]));
  sub_100006F14((v3 + v0[10]));
  v13 = v0[13];
  type metadata accessor for Text.Measurements();
  sub_100003D98();
  (*(v14 + 8))(v3 + v13);

  v15 = v3 + v0[16];
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(type metadata accessor for DisplayMetrics(0) + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v17 + 8))(v15 + v16);
  }

  else
  {
  }

  sub_100037B34(v0[17]);
  sub_100109A3C(*(v3 + v0[18]), *(v3 + v0[18] + 8), *(v3 + v0[18] + 9));
  sub_1000116BC();
  sub_100020DD4();

  return swift_deallocObject();
}

uint64_t sub_1005F2A84()
{
  v0 = sub_100017580();
  v1 = type metadata accessor for RegularContent(v0);
  sub_100003810(v1);
  v2 = sub_10004E784();

  return sub_1005E49B4(v4, v2, v3);
}

unint64_t sub_1005F2AE8()
{
  result = qword_100CCA118;
  if (!qword_100CCA118)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA110, &qword_100A688C0);
    v4[0] = sub_1005F2B74();
    v4[1] = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA118);
  }

  return result;
}

unint64_t sub_1005F2B74()
{
  result = qword_100CCA120;
  if (!qword_100CCA120)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA128, &qword_100A688C8);
    v4[0] = &protocol witness table for Color;
    v4[1] = sub_10010EC48();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA120);
  }

  return result;
}

unint64_t sub_1005F2C00()
{
  result = qword_100CCA178;
  if (!qword_100CCA178)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA160, &qword_100A68938);
    v4[0] = sub_1000EA178(&unk_100CCA0B8);
    v4[1] = sub_1005F6F6C(&unk_100CE1820);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA178);
  }

  return result;
}

unint64_t sub_1005F2CE8()
{
  result = qword_100CCA180;
  if (!qword_100CCA180)
  {
    result = swift_getWitnessTable(a9b, &type metadata for ClipTabViewPredicate, v0, v1);
    atomic_store(result, &qword_100CCA180);
  }

  return result;
}

unint64_t sub_1005F2D3C()
{
  result = qword_100CCA188;
  if (!qword_100CCA188)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA170, &qword_100A68948);
    v4[0] = sub_1005F2C00();
    v4[1] = sub_1005F6F6C(&qword_100CCA190);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA188);
  }

  return result;
}

uint64_t sub_1005F2E40()
{
  v1 = *(type metadata accessor for DisableAnimationsWhilePageControlExperiencingInteractionModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for Location.Identifier();
  sub_100003D98();
  (*(v3 + 8))(v0 + v2);

  sub_100030448();

  return swift_deallocObject();
}

uint64_t sub_1005F2F44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = sub_100017580();
  v5 = v4(v3);
  sub_100003810(v5);
  v6 = sub_10004E784();

  return a3(v6);
}

uint64_t sub_1005F3010(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v4 = a3(0);
  sub_100003810(v4);
  sub_10001164C();
  v5 = sub_1000053B8();

  return a4(v5);
}

unint64_t sub_1005F309C()
{
  result = qword_100CCA2E8;
  if (!qword_100CCA2E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA2C8, &qword_100A68A50);
    v4[0] = sub_1005F3154();
    v4[1] = sub_1005F6F6C(&unk_100CCA328);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA2E8);
  }

  return result;
}

unint64_t sub_1005F3154()
{
  result = qword_100CCA2F0;
  if (!qword_100CCA2F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA2C0, &qword_100A68A48);
    v4[0] = sub_10010B3B0();
    v4[1] = &protocol witness table for _SafeAreaIgnoringLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA2F0);
  }

  return result;
}

unint64_t sub_1005F31E0()
{
  result = qword_100CCA300;
  if (!qword_100CCA300)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA2B0, &qword_100A68A38);
    v4[0] = sub_10010B468();
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA300);
  }

  return result;
}

uint64_t sub_1005F326C()
{
  sub_10000C778();
  type metadata accessor for LocationViewBannerContainer(0);
  sub_100003A0C();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = type metadata accessor for ContentStatusBanner(0);
  if (!sub_100017854(v4))
  {
    sub_1000D4274();
    if (v6)
    {
    }

    v7 = *(v5 + 24);
    v8 = type metadata accessor for Date();
    if (!sub_1000865BC(v8))
    {
      sub_100019B68();
      (*(v9 + 8))(v4 + v7, v2);
    }
  }

  sub_100006F14((v4 + v0[5]));
  v10 = v4 + v0[6];
  sub_100109A48(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));
  v11 = v4 + v0[7];
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(type metadata accessor for DisplayMetrics(0) + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v13 + 8))(v11 + v12);
  }

  else
  {
  }

  v14 = v0[8];
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_1000865BC(v15))
    {
      sub_100019B68();
      (*(v16 + 8))(v4 + v14, v11);
    }
  }

  else
  {
  }

  v17 = v4 + v0[9];
  sub_1000D4274();
  if (v6)
  {
  }

  v18 = *(v5 + 24);
  v19 = type metadata accessor for Date();
  if (!sub_100024D10(v17 + v18, 1, v19))
  {
    sub_100003B20();
    (*(v20 + 8))(v17 + v18, v19);
  }

  sub_10022C350(&qword_100CC9F58, &qword_100A682A8);

  sub_10000536C();

  return swift_deallocObject();
}

void sub_1005F35D8(uint64_t a1)
{
  type metadata accessor for LocationViewerViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ContentStatusBannerPresentationMetrics(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for WireframeLevelInterestManager();
      if (v3 <= 0x3F)
      {
        sub_100081B54(319, &qword_100CC99B8, &protocol descriptor for LocationViewerInteractorType, 1);
        if (v4 <= 0x3F)
        {
          sub_1000E9E3C(319, &qword_100CC99A0, type metadata accessor for LocationViewerBindingWrapper, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_1005F63C8(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_1005F06A4(319, &qword_100CE0E10, &qword_100CA6028, &qword_100A40610, &type metadata accessor for Environment);
              if (v7 <= 0x3F)
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

uint64_t sub_1005F3780(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v34 = *(a3 + 16);
  v3 = *(v34 - 8);
  v32 = *(a3 + 24);
  v4 = *(v32 - 8);
  v36 = *(v3 + 84);
  v33 = *(v4 + 84);
  if (v33 <= v36)
  {
    v5 = *(v3 + 84);
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v6 + 80);
  v8 = v7 | 7;
  v39 = *(v6 + 84);
  v40 = *(v6 + 64);
  if (v5 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = v5;
  }

  v37 = v9;
  v10 = *(type metadata accessor for DynamicTypeSize() - 8);
  v11 = *(v10 + 80);
  v12 = ((v11 + 19) & ~v11) + *(v10 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v35 = v12;
  v13 = *(type metadata accessor for LayoutDirection() - 8);
  if (*(v13 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v13 + 64);
  }

  v15 = *(v3 + 80);
  v16 = *(v3 + 64);
  v17 = *(v4 + 80);
  v18 = v40;
  if (!v39)
  {
    v18 = v40 + 1;
  }

  v19 = v18 - (((-17 - v7) | v8) + ((-25 - v7) | v7)) - 2;
  if (v19 <= 8)
  {
    v19 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v4 + 64) + v8;
  if (a2 <= v37)
  {
    goto LABEL_35;
  }

  v21 = *(v13 + 80) & 0xF8 | 7;
  v22 = v14 + ((v21 + ((v35 + ((v19 + (v11 | 7) + ((v20 + ((v16 + v17 + ((v15 + 16) & ~v15)) & ~v17)) & ~v8) + 1) & ~(v11 | 7)) + 128) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v21) + 1;
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_19;
  }

  v26 = ((a2 - v37 + ~(-1 << v23)) >> v23) + 1;
  if (HIWORD(v26))
  {
    v24 = *(a1 + v22);
    if (v24)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v26 <= 0xFF)
    {
      if (v26 < 2)
      {
        goto LABEL_35;
      }

LABEL_19:
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_35;
      }

LABEL_27:
      v27 = (v24 - 1) << v23;
      if (v22 > 3)
      {
        v27 = 0;
      }

      if (v22)
      {
        if (v22 > 3)
        {
          LODWORD(v22) = 4;
        }

        switch(v22)
        {
          case 2:
            LODWORD(v22) = *a1;
            break;
          case 3:
            LODWORD(v22) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v22) = *a1;
            break;
          default:
            LODWORD(v22) = *a1;
            break;
        }
      }

      return v37 + (v22 | v27) + 1;
    }

    v24 = *(a1 + v22);
    if (*(a1 + v22))
    {
      goto LABEL_27;
    }
  }

LABEL_35:
  v28 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v15 + 8) & ~v15;
  v29 = v36;
  if (v36 == v37)
  {
    v30 = v34;
  }

  else
  {
    v28 = (v28 + v16 + v17) & ~v17;
    v29 = v33;
    if (v33 != v37)
    {
      v31 = *(((v20 + v28) & ~v8) + v19);
      if (v31 >= 2)
      {
        return (v31 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v30 = v32;
  }

  return sub_100024D10(v28, v29, v30);
}

void sub_1005F3BC8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v47 = *(a4 + 16);
  v52 = *(v47 - 8);
  v45 = *(a4 + 24);
  v4 = *(v45 - 8);
  v48 = *(v52 + 84);
  v46 = *(v4 + 84);
  if (v46 <= v48)
  {
    v5 = *(v52 + 84);
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v6 + 80);
  v8 = v7 | 7;
  v49 = *(v6 + 84);
  v51 = *(v6 + 64);
  if (v5 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = v5;
  }

  v10 = *(type metadata accessor for DynamicTypeSize() - 8);
  v11 = *(v10 + 80);
  v12 = ((v11 + 19) & ~v11) + *(v10 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v50 = v12;
  v13 = type metadata accessor for LayoutDirection();
  v14 = v9;
  v15 = *(v13 - 8);
  if (*(v15 + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v15 + 64);
  }

  v17 = *(v52 + 80);
  v18 = *(v52 + 64);
  v19 = *(v4 + 80);
  v20 = *(v4 + 64) + v8;
  if (v49)
  {
    v21 = v51;
  }

  else
  {
    v21 = v51 + 1;
  }

  v22 = v21 - (((-25 - v7) | v7) + ((-17 - v7) | v8)) - 2;
  if (v22 <= 8)
  {
    v22 = 8;
  }

  v23 = *(v15 + 80) & 0xF8 | 7;
  v24 = v16 + ((v23 + ((v50 + ((v22 + (v11 | 7) + ((v20 + ((v18 + v19 + ((v17 + 16) & ~v17)) & ~v19)) & ~v8) + 1) & ~(v11 | 7)) + 128) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v23) + 1;
  v25 = 8 * v24;
  v26 = a3 - v9;
  if (a3 <= v9)
  {
    v29 = 0;
    v27 = a1;
    v28 = a2;
  }

  else
  {
    v27 = a1;
    v28 = a2;
    if (v24 <= 3)
    {
      v32 = ((v26 + ~(-1 << v25)) >> v25) + 1;
      if (HIWORD(v32))
      {
        v29 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v29 = v33;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v29 = 1;
    }
  }

  if (v14 < v28)
  {
    v30 = ~v14 + v28;
    if (v24 < 4)
    {
      v31 = (v30 >> v25) + 1;
      if (v24)
      {
        v34 = v30 & ~(-1 << v25);
        bzero(v27, v24);
        if (v24 == 3)
        {
          *v27 = v34;
          v27[2] = BYTE2(v34);
        }

        else if (v24 == 2)
        {
          *v27 = v34;
        }

        else
        {
          *v27 = v30;
        }
      }
    }

    else
    {
      bzero(v27, v24);
      *v27 = v30;
      v31 = 1;
    }

    switch(v29)
    {
      case 1:
        v27[v24] = v31;
        break;
      case 2:
        *&v27[v24] = v31;
        break;
      case 3:
        goto LABEL_71;
      case 4:
        *&v27[v24] = v31;
        break;
      default:
        return;
    }

    return;
  }

  switch(v29)
  {
    case 1:
      v27[v24] = 0;
      if (v28)
      {
        goto LABEL_40;
      }

      return;
    case 2:
      *&v27[v24] = 0;
      if (v28)
      {
        goto LABEL_40;
      }

      return;
    case 3:
LABEL_71:
      __break(1u);
      return;
    case 4:
      *&v27[v24] = 0;
      goto LABEL_39;
    default:
LABEL_39:
      if (!v28)
      {
        return;
      }

LABEL_40:
      v35 = (((v27 + 15) & 0xFFFFFFFFFFFFFFF8) + v17 + 8) & ~v17;
      v36 = v48;
      if (v48 == v14)
      {
        v37 = v28;
        v38 = v47;
LABEL_44:

        sub_10001B350(v35, v37, v36, v38);
        return;
      }

      v35 = (v35 + v18 + v19) & ~v19;
      v36 = v46;
      if (v46 == v14)
      {
        v37 = v28;
        v38 = v45;
        goto LABEL_44;
      }

      v39 = ((v20 + v35) & ~(v7 | 7));
      if (v28 > 0xFE)
      {
        v40 = (v22 + 1);
        v41 = -1 << (8 * (v22 + 1));
        if (v40 <= 3)
        {
          v42 = ~v41;
        }

        else
        {
          v42 = -1;
        }

        if (v40)
        {
          v43 = v42 & (v28 - 255);
          if (v40 <= 3)
          {
            v44 = v40;
          }

          else
          {
            v44 = 4;
          }

          bzero(v39, v40);
          switch(v44)
          {
            case 2:
              *v39 = v43;
              break;
            case 3:
              *v39 = v43;
              v39[2] = BYTE2(v43);
              break;
            case 4:
              *v39 = v43;
              break;
            default:
              *v39 = v43;
              break;
          }
        }
      }

      else
      {
        v39[v22] = -v28;
      }

      return;
  }
}

uint64_t sub_1005F4148(uint64_t a1)
{
  result = type metadata accessor for LocationViewerViewModel(319);
  if (v2 <= 0x3F)
  {
    result = sub_100081B54(319, &qword_100CC99B8, &protocol descriptor for LocationViewerInteractorType, 1);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1005F4220()
{
  result = qword_100CCA7F0;
  if (!qword_100CCA7F0)
  {
    v4[14] = v0;
    v4[15] = v1;
    v3 = sub_10022E824(&qword_100CCA0D8, &qword_100A68888);
    v4[2] = sub_10022E824(&qword_100CCA0A0, &qword_100A68820);
    v4[3] = sub_10022E824(&unk_100CE0EB0, &qword_100A310D0);
    v4[4] = sub_10022E824(&qword_100CCA0A8, &qword_100A68880);
    v4[5] = sub_1005F2610();
    v4[6] = swift_getOpaqueTypeConformance2();
    v4[7] = sub_1005F2720();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA7F0);
  }

  return result;
}

unint64_t sub_1005F4370()
{
  result = qword_100CCA808;
  if (!qword_100CCA808)
  {
    v6[16] = v0;
    v6[17] = v1;
    v3 = sub_10022E824(&qword_100CCA270, &qword_100A689F0);
    v4 = sub_10022E824(&qword_100CCA230, &qword_100A689D8);
    v5 = type metadata accessor for Location.Identifier();
    sub_10022E824(&qword_100CCA250, &qword_100A689E0);
    sub_10022E824(&qword_100CCA228, &qword_100A689D0);
    sub_1005F6F6C(&unk_100CCA258);
    sub_1005F6F6C(&qword_100CCA260);
    v6[2] = v4;
    v6[3] = v5;
    v6[4] = swift_getOpaqueTypeConformance2();
    v6[5] = sub_1000EA178(&qword_100CA3A48);
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = sub_1005F6F6C(&unk_100CCA810);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(result, &qword_100CCA808);
  }

  return result;
}

unint64_t sub_1005F4584()
{
  result = qword_100CCA838;
  if (!qword_100CCA838)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CCA840, qword_100A68CC0);
    v4[2] = sub_10022E824(&qword_100CCA288, &qword_100A68A18);
    v4[3] = sub_1005F6F6C(&unk_100CCA2A0);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1000EA178(&qword_100CE1750);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA838);
  }

  return result;
}

unint64_t sub_1005F4788()
{
  result = qword_100CCA860;
  if (!qword_100CCA860)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA848, &qword_100A68F88);
    v4[0] = sub_1005F4840();
    v4[1] = sub_1005F6F6C(&unk_100CCA880);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA860);
  }

  return result;
}

unint64_t sub_1005F4840()
{
  result = qword_100CCA868;
  if (!qword_100CCA868)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA858, &qword_100A68FC0);
    v4[0] = sub_1005F6F6C(&unk_100CCA870);
    v4[1] = sub_1005F6F6C(&qword_100CB0558);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA868);
  }

  return result;
}

void sub_1005F4924()
{
  v1 = *(type metadata accessor for CommonTabView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  sub_1005E861C(v2, v3);
}

uint64_t sub_1005F49A4()
{
  v0 = sub_10000C76C();
  v1 = type metadata accessor for CommonTabView(v0);
  sub_100003810(v1);
  sub_1000138B8();

  return sub_1005E5748(v2, v3);
}

uint64_t sub_1005F4A00()
{
  sub_1000C87D0();
  type metadata accessor for CommonTabView(0);
  sub_100003DDC();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v3 + 8))(v0 + v2);
  type metadata accessor for LocationViewerViewModel(0);
  sub_1000717B4();

  sub_100087188();
  type metadata accessor for ConditionPickerMenuViewModel(0);
  v4 = sub_100016410();
  if (!sub_100020918(v4))
  {
    sub_100003B20();
    v5 = sub_1000437BC();
    v6(v5);
  }

  sub_10003263C();

  sub_1000132CC();

  sub_10003BEA0();
  v7 = type metadata accessor for ContentStatusBanner(0);
  if (!sub_100003EB0(v7))
  {
    sub_1000D4274();
    if (v8)
    {
    }

    v9 = sub_100172198();
    if (!sub_100021564(v9))
    {
      sub_100019B68();
      v10 = sub_1000749D4();
      v11(v10);
    }
  }

  sub_1001200B0();
  sub_100087DE0();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_10000CB9C(v12))
    {
      sub_100003D20();
      v13 = sub_100044E18();
      v14(v13);
    }
  }

  else
  {
  }

  sub_1000116BC();
  sub_100020DD4();

  return swift_deallocObject();
}

_BYTE *sub_1005F4C18()
{
  v0 = sub_100017580();
  v1 = type metadata accessor for CommonTabView(v0);
  sub_100003810(v1);
  v2 = sub_100037B1C();

  return sub_1005E5798(v2, v3, v4, v5);
}

unint64_t sub_1005F4C84()
{
  result = qword_100CCA8B0;
  if (!qword_100CCA8B0)
  {
    result = swift_getWitnessTable(byte_100A69648, &type metadata for LocationViewWantsHorizontalPagingPredicate, v0, v1);
    atomic_store(result, &qword_100CCA8B0);
  }

  return result;
}

unint64_t sub_1005F4CE0()
{
  result = qword_100CCA910;
  if (!qword_100CCA910)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CCA918, &qword_100A69030);
    v4[2] = sub_10022E824(&qword_100CCA920, &qword_100A69038);
    v4[3] = sub_1005F4DD8();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1000EA178(&qword_100CE1750);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA910);
  }

  return result;
}

unint64_t sub_1005F4DD8()
{
  result = qword_100CCA928;
  if (!qword_100CCA928)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA920, &qword_100A69038);
    v4[0] = sub_1005F4E90();
    v4[1] = sub_1005F6F6C(&unk_100CCA9C0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA928);
  }

  return result;
}

unint64_t sub_1005F4E90()
{
  result = qword_100CCA930;
  if (!qword_100CCA930)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA938, &qword_100A69040);
    v4[0] = sub_1005F4F1C();
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA930);
  }

  return result;
}

unint64_t sub_1005F4F1C()
{
  result = qword_100CCA940;
  if (!qword_100CCA940)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA948, &qword_100A69048);
    v4[0] = sub_1005F4FD4();
    v4[1] = sub_1005F6F6C(&unk_100CCA9B0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA940);
  }

  return result;
}

unint64_t sub_1005F4FD4()
{
  result = qword_100CCA950;
  if (!qword_100CCA950)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA958, &qword_100A69050);
    v4[0] = sub_1005F5060();
    v4[1] = sub_1005F52B4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA950);
  }

  return result;
}

unint64_t sub_1005F5060()
{
  result = qword_100CCA960;
  if (!qword_100CCA960)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA968, &qword_100A69058);
    v4[0] = sub_1005F5118();
    v4[1] = sub_1005F6F6C(&unk_100CE1690);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA960);
  }

  return result;
}

unint64_t sub_1005F5118()
{
  result = qword_100CCA970;
  if (!qword_100CCA970)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA978, &qword_100A69060);
    v4[0] = sub_1005F51A4();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA970);
  }

  return result;
}

unint64_t sub_1005F51A4()
{
  result = qword_100CCA980;
  if (!qword_100CCA980)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = sub_10022E824(&qword_100CCA988, &qword_100A69068);
    v4[2] = sub_10022E824(&qword_100CCA990, &unk_100A69070);
    v4[3] = &type metadata for BottomBarButtonStyle;
    v4[4] = sub_1005F6F6C(&unk_100CCA998);
    v4[5] = sub_10010E464();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA980);
  }

  return result;
}

unint64_t sub_1005F52B4()
{
  result = qword_100CCA9A8;
  if (!qword_100CCA9A8)
  {
    result = swift_getWitnessTable(byte_100A63A64, &type metadata for AppliesSafeAreaInsetPaddingModifier, v0, v1);
    atomic_store(result, &qword_100CCA9A8);
  }

  return result;
}

unint64_t sub_1005F5384()
{
  result = qword_100CCAA78;
  if (!qword_100CCAA78)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAA68, &qword_100A69200);
    v4[0] = sub_1005F543C();
    v4[1] = sub_1005F6F6C(&unk_100CE1820);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAA78);
  }

  return result;
}

unint64_t sub_1005F543C()
{
  result = qword_100CCAA80;
  if (!qword_100CCAA80)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAA88, &qword_100A69210);
    v4[0] = sub_1005F5524(&unk_100CCAA90);
    v4[1] = sub_1000EA178(&unk_100CCAB30);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAA80);
  }

  return result;
}

unint64_t sub_1005F5524(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v5 = v4;
    v6 = sub_100003A24(0, v3);
    v8 = sub_10022E824(v6, v7);
    v9[0] = v5();
    v9[1] = sub_1000EA178(&qword_100CE1750);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v9);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1005F55D0()
{
  result = qword_100CCAAA0;
  if (!qword_100CCAAA0)
  {
    v4[18] = v0;
    v4[19] = v1;
    v3 = sub_10022E824(&qword_100CCAAA8, &qword_100A69220);
    v4[2] = sub_10022E824(&qword_100CCAAB0, &qword_100A69228);
    v4[3] = sub_10022E824(&unk_100CE0EB0, &qword_100A310D0);
    v4[4] = sub_10022E824(&qword_100CCAAB8, &qword_100A69230);
    v4[5] = sub_10022E824(&qword_100CCAAC0, &qword_100A69238);
    v4[6] = sub_1005F574C();
    v4[7] = swift_getOpaqueTypeConformance2();
    v4[8] = sub_1005F5A00();
    v4[9] = sub_1005F5B18();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAAA0);
  }

  return result;
}

unint64_t sub_1005F574C()
{
  result = qword_100CCAAC8;
  if (!qword_100CCAAC8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAAB0, &qword_100A69228);
    v4[0] = sub_1005F57D8();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAAC8);
  }

  return result;
}

unint64_t sub_1005F57D8()
{
  result = qword_100CCAAD0;
  if (!qword_100CCAAD0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAAD8, &qword_100A69240);
    v4[0] = sub_1005F5864();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAAD0);
  }

  return result;
}

unint64_t sub_1005F5864()
{
  result = qword_100CCAAE0;
  if (!qword_100CCAAE0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAAE8, &qword_100A69248);
    v4[0] = sub_1005F591C();
    v4[1] = sub_1005F6F6C(&qword_100CB3460);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAAE0);
  }

  return result;
}

unint64_t sub_1005F591C()
{
  result = qword_100CCAAF0;
  if (!qword_100CCAAF0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAAF8, &qword_100A69250);
    v4[0] = sub_1005F6F6C(&unk_100CCAB00);
    v4[1] = sub_1005F6F6C(&qword_100CA4620);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAAF0);
  }

  return result;
}

unint64_t sub_1005F5A00()
{
  result = qword_100CCAB10;
  if (!qword_100CCAB10)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAAB8, &qword_100A69230);
    v4[0] = sub_1005F5A8C();
    v4[1] = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAB10);
  }

  return result;
}

unint64_t sub_1005F5A8C()
{
  result = qword_100CCAB18;
  if (!qword_100CCAB18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAB20, &qword_100A69260);
    v4[0] = sub_1005F5B18();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAB18);
  }

  return result;
}

unint64_t sub_1005F5B18()
{
  result = qword_100CCAB28;
  if (!qword_100CCAB28)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAAC0, &qword_100A69238);
    v4[0] = sub_1005F574C();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAB28);
  }

  return result;
}

uint64_t sub_1005F5BC4(double a1)
{
  v4 = sub_10000C76C();
  v5 = type metadata accessor for PinnedMapView(v4);
  sub_100003810(v5);
  sub_10001164C();

  return sub_1005EC7A0(v2 + v6, v1, a1);
}

uint64_t sub_1005F5C4C()
{
  type metadata accessor for PinnedMapView(0);
  sub_100003A0C();
  v3 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  sub_100006F14(v3);
  v4 = v0[6];
  type metadata accessor for Location.Identifier();
  sub_100003D98();
  (*(v5 + 8))(&v3[v4]);
  v6 = &v3[v0[8]];
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(type metadata accessor for DisplayMetrics(0) + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v8 + 8))(&v6[v7]);
  }

  else
  {
  }

  v9 = sub_100071D70(v0[9]);
  sub_1000C8EBC(v9, v10, v11, v12, v13, v14, v15);
  sub_100037B34(v0[10]);
  sub_100037B34(v0[11]);

  return swift_deallocObject();
}

uint64_t sub_1005F5E78(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  sub_100003810(v3);
  sub_10001164C();

  return a2(v2 + v4);
}

uint64_t sub_1005F5EF4()
{
  v0 = sub_10000C76C();
  v1 = type metadata accessor for DebugButtonGroup(v0);
  sub_100003810(v1);
  sub_1000138B8();

  return sub_1005E1BCC(v2, v3);
}

uint64_t sub_1005F5F50()
{
  sub_1000C87D0();
  type metadata accessor for DebugButtonGroup(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v4 + 8))(v1 + v3);
  type metadata accessor for LocationViewerViewModel(0);
  sub_1000717B4();

  sub_1000AF5B0();
  type metadata accessor for ConditionPickerMenuViewModel(0);
  v5 = sub_100016410();
  if (!sub_100020918(v5))
  {
    sub_100003B20();
    v6 = sub_1000437BC();
    v7(v6);
  }

  sub_10003263C();

  sub_100088420();

  sub_100006F14((v1 + v3 + *(v0 + 20)));
  sub_1000116BC();
  sub_100020DD4();

  return swift_deallocObject();
}

uint64_t sub_1005F609C()
{
  v0 = sub_100017580();
  v1 = type metadata accessor for DebugButtonGroup(v0);
  sub_100003810(v1);
  v2 = sub_100037B1C();

  return sub_1005E1C28(v2, v3, v4, v5);
}

unint64_t sub_1005F60F8()
{
  result = qword_100CCABD0;
  if (!qword_100CCABD0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCABB8, &qword_100A69378);
    v4[0] = sub_1000F1C44();
    v4[1] = &protocol witness table for _OpacityEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCABD0);
  }

  return result;
}

uint64_t sub_1005F61AC(uint64_t a1)
{
  result = type metadata accessor for LocationModel();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1005F6278(uint64_t a1)
{
  sub_1000E9E3C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1005F63C8(319, &qword_100CA3C88, &type metadata for SceneMetrics, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1005F63C8(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1005F63C8(319, &qword_100CB24B8, &type metadata for WeatherMapPresentationStyle, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1005F63C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1005F6418()
{
  result = qword_100CCADD0;
  if (!qword_100CCADD0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAA40, &qword_100A691E0);
    v4[0] = sub_1005F6F6C(&unk_100CCADD8);
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCADD0);
  }

  return result;
}

unint64_t sub_1005F64D0()
{
  result = qword_100CCADE0;
  if (!qword_100CCADE0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCADE8, &qword_100A694D8);
    v4[0] = &protocol witness table for EmptyView;
    v4[1] = sub_1005F5384();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCADE0);
  }

  return result;
}

unint64_t sub_1005F655C()
{
  result = qword_100CCADF0;
  if (!qword_100CCADF0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAB68, &qword_100A692E8);
    v4[0] = sub_1005F65E8();
    v4[1] = &protocol witness table for _OpacityEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCADF0);
  }

  return result;
}

unint64_t sub_1005F65E8()
{
  result = qword_100CCADF8;
  if (!qword_100CCADF8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC9B00, &qword_100A67DD0);
    v4[0] = sub_1000EA178(&qword_100CC91B8);
    v4[1] = sub_1000EA178(&unk_100CCAE00);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCADF8);
  }

  return result;
}

unint64_t sub_1005F66D4()
{
  result = qword_100CCAE18;
  if (!qword_100CCAE18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCABF8, &qword_100A69398);
    v4[0] = sub_1005F5524(&unk_100CCAE20);
    v4[1] = &protocol witness table for _OffsetEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAE18);
  }

  return result;
}

uint64_t sub_1005F6854(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1(0);
  sub_100003810(v3);
  sub_10001164C();
  return a2();
}

unint64_t sub_1005F68C0()
{
  result = qword_100CCAE40;
  if (!qword_100CCAE40)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAE38, &qword_100A69690);
    v4[0] = sub_1005F694C();
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAE40);
  }

  return result;
}

unint64_t sub_1005F694C()
{
  result = qword_100CCAE48;
  if (!qword_100CCAE48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAE50, &qword_100A69698);
    v4[0] = sub_1000EA178(&qword_100CABDE8);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAE48);
  }

  return result;
}

void sub_1005F6A08()
{
  v0 = sub_100017580();
  v1 = type metadata accessor for ComputePinnedMapSizeViewModifier(v0);
  sub_100003810(v1);
  v2 = sub_10004E784();

  sub_1005EE698(v2, v3);
}

uint64_t sub_1005F6A64()
{
  sub_10000C778();
  type metadata accessor for LocationViewPage(0);
  sub_100003A0C();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v5 + 8))(v4);
  sub_10003BEA0();
  v7 = v4 + v6;
  v8 = type metadata accessor for ContentStatusBanner(0);
  if (!sub_100003EB0(v8))
  {
    sub_1000D4274();
    if (v9)
    {
    }

    v10 = *(v2 + 24);
    v11 = type metadata accessor for Date();
    if (!sub_1000865BC(v11))
    {
      sub_100019B68();
      (*(v12 + 8))(v7 + v10, v2);
    }
  }

  v13 = *(v0 + 36);
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100030484(v4 + v13))
    {
      sub_100003B20();
      (*(v15 + 8))(v4 + v13, v14);
    }
  }

  else
  {
  }

  sub_100037B34(*(v0 + 40));

  sub_10000536C();

  return swift_deallocObject();
}

unint64_t sub_1005F6C7C()
{
  result = qword_100CCAEC0;
  if (!qword_100CCAEC0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAE68, &qword_100A696D8);
    v4[0] = sub_1005F6F6C(&unk_100CCAEC8);
    v4[1] = sub_1005F6F6C(&unk_100CCAED0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAEC0);
  }

  return result;
}

unint64_t sub_1005F6D60()
{
  result = qword_100CCAEE0;
  if (!qword_100CCAEE0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAEE8, &qword_100A69750);
    v4[0] = sub_1005F6E18();
    v4[1] = sub_1005F6F6C(&qword_100CE0FF0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAEE0);
  }

  return result;
}

unint64_t sub_1005F6E18()
{
  result = qword_100CCAEF0;
  if (!qword_100CCAEF0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCAEF8, &unk_100A69758);
    v4[0] = sub_1005F6EA4();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCAEF0);
  }

  return result;
}

unint64_t sub_1005F6EA4()
{
  result = qword_100CCAF00;
  if (!qword_100CCAF00)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle, &type metadata for Rectangle, v0, v1);
    atomic_store(result, &qword_100CCAF00);
  }

  return result;
}

unint64_t sub_1005F6EF8(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v5 = v4;
    v6 = sub_100003A24(0, v3);
    v8 = sub_10022E824(v6, v7);
    v9 = v5();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v8, &v9);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1005F6F6C(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v5 = v4;
    v6 = sub_100003A24(0, v3);
    v8 = sub_10022E824(v6, v7);
    result = swift_getWitnessTable(v5, v8);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1005F6FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v79 = a3;
  v4 = type metadata accessor for PrecipitationTotalPlatterViewModel.SectionModel();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v74 = v12;
  v75 = v11;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v72 = v14 - v13;
  v15 = type metadata accessor for PrecipitationTotalPlatterViewModel();
  sub_1000037C4();
  v71 = v16;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = type metadata accessor for DetailCondition();
  sub_1000037C4();
  v77 = v22;
  __chkstk_darwin(v23);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v66 - v27;
  v29 = type metadata accessor for ConditionDetailInput.Input(0);
  v78 = a1;
  sub_1001A5104();
  if (v30)
  {

    goto LABEL_3;
  }

  v67 = v25;
  v68 = v15;
  v70 = v20;
  v34 = v77;
  (*(v77 + 16))(v28, v78 + *(v29 + 32), v21);
  v69 = (*(v34 + 88))(v28, v21);
  v35 = enum case for DetailCondition.conditions(_:);
  v36 = v28;
  v37 = *(v34 + 8);
  v37(v36, v21);
  if (v69 != v35)
  {
    v38 = v67;
    (*(v34 + 104))(v67, enum case for DetailCondition.precipitationTotal(_:), v21);
    v39 = static DetailCondition.== infix(_:_:)();
    v37(v38, v21);
    if ((v39 & 1) == 0)
    {
LABEL_3:
      v31 = type metadata accessor for ConditionDetailPlatterViewModel(0);
      v32 = v79;
      v33 = 1;
      return sub_10001B350(v32, v33, 1, v31);
    }
  }

  v40 = v73[5];
  v77 = v73[6];
  v73 = sub_1000161C0(v73 + 2, v40);
  v41 = ConditionUnits.precipitationTotal.getter();
  v42 = v72;
  Location.timeZone.getter();
  dispatch thunk of PrecipitationTotalPlatterViewModelFactoryType.makeModel(currentWeather:dayWeather:unit:timeZone:)();

  (*(v74 + 8))(v42, v75);
  v43 = *(PrecipitationTotalPlatterViewModel.sections.getter() + 16);

  result = PrecipitationTotalPlatterViewModel.sections.getter();
  v45 = result;
  v46 = 0;
  v47 = *(result + 16);
  while (1)
  {
    if (v47 == v46)
    {

      if (v43 <= 1)
      {
        v49 = [objc_opt_self() mainBundle];
        v65 = 0x8000000100AD7400;
        v50 = 0xD000000000000027;
        v51 = 0x8000000100AD73B0;
        v55 = 0x8000000100AD73E0;
        v52 = 0xD000000000000073;
        v53.super.isa = v49;
        v54 = 0xD000000000000013;
      }

      else
      {
LABEL_12:
        v49 = [objc_opt_self() mainBundle];
        v65 = 0x8000000100AD7360;
        v50 = 0xD000000000000014;
        v51 = 0x8000000100AD7340;
        v52 = 0xD000000000000043;
        v53.super.isa = v49;
        v54 = 0;
        v55 = 0xE000000000000000;
      }

      v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v50, 0, v53, *&v54, *&v52);
      v57 = v79;
      v58 = v68;
      v60 = v70;
      v59 = v71;

      v61 = type metadata accessor for ConditionDetailPlatterViewModel(0);
      v62 = v61[6];
      v63 = type metadata accessor for WeatherDescription();
      sub_10001B350(v57 + v62, 1, 1, v63);
      (*(v59 + 32))(v57 + v61[7], v60, v58);
      v64 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v57 + v61[8], 1, 1, v64);
      *v57 = xmmword_100A3F980;
      *(v57 + 16) = 2;
      *(v57 + 24) = v56;
      *(v57 + v61[9]) = 0;
      *(v57 + v61[10]) = 0;
      v32 = v57;
      v33 = 0;
      v31 = v61;
      return sub_10001B350(v32, v33, 1, v31);
    }

    if (v46 >= *(v45 + 16))
    {
      break;
    }

    (*(v6 + 16))(v10, v45 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v46++, v4);
    v48 = *(PrecipitationTotalPlatterViewModel.SectionModel.rows.getter() + 16);

    result = (*(v6 + 8))(v10, v4);
    if (v48 > 1)
    {

      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005F760C()
{
  sub_100006F14((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1005F7690(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x61746144656D6974 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1005F7720(void *a1)
{
  v2 = sub_10022C350(&qword_100CCB088, &qword_100A69900);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_1005F7BA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for WeatherConditionBackgroundTimeData(0);
  sub_1005F7BFC(&qword_100CCB090, byte_100A5F27C);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1005F7878@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for WeatherConditionBackgroundTimeData(0);
  __chkstk_darwin(v4);
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CCB070, &qword_100A698F8);
  sub_1000037C4();
  v17 = v7;
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_1005F7BA8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = v18;
    sub_1005F7BFC(&qword_100CCB080, byte_100A5F2A4);
    v15 = v19;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v10, v6);
    sub_1001137B0(v15, v13, type metadata accessor for WeatherConditionBackgroundTimeData);
    sub_1001137B0(v13, v14, type metadata accessor for WeatherConditionBackgroundPreprocessedDataModel);
  }

  return sub_100006F14(a1);
}

uint64_t sub_1005F7AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005F7690(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1005F7AFC(uint64_t a1)
{
  v2 = sub_1005F7BA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F7B38(uint64_t a1)
{
  v2 = sub_1005F7BA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1005F7BA8()
{
  result = qword_100CCB078;
  if (!qword_100CCB078)
  {
    result = swift_getWitnessTable(asc_100A699CC, &type metadata for WeatherConditionBackgroundPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB078);
  }

  return result;
}

uint64_t sub_1005F7BFC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for WeatherConditionBackgroundTimeData(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherConditionBackgroundPreprocessedDataModel.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1005F7CF0()
{
  result = qword_100CCB098;
  if (!qword_100CCB098)
  {
    result = swift_getWitnessTable(asc_100A699A4, &type metadata for WeatherConditionBackgroundPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB098);
  }

  return result;
}

unint64_t sub_1005F7D48()
{
  result = qword_100CCB0A0;
  if (!qword_100CCB0A0)
  {
    result = swift_getWitnessTable(byte_100A69914, &type metadata for WeatherConditionBackgroundPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB0A0);
  }

  return result;
}

unint64_t sub_1005F7DA0()
{
  result = qword_100CCB0A8;
  if (!qword_100CCB0A8)
  {
    result = swift_getWitnessTable(byte_100A6993C, &type metadata for WeatherConditionBackgroundPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB0A8);
  }

  return result;
}

uint64_t sub_1005F7DF4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1005F7E34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005F7E98(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 0x656369746F6ELL;
  }

  else
  {
    v5 = 0x616D7269666E6F63;
  }

  if (v4)
  {
    v6 = 0xEC0000006E6F6974;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (*a2)
  {
    v7 = 0x656369746F6ELL;
  }

  else
  {
    v7 = 0x616D7269666E6F63;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xEC0000006E6F6974;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 72);
  v15 = *(a2 + 72);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    v18 = *(a2 + 56);
    v19 = *(a2 + 64);

    v20 = sub_1005F8F50(v16, v17, v14, v18, v19, v15);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (*(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1005F8064@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  v4 = inited;
  *(inited + 16) = xmmword_100A3B020;
  *(inited + 32) = 0x6D496D6574737973;
  *(inited + 40) = 0xEF656D614E656761;
  v12 = *(v1 + 8);
  *(inited + 48) = v12;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x656C746974;
  *(inited + 88) = 0xE500000000000000;
  v11 = *(v1 + 24);
  *(inited + 96) = v11;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x6567617373656DLL;
  *(inited + 136) = 0xE700000000000000;
  v10 = *(v1 + 40);
  *(inited + 144) = *(v1 + 40);
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x6E6F69746361;
  *(inited + 184) = 0xE600000000000000;
  v9 = *(v1 + 72);
  v8 = *(v1 + 56);
  v14 = v9;
  v13 = v8;
  if (v9)
  {
    sub_1005F9BE8(&v13, &v15);
    v7 = &unk_100C62070;
    sub_1005F9BE8(&v15, &v6);
    sub_100166170(&v6, (v4 + 192));
  }

  else
  {
    *(inited + 216) = &type metadata for String;
    *(inited + 192) = 7104878;
    *(inited + 200) = 0xE300000000000000;
  }

  sub_1005F9B78(&v8, &v6);
  sub_100358150(&v12, &v6);
  sub_100358150(&v11, &v6);
  sub_100358150(&v10, &v6);
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CCB0C8, &qword_100A69D18);
  a1[4] = sub_10012EF24(&qword_100CCB0D0, &qword_100CCB0C8, &qword_100A69D18);
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1005F8290(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C449D8, v2);

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

uint64_t sub_1005F82E4(char a1)
{
  if (a1)
  {
    return 0x656369746F6ELL;
  }

  else
  {
    return 0x616D7269666E6F63;
  }
}

uint64_t sub_1005F8344@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005F8290(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005F8374@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005F82E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1005F8450(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x747465536E65706FLL && a2 == 0xEC00000073676E69)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1005F84EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
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

uint64_t sub_1005F85AC(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1005F85C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005F8450(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1005F85F4(uint64_t a1)
{
  v2 = sub_1005F9CA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F8630(uint64_t a1)
{
  v2 = sub_1005F9CA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F8674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005F84EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005F869C(uint64_t a1)
{
  v2 = sub_1005F9CFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F86D8(uint64_t a1)
{
  v2 = sub_1005F9CFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F8714(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6F43746E65636361 && a2 == 0xEE00786548726F6CLL)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1005F8904(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x6D496D6574737973;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x6567617373656DLL;
      break;
    case 4:
      result = 0x6E6F69746361;
      break;
    case 5:
      result = 0x6F43746E65636361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1005F89C0(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CCB158, &qword_100A69D58);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1005F9DF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = *v3;
  v14 = 0;
  sub_1005F9EF4();
  sub_100019B78();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    sub_10001C77C(1);
    sub_10001C77C(2);
    sub_10001C77C(3);
    v12 = *(v3 + 56);
    v13 = *(v3 + 72);
    v14 = 4;
    sub_1005F9F48();
    sub_100019B78();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10001C77C(5);
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_1005F8B7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CCB138, &qword_100A69D50);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1005F9DF8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  LOBYTE(__src[0]) = 0;
  sub_1005F9E4C();
  sub_100014AA4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v44;
  v12 = sub_100006300(1);
  v14 = v13;
  v40 = v12;
  v39 = sub_100006300(2);
  v42 = v15;
  v38 = sub_100006300(3);
  v41 = v16;
  LOBYTE(__src[0]) = 4;
  sub_1005F9EA0();
  sub_100014AA4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v56 = v11;
  v37 = v44;
  v36 = v45;
  v17 = v46;
  v57 = 5;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = *(v7 + 8);
  v20 = v18;
  v35 = v21;
  v19(v10, v5);
  v22 = v56;
  LOBYTE(__src[0]) = v56;
  __src[1] = v40;
  __src[2] = v14;
  sub_100074CDC();
  __src[3] = v24;
  __src[4] = v23;
  v25 = v41;
  __src[5] = v38;
  __src[6] = v41;
  sub_1000287CC();
  __src[7] = v27;
  __src[8] = v26;
  __src[9] = v17;
  __src[10] = v20;
  v28 = v35;
  __src[11] = v35;
  sub_1002B094C(__src, &v44);
  sub_100006F14(a1);
  LOBYTE(v44) = v22;
  v45 = v40;
  v46 = v14;
  sub_100074CDC();
  v47 = v30;
  v48 = v29;
  v49 = v38;
  v50 = v25;
  sub_1000287CC();
  v51 = v32;
  v52 = v31;
  v53 = v17;
  v54 = v20;
  v55 = v28;
  sub_100517C40(&v44);
  return memcpy(a2, __src, 0x60uLL);
}

uint64_t sub_1005F8F50(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_10033D034(a1);
  v13 = v12;
  if (v11 == sub_10033D034(a4) && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1005F9058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005F8714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005F9080(uint64_t a1)
{
  v2 = sub_1005F9DF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F90BC(uint64_t a1)
{
  v2 = sub_1005F9DF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1005F90F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1005F8B7C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x60uLL);
  }

  return result;
}

uint64_t sub_1005F917C(uint64_t a1)
{
  sub_1005F9C00();

  return ShortDescribable.description.getter();
}

uint64_t sub_1005F91B8@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 72) = &type metadata for SystemSettingLocation;
  *(inited + 48) = a1;
  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CCB0E0, &qword_100A69D20);
  a2[4] = sub_10012EF24(&qword_100CCB0E8, &qword_100CCB0E0, &qword_100A69D20);
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1005F92C8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v19[1] = a4;
  v19[0] = a3;
  v6 = sub_10022C350(&qword_100CCB120, &qword_100A69D40);
  sub_1000037C4();
  v20 = v7;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v11 = sub_10022C350(&qword_100CCB128, &qword_100A69D48);
  sub_1000037C4();
  v13 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = v19 - v15;
  sub_1000161C0(a1, a1[3]);
  sub_1005F9CA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1005F9CFC();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v23 = a2;
  v22 = 0;
  sub_1005F9DA4();
  v17 = v19[2];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v17)
  {
    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v20 + 8))(v10, v6);
  return (*(v13 + 8))(v16, v11);
}

uint64_t sub_1005F94EC(void *a1)
{
  v3 = sub_10022C350(&qword_100CCB0F8, &qword_100A69D28);
  sub_1000037C4();
  v33 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = v30 - v6;
  v8 = sub_10022C350(&qword_100CCB100, &unk_100A69D30);
  sub_1000037C4();
  v34 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  v11 = a1[4];
  sub_1000161C0(a1, a1[3]);
  sub_1005F9CA8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_7;
  }

  v31 = v7;
  v32 = a1;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80();
  if (v13 == v14 >> 1)
  {
LABEL_6:
    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v22 = &unk_100C62070;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    swift_unknownObjectRelease();
    v23 = sub_100008A50();
    v24(v23, v8);
    a1 = v32;
LABEL_7:
    sub_100006F14(a1);
    return v11;
  }

  if (v13 < (v14 >> 1))
  {
    v15 = sub_100618E7C();
    v17 = v16;
    v11 = v18;
    swift_unknownObjectRelease();
    if (v17 == v11 >> 1)
    {
      v30[1] = v15;
      sub_1005F9CFC();
      v19 = v31;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = 0;
      sub_1005F9D50();
      v25 = v3;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v26 = v8;
      v11 = v37;
      v35 = 1;
      KeyedDecodingContainer.decode(_:forKey:)();
      v27 = v33;
      swift_unknownObjectRelease();
      (*(v27 + 8))(v19, v25);
      v28 = sub_100008A50();
      v29(v28, v26);
      sub_100006F14(v32);
      return v11;
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005F994C(uint64_t a1)
{
  sub_1005F9C54();

  return ShortDescribable.description.getter();
}

uint64_t sub_1005F9988@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1005F94EC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1005F99D8@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100759860(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_1005F9ACC()
{
  result = qword_100CCB0B0;
  if (!qword_100CCB0B0)
  {
    result = swift_getWitnessTable(byte_100A69C08, &unk_100C62070, v0, v1);
    atomic_store(result, &qword_100CCB0B0);
  }

  return result;
}

unint64_t sub_1005F9B24()
{
  result = qword_100CCB0B8;
  if (!qword_100CCB0B8)
  {
    result = swift_getWitnessTable(aQ_58, &unk_100C61E18, v0, v1);
    atomic_store(result, &qword_100CCB0B8);
  }

  return result;
}

uint64_t sub_1005F9B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CCB0C0, &qword_100A69D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005F9BE8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + 16) = *(a1 + 2);
  *a2 = v2;
  return a2;
}

unint64_t sub_1005F9C00()
{
  result = qword_100CCB0D8;
  if (!qword_100CCB0D8)
  {
    result = swift_getWitnessTable(byte_100A69C88, &unk_100C61E18, v0, v1);
    atomic_store(result, &qword_100CCB0D8);
  }

  return result;
}

unint64_t sub_1005F9C54()
{
  result = qword_100CCB0F0;
  if (!qword_100CCB0F0)
  {
    result = swift_getWitnessTable(aI_49, &unk_100C62070, v0, v1);
    atomic_store(result, &qword_100CCB0F0);
  }

  return result;
}

unint64_t sub_1005F9CA8()
{
  result = qword_100CCB108;
  if (!qword_100CCB108)
  {
    result = swift_getWitnessTable(byte_100A6A16C, &type metadata for MessageCoverViewModel.Action.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB108);
  }

  return result;
}

unint64_t sub_1005F9CFC()
{
  result = qword_100CCB110;
  if (!qword_100CCB110)
  {
    result = swift_getWitnessTable(byte_100A6A11C, &type metadata for MessageCoverViewModel.Action.OpenSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB110);
  }

  return result;
}

unint64_t sub_1005F9D50()
{
  result = qword_100CCB118;
  if (!qword_100CCB118)
  {
    result = swift_getWitnessTable(byte_100A3D7F0, &type metadata for SystemSettingLocation, v0, v1);
    atomic_store(result, &qword_100CCB118);
  }

  return result;
}

unint64_t sub_1005F9DA4()
{
  result = qword_100CCB130;
  if (!qword_100CCB130)
  {
    result = swift_getWitnessTable(byte_100A3D7C8, &type metadata for SystemSettingLocation, v0, v1);
    atomic_store(result, &qword_100CCB130);
  }

  return result;
}

unint64_t sub_1005F9DF8()
{
  result = qword_100CCB140;
  if (!qword_100CCB140)
  {
    result = swift_getWitnessTable(asc_100A6A0CC, &type metadata for MessageCoverViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB140);
  }

  return result;
}

unint64_t sub_1005F9E4C()
{
  result = qword_100CCB148;
  if (!qword_100CCB148)
  {
    result = swift_getWitnessTable(byte_100A6A0A4, &unk_100C62100, v0, v1);
    atomic_store(result, &qword_100CCB148);
  }

  return result;
}

unint64_t sub_1005F9EA0()
{
  result = qword_100CCB150;
  if (!qword_100CCB150)
  {
    result = swift_getWitnessTable(byte_100A69BE0, &unk_100C62070, v0, v1);
    atomic_store(result, &qword_100CCB150);
  }

  return result;
}

unint64_t sub_1005F9EF4()
{
  result = qword_100CCB160;
  if (!qword_100CCB160)
  {
    result = swift_getWitnessTable(byte_100A6A07C, &unk_100C62100, v0, v1);
    atomic_store(result, &qword_100CCB160);
  }

  return result;
}

unint64_t sub_1005F9F48()
{
  result = qword_100CCB168;
  if (!qword_100CCB168)
  {
    result = swift_getWitnessTable(byte_100A69BB8, &unk_100C62070, v0, v1);
    atomic_store(result, &qword_100CCB168);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageCoverViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MessageCoverViewModel.Action.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1005FA140(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1005FA21C()
{
  result = qword_100CCB170;
  if (!qword_100CCB170)
  {
    result = swift_getWitnessTable(byte_100A69E2C, &unk_100C62100, v0, v1);
    atomic_store(result, &qword_100CCB170);
  }

  return result;
}

unint64_t sub_1005FA274()
{
  result = qword_100CCB178;
  if (!qword_100CCB178)
  {
    result = swift_getWitnessTable(byte_100A69EE4, &type metadata for MessageCoverViewModel.Action.OpenSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB178);
  }

  return result;
}

unint64_t sub_1005FA2CC()
{
  result = qword_100CCB180;
  if (!qword_100CCB180)
  {
    result = swift_getWitnessTable(aE_57, &type metadata for MessageCoverViewModel.Action.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB180);
  }

  return result;
}

unint64_t sub_1005FA324()
{
  result = qword_100CCB188;
  if (!qword_100CCB188)
  {
    result = swift_getWitnessTable(byte_100A6A054, &type metadata for MessageCoverViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB188);
  }

  return result;
}

unint64_t sub_1005FA37C()
{
  result = qword_100CCB190;
  if (!qword_100CCB190)
  {
    result = swift_getWitnessTable(byte_100A69FC4, &type metadata for MessageCoverViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB190);
  }

  return result;
}

unint64_t sub_1005FA3D4()
{
  result = qword_100CCB198;
  if (!qword_100CCB198)
  {
    result = swift_getWitnessTable(byte_100A69FEC, &type metadata for MessageCoverViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB198);
  }

  return result;
}

unint64_t sub_1005FA42C()
{
  result = qword_100CCB1A0;
  if (!qword_100CCB1A0)
  {
    result = swift_getWitnessTable(byte_100A69E54, &type metadata for MessageCoverViewModel.Action.OpenSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB1A0);
  }

  return result;
}

unint64_t sub_1005FA484()
{
  result = qword_100CCB1A8;
  if (!qword_100CCB1A8)
  {
    result = swift_getWitnessTable(aU_58, &type metadata for MessageCoverViewModel.Action.OpenSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB1A8);
  }

  return result;
}

unint64_t sub_1005FA4DC()
{
  result = qword_100CCB1B0;
  if (!qword_100CCB1B0)
  {
    result = swift_getWitnessTable(byte_100A69F0C, &type metadata for MessageCoverViewModel.Action.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB1B0);
  }

  return result;
}

unint64_t sub_1005FA534()
{
  result = qword_100CCB1B8;
  if (!qword_100CCB1B8)
  {
    result = swift_getWitnessTable(byte_100A69F34, &type metadata for MessageCoverViewModel.Action.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB1B8);
  }

  return result;
}

unint64_t sub_1005FA588()
{
  result = qword_100CCB1C0;
  if (!qword_100CCB1C0)
  {
    result = swift_getWitnessTable(asc_100A69DB4, &unk_100C62100, v0, v1);
    atomic_store(result, &qword_100CCB1C0);
  }

  return result;
}

void sub_1005FA630(uint64_t a1)
{
  sub_1005FA714(319, &qword_100CCB230, &type metadata accessor for UUID, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1005FA714(319, &unk_100CCB238, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005FA714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1005FA810()
{
  sub_10000C778();
  v2 = v0;
  v4 = v3;
  v41 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v42 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100003C38();
  sub_100021390();
  __chkstk_darwin(v12);
  v37 = &v35 - v13;
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  v20 = type metadata accessor for HourlyForecastComponentViewModel(0);
  v21 = v20;
  v22 = *(v2 + *(v20 + 20));
  v23 = *(v22 + 16);
  if (!v23)
  {

    goto LABEL_15;
  }

  v39 = v20;
  v40 = v2;
  v38 = v4;
  v35 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v36 = v1;
  v24 = v22 + v35;

  v25 = 0;
  v26 = v10;
  while (1)
  {
    if (v25 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v27 = v26;
    v1 = *(v26 + 72) * v25;
    sub_10001F2D4();
    sub_10011C7D0(v24 + v1, v19);
    v28 = sub_1000053B8();
    sub_10011A1F4(v28, v29);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100019B90();
      sub_10011CA44(v16, v32);
      goto LABEL_8;
    }

    sub_100004648();
    sub_10011A1F4(v16, v8);
    v30 = *(v8 + *(v41 + 60));
    sub_10001C7A0();
    sub_10011CA44(v8, v31);
    if (v30)
    {
      break;
    }

LABEL_8:
    ++v25;
    v26 = v27;
    if (v23 == v25)
    {
      v4 = v38;
      v21 = v39;
      v2 = v40;
      goto LABEL_15;
    }
  }

  if (v25 >= *(v22 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v37;
  sub_10011C7D0(v24 + v1, v37);
  v16 = v36;
  sub_1005FAD54(v36);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_13;
  }

LABEL_18:
  sub_1008FBCEC();
  v22 = v34;
LABEL_13:
  v21 = v39;
  v2 = v40;
  sub_100019B90();
  sub_10011CA44(v19, v33);
  if (v25 >= *(v22 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_1005FF2D0(v16, v22 + v35 + v1);
    v4 = v38;
LABEL_15:
    sub_1005FF260(v2, v4);
    *(v4 + *(v21 + 20)) = v22;
    sub_10000536C();
  }
}

double sub_1005FAAFC()
{
  v2 = v1;
  v3 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_10002429C();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  sub_10001F2D4();
  sub_10011C7D0(v2, v8);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_100004648();
    v11 = sub_1000053B8();
    sub_10011A1F4(v11, v12);
    if ((*(v0 + *(v3 + 60)) & 1) == 0)
    {
      v13 = *(v0 + 40);
      sub_10001C7A0();
      sub_10011CA44(v0, v14);
      return v13;
    }

    sub_10001C7A0();
    v10 = v0;
  }

  else
  {
    sub_100019B90();
    v10 = v8;
  }

  sub_10011CA44(v10, v9);
  return 0.0;
}

uint64_t sub_1005FAC18()
{
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_10002429C();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  sub_10001F2D4();
  sub_10011C7D0(v1, v6);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_100004648();
    v7 = sub_1000053B8();
    sub_10011A1F4(v7, v8);
    Precipitation.accessibilityDescription(with:)(*(v0 + 40));
    sub_10011CA44(v0, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
  }

  else
  {
    sub_10011CA44(v6, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
  }

  return sub_100004464();
}

uint64_t sub_1005FAD54@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  __chkstk_darwin(v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10011C7D0(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_10011A1F4(v5, v8);
    v9 = v6[13];
    v10 = v6[14];
    v11 = Date.formattedHours(timeZone:forAccessibility:)();
    v39 = v12;
    v40 = v11;
    v13 = *(v8 + 4);
    v14 = *(v8 + 5);
    v38 = v8[48];
    v15 = v6[9];
    v16 = type metadata accessor for Precipitation();
    v17 = *(*(v16 - 8) + 16);
    v18 = *(v8 + 1);
    v37 = *v8;
    v41 = v18;
    v17(a1 + v15, &v8[v15], v16);
    v19 = &v8[v6[10]];
    v20 = *v19;
    v21 = *(v19 + 1);
    v22 = v6[13];
    v23 = &v8[v6[12]];
    v24 = *(v23 + 1);
    v35 = *v23;
    v36 = v20;
    v25 = type metadata accessor for Date();
    (*(*(v25 - 8) + 16))(a1 + v22, &v8[v9], v25);
    v26 = v6[14];
    v27 = type metadata accessor for TimeZone();
    (*(*(v27 - 8) + 16))(a1 + v26, &v8[v10], v27);
    LOBYTE(v26) = v8[v6[15]];
    v28 = *&v8[v6[16]];

    sub_10011CA44(v8, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
    v29 = v41;
    *a1 = v37;
    *(a1 + 16) = v29;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    *(a1 + 48) = v38;
    v30 = (a1 + v6[10]);
    *v30 = v36;
    v30[1] = v21;
    v31 = (a1 + v6[11]);
    v32 = v39;
    *v31 = v40;
    v31[1] = v32;
    v33 = (a1 + v6[12]);
    *v33 = v35;
    v33[1] = v24;
    *(a1 + v6[15]) = v26;
    *(a1 + v6[16]) = v28;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_10011CA44(v5, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem);
    return sub_10011C7D0(v1, a1);
  }
}

uint64_t sub_1005FB09C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000100AD7520 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74786554656D6974 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000015 && 0x8000000100AD7500 == a2)
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

unint64_t sub_1005FB248(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x656E6F5A656D6974;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x74786554656D6974;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1005FB2E8(uint64_t a1)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v1 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  sub_100003C48(v1[5]);
  if ((static TimeZone.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_1001CAA30();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  sub_100005824(v1[7]);
  v5 = v5 && v3 == v4;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_100005824(v1[8]);
  if (v5 && v6 == v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1005FB3A8()
{
  v2 = sub_10022C350(&qword_100CCB5C0, &qword_100A6A5B8);
  sub_1000037C4();
  v4 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10000CC9C();
  sub_100014AE4();
  v6 = sub_1005FFB98();
  sub_1000B0278(&type metadata for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel.CodingKeys, v7, v6);
  type metadata accessor for Date();
  sub_100014AC0();
  sub_1005FE610(v8, v9, &protocol conformance descriptor for Date);
  sub_1000214AC();
  sub_1000058DC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
    sub_100017810();
    type metadata accessor for TimeZone();
    sub_100008A60();
    sub_1005FE610(v10, v11, &protocol conformance descriptor for TimeZone);
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10022C350(&qword_100CCC930, &qword_100A41810);
    sub_100021064(&qword_100CCB5A8, &protocol witness table for String);
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v1, v2);
}

uint64_t sub_1005FB5F8(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  sub_100014AC0();
  sub_1005FE610(v4, v5, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  sub_1000717C0();
  type metadata accessor for TimeZone();
  sub_100008A60();
  v8 = sub_1005FE610(v6, v7, &protocol conformance descriptor for TimeZone);
  sub_100031E3C(v8);
  sub_10016D390(a1, *(v1 + *(v3 + 24)));
  sub_10000EBEC();
  String.hash(into:)();
  sub_10000EBEC();

  return String.hash(into:)();
}

Swift::Int sub_1005FB6DC()
{
  sub_10003259C();
  type metadata accessor for Date();
  sub_100014AC0();
  sub_1005FE610(v1, v2, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  type metadata accessor for TimeZone();
  sub_100008A60();
  sub_1005FE610(v4, v5, &protocol conformance descriptor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  sub_10016D390(v7, *(v0 + *(v3 + 24)));
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1005FB7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10000E8AC();
  v72 = v27;
  v29 = v28;
  v64 = v30;
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v67 = v32;
  v68 = v31;
  __chkstk_darwin(v31);
  sub_1000037D8();
  v35 = v34 - v33;
  v36 = type metadata accessor for Date();
  sub_1000037C4();
  v65 = v37;
  __chkstk_darwin(v38);
  sub_1000037D8();
  v69 = v40 - v39;
  v71 = sub_10022C350(&qword_100CCB5B0, &qword_100A6A5B0);
  sub_1000037C4();
  v66 = v41;
  sub_100003828();
  __chkstk_darwin(v42);
  v44 = v63 - v43;
  v45 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  sub_1000037E8();
  __chkstk_darwin(v46);
  sub_10002429C();
  sub_1000161C0(v29, v29[3]);
  sub_1005FFB98();
  v70 = v44;
  v47 = v72;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v47)
  {
    sub_100006F14(v29);
  }

  else
  {
    v48 = v35;
    v49 = v67;
    v50 = v68;
    sub_100014AC0();
    sub_1005FE610(v51, v52, &protocol conformance descriptor for Date);
    sub_1000214AC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v65 + 32))(v26, v69, v36);
    sub_100017810();
    sub_100008A60();
    sub_1005FE610(v53, v54, &protocol conformance descriptor for TimeZone);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v63[1] = v36;
    (*(v49 + 32))(v26 + v45[5], v48, v50);
    sub_10022C350(&qword_100CCC930, &qword_100A41810);
    sub_10001642C(&qword_100CCB588, &protocol witness table for String);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v26 + v45[6]) = v73;
    v55 = KeyedDecodingContainer.decode(_:forKey:)();
    v56 = (v26 + v45[7]);
    *v56 = v55;
    v56[1] = v57;
    v58 = KeyedDecodingContainer.decode(_:forKey:)();
    v60 = v59;
    (*(v66 + 8))(v70, v71);
    v61 = (v26 + v45[8]);
    *v61 = v58;
    v61[1] = v60;
    sub_10011C7D0(v26, v64);
    sub_100006F14(v29);
    sub_10001052C();
    sub_10011CA44(v26, v62);
  }

  sub_10000C8F4();
}

uint64_t sub_1005FBCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005FB09C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005FBD20(uint64_t a1)
{
  v2 = sub_1005FFB98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005FBD5C(uint64_t a1)
{
  v2 = sub_1005FFB98();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1005FBDD4(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_1005FE610(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_1005FE610(&qword_100CAC4C8, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  sub_10016D390(v5, *(v2 + a2[6]));
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1005FBF04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F697469646E6F63 && a2 == 0xED00006E6F63496ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x8000000100AD74A0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000100AD74C0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000100AD74E0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x74786554656D6974 && a2 == 0xE800000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x8000000100AD7500 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1702125924 && a2 == 0xE400000000000000;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x776F4E7369 && a2 == 0xE500000000000000;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000011 && 0x8000000100AD7520 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_1005FC2F0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6F697469646E6F63;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x7469706963657270;
      break;
    case 6:
      result = 0x74617265706D6574;
      break;
    case 7:
      result = 0x74786554656D6974;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 1702125924;
      break;
    case 10:
      result = 0x656E6F5A656D6974;
      break;
    case 11:
      result = 0x776F4E7369;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1005FC47C()
{
  v2 = sub_10022C350(&qword_100CCB590, &qword_100A6A5A8);
  sub_1000037C4();
  v4 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000426CC();
  sub_100014AE4();
  v6 = sub_1005FFAD8();
  sub_1000B0278(&type metadata for HourlyForecastComponentViewModel.HourlyItem.HourModel.CodingKeys, v7, v6);
  sub_100004630();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_100069734(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100069734(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10003BAE0(3);
    sub_100004630();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100004630();
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
    type metadata accessor for Precipitation();
    sub_10003C668();
    v10 = sub_1005FE610(v8, v9, &protocol conformance descriptor for Precipitation);
    sub_1000185A4(v10);
    sub_100069734(6);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100069734(7);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100069734(8);
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for Date();
    sub_100014AC0();
    v13 = sub_1005FE610(v11, v12, &protocol conformance descriptor for Date);
    sub_1000185A4(v13);
    type metadata accessor for TimeZone();
    sub_100008A60();
    v16 = sub_1005FE610(v14, v15, &protocol conformance descriptor for TimeZone);
    sub_1000185A4(v16);
    sub_100004630();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10022C350(&qword_100CCC930, &qword_100A41810);
    sub_100021064(&qword_100CCB5A8, &protocol witness table for String);
    sub_100004630();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v1, v2);
}

void sub_1005FC7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  v24 = v23;
  v89 = v25;
  v94 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v92 = v26;
  __chkstk_darwin(v27);
  sub_1000037D8();
  sub_1000426CC();
  v95 = type metadata accessor for Date();
  sub_1000037C4();
  v93 = v28;
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  type metadata accessor for Precipitation();
  sub_1000037C4();
  v96 = v34;
  v97 = v33;
  __chkstk_darwin(v33);
  sub_1000037D8();
  sub_10000CC9C();
  v91 = sub_10022C350(&qword_100CCB568, &unk_100A6A598);
  sub_1000037C4();
  v36 = v35;
  sub_100003828();
  __chkstk_darwin(v37);
  v39 = &v89 - v38;
  v101 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  sub_1000037E8();
  __chkstk_darwin(v40);
  sub_1000037D8();
  v98 = v24;
  v99 = (v42 - v41);
  v43 = v24[3];
  v44 = v24[4];
  v45 = sub_1000161C0(v24, v43);
  sub_1005FFAD8();
  v90 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    v100 = v20;
    v48 = 0;
    LODWORD(v32) = 0;
    LODWORD(v49) = 0;
    sub_100013A08();
  }

  else
  {
    v43 = v22;
    LODWORD(v44) = v36;
    v49 = v89;
    v46 = v91;
    v47 = KeyedDecodingContainer.decode(_:forKey:)();
    v52 = v99;
    *v99 = v47;
    sub_10003BAE0(1);
    v52[1] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52[2] = v53;
    sub_10003BAE0(2);
    v52[3] = KeyedDecodingContainer.decode(_:forKey:)();
    v52[4] = v54;
    sub_10003BAE0(3);
    KeyedDecodingContainer.decode(_:forKey:)();
    v52[5] = v55;
    sub_10003BAE0(4);
    *(v52 + 48) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_10003C668();
    sub_1005FE610(v56, v57, &protocol conformance descriptor for Precipitation);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v48 = v46;
    v58 = v101;
    (*(v96 + 32))(v52 + v101[9], v21, v97);
    sub_10003BAE0(6);
    v59 = KeyedDecodingContainer.decode(_:forKey:)();
    v60 = (v52 + v58[10]);
    *v60 = v59;
    v60[1] = v61;
    sub_10003BAE0(7);
    v62 = KeyedDecodingContainer.decode(_:forKey:)();
    LODWORD(v21) = v44;
    v63 = (v52 + v58[11]);
    *v63 = v62;
    v63[1] = v64;
    sub_10003BAE0(8);
    v36 = v91;
    v65 = KeyedDecodingContainer.decode(_:forKey:)();
    v100 = 0;
    v67 = (v52 + v101[12]);
    *v67 = v65;
    v67[1] = v66;
    sub_100014AC0();
    sub_1005FE610(v68, v69, &protocol conformance descriptor for Date);
    v70 = v100;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v100 = v70;
    if (v70)
    {
      v71 = sub_100043A18();
      v72(v71);
      v45 = 0;
      sub_10000CD04();
      LODWORD(v44) = 1;
      LODWORD(v43) = 1;
      LODWORD(v21) = 1;
    }

    else
    {
      (*(v93 + 32))(v99 + v101[13], v32, v95);
      LOBYTE(a10) = 10;
      sub_100008A60();
      sub_1005FE610(v73, v74, &protocol conformance descriptor for TimeZone);
      v45 = v90;
      v75 = v100;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v100 = v75;
      if (v75)
      {
        v76 = sub_100043A18();
        v77(v76);
        sub_10000CD04();
        LODWORD(v44) = 1;
        LODWORD(v43) = 1;
        sub_1000C83A0();
      }

      else
      {
        (*(v92 + 32))(v99 + v101[14], v43, v94);
        sub_10003BAE0(11);
        v45 = v90;
        v78 = v100;
        v79 = KeyedDecodingContainer.decode(_:forKey:)();
        v100 = v78;
        if (!v78)
        {
          *(v99 + v101[15]) = v79 & 1;
          sub_10022C350(&qword_100CCC930, &qword_100A41810);
          v102 = 12;
          sub_10001642C(&qword_100CCB588, &protocol witness table for String);
          v45 = v90;
          v82 = v100;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v100 = v82;
          if (!v82)
          {
            v85 = sub_100043A18();
            v86(v85);
            v87 = v99;
            *(v99 + v101[16]) = a10;
            sub_10011C7D0(v87, v49);
            sub_100006F14(v98);
            sub_10001C7A0();
            sub_10011CA44(v87, v88);
            goto LABEL_21;
          }

          v83 = sub_100043A18();
          v84(v83);
          sub_100006F14(v98);
          sub_10002C8B8();
          sub_1000C83A0();
          v36 = 1;
          v50 = v99;
LABEL_5:

          if (v32)
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }

        v80 = sub_100043A18();
        v81(v80);
        v48 = 1;
        sub_10002C8B8();
        sub_1000C83A0();
        v36 = 1;
      }
    }
  }

  v50 = v99;
  sub_100006F14(v98);
  if (v48)
  {
    goto LABEL_5;
  }

  if (v32)
  {
LABEL_6:

    if ((v49 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  if (!v49)
  {
LABEL_7:
    v51 = v101;
    if (v44)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v51 = v101;
  (*(v96 + 8))(v50 + v101[9], v97);
  if (v44)
  {
LABEL_8:

    if ((v43 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  if (!v43)
  {
LABEL_9:
    if (v21)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:

  if (v21)
  {
LABEL_10:

    if ((v45 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (!v45)
  {
LABEL_11:
    if (!v36)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_19:
  (*(v93 + 8))(v50 + v51[13], v95);
  if (v36)
  {
LABEL_20:
    (*(v92 + 8))(v50 + v51[14], v94);
  }

LABEL_21:
  sub_10000C8F4();
}

uint64_t sub_1005FD058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657369726E7573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7465736E7573 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1920298856 && a2 == 0xE400000000000000)
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

uint64_t sub_1005FD164(char a1)
{
  if (!a1)
  {
    return 0x657369726E7573;
  }

  if (a1 == 1)
  {
    return 0x7465736E7573;
  }

  return 1920298856;
}

void sub_1005FD1B0()
{
  sub_10000C778();
  v40 = v1;
  v3 = v2;
  v4 = sub_100031708();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v39 = v6 - v5;
  v7 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100003C38();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_100003C38();
  sub_100021390();
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  v22 = sub_10022C350(&qword_100CC41B0, &qword_100A6A530);
  sub_100003810(v22);
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &v39 - v24;
  v27 = *(v26 + 56);
  v28 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem;
  sub_10011C7D0(v3, &v39 - v24);
  sub_10011C7D0(v40, &v25[v27]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10001F2D4();
      sub_10011C7D0(v25, v18);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100006324();
        sub_10011A1F4(&v25[v27], v11);
        sub_1005FB2E8(v18);
        sub_100025290();
        sub_10011CA44(v11, v30);
        v31 = v18;
LABEL_13:
        sub_10011CA44(v31, v28);
        sub_100019B90();
        sub_10011CA44(v25, v38);
        goto LABEL_14;
      }

      sub_10001052C();
      v33 = v18;
    }

    else
    {
      sub_10001F2D4();
      v34 = sub_1000370B0();
      sub_10011C7D0(v34, v35);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_100004648();
        v36 = v39;
        sub_10011A1F4(&v25[v27], v39);
        sub_1001C8C98(v0, v36);
        v28 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel;
        sub_10011CA44(v36, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel);
        v31 = v0;
        goto LABEL_13;
      }

      sub_10001C7A0();
      v33 = v0;
    }
  }

  else
  {
    sub_10001F2D4();
    sub_10011C7D0(v25, v21);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_100006324();
      sub_10011A1F4(&v25[v27], v14);
      sub_1005FB2E8(v21);
      sub_100025290();
      sub_10011CA44(v14, v37);
      v31 = v21;
      goto LABEL_13;
    }

    sub_10001052C();
    v33 = v21;
  }

  sub_10011CA44(v33, v32);
  sub_1000180EC(v25, &qword_100CC41B0, &qword_100A6A530);
LABEL_14:
  sub_10000536C();
}

void sub_1005FD4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000E8AC();
  a23 = v27;
  a24 = v28;
  v97 = v25;
  v95 = v24;
  v30 = v29;
  sub_10022C350(&qword_100CCB538, &qword_100A6A578);
  sub_1000037C4();
  v92 = v32;
  v93 = v31;
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000039BC();
  v91 = v34;
  v89 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_1000037D8();
  v90 = v37 - v36;
  sub_10022C350(&qword_100CCB540, &qword_100A6A580);
  sub_1000037C4();
  v87 = v39;
  v88 = v38;
  sub_100003828();
  __chkstk_darwin(v40);
  sub_1000039BC();
  v86 = v41;
  sub_10022C350(&qword_100CCB548, &qword_100A6A588);
  sub_1000037C4();
  v84 = v43;
  v85 = v42;
  sub_100003828();
  __chkstk_darwin(v44);
  sub_1000039BC();
  v83 = v45;
  v94 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
  sub_1000037E8();
  __chkstk_darwin(v46);
  sub_100003C38();
  v49 = v47 - v48;
  __chkstk_darwin(v50);
  v52 = &v82 - v51;
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v53);
  sub_1000037D8();
  v56 = v55 - v54;
  v96 = sub_10022C350(&qword_100CCB550, &qword_100A6A590);
  sub_1000037C4();
  v58 = v57;
  sub_100003828();
  __chkstk_darwin(v59);
  sub_1000426CC();
  sub_1000161C0(v30, v30[3]);
  sub_1005FF874();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10001F2D4();
  sub_10011C7D0(v95, v56);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v61 = (v58 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10011A1F4(v56, v49);
      sub_100017810();
      sub_1005FFA30();
      v62 = v86;
      sub_10006974C(&type metadata for HourlyForecastComponentViewModel.HourlyItem.SunsetCodingKeys, &a13);
      sub_100016C30();
      sub_1005FE610(v63, v64, byte_100A6A280);
      v65 = v88;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v87 + 8))(v62, v65);
      sub_10001052C();
      v67 = v49;
    }

    else
    {
      v76 = v56;
      v77 = v90;
      sub_10011A1F4(v76, v90);
      a14 = 2;
      sub_1005FF9DC();
      v78 = v91;
      sub_10006974C(&type metadata for HourlyForecastComponentViewModel.HourlyItem.HourCodingKeys, &a14);
      sub_100030528();
      sub_1005FE610(v79, v80, byte_100A6A370);
      v81 = v93;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v92 + 8))(v78, v81);
      sub_10001C7A0();
      v67 = v77;
    }

    sub_10011CA44(v67, v66);
    v75 = *v61;
    v73 = v26;
    v74 = v52;
  }

  else
  {
    sub_10011A1F4(v56, v52);
    sub_1005FFA84();
    v68 = v83;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100016C30();
    sub_1005FE610(v69, v70, byte_100A6A280);
    v71 = v85;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v84 + 8))(v68, v71);
    sub_10001052C();
    sub_10011CA44(v52, v72);
    v73 = sub_10002C598();
  }

  v75(v73, v74);
  sub_10000C8F4();
}

void sub_1005FDA78()
{
  sub_100020DF0();
  v6 = v5;
  v7 = sub_100031708();
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_1000426CC();
  sub_1000717C0();
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v9 = sub_100016824();
  type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  sub_1000200F8();
  sub_10001F2D4();
  sub_10011C7D0(v0, v4);
  sub_100014AD8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_100004648();
      sub_10011A1F4(v4, v3);
      Hasher._combine(_:)(2uLL);
      sub_100119FC0(v6);
      sub_10001C7A0();
      v19 = v3;
      goto LABEL_7;
    }

    sub_100006324();
    sub_1000AF5CC();
    v12 = 1;
  }

  else
  {
    sub_100006324();
    sub_1000AF5CC();
    v12 = 0;
  }

  Hasher._combine(_:)(v12);
  type metadata accessor for Date();
  sub_100014AC0();
  sub_1005FE610(v13, v14, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_100008A60();
  v17 = sub_1005FE610(v15, v16, &protocol conformance descriptor for TimeZone);
  sub_100031E3C(v17);
  sub_10016D390(v6, *(v1 + *(v2 + 24)));
  sub_10000EBEC();
  String.hash(into:)();
  sub_10000EBEC();
  String.hash(into:)();
  sub_10001052C();
  v19 = v1;
LABEL_7:
  sub_10011CA44(v19, v18);
  sub_1000212EC();
}

Swift::Int sub_1005FDC68(void (*a1)(_BYTE *))
{
  sub_10003259C();
  a1(v3);
  return Hasher._finalize()();
}

void sub_1005FDCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000E8AC();
  a23 = v26;
  a24 = v27;
  v116 = v24;
  v29 = v28;
  v108 = v30;
  v114 = sub_10022C350(&qword_100CCB4E8, &qword_100A6A550);
  sub_1000037C4();
  v107 = v31;
  sub_100003828();
  __chkstk_darwin(v32);
  sub_1000039BC();
  v110 = v33;
  sub_10022C350(&qword_100CCB4F0, &qword_100A6A558);
  sub_1000037C4();
  v105 = v35;
  v106 = v34;
  sub_100003828();
  __chkstk_darwin(v36);
  sub_1000039BC();
  v111 = v37;
  sub_10022C350(&qword_100CCB4F8, &qword_100A6A560);
  sub_1000037C4();
  v103 = v39;
  v104 = v38;
  sub_100003828();
  __chkstk_darwin(v40);
  sub_1000039BC();
  v109 = v41;
  sub_10022C350(&qword_100CCB500, &unk_100A6A568);
  sub_1000037C4();
  v112 = v43;
  v113 = v42;
  sub_100003828();
  __chkstk_darwin(v44);
  v45 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  sub_1000037E8();
  __chkstk_darwin(v46);
  sub_100003C38();
  v49 = v47 - v48;
  __chkstk_darwin(v50);
  v52 = &v97 - v51;
  __chkstk_darwin(v53);
  sub_100021390();
  __chkstk_darwin(v54);
  v56 = &v97 - v55;
  v57 = v29[3];
  v115 = v29;
  sub_1000161C0(v29, v57);
  sub_1005FF874();
  v58 = v116;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v58)
  {
    goto LABEL_9;
  }

  v99 = v52;
  v100 = v25;
  v101 = v49;
  v102 = v56;
  v59 = v113;
  v116 = v45;
  KeyedDecodingContainer.allKeys.getter();
  sub_100618E80();
  if (v61 == v62 >> 1)
  {
LABEL_8:
    v73 = type metadata accessor for DecodingError();
    swift_allocError();
    v75 = v74;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v75 = v116;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v73 - 8) + 104))(v75, enum case for DecodingError.typeMismatch(_:), v73);
    swift_willThrow();
    swift_unknownObjectRelease();
    v76 = sub_1000202BC();
    v77(v76, v59);
LABEL_9:
    sub_100006F14(v115);
LABEL_10:
    sub_10000C8F4();
    return;
  }

  if (v61 < (v62 >> 1))
  {
    v63 = *(v60 + v61);
    sub_100618E7C();
    v65 = v64;
    v67 = v66;
    swift_unknownObjectRelease();
    if (v65 == v67 >> 1)
    {
      if (v63)
      {
        if (v63 == 1)
        {
          sub_100017810();
          sub_1005FFA30();
          sub_100022EA8(&type metadata for HourlyForecastComponentViewModel.HourlyItem.SunsetCodingKeys, &a13);
          v68 = v102;
          type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
          sub_100016C30();
          sub_1005FE610(v69, v70, byte_100A6A2A8);
          v71 = v99;
          v72 = v106;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v98 = 0;
          swift_unknownObjectRelease();
          v84 = sub_1000202BC();
          v85(v84, v72);
          v86 = sub_100010544();
        }

        else
        {
          a14 = 2;
          sub_1005FF9DC();
          sub_100022EA8(&type metadata for HourlyForecastComponentViewModel.HourlyItem.HourCodingKeys, &a14);
          v68 = v102;
          type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.HourModel(0);
          sub_100030528();
          sub_1005FE610(v82, v83, byte_100A6A398);
          v71 = v101;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v98 = 0;
          swift_unknownObjectRelease();
          v94 = sub_1000523CC();
          v95(v94);
          v86 = sub_100014AD8();
        }

        v87(v86);
        swift_storeEnumTagMultiPayload();
        v93 = v71;
        v92 = v115;
      }

      else
      {
        a12 = 0;
        sub_1005FFA84();
        sub_100022EA8(&type metadata for HourlyForecastComponentViewModel.HourlyItem.SunriseCodingKeys, &a12);
        type metadata accessor for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel(0);
        sub_100016C30();
        sub_1005FE610(v78, v79, byte_100A6A2A8);
        v80 = v100;
        v81 = v104;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v98 = 0;
        swift_unknownObjectRelease();
        v88 = sub_1000202BC();
        v89(v88, v81);
        v90 = sub_100014AD8();
        v91(v90);
        swift_storeEnumTagMultiPayload();
        v92 = v115;
        v68 = v102;
        v93 = v80;
      }

      v96 = v108;
      sub_10011A1F4(v93, v68);
      sub_10011A1F4(v68, v96);
      sub_100006F14(v92);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1005FE4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005FBF04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005FE4D4(uint64_t a1)
{
  v2 = sub_1005FFAD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005FE510(uint64_t a1)
{
  v2 = sub_1005FFAD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005FE610(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1005FE6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005FD058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005FE6D0(uint64_t a1)
{
  v2 = sub_1005FF874();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005FE70C(uint64_t a1)
{
  v2 = sub_1005FF874();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005FE748(uint64_t a1)
{
  v2 = sub_1005FF9DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005FE784(uint64_t a1)
{
  v2 = sub_1005FF9DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005FE7C0(uint64_t a1)
{
  v2 = sub_1005FFA84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005FE7FC(uint64_t a1)
{
  v2 = sub_1005FFA84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005FE838(uint64_t a1)
{
  v2 = sub_1005FFA30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005FE874(uint64_t a1)
{
  v2 = sub_1005FFA30();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1005FE92C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1005FE970(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7372756F68 && a2 == 0xE500000000000000)
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

uint64_t sub_1005FEA2C(char a1)
{
  if (a1)
  {
    return 0x7372756F68;
  }

  else
  {
    return 25705;
  }
}

void sub_1005FEA54()
{
  sub_10000C778();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  sub_10000CC9C();
  v10 = sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000200F8();
  v12 = sub_10022C350(&qword_100CCB488, &qword_100A6A528);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000426CC();
  v15 = *(v14 + 56);
  sub_1005FF260(v5, v1);
  sub_1005FF260(v3, v1 + v15);
  sub_100003A40(v1);
  if (v18)
  {
    sub_100003A40(v1 + v15);
    if (v18)
    {
      sub_1000180EC(v1, &qword_100CC2B20, &unk_100A6A1C0);
LABEL_12:
      type metadata accessor for HourlyForecastComponentViewModel(0);
      sub_1009ECFBC();
      goto LABEL_13;
    }

LABEL_9:
    sub_1000180EC(v1, &qword_100CCB488, &qword_100A6A528);
    goto LABEL_13;
  }

  v16 = sub_10002C598();
  sub_1005FF260(v16, v17);
  sub_100003A40(v1 + v15);
  if (v18)
  {
    v19 = sub_100027E24();
    v20(v19);
    goto LABEL_9;
  }

  (*(v8 + 32))(v0, v1 + v15, v6);
  sub_1000248F4();
  sub_1005FE610(v21, v22, &protocol conformance descriptor for UUID);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v8 + 8);
  v24(v0, v6);
  v25 = sub_100027E24();
  (v24)(v25);
  sub_1000180EC(v1, &qword_100CC2B20, &unk_100A6A1C0);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_13:
  sub_10000536C();
}

uint64_t sub_1005FECC0()
{
  v2 = sub_10022C350(&qword_100CCB4C8, &qword_100A6A548);
  sub_1000037C4();
  v4 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10000CC9C();
  sub_100014AE4();
  v6 = sub_1005FF784();
  sub_1000B0278(&type metadata for HourlyForecastComponentViewModel.CodingKeys, v7, v6);
  type metadata accessor for UUID();
  sub_1000248F4();
  sub_1005FE610(v8, v9, &protocol conformance descriptor for UUID);
  sub_1000214AC();
  sub_1000058DC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v0)
  {
    type metadata accessor for HourlyForecastComponentViewModel(0);
    sub_10022C350(&qword_100CCB4B0, &qword_100A6A540);
    sub_1005FF7D8(&qword_100CCB4D8, &qword_100CCB4E0, aI_51, &protocol conformance descriptor for <A> [A]);
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v1, v2);
}

void sub_1005FEE80()
{
  sub_10000E8AC();
  v3 = v2;
  v24 = v4;
  v5 = sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  sub_10022C350(&qword_100CCB498, &qword_100A6A538);
  sub_1000037C4();
  v25 = v10;
  v26 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v14 = type metadata accessor for HourlyForecastComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000037D8();
  sub_1000426CC();
  sub_1000161C0(v3, v3[3]);
  sub_1005FF784();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100006F14(v3);
  }

  else
  {
    v23 = v14;
    v16 = v1;
    v17 = v25;
    type metadata accessor for UUID();
    sub_1000248F4();
    sub_1005FE610(v18, v19, &protocol conformance descriptor for UUID);
    sub_1000214AC();
    v20 = v26;
    sub_1001200E4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100508840(v8, v16);
    sub_10022C350(&qword_100CCB4B0, &qword_100A6A540);
    sub_100017810();
    sub_1005FF7D8(&qword_100CCB4B8, &qword_100CCB4C0, a1_21, &protocol conformance descriptor for <A> [A]);
    sub_1001200E4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v13, v20);
    v21 = v24;
    *(v16 + *(v23 + 20)) = v27;
    sub_10011C7D0(v16, v21);
    sub_100006F14(v3);
    sub_10011CA44(v16, type metadata accessor for HourlyForecastComponentViewModel);
  }

  sub_10000C8F4();
}

uint64_t sub_1005FF18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005FE970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005FF1B4(uint64_t a1)
{
  v2 = sub_1005FF784();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005FF1F0(uint64_t a1)
{
  v2 = sub_1005FF784();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005FF260(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC2B20, &unk_100A6A1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005FF2D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourlyForecastComponentViewModel.HourlyItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1005FF37C()
{
  sub_10000C778();
  v4 = v3;
  sub_1000038D8();
  v5 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_10000CC9C();
  v9 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  sub_100003C38();
  sub_100021390();
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v14 = *(v4 + 16);
  v20 = v0;
  Hasher._combine(_:)(v14);
  if (v14)
  {
    v15 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    v17 = (v7 + 32);
    v18 = (v7 + 8);
    do
    {
      sub_10011C7D0(v15, v13);
      sub_10011C7D0(v13, v2);
      if (sub_100024D10(v2, 1, v5) == 1)
      {
        Hasher._combine(_:)(1uLL);
      }

      else
      {
        (*v17)(v1, v2, v5);
        Hasher._combine(_:)(0);
        sub_1005FE610(&qword_100CC75E0, &type metadata accessor for UnitConfiguration.Temperature, &protocol conformance descriptor for UnitConfiguration.Temperature);
        dispatch thunk of Hashable.hash(into:)();
        (*v18)(v1, v5);
      }

      sub_10011CA44(v13, type metadata accessor for UnitsConfigurationViewModel.Temperature);
      v15 += v16;
      --v14;
    }

    while (v14);
  }

  sub_10000536C();
}

void sub_1005FF6A8()
{
  sub_100020DF0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_10008843C(v11, v9);
  if (v0)
  {
    v12 = *(v8(0) - 8);
    v13 = v10 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    sub_1005FE610(v6, v4, v2);
    do
    {
      dispatch thunk of Hashable.hash(into:)();
      v13 += v14;
      --v0;
    }

    while (v0);
  }

  sub_1000212EC();
}

unint64_t sub_1005FF784()
{
  result = qword_100CCB4A0;
  if (!qword_100CCB4A0)
  {
    result = swift_getWitnessTable(byte_100A6ACF8, &type metadata for HourlyForecastComponentViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB4A0);
  }

  return result;
}

uint64_t sub_1005FF7D8(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_10022E824(&qword_100CCB4B0, &qword_100A6A540);
    v10 = sub_1005FE610(a2, type metadata accessor for HourlyForecastComponentViewModel.HourlyItem, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005FF874()
{
  result = qword_100CCB508;
  if (!qword_100CCB508)
  {
    result = swift_getWitnessTable(aI_50, &type metadata for HourlyForecastComponentViewModel.HourlyItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB508);
  }

  return result;
}

void sub_1005FF8C8()
{
  sub_100020DF0();
  v2 = v1;
  sub_10008843C(v3, v1);
  if (v0)
  {
    v4 = v2 + 64;
    do
    {
      v5 = *(v4 - 16);
      v4 += 40;

      v6 = v5;

      sub_100003940();
      String.hash(into:)();
      NSObject.hash(into:)();

      sub_1000370B0();
      String.hash(into:)();
      swift_bridgeObjectRelease_n();

      --v0;
    }

    while (v0);
  }

  sub_1000212EC();
}

void sub_1005FF974(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 == 0.0)
      {
        v6 = 0.0;
      }

      Hasher._combine(_:)(*&v6);
      --v3;
    }

    while (v3);
  }
}

unint64_t sub_1005FF9DC()
{
  result = qword_100CCB510;
  if (!qword_100CCB510)
  {
    result = swift_getWitnessTable(byte_100A6AC58, &type metadata for HourlyForecastComponentViewModel.HourlyItem.HourCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB510);
  }

  return result;
}

unint64_t sub_1005FFA30()
{
  result = qword_100CCB520;
  if (!qword_100CCB520)
  {
    result = swift_getWitnessTable(byte_100A6AC08, &type metadata for HourlyForecastComponentViewModel.HourlyItem.SunsetCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB520);
  }

  return result;
}

unint64_t sub_1005FFA84()
{
  result = qword_100CCB530;
  if (!qword_100CCB530)
  {
    result = swift_getWitnessTable(a9_20, &type metadata for HourlyForecastComponentViewModel.HourlyItem.SunriseCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB530);
  }

  return result;
}

unint64_t sub_1005FFAD8()
{
  result = qword_100CCB570;
  if (!qword_100CCB570)
  {
    result = swift_getWitnessTable(byte_100A6AB68, &type metadata for HourlyForecastComponentViewModel.HourlyItem.HourModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB570);
  }

  return result;
}

uint64_t sub_1005FFB2C(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10022E824(&qword_100CCC930, &qword_100A41810);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005FFB98()
{
  result = qword_100CCB5B8;
  if (!qword_100CCB5B8)
  {
    result = swift_getWitnessTable(byte_100A6AB18, &type metadata for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB5B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HourlyForecastComponentViewModel.HourlyItem.HourModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HourlyForecastComponentViewModel.HourlyItem.HourModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HourlyForecastComponentViewModel.HourlyItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1005FFF28(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for HourlyForecastComponentViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1006000B4()
{
  result = qword_100CCB5C8;
  if (!qword_100CCB5C8)
  {
    result = swift_getWitnessTable(aA_52, &type metadata for HourlyForecastComponentViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB5C8);
  }

  return result;
}

unint64_t sub_10060010C()
{
  result = qword_100CCB5D0;
  if (!qword_100CCB5D0)
  {
    result = swift_getWitnessTable(byte_100A6A758, &type metadata for HourlyForecastComponentViewModel.HourlyItem.HourCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB5D0);
  }

  return result;
}

unint64_t sub_100600164()
{
  result = qword_100CCB5D8;
  if (!qword_100CCB5D8)
  {
    result = swift_getWitnessTable(byte_100A6A810, &type metadata for HourlyForecastComponentViewModel.HourlyItem.SunsetCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB5D8);
  }

  return result;
}

unint64_t sub_1006001BC()
{
  result = qword_100CCB5E0;
  if (!qword_100CCB5E0)
  {
    result = swift_getWitnessTable(a9_21, &type metadata for HourlyForecastComponentViewModel.HourlyItem.SunriseCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB5E0);
  }

  return result;
}

unint64_t sub_100600214()
{
  result = qword_100CCB5E8;
  if (!qword_100CCB5E8)
  {
    result = swift_getWitnessTable(byte_100A6A980, &type metadata for HourlyForecastComponentViewModel.HourlyItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB5E8);
  }

  return result;
}

unint64_t sub_10060026C()
{
  result = qword_100CCB5F0;
  if (!qword_100CCB5F0)
  {
    result = swift_getWitnessTable(byte_100A6AA38, &type metadata for HourlyForecastComponentViewModel.HourlyItem.HourModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB5F0);
  }

  return result;
}

unint64_t sub_1006002C4()
{
  result = qword_100CCB5F8;
  if (!qword_100CCB5F8)
  {
    result = swift_getWitnessTable(byte_100A6AAF0, &type metadata for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB5F8);
  }

  return result;
}

unint64_t sub_10060031C()
{
  result = qword_100CCB600;
  if (!qword_100CCB600)
  {
    result = swift_getWitnessTable(byte_100A6AA60, &type metadata for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB600);
  }

  return result;
}

unint64_t sub_100600374()
{
  result = qword_100CCB608;
  if (!qword_100CCB608)
  {
    result = swift_getWitnessTable(aI_52, &type metadata for HourlyForecastComponentViewModel.HourlyItem.SunriseSetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB608);
  }

  return result;
}

unint64_t sub_1006003CC()
{
  result = qword_100CCB610;
  if (!qword_100CCB610)
  {
    result = swift_getWitnessTable(a9_22, &type metadata for HourlyForecastComponentViewModel.HourlyItem.HourModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB610);
  }

  return result;
}

unint64_t sub_100600424()
{
  result = qword_100CCB618;
  if (!qword_100CCB618)
  {
    result = swift_getWitnessTable(byte_100A6A9D0, &type metadata for HourlyForecastComponentViewModel.HourlyItem.HourModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB618);
  }

  return result;
}

unint64_t sub_10060047C()
{
  result = qword_100CCB620;
  if (!qword_100CCB620)
  {
    result = swift_getWitnessTable(byte_100A6A838, &type metadata for HourlyForecastComponentViewModel.HourlyItem.SunriseCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB620);
  }

  return result;
}

unint64_t sub_1006004D4()
{
  result = qword_100CCB628;
  if (!qword_100CCB628)
  {
    result = swift_getWitnessTable(aQ_59, &type metadata for HourlyForecastComponentViewModel.HourlyItem.SunriseCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB628);
  }

  return result;
}

unint64_t sub_10060052C()
{
  result = qword_100CCB630;
  if (!qword_100CCB630)
  {
    result = swift_getWitnessTable(aA_53, &type metadata for HourlyForecastComponentViewModel.HourlyItem.SunsetCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB630);
  }

  return result;
}

unint64_t sub_100600584()
{
  result = qword_100CCB638;
  if (!qword_100CCB638)
  {
    result = swift_getWitnessTable(asc_100A6A7A8, &type metadata for HourlyForecastComponentViewModel.HourlyItem.SunsetCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB638);
  }

  return result;
}

unint64_t sub_1006005DC()
{
  result = qword_100CCB640;
  if (!qword_100CCB640)
  {
    result = swift_getWitnessTable(byte_100A6A6C8, &type metadata for HourlyForecastComponentViewModel.HourlyItem.HourCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB640);
  }

  return result;
}

unint64_t sub_100600634()
{
  result = qword_100CCB648;
  if (!qword_100CCB648)
  {
    result = swift_getWitnessTable(byte_100A6A6F0, &type metadata for HourlyForecastComponentViewModel.HourlyItem.HourCodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB648);
  }

  return result;
}

unint64_t sub_10060068C()
{
  result = qword_100CCB650;
  if (!qword_100CCB650)
  {
    result = swift_getWitnessTable(byte_100A6A8F0, &type metadata for HourlyForecastComponentViewModel.HourlyItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB650);
  }

  return result;
}

unint64_t sub_1006006E4()
{
  result = qword_100CCB658;
  if (!qword_100CCB658)
  {
    result = swift_getWitnessTable(byte_100A6A918, &type metadata for HourlyForecastComponentViewModel.HourlyItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB658);
  }

  return result;
}

unint64_t sub_10060073C()
{
  result = qword_100CCB660;
  if (!qword_100CCB660)
  {
    result = swift_getWitnessTable(byte_100A6A610, &type metadata for HourlyForecastComponentViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB660);
  }

  return result;
}

unint64_t sub_100600794()
{
  result = qword_100CCB668;
  if (!qword_100CCB668)
  {
    result = swift_getWitnessTable(byte_100A6A638, &type metadata for HourlyForecastComponentViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB668);
  }

  return result;
}

uint64_t sub_1006007F0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  sub_100035AD0(v1 + *(v13 + 40), v12, &qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_1006009D0()
{
  type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  sub_10022C350(&qword_100CCB838, &qword_100A6AEA0);
  State.wrappedValue.getter();
  sub_100166DD4(0, v0);
}

uint64_t sub_100600A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Location.Identifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  result = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  if ((*(a3 + *(result + 28)) & 1) == 0)
  {
    v19 = result;
    v20 = *(result + 24);
    v21 = *(v6 + 16);
    v32 = a3;
    v21(v17, a3 + v20, v5);
    sub_10001B350(v17, 0, 1, v5);
    v22 = *(v9 + 48);
    v31 = a2;
    sub_100035AD0(a2, v11, &qword_100CADBA0, &qword_100A3D250);
    sub_100035AD0(v17, &v11[v22], &qword_100CADBA0, &qword_100A3D250);
    if (sub_100024D10(v11, 1, v5) == 1)
    {
      sub_1000180EC(v17, &qword_100CADBA0, &qword_100A3D250);
      if (sub_100024D10(&v11[v22], 1, v5) == 1)
      {
        sub_1000180EC(v11, &qword_100CADBA0, &qword_100A3D250);
        v23 = v32;
        return sub_100166F44(*(v23 + 80), v31);
      }
    }

    else
    {
      sub_100035AD0(v11, v14, &qword_100CADBA0, &qword_100A3D250);
      if (sub_100024D10(&v11[v22], 1, v5) != 1)
      {
        (*(v6 + 32))(v8, &v11[v22], v5);
        sub_100061E3C(&qword_100CA3A48, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        v29 = *(v6 + 8);
        v29(v8, v5);
        sub_1000180EC(v17, &qword_100CADBA0, &qword_100A3D250);
        v29(v14, v5);
        sub_1000180EC(v11, &qword_100CADBA0, &qword_100A3D250);
        v23 = v32;
        if (v28)
        {
          return sub_100166F44(*(v23 + 80), v31);
        }

LABEL_8:
        v24 = (v23 + *(v19 + 36));
        v26 = *v24;
        v25 = v24[1];
        v33 = v26;
        v34 = v25;
        sub_10022C350(&qword_100CCB838, &qword_100A6AEA0);
        State.wrappedValue.getter();
        sub_100166DD4(0, v27);
      }

      sub_1000180EC(v17, &qword_100CADBA0, &qword_100A3D250);
      (*(v6 + 8))(v14, v5);
    }

    sub_1000180EC(v11, &qword_100CADD58, &unk_100A3E650);
    v23 = v32;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_100600E64(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = *(a1 + 80);
  v6 = type metadata accessor for Location.Identifier();
  sub_10001B350(v4, 1, 1, v6);
  sub_100166F44(v5, v4);
  return sub_1000180EC(v4, &qword_100CADBA0, &qword_100A3D250);
}

uint64_t sub_100600F28(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = *a2;
  v7 = type metadata accessor for Location.Identifier();
  sub_10001B350(v5, 1, 1, v7);
  sub_100166F44(v6, v5);
  return sub_1000180EC(v5, &qword_100CADBA0, &qword_100A3D250);
}

uint64_t sub_100601010()
{
  v0 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  sub_100003810(v0);
  v1 = sub_1000081A4();

  return sub_100600A44(v1, v2, v3);
}

uint64_t sub_100601094()
{
  v0 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  sub_100003810(v0);
  v1 = sub_1000081A4();

  return sub_100600F28(v1, v2);
}

void sub_100601100(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v84 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v79 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v15 = *v11;
        v14 = v11 + 4;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 2;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6 - 16;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = *(v24 + v12);
                *(v24 + v12) = *(v24 + v21);
                *(v24 + v21) = v25;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
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
            v26 = *a3;
            v27 = *a3 + 16 * v9 - 16;
            v28 = v7 - v9;
            do
            {
              v29 = *(v26 + 16 * v9);
              v30 = v28;
              v31 = v27;
              do
              {
                if (v29 >= *v31)
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_111;
                }

                v32 = *(v31 + 24);
                *(v31 + 16) = *v31;
                *v31 = v29;
                *(v31 + 8) = v32;
                v31 -= 16;
              }

              while (!__CFADD__(v30++, 1));
              ++v9;
              v27 += 16;
              --v28;
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

      v81 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10011E564();
        v8 = v77;
      }

      v34 = v8[2];
      v35 = v34 + 1;
      if (v34 >= v8[3] >> 1)
      {
        sub_10011E564();
        v8 = v78;
      }

      v8[2] = v35;
      v36 = v8 + 4;
      v37 = &v8[2 * v34 + 4];
      *v37 = v7;
      v37[1] = v9;
      v82 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v34)
      {
        while (1)
        {
          v38 = v35 - 1;
          v39 = &v36[2 * v35 - 2];
          v40 = &v8[2 * v35];
          if (v35 >= 4)
          {
            break;
          }

          if (v35 == 3)
          {
            v41 = v8[4];
            v42 = v8[5];
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_56:
            if (v44)
            {
              goto LABEL_96;
            }

            v56 = *v40;
            v55 = v40[1];
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_99;
            }

            v60 = v39[1];
            v61 = v60 - *v39;
            if (__OFSUB__(v60, *v39))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v58, v61))
            {
              goto LABEL_104;
            }

            if (v58 + v61 >= v43)
            {
              if (v43 < v61)
              {
                v38 = v35 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v35 < 2)
          {
            goto LABEL_98;
          }

          v63 = *v40;
          v62 = v40[1];
          v51 = __OFSUB__(v62, v63);
          v58 = v62 - v63;
          v59 = v51;
LABEL_71:
          if (v59)
          {
            goto LABEL_101;
          }

          v65 = *v39;
          v64 = v39[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_103;
          }

          if (v66 < v58)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v38 - 1 >= v35)
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

          v70 = &v36[2 * v38 - 2];
          v71 = *v70;
          v72 = &v36[2 * v38];
          v73 = v72[1];
          sub_100601700((*a3 + 16 * *v70), (*a3 + 16 * *v72), (*a3 + 16 * v73), v82);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v73 < v71)
          {
            goto LABEL_91;
          }

          v74 = v8;
          v75 = v8[2];
          if (v38 > v75)
          {
            goto LABEL_92;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v38 >= v75)
          {
            goto LABEL_93;
          }

          v35 = v75 - 1;
          memmove(&v36[2 * v38], v72 + 2, 16 * (v75 - 1 - v38));
          v74[2] = v75 - 1;
          v76 = v75 > 2;
          v8 = v74;
          v5 = 0;
          if (!v76)
          {
            goto LABEL_85;
          }
        }

        v45 = &v36[2 * v35];
        v46 = *(v45 - 8);
        v47 = *(v45 - 7);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_94;
        }

        v50 = *(v45 - 6);
        v49 = *(v45 - 5);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_95;
        }

        v52 = v40[1];
        v53 = v52 - *v40;
        if (__OFSUB__(v52, *v40))
        {
          goto LABEL_97;
        }

        v51 = __OFADD__(v43, v53);
        v54 = v43 + v53;
        if (v51)
        {
          goto LABEL_100;
        }

        if (v54 >= v48)
        {
          v68 = *v39;
          v67 = v39[1];
          v51 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v51)
          {
            goto LABEL_105;
          }

          if (v43 < v69)
          {
            v38 = v35 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v81;
      a4 = v79;
      if (v81 >= v6)
      {
        v84 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1006015D4(&v84, *a1, a3);
LABEL_89:
}

uint64_t sub_1006015D4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100308E24();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_100601700((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_100601700(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1006A06F8(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1006A06F8(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v10 - 2) < *v14)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

double sub_100601884(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2338 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2348 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2340 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2330 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2328 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:

  return result;
}

void *sub_1006019F0(char a1, char a2, uint64_t a3)
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
  sub_100601884(a1, a2);
  v38 = v37;
  v39 = OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_map;
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
  sub_10031694C(a3 + *(v40 + 20) + OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
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

uint64_t sub_100602074(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v131 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100024D10(v5, 1, v6);
  v135 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008, &unk_100A2F7B0);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    sub_10001361C(v16, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_airQuality);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10000E904(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10000E904(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v30 = sub_100013600();
    sub_100003E18(v30);
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_newsArticle);
    *(v12 + 128) = sub_1001B38A0(v30);
    *(v12 + 136) = v31;
    *(v12 + 144) = v32;
    v132 = v13 + 2 * v14;
    v133 = v14;
    v33 = v14;
    v34 = v15;
    v35 = swift_allocObject();
    v36 = sub_10001361C(v35, xmmword_100A2D320) + v13;
    v37 = a1;
    v38 = *(a1 + 16);
    v39 = v37;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v38 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v36[v33], v7);
    *(v12 + 152) = sub_1001B38A0(v35);
    *(v12 + 160) = v40;
    *(v12 + 168) = v41;
    v134 = v34;
    v42 = swift_allocObject();
    sub_1000056EC(v42);
    v44 = v43 + v13;
    v45 = *(v39 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v45 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, &v133[v44], v7);
    *(v12 + 176) = sub_1001B38A0(v35);
    *(v12 + 184) = v46;
    *(v12 + 192) = v47;
    v48 = swift_allocObject();
    sub_1000056EC(v48);
    v50 = v49 + v13;
    v51 = v135;
    v52 = *(v135 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v53 = v133;
    sub_10031694C(v52 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, &v133[v50], v7);
    *(v12 + 200) = sub_1001B38A0(v35);
    *(v12 + 208) = v54;
    *(v12 + 216) = v55;
    v56 = sub_10000C998();
    sub_1000056EC(v56);
    v58 = v57 + v13;
    v59 = *(v51 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v60 = v58 + v53;
    v61 = v53;
    sub_10031694C(v59 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v60, v7);
    *(v12 + 224) = sub_1001B38A0(v35);
    *(v12 + 232) = v62;
    *(v12 + 240) = v63;
    v64 = sub_10000C998();
    sub_100003E18(v64);
    v66 = v65 + v13;
    v67 = *(v51 + 16);
    sub_10031694C(v67 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v65 + v13, v7);
    sub_10031694C(v67 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v66 + v61, v7);
    *(v12 + 248) = sub_1001B38A0(v64);
    *(v12 + 256) = v68;
    *(v12 + 264) = v69;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3BCA0;
    v70 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v71 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v72 = *(v7 + 72);
    v73 = *(v7 + 80);
    v74 = v70;
    v75 = swift_allocObject();
    sub_10001361C(v75, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v76, v75 + v71, v77);
    *(v12 + 32) = sub_1001B38A0(v75);
    *(v12 + 40) = v78;
    *(v12 + 48) = v79;
    sub_1000167B0();
    v80 = swift_allocObject();
    sub_1000056EC(v80);
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_airQuality);
    *(v12 + 56) = sub_1001B38A0(v75);
    *(v12 + 64) = v81;
    *(v12 + 72) = v82;
    sub_1000167B0();
    v83 = swift_allocObject();
    sub_1000056EC(v83);
    sub_10002C5F4(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast);
    *(v12 + 80) = sub_1001B38A0(v75);
    *(v12 + 88) = v84;
    *(v12 + 96) = v85;
    sub_1000167B0();
    v86 = swift_allocObject();
    sub_1000056EC(v86);
    sub_10002C5F4(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
    *(v12 + 104) = sub_1001B38A0(v75);
    *(v12 + 112) = v87;
    *(v12 + 120) = v88;
    sub_1000167B0();
    v89 = swift_allocObject();
    sub_1000056EC(v89);
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_newsArticle);
    *(v12 + 128) = sub_1001B38A0(v75);
    *(v12 + 136) = v90;
    *(v12 + 144) = v91;
    v134 = v73;
    v92 = swift_allocObject();
    sub_1000056EC(v92);
    sub_10031694C(v9, v93 + v71, v7);
    *(v12 + 152) = sub_1001B38A0(v75);
    *(v12 + 160) = v94;
    *(v12 + 168) = v95;
    v96 = v71 + 2 * v72;
    v97 = v72;
    sub_1000167B0();
    v98 = swift_allocObject();
    v99 = sub_10001361C(v98, xmmword_100A2D320);
    v133 = v9;
    v100 = v99 + v71;
    v101 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v131[0] = v97;
    sub_10031694C(v101 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v100[v97], v7);
    *(v12 + 176) = sub_1001B38A0(v98);
    *(v12 + 184) = v102;
    *(v12 + 192) = v103;
    v131[1] = v96;
    v104 = swift_allocObject();
    sub_100003E18(v104);
    v106 = v105 + v71;
    v107 = v135;
    v108 = *(v135 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v108 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v106 + v97, v7);
    *(v12 + 200) = sub_1001B38A0(v104);
    *(v12 + 208) = v109;
    *(v12 + 216) = v110;
    sub_1000167B0();
    v132 = v74;
    v111 = swift_allocObject();
    sub_100003E18(v111);
    v113 = v112 + v71;
    v114 = *(v107 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v115 = v131[0];
    sub_10031694C(v114 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v113 + v131[0], v7);
    *(v12 + 224) = sub_1001B38A0(v111);
    *(v12 + 232) = v116;
    *(v12 + 240) = v117;
    sub_1000167B0();
    v118 = swift_allocObject();
    sub_100003E18(v118);
    v120 = v119 + v71;
    v121 = *(v107 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v121 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v120 + v115, v7);
    *(v12 + 248) = sub_1001B38A0(v118);
    *(v12 + 256) = v122;
    *(v12 + 264) = v123;
    v124 = swift_allocObject();
    sub_100003E18(v124);
    v126 = v125 + v71;
    v127 = *(v135 + 16);
    sub_10031694C(v127 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v125 + v71, v7);
    sub_10031694C(v127 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v126 + v115, v7);
    *(v12 + 272) = sub_1001B38A0(v124);
    *(v12 + 280) = v128;
    *(v12 + 288) = v129;
    sub_1003169AC(v133, v7);
  }

  return v12;
}

void sub_10060294C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A2C3F0;
  v22[0] = xmmword_100A2C3F0;
  v22[1] = xmmword_100A3BB90;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3BBA0;
  v20[0] = xmmword_100A3BBB0;
  v20[1] = xmmword_100A3BBC0;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A3BB70;
  v19[1] = xmmword_100A3BBD0;
  v18[0] = xmmword_100A2C3F0;
  v18[1] = xmmword_100A3BBC0;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A3BBE0;
  v16[0] = xmmword_100A3BBB0;
  v16[1] = xmmword_100A3BB90;
  v30 = v17;
  v31 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BB80;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBF0;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC10;
  v36 = v11;
  v37 = &v10;
  sub_100017704(&v9, a2, a3, a4, a5, a6, a7, a8, 0, 1, 10, 11, 0, 1, 12, 13, 0, 1, 9, 10);
  qword_100D90528 = v8;
}

void sub_100602A74()
{
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBC0;
  v16 = v15;
  v17 = v14;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3BBA0;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BC10;
  v18 = v13;
  v19 = v12;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A3BBD0;
  v10[0] = xmmword_100A2C3F0;
  v10[1] = xmmword_100A3BC10;
  v20 = v11;
  v21 = v10;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BBC0;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A3BB80;
  v22 = v9;
  v23 = v8;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC00;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC20;
  v24 = v7;
  v25 = v6;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BC30;
  v26 = v5;
  v27 = v4;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BC30;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC00;
  v28 = v3;
  v29 = v2;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC20;
  v30 = v1;
  sub_100556A74();
  qword_100D90530 = v0;
}

void sub_100602B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27[0] = xmmword_100A3BB70;
  v27[1] = xmmword_100A2C3F0;
  v26[0] = xmmword_100A3BC40;
  v26[1] = xmmword_100A3BC30;
  v28 = v27;
  v29 = v26;
  v25[0] = xmmword_100A3BB70;
  v25[1] = xmmword_100A3BBA0;
  v24[0] = xmmword_100A3BBD0;
  v24[1] = xmmword_100A3BB80;
  v30 = v25;
  v31 = v24;
  v22[0] = 0;
  v22[1] = 4;
  v23 = xmmword_100A3BBD0;
  v21[0] = xmmword_100A3BBB0;
  v21[1] = xmmword_100A3BC30;
  v32 = v22;
  v33 = v21;
  v18 = 2;
  v19 = xmmword_100A3F980;
  v20 = 2;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A3BB80;
  v34 = &v18;
  v35 = v17;
  v15[0] = 2;
  v15[1] = 4;
  v16 = xmmword_100A3BC40;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BC30;
  v36 = v15;
  v37 = v14;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BB80;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v38 = v13;
  v39 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC50;
  v40 = v11;
  v41 = &v10;
  sub_100017704(v9, a2, a3, a4, a5, a6, a7, a8, 2, 4, 4, 5, 1, 2, 7, 8, 2, 3, 5, 6);
  qword_100D90538 = v8;
}

void sub_100602CDC()
{
  v15[0] = 2;
  v15[1] = 4;
  v16 = xmmword_100A3BBB0;
  v14[0] = xmmword_100A3BC40;
  v14[1] = xmmword_100A3BB80;
  v17 = v15;
  v18 = v14;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3AEB0;
  v12[0] = xmmword_100A3BBD0;
  v12[1] = xmmword_100A3BC50;
  v19 = v13;
  v20 = v12;
  v11[0] = xmmword_100A3BC80;
  v11[1] = xmmword_100A2C3F0;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BB80;
  v21 = v11;
  v22 = v10;
  v9[0] = xmmword_100A3BB70;
  v9[1] = xmmword_100A3BC50;
  v8[0] = xmmword_100A2D320;
  v8[1] = xmmword_100A3BBD0;
  v23 = v9;
  v24 = v8;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BB80;
  v6[0] = xmmword_100A3BC40;
  v6[1] = xmmword_100A3BC50;
  v25 = v7;
  v26 = v6;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC60;
  v27 = v5;
  v28 = v4;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC60;
  v2[0] = xmmword_100A2C3F0;
  v2[1] = xmmword_100A3BB80;
  v29 = v3;
  v30 = v2;
  v1[0] = xmmword_100A2D320;
  v1[1] = xmmword_100A3BC40;
  v31 = v1;
  sub_100556A74();
  qword_100D90540 = v0;
}

void sub_100602E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A2D320;
  v23[1] = xmmword_100A3BBB0;
  v22[0] = xmmword_100A3BC50;
  v22[1] = xmmword_100A3BC60;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3AEB0;
  v20[0] = xmmword_100A3BC60;
  v20[1] = xmmword_100A3BC40;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A3BC80;
  v19[1] = xmmword_100A2C3F0;
  v18[0] = xmmword_100A3BC50;
  v18[1] = xmmword_100A3BC40;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BC90;
  v17[1] = xmmword_100A3BB70;
  v16[0] = xmmword_100A3BBD0;
  v16[1] = xmmword_100A3BC60;
  v30 = v17;
  v31 = v16;
  v15[0] = xmmword_100A2D320;
  v15[1] = xmmword_100A3BBD0;
  v14[0] = xmmword_100A3BC60;
  v14[1] = xmmword_100A3BC60;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A3BC50;
  v13[1] = xmmword_100A3BBD0;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC40;
  v36 = v11;
  v37 = &v10;
  sub_100017704(&v9, a2, a3, a4, a5, a6, a7, a8, 4, 5, 2, 3, 3, 4, 4, 5, 2, 3, 3, 4);
  qword_100D90548 = v8;
}

uint64_t sub_100602F2C(uint64_t a1, void (*a2)(char *))
{
  v38 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003848();
  v41 = v6;
  __chkstk_darwin(v7);
  sub_100003878();
  v40 = v8;
  __chkstk_darwin(v9);
  sub_100003878();
  v39 = v10;
  __chkstk_darwin(v11);
  sub_100013628();
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for LocationViewComponent(0);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v36 - v27;

  sub_1005D71C4(v29, a2);
  v37 = v30;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather42LocationElevatedAqiSevereNewsConfiguration8_Storage_map, v21, type metadata accessor for LocationViewComponent);
  a2(v21);
  sub_100020648();
  sub_10001B350(v28, 0, 1, v38);
  sub_1000176E8(OBJC_IVAR____TtCV7Weather42LocationElevatedAqiSevereNewsConfiguration8_Storage_airQuality);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather42LocationElevatedAqiSevereNewsConfiguration8_Storage_newsArticle);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather42LocationElevatedAqiSevereNewsConfiguration8_Storage_severeAlert);
  a2(v21);
  sub_100020648();
  sub_100035AD0(v28, v25, &qword_100CA5008, &unk_100A2F7B0);
  v31 = v39;
  sub_10031694C(v17, v39, type metadata accessor for LocationComponentContainerViewModel);
  v32 = v40;
  sub_10031694C(v14, v40, type metadata accessor for LocationComponentContainerViewModel);
  v33 = v41;
  sub_10031694C(v2, v41, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for ElevatedAqiSevereNewsContent._Storage(0);
  swift_allocObject();
  v34 = sub_1002BEF38(v37, v25, v31, v32, v33);
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v17, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v28, &qword_100CA5008, &unk_100A2F7B0);
  return v34;
}

uint64_t sub_1006032C0@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CCB850, &qword_100A6AF88);
  a1[4] = sub_1006033EC();
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100603358(uint64_t a1)
{
  sub_100603450();

  return ShortDescribable.description.getter();
}

unint64_t sub_100603398()
{
  result = qword_100CCB848;
  if (!qword_100CCB848)
  {
    result = swift_getWitnessTable(byte_100A6AF30, &type metadata for AirQualityDetailViewAction, v0, v1);
    atomic_store(result, &qword_100CCB848);
  }

  return result;
}

unint64_t sub_1006033EC()
{
  result = qword_100CCB858;
  if (!qword_100CCB858)
  {
    v3 = sub_10022E824(&qword_100CCB850, &qword_100A6AF88);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CCB858);
  }

  return result;
}

unint64_t sub_100603450()
{
  result = qword_100CCB860;
  if (!qword_100CCB860)
  {
    result = swift_getWitnessTable(asc_100A6AF58, &type metadata for AirQualityDetailViewAction, v0, v1);
    atomic_store(result, &qword_100CCB860);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirQualityDetailViewAction(_BYTE *result, int a2, int a3)
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

unint64_t sub_100603554()
{
  result = qword_100CCB868;
  if (!qword_100CCB868)
  {
    result = swift_getWitnessTable(byte_100A6AFEC, &type metadata for AirQualityDetailViewAction, v0, v1);
    atomic_store(result, &qword_100CCB868);
  }

  return result;
}

uint64_t sub_1006035D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000100ABB010 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6552656372756F73 && a2 == 0xEA00000000007463)
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

uint64_t sub_1006036F0(char a1)
{
  if (!a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x6552656372756F73;
}

BOOL sub_100603750(uint64_t a1, uint64_t a2)
{
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HomeAndWorkRefinementViewState(0);
  if ((static LocationOfInterest.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 32);
  v8 = a2 + v5;
  if ((v7 & 1) == 0)
  {
    return (*(v8 + 32) & 1) == 0 && CGRectEqualToRect(*v6, *v8);
  }

  return (*(v8 + 32) & 1) != 0;
}

uint64_t sub_1006037EC(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CCB920, &qword_100A6B168);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v22[-v9];
  sub_1000161C0(a1, a1[3]);
  sub_100604130();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v23) = 0;
  type metadata accessor for Location();
  sub_100010570();
  sub_1006042A8(v11, v12, &protocol conformance descriptor for Location);
  sub_1000058DC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for HomeAndWorkRefinementViewState(0);
    LOBYTE(v23) = 1;
    type metadata accessor for LocationOfInterest();
    sub_10001C7B8();
    sub_1006042A8(v14, v15, &protocol conformance descriptor for LocationOfInterest);
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = (v3 + *(v13 + 24));
    v17 = *(v16 + 32);
    v18 = v16[1];
    v23 = *v16;
    v24 = v18;
    v25 = v17;
    v22[15] = 2;
    type metadata accessor for CGRect(0);
    sub_10000633C();
    sub_1006042A8(v19, v20, &protocol conformance descriptor for CGRect);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100603A18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v46 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v43 = v3;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for Location();
  sub_1000037C4();
  v44 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v47 = v12 - v11;
  v48 = sub_10022C350(&qword_100CCB910, &qword_100A6B160);
  sub_1000037C4();
  v45 = v13;
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  v17 = type metadata accessor for HomeAndWorkRefinementViewState(0);
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  sub_1000161C0(a1, a1[3]);
  sub_100604130();
  v49 = v16;
  v21 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return sub_100006F14(a1);
  }

  v50 = a1;
  v22 = v20;
  v24 = v45;
  v23 = v46;
  LOBYTE(v51) = 0;
  sub_100010570();
  sub_1006042A8(v25, v26, &protocol conformance descriptor for Location);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = *(v44 + 32);
  v41 = v22;
  v28 = v47;
  v47 = v8;
  v27(v22, v28, v8);
  LOBYTE(v51) = 1;
  sub_10001C7B8();
  sub_1006042A8(v29, v30, &protocol conformance descriptor for LocationOfInterest);
  v31 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v41;
  (*(v43 + 32))(v41 + *(v17 + 20), v7, v31);
  type metadata accessor for CGRect(0);
  v54 = 2;
  sub_10000633C();
  sub_1006042A8(v33, v34, &protocol conformance descriptor for CGRect);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v32;
  v36 = v50;
  v37 = v35 + *(v17 + 24);
  (*(v24 + 8))(v49, v48);
  v38 = v53;
  v39 = v52;
  *v37 = v51;
  *(v37 + 16) = v39;
  *(v37 + 32) = v38;
  sub_100604184(v35, v42);
  sub_100006F14(v36);
  return sub_1006041E8(v35);
}

uint64_t sub_100603EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006035D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100603ED8(uint64_t a1)
{
  v2 = sub_100604130();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100603F14(uint64_t a1)
{
  v2 = sub_100604130();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100603FB4@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CCB928, &qword_100A6B170);
  a1[4] = sub_100604244();
  sub_100042FB0(a1);
  type metadata accessor for HomeAndWorkRefinementViewState(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10060407C(uint64_t a1)
{
  sub_1006042A8(&qword_100CCB938, type metadata accessor for HomeAndWorkRefinementViewState, byte_100A6B068);

  return ShortDescribable.description.getter();
}

unint64_t sub_100604130()
{
  result = qword_100CCB918;
  if (!qword_100CCB918)
  {
    result = swift_getWitnessTable(byte_100A6B23C, &type metadata for HomeAndWorkRefinementViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB918);
  }

  return result;
}

uint64_t sub_100604184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAndWorkRefinementViewState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006041E8(uint64_t a1)
{
  v2 = type metadata accessor for HomeAndWorkRefinementViewState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100604244()
{
  result = qword_100CCB930;
  if (!qword_100CCB930)
  {
    v3 = sub_10022E824(&qword_100CCB928, &qword_100A6B170);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CCB930);
  }

  return result;
}

uint64_t sub_1006042A8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

_BYTE *storeEnumTagSinglePayload for HomeAndWorkRefinementViewState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1006043D0()
{
  result = qword_100CCB940;
  if (!qword_100CCB940)
  {
    result = swift_getWitnessTable(byte_100A6B214, &type metadata for HomeAndWorkRefinementViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB940);
  }

  return result;
}

unint64_t sub_100604428()
{
  result = qword_100CCB948;
  if (!qword_100CCB948)
  {
    result = swift_getWitnessTable(asc_100A6B184, &type metadata for HomeAndWorkRefinementViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB948);
  }

  return result;
}

unint64_t sub_100604480()
{
  result = qword_100CCB950;
  if (!qword_100CCB950)
  {
    result = swift_getWitnessTable(asc_100A6B1AC, &type metadata for HomeAndWorkRefinementViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCB950);
  }

  return result;
}

uint64_t sub_1006044D4(uint64_t a1, uint64_t a2)
{
  sub_1000BA6B4();
  if ((v4 & 1) == 0)
  {
    goto LABEL_24;
  }

  type metadata accessor for NotificationsOptInInput(0);
  sub_100003CE8();
  if (!v14)
  {
    goto LABEL_24;
  }

  v6 = v5;
  v7 = *(v5 + 24);
  v8 = *(a2 + v7);
  v9 = LocationAuthorizationState.rawValue.getter(*(a1 + v7));
  v11 = v10;
  v12 = LocationAuthorizationState.rawValue.getter(v8);
  v14 = v9 == v12 && v11 == v13;
  if (v14)
  {
  }

  else
  {
    v15 = sub_10001C7D0(v12);

    if ((v15 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (sub_1000BA238())
  {
    v16 = *(v6 + 32);
    v17 = *(a2 + v16);
    v18 = PredictedLocationsAuthorizationState.rawValue.getter(*(a1 + v16));
    v20 = v19;
    v21 = PredictedLocationsAuthorizationState.rawValue.getter(v17);
    if (v18 == v21 && v20 == v22)
    {
    }

    else
    {
      v24 = sub_10001C7D0(v21);

      if ((v24 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    sub_100003CE8();
    if (v14)
    {
      sub_100003CE8();
      if (v14)
      {
        sub_100003CE8();
        if (v14)
        {
          v25 = *(a1 + *(v6 + 48)) ^ *(a2 + *(v6 + 48)) ^ 1;
          return v25 & 1;
        }
      }
    }
  }

LABEL_24:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_100604644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC8AC(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v6, type metadata accessor for ModalViewState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *(*v6 + 22);
  }

  else
  {
    sub_10037B08C(v6);
    v7 = 0;
  }

  sub_1000BC8AC(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, a2, type metadata accessor for ViewState);
  v8 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v9 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
  v10 = *(v8 + 1);
  LOBYTE(v8) = *(v8 + 2);
  v11 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
  v12 = type metadata accessor for NotificationsOptInState(0);
  v13 = *(v11 + v12[15]);
  v14 = *(v11 + v12[18]);
  v15 = *(v11 + v12[16]);
  LOBYTE(v11) = *(v11 + v12[17]);
  v16 = type metadata accessor for NotificationsOptInInput(0);
  *(a2 + v16[5]) = v7;
  *(a2 + v16[6]) = v10;
  *(a2 + v16[7]) = v9;
  *(a2 + v16[8]) = v8;
  *(a2 + v16[9]) = v13;
  *(a2 + v16[10]) = v14;
  *(a2 + v16[11]) = v15;
  *(a2 + v16[12]) = v11;
  return sub_10001B350(a2, 0, 1, v16);
}

id sub_100604878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = String._bridgeToObjectiveC()();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

id sub_100604930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v8 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10030DC80;
  v12[3] = &unk_100C62980;
  v9 = _Block_copy(v12);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

uint64_t sub_100604A38()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000037C4();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  sub_1000037D8();
  sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  static DispatchQoS.background.getter();
  sub_10060CE70(&qword_100CA2E50, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10022C350(&qword_100CA2E58, &qword_100A2C5A0);
  sub_100006F64(&qword_100CA2E60, &qword_100CA2E58, &qword_100A2C5A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_100604C7C(const char *a1, void *a2, void (*a3)())
{
  v50 = a2;
  v5 = type metadata accessor for DebugModel();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_10060C6BC;
  v9[1] = a3;
  v10 = enum case for DebugModel.action(_:);
  v11 = *(v6 + 104);
  (v11)(v9, enum case for DebugModel.action(_:), v5, v7);

  dispatch thunk of DebugDataSource.add(_:_:)();
  v12 = *(v6 + 8);
  v12(v9, v5);
  *v9 = sub_10060C6C4;
  v9[1] = a3;
  v45 = v10;
  v11(v9, v10, v5);

  dispatch thunk of DebugDataSource.add(_:_:)();
  v12(v9, v5);
  *v9 = sub_100606904;
  v9[1] = 0;
  v11(v9, enum case for DebugModel.modalPopover(_:), v5);
  v43[2] = 0xD000000000000012;
  v13 = a1;
  dispatch thunk of DebugDataSource.add(_:_:)();
  v12(v9, v5);
  *v9 = sub_100606A78;
  v9[1] = 0;
  v44 = enum case for DebugModel.modal(_:);
  (v11)(v9);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v12(v9, v5);
  v14 = v50;
  sub_100035B30(v50, v55);
  v15 = swift_allocObject();
  sub_100013188(v55, v15 + 16);
  *v9 = sub_10060C6CC;
  v9[1] = v15;
  v16 = enum case for DebugModel.page(_:);
  v11(v9, enum case for DebugModel.page(_:), v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v12(v9, v5);
  sub_100035B30(v14, v55);
  v17 = swift_allocObject();
  sub_100013188(v55, v17 + 16);
  *v9 = sub_10060C6F4;
  v9[1] = v17;
  v47 = v16;
  v48 = v11;
  v51 = v6 + 104;
  v11(v9, v16, v5);
  v18 = v13;
  dispatch thunk of DebugDataSource.add(_:_:)();
  v49 = v12;
  v52 = v6 + 8;
  v12(v9, v5);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Features.locationIntelligence.getter();
  LOBYTE(v14) = SettingReader.isEnabled(_:with:)();

  if (v14)
  {
    sub_100035B30(v50, v55);
    v19 = swift_allocObject();
    sub_100013188(v55, v19 + 16);
    *v9 = sub_10060C79C;
    v9[1] = v19;
    (v48)(v9, v47, v5);
    dispatch thunk of DebugDataSource.add(_:_:)();
    v49(v9, v5);
  }

  v20 = v50;
  sub_100035B30(v50, v55);
  v21 = swift_allocObject();
  sub_100013188(v55, v21 + 16);
  *v9 = sub_10060C71C;
  v9[1] = v21;
  v22 = v47;
  v23 = v48;
  (v48)(v9, v47, v5);
  v24 = v23;
  dispatch thunk of DebugDataSource.add(_:_:)();
  v25 = v49;
  v49(v9, v5);
  sub_100035B30(v20, v55);
  v26 = swift_allocObject();
  sub_100013188(v55, v26 + 16);
  *v9 = sub_10060C724;
  v9[1] = v26;
  (v23)(v9, v22, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v25(v9, v5);
  v46 = "Location Syncing Playground";
  sub_100035B30(v20, v55);
  v27 = swift_allocObject();
  sub_100013188(v55, v27 + 16);
  *v9 = sub_10060C72C;
  v9[1] = v27;
  (v23)(v9, v22, v5);
  v46 = v18;
  dispatch thunk of DebugDataSource.add(_:_:)();
  v25(v9, v5);
  v28 = v25;
  type metadata accessor for DebugDataSource();
  swift_allocObject();
  v29 = DebugDataSource.init()();
  sub_100035B30(v20, v55);
  v30 = swift_allocObject();
  sub_100013188(v55, v30 + 16);
  *v9 = sub_10060C754;
  v9[1] = v30;
  (v24)(v9, v22, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v28(v9, v5);
  sub_100035B30(v20, v55);
  v31 = swift_allocObject();
  sub_100013188(v55, v31 + 16);
  *v9 = sub_10060C77C;
  v9[1] = v31;
  (v24)(v9, v22, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v28(v9, v5);
  *v9 = sub_1006071E4;
  v9[1] = 0;
  (v24)(v9, v22, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v28(v9, v5);
  *v9 = sub_100607274;
  v9[1] = 0;
  (v24)(v9, v22, v5);
  v32 = v29;
  dispatch thunk of DebugDataSource.add(_:_:)();
  v28(v9, v5);
  v33 = v50;
  sub_1000161C0(v50, v50[3]);
  sub_10022C350(&qword_100CCBB68, &qword_100A6B420);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v54)
  {
    sub_100013188(&v53, v55);
    sub_100035B30(v55, &v53);
    v34 = swift_allocObject();
    sub_100013188(&v53, v34 + 16);
    *v9 = sub_10060C794;
    v9[1] = v34;
    v35 = v48;
    (v48)(v9, v47, v5);
    dispatch thunk of DebugDataSource.add(_:_:)();
    v49(v9, v5);
    sub_100006F14(v55);
    v36 = v35;
  }

  else
  {
    sub_1000180EC(&v53, &qword_100CCBB70, &qword_100A6B428);
    v36 = v48;
  }

  *v9 = v32;
  v43[1] = v32;
  (v36)(v9, enum case for DebugModel.dataSource(_:), v5);

  dispatch thunk of DebugDataSource.add(_:_:)();
  v37 = v49;
  v49(v9, v5);
  v48 = "Browse Weather & System Data";
  sub_100035B30(v33, v55);
  v38 = swift_allocObject();
  sub_100013188(v55, v38 + 16);
  *v9 = sub_10060C784;
  v9[1] = v38;
  v39 = v44;
  (v36)(v9, v44, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v37(v9, v5);
  sub_100035B30(v33, v55);
  v40 = swift_allocObject();
  sub_100013188(v55, v40 + 16);
  *v9 = sub_10060C78C;
  v9[1] = v40;
  (v36)(v9, v39, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v37(v9, v5);
  *v9 = sub_100609458;
  v9[1] = 0;
  v41 = v45;
  (v36)(v9, v45, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v37(v9, v5);
  *v9 = sub_100609464;
  v9[1] = 0;
  (v36)(v9, v41, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v37(v9, v5);
  *v9 = sub_100609470;
  v9[1] = 0;
  (v36)(v9, v41, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v37(v9, v5);
  *v9 = sub_100487718;
  v9[1] = 0;
  (v36)(v9, v41, v5);
  dispatch thunk of DebugDataSource.add(_:_:)();

  return (v37)(v9, v5);
}

uint64_t sub_1006059D0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_100CA2560 != -1)
    {
      swift_once();
    }

    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v1, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.AppConfig.clearConfigCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v2, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearAQIScalesCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v3, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearWeatherDataCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v4, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearWeatherAvailableDataSetsCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v5, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearDailyStatisticsCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v6, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearDailySummaryCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v7, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearHourlyStatisticsCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v8, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearMonthlyStatisticsCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v9, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearCachedJWTTokenOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v10, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Geocoding.clearReverseGeocodingCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v11, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Geocoding.clearGeocodingCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v12, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static Settings.Geocoding.clearCurrentLocationCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v14, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  return result;
}

uint64_t sub_1006061B4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_100CA2560 != -1)
    {
      swift_once();
    }

    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v1, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearAQIScalesCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v2, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearWeatherDataCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v3, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearWeatherAvailableDataSetsCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v4, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearDailyStatisticsCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v5, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearDailySummaryCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v6, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearHourlyStatisticsCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v7, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.clearMonthlyStatisticsCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v8, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Daemon.mangleCachedJWTTokenOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v9, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Geocoding.clearReverseGeocodingCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v10, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Settings.Geocoding.clearGeocodingCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v11, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static Settings.Geocoding.clearCurrentLocationCacheOnNextLaunch.getter();
    type metadata accessor for DebugAssembly();
    sub_10060CE70(&qword_100CCBC78, v13, type metadata accessor for DebugAssembly, byte_100A6B390);
    Updatable.save<A>(setting:value:)();
  }

  return result;
}

void sub_100606904()
{
  v0 = [objc_allocWithZone(type metadata accessor for DiagnosticFileProvider()) init];
  v1 = DiagnosticFileProvider.files()();

  v2 = 0;
  v3 = v1[2];
  v4 = v1 + 5;
  v5 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v3 == v2)
    {

      v9 = objc_allocWithZone(UIActivityViewController);
      sub_10060B3B8(v5, _swiftEmptyArrayStorage);
      return;
    }

    if (v2 >= v1[2])
    {
      break;
    }

    v11 = type metadata accessor for URL();
    sub_100042FB0(&v10);

    URL.init(fileURLWithPath:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10069FE04();
      v5 = v7;
    }

    v6 = v5[2];
    if (v6 >= v5[3] >> 1)
    {
      sub_10069FE04();
      v5 = v8;
    }

    v5[2] = v6 + 1;
    sub_100166170(&v10, &v5[4 * v6 + 4]);
    v4 += 2;
    ++v2;
  }

  __break(1u);
}

id sub_100606A78()
{
  sub_10000C70C(0, &qword_100CAC5F8, UIAlertController_ptr);
  v0 = sub_100604878(0x6557207465736552, 0xED00007265687461, 0xD0000000000000C1, 0x8000000100AD7A30, 1);
  sub_10000C70C(0, &qword_100CAC600, UIAlertAction_ptr);
  v1 = sub_100604930(19279, 0xE200000000000000, 0, 0, 0);
  [v0 addAction:v1];

  return v0;
}

void *sub_100606B48(void *a1)
{
  v2 = type metadata accessor for DebugLocationIntelligenceView(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB78, &qword_100A6B430);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v10)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CCBB80, &qword_100A6B438);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v8)
    {
      sub_1002F0A20(&v9, &v7, v4);
      v6 = objc_allocWithZone(sub_10022C350(&qword_100CCBB88, &qword_100A6B440));
      return UIHostingController.init(rootView:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100606C88(void *a1)
{
  v2 = type metadata accessor for DebugLocationSyncingPlaygroundView(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBBA8, &qword_100A6B450);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v9)
  {
    sub_10094A358(&v8, v4);
    v6 = objc_allocWithZone(sub_10022C350(&qword_100CCBC68, &qword_100A6B4D0));
    return UIHostingController.init(rootView:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100606D74(void *a1)
{
  v2 = sub_10022C350(&qword_100CA34C8, &qword_100A2D518);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - v3;
  v5 = type metadata accessor for DebugWeatherClockView(0);
  __chkstk_darwin(v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v9 = v22;
  if (v22)
  {
    v10 = v23;
    v19[1] = 0;
    v19[2] = 0xE000000000000000;
    State.init(wrappedValue:)();
    v11 = v21;
    *v7 = v20;
    *(v7 + 2) = v11;
    static Settings.Daemon.enableWeatherClockOverrides.getter();
    UISettingProperty.init(_:)();
    v12 = *(v5 + 24);
    sub_10000C70C(0, &qword_100CB6C30, NSTimer_ptr);
    v13 = [objc_opt_self() currentRunLoop];
    v14 = type metadata accessor for NSRunLoop.SchedulerOptions();
    sub_10001B350(v4, 1, 1, v14);
    v15 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000180EC(v4, &qword_100CA34C8, &qword_100A2D518);
    *&v20 = v15;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_10060CE70(&qword_100CCBC58, 255, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v16 = ConnectablePublisher.autoconnect()();

    *&v7[v12] = v16;
    v17 = &v7[*(v5 + 28)];
    *v17 = v9;
    *(v17 + 1) = v10;
    v18 = objc_allocWithZone(sub_10022C350(&qword_100CCBC60, &qword_100A6B4C8));
    return UIHostingController.init(rootView:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10060701C(void *a1, uint64_t (*a2)(uint64_t))
{
  sub_1000161C0(a1, a1[3]);
  v3 = sub_1000038D8();
  a2(v3);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void *sub_100607074(void *a1)
{
  v2 = type metadata accessor for JSONText();
  __chkstk_darwin(v2 - 8);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60, &unk_100A6B640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    sub_100013188(&v6, v9);
    sub_1000161C0(v9, v9[3]);
    v7 = type metadata accessor for AppConfiguration();
    v8 = sub_10060CE70(&qword_100CCBC50, 255, &type metadata accessor for AppConfiguration, &protocol conformance descriptor for AppConfiguration);
    sub_100042FB0(&v6);
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    JSONText.init(_:)();
    v4 = objc_allocWithZone(type metadata accessor for JSONTextViewController());
    v5 = JSONTextViewController.init(jsonText:)();
    sub_100006F14(v9);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006071E4()
{
  v0 = type metadata accessor for DebugWeatherCacheTestingView(0);
  __chkstk_darwin(v0 - 8);
  sub_100328F54(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = objc_allocWithZone(sub_10022C350(&qword_100CCBC48, &qword_100A6B4C0));
  return UIHostingController.init(rootView:)();
}

uint64_t sub_100607274()
{
  v30 = sub_10022C350(&qword_100CCBBD8, &qword_100A6B478);
  v27 = *(v30 - 8);
  v0 = v27;
  __chkstk_darwin(v30);
  v28 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v26 - v3;
  v5 = sub_10022C350(&qword_100CCBBE0, &qword_100A6B480);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v26 - v9);
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.current.getter();
  v15 = Locale.identifier.getter();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  sub_10000C70C(0, &qword_100CCBBE8, NSDimension_ptr);
  static Measurement<>.FormatStyle.UnitWidth.abbreviated.getter();
  *v10 = sub_10060C91C;
  v10[1] = v18;
  sub_10022C350(&qword_100CCBBF0, &qword_100A6B488);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100A3BBA0;
  static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
  static Measurement<>.FormatStyle.UnitWidth.abbreviated.getter();
  static Measurement<>.FormatStyle.UnitWidth.wide.getter();
  v10[2] = v19;
  v20 = v30;
  (*(v0 + 16))(v28, v4, v30);
  State.init(wrappedValue:)();
  (*(v0 + 8))(v4, v20);
  v21 = v10 + *(v6 + 52);
  v31 = 0;
  State.init(wrappedValue:)();
  v22 = v33;
  *v21 = v32;
  *(v21 + 1) = v22;
  sub_1005C1F54(v10, v29, &qword_100CCBBE0, &qword_100A6B480);
  v23 = objc_allocWithZone(sub_10022C350(&qword_100CCBBF8, &qword_100A6B490));
  v24 = UIHostingController.init(rootView:)();
  sub_1000180EC(v10, &qword_100CCBBE0, &qword_100A6B480);
  return v24;
}

uint64_t sub_10060763C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19[1] = a6;
  v11 = type metadata accessor for JSON();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  static Locale.availableIdentifiers.getter();
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a1;
  v19[7] = a4;
  v19[8] = a5;
  sub_1008EF3C0();
  v17 = v16;

  *(v15 + 16) = sub_1006083D4(v17);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for JSON.object(_:), v11);
  return JSONView.init(value:)();
}

uint64_t sub_1006077AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v92 = a2;
  v93 = a6;
  v91 = a4;
  v89 = a7;
  v95 = sub_10022C350(&qword_100CCBC18, &qword_100A6B4A8);
  v99 = *(v95 - 8);
  __chkstk_darwin(v95);
  v11 = &v77 - v10;
  v12 = sub_10022C350(&qword_100CCBBD8, &qword_100A6B478);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v77 - v14;
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for UnitDefaults();
  v83 = *(v17 - 8);
  v84 = v17;
  __chkstk_darwin(v17);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v96 = a1[1];
  v21 = v20;
  if (!a3)
  {

    v92 = v21;
  }

  Locale.init(identifier:)();
  UnitDefaults.init(locale:)();
  v22 = *(v13 + 16);
  v86 = v12;
  v22(v15, v91, v12);
  v23 = v96;
  v24 = v21 == a5 && v96 == v93;
  v94 = v19;
  v85 = v13;
  if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v97 = 8234;
    v98 = 0xE200000000000000;
    v25._countAndFlagsBits = v21;
    v25._object = v23;
    String.append(_:)(v25);
    v26 = v97;
    v27 = v98;
  }

  else
  {

    v26 = v21;
    v27 = v23;
  }

  v28 = sub_10022C350(&qword_100CCBC08, &unk_100A98440);
  v29 = *(v28 + 48);
  v80 = v29;
  v30 = v28;
  v93 = v28;
  v31 = v89;
  *v89 = v26;
  v31[1] = v27;
  v82 = swift_allocObject();
  sub_10022C350(&qword_100CCBC20, &unk_100A766E0);
  v32 = (*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80);
  v91 = *(*(v30 - 8) + 72);
  v33 = v91;
  v34 = swift_allocObject();
  v81 = v34;
  *(v34 + 16) = xmmword_100A3F990;
  v35 = (v34 + v32);
  *v35 = 0x6572757373657270;
  v35[1] = 0xE800000000000000;
  v36 = v34 + v32;
  UnitDefaults.pressure.getter();
  v90 = sub_10000C70C(0, &qword_100CCBBE8, NSDimension_ptr);
  Measurement.init(value:unit:)();
  v37 = v36;
  v92 = v36;
  sub_100607FC4(v11, v15, v21, v96, (v36 + v29));
  v38 = *(v99 + 8);
  v99 += 8;
  v87 = v15;
  v38(v11, v95);
  v39 = v38;
  v40 = (v37 + v33);
  v41 = v93;
  v42 = *(v93 + 48);
  *v40 = 0x6C6C61666E696172;
  v40[1] = 0xE800000000000000;
  UnitDefaults.precipitationRainfall.getter();
  Measurement.init(value:unit:)();
  v43 = (v40 + v42);
  v44 = v96;
  sub_100607FC4(v11, v15, v21, v96, v43);
  v39(v11, v95);
  v45 = v39;
  v79 = v39;
  v46 = (v92 + 2 * v91);
  v47 = *(v41 + 48);
  *v46 = 0x6C6C6166776F6E73;
  v46[1] = 0xE800000000000000;
  UnitDefaults.precipitationSnowfall.getter();
  Measurement.init(value:unit:)();
  v48 = (v46 + v47);
  v49 = v87;
  v50 = v21;
  v88 = v21;
  sub_100607FC4(v11, v87, v21, v44, v48);
  v51 = v95;
  v45(v11, v95);
  v52 = v91;
  v53 = v92;
  v54 = (v92 + 3 * v91);
  v55 = v93;
  v78 = *(v93 + 48);
  *v54 = 0x74617265706D6574;
  v54[1] = 0xEB00000000657275;
  UnitDefaults.temperature.getter();
  Measurement.init(value:unit:)();
  v56 = v49;
  v57 = v96;
  sub_100607FC4(v11, v56, v50, v96, (v54 + v78));
  v58 = v51;
  v59 = v79;
  v79(v11, v58);
  v60 = (v53 + 4 * v52);
  v61 = *(v55 + 48);
  *v60 = 0x696C696269736976;
  v60[1] = 0xEA00000000007974;
  UnitDefaults.visibility.getter();
  Measurement.init(value:unit:)();
  v62 = (v60 + v61);
  v64 = v87;
  v63 = v88;
  sub_100607FC4(v11, v87, v88, v57, v62);
  v65 = v95;
  v59(v11, v95);
  v66 = (v92 + 5 * v91);
  v78 = *(v93 + 48);
  *v66 = 0x65657053646E6977;
  v66[1] = 0xE900000000000064;
  UnitDefaults.windSpeed.getter();
  Measurement.init(value:unit:)();
  v67 = v96;
  sub_100607FC4(v11, v64, v63, v96, (v66 + v78));
  v59(v11, v65);
  v68 = (v92 + 6 * v91);
  v69 = v94;
  v70 = *(v93 + 48);
  *v68 = 0x74737547646E6977;
  v68[1] = 0xE800000000000000;
  UnitDefaults.windGust.getter();
  Measurement.init(value:unit:)();
  sub_100607FC4(v11, v64, v88, v67, (v68 + v70));
  v59(v11, v95);
  (*(v85 + 8))(v64, v86);
  v71 = type metadata accessor for JSON();
  v72 = Dictionary.init(dictionaryLiteral:)();
  (*(v83 + 8))(v69, v84);
  v73 = v82;
  *(v82 + 16) = v72;
  v74 = v80;
  v75 = v89;
  *(v89 + v80) = v73;
  return (*(*(v71 - 8) + 104))(v75 + v74, enum case for JSON.object(_:), v71);
}