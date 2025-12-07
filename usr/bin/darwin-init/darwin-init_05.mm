unsigned __int8 *sub_100084214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100083890(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
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

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
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

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100084790(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return String.removeSubrange(_:)();
}

unint64_t sub_10008481C()
{
  result = qword_1004A8460;
  if (!qword_1004A8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8460);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for EarliestTimeFilter(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EarliestTimeFilter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EarliestTimeFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100084970@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1000849F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_100084AE8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  (*(v2 + 16))(v7, v0 + v8, v1);
  Date.init()();
  v9 = static Date.< infix(_:_:)();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v7, v1);
  return v9 & 1;
}

uint64_t sub_100084C38(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100086A00(&qword_1004A7A60, type metadata accessor for AuthToken, &protocol conformance descriptor for AuthToken);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t type metadata accessor for AuthToken(uint64_t a1)
{
  result = qword_1004A84B8;
  if (!qword_1004A84B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100084D50()
{
  sub_10008559C();
  type metadata accessor for AuthToken(0);
  sub_100086A00(&qword_1004A8468, type metadata accessor for AuthToken, &protocol conformance descriptor for AuthToken);
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v0;
}

uint64_t sub_100084E04()
{
  v2 = v0;
  v44 = type metadata accessor for DispatchQoS.QoSClass();
  v51 = *(v44 - 8);
  __chkstk_darwin(v44);
  v48 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v47 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10008559C();
  v49 = v2;
  type metadata accessor for AuthToken(0);
  sub_100086A00(&qword_1004A8468, type metadata accessor for AuthToken, &protocol conformance descriptor for AuthToken);
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v16 = v15;

  if (!v1)
  {
    v42 = v11;
    v43 = v8;
    static String.Encoding.utf8.getter();
    v17 = String.init(data:encoding:)();
    if (v18)
    {
      v13 = v17;
      sub_100031928(v14, v16);
    }

    else
    {
      v41 = 0x800000010042E500;
      v49 = 0;
      v50 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v49 = 0xD000000000000012;
      v50 = 0x800000010042E570;
      v20 = [v2 description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v16;
      v22 = v21;
      v24 = v23;

      v25._countAndFlagsBits = v22;
      v25._object = v24;
      String.append(_:)(v25);

      v26._countAndFlagsBits = 0xD000000000000014;
      v26._object = 0x800000010042E590;
      String.append(_:)(v26);
      v37 = v50;
      v38 = v49;
      v39 = type metadata accessor for KnoxServiceClient.ClientError();
      v27 = swift_allocObject();
      v36[0] = sub_10000E014();
      v36[1] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v49 = _swiftEmptyArrayStorage;
      sub_100086A00(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850, &qword_100376280);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v28 = *(v45 + 104);
      v45 = v14;
      v28(v47, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v46);
      v29 = v51;
      v30 = v48;
      v31 = v44;
      (*(v51 + 104))(v48, enum case for DispatchQoS.QoSClass.default(_:), v44);
      v13 = v36[0];
      static OS_dispatch_queue.global(qos:)();
      (*(v29 + 8))(v30, v31);
      v32 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      strcpy((v27 + 16), "jsonString()");
      *(v27 + 29) = 0;
      *(v27 + 30) = -5120;
      v33 = v41;
      *(v27 + 32) = 0xD000000000000064;
      *(v27 + 40) = v33;
      *(v27 + 56) = 7;
      *(v27 + 48) = 95;
      v34 = v37;
      *(v27 + 64) = v38;
      *(v27 + 72) = v34;
      *(v27 + 80) = 0;
      *(v27 + 88) = v32;
      sub_100086A00(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v35 = v27;
      swift_willThrow();
      sub_100031928(v45, v40);
    }
  }

  return v13;
}

uint64_t sub_1000853C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, BOOL *a6@<X8>)
{
  v27 = a6;
  v7 = v6;
  v26 = a4;
  v12 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for KeychainItem(0);
  __chkstk_darwin(v15);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001FB20(a3, v14);
  ObjectType = swift_getObjectType();
  (*(ObjectType + 112))(&v28);
  if (v28)
  {
    if (v28 == 1)
    {
      v19 = 0xE400000000000000;
      v20 = 1128548687;
    }

    else
    {
      v19 = 0xE800000000000000;
      v20 = 0x6574616774736557;
    }
  }

  else
  {
    v19 = 0xE300000000000000;
    v20 = 5718340;
  }

  *v17 = a1;
  v17[1] = a2;
  sub_10007AA3C(v14, v17 + v15[5]);
  v21 = (v17 + v15[6]);
  *v21 = v26;
  v21[1] = a5;
  v22 = (v17 + v15[7]);
  *v22 = v20;
  v22[1] = v19;
  *(v17 + v15[8]) = v7;

  v23 = v7;
  sub_10009A0BC(v17, v27);
  return sub_100085BE4(v17);
}

uint64_t sub_10008559C()
{
  v1 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken____lazy_storage___jsonEncoder;
  if (*(v0 + OBJC_IVAR____TtC16KnoxClientPublic9AuthToken____lazy_storage___jsonEncoder))
  {
    v3 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic9AuthToken____lazy_storage___jsonEncoder);
  }

  else
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v3 = JSONEncoder.init()();
    sub_1000039E8(&qword_1004A84E0, &qword_100378BD0);
    *(swift_allocObject() + 16) = xmmword_100376A40;
    static JSONEncoder.OutputFormatting.sortedKeys.getter();
    sub_100086A00(&qword_1004A84E8, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
    sub_1000039E8(&qword_1004A84F0, qword_10037ACF0);
    sub_10001F9A4(&qword_1004A84F8, &qword_1004A84F0, qword_10037ACF0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    dispatch thunk of JSONEncoder.outputFormatting.setter();
    *(v0 + v2) = v3;
  }

  return v3;
}

uint64_t sub_100085798@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100085824(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

id AuthToken.init()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC16KnoxClientPublic9AuthToken____lazy_storage___jsonEncoder] = 0;
  Date.init()();
  (*(v2 + 32))(&v0[OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate], v4, v1);
  v5 = type metadata accessor for AuthToken(0);
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "init");
}

void *static AuthToken.tokenFromKeychain(keychainEntryServer:keychainEntryAccountName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(v3 + 112))(&v10);
  result = sub_10009E574(v3, a1, a2, a3, &v10);
  if (!v4)
  {
    if (result)
    {
      v9 = result;
      result = swift_dynamicCastClass();
      if (!result)
      {

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100085BE4(uint64_t a1)
{
  v2 = type metadata accessor for KeychainItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int Data.AKSDataError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100085CAC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100085D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100085DA0(uint64_t a1)
{
  v2 = sub_1000864D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100085DDC(uint64_t a1)
{
  v2 = sub_1000864D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

id AuthToken.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthToken(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100085ECC(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004A8478, &qword_100378A00);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  sub_10000E2A8(a1, a1[3]);
  sub_1000864D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  v11 = v13;
  swift_beginAccess();
  (*(v3 + 16))(v5, v11 + v10, v2);
  sub_100086A00(&qword_1004A7D40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void *AuthToken.init(from:)(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v15 = *(v5 - 8);
  __chkstk_darwin(v5);
  v19 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000039E8(&qword_1004A8488, &qword_100378A08);
  v16 = *(v7 - 8);
  v17 = v7;
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic9AuthToken____lazy_storage___jsonEncoder) = 0;
  sub_10000E2A8(a1, a1[3]);
  sub_1000864D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);

    type metadata accessor for AuthToken(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v16;
    sub_100086A00(&qword_1004A7D30, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v11 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v15 + 32))(v1 + OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate, v19, v5);
    v13 = type metadata accessor for AuthToken(0);
    v18.receiver = v1;
    v18.super_class = v13;
    v3 = objc_msgSendSuper2(&v18, "init");
    (*(v10 + 8))(v9, v11);
    sub_100003C3C(a1);
  }

  return v3;
}

uint64_t sub_100086440@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 232))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000864D0()
{
  result = qword_1004A8480;
  if (!qword_1004A8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8480);
  }

  return result;
}

uint64_t sub_100086534(uint64_t a1)
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

unint64_t sub_1000868FC()
{
  result = qword_1004A84C8;
  if (!qword_1004A84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A84C8);
  }

  return result;
}

unint64_t sub_100086954()
{
  result = qword_1004A84D0;
  if (!qword_1004A84D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A84D0);
  }

  return result;
}

unint64_t sub_1000869AC()
{
  result = qword_1004A84D8;
  if (!qword_1004A84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A84D8);
  }

  return result;
}

uint64_t sub_100086A00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100086A48(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  static String.Encoding.utf8.getter();
  String.init(data:encoding:)();
  if (!v3)
  {
    v5 = static os_log_type_t.error.getter();
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v6 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Failed to create a String from Data passed in", 45, 2, _swiftEmptyArrayStorage);

    return;
  }

  v4 = objc_allocWithZone(NSRegularExpression);
  v7 = sub_1000D37E4(0xD000000000000041, 0x800000010042EB10, 0);

  sub_1000039E8(&qword_1004A8518, &unk_10037BF80);
  sub_10000E720(&qword_1004A8520, &qword_1004A8518, &unk_10037BF80, &protocol conformance descriptor for Range<A>);
  sub_10000B080();
  v8 = _NSRange.init<A, B>(_:in:)();
  v10 = v9;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v7 matchesInString:v11 options:0 range:{v8, v10}];

  sub_10001AA40(0, &qword_1004A8528, NSTextCheckingResult_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_39:

    v39 = static os_log_type_t.error.getter();
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v40 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v40, "Found zero certificates in string.", 34, 2, _swiftEmptyArrayStorage);

    return;
  }

LABEL_38:
  v14 = _CocoaArrayWrapper.endIndex.getter();
  if (!v14)
  {
    goto LABEL_39;
  }

LABEL_6:
  v45 = v13 & 0xC000000000000001;
  v41 = v7;
  if ((v13 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
    v43 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v43 = v13 & 0xFFFFFFFFFFFFFF8;
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v15 = 0;
  v42 = v13 + 32;
  v16 = _swiftEmptyArrayStorage;
  v44 = v14;
  do
  {
    if (v45)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v43 + 16))
      {
        goto LABEL_37;
      }

      v17 = *(v42 + 8 * v15);
    }

    v18 = v17;
    v19 = __OFADD__(v15, 1);
    v20 = v15 + 1;
    if (v19)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v21 = [v17 numberOfRanges];
    if (v21 < 1)
    {
      goto LABEL_36;
    }

    v46 = v20;
    if (v21 != 1)
    {
      v7 = v21;
      for (i = 1; i != v7; ++i)
      {
        [v18 rangeAtIndex:i];
        Range<>.init(_:in:)();
        if ((v24 & 1) == 0)
        {
          String.subscript.getter();
          v13 = static String._fromSubstring(_:)();
          v26 = v25;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_100011A4C(0, *(v16 + 2) + 1, 1, v16);
          }

          v27 = v16;
          v28 = *(v16 + 2);
          v29 = v27;
          v30 = *(v27 + 3);
          if (v28 >= v30 >> 1)
          {
            v29 = sub_100011A4C((v30 > 1), v28 + 1, 1, v29);
          }

          *(v29 + 2) = v28 + 1;
          v23 = &v29[16 * v28];
          v16 = v29;
          *(v23 + 4) = v13;
          *(v23 + 5) = v26;
        }
      }
    }

    v15 = v46;
  }

  while (v46 != v44);

  v31 = *(v16 + 2);
  if (v31)
  {
    v32 = v16 + 40;
    do
    {
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v33 = Data.init(base64Encoded:options:)();
      v35 = v34;

      if (v35 >> 60 != 15)
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
        v37 = SecCertificateCreateWithData(kCFAllocatorDefault, isa);

        if (v37)
        {
          v38 = v37;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          sub_100031914(v33, v35);
        }

        else
        {
          sub_100031914(v33, v35);
        }
      }

      v32 += 16;
      --v31;
    }

    while (v31);
  }
}

uint64_t sub_100087194(uint64_t a1)
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v102 = *(v1 - 8);
  v103 = v1;
  __chkstk_darwin(v1);
  v100 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v97 = *(v3 - 8);
  v98 = v3;
  __chkstk_darwin(v3);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v96);
  v101 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v99 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_slowAlloc();
  type metadata accessor for SecCertificate(0);
  v10 = Array.debugDescription.getter();
  v12 = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;
  BasicX509 = SecPolicyCreateBasicX509();
  v15 = SecTrustCreateWithCertificates(isa, BasicX509, v9);

  v104 = v9;
  if (!v15)
  {
    v20 = swift_slowAlloc();
    if (!*v9)
    {
      v92 = 0x800000010042E940;
      v93 = 0x800000010042E6C0;
      v105 = 0;
      v106 = 0xE000000000000000;
      _StringGuts.grow(_:)(85);
      v48._countAndFlagsBits = 0xD000000000000053;
      v48._object = 0x800000010042E990;
      String.append(_:)(v48);
      v49._countAndFlagsBits = v10;
      v49._object = v12;
      String.append(_:)(v49);

      v89 = v106;
      v90 = v105;
      v91 = type metadata accessor for KnoxServiceClient.ClientError();
      v50 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v88 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v105 = _swiftEmptyArrayStorage;
      sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      v94 = v20;
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v97 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v98);
      v52 = v102;
      v51 = v103;
      v53 = v100;
      (*(v102 + 104))(v100, enum case for DispatchQoS.QoSClass.default(_:), v103);
      static OS_dispatch_queue.global(qos:)();
      (*(v52 + 8))(v53, v51);
      v54 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v55 = v92;
      *(v50 + 16) = 0xD00000000000002ALL;
      *(v50 + 24) = v55;
      v56 = v93;
      *(v50 + 32) = 0xD000000000000060;
      *(v50 + 40) = v56;
      *(v50 + 56) = 19;
      *(v50 + 48) = 215;
      v57 = v89;
      *(v50 + 64) = v90;
      *(v50 + 72) = v57;
      *(v50 + 80) = 0;
      *(v50 + 88) = v54;
      sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v58 = v50;
      swift_willThrow();
      goto LABEL_15;
    }

    v21 = *v9;
    v22 = Date._bridgeToObjectiveC()().super.isa;
    v23 = SecTrustSetVerifyDate(v21, v22);

    if (v23)
    {
      v91 = 0x800000010042E940;
      v92 = 0x800000010042E6C0;
      v105 = 0;
      v106 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v24._countAndFlagsBits = 0xD000000000000035;
      v24._object = 0x800000010042E9F0;
      String.append(_:)(v24);
      v25._countAndFlagsBits = v10;
      v25._object = v12;
      String.append(_:)(v25);

      v88 = v106;
      v89 = v105;
      v90 = type metadata accessor for KnoxServiceClient.ClientError();
      v26 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v93 = v21;
      v87 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v105 = _swiftEmptyArrayStorage;
      sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      v94 = v20;
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v97 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v98);
      v28 = v102;
      v27 = v103;
      v29 = v100;
      (*(v102 + 104))(v100, enum case for DispatchQoS.QoSClass.default(_:), v103);
      static OS_dispatch_queue.global(qos:)();
      (*(v28 + 8))(v29, v27);
      v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v31 = v91;
      *(v26 + 16) = 0xD00000000000002ALL;
      *(v26 + 24) = v31;
      v32 = v92;
      *(v26 + 32) = 0xD000000000000060;
      *(v26 + 40) = v32;
      *(v26 + 56) = 19;
      v33 = 221;
    }

    else
    {
      if (SecTrustEvaluateWithError(v21, v20))
      {
        sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_100376A40;
        *(v60 + 56) = &type metadata for String;
        *(v60 + 64) = sub_10001A9EC();
        *(v60 + 32) = v10;
        *(v60 + 40) = v12;
        sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
        v61 = static OS_os_log.default.getter();
        v62 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Trusting certificate chain %{public}s", 37, 2, &_mh_execute_header, v61, v62, v60);

        goto LABEL_15;
      }

      v93 = v21;
      v94 = v20;
      v95 = v5;
      v63 = *v20;
      if (*v20)
      {
        v105 = 0;
        v106 = 0xE000000000000000;
        v64 = v63;
        v92 = v64;
        _StringGuts.grow(_:)(46);
        v107 = v64;
        type metadata accessor for CFError(0);
        sub_10004A230(&qword_1004A7910, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
        v65 = Error.localizedDescription.getter();
        v67 = v66;

        v105 = v65;
        v106 = v67;
        v68._object = 0x800000010042EA80;
        v68._countAndFlagsBits = 0xD00000000000002ALL;
        String.append(_:)(v68);
        v69._countAndFlagsBits = v10;
        v69._object = v12;
        String.append(_:)(v69);

        v89 = v106;
        v90 = v105;
        v87 = 0x800000010042E6C0;
        v88 = 0x800000010042E940;
        v91 = type metadata accessor for KnoxServiceClient.ClientError();
        v70 = swift_allocObject();
        sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
        v86 = "hivePointer.swift";
        static DispatchQoS.userInitiated.getter();
        v105 = _swiftEmptyArrayStorage;
        sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
        sub_1000039E8(&unk_1004A7850, &qword_100376280);
        sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        (*(v97 + 104))(v95, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v98);
        v72 = v102;
        v71 = v103;
        v73 = v100;
        (*(v102 + 104))(v100, enum case for DispatchQoS.QoSClass.default(_:), v103);
        static OS_dispatch_queue.global(qos:)();
        (*(v72 + 8))(v73, v71);
        v74 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
        v75 = v88;
        *(v70 + 16) = 0xD00000000000002ALL;
        *(v70 + 24) = v75;
        v76 = v87;
        *(v70 + 32) = 0xD000000000000060;
        *(v70 + 40) = v76;
        *(v70 + 56) = 19;
        *(v70 + 48) = 234;
        v77 = v89;
        *(v70 + 64) = v90;
        *(v70 + 72) = v77;
        *(v70 + 80) = 0;
        *(v70 + 88) = v74;
        sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
        swift_allocError();
        *v78 = v70;
        swift_willThrow();

        v36 = v92;
        goto LABEL_10;
      }

      v91 = 0x800000010042E940;
      v92 = 0x800000010042E6C0;
      v105 = 0;
      v106 = 0xE000000000000000;
      _StringGuts.grow(_:)(71);
      v79._countAndFlagsBits = 0xD000000000000045;
      v79._object = 0x800000010042EA30;
      String.append(_:)(v79);
      v80._countAndFlagsBits = v10;
      v80._object = v12;
      String.append(_:)(v80);

      v88 = v106;
      v89 = v105;
      v90 = type metadata accessor for KnoxServiceClient.ClientError();
      v26 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v87 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v105 = _swiftEmptyArrayStorage;
      sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v97 + 104))(v95, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v98);
      v82 = v102;
      v81 = v103;
      v83 = v100;
      (*(v102 + 104))(v100, enum case for DispatchQoS.QoSClass.default(_:), v103);
      static OS_dispatch_queue.global(qos:)();
      (*(v82 + 8))(v83, v81);
      v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v84 = v91;
      *(v26 + 16) = 0xD00000000000002ALL;
      *(v26 + 24) = v84;
      v85 = v92;
      *(v26 + 32) = 0xD000000000000060;
      *(v26 + 40) = v85;
      *(v26 + 56) = 19;
      v33 = 238;
    }

    *(v26 + 48) = v33;
    v34 = v88;
    *(v26 + 64) = v89;
    *(v26 + 72) = v34;
    *(v26 + 80) = 0;
    *(v26 + 88) = v30;
    sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v35 = v26;
    swift_willThrow();
    v36 = v93;
LABEL_10:

LABEL_15:
  }

  v16 = SecCopyErrorMessageString(v15, 0);
  v95 = v5;
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_12;
  }

  v105 = 0;
  v106 = 0;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  v18 = v106;
  if (!v106)
  {
LABEL_12:
    v18 = 0x800000010042E900;
    v19 = 0xD000000000000033;
    goto LABEL_13;
  }

  v19 = v105;
LABEL_13:
  v93 = 0x800000010042E940;
  v94 = 0x800000010042E6C0;
  v105 = 0;
  v106 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v105 = v19;
  v106 = v18;
  v37._countAndFlagsBits = 0xD000000000000017;
  v37._object = 0x800000010042E970;
  String.append(_:)(v37);
  v38._countAndFlagsBits = v10;
  v38._object = v12;
  String.append(_:)(v38);

  v90 = v106;
  v91 = v105;
  v92 = type metadata accessor for KnoxServiceClient.ClientError();
  v39 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v89 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v105 = _swiftEmptyArrayStorage;
  sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v97 + 104))(v95, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v98);
  v41 = v102;
  v40 = v103;
  v42 = v100;
  (*(v102 + 104))(v100, enum case for DispatchQoS.QoSClass.default(_:), v103);
  static OS_dispatch_queue.global(qos:)();
  (*(v41 + 8))(v42, v40);
  v43 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v44 = v93;
  *(v39 + 16) = 0xD00000000000002ALL;
  *(v39 + 24) = v44;
  v45 = v94;
  *(v39 + 32) = 0xD000000000000060;
  *(v39 + 40) = v45;
  *(v39 + 56) = 19;
  *(v39 + 48) = 205;
  v46 = v90;
  *(v39 + 64) = v91;
  *(v39 + 72) = v46;
  *(v39 + 80) = 0;
  *(v39 + 88) = v43;
  sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v47 = v39;
  swift_willThrow();
}

