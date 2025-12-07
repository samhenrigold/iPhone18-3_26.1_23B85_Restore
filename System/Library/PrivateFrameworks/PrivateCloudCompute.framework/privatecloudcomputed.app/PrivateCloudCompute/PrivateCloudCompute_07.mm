uint64_t static Proto_Ropes_Common_DecryptionKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!sub_1000A1A5C(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_1000A1A5C(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  type metadata accessor for Proto_Ropes_Common_DecryptionKey(0);
  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000AA0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA30, type metadata accessor for Proto_Ropes_Common_DecryptionKey, &protocol conformance descriptor for Proto_Ropes_Common_DecryptionKey);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AA190(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A270, type metadata accessor for Proto_Ropes_Common_DecryptionKey, &protocol conformance descriptor for Proto_Ropes_Common_DecryptionKey);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AA1FC(uint64_t a1, uint64_t a2)
{
  sub_1000B0838(&qword_10022A270, type metadata accessor for Proto_Ropes_Common_DecryptionKey, &protocol conformance descriptor for Proto_Ropes_Common_DecryptionKey);

  return sub_1001D0B40();
}

uint64_t sub_1000AA278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1000A1A5C(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_1000A1A5C(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000AA35C()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_Chunk._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_Chunk._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encrypted_payload";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_final";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_Chunk.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1001D0A50();
    }

    else if (result == 2)
    {
      sub_1001D0A10();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_Chunk.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_1001D0BC0();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(v3 + 16) != 1 || (result = sub_1001D0BA0(), !v4))
  {
    type metadata accessor for Proto_Ropes_Common_Chunk(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t static Proto_Ropes_Common_Chunk.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!sub_1000A1A5C(*a1, *(a1 + 8), *a2, *(a2 + 8)) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for Proto_Ropes_Common_Chunk(0);
  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000AA7E4@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_1001D3A00;
  *(a2 + 16) = 0;
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000AA844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA28, type metadata accessor for Proto_Ropes_Common_Chunk, &protocol conformance descriptor for Proto_Ropes_Common_Chunk);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AA8E4(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A288, type metadata accessor for Proto_Ropes_Common_Chunk, &protocol conformance descriptor for Proto_Ropes_Common_Chunk);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AA950(uint64_t a1, uint64_t a2)
{
  sub_1000B0838(&qword_10022A288, type metadata accessor for Proto_Ropes_Common_Chunk, &protocol conformance descriptor for Proto_Ropes_Common_Chunk);

  return sub_1001D0B40();
}

uint64_t sub_1000AA9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1000A1A5C(*a1, *(a1 + 8), *a2, *(a2 + 8)) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000AAAB0()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_Attestation._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_Attestation._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1001D8090;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "attestation_bundle";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_1001D0C30();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "node_identifier";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "ohttp_context";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "expiration_time";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "cloudos_version";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "cloudos_release_type";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "cell_id";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "ensemble_id";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_Attestation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1001D09E0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result < 8 || result == 8)
      {
        type metadata accessor for Proto_Ropes_Common_Attestation(0);
        sub_1001D0A90();
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        type metadata accessor for Proto_Ropes_Common_Attestation(0);
        sub_1001D0AB0();
      }

      else
      {
        sub_1000AAFC8(a1, v5, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_1001D0A50();
    }

    else if (result == 2)
    {
      sub_1001D0AA0();
    }
  }

  return result;
}

uint64_t sub_1000AAFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_Ropes_Common_Attestation(0);
  sub_1001D08D0();
  sub_1000B0838(&qword_10022AA78, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  return sub_1001D0AE0();
}

uint64_t Proto_Ropes_Common_Attestation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_1001D0BC0();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  v14 = v3[3];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (result = sub_1001D0BF0(), !v4))
  {
    result = sub_1000AB20C(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1000AB284(v3, a1, a2, a3);
      sub_1000AB4A0(v3, a1, a2, a3, type metadata accessor for Proto_Ropes_Common_Attestation);
      sub_1000AB51C(v3, a1, a2, a3);
      sub_1000AB594(v3, a1, a2, a3);
      sub_1000AB60C(v3, a1, a2, a3);
      type metadata accessor for Proto_Ropes_Common_Attestation(0);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000AB20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  if ((*(a1 + *(result + 28) + 4) & 1) == 0)
  {
    return sub_1001D0C00();
  }

  return result;
}

uint64_t sub_1000AB284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100011AC0(&qword_10022A130, &qword_1001D80A0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = sub_1001D08D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  sub_10001208C(a1 + *(v12 + 32), v7, &qword_10022A130, &qword_1001D80A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100011F00(v7, &qword_10022A130, &qword_1001D80A0);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1000B0838(&qword_10022AA78, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
  sub_1001D0C20();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000AB4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000AB51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000AB594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000AB60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  if (*(a1 + *(result + 48) + 8))
  {
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000AB6D0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1001D3A00;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = a1[8];
  v5 = a2 + a1[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = sub_1001D08D0();
  result = (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v8 = a1[10];
  v9 = (a2 + a1[9]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[12];
  v12 = (a2 + a1[11]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v11);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t sub_1000AB7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA20, type metadata accessor for Proto_Ropes_Common_Attestation, &protocol conformance descriptor for Proto_Ropes_Common_Attestation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AB868(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation, &protocol conformance descriptor for Proto_Ropes_Common_Attestation);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AB8D4(uint64_t a1, uint64_t a2)
{
  sub_1000B0838(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation, &protocol conformance descriptor for Proto_Ropes_Common_Attestation);

  return sub_1001D0B40();
}

uint64_t sub_1000AB978()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_Capabilities._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_Capabilities._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7180;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "compression_algorithm";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attestation_streaming";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "trusted_proxy_request_nack";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "trusted_proxy_duplicate_first_request_chunk";
  *(v14 + 1) = 43;
  v14[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_Capabilities.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_4:
          sub_1001D0A10();
        }
      }

      else if (result == 1)
      {
        sub_1000B0880();
        sub_1001D0A00();
      }

      else if (result == 2)
      {
        goto LABEL_4;
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_Capabilities.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_1000B0880(), result = sub_1001D0B80(), !v4))
  {
    if (v3[8] != 1 || (result = sub_1001D0BA0(), !v4))
    {
      if (v3[9] != 1 || (result = sub_1001D0BA0(), !v4))
      {
        if (v3[10] != 1 || (result = sub_1001D0BA0(), !v4))
        {
          type metadata accessor for Proto_Ropes_Common_Capabilities(0);
          return sub_1001D0920();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000ABE54@<X0>(uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 10) = 0;
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000ABEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA18, type metadata accessor for Proto_Ropes_Common_Capabilities, &protocol conformance descriptor for Proto_Ropes_Common_Capabilities);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000ABF58(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A2B0, type metadata accessor for Proto_Ropes_Common_Capabilities, &protocol conformance descriptor for Proto_Ropes_Common_Capabilities);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000ABFC4(uint64_t a1, uint64_t a2)
{
  sub_1000B0838(&qword_10022A2B0, type metadata accessor for Proto_Ropes_Common_Capabilities, &protocol conformance descriptor for Proto_Ropes_Common_Capabilities);

  return sub_1001D0B40();
}

uint64_t Proto_Ropes_Common_AttestationList.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D09E0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Ropes_Common_Attestation(0);
        sub_1000B0838(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation, &protocol conformance descriptor for Proto_Ropes_Common_Attestation);
        sub_1001D0AD0();
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_AttestationList.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Proto_Ropes_Common_Attestation(0), sub_1000B0838(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation, &protocol conformance descriptor for Proto_Ropes_Common_Attestation), result = sub_1001D0C10(), !v4))
  {
    type metadata accessor for Proto_Ropes_Common_AttestationList(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t static Proto_Ropes_Common_AttestationList.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1000AE120(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_Ropes_Common_AttestationList(0);
  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000AC3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA10, type metadata accessor for Proto_Ropes_Common_AttestationList, &protocol conformance descriptor for Proto_Ropes_Common_AttestationList);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AC480(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A2C8, type metadata accessor for Proto_Ropes_Common_AttestationList, &protocol conformance descriptor for Proto_Ropes_Common_AttestationList);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AC4EC(uint64_t a1, uint64_t a2)
{
  sub_1000B0838(&qword_10022A2C8, type metadata accessor for Proto_Ropes_Common_AttestationList, &protocol conformance descriptor for Proto_Ropes_Common_AttestationList);

  return sub_1001D0B40();
}

uint64_t sub_1000AC568(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1000AE120(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000AC638()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_CompressedAttestationList._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_CompressedAttestationList._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7170;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "compression_algorithm";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "compressed_bytes";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "uncompressed_length_hint";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_CompressedAttestationList.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D09E0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1001D0AC0();
          break;
        case 2:
          sub_1001D0A50();
          break;
        case 1:
          sub_1000B0880();
          sub_1001D0A30();
          break;
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_CompressedAttestationList.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    sub_1000B0880();
    result = sub_1001D0BB0();
    if (v4)
    {
      return result;
    }
  }

  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
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
  if (!*(v3 + 32) || (result = sub_1001D0C00(), !v4))
  {
    type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000ACAE8@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_1001D3A00;
  *(a2 + 32) = 0;
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000ACB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000ACB98(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000ACC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA08, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList, &protocol conformance descriptor for Proto_Ropes_Common_CompressedAttestationList);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000ACD00(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A2E0, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList, &protocol conformance descriptor for Proto_Ropes_Common_CompressedAttestationList);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000ACD6C(uint64_t a1, uint64_t a2)
{
  sub_1000B0838(&qword_10022A2E0, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList, &protocol conformance descriptor for Proto_Ropes_Common_CompressedAttestationList);

  return sub_1001D0B40();
}

uint64_t sub_1000ACE10()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_ClientTerminate._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_ClientTerminate._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "code";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_ClientTerminate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D09E0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1000B08D4();
        sub_1001D0A30();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Ropes_Common_ClientTerminate(0);
        sub_1001D0A90();
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_Common_ClientTerminate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1000B08D4(), result = sub_1001D0BB0(), !v4))
  {
    result = sub_1000AD1D0(v3, a1, a2, a3, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    if (!v4)
    {
      type metadata accessor for Proto_Ropes_Common_ClientTerminate(0);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t sub_1000AD1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_1001D0BF0();
  }

  return result;
}

uint64_t sub_1000AD298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  result = _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v5 = (a2 + *(a1 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1000AD310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022AA00, type metadata accessor for Proto_Ropes_Common_ClientTerminate, &protocol conformance descriptor for Proto_Ropes_Common_ClientTerminate);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000AD3B0(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A2F8, type metadata accessor for Proto_Ropes_Common_ClientTerminate, &protocol conformance descriptor for Proto_Ropes_Common_ClientTerminate);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AD41C(uint64_t a1, uint64_t a2)
{
  sub_1000B0838(&qword_10022A2F8, type metadata accessor for Proto_Ropes_Common_ClientTerminate, &protocol conformance descriptor for Proto_Ropes_Common_ClientTerminate);

  return sub_1001D0B40();
}

uint64_t sub_1000AD498()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_ClientTerminate.Code._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_ClientTerminate.Code._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7170;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNDEFINED";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CRYPTO_ERROR";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "APPLICATION_ERROR";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t sub_1000AD758(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v7 = sub_1001D0C60();
  sub_10003B610(v7, a2);
  sub_10003A37C(v7, a2);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v8 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001D39F0;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v12 = *a4;
  v13 = sub_1001D0C30();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_Common_DiagnosticInformation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1000AD97C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000AD97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  sub_1000B3194();
  return sub_1001D0A20();
}

uint64_t Proto_Ropes_Common_DiagnosticInformation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000ADA48(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000ADA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  if ((*(a1 + *(result + 20) + 9) & 1) == 0)
  {
    sub_1000B3194();
    return sub_1001D0BB0();
  }

  return result;
}

Swift::Int sub_1000ADB38(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1001D2580();
  a1(0);
  sub_1000B0838(a2, a3, a4);
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_1000ADBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 8) = 256;
  return result;
}

uint64_t sub_1000ADC2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B0838(&qword_10022A9F8, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation, &protocol conformance descriptor for Proto_Ropes_Common_DiagnosticInformation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000ADCCC(uint64_t a1)
{
  v2 = sub_1000B0838(&qword_10022A310, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation, &protocol conformance descriptor for Proto_Ropes_Common_DiagnosticInformation);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000ADD38(uint64_t a1, uint64_t a2)
{
  sub_1000B0838(&qword_10022A310, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation, &protocol conformance descriptor for Proto_Ropes_Common_DiagnosticInformation);

  return sub_1001D0B40();
}

uint64_t sub_1000ADDB4()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_Common_DiagnosticInformation.DenyReason._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_Common_DiagnosticInformation.DenyReason._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D3ED0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNDEFINED";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TENANT_BLOCKED";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WORKLOAD_BLOCKED";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FEATUREID_BLOCKED";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SOFTWARE_BLOCKED";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "CLIENT_RATE_LIMIT_THROTTLED";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "SERVER_RATE_LIMIT_THROTTLED";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t sub_1000AE120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_Common_Attestation(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1000B31E8(v13, v10, type metadata accessor for Proto_Ropes_Common_Attestation);
        sub_1000B31E8(v14, v7, type metadata accessor for Proto_Ropes_Common_Attestation);
        v16 = _s20privatecloudcomputed30Proto_Ropes_Common_AttestationV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_1000B3250(v7, type metadata accessor for Proto_Ropes_Common_Attestation);
        sub_1000B3250(v10, type metadata accessor for Proto_Ropes_Common_Attestation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1000AE2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1000B31E8(v13, v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        sub_1000B31E8(v14, v7, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v16 = static Proto_Ropes_RateLimit_RateLimitConfiguration.== infix(_:_:)(v10, v7);
        sub_1000B3250(v7, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        sub_1000B3250(v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1000AE490(uint64_t a1, uint64_t a2)
{
  v54 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v4 = *(v54 - 8);
  __chkstk_darwin(v54);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100011AC0(&qword_10022AA58, &qword_1001D95F8);
  __chkstk_darwin(v7 - 8);
  v9 = (&v44 - v8);
  v10 = sub_100011AC0(&qword_10022AA60, &unk_1001D9600);
  __chkstk_darwin(v10);
  v53 = &v44 - v11;
  v55 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0);
  v12 = __chkstk_darwin(v55);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v17 = &v44 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_43:
    v38 = 0;
    return v38 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v45 = v6;
  v46 = v10;
  v19 = 0;
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v48 = a2 + v20;
  v47 = (v4 + 48);
  v49 = *(v15 + 72);
  v50 = a1 + v20;
  v52 = v18;
  while (1)
  {
    v21 = v49 * v19;
    result = sub_1000B31E8(v50 + v49 * v19, v17, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload);
    if (v19 == v52)
    {
      goto LABEL_46;
    }

    sub_1000B31E8(v48 + v21, v14, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload);
    result = *v17;
    if (*v17 != *v14 || *(v17 + 1) != *(v14 + 1))
    {
      result = sub_1001D2470();
      if ((result & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v24 = *(v17 + 2);
    v25 = *(v14 + 2);
    v26 = *(v24 + 16);
    if (v26 != *(v25 + 16))
    {
      goto LABEL_42;
    }

    if (v26 && v24 != v25)
    {
      break;
    }

LABEL_17:
    v51 = v19;
    v28 = *(v55 + 36);
    v29 = *(v10 + 48);
    v30 = v53;
    sub_10001208C(&v17[v28], v53, &qword_10022AA58, &qword_1001D95F8);
    sub_10001208C(&v14[v28], v30 + v29, &qword_10022AA58, &qword_1001D95F8);
    v31 = *v47;
    v32 = v54;
    if ((*v47)(v30, 1, v54) == 1)
    {
      v33 = v31(v30 + v29, 1, v32);
      v34 = v51;
      if (v33 != 1)
      {
        goto LABEL_40;
      }

      sub_100011F00(v30, &qword_10022AA58, &qword_1001D95F8);
      v10 = v46;
    }

    else
    {
      sub_10001208C(v30, v9, &qword_10022AA58, &qword_1001D95F8);
      if (v31(v30 + v29, 1, v32) == 1)
      {
        sub_1000B3250(v9, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
LABEL_40:
        v42 = &qword_10022AA60;
        v43 = &unk_1001D9600;
        goto LABEL_41;
      }

      v36 = v45;
      v35 = v46;
      sub_1000B32B0(v30 + v29, v45);
      if ((sub_1000CF830(*v9, *v36) & 1) == 0 || (sub_1000CF9D4(v9[1], v36[1]) & 1) == 0)
      {
        sub_1000B3250(v36, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
        sub_1000B3250(v9, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
        v42 = &qword_10022AA58;
        v43 = &qword_1001D95F8;
LABEL_41:
        sub_100011F00(v30, v42, v43);
LABEL_42:
        sub_1000B3250(v14, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload);
        sub_1000B3250(v17, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload);
        goto LABEL_43;
      }

      sub_1001D0940();
      sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v37 = sub_1001D1790();
      sub_1000B3250(v36, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
      sub_1000B3250(v9, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
      sub_100011F00(v30, &qword_10022AA58, &qword_1001D95F8);
      v10 = v35;
      v34 = v51;
      if ((v37 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    if (*(v17 + 3) != *(v14 + 3) || *(v17 + 8) != *(v14 + 8))
    {
      goto LABEL_42;
    }

    sub_1001D0940();
    sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v38 = sub_1001D1790();
    sub_1000B3250(v14, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload);
    sub_1000B3250(v17, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload);
    if (v38)
    {
      v19 = v34 + 1;
      if (v19 != v52)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  v39 = (v24 + 40);
  v40 = (v25 + 40);
  while (v26)
  {
    result = *(v39 - 1);
    if (result != *(v40 - 1) || *v39 != *v40)
    {
      result = sub_1001D2470();
      if ((result & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v39 += 2;
    v40 += 2;
    if (!--v26)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1000AEB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_1000B31E8(v13, v10, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);
        sub_1000B31E8(v14, v7, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);
        v16 = *v10 == *v7 && v10[1] == v7[1];
        if (!v16 && (sub_1001D2470() & 1) == 0)
        {
          break;
        }

        sub_1001D0940();
        sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v17 = sub_1001D1790();
        sub_1000B3250(v7, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);
        sub_1000B3250(v10, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);
        if (v17)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v17 & 1;
      }

      sub_1000B3250(v7, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);
      sub_1000B3250(v10, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint);
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1000AED88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1001D2470() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000AEE18(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation(0);
  v4 = __chkstk_darwin(v42);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v9 = &v38 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (v10 && a1 != a2)
    {
      v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v12 = a1 + v11;
      v13 = a2 + v11;
      v14 = *(v7 + 72);
      v40 = 0;
      v41 = v14;
      while (1)
      {
        sub_1000B31E8(v12, v9, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);
        sub_1000B31E8(v13, v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);
        if (*v9 != *v6)
        {
LABEL_59:
          sub_1000B3250(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);
          sub_1000B3250(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);
          goto LABEL_60;
        }

        v15 = *(v9 + 1);
        v16 = *(v9 + 2);
        v17 = *(v6 + 1);
        v18 = *(v6 + 2);
        v19 = v16 >> 62;
        v20 = v18 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v27 = *(v15 + 16);
            v26 = *(v15 + 24);
            v24 = __OFSUB__(v26, v27);
            v21 = v26 - v27;
            if (v24)
            {
              goto LABEL_63;
            }

            goto LABEL_22;
          }

          v21 = 0;
          if (v20 > 1)
          {
            goto LABEL_16;
          }
        }

        else if (v19)
        {
          LODWORD(v21) = HIDWORD(v15) - v15;
          if (__OFSUB__(HIDWORD(v15), v15))
          {
            goto LABEL_64;
          }

          v21 = v21;
          if (v20 > 1)
          {
LABEL_16:
            if (v20 != 2)
            {
              if (v21)
              {
                goto LABEL_59;
              }

              goto LABEL_55;
            }

            v23 = *(v17 + 16);
            v22 = *(v17 + 24);
            v24 = __OFSUB__(v22, v23);
            v25 = v22 - v23;
            if (v24)
            {
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
            }

            goto LABEL_29;
          }
        }

        else
        {
          v21 = BYTE6(v16);
          if (v20 > 1)
          {
            goto LABEL_16;
          }
        }

LABEL_23:
        if (v20)
        {
          LODWORD(v25) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_62;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v18);
        }

LABEL_29:
        if (v21 != v25)
        {
          goto LABEL_59;
        }

        if (v21 >= 1)
        {
          if (v19 > 1)
          {
            if (v19 == 2)
            {
              v28 = *(v15 + 16);
              v38 = *(v15 + 24);
              v39 = v17;
              v29 = sub_1001CF870();
              if (v29)
              {
                v30 = sub_1001CF8A0();
                if (__OFSUB__(v28, v30))
                {
                  goto LABEL_67;
                }

                v29 += v28 - v30;
              }

              if (__OFSUB__(v38, v28))
              {
                goto LABEL_66;
              }

              goto LABEL_54;
            }

            memset(v44, 0, 14);
          }

          else
          {
            if (v19)
            {
              v39 = *(v6 + 1);
              v31 = v15;
              if (v15 >> 32 < v15)
              {
                goto LABEL_65;
              }

              v32 = sub_1001CF870();
              if (v32)
              {
                v38 = v32;
                v33 = sub_1001CF8A0();
                if (__OFSUB__(v31, v33))
                {
                  goto LABEL_68;
                }

                v29 = v31 - v33 + v38;
              }

              else
              {
                v29 = 0;
              }

LABEL_54:
              sub_1001CF890();
              v35 = v40;
              sub_1000AFA3C(v29, v39, v18, v44);
              v40 = v35;
              if ((v44[0] & 1) == 0)
              {
                goto LABEL_59;
              }

              goto LABEL_55;
            }

            v44[0] = *(v9 + 1);
            LOWORD(v44[1]) = v16;
            BYTE2(v44[1]) = BYTE2(v16);
            BYTE3(v44[1]) = BYTE3(v16);
            BYTE4(v44[1]) = BYTE4(v16);
            BYTE5(v44[1]) = BYTE5(v16);
          }

          v34 = v40;
          sub_1000AFA3C(v44, v17, v18, &v43);
          v40 = v34;
          if (!v43)
          {
            goto LABEL_59;
          }
        }

LABEL_55:
        sub_1001D0940();
        sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v36 = sub_1001D1790();
        sub_1000B3250(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);
        sub_1000B3250(v9, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation);
        if (v36)
        {
          v13 += v41;
          v12 += v41;
          if (--v10)
          {
            continue;
          }
        }

        return v36 & 1;
      }

      v21 = 0;
      if (!v15 && v16 == 0xC000000000000000 && v18 >> 62 == 3)
      {
        v21 = 0;
        if (!v17 && v18 == 0xC000000000000000)
        {
          goto LABEL_55;
        }
      }

LABEL_22:
      if (v20 > 1)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }

    v36 = 1;
  }

  else
  {
LABEL_60:
    v36 = 0;
  }

  return v36 & 1;
}

uint64_t sub_1000AF338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_16:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1000B31E8(v13, v10, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
      sub_1000B31E8(v14, v7, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
      v16 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
      if (!v16 && (sub_1001D2470() & 1) == 0 || *(v10 + 4) != *(v7 + 4))
      {
        break;
      }

      sub_1001D0940();
      sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = sub_1001D1790();
      sub_1000B3250(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
      sub_1000B3250(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_1000B3250(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
    sub_1000B3250(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
    goto LABEL_16;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1000AF5AC(uint64_t result, uint64_t a2)
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

uint64_t sub_1000AF608(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1000AF698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_Common_Workload.Parameter(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (&v26 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_28:
    v22 = 0;
    return v22 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v27 = a1 + v13;
  v14 = a2 + v13;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_1000B31E8(v27 + v15 * v12, v10, type metadata accessor for Proto_Ropes_Common_Workload.Parameter);
    if (v12 == v11)
    {
      break;
    }

    sub_1000B31E8(v14 + v15 * v12, v7, type metadata accessor for Proto_Ropes_Common_Workload.Parameter);
    result = *v10;
    v17 = *v10 == *v7 && v10[1] == v7[1];
    if (!v17 && (result = sub_1001D2470(), (result & 1) == 0) || (v18 = v10[2], v19 = v7[2], v20 = *(v18 + 16), v20 != *(v19 + 16)))
    {
LABEL_27:
      sub_1000B3250(v7, type metadata accessor for Proto_Ropes_Common_Workload.Parameter);
      sub_1000B3250(v10, type metadata accessor for Proto_Ropes_Common_Workload.Parameter);
      goto LABEL_28;
    }

    if (v20)
    {
      v21 = v18 == v19;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v23 = (v18 + 40);
      v24 = (v19 + 40);
      while (v20)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_1001D2470();
          if ((result & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v20)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }

LABEL_17:
    sub_1001D0940();
    sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v22 = sub_1001D1790();
    sub_1000B3250(v7, type metadata accessor for Proto_Ropes_Common_Workload.Parameter);
    sub_1000B3250(v10, type metadata accessor for Proto_Ropes_Common_Workload.Parameter);
    if ((v22 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AF96C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1001D2470() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1001D2470() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000AFA3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1001CF870();
    if (v10)
    {
      v11 = sub_1001CF8A0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1001CF890();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1001CF870();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1001CF8A0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1001CF890();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s20privatecloudcomputed44Proto_Ropes_Common_CompressedAttestationListV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (sub_1000A1A5C(a1[2], a1[3], a2[2], a2[3]) && *(a1 + 8) == *(a2 + 8))
  {
    type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
    sub_1001D0940();
    sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return sub_1001D1790() & 1;
  }

  return 0;
}

uint64_t _s20privatecloudcomputed40Proto_Ropes_Common_DiagnosticInformationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 9);
  v7 = a2 + v4;
  v8 = *(a2 + v4 + 9);
  if (v6)
  {
    if (v8)
    {
LABEL_3:
      sub_1001D0940();
      sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      return sub_1001D1790() & 1;
    }
  }

  else if ((v8 & 1) == 0)
  {
    v10 = *v5;
    v11 = *v7;
    if (*(v7 + 8))
    {
      if (v11 <= 2)
      {
        if (v11)
        {
          if (v11 == 1)
          {
            if (v10 == 1)
            {
              goto LABEL_3;
            }
          }

          else if (v10 == 2)
          {
            goto LABEL_3;
          }
        }

        else if (!v10)
        {
          goto LABEL_3;
        }
      }

      else if (v11 > 4)
      {
        if (v11 == 5)
        {
          if (v10 == 5)
          {
            goto LABEL_3;
          }
        }

        else if (v10 == 6)
        {
          goto LABEL_3;
        }
      }

      else if (v11 == 3)
      {
        if (v10 == 3)
        {
          goto LABEL_3;
        }
      }

      else if (v10 == 4)
      {
        goto LABEL_3;
      }
    }

    else if (v10 == v11)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t _s20privatecloudcomputed34Proto_Ropes_Common_ClientTerminateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Proto_Ropes_Common_ClientTerminate(0) + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_1001D2470() & 1) == 0)
    {
      return 0;
    }

LABEL_18:
    sub_1001D0940();
    sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return sub_1001D1790() & 1;
  }

  if (!v10)
  {
    goto LABEL_18;
  }

  return 0;
}

uint64_t _s20privatecloudcomputed31Proto_Ropes_Common_CapabilitiesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1000AF608(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10))
  {
    return 0;
  }

  type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  sub_1001D0940();
  sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t _s20privatecloudcomputed30Proto_Ropes_Common_AttestationV2eeoiySbAC_ACtFZ_0(_BOOL8 *a1, uint64_t *a2)
{
  v4 = sub_1001D08D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_10022A130, &qword_1001D80A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - v9;
  v11 = sub_100011AC0(&qword_10022AA68, &qword_1001D9618);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  if (!sub_1000A1A5C(*a1, a1[1], *a2, a2[1]) || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1001D2470() & 1) == 0)
  {
    goto LABEL_17;
  }

  v14 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v15 = *(v14 + 28);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      goto LABEL_17;
    }
  }

  v51 = v14;
  v20 = *(v14 + 32);
  v21 = *(v11 + 48);
  sub_10001208C(a1 + v20, v13, &qword_10022A130, &qword_1001D80A0);
  v22 = a2 + v20;
  v23 = v5;
  sub_10001208C(v22, &v13[v21], &qword_10022A130, &qword_1001D80A0);
  v24 = *(v5 + 48);
  if (v24(v13, 1, v4) != 1)
  {
    sub_10001208C(v13, v10, &qword_10022A130, &qword_1001D80A0);
    if (v24(&v13[v21], 1, v4) != 1)
    {
      (*(v23 + 32))(v7, &v13[v21], v4);
      sub_1000B0838(&qword_10022AA70, &type metadata accessor for Google_Protobuf_Timestamp, &protocol conformance descriptor for Google_Protobuf_Timestamp);
      v27 = sub_1001D1790();
      v28 = *(v23 + 8);
      v28(v7, v4);
      v28(v10, v4);
      sub_100011F00(v13, &qword_10022A130, &qword_1001D80A0);
      if ((v27 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    (*(v23 + 8))(v10, v4);
LABEL_16:
    sub_100011F00(v13, &qword_10022AA68, &qword_1001D9618);
    goto LABEL_17;
  }

  if (v24(&v13[v21], 1, v4) != 1)
  {
    goto LABEL_16;
  }

  sub_100011F00(v13, &qword_10022A130, &qword_1001D80A0);
LABEL_20:
  v29 = v51;
  v30 = v51[9];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_1001D2470() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v34)
  {
    goto LABEL_17;
  }

  v35 = v29[10];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39 || (*v36 != *v38 || v37 != v39) && (sub_1001D2470() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v39)
  {
    goto LABEL_17;
  }

  v40 = v29[11];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  v44 = v43[1];
  if (v42)
  {
    if (!v44 || (*v41 != *v43 || v42 != v44) && (sub_1001D2470() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v44)
  {
    goto LABEL_17;
  }

  v45 = v29[12];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  v49 = v48[1];
  if (v47)
  {
    if (!v49 || (*v46 != *v48 || v47 != v49) && (sub_1001D2470() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_48:
    sub_1001D0940();
    sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v25 = sub_1001D1790();
    return v25 & 1;
  }

  if (!v49)
  {
    goto LABEL_48;
  }

LABEL_17:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s20privatecloudcomputed29Proto_Ropes_Common_TenantInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_Common_TenantInfo(0);
  v5 = v4[5];
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

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1001D2470();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_1001D2470();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_1001D2470();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_1001D2470();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (v41 && (*v38 == *v40 && v39 == v41 || (sub_1001D2470() & 1) != 0))
    {
      goto LABEL_42;
    }
  }

  else if (!v41)
  {
LABEL_42:
    sub_1001D0940();
    sub_1000B0838(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return sub_1001D1790() & 1;
  }

  return 0;
}

uint64_t sub_1000B0838(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B0880()
{
  result = qword_10022A170;
  if (!qword_10022A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A170);
  }

  return result;
}

unint64_t sub_1000B08D4()
{
  result = qword_10022A198;
  if (!qword_10022A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A198);
  }

  return result;
}

unint64_t sub_1000B092C()
{
  result = qword_10022A1B0;
  if (!qword_10022A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A1B0);
  }

  return result;
}

unint64_t sub_1000B0984()
{
  result = qword_10022A1B8;
  if (!qword_10022A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A1B8);
  }

  return result;
}

unint64_t sub_1000B0A0C()
{
  result = qword_10022A1D0;
  if (!qword_10022A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A1D0);
  }

  return result;
}

unint64_t sub_1000B0A64()
{
  result = qword_10022A1D8;
  if (!qword_10022A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A1D8);
  }

  return result;
}

unint64_t sub_1000B0ABC()
{
  result = qword_10022A1E0;
  if (!qword_10022A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A1E0);
  }

  return result;
}

unint64_t sub_1000B0B44()
{
  result = qword_10022A1F8;
  if (!qword_10022A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A1F8);
  }

  return result;
}

unint64_t sub_1000B0B9C()
{
  result = qword_10022A200;
  if (!qword_10022A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A200);
  }

  return result;
}

unint64_t sub_1000B0BF4()
{
  result = qword_10022A208;
  if (!qword_10022A208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A208);
  }

  return result;
}

uint64_t sub_1000B0C78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B0CD0()
{
  result = qword_10022A220;
  if (!qword_10022A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A220);
  }

  return result;
}

uint64_t sub_1000B19A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000B1A88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001D0940();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_1000B1B44(uint64_t a1)
{
  sub_1001D0940();
  if (v1 <= 0x3F)
  {
    sub_1000B3134(319, &qword_100229738, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000B1C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_1001D0940();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000B1D28(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000B1DE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000B1EDC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000B1FA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
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

uint64_t sub_1000B2074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1001D0940();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000B2134(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
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

uint64_t sub_1000B21E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1001D0940();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000B2270(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v13 = sub_100011AC0(&qword_10022A130, &qword_1001D80A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000B23B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_1001D0940();
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
      v13 = sub_100011AC0(&qword_10022A130, &qword_1001D80A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000B24E4(uint64_t a1)
{
  sub_1001D0940();
  if (v1 <= 0x3F)
  {
    sub_1000B3134(319, &qword_10022A698, &type metadata for UInt32, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000B262C(319, &unk_10022A6A0, &type metadata accessor for Google_Protobuf_Timestamp, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000B3134(319, &qword_100229738, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000B262C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000B26A4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1000B2764(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000B2808(uint64_t a1)
{
  sub_1000B3134(319, &unk_10022A758, &type metadata for Proto_Ropes_Common_CompressionAlgorithm, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1001D0940();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000B28D0(unint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1000B2990(void *result, uint64_t a2, int a3, uint64_t a4)
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

void sub_1000B2A34(uint64_t a1)
{
  sub_1000B262C(319, &unk_10022A800, type metadata accessor for Proto_Ropes_Common_Attestation, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1001D0940();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000B2AFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001D0940();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000B2BC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1001D0940();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B2C74(uint64_t a1)
{
  result = sub_1001D0940();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000B2D1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1000B2E00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001D0940();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_1000B2EC0(uint64_t a1)
{
  sub_1001D0940();
  if (v1 <= 0x3F)
  {
    sub_1000B3134(319, &qword_100229738, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000B2F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B301C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000B308C(uint64_t a1)
{
  sub_1001D0940();
  if (v1 <= 0x3F)
  {
    sub_1000B3134(319, &unk_10022A9C8, &type metadata for Proto_Ropes_Common_DiagnosticInformation.DenyReason, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000B3134(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1000B3194()
{
  result = qword_10022AA50;
  if (!qword_10022AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AA50);
  }

  return result;
}

uint64_t sub_1000B31E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B3250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B32B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Proto_Ropes_HttpService_PrefetchRequest.capabilities.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  sub_10001208C(v1 + *(v6 + 20), v5, &qword_1002293A8, &unk_1001D6530);
  v7 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000B3928(v5, a1, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_100011F00(v5, &qword_1002293A8, &unk_1001D6530);
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_PrefetchRequest.capabilities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0) + 20);
  sub_100011F00(v1 + v3, &qword_1002293A8, &unk_1001D6530);
  sub_1000B3928(a1, v1 + v3, type metadata accessor for Proto_Ropes_Common_Capabilities);
  v4 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Proto_Ropes_HttpService_PrefetchRequest.clientRequestedAttestationCount.setter(int a1)
{
  result = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.setupRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA80, &unk_1001E1C40);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_10001208C(v2, &v12 - v5, &qword_10022AA80, &unk_1001E1C40);
  v7 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_10022AA80, &unk_1001E1C40);
LABEL_5:
    *a1 = 0;
    *(a1 + 8) = _swiftEmptyArrayStorage;
    *(a1 + 16) = _swiftEmptyArrayStorage;
    v8 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v9 = *(v8 + 32);
    v10 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
    result = (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
    *(a1 + *(v8 + 36)) = xmmword_1001D6800;
    return result;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
    goto LABEL_5;
  }

  return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
}

double Proto_Ropes_HttpService_InvokeRequest.SetupRequest.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  *(a1 + 16) = _swiftEmptyArrayStorage;
  v2 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v3 = *(v2 + 32);
  v4 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  result = 0.0;
  *(a1 + *(v2 + 36)) = xmmword_1001D6800;
  return result;
}

uint64_t sub_1000B3928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.setupRequest.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA80, &unk_1001E1C40);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeRequest.setupRequest.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_100011AC0(&qword_10022AA80, &unk_1001E1C40) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  v10 = *(*(v9 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_10001208C(v2, v8, &qword_10022AA80, &unk_1001E1C40);
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_100011F00(v8, &qword_10022AA80, &unk_1001E1C40);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1000B3928(v8, v12, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
      return sub_1000B3CCC;
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  }

  *v12 = 0;
  *(v12 + 8) = _swiftEmptyArrayStorage;
  *(v12 + 16) = _swiftEmptyArrayStorage;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v15 = *(v9 + 32);
  v16 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
  *(v12 + *(v9 + 36)) = xmmword_1001D6800;
  return sub_1000B3CCC;
}

void sub_1000B3CCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
    sub_100011F00(v8, &qword_10022AA80, &unk_1001E1C40);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA80, &unk_1001E1C40);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1000B3E50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.terminate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA80, &unk_1001E1C40);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_10001208C(v2, &v11 - v5, &qword_10022AA80, &unk_1001E1C40);
  v7 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_10022AA80, &unk_1001E1C40);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    }

    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v9 = type metadata accessor for Proto_Ropes_Common_ClientTerminate(0);
  result = _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v10 = (a1 + *(v9 + 24));
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.terminate.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA80, &unk_1001E1C40);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeRequest.terminate.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA80, &unk_1001E1C40) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Ropes_Common_ClientTerminate(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_10022AA80, &unk_1001E1C40);
  v12 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_10022AA80, &unk_1001E1C40);
LABEL_15:
    *v11 = 0;
    *(v11 + 8) = 1;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v14 = (v11 + *(v8 + 24));
    *v14 = 0;
    v14[1] = 0;
    return sub_1000B4324;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
  return sub_1000B4324;
}

void sub_1000B4324(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    sub_100011F00(v8, &qword_10022AA80, &unk_1001E1C40);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA80, &unk_1001E1C40);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1000B44A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.attestationMappings.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.capabilities.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  sub_10001208C(v1 + *(v6 + 32), v5, &qword_1002293A8, &unk_1001D6530);
  v7 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000B3928(v5, a1, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_100011F00(v5, &qword_1002293A8, &unk_1001D6530);
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.capabilities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 32);
  sub_100011F00(v1 + v3, &qword_1002293A8, &unk_1001D6530);
  sub_1000B3928(a1, v1 + v3, type metadata accessor for Proto_Ropes_Common_Capabilities);
  v4 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Ropes_HttpService_InvokeRequest.SetupRequest.capabilities.modify(void *a1))()
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
  v5 = *(*(sub_100011AC0(&qword_1002293A8, &unk_1001D6530) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
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
  v14 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 32);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_1002293A8, &unk_1001D6530);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = _swiftEmptyArrayStorage;
    *(v13 + 8) = 0;
    *(v13 + 10) = 0;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_1002293A8, &unk_1001D6530);
    }
  }

  else
  {
    sub_1000B3928(v7, v13, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  return sub_1000B4A2C;
}

BOOL Proto_Ropes_HttpService_InvokeRequest.SetupRequest.hasCapabilities.getter()
{
  v1 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  sub_10001208C(v0 + *(v4 + 32), v3, &qword_1002293A8, &unk_1001D6530);
  v5 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100011F00(v3, &qword_1002293A8, &unk_1001D6530);
  return v6;
}

Swift::Void __swiftcall Proto_Ropes_HttpService_InvokeRequest.SetupRequest.clearCapabilities()()
{
  v1 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 32);
  sub_100011F00(v0 + v1, &qword_1002293A8, &unk_1001D6530);
  v2 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.trustedProxyRequestPayload.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 36));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  sub_100089C38(*v1, v2);
  return v3;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.trustedProxyRequestPayload.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 36);
  result = sub_10002683C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*Proto_Ropes_HttpService_InvokeRequest.SetupRequest.trustedProxyRequestPayload.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 36);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_100089C38(v5, v6);
  return sub_10009A0F4;
}

Swift::Void __swiftcall Proto_Ropes_HttpService_InvokeRequest.SetupRequest.clearTrustedProxyRequestPayload()()
{
  v1 = v0 + *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 36);
  sub_10002683C(*v1, *(v1 + 8));
  *v1 = xmmword_1001D6800;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 28);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0) + 28);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.attestationList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10001208C(v2, &v9 - v5, &qword_10022AA88, &qword_1001D9620);
  v7 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_Common_AttestationList);
    }

    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  *a1 = _swiftEmptyArrayStorage;
  type metadata accessor for Proto_Ropes_Common_AttestationList(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.attestationList.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_Common_AttestationList);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.attestationList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
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
  v8 = *(*(type metadata accessor for Proto_Ropes_Common_AttestationList(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_Common_AttestationList);
      return sub_1000B5410;
    }

    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  *v10 = _swiftEmptyArrayStorage;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  return sub_1000B5410;
}

void sub_1000B5410(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_Common_AttestationList);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_Common_AttestationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_Common_AttestationList);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_Common_AttestationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.compressedAttestationList.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10001208C(v2, &v9 - v5, &qword_10022AA88, &qword_1001D9620);
  v7 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    }

    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1001D3A00;
  *(a1 + 32) = 0;
  type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.compressedAttestationList.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.compressedAttestationList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
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
  v8 = *(*(type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    *v10 = 0;
    *(v10 + 8) = 1;
    *(v10 + 16) = xmmword_1001D3A00;
    *(v10 + 32) = 0;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000B5A0C;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  return sub_1000B5A0C;
}

void sub_1000B5A0C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.attestation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  sub_10001208C(v2, &v17 - v5, &qword_10022AA88, &qword_1001D9620);
  v7 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_Common_Attestation);
    }

    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  *a1 = xmmword_1001D3A00;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v9 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v10 = a1 + v9[7];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v9[8];
  v12 = sub_1001D08D0();
  result = (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = (a1 + v9[9]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v9[10]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v9[11]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a1 + v9[12]);
  *v16 = 0;
  v16[1] = 0;
  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.attestation.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_Common_Attestation);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.attestation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v10 = *(*(v9 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_10001208C(v2, v8, &qword_10022AA88, &qword_1001D9620);
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    *v12 = xmmword_1001D3A00;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0xE000000000000000;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v15 = v12 + v9[7];
    *v15 = 0;
    *(v15 + 4) = 1;
    v16 = v9[8];
    v17 = sub_1001D08D0();
    (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
    v18 = (v12 + v9[9]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v12 + v9[10]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v12 + v9[11]);
    *v20 = 0;
    v20[1] = 0;
    v21 = (v12 + v9[12]);
    *v21 = 0;
    v21[1] = 0;
    return sub_1000B6110;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v8, v12, type metadata accessor for Proto_Ropes_Common_Attestation);
  return sub_1000B6110;
}

void sub_1000B6110(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_Common_Attestation);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_Common_Attestation);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_Common_Attestation);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_Common_Attestation);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.readyForMoreChunks.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10001208C(v2, &v9 - v5, &qword_10022AA88, &qword_1001D9620);
  v7 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
    }

    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.readyForMoreChunks.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.readyForMoreChunks.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
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
  v8 = *(*(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000B66B4;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
  return sub_1000B66B4;
}

void sub_1000B66B4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.rateLimitConfigurationList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10001208C(v2, &v9 - v5, &qword_10022AA88, &qword_1001D9620);
  v7 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    }

    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  *a1 = _swiftEmptyArrayStorage;
  type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.rateLimitConfigurationList.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.rateLimitConfigurationList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
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
  v8 = *(*(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    *v10 = _swiftEmptyArrayStorage;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000B6C90;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  return sub_1000B6C90;
}

void sub_1000B6C90(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.expiredAttestationList.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10001208C(v2, &v9 - v5, &qword_10022AA88, &qword_1001D9620);
  v7 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    }

    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.expiredAttestationList.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.expiredAttestationList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
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
  v8 = *(*(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    *v10 = _swiftEmptyArrayStorage;
    *(v10 + 8) = 0;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000B72B8;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
  return sub_1000B72B8;
}

void sub_1000B72B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.noFurtherAttestations.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10001208C(v2, &v9 - v5, &qword_10022AA88, &qword_1001D9620);
  v7 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
    }

    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.noFurtherAttestations.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.noFurtherAttestations.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
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
  v8 = *(*(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000B785C;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
  return sub_1000B785C;
}

void sub_1000B785C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.trustedProxyNodeSelected.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10001208C(v2, &v9 - v5, &qword_10022AA88, &qword_1001D9620);
  v7 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
    }

    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  *a1 = 0;
  type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.trustedProxyNodeSelected.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.trustedProxyNodeSelected.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
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
  v8 = *(*(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    *v10 = 0;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000B7E60;
  }

  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
  return sub_1000B7E60;
}

void sub_1000B7E60(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.revokedAttestationList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10001208C(v2, &v9 - v5, &qword_10022AA88, &qword_1001D9620);
  v7 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    }

    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  *a1 = _swiftEmptyArrayStorage;
  type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList.init()@<X0>(void *a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.revokedAttestationList.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.revokedAttestationList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
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
  v8 = *(*(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    *v10 = _swiftEmptyArrayStorage;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000B847C;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
  return sub_1000B847C;
}

void sub_1000B847C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.diagnosticInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_10001208C(v2, &v10 - v5, &qword_10022AA88, &qword_1001D9620);
  v7 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_10022AA88, &qword_1001D9620);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    }

    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v9 = a1 + *(result + 20);
  *v9 = 0;
  *(v9 + 8) = 256;
  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.diagnosticInformation.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_10022AA88, &qword_1001D9620);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  v3 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_InvokeResponse.diagnosticInformation.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AA88, &qword_1001D9620) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_10022AA88, &qword_1001D9620);
  v12 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v14 = v11 + *(v8 + 20);
    *v14 = 0;
    *(v14 + 8) = 256;
    return sub_1000B8A60;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  return sub_1000B8A60;
}

void sub_1000B8A60(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    sub_100011F00(v8, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1000B8BFC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000B8C98(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1000AED88(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t static Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t static Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1000AEE18(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(0);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000B901C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000B90B8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_1001D3A00;
  type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestation(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000B9358@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t (*Proto_Ropes_HttpService_PrefetchRequest.capabilities.modify(void *a1))()
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
  v5 = *(*(sub_100011AC0(&qword_1002293A8, &unk_1001D6530) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
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
  v14 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0) + 20);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_1002293A8, &unk_1001D6530);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = _swiftEmptyArrayStorage;
    *(v13 + 8) = 0;
    *(v13 + 10) = 0;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_1002293A8, &unk_1001D6530);
    }
  }

  else
  {
    sub_1000B3928(v7, v13, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  return sub_1000DBF9C;
}

void sub_1000B9600(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[5], v4, type metadata accessor for Proto_Ropes_Common_Capabilities);
    sub_100011F00(v9 + v3, &qword_1002293A8, &unk_1001D6530);
    sub_1000B3928(v4, v9 + v3, type metadata accessor for Proto_Ropes_Common_Capabilities);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000B3E50(v5, type metadata accessor for Proto_Ropes_Common_Capabilities);
  }

  else
  {
    sub_100011F00(v9 + v3, &qword_1002293A8, &unk_1001D6530);
    sub_1000B3928(v5, v9 + v3, type metadata accessor for Proto_Ropes_Common_Capabilities);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_Ropes_HttpService_PrefetchRequest.hasCapabilities.getter()
{
  v1 = sub_100011AC0(&qword_1002293A8, &unk_1001D6530);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  sub_10001208C(v0 + *(v4 + 20), v3, &qword_1002293A8, &unk_1001D6530);
  v5 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100011F00(v3, &qword_1002293A8, &unk_1001D6530);
  return v6;
}

Swift::Void __swiftcall Proto_Ropes_HttpService_PrefetchRequest.clearCapabilities()()
{
  v1 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0) + 20);
  sub_100011F00(v0 + v1, &qword_1002293A8, &unk_1001D6530);
  v2 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Ropes_HttpService_PrefetchRequest.clientRequestedAttestationCount.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0) + 24));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t (*Proto_Ropes_HttpService_PrefetchRequest.clientRequestedAttestationCount.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000A6568;
}

Swift::Void __swiftcall Proto_Ropes_HttpService_PrefetchRequest.clearClientRequestedAttestationCount()()
{
  v1 = v0 + *(type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Ropes_HttpService_PrefetchRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v3 = type metadata accessor for Proto_Ropes_HttpService_PrefetchRequest(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(v3 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t Proto_Ropes_HttpService_PrefetchUnaryResponse.rateLimitConfigurationList.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_100011AC0(&qword_10022AA90, &qword_1001D9628);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  sub_10001208C(v1 + *(v6 + 24), v5, &qword_10022AA90, &qword_1001D9628);
  v7 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000B3928(v5, a1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  *a1 = _swiftEmptyArrayStorage;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_100011F00(v5, &qword_10022AA90, &qword_1001D9628);
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_PrefetchUnaryResponse.rateLimitConfigurationList.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0) + 24);
  sub_100011F00(v1 + v3, &qword_10022AA90, &qword_1001D9628);
  sub_1000B3928(a1, v1 + v3, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Ropes_HttpService_PrefetchUnaryResponse.rateLimitConfigurationList.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100011AC0(&qword_10022AA90, &qword_1001D9628) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
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
  v14 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0) + 24);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_10022AA90, &qword_1001D9628);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = _swiftEmptyArrayStorage;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_10022AA90, &qword_1001D9628);
    }
  }

  else
  {
    sub_1000B3928(v7, v13, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  return sub_1000B9EAC;
}

void sub_1000B9EAC(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[5], v4, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_100011F00(v9 + v3, &qword_10022AA90, &qword_1001D9628);
    sub_1000B3928(v4, v9 + v3, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000B3E50(v5, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  else
  {
    sub_100011F00(v9 + v3, &qword_10022AA90, &qword_1001D9628);
    sub_1000B3928(v5, v9 + v3, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_Ropes_HttpService_PrefetchUnaryResponse.hasRateLimitConfigurationList.getter()
{
  v1 = sub_100011AC0(&qword_10022AA90, &qword_1001D9628);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  sub_10001208C(v0 + *(v4 + 24), v3, &qword_10022AA90, &qword_1001D9628);
  v5 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100011F00(v3, &qword_10022AA90, &qword_1001D9628);
  return v6;
}

Swift::Void __swiftcall Proto_Ropes_HttpService_PrefetchUnaryResponse.clearRateLimitConfigurationList()()
{
  v1 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0) + 24);
  sub_100011F00(v0 + v1, &qword_10022AA90, &qword_1001D9628);
  v2 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Ropes_HttpService_PrefetchUnaryResponse.compressedAttestationList.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100011AC0(&qword_10022AA98, &unk_1001D9630);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  sub_10001208C(v1 + *(v6 + 28), v5, &qword_10022AA98, &unk_1001D9630);
  v7 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000B3928(v5, a1, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1001D3A00;
  *(a1 + 32) = 0;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_100011F00(v5, &qword_10022AA98, &unk_1001D9630);
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_PrefetchUnaryResponse.compressedAttestationList.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0) + 28);
  sub_100011F00(v1 + v3, &qword_10022AA98, &unk_1001D9630);
  sub_1000B3928(a1, v1 + v3, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  v4 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Ropes_HttpService_PrefetchUnaryResponse.compressedAttestationList.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100011AC0(&qword_10022AA98, &unk_1001D9630) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
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
  v14 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0) + 28);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_10022AA98, &unk_1001D9630);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = xmmword_1001D3A00;
    *(v13 + 32) = 0;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_10022AA98, &unk_1001D9630);
    }
  }

  else
  {
    sub_1000B3928(v7, v13, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  }

  return sub_1000BA5EC;
}

void sub_1000BA5EC(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[5], v4, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    sub_100011F00(v9 + v3, &qword_10022AA98, &unk_1001D9630);
    sub_1000B3928(v4, v9 + v3, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000B3E50(v5, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  }

  else
  {
    sub_100011F00(v9 + v3, &qword_10022AA98, &unk_1001D9630);
    sub_1000B3928(v5, v9 + v3, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_Ropes_HttpService_PrefetchUnaryResponse.hasCompressedAttestationList.getter()
{
  v1 = sub_100011AC0(&qword_10022AA98, &unk_1001D9630);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  sub_10001208C(v0 + *(v4 + 28), v3, &qword_10022AA98, &unk_1001D9630);
  v5 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100011F00(v3, &qword_10022AA98, &unk_1001D9630);
  return v6;
}

Swift::Void __swiftcall Proto_Ropes_HttpService_PrefetchUnaryResponse.clearCompressedAttestationList()()
{
  v1 = *(type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0) + 28);
  sub_100011F00(v0 + v1, &qword_10022AA98, &unk_1001D9630);
  v2 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Ropes_HttpService_PrefetchUnaryResponse.init()@<X0>(char *a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  v2 = type metadata accessor for Proto_Ropes_HttpService_PrefetchUnaryResponse(0);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = *(v2 + 28);
  v6 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t Proto_Ropes_HttpService_PrefetchResponse.attestation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  sub_10001208C(v2, &v17 - v5, &qword_100229360, &qword_1001D64D8);
  v7 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_100229360, &qword_1001D64D8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_Common_Attestation);
    }

    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  }

  *a1 = xmmword_1001D3A00;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v8 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v9 = a1 + v8[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v8[8];
  v11 = sub_1001D08D0();
  result = (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v13 = (a1 + v8[9]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v8[10]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v8[11]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a1 + v8[12]);
  *v16 = 0;
  v16[1] = 0;
  return result;
}

uint64_t Proto_Ropes_HttpService_PrefetchResponse.attestation.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_100229360, &qword_1001D64D8);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_Common_Attestation);
  v3 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_PrefetchResponse.attestation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_100011AC0(&qword_100229360, &qword_1001D64D8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v10 = *(*(v9 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_10001208C(v2, v8, &qword_100229360, &qword_1001D64D8);
  v13 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_100011F00(v8, &qword_100229360, &qword_1001D64D8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000B3928(v8, v12, type metadata accessor for Proto_Ropes_Common_Attestation);
      return sub_1000BB000;
    }

    sub_1000B3E50(v8, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  }

  *v12 = xmmword_1001D3A00;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0xE000000000000000;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v15 = v12 + v9[7];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = v9[8];
  v17 = sub_1001D08D0();
  (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
  v18 = (v12 + v9[9]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v12 + v9[10]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v12 + v9[11]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v12 + v9[12]);
  *v21 = 0;
  v21[1] = 0;
  return sub_1000BB000;
}

void sub_1000BB000(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_Common_Attestation);
    sub_100011F00(v8, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_Common_Attestation);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_Common_Attestation);
  }

  else
  {
    sub_100011F00(**a1, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_Common_Attestation);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_PrefetchResponse.rateLimitConfigurationList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10001208C(v2, &v9 - v5, &qword_100229360, &qword_1001D64D8);
  v7 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_100229360, &qword_1001D64D8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    }

    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  }

  *a1 = _swiftEmptyArrayStorage;
  type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_PrefetchResponse.rateLimitConfigurationList.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_100229360, &qword_1001D64D8);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  v3 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_PrefetchResponse.rateLimitConfigurationList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_100229360, &qword_1001D64D8) - 8) + 64);
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
  v8 = *(*(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_10001208C(v1, v7, &qword_100229360, &qword_1001D64D8);
  v11 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_100229360, &qword_1001D64D8);
LABEL_15:
    *v10 = _swiftEmptyArrayStorage;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000BB5DC;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  return sub_1000BB5DC;
}

void sub_1000BB5DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_100011F00(v8, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  else
  {
    sub_100011F00(**a1, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_PrefetchResponse.diagnosticInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_100229360, &qword_1001D64D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_10001208C(v2, &v10 - v5, &qword_100229360, &qword_1001D64D8);
  v7 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &qword_100229360, &qword_1001D64D8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    }

    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
  }

  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v9 = a1 + *(result + 20);
  *v9 = 0;
  *(v9 + 8) = 256;
  return result;
}

uint64_t Proto_Ropes_HttpService_PrefetchResponse.diagnosticInformation.setter(uint64_t a1)
{
  sub_100011F00(v1, &qword_100229360, &qword_1001D64D8);
  sub_1000B3928(a1, v1, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  v3 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Proto_Ropes_HttpService_PrefetchResponse.diagnosticInformation.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_100229360, &qword_1001D64D8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_100229360, &qword_1001D64D8);
  v12 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_100229360, &qword_1001D64D8);
LABEL_15:
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v14 = v11 + *(v8 + 20);
    *v14 = 0;
    *(v14 + 8) = 256;
    return sub_1000BBBC0;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  return sub_1000BBBC0;
}

void sub_1000BBBC0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    sub_100011F00(v8, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  }

  else
  {
    sub_100011F00(**a1, &qword_100229360, &qword_1001D64D8);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Proto_Ropes_HttpService_ConfigRequest.rateLimitConfigRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AAA0, &qword_1001D9640);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  sub_10001208C(v2, &v13 - v5, &qword_10022AAA0, &qword_1001D9640);
  v7 = type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  }

  sub_100011F00(v6, &qword_10022AAA0, &qword_1001D9640);
  *a1 = sub_1000D66E8(_swiftEmptyArrayStorage);
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v8 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
  result = _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v10 = (a1 + v8[7]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[8]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v8[9]);
  *v12 = 0;
  v12[1] = 0;
  return result;
}

void (*Proto_Ropes_HttpService_ConfigRequest.rateLimitConfigRequest.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AAA0, &qword_1001D9640) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
  v9 = *(*(v8 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 1) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_10022AAA0, &qword_1001D9640);
  v12 = type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_10022AAA0, &qword_1001D9640);
    *v11 = sub_1000D66E8(_swiftEmptyArrayStorage);
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v14 = (v11 + v8[7]);
    *v14 = 0;
    v14[1] = 0;
    v15 = (v11 + v8[8]);
    *v15 = 0;
    v15[1] = 0;
    v16 = (v11 + v8[9]);
    *v16 = 0;
    v16[1] = 0;
  }

  else
  {
    sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  }

  return sub_1000BC218;
}

void sub_1000BC218(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    sub_100011F00(v8, &qword_10022AAA0, &qword_1001D9640);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AAA0, &qword_1001D9640);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static Proto_Ropes_HttpService_ConfigRequest.OneOf_Type.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022AAA8, &qword_1001D9648);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = (&v10 - v6);
  v8 = *(v5 + 56);
  sub_1000B44A8(a1, &v10 - v6, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  sub_1000B44A8(a2, v7 + v8, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  LOBYTE(a2) = _s20privatecloudcomputed022Proto_Ropes_RateLimit_dE13ConfigRequestV2eeoiySbAC_ACtFZ_0(v7, v7 + v8);
  sub_1000B3E50(v7 + v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  return a2 & 1;
}

uint64_t sub_1000BC4F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022AAA8, &qword_1001D9648);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_1000B44A8(a1, &v10 - v6, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  sub_1000B44A8(a2, &v7[v8], type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type);
  LOBYTE(a2) = static Proto_Ropes_RateLimit_RateLimitConfigRequest.== infix(_:_:)(v7, &v7[v8]);
  sub_1000B3E50(&v7[v8], type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
  return a2 & 1;
}

uint64_t Proto_Ropes_HttpService_ConfigResponse.rateLimitConfigurationList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_10022AAB0, &unk_1001D9650);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10001208C(v2, &v9 - v5, &qword_10022AAB0, &unk_1001D9650);
  v7 = type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    return sub_1000B3928(v6, a1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  sub_100011F00(v6, &qword_10022AAB0, &unk_1001D9650);
  *a1 = _swiftEmptyArrayStorage;
  type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000BC7F0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  sub_100011F00(v5, a2, a3);
  sub_1000B3928(a1, v5, a4);
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v5, 0, 1, v9);
}

void (*Proto_Ropes_HttpService_ConfigResponse.rateLimitConfigurationList.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_10022AAB0, &unk_1001D9650) - 8) + 64);
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
  v8 = *(*(type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_10001208C(v1, v7, &qword_10022AAB0, &unk_1001D9650);
  v11 = type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AAB0, &unk_1001D9650);
    *v10 = _swiftEmptyArrayStorage;
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  }

  else
  {
    sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  return sub_1000BCA78;
}

void sub_1000BCA78(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1000B44A8((*a1)[3], v5, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_100011F00(v8, &qword_10022AAB0, &unk_1001D9650);
    sub_1000B3928(v5, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1000B3E50(v6, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  else
  {
    sub_100011F00(**a1, &qword_10022AAB0, &unk_1001D9650);
    sub_1000B3928(v6, v8, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1000BCD9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6C00();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.routingParameters.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = sub_100011AC0(&qword_10022AA58, &qword_1001D95F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0);
  sub_10001208C(v1 + *(v6 + 36), v5, &qword_10022AA58, &qword_1001D95F8);
  v7 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000B3928(v5, a1, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
  }

  *a1 = sub_1000D65D4(_swiftEmptyArrayStorage);
  a1[1] = sub_1000D69B0(_swiftEmptyArrayStorage);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_100011F00(v5, &qword_10022AA58, &qword_1001D95F8);
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters.init()@<X0>(unint64_t *a1@<X8>)
{
  *a1 = sub_1000D65D4(_swiftEmptyArrayStorage);
  a1[1] = sub_1000D69B0(_swiftEmptyArrayStorage);
  type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.routingParameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0) + 36);
  sub_100011F00(v1 + v3, &qword_10022AA58, &qword_1001D95F8);
  sub_1000B3928(a1, v1 + v3, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
  v4 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Ropes_HttpService_AdminApiResponse.Workload.routingParameters.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_100011AC0(&qword_10022AA58, &qword_1001D95F8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
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
  v14 = *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0) + 36);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_10022AA58, &qword_1001D95F8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = sub_1000D65D4(_swiftEmptyArrayStorage);
    v13[1] = sub_1000D69B0(_swiftEmptyArrayStorage);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_10022AA58, &qword_1001D95F8);
    }
  }

  else
  {
    sub_1000B3928(v7, v13, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
  }

  return sub_1000BD2E4;
}

void sub_1000BD2E4(uint64_t **a1, char a2)
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
    sub_1000B44A8((*a1)[5], v4, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
    sub_100011F00(v9 + v3, &qword_10022AA58, &qword_1001D95F8);
    sub_1000B3928(v4, v9 + v3, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1000B3E50(v5, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
  }

  else
  {
    sub_100011F00(v9 + v3, &qword_10022AA58, &qword_1001D95F8);
    sub_1000B3928(v5, v9 + v3, type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_Ropes_HttpService_AdminApiResponse.Workload.hasRoutingParameters.getter()
{
  v1 = sub_100011AC0(&qword_10022AA58, &qword_1001D95F8);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0);
  sub_10001208C(v0 + *(v4 + 36), v3, &qword_10022AA58, &qword_1001D95F8);
  v5 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100011F00(v3, &qword_10022AA58, &qword_1001D95F8);
  return v6;
}

Swift::Void __swiftcall Proto_Ropes_HttpService_AdminApiResponse.Workload.clearRoutingParameters()()
{
  v1 = *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0) + 36);
  sub_100011F00(v0 + v1, &qword_10022AA58, &qword_1001D95F8);
  v2 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0) + 32);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0) + 32);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.Workload.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = _swiftEmptyArrayStorage;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v2 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload(0);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v3 = *(v2 + 36);
  v4 = type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.Workload.Parameters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse.ApiEndpoint(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  a1[1] = _swiftEmptyArrayStorage;
  type metadata accessor for Proto_Ropes_HttpService_AdminApiResponse(0);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000BD950()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_InvokeRequest._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_InvokeRequest._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D5410;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "setup_request";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "terminate";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1000BDC00(v5, a1, a2, a3);
    }

    else if (result == 3)
    {
      sub_1000BE1BC(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000BDC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = sub_100011AC0(&qword_10022AA80, &unk_1001E1C40);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100011AC0(&qword_10022BEA0, &qword_1001DB930);
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
  sub_10001208C(a1, v12, &qword_10022AA80, &unk_1001E1C40);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_10022AA80, &unk_1001E1C40);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1000B3928(v12, v19, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
    sub_1000B3928(v19, v17, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
      v29 = v44;
    }

    else
    {
      sub_100011F00(v24, &qword_10022BEA0, &qword_1001DB930);
      v31 = v40;
      sub_1000B3928(v17, v40, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
      sub_1000B3928(v31, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_1000D6BB8(&qword_10022ABD0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
  v33 = v43;
  sub_1001D0AE0();
  if (v33)
  {
    return sub_100011F00(v24, &qword_10022BEA0, &qword_1001DB930);
  }

  sub_10001208C(v24, v32, &qword_10022BEA0, &qword_1001DB930);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_100011F00(v24, &qword_10022BEA0, &qword_1001DB930);
    return sub_100011F00(v32, &qword_10022BEA0, &qword_1001DB930);
  }

  else
  {
    v35 = v39;
    sub_1000B3928(v32, v39, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022BEA0, &qword_1001DB930);
    v36 = v38;
    sub_100011F00(v38, &qword_10022AA80, &unk_1001E1C40);
    sub_1000B3928(v35, v36, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1000BE1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_Ropes_Common_ClientTerminate(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = sub_100011AC0(&qword_10022AA80, &unk_1001E1C40);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100011AC0(&qword_10022BEA8, &qword_1001DB938);
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
  sub_10001208C(a1, v12, &qword_10022AA80, &unk_1001E1C40);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_10022AA80, &unk_1001E1C40);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1000B3928(v12, v19, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
    sub_1000B3928(v19, v17, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100011F00(v24, &qword_10022BEA8, &qword_1001DB938);
      v31 = v40;
      sub_1000B3928(v17, v40, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
      sub_1000B3928(v31, v24, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1000D6BB8(&qword_10022A2F8, type metadata accessor for Proto_Ropes_Common_ClientTerminate, &protocol conformance descriptor for Proto_Ropes_Common_ClientTerminate);
  v33 = v43;
  sub_1001D0AE0();
  if (v33)
  {
    return sub_100011F00(v24, &qword_10022BEA8, &qword_1001DB938);
  }

  sub_10001208C(v24, v32, &qword_10022BEA8, &qword_1001DB938);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_100011F00(v24, &qword_10022BEA8, &qword_1001DB938);
    return sub_100011F00(v32, &qword_10022BEA8, &qword_1001DB938);
  }

  else
  {
    v35 = v39;
    sub_1000B3928(v32, v39, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022BEA8, &qword_1001DB938);
    v36 = v38;
    sub_100011F00(v38, &qword_10022AA80, &unk_1001E1C40);
    sub_1000B3928(v35, v36, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_100011AC0(&qword_10022AA80, &unk_1001E1C40);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - v9;
  sub_10001208C(v3, &v13 - v9, &qword_10022AA80, &unk_1001E1C40);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000BEB40(v3, a1, a2, a3);
  }

  else
  {
    sub_1000BE908(v3, a1, a2, a3);
  }

  result = sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for Proto_Ropes_HttpService_InvokeRequest(0);
    return sub_1001D0920();
  }

  return result;
}

uint64_t sub_1000BE908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA80, &unk_1001E1C40);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_10022AA80, &unk_1001E1C40);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA80, &unk_1001E1C40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
    sub_1000D6BB8(&qword_10022ABD0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
    sub_1001D0C20();
    return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);
  }

  result = sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000BEB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA80, &unk_1001E1C40);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_Common_ClientTerminate(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_10022AA80, &unk_1001E1C40);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA80, &unk_1001E1C40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
    sub_1000D6BB8(&qword_10022A2F8, type metadata accessor for Proto_Ropes_Common_ClientTerminate, &protocol conformance descriptor for Proto_Ropes_Common_ClientTerminate);
    sub_1001D0C20();
    return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_Common_ClientTerminate);
  }

  result = sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000BEE0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BDB8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BEEAC(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022ABB8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BEF18(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022ABB8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest);

  return sub_1001D0B40();
}

void sub_1000BEF94()
{
  v0._countAndFlagsBits = 0x655270757465532ELL;
  v0._object = 0xED00007473657571;
  sub_1001D18B0(v0);
  static Proto_Ropes_HttpService_InvokeRequest.SetupRequest.protoMessageName = 0xD00000000000002DLL;
  qword_1002431B0 = 0x80000001001E4900;
}

uint64_t *Proto_Ropes_HttpService_InvokeRequest.SetupRequest.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227820 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_InvokeRequest.SetupRequest.protoMessageName;
}

uint64_t sub_1000BF084()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_InvokeRequest.SetupRequest._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_InvokeRequest.SetupRequest._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D62F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "encrypted_request_ohttp_context";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attestation_mappings";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "capabilities";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "trusted_proxy_request_payload";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "trusted_proxy_response_bypass_ohttp_contexts";
  *(v15 + 8) = 44;
  *(v15 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1001D09E0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1001D0AC0();
        }

        else if (result == 2)
        {
          type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping(0);
          sub_1000D6BB8(&qword_10022AAC0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
          sub_1001D0AD0();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1000BF4E4(a1, v5, a2, a3);
            break;
          case 4:
            type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
            sub_1001D0A40();
            break;
          case 5:
            sub_1001D0A70();
            break;
        }
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t sub_1000BF4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  sub_1000D6BB8(&qword_10022A2B0, type metadata accessor for Proto_Ropes_Common_Capabilities, &protocol conformance descriptor for Proto_Ropes_Common_Capabilities);
  return sub_1001D0AE0();
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1001D0C00(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping(0), sub_1000D6BB8(&qword_10022AAC0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping), result = sub_1001D0C10(), !v4))
    {
      result = sub_1000BF6F0(v3, a1, a2, a3);
      if (!v4)
      {
        sub_1000BF90C(v3);
        if (*(*(v3 + 16) + 16))
        {
          sub_1001D0B90();
        }

        type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
        return sub_1001D0920();
      }
    }
  }

  return result;
}

uint64_t sub_1000BF6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  sub_10001208C(a1 + *(v12 + 32), v7, &qword_1002293A8, &unk_1001D6530);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100011F00(v7, &qword_1002293A8, &unk_1001D6530);
  }

  sub_1000B3928(v7, v11, type metadata accessor for Proto_Ropes_Common_Capabilities);
  sub_1000D6BB8(&qword_10022A2B0, type metadata accessor for Proto_Ropes_Common_Capabilities, &protocol conformance descriptor for Proto_Ropes_Common_Capabilities);
  sub_1001D0C20();
  return sub_1000B3E50(v11, type metadata accessor for Proto_Ropes_Common_Capabilities);
}

uint64_t sub_1000BF90C(uint64_t a1)
{
  result = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest(0);
  v3 = a1 + *(result + 36);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_100012038(*v3, *(v3 + 8));
    sub_1001D0BC0();
    return sub_10002683C(v5, v4);
  }

  return result;
}

double sub_1000BF9F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = _swiftEmptyArrayStorage;
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = *(a1 + 32);
  v5 = type metadata accessor for Proto_Ropes_Common_Capabilities(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  result = 0.0;
  *(a2 + *(a1 + 36)) = xmmword_1001D6800;
  return result;
}

uint64_t sub_1000BFAE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BDB0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000BFB88(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022ABD0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BFBF4(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022ABD0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest);

  return sub_1001D0B40();
}

uint64_t sub_1000BFC70()
{
  if (qword_100227820 != -1)
  {
    swift_once();
  }

  v1 = static Proto_Ropes_HttpService_InvokeRequest.SetupRequest.protoMessageName;
  v2 = qword_1002431B0;
  swift_bridgeObjectRetain_n();
  v3._object = 0x80000001001E4E40;
  v3._countAndFlagsBits = 0xD000000000000013;
  sub_1001D18B0(v3);

  static Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.protoMessageName = v1;
  *algn_1002431D8 = v2;
  return result;
}

uint64_t *Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227830 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.protoMessageName;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

    else if (result == 2)
    {
      sub_1001D0AC0();
    }
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1001D0BF0(), !v4))
  {
    if (!*(v3 + 16) || (result = sub_1001D0C00(), !v4))
    {
      type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping(0);
      return sub_1001D0920();
    }
  }

  return result;
}

