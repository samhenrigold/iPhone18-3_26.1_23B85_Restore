uint64_t sub_10004A0F4@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xC000000000000000;
  return _s19DPSubmissionService5EmptyVACycfC_0();
}

uint64_t sub_10004A124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10004A19C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10004A240(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B574(&qword_10007E700, type metadata accessor for DediscoDonation.AlgorithmParameters, &protocol conformance descriptor for DediscoDonation.AlgorithmParameters);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004A2E0(uint64_t a1)
{
  v2 = sub_10004B574(&qword_10007D610, type metadata accessor for DediscoDonation.AlgorithmParameters, &protocol conformance descriptor for DediscoDonation.AlgorithmParameters);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10004A34C(uint64_t a1, uint64_t a2)
{
  sub_10004B574(&qword_10007D610, type metadata accessor for DediscoDonation.AlgorithmParameters, &protocol conformance descriptor for DediscoDonation.AlgorithmParameters);

  return sub_1000504D0();
}

uint64_t sub_10004A40C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100050590();
  sub_1000142C8(v7, a2);
  sub_100012CA8(v7, a2);
  sub_100013EC0(&qword_10007C7F8, &unk_1000559D0);
  v8 = (sub_100013EC0(&qword_10007C800, &qword_100059780) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000557C0;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = enum case for _NameMap.NameDescription.standard(_:);
  v13 = sub_100050560();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_100050570();
}

uint64_t CollectionID.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_100050420();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_100050470();
    }
  }

  return result;
}

uint64_t CollectionID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_100050530(), !v4))
  {
    type metadata accessor for CollectionID(0);
    return sub_1000503C0();
  }

  return result;
}

uint64_t static CollectionID.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_100050980() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CollectionID(0);
  sub_1000503E0();
  sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100050740() & 1;
}

uint64_t sub_10004A7CC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return _s19DPSubmissionService5EmptyVACycfC_0();
}