void sub_10008835C(AEAAuthData_impl *a1, uint64_t a2)
{
  v158 = a2;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v154 = *(v5 - 8);
  v155 = v5;
  __chkstk_darwin(v5);
  v152 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v153 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v148);
  v151 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v156 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  EntryCount = AEAAuthDataGetEntryCount(a1);
  v12 = static os_log_type_t.default.getter();
  v146 = sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
  v13 = swift_allocObject();
  v145 = xmmword_100376A40;
  *(v13 + 16) = xmmword_100376A40;
  *(v13 + 56) = &type metadata for UInt32;
  *(v13 + 64) = &protocol witness table for UInt32;
  *(v13 + 32) = EntryCount;
  v147 = sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
  v14 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v14, "AEAAuthInfo.init found %{public}i entries in auth_data", 54, 2, v13);

  LODWORD(v161) = EntryCount;
  if (EntryCount)
  {
    LODWORD(v2) = 0;
    v15 = &_swiftEmptyDictionarySingleton;
    v160 = a1;
    while (1)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      Entry = AEAAuthDataGetEntry(a1, v2, 0, 0, v19, 0, 0, v20);
      v164 = v19;
      v165 = v20;
      i = v15;
      if (Entry)
      {
        v77 = Entry;
        v78 = static os_log_type_t.error.getter();
        v79 = swift_allocObject();
        *(v79 + 16) = v145;
        *(v79 + 56) = &type metadata for Int32;
        *(v79 + 64) = &protocol witness table for Int32;
        *(v79 + 32) = v77;
        v80 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v78, &_mh_execute_header, v80, "Failed to get key_length and data_size from __AEAAuthDataGetEntry - status is: %{public}i", 89, 2, v79);

        v162 = 0x800000010042E690;
        v163 = 0x800000010042E6C0;
        v169 = 0;
        v170 = 0xE000000000000000;
        _StringGuts.grow(_:)(81);
        v81._countAndFlagsBits = 0xD00000000000004FLL;
        v81._object = 0x800000010042E730;
        String.append(_:)(v81);
        *__dst = v77;
        v82._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v82);

        v159 = v170;
        v160 = v169;
        v161 = type metadata accessor for KnoxServiceClient.ClientError();
        v83 = swift_allocObject();
        sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
        v157 = "hivePointer.swift";
        static DispatchQoS.userInitiated.getter();
        v169 = _swiftEmptyArrayStorage;
        sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
        sub_1000039E8(&unk_1004A7850, &qword_100376280);
        sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        (*(v149 + 104))(v153, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v150);
        v85 = v154;
        v84 = v155;
        v86 = v152;
        (*(v154 + 104))(v152, enum case for DispatchQoS.QoSClass.default(_:), v155);
        static OS_dispatch_queue.global(qos:)();
        (*(v85 + 8))(v86, v84);
        v87 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
        v88 = v162;
        *(v83 + 16) = 0xD000000000000020;
        *(v83 + 24) = v88;
        v89 = v163;
        *(v83 + 32) = 0xD000000000000060;
        *(v83 + 40) = v89;
        *(v83 + 56) = 4;
        *(v83 + 48) = 97;
        v90 = v159;
        *(v83 + 64) = v160;
        *(v83 + 72) = v90;
        *(v83 + 80) = 0;
        *(v83 + 88) = v87;
        sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
        swift_allocError();
        *v91 = v83;
        swift_willThrow();
LABEL_63:

        v112 = type metadata accessor for Date();
        (*(*(v112 - 8) + 8))(v158, v112);

        return;
      }

      if (__OFADD__(*v19, 1))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      if (__OFADD__(*v19, 1))
      {
        goto LABEL_70;
      }

      v24 = v23;
      v25 = AEAAuthDataGetEntry(a1, v2, *v19 + 1, v22, v19, *v20, v23, v20);
      v162 = v22;
      v163 = v24;
      if (v25)
      {
        v92 = v25;
        v93 = static os_log_type_t.error.getter();
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_100376BB0;
        *(v94 + 56) = &type metadata for Int32;
        *(v94 + 64) = &protocol witness table for Int32;
        *(v94 + 32) = v92;
        v95 = String.init(cString:)();
        v97 = v96;
        *(v94 + 96) = &type metadata for String;
        *(v94 + 104) = sub_10001A9EC();
        *(v94 + 72) = v95;
        *(v94 + 80) = v97;
        v98 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v93, &_mh_execute_header, v98, "Failure from __AEAAuthDataGetEntry - Got non-zero status %{public}i for key '%{public}s'", 88, 2, v94);

        v160 = 0x800000010042E690;
        v161 = 0x800000010042E6C0;
        v169 = 0;
        v170 = 0xE000000000000000;
        _StringGuts.grow(_:)(72);
        v99._countAndFlagsBits = 0xD000000000000039;
        v99._object = 0x800000010042E7E0;
        String.append(_:)(v99);
        *__dst = v92;
        v100._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v100);

        v101._countAndFlagsBits = 0x79656B20726F6620;
        v101._object = 0xEA00000000002720;
        String.append(_:)(v101);
        *__dst = v22;
        sub_1000039E8(&qword_1004A8500, &qword_100378BD8);
        _print_unlocked<A, B>(_:_:)();
        v102._countAndFlagsBits = 39;
        v102._object = 0xE100000000000000;
        String.append(_:)(v102);
        v157 = v169;
        v147 = v170;
        v159 = type metadata accessor for KnoxServiceClient.ClientError();
        v103 = swift_allocObject();
        *&v145 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
        v146 = "hivePointer.swift";
        static DispatchQoS.userInitiated.getter();
        v169 = _swiftEmptyArrayStorage;
        sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
        sub_1000039E8(&unk_1004A7850, &qword_100376280);
        sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        (*(v149 + 104))(v153, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v150);
        v105 = v154;
        v104 = v155;
        v106 = v152;
        (*(v154 + 104))(v152, enum case for DispatchQoS.QoSClass.default(_:), v155);
        static OS_dispatch_queue.global(qos:)();
        (*(v105 + 8))(v106, v104);
        v107 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
        v108 = v160;
        *(v103 + 16) = 0xD000000000000020;
        *(v103 + 24) = v108;
        v109 = v161;
        *(v103 + 32) = 0xD000000000000060;
        *(v103 + 40) = v109;
        *(v103 + 56) = 4;
        *(v103 + 48) = 124;
        v110 = v147;
        *(v103 + 64) = v157;
        *(v103 + 72) = v110;
        *(v103 + 80) = 0;
        *(v103 + 88) = v107;
        sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
        swift_allocError();
        *v111 = v103;
        swift_willThrow();

        goto LABEL_63;
      }

      v26 = String.init(cString:)();
      v28 = v27;
      v29 = *v20;
      v30 = sub_1000039E8(&qword_1004A8508, qword_100378BE0);
      v171 = v30;
      v172 = sub_10000E720(&qword_1004A8510, &qword_1004A8508, qword_100378BE0, &protocol conformance descriptor for <A> UnsafeMutableBufferPointer<A>);
      v169 = v24;
      v170 = v29;
      v31 = sub_10000E2A8(&v169, v30);
      v32 = *v31;
      if (!*v31)
      {
        break;
      }

      v33 = v31[1];
      v34 = v26;
      if (!v33)
      {
        v38 = 0;
        v39 = 0xC000000000000000;
        goto LABEL_16;
      }

      v3 = v28;
      if (v33 < 15)
      {
        memset(__dst, 0, sizeof(__dst));
        v168 = v33;
        memcpy(__dst, v32, v33);
        v37 = i;
        v38 = *__dst;
        v39 = v159 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v168 << 16)) << 32);
        v159 = v39;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v35 = __DataStorage.init(bytes:length:)();
        v36 = v35;
        v37 = i;
        if (v33 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v38 = swift_allocObject();
          *(v38 + 16) = 0;
          *(v38 + 24) = v33;
          v39 = v36 | 0x8000000000000000;
        }

        else
        {
          v38 = v33 << 32;
          v39 = v35 | 0x4000000000000000;
        }
      }

LABEL_19:
      sub_100003C3C(&v169);
      sub_1000318C0(v38, v39, v40, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v169 = v37;
      v44 = sub_100013364(v34, v3);
      v45 = *(v37 + 2);
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_71;
      }

      v48 = v43;
      if (*(v37 + 3) >= v47)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v43)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_10005D630();
          if (v48)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_10005C8A8(v47, isUniquelyReferenced_nonNull_native);
        v49 = sub_100013364(v34, v3);
        if ((v48 & 1) != (v50 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v44 = v49;
        if (v48)
        {
LABEL_3:

          v15 = v169;
          v16 = (*(v169 + 7) + 16 * v44);
          v17 = *v16;
          v18 = v16[1];
          *v16 = v38;
          v16[1] = v39;
          sub_100031928(v17, v18);
          sub_100031928(v38, v39);
          goto LABEL_4;
        }
      }

      v15 = v169;
      *(v169 + (v44 >> 6) + 8) |= 1 << v44;
      v51 = (*(v15 + 6) + 16 * v44);
      *v51 = v34;
      v51[1] = v3;
      v52 = (*(v15 + 7) + 16 * v44);
      *v52 = v38;
      v52[1] = v39;
      sub_100031928(v38, v39);
      v53 = *(v15 + 2);
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_72;
      }

      *(v15 + 2) = v55;
LABEL_4:
      v2 = (v2 + 1);

      a1 = v160;
      if (v161 == v2)
      {
        goto LABEL_31;
      }
    }

    v38 = 0;
    v39 = 0xC000000000000000;
    v34 = v26;
LABEL_16:
    v3 = v28;
    v37 = i;
    goto LABEL_19;
  }

  v15 = &_swiftEmptyDictionarySingleton;
LABEL_31:
  v56 = v15 + 64;
  v57 = 1 << v15[32];
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v15 + 8);
  v60 = (v57 + 63) >> 6;

  v164 = 0;
  v165 = 0;
  v61 = 0;
  for (i = v15; v59; v15 = i)
  {
    v62 = v61;
LABEL_38:
    v63 = *(v15 + 6) + ((v62 << 10) | (16 * __clz(__rbit64(v59))));
    v3 = *v63;
    v2 = *(v63 + 8);
    v64 = *(v15 + 2);

    if (!v64 || (v65 = sub_100013364(v3, v2), (v68 & 1) == 0))
    {
      v113 = static os_log_type_t.error.getter();
      v114 = swift_allocObject();
      *(v114 + 16) = v145;
      *(v114 + 56) = &type metadata for String;
      *(v114 + 64) = sub_10001A9EC();
      *(v114 + 32) = v3;
      *(v114 + 40) = v2;

      v115 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v113, &_mh_execute_header, v115, "No data found for auth_data entry %{public}s", 44, 2, v114);

      v162 = 0x800000010042E690;
      v163 = 0x800000010042E6C0;
      v169 = 0;
      v170 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v169 = 0xD000000000000023;
      v170 = 0x800000010042E820;
      v116._countAndFlagsBits = v3;
      v116._object = v2;
      String.append(_:)(v116);

      v117._countAndFlagsBits = 39;
      v117._object = 0xE100000000000000;
      String.append(_:)(v117);
      v159 = v170;
      v160 = v169;
      v161 = type metadata accessor for KnoxServiceClient.ClientError();
      v118 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v157 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v169 = _swiftEmptyArrayStorage;
      sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v149 + 104))(v153, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v150);
      v120 = v154;
      v119 = v155;
      v121 = v152;
      (*(v154 + 104))(v152, enum case for DispatchQoS.QoSClass.default(_:), v155);
      static OS_dispatch_queue.global(qos:)();
      (*(v120 + 8))(v121, v119);
      v122 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v123 = v162;
      *(v118 + 16) = 0xD000000000000020;
      *(v118 + 24) = v123;
      v124 = v163;
      *(v118 + 32) = 0xD000000000000060;
      *(v118 + 40) = v124;
      *(v118 + 56) = 4;
      *(v118 + 48) = 144;
      v125 = v159;
      *(v118 + 64) = v160;
      *(v118 + 72) = v125;
      *(v118 + 80) = 0;
      *(v118 + 88) = v122;
      sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v126 = v118;
      swift_willThrow();

      v127 = type metadata accessor for Date();
      (*(*(v127 - 8) + 8))(v158, v127);
      goto LABEL_65;
    }

    v59 &= v59 - 1;
    v69 = *(v15 + 7) + 16 * v65;
    v15 = *v69;
    v70 = *(v69 + 8);
    if (v3 == 0xD00000000000002ALL && 0x800000010042E850 == v2)
    {
      v3 = 0xD00000000000002ALL;
    }

    else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      goto LABEL_46;
    }

    sub_1000318C0(v15, v70, v66, v67);
    v163 = v70;
    sub_100086A48(v15, v70);
    if (!v72)
    {
      goto LABEL_67;
    }

    v73 = v72;

    v74 = v157;
    sub_100087194(v73);
    v157 = v74;
    if (v74)
    {
      v144 = type metadata accessor for Date();
      (*(*(v144 - 8) + 8))(v158, v144);

      sub_100031928(v15, v163);

      return;
    }

    v2 = v73 & 0xFFFFFFFFFFFFFF8;
    if (v73 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_53:

        sub_100031928(v15, v163);
        v165 = v73;
        goto LABEL_46;
      }
    }

    else if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

    if ((v73 & 0xC000000000000001) != 0)
    {
      v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_73;
      }

      v75 = *(v73 + 32);
    }

    v3 = v75;

    v2 = SecCertificateCopyKey(v3);

    sub_100031928(v15, v163);
    v164 = v2;
    v165 = v73;
LABEL_46:
    v61 = v62;
  }

  while (1)
  {
    v62 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v62 >= v60)
    {
      v76 = type metadata accessor for Date();
      (*(*(v76 - 8) + 8))(v158, v76);

      return;
    }

    v59 = *&v56[8 * v62];
    ++v61;
    if (v59)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_67:
  v128 = static os_log_type_t.error.getter();
  v129 = swift_allocObject();
  *(v129 + 16) = v145;
  *(v129 + 56) = &type metadata for String;
  *(v129 + 64) = sub_10001A9EC();
  *(v129 + 32) = v3;
  *(v129 + 40) = v2;

  v130 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v128, &_mh_execute_header, v130, "Could not get SecCertificates from data for key '%{public}s'", 60, 2, v129);

  v161 = 0x800000010042E690;
  v162 = 0x800000010042E6C0;
  v169 = 0;
  v170 = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v131._countAndFlagsBits = 0xD000000000000031;
  v131._object = 0x800000010042E8C0;
  String.append(_:)(v131);
  v132._countAndFlagsBits = v3;
  v132._object = v2;
  String.append(_:)(v132);

  v133._countAndFlagsBits = 39;
  v133._object = 0xE100000000000000;
  String.append(_:)(v133);
  v159 = v169;
  v157 = v170;
  v160 = type metadata accessor for KnoxServiceClient.ClientError();
  v134 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v147 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v169 = _swiftEmptyArrayStorage;
  sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v149 + 104))(v153, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v150);
  v136 = v154;
  v135 = v155;
  v137 = v152;
  (*(v154 + 104))(v152, enum case for DispatchQoS.QoSClass.default(_:), v155);
  static OS_dispatch_queue.global(qos:)();
  (*(v136 + 8))(v137, v135);
  v138 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v139 = v161;
  *(v134 + 16) = 0xD000000000000020;
  *(v134 + 24) = v139;
  v140 = v162;
  *(v134 + 32) = 0xD000000000000060;
  *(v134 + 40) = v140;
  *(v134 + 56) = 14;
  *(v134 + 48) = 153;
  v141 = v157;
  *(v134 + 64) = v159;
  *(v134 + 72) = v141;
  *(v134 + 80) = 0;
  *(v134 + 88) = v138;
  sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v142 = v134;
  swift_willThrow();
  sub_100031928(v15, v163);

  v143 = type metadata accessor for Date();
  (*(*(v143 - 8) + 8))(v158, v143);
LABEL_65:
}

uint64_t sub_100089D24()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SAKSDecryptionTask(0);
  v21.receiver = v0;
  v21.super_class = v6;
  v7 = objc_msgSendSuper2(&v21, "description");
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v19 = v8;
  v20 = v10;
  v11._object = 0x800000010042F080;
  v11._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v11);
  (*(v3 + 16))(v5, &v1[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_decryptionURL], v2);
  sub_10008E82C(&qword_1004AAE30, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  (*(v3 + 8))(v5, v2);
  v13._object = 0x800000010042F0A0;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v13);
  v14 = &v1[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAuthInfo];
  v15 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAuthInfo];
  v16 = *(v14 + 1);

  v17._countAndFlagsBits = v15;
  v17._object = v16;
  String.append(_:)(v17);

  return v19;
}

char *sub_100089F34(void *a1, uint64_t a2, void *a3)
{
  v238 = a3;
  v245 = a2;
  v5 = sub_1000039E8(&qword_1004A7160, &unk_100378C70);
  __chkstk_darwin(v5 - 8);
  v219 = &v209 - v6;
  v7 = type metadata accessor for URLComponents();
  v220 = *(v7 - 1);
  __chkstk_darwin(v7);
  v215 = &v209 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for Date();
  v217 = *(v218 - 8);
  v9 = __chkstk_darwin(v218);
  v11 = &v209 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v216 = (&v209 - v12);
  v232 = type metadata accessor for DispatchQoS.QoSClass();
  v231 = *(v232 - 8);
  __chkstk_darwin(v232);
  v229 = &v209 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v233 = &v209 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v225);
  v230 = &v209 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  v228 = &v209 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  v19 = __chkstk_darwin(v18 - 8);
  v214 = &v209 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v209 - v22;
  v24 = __chkstk_darwin(v21);
  v221 = &v209 - v25;
  __chkstk_darwin(v24);
  v27 = &v209 - v26;
  v235 = type metadata accessor for URL();
  v234 = *(v235 - 8);
  v28 = __chkstk_darwin(v235);
  v213 = &v209 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v222 = &v209 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v209 - v33;
  __chkstk_darwin(v32);
  v36 = &v209 - v35;
  v240 = v3;
  v37 = (v3 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_serverResponse);
  *v37 = 0;
  v37[1] = 0;
  v236 = v37;
  v38 = (a1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_SAKSmTLSAuth);
  v39 = swift_beginAccess();
  v41 = *v38;
  v40 = v38[1];
  v42 = v38[2];
  v256 = v38[3];
  v44 = v38[4];
  v43 = v38[5];
  v241 = v42;
  v242 = v44;
  v237 = v43;
  v45 = v38[6];
  v243 = a1;
  v244 = v45;
  v239 = v40;
  v224 = v41;
  if (v40 != 1)
  {
    v218 = v7;
    if (v40)
    {
      v69 = v40;
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_100376A40;
      *(v70 + 56) = &type metadata for String;
      *(v70 + 64) = sub_10001A9EC();
      *(v70 + 32) = v41;
      *(v70 + 40) = v69;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v71 = v41;
      v72 = v237;
      v73 = v244;
      sub_10005D92C(v41, v69, v241, v256, v242, v237, v244);

      v74 = static OS_os_log.default.getter();
      v75 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Using mTLS certificate from '%{public}s'", 40, 2, &_mh_execute_header, v74, v75, v70);

      v76 = v73;
      v77 = v72;
    }

    else
    {
      v71 = v41;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v76 = v244;

      v77 = v237;

      v78 = static OS_os_log.default.getter();
      v79 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Using mTLS certificate", 22, 2, &_mh_execute_header, v78, v79, _swiftEmptyArrayStorage);
    }

    v80 = v245;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);

    v81 = v76;
    v82 = static OS_os_log.default.getter();
    v83 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Using mTLS to authenticate to SAKS", 34, 2, &_mh_execute_header, v82, v83, _swiftEmptyArrayStorage);

    v84 = *(v80 + 32);
    v85 = *(v80 + 40);
    URL.init(string:)();
    v86 = v234;
    v87 = v235;
    v212 = *(v234 + 48);
    if (v212(v27, 1, v235) == 1)
    {
      sub_10005D990(v71, v239, v241, v256, v242, v77, v244);
      sub_100013F2C(v27, &qword_1004A6D30, &unk_100376820);
      v234 = 0x800000010042EC80;
      v235 = 0x800000010042ECA0;
      v246 = 0;
      v247 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v88._countAndFlagsBits = 0xD000000000000031;
      v88._object = 0x800000010042EDB0;
      String.append(_:)(v88);

      v89._countAndFlagsBits = v84;
      v89._object = v85;
      String.append(_:)(v89);

      v90._countAndFlagsBits = 39;
      v90._object = 0xE100000000000000;
      String.append(_:)(v90);
      v222 = v246;
      v221 = v247;
      v223 = type metadata accessor for KnoxServiceClient.ClientError();
      v91 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v220 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v246 = _swiftEmptyArrayStorage;
      sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v226 + 104))(v233, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v227);
      v92 = v231;
      v7 = v229;
      v93 = v232;
      (*(v231 + 104))(v229, enum case for DispatchQoS.QoSClass.default(_:), v232);
      static OS_dispatch_queue.global(qos:)();
      (*(v92 + 8))(v7, v93);
      v94 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v95 = v234;
      *(v91 + 16) = 0xD00000000000001ELL;
      *(v91 + 24) = v95;
      v96 = v235;
      *(v91 + 32) = 0xD00000000000006CLL;
      *(v91 + 40) = v96;
      *(v91 + 56) = 4;
      *(v91 + 48) = 93;
      v97 = v221;
      *(v91 + 64) = v222;
      *(v91 + 72) = v97;
      *(v91 + 80) = 0;
      *(v91 + 88) = v94;
      sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v98 = v91;
      swift_willThrow();
      sub_10005D990(v224, v239, v241, v256, v242, v237, v244);
LABEL_27:

      sub_10006886C(v245);
