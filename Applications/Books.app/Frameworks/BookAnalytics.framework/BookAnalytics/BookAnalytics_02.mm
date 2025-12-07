uint64_t sub_24D40(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0xEC000000656C706DLL;
  v9 = 0x6153736569726573;
  v10 = a1;
  v11 = 0xE700000000000000;
  v12 = 0x6E776F6E6B6E75;
  if (a1 != 5)
  {
    v12 = 0xD000000000000010;
    v11 = 0x80000000002129B0;
  }

  v13 = 0x7265537472617473;
  v14 = 0xEB00000000736569;
  if (a1 != 3)
  {
    v13 = 0x65756E69746E6F63;
    v14 = 0xEE00736569726553;
  }

  if (a1 <= 4u)
  {
    v12 = v13;
    v11 = v14;
  }

  v15 = 0x65536E497478656ELL;
  v16 = 0xEC00000073656972;
  if (a1 != 1)
  {
    v15 = 0x7265536572616873;
    v16 = 0xEB00000000736569;
  }

  if (!a1)
  {
    v15 = 0x6153736569726573;
    v16 = 0xEC000000656C706DLL;
  }

  if (a1 <= 2u)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  if (v10 <= 2)
  {
    v18 = v16;
  }

  else
  {
    v18 = v11;
  }

  if (a2 > 2u)
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v8 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E75;
        if (v17 != 0x6E776F6E6B6E75)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v9 = 0xD000000000000010;
        v8 = 0x80000000002129B0;
        if (v17 != 0xD000000000000010)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v19 = 0x537472617473;
      goto LABEL_29;
    }

    v9 = 0x65756E69746E6F63;
    v8 = 0xEE00736569726553;
    goto LABEL_32;
  }

  if (!a2)
  {
LABEL_32:
    if (v17 != v9)
    {
LABEL_36:
      v20 = sub_1E1D30();
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  if (a2 != 1)
  {
    v19 = 0x536572616873;
LABEL_29:
    v9 = v19 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
    v8 = 0xEB00000000736569;
    if (v17 != v9)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v9 = 0x65536E497478656ELL;
  v8 = 0xEC00000073656972;
  if (v17 != 0x65536E497478656ELL)
  {
    goto LABEL_36;
  }

LABEL_33:
  if (v18 != v8)
  {
    goto LABEL_36;
  }

  v20 = 1;
LABEL_37:
  v18, a2, v9, a4, a5, a6, a7, a8;
  v8, v21, v22, v23, v24, v25, v26, v27;
  return v20 & 1;
}

uint64_t sub_24F90(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 7824750;
  v9 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = 0x6572676F72506E69;
    }

    else
    {
      v10 = 0x6E776F6E6B6E75;
    }

    if (v9 == 2)
    {
      v11 = 0xEA00000000007373;
    }

    else
    {
      v11 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v10 = 0x6574656C706D6F63;
    }

    else
    {
      v10 = 7824750;
    }

    if (v9)
    {
      v11 = 0xE900000000000064;
    }

    else
    {
      v11 = 0xE300000000000000;
    }
  }

  v12 = 0xE300000000000000;
  v13 = 0x6572676F72506E69;
  v14 = 0xEA00000000007373;
  if (a2 != 2)
  {
    v13 = 0x6E776F6E6B6E75;
    v14 = 0xE700000000000000;
  }

  if (a2)
  {
    v8 = 0x6574656C706D6F63;
    v12 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v13;
  }

  if (a2 <= 1u)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  if (v10 == v15 && v11 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v11, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_250DC(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = a1;
  if (a1 > 4u)
  {
    v18 = 0x6163696669746F6ELL;
    v19 = 0xEC0000006E6F6974;
    v20 = 0x8000000000213590;
    v21 = 0xD000000000000021;
    if (a1 != 8)
    {
      v21 = 0x6F53736569726573;
      v20 = 0xEF726F7272457472;
    }

    if (a1 != 7)
    {
      v18 = v21;
      v19 = v20;
    }

    v22 = 0x6976655274726F73;
    if (a1 == 5)
    {
      v23 = 0xEB00000000737765;
    }

    else
    {
      v22 = 0xD000000000000015;
      v23 = 0x8000000000213570;
    }

    if (a1 <= 6u)
    {
      v16 = v22;
    }

    else
    {
      v16 = v18;
    }

    if (v9 <= 6)
    {
      v17 = v23;
    }

    else
    {
      v17 = v19;
    }
  }

  else
  {
    v10 = 0xE700000000000000;
    v11 = 0x76616E556B6F6F62;
    v12 = 0xEF656C62616C6961;
    v13 = 0x6C70704177656976;
    v14 = 0xEB00000000444965;
    if (a1 != 3)
    {
      v13 = 0x63694E7265746E65;
      v14 = 0xED0000656D616E6BLL;
    }

    if (a1 != 2)
    {
      v11 = v13;
      v12 = v14;
    }

    v15 = 0xD000000000000013;
    if (a1)
    {
      v10 = 0x8000000000213520;
    }

    else
    {
      v15 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v16 = v15;
    }

    else
    {
      v16 = v11;
    }

    if (v9 <= 1)
    {
      v17 = v10;
    }

    else
    {
      v17 = v12;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v8 = 0x6976655274726F73;
        v24 = 7567205;
LABEL_43:
        v25 = (v24 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000);
        if (v16 != v8)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      v25 = 0x8000000000213570;
      v8 = 0xD000000000000015;
      if (v16 != 0xD000000000000015)
      {
LABEL_58:
        v26 = sub_1E1D30();
        goto LABEL_59;
      }
    }

    else if (a2 == 7)
    {
      v8 = 0x6163696669746F6ELL;
      v25 = 0xEC0000006E6F6974;
      if (v16 != 0x6163696669746F6ELL)
      {
        goto LABEL_58;
      }
    }

    else if (a2 == 8)
    {
      v25 = 0x8000000000213590;
      v8 = 0xD000000000000021;
      if (v16 != 0xD000000000000021)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v8 = 0x6F53736569726573;
      v25 = 0xEF726F7272457472;
      if (v16 != 0x6F53736569726573)
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v8 = 0x76616E556B6F6F62;
        v25 = 0xEF656C62616C6961;
        if (v16 != 0x76616E556B6F6F62)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      if (a2 != 3)
      {
        v8 = 0x63694E7265746E65;
        v25 = 0xED0000656D616E6BLL;
        if (v16 != 0x63694E7265746E65)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      v8 = 0x6C70704177656976;
      v24 = 4475237;
      goto LABEL_43;
    }

    if (a2)
    {
      v8 = 0xD000000000000013;
      v25 = 0x8000000000213520;
      if (v16 != 0xD000000000000013)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v25 = 0xE700000000000000;
      if (v16 != 0x6E776F6E6B6E75)
      {
        goto LABEL_58;
      }
    }
  }

LABEL_56:
  if (v17 != v25)
  {
    goto LABEL_58;
  }

  v26 = 1;
LABEL_59:
  v17, a2, v8, a4, a5, a6, a7, a8;
  v25, v27, v28, v29, v30, v31, v32, v33;
  return v26 & 1;
}

uint64_t static SearchEndData.== infix(_:_:)(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = 0x6E776F6E6B6E75;
  v9 = *a1;
  v10 = 0xE700000000000000;
  v11 = 0xD000000000000012;
  v12 = 0x8000000000213160;
  if (v9 == 2)
  {
    v13 = 0x8000000000213160;
  }

  else
  {
    v11 = 0x656E6F646E616261;
    v13 = 0xE900000000000064;
  }

  v14 = 0x75426C65636E6163;
  if (*a1)
  {
    v10 = 0xEF7061546E6F7474;
  }

  else
  {
    v14 = 0x6E776F6E6B6E75;
  }

  if (*a1 <= 1u)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  if (v9 <= 1)
  {
    v16 = v10;
  }

  else
  {
    v16 = v13;
  }

  v17 = 0xE700000000000000;
  v18 = 0xD000000000000012;
  if (*a2 != 2)
  {
    v18 = 0x656E6F646E616261;
    v12 = 0xE900000000000064;
  }

  if (*a2)
  {
    v8 = 0x75426C65636E6163;
    v17 = 0xEF7061546E6F7474;
  }

  if (*a2 <= 1u)
  {
    v19 = v8;
  }

  else
  {
    v19 = v18;
  }

  if (*a2 <= 1u)
  {
    v20 = v17;
  }

  else
  {
    v20 = v12;
  }

  if (v15 == v19 && v16 == v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_1E1D30();
  }

  v16, a2, v19, a4, a5, a6, a7, a8;
  v20, v22, v23, v24, v25, v26, v27, v28;
  return v21 & 1;
}

void sub_255F0(void *a1@<X0>, BAEventReporter *a2@<X1>, _BYTE *a3@<X8>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>)
{
  if (a1 == 0x6E45686372616573 && a2 == 0xEF646F6874654D64)
  {
    a2, 0xEF646F6874654D64, a1, a4, a5, a6, a7, a8;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a3 = v19 & 1;
}

uint64_t sub_25680(uint64_t a1)
{
  v2 = sub_259EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_256BC(uint64_t a1)
{
  v2 = sub_259EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchEndData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27E960, &qword_1E6E78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_259EC();
  sub_1E1E00();
  v10 = v7;
  sub_25A40();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

void SearchEndData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_27E978, &qword_1E6E80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_259EC();
  sub_1E1DF0();
  if (!v2)
  {
    sub_25A94();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_259EC()
{
  result = qword_27E968;
  if (!qword_27E968)
  {
    result = swift_getWitnessTable(")f\a", &type metadata for SearchEndData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E968);
  }

  return result;
}

unint64_t sub_25A40()
{
  result = qword_27E970;
  if (!qword_27E970)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchEndMethod, &type metadata for SearchEndMethod, v0, v1);
    atomic_store(result, &qword_27E970);
  }

  return result;
}

unint64_t sub_25A94()
{
  result = qword_27E980;
  if (!qword_27E980)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchEndMethod, &type metadata for SearchEndMethod, v0, v1);
    atomic_store(result, &qword_27E980);
  }

  return result;
}

unint64_t sub_25AEC()
{
  result = qword_27E988;
  if (!qword_27E988)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchEndData, &type metadata for SearchEndData, v0, v1);
    atomic_store(result, &qword_27E988);
  }

  return result;
}

unint64_t sub_25B44()
{
  result = qword_27E990;
  if (!qword_27E990)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchEndData, &type metadata for SearchEndData, v0, v1);
    atomic_store(result, &qword_27E990);
  }

  return result;
}

unint64_t sub_25BBC()
{
  result = qword_27E998;
  if (!qword_27E998)
  {
    result = swift_getWitnessTable("Af\a", &type metadata for SearchEndData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E998);
  }

  return result;
}

unint64_t sub_25C14()
{
  result = qword_27E9A0;
  if (!qword_27E9A0)
  {
    result = swift_getWitnessTable(byte_1E6F98, &type metadata for SearchEndData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E9A0);
  }

  return result;
}

unint64_t sub_25C6C()
{
  result = qword_27E9A8;
  if (!qword_27E9A8)
  {
    result = swift_getWitnessTable("qf\a", &type metadata for SearchEndData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E9A8);
  }

  return result;
}

BookAnalytics::MangaFlag_optional __swiftcall MangaFlag.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F3C8;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t MangaFlag.rawValue.getter()
{
  v1 = 28526;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7562617;
  }
}

uint64_t sub_25D64(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE200000000000000;
  v10 = 28526;
  if (v8 != 1)
  {
    v10 = 0x6E776F6E6B6E75;
    v9 = 0xE700000000000000;
  }

  if (*a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 7562617;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  v13 = 0xE200000000000000;
  v14 = 28526;
  if (*a2 != 1)
  {
    v14 = 0x6E776F6E6B6E75;
    v13 = 0xE700000000000000;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 7562617;
  }

  if (*a2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_25E4C()
{
  result = qword_27E9B0;
  if (!qword_27E9B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MangaFlag, &type metadata for MangaFlag, v0, v1);
    atomic_store(result, &qword_27E9B0);
  }

  return result;
}

Swift::Int sub_25EA0()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE200000000000000;
  if (v1 != 1)
  {
    v2 = 0xE700000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_25F30(uint64_t a1)
{
  v2 = 0xE200000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  sub_1E17D0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_25FAC(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE200000000000000;
  if (v2 != 1)
  {
    v3 = 0xE700000000000000;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_26044(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE200000000000000;
  v5 = 28526;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7562617;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_26150()
{
  result = qword_27E9B8;
  if (!qword_27E9B8)
  {
    result = swift_getWitnessTable("!f\a", &type metadata for MangaFlag, v0, v1);
    atomic_store(result, &qword_27E9B8);
  }

  return result;
}

uint64_t FlowcaseExposureEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FlowcaseExposureEvent.sectionData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SectionExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.readingGoalsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.readingGoalsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.booksGoalsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.booksGoalsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.onDevicePersonalizationPropertyData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.onDevicePersonalizationPropertyData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 48);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 48);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 56);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 56);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SectionExposureEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v15 - 8) + 104))(a1 + v14, v8, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  (*(*(v17 - 8) + 104))(a1 + v16, v8, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v19 - 8) + 104))(a1 + v18, v8, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v21 - 8) + 104))(a1 + v20, v8, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  v25 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v2, v25);
}

uint64_t FlowcaseExposureEvent.Model.sectionData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14 = v3;
  v15 = v1[6];
  v4 = v15;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_274D4(v10, &v9);
}

uint64_t SectionExposureEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 192);
  v20 = *(v1 + 208);
  v21 = v2;
  v4 = *(v1 + 224);
  v22 = *(v1 + 240);
  v5 = *(v1 + 160);
  v7 = *(v1 + 128);
  v16 = *(v1 + 144);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 160);
  v9 = *(v1 + 192);
  v18 = *(v1 + 176);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 128);
  v15[0] = *(v1 + 112);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 240);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 256);
  *(a1 + 144) = *(v1 + 256);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_275C4(v15, v14);
}

__n128 SectionExposureEvent.Model.readingGoalsData.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 312);
  *(a1 + 32) = *(v1 + 296);
  *(a1 + 48) = v2;
  *(a1 + 57) = *(v1 + 321);
  result = *(v1 + 280);
  *a1 = *(v1 + 264);
  *(a1 + 16) = result;
  return result;
}