uint64_t sub_10004A7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10004A868(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1000503E0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10004A930(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B574(&qword_10007E6F8, type metadata accessor for CollectionID, &protocol conformance descriptor for CollectionID);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004A9D0(uint64_t a1)
{
  v2 = sub_10004B574(&qword_10007E1F0, type metadata accessor for CollectionID, &protocol conformance descriptor for CollectionID);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10004AA3C(uint64_t a1, uint64_t a2)
{
  sub_10004B574(&qword_10007E1F0, type metadata accessor for CollectionID, &protocol conformance descriptor for CollectionID);

  return sub_1000504D0();
}

uint64_t sub_10004AAB8(void *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_100050980() & 1) == 0)
  {
    return 0;
  }

  sub_1000503E0();
  sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100050740() & 1;
}

uint64_t sub_10004AB94()
{
  v0 = sub_100050590();
  sub_1000142C8(v0, static Empty._protobuf_nameMap);
  sub_100012CA8(v0, static Empty._protobuf_nameMap);
  return sub_100050580();
}

uint64_t sub_10004AC04(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_100050590();

  return sub_100012CA8(v4, a2);
}

uint64_t sub_10004AC7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_100050590();
  v7 = sub_100012CA8(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Empty.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_100050420();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t static Empty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1000503E0();
  sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100050740() & 1;
}

Swift::Int sub_10004AE40(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1000509E0();
  a1(0);
  sub_10004B574(a2, a3, a4);
  sub_100050700();
  return sub_100050A00();
}

uint64_t sub_10004AEF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B574(&qword_10007E6F0, type metadata accessor for Empty, &protocol conformance descriptor for Empty);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004AF98@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_100050590();
  v7 = sub_100012CA8(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_10004B034(uint64_t a1)
{
  v2 = sub_10004B574(&qword_10007E208, type metadata accessor for Empty, &protocol conformance descriptor for Empty);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10004B0A0(uint64_t a1, uint64_t a2)
{
  sub_10004B574(&qword_10007E208, type metadata accessor for Empty, &protocol conformance descriptor for Empty);

  return sub_1000504D0();
}

uint64_t _s19DPSubmissionService25LoadTestExperimentalSetupV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for LoadTestExperimentalSetup(0);
  sub_1000503E0();
  sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100050740() & 1;
}

uint64_t _s19DPSubmissionService17ProtectedDonationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100050390();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100013EC0(&qword_10007C6D0, &qword_100055790);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_100013EC0(&qword_10007E740, &qword_100059798);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = *(type metadata accessor for ProtectedDonation(0) + 20);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_100045FB4(a1 + v14, v13, &qword_10007C6D0, &qword_100055790);
  v25 = a2;
  sub_100045FB4(a2 + v14, &v13[v15], &qword_10007C6D0, &qword_100055790);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_100014204(v13, &qword_10007C6D0, &qword_100055790);
LABEL_9:
      sub_1000503E0();
      sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = sub_100050740();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_100045FB4(v13, v9, &qword_10007C6D0, &qword_100055790);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_6:
    sub_100014204(v13, &qword_10007E740, &qword_100059798);
    goto LABEL_7;
  }

  v18 = v23;
  (*(v5 + 32))(v23, &v13[v15], v4);
  sub_10004B574(&qword_10007E748, &type metadata accessor for Ckcode_ProtectedEnvelope, &protocol conformance descriptor for Ckcode_ProtectedEnvelope);
  v19 = sub_100050740();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v9, v4);
  sub_100014204(v13, &qword_10007C6D0, &qword_100055790);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10004B574(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s19DPSubmissionService17BaaSignedDonationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaaCertificateChain(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100013EC0(&qword_10007C6E0, qword_100055798);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_100013EC0(&qword_10007E738, &qword_100059790);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  if (!_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    goto LABEL_16;
  }

  v24 = v7;
  v25 = type metadata accessor for BaaSignedDonation(0);
  v14 = *(v25 + 28);
  v15 = *(v11 + 48);
  sub_100045FB4(a1 + v14, v13, &qword_10007C6E0, qword_100055798);
  sub_100045FB4(a2 + v14, &v13[v15], &qword_10007C6E0, qword_100055798);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_100045FB4(v13, v10, &qword_10007C6E0, qword_100055798);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = &v13[v15];
      v21 = v24;
      sub_100044CB0(v20, v24, type metadata accessor for BaaCertificateChain);
      if (_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*v10, *(v10 + 1), *v21, *(v21 + 8)) && _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(v10 + 2), *(v10 + 3), *(v21 + 16), *(v21 + 24)))
      {
        sub_1000503E0();
        sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v22 = sub_100050740();
        sub_100046400(v21, type metadata accessor for BaaCertificateChain);
        sub_100046400(v10, type metadata accessor for BaaCertificateChain);
        sub_100014204(v13, &qword_10007C6E0, qword_100055798);
        if (v22)
        {
          goto LABEL_6;
        }

LABEL_16:
        v17 = 0;
        return v17 & 1;
      }

      sub_100046400(v21, type metadata accessor for BaaCertificateChain);
      sub_100046400(v10, type metadata accessor for BaaCertificateChain);
      v18 = &qword_10007C6E0;
      v19 = qword_100055798;
LABEL_15:
      sub_100014204(v13, v18, v19);
      goto LABEL_16;
    }

    sub_100046400(v10, type metadata accessor for BaaCertificateChain);
LABEL_9:
    v18 = &qword_10007E738;
    v19 = &qword_100059790;
    goto LABEL_15;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_100014204(v13, &qword_10007C6E0, qword_100055798);
LABEL_6:
  sub_1000503E0();
  sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v17 = sub_100050740();
  return v17 & 1;
}