LABEL_36:

      goto LABEL_37;
    }

    v211 = *(v86 + 32);
    v211(v36, v27, v87);
    v246 = v71;
    v247 = v239;
    v248 = v241;
    v249 = v256;
    v250 = v242;
    v251 = v77;
    v99 = v244;
    v252 = v244;
    sub_100003B20(v243 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, &v253);
    v100 = *(v86 + 16);
    v101 = v221;
    (v100)(v221, v36, v87);
    v102 = v87;
    v103 = 1;
    (*(v86 + 56))(v101, 0, 1, v102);
    v104 = _s16KnoxClientPublic0a7ServiceB0C12knoxMtlsAuth8delegate0E7HostURL16trustRootPEMPath012useAsyncHttpB0AcA8mTLSAuthV_AA0A8Delegate_p10Foundation0J0VSgSSSgSbtcfC_0(&v246, &v253, v101, 0, 0);
    v105 = v36;
    v106 = *(v86 + 8);
    v107 = v106(v105, v102);
    v7 = v218;
    goto LABEL_14;
  }

  v46 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
  if (!v46)
  {
    goto LABEL_20;
  }

  type metadata accessor for DAWToken(0);
  v47 = swift_dynamicCastClass();
  if (!v47)
  {
    v39 = swift_dynamicCastClass();
    if (v39)
    {
      *(&v209 - 2) = __chkstk_darwin(v39);
      v120 = v46;
      sub_1000039E8(&qword_1004A7A50, &unk_100377300);
      v121 = v223;
      OS_dispatch_queue.sync<A>(execute:)();
      v122 = v121;

      goto LABEL_21;
    }

LABEL_20:
    __chkstk_darwin(v39);
    *(&v209 - 2) = a1;
    sub_1000039E8(&qword_1004A7A50, &unk_100377300);
    v123 = v223;
    OS_dispatch_queue.sync<A>(execute:)();
    v122 = v123;
LABEL_21:
    if (v249)
    {
      sub_100003B20(&v246, &v253);
      sub_100013F2C(&v246, &qword_1004A7A50, &unk_100377300);
      v124 = v254;
      v125 = v255;
      sub_10000E2A8(&v253, v254);
      v126 = (*(v125 + 8))(v124, v125);
      if (v122)
      {

        sub_10006886C(v245);
        sub_100003C3C(&v253);
        goto LABEL_37;
      }

      v50 = v126;
      sub_100003C3C(&v253);
      if (v50)
      {
        v223 = 0;
        sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
        v193 = static OS_os_log.default.getter();
        v194 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Obtained a DAWToken from the dawTokenFactory", 44, 2, &_mh_execute_header, v193, v194, _swiftEmptyArrayStorage);

        v195 = &v50[OBJC_IVAR____TtC16KnoxClientPublic8DAWToken_token];
        swift_beginAccess();
        v49 = v195[1];
        v210 = *v195;

        goto LABEL_5;
      }
    }

    else
    {
      sub_100013F2C(&v246, &qword_1004A7A50, &unk_100377300);
    }

    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v127 = static OS_os_log.default.getter();
    v128 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("No DAWToken and no certificates available to authenticate to SAKS", 65, 2, &_mh_execute_header, v127, v128, _swiftEmptyArrayStorage);

    v241 = 0x800000010042ECA0;
    v242 = 0x800000010042EC80;
    v244 = 0x800000010042ED10;
    v256 = type metadata accessor for KnoxServiceClient.ClientError();
    v62 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v239 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v246 = _swiftEmptyArrayStorage;
    sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v226 + 104))(v233, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v227);
    v129 = v231;
    v7 = v229;
    v130 = v232;
    (*(v231 + 104))(v229, enum case for DispatchQoS.QoSClass.default(_:), v232);
    static OS_dispatch_queue.global(qos:)();
    (*(v129 + 8))(v7, v130);
    v131 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v132 = v242;
    *(v62 + 16) = 0xD00000000000001ELL;
    *(v62 + 24) = v132;
    v133 = v241;
    *(v62 + 32) = 0xD00000000000006CLL;
    *(v62 + 40) = v133;
    *(v62 + 56) = 4;
    *(v62 + 48) = 117;
    v134 = v244;
    *(v62 + 64) = 0xD000000000000037;
    *(v62 + 72) = v134;
    *(v62 + 80) = 0;
    *(v62 + 88) = v131;
    sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    goto LABEL_26;
  }

  v48 = (v47 + OBJC_IVAR____TtC16KnoxClientPublic8DAWToken_token);
  swift_beginAccess();
  v49 = v48[1];
  v210 = *v48;
  sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
  v50 = v46;

  v51 = static OS_os_log.default.getter();
  v52 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Using DAWToken found in memory", 30, 2, &_mh_execute_header, v51, v52, _swiftEmptyArrayStorage);

LABEL_5:
  sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
  v53 = static OS_os_log.default.getter();
  v54 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Using AppleConnect to authenticate to SAKS", 42, 2, &_mh_execute_header, v53, v54, _swiftEmptyArrayStorage);

  v55 = *(v245 + 16);
  v56 = *(v245 + 24);
  URL.init(string:)();
  v57 = v234;
  v58 = v235;
  v212 = *(v234 + 48);
  if (v212(v23, 1, v235) == 1)
  {

    sub_100013F2C(v23, &qword_1004A6D30, &unk_100376820);
    v244 = 0x800000010042EC80;
    v256 = 0x800000010042ECA0;
    v246 = 0;
    v247 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v59._countAndFlagsBits = 0xD000000000000031;
    v59._object = 0x800000010042EDB0;
    String.append(_:)(v59);

    v60._countAndFlagsBits = v55;
    v60._object = v56;
    String.append(_:)(v60);

    v61._countAndFlagsBits = 39;
    v61._object = 0xE100000000000000;
    String.append(_:)(v61);
    v241 = v246;
    v239 = v247;
    v242 = type metadata accessor for KnoxServiceClient.ClientError();
    v62 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v237 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v246 = _swiftEmptyArrayStorage;
    sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v226 + 104))(v233, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v227);
    v63 = v231;
    v7 = v229;
    v64 = v232;
    (*(v231 + 104))(v229, enum case for DispatchQoS.QoSClass.default(_:), v232);
    static OS_dispatch_queue.global(qos:)();
    (*(v63 + 8))(v7, v64);
    v65 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v66 = v244;
    *(v62 + 16) = 0xD00000000000001ELL;
    *(v62 + 24) = v66;
    v67 = v256;
    *(v62 + 32) = 0xD00000000000006CLL;
    *(v62 + 40) = v67;
    *(v62 + 56) = 4;
    *(v62 + 48) = 106;
    v68 = v239;
    *(v62 + 64) = v241;
    *(v62 + 72) = v68;
    *(v62 + 80) = 0;
    *(v62 + 88) = v65;
    sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
LABEL_26:
    swift_allocError();
    *v135 = v62;
    swift_willThrow();
    goto LABEL_27;
  }

  v211 = *(v57 + 32);
  v211(v34, v23, v58);
  Date.init()();
  v108 = v216;
  v109 = v58;
  Date.addingTimeInterval(_:)();
  (*(v217 + 1))(v11, v218);
  v110 = objc_allocWithZone(type metadata accessor for DAWToken(0));
  v111 = DAWToken.init(token:expirationDate:)(v210, v49, v108);
  sub_100003B20(v243 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, &v246);
  v112 = *(v57 + 16);
  v113 = v221;
  (v112)(v221, v34, v109);
  (*(v57 + 56))(v113, 0, 1, v109);
  v104 = sub_10005F210(v111, &v246, v113, 0, 0);

  v106 = *(v57 + 8);
  v114 = v34;
  v100 = v112;
  v107 = v106(v114, v109);
  v103 = 0;
  v99 = 0;
LABEL_14:
  *(v240 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAPI) = v103;
  v115 = (*((swift_isaMask & *v104) + 0x1D0))(v107);
  v116 = [v115 delegate];

  v117 = v222;
  v221 = v104;
  if (!v116)
  {
LABEL_29:
    v223 = 0x800000010042EC80;
    v222 = 0x800000010042ECA0;
    v234 = 0x800000010042EDF0;
    v235 = type metadata accessor for KnoxServiceClient.ClientError();
    v136 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v220 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v246 = _swiftEmptyArrayStorage;
    sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    v7 = v230;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v226 + 104))(v233, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v227);
    v137 = v231;
    v138 = v229;
    v139 = v232;
    (*(v231 + 104))(v229, enum case for DispatchQoS.QoSClass.default(_:), v232);
    static OS_dispatch_queue.global(qos:)();
    (*(v137 + 8))(v138, v139);
    v140 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v141 = v223;
    *(v136 + 16) = 0xD00000000000001ELL;
    *(v136 + 24) = v141;
    v142 = v222;
    *(v136 + 32) = 0xD00000000000006CLL;
    *(v136 + 40) = v142;
    *(v136 + 56) = 12;
    *(v136 + 48) = 125;
    *(v136 + 64) = 0xD000000000000045;
    v143 = &v257;
LABEL_35:
    *(v136 + 72) = *(v143 - 32);
    *(v136 + 80) = 0;
    *(v136 + 88) = v140;
    sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v171 = v136;
    swift_willThrow();
    sub_10005D990(v224, v239, v241, v256, v242, v237, v244);

    sub_10006886C(v245);
    goto LABEL_36;
  }

  type metadata accessor for KnoxURLSessionPinningDelegate();
  v118 = swift_dynamicCastClass();
  if (!v118)
  {
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v216 = v106;
  if (v239 == 1)
  {
    v119 = swift_unknownObjectRelease();
  }

  else
  {
    v144 = *(v118 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential);
    *(v118 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential) = v99;
    v145 = v99;
    swift_unknownObjectRelease();
  }

  v146 = v243;
  v147 = v238;
  v218 = v7;
  v217 = v100;
  v148 = (*((swift_isaMask & *v243) + 0x110))(v119);
  v149 = (*((swift_isaMask & *v104) + 0x118))(v148);
  v150 = (*((swift_isaMask & *v146) + 0x140))(v149);
  v151 = (*((swift_isaMask & *v104) + 0x148))(v150);
  v152 = (*((swift_isaMask & *v146) + 0x200))(v151);
  v153 = (*((swift_isaMask & *v104) + 0x208))(v152);
  v154 = (*((swift_isaMask & *v146) + 0x188))(v153);
  (*((swift_isaMask & *v104) + 0x190))(v154 & 1);
  if (v147)
  {
    (*((swift_isaMask & *v104) + 0x1D8))(v147);
  }

  v155 = v234;
  v156 = v234 + 16;
  v210 = &v104[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL];
  v157 = v235;
  (v217)(v117);
  v158 = v219;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v159 = v216;
  v216(v117, v157);
  v160 = v220;
  v161 = v218;
  if ((*(v220 + 6))(v158, 1, v218) == 1)
  {
    sub_100013F2C(v158, &qword_1004A7160, &unk_100378C70);
    v223 = 0x800000010042EC80;
    v234 = 0x800000010042ECA0;
    v246 = 0;
    v247 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v246 = 0xD000000000000028;
    v247 = 0x800000010042A390;
    (v217)(v117, v210, v157);
    v162 = URL.description.getter();
    v164 = v163;
    v159(v117, v157);
    v165._countAndFlagsBits = v162;
    v165._object = v164;
    String.append(_:)(v165);

    v222 = v246;
    v220 = v247;
    v235 = type metadata accessor for KnoxServiceClient.ClientError();
    v136 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v219 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v246 = _swiftEmptyArrayStorage;
    sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    v7 = v230;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v226 + 104))(v233, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v227);
    v166 = v231;
    v167 = v229;
    v168 = v232;
    (*(v231 + 104))(v229, enum case for DispatchQoS.QoSClass.default(_:), v232);
    static OS_dispatch_queue.global(qos:)();
    (*(v166 + 8))(v167, v168);
    v140 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v169 = v223;
    *(v136 + 16) = 0xD00000000000001ELL;
    *(v136 + 24) = v169;
    v170 = v234;
    *(v136 + 32) = 0xD00000000000006CLL;
    *(v136 + 40) = v170;
    *(v136 + 56) = 14;
    *(v136 + 48) = 159;
    *(v136 + 64) = v222;
    v143 = &v252;
    goto LABEL_35;
  }

  v210 = v156;
  v222 = (v155 + 8);
  v173 = v158;
  v174 = v215;
  (*(v160 + 4))(v215, v173, v161);
  v246 = 791770671;
  v247 = 0xE400000000000000;
  v175 = v240;
  if (*(v240 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAPI))
  {
    v176 = 1397511277;
  }

  else
  {
    v176 = 25441;
  }

  if (*(v240 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAPI))
  {
    v177 = 0xE400000000000000;
  }

  else
  {
    v177 = 0xE200000000000000;
  }

  v178 = v177;
  String.append(_:)(*&v176);
  v179 = v174;

  v180._countAndFlagsBits = 0x747079726365642FLL;
  v180._object = 0xE800000000000000;
  String.append(_:)(v180);
  URLComponents.path.setter();
  v181 = v214;
  URLComponents.url.getter();
  v182 = v181;
  if (v212(v181, 1, v157) != 1)
  {
    v196 = v157;
    v197 = v213;
    v211(v213, v182, v157);
    (v217)(v175 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_decryptionURL, v197, v157);
    v198 = (v175 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAuthInfo);
    v199 = v245;
    v200 = *(v245 + 16);
    *v198 = *v245;
    v198[1] = v200;
    v201 = *(v199 + 48);
    v198[2] = *(v199 + 32);
    v198[3] = v201;
    sub_1000475AC(v199, &v246);
    v202 = v179;
    v203 = v221;
    v204 = sub_10003D38C(v203);

    v246 = 0;
    v247 = 0xE000000000000000;
    v7 = v204;
    _StringGuts.grow(_:)(28);

    v246 = 0xD00000000000001ALL;
    v247 = 0x800000010042EE70;
    v205._countAndFlagsBits = URL.absoluteString.getter();
    String.append(_:)(v205);

    sub_10006886C(v199);

    sub_10005D990(v224, v239, v241, v256, v242, v237, v244);
    v206 = v246;
    v207 = v247;
    v216(v197, v196);
    (*(v220 + 1))(v202, v218);
    v208 = &v7[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
    swift_beginAccess();
    *v208 = v206;
    v208[1] = v207;

    return v7;
  }

  sub_100013F2C(v181, &qword_1004A6D30, &unk_100376820);
  v234 = 0x800000010042EC80;
  v235 = 0x800000010042ECA0;
  v246 = 0;
  v247 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  v246 = 0xD000000000000025;
  v247 = 0x800000010042EE40;
  v183._countAndFlagsBits = URLComponents.debugDescription.getter();
  String.append(_:)(v183);

  v222 = v246;
  v219 = v247;
  v223 = type metadata accessor for KnoxServiceClient.ClientError();
  v184 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v217 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v246 = _swiftEmptyArrayStorage;
  sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  v7 = v230;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v226 + 104))(v233, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v227);
  v185 = v231;
  v186 = v229;
  v187 = v232;
  (*(v231 + 104))(v229, enum case for DispatchQoS.QoSClass.default(_:), v232);
  static OS_dispatch_queue.global(qos:)();
  (*(v185 + 8))(v186, v187);
  v188 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v189 = v234;
  *(v184 + 16) = 0xD00000000000001ELL;
  *(v184 + 24) = v189;
  v190 = v235;
  *(v184 + 32) = 0xD00000000000006CLL;
  *(v184 + 40) = v190;
  *(v184 + 56) = 14;
  *(v184 + 48) = 165;
  v191 = v219;
  *(v184 + 64) = v222;
  *(v184 + 72) = v191;
  *(v184 + 80) = 0;
  *(v184 + 88) = v188;
  sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v192 = v184;
  swift_willThrow();

  sub_10006886C(v245);
  sub_10005D990(v224, v239, v241, v256, v242, v237, v244);
  (*(v220 + 1))(v215, v218);
LABEL_37:

  type metadata accessor for SAKSDecryptionTask(0);
  swift_deallocPartialClassInstance();
  return v7;
}

void sub_10008C7B0(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v52 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v51 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v47);
  v48 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v55 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v43 - v17;
  v19 = *(v13 + 16);
  v19(v43 - v17, v3 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_decryptionURL, v12);
  v19(v16, v18, v12);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v20._countAndFlagsBits = _s16KnoxClientPublic0a7ServiceB0C15userAgentStringSSyFZ_0();
  v21._countAndFlagsBits = 0x6567412D72657355;
  v21._object = 0xEA0000000000746ELL;
  URLRequest.addValue(_:forHTTPHeaderField:)(v20, v21);

  (*(v13 + 8))(v18, v12);
  URLRequest.httpMethod.setter();
  sub_1000318C0(*(v3 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAuthInfo + 48), *(v3 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAuthInfo + 56), v22, v23);
  URLRequest.httpBody.setter();
  if ((*(v3 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAPI) & 1) == 0)
  {
    v24 = *(*(v3 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client) + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
    if (v24)
    {
      v25 = *((swift_isaMask & *v24) + 0x60);
      v26 = v24;
      v27 = v25(0);
      if (v2)
      {
        v29 = type metadata accessor for URLRequest();
        (*(*(v29 - 8) + 8))(a1, v29);
      }

      else
      {
        v39 = v28;
        v40 = v27;

        v41._countAndFlagsBits = 0x7A69726F68747541;
        v41._object = 0xED00006E6F697461;
        v42.value._countAndFlagsBits = v40;
        v42.value._object = v39;
        URLRequest.setValue(_:forHTTPHeaderField:)(v42, v41);
      }
    }

    else
    {
      v44 = 0x800000010042ECA0;
      v45 = 0x800000010042B900;
      v46 = type metadata accessor for KnoxServiceClient.ClientError();
      v30 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v43[1] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v56 = _swiftEmptyArrayStorage;
      sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v49 + 104))(v51, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v50);
      v32 = v52;
      v31 = v53;
      v33 = v54;
      (*(v53 + 104))(v52, enum case for DispatchQoS.QoSClass.default(_:), v54);
      static OS_dispatch_queue.global(qos:)();
      (*(v31 + 8))(v32, v33);
      v34 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      strcpy((v30 + 16), "urlRequest()");
      *(v30 + 29) = 0;
      *(v30 + 30) = -5120;
      v35 = v44;
      *(v30 + 32) = 0xD00000000000006CLL;
      *(v30 + 40) = v35;
      *(v30 + 56) = 14;
      *(v30 + 48) = 191;
      v36 = v45;
      *(v30 + 64) = 0xD000000000000017;
      *(v30 + 72) = v36;
      *(v30 + 80) = 0;
      *(v30 + 88) = v34;
      sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v37 = v30;
      swift_willThrow();
      v38 = type metadata accessor for URLRequest();
      (*(*(v38 - 8) + 8))(a1, v38);
    }
  }
}