__n128 SectionExposureEvent.Model.booksGoalsData.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 376);
  result = *(v1 + 344);
  v4 = *(v1 + 360);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t SectionExposureEvent.Model.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 408);
  *a1 = *(v1 + 384);
  *(a1 + 8) = *(v1 + 392);
  *(a1 + 24) = v2;
}

uint64_t SectionExposureEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 432);
  *a1 = *(v1 + 416);
  *(a1 + 16) = v2;
}

__n128 SectionExposureEvent.Model.onDevicePersonalizationPropertyData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 456);
  v3 = *(v1 + 464);
  result = *(v1 + 440);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

uint64_t SectionExposureEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[59];
  v3 = v1[60];
  v4 = v1[61];
  v5 = v1[62];
  v6 = v1[63];
  v7 = v1[64];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t SectionExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent.Model(0) + 52);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent.Model(0) + 56);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.Model.init(sectionData:linkData:readingGoalsData:booksGoalsData:pageData:upSellData:onDevicePersonalizationPropertyData:seriesData:suggestionData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v13 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v13;
  v14 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v14;
  v15 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v15;
  v16 = a2[6];
  v17 = a2[8];
  *(a9 + 224) = a2[7];
  *(a9 + 240) = v17;
  v18 = a2[2];
  v19 = a2[4];
  v20 = a2[5];
  *(a9 + 160) = a2[3];
  *(a9 + 176) = v19;
  v21 = a1[6];
  *(a9 + 192) = v20;
  *(a9 + 208) = v16;
  v22 = *a2;
  v23 = a2[1];
  *(a9 + 96) = v21;
  *(a9 + 112) = v22;
  v24 = *(a4 + 32);
  v25 = *(a5 + 16);
  v26 = *(a5 + 24);
  v27 = *(a6 + 16);
  v28 = *(a7 + 16);
  v29 = *(a7 + 24);
  v30 = *a10;
  *(a9 + 256) = *(a2 + 18);
  *(a9 + 128) = v23;
  *(a9 + 144) = v18;
  v31 = a3[3];
  *(a9 + 296) = a3[2];
  *(a9 + 312) = v31;
  *(a9 + 321) = *(a3 + 57);
  v32 = a3[1];
  *(a9 + 264) = *a3;
  *(a9 + 280) = v32;
  v33 = *(a4 + 16);
  *(a9 + 344) = *a4;
  *(a9 + 360) = v33;
  *(a9 + 376) = v24;
  *(a9 + 384) = *a5;
  *(a9 + 400) = v25;
  *(a9 + 408) = v26;
  *(a9 + 416) = *a6;
  *(a9 + 432) = v27;
  *(a9 + 440) = *a7;
  *(a9 + 456) = v28;
  *(a9 + 464) = v29;
  v34 = a8[1];
  *(a9 + 472) = *a8;
  *(a9 + 488) = v34;
  *(a9 + 504) = a8[2];
  *(a9 + 520) = v30;
  v35 = type metadata accessor for SectionExposureEvent.Model(0);
  v36 = *(v35 + 52);
  v37 = sub_1E1150();
  (*(*(v37 - 8) + 32))(a9 + v36, a11, v37);
  v38 = *(v35 + 56);
  v39 = sub_1E11A0();
  v40 = *(*(v39 - 8) + 32);

  return v40(a9 + v38, a12, v39);
}

unint64_t sub_279BC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x446E6F6974636573;
    v7 = 0xD000000000000010;
    v8 = 0x616F47736B6F6F62;
    if (a1 != 3)
    {
      v8 = 0x6174614465676170;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x617461446B6E696CLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6974736567677573;
    v2 = 0x746144746E657665;
    if (a1 != 9)
    {
      v2 = 0x74614464656D6974;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x61446C6C65537075;
    v4 = 0xD000000000000023;
    if (a1 != 6)
    {
      v4 = 0x6144736569726573;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_27B60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_2A610(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_27B88(uint64_t a1)
{
  v2 = sub_28300();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_27BC4(uint64_t a1)
{
  v2 = sub_28300();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SectionExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_27EA18, &qword_1E71E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v62 - v6;
  sub_48B8(a1, a1[3]);
  sub_28300();
  sub_1E1E00();
  v8 = v2[4];
  v9 = v2[2];
  v102 = v2[3];
  v103 = v8;
  v10 = v2[4];
  v11 = v2[6];
  v104 = v2[5];
  v105 = v11;
  v12 = *v2;
  v13 = v2[2];
  v100 = v2[1];
  v101 = v13;
  v14 = *v2;
  v96 = v10;
  v97 = v104;
  v98 = v2[6];
  v99 = v14;
  v92 = v12;
  v93 = v100;
  v94 = v9;
  v95 = v102;
  v91 = 0;
  sub_274D4(&v99, &v81);
  sub_18544();
  v15 = v106;
  sub_1E1CF0();
  if (v15)
  {
    v85 = v96;
    v86 = v97;
    v87 = v98;
    v81 = v92;
    v82 = v93;
    v83 = v94;
    v84 = v95;
    sub_28354(&v81);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v80[4] = v96;
    v80[5] = v97;
    v80[6] = v98;
    v80[0] = v92;
    v80[1] = v93;
    v80[2] = v94;
    v80[3] = v95;
    sub_28354(v80);
    v17 = v2[14];
    v18 = v2[12];
    v87 = v2[13];
    v88 = v17;
    v19 = v2[14];
    v89 = v2[15];
    v20 = v2[10];
    v21 = v2[8];
    v83 = v2[9];
    v84 = v20;
    v22 = v2[10];
    v23 = v2[12];
    v85 = v2[11];
    v86 = v23;
    v24 = v2[8];
    v81 = v2[7];
    v82 = v24;
    v76 = v87;
    v77 = v19;
    v78 = v2[15];
    v72 = v83;
    v73 = v22;
    v74 = v85;
    v75 = v18;
    v90 = *(v2 + 32);
    v79 = *(v2 + 32);
    v70 = v81;
    v71 = v21;
    v69 = 1;
    sub_275C4(&v81, v67);
    sub_18630();
    sub_1E1CF0();
    v67[7] = v77;
    v67[8] = v78;
    v67[3] = v73;
    v67[4] = v74;
    v68 = v79;
    v67[5] = v75;
    v67[6] = v76;
    v67[0] = v70;
    v67[1] = v71;
    v67[2] = v72;
    sub_283A8(v67);
    v25 = *(v2 + 312);
    v65 = *(v2 + 296);
    v66[0] = v25;
    *(v66 + 9) = *(v2 + 321);
    v26 = *(v2 + 280);
    v64[0] = *(v2 + 264);
    v64[1] = v26;
    v63 = 2;
    sub_1E3E8();
    sub_1E1C80();
    v27 = *(v2 + 376);
    v28 = *(v2 + 360);
    v64[0] = *(v2 + 344);
    v64[1] = v28;
    LOBYTE(v65) = v27;
    v63 = 3;
    sub_283FC();
    sub_1E1C80();
    v29 = *(v2 + 51);
    *&v64[0] = *(v2 + 48);
    *(v64 + 8) = *(v2 + 392);
    *(&v64[1] + 1) = v29;
    v63 = 4;
    sub_18598();

    sub_1E1CF0();
    v30 = *(&v64[0] + 1);
    *(&v64[1] + 1), v31, v32, v33, v34, v35, v36, v37;
    v30, v38, v39, v40, v41, v42, v43, v44;
    v45 = *(v2 + 54);
    v64[0] = v2[26];
    *&v64[1] = v45;
    v63 = 5;
    sub_28450();

    sub_1E1C80();
    *&v64[1], v46, v47, v48, v49, v50, v51, v52;
    v53 = *(v2 + 57);
    v54 = *(v2 + 464);
    v64[0] = *(v2 + 440);
    *&v64[1] = v53;
    BYTE8(v64[1]) = v54;
    v63 = 6;
    sub_284A4();
    sub_1E1C80();
    v55 = *(v2 + 60);
    v56 = *(v2 + 61);
    v57 = *(v2 + 62);
    v58 = *(v2 + 63);
    v59 = *(v2 + 64);
    *&v64[0] = *(v2 + 59);
    *(&v64[0] + 1) = v55;
    *&v64[1] = v56;
    *(&v64[1] + 1) = v57;
    *&v65 = v58;
    *(&v65 + 1) = v59;
    v63 = 7;
    sub_13BDC(*&v64[0], v55, v56, v57, v58, v59);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(*&v64[0], *(&v64[0] + 1), *&v64[1], *(&v64[1] + 1), v65, *(&v65 + 1), v60, v61);
    LOBYTE(v64[0]) = *(v2 + 520);
    v63 = 8;
    sub_284F8();
    sub_1E1C80();
    type metadata accessor for SectionExposureEvent.Model(0);
    LOBYTE(v64[0]) = 9;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    LOBYTE(v64[0]) = 10;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
    return (*(v5 + 8))(v7, 0);
  }
}

unint64_t sub_28300()
{
  result = qword_27EA20;
  if (!qword_27EA20)
  {
    result = swift_getWitnessTable("ib\a", &type metadata for SectionExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27EA20);
  }

  return result;
}

unint64_t sub_283FC()
{
  result = qword_27EA28;
  if (!qword_27EA28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BooksGoalsData, &type metadata for BooksGoalsData, v0, v1);
    atomic_store(result, &qword_27EA28);
  }

  return result;
}

unint64_t sub_28450()
{
  result = qword_27EA30;
  if (!qword_27EA30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpSellData, &type metadata for UpSellData, v0, v1);
    atomic_store(result, &qword_27EA30);
  }

  return result;
}

unint64_t sub_284A4()
{
  result = qword_27EA38;
  if (!qword_27EA38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnDevicePersonalizationPropertyData, &type metadata for OnDevicePersonalizationPropertyData, v0, v1);
    atomic_store(result, &qword_27EA38);
  }

  return result;
}

unint64_t sub_284F8()
{
  result = qword_27EA40;
  if (!qword_27EA40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestionData, &type metadata for SuggestionData, v0, v1);
    atomic_store(result, &qword_27EA40);
  }

  return result;
}

void SectionExposureEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v54 = sub_1E11A0();
  v51 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v55 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_27EA48, &qword_1E71F0);
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  v10 = type metadata accessor for SectionExposureEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v60 = a1;
  sub_48B8(a1, v13);
  sub_28300();
  v58 = v9;
  v14 = v59;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v60, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v50 = v6;
    v22 = v56;
    v59 = v10;
    v72 = 0;
    sub_18EFC();
    sub_1E1C20();
    v23 = v67[7];
    *(v12 + 4) = v67[6];
    *(v12 + 5) = v23;
    *(v12 + 6) = v67[8];
    v24 = v67[3];
    *v12 = v67[2];
    *(v12 + 1) = v24;
    v25 = v67[5];
    *(v12 + 2) = v67[4];
    *(v12 + 3) = v25;
    v71 = 1;
    sub_18FA4();
    sub_1E1C20();
    v26 = v67[16];
    *(v12 + 13) = v67[15];
    *(v12 + 14) = v26;
    *(v12 + 15) = v67[17];
    *(v12 + 32) = v68;
    v27 = v67[12];
    *(v12 + 9) = v67[11];
    *(v12 + 10) = v27;
    v28 = v67[14];
    *(v12 + 11) = v67[13];
    *(v12 + 12) = v28;
    v29 = v67[10];
    *(v12 + 7) = v67[9];
    *(v12 + 8) = v29;
    v70 = 2;
    sub_1E390();
    v49 = 0;
    sub_1E1BB0();
    v30 = v67[0];
    *(v12 + 296) = v66;
    *(v12 + 312) = v30;
    *(v12 + 321) = *(v67 + 9);
    v31 = v65;
    *(v12 + 264) = v64;
    *(v12 + 280) = v31;
    v69 = 3;
    sub_28EA0();
    sub_1E1BB0();
    v32 = v63;
    v33 = v62;
    *(v12 + 344) = v61;
    *(v12 + 360) = v33;
    v48 = v12 + 344;
    v12[376] = v32;
    v69 = 4;
    sub_18F50();
    sub_1E1C20();
    v34 = v62;
    *(v12 + 24) = v61;
    *(v12 + 25) = v34;
    v69 = 5;
    sub_28EF4();
    sub_1E1BB0();
    v35 = v62;
    *(v12 + 26) = v61;
    *(v12 + 54) = v35;
    v69 = 6;
    sub_28F48();
    sub_1E1BB0();
    v36 = v62;
    v37 = BYTE8(v62);
    *(v48 + 6) = v61;
    *(v12 + 57) = v36;
    v12[464] = v37;
    v69 = 7;
    sub_DAD8();
    sub_1E1BB0();
    LODWORD(v49) = 1;
    v38 = v62;
    v39 = v48;
    *(v48 + 8) = v61;
    *(v39 + 9) = v38;
    *(v39 + 10) = v63;
    v69 = 8;
    sub_28F9C();
    sub_1E1BB0();
    v12[520] = v61;
    LOBYTE(v61) = 9;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v55 + 32))(&v12[*(v59 + 52)], v50, v4);
    LOBYTE(v61) = 10;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1C20();
    (*(v22 + 8))(v58, v57);
    (*(v51 + 32))(&v12[*(v59 + 56)], v53, v54);
    sub_28FF0(v12, v52);
    sub_4E48(v60, v40, v41, v42, v43, v44, v45, v46);
    sub_29054(v12);
  }
}

unint64_t sub_28EA0()
{
  result = qword_27EA50;
  if (!qword_27EA50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BooksGoalsData, &type metadata for BooksGoalsData, v0, v1);
    atomic_store(result, &qword_27EA50);
  }

  return result;
}

unint64_t sub_28EF4()
{
  result = qword_27EA58;
  if (!qword_27EA58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpSellData, &type metadata for UpSellData, v0, v1);
    atomic_store(result, &qword_27EA58);
  }

  return result;
}

unint64_t sub_28F48()
{
  result = qword_27EA60;
  if (!qword_27EA60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnDevicePersonalizationPropertyData, &type metadata for OnDevicePersonalizationPropertyData, v0, v1);
    atomic_store(result, &qword_27EA60);
  }

  return result;
}

unint64_t sub_28F9C()
{
  result = qword_27EA68;
  if (!qword_27EA68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestionData, &type metadata for SuggestionData, v0, v1);
    atomic_store(result, &qword_27EA68);
  }

  return result;
}

uint64_t sub_28FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29054(uint64_t a1)
{
  v2 = type metadata accessor for SectionExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29150@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  (*(*(v18 - 8) + 104))(a2 + v17, v9, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v20 - 8) + 104))(a2 + v19, v9, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v22 - 8) + 104))(a2 + v21, v9, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  v26 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v4, v26);
}