uint64_t _s19DPSubmissionService15DediscoDonationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for DediscoDonation.AlgorithmParameters(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100013EC0(&qword_10007D618, &qword_100056ED8);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_100013EC0(&qword_10007E730, &qword_100059788);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  if (*a1 != *a2 && (sub_100050980() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_100050980() & 1) == 0)
  {
    goto LABEL_32;
  }

  v24 = v7;
  v23 = type metadata accessor for DediscoDonation(0);
  v14 = *(v23 + 52);
  v15 = *(v11 + 48);
  sub_100045FB4(a1 + v14, v13, &qword_10007D618, &qword_100056ED8);
  sub_100045FB4(a2 + v14, &v13[v15], &qword_10007D618, &qword_100056ED8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_100045FB4(v13, v10, &qword_10007D618, &qword_100056ED8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = v24;
      sub_100044CB0(&v13[v15], v24, type metadata accessor for DediscoDonation.AlgorithmParameters);
      if (*v10 == *v20 && *(v10 + 1) == *(v20 + 8) && _s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(v10 + 2), *(v10 + 3), *(v20 + 16), *(v20 + 24)))
      {
        sub_1000503E0();
        sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v21 = sub_100050740();
        sub_100046400(v20, type metadata accessor for DediscoDonation.AlgorithmParameters);
        sub_100046400(v10, type metadata accessor for DediscoDonation.AlgorithmParameters);
        sub_100014204(v13, &qword_10007D618, &qword_100056ED8);
        if (v21)
        {
          goto LABEL_9;
        }

LABEL_32:
        v17 = 0;
        return v17 & 1;
      }

      sub_100046400(v20, type metadata accessor for DediscoDonation.AlgorithmParameters);
      sub_100046400(v10, type metadata accessor for DediscoDonation.AlgorithmParameters);
      v18 = &qword_10007D618;
      v19 = &qword_100056ED8;
LABEL_31:
      sub_100014204(v13, v18, v19);
      goto LABEL_32;
    }

    sub_100046400(v10, type metadata accessor for DediscoDonation.AlgorithmParameters);
LABEL_24:
    v18 = &qword_10007E730;
    v19 = &qword_100059788;
    goto LABEL_31;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_24;
  }

  sub_100014204(v13, &qword_10007D618, &qword_100056ED8);
LABEL_9:
  if (!_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[4], a1[5], a2[4], a2[5]) || !_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[6], a1[7], a2[6], a2[7]) || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_100050980() & 1) == 0 || (a1[10] != a2[10] || a1[11] != a2[11]) && (sub_100050980() & 1) == 0 || (a1[12] != a2[12] || a1[13] != a2[13]) && (sub_100050980() & 1) == 0 || !_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(a1[14], a1[15], a2[14], a2[15]))
  {
    goto LABEL_32;
  }

  sub_1000503E0();
  sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v17 = sub_100050740();
  return v17 & 1;
}

uint64_t _s19DPSubmissionService15DediscoDonationV19AlgorithmParametersV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || !_s19DPSubmissionService9PPM_0_2_1V3UrlV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  type metadata accessor for DediscoDonation.AlgorithmParameters(0);
  sub_1000503E0();
  sub_10004B574(&qword_10007C808, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_100050740() & 1;
}