uint64_t sub_10008CE7C(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v116 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v116 - 8);
  __chkstk_darwin(v116);
  v9 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v118 = *(v10 - 8);
  v119 = v10;
  __chkstk_darwin(v10);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v117);
  v14 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v121 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v18 = __chkstk_darwin(v17);
  result = __chkstk_darwin(v18);
  v112 = &v105 - v22;
  v23 = v2;
  v24 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
  v25 = a2 >> 62;
  v120 = v14;
  if ((a2 >> 62) > 1)
  {
    v26 = 0;
    if (v25 != 2)
    {
      goto LABEL_10;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v26 = v27 - v28;
    if (!__OFSUB__(v27, v28))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v25)
  {
    v26 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v26 = HIDWORD(a1) - a1;
LABEL_10:
  v109 = v21;
  v110 = v20;
  v111 = result;
  v113 = v9;
  v114 = v12;
  v115 = v7;
  v29 = *(v24 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
  v30 = swift_allocObject();
  *(v30 + 16) = v26;
  *(v30 + 24) = v24;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_100027124;
  *(v31 + 24) = v30;
  v126 = sub_10001F874;
  v127 = v31;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v124 = sub_10003885C;
  v125 = &unk_100480EA8;
  v32 = _Block_copy(&aBlock);

  dispatch_sync(v29, v32);
  _Block_release(v32);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_34;
  }

  v34 = v23;
  v35 = *&v23[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  __chkstk_darwin(result);
  *(&v105 - 2) = v23;
  sub_1000039E8(&qword_1004A7320, &qword_100376F18);
  OS_dispatch_queue.sync<A>(execute:)();
  v122 = v3;
  v36 = aBlock;
  if (aBlock)
  {
    v4 = [aBlock response];

    if (v4)
    {
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        v38 = v37;
        v39 = [v37 URL];
        if (v39)
        {
          v40 = v112;
          v41 = v39;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v42 = URL.host.getter();
          if (v43)
          {
            if (v42 == 0xD000000000000015 && v43 == 0x800000010042F000)
            {

LABEL_20:
              v122 = v4;
              *&aBlock = 0;
              *(&aBlock + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(90);
              v45._countAndFlagsBits = 0x757165722072754FLL;
              v45._object = 0xEF206F7420747365;
              String.append(_:)(v45);
              v46 = v110;
              v47 = v109;
              v48 = v111;
              (*(v110 + 16))(v109, &v23[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_decryptionURL], v111);
              v49 = URL.absoluteString.getter();
              v51 = v50;
              v52 = *(v46 + 8);
              v53 = v116;
              v108 = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v110 = v52;
              v52(v47, v48);
              v54._countAndFlagsBits = v49;
              v54._object = v51;
              String.append(_:)(v54);

              v55._countAndFlagsBits = 0xD000000000000013;
              v55._object = 0x800000010042F020;
              String.append(_:)(v55);
              v56._countAndFlagsBits = URL.absoluteString.getter();
              String.append(_:)(v56);

              v57._countAndFlagsBits = 0xD000000000000034;
              v57._object = 0x800000010042F040;
              String.append(_:)(v57);
              v106 = *(&aBlock + 1);
              v107 = aBlock;
              v109 = type metadata accessor for KnoxServiceClient.ClientError();
              v58 = swift_allocObject();
              sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
              v105 = "hivePointer.swift";
              static DispatchQoS.userInitiated.getter();
              *&aBlock = _swiftEmptyArrayStorage;
              sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
              sub_1000039E8(&unk_1004A7850, &qword_100376280);
              sub_10003DEE8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              (*(v118 + 104))(v114, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v119);
              v59 = v115;
              v60 = v113;
              (*(v115 + 104))(v113, enum case for DispatchQoS.QoSClass.default(_:), v53);
              static OS_dispatch_queue.global(qos:)();
              (*(v59 + 8))(v60, v53);
              *(v58 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
              v61 = 213;
LABEL_31:
              *(v58 + 16) = 0xD00000000000001ALL;
              *(v58 + 24) = 0x800000010042A530;
              *(v58 + 32) = 0xD00000000000006CLL;
              *(v58 + 40) = 0x800000010042ECA0;
              *(v58 + 56) = 14;
              *(v58 + 48) = v61;
              v103 = v106;
              *(v58 + 64) = v107;
              *(v58 + 72) = v103;
              *(v58 + 80) = 0;
              sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
              swift_allocError();
              *v104 = v58;
              swift_willThrow();

              return (v110)(v112, v111);
            }

            v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v44)
            {
              goto LABEL_20;
            }
          }

          v62 = String._bridgeToObjectiveC()();
          v63 = [v38 valueForHTTPHeaderField:v62];

          if (v63)
          {
            v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v34 = v65;

            v66._countAndFlagsBits = 0xD000000000000010;
            v66._object = 0x800000010042EF70;
            v107 = v64;
            if (!String.hasPrefix(_:)(v66))
            {
LABEL_30:
              v122 = v4;
              *&aBlock = 0;
              *(&aBlock + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(115);
              v87._countAndFlagsBits = 0x757165722072754FLL;
              v87._object = 0xEF206F7420747365;
              String.append(_:)(v87);
              v88 = v110;
              v89 = &v23[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_decryptionURL];
              v90 = v109;
              v91 = v111;
              (*(v110 + 16))(v109, v89, v111);
              v92 = URL.absoluteString.getter();
              v94 = v93;
              v95 = *(v88 + 8);
              v108 = (v88 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v110 = v95;
              v95(v90, v91);
              v96._countAndFlagsBits = v92;
              v96._object = v94;
              String.append(_:)(v96);

              v97._countAndFlagsBits = 0xD00000000000002BLL;
              v97._object = 0x800000010042EF90;
              String.append(_:)(v97);
              v98._countAndFlagsBits = v107;
              v98._object = v34;
              String.append(_:)(v98);

              v99._countAndFlagsBits = 0xD000000000000035;
              v99._object = 0x800000010042EFC0;
              String.append(_:)(v99);
              v106 = *(&aBlock + 1);
              v107 = aBlock;
              v109 = type metadata accessor for KnoxServiceClient.ClientError();
              v58 = swift_allocObject();
              sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
              v105 = "hivePointer.swift";
              static DispatchQoS.userInitiated.getter();
              *&aBlock = _swiftEmptyArrayStorage;
              sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
              sub_1000039E8(&unk_1004A7850, &qword_100376280);
              sub_10003DEE8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              (*(v118 + 104))(v114, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v119);
              v100 = v115;
              v101 = v116;
              v102 = v113;
              (*(v115 + 104))(v113, enum case for DispatchQoS.QoSClass.default(_:), v116);
              static OS_dispatch_queue.global(qos:)();
              (*(v100 + 8))(v102, v101);
              *(v58 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
              v61 = 220;
              goto LABEL_31;
            }

            (*(v110 + 8))(v40, v111);
          }

          else
          {
            (*(v110 + 8))(v40, v111);
          }
        }
      }

      v34 = v23;
    }
  }

  v67 = sub_100042B58(&aBlock, a1, a2);
  v69 = v68;
  *&v34[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_serverResponse] = aBlock;

  if (v69)
  {
    v70 = v116;
    v109 = 0x800000010042A530;
    v110 = 0x800000010042ECA0;
    v111 = type metadata accessor for KnoxServiceClient.ClientError();
    v71 = swift_allocObject();
    v108 = v67;
    v72 = v71;
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v112 = v34;
    v107 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_10008E82C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    v106 = v69;
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v118 + 104))(v114, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v119);
    v73 = v115;
    v74 = v113;
    (*(v115 + 104))(v113, enum case for DispatchQoS.QoSClass.default(_:), v70);
    static OS_dispatch_queue.global(qos:)();
    (*(v73 + 8))(v74, v70);
    v75 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v76 = v109;
    *(v72 + 16) = 0xD00000000000001ALL;
    *(v72 + 24) = v76;
    *(v72 + 32) = 0xD00000000000006CLL;
    v77 = v110;
    *(v72 + 56) = 7;
    *(v72 + 40) = v77;
    *(v72 + 48) = 234;
    v78 = v106;
    *(v72 + 64) = v108;
    *(v72 + 72) = v78;
    *(v72 + 80) = 0;
    *(v72 + 88) = v75;
    sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    v79 = swift_allocError();
    *v80 = v72;
    swift_getErrorValue();

    v81 = Error.localizedDescription.getter();
    sub_100036D50(v79, v81, v82);
  }

  v83 = swift_allocObject();
  *(v83 + 16) = v34;
  *(v83 + 24) = 1;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_10001F9F8;
  *(v84 + 24) = v83;
  v126 = sub_10001FA40;
  v127 = v84;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v124 = sub_10003885C;
  v125 = &unk_100480F20;
  v85 = _Block_copy(&aBlock);
  v86 = v34;

  dispatch_sync(v35, v85);
  _Block_release(v85);
  LOBYTE(v85) = swift_isEscapingClosureAtFileLocation();

  if (v85)
  {
    __break(1u);
    goto LABEL_30;
  }

  return result;
}

char *sub_10008DFAC()
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for RetryRunner();
  swift_allocObject();
  v5 = v0;
  v6 = sub_100072164(v5);
  v7 = dispatch_semaphore_create(0);
  v8 = v5;
  sub_10007928C(v6, v7, v8);

  static DispatchTime.distantFuture.getter();
  OS_dispatch_semaphore.wait(timeout:)();
  (*(v2 + 8))(v4, v1);
  sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100376BB0;
  v10 = &v8[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  v12 = *v10;
  v11 = *(v10 + 1);
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_10001A9EC();
  *(v9 + 32) = v12;
  *(v9 + 40) = v11;
  v19 = v8;

  OS_dispatch_queue.sync<A>(execute:)();
  v13 = v20;
  *(v9 + 96) = &type metadata for UInt;
  *(v9 + 104) = &protocol witness table for UInt;
  *(v9 + 72) = v13;
  sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
  v14 = static OS_os_log.default.getter();
  v15 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("%{public}s finished in total tries: %{public}i", 46, 2, &_mh_execute_header, v14, v15, v9);

  v16 = v8;

  return v16;
}

uint64_t sub_10008E260()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAuthInfo + 48);
  v2 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_saksAuthInfo + 56);

  sub_100031928(v1, v2);
  v3 = OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_decryptionURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
}

id sub_10008E328()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SAKSDecryptionTask(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SAKSDecryptionTask(uint64_t a1)
{
  result = qword_1004A8558;
  if (!qword_1004A8558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008E480(uint64_t a1)
{
  result = type metadata accessor for URL();
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

Swift::Int sub_10008E54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    v6 = static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100376A40;
    result = (*(*a1 + 168))();
    if (!v9)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_10001A9EC();
    *(v7 + 32) = v10;
    *(v7 + 40) = v11;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v12 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v12, "%s", v18);
  }

  sub_100003B20(*(a3 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client) + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, v19);
  v13 = v20;
  v14 = v21;
  sub_10000E2A8(v19, v20);
  if (a1)
  {
    type metadata accessor for KnoxServiceClient.ClientError();
    sub_10008E82C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    v15 = swift_allocError();
    *v16 = a1;
  }

  else
  {
    v15 = 0;
  }

  v17 = *(v14 + 16);

  v17(a3, v15, v13, v14);

  sub_100003C3C(v19);
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10008E778()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008E7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

uint64_t sub_10008E7F4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10008E82C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008E880()
{
  OS_dispatch_queue.sync<A>(execute:)();
  v1 = String.count.getter();

  if (v1)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    String.append(_:)(v20);

    v2._countAndFlagsBits = 39;
    v2._object = 0xE100000000000000;
    String.append(_:)(v2);
    v3 = 39;
    v4 = 0xE100000000000000;
  }

  else
  {
    v3 = 28494;
    v4 = 0xE200000000000000;
  }

  v5 = sub_10008EB50();
  if (v5)
  {
    v6 = 7562585;
  }

  else
  {
    v6 = 28494;
  }

  if (v5)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  _StringGuts.grow(_:)(43);
  v8._countAndFlagsBits = 60;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  type metadata accessor for KnoxAEADecryptToFileAsync();
  _print_unlocked<A, B>(_:_:)();
  v9._countAndFlagsBits = 0x6C65636E6163203ELL;
  v9._object = 0xEC0000003D64656CLL;
  String.append(_:)(v9);
  v10._countAndFlagsBits = v3;
  v10._object = v4;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x6465736F6C63202CLL;
  v11._object = 0xE90000000000003DLL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v6;
  v12._object = v7;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x7365534C5255202CLL;
  v13._object = 0xED00003D6E6F6973;
  String.append(_:)(v13);
  v14 = [*(v0 + 88) description];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  return 0;
}

uint64_t sub_10008EAD8(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (String.count.getter() < 1)
  {
    a2 = 0x800000010042F730;
    a1 = 0xD000000000000013;
  }

  else
  {
  }

  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
}

uint64_t sub_10008EB50()
{
  v1 = v0;
  v9 = 0;
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100094758;
  *(v4 + 24) = v3;
  aBlock[4] = sub_10001FA40;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003885C;
  aBlock[3] = &unk_1004813E0;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_10008ECE4(AEAContext_impl *a1)
{
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v84 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v82 = *(v6 - 8);
  __chkstk_darwin(v6);
  v83 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v85 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 92) != 1)
  {
    return *(v1 + 88);
  }

  v81 = v4;
  v15 = AEAAuthDataCreateWithContext(a1);
  if (!v15)
  {
    LOBYTE(aBlock[0]) = 10;
    return sub_1000905A8(1, aBlock, 0xD000000000000029, 0x800000010042F380);
  }

  v16 = v15;
  v80 = v3;
  (*(v12 + 16))(v14, *(v1 + 16) + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_createdAt, v11);
  sub_10008835C(v16, v14);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v78 = v16;
  v24 = v20;

  v79 = v1;
  sub_100093F64(v25, v21, a1);

  v77 = v19;

  if (*(*(*(v79 + 16) + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_encryption) + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_kms) == 2)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      v76 = v23;
      v75 = v24;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v31 = static OS_os_log.default.getter();
      v32 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Using symmetric key provided by Knox", 36, 2, &_mh_execute_header, v31, v32, _swiftEmptyArrayStorage);

      goto LABEL_14;
    }
  }

  sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
  v27 = static OS_os_log.default.getter();
  v28 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Will request symmetric key from SAKS", 36, 2, &_mh_execute_header, v27, v28, _swiftEmptyArrayStorage);

  v29 = v77;

  v30 = v24;

  sub_100067B44(v29, v21, v23, &v94);
  if (!v95)
  {
    v74 = 0x800000010042F420;
    v73 = 0x800000010042AD30;
    v75 = 0x800000010042F4B0;
    v76 = type metadata accessor for KnoxServiceClient.ClientError();
    v33 = swift_allocObject();
    v71 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v72 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v34 = v80;
    (*(v82 + 104))(v83, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6);
    v35 = v81;
    v36 = v84;
    (*(v81 + 104))(v84, enum case for DispatchQoS.QoSClass.default(_:), v34);
    static OS_dispatch_queue.global(qos:)();
    (*(v35 + 8))(v36, v34);
    v37 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v38 = v74;
    *(v33 + 16) = 0xD000000000000010;
    *(v33 + 24) = v38;
    v39 = v73;
    *(v33 + 32) = 0xD00000000000006ELL;
    *(v33 + 40) = v39;
    *(v33 + 56) = 12;
    *(v33 + 48) = 250;
    *(v33 + 64) = 0xD00000000000003DLL;
    *(v33 + 72) = v75;
    *(v33 + 80) = 0;
    *(v33 + 88) = v37;
    sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    v40 = swift_allocError();
    *v41 = v33;
    swift_willThrow();
    v42 = v79;
    *(v79 + 88) = -200;
    *(v42 + 92) = 0;
    v43 = *(v42 + 96);
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    *(v44 + 24) = v40;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_100094798;
    *(v45 + 24) = v44;
    v92 = sub_10001FA40;
    v93 = v45;
    v88 = _NSConcreteStackBlock;
    v89 = 1107296256;
    v90 = sub_10003885C;
    v91 = &unk_100481138;
    v46 = _Block_copy(&v88);
    swift_errorRetain();

    swift_errorRetain();

    dispatch_sync(v43, v46);

    _Block_release(v46);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if ((v43 & 1) == 0)
    {
      AEAAuthDataDestroy(v78);
      return 4294967096;
    }

    __break(1u);
    goto LABEL_21;
  }

  aBlock[0] = v94;
  aBlock[1] = v95;
  v100 = v96;
  v101 = v97;
  v102 = v98;
  sub_100090CB4(aBlock);
  v76 = v23;
  v75 = v24;
  sub_100047544(&v94);
LABEL_14:
  v47 = v79;
  swift_beginAccess();
  sub_100003B20(v47 + 24, &v88);
  v48 = sub_10000E2A8(&v88, v91);
  v74 = v69;
  __chkstk_darwin(v48);
  v69[-2] = a1;
  sub_1000039E8(&qword_1004A88B8, &qword_100378D58);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v49 = v87;
  *(v47 + 88) = v86;
  *(v47 + 92) = v49;
  sub_100003C3C(&v88);
  if (*(v47 + 92))
  {
    LOBYTE(v88) = 14;
    v50 = sub_1000905A8(4, &v88, 0xD000000000000037, 0x800000010042F3E0);

    AEAAuthDataDestroy(v78);
    return v50;
  }

  v51 = *(v47 + 88);
  v52 = v78;
  if (!v51)
  {

    AEAAuthDataDestroy(v52);
    return 0;
  }

  v73 = 0x800000010042F420;
  v74 = 0x800000010042AD30;
  v88 = 0;
  v89 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);

  v88 = 0xD000000000000030;
  v89 = 0x800000010042F440;
  v86 = v51;
  v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v53);

  v71 = v88;
  v70 = v89;
  v72 = type metadata accessor for KnoxServiceClient.ClientError();
  v54 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v69[1] = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v88 = _swiftEmptyArrayStorage;
  sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v55 = v80;
  (*(v82 + 104))(v83, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6);
  v56 = v81;
  v57 = v84;
  (*(v81 + 104))(v84, enum case for DispatchQoS.QoSClass.default(_:), v55);
  static OS_dispatch_queue.global(qos:)();
  (*(v56 + 8))(v57, v55);
  v58 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v59 = v73;
  *(v54 + 16) = 0xD000000000000010;
  *(v54 + 24) = v59;
  v60 = v74;
  *(v54 + 32) = 0xD00000000000006ELL;
  *(v54 + 40) = v60;
  *(v54 + 56) = 14;
  *(v54 + 48) = 273;
  v61 = v70;
  *(v54 + 64) = v71;
  *(v54 + 72) = v61;
  *(v54 + 80) = 0;
  *(v54 + 88) = v58;
  sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
  v62 = swift_allocError();
  *v63 = v54;
  v64 = v79;
  *(v79 + 88) = -600;
  *(v64 + 92) = 0;
  v65 = *(v64 + 96);
  v66 = swift_allocObject();
  *(v66 + 16) = v64;
  *(v66 + 24) = v62;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_100094798;
  *(v67 + 24) = v66;
  v92 = sub_10001FA40;
  v93 = v67;
  v88 = _NSConcreteStackBlock;
  v89 = 1107296256;
  v90 = sub_10003885C;
  v91 = &unk_1004811B0;
  v68 = _Block_copy(&v88);
  swift_errorRetain();

  swift_errorRetain();

  dispatch_sync(v65, v68);

  _Block_release(v68);
  LOBYTE(v68) = swift_isEscapingClosureAtFileLocation();

  if ((v68 & 1) == 0)
  {
    AEAAuthDataDestroy(v78);
    return 4294966696;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_10008FE50(uint64_t a1@<X0>, void *a2@<X8>)
{
  v62 = a2;
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v59 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2;
  v15 = *(v2 + 80);
  v16 = objc_allocWithZone(type metadata accessor for SAKSDecryptionTask(0));
  v17 = v15;
  sub_1000475AC(a1, aBlock);
  v18 = v65;
  v19 = sub_100089F34(v17, a1, 0);
  if (!v18)
  {
    v20 = v19;
    v56 = v13;
    v57 = v10;
    v58 = v5;
    v65 = v7;
    v21 = v63;

    v22 = *((swift_isaMask & *v20) + 0x150);
    v23 = v20;
    v24 = v22();
    v25 = v23;
    v26 = v24;

    if (v26)
    {
      type metadata accessor for KnoxServiceClient.ClientError();
      sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v27 = v26;
    }

    else
    {
      v28 = v14;
      v29 = *(v14 + 96);
      sub_1000039E8(&unk_1004A73A0, &qword_100376F70);
      OS_dispatch_queue.sync<A>(execute:)();
      if (!aBlock[0])
      {
        v30 = *&v25[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_serverResponse + 8];
        if (v30)
        {
          v31 = *&v25[OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_serverResponse];

          v32 = v62;
          *v62 = v31;
          v32[1] = v30;
          return;
        }

        v48 = v25;
        v53 = 0x800000010042F360;
        v54 = 0x800000010042AD30;
        v55 = 0x800000010042BD20;
        v62 = type metadata accessor for KnoxServiceClient.ClientError();
        v51 = swift_allocObject();
        v49 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
        v50 = "hivePointer.swift";
        static DispatchQoS.userInitiated.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
        v52 = v28;
        sub_1000039E8(&unk_1004A7850, &qword_100376280);
        sub_10003DEE8();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        (*(v59 + 104))(v65, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v58);
        v34 = v60;
        v33 = v61;
        (*(v61 + 104))(v60, enum case for DispatchQoS.QoSClass.default(_:), v21);
        static OS_dispatch_queue.global(qos:)();
        v35 = v34;
        v36 = v51;
        (*(v33 + 8))(v35, v21);
        v37 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
        v38 = v53;
        *(v36 + 16) = 0xD000000000000019;
        *(v36 + 24) = v38;
        *(v36 + 32) = 0xD00000000000006ELL;
        v39 = v54;
        *(v36 + 56) = 12;
        *(v36 + 40) = v39;
        *(v36 + 48) = 314;
        v40 = v55;
        *(v36 + 64) = 0xD000000000000020;
        *(v36 + 72) = v40;
        *(v36 + 80) = 0;
        *(v36 + 88) = v37;
        sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
        v41 = swift_allocError();
        *v42 = v36;
        v43 = swift_allocObject();
        *(v43 + 16) = v52;
        *(v43 + 24) = v41;
        v44 = swift_allocObject();
        *(v44 + 16) = sub_100094798;
        *(v44 + 24) = v43;
        aBlock[4] = sub_10001FA40;
        aBlock[5] = v44;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10003885C;
        aBlock[3] = &unk_100481048;
        v45 = _Block_copy(aBlock);

        swift_errorRetain();

        dispatch_sync(v29, v45);

        _Block_release(v45);
        LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

        if (v41)
        {
          __break(1u);
          return;
        }

        swift_allocError();
        *v46 = v36;
        v25 = v48;
      }
    }

    swift_willThrow();
  }
}

uint64_t sub_1000905A8(int a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a1;
  v33 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v31 - 8);
  __chkstk_darwin(v31);
  v27 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v30 = *a2;
  v28 = 0x800000010042F330;
  v29 = 0x800000010042AD30;
  v32 = type metadata accessor for KnoxServiceClient.ClientError();
  v12 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v26 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v27, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  v13 = v33;
  (*(v5 + 104))(v7, enum case for DispatchQoS.QoSClass.default(_:), v33);
  static OS_dispatch_queue.global(qos:)();
  (*(v5 + 8))(v7, v13);
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v12 + 16) = 0xD00000000000002BLL;
  *(v12 + 24) = v28;
  *(v12 + 32) = 0xD00000000000006ELL;
  v15 = v29;
  *(v12 + 56) = v30;
  *(v12 + 40) = v15;
  *(v12 + 48) = 345;
  v16 = v35;
  *(v12 + 64) = v34;
  *(v12 + 72) = v16;
  *(v12 + 80) = 0;
  *(v12 + 88) = v14;
  sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
  v17 = swift_allocError();
  *v18 = v12;
  v19 = -100 * v36;
  v20 = v37;
  *(v37 + 88) = v19;
  *(v20 + 92) = 0;
  v21 = *(v20 + 96);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v17;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_100093F18;
  *(v23 + 24) = v22;
  aBlock[4] = sub_10001F874;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003885C;
  aBlock[3] = &unk_100480FD0;
  v24 = _Block_copy(aBlock);
  swift_errorRetain();
  swift_errorRetain();

  dispatch_sync(v21, v24);

  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    return v19;
  }

  __break(1u);
  return result;
}