uint64_t sub_294FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  v14 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_21;
  }

  v15 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  v16 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v24 = *(*(v23 - 8) + 48);
  v25 = a1 + a3[14];

  return v24(v25, a2, v23);
}

uint64_t sub_29914(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  v16 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  v22 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  v25 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v26 = *(*(v25 - 8) + 56);
  v27 = a1 + a4[14];

  return v26(v27, a2, a2, v25);
}

void sub_29D24(uint64_t a1)
{
  sub_2A078(319, &qword_27E578, sub_18EFC, sub_18544, &type metadata for SectionData);
  if (v1 <= 0x3F)
  {
    sub_2A078(319, &unk_27E588, sub_18FA4, sub_18630, &type metadata for LinkData);
    if (v2 <= 0x3F)
    {
      sub_2A078(319, &qword_27EAD8, sub_1E390, sub_1E3E8, &type metadata for ReadingGoalsData);
      if (v3 <= 0x3F)
      {
        sub_2A078(319, &qword_27EAE0, sub_28EA0, sub_283FC, &type metadata for BooksGoalsData);
        if (v4 <= 0x3F)
        {
          sub_2A078(319, &qword_27E580, sub_18F50, sub_18598, &type metadata for PageData);
          if (v5 <= 0x3F)
          {
            sub_2A078(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
            if (v6 <= 0x3F)
            {
              sub_2A078(319, &qword_27EAF0, sub_28F48, sub_284A4, &type metadata for OnDevicePersonalizationPropertyData);
              if (v7 <= 0x3F)
              {
                sub_2A078(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
                if (v8 <= 0x3F)
                {
                  sub_2A078(319, &unk_27EAF8, sub_28F9C, sub_284F8, &type metadata for SuggestionData);
                  if (v9 <= 0x3F)
                  {
                    sub_5684(319);
                    if (v10 <= 0x3F)
                    {
                      sub_5750(319);
                      if (v11 <= 0x3F)
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
    }
  }
}

void sub_2A078(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2A108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2A240(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2A364(uint64_t a1)
{
  sub_19FE0(319, &qword_27EBB8, &type metadata for ReadingGoalsData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27EBC0, &type metadata for BooksGoalsData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &qword_27EBC8, &type metadata for UpSellData);
      if (v3 <= 0x3F)
      {
        sub_19FE0(319, &qword_27EBD0, &type metadata for OnDevicePersonalizationPropertyData);
        if (v4 <= 0x3F)
        {
          sub_19FE0(319, &qword_27E398, &type metadata for SeriesData);
          if (v5 <= 0x3F)
          {
            sub_19FE0(319, &qword_27EBD8, &type metadata for SuggestionData);
            if (v6 <= 0x3F)
            {
              sub_1E1150();
              if (v7 <= 0x3F)
              {
                sub_1E11A0();
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

unint64_t sub_2A50C()
{
  result = qword_27EC30;
  if (!qword_27EC30)
  {
    result = swift_getWitnessTable(byte_1E73E8, &type metadata for SectionExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27EC30);
  }

  return result;
}

unint64_t sub_2A564()
{
  result = qword_27EC38;
  if (!qword_27EC38)
  {
    result = swift_getWitnessTable(byte_1E7358, &type metadata for SectionExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27EC38);
  }

  return result;
}

unint64_t sub_2A5BC()
{
  result = qword_27EC40;
  if (!qword_27EC40)
  {
    result = swift_getWitnessTable(byte_1E7380, &type metadata for SectionExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27EC40);
  }

  return result;
}

uint64_t sub_2A610(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v13 = 0x8000000000213B80;
    if (a1 == 0xD000000000000010 && 0x8000000000213B80 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v14 = 0xEE0061746144736CLL;
      if (a1 == 0x616F47736B6F6F62 && a2 == 0xEE0061746144736CLL || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 5;
      }

      else
      {
        v15 = 0x8000000000213BA0;
        if (a1 == 0xD000000000000023 && 0x8000000000213BA0 == a2 || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 6;
        }

        else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 7;
        }

        else if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 8;
        }

        else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 9;
        }

        else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
        {
          0xE900000000000061, v15, a3, a4, a5, a6, a7, a8;
          return 10;
        }

        else
        {
          v16 = sub_1E1D30();
          a2, v17, v18, v19, v20, v21, v22, v23;
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

uint64_t CollectionDescriptionEvent.collectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27EC78, &unk_1E7460);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CollectionDescriptionEvent.collectionData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27EC78, &unk_1E7460);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CollectionDescriptionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionDescriptionEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionDescriptionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionDescriptionEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionDescriptionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27EC78, &unk_1E7460);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for CollectionDescriptionEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t CollectionDescriptionEvent.Model.collectionData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t CollectionDescriptionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionDescriptionEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionDescriptionEvent.Model.init(collectionData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = *(a1 + 16);
  v6 = *(type metadata accessor for CollectionDescriptionEvent.Model(0) + 20);
  v7 = sub_1E1150();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t sub_2AF24()
{
  if (*v0)
  {
    return 0x746144746E657665;
  }

  else
  {
    return 0x697463656C6C6F63;
  }
}

void sub_2AF70(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  v12 = 0xEE00617461446E6FLL;
  v13 = a1 == 0x697463656C6C6F63 && a2 == 0xEE00617461446E6FLL;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v14 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v12, a4, a5, a6, a7, a8, a9;
    v14 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a3 = v14;
}

uint64_t sub_2B05C(uint64_t a1)
{
  v2 = sub_2B2C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2B098(uint64_t a1)
{
  v2 = sub_2B2C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionDescriptionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27EC80, &qword_1E7470);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28[-v7];
  sub_48B8(a1, a1[3]);
  sub_2B2C0();
  sub_1E1E00();
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v29 = *v3;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  v28[15] = 0;
  sub_2B314();

  sub_1E1CF0();
  v12 = v32;
  v30, v13, v14, v15, v16, v17, v18, v19;
  v12, v20, v21, v22, v23, v24, v25, v26;
  if (!v2)
  {
    type metadata accessor for CollectionDescriptionEvent.Model(0);
    LOBYTE(v29) = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2B2C0()
{
  result = qword_27EC88;
  if (!qword_27EC88)
  {
    atomic_store(result, &qword_27EC88);
  }

  return result;
}

unint64_t sub_2B314()
{
  result = qword_27EC90;
  if (!qword_27EC90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollectionData, &type metadata for CollectionData, v0, v1);
    atomic_store(result, &qword_27EC90);
  }

  return result;
}

void CollectionDescriptionEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v34 = sub_1E1150();
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_3D68(&qword_27EC98, &qword_1E7478);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v30 - v6;
  v8 = type metadata accessor for CollectionDescriptionEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_2B2C0();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v30 = v8;
    v18 = v10;
    v20 = v33;
    v19 = v34;
    v39 = 0;
    sub_2B68C();
    v21 = v35;
    sub_1E1C20();
    v22 = v37;
    *v18 = v36;
    *(v18 + 8) = v22;
    *(v18 + 16) = v38;
    LOBYTE(v36) = 1;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v7, v21);
    (*(v31 + 32))(v18 + *(v30 + 20), v5, v19);
    sub_2B6E0(v18, v32);
    sub_4E48(a1, v23, v24, v25, v26, v27, v28, v29);
    sub_2B744(v18);
  }
}

unint64_t sub_2B68C()
{
  result = qword_27ECA0;
  if (!qword_27ECA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollectionData, &type metadata for CollectionData, v0, v1);
    atomic_store(result, &qword_27ECA0);
  }

  return result;
}

uint64_t sub_2B6E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionDescriptionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B744(uint64_t a1)
{
  v2 = type metadata accessor for CollectionDescriptionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2B840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27EC78, &unk_1E7460);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_2B92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27EC78, &unk_1E7460);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2BA48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27EC78, &unk_1E7460);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_2BB5C(uint64_t a1)
{
  sub_2BBE0(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2BBE0(uint64_t a1)
{
  if (!qword_27ED10)
  {
    sub_2B68C();
    sub_2B314();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED10);
    }
  }
}

uint64_t sub_2BC5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2BD1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2BDC0(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2BE50()
{
  result = qword_27EDD0;
  if (!qword_27EDD0)
  {
    atomic_store(result, &qword_27EDD0);
  }

  return result;
}

unint64_t sub_2BEA8()
{
  result = qword_27EDD8;
  if (!qword_27EDD8)
  {
    result = swift_getWitnessTable(byte_1E757C, &type metadata for CollectionDescriptionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27EDD8);
  }

  return result;
}

unint64_t sub_2BF00()
{
  result = qword_27EDE0;
  if (!qword_27EDE0)
  {
    result = swift_getWitnessTable(byte_1E75A4, &type metadata for CollectionDescriptionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27EDE0);
  }

  return result;
}

void __swiftcall PurchaseData.init(purchaseAttemptID:purchaseMethod:isPreorder:pricingParameters:)(BookAnalytics::PurchaseData *__return_ptr retstr, Swift::String purchaseAttemptID, BookAnalytics::PurchaseMethod_optional purchaseMethod, Swift::Bool isPreorder, Swift::String pricingParameters)
{
  v5 = *purchaseMethod.value;
  retstr->purchaseAttemptID = purchaseAttemptID;
  retstr->purchaseMethod.value = v5;
  retstr->isPreorder = isPreorder;
  retstr->pricingParameters = pricingParameters;
}

unint64_t sub_2BFB8()
{
  v1 = 0x6573616863727570;
  v2 = 0x64726F6572507369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2C044@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_2CB24(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_2C06C(uint64_t a1)
{
  v2 = sub_2C7AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2C0A8(uint64_t a1)
{
  v2 = sub_2C7AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PurchaseData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27EDE8, &qword_1E7688);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - v5;
  v7 = *(v1 + 16);
  v12 = *(v1 + 17);
  v13 = v7;
  v8 = *(v1 + 24);
  v11[0] = *(v1 + 32);
  v11[1] = v8;
  sub_48B8(a1, a1[3]);
  sub_2C7AC();
  sub_1E1E00();
  v19 = 0;
  v9 = v14;
  sub_1E1CB0();
  if (!v9)
  {
    v18 = v13;
    v17 = 1;
    sub_2C800();
    sub_1E1C80();
    v16 = 2;
    sub_1E1CC0();
    v15 = 3;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v6, v3);
}

void PurchaseData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_27EE00, &qword_1E7690);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - v7;
  sub_48B8(a1, a1[3]);
  sub_2C7AC();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v53 = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v48 = v16;
    v51 = 1;
    sub_2C854();
    sub_1E1BB0();
    v19 = v52;
    v50 = 2;
    v20 = sub_1E1BF0();
    v46 = v19;
    v47 = v20;
    v49 = 3;
    v28 = sub_1E1BE0();
    v30 = v29;
    v47 &= 1u;
    (*(v6 + 8))(v8, v5);
    *a2 = v48;
    *(a2 + 8) = v18;
    v31 = v47;
    *(a2 + 16) = v46;
    *(a2 + 17) = v31;
    *(a2 + 24) = v28;
    *(a2 + 32) = v30;

    sub_4E48(a1, v32, v33, v34, v35, v36, v37, v38);
    v30, v39, v40, v41, v42, v43, v44, v45;
    v18, v21, v22, v23, v24, v25, v26, v27;
  }
}

uint64_t _s13BookAnalytics12PurchaseDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = a1[1];
  v10 = *(a1 + 16);
  v11 = *(a1 + 17);
  v12 = a1[3];
  v13 = a1[4];
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 17);
  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  if ((*a1 != *a2 || v9 != v14) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v10 == 3)
  {
    result = 0;
    if (v15 != 3)
    {
      return result;
    }

LABEL_6:
    if ((v11 ^ v16))
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v15 == 3)
  {
    return 0;
  }

  v20 = 0x6E776F6E6B6E75;
  v21 = 0x6143746964657263;
  v22 = 0xEA00000000006472;
  if (v10 != 1)
  {
    v21 = 0x6974706D65646572;
    v22 = 0xEE0065646F436E6FLL;
  }

  if (v10)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0x6E776F6E6B6E75;
  }

  if (v10)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0xE700000000000000;
  }

  if (v15)
  {
    if (v15 == 1)
    {
      v20 = 0x6143746964657263;
      v25 = 0xEA00000000006472;
      if (v23 != 0x6143746964657263)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v20 = 0x6974706D65646572;
      v25 = 0xEE0065646F436E6FLL;
      if (v23 != 0x6974706D65646572)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v25 = 0xE700000000000000;
    if (v23 != 0x6E776F6E6B6E75)
    {
LABEL_34:
      v33 = sub_1E1D30();
      v24, v34, v35, v36, v37, v38, v39, v40;
      v25, v41, v42, v43, v44, v45, v46, v47;
      result = 0;
      if ((v33 & 1) == 0)
      {
        return result;
      }

      goto LABEL_6;
    }
  }

  if (v24 != v25)
  {
    goto LABEL_34;
  }

  v24, v9, v20, v14, a5, a6, a7, a8;
  v25, v26, v27, v28, v29, v30, v31, v32;
  if (v11 != v16)
  {
    return 0;
  }

LABEL_7:
  if (v12 == v17 && v13 == v18)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_2C7AC()
{
  result = qword_27EDF0;
  if (!qword_27EDF0)
  {
    result = swift_getWitnessTable(byte_1E7878, &type metadata for PurchaseData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27EDF0);
  }

  return result;
}

unint64_t sub_2C800()
{
  result = qword_27EDF8;
  if (!qword_27EDF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PurchaseMethod, &type metadata for PurchaseMethod, v0, v1);
    atomic_store(result, &qword_27EDF8);
  }

  return result;
}

unint64_t sub_2C854()
{
  result = qword_27EE08;
  if (!qword_27EE08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PurchaseMethod, &type metadata for PurchaseMethod, v0, v1);
    atomic_store(result, &qword_27EE08);
  }

  return result;
}

unint64_t sub_2C8AC()
{
  result = qword_27EE10;
  if (!qword_27EE10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PurchaseData, &type metadata for PurchaseData, v0, v1);
    atomic_store(result, &qword_27EE10);
  }

  return result;
}

unint64_t sub_2C904()
{
  result = qword_27EE18;
  if (!qword_27EE18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PurchaseData, &type metadata for PurchaseData, v0, v1);
    atomic_store(result, &qword_27EE18);
  }

  return result;
}

__n128 sub_2C958(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2C96C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2C9B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2CA20()
{
  result = qword_27EE20;
  if (!qword_27EE20)
  {
    result = swift_getWitnessTable(byte_1E7850, &type metadata for PurchaseData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27EE20);
  }

  return result;
}

unint64_t sub_2CA78()
{
  result = qword_27EE28;
  if (!qword_27EE28)
  {
    result = swift_getWitnessTable("a^\a", &type metadata for PurchaseData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27EE28);
  }

  return result;
}

unint64_t sub_2CAD0()
{
  result = qword_27EE30;
  if (!qword_27EE30)
  {
    result = swift_getWitnessTable("I^\a", &type metadata for PurchaseData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27EE30);
  }

  return result;
}

uint64_t sub_2CB24(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x8000000000213BD0;
  if (a1 == 0xD000000000000011 && 0x8000000000213BD0 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEE00646F6874654DLL;
    if (a1 == 0x6573616863727570 && a2 == 0xEE00646F6874654DLL || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x64726F6572507369 && a2 == 0xEA00000000007265 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0xD000000000000011 && 0x8000000000213BF0 == a2)
    {
      a2, 0x8000000000213BF0, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }
  }
}

BookAnalytics::DisplayType_optional __swiftcall DisplayType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F430;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t DisplayType.rawValue.getter()
{
  v1 = 1684632167;
  if (*v0 != 1)
  {
    v1 = 1953720684;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t _s13BookAnalytics18LibraryDisplayDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 1684632167;
  if (v8 != 1)
  {
    v9 = 1953720684;
  }

  if (*a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v12 = 1684632167;
  if (*a2 != 1)
  {
    v12 = 1953720684;
  }

  if (*a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (v10 == v13 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
  }

  v11, a2, v13, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

unint64_t sub_2CE3C()
{
  result = qword_27EE38;
  if (!qword_27EE38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisplayType, &type metadata for DisplayType, v0, v1);
    atomic_store(result, &qword_27EE38);
  }

  return result;
}

Swift::Int sub_2CE90()
{
  v1 = *v0;
  sub_1E1DC0();
  if (v1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  sub_1E17D0();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1E1DE0();
}

void sub_2CF24(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  sub_1E17D0();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_2CFA4(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  if (v2)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_2D040(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1684632167;
  if (v2 != 1)
  {
    v4 = 1953720684;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_2D150()
{
  result = qword_27EE40;
  if (!qword_27EE40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisplayType, &type metadata for DisplayType, v0, v1);
    atomic_store(result, &qword_27EE40);
  }

  return result;
}

void sub_2D1C8(void *a1@<X0>, BAEventReporter *a2@<X1>, _BYTE *a3@<X8>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>)
{
  if (a1 == 0x546C61766F6D6572 && a2 == 0xEB00000000657079)
  {
    a2, 0xEB00000000657079, a1, a4, a5, a6, a7, a8;
    v19 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a3 = v19 & 1;
}

uint64_t sub_2D254(uint64_t a1)
{
  v2 = sub_2D6C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2D290(uint64_t a1)
{
  v2 = sub_2D6C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WantListRemovalTypeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27EE48, &qword_1E79E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_2D6C8();
  sub_1E1E00();
  v10 = v7;
  sub_2D71C();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

void WantListRemovalTypeData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_27EE60, &qword_1E79E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_2D6C8();
  sub_1E1DF0();
  if (!v2)
  {
    sub_2D770();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t _s13BookAnalytics23WantListRemovalTypeDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xD000000000000012;
  v10 = 0x8000000000213220;
  if (v8 == 1)
  {
    v11 = 0x8000000000213220;
  }

  else
  {
    v9 = 0x6F4465766F6D6572;
    v11 = 0xEE0064616F6C6E77;
  }

  if (*a1)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  v14 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v14 = 0x6F4465766F6D6572;
    v10 = 0xEE0064616F6C6E77;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v16 = v10;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v12 == v15 && v13 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v13, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_2D6C8()
{
  result = qword_27EE50;
  if (!qword_27EE50)
  {
    result = swift_getWitnessTable(byte_1E7BBC, &type metadata for WantListRemovalTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27EE50);
  }

  return result;
}

unint64_t sub_2D71C()
{
  result = qword_27EE58;
  if (!qword_27EE58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemovalType, &type metadata for RemovalType, v0, v1);
    atomic_store(result, &qword_27EE58);
  }

  return result;
}

unint64_t sub_2D770()
{
  result = qword_27EE68;
  if (!qword_27EE68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemovalType, &type metadata for RemovalType, v0, v1);
    atomic_store(result, &qword_27EE68);
  }

  return result;
}

unint64_t sub_2D7C8()
{
  result = qword_27EE70;
  if (!qword_27EE70)
  {
    result = swift_getWitnessTable("I[\a", &type metadata for WantListRemovalTypeData, v0, v1);
    atomic_store(result, &qword_27EE70);
  }

  return result;
}

unint64_t sub_2D820()
{
  result = qword_27EE78;
  if (!qword_27EE78)
  {
    result = swift_getWitnessTable("1[\a", &type metadata for WantListRemovalTypeData, v0, v1);
    atomic_store(result, &qword_27EE78);
  }

  return result;
}

unint64_t sub_2D898()
{
  result = qword_27EE80;
  if (!qword_27EE80)
  {
    result = swift_getWitnessTable(byte_1E7B94, &type metadata for WantListRemovalTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27EE80);
  }

  return result;
}

unint64_t sub_2D8F0()
{
  result = qword_27EE88;
  if (!qword_27EE88)
  {
    result = swift_getWitnessTable(byte_1E7B04, &type metadata for WantListRemovalTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27EE88);
  }

  return result;
}

unint64_t sub_2D948()
{
  result = qword_27EE90;
  if (!qword_27EE90)
  {
    result = swift_getWitnessTable(byte_1E7B2C, &type metadata for WantListRemovalTypeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27EE90);
  }

  return result;
}

uint64_t FlowcaseExposureEvent.flowcaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.flowcaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.dealsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 44);
  v4 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.dealsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 44);
  v4 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FlowcaseExposureEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = enum case for EventProperty.optional<A>(_:);
  v13 = sub_3D68(&qword_27E468, &qword_1E5F70);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v17 - 8) + 104))(a1 + v16, v12, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  (*(*(v19 - 8) + 104))(a1 + v18, v12, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v2, v23);
}

uint64_t FlowcaseExposureEvent.Model.flowcaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v9 = *(v1 + 144);
  v10 = v2;
  v11 = *(v1 + 176);
  v3 = v11;
  v4 = *(v1 + 128);
  v8[0] = *(v1 + 112);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1C79C(v8, v7);
}

uint64_t FlowcaseExposureEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  v13[2] = *(v1 + 216);
  v13[3] = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 200);
  v13[0] = *(v1 + 184);
  v13[1] = v4;
  v5 = *(v1 + 296);
  v6 = *(v1 + 264);
  v14 = *(v1 + 280);
  v15 = v5;
  v7 = *(v1 + 296);
  v16 = *(v1 + 312);
  v8 = *(v1 + 264);
  v13[4] = v3;
  v13[5] = v8;
  v17 = *(v1 + 328);
  *(a1 + 96) = v14;
  *(a1 + 112) = v7;
  *(a1 + 128) = *(v1 + 312);
  *(a1 + 144) = *(v1 + 328);
  v9 = *(v1 + 232);
  *(a1 + 32) = *(v1 + 216);
  *(a1 + 48) = v9;
  *(a1 + 64) = *(v1 + 248);
  *(a1 + 80) = v6;
  v10 = *(v1 + 200);
  *a1 = *(v1 + 184);
  *(a1 + 16) = v10;
  return sub_275C4(v13, v12);
}

uint64_t FlowcaseExposureEvent.Model.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 360);
  *a1 = *(v1 + 336);
  *(a1 + 8) = *(v1 + 344);
  *(a1 + 24) = v2;
}

void FlowcaseExposureEvent.Model.mediaData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 368);
  v3 = *(v1 + 376);
  v4 = *(v1 + 384);
  v5 = *(v1 + 392);
  v6 = *(v1 + 400);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  sub_2EB50(v2, v3, v4, v5);
}

void sub_2EB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t FlowcaseExposureEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 424);
  *a1 = *(v1 + 408);
  *(a1 + 16) = v2;
}

uint64_t FlowcaseExposureEvent.Model.dealsData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[55];
  v3 = v1[56];
  v4 = v1[57];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2EBCC(v2, v3, v4);
}

uint64_t sub_2EBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t FlowcaseExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent.Model(0) + 48);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent.Model(0) + 52);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.Model.init(sectionData:flowcaseData:linkData:pageData:mediaData:upSellData:suggestionData:dealsData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v12;
  v13 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v13;
  v14 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v14;
  v15 = a2[2];
  v16 = a2[3];
  v17 = *a2;
  *(a9 + 128) = a2[1];
  *(a9 + 144) = v15;
  v18 = a1[6];
  *(a9 + 160) = v16;
  *(a9 + 96) = v18;
  *(a9 + 112) = v17;
  v19 = (a9 + 184);
  v20 = *(a3 + 96);
  v21 = *(a3 + 128);
  v19[7] = *(a3 + 112);
  v19[8] = v21;
  v22 = *(a3 + 48);
  *(a9 + 216) = *(a3 + 32);
  *(a9 + 232) = v22;
  v23 = *(a3 + 80);
  *(a9 + 248) = *(a3 + 64);
  v24 = *(a4 + 16);
  v25 = *(a4 + 24);
  v26 = *(a5 + 32);
  v27 = *(a6 + 16);
  v28 = *a7;
  v29 = *(a8 + 16);
  *(a9 + 176) = *(a2 + 8);
  *(a9 + 328) = *(a3 + 144);
  v19[5] = v23;
  v19[6] = v20;
  v30 = *(a3 + 16);
  *(a9 + 184) = *a3;
  *(a9 + 200) = v30;
  *(a9 + 336) = *a4;
  *(a9 + 352) = v24;
  *(a9 + 360) = v25;
  v31 = *(a5 + 16);
  *(a9 + 368) = *a5;
  *(a9 + 384) = v31;
  *(a9 + 400) = v26;
  *(a9 + 408) = *a6;
  *(a9 + 424) = v27;
  *(a9 + 432) = v28;
  *(a9 + 440) = *a8;
  *(a9 + 456) = v29;
  v32 = type metadata accessor for FlowcaseExposureEvent.Model(0);
  v33 = *(v32 + 48);
  v34 = sub_1E1150();
  (*(*(v34 - 8) + 32))(a9 + v33, a10, v34);
  v35 = *(v32 + 52);
  v36 = sub_1E11A0();
  v37 = *(*(v36 - 8) + 32);

  return v37(a9 + v35, a11, v36);
}

