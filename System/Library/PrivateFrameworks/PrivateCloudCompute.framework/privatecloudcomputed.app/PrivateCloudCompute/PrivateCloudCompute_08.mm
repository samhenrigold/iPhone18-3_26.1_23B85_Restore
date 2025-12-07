uint64_t Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1001D0BD0(), !v4))
  {
    if (v3[8] != 1 || (result = sub_1001D0BA0(), !v4))
    {
      type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000C6970@<X0>(uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000C69F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD88, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C6A98(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AC38, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C6B04(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022AC38, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);

  return sub_1001D0B40();
}

uint64_t sub_1000C6B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1000AED88(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

void sub_1000C6C38()
{
  v0._object = 0x80000001001E4CD0;
  v0._countAndFlagsBits = 0xD000000000000019;
  sub_1001D18B0(v0);
  static Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected.protoMessageName = 0xD00000000000002ELL;
  qword_100243290 = 0x80000001001E4930;
}

uint64_t *Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227878 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected.protoMessageName;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001D0AC0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1001D0C00(), !v4))
  {
    type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000C6F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD80, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C6FE4(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AC50, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C7050(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022AC50, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);

  return sub_1001D0B40();
}

uint64_t sub_1000C70CC(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

void sub_1000C7170()
{
  v0._object = 0x80000001001E4CB0;
  v0._countAndFlagsBits = 0xD000000000000013;
  sub_1001D18B0(v0);
  static Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation.protoMessageName = 0xD00000000000002ELL;
  *algn_1002432B8 = 0x80000001001E4930;
}

uint64_t *Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227888 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation.protoMessageName;
}

uint64_t sub_1000C725C()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ohttp_context";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "revocation";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001D0AC0();
    }

    else if (result == 2)
    {
      sub_1001D0A50();
    }
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1001D0C00(), !v4))
  {
    v6 = *(v3 + 8);
    v7 = *(v3 + 16);
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_12;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        result = sub_1001D0BC0();
        if (v4)
        {
          return result;
        }

        goto LABEL_12;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 != v10)
    {
      goto LABEL_11;
    }

LABEL_12:
    type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t static Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || !sub_1000A1A5C(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)))
  {
    return 0;
  }

  type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation(0);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000C76E4@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = xmmword_1001D3A00;
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000C776C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD78, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C780C(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AB08, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C7878(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022AB08, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);

  return sub_1001D0B40();
}

uint64_t sub_1000C78F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || !sub_1000A1A5C(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)))
  {
    return 0;
  }

  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

void sub_1000C79B0()
{
  v0._object = 0x80000001001E4C70;
  v0._countAndFlagsBits = 0xD000000000000017;
  sub_1001D18B0(v0);
  static Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList.protoMessageName = 0xD00000000000002ELL;
  qword_1002432E0 = 0x80000001001E4930;
}

uint64_t *Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227898 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList.protoMessageName;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D09E0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation(0);
        sub_1000D6BB8(&qword_10022AB08, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);
        sub_1001D0AD0();
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation(0), sub_1000D6BB8(&qword_10022AB08, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation), result = sub_1001D0C10(), !v4))
  {
    type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000C7D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD70, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C7E08(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AC78, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C7E74(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022AC78, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);

  return sub_1001D0B40();
}

uint64_t sub_1000C7EF0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1000AEE18(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000C7FC0()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_PrefetchRequest._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_PrefetchRequest._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "capabilities";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client_requested_attestation_count";
  *(v10 + 1) = 34;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_PrefetchRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1001D09E0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1000C8284(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
      sub_1001D0AB0();
    }
  }

  return result;
}

uint64_t sub_1000C8284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  sub_1000D6BB8(&qword_10022A2B0, type metadata accessor for Proto_Ropes_Common_Capabilities, &protocol conformance descriptor for Proto_Ropes_Common_Capabilities);
  return sub_1001D0AE0();
}

uint64_t Proto_Ropes_HttpService_PrefetchRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000C83A8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1000C85C4(v3, a1, a2, a3);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000C83A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  sub_10001208C(a1 + *(v12 + 20), v7, &qword_1002293A8, &unk_1001D6530);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100011F00(v7, &qword_1002293A8, &unk_1001D6530);
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_Common_Capabilities);
  sub_1000D6BB8(&qword_10022A2B0, type metadata accessor for Proto_Ropes_Common_Capabilities, &protocol conformance descriptor for Proto_Ropes_Common_Capabilities);
  sub_1001D0C20();
  return sub_1000B3E50(v11, type metadata accessor for Proto_Ropes_Common_Capabilities);
}

uint64_t sub_1000C85C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return sub_1001D0C00();
  }

  return result;
}

uint64_t sub_1000C8688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_1000C8740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD68, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C87E0(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_100229330, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C884C(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_100229330, type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchRequest);

  return sub_1001D0B40();
}

uint64_t Proto_Ropes_HttpService_PrefetchUnaryResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1001D09E0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1000C8B28(a1, v5, a2, a3);
          break;
        case 2:
          sub_1000C8A74(a1, v5, a2, a3);
          break;
        case 1:
          type metadata accessor for Proto_Ropes_Common_Attestation(0);
          sub_1000D6BB8(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation, &protocol conformance descriptor for Proto_Ropes_Common_Attestation);
          sub_1001D0AD0();
          break;
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t sub_1000C8A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  sub_1000D6BB8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  return sub_1001D0AE0();
}

uint64_t sub_1000C8B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  sub_1000D6BB8(&qword_10022A2E0, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList, &protocol conformance descriptor for Proto_Ropes_Common_CompressedAttestationList);
  return sub_1001D0AE0();
}