void sub_100090B24(__SecKey *a1, AEAContext_impl *a2)
{
  v4 = v2;
  swift_slowAlloc();
  v7 = sub_1000939E0(a1);
  if (v3)
  {
    goto LABEL_12;
  }

  v9 = v7;
  v10 = v8;
  sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
  v11 = static OS_os_log.default.getter();
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Found appleArchiveSigningPublicKey, will pass public key to AEA context", 71, 2, &_mh_execute_header, v11, v12, _swiftEmptyArrayStorage);

  v15 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    v16 = 0;
    if (v15 != 2)
    {
      goto LABEL_11;
    }

    v18 = *(v9 + 16);
    v17 = *(v9 + 24);
    v16 = v17 - v18;
    if (!__OFSUB__(v17, v18))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(v10);
LABEL_11:
    sub_1000318C0(v9, v10, v13, v14);
    v19 = sub_1000469F0(v16, v9, v10);
    sub_100031928(v9, v10);
    v20 = AEAContextSetFieldBlob(a2, 7u, 1u, (v19 + 32), *(v19 + 16));
    sub_100031928(v9, v10);

    *(v4 + 88) = v20;
    *(v4 + 92) = 0;
LABEL_12:

    return;
  }

  if (!__OFSUB__(HIDWORD(v9), v9))
  {
    v16 = HIDWORD(v9) - v9;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_100090CB4(uint64_t a1)
{
  v44 = type metadata accessor for DispatchQoS.QoSClass();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  __chkstk_darwin(v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v48;
  sub_10008FE50(a1, &v45);
  if (!v16)
  {
    v36 = v15;
    v37 = v13;
    v38 = v8;
    v39 = v11;
    v48 = v1;
    v17 = Data.init(base64Encoded:options:)();
    v19 = v18;

    if (v19 >> 60 != 15)
    {
      v46 = type metadata accessor for SHA256Digest();
      v47 = sub_100093ECC(&qword_1004A88B0, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
      sub_100064BF8(&v45);
      sub_100093ECC(&unk_1004A7820, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      v30 = v36;
      dispatch thunk of HashFunction.init()();
      sub_1000318C0(v17, v19, v31, v32);
      sub_100093720(v17, v19, v30);
      sub_100031914(v17, v19);
      dispatch thunk of HashFunction.finalize()();
      sub_100031914(v17, v19);
      (*(v37 + 8))(v30, v12);
      v33 = v48;
      swift_beginAccess();
      sub_100003C3C((v33 + 24));
      sub_100003C88(&v45, v33 + 24);
      return swift_endAccess();
    }

    v35 = 0x800000010042F250;
    v36 = 0x800000010042AD30;
    v37 = 0x800000010042BD50;
    v48 = type metadata accessor for KnoxServiceClient.ClientError();
    v20 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v34[1] = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v45 = _swiftEmptyArrayStorage;
    sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v41 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v40);
    v21 = v42;
    v22 = v43;
    v23 = v44;
    (*(v42 + 104))(v43, enum case for DispatchQoS.QoSClass.default(_:), v44);
    static OS_dispatch_queue.global(qos:)();
    (*(v21 + 8))(v22, v23);
    v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v25 = v35;
    *(v20 + 16) = 0xD000000000000017;
    *(v20 + 24) = v25;
    *(v20 + 32) = 0xD00000000000006ELL;
    v26 = v36;
    *(v20 + 56) = 7;
    *(v20 + 40) = v26;
    *(v20 + 48) = 439;
    v27 = v37;
    *(v20 + 64) = 0xD000000000000020;
    *(v20 + 72) = v27;
    *(v20 + 80) = 0;
    *(v20 + 88) = v24;
    sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v28 = v20;
    swift_willThrow();
  }

  return swift_willThrow();
}

uint64_t sub_1000912E8()
{
  sub_100003C3C((v0 + 24));
  sub_100031B5C(*(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

void *sub_100091348@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = AEADecryptToFileChunkAsyncStreamOpen(a1, a2, sub_1000913A8, sub_1000913F0, a3, a4, a5, a6);
  *a7 = result;
  return result;
}

uint64_t sub_1000913A8(uint64_t result, AEAContext_impl *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    v5 = sub_10008ECE4(a2);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000913F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (result)
  {
    v6 = result;
    v7 = *(result + 64);

    if (v7)
    {
      v8 = *(v6 + 72);

      v10 = v7(v9, a5);

      sub_100031B5C(v7, v8);
      return v10;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009147C()
{
  v43 = type metadata accessor for DispatchQoS.QoSClass();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v44 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v41 = *(v46 - 8);
  __chkstk_darwin(v46);
  v42 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for KnoxAEADecryptToFileAsync.CallbackWrapper();
  v47 = v0;
  OS_dispatch_queue.sync<A>(execute:)();
  v11 = sub_1000039E8(&unk_1004A73A0, &qword_100376F70);
  OS_dispatch_queue.sync<A>(execute:)();

  if (v53)
  {
    return swift_willThrow();
  }

  v36 = v11;
  v37 = v10;
  v38 = v4;
  v39 = v6;
  v40 = v9;
  v51 = 0;
  v52 = 0;
  v50 = -9999;
  v49 = 1;
  __chkstk_darwin(v12);
  v14 = v47;
  *(&v34 - 6) = v47;
  *(&v34 - 5) = &v50;
  *(&v34 - 4) = &v52;
  *(&v34 - 3) = &v51;
  *(&v34 - 2) = &v49;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    if (v49 == 1)
    {
      v36 = 0x800000010042AD30;
      v37 = 0x800000010042F780;
      v47 = type metadata accessor for KnoxServiceClient.ClientError();
      v15 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v35 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v53 = _swiftEmptyArrayStorage;
      sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v41 + 104))(v42, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v46);
      v17 = v44;
      v16 = v45;
      v18 = v43;
      (*(v45 + 104))(v44, enum case for DispatchQoS.QoSClass.default(_:), v43);
      static OS_dispatch_queue.global(qos:)();
      (*(v16 + 8))(v17, v18);
      v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v15 + 16) = 0x65676E6152746567;
      *(v15 + 24) = 0xEA00000000002928;
      *(v15 + 32) = 0xD00000000000006ELL;
      v20 = v36;
      *(v15 + 56) = 10;
      *(v15 + 40) = v20;
      *(v15 + 48) = 591;
      *(v15 + 64) = 0xD000000000000020;
      v21 = v37;
      goto LABEL_6;
    }

    v23 = v50;
    v24 = v46;
    if (v50 < 0)
    {
      OS_dispatch_queue.sync<A>(execute:)();
      OS_dispatch_queue.sync<A>(execute:)();

      if (v53)
      {
        return swift_willThrow();
      }

      v37 = 0x800000010042AD30;
      v53 = 0;
      v54 = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      v25._countAndFlagsBits = 0xD000000000000014;
      v25._object = 0x800000010042F650;
      String.append(_:)(v25);
      v48 = v23;
      v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v26);

      v27._countAndFlagsBits = 0xD000000000000023;
      v27._object = 0x800000010042F750;
      String.append(_:)(v27);
      String.append(_:)(*(v14 + 16));
      v28._countAndFlagsBits = 10016;
      v28._object = 0xE200000000000000;
      String.append(_:)(v28);
      String.append(_:)(*(v14 + 56));
      v29._countAndFlagsBits = 39;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
      v35 = v54;
      v36 = v53;
      v47 = type metadata accessor for KnoxServiceClient.ClientError();
      v15 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v34 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v53 = _swiftEmptyArrayStorage;
      sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v41 + 104))(v42, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
      v31 = v44;
      v30 = v45;
      v32 = v43;
      (*(v45 + 104))(v44, enum case for DispatchQoS.QoSClass.default(_:), v43);
      static OS_dispatch_queue.global(qos:)();
      (*(v30 + 8))(v31, v32);
      v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v15 + 16) = 0x65676E6152746567;
      *(v15 + 24) = 0xEA00000000002928;
      *(v15 + 32) = 0xD00000000000006ELL;
      v33 = v37;
      *(v15 + 56) = 3;
      *(v15 + 40) = v33;
      *(v15 + 48) = 601;
      v21 = v35;
      *(v15 + 64) = v36;
LABEL_6:
      *(v15 + 72) = v21;
      *(v15 + 80) = 0;
      *(v15 + 88) = v19;
      sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v22 = v15;
      return swift_willThrow();
    }

    if (v50)
    {
      result = v52;
      if (!v52)
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_100091D64(uint64_t a1, _DWORD *a2, unint64_t *a3, uint64_t *a4, _BYTE *a5)
{
  result = *(a1 + 72);
  if (result)
  {
    *a2 = AAAsyncByteStreamGetRange(result, a3, a4);
    *a5 = 0;

    sub_1000039E8(&unk_1004A73A0, &qword_100376F70);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v7)
    {
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100091E38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 32);
  OS_dispatch_queue.sync<A>(execute:)();
  v7 = String.count.getter();

  if (!v7)
  {
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = v3;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1000946E0;
    *(v10 + 24) = v9;
    v20 = sub_10001FA40;
    v21 = v10;
    aBlock = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_10003885C;
    v19 = &unk_100481318;
    v11 = _Block_copy(&aBlock);

    dispatch_sync(v6, v11);
    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1000946EC;
      *(v13 + 24) = v3;
      v20 = sub_10001FA40;
      v21 = v13;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_10003885C;
      v19 = &unk_100481368;
      v14 = _Block_copy(&aBlock);

      dispatch_sync(v6, v14);
      _Block_release(v14);
      v15 = swift_isEscapingClosureAtFileLocation();

      if ((v15 & 1) == 0)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000920EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a3;
  v79 = a2;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v75 = *(v5 - 8);
  v76 = v5;
  __chkstk_darwin(v5);
  v78 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v77 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(v3 + 32);
  OS_dispatch_queue.sync<A>(execute:)();
  v82 = v4;
  v16 = String.count.getter();

  if (v16)
  {
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100376BB0;
    aBlock = 0;
    v85 = 0xE000000000000000;
    v92 = v3;
    type metadata accessor for KnoxAEADecryptToFileAsync();
    _print_unlocked<A, B>(_:_:)();
    v18._countAndFlagsBits = 46;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19._object = 0x800000010042F630;
    v19._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v19);
    v20 = aBlock;
    v21 = v85;
    *(v17 + 56) = &type metadata for String;
    v22 = sub_10001A9EC();
    *(v17 + 64) = v22;
    *(v17 + 32) = v20;
    *(v17 + 40) = v21;
    OS_dispatch_queue.sync<A>(execute:)();
    v23 = aBlock;
    v24 = v85;
    *(v17 + 96) = &type metadata for String;
    *(v17 + 104) = v22;
    *(v17 + 72) = v23;
    *(v17 + 80) = v24;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    v26 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Returning early from %{public}s - we were cancelled earlier with reason: '%{public}s'", 85, 2, &_mh_execute_header, v25, v26, v17);

    return;
  }

  v70 = v10;
  v71 = v7;
  v73 = v15;
  v74 = v12;
  v72 = v9;
  type metadata accessor for KnoxAEADecryptToFileAsync.CallbackWrapper();
  v27 = v83;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000039E8(&unk_1004A73A0, &qword_100376F70);
  OS_dispatch_queue.sync<A>(execute:)();

  if (aBlock)
  {
    swift_willThrow();
    return;
  }

  v91 = 1;
  v90 = 1;
  v28 = swift_allocObject();
  v28[2] = v3;
  v28[3] = &v90;
  v29 = v79;
  v28[4] = v80;
  v28[5] = v29;
  v28[6] = v81;
  v28[7] = &v91;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_100094650;
  *(v30 + 24) = v28;
  v88 = sub_10001FA40;
  v89 = v30;
  aBlock = _NSConcreteStackBlock;
  v85 = 1107296256;
  v86 = sub_10003885C;
  v87 = &unk_1004812A0;
  v31 = _Block_copy(&aBlock);

  dispatch_sync(v27, v31);
  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }

  else
  {
    v82 = v28;
    if (v91 == 1)
    {
      v79 = 0x800000010042AD30;
      v80 = 0x800000010042F630;
      v81 = 0x800000010042F700;
      v32 = v78;
      v83 = type metadata accessor for KnoxServiceClient.ClientError();
      v33 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v69 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v77 + 104))(v72, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v71);
      v34 = v75;
      v35 = v76;
      (*(v75 + 104))(v32, enum case for DispatchQoS.QoSClass.default(_:), v76);
      static OS_dispatch_queue.global(qos:)();
      (*(v34 + 8))(v32, v35);
      v36 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v37 = v80;
      *(v33 + 16) = 0xD000000000000015;
      *(v33 + 24) = v37;
      v38 = v79;
      *(v33 + 32) = 0xD00000000000006ELL;
      *(v33 + 40) = v38;
      *(v33 + 56) = 10;
      *(v33 + 48) = 661;
      v39 = v81;
      *(v33 + 64) = 0xD000000000000028;
      *(v33 + 72) = v39;
      *(v33 + 80) = 0;
      *(v33 + 88) = v36;
      sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      goto LABEL_10;
    }

    v40 = v77;
    if (v90 >= 1)
    {
      v80 = 0x800000010042F630;
      v83 = 0x800000010042AD30;
      aBlock = 0;
      v85 = 0xE000000000000000;
      v41 = v78;
      _StringGuts.grow(_:)(91);
      v42._countAndFlagsBits = 0xD000000000000059;
      v42._object = 0x800000010042F6A0;
      String.append(_:)(v42);
      v92 = v81;
      v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v43);

      v79 = aBlock;
      v69 = v85;
      v81 = type metadata accessor for KnoxServiceClient.ClientError();
      v33 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v68 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v40 + 104))(v72, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v71);
      v45 = v75;
      v44 = v76;
      (*(v75 + 104))(v41, enum case for DispatchQoS.QoSClass.default(_:), v76);
      static OS_dispatch_queue.global(qos:)();
      (*(v45 + 8))(v41, v44);
      v46 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v47 = v80;
      *(v33 + 16) = 0xD000000000000015;
      *(v33 + 24) = v47;
      v48 = v83;
      *(v33 + 32) = 0xD00000000000006ELL;
      *(v33 + 40) = v48;
      *(v33 + 56) = 14;
      *(v33 + 48) = 666;
      v49 = v69;
      *(v33 + 64) = v79;
      *(v33 + 72) = v49;
      *(v33 + 80) = 0;
      *(v33 + 88) = v46;
      sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      goto LABEL_10;
    }

    if (v90 < 0)
    {
      OS_dispatch_queue.sync<A>(execute:)();
      OS_dispatch_queue.sync<A>(execute:)();

      if (aBlock)
      {
        goto LABEL_11;
      }

      aBlock = 0;
      v85 = 0xE000000000000000;
      _StringGuts.grow(_:)(92);
      v51._countAndFlagsBits = 0xD000000000000014;
      v51._object = 0x800000010042F650;
      String.append(_:)(v51);
      LODWORD(v92) = v90;
      v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v52);

      v53._countAndFlagsBits = 0xD00000000000002DLL;
      v53._object = 0x800000010042F670;
      String.append(_:)(v53);
      v92 = v81;
      v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v54);

      v55._countAndFlagsBits = 0x6F632E6174616420;
      v55._object = 0xEC0000003D746E75;
      String.append(_:)(v55);
      v56 = v79 - v80;
      if (!v80)
      {
        v56 = 0;
      }

      v83 = 0x800000010042F630;
      v81 = 0x800000010042AD30;
      v92 = v56;
      v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v57);

      v58._countAndFlagsBits = 8238;
      v58._object = 0xE200000000000000;
      String.append(_:)(v58);
      String.append(_:)(*(v3 + 16));
      v59._countAndFlagsBits = 10016;
      v59._object = 0xE200000000000000;
      String.append(_:)(v59);
      String.append(_:)(*(v3 + 56));
      v60._countAndFlagsBits = 39;
      v60._object = 0xE100000000000000;
      String.append(_:)(v60);
      v79 = aBlock;
      v69 = v85;
      v80 = type metadata accessor for KnoxServiceClient.ClientError();
      v33 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v68 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v61 = v78;
      (*(v40 + 104))(v72, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v71);
      v63 = v75;
      v62 = v76;
      (*(v75 + 104))(v61, enum case for DispatchQoS.QoSClass.default(_:), v76);
      static OS_dispatch_queue.global(qos:)();
      (*(v63 + 8))(v61, v62);
      v64 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v65 = v83;
      *(v33 + 16) = 0xD000000000000015;
      *(v33 + 24) = v65;
      v66 = v81;
      *(v33 + 32) = 0xD00000000000006ELL;
      *(v33 + 40) = v66;
      *(v33 + 56) = 3;
      *(v33 + 48) = 675;
      v67 = v69;
      *(v33 + 64) = v79;
      *(v33 + 72) = v67;
      *(v33 + 80) = 0;
      *(v33 + 88) = v64;
      sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
LABEL_10:
      swift_allocError();
      *v50 = v33;
LABEL_11:
      swift_willThrow();

      return;
    }
  }
}

uint64_t sub_100092F9C()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v29 = *(v1 - 8);
  v30 = v1;
  __chkstk_darwin(v1);
  v28 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v27 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v32 = 1;
  v7 = *(v0 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = &v32;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000945B4;
  *(v9 + 24) = v8;
  aBlock[4] = sub_10001FA40;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003885C;
  aBlock[3] = &unk_100481228;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    OS_dispatch_queue.sync<A>(execute:)();
    v12 = String.count.getter();

    if (!v12 && (v32 & 1) == 0)
    {
      v22 = 0x800000010042AD30;
      v23 = 0x800000010042F5B0;
      v24 = type metadata accessor for KnoxServiceClient.ClientError();
      v13 = swift_allocObject();
      v21[1] = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v21[2] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v25 + 104))(v27, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
      v14 = v28;
      v15 = v29;
      v16 = v30;
      (*(v29 + 104))(v28, enum case for DispatchQoS.QoSClass.default(_:), v30);
      v26 = static OS_dispatch_queue.global(qos:)();
      (*(v15 + 8))(v14, v16);
      v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v13 + 16) = 0x292865736F6C63;
      *(v13 + 24) = 0xE700000000000000;
      v18 = v22;
      *(v13 + 32) = 0xD00000000000006ELL;
      *(v13 + 40) = v18;
      *(v13 + 56) = 10;
      *(v13 + 48) = 702;
      v19 = v23;
      *(v13 + 64) = 0xD000000000000016;
      *(v13 + 72) = v19;
      *(v13 + 80) = 0;
      *(v13 + 88) = v17;
      sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v20 = v13;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100093518()
{

  return swift_deallocClassInstance();
}

BOOL sub_1000935E4()
{
  OS_dispatch_queue.sync<A>(execute:)();
  v0 = String.count.getter();

  return v0 != 0;
}