uint64_t static Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1001D2470() & 1) == 0 || *(a1 + 4) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping(0);
  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000C0048@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000C00CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BDA8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C016C(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AAC0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C01D8(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022AAC0, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);

  return sub_1001D0B40();
}

uint64_t sub_1000C0254(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v5 && (sub_1001D2470() & 1) == 0 || *(a1 + 4) != *(a2 + 16))
  {
    return 0;
  }

  sub_1001D0940();
  sub_1000D6BB8(&qword_100229928, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t sub_1000C0348()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_Ropes_HttpService_InvokeResponse._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_Ropes_HttpService_InvokeResponse._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1001D3C60;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "attestation_list";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_1001D0C30();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 8;
  *v9 = "compressed_attestation_list";
  *(v9 + 8) = 27;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 9;
  *v11 = "attestation";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 2;
  *v13 = "ready_for_more_chunks";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "rate_limit_configuration_list";
  *(v15 + 1) = 29;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "expired_attestation_list";
  *(v17 + 1) = 24;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "no_further_attestations";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "trusted_proxy_node_selected";
  *(v21 + 1) = 27;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 11;
  *v22 = "revoked_attestation_list";
  *(v22 + 8) = 24;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "diagnostic_information";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v8();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1001D09E0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 7)
    {
      if (result <= 9)
      {
        if (result == 8)
        {
          sub_1000C25C8(v5, a1, a2, a3);
        }

        else
        {
          sub_1000C2B84(v5, a1, a2, a3);
        }
      }

      else
      {
        switch(result)
        {
          case 10:
            sub_1000C3140(v5, a1, a2, a3);
            break;
          case 11:
            sub_1000C36FC(v5, a1, a2, a3);
            break;
          case 12:
            sub_1000C3CB8(v5, a1, a2, a3);
            break;
        }
      }
    }

    else if (result <= 3)
    {
      if (result == 1)
      {
        sub_1000C0928(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        sub_1000C0ED8(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 4:
          sub_1000C1494(v5, a1, a2, a3);
          break;
        case 5:
          sub_1000C1A50(v5, a1, a2, a3);
          break;
        case 7:
          sub_1000C200C(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1000C0928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_Ropes_Common_AttestationList(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v37 - v9;
  v10 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100011AC0(&qword_10022BE68, &qword_1001DB8F8);
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
  sub_10001208C(a1, v12, &qword_10022AA88, &qword_1001D9620);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_10022AA88, &qword_1001D9620);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1000B3928(v12, v19, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v19, v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v29 = v44;
    }

    else
    {
      sub_100011F00(v24, &qword_10022BE68, &qword_1001DB8F8);
      v31 = v39;
      sub_1000B3928(v17, v39, type metadata accessor for Proto_Ropes_Common_AttestationList);
      sub_1000B3928(v31, v24, type metadata accessor for Proto_Ropes_Common_AttestationList);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_1000D6BB8(&qword_10022A2C8, type metadata accessor for Proto_Ropes_Common_AttestationList, &protocol conformance descriptor for Proto_Ropes_Common_AttestationList);
  v33 = v43;
  sub_1001D0AE0();
  if (v33)
  {
    return sub_100011F00(v24, &qword_10022BE68, &qword_1001DB8F8);
  }

  sub_10001208C(v24, v32, &qword_10022BE68, &qword_1001DB8F8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_100011F00(v24, &qword_10022BE68, &qword_1001DB8F8);
    return sub_100011F00(v32, &qword_10022BE68, &qword_1001DB8F8);
  }

  else
  {
    v35 = v40;
    sub_1000B3928(v32, v40, type metadata accessor for Proto_Ropes_Common_AttestationList);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022BE68, &qword_1001DB8F8);
    v36 = v38;
    sub_100011F00(v38, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v35, v36, type metadata accessor for Proto_Ropes_Common_AttestationList);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1000C0ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100011AC0(&qword_10022BE70, &qword_1001DB900);
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
  sub_10001208C(a1, v12, &qword_10022AA88, &qword_1001D9620);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_10022AA88, &qword_1001D9620);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1000B3928(v12, v19, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v19, v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_100011F00(v24, &qword_10022BE70, &qword_1001DB900);
      v31 = v40;
      sub_1000B3928(v17, v40, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
      sub_1000B3928(v31, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1000D6BB8(&qword_10022AC08, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
  v33 = v43;
  sub_1001D0AE0();
  if (v33)
  {
    return sub_100011F00(v24, &qword_10022BE70, &qword_1001DB900);
  }

  sub_10001208C(v24, v32, &qword_10022BE70, &qword_1001DB900);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_100011F00(v24, &qword_10022BE70, &qword_1001DB900);
    return sub_100011F00(v32, &qword_10022BE70, &qword_1001DB900);
  }

  else
  {
    v35 = v39;
    sub_1000B3928(v32, v39, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022BE70, &qword_1001DB900);
    v36 = v38;
    sub_100011F00(v38, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v35, v36, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1000C1494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
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
  sub_10001208C(a1, v12, &qword_10022AA88, &qword_1001D9620);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_10022AA88, &qword_1001D9620);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1000B3928(v12, v19, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v19, v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
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
      sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
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
    sub_100011F00(v38, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v35, v36, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1000C1A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100011AC0(&qword_10022BE78, &qword_1001DB908);
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
  sub_10001208C(a1, v12, &qword_10022AA88, &qword_1001D9620);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_10022AA88, &qword_1001D9620);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1000B3928(v12, v19, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v19, v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_100011F00(v24, &qword_10022BE78, &qword_1001DB908);
      v31 = v40;
      sub_1000B3928(v17, v40, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
      sub_1000B3928(v31, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1000D6BB8(&qword_10022AC38, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
  v33 = v43;
  sub_1001D0AE0();
  if (v33)
  {
    return sub_100011F00(v24, &qword_10022BE78, &qword_1001DB908);
  }

  sub_10001208C(v24, v32, &qword_10022BE78, &qword_1001DB908);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_100011F00(v24, &qword_10022BE78, &qword_1001DB908);
    return sub_100011F00(v32, &qword_10022BE78, &qword_1001DB908);
  }

  else
  {
    v35 = v39;
    sub_1000B3928(v32, v39, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022BE78, &qword_1001DB908);
    v36 = v38;
    sub_100011F00(v38, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v35, v36, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1000C200C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100011AC0(&qword_10022BE80, &qword_1001DB910);
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
  sub_10001208C(a1, v12, &qword_10022AA88, &qword_1001D9620);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_10022AA88, &qword_1001D9620);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1000B3928(v12, v19, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v19, v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_100011F00(v24, &qword_10022BE80, &qword_1001DB910);
      v31 = v40;
      sub_1000B3928(v17, v40, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
      sub_1000B3928(v31, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1000D6BB8(&qword_10022AC20, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
  v33 = v43;
  sub_1001D0AE0();
  if (v33)
  {
    return sub_100011F00(v24, &qword_10022BE80, &qword_1001DB910);
  }

  sub_10001208C(v24, v32, &qword_10022BE80, &qword_1001DB910);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_100011F00(v24, &qword_10022BE80, &qword_1001DB910);
    return sub_100011F00(v32, &qword_10022BE80, &qword_1001DB910);
  }

  else
  {
    v35 = v39;
    sub_1000B3928(v32, v39, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022BE80, &qword_1001DB910);
    v36 = v38;
    sub_100011F00(v38, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v35, v36, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1000C25C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100011AC0(&qword_10022AA98, &unk_1001D9630);
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
  sub_10001208C(a1, v12, &qword_10022AA88, &qword_1001D9620);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_10022AA88, &qword_1001D9620);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1000B3928(v12, v19, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v19, v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100011F00(v24, &qword_10022AA98, &unk_1001D9630);
      v31 = v40;
      sub_1000B3928(v17, v40, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
      sub_1000B3928(v31, v24, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1000D6BB8(&qword_10022A2E0, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList, &protocol conformance descriptor for Proto_Ropes_Common_CompressedAttestationList);
  v33 = v43;
  sub_1001D0AE0();
  if (v33)
  {
    return sub_100011F00(v24, &qword_10022AA98, &unk_1001D9630);
  }

  sub_10001208C(v24, v32, &qword_10022AA98, &unk_1001D9630);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_100011F00(v24, &qword_10022AA98, &unk_1001D9630);
    return sub_100011F00(v32, &qword_10022AA98, &unk_1001D9630);
  }

  else
  {
    v35 = v39;
    sub_1000B3928(v32, v39, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022AA98, &unk_1001D9630);
    v36 = v38;
    sub_100011F00(v38, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v35, v36, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1000C2B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
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
  sub_10001208C(a1, v12, &qword_10022AA88, &qword_1001D9620);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_10022AA88, &qword_1001D9620);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1000B3928(v12, v19, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v19, v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100011F00(v24, &qword_10022BE38, &qword_1001DB8C8);
      v31 = v40;
      sub_1000B3928(v17, v40, type metadata accessor for Proto_Ropes_Common_Attestation);
      sub_1000B3928(v31, v24, type metadata accessor for Proto_Ropes_Common_Attestation);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v29 = v44;
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
    v35 = v39;
    sub_1000B3928(v32, v39, type metadata accessor for Proto_Ropes_Common_Attestation);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022BE38, &qword_1001DB8C8);
    v36 = v38;
    sub_100011F00(v38, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v35, v36, type metadata accessor for Proto_Ropes_Common_Attestation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1000C3140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100011AC0(&qword_10022BE88, &qword_1001DB918);
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
  sub_10001208C(a1, v12, &qword_10022AA88, &qword_1001D9620);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_10022AA88, &qword_1001D9620);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1000B3928(v12, v19, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v19, v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_100011F00(v24, &qword_10022BE88, &qword_1001DB918);
      v31 = v40;
      sub_1000B3928(v17, v40, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
      sub_1000B3928(v31, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1000D6BB8(&qword_10022AC50, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
  v33 = v43;
  sub_1001D0AE0();
  if (v33)
  {
    return sub_100011F00(v24, &qword_10022BE88, &qword_1001DB918);
  }

  sub_10001208C(v24, v32, &qword_10022BE88, &qword_1001DB918);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_100011F00(v24, &qword_10022BE88, &qword_1001DB918);
    return sub_100011F00(v32, &qword_10022BE88, &qword_1001DB918);
  }

  else
  {
    v35 = v39;
    sub_1000B3928(v32, v39, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022BE88, &qword_1001DB918);
    v36 = v38;
    sub_100011F00(v38, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v35, v36, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1000C36FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v37 - v9;
  v10 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100011AC0(&qword_10022BE90, &qword_1001DB920);
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
  sub_10001208C(a1, v12, &qword_10022AA88, &qword_1001D9620);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_10022AA88, &qword_1001D9620);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1000B3928(v12, v19, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v19, v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_100011F00(v24, &qword_10022BE90, &qword_1001DB920);
      v31 = v40;
      sub_1000B3928(v17, v40, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
      sub_1000B3928(v31, v24, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1000D6BB8(&qword_10022AC78, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
  v33 = v43;
  sub_1001D0AE0();
  if (v33)
  {
    return sub_100011F00(v24, &qword_10022BE90, &qword_1001DB920);
  }

  sub_10001208C(v24, v32, &qword_10022BE90, &qword_1001DB920);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_100011F00(v24, &qword_10022BE90, &qword_1001DB920);
    return sub_100011F00(v32, &qword_10022BE90, &qword_1001DB920);
  }

  else
  {
    v35 = v39;
    sub_1000B3928(v32, v39, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    if (v28 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v24, &qword_10022BE90, &qword_1001DB920);
    v36 = v38;
    sub_100011F00(v38, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v35, v36, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1000C3CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
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
  sub_10001208C(a1, v12, &qword_10022AA88, &qword_1001D9620);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_100011F00(v12, &qword_10022AA88, &qword_1001D9620);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1000B3928(v12, v19, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    sub_1000B3928(v19, v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
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
      sub_1000B3E50(v17, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
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
    sub_100011F00(v38, &qword_10022AA88, &qword_1001D9620);
    sub_1000B3928(v35, v36, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  sub_10001208C(v3, &v14 - v9, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_1000C5080(v3, a1, a2, a3);
        }

        else
        {
          sub_1000C456C(v3, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_1000C52B8(v3, a1, a2, a3);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_1000C47A0(v3, a1, a2, a3);
      }

      else
      {
        sub_1000C49D8(v3, a1, a2, a3);
      }

      goto LABEL_23;
    }

    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_1000C4C10(v3, a1, a2, a3);
      }

      else
      {
        sub_1000C4E48(v3, a1, a2, a3);
      }

LABEL_23:
      result = sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      if (v4)
      {
        return result;
      }

      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 7)
    {
      sub_1000C54F0(v3, a1, a2, a3);
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload == 8)
    {
      sub_1000C5728(v3, a1, a2, a3);
      if (v4)
      {
        return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      }
    }

    else
    {
      sub_1000C5960(v3, a1, a2, a3);
      if (v4)
      {
        return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      }
    }

    sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  }

LABEL_24:
  type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
  return sub_1001D0920();
}

uint64_t sub_1000C456C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_Common_AttestationList(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_Common_AttestationList);
    sub_1000D6BB8(&qword_10022A2C8, type metadata accessor for Proto_Ropes_Common_AttestationList, &protocol conformance descriptor for Proto_Ropes_Common_AttestationList);
    sub_1001D0C20();
    return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_Common_AttestationList);
  }

  result = sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C47A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
    sub_1000D6BB8(&qword_10022AC08, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
    sub_1001D0C20();
    return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);
  }

  result = sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C49D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1000D6BB8(&qword_10022BE10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList, &protocol conformance descriptor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1001D0C20();
    return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  }

  result = sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C4C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    sub_1000D6BB8(&qword_10022AC38, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
    sub_1001D0C20();
    return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
  }

  result = sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C4E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
    sub_1000D6BB8(&qword_10022AC20, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
    sub_1001D0C20();
    return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);
  }

  result = sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C5080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_Common_CompressedAttestationList(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
    sub_1000D6BB8(&qword_10022A2E0, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList, &protocol conformance descriptor for Proto_Ropes_Common_CompressedAttestationList);
    sub_1001D0C20();
    return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_Common_CompressedAttestationList);
  }

  result = sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C52B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_Common_Attestation);
    sub_1000D6BB8(&qword_10022A180, type metadata accessor for Proto_Ropes_Common_Attestation, &protocol conformance descriptor for Proto_Ropes_Common_Attestation);
    sub_1001D0C20();
    return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_Common_Attestation);
  }

  result = sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C54F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
    sub_1000D6BB8(&qword_10022AC50, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
    sub_1001D0C20();
    return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
  }

  result = sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C5728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    sub_1000D6BB8(&qword_10022AC78, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
    sub_1001D0C20();
    return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.RevokedAttestationList);
  }

  result = sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C5960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a1, v7, &qword_10022AA88, &qword_1001D9620);
  v11 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_10022AA88, &qword_1001D9620);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1000B3928(v7, v10, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    sub_1000D6BB8(&qword_10022A310, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation, &protocol conformance descriptor for Proto_Ropes_Common_DiagnosticInformation);
    sub_1001D0C20();
    return sub_1000B3E50(v10, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
  }

  result = sub_1000B3E50(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t sub_1000C5BFC@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_1000C5CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BDA0, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C5D40(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_100229628, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C5DAC(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_100229628, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse);

  return sub_1001D0B40();
}

void sub_1000C5E28()
{
  v0._object = 0x80000001001E4D60;
  v0._countAndFlagsBits = 0xD000000000000013;
  sub_1001D18B0(v0);
  static Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks.protoMessageName = 0xD00000000000002ELL;
  *algn_100243218 = 0x80000001001E4930;
}

uint64_t *Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227848 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks.protoMessageName;
}

uint64_t sub_1000C5FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD98, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C6078(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AC08, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C60E4(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022AC08, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.ReadyForMoreChunks);

  return sub_1001D0B40();
}

void sub_1000C6160()
{
  v0._object = 0x80000001001E4D40;
  v0._countAndFlagsBits = 0xD000000000000016;
  sub_1001D18B0(v0);
  static Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations.protoMessageName = 0xD00000000000002ELL;
  qword_100243240 = 0x80000001001E4930;
}

uint64_t *Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227858 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations.protoMessageName;
}

uint64_t sub_1000C6258(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1001D0C60();
  sub_10003B610(v3, a2);
  sub_10003A37C(v3, a2);
  return sub_1001D0C50();
}

uint64_t sub_1000C6358(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D6BB8(&qword_10022BD90, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000C63F8(uint64_t a1)
{
  v2 = sub_1000D6BB8(&qword_10022AC20, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C6464(uint64_t a1, uint64_t a2)
{
  sub_1000D6BB8(&qword_10022AC20, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse.NoFurtherAttestations);

  return sub_1001D0B40();
}

void sub_1000C64E0()
{
  v0._object = 0x80000001001E4D20;
  v0._countAndFlagsBits = 0xD000000000000017;
  sub_1001D18B0(v0);
  static Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList.protoMessageName = 0xD00000000000002ELL;
  *algn_100243268 = 0x80000001001E4930;
}

uint64_t *Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList.protoMessageName.unsafeMutableAddressor()
{
  if (qword_100227868 != -1)
  {
    swift_once();
  }

  return &static Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList.protoMessageName;
}

uint64_t sub_1000C65E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1001D0C60();
  sub_10003B610(v5, a2);
  sub_10003A37C(v5, a2);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v6 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001D5410;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "node_identifier";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v12 = enum case for _NameMap.NameDescription.standard(_:);
  v13 = sub_1001D0C30();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = a3;
  *(v15 + 1) = a4;
  v15[16] = 2;
  v14();
  return sub_1001D0C40();
}

uint64_t Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

    else if (result == 2)
    {
      sub_1001D0A10();
    }
  }

  return result;
}