uint64_t Proto_Ropes_HttpService_PrefetchUnaryResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Proto_Ropes_Common_Attestation(0), sub_1000D6BB8(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation, &protocol conformance descriptor for Proto_Ropes_Common_Attestation), result = sub_1001D0C10(), !v4))
  {
    result = sub_1000C8CF0(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1000C8F0C(v3, a1, a2, a3);
      type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000C8CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100011AC0(&qword_10022AA90, &qword_1001D9628);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  sub_10001208C(a1 + *(v12 + 24), v7, &qword_10022AA90, &qword_1001D9628);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100011F00(v7, &qword_10022AA90, &qword_1001D9628);
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_1000D6BB8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_1001D0C20();
  return sub_1000B3E50(v11, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
}

uint64_t sub_1000C8F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100011AC0(&qword_10022AA98, &unk_1001D9630);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  sub_10001208C(a1 + *(v12 + 28), v7, &qword_10022AA98, &unk_1001D9630);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100011F00(v7, &qword_10022AA98, &unk_1001D9630);
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  sub_1000D6BB8(&qword_10022A2E0, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList, &protocol conformance descriptor for Proto_Ropes_Common_CompressedAttestationList);
  sub_1001D0C20();
  return sub_1000B3E50(v11, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
}

uint64_t sub_1000C9174@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1000C927C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD60, type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchUnaryResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C931C(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022ACA0, type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchUnaryResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C9388(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022ACA0, type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchUnaryResponse);

  return sub_1001D0B40();
}

uint64_t sub_1000C9444(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1001D0C60();
  sub_10003B610(v5, a2);
  sub_10003A37C(v5, a2);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v6 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001D7170;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "attestation";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v12 = enum case for _NameMap.NameDescription.same(_:);
  v13 = sub_1001D0C30();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = "rate_limit_configuration_list";
  *(v15 + 1) = 29;
  v15[16] = 2;
  v14();
  v16 = v10 + 2 * v7 + v6[14];
  *(v10 + 2 * v7) = 3;
  *v16 = a3;
  *(v16 + 8) = a4;
  *(v16 + 16) = 2;
  v14();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_PrefetchResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1001D09E0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1000CA2C8(v5, a1, a2, a3);
        break;
      case 2:
        sub_1000C9D0C(v5, a1, a2, a3);
        break;
      case 1:
        sub_1000C975C(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1000C975C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v37 - v9;
  v10 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100011AC0(&qword_10022BE38, &qword_1001DB8C8);
  v21 = __chkstk_darwin(v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_10001208C(a1, v12, &qword_100229360, &qword_1001D64D8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_100229360, &qword_1001D64D8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1000B3928(v12, v19, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    sub_1000B3928(v19, v17, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
      v29 = v44;
    }

    else
    {
      sub_100011F00(v24, &qword_10022BE38, &qword_1001DB8C8);
      v31 = v39;
      sub_1000B3928(v17, v39, type metadata accessor for Proto_Ropes_Common_Attestation);
      sub_1000B3928(v31, v24, type metadata accessor for Proto_Ropes_Common_Attestation);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_1000D6BB8(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation, &protocol conformance descriptor for Proto_Ropes_Common_Attestation);
  v33 = v43;
  sub_1001D0AE0();
  if (v33)
  {
    return sub_100011F00(v24, &qword_10022BE38, &qword_1001DB8C8);
  }

  sub_10001208C(v24, v32, &qword_10022BE38, &qword_1001DB8C8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_100011F00(v24, &qword_10022BE38, &qword_1001DB8C8);
    return sub_100011F00(v32, &qword_10022BE38, &qword_1001DB8C8);
  }

  else
  {
    v35 = v40;
    sub_1000B3928(v32, v40, type metadata accessor for Proto_Ropes_Common_Attestation);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022BE38, &qword_1001DB8C8);
    v36 = v38;
    sub_100011F00(v38, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v35, v36, type metadata accessor for Proto_Ropes_Common_Attestation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1000C9D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100011AC0(&qword_10022AA90, &qword_1001D9628);
  v21 = __chkstk_darwin(v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_10001208C(a1, v12, &qword_100229360, &qword_1001D64D8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_100229360, &qword_1001D64D8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1000B3928(v12, v19, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    sub_1000B3928(v19, v17, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100011F00(v24, &qword_10022AA90, &qword_1001D9628);
      v31 = v40;
      sub_1000B3928(v17, v40, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
      sub_1000B3928(v31, v24, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1000D6BB8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  v33 = v43;
  sub_1001D0AE0();
  if (v33)
  {
    return sub_100011F00(v24, &qword_10022AA90, &qword_1001D9628);
  }

  sub_10001208C(v24, v32, &qword_10022AA90, &qword_1001D9628);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_100011F00(v24, &qword_10022AA90, &qword_1001D9628);
    return sub_100011F00(v32, &qword_10022AA90, &qword_1001D9628);
  }

  else
  {
    v35 = v39;
    sub_1000B3928(v32, v39, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022AA90, &qword_1001D9628);
    v36 = v38;
    sub_100011F00(v38, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v35, v36, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1000CA2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100011AC0(&qword_10022BE40, &qword_1001DB8D0);
  v21 = __chkstk_darwin(v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_10001208C(a1, v12, &qword_100229360, &qword_1001D64D8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_100229360, &qword_1001D64D8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1000B3928(v12, v19, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    sub_1000B3928(v19, v17, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100011F00(v24, &qword_10022BE40, &qword_1001DB8D0);
      v31 = v40;
      sub_1000B3928(v17, v40, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
      sub_1000B3928(v31, v24, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1000D6BB8(&qword_10022A310, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation, &protocol conformance descriptor for Proto_Ropes_Common_DiagnosticInformation);
  v33 = v43;
  sub_1001D0AE0();
  if (v33)
  {
    return sub_100011F00(v24, &qword_10022BE40, &qword_1001DB8D0);
  }

  sub_10001208C(v24, v32, &qword_10022BE40, &qword_1001DB8D0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_100011F00(v24, &qword_10022BE40, &qword_1001DB8D0);
    return sub_100011F00(v32, &qword_10022BE40, &qword_1001DB8D0);
  }

  else
  {
    v35 = v39;
    sub_1000B3928(v32, v39, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022BE40, &qword_1001DB8D0);
    v36 = v38;
    sub_100011F00(v38, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v35, v36, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t Proto_Ropes_HttpService_PrefetchResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  sub_10001208C(v3, &v14 - v9, &qword_100229360, &qword_1001D64D8);
  v11 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000CAC68(v3, a1, a2, a3);
    }

    else
    {
      sub_1000CAEA0(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_1000CAA34(v3, a1, a2, a3);
  }

  result = sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000CAA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_100229360, &qword_1001D64D8);
  v11 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_100229360, &qword_1001D64D8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_Common_Attestation);
    sub_1000D6BB8(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation, &protocol conformance descriptor for Proto_Ropes_Common_Attestation);
    sub_1001D0C20();
    return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_Common_Attestation);
  }

  result = sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000CAC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_100229360, &qword_1001D64D8);
  v11 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_100229360, &qword_1001D64D8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1000D6BB8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1001D0C20();
    return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  result = sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000CAEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_100229360, &qword_1001D64D8);
  v11 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_100229360, &qword_1001D64D8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    sub_1000D6BB8(&qword_10022A310, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation, &protocol conformance descriptor for Proto_Ropes_Common_DiagnosticInformation);
    sub_1001D0C20();
    return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  }

  result = sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000CB16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD58, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CB20C(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_100229320, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CB278(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_100229320, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchResponse);

  return sub_1001D0B40();
}

uint64_t sub_1000CB3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v33 - v8;
  v9 = sub_100011AC0(&qword_10022AAA0, &qword_1001D9640);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  v19 = sub_100011AC0(&qword_10022BE28, &qword_1001DB8B8);
  v20 = __chkstk_darwin(v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_10001208C(v45, v11, &qword_10022AAA0, &qword_1001D9640);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_100011F00(v11, &qword_10022AAA0, &qword_1001D9640);
    v26 = v40;
  }

  else
  {
    sub_1000B3928(v11, v18, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
    sub_1000B3928(v18, v16, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
    sub_100011F00(v23, &qword_10022BE28, &qword_1001DB8B8);
    v27 = v38;
    sub_1000B3928(v16, v38, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    sub_1000B3928(v27, v23, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_1000D6BB8(&qword_10022BE20, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  v28 = v41;
  sub_1001D0AE0();
  v29 = v39;
  if (v28)
  {
    return sub_100011F00(v23, &qword_10022BE28, &qword_1001DB8B8);
  }

  sub_10001208C(v23, v39, &qword_10022BE28, &qword_1001DB8B8);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_100011F00(v23, &qword_10022BE28, &qword_1001DB8B8);
    return sub_100011F00(v29, &qword_10022BE28, &qword_1001DB8B8);
  }

  else
  {
    v31 = v36;
    sub_1000B3928(v29, v36, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    if (v25 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v23, &qword_10022BE28, &qword_1001DB8B8);
    v32 = v45;
    sub_100011F00(v45, &qword_10022AAA0, &qword_1001D9640);
    sub_1000B3928(v31, v32, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_1000CB93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_10022AAA0, &qword_1001D9640);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_10022AAA0, &qword_1001D9640);
  v11 = type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_100011F00(v7, &qword_10022AAA0, &qword_1001D9640);
  }

  sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  sub_1000D6BB8(&qword_10022BE20, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  sub_1001D0C20();
  return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
}

uint64_t sub_1000CBBD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD50, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_ConfigRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CBC70(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022ACC8, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_ConfigRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CBCDC(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022ACC8, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_ConfigRequest);

  return sub_1001D0B40();
}

uint64_t sub_1000CBE14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1001D09E0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v7, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000CBE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v33 - v8;
  v9 = sub_100011AC0(&qword_10022AAB0, &unk_1001D9650);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  v19 = sub_100011AC0(&qword_10022AA90, &qword_1001D9628);
  v20 = __chkstk_darwin(v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_10001208C(v45, v11, &qword_10022AAB0, &unk_1001D9650);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_100011F00(v11, &qword_10022AAB0, &unk_1001D9650);
    v26 = v40;
  }

  else
  {
    sub_1000B3928(v11, v18, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type);
    sub_1000B3928(v18, v16, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type);
    sub_100011F00(v23, &qword_10022AA90, &qword_1001D9628);
    v27 = v38;
    sub_1000B3928(v16, v38, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1000B3928(v27, v23, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_1000D6BB8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  v28 = v41;
  sub_1001D0AE0();
  v29 = v39;
  if (v28)
  {
    return sub_100011F00(v23, &qword_10022AA90, &qword_1001D9628);
  }

  sub_10001208C(v23, v39, &qword_10022AA90, &qword_1001D9628);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_100011F00(v23, &qword_10022AA90, &qword_1001D9628);
    return sub_100011F00(v29, &qword_10022AA90, &qword_1001D9628);
  }

  else
  {
    v31 = v36;
    sub_1000B3928(v29, v36, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    if (v25 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v23, &qword_10022AA90, &qword_1001D9628);
    v32 = v45;
    sub_100011F00(v45, &qword_10022AAB0, &unk_1001D9650);
    sub_1000B3928(v31, v32, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_1000CC424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    a5(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000CC4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_10022AAB0, &unk_1001D9650);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_10022AAB0, &unk_1001D9650);
  v11 = type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_100011F00(v7, &qword_10022AAB0, &unk_1001D9650);
  }

  sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_1000D6BB8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_1001D0C20();
  return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
}

uint64_t sub_1000CC740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD48, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_ConfigResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CC7E0(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022ACE0, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_ConfigResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CC84C(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022ACE0, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_ConfigResponse);

  return sub_1001D0B40();
}

uint64_t sub_1000CC8F0()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_AdminApiResponse._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_AdminApiResponse._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "supported_workloads";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "public_api_endpoints";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D09E0();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v6 = v3;
        type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint(0);
        sub_1000D6BB8(&qword_10022AB48, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_1001D09E0();
    }

    v6 = v3;
    type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0);
    sub_1000D6BB8(&qword_10022AB40, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.Workload);
LABEL_5:
    v3 = v6;
    sub_1001D0AD0();
    goto LABEL_6;
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0), sub_1000D6BB8(&qword_10022AB40, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.Workload), result = sub_1001D0C10(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint(0), sub_1000D6BB8(&qword_10022AB48, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint), result = sub_1001D0C10(), !v4))
    {
      type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse(0);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000CCE1C@<X0>(void *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  a2[1] = _swiftEmptyArrayStorage;
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000CCE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD40, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CCF18(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022ACF8, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CCF84(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022ACF8, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse);

  return sub_1001D0B40();
}

void sub_1000CD02C()
{
  v0._object = 0x80000001001E4B30;
  v0._countAndFlagsBits = 0xD000000000000012;
  sub_1001D18B0(v0);
  static Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.protoMessageName = 0xD000000000000030;
  *algn_100243398 = 0x80000001001E4A70;
}

uint64_t *Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002278D8 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.protoMessageName;
}

uint64_t sub_1000CD118()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parse_type";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D09E0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1000D6C00();
        sub_1001D0A30();
      }

      else if (result == 2)
      {
        sub_1001D0AA0();
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1000D6C00(), result = sub_1001D0BB0(), !v4))
  {
    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1001D0BF0(), !v4))
    {
      type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue(0);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000CD51C@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000CD5A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD38, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CD648(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AB70, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CD6B4(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022AB70, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);

  return sub_1001D0B40();
}

uint64_t sub_1000CD730()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.ParseType._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.ParseType._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7170;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "EQUALS";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CONTAINS";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "STARTS_WITH";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t *Proto_Ropes_HttpService_AdminApiResponse.Workload.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002278F0 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_AdminApiResponse.Workload.protoMessageName;
}

uint64_t sub_1000CDA4C()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_AdminApiResponse.Workload._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_AdminApiResponse.Workload._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D62F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "workload_type";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mandatory_keys";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "routing_parameters";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "utilization";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "priority";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1001D09E0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      if (result == 1)
      {
        sub_1001D0AA0();
      }

      else if (result == 2)
      {
        sub_1001D0A60();
      }
    }

    else
    {
      switch(result)
      {
        case 4:
          sub_1000CDE2C(a1, v5, a2, a3);
          break;
        case 5:
          sub_1001D0A80();
          break;
        case 6:
          sub_1001D0AC0();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1000CDE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0);
  type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  sub_1000D6BB8(&qword_10022AD30, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
  return sub_1001D0AE0();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1001D0BF0(), !v4))
  {
    if (!*(*(v3 + 16) + 16) || (result = sub_1001D0BD0(), !v4))
    {
      result = sub_1000CDFF4(v3, a1, a2, a3);
      if (!v4)
      {
        if (*(v3 + 24))
        {
          sub_1001D0BE0();
        }

        if (*(v3 + 32))
        {
          sub_1001D0C00();
        }

        type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0);
        return sub_1001D0920();
      }
    }
  }

  return result;
}

uint64_t sub_1000CDFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100011AC0(&qword_10022AA58, &qword_1001D95F8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0);
  sub_10001208C(a1 + *(v12 + 36), v7, &qword_10022AA58, &qword_1001D95F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100011F00(v7, &qword_10022AA58, &qword_1001D95F8);
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
  sub_1000D6BB8(&qword_10022AD30, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
  sub_1001D0C20();
  return sub_1000B3E50(v11, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
}

uint64_t sub_1000CE25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = _swiftEmptyArrayStorage;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1000CE34C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD30, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.Workload);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CE3EC(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AB40, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.Workload);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CE458(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022AB40, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.Workload);

  return sub_1001D0B40();
}

uint64_t sub_1000CE4D4()
{
  if (qword_1002278F0 != -1)
  {
    swift_once();
  }

  v1 = static Proto_Ropes_HttpService_AdminApiResponse.Workload.protoMessageName;
  v2 = *algn_1002433D8;
  swift_bridgeObjectRetain_n();
  v3._countAndFlagsBits = 0x74656D617261502ELL;
  v3._object = 0xEB00000000737265;
  sub_1001D18B0(v3);

  static Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters.protoMessageName = v1;
  qword_100243400 = v2;
  return result;
}

uint64_t *Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227900 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters.protoMessageName;
}

uint64_t sub_1000CE5F8()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "params";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "extended_params";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1001D09E0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1001D0910();
        sub_1001D09D0();
      }

      else if (result == 2)
      {
        sub_1000CE8EC(a1, v5, a2, a3);
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t sub_1000CE8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001D0910();
  type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue(0);
  sub_1000D6BB8(&qword_10022AB70, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
  sub_1000D6BB8(&qword_10022AB60, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
  return sub_1001D09C0();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_1001D0910(), result = sub_1001D0B70(), !v4))
  {
    if (!*(v3[1] + 16) || (sub_1001D0910(), type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue(0), sub_1000D6BB8(&qword_10022AB70, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue), sub_1000D6BB8(&qword_10022AB60, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue), result = sub_1001D0B60(), !v4))
    {
      type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000CEBB0(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void, void), uint64_t (*a5)(void))
{
  if ((a3(*a1, *a2) & 1) == 0 || (a4(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  a5(0);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000CECC8@<X0>(unint64_t *a1@<X8>)
{
  *a1 = sub_1000D65D4(_swiftEmptyArrayStorage);
  a1[1] = sub_1000D69B0(_swiftEmptyArrayStorage);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000CED78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD28, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CEE18(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AD30, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CEE84(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022AD30, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);

  return sub_1001D0B40();
}

uint64_t sub_1000CEF2C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t (*a6)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0 || (a6(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

void sub_1000CF01C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7._countAndFlagsBits = a2;
  v7._object = a3;
  sub_1001D18B0(v7);
  *a4 = 0xD000000000000030;
  *a5 = 0x80000001001E4A70;
}

void *Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227910 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint.protoMessageName;
}

uint64_t sub_1000CF120(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1001D0C60();
  sub_10003B610(v9, a2);
  sub_10003A37C(v9, a2);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v10 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001D39F0;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  v15 = sub_1001D0C30();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001D0AA0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1001D0BF0(), !v4))
  {
    type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t static Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint(0);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

Swift::Int sub_1000CF4E4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1001D2580();
  a1(0);
  sub_1000D6BB8(a2, a3, a4);
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_1000CF56C@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000CF5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD20, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CF68C(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AB48, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CF6F8(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022AB48, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint, &protocol conformance descriptor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);

  return sub_1001D0B40();
}

uint64_t sub_1000CF774(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000CF830(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_100006028(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1001D2470();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CF9D4(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue(0);
  v4 = *(v60 - 8);
  v5 = __chkstk_darwin(v60);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v55 - v9;
  __chkstk_darwin(v8);
  v58 = &v55 - v11;
  v12 = sub_100011AC0(&qword_10022BDF8, &qword_1001DB890);
  v13 = __chkstk_darwin(v12 - 8);
  result = __chkstk_darwin(v13);
  v61 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v61 + 16))
  {
    return 0;
  }

  v56 = a1;
  v57 = &v55 - v15;
  v59 = v16;
  v17 = 0;
  v18 = *(a1 + 64);
  v55 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v62 = (v21 - 1) & v21;
    v24 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_18:
    v30 = (*(v56 + 48) + 16 * v24);
    v32 = *v30;
    v31 = v30[1];
    v33 = v58;
    sub_1000B44A8(*(v56 + 56) + *(v4 + 72) * v24, v58, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
    v34 = sub_100011AC0(&qword_10022BE00, &unk_1001DB898);
    v35 = *(v34 + 48);
    v36 = v59;
    *v59 = v32;
    v36[1] = v31;
    v37 = v33;
    v27 = v36;
    sub_1000B3928(v37, v36 + v35, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
    (*(*(v34 - 8) + 56))(v27, 0, 1, v34);

LABEL_19:
    v38 = v27;
    v39 = v57;
    sub_1000DBEF4(v38, v57, &qword_10022BDF8, &qword_1001DB890);
    v40 = sub_100011AC0(&qword_10022BE00, &unk_1001DB898);
    v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
    v42 = v41 == 1;
    if (v41 == 1)
    {
      return v42;
    }

    v43 = v39;
    v44 = v7;
    v45 = *(v40 + 48);
    v46 = *v43;
    v47 = v43[1];
    sub_1000B3928(v43 + v45, v10, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
    v48 = v61;
    v49 = sub_100006028(v46, v47);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      goto LABEL_37;
    }

    v7 = v44;
    sub_1000B44A8(*(v48 + 56) + *(v4 + 72) * v49, v44, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
    v52 = *v44;
    v53 = *v10;
    if (v10[8] == 1)
    {
      if (v53)
      {
        if (v53 == 1)
        {
          if (v52 != 1)
          {
            goto LABEL_36;
          }
        }

        else if (v52 != 2)
        {
          goto LABEL_36;
        }
      }

      else if (v52)
      {
        goto LABEL_36;
      }
    }

    else if (v52 != v53)
    {
      goto LABEL_36;
    }

    if ((*(v44 + 2) != *(v10 + 2) || *(v44 + 3) != *(v10 + 3)) && (sub_1001D2470() & 1) == 0)
    {
LABEL_36:
      sub_1000B3E50(v44, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
LABEL_37:
      sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
      return 0;
    }

    sub_1001D0940();
    sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v23 = sub_1001D1790();
    sub_1000B3E50(v44, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
    result = sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
    v21 = v62;
    if ((v23 & 1) == 0)
    {
      return v42;
    }
  }

  if (v22 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = v25 - 1;
  v27 = v59;
  while (1)
  {
    v28 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v28 >= v22)
    {
      v54 = sub_100011AC0(&qword_10022BE00, &unk_1001DB898);
      (*(*(v54 - 8) + 56))(v27, 1, 1, v54);
      v62 = 0;
      v17 = v26;
      goto LABEL_19;
    }

    v29 = *(v55 + 8 * v28);
    ++v17;
    if (v29)
    {
      v62 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v17 = v28;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CFF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001CFEE0();
  v54 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = &v45 - v7;
  v8 = sub_100011AC0(&qword_10022BEF0, &qword_1001DB988);
  v9 = __chkstk_darwin(v8 - 8);
  result = __chkstk_darwin(v9);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v48 = &v45 - v11;
  v49 = v12;
  v13 = 0;
  v46 = a1;
  v14 = *(a1 + 64);
  v45 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v50 = v54 + 16;
  v51 = (v54 + 32);
  v47 = (v54 + 8);
  while (1)
  {
    v19 = v49;
    if (!v17)
    {
      break;
    }

    v52 = (v17 - 1) & v17;
    v20 = __clz(__rbit64(v17)) | (v13 << 6);
LABEL_16:
    v25 = *(*(v46 + 48) + v20);
    v27 = v53;
    v26 = v54;
    (*(v54 + 16))(v53, *(v46 + 56) + *(v54 + 72) * v20, v4);
    v28 = sub_100011AC0(&qword_10022BEF8, &unk_1001DB990);
    v29 = *(v28 + 48);
    *v19 = v25;
    (*(v26 + 32))(&v19[v29], v27, v4);
    (*(*(v28 - 8) + 56))(v19, 0, 1, v28);
LABEL_17:
    v30 = v19;
    v31 = v48;
    sub_1000DBEF4(v30, v48, &qword_10022BEF0, &qword_1001DB988);
    v32 = sub_100011AC0(&qword_10022BEF8, &unk_1001DB990);
    v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
    v34 = v33 == 1;
    if (v33 == 1)
    {
      return v34;
    }

    v35 = *(v32 + 48);
    v36 = *v31;
    (*v51)(v55, &v31[v35], v4);
    v37 = sub_1000060A0(v36);
    if ((v38 & 1) == 0)
    {
      (*v47)(v55, v4);
      return 0;
    }

    v39 = v53;
    v40 = v54;
    (*(v54 + 16))(v53, *(v56 + 56) + *(v54 + 72) * v37, v4);
    sub_1000D6BB8(&qword_10022BF00, &type metadata accessor for EventValue, &protocol conformance descriptor for EventValue);
    v41 = v55;
    v42 = sub_1001D1790();
    v43 = *(v40 + 8);
    v43(v39, v4);
    result = (v43)(v41, v4);
    v17 = v52;
    if ((v42 & 1) == 0)
    {
      return v34;
    }
  }

  if (v18 <= v13 + 1)
  {
    v21 = v13 + 1;
  }

  else
  {
    v21 = v18;
  }

  v22 = v21 - 1;
  while (1)
  {
    v23 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v23 >= v18)
    {
      v44 = sub_100011AC0(&qword_10022BEF8, &unk_1001DB990);
      (*(*(v44 - 8) + 56))(v19, 1, 1, v44);
      v52 = 0;
      v13 = v22;
      goto LABEL_17;
    }

    v24 = *(v45 + 8 * v23);
    ++v13;
    if (v24)
    {
      v52 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v23 << 6);
      v13 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D0488(uint64_t a1, uint64_t a2)
{
  v64 = type metadata accessor for Proto_Ropes_RateLimit_Values(0);
  v67 = *(v64 - 8);
  v4 = __chkstk_darwin(v64);
  v68 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v59 - v7;
  __chkstk_darwin(v6);
  v65 = &v59 - v9;
  v10 = sub_100011AC0(&qword_10022BDE8, &qword_1001DB880);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = (&v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v11);
  v16 = (&v59 - v15);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v17 = 0;
  v18 = *(a1 + 64);
  v60 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v61 = v22;
  v62 = (&v59 - v15);
  v63 = a2;
  while (v21)
  {
    v66 = (v21 - 1) & v21;
    v29 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_17:
    v34 = (*(a1 + 48) + 16 * v29);
    v35 = *v34;
    v36 = v34[1];
    v37 = v65;
    sub_1000B44A8(*(a1 + 56) + *(v67 + 72) * v29, v65, type metadata accessor for Proto_Ropes_RateLimit_Values);
    v38 = sub_100011AC0(&qword_10022BDF0, &qword_1001DB888);
    v39 = *(v38 + 48);
    *v13 = v35;
    v13[1] = v36;
    sub_1000B3928(v37, v13 + v39, type metadata accessor for Proto_Ropes_RateLimit_Values);
    (*(*(v38 - 8) + 56))(v13, 0, 1, v38);

LABEL_18:
    sub_1000DBEF4(v13, v16, &qword_10022BDE8, &qword_1001DB880);
    v40 = sub_100011AC0(&qword_10022BDF0, &qword_1001DB888);
    v41 = (*(*(v40 - 8) + 48))(v16, 1, v40);
    v28 = v41 == 1;
    if (v41 == 1)
    {
      return v28;
    }

    v42 = *(v40 + 48);
    v44 = *v16;
    v43 = v16[1];
    sub_1000B3928(v16 + v42, v8, type metadata accessor for Proto_Ropes_RateLimit_Values);
    v45 = v63;
    v46 = sub_100006028(v44, v43);
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      goto LABEL_34;
    }

    v49 = *(v45 + 56);
    v50 = v68;
    sub_1000B44A8(v49 + *(v67 + 72) * v46, v68, type metadata accessor for Proto_Ropes_RateLimit_Values);
    v51 = *v50;
    v52 = v8;
    v53 = *v8;
    v54 = *(*v50 + 16);
    if (v54 != *(*v8 + 16))
    {
      goto LABEL_33;
    }

    if (v54 && v51 != v53)
    {
      v55 = (v51 + 40);
      v56 = (v53 + 40);
      while (1)
      {
        v57 = *(v55 - 1) == *(v56 - 1) && *v55 == *v56;
        if (!v57 && (sub_1001D2470() & 1) == 0)
        {
          break;
        }

        v55 += 2;
        v56 += 2;
        if (!--v54)
        {
          goto LABEL_6;
        }
      }

LABEL_33:
      sub_1000B3E50(v68, type metadata accessor for Proto_Ropes_RateLimit_Values);
      v8 = v52;
LABEL_34:
      sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_RateLimit_Values);
      return 0;
    }

LABEL_6:
    sub_1001D0940();
    sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v23 = v13;
    v24 = v28;
    v25 = v68;
    v8 = v52;
    v26 = sub_1001D1790();
    v27 = v25;
    v28 = v24;
    v13 = v23;
    sub_1000B3E50(v27, type metadata accessor for Proto_Ropes_RateLimit_Values);
    result = sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_RateLimit_Values);
    v22 = v61;
    v16 = v62;
    v21 = v66;
    if ((v26 & 1) == 0)
    {
      return v28;
    }
  }

  if (v22 <= v17 + 1)
  {
    v30 = v17 + 1;
  }

  else
  {
    v30 = v22;
  }

  v31 = v30 - 1;
  while (1)
  {
    v32 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v32 >= v22)
    {
      v58 = sub_100011AC0(&qword_10022BDF0, &qword_1001DB888);
      (*(*(v58 - 8) + 56))(v13, 1, 1, v58);
      v66 = 0;
      v17 = v31;
      goto LABEL_18;
    }

    v33 = *(v60 + 8 * v32);
    ++v17;
    if (v33)
    {
      v66 = (v33 - 1) & v33;
      v29 = __clz(__rbit64(v33)) | (v32 << 6);
      v17 = v32;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s20privatecloudcomputed45Proto_Ropes_HttpService_PrefetchUnaryResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011AC0(&qword_10022AA98, &unk_1001D9630);
  __chkstk_darwin(v7 - 8);
  v46 = &v42 - v8;
  v47 = sub_100011AC0(&qword_10022BE48, &qword_1001DB8D8);
  __chkstk_darwin(v47);
  v10 = &v42 - v9;
  v11 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_100011AC0(&qword_10022AA90, &qword_1001D9628);
  __chkstk_darwin(v15 - 8);
  v17 = (&v42 - v16);
  v18 = sub_100011AC0(&qword_10022BE50, &qword_1001DB8E0);
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  if ((sub_1000AE120(*a1, *a2) & 1) == 0)
  {
    goto LABEL_13;
  }

  v44 = v10;
  v42 = v6;
  v43 = type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  v21 = *(v43 + 24);
  v22 = a1;
  v23 = *(v18 + 48);
  v45 = v22;
  sub_10001208C(v22 + v21, v20, &qword_10022AA90, &qword_1001D9628);
  v24 = a2 + v21;
  v25 = a2;
  sub_10001208C(v24, &v20[v23], &qword_10022AA90, &qword_1001D9628);
  v26 = *(v12 + 48);
  if (v26(v20, 1, v11) == 1)
  {
    if (v26(&v20[v23], 1, v11) == 1)
    {
      sub_100011F00(v20, &qword_10022AA90, &qword_1001D9628);
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  sub_10001208C(v20, v17, &qword_10022AA90, &qword_1001D9628);
  if (v26(&v20[v23], 1, v11) == 1)
  {
    sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
LABEL_10:
    v32 = &qword_10022BE50;
    v33 = &qword_1001DB8E0;
LABEL_11:
    v34 = v20;
LABEL_12:
    sub_100011F00(v34, v32, v33);
    goto LABEL_13;
  }

  sub_1000B3928(&v20[v23], v14, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  if ((sub_1000AE2D8(*v17, *v14) & 1) == 0)
  {
    sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    v32 = &qword_10022AA90;
    v33 = &qword_1001D9628;
    goto LABEL_11;
  }

  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v37 = sub_1001D1790();
  sub_1000B3E50(v14, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_100011F00(v20, &qword_10022AA90, &qword_1001D9628);
  if ((v37 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  v27 = v44;
  v28 = *(v43 + 28);
  v29 = *(v47 + 48);
  sub_10001208C(v45 + v28, v44, &qword_10022AA98, &unk_1001D9630);
  sub_10001208C(v25 + v28, v27 + v29, &qword_10022AA98, &unk_1001D9630);
  v30 = v49;
  v31 = *(v48 + 48);
  if (v31(v27, 1, v49) == 1)
  {
    if (v31(v27 + v29, 1, v30) == 1)
    {
      sub_100011F00(v27, &qword_10022AA98, &unk_1001D9630);
LABEL_23:
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v35 = sub_1001D1790();
      return v35 & 1;
    }

    goto LABEL_20;
  }

  v38 = v46;
  sub_10001208C(v27, v46, &qword_10022AA98, &unk_1001D9630);
  if (v31(v27 + v29, 1, v30) == 1)
  {
    sub_1000B3E50(v38, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
LABEL_20:
    v32 = &qword_10022BE48;
    v33 = &qword_1001DB8D8;
    v34 = v27;
    goto LABEL_12;
  }

  v39 = v27 + v29;
  v40 = v42;
  sub_1000B3928(v39, v42, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  v41 = static Proto_Ropes_Common_CompressedAttestationList.== infix(_:_:)();
  sub_1000B3E50(v40, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  sub_1000B3E50(v38, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  sub_100011F00(v27, &qword_10022AA98, &unk_1001D9630);
  if (v41)
  {
    goto LABEL_23;
  }

LABEL_13:
  v35 = 0;
  return v35 & 1;
}

uint64_t _s20privatecloudcomputed40Proto_Ropes_HttpService_PrefetchResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_100011AC0(&qword_10022BE30, &qword_1001DB8C0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_10001208C(a1, &v20 - v13, &qword_100229360, &qword_1001D64D8);
  sub_10001208C(a2, &v14[v15], &qword_100229360, &qword_1001D64D8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_100011F00(v14, &qword_100229360, &qword_1001D64D8);
LABEL_9:
      type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = sub_1001D1790();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_10001208C(v14, v10, &qword_100229360, &qword_1001D64D8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
LABEL_6:
    sub_100011F00(v14, &qword_10022BE30, &qword_1001DB8C0);
    goto LABEL_7;
  }

  sub_1000B3928(&v14[v15], v7, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  v18 = _s20privatecloudcomputed40Proto_Ropes_HttpService_PrefetchResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v10, v7);
  sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  sub_100011F00(v14, &qword_100229360, &qword_1001D64D8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s20privatecloudcomputed40Proto_Ropes_HttpService_PrefetchResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  __chkstk_darwin(v4 - 8);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  __chkstk_darwin(v36);
  v38 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = (&v35 - v15);
  __chkstk_darwin(v14);
  v18 = &v35 - v17;
  v19 = sub_100011AC0(&qword_10022BED8, &qword_1001DB970);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v35 - v21;
  v23 = *(v20 + 56);
  sub_1000B44A8(a1, &v35 - v21, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  sub_1000B44A8(a2, &v22[v23], type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1000B44A8(v22, v18, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    if (swift_getEnumCaseMultiPayload())
    {
      v28 = type metadata accessor for Proto_Ropes_Common_Attestation;
      v29 = v18;
LABEL_13:
      sub_1000B3E50(v29, v28);
      sub_100011F00(v22, &qword_10022BED8, &qword_1001DB970);
LABEL_14:
      v27 = 0;
      return v27 & 1;
    }

    sub_1000B3928(&v22[v23], v9, type metadata accessor for Proto_Ropes_Common_Attestation);
    v27 = static Proto_Ropes_Common_Attestation.== infix(_:_:)();
    sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_Common_Attestation);
    v32 = v18;
    v33 = type metadata accessor for Proto_Ropes_Common_Attestation;
LABEL_16:
    sub_1000B3E50(v32, v33);
    sub_1000B3E50(v22, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    return v27 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1000B44A8(v22, v13, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v28 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation;
      v29 = v13;
      goto LABEL_13;
    }

    v30 = &v22[v23];
    v31 = v37;
    sub_1000B3928(v30, v37, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    v27 = static Proto_Ropes_Common_DiagnosticInformation.== infix(_:_:)();
    sub_1000B3E50(v31, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    v32 = v13;
    v33 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation;
    goto LABEL_16;
  }

  sub_1000B44A8(v22, v16, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList;
    v29 = v16;
    goto LABEL_13;
  }

  v25 = v38;
  sub_1000B3928(&v22[v23], v38, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  if ((sub_1000AE2D8(*v16, *v25) & 1) == 0)
  {
    sub_1000B3E50(v25, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    goto LABEL_19;
  }

  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v26 = sub_1001D1790();
  sub_1000B3E50(v25, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  if ((v26 & 1) == 0)
  {
LABEL_19:
    sub_1000B3E50(v16, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1000B3E50(v22, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    goto LABEL_14;
  }

  sub_1000B3E50(v16, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_1000B3E50(v22, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  v27 = 1;
  return v27 & 1;
}

uint64_t _s20privatecloudcomputed40Proto_Ropes_HttpService_AdminApiResponseV8WorkloadV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100011AC0(&qword_10022AA58, &qword_1001D95F8);
  __chkstk_darwin(v8 - 8);
  v10 = (&v24 - v9);
  v11 = sub_100011AC0(&qword_10022AA60, &unk_1001D9600);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (sub_1001D2470() & 1) == 0 || (sub_1000AED88(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_19;
  }

  v25 = v7;
  v24 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0);
  v14 = *(v24 + 36);
  v15 = *(v11 + 48);
  sub_10001208C(a1 + v14, v13, &qword_10022AA58, &qword_1001D95F8);
  sub_10001208C(a2 + v14, &v13[v15], &qword_10022AA58, &qword_1001D95F8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10001208C(v13, v10, &qword_10022AA58, &qword_1001D95F8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = &v13[v15];
      v21 = v25;
      sub_1000B3928(v20, v25, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
      if (sub_1000CF830(*v10, *v21) & 1) != 0 && (sub_1000CF9D4(v10[1], v21[1]))
      {
        sub_1001D0940();
        sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v22 = sub_1001D1790();
        sub_1000B3E50(v21, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
        sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
        sub_100011F00(v13, &qword_10022AA58, &qword_1001D95F8);
        if (v22)
        {
          goto LABEL_7;
        }

LABEL_19:
        v17 = 0;
        return v17 & 1;
      }

      sub_1000B3E50(v21, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
      sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
      v18 = &qword_10022AA58;
      v19 = &qword_1001D95F8;
LABEL_18:
      sub_100011F00(v13, v18, v19);
      goto LABEL_19;
    }

    sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
LABEL_12:
    v18 = &qword_10022AA60;
    v19 = &unk_1001D9600;
    goto LABEL_18;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_100011F00(v13, &qword_10022AA58, &qword_1001D95F8);
LABEL_7:
  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_19;
  }

  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v17 = sub_1001D1790();
  return v17 & 1;
}

uint64_t _s20privatecloudcomputed40Proto_Ropes_HttpService_AdminApiResponseV17RoutingParamValueV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (sub_1001D2470() & 1) != 0)
  {
    type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue(0);
    sub_1001D0940();
    sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return sub_1001D1790() & 1;
  }

  return 0;
}

uint64_t _s20privatecloudcomputed39Proto_Ropes_HttpService_PrefetchRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_100011AC0(&qword_10022BE58, &qword_1001DB8E8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v28 = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  v29 = a1;
  v14 = *(v28 + 20);
  v15 = *(v11 + 56);
  sub_10001208C(a1 + v14, v13, &qword_1002293A8, &unk_1001D6530);
  sub_10001208C(a2 + v14, &v13[v15], &qword_1002293A8, &unk_1001D6530);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10001208C(v13, v9, &qword_1002293A8, &unk_1001D6530);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v27;
      sub_1000B3928(&v13[v15], v27, type metadata accessor for Proto_Ropes_Common_Capabilities);
      v20 = static Proto_Ropes_Common_Capabilities.== infix(_:_:)();
      sub_1000B3E50(v19, type metadata accessor for Proto_Ropes_Common_Capabilities);
      sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_Common_Capabilities);
      sub_100011F00(v13, &qword_1002293A8, &unk_1001D6530);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_Common_Capabilities);
LABEL_6:
    sub_100011F00(v13, &qword_10022BE58, &qword_1001DB8E8);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_100011F00(v13, &qword_1002293A8, &unk_1001D6530);
LABEL_10:
  v21 = *(v28 + 24);
  v22 = (v29 + v21);
  v23 = *(v29 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (v25)
    {
LABEL_16:
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = sub_1001D1790();
      return v17 & 1;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_100011AC0(&qword_10022BE60, &qword_1001DB8F0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_10001208C(a1, &v20 - v13, &qword_10022AA88, &qword_1001D9620);
  sub_10001208C(a2, &v14[v15], &qword_10022AA88, &qword_1001D9620);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_100011F00(v14, &qword_10022AA88, &qword_1001D9620);
LABEL_9:
      type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = sub_1001D1790();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_10001208C(v14, v10, &qword_10022AA88, &qword_1001D9620);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
LABEL_6:
    sub_100011F00(v14, &qword_10022BE60, &qword_1001DB8F0);
    goto LABEL_7;
  }

  sub_1000B3928(&v14[v15], v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  v18 = _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v10, v7);
  sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  sub_100011F00(v14, &qword_10022AA88, &qword_1001D9620);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v101 = a2;
  v3 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  __chkstk_darwin(v3 - 8);
  v94 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(0);
  __chkstk_darwin(v85);
  v95 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0);
  __chkstk_darwin(v84);
  v93 = (&v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations(0);
  __chkstk_darwin(v7 - 8);
  v91 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0);
  __chkstk_darwin(v81);
  v92 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  __chkstk_darwin(v83);
  v90 = (&v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks(0);
  __chkstk_darwin(v11 - 8);
  v89 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  __chkstk_darwin(v13 - 8);
  v88 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  __chkstk_darwin(v15 - 8);
  v87 = (&v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = type metadata accessor for Proto_Ropes_Common_AttestationList(0);
  __chkstk_darwin(v82);
  v86 = (&v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v19 = __chkstk_darwin(v18);
  v96 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v100 = (&v81 - v22);
  v23 = __chkstk_darwin(v21);
  v99 = (&v81 - v24);
  v25 = __chkstk_darwin(v23);
  v27 = &v81 - v26;
  v28 = __chkstk_darwin(v25);
  v98 = (&v81 - v29);
  v30 = __chkstk_darwin(v28);
  v97 = (&v81 - v31);
  v32 = __chkstk_darwin(v30);
  v34 = &v81 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v81 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = (&v81 - v39);
  __chkstk_darwin(v38);
  v42 = (&v81 - v41);
  v43 = sub_100011AC0(&qword_10022BEE0, &qword_1001DB978);
  v44 = __chkstk_darwin(v43 - 8);
  v46 = &v81 - v45;
  v47 = *(v44 + 56);
  sub_1000B44A8(a1, &v81 - v45, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  v48 = v47;
  sub_1000B44A8(v101, &v46[v47], type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1000B44A8(v46, v37, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v61 = v88;
          sub_1000B3928(&v46[v47], v88, type metadata accessor for Proto_Ropes_Common_Attestation);
          v51 = static Proto_Ropes_Common_Attestation.== infix(_:_:)();
          v52 = type metadata accessor for Proto_Ropes_Common_Attestation;
          sub_1000B3E50(v61, type metadata accessor for Proto_Ropes_Common_Attestation);
          v53 = v37;
          goto LABEL_41;
        }

        v56 = type metadata accessor for Proto_Ropes_Common_Attestation;
        v57 = v37;
        goto LABEL_52;
      }

      if (EnumCaseMultiPayload == 3)
      {
        sub_1000B44A8(v46, v34, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v50 = v89;
          sub_1000B3928(&v46[v47], v89, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
          sub_1001D0940();
          sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
          v51 = sub_1001D1790();
          v52 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks;
          sub_1000B3E50(v50, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
          v53 = v34;
LABEL_41:
          v69 = v52;
          goto LABEL_42;
        }

        v56 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks;
        v57 = v34;
        goto LABEL_52;
      }

      v40 = v97;
      sub_1000B44A8(v46, v97, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v65 = v90;
        sub_1000B3928(&v46[v47], v90, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
        if (sub_1000AE2D8(*v40, *v65))
        {
          sub_1001D0940();
          sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
          v66 = sub_1001D1790();
          sub_1000B3E50(v65, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
          if (v66)
          {
            v64 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList;
            goto LABEL_34;
          }
        }

        else
        {
          sub_1000B3E50(v65, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
        }

        v79 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList;
LABEL_65:
        v76 = v79;
        v75 = v40;
        goto LABEL_68;
      }

      v72 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList;
      goto LABEL_51;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_1000B44A8(v46, v42, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      if (swift_getEnumCaseMultiPayload())
      {
        v56 = type metadata accessor for Proto_Ropes_Common_AttestationList;
        v57 = v42;
LABEL_52:
        sub_1000B3E50(v57, v56);
        sub_100011F00(v46, &qword_10022BEE0, &qword_1001DB978);
LABEL_69:
        v51 = 0;
        return v51 & 1;
      }

      v77 = v86;
      sub_1000B3928(&v46[v47], v86, type metadata accessor for Proto_Ropes_Common_AttestationList);
      if (sub_1000AE120(*v42, *v77))
      {
        sub_1001D0940();
        sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v78 = sub_1001D1790();
        sub_1000B3E50(v77, type metadata accessor for Proto_Ropes_Common_AttestationList);
        if (v78)
        {
          v60 = type metadata accessor for Proto_Ropes_Common_AttestationList;
          v59 = v42;
          goto LABEL_60;
        }
      }

      else
      {
        sub_1000B3E50(v77, type metadata accessor for Proto_Ropes_Common_AttestationList);
      }

      v76 = type metadata accessor for Proto_Ropes_Common_AttestationList;
      v75 = v42;
LABEL_68:
      sub_1000B3E50(v75, v76);
      sub_1000B3E50(v46, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      goto LABEL_69;
    }

    sub_1000B44A8(v46, v40, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v70 = v87;
      sub_1000B3928(&v46[v47], v87, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
      v51 = _s20privatecloudcomputed44Proto_Ropes_Common_CompressedAttestationListV2eeoiySbAC_ACtFZ_0(v40, v70);
      v52 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList;
      sub_1000B3E50(v70, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
      v53 = v40;
      goto LABEL_41;
    }

    v72 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList;
LABEL_51:
    v56 = v72;
    v57 = v40;
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 5)
    {
      sub_1000B44A8(v46, v27, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v71 = v91;
        sub_1000B3928(&v46[v47], v91, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
        sub_1001D0940();
        sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v51 = sub_1001D1790();
        v52 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations;
        sub_1000B3E50(v71, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
        v53 = v27;
        goto LABEL_41;
      }

      v56 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations;
      v57 = v27;
      goto LABEL_52;
    }

    v40 = v98;
    sub_1000B44A8(v46, v98, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      v72 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList;
      goto LABEL_51;
    }

    v54 = v92;
    sub_1000B3928(&v46[v47], v92, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    if ((sub_1000AED88(*v40, *v54) & 1) != 0 && *(v40 + 8) == *(v54 + 8))
    {
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      if (sub_1001D1790())
      {
        v55 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList;
        goto LABEL_23;
      }
    }

    v73 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList;
LABEL_56:
    v74 = v73;
    sub_1000B3E50(v54, v73);
    v75 = v40;
    v76 = v74;
    goto LABEL_68;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v40 = v99;
    sub_1000B44A8(v46, v99, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v62 = v93;
      sub_1000B3928(&v46[v47], v93, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
      if (*v40 == *v62)
      {
        sub_1001D0940();
        sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v63 = sub_1001D1790();
        sub_1000B3E50(v62, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
        if (v63)
        {
          v64 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected;
LABEL_34:
          v60 = v64;
          v59 = v40;
          goto LABEL_60;
        }
      }

      else
      {
        sub_1000B3E50(v62, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
      }

      v79 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected;
      goto LABEL_65;
    }

    v72 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected;
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v40 = v100;
    sub_1000B44A8(v46, v100, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 8)
    {
      v72 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList;
      goto LABEL_51;
    }

    v54 = v95;
    sub_1000B3928(&v46[v47], v95, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    if (sub_1000AEE18(*v40, *v54))
    {
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      if (sub_1001D1790())
      {
        v55 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList;
LABEL_23:
        v58 = v55;
        sub_1000B3E50(v54, v55);
        v59 = v40;
        v60 = v58;
LABEL_60:
        sub_1000B3E50(v59, v60);
        sub_1000B3E50(v46, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
        v51 = 1;
        return v51 & 1;
      }
    }

    v73 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList;
    goto LABEL_56;
  }

  v67 = v96;
  sub_1000B44A8(v46, v96, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() != 9)
  {
    v56 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation;
    v57 = v67;
    goto LABEL_52;
  }

  v68 = v94;
  sub_1000B3928(&v46[v48], v94, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  v51 = _s20privatecloudcomputed40Proto_Ropes_Common_DiagnosticInformationV2eeoiySbAC_ACtFZ_0(v67, v68);
  sub_1000B3E50(v68, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  v53 = v67;
  v69 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation;
LABEL_42:
  sub_1000B3E50(v53, v69);
  sub_1000B3E50(v46, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  return v51 & 1;
}

uint64_t _s20privatecloudcomputed38Proto_Ropes_HttpService_ConfigResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_10022AAB0, &unk_1001D9650);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_100011AC0(&qword_10022BE08, &qword_1001DB8A8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_10001208C(a1, &v20 - v13, &qword_10022AAB0, &unk_1001D9650);
  sub_10001208C(a2, &v14[v15], &qword_10022AAB0, &unk_1001D9650);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_100011F00(v14, &qword_10022AAB0, &unk_1001D9650);
LABEL_9:
      type metadata accessor for Proto_Ropes_HttpService_ConfigResponse(0);
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = sub_1001D1790();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_10001208C(v14, v10, &qword_10022AAB0, &unk_1001D9650);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type);
LABEL_6:
    sub_100011F00(v14, &qword_10022BE08, &qword_1001DB8A8);
    goto LABEL_7;
  }

  sub_1000B3928(&v14[v15], v7, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type);
  v18 = _s20privatecloudcomputed38Proto_Ropes_HttpService_ConfigResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v10, v7);
  sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type);
  sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type);
  sub_100011F00(v14, &qword_10022AAB0, &unk_1001D9650);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s20privatecloudcomputed38Proto_Ropes_HttpService_ConfigResponseV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = (&v17 - v8);
  v10 = sub_100011AC0(&qword_10022BEC0, &qword_1001DB958);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v17 - v12;
  v14 = *(v11 + 56);
  sub_1000B44A8(a1, &v17 - v12, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type);
  sub_1000B44A8(a2, &v13[v14], type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type);
  sub_1000B3928(v13, v9, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  sub_1000B3928(&v13[v14], v7, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  if (sub_1000AE2D8(*v9, *v7))
  {
    sub_1001D0940();
    sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v15 = sub_1001D1790();
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    if (v15)
    {
      return 1;
    }
  }

  else
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  return 0;
}

uint64_t _s20privatecloudcomputed37Proto_Ropes_HttpService_InvokeRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_10022AA80, &unk_1001E1C40);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_100011AC0(&qword_10022BE98, &qword_1001DB928);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_10001208C(a1, &v20 - v13, &qword_10022AA80, &unk_1001E1C40);
  sub_10001208C(a2, &v14[v15], &qword_10022AA80, &unk_1001E1C40);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_100011F00(v14, &qword_10022AA80, &unk_1001E1C40);
LABEL_9:
      type metadata accessor for Proto_Ropes_HttpService_InvokeRequest(0);
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = sub_1001D1790();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_10001208C(v14, v10, &qword_10022AA80, &unk_1001E1C40);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
LABEL_6:
    sub_100011F00(v14, &qword_10022BE98, &qword_1001DB928);
    goto LABEL_7;
  }

  sub_1000B3928(&v14[v15], v7, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  v18 = _s20privatecloudcomputed37Proto_Ropes_HttpService_InvokeRequestV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(v10, v7);
  sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  sub_100011F00(v14, &qword_10022AA80, &unk_1001E1C40);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s20privatecloudcomputed37Proto_Ropes_HttpService_InvokeRequestV10OneOf_TypeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_Common_ClientTerminate(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  v16 = sub_100011AC0(&qword_10022BEE8, &qword_1001DB980);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_1000B44A8(a1, &v27 - v18, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  sub_1000B44A8(a2, &v19[v20], type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B44A8(v19, v13, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000B3928(&v19[v20], v6, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
      v21 = static Proto_Ropes_Common_ClientTerminate.== infix(_:_:)();
      sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
      v22 = v13;
      v23 = type metadata accessor for Proto_Ropes_Common_ClientTerminate;
LABEL_9:
      sub_1000B3E50(v22, v23);
      sub_1000B3E50(v19, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
      return v21 & 1;
    }

    v24 = type metadata accessor for Proto_Ropes_Common_ClientTerminate;
    v25 = v13;
  }

  else
  {
    sub_1000B44A8(v19, v15, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1000B3928(&v19[v20], v9, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
      v21 = _s20privatecloudcomputed37Proto_Ropes_HttpService_InvokeRequestV05SetupG0V2eeoiySbAE_AEtFZ_0(v15, v9);
      sub_1000B3E50(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
      v22 = v15;
      v23 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest;
      goto LABEL_9;
    }

    v24 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest;
    v25 = v15;
  }

  sub_1000B3E50(v25, v24);
  sub_100011F00(v19, &qword_10022BEE8, &qword_1001DB980);
  v21 = 0;
  return v21 & 1;
}

uint64_t _s20privatecloudcomputed37Proto_Ropes_HttpService_InvokeRequestV05SetupG0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_100011AC0(&qword_10022BE58, &qword_1001DB8E8);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  if (*a1 != *a2 || (sub_1000AF338(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_18;
  }

  v14 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  v15 = *(v14 + 32);
  v16 = *(v11 + 48);
  v29 = v14;
  v30 = a1;
  sub_10001208C(a1 + v15, v13, &qword_1002293A8, &unk_1001D6530);
  sub_10001208C(a2 + v15, &v13[v16], &qword_1002293A8, &unk_1001D6530);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_100011F00(v13, &qword_1002293A8, &unk_1001D6530);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_10001208C(v13, v10, &qword_1002293A8, &unk_1001D6530);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_Common_Capabilities);
LABEL_8:
    sub_100011F00(v13, &qword_10022BE58, &qword_1001DB8E8);
LABEL_18:
    v27 = 0;
    return v27 & 1;
  }

  sub_1000B3928(&v13[v16], v7, type metadata accessor for Proto_Ropes_Common_Capabilities);
  v18 = static Proto_Ropes_Common_Capabilities.== infix(_:_:)();
  sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_Common_Capabilities);
  sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_Common_Capabilities);
  sub_100011F00(v13, &qword_1002293A8, &unk_1001D6530);
  if ((v18 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  v19 = v30;
  v20 = *(v29 + 36);
  v22 = *(v30 + v20);
  v21 = *(v30 + v20 + 8);
  v23 = (a2 + v20);
  v25 = *v23;
  v24 = v23[1];
  if (v21 >> 60 == 15)
  {
    if (v24 >> 60 == 15)
    {
      sub_100089C38(v22, v21);
      sub_100089C38(v25, v24);
      sub_10002683C(v22, v21);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (v24 >> 60 == 15)
  {
LABEL_14:
    sub_100089C38(v22, v21);
    sub_100089C38(v25, v24);
    sub_10002683C(v22, v21);
    sub_10002683C(v25, v24);
    goto LABEL_18;
  }

  sub_100089C38(v22, v21);
  sub_100089C38(v25, v24);
  v26 = sub_1000A1A5C(v22, v21, v25, v24);
  sub_10002683C(v25, v24);
  sub_10002683C(v22, v21);
  if (!v26)
  {
    goto LABEL_18;
  }

LABEL_16:
  if ((sub_1000AF5AC(*(v19 + 16), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v27 = sub_1001D1790();
  return v27 & 1;
}

uint64_t _s20privatecloudcomputed37Proto_Ropes_HttpService_ConfigRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v24 = sub_100011AC0(&qword_10022AAA8, &qword_1001D9648);
  __chkstk_darwin(v24);
  v5 = &v24 - v4;
  v6 = type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v25 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100011AC0(&qword_10022AAA0, &qword_1001D9640);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_100011AC0(&qword_10022BE18, &qword_1001DB8B0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v24 - v14;
  v16 = *(v13 + 56);
  v26 = a1;
  sub_10001208C(a1, &v24 - v14, &qword_10022AAA0, &qword_1001D9640);
  v27 = a2;
  sub_10001208C(a2, &v15[v16], &qword_10022AAA0, &qword_1001D9640);
  v17 = *(v7 + 48);
  if (v17(v15, 1, v6) == 1)
  {
    if (v17(&v15[v16], 1, v6) == 1)
    {
      sub_100011F00(v15, &qword_10022AAA0, &qword_1001D9640);
LABEL_9:
      type metadata accessor for Proto_Ropes_HttpService_ConfigRequest(0);
      sub_1001D0940();
      sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v18 = sub_1001D1790();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_10001208C(v15, v11, &qword_10022AAA0, &qword_1001D9640);
  if (v17(&v15[v16], 1, v6) == 1)
  {
    sub_1000B3E50(v11, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
LABEL_6:
    sub_100011F00(v15, &qword_10022BE18, &qword_1001DB8B0);
    goto LABEL_7;
  }

  v19 = &v15[v16];
  v20 = v25;
  sub_1000B3928(v19, v25, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  v21 = *(v24 + 48);
  sub_1000B44A8(v11, v5, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  sub_1000B44A8(v20, &v5[v21], type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  v22 = static Proto_Ropes_RateLimit_RateLimitConfigRequest.== infix(_:_:)(v5, &v5[v21]);
  sub_1000B3E50(&v5[v21], type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  sub_1000B3E50(v5, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  sub_1000B3E50(v20, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  sub_1000B3E50(v11, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  sub_100011F00(v15, &qword_10022AAA0, &qword_1001D9640);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_1000D4CDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100011AC0(&qword_100227A78, &unk_1001DB760);
    v3 = sub_1001D21C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100006028(v5, v6);
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

unint64_t sub_1000D4DD8(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_100227F48, &qword_1001DB750);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_10022BCA8, &qword_1001DB758);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_100227F48, &qword_1001DB750);
      v11 = *v5;
      result = sub_1000060A0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1001CFEE0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000D4FC0(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_100227DF0, &unk_1001D3B10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_100227A88, &unk_1001DB770);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_100227DF0, &unk_1001D3B10);
      v11 = *v5;
      result = sub_1000060E4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1001CFEE0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000D51A8(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_100227E78, &qword_1001D3C80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_100227AA0, &qword_1001D3640);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_100227E78, &qword_1001D3C80);
      v11 = *v5;
      result = sub_100006128(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1001CFEE0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000D5390(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BCE8, &qword_1001DB7F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_100227B60, &qword_1001DB800);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BCE8, &qword_1001DB7F8);
      v11 = *v5;
      result = sub_100006154(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1001CFEE0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000D5578(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BDC8, &qword_1001E2150);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_10022BDD0, &unk_1001DB860);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BDC8, &qword_1001E2150);
      v11 = *v5;
      result = sub_100006180(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1001CFEE0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000D5760(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BDD8, &unk_1001E2180);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_10022BDE0, &unk_1001DB870);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BDD8, &unk_1001E2180);
      v11 = *v5;
      result = sub_1000062A8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1001CFEE0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000D5948(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BD00, &qword_1001DB818);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_100227B88, &unk_1001D3730);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BD00, &qword_1001DB818);
      v11 = *v5;
      result = sub_1000062EC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1001CFEE0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000D5B30(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BCF0, &qword_1001DB808);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_100227B68, &qword_1001D3710);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BCF0, &qword_1001DB808);
      v11 = *v5;
      result = sub_100006358(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1001CFEE0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000D5D18(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BCE0, &unk_1001DB7E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_100227B48, &qword_1001D36E0);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BCE0, &unk_1001DB7E8);
      v11 = *v5;
      result = sub_100006384(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1001CFEE0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000D5F00(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BCD8, &qword_1001DB7D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_100227B30, &qword_1001DB7E0);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BCD8, &qword_1001DB7D8);
      v11 = *v5;
      result = sub_1000063B0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1001CFEE0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000D60E8(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BDC0, &qword_1001DB848);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_100227BA0, &unk_1001DB850);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BDC0, &qword_1001DB848);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100006028(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1001CFEE0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000D62D4(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BCD0, &unk_1001DB7C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_100227AF0, &qword_1001D3688);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BCD0, &unk_1001DB7C0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100006028(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for ValidatedAttestation(0);
      result = sub_1000B3928(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for ValidatedAttestation);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000D64BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100011AC0(&qword_100227B20, &qword_1001DB7D0);
    v3 = sub_1001D21C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_100012038(v7, v8);
      result = sub_100006028(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1000D65D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100011AC0(&qword_100227B00, &qword_1001DB950);
    v3 = sub_1001D21C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100006028(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1000D66E8(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BEC8, &qword_1001DB960);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_10022BED0, &qword_1001DB968);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BEC8, &qword_1001DB960);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100006028(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Proto_Ropes_RateLimit_Values(0);
      result = sub_1000B3928(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Proto_Ropes_RateLimit_Values);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000D69B0(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BEB0, &qword_1001DB940);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_10022BEB8, &qword_1001DB948);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BEB0, &qword_1001DB940);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100006028(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue(0);
      result = sub_1000B3928(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_1000D6BB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000D6C00()
{
  result = qword_10022AB58;
  if (!qword_10022AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AB58);
  }

  return result;
}

unint64_t sub_1000D6C58()
{
  result = qword_10022AB88;
  if (!qword_10022AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AB88);
  }

  return result;
}

unint64_t sub_1000D6CB0()
{
  result = qword_10022AB90;
  if (!qword_10022AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AB90);
  }

  return result;
}

unint64_t sub_1000D6D08()
{
  result = qword_10022AB98;
  if (!qword_10022AB98)
  {
    sub_100011DF4(&qword_10022ABA0, &qword_1001D9770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AB98);
  }

  return result;
}

unint64_t sub_1000D6D70()
{
  result = qword_10022ABA8;
  if (!qword_10022ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022ABA8);
  }

  return result;
}

uint64_t sub_1000D84C8(uint64_t a1)
{
  result = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_Ropes_Common_ClientTerminate(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000D8550(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001D0940();
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
      v13 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000D8694(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1001D0940();
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
      v13 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000D87C4(uint64_t a1)
{
  sub_1000D8948(319, &qword_10022AEF8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1000D9520(319, &qword_10022AF00, &type metadata for UInt32, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1001D0940();
      if (v3 <= 0x3F)
      {
        sub_1000D8948(319, &unk_10022AF08, type metadata accessor for Proto_Ropes_Common_Capabilities, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1000D9520(319, &qword_100229FB0, &type metadata for Data, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000D8948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000D89C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000D8A80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000D8BBC(uint64_t a1)
{
  result = type metadata accessor for Proto_Ropes_Common_AttestationList(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Proto_Ropes_Common_Attestation(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(319);
                    if (v11 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                      return 0;
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

  return result;
}

uint64_t sub_1000D8D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000D8D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000D8E30(uint64_t a1)
{
  sub_1000D9520(319, &unk_10022A4C8, &type metadata for String, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1001D0940();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000D8EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1001D0940();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000D8F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1001D0940();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000D901C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 16) >> 60;
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
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000D90E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000D9218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D0940();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000D9328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1001D0940();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1000D9430(uint64_t a1)
{
  sub_1001D0940();
  if (v1 <= 0x3F)
  {
    sub_1000D8948(319, &unk_10022AF08, type metadata accessor for Proto_Ropes_Common_Capabilities, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000D9520(319, &qword_10022A698, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000D9520(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1000D9584(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1001D0940();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_100011AC0(&qword_10022AA90, &qword_1001D9628);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_100011AC0(&qword_10022AA98, &unk_1001D9630);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_1000D971C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1001D0940();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_100011AC0(&qword_10022AA90, &qword_1001D9628);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_100011AC0(&qword_10022AA98, &unk_1001D9630);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

void sub_1000D98A0(uint64_t a1)
{
  sub_1000D8948(319, &unk_10022A800, type metadata accessor for Proto_Ropes_Common_Attestation, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1001D0940();
    if (v2 <= 0x3F)
    {
      sub_1000D8948(319, &qword_10022B598, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000D8948(319, &unk_10022B5A0, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000D9A68(uint64_t a1)
{
  result = type metadata accessor for Proto_Ropes_Common_Attestation(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000D9B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);

  return _swift_getEnumTagSinglePayloadGeneric(a1, a2, v4, sub_1000D9BCC);
}

uint64_t sub_1000D9BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);

  return _swift_storeEnumTagSinglePayloadGeneric(a1, a2, a3, v6, sub_1000D9C38);
}

void sub_1000D9CD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1000D8948(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1001D0940();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000D9D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);

  return _swift_getEnumTagSinglePayloadGeneric(a1, a2, v4, sub_1000D9DC0);
}

uint64_t sub_1000D9DC4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000D9E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);

  return _swift_storeEnumTagSinglePayloadGeneric(a1, a2, a3, v6, sub_1000D9ED8);
}

void *sub_1000D9EDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000D9F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1000DA068(uint64_t a1)
{
  sub_1000D8948(319, &qword_10022B9F0, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1000D8948(319, &unk_10022B9F8, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1001D0940();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000DA178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000DA238(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000DA2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1001D0940();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000DA388(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001D0940();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100011AC0(&qword_10022AA58, &qword_1001D95F8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000DA4CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100011AC0(&qword_10022AA58, &qword_1001D95F8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000DA5FC(uint64_t a1)
{
  sub_1000D9520(319, &unk_10022A4C8, &type metadata for String, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1001D0940();
    if (v2 <= 0x3F)
    {
      sub_1000D8948(319, &unk_10022BB30, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000DA720(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000DA7E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000DA884(uint64_t a1)
{
  sub_1000DA920();
  if (v1 <= 0x3F)
  {
    sub_1000DA97C(319);
    if (v2 <= 0x3F)
    {
      sub_1001D0940();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000DA920()
{
  if (!qword_10022BBD8)
  {
    v0 = sub_1001D1720();
    if (!v1)
    {
      atomic_store(v0, &qword_10022BBD8);
    }
  }
}

void sub_1000DA97C(uint64_t a1)
{
  if (!qword_10022BBE0)
  {
    type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue(255);
    v1 = sub_1001D1720();
    if (!v2)
    {
      atomic_store(v1, &qword_10022BBE0);
    }
  }
}

uint64_t sub_1000DA9F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000DAAB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000DAB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1001D0940();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000DABDC(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BCC0, &unk_1001DB7A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_100227AC0, &qword_1001D3668);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BCC0, &unk_1001DB7A0);
      v11 = *(v5 + 1);
      v24[0] = *v5;
      v24[1] = v11;
      v24[2] = *(v5 + 2);
      v25 = *(v5 + 6);
      result = sub_1000064E4(v24);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v7[6] + 56 * result;
      v16 = *(v5 + 1);
      v17 = *(v5 + 4);
      v18 = *(v5 + 40);
      *v15 = *v5;
      *(v15 + 16) = v16;
      *(v15 + 32) = v17;
      *(v15 + 40) = v18;
      v19 = v7[7];
      v20 = sub_1001D0260();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v14, &v5[v8], v20);
      v21 = v7[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v7[2] = v23;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000DADF8(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BCC8, &unk_1001DB7B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_100227AC8, &qword_1001D3670);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BCC8, &unk_1001DB7B0);
      v11 = *(v5 + 1);
      v24[0] = *v5;
      v24[1] = v11;
      v24[2] = *(v5 + 2);
      v25 = *(v5 + 6);
      result = sub_100006478(v24);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v7[6] + 56 * result;
      v16 = *(v5 + 6);
      v17 = *(v5 + 1);
      v18 = *(v5 + 2);
      *v15 = *v5;
      *(v15 + 16) = v17;
      *(v15 + 32) = v18;
      *(v15 + 48) = v16;
      v19 = v7[7];
      v20 = type metadata accessor for RateLimitTimingDetails(0);
      result = sub_1000B3928(&v5[v8], v19 + *(*(v20 - 8) + 72) * v14, type metadata accessor for RateLimitTimingDetails);
      v21 = v7[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v7[2] = v23;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000DB010(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BCB8, &unk_1001DB790);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_100227B90, &qword_1001DD050);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BCB8, &unk_1001DB790);
      result = sub_100006598(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1001CFDA0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for SessionLog.Element(0);
      result = sub_1000B3928(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for SessionLog.Element);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000DB22C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100011AC0(&qword_100227AD0, &qword_1001D3678);
    v3 = sub_1001D21C0();

    for (i = (a1 + 48); ; i += 8)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = i[1];
      v8 = i[2];
      v9 = i[3];
      v10 = i[4];
      v11 = i[5];
      *&v19 = *(i - 2);
      *(&v19 + 1) = v5;
      *&v20 = v6;
      *(&v20 + 1) = v7;
      *&v21 = v8;
      *(&v21 + 1) = v9;
      v22 = v10;

      result = sub_1000064E4(&v19);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 56 * result;
      v15 = v20;
      *v14 = v19;
      *(v14 + 16) = v15;
      *(v14 + 32) = v21;
      *(v14 + 48) = v22;
      *(v3[7] + 8 * result) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

unint64_t sub_1000DB37C(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BCB0, &unk_1001DB780);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_100227BA8, &qword_1001D3750);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BCB0, &unk_1001DB780);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100006028(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1001CFD60();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000DB568(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BCF8, &qword_1001DB810);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_100227B40, &qword_1001D36D8);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BCF8, &qword_1001DB810);
      v12 = *v5;
      v11 = v5[1];
      result = sub_100006028(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000DB760(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100011AC0(&qword_100227B78, &qword_1001D3720);
  v3 = sub_1001D21C0();
  v5 = a1[4];
  v4 = a1[5];
  result = sub_1000066C4(v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
    return &_swiftEmptyDictionarySingleton;
  }

  v8 = a1 + 7;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    *(v3[7] + 8 * result) = v4;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    swift_errorRetain();
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v8 - 1);
    v4 = *v8;
    result = sub_1000066C4(v5);
    v8 += 2;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000DB854(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022BD18, &unk_1001DB838);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100011AC0(&qword_100227B18, &unk_1001D36B0);
    v7 = sub_1001D21C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001208C(v9, v5, &qword_10022BD18, &unk_1001DB838);
      result = sub_100006598(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1001CFDA0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000DBA3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100011AC0(&qword_100227B58, &qword_1001D36F8);
  v3 = sub_1001D21C0();

  v4 = *(a1 + 144);
  v37 = *(a1 + 128);
  v38[0] = v4;
  *(v38 + 9) = *(a1 + 153);
  v5 = *(a1 + 48);
  v31 = *(a1 + 32);
  v32 = v5;
  v6 = *(a1 + 80);
  v33 = *(a1 + 64);
  v34 = v6;
  v7 = *(a1 + 112);
  v35 = *(a1 + 96);
  v36 = v7;
  v9 = *(&v31 + 1);
  v8 = v31;
  sub_10001208C(&v31, v30, &qword_10022BD10, &qword_1001DB830);
  result = sub_100006028(v8, v9);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = (a1 + 176);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v13 = (v3[6] + 16 * result);
    *v13 = v8;
    v13[1] = v9;
    v14 = (v3[7] + (result << 7));
    v15 = v32;
    v16 = v33;
    v17 = v35;
    v14[2] = v34;
    v14[3] = v17;
    *v14 = v15;
    v14[1] = v16;
    v18 = v36;
    v19 = v37;
    v20 = v38[0];
    *(v14 + 105) = *(v38 + 9);
    v14[5] = v19;
    v14[6] = v20;
    v14[4] = v18;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      break;
    }

    v3[2] = v23;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = v12 + 9;
    v25 = v12[7];
    v37 = v12[6];
    v38[0] = v25;
    *(v38 + 9) = *(v12 + 121);
    v26 = v12[1];
    v31 = *v12;
    v32 = v26;
    v27 = v12[3];
    v33 = v12[2];
    v34 = v27;
    v28 = v12[5];
    v35 = v12[4];
    v36 = v28;
    v9 = *(&v31 + 1);
    v8 = v31;
    sub_10001208C(&v31, v30, &qword_10022BD10, &qword_1001DB830);
    result = sub_100006028(v8, v9);
    v12 = v24;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000DBC18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100011AC0(&qword_100227B50, &qword_1001D36E8);
  v3 = sub_1001D21C0();

  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  v29 = *(a1 + 80);
  v30 = v5;
  v31 = *(a1 + 112);
  v6 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = v6;
  v28 = v4;
  v8 = *(&v26 + 1);
  v7 = v26;
  sub_10001208C(&v26, v25, &qword_10022BD08, &unk_1001DB820);
  result = sub_100006028(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 72 * result;
    *v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    *(v13 + 64) = v31;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    *(v13 + 16) = v14;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = (v11 + 88);
    v21 = v11[2];
    v22 = v11[4];
    v29 = v11[3];
    v30 = v22;
    v31 = *(v11 + 10);
    v23 = v11[1];
    v26 = *v11;
    v27 = v23;
    v28 = v21;
    v8 = *(&v26 + 1);
    v7 = v26;
    sub_10001208C(&v26, v25, &qword_10022BD08, &unk_1001DB820);
    result = sub_100006028(v7, v8);
    v11 = v20;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000DBDD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100011AC0(&qword_100227B98, &unk_1001D3740);
    v3 = sub_1001D21C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;

      result = sub_100006708(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_1000DBEF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100011AC0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfigRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000D66E8(_swiftEmptyArrayStorage);
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
  result = _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = (a1 + v2[7]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + v2[8]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[9]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1000DC0D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E2420();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000DC1B0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  a1(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfigRequest.bundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfigRequest.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_RateLimit_RateLimitConfigRequest.bundleID.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

Swift::Void __swiftcall Proto_Ropes_RateLimit_RateLimitConfigRequest.clearBundleID()()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfigRequest.featureID.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfigRequest.featureID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_RateLimit_RateLimitConfigRequest.featureID.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000B3388;
}

Swift::Void __swiftcall Proto_Ropes_RateLimit_RateLimitConfigRequest.clearFeatureID()()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfigRequest.workloadType.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfigRequest.workloadType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Proto_Ropes_RateLimit_RateLimitConfigRequest.workloadType.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1000A5CF0;
}

Swift::Void __swiftcall Proto_Ropes_RateLimit_RateLimitConfigRequest.clearWorkloadType()()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0) + 36));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfigRequest.requestType.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfigRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0) + 24);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfigRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0) + 24);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SystemInfo.uniqueDeviceID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SystemInfo.uniqueDeviceID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfiguration.params.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfiguration.requestType.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfiguration.rate.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_100011AC0(&qword_10022BF08, &qword_1001DB9A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  sub_10001208C(v1 + *(v6 + 44), v5, &qword_10022BF08, &qword_1001DB9A0);
  v7 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000E22B4(v5, a1);
  }

  *a1 = 0;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v9 = *(v7 + 24);
  v10 = sub_1001D0900();
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_100011F00(v5, &qword_10022BF08, &qword_1001DB9A0);
  }

  return result;
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfiguration.Rate.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v3 = *(v2 + 24);
  v4 = sub_1001D0900();
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfiguration.rate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0) + 44);
  sub_100011F00(v1 + v3, &qword_10022BF08, &qword_1001DB9A0);
  sub_1000E22B4(a1, v1 + v3);
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Ropes_RateLimit_RateLimitConfiguration.rate.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022BF08, &qword_1001DB9A0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0) + 44);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_10022BF08, &qword_1001DB9A0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v16 = *(v8 + 24);
    v17 = sub_1001D0900();
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_10022BF08, &qword_1001DB9A0);
    }
  }

  else
  {
    sub_1000E22B4(v7, v13);
  }

  return sub_1000DCE68;
}

void sub_1000DCE68(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1000E2318((*a1)[5], v4);
    sub_100011F00(v9 + v3, &qword_10022BF08, &qword_1001DB9A0);
    sub_1000E22B4(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000E237C(v5);
  }

  else
  {
    sub_100011F00(v9 + v3, &qword_10022BF08, &qword_1001DB9A0);
    sub_1000E22B4(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_Ropes_RateLimit_RateLimitConfiguration.hasRate.getter()
{
  v1 = sub_100011AC0(&qword_10022BF08, &qword_1001DB9A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  sub_10001208C(v0 + *(v4 + 44), v3, &qword_10022BF08, &qword_1001DB9A0);
  v5 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100011F00(v3, &qword_10022BF08, &qword_1001DB9A0);
  return v6;
}

Swift::Void __swiftcall Proto_Ropes_RateLimit_RateLimitConfiguration.clearRate()()
{
  v1 = *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0) + 44);
  sub_100011F00(v0 + v1, &qword_10022BF08, &qword_1001DB9A0);
  v2 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfiguration.ttl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  sub_10001208C(v1 + *(v6 + 48), v5, &qword_10022BF10, &qword_1001DB9A8);
  v7 = sub_1001D0900();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_1001D08F0();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_100011F00(v5, &qword_10022BF10, &qword_1001DB9A8);
  }

  return result;
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfiguration.ttl.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0) + 48);
  sub_100011F00(v1 + v3, &qword_10022BF10, &qword_1001DB9A8);
  v4 = sub_1001D0900();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Ropes_RateLimit_RateLimitConfiguration.ttl.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1001D0900();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0) + 48);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_10022BF10, &qword_1001DB9A8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1001D08F0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_10022BF10, &qword_1001DB9A8);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1000E3814;
}

BOOL Proto_Ropes_RateLimit_RateLimitConfiguration.hasTtl.getter()
{
  v1 = sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  sub_10001208C(v0 + *(v4 + 48), v3, &qword_10022BF10, &qword_1001DB9A8);
  v5 = sub_1001D0900();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100011F00(v3, &qword_10022BF10, &qword_1001DB9A8);
  return v6;
}

Swift::Void __swiftcall Proto_Ropes_RateLimit_RateLimitConfiguration.clearTtl()()
{
  v1 = *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0) + 48);
  sub_100011F00(v0 + v1, &qword_10022BF10, &qword_1001DB9A8);
  v2 = sub_1001D0900();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfiguration.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0) + 40);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfiguration.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0) + 40);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfiguration.Rate.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  sub_10001208C(v1 + *(v6 + 24), v5, &qword_10022BF10, &qword_1001DB9A8);
  v7 = sub_1001D0900();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_1001D08F0();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_100011F00(v5, &qword_10022BF10, &qword_1001DB9A8);
  }

  return result;
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfiguration.Rate.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0) + 24);
  sub_100011F00(v1 + v3, &qword_10022BF10, &qword_1001DB9A8);
  v4 = sub_1001D0900();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Ropes_RateLimit_RateLimitConfiguration.Rate.duration.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1001D0900();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0) + 24);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_10022BF10, &qword_1001DB9A8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1001D08F0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_10022BF10, &qword_1001DB9A8);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1000DDC80;
}

void sub_1000DDC84(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_100011F00(v9 + v3, &qword_10022BF10, &qword_1001DB9A8);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_100011F00(v9 + v3, &qword_10022BF10, &qword_1001DB9A8);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_Ropes_RateLimit_RateLimitConfiguration.Rate.hasDuration.getter()
{
  v1 = sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  sub_10001208C(v0 + *(v4 + 24), v3, &qword_10022BF10, &qword_1001DB9A8);
  v5 = sub_1001D0900();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100011F00(v3, &qword_10022BF10, &qword_1001DB9A8);
  return v6;
}

Swift::Void __swiftcall Proto_Ropes_RateLimit_RateLimitConfiguration.Rate.clearDuration()()
{
  v1 = *(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0) + 24);
  sub_100011F00(v0 + v1, &qword_10022BF10, &qword_1001DB9A8);
  v2 = sub_1001D0900();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1000DDF84@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000DE020(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = sub_1000D66E8(_swiftEmptyArrayStorage);
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  v2 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v3 = *(v2 + 44);
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 48);
  v6 = sub_1001D0900();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_1000DE260()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_RateLimit_RequestType._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_RateLimit_RequestType._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7170;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "INVOKE";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PREFETCH";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "RATELIMIT_CONFIG";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_RateLimit_Values.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1001D09E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001D0A60();
    }
  }

  return result;
}

uint64_t Proto_Ropes_RateLimit_Values.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1001D0BD0(), !v4))
  {
    type metadata accessor for Proto_Ropes_RateLimit_Values(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000DE690(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_1001D0940();
  sub_1000E23D8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000DE7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E23D8(&qword_10022C320, type metadata accessor for Proto_Ropes_RateLimit_Values, &protocol conformance descriptor for Proto_Ropes_RateLimit_Values);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DE860(uint64_t a1)
{
  v2 = sub_1000E23D8(&qword_10022BF20, type metadata accessor for Proto_Ropes_RateLimit_Values, &protocol conformance descriptor for Proto_Ropes_RateLimit_Values);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DE8CC(uint64_t a1, uint64_t a2)
{
  sub_1000E23D8(&qword_10022BF20, type metadata accessor for Proto_Ropes_RateLimit_Values, &protocol conformance descriptor for Proto_Ropes_RateLimit_Values);

  return sub_1001D0B40();
}

uint64_t sub_1000DE988()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_RateLimit_RateLimitConfigRequest._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_RateLimit_RateLimitConfigRequest._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D62F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundle_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "feature_id";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "workload_type";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "params";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "request_type";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfigRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1001D09E0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          v11 = v4;
          type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
          goto LABEL_5;
        }
      }

      else
      {
        v11 = v4;
        switch(result)
        {
          case 3:
            type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
LABEL_5:
            v4 = v11;
            sub_1001D0A90();
            break;
          case 4:
            sub_1000DEDA8(a1, v5, a2, a3);
            break;
          case 5:
            sub_1000E2420();
            sub_1001D0A30();
            break;
        }
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t sub_1000DEDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001D0910();
  type metadata accessor for Proto_Ropes_RateLimit_Values(0);
  sub_1000E23D8(&qword_10022BF20, type metadata accessor for Proto_Ropes_RateLimit_Values, &protocol conformance descriptor for Proto_Ropes_RateLimit_Values);
  sub_1000E23D8(&qword_10022BF18, type metadata accessor for Proto_Ropes_RateLimit_Values, &protocol conformance descriptor for Proto_Ropes_RateLimit_Values);
  return sub_1001D09C0();
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfigRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000DF070(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1000DF0E8(v3, a1, a2, a3);
    sub_1000DF160(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      sub_1001D0910();
      type metadata accessor for Proto_Ropes_RateLimit_Values(0);
      sub_1000E23D8(&qword_10022BF20, type metadata accessor for Proto_Ropes_RateLimit_Values, &protocol conformance descriptor for Proto_Ropes_RateLimit_Values);
      sub_1000E23D8(&qword_10022BF18, type metadata accessor for Proto_Ropes_RateLimit_Values, &protocol conformance descriptor for Proto_Ropes_RateLimit_Values);
      sub_1001D0B60();
    }

    if (v3[1])
    {
      sub_1000E2420();
      sub_1001D0BB0();
    }

    type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000DF070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000DF0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000DF160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000DF220@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1000D66E8(_swiftEmptyArrayStorage);
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  result = _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v5 = a1[8];
  v6 = (a2 + a1[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + a1[9]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_1000DF2B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E23D8(&qword_10022C318, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfigRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DF358(uint64_t a1)
{
  v2 = sub_1000E23D8(&qword_10022BE20, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfigRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DF3C4(uint64_t a1, uint64_t a2)
{
  sub_1000E23D8(&qword_10022BE20, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfigRequest);

  return sub_1001D0B40();
}

uint64_t sub_1000DF468()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_RateLimit_RateLimitConfiguration._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_RateLimit_RateLimitConfiguration._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1001D8090;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "bundle_id";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_1001D0C30();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "feature_id";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "workload_type";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "params";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "request_type";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 10;
  *v17 = "rate";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 11;
  *v19 = "ttl";
  *(v19 + 1) = 3;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 12;
  *v21 = "jitter";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfiguration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1001D09E0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result > 10)
        {
          if (result == 11)
          {
            sub_1000DFB34(a1, v5, a2, a3);
          }

          else if (result == 12)
          {
            sub_1001D0A80();
          }
        }

        else if (result == 6)
        {
          sub_1000E2420();
          sub_1001D0A30();
        }

        else if (result == 10)
        {
          sub_1000DFA80(a1, v5, a2, a3);
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_4;
        }

        if (result == 5)
        {
          sub_1000DF988(a1, v5, a2, a3);
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        sub_1001D0AA0();
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t sub_1000DF988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001D0910();
  type metadata accessor for Proto_Ropes_RateLimit_Values(0);
  sub_1000E23D8(&qword_10022BF20, type metadata accessor for Proto_Ropes_RateLimit_Values, &protocol conformance descriptor for Proto_Ropes_RateLimit_Values);
  sub_1000E23D8(&qword_10022BF18, type metadata accessor for Proto_Ropes_RateLimit_Values, &protocol conformance descriptor for Proto_Ropes_RateLimit_Values);
  return sub_1001D09C0();
}

uint64_t sub_1000DFA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  sub_1000E23D8(&qword_10022BFB8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
  return sub_1001D0AE0();
}

uint64_t sub_1000DFB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  sub_1001D0900();
  sub_1000E23D8(&qword_10022C338, &type metadata accessor for Google_Protobuf_Duration, &protocol conformance descriptor for Google_Protobuf_Duration);
  return sub_1001D0AE0();
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1001D0BF0(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_1001D0BF0(), !v4))
    {
      v13 = v3[5];
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 || (result = sub_1001D0BF0(), !v4))
      {
        if (*(v3[6] + 16))
        {
          sub_1001D0910();
          type metadata accessor for Proto_Ropes_RateLimit_Values(0);
          sub_1000E23D8(&qword_10022BF20, type metadata accessor for Proto_Ropes_RateLimit_Values, &protocol conformance descriptor for Proto_Ropes_RateLimit_Values);
          sub_1000E23D8(&qword_10022BF18, type metadata accessor for Proto_Ropes_RateLimit_Values, &protocol conformance descriptor for Proto_Ropes_RateLimit_Values);
          result = sub_1001D0B60();
          if (v4)
          {
            return result;
          }

          if (!v3[7])
          {
            goto LABEL_19;
          }
        }

        else if (!v3[7])
        {
LABEL_19:
          result = sub_1000DFE60(v3, a1, a2, a3);
          if (!v4)
          {
            sub_1000E0054(v3, a1, a2, a3);
            if (v3[9])
            {
              sub_1001D0BE0();
            }

            type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
            return sub_1001D0920();
          }

          return result;
        }

        sub_1000E2420();
        result = sub_1001D0BB0();
        if (v4)
        {
          return result;
        }

        goto LABEL_19;
      }
    }
  }

  return result;
}

uint64_t sub_1000DFE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100011AC0(&qword_10022BF08, &qword_1001DB9A0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  sub_10001208C(a1 + *(v12 + 44), v7, &qword_10022BF08, &qword_1001DB9A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100011F00(v7, &qword_10022BF08, &qword_1001DB9A0);
  }

  sub_1000E22B4(v7, v11);
  sub_1000E23D8(&qword_10022BFB8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
  sub_1001D0C20();
  return sub_1000E237C(v11);
}

uint64_t sub_1000E0054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = sub_1001D0900();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  sub_10001208C(a1 + *(v12 + 48), v7, &qword_10022BF10, &qword_1001DB9A8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100011F00(v7, &qword_10022BF10, &qword_1001DB9A8);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1000E23D8(&qword_10022C338, &type metadata accessor for Google_Protobuf_Duration, &protocol conformance descriptor for Google_Protobuf_Duration);
  sub_1001D0C20();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000E02BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = sub_1000D66E8(_swiftEmptyArrayStorage);
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = *(a1 + 44);
  v5 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 48);
  v7 = sub_1001D0900();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1000E03B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E0428(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000E04F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E23D8(&qword_10022C310, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfiguration);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E0590(uint64_t a1)
{
  v2 = sub_1000E23D8(&qword_10022BF48, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfiguration);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E05FC(uint64_t a1, uint64_t a2)
{
  sub_1000E23D8(&qword_10022BF48, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfiguration);

  return sub_1001D0B40();
}

void sub_1000E0678()
{
  v0._countAndFlagsBits = 0x657461522ELL;
  v0._object = 0xE500000000000000;
  sub_1001D18B0(v0);
  static Proto_Ropes_RateLimit_RateLimitConfiguration.Rate.protoMessageName = 0xD000000000000033;
  unk_1002434B0 = 0x80000001001E4F80;
}

uint64_t *Proto_Ropes_RateLimit_RateLimitConfiguration.Rate.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227940 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_RateLimit_RateLimitConfiguration.Rate.protoMessageName;
}

uint64_t static Proto_Ropes_RateLimit_RateLimitConfiguration.Rate.protoMessageName.getter()
{
  if (qword_100227940 != -1)
  {
    swift_once();
  }

  v0 = static Proto_Ropes_RateLimit_RateLimitConfiguration.Rate.protoMessageName;

  return v0;
}

uint64_t sub_1000E0798()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_RateLimit_RateLimitConfiguration.Rate._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_RateLimit_RateLimitConfiguration.Rate._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "count";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "duration";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfiguration.Rate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1001D09E0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1001D0AC0();
    }

    else if (result == 2)
    {
      sub_1000E0A38(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000E0A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  sub_1001D0900();
  sub_1000E23D8(&qword_10022C338, &type metadata accessor for Google_Protobuf_Duration, &protocol conformance descriptor for Google_Protobuf_Duration);
  return sub_1001D0AE0();
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfiguration.Rate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1001D0C00(), !v4))
  {
    result = sub_1000E0B88(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000E0B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = sub_1001D0900();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  sub_10001208C(a1 + *(v12 + 24), v7, &qword_10022BF10, &qword_1001DB9A8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100011F00(v7, &qword_10022BF10, &qword_1001DB9A8);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1000E23D8(&qword_10022C338, &type metadata accessor for Google_Protobuf_Duration, &protocol conformance descriptor for Google_Protobuf_Duration);
  sub_1001D0C20();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000E0DF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = *(a1 + 24);
  v5 = sub_1001D0900();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1000E0EA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E23D8(&qword_10022C308, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E0F44(uint64_t a1)
{
  v2 = sub_1000E23D8(&qword_10022BFB8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E0FB0(uint64_t a1, uint64_t a2)
{
  sub_1000E23D8(&qword_10022BFB8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);

  return sub_1001D0B40();
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfigurationList.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D09E0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
        sub_1000E23D8(&qword_10022BF48, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        sub_1001D0AD0();
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_RateLimit_RateLimitConfigurationList.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0), sub_1000E23D8(&qword_10022BF48, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfiguration), result = sub_1001D0C10(), !v4))
  {
    type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
    return sub_1001D0920();
  }

  return result;
}

Swift::Int sub_1000E12C8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1001D2580();
  a1(0);
  sub_1000E23D8(a2, a3, a4);
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_1000E1380(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E23D8(&qword_10022C300, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfigurationList);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E1420(uint64_t a1)
{
  v2 = sub_1000E23D8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfigurationList);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E148C(uint64_t a1, uint64_t a2)
{
  sub_1000E23D8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfigurationList);

  return sub_1001D0B40();
}

uint64_t sub_1000E1520(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_1001D0940();
  sub_1000E23D8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t _s20privatecloudcomputed022Proto_Ropes_RateLimit_dE13ConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D0900();
  v47 = *(v4 - 8);
  __chkstk_darwin(v4);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8);
  __chkstk_darwin(v6 - 8);
  v45 = &v42 - v7;
  v8 = sub_100011AC0(&qword_10022C328, &qword_1001DC308);
  __chkstk_darwin(v8);
  v46 = &v42 - v9;
  v10 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100011AC0(&qword_10022BF08, &qword_1001DB9A0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v42 - v15);
  v17 = sub_100011AC0(&qword_10022C340, &unk_1001DC310);
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  if (*a1 != *a2 && (sub_1001D2470() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1001D2470() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1001D2470() & 1) == 0 || (sub_1000D0488(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    goto LABEL_34;
  }

  v20 = *(a1 + 56);
  v21 = *(a2 + 56);
  if (*(a2 + 64) == 1)
  {
    if (v21)
    {
      if (v21 == 1)
      {
        if (v20 != 1)
        {
          goto LABEL_34;
        }
      }

      else if (v20 != 2)
      {
        goto LABEL_34;
      }
    }

    else if (v20)
    {
      goto LABEL_34;
    }
  }

  else if (v20 != v21)
  {
    goto LABEL_34;
  }

  v43 = v4;
  v42 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  v22 = *(v42 + 44);
  v23 = *(v17 + 48);
  sub_10001208C(a1 + v22, v19, &qword_10022BF08, &qword_1001DB9A0);
  v24 = a2 + v22;
  v25 = v23;
  sub_10001208C(v24, &v19[v23], &qword_10022BF08, &qword_1001DB9A0);
  v26 = *(v11 + 48);
  if (v26(v19, 1, v10) == 1)
  {
    if (v26(&v19[v25], 1, v10) == 1)
    {
      sub_100011F00(v19, &qword_10022BF08, &qword_1001DB9A0);
      goto LABEL_27;
    }

LABEL_25:
    v27 = &qword_10022C340;
    v28 = &unk_1001DC310;
LABEL_33:
    sub_100011F00(v19, v27, v28);
    goto LABEL_34;
  }

  sub_10001208C(v19, v16, &qword_10022BF08, &qword_1001DB9A0);
  if (v26(&v19[v25], 1, v10) == 1)
  {
    sub_1000E237C(v16);
    goto LABEL_25;
  }

  sub_1000E22B4(&v19[v25], v13);
  v29 = _s20privatecloudcomputed022Proto_Ropes_RateLimit_dE13ConfigurationV0D0V2eeoiySbAE_AEtFZ_0(v16, v13);
  sub_1000E237C(v13);
  sub_1000E237C(v16);
  sub_100011F00(v19, &qword_10022BF08, &qword_1001DB9A0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  v30 = *(v42 + 48);
  v31 = *(v8 + 48);
  v19 = v46;
  sub_10001208C(a1 + v30, v46, &qword_10022BF10, &qword_1001DB9A8);
  sub_10001208C(a2 + v30, &v19[v31], &qword_10022BF10, &qword_1001DB9A8);
  v32 = v47;
  v33 = *(v47 + 48);
  v34 = v43;
  if (v33(v19, 1, v43) != 1)
  {
    v35 = v45;
    sub_10001208C(v19, v45, &qword_10022BF10, &qword_1001DB9A8);
    if (v33(&v19[v31], 1, v34) != 1)
    {
      v38 = &v19[v31];
      v39 = v44;
      (*(v32 + 32))(v44, v38, v34);
      sub_1000E23D8(&qword_10022C330, &type metadata accessor for Google_Protobuf_Duration, &protocol conformance descriptor for Google_Protobuf_Duration);
      v40 = sub_1001D1790();
      v41 = *(v32 + 8);
      v41(v39, v34);
      v41(v35, v34);
      sub_100011F00(v19, &qword_10022BF10, &qword_1001DB9A8);
      if ((v40 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_37;
    }

    (*(v32 + 8))(v35, v34);
    goto LABEL_32;
  }

  if (v33(&v19[v31], 1, v34) != 1)
  {
LABEL_32:
    v27 = &qword_10022C328;
    v28 = &qword_1001DC308;
    goto LABEL_33;
  }

  sub_100011F00(v19, &qword_10022BF10, &qword_1001DB9A8);
LABEL_37:
  if (*(a1 + 72) == *(a2 + 72))
  {
    sub_1001D0940();
    sub_1000E23D8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v36 = sub_1001D1790();
    return v36 & 1;
  }

LABEL_34:
  v36 = 0;
  return v36 & 1;
}

uint64_t _s20privatecloudcomputed022Proto_Ropes_RateLimit_dE13ConfigurationV0D0V2eeoiySbAE_AEtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_1001D0900();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100011AC0(&qword_10022C328, &qword_1001DC308);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v21 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  v22 = a2;
  v14 = *(v21 + 24);
  v15 = *(v11 + 48);
  sub_10001208C(a1 + v14, v13, &qword_10022BF10, &qword_1001DB9A8);
  sub_10001208C(v22 + v14, &v13[v15], &qword_10022BF10, &qword_1001DB9A8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_100011F00(v13, &qword_10022BF10, &qword_1001DB9A8);
LABEL_11:
      sub_1001D0940();
      sub_1000E23D8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = sub_1001D1790();
      return v17 & 1;
    }

    goto LABEL_7;
  }

  sub_10001208C(v13, v10, &qword_10022BF10, &qword_1001DB9A8);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_100011F00(v13, &qword_10022C328, &qword_1001DC308);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1000E23D8(&qword_10022C330, &type metadata accessor for Google_Protobuf_Duration, &protocol conformance descriptor for Google_Protobuf_Duration);
  v19 = sub_1001D1790();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_100011F00(v13, &qword_10022BF10, &qword_1001DB9A8);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s20privatecloudcomputed022Proto_Ropes_RateLimit_dE13ConfigRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_1001D2470() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[8];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (sub_1001D2470() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = v4[9];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }

    v22 = *v18 == *v20 && v19 == v21;
    if (!v22 && (sub_1001D2470() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (sub_1000D0488(*a1, *a2))
  {
    v23 = a1[1];
    v24 = *(a2 + 8);
    if (*(a2 + 16) == 1)
    {
      if (v24)
      {
        if (v24 == 1)
        {
          if (v23 != 1)
          {
            return 0;
          }
        }

        else if (v23 != 2)
        {
          return 0;
        }

LABEL_35:
        sub_1001D0940();
        sub_1000E23D8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        return sub_1001D1790() & 1;
      }

      if (!v23)
      {
        goto LABEL_35;
      }
    }

    else if (v23 == v24)
    {
      goto LABEL_35;
    }
  }

  return 0;
}

uint64_t sub_1000E22B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E2318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E237C(uint64_t a1)
{
  v2 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E23D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000E2420()
{
  result = qword_10022BF28;
  if (!qword_10022BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022BF28);
  }

  return result;
}

unint64_t sub_1000E2478()
{
  result = qword_10022BF58;
  if (!qword_10022BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022BF58);
  }

  return result;
}

unint64_t sub_1000E24D0()
{
  result = qword_10022BF60;
  if (!qword_10022BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022BF60);
  }

  return result;
}

unint64_t sub_1000E2528()
{
  result = qword_10022BF68;
  if (!qword_10022BF68)
  {
    sub_100011DF4(&qword_10022BF70, &qword_1001DB9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022BF68);
  }

  return result;
}

unint64_t sub_1000E2590()
{
  result = qword_10022BF78;
  if (!qword_10022BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022BF78);
  }

  return result;
}

void sub_1000E2BC4(uint64_t a1)
{
  sub_1000E2F0C(319, &unk_10022A4C8, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1001D0940();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000E2C78(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000E2D38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000E2DDC(uint64_t a1)
{
  sub_1000E2EA4(319);
  if (v1 <= 0x3F)
  {
    sub_1001D0940();
    if (v2 <= 0x3F)
    {
      sub_1000E2F0C(319, &qword_100229738, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000E2EA4(uint64_t a1)
{
  if (!qword_10022C0D0)
  {
    type metadata accessor for Proto_Ropes_RateLimit_Values(255);
    v1 = sub_1001D1720();
    if (!v2)
    {
      atomic_store(v1, &qword_10022C0D0);
    }
  }
}

void sub_1000E2F0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000E2F74(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1001D0940();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100011AC0(&qword_10022BF08, &qword_1001DB9A0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_1000E310C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1001D0940();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100011AC0(&qword_10022BF08, &qword_1001DB9A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

void sub_1000E3290(uint64_t a1)
{
  sub_1000E2EA4(319);
  if (v1 <= 0x3F)
  {
    sub_1001D0940();
    if (v2 <= 0x3F)
    {
      sub_1000E33D4(319, &qword_10022C178, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000E33D4(319, &unk_10022C180, &type metadata accessor for Google_Protobuf_Duration, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000E33D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000E344C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D0940();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000E3560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1001D0940();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

void sub_1000E366C(uint64_t a1)
{
  sub_1001D0940();
  if (v1 <= 0x3F)
  {
    sub_1000E33D4(319, &unk_10022C180, &type metadata accessor for Google_Protobuf_Duration, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000E3758(uint64_t a1)
{
  sub_1000E33D4(319, &unk_10022C2D0, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1001D0940();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000E381C(void *a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022C378, &qword_1001DC3B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100024DC8(a1, a1[3]);
  sub_1000E533C();
  sub_1001D25F0();
  v9[1] = a2;
  sub_100011AC0(&qword_10022C358, &qword_1001DC3B0);
  sub_1000E54A0();
  sub_1001D2340();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000E3988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6778732 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1001D2470();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000E3A1C(uint64_t a1)
{
  v2 = sub_1000E533C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E3A58(uint64_t a1)
{
  v2 = sub_1000E533C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000E3A94@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000E51A8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000E3ADC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v33 = a1;
  v6 = sub_100011AC0(&qword_100227E08, &unk_1001D3B30);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_1001CFD60();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001D0260();
  v14 = __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v19 = &v30 - v18;
  v32 = v3;
  v20 = *v3;
  if (*(v20 + 16) && (v34 = v17, v21 = sub_1000064E4(a2), v17 = v34, (v22 & 1) != 0))
  {
    v31 = a3;
    (*(v34 + 16))(v16, *(v20 + 56) + *(v34 + 72) * v21, v13);
    v23 = v16;
    v24 = *(v34 + 32);
    v24(v19, v23, v13);
    sub_1001D0240();
    sub_1000E55B0(&qword_100230230, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v25 = sub_1001D1770();
    (*(v10 + 8))(v12, v9);
    if (v25)
    {
      v26 = v31;
      v24(v31, v19, v13);
      return (*(v34 + 56))(v26, 0, 1, v13);
    }

    else
    {
      v29 = *(v34 + 56);
      v29(v8, 1, 1, v13);
      sub_10001BB84(a2, v35);
      sub_100017918(v8, a2);
      (*(v34 + 8))(v19, v13);
      return (v29)(v31, 1, 1, v13);
    }
  }

  else
  {
    v28 = *(v17 + 56);

    return v28(a3, 1, 1, v13);
  }
}

uint64_t sub_1000E3E7C(uint64_t *a1)
{
  v3 = sub_100011AC0(&qword_100227E08, &unk_1001D3B30);
  __chkstk_darwin(v3 - 8);
  v74 = &v73 - v4;
  v75 = v1;
  v5 = *v1;
  v6 = a1[1];
  v86 = *a1;
  v7 = a1[3];
  v84 = a1[2];
  v8 = a1[5];
  v81 = a1[4];
  v9 = a1[6];
  v10 = *(v5 + 64);
  v77 = v5 + 64;
  v11 = 1 << *(v5 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v76 = (v11 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v87 = v8;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v15 = 0;
  v93 = v9;
  v78 = (v9 + 56);
  v16 = _swiftEmptyArrayStorage;
  v83 = v5;
  v80 = v6;
  v79 = v7;
  while (2)
  {
    v91 = v16;
    while (1)
    {
      do
      {
        if (!v13)
        {
          while (1)
          {
            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_66;
            }

            if (v17 >= v76)
            {
              break;
            }

            v13 = *(v77 + 8 * v17);
            ++v15;
            if (v13)
            {
              v15 = v17;
              goto LABEL_10;
            }
          }

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v56 = v16[2];
          if (v56)
          {
            v57 = 4;
            v58 = v75;
            v59 = v74;
            do
            {
              v61 = *&v16[v57];
              v62 = *&v16[v57 + 2];
              v63 = *&v16[v57 + 4];
              v96 = v16[v57 + 6];
              v95[1] = v62;
              v95[2] = v63;
              v95[0] = v61;
              sub_10001BB84(v95, v94);
              v64 = sub_1000064E4(v95);
              v66 = v65;
              sub_10001BB30(v95);
              if (v66)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v68 = *v58;
                v94[0] = *v58;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  sub_10000FFC0();
                  v68 = v94[0];
                }

                v69 = v68;

                v70 = *(v69 + 56);
                v71 = sub_1001D0260();
                v72 = *(v71 - 8);
                (*(v72 + 32))(v59, v70 + *(v72 + 72) * v64, v71);
                sub_100019CD4(v64, v69);
                *v58 = v69;
                (*(v72 + 56))(v59, 0, 1, v71);
                v16 = v91;
              }

              else
              {
                v60 = sub_1001D0260();
                (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
              }

              sub_1000E50C8(v59);
              v57 += 7;
              --v56;
            }

            while (v56);
          }
        }

LABEL_10:
        v18 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v19 = (*(v5 + 48) + 56 * (v18 | (v15 << 6)));
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v89 = v19[4];
        v90 = v23;
        v24 = v19[6];
        v92 = v19[5];
        if (!v6)
        {
          break;
        }

        if (v86 == v21 && v6 == v20)
        {
          break;
        }

        v26 = v22;
        result = sub_1001D2470();
        v22 = v26;
      }

      while ((result & 1) == 0);
      v82 = v21;
      v88 = v20;
      v85 = v22;
      if (!v7)
      {
        break;
      }

      if (v84 == v22 && v7 == v90)
      {
        break;
      }

      v28 = sub_1001D2470();

      if (v28)
      {
        goto LABEL_26;
      }

      sub_1000E47D4(46, 0xE100000000000000, v85, v90);
      if ((v29 & 1) == 0)
      {
        v30 = sub_1001D1920();
        v34 = sub_1000E505C(v84, v7, v30, v31, v32, v33);

        if (v34)
        {
          goto LABEL_26;
        }
      }

LABEL_45:

      v5 = v83;
LABEL_47:
    }

LABEL_26:
    if (v87)
    {
      if (v81 != v89 || v87 != v92)
      {
        result = sub_1001D2470();
        if ((result & 1) == 0)
        {
          goto LABEL_45;
        }
      }
    }

    v36 = *(v93 + 16);
    if (!v36)
    {
LABEL_48:
      v48 = v91;
      result = swift_isUniquelyReferenced_nonNull_native();
      *&v95[0] = v48;
      if ((result & 1) == 0)
      {
        result = sub_100151560(0, v48[2] + 1, 1);
        v48 = *&v95[0];
      }

      v6 = v80;
      v7 = v79;
      v49 = v82;
      v50 = v48;
      v52 = v48[2];
      v51 = v48[3];
      if (v52 >= v51 >> 1)
      {
        result = sub_100151560((v51 > 1), v52 + 1, 1);
        v49 = v82;
        v50 = *&v95[0];
      }

      v50[2] = v52 + 1;
      v53 = &v50[7 * v52];
      v53[4] = v49;
      v54 = v85;
      v53[5] = v88;
      v53[6] = v54;
      v55 = v89;
      v53[7] = v90;
      v53[8] = v55;
      v53[9] = v92;
      v53[10] = v24;
      v5 = v83;
      v16 = v50;
      continue;
    }

    break;
  }

  v37 = 0;
  v38 = v78;
  while (v37 < *(v93 + 16))
  {
    if (!*(v24 + 16))
    {
      goto LABEL_44;
    }

    v39 = *(v38 - 1);
    v40 = *v38;
    v41 = *(v38 - 3);
    v42 = *(v38 - 2);

    v43 = sub_100006028(v41, v42);
    if ((v44 & 1) == 0)
    {

      v92 = v88;
      v90 = v40;
      v5 = v83;
      v16 = v91;
      v6 = v80;
      v7 = v79;
      goto LABEL_47;
    }

    v45 = (*(v24 + 56) + 16 * v43);
    if (*v45 == v39 && v45[1] == v40)
    {
    }

    else
    {
      v47 = sub_1001D2470();

      if ((v47 & 1) == 0)
      {
LABEL_44:

        v5 = v83;
        v16 = v91;
        v6 = v80;
        v7 = v79;
        goto LABEL_47;
      }
    }

    ++v37;
    v38 += 4;
    if (v36 == v37)
    {
      goto LABEL_48;
    }
  }

LABEL_66:
  __break(1u);
  return result;
}