uint64_t sub_1000936A8()
{
  result = sub_10009147C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100093700@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t sub_100093720(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      sub_100093ECC(&unk_1004A7820, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100093900(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_100093900(v5, v6);
  }

  type metadata accessor for SHA256();
  sub_100093ECC(&unk_1004A7820, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100093900(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100093ECC(&unk_1004A7820, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000939E0(__SecKey *a1)
{
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  error = 0;
  v13 = SecKeyCopyExternalRepresentation(a1, &error);
  if (v13)
  {
    v14 = v13;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v30 = v6;
    v31 = v11;
    v32 = v5;
    v33 = v4;
    v35 = v8;
    v16 = error;
    if (error)
    {
      type metadata accessor for CFError(0);
      v15 = v17;
      sub_100093ECC(&qword_1004A7910, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    }

    else
    {
      v26 = 0x800000010042F2C0;
      v27 = 0x800000010042AD30;
      v28 = 0x800000010042F2F0;
      v29 = type metadata accessor for KnoxServiceClient.ClientError();
      v16 = swift_allocObject();
      v25[1] = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v25[2] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v36 = _swiftEmptyArrayStorage;
      sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v30 + 104))(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
      v18 = v33;
      v19 = v34;
      (*(v34 + 104))(v33, enum case for DispatchQoS.QoSClass.default(_:), v2);
      static OS_dispatch_queue.global(qos:)();
      (*(v19 + 8))(v18, v2);
      v15 = 0xD000000000000020;
      v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v21 = v26;
      *(v16 + 16) = 0xD000000000000024;
      *(v16 + 24) = v21;
      *(v16 + 32) = 0xD00000000000006ELL;
      v22 = v27;
      *(v16 + 56) = 14;
      *(v16 + 40) = v22;
      *(v16 + 48) = 464;
      *(v16 + 64) = 0xD000000000000035;
      *(v16 + 72) = v28;
      *(v16 + 80) = 0;
      *(v16 + 88) = v20;
      sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    }

    swift_allocError();
    *v23 = v16;
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_100093ECC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100093F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

void sub_100093F64(unint64_t a1, void *a2, AEAContext_impl *a3)
{
  v37 = a3;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v36 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  if (a1)
  {
    v32 = v6;
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100376BB0;
    v33 = v5;
    if (a1 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 56) = &type metadata for Int;
    *(v13 + 64) = &protocol witness table for Int;
    *(v13 + 32) = v14;
    type metadata accessor for SecCertificate(0);
    v15 = Array.debugDescription.getter();
    v17 = v16;
    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = sub_10001A9EC();
    *(v13 + 72) = v15;
    *(v13 + 80) = v17;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v18 = static OS_os_log.default.getter();
    v19 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Found knoxSignatureCertificateChain with %{public}i certificates: %{public}s", 76, 2, &_mh_execute_header, v18, v19, v13);

    if (a2)
    {
      v20 = a2;
      sub_100090B24(v20, v37);
    }

    else
    {
      v30 = 0x800000010042F540;
      v31 = 0x800000010042AD30;
      v37 = 0x800000010042F570;
      v38 = type metadata accessor for KnoxServiceClient.ClientError();
      v21 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v29 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v39 = _swiftEmptyArrayStorage;
      sub_100093ECC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v34 + 104))(v36, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v35);
      v23 = v32;
      v22 = v33;
      (*(v32 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v33);
      static OS_dispatch_queue.global(qos:)();
      (*(v23 + 8))(v8, v22);
      v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v25 = v30;
      *(v21 + 16) = 0xD000000000000022;
      *(v21 + 24) = v25;
      *(v21 + 32) = 0xD00000000000006ELL;
      v26 = v31;
      *(v21 + 56) = 1;
      *(v21 + 40) = v26;
      *(v21 + 48) = 364;
      v27 = v37;
      *(v21 + 64) = 0xD00000000000003ELL;
      *(v21 + 72) = v27;
      *(v21 + 80) = 0;
      *(v21 + 88) = v24;
      sub_100093ECC(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v28 = v21;
      swift_willThrow();
    }
  }
}

const uint8_t *sub_1000944AC@<X0>(const uint8_t *buf@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (buf)
  {
    buf = AEAContextSetFieldBlob(*(v3 + 16), 9u, 0, buf, a2 - buf);
    *a3 = buf;
    *(a3 + 4) = 0;
  }

  else
  {
    __break(1u);
  }

  return buf;
}

uint64_t sub_1000944FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009453C()
{
  *(*(v0 + 16) + 104) = *(v0 + 24);
  swift_errorRetain();
}

uint64_t sub_10009457C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000945B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = AAAsyncByteStreamClose(*(v1 + 72));
  if (result)
  {
    *v2 = 0;
  }

  *(v1 + 72) = 0;
  return result;
}

uint64_t sub_100094618()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t *sub_100094650()
{
  result = *(v0[2] + 72);
  if (result)
  {
    v2 = v0[4];
    if (v2)
    {
      v3 = v0[3];
      v5 = v0[5];
      v4 = v0[6];
      v6 = v0[7];
      result = AAAsyncByteStreamProcess(result, v2, v5 - v2, v4);
      *v3 = result;
      *v6 = 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000946A0()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_1000946EC()
{
  result = *(v0 + 72);
  if (result)
  {
    return AAAsyncByteStreamCancel(result);
  }

  return result;
}

uint64_t sub_100094720()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_100094838(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1000ACE44(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_100097C1C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000948B0(uint64_t *a1)
{
  v2 = *(sub_1000039E8(&qword_1004A6DB0, &qword_1003784B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000ACE30(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100097AD8(v6);
  *a1 = v3;
  return result;
}

char *UniqueUpdatesTask.__allocating_init(client:space:type:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  v14 = objc_allocWithZone(type metadata accessor for UniqueUpdatesTask(0));
  v15 = &v14[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter];
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  *&v14[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdates] = _swiftEmptyArrayStorage;
  *&v14[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdatesWithCreatedTime] = _swiftEmptyArrayStorage;
  v16 = &v14[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_space];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = &v14[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_type];
  *v17 = a4;
  *(v17 + 1) = a5;
  swift_beginAccess();

  sub_100022E68(v33, v15);
  swift_endAccess();
  v18 = &v14[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_finalHandlerType];
  *v18 = a6;
  *(v18 + 1) = a7;
  v18[16] = 0;

  v19 = a1;
  v20 = sub_10003D38C(v19);

  v21 = v20;
  _StringGuts.grow(_:)(36);

  v22 = &v21[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_space];
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];

  v25._countAndFlagsBits = v23;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x3A6570797420;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  v27 = &v21[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_type];
  swift_beginAccess();
  v28 = *v27;
  v29 = v27[1];

  v30._countAndFlagsBits = v28;
  v30._object = v29;
  String.append(_:)(v30);

  sub_100013F2C(v33, &qword_1004A7158, &unk_100376CA0);
  v31 = &v21[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v31 = 0xD00000000000001ALL;
  *(v31 + 1) = 0x800000010042CC60;

  return v21;
}

uint64_t type metadata accessor for UniqueUpdatesTask(uint64_t a1)
{
  result = qword_1004A8928;
  if (!qword_1004A8928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *UniqueUpdatesTask.__allocating_init(client:space:timeFilter:type:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100003B20(a4, v35);
  v16 = objc_allocWithZone(type metadata accessor for UniqueUpdatesTask(0));
  v17 = &v16[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter];
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  *&v16[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdates] = _swiftEmptyArrayStorage;
  *&v16[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdatesWithCreatedTime] = _swiftEmptyArrayStorage;
  v18 = &v16[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_space];
  *v18 = a2;
  *(v18 + 1) = a3;
  v19 = &v16[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_type];
  *v19 = a5;
  *(v19 + 1) = a6;
  swift_beginAccess();

  sub_100022E68(v35, v17);
  swift_endAccess();
  v20 = &v16[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_finalHandlerType];
  *v20 = a7;
  *(v20 + 1) = a8;
  v20[16] = 1;

  v21 = a1;
  v22 = sub_10003D38C(v21);

  v23 = v22;
  _StringGuts.grow(_:)(36);

  v24 = &v23[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_space];
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];

  v27._countAndFlagsBits = v25;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0x3A6570797420;
  v28._object = 0xE600000000000000;
  String.append(_:)(v28);
  v29 = &v23[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_type];
  swift_beginAccess();
  v30 = *v29;
  v31 = v29[1];

  v32._countAndFlagsBits = v30;
  v32._object = v31;
  String.append(_:)(v32);

  sub_100003C3C(a4);
  sub_100013F2C(v35, &qword_1004A7158, &unk_100376CA0);
  v33 = &v23[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v33 = 0xD00000000000001ALL;
  *(v33 + 1) = 0x800000010042CC60;

  return v23;
}

uint64_t sub_100094F30()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for UniqueUpdatesTask(0);
  v2 = objc_msgSendSuper2(&v12, "description");
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = v3;
  v4._countAndFlagsBits = 0x273D656D616E202CLL;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);
  v5 = &v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];

  v8._countAndFlagsBits = v7;
  v8._object = v6;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 39;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return v11;
}

id sub_100095014()
{
  result = [objc_allocWithZone(NSISO8601DateFormatter) init];
  qword_1004A88C0 = result;
  return result;
}

uint64_t sub_100095138(uint64_t a1, uint64_t *a2)
{
  sub_100013E54(a1, v6, &qword_1004A7158, &unk_100376CA0);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter;
  swift_beginAccess();
  sub_10002287C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1000951AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter;
  swift_beginAccess();
  return sub_100013E54(v1 + v3, a1, &qword_1004A7158, &unk_100376CA0);
}

uint64_t sub_100095214(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter;
  swift_beginAccess();
  sub_10002287C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1000952D4@<X0>(char *a1@<X8>)
{
  v102 = a1;
  v113 = type metadata accessor for DispatchQoS.QoSClass();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v110 = v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v105);
  v109 = v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v108 = v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000039E8(&qword_1004A7160, &unk_100378C70);
  __chkstk_darwin(v7 - 8);
  v116 = v92 - v8;
  v115 = type metadata accessor for URLComponents();
  v117 = *(v115 - 8);
  __chkstk_darwin(v115);
  v104 = v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for URLRequest();
  v100 = *(v101 - 8);
  v10 = __chkstk_darwin(v101);
  v99 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v92 - v12;
  v14 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  v15 = __chkstk_darwin(v14 - 8);
  v103 = v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v92 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v98 = v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = v92 - v24;
  __chkstk_darwin(v23);
  v27 = v92 - v26;
  v28 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_nextPageURL;
  swift_beginAccess();
  v124 = v1;
  sub_100013E54(v1 + v28, v18, &qword_1004A6D30, &unk_100376820);
  v29 = *(v20 + 48);
  if (v29(v18, 1, v19) != 1)
  {
    (*(v20 + 32))(v27, v18, v19);
    LOBYTE(v120) = 1;
    v52 = v114;
    sub_10005ADB0(v27, 0, 1, v13);
    if (v52)
    {
      return (*(v20 + 8))(v27, v19);
    }

    (*(v20 + 8))(v27, v19);
    return (*(v100 + 32))(v102, v13, v101);
  }

  sub_100013F2C(v18, &qword_1004A6D30, &unk_100376820);
  v30 = *(v124 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client);
  v31 = v20;
  v32 = *(v20 + 16);
  v96 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL;
  v97 = v32;
  v32(v25, v30 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL, v19);
  v33 = v116;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v95 = v31;
  v36 = *(v31 + 8);
  v35 = v31 + 8;
  v34 = v36;
  v36(v25, v19);
  v37 = v33;
  v38 = v115;
  if ((*(v117 + 48))(v37, 1, v115) == 1)
  {
    sub_100013F2C(v116, &qword_1004A7160, &unk_100378C70);
    v124 = 0x800000010042F7B0;
    v120 = 0;
    v121 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v120 = 0xD000000000000028;
    v121 = 0x800000010042A390;
    v97(v25, v30 + v96, v19);
    v39 = URL.description.getter();
    v41 = v40;
    v34(v25, v19);
    v42._countAndFlagsBits = v39;
    v42._object = v41;
    String.append(_:)(v42);

    v116 = v120;
    v115 = v121;
    v117 = type metadata accessor for KnoxServiceClient.ClientError();
    v43 = swift_allocObject();
    sub_10000E014();
    v114 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v120 = _swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v106 + 104))(v110, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v107);
    v44 = v112;
    v45 = v111;
    v46 = v113;
    (*(v112 + 104))(v111, enum case for DispatchQoS.QoSClass.default(_:), v113);
    static OS_dispatch_queue.global(qos:)();
    (*(v44 + 8))(v45, v46);
    v47 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    strcpy((v43 + 16), "urlRequest()");
    *(v43 + 29) = 0;
    *(v43 + 30) = -5120;
    *(v43 + 32) = 0xD00000000000006BLL;
    v48 = v124;
    *(v43 + 56) = 14;
    *(v43 + 40) = v48;
    *(v43 + 48) = 134;
    v49 = v115;
    *(v43 + 64) = v116;
    *(v43 + 72) = v49;
    *(v43 + 80) = 0;
    *(v43 + 88) = v47;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v50 = v43;
    return swift_willThrow();
  }

  v93 = v29;
  v94 = v35;
  v96 = v34;
  v92[1] = v30;
  v97 = v19;
  v53 = v104;
  (*(v117 + 32))(v104, v116, v38);
  v120 = 0;
  v121 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v120 = 0x2F7365636170732FLL;
  v121 = 0xE800000000000000;
  v54 = v124;
  v55 = (v124 + OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_space);
  swift_beginAccess();
  v57 = *v55;
  v56 = v55[1];

  v58._countAndFlagsBits = v57;
  v58._object = v56;
  String.append(_:)(v58);

  v59._countAndFlagsBits = 0x2F73657079742FLL;
  v59._object = 0xE700000000000000;
  String.append(_:)(v59);
  v60 = (v54 + OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_type);
  swift_beginAccess();
  v62 = *v60;
  v61 = v60[1];

  v63._countAndFlagsBits = v62;
  v63._object = v61;
  String.append(_:)(v63);

  v64._countAndFlagsBits = 0x2F73646C6569662FLL;
  v64._object = 0xEE00657461647075;
  String.append(_:)(v64);
  v65 = v120;
  v66 = v121;
  v67 = URLComponents.path.modify();
  v68._countAndFlagsBits = v65;
  v68._object = v66;
  String.append(_:)(v68);

  v67(&v120, 0);
  v69 = OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter;
  swift_beginAccess();
  sub_100013E54(v54 + v69, &v118, &qword_1004A7158, &unk_100376CA0);
  if (v119)
  {
    sub_100027A3C(&v118, &v120);
    v70 = v122;
    v71 = v123;
    sub_10000E2A8(&v120, v122);
    (*(v71 + 8))(v70, v71);
    URLComponents.queryItems.setter();
    sub_100003C3C(&v120);
  }

  else
  {
    sub_100013F2C(&v118, &qword_1004A7158, &unk_100376CA0);
  }

  v72 = v53;
  v73 = v114;
  v74 = v96;
  v75 = v103;
  URLComponents.url.getter();
  v76 = v97;
  if (v93(v75, 1, v97) != 1)
  {
    v87 = v98;
    (*(v95 + 32))();
    LOBYTE(v120) = 1;
    v88 = v99;
    v89 = v73;
    sub_10005ADB0(v87, 0, 1, v99);
    v90 = v115;
    v91 = v117;
    if (v89)
    {
      v74(v87, v76);
      return (*(v91 + 8))(v72, v90);
    }

    v74(v87, v76);
    (*(v91 + 8))(v72, v90);
    v13 = v88;
    return (*(v100 + 32))(v102, v13, v101);
  }

  sub_100013F2C(v75, &qword_1004A6D30, &unk_100376820);
  v124 = 0x800000010042F7B0;
  v120 = 0;
  v121 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);

  v120 = 0xD000000000000026;
  v121 = 0x800000010042A3C0;
  v77._countAndFlagsBits = URLComponents.description.getter();
  String.append(_:)(v77);

  v78._countAndFlagsBits = 39;
  v78._object = 0xE100000000000000;
  String.append(_:)(v78);
  v114 = v120;
  v103 = v121;
  v116 = type metadata accessor for KnoxServiceClient.ClientError();
  v79 = swift_allocObject();
  sub_10000E014();
  v102 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v120 = _swiftEmptyArrayStorage;
  sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v106 + 104))(v110, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v107);
  v80 = v112;
  v81 = v111;
  v82 = v113;
  (*(v112 + 104))(v111, enum case for DispatchQoS.QoSClass.default(_:), v113);
  static OS_dispatch_queue.global(qos:)();
  (*(v80 + 8))(v81, v82);
  v83 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  strcpy((v79 + 16), "urlRequest()");
  *(v79 + 29) = 0;
  *(v79 + 30) = -5120;
  *(v79 + 32) = 0xD00000000000006BLL;
  v84 = v124;
  *(v79 + 56) = 14;
  *(v79 + 40) = v84;
  *(v79 + 48) = 145;
  v85 = v103;
  *(v79 + 64) = v114;
  *(v79 + 72) = v85;
  *(v79 + 80) = 0;
  *(v79 + 88) = v83;
  sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v86 = v79;
  swift_willThrow();
  return (*(v117 + 8))(v104, v115);
}

void *sub_100096380(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for DecodingError.Context();
  v90 = *(v7 - 8);
  v91 = v7;
  __chkstk_darwin(v7);
  v89 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DecodingError();
  v98 = *(v9 - 8);
  v99 = v9;
  __chkstk_darwin(v9);
  v100 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v95 = *(v15 - 8);
  v96 = v15;
  __chkstk_darwin(v15);
  v97 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v92);
  v94 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v18 - 8);
  v93 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v2;
  if (*(v2 + OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_finalHandlerType + 16))
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1000039E8(&qword_1004A88E0, &qword_100378D70);
    sub_1000996F8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (!v3)
    {
      v86 = a2;
      v87 = a1;

      v21 = aBlock;
      v101 = aBlock[2];
      if (v101)
      {
        v84 = v14;
        v85 = v12;
        v88 = v11;
        v22 = 0;
        v23 = aBlock + 7;
        while (v22 < v21[2])
        {
          v24 = *(v23 - 1);
          v25 = *v23;
          v27 = *(v23 - 3);
          v26 = *(v23 - 2);

          v28 = objc_autoreleasePoolPush();
          sub_100097120(v27, v26, v24, v25, v103);
          ++v22;
          objc_autoreleasePoolPop(v28);

          v23 += 4;
          if (v101 == v22)
          {
            goto LABEL_22;
          }
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      goto LABEL_22;
    }

LABEL_9:

    goto LABEL_10;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000039E8(&qword_1004A6B48, &unk_100376810);
  sub_100099868();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {
    goto LABEL_9;
  }

  v86 = a2;
  v87 = a1;

  v48 = aBlock;
  ObjectType = aBlock[2];
  if (ObjectType)
  {
    v101 = 0;
    v49 = 0;
    v50 = OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdates;
    v51 = (aBlock + 5);
    while (v49 < v48[2])
    {
      v52 = *(v51 - 1);
      v53 = *v51;

      v54 = objc_autoreleasePoolPush();
      objc_allocWithZone(type metadata accessor for KnoxUpdate());

      v55 = KnoxUpdate.init(identifier:)(v52, v53);
      v56 = v103;
      swift_beginAccess();
      v57 = v55;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v56 + v50) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v56 + v50) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v100 = *((*(v56 + v50) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v49;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      objc_autoreleasePoolPop(v54);

      v51 += 2;
      if (ObjectType == v49)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_22:

  v58 = *(v103 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v59 = v86 >> 62;
  if ((v86 >> 62) > 1)
  {
    if (v59 == 2)
    {
      v62 = *(v87 + 16);
      v61 = *(v87 + 24);
      v60 = v61 - v62;
      if (__OFSUB__(v61, v62))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
      v60 = 0;
    }
  }

  else if (v59)
  {
    if (__OFSUB__(HIDWORD(v87), v87))
    {
LABEL_48:
      __break(1u);
      return result;
    }

    v60 = HIDWORD(v87) - v87;
  }

  else
  {
    v60 = BYTE6(v86);
  }

  v69 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue;
  result = OS_dispatch_queue.sync<A>(execute:)();
  v70 = __OFADD__(aBlock, v60);
  v71 = aBlock + v60;
  if (v70)
  {
    goto LABEL_45;
  }

  v72 = *(v58 + v69);
  v73 = swift_allocObject();
  *(v73 + 16) = v71;
  *(v73 + 24) = v58;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_100027124;
  *(v74 + 24) = v73;
  v108 = sub_10001F874;
  v109 = v74;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_10003885C;
  v107 = &unk_100481458;
  v75 = _Block_copy(&aBlock);

  dispatch_sync(v72, v75);
  _Block_release(v75);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v77 = v103;
  v78 = *(v103 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  v79 = swift_allocObject();
  *(v79 + 16) = v77;
  *(v79 + 24) = 1;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_10001F9F8;
  *(v80 + 24) = v79;
  v108 = sub_10001FA40;
  v109 = v80;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_10003885C;
  v107 = &unk_1004814D0;
  v81 = _Block_copy(&aBlock);
  v82 = v77;

  dispatch_sync(v78, v81);
  _Block_release(v81);
  LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

  if (v77)
  {
    __break(1u);

    objc_autoreleasePoolPop(v81);

    v11 = v88;
    v12 = v85;
    v14 = v84;
    v4 = v78;
LABEL_10:
    v29 = v100;
    aBlock = &v4->isa;
    swift_errorRetain();
    sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
    v30 = v99;
    v31 = swift_dynamicCast();
    v32 = v98;
    if (v31)
    {
      v33 = (*(v98 + 11))(v29, v30);
      v88 = v11;
      if (v33 == enum case for DecodingError.typeMismatch(_:) || v33 == enum case for DecodingError.valueNotFound(_:))
      {
        v34 = v12;

        (*(v32 + 12))(v29, v30);
        v35 = sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
        v36 = v89;
        v37 = v90;
        v38 = v91;
        (*(v90 + 32))(v89, &v29[*(v35 + 48)], v91);
LABEL_14:
        v39 = DecodingError.Context.debugDescription.getter();
        ObjectType = v40;
        v103 = v39;
        (*(v37 + 8))(v36, v38);
LABEL_15:

        v99 = 0x800000010042F7B0;
        v100 = 0x800000010042A530;
        v101 = type metadata accessor for KnoxServiceClient.ClientError();
        v41 = swift_allocObject();
        sub_10000E014();
        v98 = "hivePointer.swift";
        static DispatchQoS.userInitiated.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
        sub_1000039E8(&unk_1004A7850, &qword_100376280);
        sub_10003DEE8();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        (*(v95 + 104))(v97, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v96);
        v42 = v88;
        (*(v34 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v88);
        static OS_dispatch_queue.global(qos:)();
        (*(v34 + 8))(v14, v42);
        v43 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
        v44 = v100;
        *(v41 + 16) = 0xD00000000000001ALL;
        *(v41 + 24) = v44;
        v45 = v99;
        *(v41 + 32) = 0xD00000000000006BLL;
        *(v41 + 40) = v45;
        *(v41 + 56) = 7;
        *(v41 + 48) = 218;
        v46 = ObjectType;
        *(v41 + 64) = v103;
        *(v41 + 72) = v46;
        *(v41 + 80) = 0;
        *(v41 + 88) = v43;
        sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
        swift_allocError();
        *v47 = v41;
        return swift_willThrow();
      }

      if (v33 == enum case for DecodingError.keyNotFound(_:))
      {
        v34 = v12;

        (*(v32 + 12))(v29, v30);
        v63 = sub_1000039E8(&qword_1004A7170, &qword_100376CC0);
        v64 = v89;
        v65 = v90;
        v66 = v91;
        (*(v90 + 32))(v89, &v29[*(v63 + 48)], v91);
        v67 = DecodingError.Context.debugDescription.getter();
        ObjectType = v68;
        v103 = v67;
        (*(v65 + 8))(v64, v66);
        sub_100003C3C(v29);
        goto LABEL_15;
      }

      if (v33 == enum case for DecodingError.dataCorrupted(_:))
      {
        v34 = v12;

        (*(v32 + 12))(v29, v30);
        v36 = v89;
        v37 = v90;
        v38 = v91;
        (*(v90 + 32))(v89, v29, v91);
        goto LABEL_14;
      }

      (*(v32 + 1))(v29, v30);
    }

    return swift_willThrow();
  }

  return result;
}

void sub_100097120(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  v58 = a5;
  v65 = a4;
  v62 = a3;
  v7 = sub_1000039E8(&qword_1004A6DB0, &qword_1003784B0);
  v57 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v61 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v50 - v11;
  __chkstk_darwin(v10);
  v14 = v50 - v13;
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v55 = *(v15 - 8);
  v56 = v15;
  __chkstk_darwin(v15);
  v54 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v51 = *(v17 - 8);
  v52 = v17;
  __chkstk_darwin(v17);
  v53 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v19);
  v50[2] = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v21 - 8);
  v50[1] = v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(type metadata accessor for KnoxUpdate());

  v60 = KnoxUpdate.init(identifier:)(a1, a2);
  if (qword_1004A6AA8 != -1)
  {
    swift_once();
  }

  v27 = qword_1004A88C0;
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 dateFromString:v28];

  if (v29)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = *(v7 + 48);
    *v14 = v60;
    (*(v24 + 16))(&v14[v30], v26, v23);
    sub_100013E54(v14, v12, &qword_1004A6DB0, &qword_1003784B0);
    v31 = *(v7 + 48);
    v32 = v61;
    *v61 = *v12;
    (*(v24 + 32))(&v32[v31], &v12[v31], v23);
    v33 = OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdatesWithCreatedTime;
    v34 = v58;
    swift_beginAccess();
    v35 = *(v34 + v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + v33) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_100011D44(0, v35[2] + 1, 1, v35);
      *(v34 + v33) = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = sub_100011D44((v37 > 1), v38 + 1, 1, v35);
    }

    v35[2] = v38 + 1;
    sub_100099FD4(v61, v35 + ((v57[80] + 32) & ~v57[80]) + *(v57 + 9) * v38);
    *(v34 + v33) = v35;
    swift_endAccess();
    sub_100013F2C(v14, &qword_1004A6DB0, &qword_1003784B0);
    (*(v24 + 8))(v26, v23);
  }

  else
  {
    v59 = 0x800000010042A530;
    v61 = 0x800000010042F7B0;
    v63 = 0;
    v64 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v63 = 39;
    v64 = 0xE100000000000000;
    v39._countAndFlagsBits = v62;
    v39._object = v65;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 0xD00000000000001FLL;
    v40._object = 0x800000010042F8D0;
    String.append(_:)(v40);
    v62 = v63;
    v58 = v64;
    v65 = type metadata accessor for KnoxServiceClient.ClientError();
    v41 = swift_allocObject();
    sub_10000E014();
    v57 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v63 = _swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v51 + 104))(v53, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v52);
    v43 = v54;
    v42 = v55;
    v44 = v56;
    (*(v55 + 104))(v54, enum case for DispatchQoS.QoSClass.default(_:), v56);
    static OS_dispatch_queue.global(qos:)();
    (*(v42 + 8))(v43, v44);
    v45 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v46 = v59;
    *(v41 + 16) = 0xD00000000000001ALL;
    *(v41 + 24) = v46;
    v47 = v61;
    *(v41 + 32) = 0xD00000000000006BLL;
    *(v41 + 40) = v47;
    *(v41 + 56) = 7;
    *(v41 + 48) = 188;
    v48 = v58;
    *(v41 + 64) = v62;
    *(v41 + 72) = v48;
    *(v41 + 80) = 0;
    *(v41 + 88) = v45;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v49 = v41;
    swift_willThrow();
  }
}

char *sub_1000978F8()
{
  v0 = sub_1000998E4();

  return v0;
}

uint64_t sub_100097954()
{

  sub_100013F2C(v0 + OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter, &qword_1004A7158, &unk_100376CA0);
  sub_100099FCC(*(v0 + OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_finalHandlerType), *(v0 + OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_finalHandlerType + 8));
}

id UniqueUpdatesTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UniqueUpdatesTask(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_100097AD8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000039E8(&qword_1004A6DB0, &qword_1003784B0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_1000039E8(&qword_1004A6DB0, &qword_1003784B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100097FF0(v8, v9, a1, v4);
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
    return sub_100097D20(0, v2, 1, a1);
  }

  return result;
}

char *sub_100097C1C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for KnoxUpdate();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_10009890C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_100097F78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100097D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_1000039E8(&qword_1004A6DB0, &qword_1003784B0);
  v8 = __chkstk_darwin(v37);
  v36 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = (&v27 - v11);
  result = __chkstk_darwin(v10);
  v16 = (&v27 - v15);
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v34 = -v18;
    v35 = v17;
    v20 = a1 - a3;
    v28 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v32 = v19;
    v33 = a3;
    v30 = v21;
    v31 = v20;
    v22 = v20;
    while (1)
    {
      sub_100013E54(v21, v16, &qword_1004A6DB0, &qword_1003784B0);
      sub_100013E54(v19, v12, &qword_1004A6DB0, &qword_1003784B0);
      v23 = *(*v12 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
      v24 = *(*v16 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
      sub_100013F2C(v12, &qword_1004A6DB0, &qword_1003784B0);
      result = sub_100013F2C(v16, &qword_1004A6DB0, &qword_1003784B0);
      if (v23 >= v24)
      {
LABEL_4:
        a3 = v33 + 1;
        v19 = v32 + v28;
        v20 = v31 - 1;
        v21 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v25 = v36;
      sub_100099FD4(v21, v36);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100099FD4(v25, v19);
      v19 += v34;
      v21 += v34;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100097F78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(*v9 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue) >= *(v7 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100097FF0(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v108 = a1;
  v122 = sub_1000039E8(&qword_1004A6DB0, &qword_1003784B0);
  v117 = *(v122 - 8);
  v8 = __chkstk_darwin(v122);
  v112 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v121 = &v104 - v11;
  v12 = __chkstk_darwin(v10);
  v124 = (&v104 - v13);
  result = __chkstk_darwin(v12);
  v123 = (&v104 - v15);
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_97:
    a4 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_129:
      result = sub_100078454(v18);
      v18 = result;
    }

    v125 = v18;
    v100 = *(v18 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v101 = *&v18[16 * v100];
        v102 = *&v18[16 * v100 + 24];
        sub_100098EA8(*a3 + *(v117 + 72) * v101, *a3 + *(v117 + 72) * *&v18[16 * v100 + 16], *a3 + *(v117 + 72) * v102, a4);
        if (v5)
        {
        }

        if (v102 < v101)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100078454(v18);
        }

        if (v100 - 2 >= *(v18 + 2))
        {
          goto LABEL_123;
        }

        v103 = &v18[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        v125 = v18;
        result = sub_1000783C8(v100 - 1);
        v18 = v125;
        v100 = *(v125 + 2);
        if (v100 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v105 = a4;
  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v109 = a3;
  while (1)
  {
    v19 = v17;
    if (v17 + 1 >= v16)
    {
      v29 = v17 + 1;
    }

    else
    {
      v118 = v16;
      v107 = v5;
      v20 = v17;
      v120 = *a3;
      v21 = v120;
      v22 = *(v117 + 72);
      a4 = v120 + v22 * (v17 + 1);
      v23 = v123;
      sub_100013E54(a4, v123, &qword_1004A6DB0, &qword_1003784B0);
      v24 = v21 + v22 * v20;
      v25 = v124;
      sub_100013E54(v24, v124, &qword_1004A6DB0, &qword_1003784B0);
      v26 = *(*v25 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
      v115 = *(*v23 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
      v116 = v26;
      sub_100013F2C(v25, &qword_1004A6DB0, &qword_1003784B0);
      result = sub_100013F2C(v23, &qword_1004A6DB0, &qword_1003784B0);
      v106 = v20;
      v27 = v20 + 2;
      v119 = v22;
      v28 = v120 + v22 * (v20 + 2);
      v114 = v18;
      while (1)
      {
        v29 = v118;
        if (v118 == v27)
        {
          break;
        }

        LODWORD(v120) = v116 < v115;
        v30 = v123;
        sub_100013E54(v28, v123, &qword_1004A6DB0, &qword_1003784B0);
        v31 = v124;
        sub_100013E54(a4, v124, &qword_1004A6DB0, &qword_1003784B0);
        v32 = *(*v31 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
        v33 = *(*v30 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
        sub_100013F2C(v31, &qword_1004A6DB0, &qword_1003784B0);
        result = sub_100013F2C(v30, &qword_1004A6DB0, &qword_1003784B0);
        v34 = v32 < v33;
        v18 = v114;
        v35 = !v34;
        ++v27;
        v28 += v119;
        a4 += v119;
        if (((v120 ^ v35) & 1) == 0)
        {
          v29 = v27 - 1;
          break;
        }
      }

      v19 = v106;
      v5 = v107;
      a3 = v109;
      if (v116 < v115)
      {
        if (v29 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v29)
        {
          v36 = v119 * (v29 - 1);
          v37 = v29 * v119;
          v38 = v29;
          v39 = v106;
          v40 = v106 * v119;
          do
          {
            if (v39 != --v38)
            {
              v41 = *v109;
              if (!*v109)
              {
                goto LABEL_132;
              }

              a4 = v41 + v40;
              sub_100099FD4(v41 + v40, v112);
              if (v40 < v36 || a4 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100099FD4(v112, v41 + v36);
            }

            ++v39;
            v36 -= v119;
            v37 -= v119;
            v40 += v119;
          }

          while (v39 < v38);
          v19 = v106;
          v5 = v107;
          a3 = v109;
          v18 = v114;
        }
      }
    }

    v42 = a3[1];
    if (v29 < v42)
    {
      if (__OFSUB__(v29, v19))
      {
        goto LABEL_125;
      }

      if (v29 - v19 < v105)
      {
        if (__OFADD__(v19, v105))
        {
          goto LABEL_127;
        }

        if (v19 + v105 >= v42)
        {
          v43 = a3[1];
        }

        else
        {
          v43 = v19 + v105;
        }

        if (v43 < v19)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v29 != v43)
        {
          break;
        }
      }
    }

    v17 = v29;
    if (v29 < v19)
    {
      goto LABEL_124;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100011948(0, *(v18 + 2) + 1, 1, v18);
      v18 = result;
    }

    v45 = *(v18 + 2);
    v44 = *(v18 + 3);
    a4 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_100011948((v44 > 1), v45 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 2) = a4;
    v46 = &v18[16 * v45];
    *(v46 + 4) = v19;
    *(v46 + 5) = v17;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (v45)
    {
      while (1)
      {
        v48 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v49 = *(v18 + 4);
          v50 = *(v18 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_55:
          if (v52)
          {
            goto LABEL_113;
          }

          v65 = &v18[16 * a4];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_116;
          }

          v71 = &v18[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_120;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = a4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v75 = &v18[16 * a4];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_69:
        if (v70)
        {
          goto LABEL_115;
        }

        v78 = &v18[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_118;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_76:
        v86 = v48 - 1;
        if (v48 - 1 >= a4)
        {
          __break(1u);
LABEL_109:
          __break(1u);
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
LABEL_116:
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
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        a4 = *&v18[16 * v86 + 32];
        v87 = *&v18[16 * v48 + 40];
        sub_100098EA8(*a3 + *(v117 + 72) * a4, *a3 + *(v117 + 72) * *&v18[16 * v48 + 32], *a3 + *(v117 + 72) * v87, v47);
        if (v5)
        {
        }

        if (v87 < a4)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100078454(v18);
        }

        if (v86 >= *(v18 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v18[16 * v86];
        *(v88 + 4) = a4;
        *(v88 + 5) = v87;
        v125 = v18;
        result = sub_1000783C8(v48);
        v18 = v125;
        a4 = *(v125 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v18[16 * a4 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_111;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_112;
      }

      v60 = &v18[16 * a4];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_114;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_117;
      }

      if (v64 >= v56)
      {
        v82 = &v18[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_121;
        }

        if (v51 < v85)
        {
          v48 = a4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v16 = a3[1];
    if (v17 >= v16)
    {
      goto LABEL_97;
    }
  }

  v114 = v18;
  v106 = v19;
  v107 = v5;
  v89 = *a3;
  v90 = *(v117 + 72);
  v91 = *a3 + v90 * (v29 - 1);
  v119 = -v90;
  v120 = v89;
  v92 = v19 - v29;
  v110 = v90;
  v111 = v43;
  a4 = v89 + v29 * v90;
LABEL_88:
  v118 = v29;
  v113 = a4;
  v115 = v92;
  v116 = v91;
  v93 = v91;
  while (1)
  {
    v94 = v123;
    sub_100013E54(a4, v123, &qword_1004A6DB0, &qword_1003784B0);
    v95 = v124;
    sub_100013E54(v93, v124, &qword_1004A6DB0, &qword_1003784B0);
    v96 = *(*v95 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
    v97 = *(*v94 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
    sub_100013F2C(v95, &qword_1004A6DB0, &qword_1003784B0);
    result = sub_100013F2C(v94, &qword_1004A6DB0, &qword_1003784B0);
    if (v96 >= v97)
    {
LABEL_87:
      v29 = v118 + 1;
      v17 = v111;
      v91 = v116 + v110;
      v92 = v115 - 1;
      a4 = v113 + v110;
      if (v118 + 1 != v111)
      {
        goto LABEL_88;
      }

      v19 = v106;
      v5 = v107;
      a3 = v109;
      v18 = v114;
      if (v111 < v106)
      {
        goto LABEL_124;
      }

      goto LABEL_36;
    }

    if (!v120)
    {
      break;
    }

    v98 = v121;
    sub_100099FD4(a4, v121);
    swift_arrayInitWithTakeFrontToBack();
    sub_100099FD4(v98, v93);
    v93 += v119;
    a4 += v119;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_87;
    }
  }

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
  return result;
}

uint64_t sub_10009890C(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v81 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v6 = *v81;
    if (!*v81)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_100078454(v8);
      v8 = result;
    }

    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = *&v8[16 * v76];
        v78 = *&v8[16 * v76 + 24];
        sub_1000993E4((*a3 + 8 * v77), (*a3 + 8 * *&v8[16 * v76 + 16]), (*a3 + 8 * v78), v6);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100078454(v8);
        }

        if (v76 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v79 = &v8[16 * v76];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = sub_1000783C8(v76 - 1);
        v76 = *(v8 + 2);
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *(*(*a3 + 8 * v9) + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
      v11 = *(*(*a3 + 8 * v7) + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
      v12 = v9 + 2;
      v13 = v11;
      while (v5 != v12)
      {
        v14 = *(*(*a3 + 8 * v12) + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
        v15 = (v10 < v11) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v5;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_116;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_118;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100011948(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_100011948((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v81;
    if (!*v81)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v6 = v35 - 1;
        if (v35 - 1 >= v32)
        {
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v73 = *&v8[16 * v6 + 32];
        v74 = *&v8[16 * v35 + 40];
        sub_1000993E4((*a3 + 8 * v73), (*a3 + 8 * *&v8[16 * v35 + 32]), (*a3 + 8 * v74), v34);
        if (v4)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100078454(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v6];
        *(v75 + 4) = v73;
        *(v75 + 5) = v74;
        result = sub_1000783C8(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (*(*v27 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue) >= *(v25 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue))
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v5)
      {
        goto LABEL_30;
      }

      v7 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_100098EA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = sub_1000039E8(&qword_1004A6DB0, &qword_1003784B0);
  v8 = __chkstk_darwin(v45);
  v47 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v8);
  v46 = (&v37 - v11);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v28 = v26;
      v40 = a1;
      v41 = a4;
      v42 = -v13;
      do
      {
        v38 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v43 = v29;
        v44 = v30;
        while (1)
        {
          if (v29 <= a1)
          {
            v50 = v29;
            v48 = v38;
            goto LABEL_58;
          }

          v31 = a3;
          v39 = v26;
          a3 += v27;
          v32 = v28 + v27;
          v33 = v46;
          sub_100013E54(v28 + v27, v46, &qword_1004A6DB0, &qword_1003784B0);
          v34 = v47;
          sub_100013E54(v30, v47, &qword_1004A6DB0, &qword_1003784B0);
          v35 = *(*v34 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
          v36 = *(*v33 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
          sub_100013F2C(v34, &qword_1004A6DB0, &qword_1003784B0);
          sub_100013F2C(v33, &qword_1004A6DB0, &qword_1003784B0);
          if (v35 < v36)
          {
            break;
          }

          v26 = v28 + v27;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v44;
            a1 = v40;
            v27 = v42;
          }

          else
          {
            v30 = v44;
            a1 = v40;
            v27 = v42;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          v29 = v43;
          if (v32 <= v41)
          {
            a2 = v43;
            goto LABEL_57;
          }
        }

        if (v31 < v43 || a3 >= v43)
        {
          a2 = v44;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
          a1 = v40;
          v27 = v42;
        }

        else
        {
          a2 = v44;
          v26 = v39;
          a1 = v40;
          v27 = v42;
          if (v31 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v41);
    }

LABEL_57:
    v50 = a2;
    v48 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a3;
    v44 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v42 = v13;
      do
      {
        v19 = v46;
        v20 = a2;
        sub_100013E54(a2, v46, &qword_1004A6DB0, &qword_1003784B0);
        v21 = v47;
        sub_100013E54(a4, v47, &qword_1004A6DB0, &qword_1003784B0);
        v22 = *(*v21 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
        v23 = *(*v19 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
        sub_100013F2C(v21, &qword_1004A6DB0, &qword_1003784B0);
        sub_100013F2C(v19, &qword_1004A6DB0, &qword_1003784B0);
        if (v22 >= v23)
        {
          v24 = v42;
          v25 = a4 + v42;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = v25;
          a4 += v24;
        }

        else
        {
          v24 = v42;
          a2 += v42;
          if (a1 < v20 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v24;
        v50 = a1;
      }

      while (a4 < v44 && a2 < v43);
    }
  }

LABEL_58:
  sub_100099608(&v50, &v49, &v48);
  return 1;
}

uint64_t sub_1000993E4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 8;
      v5 -= 8;
      v18 = v14;
      do
      {
        v19 = v5 + 8;
        v21 = *(v18 - 8);
        v18 -= 8;
        v20 = v21;
        if (*(*v17 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue) < *(v21 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue))
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 8, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = v20;
        }

        v5 -= 8;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        if (*(*v4 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue) >= *(*v6 + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue))
        {
          break;
        }

        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_19;
        }
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = v15;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_36:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_100099608(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1000039E8(&qword_1004A6DB0, &qword_1003784B0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1000996F8()
{
  result = qword_1004A88E8;
  if (!qword_1004A88E8)
  {
    sub_100003A94(&qword_1004A88E0, &qword_100378D70);
    sub_10009977C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A88E8);
  }

  return result;
}

unint64_t sub_10009977C()
{
  result = qword_1004A88F0;
  if (!qword_1004A88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A88F0);
  }

  return result;
}

uint64_t sub_1000997D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100099818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

uint64_t sub_100099830()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_100099868()
{
  result = qword_1004A88F8;
  if (!qword_1004A88F8)
  {
    sub_100003A94(&qword_1004A6B48, &unk_100376810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A88F8);
  }

  return result;
}

char *sub_1000998E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  MultiPageCapable<>.paginationLoop()(ObjectType, &protocol witness table for UniqueUpdatesTask);
  v4 = v3;
  v5 = &v0[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_finalHandlerType];
  v7 = *&v0[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_finalHandlerType];
  v6 = *&v0[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_finalHandlerType + 8];
  if (v5[16])
  {
    v8 = &v1[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdatesWithCreatedTime];
    swift_beginAccess();

    sub_1000948B0(v8);
  }

  else
  {
    v9 = &v1[OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_receivedUpdates];
    swift_beginAccess();

    sub_100094838(v9);
  }

  swift_endAccess();

  v7(v10, v4);

  sub_100099FCC(v7, v6);
  v11 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = 1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10001F8CC;
  *(v13 + 24) = v12;
  v22 = sub_10001FA40;
  v23 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003885C;
  v21 = &unk_100481618;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_100003B20(*&v15[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client] + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, aBlock);
    v18 = v21;
    v19 = v22;
    sub_10000E2A8(aBlock, v21);
    (*(v19 + 2))(v15, v4, v18, v19);

    sub_100003C3C(aBlock);
    return v15;
  }

  return result;
}

uint64_t sub_100099BF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic17UniqueUpdatesTask_timeFilter;
  swift_beginAccess();
  return sub_100013E54(v3 + v4, a2, &qword_1004A7158, &unk_100376CA0);
}

__n128 sub_100099F10(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100099F24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100099F6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100099FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A6DB0, &qword_1003784B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Keychain.SecurityDomain.rawValue.getter()
{
  v1 = 1128548687;
  if (*v0 != 1)
  {
    v1 = 0x6574616774736557;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 5718340;
  }
}

void sub_10009A0BC(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v94 = a2;
  v3 = type metadata accessor for Date();
  v92 = *(v3 - 8);
  v93 = v3;
  __chkstk_darwin(v3);
  v91 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  v6 = __chkstk_darwin(v5 - 8);
  v90 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v89 = &v82 - v8;
  v9 = sub_1000039E8(&qword_1004A8948, qword_100379078);
  __chkstk_darwin(v9 - 8);
  v98 = (&v82 - v10);
  v11 = type metadata accessor for KeychainItem(0);
  v95 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v96 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v12[5];
  v15 = (a1 + v12[6]);
  v17 = *v15;
  v16 = v15[1];
  v18 = *(a1 + v12[8]);
  ObjectType = swift_getObjectType();
  v20 = *(ObjectType + 112);
  (v20)(v100);
  v97 = a1;
  v21 = a1 + v14;
  v22 = v98;
  v23 = v99;
  sub_10009B720(v21, v17, v16, v100, v98);
  if (!v23)
  {
    v83 = v18;
    v84 = v20;
    v85 = ObjectType;
    v86 = ObjectType + 112;
    v99 = v14;
    v87 = 0;
    v88 = v16;
    v24 = (*(v95 + 48))(v22, 1, v11);
    v25 = v24;
    if (v24 != 1)
    {
      LODWORD(v95) = v24;
      v26 = v22;
      v27 = v96;
      v28 = sub_10009F4AC(v26, v96);
      v29 = *((swift_isaMask & **(v27 + *(v11 + 32))) + 0x98);
      v98 = *(v27 + *(v11 + 32));
      v30 = v29(v28);
      v31 = 0x73657269707865;
      if (v30)
      {
        v31 = 0x64657269707865;
      }

      v90 = v31;
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100378EB0;
      v33 = [v83 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      *(v32 + 56) = &type metadata for String;
      v37 = sub_10001A9EC();
      *(v32 + 32) = v34;
      *(v32 + 40) = v36;
      *(v32 + 96) = &type metadata for String;
      *(v32 + 104) = v37;
      *(v32 + 64) = v37;
      *(v32 + 72) = v17;
      v38 = v17;
      v39 = v88;
      v40 = v89;
      *(v32 + 80) = v88;
      sub_10001FB20(v97 + v99, v40);
      v41 = type metadata accessor for URL();
      v42 = *(v41 - 8);
      v43 = (*(v42 + 48))(v40, 1, v41);

      if (v43 == 1)
      {
        sub_100013F2C(v40, &qword_1004A6D30, &unk_100376820);
        v44 = (v32 + 112);
        *(v32 + 136) = &type metadata for String;
        *(v32 + 144) = v37;
        v45 = v93;
      }

      else
      {
        v51 = URL.absoluteString.getter();
        v53 = v52;
        (*(v42 + 8))(v40, v41);
        v44 = (v32 + 112);
        *(v32 + 136) = &type metadata for String;
        *(v32 + 144) = v37;
        v45 = v93;
        if (v53)
        {
          *v44 = v51;
          v39 = v88;
          v54 = v92;
LABEL_21:
          *(v32 + 120) = v53;
          *(v32 + 176) = &type metadata for String;
          *(v32 + 184) = v37;
          *(v32 + 152) = v90;
          *(v32 + 160) = 0xE700000000000000;
          v67 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
          v68 = v98;
          swift_beginAccess();
          v69 = v68 + v67;
          v70 = v91;
          (*(v54 + 16))(v91, v69, v45);
          v71 = Date.description.getter();
          v72 = v54;
          v74 = v73;
          (*(v72 + 8))(v70, v45);
          *(v32 + 216) = &type metadata for String;
          *(v32 + 224) = v37;
          *(v32 + 192) = v71;
          *(v32 + 200) = v74;
          sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
          v75 = static OS_os_log.default.getter();
          v76 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("Found %{public}s in keychain with account='%{public}s' and server='%{public}s', %{public}s at %{public}s Will try to update it.", 127, 2, &_mh_execute_header, v75, v76, v32);

          v77 = sub_100085BE4(v96);
          v84(&v101, v77);
          v78 = v87;
          sub_10009D0E0(v83, v97 + v99, v38, v39, &v101);
          if (v78)
          {
            return;
          }

          v63 = v94;
          v25 = v95;
          goto LABEL_26;
        }

        v39 = v88;
      }

      v54 = v92;
      *v44 = 1701736302;
      v53 = 0xE400000000000000;
      goto LABEL_21;
    }

    sub_100013F2C(v22, &qword_1004A8948, qword_100379078);
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100376F00;
    (v84)(v100);
    v47 = v99;
    if (LOBYTE(v100[0]))
    {
      v48 = v97;
      if (LOBYTE(v100[0]) == 1)
      {
        v49 = 0xE400000000000000;
        v50 = 1128548687;
      }

      else
      {
        v49 = 0xE800000000000000;
        v50 = 0x6574616774736557;
      }
    }

    else
    {
      v49 = 0xE300000000000000;
      v50 = 5718340;
      v48 = v97;
    }

    *(v46 + 56) = &type metadata for String;
    v55 = sub_10001A9EC();
    *(v46 + 32) = v50;
    *(v46 + 40) = v49;
    *(v46 + 96) = &type metadata for String;
    *(v46 + 104) = v55;
    *(v46 + 64) = v55;
    *(v46 + 72) = v17;
    *(v46 + 80) = v88;
    v56 = v48;
    v57 = v48 + v47;
    v58 = v90;
    sub_10001FB20(v57, v90);
    v59 = type metadata accessor for URL();
    v60 = *(v59 - 8);
    v61 = (*(v60 + 48))(v58, 1, v59);

    if (v61 == 1)
    {
      sub_100013F2C(v58, &qword_1004A6D30, &unk_100376820);
      v62 = (v46 + 112);
      *(v46 + 136) = &type metadata for String;
      *(v46 + 144) = v55;
      v63 = v94;
    }

    else
    {
      LODWORD(v95) = 1;
      v64 = URL.absoluteString.getter();
      v66 = v65;
      (*(v60 + 8))(v58, v59);
      v62 = (v46 + 112);
      *(v46 + 136) = &type metadata for String;
      *(v46 + 144) = v55;
      if (v66)
      {
        *v62 = v64;
        v63 = v94;
        v25 = v95;
        goto LABEL_25;
      }

      v63 = v94;
      v25 = v95;
    }

    *v62 = 1701736302;
    v66 = 0xE400000000000000;
LABEL_25:
    *(v46 + 120) = v66;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v79 = static OS_os_log.default.getter();
    v80 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Did not find %{public}s item in keychain with account='%{public}s' and server='%{public}s'. Will try to create a new entry.", 123, 2, &_mh_execute_header, v79, v80, v46);

    v81 = v87;
    sub_10009D92C(v56);
    if (v81)
    {
      return;
    }

LABEL_26:
    *v63 = v25 != 1;
  }
}

KnoxClientPublic::Keychain::SecurityDomain_optional __swiftcall Keychain.SecurityDomain.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10047AE38, v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_10009A964(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1128548687;
  if (v2 != 1)
  {
    v4 = 0x6574616774736557;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 5718340;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1128548687;
  if (*a2 != 1)
  {
    v8 = 0x6574616774736557;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 5718340;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10009AA50()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10009AAE4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10009AB64()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10009AC00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1128548687;
  if (v2 != 1)
  {
    v5 = 0x6574616774736557;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 5718340;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

KnoxClientPublic::Keychain::TokenSavingStatus_optional __swiftcall Keychain.TokenSavingStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10047AEA0, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t Keychain.TokenSavingStatus.rawValue.getter()
{
  if (*v0)
  {
    return 0x64657461647055;
  }

  else
  {
    return 0x64657461657243;
  }
}

uint64_t sub_10009ACE8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x64657461647055;
  }

  else
  {
    v2 = 0x64657461657243;
  }

  if (*a2)
  {
    v3 = 0x64657461647055;
  }

  else
  {
    v3 = 0x64657461657243;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10009AD70()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10009ADE8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10009AE44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10009AEB8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10047AEA0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10009AF18(uint64_t *a1@<X8>)
{
  v2 = 0x64657461657243;
  if (*v1)
  {
    v2 = 0x64657461647055;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

void static Keychain.deleteTokenMatching(securityDomain:keychainItemServer:keychainEntryAccountName:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v64 = *(v8 - 8);
  v65 = v8;
  __chkstk_darwin(v8);
  v63 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v62 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v57);
  v60 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v58 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v14 - 8);
  v16 = v52 - v15;
  v17 = *a1;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v16, a2, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  LOBYTE(v66) = v17;
  sub_10009CAE4(a3, a4, v16, &v66, 0);
  sub_100013F2C(v16, &qword_1004A6D30, &unk_100376820);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v21 = SecItemDelete(isa);

  if (v21)
  {
    v66 = 0;
    v67 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v22._object = 0x800000010042F8F0;
    v22._countAndFlagsBits = 0xD000000000000020;
    String.append(_:)(v22);
    v23 = Dictionary.debugDescription.getter();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 0x747320746F67202CLL;
    v27._object = 0xED00002073757461;
    String.append(_:)(v27);
    v68 = v21;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29._countAndFlagsBits = sub_10009CF04(v21);
    String.append(_:)(v29);

    v55 = v67;
    v56 = v66;
    v53 = 0x800000010042F980;
    v54 = 0x800000010042F920;
    v52[1] = type metadata accessor for KnoxServiceClient.ClientError();
    v30 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v52[2] = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v66 = _swiftEmptyArrayStorage;
    sub_10009F510(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v59 + 104))(v62, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v61);
    v32 = v63;
    v31 = v64;
    v33 = v65;
    (*(v64 + 104))(v63, enum case for DispatchQoS.QoSClass.default(_:), v65);
    static OS_dispatch_queue.global(qos:)();
    (*(v31 + 8))(v32, v33);
    v34 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v35 = v54;
    *(v30 + 16) = 0xD000000000000050;
    *(v30 + 24) = v35;
    v36 = v53;
    *(v30 + 32) = 0xD000000000000059;
    *(v30 + 40) = v36;
    *(v30 + 56) = 14;
    *(v30 + 48) = 78;
    v37 = v55;
    *(v30 + 64) = v56;
    *(v30 + 72) = v37;
    *(v30 + 80) = 0;
    *(v30 + 88) = v34;
    v38 = static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100376A40;
    v40 = sub_10005A570();
    if (v41)
    {
      v42 = v40;
      v43 = v41;
      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = sub_10001A9EC();
      *(v39 + 32) = v42;
      *(v39 + 40) = v43;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v44 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v44, "%{public}s", 10, 2, v39);

      sub_10009F510(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v45 = v30;
      swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100376A40;
    v47 = Dictionary.description.getter();
    v49 = v48;

    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = sub_10001A9EC();
    *(v46 + 32) = v47;
    *(v46 + 40) = v49;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v50 = static OS_os_log.default.getter();
    v51 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Deleted item from Keychain: %{public}s", 38, 2, &_mh_execute_header, v50, v51, v46);
  }
}

unint64_t sub_10009B720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned __int8 *a4@<X3>, void *a5@<X8>)
{
  v154 = a5;
  v9 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v148 - v13;
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v164 = *(v15 - 8);
  v165 = v15;
  __chkstk_darwin(v15);
  v163 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v158 = *(v160 - 8);
  __chkstk_darwin(v160);
  v162 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v157);
  v161 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v19 - 8);
  v159 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v156) = *a4;
  LOBYTE(v168) = v156;
  v153._countAndFlagsBits = a2;
  v153._object = a3;
  v21 = sub_10009CAE4(a2, a3, a1, &v168, 1);
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  type metadata accessor for CFString(0);
  v169 = v25;
  *&v168 = kSecUseAuthenticationUISkip;
  sub_1000279A4(&v168, v167);
  v26 = kSecUseAuthenticationUISkip;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  result = v21;
  sub_100026D4C(v167, v22, v24, isUniquelyReferenced_nonNull_native);

  v28 = result;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  v169 = &type metadata for Bool;
  LOBYTE(v168) = 1;
  sub_1000279A4(&v168, v167);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  result = v28;
  sub_100026D4C(v167, v29, v31, v32);

  v33 = result;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  v169 = &type metadata for Bool;
  LOBYTE(v168) = 1;
  sub_1000279A4(&v168, v167);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  result = v33;
  sub_100026D4C(v167, v34, v36, v37);

  result = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v39 = SecItemCopyMatching(isa, &result);

  if (v39)
  {
    if (v39 == -25300)
    {
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v40 = swift_allocObject();
      v41 = v40;
      *(v40 + 16) = xmmword_100376BB0;
      if (v156)
      {
        if (v156 == 1)
        {
          v42 = 0xE400000000000000;
          v43 = 1128548687;
        }

        else
        {
          v42 = 0xE800000000000000;
          v43 = 0x6574616774736557;
        }
      }

      else
      {
        v42 = 0xE300000000000000;
        v43 = 5718340;
      }

      *(v40 + 56) = &type metadata for String;
      v94 = sub_10001A9EC();
      v41[8] = v94;
      v41[4] = v43;
      v41[5] = v42;
      v95 = Dictionary.description.getter();
      v97 = v96;

      v41[12] = &type metadata for String;
      v41[13] = v94;
      v41[9] = v95;
      v41[10] = v97;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v98 = static OS_os_log.default.getter();
      v99 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Did not find %{public}s item in keychain for searchQuery=%{public}s", 67, 2, &_mh_execute_header, v98, v99, v41);

      v100 = type metadata accessor for KeychainItem(0);
      (*(*(v100 - 8) + 56))(v154, 1, 1, v100);
      return swift_unknownObjectRelease();
    }

    v72 = sub_10009CF04(v39);
    v74 = v73;
    *&v168 = 0;
    *(&v168 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    *&v168 = 0xD00000000000001ELL;
    *(&v168 + 1) = 0x800000010042FA40;
    v75._countAndFlagsBits = v72;
    v75._object = v74;
    String.append(_:)(v75);

    v76._countAndFlagsBits = 0x3A7972657571202CLL;
    v76._object = 0xE900000000000020;
    String.append(_:)(v76);
    v77 = Dictionary.description.getter();
    v79 = v78;

    v80._countAndFlagsBits = v77;
    v80._object = v79;
    String.append(_:)(v80);

    v81 = v168;
    v156 = v168;
    v82 = static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_100376A40;
    *(v83 + 56) = &type metadata for String;
    *(v83 + 64) = sub_10001A9EC();
    *(v83 + 32) = v81;
    v155 = *(&v81 + 1);
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);

    v84 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v82, &_mh_execute_header, v84, "%{public}s", 10, 2, v83);

    v153._object = 0x800000010042FEA0;
    v153._countAndFlagsBits = 0x800000010042F980;
    v154 = type metadata accessor for KnoxServiceClient.ClientError();
    v85 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    *&v152 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v168 = _swiftEmptyArrayStorage;
    sub_10009F510(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v158 + 104))(v162, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v160);
    v87 = v163;
    v86 = v164;
    v88 = v165;
    (*(v164 + 104))(v163, enum case for DispatchQoS.QoSClass.default(_:), v165);
    static OS_dispatch_queue.global(qos:)();
    (*(v86 + 8))(v87, v88);
    v89 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    object = v153._object;
    *(v85 + 16) = 0xD000000000000030;
    *(v85 + 24) = object;
    countAndFlagsBits = v153._countAndFlagsBits;
    *(v85 + 32) = 0xD000000000000059;
    *(v85 + 40) = countAndFlagsBits;
    *(v85 + 56) = 14;
    *(v85 + 48) = 133;
    v92 = v155;
    *(v85 + 64) = v156;
    *(v85 + 72) = v92;
    *(v85 + 80) = 0;
    *(v85 + 88) = v89;
    sub_10009F510(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v93 = v85;
LABEL_23:
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v149 = v14;
  v148 = v12;
  v44 = sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
  v45 = swift_allocObject();
  v152 = xmmword_100376A40;
  *(v45 + 16) = xmmword_100376A40;
  v46 = Dictionary.description.getter();
  v48 = v47;
  *(v45 + 56) = &type metadata for String;
  v151 = sub_10001A9EC();
  *(v45 + 64) = v151;
  *(v45 + 32) = v46;
  *(v45 + 40) = v48;
  v150 = sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
  v49 = static OS_os_log.default.getter();
  v50 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("SecItemCopyMatching(searchQuery) succeeded with searchQuery=%{public}s", 70, 2, &_mh_execute_header, v49, v50, v45);

  if (result)
  {
    *&v168 = result;
    swift_unknownObjectRetain();
    sub_1000039E8(&qword_1004B07E0, &unk_1003788C0);
    if (swift_dynamicCast())
    {
      v51 = *&v167[0];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v51 + 16))
      {
        v54 = sub_100013364(v52, v53);
        v56 = v55;

        if (v56)
        {
          sub_100003CA0(*(v51 + 56) + 32 * v54, &v168);
          if (swift_dynamicCast())
          {
            v57 = *(&v167[0] + 1);
            v58 = *&v167[0];
            v59 = swift_allocObject();
            *(v59 + 16) = v152;
            v60 = Dictionary.debugDescription.getter();
            v61 = v151;
            *(v59 + 56) = &type metadata for String;
            *(v59 + 64) = v61;
            *(v59 + 32) = v60;
            *(v59 + 40) = v62;
            v63 = static OS_os_log.default.getter();
            v64 = static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)("Found Keychain item matching: %{public}s", 40, 2, &_mh_execute_header, v63, v64, v59);

            v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (*(v51 + 16))
            {
              v67 = sub_100013364(v65, v66);
              v69 = v68;

              if (v69)
              {
                sub_100003CA0(*(v51 + 56) + 32 * v67, &v168);

                if (swift_dynamicCast())
                {
                  v70 = *(&v167[0] + 1);
                  v71 = *&v167[0];

LABEL_40:
                  if (v156)
                  {
                    if (v156 == 1)
                    {
                      type metadata accessor for OIDCToken(0);
                    }

                    else
                    {
                      type metadata accessor for WestgateToken(0);
                    }
                  }

                  else
                  {
                    type metadata accessor for DAWToken(0);
                  }

                  type metadata accessor for JSONDecoder();
                  swift_allocObject();
                  JSONDecoder.init()();
                  type metadata accessor for AuthToken(0);
                  sub_10009F510(&qword_1004A7A60, type metadata accessor for AuthToken, &protocol conformance descriptor for AuthToken);
                  v139 = v155;
                  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
                  if (v139)
                  {
                    sub_100031928(v58, v57);
                  }

                  else
                  {

                    v140 = v168;
                    sub_10001FB20(a1, v148);
                    sub_100031928(v58, v57);
                    if (v156)
                    {
                      if (v156 == 1)
                      {
                        v141 = 0xE400000000000000;
                        v142 = 1128548687;
                      }

                      else
                      {
                        v141 = 0xE800000000000000;
                        v142 = 0x6574616774736557;
                      }

                      v143 = v153._object;
                    }

                    else
                    {
                      v141 = 0xE300000000000000;
                      v143 = v153._object;
                      v142 = 5718340;
                    }

                    v144 = v154;
                    *v154 = v71;
                    v144[1] = v70;
                    v145 = type metadata accessor for KeychainItem(0);
                    sub_10007AA3C(v148, v144 + v145[5]);
                    v146 = (v144 + v145[6]);
                    *v146 = v153._countAndFlagsBits;
                    v146[1] = v143;
                    v147 = (v144 + v145[7]);
                    *v147 = v142;
                    v147[1] = v141;
                    *(v144 + v145[8]) = v140;
                    (*(*(v145 - 1) + 56))(v144, 0, 1, v145);
                  }

                  return swift_unknownObjectRelease();
                }

                v165 = v58;
LABEL_28:
                v121 = v57;
                *&v168 = 0;
                *(&v168 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(37);
                v122 = 0xE400000000000000;
                v123 = 1128548687;
                if (v156 != 1)
                {
                  v123 = 0x6574616774736557;
                  v122 = 0xE800000000000000;
                }

                if (v156)
                {
                  v124 = v123;
                }

                else
                {
                  v124 = 5718340;
                }

                if (v156)
                {
                  v125 = v122;
                }

                else
                {
                  v125 = 0xE300000000000000;
                }

                v126 = v125;
                String.append(_:)(*&v124);

                v127._countAndFlagsBits = 0x66206E656B6F7420;
                v127._object = 0xEB0000000020726FLL;
                String.append(_:)(v127);
                v128 = a1;
                v129 = v149;
                sub_10001FB20(a1, v149);
                v130 = type metadata accessor for URL();
                v131 = *(v130 - 8);
                if ((*(v131 + 48))(v129, 1, v130) == 1)
                {
                  sub_100013F2C(v129, &qword_1004A6D30, &unk_100376820);
                  v132 = 0xEB00000000656E6FLL;
                  v133 = 0x6E3D726576726573;
                }

                else
                {
                  v134 = URL.absoluteString.getter();
                  v132 = v135;
                  (*(v131 + 8))(v129, v130);
                  v133 = v134;
                }

                v136 = v132;
                String.append(_:)(*&v133);

                v137._countAndFlagsBits = 0xD000000000000013;
                v137._object = 0x800000010042FEE0;
                String.append(_:)(v137);
                String.append(_:)(v153);
                v138._countAndFlagsBits = 41;
                v138._object = 0xE100000000000000;
                String.append(_:)(v138);

                v70 = *(&v168 + 1);
                v71 = v168;
                a1 = v128;
                v57 = v121;
                v58 = v165;
                goto LABEL_40;
              }

              v165 = v58;
            }

            else
            {
              v165 = v58;
            }

            goto LABEL_28;
          }
        }
      }

      else
      {
      }
    }
  }

  v155 = 0x800000010042FEA0;
  v156 = 0x800000010042F980;
  *&v168 = 0;
  *(&v168 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(95);
  v101._countAndFlagsBits = 0xD00000000000005DLL;
  v101._object = 0x800000010042FB10;
  String.append(_:)(v101);
  v102 = Dictionary.description.getter();
  v104 = v103;

  v105._countAndFlagsBits = v102;
  v105._object = v104;
  String.append(_:)(v105);

  v153._object = *(&v168 + 1);
  v154 = v168;
  v148 = type metadata accessor for KnoxServiceClient.ClientError();
  v106 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v149 = "hivePointer.swift";
  v153._countAndFlagsBits = v44;
  static DispatchQoS.userInitiated.getter();
  *&v168 = _swiftEmptyArrayStorage;
  sub_10009F510(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v158 + 104))(v162, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v160);
  v107 = v163;
  v108 = v164;
  v109 = v165;
  (*(v164 + 104))(v163, enum case for DispatchQoS.QoSClass.default(_:), v165);
  static OS_dispatch_queue.global(qos:)();
  (*(v108 + 8))(v107, v109);
  v110 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v111 = v155;
  *(v106 + 16) = 0xD000000000000030;
  *(v106 + 24) = v111;
  v112 = v156;
  *(v106 + 32) = 0xD000000000000059;
  *(v106 + 40) = v112;
  *(v106 + 56) = 14;
  *(v106 + 48) = 141;
  v113 = v153._object;
  *(v106 + 64) = v154;
  *(v106 + 72) = v113;
  *(v106 + 80) = 0;
  *(v106 + 88) = v110;
  v114 = static os_log_type_t.error.getter();
  v115 = swift_allocObject();
  *(v115 + 16) = v152;
  v116 = sub_10005A570();
  if (v117)
  {
    v118 = v151;
    *(v115 + 56) = &type metadata for String;
    *(v115 + 64) = v118;
    *(v115 + 32) = v116;
    *(v115 + 40) = v117;
    v119 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v114, &_mh_execute_header, v119, "%{public}s", 10, 2, v115);

    sub_10009F510(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v120 = v106;
    goto LABEL_23;
  }

  __break(1u);
  return v116;
}

unint64_t sub_10009CAE4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int a5)
{
  v43 = a5;
  v44 = a3;
  v8 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  sub_1000039E8(&qword_1004A7A90, &qword_100377310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100378EB0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v16;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v17;
  type metadata accessor for CFString(0);
  v19 = v18;
  *(inited + 120) = v18;
  *(inited + 96) = kSecAttrAuthenticationTypeDefault;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v20;
  if (v14)
  {
    if (v14 == 1)
    {
      v21 = 0xE400000000000000;
      v22 = 1128548687;
    }

    else
    {
      v21 = 0xE800000000000000;
      v22 = 0x6574616774736557;
    }
  }

  else
  {
    v21 = 0xE300000000000000;
    v22 = 5718340;
  }

  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v22;
  *(inited + 152) = v21;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v23;
  *(inited + 216) = v19;
  *(inited + 192) = kSecClassInternetPassword;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v24;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;

  v25 = kSecAttrAuthenticationTypeDefault;
  v26 = kSecClassInternetPassword;
  v27 = sub_100061F34(inited);
  swift_setDeallocating();
  sub_1000039E8(&qword_1004A7A98, &qword_100377318);
  swift_arrayDestroy();
  if (v43)
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
    v48 = v19;
    *&v47 = kSecMatchLimitOne;
    sub_1000279A4(&v47, v46);
    v31 = kSecMatchLimitOne;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v27;
    sub_100026D4C(v46, v28, v30, isUniquelyReferenced_nonNull_native);

    v27 = v45;
  }

  sub_10001FB20(v44, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100013F2C(v10, &qword_1004A6D30, &unk_100376820);
  }

  else
  {
    v33 = v42;
    (*(v12 + 32))(v42, v10, v11);
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    v37 = URL.absoluteString.getter();
    v48 = &type metadata for String;
    *&v47 = v37;
    *(&v47 + 1) = v38;
    sub_1000279A4(&v47, v46);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v27;
    sub_100026D4C(v46, v34, v36, v39);

    (*(v12 + 8))(v33, v11);
    return v45;
  }

  return v27;
}