uint64_t sub_2EE84(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x746144736C616564;
    v6 = 0x746144746E657665;
    if (a1 != 8)
    {
      v6 = 0x74614464656D6974;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x61446C6C65537075;
    if (a1 != 5)
    {
      v7 = 0x6974736567677573;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x446E6F6974636573;
    v2 = 0x617461446B6E696CLL;
    v3 = 0x6174614465676170;
    if (a1 != 3)
    {
      v3 = 0x746144616964656DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x65736163776F6C66;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2EFF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_31884(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_2F02C(uint64_t a1)
{
  v2 = sub_2F79C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2F068(uint64_t a1)
{
  v2 = sub_2F79C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FlowcaseExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27EED8, &qword_1E7C30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v67[-v7];
  sub_48B8(a1, a1[3]);
  sub_2F79C();
  sub_1E1E00();
  v9 = v3[3];
  v10 = v3[5];
  v114 = v3[4];
  v115 = v10;
  v11 = v3[5];
  v116 = v3[6];
  v12 = v3[1];
  v111[0] = *v3;
  v111[1] = v12;
  v13 = v3[3];
  v15 = *v3;
  v14 = v3[1];
  v112 = v3[2];
  v113 = v13;
  v108 = v114;
  v109 = v11;
  v110 = v3[6];
  v104 = v15;
  v105 = v14;
  v106 = v112;
  v107 = v9;
  v120 = 0;
  sub_274D4(v111, &v84);
  sub_18544();
  sub_1E1CF0();
  if (v2)
  {
    v88 = v108;
    v89 = v109;
    v90 = v110;
    v84 = v104;
    v85 = v105;
    v86 = v106;
    v87 = v107;
    sub_28354(&v84);
  }

  else
  {
    v99[4] = v108;
    v99[5] = v109;
    v99[6] = v110;
    v99[0] = v104;
    v99[1] = v105;
    v99[2] = v106;
    v99[3] = v107;
    sub_28354(v99);
    v16 = v3[8];
    v17 = v3[10];
    v101 = v3[9];
    v102 = v17;
    v18 = v3[8];
    v100[0] = v3[7];
    v100[1] = v18;
    v19 = v3[10];
    v96 = v101;
    v97 = v19;
    v103 = *(v3 + 22);
    v98 = *(v3 + 22);
    v94 = v100[0];
    v95 = v16;
    v119 = 1;
    sub_1C79C(v100, &v84);
    sub_1C860();
    sub_1E1CF0();
    v82[2] = v96;
    v82[3] = v97;
    v83 = v98;
    v82[0] = v94;
    v82[1] = v95;
    sub_1C7D4(v82);
    v20 = *(v3 + 296);
    v21 = *(v3 + 264);
    v90 = *(v3 + 280);
    v91 = v20;
    v22 = *(v3 + 296);
    v92 = *(v3 + 312);
    v23 = *(v3 + 232);
    v86 = *(v3 + 216);
    v87 = v23;
    v24 = *(v3 + 264);
    v88 = *(v3 + 248);
    v89 = v24;
    v25 = *(v3 + 200);
    v84 = *(v3 + 184);
    v85 = v25;
    v93 = *(v3 + 41);
    v78 = v90;
    v79 = v22;
    v80 = *(v3 + 312);
    v81 = *(v3 + 41);
    v26 = *(v3 + 232);
    v74 = *(v3 + 216);
    v75 = v26;
    v76 = *(v3 + 248);
    v77 = v21;
    v27 = *(v3 + 200);
    v72 = *(v3 + 184);
    v73 = v27;
    v118 = 2;
    sub_275C4(&v84, v70);
    sub_18630();
    sub_1E1CF0();
    v70[6] = v78;
    v70[7] = v79;
    v70[8] = v80;
    v71 = v81;
    v70[2] = v74;
    v70[3] = v75;
    v70[4] = v76;
    v70[5] = v77;
    v70[0] = v72;
    v70[1] = v73;
    sub_283A8(v70);
    v28 = *(v3 + 45);
    *v67 = *(v3 + 42);
    *&v67[8] = *(v3 + 344);
    v68 = v28;
    v117 = 3;
    sub_18598();

    sub_1E1CF0();
    v29 = *&v67[8];
    v68, v30, v31, v32, v33, v34, v35, v36;
    v29, v37, v38, v39, v40, v41, v42, v43;
    v44 = *(v3 + 47);
    v45 = *(v3 + 48);
    v46 = *(v3 + 49);
    v47 = *(v3 + 100);
    *v67 = *(v3 + 46);
    *&v67[8] = v44;
    *&v67[16] = v45;
    v68 = v46;
    v69 = v47;
    v117 = 4;
    sub_2EB50(*v67, v44, v45, v46);
    sub_16778();
    sub_1E1C80();
    sub_2F7F0(*v67, *&v67[8], *&v67[16], v68, v69, v48, v49, v50);
    v51 = *(v3 + 53);
    *v67 = *(v3 + 408);
    *&v67[16] = v51;
    v117 = 5;
    sub_28450();

    sub_1E1C80();
    *&v67[16], v52, v53, v54, v55, v56, v57, v58;
    v67[0] = *(v3 + 432);
    v117 = 6;
    sub_284F8();
    sub_1E1C80();
    v59 = *(v3 + 56);
    v60 = *(v3 + 57);
    *v67 = *(v3 + 55);
    *&v67[8] = v59;
    *&v67[16] = v60;
    v117 = 7;
    sub_2EBCC(*v67, v59, v60);
    sub_2F834();
    sub_1E1C80();
    sub_2F888(*v67, *&v67[8], *&v67[16], v61, v62, v63, v64, v65);
    type metadata accessor for FlowcaseExposureEvent.Model(0);
    v67[0] = 8;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v67[0] = 9;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2F79C()
{
  result = qword_27EEE0;
  if (!qword_27EEE0)
  {
    result = swift_getWitnessTable(")X\a", &type metadata for FlowcaseExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27EEE0);
  }

  return result;
}

void sub_2F7F0(uint64_t a1, BAEventReporter *a2, void *a3, BAEventReporter *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  if (a2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;

    a4, v9, v10, v11, v12, v13, v14, v15;
  }
}

unint64_t sub_2F834()
{
  result = qword_27EEE8;
  if (!qword_27EEE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DealsData, &type metadata for DealsData, v0, v1);
    atomic_store(result, &qword_27EEE8);
  }

  return result;
}

void sub_2F888(uint64_t a1, const char *a2, BAEventReporter *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  if (a3 != (&dword_0 + 1))
  {
    a3, a2, a3, a4, a5, a6, a7, a8;
  }
}

void FlowcaseExposureEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v53 = sub_1E11A0();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v54 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_27EEF0, &qword_1E7C38);
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v9 = v47 - v8;
  v10 = type metadata accessor for FlowcaseExposureEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v58 = a1;
  sub_48B8(a1, v13);
  sub_2F79C();
  v57 = v9;
  v14 = v59;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v58, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v48 = v6;
    v49 = v10;
    v22 = v55;
    v59 = v12;
    v88 = 0;
    sub_18EFC();
    sub_1E1C20();
    v23 = v73;
    v24 = v59;
    *(v59 + 4) = v72;
    *(v24 + 5) = v23;
    *(v24 + 6) = v74;
    v25 = v69;
    *v24 = v68;
    *(v24 + 1) = v25;
    v26 = v71;
    *(v24 + 2) = v70;
    *(v24 + 3) = v26;
    v87 = 1;
    sub_1C808();
    sub_1E1C20();
    v27 = v66;
    *(v24 + 9) = v65;
    *(v24 + 10) = v27;
    *(v24 + 22) = v67;
    v28 = v64;
    *(v24 + 7) = v63;
    *(v24 + 8) = v28;
    v86 = 2;
    sub_18FA4();
    sub_1E1C20();
    v47[1] = 0;
    v29 = v78;
    *(v24 + 216) = v77;
    *(v24 + 232) = v29;
    v30 = v80;
    *(v24 + 248) = v79;
    v31 = v76;
    *(v24 + 184) = v75;
    *(v24 + 200) = v31;
    v32 = v81;
    v33 = v83;
    *(v24 + 296) = v82;
    *(v24 + 312) = v33;
    *(v24 + 41) = v84;
    *(v24 + 264) = v30;
    *(v24 + 280) = v32;
    v85 = 3;
    sub_18F50();
    sub_1E1C20();
    v47[0] = v24 + 184;
    v34 = v61;
    *(v24 + 21) = v60;
    *(v24 + 22) = v34;
    v85 = 4;
    sub_16720();
    sub_1E1BB0();
    v35 = v62;
    v36 = v61;
    *(v24 + 23) = v60;
    *(v24 + 24) = v36;
    *(v24 + 100) = v35;
    v85 = 5;
    sub_28EF4();
    sub_1E1BB0();
    v37 = v61;
    *(v24 + 408) = v60;
    *(v24 + 53) = v37;
    v85 = 6;
    sub_28F9C();
    sub_1E1BB0();
    v24[432] = v60;
    v85 = 7;
    sub_30258();
    sub_1E1BB0();
    v38 = v61;
    *(v24 + 440) = v60;
    *(v24 + 57) = v38;
    LOBYTE(v60) = 8;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v54 + 32))(&v24[*(v49 + 48)], v48, v4);
    LOBYTE(v60) = 9;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1C20();
    (*(v22 + 8))(v57, v56);
    v39 = v59;
    (*(v50 + 32))(&v59[*(v49 + 52)], v52, v53);
    sub_302AC(v39, v51);
    sub_4E48(v58, v40, v41, v42, v43, v44, v45, v46);
    sub_30310(v39);
  }
}

unint64_t sub_30258()
{
  result = qword_27EEF8;
  if (!qword_27EEF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DealsData, &type metadata for DealsData, v0, v1);
    atomic_store(result, &qword_27EEF8);
  }

  return result;
}

uint64_t sub_302AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowcaseExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_30310(uint64_t a1)
{
  v2 = type metadata accessor for FlowcaseExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3040C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = enum case for EventProperty.optional<A>(_:);
  v14 = sub_3D68(&qword_27E468, &qword_1E5F70);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v18 - 8) + 104))(a2 + v17, v13, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  (*(*(v20 - 8) + 104))(a2 + v19, v13, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v4, v24);
}

