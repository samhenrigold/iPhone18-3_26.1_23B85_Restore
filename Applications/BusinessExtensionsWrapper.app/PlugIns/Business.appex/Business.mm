void sub_100002550()
{
  sub_10007F3F0();
  v1 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_message);
  if (*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_type))
  {
    v2 = &selRef_replyMessage;
  }

  else
  {
    v2 = &selRef_receivedMessage;
  }

  v16 = [*(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_message) *v2];
  *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowImage) = *(v0 + OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_state) == 0;
  v3 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel);
  v4 = objc_opt_self();
  v5 = [v4 preferredFontForTextStyle:UIFontTextStyleCaption2];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithSymbolicTraits:2];

  if (v7)
  {
    v8 = [v4 fontWithDescriptor:v7 size:0.0];

    [v3 setFont:v8];
    v9 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel);
    v10 = [v4 preferredFontForTextStyle:UIFontTextStyleCaption2];
    [v9 setFont:v10];

    v11 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator);
    if (*(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_isInvalid))
    {
      v12 = 1;
    }

    else
    {
      v12 = [v1 isFromMe];
    }

    [v11 setHidden:v12];
    v13 = v16;
    if (v16)
    {
      v13 = [v16 image];
    }

    v14 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_image);
    *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_image) = v13;
    v15 = v13;

    sub_1000AA2B0();
    sub_1000027C4();
  }

  else
  {
    __break(1u);
  }
}

id sub_1000027C4()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_state];
  if (v1 <= 1)
  {
    if (!v1)
    {
      v9 = [*&v0[OBJC_IVAR____TtC8Business19IMBActionBubbleView_message] replyMessage];
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    if (v1 == 1)
    {
      v9 = [*&v0[OBJC_IVAR____TtC8Business19IMBActionBubbleView_message] replyMessage];
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

LABEL_18:
    v9 = [*&v0[OBJC_IVAR____TtC8Business19IMBActionBubbleView_message] replyMessage];
    if (!v9)
    {
      goto LABEL_21;
    }

LABEL_19:
    v25 = v9;
    v26 = [v9 title];

    if (v26)
    {
      v15 = sub_1000AC06C();
      v17 = v27;

      goto LABEL_22;
    }

LABEL_21:
    v15 = 0;
    v17 = 0;
    goto LABEL_22;
  }

  if (v1 == 4)
  {
    sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v12 = sub_1000AC02C();
    v13 = sub_1000AC02C();
    v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

    v15 = sub_1000AC06C();
    v17 = v16;

LABEL_22:
    v28 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
    *v28 = v15;
    v28[1] = v17;

    sub_1000A9FF0();
    v29 = 0;
    goto LABEL_47;
  }

  if (v1 != 3)
  {
    if (v1 == 2)
    {
      v2 = OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_authenticationManager;
      v3 = *&v0[OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_authenticationManager];
      if (v3 && (v4 = [v3 title]) != 0)
      {
        v5 = v4;
        v6 = sub_1000AC06C();
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0;
      }

      v40 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
      *v40 = v6;
      v40[1] = v8;

      sub_1000A9FF0();
      v41 = *&v0[v2];
      if (v41 && (v42 = [v41 subtitle]) != 0)
      {
        v43 = v42;
        v44 = sub_1000AC06C();
        v46 = v45;
      }

      else
      {
        v44 = 0;
        v46 = 0;
      }

      v47 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle];
      *v47 = v44;
      v47[1] = v46;

      v48 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel];
      if (v46)
      {

        v49 = sub_1000AC02C();
      }

      else
      {
        v49 = 0;
      }

      [v48 setText:v49];

      v53 = *&v0[OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator];
      v54 = *&v0[v2];
      if (!v54 || (v55 = [v54 action]) == 0)
      {
        v55 = 0;
      }

      [v53 setText:v55];

      v29 = 1;
      [v48 setNumberOfLines:1];
      goto LABEL_47;
    }

    goto LABEL_18;
  }

  v18 = OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_authenticationManager;
  v19 = *&v0[OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_authenticationManager];
  if (v19 && (v20 = [v19 title]) != 0)
  {
    v21 = v20;
    v22 = sub_1000AC06C();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v30 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
  *v30 = v22;
  v30[1] = v24;

  sub_1000A9FF0();
  v31 = *&v0[v18];
  if (v31 && (v32 = [v31 subtitle]) != 0)
  {
    v33 = v32;
    v34 = sub_1000AC06C();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle];
  *v37 = v34;
  v37[1] = v36;

  v38 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel];
  if (v36)
  {

    v39 = sub_1000AC02C();
  }

  else
  {
    v39 = 0;
  }

  [v38 setText:v39];

  v50 = *&v0[OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator];
  v51 = *&v0[v18];
  if (!v51 || (v52 = [v51 action]) == 0)
  {
    v52 = 0;
  }

  [v50 setText:v52];

  [v38 setNumberOfLines:0];
  v29 = 1;
LABEL_47:

  return [v0 setUserInteractionEnabled:v29];
}

void sub_100002D20()
{
  v1 = v0;
  v2 = sub_1000AB6EC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_state);
  if (v7 == 3)
  {
    v46 = v4;
    v25 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_message);
    v26 = [*(v1 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_message) rootKey];
    v27 = sub_1000AC06C();
    v29 = v28;

    v30 = [v25 isFromMe];
    v31 = sub_1000AC06C();
    v33 = v32;
    v34 = [v25 version];
    v47 = v27;
    v48 = v29;
    if (v30)
    {
      v54._countAndFlagsBits = 46;
      v54._object = 0xE100000000000000;
      sub_1000AC12C(v54);
      v55._countAndFlagsBits = 0x6465696C706572;
      v55._object = 0xE700000000000000;
      sub_1000AC12C(v55);
    }

    v56._countAndFlagsBits = 46;
    v56._object = 0xE100000000000000;
    sub_1000AC12C(v56);
    v57._countAndFlagsBits = v31;
    v57._object = v33;
    sub_1000AC12C(v57);

    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1000AF0E0;
    v37 = v47;
    v36 = v48;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = sub_10000587C();
    *(v35 + 32) = v37;
    *(v35 + 40) = v36;
    sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);

    v38 = sub_1000AC3FC();
    v39 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: Logging Message App Extension event: %@", 53, 2, &_mh_execute_header, v38, v39, v35);

    if (qword_1000EEE98 != -1)
    {
      swift_once();
    }

    v40 = qword_1000FC030;
    v41 = sub_1000AC02C();

    [v40 mt_log_icloud_messages_apps_businessframework:v41 version:v34];

    v42 = (v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_urlHelper);
    sub_1000058D0(v42, v42[3]);
    v43 = sub_1000058D0(v42, v42[3]);
    v44 = v46;
    (*(v3 + 16))(v6, v43, v46);
    sub_10004E400(v6, 1, 0, 0);
    (*(v3 + 8))(v6, v44);
  }

  else if (v7 == 2)
  {
    v8 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_message);
    v9 = [*(v1 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_message) rootKey];
    v10 = sub_1000AC06C();
    v12 = v11;

    v13 = [v8 isFromMe];
    v14 = sub_1000AC06C();
    v16 = v15;
    v17 = [v8 version];
    v47 = v10;
    v48 = v12;
    if (v13)
    {
      v50._countAndFlagsBits = 46;
      v50._object = 0xE100000000000000;
      sub_1000AC12C(v50);
      v51._countAndFlagsBits = 0x6465696C706572;
      v51._object = 0xE700000000000000;
      sub_1000AC12C(v51);
    }

    v52._countAndFlagsBits = 46;
    v52._object = 0xE100000000000000;
    sub_1000AC12C(v52);
    v53._countAndFlagsBits = v14;
    v53._object = v16;
    sub_1000AC12C(v53);

    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1000AF0E0;
    v20 = v47;
    v19 = v48;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_10000587C();
    *(v18 + 32) = v20;
    *(v18 + 40) = v19;
    sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);

    v21 = sub_1000AC3FC();
    v22 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: Logging Message App Extension event: %@", 53, 2, &_mh_execute_header, v21, v22, v18);

    if (qword_1000EEE98 != -1)
    {
      swift_once();
    }

    v23 = qword_1000FC030;
    v24 = sub_1000AC02C();

    [v23 mt_log_icloud_messages_apps_businessframework:v24 version:v17];

    sub_100003280();
  }
}

void sub_100003280()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 40))(v1, &off_1000DE0A0, ObjectType, v3);
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = [v5 recipientAddresses];
      v7 = sub_1000AC19C();

      v8 = *(v7 + 16);

      if (v8 == 1 && (sub_100003850() & 1) != 0)
      {
        v9 = *&v1[OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_authenticationManager];
        if (v9)
        {
          v10 = swift_allocObject();
          *(v10 + 16) = v9;
          *(v10 + 24) = v1;
          v14[4] = sub_100005A04;
          v14[5] = v10;
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 1107296256;
          v14[2] = sub_100049334;
          v14[3] = &unk_1000DAA88;
          v11 = _Block_copy(v14);
          v12 = v9;
          v13 = v1;

          [v12 fetchCredentials:v11];
          _Block_release(v11);
        }
      }
    }
  }
}

void sub_100003430(void *a1, NSString a2, void *a3, void *a4, uint64_t a5)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v9 = qword_1000FC008;
  v10 = sub_1000AC2BC();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000AF0F0;
  v39 = a1;

  sub_10000413C(&qword_1000EF010, &qword_1000AF6C0);
  v12 = sub_1000AC0CC();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_10000587C();
  *(v11 + 64) = v15;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  swift_errorRetain();
  sub_10000413C(&qword_1000EF018, &qword_1000AF6C8);
  v16 = sub_1000AC0CC();
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 72) = v16;
  *(v11 + 80) = v17;
  sub_1000ABA5C("IMBInternalAuthenticationBubbleView: credential retrieved: %@,  error?: %@", 74, 2, &_mh_execute_header, v9, v10, v11);

  v18 = [a4 authenticationRequest];
  v19 = [v18 businessIdentifier];
  if (!v19)
  {
    sub_1000AC06C();
    v19 = sub_1000AC02C();
  }

  v20 = [v18 groupIdentifier];
  if (v20)
  {
    if (a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1000AC06C();
    v20 = sub_1000AC02C();

    if (a3)
    {
LABEL_7:
      v21 = sub_1000AB62C();
      if (!a2)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v21 = 0;
  if (a2)
  {
LABEL_8:
    a2 = sub_1000AC02C();
  }

LABEL_9:
  if (v21)
  {
    v22 = sub_1000AB62C();
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_allocWithZone(BCInternalAuthenticationResponse) initWithBusinessIdentifier:v19 groupIdentifier:v20 credentials:a2 error:v22];

  v24 = *(a5 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_message);
  v25 = [v23 responseMessageFor:a4 message:v24];
  v40 = sub_100003AA8(v25, v23);
  v26 = a5 + OBJC_IVAR____TtC8Business13IMBBubbleView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    v29 = v18;
    v30 = *(v27 + 40);
    v31 = v24;
    v32 = v30(a5, &off_1000DE0A0, ObjectType, v27);
    v18 = v29;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v33)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v34 = v24;
  }

  v33 = [objc_allocWithZone(MSConversation) init];
LABEL_20:
  v35 = [v25 replyMessage];
  v36 = [v25 rootKey];
  if (!v36)
  {
    sub_1000AC06C();
    v36 = sub_1000AC02C();
  }

  v37 = v23;
  v38 = v41;
  sub_100036FA8(1);
}

uint64_t sub_100003850()
{
  v1 = v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 40))(v0, &off_1000DE0A0, ObjectType, v3);
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  v6 = [v5 recipientAddresses];
  v7 = sub_1000AC19C();

  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_14:

    return 0;
  }

  result = objc_opt_self();
  v9 = 0;
  v20 = result;
  while (1)
  {
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
      return result;
    }

    v10 = (v7 + 32 + 16 * v9);
    v12 = *v10;
    v11 = v10[1];

    v13 = [v20 allowedAppleURNs];
    v14 = sub_1000AC26C();

    v21[0] = v12;
    v21[1] = v11;
    sub_1000AC54C();
    if (*(v14 + 16))
    {
      v15 = sub_1000AC52C(*(v14 + 40));
      v16 = -1 << *(v14 + 32);
      v17 = v15 & ~v16;
      if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        break;
      }
    }

LABEL_5:
    ++v9;

    result = sub_100005970(v22);
    if (v9 == v8)
    {
      goto LABEL_14;
    }
  }

  v18 = ~v16;
  while (1)
  {
    sub_100005914(*(v14 + 48) + 40 * v17, v21);
    v19 = sub_1000AC53C();
    sub_100005970(v21);
    if (v19)
    {
      break;
    }

    v17 = (v17 + 1) & v18;
    if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  sub_100005970(v22);
  return 1;
}

id sub_100003AA8(void *a1, void *a2)
{
  v5 = v2 + OBJC_IVAR____TtC8Business13IMBBubbleView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 40))(v2, &off_1000DE0A0, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  v35 = v8;
  v9 = [v8 selectedMessage];
  v10 = [v9 session];

  if (!v10)
  {
    v10 = [objc_allocWithZone(MSSession) init];
  }

  v11 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  v12 = [a1 replyMessage];
  if (v12 && (v13 = v12, v14 = [v12 title], v13, v14))
  {
    sub_1000AC06C();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = [a1 replyMessage];
  if (v17 && (v18 = v17, v19 = [v17 subtitle], v18, v19))
  {
    v34 = sub_1000AC06C();
    v21 = v20;
  }

  else
  {
    v34 = 0;
    v21 = 0;
  }

  v22 = [objc_allocWithZone(MSMessage) initWithSession:v10];
  v23 = [a2 error];
  if (v23)
  {

    if (v16)
    {
LABEL_16:

      v24 = sub_1000AC02C();

      goto LABEL_24;
    }
  }

  else
  {
    v25 = [a1 replyMessage];
    if (!v25 || (v26 = v25, v27 = [v25 image], v26, !v27))
    {
      v28 = [a1 receivedMessage];
      if (v28)
      {
        v29 = v28;
        v27 = [v28 image];
      }

      else
      {
        v27 = 0;
      }
    }

    [v11 setImage:{v27, v34}];

    if (v16)
    {
      goto LABEL_16;
    }
  }

  v24 = 0;
LABEL_24:
  [v11 setCaption:{v24, v34}];

  if (v21)
  {
    v30 = sub_1000AC02C();
  }

  else
  {
    v30 = 0;
  }

  [v11 setSubcaption:v30];

  if (v16)
  {
    v31 = sub_1000AC02C();
  }

  else
  {
    v31 = 0;
  }

  [v22 setAccessibilityLabel:v31];

  v32 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v11];
  [v22 setLayout:v32];

  return v22;
}