uint64_t sub_10004BFE4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004C930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1000503E0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10004C9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1000503E0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_10004CA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000503E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100013EC0(&qword_10007C6D0, &qword_100055790);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10004CB70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000503E0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100013EC0(&qword_10007C6D0, &qword_100055790);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10004CC78(uint64_t a1)
{
  sub_1000503E0();
  if (v1 <= 0x3F)
  {
    sub_10004D064(319, &unk_10007E318, &type metadata accessor for Ckcode_ProtectedEnvelope);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10004CD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1000503E0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100013EC0(&qword_10007C6E0, qword_100055798);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10004CE7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_1000503E0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100013EC0(&qword_10007C6E0, qword_100055798);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10004CFB4(uint64_t a1)
{
  sub_1000503E0();
  if (v1 <= 0x3F)
  {
    sub_10004D064(319, &unk_10007E3B0, type metadata accessor for BaaCertificateChain);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10004D064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100050850();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10004D0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1000503E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10004D198(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1000503E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004D244(uint64_t a1)
{
  result = sub_1000503E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10004D2D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000503E0();
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
      v13 = sub_100013EC0(&qword_10007D618, &qword_100056ED8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10004D418(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000503E0();
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
      v13 = sub_100013EC0(&qword_10007D618, &qword_100056ED8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10004D548(uint64_t a1)
{
  sub_1000503E0();
  if (v1 <= 0x3F)
  {
    sub_10004D064(319, &unk_10007E4E8, type metadata accessor for DediscoDonation.AlgorithmParameters);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10004D624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1000503E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004D6F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1000503E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004D7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1000503E0();
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10004D848(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000503E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004D908(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000503E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004D9AC(uint64_t a1)
{
  result = sub_1000503E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10004DA3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000503E0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10004DABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000503E0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10004DB2C(uint64_t a1)
{
  result = sub_1000503E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10004DC34(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = 134218242;
  v6 = [a1 statusCode];
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Client failed to download config file; status: %ld, error: %@", &v5, 0x16u);
}

void sub_10004DD10()
{
  sub_1000079DC();
  sub_1000079E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004DD80(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  sub_1000079DC();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to read the JSON token fields with error %@.", v4, 0xCu);
}

void sub_10004DE88()
{
  sub_1000079DC();
  sub_1000079E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004E030(os_log_t log)
{
  v1 = 138412290;
  v2 = @"Cannot encode DAP extension - total length exceeds UINT16_MAX";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@", &v1, 0xCu);
}

void sub_10004E0C8(os_log_t log)
{
  v1 = 134217984;
  v2 = 15;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to download config: timeout on client (%lld sec)", &v1, 0xCu);
}

void sub_10004E18C(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error in reading config file: %@", &v4, 0xCu);
}

void sub_10004E224(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = 300;
  sub_100009974(&_mh_execute_header, a1, a3, "Failed to download config: timeout on client (%lldsec)", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004E298(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*a1 + 40);
  sub_100009974(&_mh_execute_header, a2, a3, "Failed to download config because of the error on networking client: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004E30C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100009974(&_mh_execute_header, a2, a3, "Failed to download config with error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004E378(os_log_t log)
{
  v1 = 138412290;
  v2 = @"Failed to upload DAP payload: leader URL is empty";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@", &v1, 0xCu);
}

void sub_10004E3FC()
{
  sub_10000AD28();
  sub_1000079E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004E4F8()
{
  sub_10000AD28();
  sub_1000079E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004E5F4()
{
  sub_10000AD28();
  sub_1000079E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004E670()
{
  sub_10000AD28();
  sub_1000079E8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004E90C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = 30;
  sub_100009974(&_mh_execute_header, a1, a3, "Failed to obtain BAA signature: timeout (%lld sec)", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004E980(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100009974(&_mh_execute_header, a2, a3, "Failed to issue client certificate: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004E9EC(void **a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = *a1;
  sub_100009974(&_mh_execute_header, a2, a3, "Failed to sign data: %@", a5, a6, a7, a8, v9, DWORD2(v9));
}

void sub_10004EB38(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000079DC();
  sub_10000CC00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004EBC4(void *a1)
{
  v1 = [a1 path];
  sub_1000079DC();
  sub_10000CC00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004EC50(void *a1)
{
  v1 = [a1 tokensDirectoryPath];
  sub_1000079DC();
  sub_10000CC00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004ECDC(void *a1)
{
  v1 = [a1 tokensDirectoryPath];
  sub_1000079DC();
  sub_10000CC00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004EE38(uint64_t a1, void *a2)
{
  v7 = [a2 localizedDescription];
  sub_10000CC00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004F2AC(void *a1, NSObject *a2)
{
  v3 = [a1 key];
  sub_1000079DC();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Submitting via V1 for key=%@", v4, 0xCu);
}

void sub_10004F3A8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Unable to get valid signature for payload.";
  sub_100009974(&_mh_execute_header, a1, a3, "%@ Unable to submit shares", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004F51C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"The total size of payload exceeds 1 MB.";
  sub_100009974(&_mh_execute_header, a1, a3, "%@ Unable to submit shares", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004F594(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = @"Unable to serialize payload dictionary.";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@ error: %@", &v2, 0x16u);
}

void sub_10004F6F0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Unable to encrypt shares.";
  sub_100009974(&_mh_execute_header, a1, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004F8A0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Failed to directly upload payload: v1 payload is unsupported";
  sub_100009974(&_mh_execute_header, a1, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004F918(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@ error: %@", &v3, 0x16u);
}

void sub_10004FBB4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Malformed Dedisco server configuration in recipe.";
  sub_100009974(&_mh_execute_header, a1, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004FC2C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100009974(&_mh_execute_header, a2, a3, "Dedisco donations submission was unsuccessful, error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004FC98(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100009974(&_mh_execute_header, a2, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10004FDB0()
{
  sub_1000079DC();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to upload\tDAP report to %@, error: %@", v2, 0x16u);
}

void sub_1000500D0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

void sub_10005018C(os_log_t log)
{
  v1 = 138412290;
  v2 = @"Issuer URL length must be positive and not exceed 64KB.";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@", &v1, 0xCu);
}