uint64_t sub_3076C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  v14 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  v15 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  v16 = sub_3D68(&qword_27E468, &qword_1E5F70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  v18 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  v19 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  v22 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v23 = *(*(v22 - 8) + 48);
  v24 = a1 + a3[13];

  return v23(v24, a2, v22);
}

uint64_t sub_30B30(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  v16 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  v17 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  v18 = sub_3D68(&qword_27E468, &qword_1E5F70);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  v20 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  v21 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  v24 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v25 = *(*(v24 - 8) + 56);
  v26 = a1 + a4[13];

  return v25(v26, a2, a2, v24);
}

void sub_30EEC(uint64_t a1)
{
  sub_311F0(319, &qword_27E578, sub_18EFC, sub_18544, &type metadata for SectionData);
  if (v1 <= 0x3F)
  {
    sub_311F0(319, &qword_27EF68, sub_1C808, sub_1C860, &type metadata for FlowcaseData);
    if (v2 <= 0x3F)
    {
      sub_311F0(319, &unk_27E588, sub_18FA4, sub_18630, &type metadata for LinkData);
      if (v3 <= 0x3F)
      {
        sub_311F0(319, &qword_27E580, sub_18F50, sub_18598, &type metadata for PageData);
        if (v4 <= 0x3F)
        {
          sub_311F0(319, &qword_27E568, sub_16720, sub_16778, &type metadata for MediaData);
          if (v5 <= 0x3F)
          {
            sub_311F0(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
            if (v6 <= 0x3F)
            {
              sub_311F0(319, &unk_27EAF8, sub_28F9C, sub_284F8, &type metadata for SuggestionData);
              if (v7 <= 0x3F)
              {
                sub_311F0(319, &unk_27EF70, sub_30258, sub_2F834, &type metadata for DealsData);
                if (v8 <= 0x3F)
                {
                  sub_5684(319);
                  if (v9 <= 0x3F)
                  {
                    sub_5750(319);
                    if (v10 <= 0x3F)
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
  }
}

void sub_311F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_31280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_313B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_314DC(uint64_t a1)
{
  sub_19FE0(319, &qword_27F028, &type metadata for MediaData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27EBC8, &type metadata for UpSellData);
    if (v2 <= 0x3F)
    {
      sub_19FE0(319, &qword_27EBD8, &type metadata for SuggestionData);
      if (v3 <= 0x3F)
      {
        sub_19FE0(319, &unk_27F030, &type metadata for DealsData);
        if (v4 <= 0x3F)
        {
          sub_1E1150();
          if (v5 <= 0x3F)
          {
            sub_1E11A0();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for FlowcaseExposureEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowcaseExposureEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_31780()
{
  result = qword_27F080;
  if (!qword_27F080)
  {
    result = swift_getWitnessTable("AX\a", &type metadata for FlowcaseExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F080);
  }

  return result;
}

unint64_t sub_317D8()
{
  result = qword_27F088;
  if (!qword_27F088)
  {
    result = swift_getWitnessTable(byte_1E7D98, &type metadata for FlowcaseExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F088);
  }

  return result;
}

unint64_t sub_31830()
{
  result = qword_27F090;
  if (!qword_27F090)
  {
    result = swift_getWitnessTable("qX\a", &type metadata for FlowcaseExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F090);
  }

  return result;
}

uint64_t sub_31884(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xEC00000061746144;
    if (a1 == 0x65736163776F6C66 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 5;
    }

    else
    {
      v14 = 0xEE00617461446E6FLL;
      if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 6;
      }

      else if (a1 == 0x746144736C616564 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 7;
      }

      else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 8;
      }

      else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
      {
        0xE900000000000061, v14, a3, a4, a5, a6, a7, a8;
        return 9;
      }

      else
      {
        v15 = sub_1E1D30();
        a2, v16, v17, v18, v19, v20, v21, v22;
        if (v15)
        {
          return 9;
        }

        else
        {
          return 10;
        }
      }
    }
  }
}

uint64_t AppAnalyticsAdditionalData.editionKind.getter()
{
  v1 = *(v0 + OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind);

  return v1;
}

id AppAnalyticsAdditionalData.__allocating_init(supportsUnifiedProductPage:editionKind:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR___BAAppAnalyticsAdditionalData_supportsUnifiedProductPage] = a1;
  v8 = &v7[OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

id AppAnalyticsAdditionalData.init(supportsUnifiedProductPage:editionKind:)(char a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR___BAAppAnalyticsAdditionalData_supportsUnifiedProductPage] = a1;
  v4 = &v3[OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind];
  *v4 = a2;
  v4[1] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for AppAnalyticsAdditionalData();
  return objc_msgSendSuper2(&v6, "init");
}

unint64_t sub_31F2C()
{
  sub_3D68(&qword_27F0A8, &qword_1E7EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E7EA0;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000000213C10;
  *(inited + 48) = *(v0 + OBJC_IVAR___BAAppAnalyticsAdditionalData_supportsUnifiedProductPage);
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x4B6E6F6974696465;
  *(inited + 88) = 0xEB00000000646E69;
  v3 = *(v0 + OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind);
  v2 = *(v0 + OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind + 8);
  *(inited + 120) = sub_3D68(&qword_27F0B0, &qword_1E7EB8);
  *(inited + 96) = v3;
  *(inited + 104) = v2;

  v4 = sub_322DC(inited);
  swift_setDeallocating();
  sub_3D68(&qword_27F0B8, &qword_1E7EC0);
  swift_arrayDestroy();
  return v4;
}

id Utilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppAnalyticsAdditionalData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppAnalyticsAdditionalData();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id _s13BookAnalytics03AppB14AdditionalDataC4data10dictionaryACSgSDySSypG_tFZ_0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_A2F4(0xD00000000000001ALL, 0x8000000000213C10);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_326BC(*(a1 + 56) + 32 * v2, v15);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_A2F4(0x4B6E6F6974696465, 0xEB00000000646E69);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_326BC(*(a1 + 56) + 32 * v4, v15);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = v13;
  v7 = v14;
  v8 = type metadata accessor for AppAnalyticsAdditionalData();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR___BAAppAnalyticsAdditionalData_supportsUnifiedProductPage] = v13;
  v10 = &v9[OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind];
  *v10 = v6;
  v10[1] = v7;
  v12.receiver = v9;
  v12.super_class = v8;
  return objc_msgSendSuper2(&v12, "init");
}

unint64_t sub_322DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3D68(&qword_27F100, &qword_1E7F18);
    v3 = sub_1E1B50();
    v4 = a1 + 32;

    while (1)
    {
      sub_17AA4(v4, &v20, &qword_27F0B8, &qword_1E7EC0);
      v5 = v20;
      v6 = v21;
      result = sub_A2F4(v20, v21);
      if (v8)
      {
        break;
      }

      *(&v3[4].super.isa + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(&v3[4].super.isa + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << result));
      v9 = (v3[3].super.isa + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_326AC(&v22, (*v3[3].dataProviders + 32 * result));
      isa = v3[1].super.isa;
      v18 = __OFADD__(isa, 1);
      v19 = (isa + 1);
      if (v18)
      {
        goto LABEL_10;
      }

      v3[1].super.isa = v19;
      v4 += 48;
      if (!--v1)
      {
        v3, v10, v11, v12, v13, v14, v15, v16;
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

unint64_t sub_3246C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3D68(&qword_27F0F0, &qword_1E7F08);
    v3 = sub_1E1B50();
    v4 = a1 + 32;

    while (1)
    {
      sub_17AA4(v4, v20, &qword_27F0F8, &qword_1E7F10);
      result = sub_A5D4(v20);
      if (v6)
      {
        break;
      }

      *(&v3[4].super.isa + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(&v3[4].super.isa + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << result));
      v7 = v3[3].super.isa + 40 * result;
      v8 = v20[0];
      v9 = v20[1];
      *(v7 + 32) = v21;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_326AC(&v22, (*v3[3].dataProviders + 32 * result));
      isa = v3[1].super.isa;
      v18 = __OFADD__(isa, 1);
      v19 = (isa + 1);
      if (v18)
      {
        goto LABEL_10;
      }

      v3[1].super.isa = v19;
      v4 += 72;
      if (!--v1)
      {
        v3, v10, v11, v12, v13, v14, v15, v16;
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

unint64_t sub_325A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3D68(&qword_27F0E8, &qword_1E7F00);
    v3 = sub_1E1B50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_A2F4(v5, v6);
      if (v9)
      {
        break;
      }

      *(&v3[4].super.isa + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(&v3[4].super.isa + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << result));
      v16 = (v3[3].super.isa + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      *(*v3[3].dataProviders + 8 * result) = v7;
      isa = v3[1].super.isa;
      v18 = __OFADD__(isa, 1);
      v19 = (isa + 1);
      if (v18)
      {
        goto LABEL_10;
      }

      v3[1].super.isa = v19;
      if (!--v1)
      {
        v3, v9, v10, v11, v12, v13, v14, v15;
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

_OWORD *sub_326AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_326BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

BookAnalytics::LocationType_optional __swiftcall LocationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  v4 = sub_1E1D40();
  object, v5, v6, v7, v8, v9, v10, v11;
  v13 = 0;
  v14 = 14;
  switch(v4)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v13 = 1;
      goto LABEL_25;
    case 2:
      v13 = 2;
      goto LABEL_25;
    case 3:
      v13 = 3;
      goto LABEL_25;
    case 4:
      v13 = 4;
      goto LABEL_25;
    case 5:
      v13 = 5;
      goto LABEL_25;
    case 6:
      v13 = 6;
      goto LABEL_25;
    case 7:
      v13 = 7;
      goto LABEL_25;
    case 8:
      v13 = 8;
      goto LABEL_25;
    case 9:
      v13 = 9;
      goto LABEL_25;
    case 10:
      v13 = 10;
      goto LABEL_25;
    case 11:
      v13 = 11;
      goto LABEL_25;
    case 12:
      v13 = 12;
      goto LABEL_25;
    case 13:
      v13 = 13;
LABEL_25:
      v14 = v13;
      break;
    case 14:
      break;
    case 15:
      v14 = 15;
      break;
    case 16:
      v14 = 16;
      break;
    case 17:
      v14 = 17;
      break;
    case 18:
      v14 = 18;
      break;
    case 19:
      v14 = 19;
      break;
    case 20:
      v14 = 20;
      break;
    case 21:
      v14 = 21;
      break;
    case 22:
      v14 = 22;
      break;
    case 23:
      v14 = 23;
      break;
    case 24:
      v14 = 24;
      break;
    case 25:
      v14 = 25;
      break;
    case 26:
      v14 = 26;
      break;
    case 27:
      v14 = 27;
      break;
    case 28:
      v14 = 28;
      break;
    case 29:
      v14 = 29;
      break;
    case 30:
      v14 = 30;
      break;
    case 31:
      v14 = 31;
      break;
    default:
      v14 = 32;
      break;
  }

  *v3 = v14;
  return result;
}

unint64_t LocationType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6461655274736F70;
      break;
    case 2:
    case 4:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6372755074736F70;
      break;
    case 7:
      result = 0x52545774736F70;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
    case 0x1C:
    case 0x1E:
      result = 0xD000000000000012;
      break;
    case 0xA:
      result = 0x50746375646F7270;
      break;
    case 0xB:
      result = 0x54676E6964616572;
      break;
    case 0xC:
      result = 0x45676E6964616572;
      break;
    case 0xD:
      result = 0x79616C50696E696DLL;
      break;
    case 0xE:
      result = 0x676150726564726FLL;
      break;
    case 0xF:
      result = 0x6150726F68747561;
      break;
    case 0x10:
      result = 0xD000000000000011;
      break;
    case 0x11:
      result = 0x4241736569726573;
      break;
    case 0x12:
      result = 0x6F42736569726573;
      break;
    case 0x13:
      result = 0x65676150707075;
      break;
    case 0x14:
      result = 0x69746964456C6C61;
      break;
    case 0x15:
      result = 0x726568746FLL;
      break;
    case 0x16:
      result = 0x7265766F63736964;
      break;
    case 0x17:
      result = 0x796C746E65636572;
      break;
    case 0x18:
      result = 0x6C75736552706F74;
      break;
    case 0x19:
      result = 0x6552686372616573;
      break;
    case 0x1A:
      result = 0xD000000000000011;
      break;
    case 0x1B:
      result = 0x70756B636F6CLL;
      break;
    case 0x1D:
      result = 0x6465727574616566;
      break;
    case 0x1F:
      result = 0x6E6F74747562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static LocationData.== infix(_:_:)()
{
  v0 = LocationType.rawValue.getter();
  v2 = v1;
  v3 = LocationType.rawValue.getter();
  v11 = v4;
  if (v0 == v3 && v2 == v4)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1E1D30();
  }

  v2, v4, v5, v6, v7, v8, v9, v10;
  v11, v14, v15, v16, v17, v18, v19, v20;
  return v13 & 1;
}

unint64_t sub_32DC0()
{
  result = qword_27F108;
  if (!qword_27F108)
  {
    result = swift_getWitnessTable("IW\a", &type metadata for LocationType, v0, v1);
    atomic_store(result, &qword_27F108);
  }

  return result;
}

Swift::Int sub_32E14()
{
  sub_1E1DC0();
  LocationType.rawValue.getter();
  v1 = v0;
  sub_1E17D0();
  v1, v2, v3, v4, v5, v6, v7, v8;
  return sub_1E1DE0();
}

void sub_32E7C(uint64_t a1)
{
  LocationType.rawValue.getter();
  v2 = v1;
  sub_1E17D0();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_32EE0(uint64_t a1)
{
  sub_1E1DC0();
  LocationType.rawValue.getter();
  v2 = v1;
  sub_1E17D0();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1E1DE0();
}

unint64_t sub_32F50@<X0>(unint64_t *a1@<X8>)
{
  result = LocationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LocationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_33178()
{
  result = qword_27F110;
  if (!qword_27F110)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationType, &type metadata for LocationType, v0, v1);
    atomic_store(result, &qword_27F110);
  }

  return result;
}

uint64_t RatingEvent.ratingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RatingEvent(0) + 20);
  v4 = sub_3D68(&qword_27F148, &qword_1E80A8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RatingEvent.ratingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RatingEvent(0) + 20);
  v4 = sub_3D68(&qword_27F148, &qword_1E80A8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RatingEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RatingEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RatingEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RatingEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RatingEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RatingEvent(0) + 28);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RatingEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RatingEvent(0) + 28);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RatingEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RatingEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RatingEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RatingEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RatingEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RatingEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27F148, &qword_1E80A8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t RemoveReviewAndRatingEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 104);
  *(a1 + 16) = v2;
}

uint64_t AddToCollectionEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  v6 = v1[20];
  v7 = v1[21];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t RatingEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RatingEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RatingEvent.Model.init(contentData:ratingData:upSellData:seriesData:eventData:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a2;
  v9 = *(a3 + 16);
  v10 = a1[3];
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v10;
  v11 = a1[5];
  *(a6 + 64) = a1[4];
  *(a6 + 80) = v11;
  v12 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v12;
  *(a6 + 96) = v8;
  *(a6 + 104) = *a3;
  *(a6 + 120) = v9;
  v13 = a4[1];
  *(a6 + 128) = *a4;
  *(a6 + 144) = v13;
  *(a6 + 160) = a4[2];
  v14 = *(type metadata accessor for RatingEvent.Model(0) + 32);
  v15 = sub_1E1150();
  v16 = *(*(v15 - 8) + 32);

  return v16(a6 + v14, a5, v15);
}

uint64_t sub_33B7C()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x61446C6C65537075;
  v4 = 0x6144736569726573;
  if (v1 != 3)
  {
    v4 = 0x746144746E657665;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6144676E69746172;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_33C30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_35340(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_33C58(uint64_t a1)
{
  v2 = sub_34020();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_33C94(uint64_t a1)
{
  v2 = sub_34020();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RatingEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27F150, &qword_1E80B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  sub_48B8(a1, a1[3]);
  sub_34020();
  sub_1E1E00();
  v9 = *(v3 + 48);
  v10 = *(v3 + 16);
  v44 = *(v3 + 32);
  v45 = v9;
  v11 = *(v3 + 48);
  v12 = *(v3 + 80);
  v46 = *(v3 + 64);
  v47 = v12;
  v13 = *(v3 + 16);
  v43[0] = *v3;
  v43[1] = v13;
  v39 = v44;
  v40 = v11;
  v14 = *(v3 + 80);
  v41 = v46;
  v42 = v14;
  v37 = v43[0];
  v38 = v10;
  v49 = 0;
  sub_13A5C(v43, v36);
  sub_143D0();
  sub_1E1CF0();
  v36[2] = v39;
  v36[3] = v40;
  v36[4] = v41;
  v36[5] = v42;
  v36[0] = v37;
  v36[1] = v38;
  sub_14424(v36);
  if (!v2)
  {
    LOBYTE(v31) = *(v3 + 96);
    v48 = 1;
    sub_34074();
    sub_1E1CF0();
    v15 = *(v3 + 120);
    v31 = *(v3 + 104);
    v32 = v15;
    v48 = 2;
    sub_28450();

    sub_1E1C80();
    v32, v16, v17, v18, v19, v20, v21, v22;
    v23 = *(v3 + 136);
    v24 = *(v3 + 144);
    v25 = *(v3 + 152);
    v26 = *(v3 + 160);
    v27 = *(v3 + 168);
    *&v31 = *(v3 + 128);
    *(&v31 + 1) = v23;
    v32 = v24;
    v33 = v25;
    v34 = v26;
    v35 = v27;
    v48 = 3;
    sub_13BDC(v31, v23, v24, v25, v26, v27);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v31, *(&v31 + 1), v32, v33, v34, v35, v28, v29);
    type metadata accessor for RatingEvent.Model(0);
    LOBYTE(v31) = 4;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_34020()
{
  result = qword_27F158;
  if (!qword_27F158)
  {
    result = swift_getWitnessTable(byte_1E8288, &type metadata for RatingEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F158);
  }

  return result;
}

unint64_t sub_34074()
{
  result = qword_27F160;
  if (!qword_27F160)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RatingData, &type metadata for RatingData, v0, v1);
    atomic_store(result, &qword_27F160);
  }

  return result;
}

void RatingEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = sub_1E1150();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_3D68(&qword_27F168, &qword_1E80B8);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v35 - v7;
  v9 = type metadata accessor for RatingEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v42 = a1;
  sub_48B8(a1, v12);
  sub_34020();
  v40 = v8;
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v42, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v36 = v6;
    v20 = v39;
    v53 = 0;
    sub_14CB8();
    sub_1E1C20();
    v21 = v49;
    v22 = v11;
    *(v11 + 2) = v48;
    *(v11 + 3) = v21;
    v23 = v51;
    *(v11 + 4) = v50;
    *(v11 + 5) = v23;
    v24 = v47;
    *v11 = v46;
    *(v11 + 1) = v24;
    v52 = 1;
    sub_345E4();
    sub_1E1C20();
    v11[96] = v43;
    v52 = 2;
    sub_28EF4();
    sub_1E1BB0();
    v25 = v44;
    *(v11 + 104) = v43;
    *(v11 + 15) = v25;
    v52 = 3;
    sub_DAD8();
    sub_1E1BB0();
    v26 = v44;
    *(v11 + 8) = v43;
    *(v11 + 9) = v26;
    *(v11 + 10) = v45;
    LOBYTE(v43) = 4;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v27 = v36;
    sub_1E1C20();
    (*(v20 + 8))(v40, v41);
    (*(v37 + 32))(v22 + *(v9 + 32), v27, v4);
    sub_34638(v22, v38);
    sub_4E48(v42, v28, v29, v30, v31, v32, v33, v34);
    sub_3469C(v22);
  }
}

unint64_t sub_345E4()
{
  result = qword_27F170;
  if (!qword_27F170)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RatingData, &type metadata for RatingData, v0, v1);
    atomic_store(result, &qword_27F170);
  }

  return result;
}

uint64_t sub_34638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RatingEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3469C(uint64_t a1)
{
  v2 = type metadata accessor for RatingEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_34798@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27F148, &qword_1E80A8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_3497C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F148, &qword_1E80A8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_34B9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F148, &qword_1E80A8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_34DB4(uint64_t a1)
{
  sub_34F60(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_34F60(319, &unk_27F1E0, sub_345E4, sub_34074, &type metadata for RatingData);
    if (v2 <= 0x3F)
    {
      sub_34F60(319, &qword_27EAE8, sub_28EF4, sub_28450, &type metadata for UpSellData);
      if (v3 <= 0x3F)
      {
        sub_34F60(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
        if (v4 <= 0x3F)
        {
          sub_5684(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_34F60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_34FF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_350B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_35154(uint64_t a1)
{
  sub_19FE0(319, &qword_27EBC8, &type metadata for UpSellData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E398, &type metadata for SeriesData);
    if (v2 <= 0x3F)
    {
      sub_1E1150();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_3523C()
{
  result = qword_27F2C0;
  if (!qword_27F2C0)
  {
    result = swift_getWitnessTable("\tT\a", &type metadata for RatingEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F2C0);
  }

  return result;
}

unint64_t sub_35294()
{
  result = qword_27F2C8;
  if (!qword_27F2C8)
  {
    result = swift_getWitnessTable("QT\a", &type metadata for RatingEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F2C8);
  }

  return result;
}

unint64_t sub_352EC()
{
  result = qword_27F2D0;
  if (!qword_27F2D0)
  {
    result = swift_getWitnessTable("9T\a", &type metadata for RatingEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F2D0);
  }

  return result;
}

uint64_t sub_35340(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6144676E69746172 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v10, a3, a4, a5, a6, a7, a8;
    return 4;
  }

  else
  {
    v13 = sub_1E1D30();
    a2, v14, v15, v16, v17, v18, v19, v20;
    if (v13)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

BookAnalytics::ExposureTypeView_optional __swiftcall ExposureTypeView.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F7B8;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t ExposureTypeView.rawValue.getter()
{
  v1 = 0x656C676E6973;
  if (*v0 != 1)
  {
    v1 = 2037277037;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_355B8(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE600000000000000;
  v10 = 0x656C676E6973;
  if (v8 != 1)
  {
    v10 = 2037277037;
    v9 = 0xE400000000000000;
  }

  if (*a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v13 = 0xE600000000000000;
  v14 = 0x656C676E6973;
  if (*a2 != 1)
  {
    v14 = 2037277037;
    v13 = 0xE400000000000000;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_356A8()
{
  result = qword_27F2D8;
  if (!qword_27F2D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExposureTypeView, &type metadata for ExposureTypeView, v0, v1);
    atomic_store(result, &qword_27F2D8);
  }

  return result;
}

Swift::Int sub_356FC()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE600000000000000;
  if (v1 != 1)
  {
    v2 = 0xE400000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_35794(uint64_t a1)
{
  v2 = 0xE600000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_35818(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE600000000000000;
  if (v2 != 1)
  {
    v3 = 0xE400000000000000;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_358B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C676E6973;
  if (v2 != 1)
  {
    v5 = 2037277037;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_359CC()
{
  result = qword_27F2E0;
  if (!qword_27F2E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExposureTypeView, &type metadata for ExposureTypeView, v0, v1);
    atomic_store(result, &qword_27F2E0);
  }

  return result;
}

uint64_t AnnotationViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotationViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27F318, &unk_1E8408);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotationViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AnnotationViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27F318, &unk_1E8408);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AnnotationViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotationViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotationViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AnnotationViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AnnotationViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AnnotationViewEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27F318, &unk_1E8408);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

void AnnotationActionEvent.Model.viewData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 98);
  *a1 = *(v1 + 96);
  *(a1 + 2) = v2;
}

uint64_t AnnotationViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotationViewEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotationViewEvent.Model.init(contentData:viewData:eventData:)@<X0>(_OWORD *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v8;
  v9 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v9;
  v10 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v10;
  *(a4 + 96) = v6;
  *(a4 + 98) = v7;
  v11 = *(type metadata accessor for AnnotationViewEvent.Model(0) + 24);
  v12 = sub_1E1150();
  v13 = *(*(v12 - 8) + 32);

  return v13(a4 + v11, a3, v12);
}

uint64_t sub_36034()
{
  v1 = 0x6174614477656976;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44746E65746E6F63;
  }
}

uint64_t sub_3609C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_37250(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_360C4(uint64_t a1)
{
  v2 = sub_363DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_36100(uint64_t a1)
{
  v2 = sub_363DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AnnotationViewEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_27F320, &qword_1E8418);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-v6];
  sub_48B8(a1, a1[3]);
  sub_363DC();
  sub_1E1E00();
  v8 = v2[2];
  v9 = v2[4];
  v36 = v2[3];
  v37 = v9;
  v10 = v2[4];
  v38 = v2[5];
  v11 = *v2;
  v12 = v2[2];
  v34 = v2[1];
  v35 = v12;
  v13 = *v2;
  v30 = v36;
  v31 = v10;
  v32 = v2[5];
  v33 = v13;
  v27 = v11;
  v28 = v34;
  v29 = v8;
  v26 = 0;
  sub_13A5C(&v33, &v20);
  sub_143D0();
  v14 = v39;
  sub_1E1CF0();
  if (v14)
  {
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v20 = v27;
    v21 = v28;
    sub_14424(&v20);
  }

  else
  {
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v20 = v27;
    v21 = v28;
    sub_14424(&v20);
    v15 = *(v2 + 98);
    v18 = *(v2 + 48);
    v19 = v15;
    v17[12] = 1;
    sub_B7B4();
    sub_1E1CF0();
    type metadata accessor for AnnotationViewEvent.Model(0);
    LOBYTE(v18) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_363DC()
{
  result = qword_27F328;
  if (!qword_27F328)
  {
    result = swift_getWitnessTable(byte_1E85E0, &type metadata for AnnotationViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F328);
  }

  return result;
}

void AnnotationViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_1E1150();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_3D68(&qword_27F330, &qword_1E8420);
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v34 - v7;
  v9 = type metadata accessor for AnnotationViewEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v39 = a1;
  sub_48B8(a1, v12);
  sub_363DC();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v39, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v34 = v9;
    v20 = v37;
    v21 = v6;
    v49 = 0;
    sub_14CB8();
    v22 = v38;
    sub_1E1C20();
    v23 = v45;
    *(v11 + 2) = v44;
    *(v11 + 3) = v23;
    v24 = v47;
    *(v11 + 4) = v46;
    *(v11 + 5) = v24;
    v25 = v43;
    *v11 = v42;
    *(v11 + 1) = v25;
    v48 = 1;
    sub_B75C();
    sub_1E1C20();
    v26 = v41;
    *(v11 + 48) = v40;
    v11[98] = v26;
    LOBYTE(v40) = 2;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v20 + 8))(v8, v22);
    (*(v35 + 32))(&v11[*(v34 + 24)], v21, v4);
    sub_36834(v11, v36);
    sub_4E48(v39, v27, v28, v29, v30, v31, v32, v33);
    sub_36898(v11);
  }
}

uint64_t sub_36834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotationViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_36898(uint64_t a1)
{
  v2 = type metadata accessor for AnnotationViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_36994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27F318, &unk_1E8408);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_36ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F318, &unk_1E8408);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_36C44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F318, &unk_1E8408);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_36DB4(uint64_t a1)
{
  sub_36EC0(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_36EC0(319, &unk_27F3A0, sub_B75C, sub_B7B4, &type metadata for ViewData);
    if (v2 <= 0x3F)
    {
      sub_5684(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_36EC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_36F50(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_37010(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_370B4(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_3714C()
{
  result = qword_27F470;
  if (!qword_27F470)
  {
    result = swift_getWitnessTable(byte_1E85B8, &type metadata for AnnotationViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F470);
  }

  return result;
}

unint64_t sub_371A4()
{
  result = qword_27F478;
  if (!qword_27F478)
  {
    result = swift_getWitnessTable(byte_1E8528, &type metadata for AnnotationViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F478);
  }

  return result;
}

unint64_t sub_371FC()
{
  result = qword_27F480;
  if (!qword_27F480)
  {
    result = swift_getWitnessTable(byte_1E8550, &type metadata for AnnotationViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F480);
  }

  return result;
}

uint64_t sub_37250(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEB00000000617461;
  v11 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v10, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v13 = sub_1E1D30();
    a2, v14, v15, v16, v17, v18, v19, v20;
    if (v13)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static DebugData.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E1D30();
  }
}

void sub_373BC(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, _BYTE *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  if (a1 == 1953394534 && a2 == 0xE400000000000000)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v20 = 0;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    v20 = v12 ^ 1;
  }

  *a3 = v20 & 1;
}

uint64_t sub_37444(uint64_t a1)
{
  v2 = sub_375F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_37480(uint64_t a1)
{
  v2 = sub_375F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FontData.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_27F488, &qword_1E8630);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_48B8(a1, a1[3]);
  sub_375F8();
  sub_1E1E00();
  sub_1E1CB0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_375F8()
{
  result = qword_27F490;
  if (!qword_27F490)
  {
    result = swift_getWitnessTable("mN\a", &type metadata for FontData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F490);
  }

  return result;
}

void FontData.init(from:)(BAEventReporter **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_27F498, &qword_1E8638);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_48B8(a1, a1[3]);
  sub_375F8();
  sub_1E1DF0();
  if (!v2)
  {
    v16 = sub_1E1BE0();
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v18;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_377C4()
{
  result = qword_27F4A0;
  if (!qword_27F4A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FontData, &type metadata for FontData, v0, v1);
    atomic_store(result, &qword_27F4A0);
  }

  return result;
}

unint64_t sub_3781C()
{
  result = qword_27F4A8;
  if (!qword_27F4A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FontData, &type metadata for FontData, v0, v1);
    atomic_store(result, &qword_27F4A8);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for YearlyGoalsReachedData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_37894(uint64_t a1, int a2)
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

uint64_t sub_378DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_3793C()
{
  result = qword_27F4B0;
  if (!qword_27F4B0)
  {
    result = swift_getWitnessTable(byte_1E87E4, &type metadata for FontData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F4B0);
  }

  return result;
}

unint64_t sub_37994()
{
  result = qword_27F4B8;
  if (!qword_27F4B8)
  {
    result = swift_getWitnessTable(byte_1E8754, &type metadata for FontData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F4B8);
  }

  return result;
}

unint64_t sub_379EC()
{
  result = qword_27F4C0;
  if (!qword_27F4C0)
  {
    result = swift_getWitnessTable(byte_1E877C, &type metadata for FontData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F4C0);
  }

  return result;
}

uint64_t CollectionExposureEvent.exposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27F4F8, &unk_210310);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionExposureEvent.exposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27F4F8, &unk_210310);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27EC78, &unk_1E7460);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for CollectionExposureEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t CollectionExposureEvent.Model.exposureData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v7[0] = v1[2];
  v7[1] = v2;
  v4 = v1[5];
  v8 = v1[4];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_17AA4(v7, &v6, &qword_27F500, &unk_210330);
}

uint64_t CollectionExposureEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v3 = *(v1 + 176);
  v20 = *(v1 + 192);
  v21 = v2;
  v4 = *(v1 + 208);
  v22 = *(v1 + 224);
  v5 = *(v1 + 144);
  v7 = *(v1 + 112);
  v16 = *(v1 + 128);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 144);
  v9 = *(v1 + 176);
  v18 = *(v1 + 160);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 112);
  v15[0] = *(v1 + 96);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 224);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 240);
  *(a1 + 144) = *(v1 + 240);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_17AA4(v15, v14, &qword_27E4A0, &qword_1E8860);
}

uint64_t CollectionExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionExposureEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionExposureEvent.Model(0) + 32);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionExposureEvent.Model.init(collectionData:exposureData:linkData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 8);
  *a6 = *a1;
  *(a6 + 8) = v9;
  v10 = *a2;
  v11 = a2[1];
  *(a6 + 16) = *(a1 + 16);
  *(a6 + 32) = v10;
  v12 = a2[2];
  v13 = a2[3];
  *(a6 + 48) = v11;
  *(a6 + 64) = v12;
  v15 = *a3;
  v14 = a3[1];
  *(a6 + 80) = v13;
  *(a6 + 96) = v15;
  v16 = a3[2];
  v17 = a3[4];
  v18 = a3[5];
  *(a6 + 144) = a3[3];
  *(a6 + 160) = v17;
  *(a6 + 112) = v14;
  *(a6 + 128) = v16;
  v19 = a3[6];
  v20 = a3[7];
  v21 = a3[8];
  *(a6 + 240) = *(a3 + 18);
  *(a6 + 208) = v20;
  *(a6 + 224) = v21;
  *(a6 + 176) = v18;
  *(a6 + 192) = v19;
  v22 = type metadata accessor for CollectionExposureEvent.Model(0);
  v23 = *(v22 + 28);
  v24 = sub_1E1150();
  (*(*(v24 - 8) + 32))(a6 + v23, a4, v24);
  v25 = *(v22 + 32);
  v26 = sub_1E11A0();
  v27 = *(*(v26 - 8) + 32);

  return v27(a6 + v25, a5, v26);
}

uint64_t sub_38580()
{
  v1 = *v0;
  v2 = 0x697463656C6C6F63;
  v3 = 0x617461446B6E696CLL;
  v4 = 0x746144746E657665;
  if (v1 != 3)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657275736F707865;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_38638@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_3A1F0(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_38660(uint64_t a1)
{
  v2 = sub_38BD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3869C(uint64_t a1)
{
  v2 = sub_38BD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_27F508, &qword_1E8868);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41 - v6;
  sub_48B8(a1, a1[3]);
  sub_38BD4();
  sub_1E1E00();
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  v73 = *v2;
  v74 = v8;
  v75 = v9;
  v76 = v10;
  v72 = 0;
  sub_2B314();

  v11 = v77;
  sub_1E1CF0();
  v12 = v76;
  v74, v13, v14, v15, v16, v17, v18, v19;
  v12, v20, v21, v22, v23, v24, v25, v26;
  if (v11)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v28 = *(v2 + 3);
  v71[0] = *(v2 + 2);
  v71[1] = v28;
  v29 = *(v2 + 5);
  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  v71[2] = *(v2 + 4);
  v71[3] = v29;
  v67 = v31;
  v68 = v30;
  v32 = *(v2 + 5);
  v69 = *(v2 + 4);
  v70 = v32;
  v66 = 1;
  sub_17AA4(v71, v57, &qword_27F500, &unk_210330);
  sub_38C28();
  sub_1E1C80();
  v56[0] = v67;
  v56[1] = v68;
  v56[2] = v69;
  v56[3] = v70;
  sub_18E48(v56, &qword_27F500, &unk_210330);
  v33 = *(v2 + 13);
  v34 = *(v2 + 11);
  v62 = *(v2 + 12);
  v63 = v33;
  v35 = *(v2 + 13);
  v64 = *(v2 + 14);
  v36 = *(v2 + 9);
  v37 = *(v2 + 7);
  v58 = *(v2 + 8);
  v59 = v36;
  v38 = *(v2 + 9);
  v39 = *(v2 + 11);
  v60 = *(v2 + 10);
  v61 = v39;
  v40 = *(v2 + 7);
  v57[0] = *(v2 + 6);
  v57[1] = v40;
  v52 = v62;
  v53 = v35;
  v54 = *(v2 + 14);
  v48 = v58;
  v49 = v38;
  v50 = v60;
  v51 = v34;
  v65 = v2[30];
  v55 = v2[30];
  v46 = v57[0];
  v47 = v37;
  v45 = 2;
  sub_17AA4(v57, v43, &qword_27E4A0, &qword_1E8860);
  sub_18630();
  sub_1E1C80();
  v43[6] = v52;
  v43[7] = v53;
  v43[8] = v54;
  v44 = v55;
  v43[2] = v48;
  v43[3] = v49;
  v43[4] = v50;
  v43[5] = v51;
  v43[0] = v46;
  v43[1] = v47;
  sub_18E48(v43, &qword_27E4A0, &qword_1E8860);
  type metadata accessor for CollectionExposureEvent.Model(0);
  v42 = 3;
  sub_1E1150();
  sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
  sub_1E1CF0();
  v42 = 4;
  sub_1E11A0();
  sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
  sub_1E1CF0();
  return (*(v5 + 8))(v7, 0);
}

unint64_t sub_38BD4()
{
  result = qword_27F510;
  if (!qword_27F510)
  {
    result = swift_getWitnessTable("%L\a", &type metadata for CollectionExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F510);
  }

  return result;
}

unint64_t sub_38C28()
{
  result = qword_27F518;
  if (!qword_27F518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExposureData, &type metadata for ExposureData, v0, v1);
    atomic_store(result, &qword_27F518);
  }

  return result;
}

void CollectionExposureEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = sub_1E11A0();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1150();
  v43 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_3D68(&qword_27F520, &qword_1E8870);
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = &v38 - v7;
  v9 = type metadata accessor for CollectionExposureEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_38BD4();
  v46 = v8;
  v12 = v64;
  sub_1E1DF0();
  if (v12)
  {
    sub_4E48(a1, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v64 = v4;
    LOBYTE(v60) = 0;
    sub_2B68C();
    sub_1E1C20();
    v20 = *(&v49 + 1);
    *v11 = v49;
    *(v11 + 1) = v20;
    *(v11 + 1) = v50;
    v59 = 1;
    sub_393C4();
    sub_1E1BB0();
    v21 = v61;
    *(v11 + 2) = v60;
    *(v11 + 3) = v21;
    v22 = v63;
    *(v11 + 4) = v62;
    *(v11 + 5) = v22;
    v48 = 2;
    sub_18FA4();
    v38 = 0;
    sub_1E1BB0();
    v23 = v44;
    v24 = v56;
    *(v11 + 12) = v55;
    *(v11 + 13) = v24;
    *(v11 + 14) = v57;
    *(v11 + 30) = v58;
    v25 = v52;
    *(v11 + 8) = v51;
    *(v11 + 9) = v25;
    v26 = v54;
    *(v11 + 10) = v53;
    *(v11 + 11) = v26;
    v27 = v50;
    *(v11 + 6) = v49;
    *(v11 + 7) = v27;
    v47 = 3;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v28 = v64;
    sub_1E1C20();
    (*(v43 + 32))(&v11[*(v9 + 28)], v6, v28);
    v47 = 4;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v29 = v42;
    v30 = v41;
    sub_1E1C20();
    (*(v23 + 8))(v46, v45);
    (*(v39 + 32))(&v11[*(v9 + 32)], v29, v30);
    sub_39418(v11, v40);
    sub_4E48(a1, v31, v32, v33, v34, v35, v36, v37);
    sub_3947C(v11);
  }
}

unint64_t sub_393C4()
{
  result = qword_27F528;
  if (!qword_27F528)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExposureData, &type metadata for ExposureData, v0, v1);
    atomic_store(result, &qword_27F528);
  }

  return result;
}

uint64_t sub_39418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3947C(uint64_t a1)
{
  v2 = type metadata accessor for CollectionExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_39578@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27EC78, &unk_1E7460);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_3975C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27EC78, &unk_1E7460);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F4F8, &unk_210310);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_3997C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27EC78, &unk_1E7460);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F4F8, &unk_210310);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_39B94(uint64_t a1)
{
  sub_39D08(319, &qword_27ED10, sub_2B68C, sub_2B314, &type metadata for CollectionData);
  if (v1 <= 0x3F)
  {
    sub_39D08(319, &unk_27F598, sub_393C4, sub_38C28, &type metadata for ExposureData);
    if (v2 <= 0x3F)
    {
      sub_39D08(319, &unk_27E588, sub_18FA4, sub_18630, &type metadata for LinkData);
      if (v3 <= 0x3F)
      {
        sub_5684(319);
        if (v4 <= 0x3F)
        {
          sub_5750(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_39D08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_39D98(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_39ED0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_39FF4(uint64_t a1)
{
  sub_19FE0(319, &unk_27F640, &type metadata for ExposureData);
  if (v1 <= 0x3F)
  {
    sub_19FE0(319, &unk_27E650, &type metadata for LinkData);
    if (v2 <= 0x3F)
    {
      sub_1E1150();
      if (v3 <= 0x3F)
      {
        sub_1E11A0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_3A0EC()
{
  result = qword_27F680;
  if (!qword_27F680)
  {
    result = swift_getWitnessTable("=L\a", &type metadata for CollectionExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F680);
  }

  return result;
}

unint64_t sub_3A144()
{
  result = qword_27F688;
  if (!qword_27F688)
  {
    result = swift_getWitnessTable(byte_1E899C, &type metadata for CollectionExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F688);
  }

  return result;
}

unint64_t sub_3A19C()
{
  result = qword_27F690;
  if (!qword_27F690)
  {
    result = swift_getWitnessTable("mL\a", &type metadata for CollectionExposureEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F690);
  }

  return result;
}

uint64_t sub_3A1F0(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0xEE00617461446E6FLL;
  v11 = a1 == 0x697463656C6C6F63 && a2 == 0xEE00617461446E6FLL;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xEC00000061746144;
    if (a1 == 0x657275736F707865 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v13, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else
    {
      v14 = sub_1E1D30();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
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

BookAnalytics::ViewSource_optional __swiftcall ViewSource.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F820;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t ViewSource.rawValue.getter()
{
  v1 = 0x654D6E6F69746361;
  if (*v0 != 1)
  {
    v1 = 6516596;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t _s13BookAnalytics14ViewSourceDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0x654D6E6F69746361;
  v10 = 0xEA0000000000756ELL;
  if (v8 != 1)
  {
    v9 = 6516596;
    v10 = 0xE300000000000000;
  }

  if (*a1)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v13 = 0x654D6E6F69746361;
  v14 = 0xEA0000000000756ELL;
  if (*a2 != 1)
  {
    v13 = 6516596;
    v14 = 0xE300000000000000;
  }

  if (*a2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_3A570()
{
  result = qword_27F698;
  if (!qword_27F698)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewSource, &type metadata for ViewSource, v0, v1);
    atomic_store(result, &qword_27F698);
  }

  return result;
}

Swift::Int sub_3A5C4()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xEA0000000000756ELL;
  if (v1 != 1)
  {
    v2 = 0xE300000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_3A664(uint64_t a1)
{
  v2 = 0xEA0000000000756ELL;
  if (*v1 != 1)
  {
    v2 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_3A6F0(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xEA0000000000756ELL;
  if (v2 != 1)
  {
    v3 = 0xE300000000000000;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_3A798(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA0000000000756ELL;
  v5 = 0x654D6E6F69746361;
  if (v2 != 1)
  {
    v5 = 6516596;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_3A8B4()
{
  result = qword_27F6A0;
  if (!qword_27F6A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewSource, &type metadata for ViewSource, v0, v1);
    atomic_store(result, &qword_27F6A0);
  }

  return result;
}

uint64_t NotificationOptInActionEvent.notificationOptInActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27F6D8, &qword_1E8BC0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NotificationOptInActionEvent.notificationOptInActionData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27F6D8, &qword_1E8BC0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NotificationOptInActionEvent.notificationOptInLocationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationOptInActionEvent(0) + 20);
  v4 = sub_3D68(&qword_27F6E0, &qword_1E8BC8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationOptInActionEvent.notificationOptInLocationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationOptInActionEvent(0) + 20);
  v4 = sub_3D68(&qword_27F6E0, &qword_1E8BC8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationOptInActionEvent.notificationOptInTypeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationOptInActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27F6E8, &unk_1E8BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationOptInActionEvent.notificationOptInTypeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationOptInActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27F6E8, &unk_1E8BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationOptInActionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationOptInActionEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationOptInActionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationOptInActionEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationOptInActionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27F6D8, &qword_1E8BC0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NotificationOptInActionEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27F6E0, &qword_1E8BC8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27F6E8, &unk_1E8BD0);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t NotificationOptInActionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationOptInActionEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationOptInActionEvent.Model.init(notificationOptInActionData:notificationOptInLocationData:notificationOptInTypeData:eventData:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  *a5 = *a1;
  a5[1] = v7;
  a5[2] = v8;
  v9 = *(type metadata accessor for NotificationOptInActionEvent.Model(0) + 28);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(&a5[v9], a4, v10);
}

unint64_t sub_3B198()
{
  v1 = 0x746144746E657665;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000019;
  }

  v2 = 0xD00000000000001DLL;
  if (!*v0)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_3B21C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_3C628(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_3B244(uint64_t a1)
{
  v2 = sub_3B4F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3B280(uint64_t a1)
{
  v2 = sub_3B4F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NotificationOptInActionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27F6F0, &qword_1E8BE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_48B8(a1, a1[3]);
  sub_3B4F8();
  sub_1E1E00();
  v10[15] = *v3;
  v10[14] = 0;
  sub_3B54C();
  sub_1E1CF0();
  if (!v2)
  {
    v10[13] = v3[1];
    v10[12] = 1;
    sub_3B5A0();
    sub_1E1CF0();
    v10[11] = v3[2];
    v10[10] = 2;
    sub_3B5F4();
    sub_1E1C80();
    type metadata accessor for NotificationOptInActionEvent.Model(0);
    v10[9] = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_3B4F8()
{
  result = qword_27F6F8;
  if (!qword_27F6F8)
  {
    result = swift_getWitnessTable(byte_1E8DB8, &type metadata for NotificationOptInActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F6F8);
  }

  return result;
}

unint64_t sub_3B54C()
{
  result = qword_27F700;
  if (!qword_27F700)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationOptInActionData, &type metadata for NotificationOptInActionData, v0, v1);
    atomic_store(result, &qword_27F700);
  }

  return result;
}

unint64_t sub_3B5A0()
{
  result = qword_27F708;
  if (!qword_27F708)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationOptInLocationData, &type metadata for NotificationOptInLocationData, v0, v1);
    atomic_store(result, &qword_27F708);
  }

  return result;
}

unint64_t sub_3B5F4()
{
  result = qword_27F710;
  if (!qword_27F710)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationOptInTypeData, &type metadata for NotificationOptInTypeData, v0, v1);
    atomic_store(result, &qword_27F710);
  }

  return result;
}

void NotificationOptInActionEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1E1150();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_27F718, &qword_1E8BE8);
  v27 = *(v7 - 8);
  v28 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for NotificationOptInActionEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v29 = a1;
  sub_48B8(a1, v13);
  sub_3B4F8();
  sub_1E1DF0();
  if (!v2)
  {
    v21 = v12;
    v22 = v27;
    v35 = 0;
    sub_3B9B8();
    v23 = v28;
    sub_1E1C20();
    *v21 = v36;
    v33 = 1;
    sub_3BA0C();
    sub_1E1C20();
    v21[1] = v34;
    v31 = 2;
    sub_3BA60();
    sub_1E1BB0();
    v21[2] = v32;
    v30 = 3;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v22 + 8))(v9, v23);
    (*(v25 + 32))(&v21[*(v10 + 28)], v6, v4);
    sub_3BAB4(v21, v26);
  }

  sub_4E48(v29, v14, v15, v16, v17, v18, v19, v20);
}

unint64_t sub_3B9B8()
{
  result = qword_27F720;
  if (!qword_27F720)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationOptInActionData, &type metadata for NotificationOptInActionData, v0, v1);
    atomic_store(result, &qword_27F720);
  }

  return result;
}

unint64_t sub_3BA0C()
{
  result = qword_27F728;
  if (!qword_27F728)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationOptInLocationData, &type metadata for NotificationOptInLocationData, v0, v1);
    atomic_store(result, &qword_27F728);
  }

  return result;
}

unint64_t sub_3BA60()
{
  result = qword_27F730;
  if (!qword_27F730)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationOptInTypeData, &type metadata for NotificationOptInTypeData, v0, v1);
    atomic_store(result, &qword_27F730);
  }

  return result;
}

uint64_t sub_3BAB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationOptInActionEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3BBB8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27F6D8, &qword_1E8BC0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27F6E0, &qword_1E8BC8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27F6E8, &unk_1E8BD0);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

uint64_t sub_3BD50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27F6D8, &qword_1E8BC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F6E0, &qword_1E8BC8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_27F6E8, &unk_1E8BD0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_3BF1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27F6D8, &qword_1E8BC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F6E0, &qword_1E8BC8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27F6E8, &unk_1E8BD0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_3C0E0(uint64_t a1)
{
  sub_3C23C(319, &qword_27F7A0, sub_3B9B8, sub_3B54C, &type metadata for NotificationOptInActionData);
  if (v1 <= 0x3F)
  {
    sub_3C23C(319, &qword_27F7A8, sub_3BA0C, sub_3B5A0, &type metadata for NotificationOptInLocationData);
    if (v2 <= 0x3F)
    {
      sub_3C23C(319, &unk_27F7B0, sub_3BA60, sub_3B5F4, &type metadata for NotificationOptInTypeData);
      if (v3 <= 0x3F)
      {
        sub_5684(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_3C23C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_3C2CC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 28)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_3C384(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3C424(uint64_t a1)
{
  sub_3C4C0();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3C4C0()
{
  if (!qword_27F850)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_27F850);
    }
  }
}

unint64_t sub_3C524()
{
  result = qword_27F888;
  if (!qword_27F888)
  {
    result = swift_getWitnessTable(byte_1E8D90, &type metadata for NotificationOptInActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F888);
  }

  return result;
}

unint64_t sub_3C57C()
{
  result = qword_27F890;
  if (!qword_27F890)
  {
    result = swift_getWitnessTable("!I\a", &type metadata for NotificationOptInActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F890);
  }

  return result;
}

unint64_t sub_3C5D4()
{
  result = qword_27F898;
  if (!qword_27F898)
  {
    result = swift_getWitnessTable("\tI\a", &type metadata for NotificationOptInActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F898);
  }

  return result;
}

uint64_t sub_3C628(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v9 = 0x8000000000213D20;
  v10 = a1 == 0xD00000000000001BLL && 0x8000000000213D20 == a2;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, v9, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x8000000000213D40;
    if (a1 == 0xD00000000000001DLL && 0x8000000000213D40 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0x8000000000213D60;
      if (a1 == 0xD000000000000019 && 0x8000000000213D60 == a2 || (sub_1E1D30() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
      {
        0xE900000000000061, v14, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v15 = sub_1E1D30();
        a2, v16, v17, v18, v19, v20, v21, v22;
        if (v15)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t PlayEvent.listeningSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 20);
  v4 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.listeningSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 20);
  v4 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.listeningActionSourceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.listeningActionSourceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.bitRateData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.bitRateData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 32);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 32);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.doNotDisturbData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 40);
  v4 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.doNotDisturbData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 40);
  v4 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.userEmbeddingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 56);
  v4 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.userEmbeddingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 56);
  v4 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PlayEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = enum case for EventProperty.optional<A>(_:);
  v15 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v19 - 8) + 104))(a1 + v18, v14, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  v25 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v14, v25);
}