id sub_100003E80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBInternalAuthenticationBubbleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t variable initialization expression of Reachability.reachabilityQueue()
{
  v0 = sub_1000AC31C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000AC2FC();
  __chkstk_darwin(v4);
  v5 = sub_1000ABF6C();
  __chkstk_darwin(v5 - 8);
  sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
  sub_1000ABF5C();
  v7[1] = _swiftEmptyArrayStorage;
  sub_100004ABC(&qword_1000EEEB8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000413C(&qword_1000EEEC0, &qword_1000AF110);
  sub_100004184();
  sub_1000AC49C();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_1000AC34C();
}

uint64_t sub_10000413C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004184()
{
  result = qword_1000EEEC8;
  if (!qword_1000EEEC8)
  {
    sub_1000041E8(&qword_1000EEEC0, &qword_1000AF110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEEC8);
  }

  return result;
}

uint64_t sub_1000041E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id variable initialization expression of Reachability.notificationCenter()
{
  v0 = [objc_opt_self() defaultCenter];

  return v0;
}

id variable initialization expression of IMBJITAppBundleManager.userDefaults()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

__n128 sub_1000042EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000042FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000431C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100004420(uint64_t a1, uint64_t a2)
{
  result = sub_1000AC21C();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_100004474(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000AC22C();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_1000044FC(uint64_t a1, uint64_t a2)
{
  result = sub_1000AB9DC();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100004550(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000AB9EC();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

void *sub_1000045E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_100004668(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_100004698@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1000046C4@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1000047C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000AC06C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_100004890(uint64_t a1, uint64_t a2)
{
  sub_1000AC87C();
  swift_getWitnessTable();
  sub_1000ABA1C();
  return sub_1000AC8CC();
}

uint64_t sub_1000048F8(uint64_t a1, id *a2)
{
  result = sub_1000AC04C();
  *a2 = 0;
  return result;
}

uint64_t sub_100004970(uint64_t a1, id *a2)
{
  v3 = sub_1000AC05C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000049F0@<X0>(uint64_t *a2@<X8>)
{
  sub_1000AC06C();
  v3 = sub_1000AC02C();

  *a2 = v3;
  return result;
}

uint64_t sub_100004A34@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_100005844(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100004ABC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100004BDC(uint64_t a1)
{
  sub_100004ABC(&qword_1000EF1B0, type metadata accessor for BCMessageRootKey, &unk_1000AFA50);
  sub_100004ABC(&qword_1000EF1B8, type metadata accessor for BCMessageRootKey, &unk_1000AF9F8);

  return sub_1000AC69C();
}

uint64_t sub_100004C98(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1000ABA0C();
}

uint64_t sub_100004D04(uint64_t a1)
{
  sub_100004ABC(&qword_1000EEF88, type metadata accessor for BCBubbleViewStyle, &unk_1000AF630);
  sub_100004ABC(&qword_1000EEF90, type metadata accessor for BCBubbleViewStyle, &unk_1000AF5D8);

  return sub_1000AC69C();
}

uint64_t sub_100004E98(uint64_t a1)
{
  sub_100004ABC(&qword_1000EF148, type metadata accessor for PKContactField, &unk_1000B025C);
  sub_100004ABC(&qword_1000EF150, type metadata accessor for PKContactField, &unk_1000B01BC);

  return sub_1000AC69C();
}

uint64_t sub_100004F54(uint64_t a1)
{
  sub_100004ABC(&qword_1000EF1C0, type metadata accessor for PKPaymentNetwork, &unk_1000AF910);
  sub_100004ABC(&qword_1000EF1C8, type metadata accessor for PKPaymentNetwork, &unk_1000AF8B8);

  return sub_1000AC69C();
}

_DWORD *sub_100005010@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_100005020@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_10000502C(uint64_t a1)
{
  sub_100004ABC(&qword_1000EF158, type metadata accessor for UILayoutPriority, &unk_1000B00CC);
  sub_100004ABC(&qword_1000EF160, type metadata accessor for UILayoutPriority, &unk_1000B006C);
  return sub_1000AC69C();
}

double sub_1000050E8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1000050F4(uint64_t a1)
{
  sub_100004ABC(&qword_1000EF178, type metadata accessor for Weight, &unk_1000AFE18);
  sub_100004ABC(&qword_1000EF180, type metadata accessor for Weight, &unk_1000AFDB8);
  sub_1000062D0();
  return sub_1000AC69C();
}

uint64_t sub_1000051BC(uint64_t a1)
{
  sub_100004ABC(&qword_1000EF168, type metadata accessor for NSKeyValueChangeKey, &unk_1000B030C);
  sub_100004ABC(&qword_1000EF170, type metadata accessor for NSKeyValueChangeKey, &unk_1000AFF1C);

  return sub_1000AC69C();
}

uint64_t sub_100005278(uint64_t a1)
{
  sub_100004ABC(&qword_1000EF1A0, type metadata accessor for AttributeName, &unk_1000B0350);
  sub_100004ABC(&qword_1000EF1A8, type metadata accessor for AttributeName, &unk_1000AFB4C);

  return sub_1000AC69C();
}

uint64_t sub_100005334@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000AC02C();

  *a2 = v3;
  return result;
}

uint64_t sub_10000537C(uint64_t a1)
{
  sub_100004ABC(&qword_1000EF190, type metadata accessor for TraitKey, &unk_1000AFCC0);
  sub_100004ABC(&qword_1000EF198, type metadata accessor for TraitKey, &unk_1000AFC60);

  return sub_1000AC69C();
}

uint64_t sub_100005438()
{
  sub_1000AC06C();
  v0 = sub_1000AC13C();

  return v0;
}

uint64_t sub_100005474(uint64_t a1)
{
  sub_1000AC06C();
  sub_1000AC11C();
}

Swift::Int sub_1000054C8()
{
  sub_1000AC06C();
  sub_1000AC87C();
  sub_1000AC11C();
  v0 = sub_1000AC8CC();

  return v0;
}

void sub_100005544()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1000AC8AC(LODWORD(v1));
}

uint64_t sub_100005580(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

void sub_1000055A4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1000AC8BC(*&v1);
}

uint64_t sub_1000055E0(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

uint64_t sub_1000055F8(void *a1, uint64_t *a2)
{
  v2 = sub_1000AC06C();
  v4 = v3;
  if (v2 == sub_1000AC06C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000AC7AC();
  }

  return v7 & 1;
}

void *sub_1000056A8(char a1, void *a2, id a3)
{
  v7 = OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_authenticationManager;
  *(v3 + OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_authenticationManager) = 0;
  v8 = OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_state;
  *(v3 + OBJC_IVAR____TtC8Business35IMBInternalAuthenticationBubbleView_state) = 4;
  if ([a3 rootObject])
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = [objc_allocWithZone(BCInternalAuthenticationManager) initWithAuthenticationRequest:v9];
      v11 = *(v3 + v7);
      *(v3 + v7) = v10;
      v12 = v10;

      v13 = [v12 state];
      swift_unknownObjectRelease();
      *(v3 + v8) = v13;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if ([a3 rootObject])
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = [v14 error];
      swift_unknownObjectRelease();
      if (v15)
      {

        v16 = 1;
      }

      else
      {
        v16 = 0;
      }

      *(v3 + v8) = v16;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return sub_100080C58(a1 & 1, a2, a3);
}

uint64_t sub_100005844(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_10000587C()
{
  result = qword_1000EF000;
  if (!qword_1000EF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF000);
  }

  return result;
}

void *sub_1000058D0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000059C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005A0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A24(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100005B34(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1000062D0()
{
  result = qword_1000EF188;
  if (!qword_1000EF188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF188);
  }

  return result;
}

void *sub_100006368(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16) || (v4 = sub_10004F0CC(0x746E756F6D61, 0xE600000000000000), (v5 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v4, v21), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v11 = qword_1000FC008;
    v12 = sub_1000AC2AC();
    sub_1000ABA5C("Unable to create total item: amount is missing", 46, 2, &_mh_execute_header, v11, v12, _swiftEmptyArrayStorage);
    goto LABEL_16;
  }

  if (!*(a1 + 16) || (v6 = sub_10004F0CC(1701869940, 0xE400000000000000), (v7 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v6, v21), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v14 = qword_1000FC008;
    v15 = sub_1000AC2AC();
    sub_1000ABA5C("Unable to create total item: type is missing", 44, 2, &_mh_execute_header, v14, v15, _swiftEmptyArrayStorage);
    goto LABEL_16;
  }

  if (!*(a1 + 16) || (v8 = sub_10004F0CC(0x6C6562616CLL, 0xE500000000000000), (v9 & 1) == 0))
  {

LABEL_22:

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v16 = qword_1000FC008;
    v17 = sub_1000AC2AC();
    sub_1000ABA5C("Unable to create total item: label is missing", 45, 2, &_mh_execute_header, v16, v17, _swiftEmptyArrayStorage);
LABEL_16:
    type metadata accessor for IMBTotalItem();
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_1000068B4(*(a1 + 56) + 32 * v8, v21);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_22;
  }

  if (v19 == 0x676E69646E6570 && v20 == 0xE700000000000000)
  {

    v10 = 1;
  }

  else
  {
    v18 = sub_1000AC7AC();

    v10 = v18 & 1;
  }

  v2[2] = v19;
  v2[3] = v20;
  v2[4] = v10;
  v2[5] = v19;
  v2[6] = v20;
  return v2;
}

void *sub_100006724()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v13 = &type metadata for String;
  *&v12 = v2;
  *(&v12 + 1) = v3;
  sub_100006910(&v12, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v11, 0x746E756F6D61, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v5 = v1[5];
  v6 = v1[6];
  v13 = &type metadata for String;
  *&v12 = v5;
  *(&v12 + 1) = v6;
  sub_100006910(&v12, v11);

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v11, 0x6C6562616CLL, 0xE500000000000000, v7);
  v8 = v1[4];
  v13 = &type metadata for UInt;
  *&v12 = v8;
  sub_100006910(&v12, v11);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v11, 1701869940, 0xE400000000000000, v9);
  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_100006850()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000068B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_100006910(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_10000692C(char *a1)
{
  v2 = v1;
  v4 = 0;
  v298 = sub_1000AB6EC();
  v300 = *(v298 - 8);
  v5 = __chkstk_darwin(v298);
  v293 = &v278 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v290 = &v278 - v8;
  __chkstk_darwin(v7);
  v285 = &v278 - v9;
  v287 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  __chkstk_darwin(v287);
  v286 = &v278 - v10;
  v11 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v12 = __chkstk_darwin(v11 - 8);
  v294 = &v278 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v299 = &v278 - v15;
  v16 = __chkstk_darwin(v14);
  v292 = &v278 - v17;
  v18 = __chkstk_darwin(v16);
  v289 = &v278 - v19;
  v20 = __chkstk_darwin(v18);
  v288 = &v278 - v21;
  __chkstk_darwin(v20);
  v291 = &v278 - v22;
  if (qword_1000EEE80 != -1)
  {
LABEL_227:
    swift_once();
  }

  v23 = qword_1000FC008;
  v24 = sub_1000AC28C();
  v295 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v25 = swift_allocObject();
  v296 = xmmword_1000AF0E0;
  *(v25 + 16) = xmmword_1000AF0E0;
  sub_10000413C(&unk_1000F1DF0, &qword_1000B18F0);
  v26 = sub_1000ABFCC();
  v28 = v27;
  *(v25 + 56) = &type metadata for String;
  v29 = sub_10000587C();
  *(v25 + 64) = v29;
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v30 = v23;
  sub_1000ABA5C("Creating IMBPaymentRequest from dictionary: %@", 46, 2, &_mh_execute_header, v23, v24, v25);

  sub_10005E91C(0x746E696F70646E65uLL, 0xE900000000000073, a1, &v303);
  if (*(&v304 + 1) == 1)
  {
    v31 = &qword_1000EF650;
    v32 = &qword_1000B0498;
    v33 = &v303;
LABEL_10:
    sub_10000E784(v33, v31, v32);
    v36 = v298;
    v35 = v299;
    goto LABEL_11;
  }

  v305 = v303;
  v306 = v304;
  if (!*(&v304 + 1))
  {
    v31 = &unk_1000F1DF0;
    v32 = &qword_1000B18F0;
    v33 = &v305;
    goto LABEL_10;
  }

  sub_10000413C(&qword_1000EF658, &unk_1000B04A0);
  v34 = swift_dynamicCast();
  v36 = v298;
  v35 = v299;
  if ((v34 & 1) == 0)
  {
LABEL_11:
    v43 = sub_1000AC2AC();
    sub_1000ABA5C("Unable to create PKPaymentRequest: endpoints dictionary is missing", 66, 2, &_mh_execute_header, v23, v43, _swiftEmptyArrayStorage);
    v37 = 0;
    goto LABEL_12;
  }

  v37 = v301;
  if (*(v301 + 16))
  {

    sub_10004F0CC(0xD000000000000018, 0x80000001000B5B10);
    if (v38)
    {

      v39 = v37;
      v40 = v291;
      sub_1000AB6DC();
      v35 = v299;

      v41 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingContactUpdateUrl;
      swift_beginAccess();
      v42 = v40;
      v37 = v39;
      sub_10000E8A0(v42, v2 + v41, &unk_1000F06A0, &unk_1000B0450);
      swift_endAccess();
    }

    else
    {
    }

    if (*(v37 + 16))
    {

      sub_10004F0CC(0xD000000000000010, 0x80000001000B5AB0);
      if (v168)
      {

        v169 = v37;
        v170 = v291;
        sub_1000AB6DC();
        v35 = v299;

        v171 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_orderTrackingUrl;
        swift_beginAccess();
        v172 = v170;
        v37 = v169;
        sub_10000E8A0(v172, v2 + v171, &unk_1000F06A0, &unk_1000B0450);
        swift_endAccess();
      }

      else
      {
      }

      if (*(v37 + 16))
      {

        sub_10004F0CC(0xD000000000000017, 0x80000001000B5B30);
        if (v185)
        {

          v186 = v37;
          v187 = v291;
          sub_1000AB6DC();
          v35 = v299;

          v188 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingMethodUpdateUrl;
          swift_beginAccess();
          v189 = v187;
          v37 = v186;
          sub_10000E8A0(v189, v2 + v188, &unk_1000F06A0, &unk_1000B0450);
          swift_endAccess();
        }

        else
        {
        }

        if (*(v37 + 16))
        {

          sub_10004F0CC(0xD000000000000016, 0x80000001000B5AF0);
          if (v199)
          {

            v200 = v37;
            v201 = v291;
            sub_1000AB6DC();
            v35 = v299;

            v202 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentMethodUpdateUrl;
            swift_beginAccess();
            v203 = v201;
            v37 = v200;
            sub_10000E8A0(v203, v2 + v202, &unk_1000F06A0, &unk_1000B0450);
            swift_endAccess();
          }

          else
          {
          }

          if (*(v37 + 16))
          {

            sub_10004F0CC(0x6B6361626C6C6166, 0xEB000000006C7255);
            if (v204)
            {

              v205 = v37;
              v206 = v291;
              sub_1000AB6DC();
              v35 = v299;

              v207 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_fallbackUrl;
              swift_beginAccess();
              v208 = v206;
              v37 = v205;
              sub_10000E8A0(v208, v2 + v207, &unk_1000F06A0, &unk_1000B0450);
              swift_endAccess();
            }

            else
            {
            }

            if (*(v37 + 16))
            {

              sub_10004F0CC(0x55746375646F7270, 0xEA00000000006C72);
              if (v268)
              {

                v269 = v37;
                v270 = v291;
                sub_1000AB6DC();
                v35 = v299;

                v271 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_productUrl;
                swift_beginAccess();
                v272 = v270;
                v37 = v269;
                sub_10000E8A0(v272, v2 + v271, &unk_1000F06A0, &unk_1000B0450);
                swift_endAccess();
              }

              else
              {
              }
            }
          }
        }
      }
    }
  }

LABEL_12:
  sub_10005E91C(0x52746E656D796170uLL, 0xEE00747365757165, a1, &v303);
  v297 = a1;
  if (*(&v304 + 1) != 1)
  {
    v305 = v303;
    v306 = v304;
    if (!*(&v304 + 1))
    {
      sub_10000E784(&v305, &unk_1000F1DF0, &qword_1000B18F0);
      goto LABEL_20;
    }

    v283 = v29;
    sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v29 = v283;
      goto LABEL_20;
    }

    v284 = v30;
    v44 = v301;
    v45 = objc_allocWithZone(PKPaymentRequest);
    isa = sub_1000ABFAC().super.isa;
    *&v305 = 0;
    v47 = [v45 initWithDictionary:isa error:&v305];

    v48 = v305;
    if (v47)
    {
      v49 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest) = v47;
      v50 = v47;
      v51 = v48;
      v52 = v50;

      [v52 setAPIType:3];
    }

    else
    {
      v135 = v305;
      sub_1000AB63C();

      swift_willThrow();
      v4 = 0;

      if (*(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest))
      {
        sub_100009558(v44);
      }
    }

    a1 = v297;
    v36 = v298;
    v30 = v284;
    sub_10005E91C(0x746163696C707061uLL, 0xEF617461446E6F69, v297, &v303);
    if (*(&v304 + 1) == 1)
    {
      sub_10000E784(&v303, &qword_1000EF650, &qword_1000B0498);
    }

    else
    {
      v305 = v303;
      v306 = v304;
      if (*(&v304 + 1))
      {
        if (swift_dynamicCast())
        {
          v136 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
          if (v136)
          {
            v137 = v4;
            v138 = v136;
            v139 = sub_1000AB71C();
            v141 = v140;

            if (v141 >> 60 == 15)
            {
              v142 = 0;
            }

            else
            {
              v142 = sub_1000AB72C().super.isa;
              sub_10000E950(v139, v141);
            }

            v4 = v137;
            v30 = v284;
            [v138 setApplicationData:v142];

            a1 = v297;
          }

          else
          {
          }

          v36 = v298;
        }
      }

      else
      {
        sub_10000E784(&v305, &unk_1000F1DF0, &qword_1000B18F0);
      }
    }

    sub_10005E8B8(0xD00000000000001DLL, 0x80000001000B6100, v44, &v305);
    if (*(&v306 + 1))
    {
      sub_10000413C(qword_1000F1E10, &qword_1000B0490);
      if (swift_dynamicCast())
      {
        v231 = v303;
        v232 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
        if (v232)
        {
          v233 = v232;
          sub_100081990(v231);

          type metadata accessor for PKContactField(0);
          sub_10000E908(&qword_1000EF148, type metadata accessor for PKContactField, &unk_1000B025C);
          v234 = sub_1000AC25C().super.isa;
          v36 = v298;

          [v233 setRequiredShippingContactFields:v234];

          v30 = v284;
        }

        else
        {
        }
      }
    }

    else
    {
      sub_10000E784(&v305, &unk_1000F1DF0, &qword_1000B18F0);
    }

    sub_10005E8B8(0xD00000000000001CLL, 0x80000001000B6120, v44, &v305);
    if (*(&v306 + 1))
    {
      sub_10000413C(qword_1000F1E10, &qword_1000B0490);
      if (swift_dynamicCast())
      {
        v235 = v303;
        v236 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
        if (v236)
        {
          v237 = v236;
          sub_100081990(v235);

          type metadata accessor for PKContactField(0);
          sub_10000E908(&qword_1000EF148, type metadata accessor for PKContactField, &unk_1000B025C);
          v238 = sub_1000AC25C().super.isa;
          v36 = v298;

          [v237 setRequiredBillingContactFields:v238];

          v30 = v284;
        }

        else
        {
        }
      }
    }

    else
    {
      sub_10000E784(&v305, &unk_1000F1DF0, &qword_1000B18F0);
    }

    sub_10005E8B8(0x796150656C707061, 0xE800000000000000, v44, &v305);
    if (*(&v306 + 1))
    {
      if (swift_dynamicCast())
      {
        v239 = v303;
        sub_10005E8B8(0xD000000000000011, 0x80000001000B5B80, v303, &v305);
        if (*(&v306 + 1))
        {
          sub_10000413C(qword_1000F1E10, &qword_1000B0490);
          v240 = swift_dynamicCast();
          v241 = v303;
          if (!v240)
          {
            v241 = 0;
          }
        }

        else
        {
          sub_10000E784(&v305, &unk_1000F1DF0, &qword_1000B18F0);
          v241 = 0;
        }

        *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_supportedNetworks) = v241;

        sub_10005E8B8(0xD000000000000014, 0x80000001000B5B60, v239, &v305);

        if (*(&v306 + 1))
        {
          sub_10000413C(qword_1000F1E10, &qword_1000B0490);
          v242 = swift_dynamicCast();
          v243 = v303;
          if (!v242)
          {
            v243 = 0;
          }
        }

        else
        {
          sub_10000E784(&v305, &unk_1000F1DF0, &qword_1000B18F0);
          v243 = 0;
        }

        *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantCapabilities) = v243;
      }
    }

    else
    {
      sub_10000E784(&v305, &unk_1000F1DF0, &qword_1000B18F0);
    }

    sub_10005E8B8(0x43676E696C6C6962, 0xEE00746361746E6FLL, v44, &v305);
    if (*(&v306 + 1))
    {
      if (swift_dynamicCast())
      {
        v280 = v37;
        v244 = objc_allocWithZone(PKContact);
        v245 = sub_1000ABFAC().super.isa;

        *&v305 = 0;
        v246 = [v244 initWithDictionary:v245 error:&v305];

        if (v246)
        {
          v247 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
          v248 = v305;
          if (v247)
          {
            [v247 setBillingContact:v246];
          }

          v36 = v298;
          v30 = v284;
          sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
          v250 = sub_1000AC3FC();
          v251 = sub_1000AC2BC();
          sub_1000ABA5C("BusinessChat: A billingContact was assigned", 43, 2, &_mh_execute_header, v250, v251, _swiftEmptyArrayStorage);
        }

        else
        {
          v249 = v305;
          sub_1000AB63C();

          swift_willThrow();
          a1 = v297;

          v4 = 0;
          v36 = v298;
          v30 = v284;
        }

        v37 = v280;
      }
    }

    else
    {
      sub_10000E784(&v305, &unk_1000F1DF0, &qword_1000B18F0);
    }

    sub_10005E8B8(0x676E697070696873, 0xEF746361746E6F43, v44, &v305);
    if (*(&v306 + 1))
    {
      if (swift_dynamicCast())
      {
        v280 = v37;
        v252 = objc_allocWithZone(PKContact);
        v253 = sub_1000ABFAC().super.isa;

        *&v305 = 0;
        v254 = [v252 initWithDictionary:v253 error:&v305];

        if (v254)
        {
          v255 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
          v36 = v298;
          v256 = v305;
          if (v255)
          {
            [v255 setShippingContact:v254];
          }

          v30 = v284;
          sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
          v258 = sub_1000AC3FC();
          v259 = sub_1000AC2BC();
          sub_1000ABA5C("BusinessChat: A shippingContact was assigned", 44, 2, &_mh_execute_header, v258, v259, _swiftEmptyArrayStorage);
        }

        else
        {
          v257 = v305;
          sub_1000AB63C();

          swift_willThrow();
          a1 = v297;

          v4 = 0;
          v36 = v298;
          v30 = v284;
        }

        v37 = v280;
      }
    }

    else
    {
      sub_10000E784(&v305, &unk_1000F1DF0, &qword_1000B18F0);
    }

    sub_10005E8B8(0x676E697070696873, 0xEC00000065707954, v44, &v305);

    if (*(&v306 + 1))
    {
      if (swift_dynamicCast())
      {
        v260 = sub_10000E854(v303, *(&v303 + 1));
        v29 = v283;
        if (v260 != 4)
        {
          v261 = v260;
          v262 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
          if (v262)
          {
            [v262 setShippingType:3 - v261];
          }

          v263 = swift_allocObject();
          *(v263 + 16) = v296;
          *&v305 = 3 - v261;
          v264 = sub_1000AC78C();
          *(v263 + 56) = &type metadata for String;
          *(v263 + 64) = v29;
          *(v263 + 32) = v264;
          *(v263 + 40) = v265;
          sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
          v266 = sub_1000AC3FC();
          v267 = sub_1000AC2BC();
          sub_1000ABA5C("BusinessChat: A shippingType was assigned with value = %@", 57, 2, &_mh_execute_header, v266, v267, v263);

          v30 = v284;
        }

        goto LABEL_219;
      }
    }

    else
    {
      sub_10000E784(&v305, &unk_1000F1DF0, &qword_1000B18F0);
    }

    v29 = v283;
LABEL_219:
    v35 = v299;
    goto LABEL_21;
  }

  sub_10000E784(&v303, &qword_1000EF650, &qword_1000B0498);
LABEL_20:
  v53 = sub_1000AC2BC();
  sub_1000ABA5C("Unable to create PKPaymentRequest: paymentRequest is missing", 60, 2, &_mh_execute_header, v30, v53, _swiftEmptyArrayStorage);
LABEL_21:
  sub_10005E91C(0x746E61686372656DuLL, 0xEF6E6F6973736553, a1, &v303);
  v54 = &unk_1000FB000;
  if (*(&v304 + 1) == 1)
  {
    v55 = &qword_1000EF650;
    v56 = &qword_1000B0498;
    v57 = &v303;
LABEL_30:
    sub_10000E784(v57, v55, v56);
    goto LABEL_31;
  }

  v305 = v303;
  v306 = v304;
  if (!*(&v304 + 1))
  {
    v55 = &unk_1000F1DF0;
    v56 = &qword_1000B18F0;
    v57 = &v305;
    goto LABEL_30;
  }

  sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    v77 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: this payment request did not contain a merchantSession", 68, 2, &_mh_execute_header, v30, v77, _swiftEmptyArrayStorage);
    goto LABEL_32;
  }

  v58 = v301;
  v59 = sub_1000AC2BC();
  v60 = v30;
  v61 = swift_allocObject();
  *(v61 + 16) = v296;
  v62 = sub_1000ABFDC();
  *(v61 + 56) = &type metadata for String;
  *(v61 + 64) = v29;
  *(v61 + 32) = v62;
  *(v61 + 40) = v63;
  v284 = v60;
  sub_1000ABA5C("Creating PaymentSession with dictionary: %@", 43, 2, &_mh_execute_header, v60, v59, v61);

  sub_10004D7AC(v58);
  v64 = objc_allocWithZone(PKPaymentMerchantSession);
  v65 = sub_1000ABFAC().super.isa;

  v66 = [v64 initWithDictionary:v65];

  v281 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_session;
  v67 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_session);
  if (!v67)
  {
    goto LABEL_152;
  }

  v280 = v37;
  v283 = v29;
  v282 = v4;
  v68 = v67;
  v69 = [v68 merchantIdentifier];
  v70 = sub_1000AC06C();
  v72 = v71;

  v73 = [v66 merchantIdentifier];
  v74 = sub_1000AC06C();
  v76 = v75;

  if (v70 == v74 && v72 == v76)
  {

LABEL_121:
    v166 = *(v2 + v281);
    *(v2 + v281) = v66;
    v167 = v66;

    v4 = v282;
    v29 = v283;
    v37 = v280;
    goto LABEL_153;
  }

  v165 = sub_1000AC7AC();

  if (v165)
  {
    goto LABEL_121;
  }

  v190 = *(v2 + v281);
  v4 = v282;
  v29 = v283;
  v37 = v280;
  if (!v190)
  {
LABEL_152:
    *(v2 + v281) = v66;
    v210 = v66;
LABEL_153:
    *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_sessionDictionary) = v58;

    sub_10005E8B8(0x4173657269707865, 0xE900000000000074, v58, &v305);

    v36 = v298;
    v279 = v66;
    if (*(&v306 + 1))
    {
      if (swift_dynamicCast())
      {
        v211 = v286;
        sub_1000AB79C();
        v212 = sub_1000AB7EC();
        (*(*(v212 - 8) + 56))(v211, 0, 1, v212);
        v213 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate;
        swift_beginAccess();
        sub_10000E8A0(v211, v2 + v213, &qword_1000F0270, &unk_1000B0480);
        swift_endAccess();
        LODWORD(v283) = sub_1000AC2BC();
        v214 = v4;
        v215 = swift_allocObject();
        *(v215 + 16) = v296;
        sub_10000E66C(v2 + v213, v211, &qword_1000F0270, &unk_1000B0480);
        v216 = sub_1000AC41C();
        v217 = v37;
        v219 = v218;
        sub_10000E784(v211, &qword_1000F0270, &unk_1000B0480);
        *(v215 + 56) = &type metadata for String;
        *(v215 + 64) = v29;
        *(v215 + 32) = v216;
        *(v215 + 40) = v219;
        v37 = v217;
        v36 = v298;
        v35 = v299;
        v30 = v284;
        sub_1000ABA5C("Merchant Session Expiration Date set to: %@", 43, 2, &_mh_execute_header, v284, v283, v215);
        v4 = v214;

LABEL_158:
        v220 = *(v2 + v281);
        v54 = &unk_1000FB000;
        if (v220)
        {
          v221 = [v220 initiativeContext];
          if (v221)
          {
            v222 = v221;
            sub_1000AC06C();

            v223 = v288;
            sub_1000AB6DC();

            if ((*(v300 + 48))(v223, 1, v36) != 1)
            {

              v225 = v300;
              v226 = *(v300 + 32);
              v227 = v285;
              v226(v285, v223, v36);
              v228 = v291;
              v226(v291, v227, v36);
              v229 = v225;
              v54 = &unk_1000FB000;
              (*(v229 + 56))(v228, 0, 1, v36);
              v230 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl;
              swift_beginAccess();
              sub_10000E8A0(v228, v2 + v230, &unk_1000F06A0, &unk_1000B0450);
              swift_endAccess();
              v30 = v284;
              v35 = v299;
LABEL_32:
              if (os_variant_has_internal_content())
              {
                if (!v37)
                {
                  goto LABEL_39;
                }

                if (*(v37 + 16))
                {
                  sub_10004F0CC(0xD000000000000011, 0x80000001000B5AD0);
                  if (v78)
                  {

                    v79 = v289;
                    sub_1000AB6DC();

                    if ((*(v300 + 48))(v79, 1, v36) == 1)
                    {
                      sub_10000E784(v79, &unk_1000F06A0, &unk_1000B0450);
                      v35 = v299;
                    }

                    else
                    {
                      v173 = v54;
                      v174 = v300;
                      v175 = v290;
                      (*(v300 + 32))(v290, v79, v36);
                      v176 = v291;
                      (*(v174 + 16))(v291, v175, v36);
                      v177 = v174;
                      v54 = v173;
                      (*(v177 + 56))(v176, 0, 1, v36);
                      v178 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl;
                      swift_beginAccess();
                      sub_10000E8A0(v176, v2 + v178, &unk_1000F06A0, &unk_1000B0450);
                      swift_endAccess();
                      v179 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest;
                      v180 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
                      if (v180)
                      {
                        v181 = v180;
                        sub_1000AB67C(&var20);
                        v183 = v182;
                        [v181 setOriginatingURL:v182];

                        v175 = v290;
                        v184 = *(v2 + v179);
                        if (v184)
                        {
                          [v184 setMerchantSession:*(v2 + v173[464])];
                        }
                      }

                      (*(v300 + 8))(v175, v36);
                      v35 = v299;
                    }

LABEL_39:
                    v80 = v54[464];
                    v81 = *(v2 + v80);
                    if (v81)
                    {
                      v82 = [v81 initiativeContext];
                      if (v82)
                      {
                        v83 = v82;
                        sub_1000AC06C();

                        v84 = v292;
                        sub_1000AB6DC();

                        if ((*(v300 + 48))(v84, 1, v36) != 1)
                        {
                          v93 = v84;
                          v94 = v293;
                          (*(v300 + 32))(v293, v93, v36);
                          v95 = v2;
                          v96 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest;
                          v97 = *(v95 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
                          if (v97)
                          {
                            v98 = v97;
                            sub_1000AB67C(&var20._clients);
                            v100 = v99;
                            [v98 setOriginatingURL:v99];

                            v94 = v293;
                            v101 = *(v95 + v96);
                            if (v101)
                            {
                              [v101 setMerchantSession:*(v95 + v80)];
                            }
                          }

                          (*(v300 + 8))(v94, v36);
                          v2 = v95;
                          v87 = v297;
                          goto LABEL_55;
                        }

                        sub_10000E784(v84, &unk_1000F06A0, &unk_1000B0450);
                        v35 = v299;
                      }
                    }

                    v85 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
                    if (!v85)
                    {
                      (*(v300 + 56))(v35, 1, 1, v36);
                      v87 = v297;
LABEL_53:
                      sub_10000E784(v35, &unk_1000F06A0, &unk_1000B0450);
                      v103 = sub_1000AC2AC();
                      sub_1000ABA5C("BusinessChat: Failed to create originatingURL", 45, 2, &_mh_execute_header, v30, v103, _swiftEmptyArrayStorage);
                      goto LABEL_55;
                    }

                    v86 = [v85 originatingURL];
                    v87 = v297;
                    if (v86)
                    {
                      v88 = v35;
                      v89 = v294;
                      v90 = v86;
                      sub_1000AB6AC();

                      v91 = v89;
                      v35 = v88;
                      v92 = 0;
                    }

                    else
                    {
                      v92 = 1;
                      v91 = v294;
                    }

                    v102 = v300;
                    (*(v300 + 56))(v91, v92, 1, v36);
                    sub_10000E7E4(v91, v35);
                    if ((*(v102 + 48))(v35, 1, v36) == 1)
                    {
                      goto LABEL_53;
                    }

                    sub_10000E784(v35, &unk_1000F06A0, &unk_1000B0450);
LABEL_55:
                    sub_10005E91C(0x6574617473uLL, 0xE500000000000000, v87, &v303);
                    if (*(&v304 + 1) == 1)
                    {
                      v104 = &qword_1000EF650;
                      v105 = &qword_1000B0498;
                      v106 = &v303;
                    }

                    else
                    {
                      v305 = v303;
                      v306 = v304;
                      if (*(&v304 + 1))
                      {
                        if (swift_dynamicCast())
                        {
                          v107 = sub_10005FE44(v301, v302);
                          if ((v108 & 1) == 0)
                          {
                            v109 = v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
                            *v109 = v107;
                            *(v109 + 8) = 0;
                            v110 = v107;
                            v111 = swift_allocObject();
                            *(v111 + 16) = v296;
                            v112 = sub_10005FCE8(v110);
                            *(v111 + 56) = &type metadata for String;
                            *(v111 + 64) = v29;
                            *(v111 + 32) = v112;
                            *(v111 + 40) = v113;
                            sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
                            v114 = sub_1000AC3FC();
                            v115 = sub_1000AC2BC();
                            sub_1000ABA5C("BusinessChat: IMBPaymentRequest: Payment State set to %@\tFrom Payload", 69, 2, &_mh_execute_header, v114, v115, v111);
                            goto LABEL_64;
                          }
                        }

LABEL_63:
                        v116 = sub_10000A1CC();
                        v117 = v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
                        *v117 = v116;
                        *(v117 + 8) = 0;
                        v118 = swift_allocObject();
                        *(v118 + 16) = v296;
                        v119 = sub_10005FCE8(v116);
                        *(v118 + 56) = &type metadata for String;
                        *(v118 + 64) = v29;
                        *(v118 + 32) = v119;
                        *(v118 + 40) = v120;
                        sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
                        v114 = sub_1000AC3FC();
                        v121 = sub_1000AC2BC();
                        sub_1000ABA5C("BusinessChat: IMBPaymentRequest: Payment State set to %@", 56, 2, &_mh_execute_header, v114, v121, v118);
LABEL_64:

                        sub_10005E91C(0x49656E694C77656EuLL, 0xEC000000736D6574, v87, &v303);
                        if (*(&v304 + 1) == 1)
                        {
                          sub_10000E784(&v303, &qword_1000EF650, &qword_1000B0498);
                        }

                        else
                        {
                          v305 = v303;
                          v306 = v304;
                          if (*(&v304 + 1))
                          {
                            sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
                            if (swift_dynamicCast())
                            {
                              v282 = v4;
                              v300 = v2;
                              *&v305 = _swiftEmptyArrayStorage;
                              v122 = *(v301 + 16);
                              v299 = v301;
                              if (v122)
                              {
                                v123 = v301 + 32;
                                type metadata accessor for IMBLineItem();
                                do
                                {
                                  swift_allocObject();

                                  v125 = sub_10007BF40(v124);
                                  if (v125)
                                  {
                                    v126 = v125;
                                    v127 = objc_allocWithZone(NSDecimalNumber);
                                    v128 = sub_1000AC02C();
                                    v129 = [v127 initWithString:v128];

                                    v130 = sub_1000AC02C();
                                    v131 = [objc_opt_self() summaryItemWithLabel:v130 amount:v129];

                                    [v131 setType:v126[6]];
                                    sub_1000AC17C();
                                    if (*((v305 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v305 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                                    {
                                      sub_1000AC1BC();
                                    }

                                    sub_1000AC1DC();
                                  }

                                  v123 += 8;
                                  --v122;
                                }

                                while (v122);
                              }

                              v2 = v300;
                              v132 = *(v300 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
                              if (v132)
                              {
                                sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
                                v133 = v132;
                                v134 = sub_1000AC18C().super.isa;

                                [v133 setPaymentSummaryItems:v134];
                              }

                              else
                              {
                              }

                              v4 = v282;
                              v87 = v297;
                            }
                          }

                          else
                          {
                            sub_10000E784(&v305, &unk_1000F1DF0, &qword_1000B18F0);
                          }
                        }

                        sub_10005E91C(0x6C61746F5477656EuLL, 0xE800000000000000, v87, &v303);
                        if (*(&v304 + 1) == 1)
                        {
                          v143 = &qword_1000EF650;
                          v144 = &qword_1000B0498;
                          v145 = &v303;
                        }

                        else
                        {
                          v305 = v303;
                          v306 = v304;
                          if (*(&v304 + 1))
                          {
                            sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
                            if (swift_dynamicCast())
                            {
                              v146 = v301;
                              type metadata accessor for IMBLineItem();
                              swift_allocObject();
                              if (sub_10007BF40(v146))
                              {
                                v147 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
                                if (v147)
                                {
                                  v148 = v147;
                                  sub_10007C3AC();
                                  v149 = [v148 paymentSummaryItems];
                                  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
                                  v150 = sub_1000AC19C();

                                  *&v305 = v150;
                                  sub_1000AC17C();
                                  if (*((v305 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v305 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                                  {
                                    sub_1000AC1BC();
                                  }

                                  sub_1000AC1DC();
                                  v151 = sub_1000AC18C().super.isa;

                                  [v148 setPaymentSummaryItems:v151];

                                  v87 = v297;
                                }

                                else
                                {
                                }
                              }
                            }

LABEL_100:
                            sub_10005E91C(0xD000000000000012, 0x80000001000B5F90, v87, &v303);
                            if (*(&v304 + 1) == 1)
                            {
                              sub_10000E784(&v303, &qword_1000EF650, &qword_1000B0498);
                              goto LABEL_230;
                            }

                            v305 = v303;
                            v306 = v304;
                            if (!*(&v304 + 1))
                            {
                              sub_10000E784(&v305, &unk_1000F1DF0, &qword_1000B18F0);
                              goto LABEL_230;
                            }

                            sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
                            if ((swift_dynamicCast() & 1) == 0)
                            {
LABEL_230:

                              return v2;
                            }

                            v300 = v2;
                            v2 = v301;
                            v152 = _swiftEmptyArrayStorage;
                            *&v305 = _swiftEmptyArrayStorage;
                            v153 = *(v301 + 16);
                            if (v153)
                            {
                              v154 = 0;
                              v299 = v153 - 1;
                              do
                              {
                                a1 = v154;
                                while (1)
                                {
                                  if (a1 >= *(v2 + 16))
                                  {
                                    __break(1u);
                                    goto LABEL_227;
                                  }

                                  v155 = v4;
                                  v154 = a1 + 1;
                                  v156 = objc_allocWithZone(PKShippingMethod);

                                  v157 = sub_1000ABFAC().super.isa;

                                  *&v303 = 0;
                                  v158 = [v156 initWithDictionary:v157 error:&v303];

                                  if (v158)
                                  {
                                    break;
                                  }

                                  v159 = v303;
                                  sub_1000AB63C();

                                  swift_willThrow();

                                  v4 = 0;
                                  ++a1;
                                  if (v153 == v154)
                                  {
                                    goto LABEL_116;
                                  }
                                }

                                v160 = v303;
                                v161 = v158;
                                sub_1000AC17C();
                                if (*((v305 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v305 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                                {
                                  sub_1000AC1BC();
                                }

                                sub_1000AC1DC();

                                v152 = v305;
                                v4 = v155;
                              }

                              while (v299 != a1);
                            }

LABEL_116:

                            if (v152 >> 62)
                            {
                              v276 = sub_1000AC65C();
                              v2 = v300;
                              if (!v276)
                              {
                                goto LABEL_229;
                              }
                            }

                            else
                            {
                              v2 = v300;
                              if (!*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10))
                              {
                                goto LABEL_229;
                              }
                            }

                            v162 = *(v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
                            if (v162)
                            {
                              sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
                              v163 = v162;
                              v164 = sub_1000AC18C().super.isa;

                              [v163 setShippingMethods:v164];

                              goto LABEL_230;
                            }

LABEL_229:

                            goto LABEL_230;
                          }

                          v143 = &unk_1000F1DF0;
                          v144 = &qword_1000B18F0;
                          v145 = &v305;
                        }

                        sub_10000E784(v145, v143, v144);
                        goto LABEL_100;
                      }

                      v104 = &unk_1000F1DF0;
                      v105 = &qword_1000B18F0;
                      v106 = &v305;
                    }

                    sub_10000E784(v106, v104, v105);
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_39;
            }

            sub_10000E784(v223, &unk_1000F06A0, &unk_1000B0450);
            v30 = v284;
            v35 = v299;
          }
        }

        v224 = sub_1000AC2AC();
        sub_1000ABA5C("BusinessChat: A paymentGatewayUrl was not set", 45, 2, &_mh_execute_header, v30, v224, _swiftEmptyArrayStorage);

        goto LABEL_32;
      }
    }

    else
    {
      sub_10000E784(&v305, &unk_1000F1DF0, &qword_1000B18F0);
    }

    v30 = v284;
    v35 = v299;
    goto LABEL_158;
  }

  v278 = v190;
  v191 = [v278 merchantIdentifier];
  v192 = sub_1000AC06C();
  v194 = v193;

  v195 = [v66 merchantIdentifier];
  v196 = sub_1000AC06C();
  v198 = v197;

  if (v192 == v196 && v194 == v198)
  {

    goto LABEL_151;
  }

  v209 = sub_1000AC7AC();

  if (v209)
  {

LABEL_151:
    v37 = v280;
    v4 = v282;
    if (*(v2 + v281))
    {
      goto LABEL_153;
    }

    goto LABEL_152;
  }

  v273 = *(v2 + v281);
  *(v2 + v281) = 0;

  v274 = v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
  *v274 = 7;
  *(v274 + 8) = 0;
  v275 = sub_1000AC2AC();
  sub_1000ABA5C("BusinessChat: passed in value for merchantSession's merchantIdentifier did not match previous value", 99, 2, &_mh_execute_header, v284, v275, _swiftEmptyArrayStorage);

  return v2;
}

void sub_100009558(unint64_t a1)
{
  v4 = v1;
  v5 = a1;
  if (!*(a1 + 16) || (v6 = sub_10004F0CC(0x437972746E756F63, 0xEB0000000065646FLL), (v7 & 1) == 0) || (sub_1000068B4(*(v5 + 56) + 32 * v6, &v91), (swift_dynamicCast() & 1) == 0))
  {
LABEL_6:
    if (!*(v5 + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v8 = *(v1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1000AC02C();

    [v9 setCountryCode:v10];

    goto LABEL_6;
  }

  if (!*(v5 + 16))
  {
    goto LABEL_14;
  }

LABEL_7:
  v11 = sub_10004F0CC(0x79636E6572727563, 0xEC00000065646F43);
  if (v12)
  {
    sub_1000068B4(*(v5 + 56) + 32 * v11, &v91);
    if (swift_dynamicCast())
    {
      v13 = *(v1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v13)
      {
        v14 = v13;
        v15 = sub_1000AC02C();

        [v14 setCurrencyCode:v15];
      }

      else
      {
      }
    }
  }

LABEL_14:
  if (*(v5 + 16))
  {
    v16 = sub_10004F0CC(0xD000000000000012, 0x80000001000B5DD0);
    if (v17)
    {
      sub_1000068B4(*(v5 + 56) + 32 * v16, &v91);
      sub_10000413C(qword_1000F1E10, &qword_1000B0490);
      if (swift_dynamicCast())
      {
        v18 = v5;
        v19 = v90;
        v90 = &_swiftEmptySetSingleton;
        v20 = v19[2];
        if (v20)
        {
          v21 = v19 + 5;
          do
          {
            v22 = *(v21 - 1);
            v23 = *v21;

            sub_10009F1B8(&v91, v22, v23);

            v21 += 2;
            --v20;
          }

          while (v20);
        }

        v24 = *(v1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
        if (v24)
        {
          v25 = v24;
          isa = sub_1000AC25C().super.isa;

          [v25 setSupportedCountries:isa];
        }

        else
        {
        }

        v5 = v18;
      }
    }
  }

  if (!*(v5 + 16) || (v27 = sub_10004F0CC(0x6D657449656E696CLL, 0xE900000000000073), (v28 & 1) == 0) || (sub_1000068B4(*(v5 + 56) + 32 * v27, &v91), sub_10000413C(&unk_1000F0240, &qword_1000B05A0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_45:
    if (!*(v5 + 16))
    {
      goto LABEL_65;
    }

    goto LABEL_46;
  }

  v87 = v5;
  v89 = v1;
  v29 = _swiftEmptyArrayStorage;
  v91 = _swiftEmptyArrayStorage;
  v30 = v90[2];
  if (v30)
  {
    v31 = (v90 + 4);
    type metadata accessor for IMBLineItem();
    do
    {
      swift_allocObject();

      v33 = sub_10007BF40(v32);
      if (v33)
      {
        v34 = v33;
        v3 = objc_allocWithZone(NSDecimalNumber);
        v35 = sub_1000AC02C();
        p_attr = [(SEL *)v3 initWithString:v35];

        v36 = sub_1000AC02C();
        v37 = [objc_opt_self() summaryItemWithLabel:v36 amount:p_attr];

        [v37 setType:v34[6]];
        sub_1000AC17C();
        if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000AC1BC();
        }

        sub_1000AC1DC();

        v29 = v91;
      }

      v31 += 8;
      --v30;
    }

    while (v30);
  }

  v38 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest;
  v4 = v89;
  v39 = *(v89 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
  if (!v39)
  {
LABEL_44:

    goto LABEL_45;
  }

  v40 = [v39 paymentSummaryItems];
  v41 = sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  v42 = sub_1000AC19C();

  if (!(v42 >> 62))
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v87;
    if (v43)
    {
      goto LABEL_37;
    }

LABEL_82:

    v48 = *&v38[v89];
    if (!v48)
    {
      goto LABEL_44;
    }

    goto LABEL_83;
  }

  v43 = sub_1000AC65C();
  v5 = v87;
  if (!v43)
  {
    goto LABEL_82;
  }

LABEL_37:
  v44 = __OFSUB__(v43, 1);
  v45 = v43 - 1;
  if (v44)
  {
    __break(1u);
    goto LABEL_86;
  }

  if ((v42 & 0xC000000000000001) != 0)
  {
LABEL_86:
    v46 = sub_1000AC5AC();
    goto LABEL_42;
  }

  if ((v45 & 0x8000000000000000) == 0)
  {
    if (v45 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_90;
    }

    v46 = *(v42 + 8 * v45 + 32);
LABEL_42:
    v47 = v46;

    v29 = v47;
    sub_1000AC17C();
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_43;
    }

    goto LABEL_88;
  }

  __break(1u);
LABEL_88:
  sub_1000AC1BC();
LABEL_43:
  sub_1000AC1DC();

  v48 = *&v38[v89];
  if (!v48)
  {
    goto LABEL_44;
  }

LABEL_83:
  v85 = v48;
  v86 = sub_1000AC18C().super.isa;

  [v85 setPaymentSummaryItems:v86];

  if (!*(v5 + 16))
  {
    goto LABEL_65;
  }

LABEL_46:
  v49 = sub_10004F0CC(0x676E697070696873, 0xEF73646F6874654DLL);
  if (v50)
  {
    sub_1000068B4(*(v5 + 56) + 32 * v49, &v91);
    sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
    if (swift_dynamicCast())
    {
      v88 = v5;
      v51 = v90;
      v52 = _swiftEmptyArrayStorage;
      v91 = _swiftEmptyArrayStorage;
      v53 = v90[2];
      if (v53)
      {
        v54 = 0;
        v3 = (v90 + 4);
        do
        {
          v55 = v54;
          while (1)
          {
            if (v55 >= v51[2])
            {
              __break(1u);
              goto LABEL_63;
            }

            v54 = v55 + 1;
            v56 = objc_allocWithZone(PKShippingMethod);

            v57 = sub_1000ABFAC().super.isa;

            v90 = 0;
            v58 = [v56 initWithDictionary:v57 error:&v90];

            if (v58)
            {
              break;
            }

            v59 = v90;
            sub_1000AB63C();

            swift_willThrow();

            ++v55;
            if (v53 == v54)
            {
              goto LABEL_58;
            }
          }

          v60 = v90;
          v61 = v58;
          sub_1000AC17C();
          if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1000AC1BC();
          }

          sub_1000AC1DC();

          v52 = v91;
        }

        while (v53 - 1 != v55);
      }

LABEL_58:

      if (v52 >> 62)
      {
LABEL_63:
        v5 = v88;
        if (!sub_1000AC65C())
        {
          goto LABEL_64;
        }
      }

      else
      {
        v5 = v88;
        if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }
      }

      v62 = *(v4 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v62)
      {
        sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
        v63 = v62;
        v64 = sub_1000AC18C().super.isa;

        [v63 setShippingMethods:v64];

        goto LABEL_65;
      }

LABEL_64:
    }
  }

LABEL_65:
  if (*(v5 + 16))
  {
    v65 = sub_10004F0CC(0x6C61746F74, 0xE500000000000000);
    if (v66)
    {
      sub_1000068B4(*(v5 + 56) + 32 * v65, &v91);
      sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
      if (swift_dynamicCast())
      {
        v67 = v90;
        type metadata accessor for IMBTotalItem();
        swift_allocObject();
        v68 = sub_100006368(v67);
        if (v68)
        {
          v41 = v68;
          v38 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest;
          v69 = *(v4 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
          if (!v69)
          {
            goto LABEL_79;
          }

          v42 = v69;
          p_attr = &stru_1000E5FF8.attr;
          v70 = [v42 paymentSummaryItems];
          sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
          v29 = sub_1000AC19C();

          v5 = v29 >> 62;
          if (!(v29 >> 62))
          {
            if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_72:
              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              if (v5 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
              {
                v29 = sub_10000C1DC(v29);
              }

              v72 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v72)
              {
                v73 = v72 - 1;
                v74 = *((v29 & 0xFFFFFFFFFFFFFF8) + 8 * v73 + 0x20);
                *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) = v73;

                v75 = sub_1000AC18C().super.isa;

                v3 = &stru_1000E5FF8.attr;
                [v42 setPaymentSummaryItems:v75];

                v76 = *&v38[v4];
                if (v76)
                {
                  v77 = objc_allocWithZone(NSDecimalNumber);
                  v38 = v76;
                  v78 = sub_1000AC02C();
                  v79 = [v77 initWithString:v78];

                  v80 = sub_1000AC02C();
                  v81 = [objc_opt_self() summaryItemWithLabel:v80 amount:v79];

                  [v81 setType:*(v41 + 32)];
                  v82 = [v38 p_attr[252]];
                  v83 = sub_1000AC19C();

                  v91 = v83;
                  sub_1000AC17C();
                  if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
LABEL_78:
                    sub_1000AC1DC();
                    v84 = sub_1000AC18C().super.isa;

                    [v38 v3[260]];

                    goto LABEL_79;
                  }

LABEL_93:
                  sub_1000AC1BC();
                  goto LABEL_78;
                }

LABEL_79:

                return;
              }

LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

LABEL_91:
            __break(1u);
            goto LABEL_92;
          }

LABEL_90:
          if (sub_1000AC65C())
          {
            goto LABEL_72;
          }

          goto LABEL_91;
        }
      }
    }
  }
}

uint64_t sub_10000A1CC()
{
  v1 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  __chkstk_darwin(v1 - 8);
  v3 = &v36[-v2];
  v4 = sub_1000AB7EC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v36[-v9];
  if ((sub_10000A744() & 1) == 0)
  {
    return 1;
  }

  v11 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate;
  swift_beginAccess();
  sub_10000E66C(v0 + v11, v3, &qword_1000F0270, &unk_1000B0480);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000E784(v3, &qword_1000F0270, &unk_1000B0480);
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    sub_1000AB7DC();
    v13 = sub_1000AB78C();
    v14 = *(v5 + 8);
    v14(v8, v4);
    if (v13)
    {
      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      v38 = qword_1000FC008;
      v37 = sub_1000AC2BC();
      sub_10000413C(&qword_1000F0060, &unk_1000B0470);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1000AF0F0;
      v16 = sub_1000AB75C();
      v18 = v17;
      *(v15 + 56) = &type metadata for String;
      v19 = sub_10000587C();
      *(v15 + 64) = v19;
      *(v15 + 32) = v16;
      *(v15 + 40) = v18;
      sub_1000AB7DC();
      v20 = sub_1000AB75C();
      v22 = v21;
      v14(v8, v4);
      *(v15 + 96) = &type metadata for String;
      *(v15 + 104) = v19;
      *(v15 + 72) = v20;
      *(v15 + 80) = v22;
      sub_1000ABA5C("Merchant Session Expire Date: %@ is before current date: %@", 59, 2, &_mh_execute_header, v38, v37, v15);

      v14(v10, v4);
      return 2;
    }

    v14(v10, v4);
  }

  if ([objc_opt_self() canMakePayments])
  {
    v23 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest;
    v24 = *(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v24)
    {
      v25 = [v24 supportedNetworks];
      type metadata accessor for PKPaymentNetwork(0);
      v26 = sub_1000AC19C();

      v27 = *(v0 + v23);
      if (v27)
      {
        v28 = [v27 merchantCapabilities];
        sub_10000E6D4(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentAuthorizationController, v39);
        sub_1000058D0(v39, v39[3]);
        type metadata accessor for PaymentAuthorizationViewController();
        v29 = sub_100081E7C(v26, v28);

        sub_10000E738(v39);
        if ((v29 & 1) == 0)
        {
          if (qword_1000EEE80 != -1)
          {
            swift_once();
          }

          v30 = qword_1000FC008;
          v31 = sub_1000AC2BC();
          sub_1000ABA5C("Device can make payments, but not for provided networks", 55, 2, &_mh_execute_header, v30, v31, _swiftEmptyArrayStorage);
          return 5;
        }
      }

      else
      {
      }
    }

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v34 = qword_1000FC008;
    v35 = sub_1000AC2BC();
    sub_1000ABA5C("Device supports payments and can make payments with provided networks", 69, 2, &_mh_execute_header, v34, v35, _swiftEmptyArrayStorage);
    return 0;
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v32 = qword_1000FC008;
    v33 = sub_1000AC2BC();
    sub_1000ABA5C("Device cannot make payments", 27, 2, &_mh_execute_header, v32, v33, _swiftEmptyArrayStorage);
    return 6;
  }
}

id sub_10000A744()
{
  v1 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  __chkstk_darwin(v1 - 8);
  v3 = &v30[-v2];
  v4 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v4 - 8);
  v6 = &v30[-v5];
  v7 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest;
  v8 = *(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = [v8 paymentSummaryItems];
  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  v10 = sub_1000AC19C();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_19:

    goto LABEL_20;
  }

  v11 = sub_1000AC65C();
  if (!v11)
  {
    goto LABEL_19;
  }

LABEL_4:
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
  }

  else if ((v10 & 0xC000000000000001) == 0)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v10 + 8 * v13 + 32);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_29;
  }

  v14 = sub_1000AC5AC();
LABEL_9:
  v15 = v14;

  v16 = [v15 amount];

  v17 = [objc_allocWithZone(NSNumber) initWithInteger:0];
  v18 = [v16 compare:v17];

  if (v18 != 1)
  {
LABEL_20:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v28 = qword_1000FC008;
    v29 = sub_1000AC2AC();
    sub_1000ABA5C("Payment request has a total that is zero or less", 48, 2, &_mh_execute_header, v28, v29, _swiftEmptyArrayStorage);
    return 0;
  }

  v19 = *(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_supportedNetworks);
  if (v19 && !*(v19 + 16))
  {
    if (qword_1000EEE80 == -1)
    {
LABEL_17:
      v26 = qword_1000FC008;
      v27 = sub_1000AC2AC();
      sub_1000ABA5C("Payment request has no supportedNetworks", 40, 2, &_mh_execute_header, v26, v27, _swiftEmptyArrayStorage);
      return 0;
    }

LABEL_29:
    swift_once();
    goto LABEL_17;
  }

  v20 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl;
  swift_beginAccess();
  sub_10000E66C(v0 + v20, v6, &unk_1000F06A0, &unk_1000B0450);
  v21 = sub_1000AB6EC();
  LODWORD(v20) = (*(*(v21 - 8) + 48))(v6, 1, v21);
  sub_10000E784(v6, &unk_1000F06A0, &unk_1000B0450);
  if (v20 == 1)
  {
    return 0;
  }

  result = *(v0 + v7);
  if (result)
  {
    result = [result merchantSession];
    if (result)
    {

      v23 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate;
      swift_beginAccess();
      sub_10000E66C(v0 + v23, v3, &qword_1000F0270, &unk_1000B0480);
      v24 = sub_1000AB7EC();
      v25 = (*(*(v24 - 8) + 48))(v3, 1, v24) != 1;
      sub_10000E784(v3, &qword_1000F0270, &unk_1000B0480);
      return v25;
    }
  }

  return result;
}

void *sub_10000AC0C()
{
  v1 = v0;
  v29 = _swiftEmptyDictionarySingleton;
  v2 = v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
  if (*(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState + 8))
  {
    sub_100039E5C(0x6574617473, 0xE500000000000000, &v27);
    sub_10000E784(&v27, &unk_1000F1DF0, &qword_1000B18F0);
  }

  else
  {
    v3 = sub_10005FCE8(*v2);
    v28 = &type metadata for String;
    *&v27 = v3;
    *(&v27 + 1) = v4;
    sub_100006910(&v27, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v26, 0x6574617473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v29 = _swiftEmptyDictionarySingleton;
  }

  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000AF0E0;
  if (*(v2 + 8))
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = sub_10005FCE8(*v2);
    v8 = v9;
  }

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10000587C();
  v10 = 7104878;
  if (v8)
  {
    v10 = v7;
  }

  v11 = 0xE300000000000000;
  if (v8)
  {
    v11 = v8;
  }

  *(v6 + 32) = v10;
  *(v6 + 40) = v11;
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v12 = sub_1000AC3FC();
  v13 = sub_1000AC2BC();
  sub_1000ABA5C("Sending back Payment State = %@", 31, 2, &_mh_execute_header, v12, v13, v6);

  v14 = *(v1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
  if (v14)
  {
    v15 = v14;
    v16 = sub_10001EA7C(v1);

    v28 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
    *&v27 = v16;
    sub_100006910(&v27, v26);
    v17 = v29;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v26, 0x52746E656D796170, 0xEE00747365757165, v18);
    v19 = v17;
  }

  else
  {
    sub_100039E5C(0x52746E656D796170, 0xEE00747365757165, &v27);
    sub_10000E784(&v27, &unk_1000F1DF0, &qword_1000B18F0);
    v19 = v29;
  }

  v20 = sub_10000B538();
  v21 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  v28 = v21;
  *&v27 = v20;
  sub_100006910(&v27, v26);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v26, 0x746E696F70646E65, 0xE900000000000073, v22);
  v29 = v19;
  v23 = *(v1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_sessionDictionary);
  if (v23)
  {
    v28 = v21;
    *&v27 = v23;
    sub_100006910(&v27, v26);

    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v26, 0x746E61686372656DLL, 0xEF6E6F6973736553, v24);
    return v19;
  }

  else
  {
    sub_100039E5C(0x746E61686372656DLL, 0xEF6E6F6973736553, &v27);
    sub_10000E784(&v27, &unk_1000F1DF0, &qword_1000B18F0);
    return v29;
  }
}

void *sub_10000AFBC()
{
  v1 = v0;
  v42 = _swiftEmptyDictionarySingleton;
  v2 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest;
  v3 = *(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
  if (v3 && (v4 = [v3 billingContact]) != 0 && (v5 = v4, v6 = objc_msgSend(v4, "dictionaryRepresentation"), v5, v6))
  {
    v7 = sub_1000ABFBC();

    v41 = sub_10000413C(&qword_1000EF648, &qword_1000B0468);
    *&v40 = v7;
    sub_100006910(&v40, v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = _swiftEmptyDictionarySingleton;
    sub_10003A3E8(v39, 0x43676E696C6C6962, 0xEE00746361746E6FLL, isUniquelyReferenced_nonNull_native);
    v42 = _swiftEmptyDictionarySingleton;
  }

  else
  {
    sub_100039E5C(0x43676E696C6C6962, 0xEE00746361746E6FLL, &v40);
    sub_10000E784(&v40, &unk_1000F1DF0, &qword_1000B18F0);
  }

  v9 = *(v0 + v2);
  if (v9 && (v10 = [v9 shippingContact]) != 0 && (v11 = v10, v12 = objc_msgSend(v10, "dictionaryRepresentation"), v11, v12))
  {
    v13 = sub_1000ABFBC();

    v41 = sub_10000413C(&qword_1000EF648, &qword_1000B0468);
    *&v40 = v13;
    sub_100006910(&v40, v39);
    v14 = v42;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v14;
    sub_10003A3E8(v39, 0x676E697070696873, 0xEF746361746E6F43, v15);
    v42 = v14;
  }

  else
  {
    sub_100039E5C(0x676E697070696873, 0xEF746361746E6F43, &v40);
    sub_10000E784(&v40, &unk_1000F1DF0, &qword_1000B18F0);
  }

  v16 = *(v1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_selectedShippingMethod);
  if (v16 && (v17 = [v16 dictionaryRepresentation]) != 0)
  {
    v18 = v17;
    v19 = sub_1000ABFBC();

    v41 = sub_10000413C(&qword_1000EF648, &qword_1000B0468);
    *&v40 = v19;
    sub_100006910(&v40, v39);
    v20 = v42;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v20;
    sub_10003A3E8(v39, 0x676E697070696873, 0xEE00646F6874654DLL, v21);
    v42 = v20;
  }

  else
  {
    sub_100039E5C(0x676E697070696873, 0xEE00646F6874654DLL, &v40);
    sub_10000E784(&v40, &unk_1000F1DF0, &qword_1000B18F0);
  }

  v22 = *(v1 + v2);
  if (v22)
  {
    v23 = [v22 paymentSummaryItems];
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    v24 = sub_1000AC19C();

    if (!(v24 >> 62))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_17:
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_18;
      }

LABEL_32:

      v28 = _swiftEmptyArrayStorage;
LABEL_33:
      v41 = sub_10000413C(&qword_1000EF640, &qword_1000B0460);
      *&v40 = v28;
      sub_100006910(&v40, v39);
      v36 = v42;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_10003A3E8(v39, 0x497972616D6D7573, 0xEC000000736D6574, v37);
      return v36;
    }
  }

  v25 = sub_1000AC65C();
  if (!v25)
  {
    goto LABEL_32;
  }

LABEL_18:
  *&v40 = _swiftEmptyArrayStorage;
  result = sub_10009C1F8(0, v25 & ~(v25 >> 63), 0);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v28 = v40;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = sub_1000AC5AC();
      }

      else
      {
        v29 = *(v24 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = [v29 dictionaryRepresentation];
      if (v31)
      {
        v32 = v31;
        v33 = sub_1000ABFBC();
      }

      else
      {

        v33 = 0;
      }

      *&v40 = v28;
      v35 = v28[2];
      v34 = v28[3];
      if (v35 >= v34 >> 1)
      {
        sub_10009C1F8((v34 > 1), v35 + 1, 1);
        v28 = v40;
      }

      ++v27;
      v28[2] = v35 + 1;
      v28[v35 + 4] = v33;
    }

    while (v25 != v27);

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

void *sub_10000B538()
{
  v1 = v0;
  v2 = sub_1000AB6EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v7 = __chkstk_darwin(v6 - 8);
  v61 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v59 = &v58 - v10;
  v11 = __chkstk_darwin(v9);
  v58 = &v58 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v58 - v14;
  __chkstk_darwin(v13);
  v17 = &v58 - v16;
  v70 = _swiftEmptyDictionarySingleton;
  v18 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentMethodUpdateUrl;
  swift_beginAccess();
  sub_10000E66C(v0 + v18, v17, &unk_1000F06A0, &unk_1000B0450);
  v60 = *(v3 + 48);
  if (v60(v17, 1, v2))
  {
    sub_10000E784(v17, &unk_1000F06A0, &unk_1000B0450);
    sub_100039E5C(0xD000000000000016, 0x80000001000B5AF0, &v68);
    sub_10000E784(&v68, &unk_1000F1DF0, &qword_1000B18F0);
  }

  else
  {
    (*(v3 + 16))(v5, v17, v2);
    sub_10000E784(v17, &unk_1000F06A0, &unk_1000B0450);
    v19 = sub_1000AB64C();
    v20 = v3;
    v22 = v21;
    (*(v20 + 8))(v5, v2);
    v69 = &type metadata for String;
    *&v68 = v19;
    *(&v68 + 1) = v22;
    v3 = v20;
    sub_100006910(&v68, v63);
    v23 = v70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v23;
    sub_10003A3E8(v63, 0xD000000000000016, 0x80000001000B5AF0, isUniquelyReferenced_nonNull_native);
    v70 = v67;
  }

  v25 = v5;
  v26 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingContactUpdateUrl;
  swift_beginAccess();
  sub_10000E66C(v1 + v26, v15, &unk_1000F06A0, &unk_1000B0450);
  v27 = v60;
  if (v60(v15, 1, v2))
  {
    sub_10000E784(v15, &unk_1000F06A0, &unk_1000B0450);
    sub_100039E5C(0xD000000000000018, 0x80000001000B5B10, &v68);
    sub_10000E784(&v68, &unk_1000F1DF0, &qword_1000B18F0);
  }

  else
  {
    (*(v3 + 16))(v5, v15, v2);
    sub_10000E784(v15, &unk_1000F06A0, &unk_1000B0450);
    v28 = sub_1000AB64C();
    v30 = v29;
    (*(v3 + 8))(v5, v2);
    v69 = &type metadata for String;
    *&v68 = v28;
    *(&v68 + 1) = v30;
    sub_100006910(&v68, v63);
    v31 = v70;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v31;
    sub_10003A3E8(v63, 0xD000000000000018, 0x80000001000B5B10, v32);
    v70 = v66;
  }

  v33 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingMethodUpdateUrl;
  swift_beginAccess();
  v34 = v1 + v33;
  v35 = v58;
  sub_10000E66C(v34, v58, &unk_1000F06A0, &unk_1000B0450);
  if (v27(v35, 1, v2))
  {
    sub_10000E784(v35, &unk_1000F06A0, &unk_1000B0450);
    sub_100039E5C(0xD000000000000017, 0x80000001000B5B30, &v68);
    sub_10000E784(&v68, &unk_1000F1DF0, &qword_1000B18F0);
  }

  else
  {
    (*(v3 + 16))(v5, v35, v2);
    sub_10000E784(v35, &unk_1000F06A0, &unk_1000B0450);
    v36 = sub_1000AB64C();
    v38 = v37;
    (*(v3 + 8))(v25, v2);
    v69 = &type metadata for String;
    *&v68 = v36;
    *(&v68 + 1) = v38;
    sub_100006910(&v68, v63);
    v39 = v70;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v39;
    sub_10003A3E8(v63, 0xD000000000000017, 0x80000001000B5B30, v40);
    v70 = v65;
  }

  v41 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_orderTrackingUrl;
  swift_beginAccess();
  v42 = v1 + v41;
  v43 = v59;
  sub_10000E66C(v42, v59, &unk_1000F06A0, &unk_1000B0450);
  if (v27(v43, 1, v2))
  {
    sub_10000E784(v43, &unk_1000F06A0, &unk_1000B0450);
    sub_100039E5C(0xD000000000000010, 0x80000001000B5AB0, &v68);
    sub_10000E784(&v68, &unk_1000F1DF0, &qword_1000B18F0);
  }

  else
  {
    (*(v3 + 16))(v25, v43, v2);
    sub_10000E784(v43, &unk_1000F06A0, &unk_1000B0450);
    v44 = sub_1000AB64C();
    v46 = v45;
    (*(v3 + 8))(v25, v2);
    v69 = &type metadata for String;
    *&v68 = v44;
    *(&v68 + 1) = v46;
    sub_100006910(&v68, v63);
    v47 = v70;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v47;
    sub_10003A3E8(v63, 0xD000000000000010, 0x80000001000B5AB0, v48);
    v70 = v64;
  }

  v49 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_fallbackUrl;
  swift_beginAccess();
  v50 = v1 + v49;
  v51 = v61;
  sub_10000E66C(v50, v61, &unk_1000F06A0, &unk_1000B0450);
  if (v27(v51, 1, v2))
  {
    sub_10000E784(v51, &unk_1000F06A0, &unk_1000B0450);
    sub_100039E5C(0x6B6361626C6C6166, 0xEB000000006C7255, &v68);
    sub_10000E784(&v68, &unk_1000F1DF0, &qword_1000B18F0);
    return v70;
  }

  else
  {
    (*(v3 + 16))(v25, v51, v2);
    sub_10000E784(v51, &unk_1000F06A0, &unk_1000B0450);
    v53 = sub_1000AB64C();
    v55 = v54;
    (*(v3 + 8))(v25, v2);
    v69 = &type metadata for String;
    *&v68 = v53;
    *(&v68 + 1) = v55;
    sub_100006910(&v68, v63);
    v56 = v70;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v56;
    sub_10003A3E8(v63, 0x6B6361626C6C6166, 0xEB000000006C7255, v57);
    return v62;
  }
}

uint64_t sub_10000BE1C()
{
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_orderTrackingUrl, &unk_1000F06A0, &unk_1000B0450);
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl, &unk_1000F06A0, &unk_1000B0450);
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentMethodUpdateUrl, &unk_1000F06A0, &unk_1000B0450);
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingContactUpdateUrl, &unk_1000F06A0, &unk_1000B0450);
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingMethodUpdateUrl, &unk_1000F06A0, &unk_1000B0450);
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_fallbackUrl, &unk_1000F06A0, &unk_1000B0450);
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_productUrl, &unk_1000F06A0, &unk_1000B0450);

  sub_10000E738((v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentAuthorizationController));
  sub_10000E784(v0 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate, &qword_1000F0270, &unk_1000B0480);

  return v0;
}

uint64_t sub_10000BF9C()
{
  sub_10000BE1C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IMBPaymentRequest(uint64_t a1)
{
  result = qword_1000EF328;
  if (!qword_1000EF328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000C048(uint64_t a1)
{
  sub_10000C188(319, &qword_1000F28C0, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    sub_10000C188(319, &unk_1000EF338, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000C188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000AC42C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10000C1DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1000AC65C();
  }

  return sub_1000AC5BC();
}

uint64_t sub_10000C240(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AB6EC();
  v5 = *(v4 - 8);
  v288 = v4;
  v289 = v5;
  __chkstk_darwin(v4);
  v283 = &v247 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000413C(&qword_1000EF628, &qword_1000B0448);
  v8 = __chkstk_darwin(v7);
  v252 = &v247 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v255 = &v247 - v11;
  v12 = __chkstk_darwin(v10);
  v258 = &v247 - v13;
  v14 = __chkstk_darwin(v12);
  v261 = &v247 - v15;
  v16 = __chkstk_darwin(v14);
  v263 = &v247 - v17;
  v18 = __chkstk_darwin(v16);
  v265 = &v247 - v19;
  v20 = __chkstk_darwin(v18);
  v268 = &v247 - v21;
  v22 = __chkstk_darwin(v20);
  v271 = &v247 - v23;
  v24 = __chkstk_darwin(v22);
  v274 = &v247 - v25;
  v26 = __chkstk_darwin(v24);
  v279 = &v247 - v27;
  v28 = __chkstk_darwin(v26);
  v282 = &v247 - v29;
  __chkstk_darwin(v28);
  v31 = &v247 - v30;
  v32 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v33 = __chkstk_darwin(v32 - 8);
  v249 = &v247 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v250 = &v247 - v36;
  v37 = __chkstk_darwin(v35);
  v251 = &v247 - v38;
  v39 = __chkstk_darwin(v37);
  v253 = &v247 - v40;
  v41 = __chkstk_darwin(v39);
  v254 = &v247 - v42;
  v43 = __chkstk_darwin(v41);
  v256 = &v247 - v44;
  v45 = __chkstk_darwin(v43);
  v257 = &v247 - v46;
  v47 = __chkstk_darwin(v45);
  v259 = &v247 - v48;
  v49 = __chkstk_darwin(v47);
  v260 = &v247 - v50;
  v51 = __chkstk_darwin(v49);
  v264 = &v247 - v52;
  v53 = __chkstk_darwin(v51);
  v262 = &v247 - v54;
  v55 = __chkstk_darwin(v53);
  v266 = &v247 - v56;
  v57 = __chkstk_darwin(v55);
  v267 = &v247 - v58;
  v59 = __chkstk_darwin(v57);
  v270 = &v247 - v60;
  v61 = __chkstk_darwin(v59);
  v269 = &v247 - v62;
  v63 = __chkstk_darwin(v61);
  v273 = &v247 - v64;
  v65 = __chkstk_darwin(v63);
  v272 = &v247 - v66;
  v67 = __chkstk_darwin(v65);
  v276 = &v247 - v68;
  v69 = __chkstk_darwin(v67);
  v275 = &v247 - v70;
  v71 = __chkstk_darwin(v69);
  v281 = &v247 - v72;
  v73 = __chkstk_darwin(v71);
  v280 = &v247 - v74;
  v75 = __chkstk_darwin(v73);
  v284 = &v247 - v76;
  v77 = __chkstk_darwin(v75);
  v79 = &v247 - v78;
  __chkstk_darwin(v77);
  v81 = &v247 - v80;
  v82 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_orderTrackingUrl;
  swift_beginAccess();
  v286 = a1;
  sub_10000E66C(a1 + v82, v81, &unk_1000F06A0, &unk_1000B0450);
  v83 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_orderTrackingUrl;
  swift_beginAccess();
  v285 = v7;
  v84 = *(v7 + 48);
  sub_10000E66C(v81, v31, &unk_1000F06A0, &unk_1000B0450);
  v287 = a2;
  v85 = a2 + v83;
  v87 = v288;
  v86 = v289;
  sub_10000E66C(v85, &v31[v84], &unk_1000F06A0, &unk_1000B0450);
  v88 = *(v86 + 48);
  if (v88(v31, 1, v87) == 1)
  {
    sub_10000E784(v81, &unk_1000F06A0, &unk_1000B0450);
    if (v88(&v31[v84], 1, v87) == 1)
    {
      v277 = v88;
      v278 = v86 + 48;
      sub_10000E784(v31, &unk_1000F06A0, &unk_1000B0450);
      goto LABEL_8;
    }

LABEL_6:
    v89 = v31;
    goto LABEL_42;
  }

  sub_10000E66C(v31, v79, &unk_1000F06A0, &unk_1000B0450);
  if (v88(&v31[v84], 1, v87) == 1)
  {
    sub_10000E784(v81, &unk_1000F06A0, &unk_1000B0450);
    (*(v86 + 8))(v79, v87);
    goto LABEL_6;
  }

  v277 = v88;
  v278 = v86 + 48;
  v90 = *(v86 + 32);
  v91 = v86;
  v92 = v283;
  v90(v283, &v31[v84], v87);
  sub_10000E908(&qword_1000EF630, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  LODWORD(v248) = sub_1000AC01C();
  v93 = *(v91 + 8);
  v93(v92, v87);
  sub_10000E784(v81, &unk_1000F06A0, &unk_1000B0450);
  v93(v79, v87);
  v86 = v91;
  sub_10000E784(v31, &unk_1000F06A0, &unk_1000B0450);
  if ((v248 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_8:
  v94 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl;
  v95 = v286;
  swift_beginAccess();
  v248 = v94;
  v96 = v284;
  sub_10000E66C(v95 + v94, v284, &unk_1000F06A0, &unk_1000B0450);
  v97 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl;
  v98 = v287;
  swift_beginAccess();
  v99 = *(v285 + 48);
  v100 = v282;
  sub_10000E66C(v96, v282, &unk_1000F06A0, &unk_1000B0450);
  sub_10000E66C(v98 + v97, v100 + v99, &unk_1000F06A0, &unk_1000B0450);
  v101 = v277;
  if (v277(v100, 1, v87) == 1)
  {
    sub_10000E784(v96, &unk_1000F06A0, &unk_1000B0450);
    if (v101(v100 + v99, 1, v87) != 1)
    {
      goto LABEL_13;
    }

    v247 = v97;
    sub_10000E784(v100, &unk_1000F06A0, &unk_1000B0450);
  }

  else
  {
    v102 = v280;
    sub_10000E66C(v100, v280, &unk_1000F06A0, &unk_1000B0450);
    if (v101(v100 + v99, 1, v87) == 1)
    {
      sub_10000E784(v284, &unk_1000F06A0, &unk_1000B0450);
      (*(v86 + 8))(v102, v87);
      goto LABEL_13;
    }

    v247 = v97;
    v103 = v283;
    (*(v86 + 32))(v283, v100 + v99, v87);
    sub_10000E908(&qword_1000EF630, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v104 = sub_1000AC01C();
    v105 = v100;
    v106 = *(v86 + 8);
    v106(v103, v87);
    sub_10000E784(v284, &unk_1000F06A0, &unk_1000B0450);
    v106(v102, v87);
    sub_10000E784(v105, &unk_1000F06A0, &unk_1000B0450);
    if ((v104 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v107 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingMethodUpdateUrl;
  v108 = v286;
  swift_beginAccess();
  v109 = v281;
  sub_10000E66C(v108 + v107, v281, &unk_1000F06A0, &unk_1000B0450);
  v110 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingMethodUpdateUrl;
  v111 = v287;
  swift_beginAccess();
  v112 = *(v285 + 48);
  v113 = v279;
  sub_10000E66C(v109, v279, &unk_1000F06A0, &unk_1000B0450);
  v114 = v277;
  sub_10000E66C(v111 + v110, v113 + v112, &unk_1000F06A0, &unk_1000B0450);
  if (v114(v113, 1, v87) == 1)
  {
    sub_10000E784(v109, &unk_1000F06A0, &unk_1000B0450);
    if (v114(v113 + v112, 1, v87) != 1)
    {
      goto LABEL_20;
    }

    v284 = v107;
    sub_10000E784(v113, &unk_1000F06A0, &unk_1000B0450);
  }

  else
  {
    v115 = v275;
    sub_10000E66C(v113, v275, &unk_1000F06A0, &unk_1000B0450);
    if (v114(v113 + v112, 1, v87) == 1)
    {
      sub_10000E784(v281, &unk_1000F06A0, &unk_1000B0450);
      (*(v289 + 8))(v115, v87);
      goto LABEL_20;
    }

    v284 = v107;
    v116 = v289;
    v117 = v283;
    (*(v289 + 32))(v283, v113 + v112, v87);
    sub_10000E908(&qword_1000EF630, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v118 = sub_1000AC01C();
    v119 = *(v116 + 8);
    v119(v117, v87);
    sub_10000E784(v281, &unk_1000F06A0, &unk_1000B0450);
    v119(v115, v87);
    sub_10000E784(v113, &unk_1000F06A0, &unk_1000B0450);
    if ((v118 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v282 = v110;
  v120 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingContactUpdateUrl;
  v121 = v286;
  swift_beginAccess();
  v122 = v276;
  sub_10000E66C(v121 + v120, v276, &unk_1000F06A0, &unk_1000B0450);
  v123 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingContactUpdateUrl;
  v124 = v287;
  swift_beginAccess();
  v125 = *(v285 + 48);
  v126 = v274;
  sub_10000E66C(v122, v274, &unk_1000F06A0, &unk_1000B0450);
  v281 = v123;
  sub_10000E66C(v124 + v123, v126 + v125, &unk_1000F06A0, &unk_1000B0450);
  v127 = v277;
  if (v277(v126, 1, v87) != 1)
  {
    v130 = v272;
    sub_10000E66C(v126, v272, &unk_1000F06A0, &unk_1000B0450);
    v131 = v127(v126 + v125, 1, v87);
    v132 = v289;
    v129 = v273;
    if (v131 != 1)
    {
      v280 = v120;
      v133 = v126 + v125;
      v134 = v283;
      (*(v289 + 32))(v283, v133, v87);
      sub_10000E908(&qword_1000EF630, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v135 = sub_1000AC01C();
      v136 = *(v132 + 8);
      v136(v134, v87);
      sub_10000E784(v276, &unk_1000F06A0, &unk_1000B0450);
      v136(v130, v87);
      sub_10000E784(v126, &unk_1000F06A0, &unk_1000B0450);
      if ((v135 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_29;
    }

    sub_10000E784(v276, &unk_1000F06A0, &unk_1000B0450);
    (*(v132 + 8))(v130, v87);
LABEL_27:
    v89 = v126;
    goto LABEL_42;
  }

  sub_10000E784(v122, &unk_1000F06A0, &unk_1000B0450);
  v128 = v127(v126 + v125, 1, v87);
  v129 = v273;
  if (v128 != 1)
  {
    goto LABEL_27;
  }

  v280 = v120;
  sub_10000E784(v126, &unk_1000F06A0, &unk_1000B0450);
LABEL_29:
  v137 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_fallbackUrl;
  v138 = v286;
  swift_beginAccess();
  v279 = v137;
  sub_10000E66C(v138 + v137, v129, &unk_1000F06A0, &unk_1000B0450);
  v139 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_fallbackUrl;
  v140 = v287;
  swift_beginAccess();
  v141 = *(v285 + 48);
  v142 = v271;
  sub_10000E66C(v129, v271, &unk_1000F06A0, &unk_1000B0450);
  sub_10000E66C(v140 + v139, v142 + v141, &unk_1000F06A0, &unk_1000B0450);
  v143 = v277;
  if (v277(v142, 1, v87) == 1)
  {
    sub_10000E784(v129, &unk_1000F06A0, &unk_1000B0450);
    if (v143(v142 + v141, 1, v87) == 1)
    {
      sub_10000E784(v142, &unk_1000F06A0, &unk_1000B0450);
      goto LABEL_36;
    }

LABEL_34:
    v89 = v142;
    goto LABEL_42;
  }

  v144 = v269;
  sub_10000E66C(v142, v269, &unk_1000F06A0, &unk_1000B0450);
  v145 = v143(v142 + v141, 1, v87);
  v146 = v289;
  if (v145 == 1)
  {
    sub_10000E784(v129, &unk_1000F06A0, &unk_1000B0450);
    (*(v146 + 8))(v144, v87);
    goto LABEL_34;
  }

  v147 = v283;
  (*(v289 + 32))(v283, v142 + v141, v87);
  sub_10000E908(&qword_1000EF630, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  LODWORD(v276) = sub_1000AC01C();
  v148 = *(v146 + 8);
  v148(v147, v87);
  sub_10000E784(v129, &unk_1000F06A0, &unk_1000B0450);
  v148(v144, v87);
  sub_10000E784(v142, &unk_1000F06A0, &unk_1000B0450);
  if (v276)
  {
LABEL_36:
    v276 = v139;
    v149 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_productUrl;
    v150 = v286;
    swift_beginAccess();
    v275 = v149;
    v151 = v150 + v149;
    v152 = v270;
    sub_10000E66C(v151, v270, &unk_1000F06A0, &unk_1000B0450);
    v153 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_productUrl;
    v154 = v287;
    swift_beginAccess();
    v155 = *(v285 + 48);
    v156 = v268;
    sub_10000E66C(v152, v268, &unk_1000F06A0, &unk_1000B0450);
    v274 = v153;
    sub_10000E66C(v154 + v153, v156 + v155, &unk_1000F06A0, &unk_1000B0450);
    v157 = v277;
    if (v277(v156, 1, v87) == 1)
    {
      sub_10000E784(v152, &unk_1000F06A0, &unk_1000B0450);
      if (v157(v156 + v155, 1, v87) == 1)
      {
        sub_10000E784(v156, &unk_1000F06A0, &unk_1000B0450);
        goto LABEL_46;
      }
    }

    else
    {
      v158 = v267;
      sub_10000E66C(v156, v267, &unk_1000F06A0, &unk_1000B0450);
      v159 = v157(v156 + v155, 1, v87);
      v160 = v289;
      if (v159 != 1)
      {
        v163 = v283;
        (*(v289 + 32))(v283, v156 + v155, v87);
        sub_10000E908(&qword_1000EF630, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v164 = sub_1000AC01C();
        v165 = *(v160 + 8);
        v165(v163, v87);
        sub_10000E784(v270, &unk_1000F06A0, &unk_1000B0450);
        v165(v158, v87);
        sub_10000E784(v156, &unk_1000F06A0, &unk_1000B0450);
        if ((v164 & 1) == 0)
        {
          goto LABEL_43;
        }

LABEL_46:
        v166 = *(v286 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_selectedShippingMethod);
        v167 = *(v287 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_selectedShippingMethod);
        if (v166)
        {
          if (!v167)
          {
            goto LABEL_43;
          }

          sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
          v168 = v167;
          v169 = v166;
          v170 = sub_1000AC3DC();

          if ((v170 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (v167)
        {
          goto LABEL_43;
        }

        v171 = *(v286 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
        v172 = *(v287 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
        if (v171)
        {
          if (!v172)
          {
            goto LABEL_43;
          }

          sub_100005A24(0, &qword_1000EF638, PKPaymentRequest_ptr);
          v173 = v172;
          v174 = v171;
          v175 = sub_1000AC3DC();

          if ((v175 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (v172)
        {
          goto LABEL_43;
        }

        v176 = v266;
        sub_10000E66C(v286 + v248, v266, &unk_1000F06A0, &unk_1000B0450);
        v177 = *(v285 + 48);
        v113 = v265;
        sub_10000E66C(v176, v265, &unk_1000F06A0, &unk_1000B0450);
        sub_10000E66C(v287 + v247, v113 + v177, &unk_1000F06A0, &unk_1000B0450);
        v178 = v277;
        if (v277(v113, 1, v87) == 1)
        {
          sub_10000E784(v176, &unk_1000F06A0, &unk_1000B0450);
          if (v178(v113 + v177, 1, v87) == 1)
          {
            sub_10000E784(v113, &unk_1000F06A0, &unk_1000B0450);
            goto LABEL_62;
          }
        }

        else
        {
          v179 = v262;
          sub_10000E66C(v113, v262, &unk_1000F06A0, &unk_1000B0450);
          v180 = v178(v113 + v177, 1, v87);
          v181 = v289;
          if (v180 != 1)
          {
            v182 = v283;
            (*(v289 + 32))(v283, v113 + v177, v87);
            sub_10000E908(&qword_1000EF630, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v183 = sub_1000AC01C();
            v184 = *(v181 + 8);
            v184(v182, v87);
            sub_10000E784(v266, &unk_1000F06A0, &unk_1000B0450);
            v184(v179, v87);
            sub_10000E784(v113, &unk_1000F06A0, &unk_1000B0450);
            if ((v183 & 1) == 0)
            {
              goto LABEL_43;
            }

LABEL_62:
            v185 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentMethodUpdateUrl;
            v186 = v286;
            swift_beginAccess();
            v187 = v264;
            sub_10000E66C(v186 + v185, v264, &unk_1000F06A0, &unk_1000B0450);
            v188 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentMethodUpdateUrl;
            v189 = v287;
            swift_beginAccess();
            v190 = *(v285 + 48);
            v191 = v187;
            v100 = v263;
            sub_10000E66C(v191, v263, &unk_1000F06A0, &unk_1000B0450);
            sub_10000E66C(v189 + v188, v100 + v190, &unk_1000F06A0, &unk_1000B0450);
            v192 = v277;
            if (v277(v100, 1, v87) == 1)
            {
              sub_10000E784(v264, &unk_1000F06A0, &unk_1000B0450);
              if (v192(v100 + v190, 1, v87) == 1)
              {
                sub_10000E784(v100, &unk_1000F06A0, &unk_1000B0450);
                goto LABEL_68;
              }
            }

            else
            {
              sub_10000E66C(v100, v260, &unk_1000F06A0, &unk_1000B0450);
              if (v192(v100 + v190, 1, v87) != 1)
              {
                v193 = v288;
                v194 = v289;
                v195 = v263;
                v196 = v283;
                (*(v289 + 32))(v283, v263 + v190, v288);
                sub_10000E908(&qword_1000EF630, &type metadata accessor for URL, &protocol conformance descriptor for URL);
                v197 = v260;
                v198 = sub_1000AC01C();
                v199 = *(v194 + 8);
                v199(v196, v193);
                sub_10000E784(v264, &unk_1000F06A0, &unk_1000B0450);
                v199(v197, v193);
                sub_10000E784(v195, &unk_1000F06A0, &unk_1000B0450);
                if ((v198 & 1) == 0)
                {
                  goto LABEL_43;
                }

LABEL_68:
                v200 = v259;
                sub_10000E66C(v286 + v284, v259, &unk_1000F06A0, &unk_1000B0450);
                v201 = *(v285 + 48);
                v202 = v200;
                v203 = v261;
                sub_10000E66C(v202, v261, &unk_1000F06A0, &unk_1000B0450);
                sub_10000E66C(v287 + v282, v203 + v201, &unk_1000F06A0, &unk_1000B0450);
                if (v277(v203, 1, v288) == 1)
                {
                  sub_10000E784(v259, &unk_1000F06A0, &unk_1000B0450);
                  if (v277(v261 + v201, 1, v288) == 1)
                  {
                    sub_10000E784(v261, &unk_1000F06A0, &unk_1000B0450);
                    goto LABEL_75;
                  }
                }

                else
                {
                  v204 = v261;
                  sub_10000E66C(v261, v257, &unk_1000F06A0, &unk_1000B0450);
                  if (v277(v204 + v201, 1, v288) != 1)
                  {
                    v206 = v288;
                    v205 = v289;
                    v207 = v261;
                    v208 = v283;
                    (*(v289 + 32))(v283, v261 + v201, v288);
                    sub_10000E908(&qword_1000EF630, &type metadata accessor for URL, &protocol conformance descriptor for URL);
                    v209 = v257;
                    v210 = sub_1000AC01C();
                    v211 = *(v205 + 8);
                    v211(v208, v206);
                    sub_10000E784(v259, &unk_1000F06A0, &unk_1000B0450);
                    v211(v209, v206);
                    sub_10000E784(v207, &unk_1000F06A0, &unk_1000B0450);
                    if ((v210 & 1) == 0)
                    {
                      goto LABEL_43;
                    }

LABEL_75:
                    v212 = v256;
                    sub_10000E66C(v286 + v280, v256, &unk_1000F06A0, &unk_1000B0450);
                    v213 = *(v285 + 48);
                    v214 = v212;
                    v215 = v258;
                    sub_10000E66C(v214, v258, &unk_1000F06A0, &unk_1000B0450);
                    sub_10000E66C(v287 + v281, v215 + v213, &unk_1000F06A0, &unk_1000B0450);
                    if (v277(v215, 1, v288) == 1)
                    {
                      sub_10000E784(v256, &unk_1000F06A0, &unk_1000B0450);
                      if (v277(v258 + v213, 1, v288) == 1)
                      {
                        sub_10000E784(v258, &unk_1000F06A0, &unk_1000B0450);
LABEL_82:
                        v224 = v253;
                        sub_10000E66C(v286 + v279, v253, &unk_1000F06A0, &unk_1000B0450);
                        v225 = *(v285 + 48);
                        v226 = v224;
                        v227 = v255;
                        sub_10000E66C(v226, v255, &unk_1000F06A0, &unk_1000B0450);
                        sub_10000E66C(v287 + v276, v227 + v225, &unk_1000F06A0, &unk_1000B0450);
                        if (v277(v227, 1, v288) == 1)
                        {
                          sub_10000E784(v253, &unk_1000F06A0, &unk_1000B0450);
                          if (v277(v255 + v225, 1, v288) == 1)
                          {
                            sub_10000E784(v255, &unk_1000F06A0, &unk_1000B0450);
LABEL_89:
                            v236 = v250;
                            sub_10000E66C(v286 + v275, v250, &unk_1000F06A0, &unk_1000B0450);
                            v237 = *(v285 + 48);
                            v238 = v236;
                            v239 = v252;
                            sub_10000E66C(v238, v252, &unk_1000F06A0, &unk_1000B0450);
                            sub_10000E66C(v287 + v274, v239 + v237, &unk_1000F06A0, &unk_1000B0450);
                            if (v277(v239, 1, v288) == 1)
                            {
                              sub_10000E784(v250, &unk_1000F06A0, &unk_1000B0450);
                              if (v277(v252 + v237, 1, v288) == 1)
                              {
                                sub_10000E784(v252, &unk_1000F06A0, &unk_1000B0450);
                                v161 = 1;
                                return v161 & 1;
                              }
                            }

                            else
                            {
                              v240 = v252;
                              sub_10000E66C(v252, v249, &unk_1000F06A0, &unk_1000B0450);
                              if (v277(v240 + v237, 1, v288) != 1)
                              {
                                v242 = v288;
                                v241 = v289;
                                v243 = v252;
                                v244 = v283;
                                (*(v289 + 32))(v283, v252 + v237, v288);
                                sub_10000E908(&qword_1000EF630, &type metadata accessor for URL, &protocol conformance descriptor for URL);
                                v245 = v249;
                                v161 = sub_1000AC01C();
                                v246 = *(v241 + 8);
                                v246(v244, v242);
                                sub_10000E784(v250, &unk_1000F06A0, &unk_1000B0450);
                                v246(v245, v242);
                                sub_10000E784(v243, &unk_1000F06A0, &unk_1000B0450);
                                return v161 & 1;
                              }

                              sub_10000E784(v250, &unk_1000F06A0, &unk_1000B0450);
                              (*(v289 + 8))(v249, v288);
                            }

                            v89 = v252;
                            goto LABEL_42;
                          }
                        }

                        else
                        {
                          v228 = v255;
                          sub_10000E66C(v255, v251, &unk_1000F06A0, &unk_1000B0450);
                          if (v277(v228 + v225, 1, v288) != 1)
                          {
                            v230 = v288;
                            v229 = v289;
                            v231 = v255;
                            v232 = v283;
                            (*(v289 + 32))(v283, v255 + v225, v288);
                            sub_10000E908(&qword_1000EF630, &type metadata accessor for URL, &protocol conformance descriptor for URL);
                            v233 = v251;
                            v234 = sub_1000AC01C();
                            v235 = *(v229 + 8);
                            v235(v232, v230);
                            sub_10000E784(v253, &unk_1000F06A0, &unk_1000B0450);
                            v235(v233, v230);
                            sub_10000E784(v231, &unk_1000F06A0, &unk_1000B0450);
                            if ((v234 & 1) == 0)
                            {
                              goto LABEL_43;
                            }

                            goto LABEL_89;
                          }

                          sub_10000E784(v253, &unk_1000F06A0, &unk_1000B0450);
                          (*(v289 + 8))(v251, v288);
                        }

                        v89 = v255;
LABEL_42:
                        sub_10000E784(v89, &qword_1000EF628, &qword_1000B0448);
                        goto LABEL_43;
                      }
                    }

                    else
                    {
                      v216 = v258;
                      sub_10000E66C(v258, v254, &unk_1000F06A0, &unk_1000B0450);
                      if (v277(v216 + v213, 1, v288) != 1)
                      {
                        v218 = v288;
                        v217 = v289;
                        v219 = v258;
                        v220 = v283;
                        (*(v289 + 32))(v283, v258 + v213, v288);
                        sub_10000E908(&qword_1000EF630, &type metadata accessor for URL, &protocol conformance descriptor for URL);
                        v221 = v254;
                        v222 = sub_1000AC01C();
                        v223 = *(v217 + 8);
                        v223(v220, v218);
                        sub_10000E784(v256, &unk_1000F06A0, &unk_1000B0450);
                        v223(v221, v218);
                        sub_10000E784(v219, &unk_1000F06A0, &unk_1000B0450);
                        if ((v222 & 1) == 0)
                        {
                          goto LABEL_43;
                        }

                        goto LABEL_82;
                      }

                      sub_10000E784(v256, &unk_1000F06A0, &unk_1000B0450);
                      (*(v289 + 8))(v254, v288);
                    }

                    v89 = v258;
                    goto LABEL_42;
                  }

                  sub_10000E784(v259, &unk_1000F06A0, &unk_1000B0450);
                  (*(v289 + 8))(v257, v288);
                }

                v89 = v261;
                goto LABEL_42;
              }

              sub_10000E784(v264, &unk_1000F06A0, &unk_1000B0450);
              (*(v289 + 8))(v260, v288);
              v100 = v263;
            }

LABEL_13:
            v89 = v100;
            goto LABEL_42;
          }

          sub_10000E784(v266, &unk_1000F06A0, &unk_1000B0450);
          (*(v181 + 8))(v179, v87);
        }

LABEL_20:
        v89 = v113;
        goto LABEL_42;
      }

      sub_10000E784(v270, &unk_1000F06A0, &unk_1000B0450);
      (*(v160 + 8))(v158, v87);
    }

    v89 = v156;
    goto LABEL_42;
  }

LABEL_43:
  v161 = 0;
  return v161 & 1;
}

uint64_t sub_10000E66C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000413C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E6D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E738(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000E784(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000413C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000E7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000E854(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000DA298;
  v6._object = a2;
  v4 = sub_1000AC6AC(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000E8A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000413C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E908(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000E950(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000E964(a1, a2);
  }

  return a1;
}

uint64_t sub_10000E964(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

char *sub_10000E9B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = &qword_1000EF000;
  *&v5[OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_lastButtonBottomConstraint] = 0;
  *&v5[OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v5[OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_model];
  *v12 = a1;
  *(v12 + 1) = a2;
  v12[16] = a3 & 1;
  v13 = &v5[OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_onItemSelected];
  *v13 = a4;
  *(v13 + 1) = a5;
  v92.receiver = v5;
  v92.super_class = type metadata accessor for QuickReplyToMeBubbleView();
  p_attr = &stru_1000E5FF8.attr;

  v78 = a5;

  v15 = objc_msgSendSuper2(&v92, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (qword_1000EEDA8 != -1)
  {
LABEL_19:
    swift_once();
  }

  [v15 setBackgroundColor:{qword_1000FBED8, v78}];
  v16 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  v17 = [objc_allocWithZone(UIPanGestureRecognizer) init];
  v18 = [objc_allocWithZone(UITapGestureRecognizer) init];
  [v18 setNumberOfTapsRequired:2];
  v19 = v15;
  v83 = v16;
  [v19 addGestureRecognizer:v16];
  v82 = v17;
  [v19 addGestureRecognizer:v17];
  v81 = v18;
  [v19 addGestureRecognizer:v18];
  v20 = [objc_allocWithZone(UIView) p_attr[282]];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v85 = v19;
  [v19 addSubview:v20];
  p_attr = *(a1 + 16);
  v79 = v11[206];

  v15 = &stru_1000E5FF8.attr;
  v21 = &stru_1000E5FF8.attr;
  v80 = p_attr;
  if (p_attr)
  {
    v22 = 0;
    v23 = 0;
    v24 = (a1 + 56);
    v84 = v20;
    v89 = a1;
    do
    {
      v28 = *(a1 + 16);
      if (v22 >= v28)
      {
        __break(1u);
        goto LABEL_19;
      }

      v29 = *(v24 - 1);
      v30 = *v24;
      v87 = (v28 - 1);
      v88 = v24;
      v31 = v22 != (v28 - 1);
      v91 = v23;
      v32 = objc_allocWithZone(UITapGestureRecognizer);

      v33 = [v32 initWithTarget:v85 action:"tapGestureRecognized:"];
      [v33 requireGestureRecognizerToFail:v83];
      [v33 requireGestureRecognizerToFail:v82];
      [v33 requireGestureRecognizerToFail:v81];
      v34 = objc_allocWithZone(type metadata accessor for QuickReplyItemButton());

      v35 = sub_10005F418(v29, v30, v31);

      p_attr = v35;
      [(SEL *)p_attr setTag:v22];
      v86 = v33;
      [(SEL *)p_attr addGestureRecognizer:v33];
      [v20 addSubview:p_attr];
      v36 = objc_opt_self();
      sub_10000413C(&unk_1000F06B0, qword_1000B0520);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1000B04B0;
      v38 = [(SEL *)p_attr leftAnchor];
      v39 = [v20 leftAnchor];
      v40 = [v38 constraintEqualToAnchor:v39];

      *(v37 + 32) = v40;
      v41 = [(SEL *)p_attr rightAnchor];
      v42 = [v20 rightAnchor];
      v43 = [v41 constraintEqualToAnchor:v42];

      *(v37 + 40) = v43;
      v21 = &stru_1000E5FF8.attr;
      v44 = [(SEL *)p_attr heightAnchor];
      v45 = [v44 constraintLessThanOrEqualToConstant:600.0 / *(v89 + 16)];

      *(v37 + 48) = v45;
      sub_10000F840();
      isa = sub_1000AC18C().super.isa;

      v90 = v36;
      [v36 activateConstraints:isa];

      if (v91)
      {
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1000B04C0;
        v11 = v91;
        v48 = [(SEL *)p_attr topAnchor];
        v49 = [v11 bottomAnchor];
        v50 = [v48 constraintEqualToAnchor:v49];

        *(v47 + 32) = v50;
        v51.super.isa = sub_1000AC18C().super.isa;
        v21 = &stru_1000E5FF8.attr;

        [v90 activateConstraints:v51.super.isa];
      }

      else
      {
        v11 = swift_allocObject();
        *(v11 + 1) = xmmword_1000B04C0;
        v52 = [(SEL *)p_attr topAnchor];
        v53 = [v84 topAnchor];
        v54 = [v52 constraintEqualToAnchor:v53];

        v11[4] = v54;
        v51.super.isa = sub_1000AC18C().super.isa;

        [v90 activateConstraints:v51.super.isa];
      }

      if (v22 == v87)
      {
        v55 = [(SEL *)p_attr bottomAnchor];

        v20 = v84;
        v56 = [v84 bottomAnchor];
        if (qword_1000EEDB8 != -1)
        {
          swift_once();
        }

        v57 = [v55 constraintEqualToAnchor:v56 constant:-*&qword_1000FBEE8];

        v58 = *&v85[v79];
        *&v85[v79] = v57;
        v11 = v57;

        if (!v11)
        {
          v21 = (&stru_1000E5FF8 + 8);
          v15 = &stru_1000E5FF8 + 8;
          v26 = v91;
          v25 = v86;
          goto LABEL_6;
        }

        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_1000B04C0;
        *(v59 + 32) = v11;
        v25 = v11;
        v60 = sub_1000AC18C().super.isa;

        v21 = &stru_1000E5FF8.attr;
        [v90 activateConstraints:v60];

        v27 = v60;
        v26 = v91;
      }

      else
      {
        v25 = p_attr;
        v20 = v84;
        v26 = v91;
        v27 = v86;
      }

      v15 = &stru_1000E5FF8 + 8;
LABEL_6:
      v22 = (v22 + 1);

      a1 = v89;
      v24 = v88 + 4;
      v23 = p_attr;
    }

    while (v80 != v22);
  }

  swift_bridgeObjectRelease_n();
  v61 = v15;
  v62 = objc_opt_self();
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1000B04D0;
  v64 = [v20 topAnchor];
  v65 = [v85 topAnchor];

  v66 = [v64 v61[293]];
  *(v63 + 32) = v66;
  v67 = [v20 leftAnchor];
  v68 = [v85 leftAnchor];

  v69 = [v67 v61[293]];
  *(v63 + 40) = v69;
  v70 = [v20 bottomAnchor];
  v71 = [v85 bottomAnchor];

  v72 = [v70 v61[293]];
  *(v63 + 48) = v72;
  v73 = [v20 rightAnchor];
  v74 = [v85 rightAnchor];

  v75 = [v73 v61[293]];
  *(v63 + 56) = v75;
  sub_10000F840();
  v76 = sub_1000AC18C().super.isa;

  [v62 v21[297]];

  return v85;
}

double sub_10000F494(double a1, double a2, double a3, double a4)
{
  [v4 systemLayoutSizeFittingSize:fmin(a1 withHorizontalFittingPriority:263.0) verticalFittingPriority:?];
  v6 = v5;
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v7 = qword_1000FC008;
  v8 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000AF0F0;
  v10 = sub_1000AC36C();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_10000587C();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v14 = sub_1000AC36C();
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 72) = v14;
  *(v9 + 80) = v15;
  sub_1000ABA5C("QuickReplyToMeBubbleView.contentSizeThatFits: size %@ preferredSize: %@", 71, 2, &_mh_execute_header, v7, v8, v9);

  return v6;
}

id sub_10000F724(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for QuickReplyToMeBubbleView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000F7EC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8Business24QuickReplyToMeBubbleView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_10000F840()
{
  result = qword_1000EF6A8;
  if (!qword_1000EF6A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000EF6A8);
  }

  return result;
}

void *sub_10000F8B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000AB7EC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v67 - v11;
  v13 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  __chkstk_darwin(v13 - 8);
  v15 = &v67 - v14;
  v2[10] = 0;
  v2[11] = 0;
  v2[2] = [objc_allocWithZone(EKEventStore) init];
  if (!*(a1 + 16) || (v16 = sub_10004F0CC(0x696669746E656469, 0xEA00000000007265), (v17 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v16, v82), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v26 = qword_1000FC008;
    v27 = sub_1000AC2AC();
    sub_1000ABA5C("Unable to create event: IdentifierDictionaryKey is missing", 58, 2, &_mh_execute_header, v26, v27, _swiftEmptyArrayStorage);
    goto LABEL_17;
  }

  if (!*(a1 + 16) || (v76 = v81, v73 = v80, v18 = sub_10004F0CC(0x656C746974, 0xE500000000000000), (v19 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v18, v82), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v29 = qword_1000FC008;
    v30 = sub_1000AC2AC();
    sub_1000ABA5C("Unable to create event: TitleDictionaryKey is missing", 53, 2, &_mh_execute_header, v29, v30, _swiftEmptyArrayStorage);
LABEL_17:

    type metadata accessor for IMBProposedEvent();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v71 = v81;
  v72 = v80;
  v79 = v12;
  if (!a2)
  {
    goto LABEL_24;
  }

  if (*(a1 + 16))
  {
    v20 = sub_10004F0CC(0x6564496567616D69, 0xEF7265696669746ELL);
    if (v21)
    {
      sub_1000068B4(*(a1 + 56) + 32 * v20, v82);
      if (swift_dynamicCast())
      {
        if (*(a2 + 16))
        {
          v78 = sub_10004F0CC(v80, v81);
          v23 = v22;

          if (v23)
          {
            v24 = *(*(a2 + 56) + 8 * v78);

            v25 = v3[11];
            v3[11] = v24;

            goto LABEL_24;
          }
        }

        else
        {
        }
      }
    }
  }

LABEL_24:
  if (!*(a1 + 16))
  {
    v33 = _swiftEmptyArrayStorage;
LABEL_36:
    v37 = 0;
    v36 = 1;
    goto LABEL_37;
  }

  v31 = sub_10004F0CC(0x746F6C73656D6974, 0xE900000000000073);
  if (v32 & 1) != 0 && (sub_1000068B4(*(a1 + 56) + 32 * v31, v82), sub_10000413C(&unk_1000F0240, &qword_1000B05A0), (swift_dynamicCast()))
  {
    v33 = v80;
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_36;
  }

  v34 = sub_10004F0CC(0x656E6F7A656D6974, 0xEE0074657366664FLL);
  if ((v35 & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_1000068B4(*(a1 + 56) + 32 * v34, v82);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v36 = v80 == 0;
  if (!v80)
  {
    v37 = 0;
    goto LABEL_37;
  }

  v37 = 60 * v80;
  if ((v80 * 60) >> 64 == (60 * v80) >> 63)
  {
    v36 = 0;
LABEL_37:
    v70 = v33;
    v78 = v6;
    v3[8] = v37;
    *(v3 + 72) = v36;
    v38 = [objc_opt_self() eventWithEventStore:v3[2]];
    v39 = sub_1000AC02C();
    [v38 setTitle:v39];

    if ((v3[9] & 1) != 0 || !v3[8])
    {
      sub_1000AB90C();
      v40 = sub_1000AB91C();
      (*(*(v40 - 8) + 56))(v15, 0, 1, v40);
    }

    else
    {
      sub_1000AB8DC();
      v40 = sub_1000AB91C();
      isa = 0;
      if ((*(*(v40 - 8) + 48))(v15, 1, v40) == 1)
      {
        goto LABEL_43;
      }
    }

    isa = sub_1000AB8EC().super.isa;
    sub_1000AB91C();
    (*(*(v40 - 8) + 8))(v15, v40);
LABEL_43:
    [v38 setTimeZone:isa];

    if (*(a1 + 16) && (v42 = sub_10004F0CC(0x6E6F697461636F6CLL, 0xE800000000000000), (v43 & 1) != 0))
    {
      sub_1000068B4(*(a1 + 56) + 32 * v42, v82);

      sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
      if (swift_dynamicCast())
      {
        v44 = v80;
        sub_100012634();
        v45 = sub_10004DA74(v44);

        v46 = sub_100062A48(v45);
        [v38 setStructuredLocation:v46];
      }
    }

    else
    {
    }

    v47 = v70;
    v69 = v7;
    v3[7] = v38;
    v82[0] = _swiftEmptyArrayStorage;
    v68 = v38;
    sub_1000AB7DC();
    v48 = v47[2];
    if (v48)
    {
      v49 = v47 + 4;
      type metadata accessor for IMBProposedTimeslot(0);
      v50 = (v69 + 8);
      v75 = _swiftEmptyArrayStorage;
      v77 = xmmword_1000AF0E0;
      v74 = v10;
      do
      {
        v54 = *v49;
        swift_allocObject();
        swift_bridgeObjectRetain_n();
        if (sub_10004CF0C(v54))
        {
          sub_1000AB7AC();
          sub_1000AB79C();
          sub_1000AB7AC();
          v56 = v55;
          (*v50)(v10, v78);
          sub_1000AB7AC();
          if (v57 >= v56)
          {
            v58 = v50;
            if (qword_1000EEE80 != -1)
            {
              swift_once();
            }

            v59 = qword_1000FC008;
            v60 = sub_1000AC2AC();
            sub_10000413C(&qword_1000F0060, &unk_1000B0470);
            v61 = swift_allocObject();
            *(v61 + 16) = v77;
            *(v61 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
            *(v61 + 64) = sub_100011970();
            *(v61 + 32) = v54;
            sub_1000ABA5C("Filtering out timeslot since the date is in the past: %@", 56, 2, &_mh_execute_header, v59, v60, v61);

            v50 = v58;
            v10 = v74;
          }

          else
          {

            sub_1000AC17C();
            if (*((v82[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1000AC1BC();
            }

            sub_1000AC1DC();

            v75 = v82[0];
          }
        }

        else
        {
          if (qword_1000EEE80 != -1)
          {
            swift_once();
          }

          v51 = qword_1000FC008;
          v52 = sub_1000AC2AC();
          sub_10000413C(&qword_1000F0060, &unk_1000B0470);
          v53 = swift_allocObject();
          *(v53 + 16) = v77;
          *(v53 + 56) = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
          *(v53 + 64) = sub_100011970();
          *(v53 + 32) = v54;
          sub_1000ABA5C("Unable to create timeslot for dictionary: %@", 44, 2, &_mh_execute_header, v51, v52, v53);
        }

        ++v49;
        --v48;
      }

      while (v48);
    }

    else
    {
      v75 = _swiftEmptyArrayStorage;
    }

    v80 = sub_100087DD0(v62);
    sub_1000119D4(&v80, sub_1000A4D24, type metadata accessor for IMBProposedTimeslot, &OBJC_IVAR____TtC8Business19IMBProposedTimeslot_startTime);

    v63 = v80;
    v64 = v76;
    v3[3] = v73;
    v3[4] = v64;
    v65 = v71;
    v3[5] = v72;
    v3[6] = v65;
    v66 = sub_100010490(v63);

    (*(v69 + 8))(v79, v78);
    v3[10] = v66;

    return v3;
  }

  __break(1u);

  type metadata accessor for IMBProposedEvent();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void *sub_100010490(unint64_t a1)
{
  v58 = sub_1000AB7EC();
  v3 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v55 - v9;
  v11 = [objc_allocWithZone(NSDateFormatter) init];
  [v11 setDateStyle:1];
  v62 = v11;
  [v11 setTimeStyle:0];
  v12 = [*(v1 + 56) timeZone];
  if (v12)
  {
    v13 = v12;
    sub_1000AB8FC();

    v14 = sub_1000AB91C();
    (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  }

  else
  {
    v14 = sub_1000AB91C();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  sub_1000126F0(v8, v10);
  sub_1000AB91C();
  v15 = *(v14 - 8);
  isa = 0;
  if ((*(v15 + 48))(v10, 1, v14) != 1)
  {
    isa = sub_1000AB8EC().super.isa;
    (*(v15 + 8))(v10, v14);
  }

  [v62 setTimeZone:isa];

  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
LABEL_35:
    v3 = _swiftEmptyDictionarySingleton;
LABEL_36:
    v49 = v3[2];
    if (v49)
    {
      v50 = sub_1000A4D28();
      v51 = sub_1000A3DA0(&v63, (v50 + 32), v49, v3);
      v52 = v63;

      sub_100012760(v52);
      if (v51 != v49)
      {
        __break(1u);
      }
    }

    v63 = sub_100087DA4(v53);
    sub_1000119D4(&v63, sub_1000A4D24, type metadata accessor for IMBProposedDate, &OBJC_IVAR____TtC8Business15IMBProposedDate_date);

    return v63;
  }

LABEL_8:
  if (v17 >= 1)
  {
    v18 = 0;
    v61 = a1 & 0xC000000000000001;
    v55 = (v3 + 4);
    v56 = (v3 + 2);
    v3 = _swiftEmptyDictionarySingleton;
    v59 = v17;
    v60 = a1;
    while (1)
    {
      if (v61)
      {
        v19 = sub_1000AC5AC();
      }

      else
      {
        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = OBJC_IVAR____TtC8Business19IMBProposedTimeslot_startTime;
      v21 = sub_1000AB77C().super.isa;
      v22 = [v62 stringFromDate:{v21, v55}];

      v23 = sub_1000AC06C();
      v25 = v24;

      if (v3[2] && (v26 = sub_10004F0CC(v23, v25), (v27 & 1) != 0))
      {
        v28 = *(v3[7] + 8 * v26);

        v29 = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
      }

      else
      {
        v30 = [objc_allocWithZone(NSUUID) init];
        v31 = [v30 UUIDString];

        v32 = sub_1000AC06C();
        a1 = v33;

        v34 = v19 + v20;
        v36 = v57;
        v35 = v58;
        (*v56)(v57, v34, v58);
        type metadata accessor for IMBProposedDate(0);
        v28 = swift_allocObject();
        *(v28 + OBJC_IVAR____TtC8Business15IMBProposedDate_expanded) = 0;
        *(v28 + 16) = v32;
        *(v28 + 24) = a1;
        (*v55)(v28 + OBJC_IVAR____TtC8Business15IMBProposedDate_date, v36, v35);
        v29 = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
        *(v28 + OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots) = _swiftEmptyArrayStorage;
      }

      swift_beginAccess();

      sub_1000AC17C();
      if (*((*(v28 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v28 + v29) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a1 = *((*(v28 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000AC1BC();
      }

      sub_1000AC1DC();
      swift_endAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v3;
      v39 = sub_10004F0CC(v23, v25);
      v40 = v3[2];
      v41 = (v38 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v17 = sub_1000AC65C();
        if (!v17)
        {
          goto LABEL_35;
        }

        goto LABEL_8;
      }

      a1 = v38;
      if (v3[3] >= v42)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v3 = v63;
          if (v38)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_10003AB54();
          v3 = v63;
          if (a1)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        sub_100039124(v42, isUniquelyReferenced_nonNull_native);
        v43 = sub_10004F0CC(v23, v25);
        if ((a1 & 1) != (v44 & 1))
        {
          goto LABEL_41;
        }

        v39 = v43;
        v3 = v63;
        if (a1)
        {
LABEL_10:
          *(v3[7] + 8 * v39) = v28;

          goto LABEL_11;
        }
      }

      v3[(v39 >> 6) + 8] |= 1 << v39;
      v45 = (v3[6] + 16 * v39);
      *v45 = v23;
      v45[1] = v25;
      *(v3[7] + 8 * v39) = v28;
      v46 = v3[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_33;
      }

      v3[2] = v48;

LABEL_11:
      ++v18;

      a1 = v60;
      if (v59 == v18)
      {
        goto LABEL_36;
      }
    }
  }

  __break(1u);
LABEL_41:
  sub_1000AC7EC();
  __break(1u);

  __break(1u);
  return result;
}

void *sub_100010C78()
{
  v1 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v2 = __chkstk_darwin(v1 - 8);
  v120 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v108 - v4;
  v128 = _swiftEmptyDictionarySingleton;
  isUniquelyReferenced_nonNull_native = *(v0 + 80);
  if (!isUniquelyReferenced_nonNull_native)
  {
    __break(1u);
LABEL_81:
    result = sub_1000AC7EC();
    __break(1u);
    return result;
  }

  v7 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v108 = v0;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_79;
  }

  v8 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v9 = _swiftEmptyDictionarySingleton;
  if (!v8)
  {
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_62;
  }

  v112 = v8;
  v110 = v7;
  v7 = 0x6E6F697461727564;
  v113 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v109 = isUniquelyReferenced_nonNull_native + 32;
  v116 = " date is in the past: %@";
  v111 = isUniquelyReferenced_nonNull_native;

  isUniquelyReferenced_nonNull_native = 0;
  v10 = _swiftEmptyArrayStorage;
  do
  {
    if (v113)
    {
      v115 = sub_1000AC5AC();
      v11 = __OFADD__(isUniquelyReferenced_nonNull_native++, 1);
      if (v11)
      {
        goto LABEL_76;
      }
    }

    else
    {
      if (isUniquelyReferenced_nonNull_native >= *(v110 + 16))
      {
        goto LABEL_78;
      }

      v115 = *(v109 + 8 * isUniquelyReferenced_nonNull_native);

      v11 = __OFADD__(isUniquelyReferenced_nonNull_native++, 1);
      if (v11)
      {
        goto LABEL_76;
      }
    }

    v114 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
    v12 = v115;
    swift_beginAccess();
    v13 = *(v12 + isUniquelyReferenced_nonNull_native);
    if (v13 >> 62)
    {
      isUniquelyReferenced_nonNull_native = *(v12 + isUniquelyReferenced_nonNull_native);
      v81 = sub_1000AC65C();
      v13 = isUniquelyReferenced_nonNull_native;
      v14 = v81;
      if (!v81)
      {
        goto LABEL_59;
      }

LABEL_15:
      if (v14 < 1)
      {
        goto LABEL_77;
      }

      v119 = v13 & 0xC000000000000001;
      v15 = v13;

      v16 = v15;
      v17 = 0;
      v117 = v14;
      v118 = v15;
      while (1)
      {
        v122 = v17;
        if (v119)
        {
          v18 = sub_1000AC5AC();
        }

        else
        {
          v18 = *(v16 + 8 * v17 + 32);
        }

        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v127 = &type metadata for String;
        *&v126 = v19;
        *(&v126 + 1) = v20;
        sub_100006910(&v126, v125);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124 = v9;
        v21 = sub_10004F0CC(0x696669746E656469, 0xEA00000000007265);
        v23 = v9[2];
        v24 = (v22 & 1) == 0;
        v11 = __OFADD__(v23, v24);
        v25 = v23 + v24;
        if (v11)
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          v8 = sub_1000AC65C();
          goto LABEL_4;
        }

        v26 = v22;
        if (v9[3] < v25)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_25;
        }

        v29 = v21;
        sub_10003A9B0();
        v21 = v29;
        isUniquelyReferenced_nonNull_native = v124;
        if (v26)
        {
LABEL_26:
          v28 = (*(isUniquelyReferenced_nonNull_native + 56) + 32 * v21);
          sub_10000E738(v28);
          sub_100006910(v125, v28);
          goto LABEL_30;
        }

LABEL_28:
        *(isUniquelyReferenced_nonNull_native + 8 * (v21 >> 6) + 64) |= 1 << v21;
        v30 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v21);
        *v30 = 0x696669746E656469;
        v30[1] = 0xEA00000000007265;
        sub_100006910(v125, (*(isUniquelyReferenced_nonNull_native + 56) + 32 * v21));
        v31 = *(isUniquelyReferenced_nonNull_native + 16);
        v11 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v11)
        {
          goto LABEL_73;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v32;
LABEL_30:
        v121 = OBJC_IVAR____TtC8Business19IMBProposedTimeslot_startTime;
        sub_1000AB8CC();
        v33 = [objc_allocWithZone(NSDateFormatter) init];
        v34 = sub_1000AC02C();
        [v33 setDateFormat:v34];

        v35 = v120;
        sub_100012680(v5, v120);
        v36 = sub_1000AB91C();
        v37 = *(v36 - 8);
        v38 = (*(v37 + 48))(v35, 1, v36);
        isa = 0;
        v123 = v18;
        if (v38 != 1)
        {
          v40 = v7;
          v41 = v5;
          v42 = v9;
          v43 = v10;
          v44 = v120;
          isa = sub_1000AB8EC().super.isa;
          v45 = v44;
          v10 = v43;
          v9 = v42;
          v5 = v41;
          v7 = v40;
          (*(v37 + 8))(v45, v36);
        }

        [v33 setTimeZone:{isa, v108}];

        v46 = sub_1000AB77C().super.isa;
        v47 = [v33 stringFromDate:v46];

        v48 = sub_1000AC06C();
        v50 = v49;

        sub_10000E784(v5, &qword_1000EF7D0, &qword_1000B5060);
        v127 = &type metadata for String;
        *&v126 = v48;
        *(&v126 + 1) = v50;
        sub_100006910(&v126, v125);
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v124 = isUniquelyReferenced_nonNull_native;
        v52 = sub_10004F0CC(0x6D69547472617473, 0xE900000000000065);
        v54 = *(isUniquelyReferenced_nonNull_native + 16);
        v55 = (v53 & 1) == 0;
        v11 = __OFADD__(v54, v55);
        v56 = v54 + v55;
        if (v11)
        {
          goto LABEL_71;
        }

        v57 = v53;
        if (*(isUniquelyReferenced_nonNull_native + 24) < v56)
        {
          sub_100038E6C(v56, v51);
          v52 = sub_10004F0CC(0x6D69547472617473, 0xE900000000000065);
          v59 = v123;
          if ((v57 & 1) != (v58 & 1))
          {
            goto LABEL_81;
          }

LABEL_37:
          v60 = v124;
          if (v57)
          {
            goto LABEL_38;
          }

          goto LABEL_40;
        }

        v59 = v123;
        if (v51)
        {
          goto LABEL_37;
        }

        isUniquelyReferenced_nonNull_native = v52;
        sub_10003A9B0();
        v52 = isUniquelyReferenced_nonNull_native;
        v60 = v124;
        if (v57)
        {
LABEL_38:
          isUniquelyReferenced_nonNull_native = v60[7] + 32 * v52;
          sub_10000E738(isUniquelyReferenced_nonNull_native);
          sub_100006910(v125, isUniquelyReferenced_nonNull_native);
          goto LABEL_42;
        }

LABEL_40:
        v60[(v52 >> 6) + 8] |= 1 << v52;
        v61 = (v60[6] + 16 * v52);
        *v61 = 0x6D69547472617473;
        v61[1] = 0xE900000000000065;
        sub_100006910(v125, (v60[7] + 32 * v52));
        v62 = v60[2];
        v11 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v11)
        {
          goto LABEL_74;
        }

        v60[2] = v63;
LABEL_42:
        v64 = *(v59 + OBJC_IVAR____TtC8Business19IMBProposedTimeslot_duration);
        v127 = &type metadata for Int;
        *&v126 = v64;
        sub_100006910(&v126, v125);
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v124 = v60;
        v66 = sub_10004F0CC(v7, 0xE800000000000000);
        v68 = v60[2];
        v69 = (v67 & 1) == 0;
        v11 = __OFADD__(v68, v69);
        v70 = v68 + v69;
        v71 = v122;
        if (v11)
        {
          goto LABEL_72;
        }

        isUniquelyReferenced_nonNull_native = v67;
        if (v60[3] >= v70)
        {
          if ((v65 & 1) == 0)
          {
            v80 = v66;
            sub_10003A9B0();
            v66 = v80;
          }
        }

        else
        {
          sub_100038E6C(v70, v65);
          v66 = sub_10004F0CC(v7, 0xE800000000000000);
          if ((isUniquelyReferenced_nonNull_native & 1) != (v72 & 1))
          {
            goto LABEL_81;
          }
        }

        v73 = v124;
        if (isUniquelyReferenced_nonNull_native)
        {
          v74 = (v124[7] + 32 * v66);
          sub_10000E738(v74);
          sub_100006910(v125, v74);
        }

        else
        {
          v124[(v66 >> 6) + 8] |= 1 << v66;
          v75 = (v73[6] + 16 * v66);
          *v75 = v7;
          v75[1] = 0xE800000000000000;
          sub_100006910(v125, (v73[7] + 32 * v66));
          v76 = v73[2];
          v11 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v11)
          {
            goto LABEL_75;
          }

          v73[2] = v77;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000387AC(0, v10[2] + 1, 1, v10);
        }

        v79 = v10[2];
        v78 = v10[3];
        if (v79 >= v78 >> 1)
        {
          v10 = sub_1000387AC((v78 > 1), v79 + 1, 1, v10);
        }

        v17 = v71 + 1;

        v10[2] = v79 + 1;
        v10[v79 + 4] = v73;
        v16 = v118;
        if (v117 == v17)
        {

          goto LABEL_6;
        }
      }

      sub_100038E6C(v25, isUniquelyReferenced_nonNull_native);
      v21 = sub_10004F0CC(0x696669746E656469, 0xEA00000000007265);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_81;
      }

LABEL_25:
      isUniquelyReferenced_nonNull_native = v124;
      if (v26)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_59:

LABEL_6:
    isUniquelyReferenced_nonNull_native = v114;
  }

  while (v114 != v112);

  v9 = v128;
LABEL_62:
  v82 = v108;
  v83 = *(v108 + 40);
  v84 = *(v108 + 48);
  v127 = &type metadata for String;
  *&v126 = v83;
  *(&v126 + 1) = v84;
  sub_100006910(&v126, v125);

  v85 = swift_isUniquelyReferenced_nonNull_native();
  v124 = v9;
  sub_10003A3E8(v125, 0x656C746974, 0xE500000000000000, v85);
  v86 = v124;
  v87 = *(v82 + 24);
  v88 = *(v82 + 32);
  v127 = &type metadata for String;
  *&v126 = v87;
  *(&v126 + 1) = v88;
  sub_100006910(&v126, v125);

  v89 = swift_isUniquelyReferenced_nonNull_native();
  v124 = v86;
  sub_10003A3E8(v125, 0x696669746E656469, 0xEA00000000007265, v89);
  v90 = v124;
  v127 = sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
  *&v126 = v10;
  sub_100006910(&v126, v125);
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v124 = v90;
  sub_10003A3E8(v125, 0x746F6C73656D6974, 0xE900000000000073, v91);
  v92 = v124;
  v128 = v124;
  v93 = [*(v82 + 56) structuredLocation];
  if (v93)
  {
    v94 = v93;
    v95 = sub_100062EC8();

    v127 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
    *&v126 = v95;
    sub_100006910(&v126, v125);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v124 = v92;
    sub_10003A3E8(v125, 0x6E6F697461636F6CLL, 0xE800000000000000, v96);
    v128 = v124;
    v97 = *(v82 + 88);
    if (v97)
    {
      goto LABEL_64;
    }

LABEL_66:
    sub_100039E5C(0x6564496567616D69, 0xEF7265696669746ELL, &v126);
    sub_10000E784(&v126, &unk_1000F1DF0, &qword_1000B18F0);
  }

  else
  {
    sub_100039E5C(0x6E6F697461636F6CLL, 0xE800000000000000, &v126);
    sub_10000E784(&v126, &unk_1000F1DF0, &qword_1000B18F0);
    v97 = *(v82 + 88);
    if (!v97)
    {
      goto LABEL_66;
    }

LABEL_64:
    v98 = [v97 identifier];
    v99 = sub_1000AC06C();
    v101 = v100;

    v127 = &type metadata for String;
    *&v126 = v99;
    *(&v126 + 1) = v101;
    sub_100006910(&v126, v125);
    v102 = v128;
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v124 = v102;
    sub_10003A3E8(v125, 0x6564496567616D69, 0xEF7265696669746ELL, v103);
    v128 = v124;
  }

  if (*(v82 + 72) == 1)
  {
    return v128;
  }

  v105 = *(v82 + 64) / 60;
  v127 = &type metadata for Int;
  *&v126 = v105;
  sub_100006910(&v126, v125);
  v106 = v128;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v124 = v106;
  sub_10003A3E8(v125, 0x656E6F7A656D6974, 0xEE0074657366664FLL, v107);
  return v124;
}

uint64_t sub_1000118EC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100011970()
{
  result = qword_1000EF7D8;
  if (!qword_1000EF7D8)
  {
    sub_1000041E8(&qword_1000F1DD0, &unk_1000B07A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF7D8);
  }

  return result;
}

uint64_t sub_1000119D4(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = a2(v8);
    *a1 = v8;
  }

  v10 = *(v8 + 16);
  v12[0] = v8 + 32;
  v12[1] = v10;
  sub_100011A70(v12, a3, a4);
  return sub_1000AC5FC();
}

Swift::Int sub_100011A70(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = a1[1];
  result = sub_1000AC77C(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 <= 1)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v9 = sub_1000AC1CC();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
      v11[1] = v8;
      sub_100011C98(v11, v12, a1, v7);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_100011B90(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_100011B90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = v7;
    v16 = v6;
    while (1)
    {

      sub_1000AB7AC();
      v10 = v9;
      sub_1000AB7AC();
      v12 = v11;

      if (v10 >= v12)
      {
LABEL_4:
        ++v4;
        v6 = v16 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v13 = *v6;
      *v6 = v6[1];
      v6[1] = v13;
      --v6;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100011C98(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v98 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v101 = _swiftEmptyArrayStorage;
LABEL_88:
    v7 = *v98;
    if (!*v98)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1000A2CCC(v101);
      v101 = result;
    }

    v88 = *(v101 + 2);
    if (v88 >= 2)
    {
      while (1)
      {
        v89 = *v6;
        if (!*v6)
        {
          goto LABEL_124;
        }

        v6 = (v88 - 1);
        v90 = *&v101[16 * v88];
        v91 = *&v101[16 * v88 + 24];
        sub_100012340((v89 + 8 * v90), (v89 + 8 * *&v101[16 * v88 + 16]), (v89 + 8 * v91), v7);
        if (v5)
        {
        }

        if (v91 < v90)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_1000A2CCC(v101);
        }

        if (v88 - 2 >= *(v101 + 2))
        {
          goto LABEL_114;
        }

        v92 = &v101[16 * v88];
        *v92 = v90;
        *(v92 + 1) = v91;
        result = sub_1000A2C40(v88 - 1);
        v88 = *(v101 + 2);
        v6 = a3;
        if (v88 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v101 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v8;
    v10 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v94 = v5;
      v11 = *v6;
      v6 = (8 * v8);
      v12 = v11 + 8 * v8 + 16;

      sub_1000AB7AC();
      v14 = v13;
      sub_1000AB7AC();
      v16 = v15;

      v96 = v9;
      v17 = v9 + 2;
      while (v7 != v17)
      {
        v5 = v14 < v16;

        sub_1000AB7AC();
        v19 = v18;
        sub_1000AB7AC();
        v21 = v20;

        ++v17;
        v12 += 8;
        if (v14 < v16 == v19 >= v21)
        {
          v7 = v17 - 1;
          break;
        }
      }

      v9 = v96;
      if (v14 < v16)
      {
        if (v7 < v96)
        {
          goto LABEL_117;
        }

        if (v96 < v7)
        {
          v22 = 8 * v7 - 8;
          v23 = v7;
          v24 = v96;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v25 = *(v6 + v26);
              *(v6 + v26) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            ++v6;
          }

          while (v24 < v23);
        }
      }

      v10 = v7;
      v5 = v94;
      v6 = a3;
    }

    v27 = v6[1];
    v7 = v101;
    if (v10 < v27)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_116;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v9 + a4 >= v27)
        {
          v28 = v6[1];
        }

        else
        {
          v28 = v9 + a4;
        }

        if (v28 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v10 != v28)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000386A8(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v42 = *(v7 + 16);
    v41 = *(v7 + 24);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1000386A8((v41 > 1), v42 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v43;
    v44 = v7 + 16 * v42;
    *(v44 + 32) = v9;
    *(v44 + 40) = v10;
    v45 = *v98;
    if (!*v98)
    {
      goto LABEL_125;
    }

    v103 = v10;
    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v7 + 32);
          v48 = *(v7 + 40);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = (v7 + 16 * v43);
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_107;
          }

          v69 = (v7 + 32 + 16 * v46);
          v71 = *v69;
          v70 = v69[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v73 = (v7 + 16 * v43);
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_71:
        if (v68)
        {
          goto LABEL_106;
        }

        v76 = v7 + 16 * v46;
        v78 = *(v76 + 32);
        v77 = *(v76 + 40);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_109;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_78:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
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

        if (!*v6)
        {
          goto LABEL_122;
        }

        v85 = *(v7 + 32 + 16 * v84);
        v86 = *(v7 + 32 + 16 * v46 + 8);
        sub_100012340((*v6 + 8 * v85), (*v6 + 8 * *(v7 + 32 + 16 * v46)), (*v6 + 8 * v86), v45);
        if (v5)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1000A2CCC(v7);
        }

        if (v84 >= *(v7 + 16))
        {
          goto LABEL_101;
        }

        v87 = v7 + 16 * v84;
        *(v87 + 32) = v85;
        *(v87 + 40) = v86;
        result = sub_1000A2C40(v46);
        v43 = *(v7 + 16);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = v7 + 32 + 16 * v43;
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = (v7 + 16 * v43);
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_108;
      }

      if (v62 >= v54)
      {
        v80 = (v7 + 32 + 16 * v46);
        v82 = *v80;
        v81 = v80[1];
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_112;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v101 = v7;
    v7 = v6[1];
    v8 = v103;
    if (v103 >= v7)
    {
      goto LABEL_88;
    }
  }

  v95 = v5;
  v29 = v9;
  v30 = *v6;
  v31 = *v6 + 8 * v10 - 8;
  v97 = v29;
  v32 = v29 - v10;
  v99 = v28;
LABEL_30:
  v102 = v10;
  v33 = v32;
  v34 = v31;
  while (1)
  {

    sub_1000AB7AC();
    v36 = v35;
    sub_1000AB7AC();
    v38 = v37;

    if (v36 >= v38)
    {
LABEL_29:
      ++v10;
      v31 += 8;
      --v32;
      if (v102 + 1 != v99)
      {
        goto LABEL_30;
      }

      v10 = v99;
      v5 = v95;
      v9 = v97;
      v6 = a3;
      v7 = v101;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v39 = *v34;
    *v34 = v34[1];
    v34[1] = v39;
    --v34;
    if (__CFADD__(v33++, 1))
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

uint64_t sub_100012340(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v22 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v14 = &v4[8 * v12];
    if (v10 >= 8 && v22 > v6)
    {
LABEL_26:
      v31 = v22;
      v23 = v22 - 8;
      v5 -= 8;
      v24 = v14;
      v32 = v23;
      do
      {
        v25 = v5 + 8;
        v24 -= 8;

        sub_1000AB7AC();
        v27 = v26;
        sub_1000AB7AC();
        v29 = v28;

        if (v27 < v29)
        {
          if (v25 != v31)
          {
            *v5 = *v32;
          }

          if (v14 <= v4 || (v22 = v32, v32 <= v6))
          {
            v22 = v32;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v25 != v14)
        {
          *v5 = *v24;
        }

        v5 -= 8;
        v14 = v24;
      }

      while (v24 > v4);
      v14 = v24;
      v22 = v31;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v15 = __src;
      while (1)
      {

        sub_1000AB7AC();
        v17 = v16;
        sub_1000AB7AC();
        v19 = v18;

        if (v17 >= v19)
        {
          break;
        }

        v20 = v15;
        v21 = v6 == v15;
        v15 += 8;
        if (!v21)
        {
          goto LABEL_17;
        }

LABEL_18:
        v6 += 8;
        if (v4 >= v14 || v15 >= v5)
        {
          goto LABEL_20;
        }
      }

      v20 = v4;
      v21 = v6 == v4;
      v4 += 8;
      if (v21)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v6 = *v20;
      goto LABEL_18;
    }

LABEL_20:
    v22 = v6;
  }

LABEL_37:
  if (v22 != v4 || v22 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v22, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

unint64_t sub_100012634()
{
  result = qword_1000EF7E0[0];
  if (!qword_1000EF7E0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1000EF7E0);
  }

  return result;
}

uint64_t sub_100012680(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000126F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012770(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_100012AD0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000127E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_100012900(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_100012AD0()
{
  result = qword_1000EF868;
  if (!qword_1000EF868)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000EF868);
  }

  return result;
}

id sub_100012B64()
{
  v1 = OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3];
    sub_10000413C(&qword_1000EF8B0, &unk_1000B4000);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = UIFontDescriptorTraitsAttribute;
    sub_10000413C(&qword_1000EF8B8, &qword_1000B0600);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_1000AF0E0;
    *(v7 + 32) = UIFontWeightTrait;
    *(v7 + 40) = UIFontWeightSemibold;
    v8 = UIFontDescriptorTraitsAttribute;
    v9 = UIFontWeightTrait;
    v10 = sub_10004FA58(v7);
    swift_setDeallocating();
    sub_10000E784(v7 + 32, &qword_1000EF8C0, &qword_1000B0608);
    *(inited + 64) = sub_10000413C(&qword_1000EF8C8, &unk_1000B0610);
    *(inited + 40) = v10;
    sub_10004FB48(inited);
    swift_setDeallocating();
    sub_10000E784(inited + 32, &qword_1000EF8D0, qword_1000B4010);
    type metadata accessor for AttributeName(0);
    sub_100013968();
    isa = sub_1000ABFAC().super.isa;

    v12 = [v5 fontDescriptorByAddingAttributes:isa];

    v13 = [objc_opt_self() fontWithDescriptor:v12 size:15.0];
    v14 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle3];
    v15 = [v14 scaledFontForFont:v13];

    [v4 setFont:v15];
    v16 = [objc_opt_self() labelColor];
    [v4 setTextColor:v16];

    [v4 setNumberOfLines:0];
    v17 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

id sub_100012E84()
{
  v1 = OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
    v6 = [objc_opt_self() fontWithDescriptor:v5 size:11.0];
    v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleSubheadline];
    v8 = [v7 scaledFontForFont:v6];

    [v4 setFont:v8];
    v9 = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor:v9];

    [v4 setNumberOfLines:0];
    v10 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_10001301C()
{
  *&v0[OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___titleLabel] = 0;
  *&v0[OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___subtitleLabel] = 0;
  *&v0[OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___separatorView] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MacTableHeaderView();
  v1 = objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v2 = qword_1000EEDC0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  [v3 setBackgroundColor:qword_1000FBEF0];
  v4 = sub_100012B64();
  [v3 addSubview:v4];

  v5 = sub_100012E84();
  [v3 addSubview:v5];

  v6 = sub_10001380C();
  [v3 addSubview:v6];

  sub_1000131EC();
  return v3;
}

void sub_1000131EC()
{
  v1 = sub_100012B64();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v2 = OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___titleLabel;
  v3 = [*&v0[OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___titleLabel] topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:22.0];

  [v5 setActive:1];
  v6 = [*&v0[v2] leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:16.0];

  [v8 setActive:1];
  v9 = [*&v0[v2] trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-16.0];

  [v11 setActive:1];
  v12 = sub_100012E84();
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___subtitleLabel;
  v14 = [*&v0[OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___subtitleLabel] topAnchor];
  v15 = [*&v0[v2] bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:2.0];

  [v16 setActive:1];
  v17 = [*&v0[v13] leadingAnchor];
  v18 = [v0 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:16.0];

  [v19 setActive:1];
  v20 = [*&v0[v13] trailingAnchor];
  v21 = [v0 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-16.0];

  [v22 setActive:1];
  v23 = sub_10001380C();
  v24 = [v23 topAnchor];

  v25 = [*&v0[v13] bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:12.0];

  [v26 setActive:1];
  v27 = OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___separatorView;
  v28 = *&v0[OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___separatorView];
  v29 = v0;
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [*&v0[v27] heightAnchor];
  v31 = [v29 traitCollection];
  [v31 displayScale];
  v33 = v32;

  if (v33 <= 0.0)
  {
    v34 = [objc_opt_self() mainScreen];
    [v34 scale];
    v33 = v35;

    if (v33 <= 0.0)
    {
      v33 = 1.0;
    }
  }

  v36 = [v30 constraintEqualToConstant:1.0 / v33];

  [v36 setActive:1];
  v37 = [*&v0[v27] bottomAnchor];
  v38 = [v29 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:0.0];

  [v39 setActive:1];
  v40 = [*&v0[v27] leadingAnchor];
  v41 = [v29 leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:16.0];

  [v42 setActive:1];
  v43 = [*&v0[v27] trailingAnchor];
  v44 = [v29 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-16.0];

  [v45 setActive:1];
}

id sub_10001380C()
{
  v1 = OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business18MacTableHeaderView____lazy_storage___separatorView);
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000138B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MacTableHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100013968()
{
  result = qword_1000EF1A0;
  if (!qword_1000EF1A0)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF1A0);
  }

  return result;
}

Swift::Int sub_1000139D8()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC88C(v1);
  return sub_1000AC8CC();
}

Swift::Int sub_100013A4C()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_1000AC88C(v1);
  return sub_1000AC8CC();
}

id sub_100013AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_horizontalStackView;
  *&v3[v7] = [objc_allocWithZone(UIStackView) init];
  v8 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_verticalStackView;
  *&v3[v8] = [objc_allocWithZone(UIStackView) init];
  v9 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_titleLabel;
  *&v3[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_subtitleLabel;
  *&v3[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listImageView;
  *&v3[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView;
  *&v3[v12] = [objc_allocWithZone(UIImageView) init];
  v3[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showingIcon] = 0;
  v3[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_multipleSelectionEnabled] = 1;
  v3[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showsSeparator] = 1;
  v13 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_notSelectedIconTintColor;
  sub_100005A24(0, &qword_1000EF998, UIColor_ptr);
  *&v3[v13] = sub_1000AC39C(0.78039, 0.78039, 0.8, 1.0);
  v14 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_selectedIconTintColor;
  *&v3[v14] = sub_1000AC39C(0.086275, 0.50196, 0.98431, 1.0);
  v15 = &v3[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_notSelectedIconMultiString];
  *v15 = 0xD000000000000027;
  *(v15 + 1) = 0x80000001000B67A0;
  v16 = &v3[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_selectedIconMultiString];
  *v16 = 0xD000000000000023;
  *(v16 + 1) = 0x80000001000B67D0;
  v17 = &v3[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_checkmarkImageName];
  *v17 = 0x72616D6B63656863;
  *(v17 + 1) = 0xE90000000000006BLL;
  *&v3[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listItem] = 0;
  *&v3[OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView] = 0;
  if (a3)
  {
    v18 = sub_1000AC02C();
  }

  else
  {
    v18 = 0;
  }

  v23.receiver = v4;
  v23.super_class = type metadata accessor for ListPickerTableViewCell();
  v19 = objc_msgSendSuper2(&v23, "initWithStyle:reuseIdentifier:", a1, v18);

  v20 = UIAccessibilityTraitButton;
  v21 = v19;
  [v21 setAccessibilityTraits:v20];
  sub_100013DF4();
  sub_1000141DC();

  return v21;
}

void sub_100013DF4()
{
  if (sub_10002CE60() == 2)
  {
    v1 = [objc_opt_self() systemBackgroundColor];
    [v0 setBackgroundColor:v1];
  }

  v2 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_titleLabel];
  v3 = sub_10002CE60();
  v4 = objc_opt_self();
  v5 = &UIFontTextStyleHeadline;
  if ((v3 & 0xFE) != 0)
  {
    v5 = &UIFontTextStyleTitle2;
  }

  v6 = [v4 preferredFontForTextStyle:*v5];
  [v2 setFont:v6];

  v7 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_subtitleLabel];
  v8 = sub_10002CE60();
  v9 = objc_opt_self();
  v10 = &UIFontTextStyleSubheadline;
  if ((v8 & 0xFE) != 0)
  {
    v10 = &UIFontTextStyleTitle3;
  }

  v11 = [v9 preferredFontForTextStyle:*v10];
  [v7 setFont:v11];

  v12 = objc_opt_self();
  v13 = [v12 labelColor];
  [v2 setTextColor:v13];

  v14 = [v12 secondaryLabelColor];
  [v7 setTextColor:v14];

  [v2 setNumberOfLines:0];
  [v7 setNumberOfLines:0];
  v15 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listImageView];
  v16 = [v15 layer];
  [v16 setCornerRadius:4.0];

  [v15 setContentMode:2];
  v17 = [v15 layer];
  [v17 setMasksToBounds:1];

  v18 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView];
  [v18 setContentMode:4];
  v19 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_verticalStackView];
  [v19 setAxis:1];
  [v19 setAlignment:1];
  [v19 setDistribution:0];
  [v19 addArrangedSubview:v2];
  [v19 addArrangedSubview:v7];
  v20 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_horizontalStackView];
  [v20 setAxis:0];
  [v20 setAlignment:3];
  [v20 setDistribution:0];
  [v20 setSpacing:15.0];
  [v20 addArrangedSubview:v15];
  [v20 addArrangedSubview:v19];
  [v20 addArrangedSubview:v18];
  v21 = [v0 contentView];
  [v21 addSubview:v20];

  v22 = [v0 contentView];
  v23 = sub_100015000();
  [v22 addSubview:v23];
}

void sub_1000141DC()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_horizontalStackView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 topAnchor];
  v3 = [v0 contentView];
  v4 = [v3 topAnchor];

  v5 = [v2 constraintEqualToAnchor:v4 constant:20.0];
  [v5 setActive:1];

  v6 = [v1 bottomAnchor];
  v7 = [v0 contentView];
  v8 = [v7 bottomAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:-20.0];
  [v9 setActive:1];

  v10 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listImageView];
  v11 = [v10 heightAnchor];
  v12 = [v11 constraintEqualToConstant:60.0];

  [v12 setActive:1];
  v13 = [v10 widthAnchor];
  v14 = [v10 heightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  [v15 setActive:1];
  v16 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView];
  v17 = [v16 heightAnchor];
  v18 = [v17 constraintEqualToConstant:28.0];

  [v18 setActive:1];
  v19 = [v16 widthAnchor];
  v20 = [v16 heightAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  [v21 setActive:1];
  LODWORD(v21) = sub_10002CE60();
  v22 = [v1 leftAnchor];
  v23 = [v0 contentView];
  v24 = v23;
  if (v21 == 2)
  {
    v25 = [v23 leftAnchor];

    v26 = sub_10002CE60();
    v27 = 16.0;
    if ((v26 & 0xFE) == 0)
    {
      v27 = 20.0;
    }

    v28 = [v22 constraintEqualToAnchor:v25 constant:v27];

    [v28 setActive:1];
    v29 = [v1 rightAnchor];
    v30 = [v0 contentView];
    v31 = [v30 rightAnchor];

    if ((sub_10002CE60() & 0xFE) != 0)
    {
      v32 = -16.0;
    }

    else
    {
      v32 = -20.0;
    }

    v33 = [v29 constraintEqualToAnchor:v31 constant:v32];

    [v33 setActive:1];
    v66 = [v0 contentView];
    v34 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_verticalStackView];
    v35 = sub_10002CE60();
    v36 = [v0 contentView];
    v37 = sub_100015000();
    [v37 setTranslatesAutoresizingMaskIntoConstraints:0];

    v38 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView;
    v39 = [*&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView] heightAnchor];
    v40 = [v0 traitCollection];
    [v40 displayScale];
    v42 = v41;

    if (v42 <= 0.0)
    {
      v43 = [objc_opt_self() mainScreen];
      [v43 scale];
      v42 = v44;

      if (v42 <= 0.0)
      {
        v42 = 1.0;
      }
    }

    v45 = [v39 constraintEqualToConstant:1.0 / v42];

    [v45 setActive:1];
    v46 = [*&v0[v38] bottomAnchor];
    v47 = [v66 bottomAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:0.0];

    [v48 setActive:1];
    v49 = [*&v0[v38] leadingAnchor];
    v50 = [v34 leadingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:0.0];

    [v51 setActive:1];
    v52 = [*&v0[v38] trailingAnchor];
    v53 = [v36 trailingAnchor];
    v54 = -20.0;
    if ((v35 & 0xFE) != 0)
    {
      v54 = -16.0;
    }

    v55 = [v52 constraintEqualToAnchor:v53 constant:v54];

    [v55 setActive:1];
  }

  else
  {
    v56 = [v23 layoutMarginsGuide];

    v57 = [v56 leftAnchor];
    v58 = sub_10002CE60();
    v59 = 15.0;
    if ((v58 & 0xFE) == 0)
    {
      v59 = 0.0;
    }

    v60 = [v22 constraintEqualToAnchor:v57 constant:v59];

    [v60 setActive:1];
    v61 = [v1 rightAnchor];
    v62 = [v0 contentView];
    v63 = [v62 layoutMarginsGuide];

    v64 = [v63 rightAnchor];
    v65 = [v61 constraintEqualToAnchor:v64];

    [v65 setActive:1];
    v66 = [v0 contentView];
    sub_100090114(1, v66);
  }
}

void sub_100014A48()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listItem];
  if (v2)
  {
    v3 = *&v1[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_titleLabel];

    v4 = sub_1000AC02C();

    [v3 setText:v4];

    v5 = *&v1[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_subtitleLabel];
    if (*(v2 + 64))
    {

      v6 = sub_1000AC02C();

      [v5 setText:v6];

      [v5 setHidden:0];
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_subtitleLabel] setHidden:1];
    }

    v7 = sub_1000600B0();
    v8 = *&v1[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listImageView];
    if (v7)
    {
      v9 = v7;
      [*&v1[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listImageView] setImage:v7];
      [v8 setHidden:0];
      v10 = *(v2 + 88);
      if (!v10 || (v11 = [v10 imageDescription]) == 0)
      {
        v11 = 0;
      }

      [v8 setAccessibilityLabel:v11];

      sub_10000413C(&qword_1000F06D0, &unk_1000B06D0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1000B0620;
      v13 = sub_100005A24(0, &qword_1000EF988, UILabel_ptr);
      *(v12 + 32) = v3;
      *(v12 + 88) = v13;
      *(v12 + 56) = v13;
      *(v12 + 64) = v5;
      *(v12 + 120) = sub_100005A24(0, &qword_1000EF990, UIImageView_ptr);
      *(v12 + 96) = v8;
      v14 = v3;
      v15 = v5;
      v16 = v8;
      v17.super.isa = sub_1000AC18C().super.isa;

      [v1 setAccessibilityElements:v17.super.isa];
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listImageView] setHidden:1];
      [v8 setAccessibilityLabel:0];
      sub_10000413C(&qword_1000F06D0, &unk_1000B06D0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1000AF0F0;
      v19 = sub_100005A24(0, &qword_1000EF988, UILabel_ptr);
      *(v18 + 32) = v3;
      *(v18 + 88) = v19;
      *(v18 + 56) = v19;
      *(v18 + 64) = v5;
      v20 = v3;
      v21 = v5;
      v17.super.isa = sub_1000AC18C().super.isa;

      [v1 setAccessibilityElements:v17.super.isa];
    }
  }
}

void sub_100014D78()
{
  [v0 setSelected:{objc_msgSend(v0, "isSelected") ^ 1}];
  v1 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showingIcon;
  v2 = *&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView];
  if (v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showingIcon])
  {
    if (v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_multipleSelectionEnabled])
    {
      v3 = objc_opt_self();
      v4 = sub_1000AC02C();
      v5 = [v3 kitImageNamed:v4];

      if (v5)
      {
        [v5 size];
        v6 = [v3 _tintedImageForSize:*&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_notSelectedIconTintColor] withTint:0 effectsImage:v5 maskImage:0 style:?];
      }

      else
      {
        v6 = 0;
      }

      [v2 setImage:v6];
    }

    else
    {
      [*&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView] setImage:0];
    }

    v13 = 0;
  }

  else
  {
    if (v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_multipleSelectionEnabled])
    {
      v7 = objc_opt_self();
      v8 = sub_1000AC02C();
      v9 = [v7 kitImageNamed:v8];

      if (v9)
      {
        [v9 size];
        v10 = [v7 _tintedImageForSize:*&v0[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_selectedIconTintColor] withTint:0 effectsImage:v9 maskImage:0 style:?];
      }

      else
      {
        v10 = 0;
      }

      [v2 setImage:v10];
    }

    else
    {
      v11 = sub_1000AC02C();
      v12 = [objc_opt_self() systemImageNamed:v11];

      [v2 setImage:v12];
    }

    v13 = 1;
  }

  v0[v1] = v13;
}

id sub_100015000()
{
  v1 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView);
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100015078(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ListPickerTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for IMBBubbleType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IMBBubbleType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001534C()
{
  result = qword_1000EF980;
  if (!qword_1000EF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF980);
  }

  return result;
}

void sub_1000153A0()
{
  v1 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_horizontalStackView;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_verticalStackView;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  v3 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_subtitleLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listImageView;
  *(v0 + v5) = [objc_allocWithZone(UIImageView) init];
  v6 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView;
  *(v0 + v6) = [objc_allocWithZone(UIImageView) init];
  *(v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showingIcon) = 0;
  *(v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell_multipleSelectionEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showsSeparator) = 1;
  v7 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_notSelectedIconTintColor;
  sub_100005A24(0, &qword_1000EF998, UIColor_ptr);
  *(v0 + v7) = sub_1000AC39C(0.78039, 0.78039, 0.8, 1.0);
  v8 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_selectedIconTintColor;
  *(v0 + v8) = sub_1000AC39C(0.086275, 0.50196, 0.98431, 1.0);
  v9 = (v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell_notSelectedIconMultiString);
  *v9 = 0xD000000000000027;
  v9[1] = 0x80000001000B67A0;
  v10 = (v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell_selectedIconMultiString);
  *v10 = 0xD000000000000023;
  v10[1] = 0x80000001000B67D0;
  v11 = (v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell_checkmarkImageName);
  *v11 = 0x72616D6B63656863;
  v11[1] = 0xE90000000000006BLL;
  *(v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView) = 0;
  sub_1000AC63C();
  __break(1u);
}

void sub_1000155F4(uint64_t a1)
{
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_1000AC60C();
  v4 = [v3 constraintWithItem:v1 attribute:3 relatedBy:0 toItem:a1 attribute:3 multiplier:1.0 constant:0.0];
  sub_1000AC5EC();
  sub_1000AC61C();
  sub_1000AC62C();
  sub_1000AC5FC();
  v5 = [v3 constraintWithItem:v1 attribute:4 relatedBy:0 toItem:a1 attribute:4 multiplier:1.0 constant:0.0];
  sub_1000AC5EC();
  sub_1000AC61C();
  sub_1000AC62C();
  sub_1000AC5FC();
  v6 = [v3 constraintWithItem:v1 attribute:5 relatedBy:0 toItem:a1 attribute:5 multiplier:1.0 constant:0.0];
  sub_1000AC5EC();
  sub_1000AC61C();
  sub_1000AC62C();
  sub_1000AC5FC();
  v7 = [v3 constraintWithItem:v1 attribute:6 relatedBy:0 toItem:a1 attribute:6 multiplier:1.0 constant:0.0];
  sub_1000AC5EC();
  sub_1000AC61C();
  sub_1000AC62C();
  sub_1000AC5FC();
  sub_10000F840();
  isa = sub_1000AC18C().super.isa;

  [v3 activateConstraints:isa];
}

void sub_1000158C4(Swift::Float a1, Swift::Float a2, Swift::Float a3, uint64_t a4, void *a5)
{
  sub_100015C6C();
  isa = sub_1000AC39C(a1, a2, a3, 1.0).super.isa;
  v10 = [(objc_class *)isa CGColor];

  *a5 = v10;
}

void sub_10001594C(double a1, double a2, double a3, double a4)
{
  v18.receiver = v4;
  v18.super_class = type metadata accessor for IMBAuthenticationTapIndicator();
  v9 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v10 = [v9 layer];
  [v10 setMasksToBounds:1];

  [v9 _setContinuousCornerRadius:8.0];
  v11 = objc_opt_self();
  v12 = [v11 preferredFontForTextStyle:UIFontTextStyleCaption1];
  v13 = [v12 fontDescriptor];
  v14 = [v13 fontDescriptorWithSymbolicTraits:2];

  if (v14)
  {
    v15 = [v11 fontWithDescriptor:v14 size:0.0];

    [v9 setFont:v15];
    [v9 setTextAlignment:1];
    v16 = [objc_opt_self() whiteColor];
    [v9 setTextColor:v16];

    v17 = [v9 layer];
    if (qword_1000EED80 != -1)
    {
      swift_once();
    }

    [v17 setBackgroundColor:qword_1000FBE88];
  }

  else
  {
    __break(1u);
  }
}

id sub_100015C10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBAuthenticationTapIndicator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100015C6C()
{
  result = qword_1000EF998;
  if (!qword_1000EF998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000EF998);
  }

  return result;
}

uint64_t sub_100015CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for BubbleView(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100015DC8()
{
  v1 = v0;
  type metadata accessor for BubbleHostingView();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = *(v0 + *((swift_isaMask & *v0) + 0x68));
  v3 = [v2 view];
  v4 = v14;
  v5 = v3;
  v6 = OBJC_IVAR____TtC8Business17BubbleHostingView_subview;
  v7 = *&v14[OBJC_IVAR____TtC8Business17BubbleHostingView_subview];
  if (v7 && (v8 = [v7 constraints], sub_10000F840(), sub_1000AC19C(), v8, v9 = objc_opt_self(), isa = sub_1000AC18C().super.isa, , objc_msgSend(v9, "deactivateConstraints:", isa), isa, v4 = v14, (v11 = *&v14[v6]) != 0))
  {
    [v11 removeFromSuperview];
    v4 = v14;
    v12 = *&v14[v6];
  }

  else
  {
    v12 = 0;
  }

  *&v4[v6] = v5;
  v13 = v5;

  if (v13)
  {
    [v14 addSubview:v13];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_1000155F4(v14);
  }

  [v1 setView:v14];
  [v1 addChildViewController:v2];
  [v2 didMoveToParentViewController:v1];
}

void sub_100015FBC(void *a1)
{
  v1 = a1;
  sub_100015DC8();
}

void sub_100016004(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_100016234(v5, v6, v7, v8);
}

id sub_100016074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for BubbleHostingController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1000160E4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((swift_isaMask & *a1) + 0x60);
  v6 = type metadata accessor for BubbleView(0, *((swift_isaMask & *a1) + 0x50), *((swift_isaMask & *a1) + 0x58), a4);
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  v7 = *&a1[*((swift_isaMask & *a1) + 0x68)];
}

id sub_1000163BC(void *a1, void *a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8Business19PluginBubbleContext_appController;
  *&v3[OBJC_IVAR____TtC8Business19PluginBubbleContext_appController] = a1;
  v6 = OBJC_IVAR____TtC8Business19PluginBubbleContext_conversation;
  *&v3[OBJC_IVAR____TtC8Business19PluginBubbleContext_conversation] = a2;
  v7 = a1;
  v8 = a2;
  v9 = [v8 selectedMessage];
  if (v9 && (v10 = v9, type metadata accessor for IMBMessage(), (v11 = sub_1000866E4(v10)) != 0))
  {
    *&v3[OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage] = v11;
    v14.receiver = v3;
    v14.super_class = type metadata accessor for PluginBubbleContext();
    v12 = objc_msgSendSuper2(&v14, "init");

    return v12;
  }

  else
  {

    type metadata accessor for PluginBubbleContext();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

void sub_1000164C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  v8 = sub_1000AC02C();
  [v7 setCaption:v8];

  v9 = *(v4 + OBJC_IVAR____TtC8Business19PluginBubbleContext_conversation);
  v10 = [v9 selectedMessage];
  v11 = [v10 session];

  if (!v11)
  {
    v11 = [objc_allocWithZone(MSSession) init];
  }

  v12 = [objc_allocWithZone(MSMessage) initWithSession:v11];

  v13 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v7];
  [v12 setLayout:v13];

  v14 = sub_1000AC02C();
  [v12 setSummaryText:v14];

  v15 = *(v4 + OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage);
  v16 = type metadata accessor for _PluginBubbleContextDictionaryWrapper();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC8Business37_PluginBubbleContextDictionaryWrapper_dictionaryValue] = a2;
  v23.receiver = v17;
  v23.super_class = v16;
  v18 = v15;
  v19 = v12;
  v20 = v9;

  v21 = objc_msgSendSuper2(&v23, "init");
  v24 = v18;
  v25 = v19;
  v26 = v20;
  v27 = 0;
  v28 = a1;
  v29 = v21;
  v22 = a1;
  sub_100036FA8(1);
}

uint64_t sub_1000166D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_100016774(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10001682C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v15 = *(*v8 + OBJC_IVAR____TtC8Business19PluginBubbleContext_appController);
  isa = sub_1000AC18C().super.isa;
  v17 = sub_1000AC18C().super.isa;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v20[4] = sub_1000169C4;
  v20[5] = v18;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1000166D8;
  v20[3] = &unk_1000DAEF0;
  v19 = _Block_copy(v20);

  [v15 _presentContextMenuWithButtonTitles:isa imageNames:v17 buttonFrame:v19 completion:{a5, a6, a7, a8}];
  _Block_release(v19);
}

uint64_t sub_10001698C()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1000169EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100016A28()
{
  result = sub_1000AC06C();
  qword_1000FBE98 = result;
  unk_1000FBEA0 = v1;
  return result;
}

void sub_100016A58(void *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 messageData];
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = v8;
  v10 = [v8 jsonDictionary];

  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = sub_1000ABFBC();

  if (qword_1000EED90 == -1)
  {
    if (!*(v11 + 16))
    {
LABEL_23:

      goto LABEL_24;
    }
  }

  else
  {
    swift_once();
    if (!*(v11 + 16))
    {
      goto LABEL_23;
    }
  }

  v12 = sub_10004F0CC(qword_1000FBE98, unk_1000FBEA0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1000068B4(*(v11 + 56) + 32 * v12, &v49);

  v14 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    sub_1000170E0();
    swift_allocError();
    v22 = 1;
    goto LABEL_25;
  }

  v15 = v47;
  if (!*(v47 + 16) || (v16 = sub_10004F0CC(0x656C746974, 0xE500000000000000), (v17 & 1) == 0) || (sub_1000068B4(*(v15 + 56) + 32 * v16, &v49), (swift_dynamicCast() & 1) == 0))
  {

    sub_1000170E0();
    swift_allocError();
    v22 = 2;
LABEL_25:
    *v21 = v22;
    swift_willThrow();
    goto LABEL_26;
  }

  v18 = *(&v47 + 1);
  a2[6] = v47;
  a2[7] = v18;
  if (!*(v15 + 16) || (v60 = v18, v19 = sub_10004F0CC(0xD000000000000017, 0x80000001000B6A80), (v20 & 1) == 0) || (sub_1000068B4(*(v15 + 56) + 32 * v19, &v49), (swift_dynamicCast() & 1) == 0))
  {

    sub_1000170E0();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();

LABEL_26:

    return;
  }

  *(&v48 + 1) = v14;
  sub_100017134();
  sub_100017188();
  sub_1000ABA3C();
  if (v2)
  {

    sub_10000E738(&v47);

    return;
  }

  sub_10000E738(&v47);
  v59[6] = v55;
  v59[7] = v56;
  v59[8] = v57;
  v59[9] = v58;
  v59[2] = v51;
  v59[3] = v52;
  v59[4] = v53;
  v59[5] = v54;
  v59[0] = v49;
  v59[1] = v50;
  sub_1000518E0(v7);
  sub_1000171DC(v59);
  v24 = type metadata accessor for BIAPayload(0);
  sub_10001727C(v7, a2 + *(v24 + 36));
  v25 = *(v15 + 16);
  if (v25)
  {
    v26 = sub_10004F0CC(0x636E657265666572, 0xEB00000000644965);
    if (v27)
    {
      sub_1000068B4(*(v15 + 56) + 32 * v26, &v49);
      sub_100017348(&v49, &v47);
      if (*(&v48 + 1))
      {
        if (swift_dynamicCast())
        {
          v25 = v45;
          v28 = v46;
          goto LABEL_29;
        }
      }

      else
      {
        sub_1000172E0(&v47);
      }

      sub_1000170E0();
      swift_allocError();
      *v44 = 4;
      swift_willThrow();

      sub_1000172E0(&v49);

      sub_1000173B8(a2 + *(v24 + 36));
      return;
    }

    v25 = 0;
  }

  v28 = 0;
  v49 = 0u;
  v50 = 0u;
LABEL_29:
  *a2 = v25;
  a2[1] = v28;
  v29 = *(v15 + 16);
  if (!v29)
  {
LABEL_34:
    v33 = 0;
    goto LABEL_35;
  }

  v30 = sub_10004F0CC(0x656C746974627573, 0xE800000000000000);
  if ((v31 & 1) == 0)
  {
    v29 = 0;
    goto LABEL_34;
  }

  sub_1000068B4(*(v15 + 56) + 32 * v30, &v47);
  v32 = swift_dynamicCast();
  v29 = v45;
  v33 = v46;
  if (!v32)
  {
    v29 = 0;
    v33 = 0;
  }

LABEL_35:
  a2[8] = v29;
  a2[9] = v33;
  v34 = *(v15 + 16);
  if (v34)
  {
    v35 = sub_10004F0CC(1852793705, 0xE400000000000000);
    if (v36)
    {
      sub_1000068B4(*(v15 + 56) + 32 * v35, &v47);
      v37 = swift_dynamicCast();
      v34 = v45;
      v38 = v46;
      if (!v37)
      {
        v34 = 0;
        v38 = 0;
      }

      goto LABEL_41;
    }

    v34 = 0;
  }

  v38 = 0;
LABEL_41:
  a2[2] = v34;
  a2[3] = v38;
  if (*(v15 + 16) && (v39 = sub_10004F0CC(1869768040, 0xE400000000000000), (v40 & 1) != 0))
  {
    sub_1000068B4(*(v15 + 56) + 32 * v39, &v47);
  }

  else
  {

    v47 = 0u;
    v48 = 0u;
  }

  sub_1000172E0(&v49);
  if (*(&v48 + 1))
  {
    v41 = swift_dynamicCast();
    v42 = v45;
    v43 = v46;
    if (!v41)
    {
      v42 = 0;
      v43 = 0;
    }
  }

  else
  {
    sub_1000172E0(&v47);
    v42 = 0;
    v43 = 0;
  }

  a2[4] = v42;
  a2[5] = v43;
}

unint64_t sub_1000170E0()
{
  result = qword_1000EFAB8;
  if (!qword_1000EFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFAB8);
  }

  return result;
}

unint64_t sub_100017134()
{
  result = qword_1000EFAC0;
  if (!qword_1000EFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFAC0);
  }

  return result;
}

unint64_t sub_100017188()
{
  result = qword_1000EFAC8;
  if (!qword_1000EFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFAC8);
  }

  return result;
}

uint64_t type metadata accessor for BIAPayload(uint64_t a1)
{
  result = qword_1000EFB28;
  if (!qword_1000EFB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001727C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000172E0(uint64_t a1)
{
  v2 = sub_10000413C(&unk_1000F1DF0, &qword_1000B18F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100017348(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&unk_1000F1DF0, &qword_1000B18F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000173B8(uint64_t a1)
{
  v2 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for BIAPayloadBCMessageParseError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BIAPayloadBCMessageParseError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100017580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100017640(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000176E4(uint64_t a1)
{
  sub_10001777C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for BIABubbleViewModelUserInteractionParadigm(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001777C()
{
  if (!qword_1000EFB38)
  {
    v0 = sub_1000AC42C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000EFB38);
    }
  }
}

unint64_t sub_1000177D0()
{
  result = qword_1000EFB78;
  if (!qword_1000EFB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFB78);
  }

  return result;
}

void *sub_10001789C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_15:
    v7 = _swiftEmptyArrayStorage;
LABEL_16:
    v11 = *(v1 + 16);
    v12 = *(v1 + 24);
    v19 = &type metadata for String;
    v18._countAndFlagsBits = v11;
    v18._object = v12;
    sub_100006910(&v18, v17);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v17, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
    v14 = Date.toUTCString()();
    v19 = &type metadata for String;
    v18 = v14;
    sub_100006910(&v18, v17);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v17, 1702125924, 0xE400000000000000, v15);
    v19 = sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
    v18._countAndFlagsBits = v7;
    sub_100006910(&v18, v17);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v17, 0x746F6C73656D6974, 0xE900000000000073, v16);
    return _swiftEmptyDictionarySingleton;
  }

  result = sub_1000AC65C();
  v5 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v5 >= 1)
  {

    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        sub_1000AC5AC();
      }

      else
      {
      }

      v8 = sub_10004D454();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1000387AC(0, v7[2] + 1, 1, v7);
      }

      v10 = v7[2];
      v9 = v7[3];
      if (v10 >= v9 >> 1)
      {
        v7 = sub_1000387AC((v9 > 1), v10 + 1, 1, v7);
      }

      ++v6;

      v7[2] = v10 + 1;
      v7[v10 + 4] = v8;
    }

    while (v5 != v6);

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100017B30()
{

  v1 = OBJC_IVAR____TtC8Business15IMBProposedDate_date;
  v2 = sub_1000AB7EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IMBProposedDate(uint64_t a1)
{
  result = qword_1000EFBA8;
  if (!qword_1000EFBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100017C38(uint64_t a1)
{
  result = sub_1000AB7EC();
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

id sub_100017D0C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_1000AC02C();
  v4 = [v2 kitImageNamed:v3];

  v5 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v4 style:0 target:a1 action:"previousPage"];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 mainBundle];
  v12._countAndFlagsBits = 0xE000000000000000;
  v13._countAndFlagsBits = 1262698818;
  v13._object = 0xE400000000000000;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v9.super.isa = v8;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_1000AB61C(v13, v14, v9, v15, 0, v12);

  v10 = sub_1000AC02C();

  [v7 setAccessibilityLabel:v10];

  return v7;
}

id sub_100017E90(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_1000AC02C();
  v4 = [v2 kitImageNamed:v3];

  v5 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v4 style:0 target:a1 action:"nextPage"];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 mainBundle];
  v12._countAndFlagsBits = 0xE000000000000000;
  v13._countAndFlagsBits = 0x44524157524F46;
  v13._object = 0xE700000000000000;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v9.super.isa = v8;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_1000AB61C(v13, v14, v9, v15, 0, v12);

  v10 = sub_1000AC02C();

  [v7 setAccessibilityLabel:v10];

  return v7;
}

id sub_10001801C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100018080(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_1000AC02C();
  v4 = [v2 kitImageNamed:v3];

  v5 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v4 style:0 target:a1 action:"refresh"];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 mainBundle];
  v12._countAndFlagsBits = 0xE000000000000000;
  v13._countAndFlagsBits = 0x44414F4C4552;
  v13._object = 0xE600000000000000;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v9.super.isa = v8;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_1000AB61C(v13, v14, v9, v15, 0, v12);

  v10 = sub_1000AC02C();

  [v7 setAccessibilityLabel:v10];

  return v7;
}

id sub_1000181E8()
{
  v1 = OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___doneButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___doneButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___doneButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ABSBarButtonItem()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10001825C()
{
  *&v0[OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___previousButtonItem] = 0;
  *&v0[OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___nextButtonItem] = 0;
  *&v0[OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___refreshButtonItem] = 0;
  *&v0[OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___doneButtonItem] = 0;
  *&v0[OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___secureContentMessageItem] = 0;
  *&v0[OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar_actionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for IMBWebNavigationToolbar();
  v1 = objc_msgSendSuper2(&v3, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10001836C();

  return v1;
}

void sub_10001836C()
{
  if (sub_10002CE60() == 2)
  {
    v1 = [objc_opt_self() buttonWithType:1];
    [v1 addTarget:v0 action:"done" forControlEvents:64];
    v2 = sub_1000181E8();
    [v2 setCustomView:v1];

    v3 = OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___doneButtonItem;
    v4 = *&v0[OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___doneButtonItem];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 mainBundle];
    v17._countAndFlagsBits = 0xE000000000000000;
    v20._countAndFlagsBits = 1162760004;
    v20._object = 0xE400000000000000;
    v21.value._countAndFlagsBits = 0;
    v21.value._object = 0;
    v8.super.isa = v7;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_1000AB61C(v20, v21, v8, v22, 0, v17);

    v9 = sub_1000AC02C();

    [v6 setTitle:v9];

    [v0 setClipsToBounds:1];
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000B08F0;
    *(v10 + 32) = sub_100017CEC();
    v11 = objc_opt_self();
    *(v10 + 40) = [v11 fixedSpaceItemOfWidth:40.0];
    *(v10 + 48) = sub_100017E70();
    *(v10 + 56) = [v11 fixedSpaceItemOfWidth:40.0];
    *(v10 + 64) = sub_100017FFC();
    v12 = [v11 flexibleSpaceItem];
    v13 = *&v0[v3];
    *(v10 + 72) = v12;
    *(v10 + 80) = v13;
    v14 = v13;
  }

  else
  {
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000B08E0;
    *(v15 + 32) = sub_100017CEC();
    v16 = objc_opt_self();
    *(v15 + 40) = [v16 fixedSpaceItemOfWidth:60.0];
    *(v15 + 48) = sub_100017E70();
    *(v15 + 56) = [v16 flexibleSpaceItem];
    *(v15 + 64) = sub_100017FFC();
  }

  sub_100018E48();
  isa = sub_1000AC18C().super.isa;

  [v0 setItems:isa animated:0];
}

void sub_100018688(uint64_t a1)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v1 = qword_1000FC008;
  v2 = sub_1000AC2BC();
  sub_1000ABA5C("IMBWebToolbar: previous", 23, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1000AC2BC();
    sub_1000ABA5C("IMBWebViewController: previous", 30, 2, &_mh_execute_header, v1, v5, _swiftEmptyArrayStorage);
    v6 = [v4 webkitView];
    v7 = [v6 canGoBack];

    if (v7)
    {
      v9 = [v4 webkitView];
      v8 = [v9 goBack];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_10001886C(uint64_t a1)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v1 = qword_1000FC008;
  v2 = sub_1000AC2BC();
  sub_1000ABA5C("IMBWebToolbar: next", 19, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1000AC2BC();
    sub_1000ABA5C("IMBWebViewController: next", 26, 2, &_mh_execute_header, v1, v5, _swiftEmptyArrayStorage);
    v6 = [v4 webkitView];
    v7 = [v6 canGoForward];

    if (v7)
    {
      v9 = [v4 webkitView];
      v8 = [v9 goForward];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}