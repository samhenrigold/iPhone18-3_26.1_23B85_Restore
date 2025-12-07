id sub_10005CE40()
{
  sub_1000A8790();
  v1 = *(v0 + OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayManager);
  v2 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
    if ((*(v4 + 8) & 1) == 0 && *v4 == 6)
    {
      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      v5 = qword_1000FC008;
      v6 = sub_1000AC2BC();
      sub_1000ABA5C("ApplePayBubble not eligible logged in aggregate", 47, 2, &_mh_execute_header, v5, v6, _swiftEmptyArrayStorage);
    }
  }

  v7 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);
  v8 = sub_10005C8D8();
  [v7 addSubview:v8];

  return sub_10005D7F8();
}

id sub_10005CF64()
{
  sub_1000A8C28();
  v1 = objc_opt_self();
  v66 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_largeLabelContainerConstraints);
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);

  isa = sub_1000AC18C().super.isa;

  [v1 deactivateConstraints:isa];

  v68 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerFirstConstraintsIconSmall);

  v3 = sub_1000AC18C().super.isa;

  v67 = v1;
  [v1 deactivateConstraints:v3];

  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000B08F0;
  v5 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer);
  v6 = [v5 leadingAnchor];
  v7 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];

  *(v4 + 32) = v9;
  v10 = [v5 topAnchor];
  v11 = [v7 topAnchor];
  v12 = [v10 constraintGreaterThanOrEqualToAnchor:v11 constant:10.0];

  *(v4 + 40) = v12;
  v13 = [v5 bottomAnchor];
  v14 = [v7 bottomAnchor];
  v15 = [v13 constraintLessThanOrEqualToAnchor:v14 constant:-10.0];

  *(v4 + 48) = v15;
  v16 = sub_10005C8D8();
  v17 = [v16 leadingAnchor];

  v18 = [v5 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:10.0];

  *(v4 + 56) = v19;
  v20 = OBJC_IVAR____TtC8Business18ApplePayBubbleView____lazy_storage___applePayButton;
  v21 = [*(v0 + OBJC_IVAR____TtC8Business18ApplePayBubbleView____lazy_storage___applePayButton) trailingAnchor];
  v22 = [v7 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v4 + 64) = v23;
  v24 = [*(v0 + v20) centerYAnchor];
  v25 = [v7 centerYAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v4 + 72) = v26;
  v27 = [v5 centerYAnchor];
  v28 = [v7 centerYAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v4 + 80) = v29;
  *v68 = v4;

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000B3DC0;
  v31 = [v5 topAnchor];
  v32 = [v7 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:10.0];

  *(v30 + 32) = v33;
  v34 = [v5 bottomAnchor];
  v35 = [v7 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:-10.0];

  *(v30 + 40) = v36;
  v37 = [v5 leadingAnchor];
  v38 = [v7 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v30 + 48) = v39;
  v40 = [*(v0 + v20) leadingAnchor];
  v41 = [v5 trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:10.0];

  *(v30 + 56) = v42;
  v43 = [*(v0 + v20) trailingAnchor];
  v44 = [v7 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v30 + 64) = v45;
  v46 = v20;
  v47 = [*(v0 + v20) centerYAnchor];
  v48 = [v7 centerYAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v30 + 72) = v49;
  *v66 = v30;

  v50 = sub_1000AC06C();
  v52 = v51;
  if (v50 == sub_1000AC06C() && v52 == v53)
  {
  }

  else
  {
    sub_1000AC7AC();
  }

  v54 = sub_1000AC18C().super.isa;

  [v67 activateConstraints:v54];

  result = UIApp;
  if (UIApp)
  {
    v56 = [UIApp preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    if (IsAccessibilityContentSizeCategory)
    {
      LODWORD(v58) = 1144750080;
      [*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel) setContentCompressionResistancePriority:1 forAxis:v58];
    }

    v59 = [*(v0 + v46) widthAnchor];
    v60 = [v59 constraintEqualToConstant:60.0];

    v61 = *(v0 + OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayButtonWidthConstraint);
    *(v0 + OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayButtonWidthConstraint) = v60;
    v62 = v60;

    if (v62)
    {
      [v62 setActive:1];
    }

    LODWORD(v63) = 1148846080;
    [*(v0 + v46) setContentHuggingPriority:1 forAxis:v63];
    v64 = *(v0 + v46);
    LODWORD(v65) = 1148846080;

    return [v64 setContentHuggingPriority:0 forAxis:v65];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10005D7F8()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayManager];
  v2 = OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel;
  v3 = *(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);
  v5 = *(v3 + 40);
  v4 = *(v3 + 48);
  v6 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
  *v6 = v5;
  *(v6 + 1) = v4;

  sub_1000A9FF0();
  v7 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel];
  [v7 setAttributedText:*(*(v1 + v2) + 56)];
  if (*(*(v1 + v2) + 72))
  {

    v8 = sub_1000AC02C();
  }

  else
  {
    v8 = 0;
  }

  [v7 setAccessibilityLabel:v8];

  v9 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  result = swift_beginAccess();
  v11 = *(v1 + v9);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
  if (*(v12 + 8))
  {
    goto LABEL_8;
  }

  v13 = *v12;
  if (v13 > 7)
  {
    return result;
  }

  if (((1 << v13) & 0x9A) != 0 || v13 == 2)
  {
LABEL_8:
    result = sub_10005DD6C();
    if ((v0[OBJC_IVAR____TtC8Business13IMBBubbleView_useAlternateTapTarget] & 1) == 0)
    {
      return [v0 setUserInteractionEnabled:0];
    }
  }

  else if (v13 == 6)
  {
    return sub_10005DD6C();
  }

  return result;
}

void sub_10005D990()
{
  v1 = v0;
  [v0 setBackgroundColor:*&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_defaultColor]];
  v2 = *&v0[OBJC_IVAR____TtC8Business18ApplePayBubbleView_message];
  v3 = [v2 rootKey];
  v4 = sub_1000AC06C();
  v6 = v5;

  v7 = [v2 isFromMe];
  v8 = *&v1[OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayManager];
  v9 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v10 = *(v8 + v9);
  if (v10)
  {
    v11 = v10 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
    if (*(v11 + 8))
    {
      v12 = 1;
    }

    else
    {
      v12 = *v11;
    }
  }

  else
  {
    v12 = 1;
  }

  v13 = sub_10005FCE8(v12);
  v15 = v14;
  v16 = [v2 version];
  if (v7)
  {
    v30._countAndFlagsBits = 46;
    v30._object = 0xE100000000000000;
    sub_1000AC12C(v30);
    v31._countAndFlagsBits = 0x6465696C706572;
    v31._object = 0xE700000000000000;
    sub_1000AC12C(v31);
  }

  v32._countAndFlagsBits = 46;
  v32._object = 0xE100000000000000;
  sub_1000AC12C(v32);
  v33._countAndFlagsBits = v13;
  v33._object = v15;
  sub_1000AC12C(v33);

  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000AF0E0;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_10000587C();
  *(v17 + 32) = v4;
  *(v17 + 40) = v6;
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);

  v18 = sub_1000AC3FC();
  v19 = sub_1000AC2BC();
  sub_1000ABA5C("BusinessChat: Logging Message App Extension event: %@", 53, 2, &_mh_execute_header, v18, v19, v17);

  if (qword_1000EEE98 != -1)
  {
    swift_once();
  }

  v20 = qword_1000FC030;
  v21 = sub_1000AC02C();

  [v20 mt_log_icloud_messages_apps_businessframework:v21 version:v16];

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v22 = qword_1000FC008;
  v23 = sub_1000AC2BC();
  sub_1000ABA5C("ApplePayBubble open logged in aggregate", 39, 2, &_mh_execute_header, v22, v23, _swiftEmptyArrayStorage);
  v24 = *(v8 + v9);
  if (v24)
  {
    v25 = v24 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
    if ((*(v25 + 8) & 1) == 0)
    {
      v26 = *v25;
      if (v26 <= 7)
      {
        if (((1 << v26) & 0x9C) != 0)
        {
          sub_10005D7F8();
        }

        else if (((1 << v26) & 0x21) != 0)
        {
          v27 = sub_1000AC28C();
          sub_1000ABA5C("Presenting Apple Pay sheet", 26, 2, &_mh_execute_header, v22, v27, _swiftEmptyArrayStorage);
          v29.value.super.super.super.isa = [v1 window];
          isa = v29.value.super.super.super.isa;
          IMBApplePayManager.presentApplePay(with:)(v29);
        }

        else if (v26 == 6)
        {
          sub_10005E074();
        }
      }
    }
  }
}

uint64_t sub_10005DD6C()
{
  v1 = sub_1000ABF3C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000ABF6C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
  v9 = sub_1000AC32C();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_10005E784;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023BE0;
  aBlock[3] = &unk_1000DCF98;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_1000ABF5C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100042004();
  sub_10000413C(&unk_1000F1E00, &unk_1000B1BF0);
  sub_10004205C();
  sub_1000AC49C();
  sub_1000AC33C();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

id sub_10005E000(uint64_t a1)
{
  v2 = sub_10005C8D8();
  [v2 setHidden:1];

  result = *(a1 + OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayButtonWidthConstraint);
  if (result)
  {

    return [result setConstant:0.0];
  }

  return result;
}

void sub_10005E074()
{
  v1 = v0;
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_1000AB6EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v9 = qword_1000FC008;
  v10 = sub_1000AC28C();
  sub_1000ABA5C("Opening fallback URL", 20, 2, &_mh_execute_header, v9, v10, _swiftEmptyArrayStorage);
  v11 = *(v1 + OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayManager);
  v12 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v13 = *(v11 + v12);
  if (v13)
  {
    v14 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_fallbackUrl;
    swift_beginAccess();
    sub_10003C3C8(v13 + v14, v4);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v8, v4, v5);
      v15 = sub_1000AB6CC();
      if (v16)
      {
        if (v15 == 1886680168 && v16 == 0xE400000000000000)
        {
          goto LABEL_12;
        }

        v17 = sub_1000AC7AC();

        if (v17)
        {
LABEL_13:
          v40 = v1;
          v20 = *(v1 + OBJC_IVAR____TtC8Business18ApplePayBubbleView_message);
          v21 = [v20 rootKey];
          v22 = sub_1000AC06C();
          v24 = v23;

          LODWORD(v21) = [v20 isFromMe];
          v25 = sub_1000AC06C();
          v27 = v26;
          v39 = [v20 version];
          v41 = v22;
          v42 = v24;
          if (v21)
          {
            v43._countAndFlagsBits = 46;
            v43._object = 0xE100000000000000;
            sub_1000AC12C(v43);
            v44._countAndFlagsBits = 0x6465696C706572;
            v44._object = 0xE700000000000000;
            sub_1000AC12C(v44);
          }

          v45._countAndFlagsBits = 46;
          v45._object = 0xE100000000000000;
          sub_1000AC12C(v45);
          v46._countAndFlagsBits = v25;
          v46._object = v27;
          sub_1000AC12C(v46);

          sub_10000413C(&qword_1000F0060, &unk_1000B0470);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1000AF0E0;
          v30 = v41;
          v29 = v42;
          *(v28 + 56) = &type metadata for String;
          *(v28 + 64) = sub_10000587C();
          *(v28 + 32) = v30;
          *(v28 + 40) = v29;
          sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);

          v31 = sub_1000AC3FC();
          v32 = sub_1000AC2BC();
          sub_1000ABA5C("BusinessChat: Logging Message App Extension event: %@", 53, 2, &_mh_execute_header, v31, v32, v28);

          if (qword_1000EEE98 != -1)
          {
            swift_once();
          }

          v33 = qword_1000FC030;
          v34 = sub_1000AC02C();

          [v33 mt_log_icloud_messages_apps_businessframework:v34 version:v39];

          v35 = sub_1000AC2BC();
          sub_1000ABA5C("ApplePayBubble open fallback logged in aggregate", 48, 2, &_mh_execute_header, v9, v35, _swiftEmptyArrayStorage);
          sub_1000058D0((v40 + OBJC_IVAR____TtC8Business13IMBBubbleView_urlHelper), *(v40 + OBJC_IVAR____TtC8Business13IMBBubbleView_urlHelper + 24));
          sub_10004E400(v8, 0, 0, 0);
          goto LABEL_18;
        }
      }

      v18 = sub_1000AB6CC();
      if (v19)
      {
        if (v18 == 0x7370747468 && v19 == 0xE500000000000000)
        {
LABEL_12:

          goto LABEL_13;
        }

        v38 = sub_1000AC7AC();

        if (v38)
        {
          goto LABEL_13;
        }
      }

LABEL_18:
      (*(v6 + 8))(v8, v5);
      return;
    }
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  sub_10004B9C0(v4);
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v36 = sub_1000AC3FC();
  v37 = sub_1000AC2BC();
  sub_1000ABA5C("BusinessChat: Unable to open fallbackUrl as it was not in payload", 65, 2, &_mh_execute_header, v36, v37, _swiftEmptyArrayStorage);

  sub_10008C45C();
}

void sub_10005E628()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business18ApplePayBubbleView____lazy_storage___applePayButton);
}

id sub_10005E688(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ApplePayBubbleView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10005E74C()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10005E78C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

__n128 sub_10005E7A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10005E7B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005E800(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005E864()
{
  result = qword_1000F1A98;
  if (!qword_1000F1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F1A98);
  }

  return result;
}

double sub_10005E8B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_10004F0CC(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1000068B4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

unint64_t sub_10005E91C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (result = sub_10004F0CC(result, a2), (v6 & 1) != 0))
  {
    v7 = *(a3 + 56) + 32 * result;

    return sub_100017348(v7, a4);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    a4[3] = 1;
  }

  return result;
}

void sub_10005E984(void *a1)
{
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v36 - v6;
  v8 = type metadata accessor for IMBMessage();
  v9 = swift_dynamicCastClass();
  v10 = a1;
  v11 = v10;
  if (v9)
  {
    goto LABEL_31;
  }

  v12 = [v10 messageData];
  if (v12 && (v13 = v12, v14 = [v12 data], v13, v14))
  {
    v15 = sub_1000AB73C();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xF000000000000000;
  }

  v18 = [v11 messageData];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 url];

    if (v20)
    {
      sub_1000AB6AC();

      v21 = sub_1000AB6EC();
      (*(*(v21 - 8) + 56))(v5, 0, 1, v21);
    }

    else
    {
      v23 = sub_1000AB6EC();
      (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
    }

    sub_10000E7E4(v5, v7);
  }

  else
  {
    v22 = sub_1000AB6EC();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  }

  v24 = [v11 messageGUID];
  if (v24)
  {
    v25 = v24;
    sub_1000AC06C();
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = [v11 isFromMe];

  if (v17 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1000AB72C().super.isa;
    sub_10000E950(v15, v17);
  }

  v30 = sub_1000AB6EC();
  v31 = *(v30 - 8);
  v33 = 0;
  if ((*(v31 + 48))(v7, 1, v30) != 1)
  {
    sub_1000AB67C(v32);
    v33 = v34;
    (*(v31 + 8))(v7, v30);
  }

  if (v27)
  {
    v35 = sub_1000AC02C();
  }

  else
  {
    v35 = 0;
  }

  v9 = [objc_allocWithZone(v8) initWithData:isa url:v33 messageGUID:v35 isFromMe:v28];

  if (v9)
  {
LABEL_31:
    if ([v9 rootObject])
    {
      type metadata accessor for IMBJITAppKitData();
      if (!swift_dynamicCastClass())
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005ED9C(char a1, id a2, uint64_t a3)
{
  v6 = [a2 isFromMe];
  v7 = &selRef_replyMessage;
  if (!v6)
  {
    v7 = &selRef_receivedMessage;
  }

  v8 = [a2 *v7];
  v9 = v8;
  if (!v8 || (v10 = [v8 alternateTitle]) == 0 && (v10 = objc_msgSend(v9, "title")) == 0)
  {
    v10 = [objc_opt_self() defaultBubbleTitleFor:a2];
  }

  v11 = v10;
  v12 = sub_1000AC06C();

  if (a1)
  {
    if (!v9)
    {
      return v12;
    }

    v16 = [v9 subtitle];
    if (v16)
    {
      v17 = v16;
      sub_1000AC06C();

      return v12;
    }

LABEL_15:

    return v12;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  v13 = *(a3 + 16);
  if (!*(v13 + 16))
  {
    goto LABEL_15;
  }

  v14 = sub_10004F0CC(0xD000000000000012, 0x80000001000BA760);
  if (v15)
  {
    sub_1000068B4(*(v13 + 56) + 32 * v14, v19);

    swift_dynamicCast();
  }

  else
  {
  }

  return v12;
}

id sub_10005EF88(char a1, id a2)
{
  v4 = [a2 isFromMe];
  v5 = &selRef_replyMessage;
  if (!v4)
  {
    v5 = &selRef_receivedMessage;
  }

  v6 = [a2 *v5];
  v7 = v6;
  if ((a1 & 1) == 0)
  {

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  v8 = [v6 image];
  v9 = [v7 imageDescription];
  if (v9)
  {
    v10 = v9;
    sub_1000AC06C();
  }

  return v8;
}

double sub_10005F088()
{
  qword_1000F1AC0 = 0;
  result = 0.0;
  xmmword_1000F1AA0 = 0u;
  *algn_1000F1AB0 = 0u;
  return result;
}

uint64_t sub_10005F0A0@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000EEE68 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_10005F16C(&xmmword_1000F1AA0, v2);
}

uint64_t sub_10005F114()
{
  sub_100042340();

  return sub_1000ABCFC();
}

uint64_t sub_10005F16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F0918, &unk_1000B1C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10005F1DC()
{
  v1 = OBJC_IVAR____TtC8Business20QuickReplyItemButton____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8Business20QuickReplyItemButton____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business20QuickReplyItemButton____lazy_storage___titleLabel);
  }

  else
  {
    v4 = sub_10005F23C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10005F23C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v1];
  LODWORD(v2) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v2];
  LODWORD(v3) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v0 setContentHuggingPriority:1 forAxis:v4];
  v5 = [objc_opt_self() tintColor];
  [v0 setTextColor:v5];

  [v0 setMinimumScaleFactor:0.4];
  [v0 setAdjustsFontSizeToFitWidth:1];
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v7 = [v6 fontDescriptorWithSymbolicTraits:0x8000];
  if (v7)
  {
    v8 = v7;

    v6 = v8;
  }

  v9 = [objc_opt_self() fontWithDescriptor:v6 size:0.0];

  [v0 setFont:v9];
  [v0 setNumberOfLines:0];
  return v0;
}

char *sub_10005F418(uint64_t a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC8Business20QuickReplyItemButton____lazy_storage___titleLabel] = 0;
  v54.receiver = v3;
  v54.super_class = type metadata accessor for QuickReplyItemButton();
  v4 = objc_msgSendSuper2(&v54, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setIsAccessibilityElement:1];
  [v4 setAccessibilityTraits:UIAccessibilityTraitButton];
  v5 = sub_1000AC02C();
  [v4 setAccessibilityLabel:v5];

  v6 = sub_10005F1DC();
  v7 = sub_1000AC02C();

  [v6 setText:v7];

  v8 = OBJC_IVAR____TtC8Business20QuickReplyItemButton____lazy_storage___titleLabel;
  [v4 addSubview:*&v4[OBJC_IVAR____TtC8Business20QuickReplyItemButton____lazy_storage___titleLabel]];
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000B04D0;
  v10 = [*&v4[v8] leadingAnchor];
  v11 = [v4 leadingAnchor];
  v12 = sub_10002CE60();
  v13 = 12.0;
  if ((v12 & 0xFE) == 0)
  {
    v13 = 14.0;
  }

  v14 = [v10 constraintEqualToAnchor:v11 constant:v13];

  *(v9 + 32) = v14;
  v15 = [*&v4[v8] trailingAnchor];
  v16 = [v4 trailingAnchor];
  v17 = sub_10002CE60();
  v18 = -12.0;
  if ((v17 & 0xFE) == 0)
  {
    v18 = -14.0;
  }

  v19 = [v15 constraintEqualToAnchor:v16 constant:v18];

  *(v9 + 40) = v19;
  v20 = [*&v4[v8] topAnchor];
  v21 = [v4 topAnchor];
  v22 = sub_10002CE60();
  v23 = 7.0;
  if ((v22 & 0xFE) == 0)
  {
    v23 = 10.0;
  }

  v24 = [v20 constraintEqualToAnchor:v21 constant:v23];

  *(v9 + 48) = v24;
  v25 = [*&v4[v8] bottomAnchor];
  v26 = [v4 bottomAnchor];

  v27 = sub_10002CE60();
  v28 = objc_opt_self();
  v29 = -7.0;
  if ((v27 & 0xFE) == 0)
  {
    v29 = -10.0;
  }

  v30 = [v25 constraintEqualToAnchor:v26 constant:v29];

  *(v9 + 56) = v30;
  sub_10000F840();
  isa = sub_1000AC18C().super.isa;

  [v28 activateConstraints:isa];

  if (a3)
  {
    v32 = [objc_allocWithZone(UIView) init];
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [objc_opt_self() separatorColor];
    [v32 setBackgroundColor:v33];

    [v4 addSubview:v32];
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1000B04D0;
    v35 = [v32 leadingAnchor];
    v36 = [*&v4[v8] leadingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    *(v34 + 32) = v37;
    v38 = [v32 trailingAnchor];
    v39 = [*&v4[v8] trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    *(v34 + 40) = v40;
    v41 = [v32 bottomAnchor];
    v42 = [v4 bottomAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];

    *(v34 + 48) = v43;
    v44 = [v32 heightAnchor];
    v45 = [v4 traitCollection];
    [v45 displayScale];
    v47 = v46;

    if (v47 <= 0.0)
    {
      v48 = [objc_opt_self() mainScreen];
      [v48 scale];
      v47 = v49;

      if (v47 <= 0.0)
      {
        v47 = 1.0;
      }
    }

    v50 = [v44 constraintEqualToConstant:1.0 / v47];

    *(v34 + 56) = v50;
    v51 = sub_1000AC18C().super.isa;

    [v28 activateConstraints:v51];
  }

  return v4;
}

void sub_10005FB74(uint64_t a1)
{
  v2 = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for QuickReplyItemButton();
  objc_msgSendSuper2(&v8, "setHighlighted:", v2 & 1);
  v3 = sub_10005F1DC();
  v4 = [v1 isHighlighted];
  v5 = 1.0;
  if (v4)
  {
    v6 = [v1 traitCollection];
    v7 = [v6 userInterfaceStyle] == 2;

    v5 = dbl_1000B3F20[v7];
  }

  [v3 setAlpha:v5];
}

id sub_10005FC64(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for QuickReplyItemButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10005FCE8(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return 0x616C696176616E75;
      }

      if (a1 == 7)
      {
        return 0xD000000000000013;
      }

      goto LABEL_18;
    }

    if (a1 == 4)
    {
      return 0x64656E696C636564;
    }

    else
    {
      return 0x7075746573;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x64696C6176;
      }

      if (a1 == 1)
      {
        return 0x64696C61766E69;
      }

LABEL_18:
      result = sub_1000AC63C();
      __break(1u);
      return result;
    }

    if (a1 == 2)
    {
      return 0x64657269707865;
    }

    else
    {
      return 1684627824;
    }
  }
}

uint64_t sub_10005FE44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684627824 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000AC7AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64696C61766E69 && a2 == 0xE700000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64696C6176 && a2 == 0xE500000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656E696C636564 && a2 == 0xE800000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7075746573 && a2 == 0xE500000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62 || (sub_1000AC7AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000BA830 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1000AC7AC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }
}

id sub_1000600B0()
{
  v1 = *(v0 + 88);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 imageData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1000AB73C();
    v7 = v6;

    v8 = objc_allocWithZone(UIImage);
    isa = sub_1000AB72C().super.isa;
    v10 = [v8 initWithData:isa];

    sub_10000E964(v5, v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL sub_100060178(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1000AB97C();
    ++v2;
    sub_10001E92C();
  }

  while ((sub_1000AC01C() & 1) == 0);
  return v3 != v4;
}

void sub_100060250(void *a1, id a2)
{
  v4 = [a2 receivedMessage];
  v5 = [a2 replyMessage];
  v6 = sub_100061DF4(v4, v5);

  v7 = [a1 selectedMessage];
  v38 = [v7 session];

  v8 = v38;
  if (!v38)
  {
    v8 = [objc_allocWithZone(MSSession) init];
  }

  v39 = v8;
  v9 = [objc_allocWithZone(MSMessage) initWithSession:v8];
  v10 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  v11 = [a2 replyMessage];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 image];

    if (v13)
    {
      goto LABEL_13;
    }
  }

  v14 = sub_1000609C8();
  if (v14 >> 62)
  {
    v15 = v14;
    v16 = sub_1000AC65C();
    v14 = v15;
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_12:

    v13 = 0;
    goto LABEL_13;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v14 & 0xC000000000000001) != 0)
  {
    sub_1000AC5AC();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v13 = sub_1000600B0();

LABEL_13:
  [v10 setImage:v13];

  v17 = [v6 title];
  [v10 setCaption:v17];

  v18 = [v6 subtitle];
  [v10 setSubcaption:v18];

  v19 = [a1 selectedMessage];
  if (v19 && (v20 = v19, v21 = [v19 layout], v20, v21) && (objc_opt_self(), v22 = swift_dynamicCastObjCClass(), v21, v22))
  {
    v23 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v10];
    [v9 setLayout:v23];
  }

  else
  {
    [v9 setLayout:v10];
  }

  v24 = [v6 title];
  if (v24)
  {
    v25 = v24;
    sub_1000AC06C();
  }

  v26 = [v6 subtitle];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1000AC06C();
    v30 = v29;

    v41._countAndFlagsBits = v28;
    v41._object = v30;
    sub_1000AC12C(v41);

    v42._countAndFlagsBits = 32;
    v42._object = 0xE100000000000000;
    sub_1000AC12C(v42);
  }

  v31 = sub_1000AC02C();

  [v9 setAccessibilityLabel:v31];

  v32 = BCMessageRootListPickerKey;
  v33 = v9;
  v34 = v6;
  v35 = v32;

  v36 = a2;
  v37 = a1;
  sub_100036FA8(1);
}

void *sub_100060700()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    goto LABEL_32;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v3)
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = _swiftEmptyArrayStorage;
LABEL_5:
    v7 = v4;
    while (1)
    {
      if (v5)
      {
        v8 = sub_1000AC5AC();
        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_29;
        }

        v8 = *(v1 + 8 * v7 + 32);

        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      v9 = *(v8 + 40);
      if (v9 >> 62)
      {
        v11 = sub_1000AC65C();
        if (v11 < 0)
        {
          goto LABEL_30;
        }

        v10 = v11;
        if (v11)
        {
LABEL_18:
          v20 = v5;
          v21 = v3;
          v22 = v2;
          v23 = v1;
          v12 = 0;
          v25 = sub_1000AB97C();
          v13 = *(v25 - 8);
          v14 = *(v13 + 72);
          v1 = (*(v13 + 80) + 32) & ~*(v13 + 80);
          v24 = (v13 + 8);
          while (1)
          {
            sub_10000413C(&qword_1000F0818, &unk_1000B5370);
            v15 = v14;
            v16 = swift_allocObject();
            sub_1000AB94C();
            v2 = v6[2];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || (v18 = v6[3] >> 1, v18 <= v2))
            {
              v6 = sub_100038C68(isUniquelyReferenced_nonNull_native, v2 + 1, 1, v6);
              v18 = v6[3] >> 1;
            }

            if (v18 <= v6[2])
            {
              break;
            }

            ++v12;
            swift_arrayInitWithCopy();
            swift_setDeallocating();
            (*v24)(v16 + v1, v25);
            v14 = v15;
            swift_deallocClassInstance();
            ++v6[2];
            if (v10 == v12)
            {

              v3 = v21;
              v2 = v22;
              v1 = v23;
              v5 = v20;
              if (v4 != v21)
              {
                goto LABEL_5;
              }

              goto LABEL_27;
            }
          }

LABEL_31:
          __break(1u);
LABEL_32:
          v3 = sub_1000AC65C();
          goto LABEL_3;
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          goto LABEL_18;
        }
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_27;
      }
    }
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_27:

  return v6;
}

unint64_t sub_1000609C8()
{
  v1 = sub_1000AB97C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  result = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  v7 = *(v5 + 16);
  if (!v7)
  {
    return result;
  }

  v8 = *(v0 + 16);
  v10 = *(v2 + 16);
  v9 = v2 + 16;
  v17 = v10;
  v18 = v8;
  v11 = v5 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
  v12 = *(v9 + 56);
  while (1)
  {
    v17(v4, v11, v1);
    v13 = *(v18 + 24);

    result = sub_1000AB96C();
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = sub_1000AC5AC();
      goto LABEL_7;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    v14 = *(v13 + 8 * result + 32);

LABEL_7:

    v15 = *(v14 + 40);

    result = sub_1000AB95C();
    if ((v15 & 0xC000000000000001) != 0)
    {
      sub_1000AC5AC();
    }

    else
    {
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      if (result >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }
    }

    (*(v9 - 8))(v4, v1);
    sub_1000AC17C();
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000AC1BC();
    }

    sub_1000AC1DC();
    v11 += v12;
    if (!--v7)
    {
      return v19;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_100060C1C()
{
  v1 = sub_1000AB97C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v38 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v31 - v6;
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v39 = v0;
  result = sub_100060700();
  v11 = _swiftEmptyArrayStorage;
  v37 = *(result + 16);
  if (v37)
  {
    v12 = 0;
    v32 = v2;
    v33 = v2 + 16;
    v31 = (v2 + 8);
    v35 = v7;
    v36 = (v2 + 32);
    v34 = result;
    while (v12 < *(result + 16))
    {
      v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v16 = *(v2 + 72);
      (*(v2 + 16))(v9, result + v15 + v16 * v12++, v1);
      v17 = *(v39 + 24);
      v18 = v17 + v15;
      v19 = *(v17 + 16) + 1;
      while (--v19)
      {
        sub_10001E92C();
        v18 += v16;
        if (sub_1000AC01C())
        {
          (*v31)(v9, v1);
          goto LABEL_6;
        }
      }

      v20 = *v36;
      (*v36)(v38, v9, v1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10009C238(0, *(v11 + 2) + 1, 1);
        v11 = v40;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        sub_10009C238((v13 > 1), v14 + 1, 1);
        v11 = v40;
      }

      *(v11 + 2) = v14 + 1;
      v20(&v11[v15 + v14 * v16], v38, v1);
      v2 = v32;
LABEL_6:
      result = v34;
      v7 = v35;
      if (v12 == v37)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_14:

    v40 = _swiftEmptyArrayStorage;
    v22 = *(v11 + 2);
    if (v22)
    {
      v23 = *(v39 + 16);
      v25 = *(v2 + 16);
      v24 = v2 + 16;
      v38 = v25;
      v39 = v23;
      v26 = &v11[(*(v24 + 64) + 32) & ~*(v24 + 64)];
      v37 = *(v24 + 56);
      do
      {
        (v38)(v7, v26, v1);
        v27 = *(v39 + 24);

        result = sub_1000AB96C();
        if ((v27 & 0xC000000000000001) != 0)
        {
          v28 = sub_1000AC5AC();
        }

        else
        {
          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          if (result >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v28 = *(v27 + 8 * result + 32);
        }

        v29 = *(v28 + 40);

        result = sub_1000AB95C();
        if ((v29 & 0xC000000000000001) != 0)
        {
          sub_1000AC5AC();
        }

        else
        {
          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          if (result >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }
        }

        (*(v24 - 8))(v7, v1);
        sub_1000AC17C();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000AC1BC();
        }

        sub_1000AC1DC();
        v26 += v37;
        --v22;
      }

      while (v22);
      v30 = v40;
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }

    return v30;
  }

  return result;
}

unint64_t sub_100061088()
{
  v1 = sub_1000609C8();
  if (v1 >> 62)
  {
    v6 = v1;
    v2 = sub_1000AC65C();
    v1 = v6;
    if (v2)
    {
LABEL_3:
      v3 = __OFSUB__(v2, 1);
      v4 = v2 - 1;
      if (v3)
      {
        __break(1u);
      }

      else if ((v1 & 0xC000000000000001) == 0)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_122:
          __break(1u);
LABEL_123:
          result = sub_1000AC65C();
          if (result)
          {
            goto LABEL_24;
          }

          goto LABEL_126;
        }

        v5 = *(v1 + 8 * v4 + 32);

        goto LABEL_8;
      }

      v5 = sub_1000AC5AC();
LABEL_8:

      goto LABEL_11;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_11:
  v7 = sub_1000609C8();
  if (v7 >> 62)
  {
    v9 = v7;
    v10 = sub_1000AC65C();
    v7 = v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = sub_1000AC5AC();
      goto LABEL_16;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v7 + 32);

LABEL_16:

      goto LABEL_19;
    }

    goto LABEL_121;
  }

  v8 = 0;
LABEL_19:
  v11 = sub_1000609C8();
  if (v11 >> 62)
  {
    v12 = sub_1000AC65C();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = sub_1000609C8();
  v0 = result;
  v14 = result >> 62;
  if (v12 != 1)
  {
    if (v14)
    {
      result = sub_1000AC65C();
      v17 = result;
      if (!result)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_126;
      }
    }

    if (v17 < 1)
    {
      __break(1u);
LABEL_130:
      __break(1u);
      return result;
    }

    v47._object = v12;
    v48 = v0;
    v18 = 0;
    v49 = v0 & 0xC000000000000001;
    while (1)
    {
      if (v49)
      {
        v19 = sub_1000AC5AC();
        if (!v8)
        {
          break;
        }
      }

      else
      {
        v19 = *(v0 + 8 * v18 + 32);

        if (!v8)
        {
          break;
        }
      }

      v20 = v19[3] == v8[3] && v19[4] == v8[4];
      if (!v20 && (sub_1000AC7AC() & 1) == 0)
      {
        break;
      }

      v22 = v19[5];
      v21 = v19[6];
      v23 = v22 == v8[5] && v21 == v8[6];
      if (!v23 && (sub_1000AC7AC() & 1) == 0)
      {
        break;
      }

      v24 = v19[8];
      v25 = v8[8];
      if (v24)
      {
        if (!v25 || (v19[7] != v8[7] || v24 != v25) && (sub_1000AC7AC() & 1) == 0)
        {
          break;
        }
      }

      else if (v25)
      {
        break;
      }

      v26 = v19[10];
      v27 = v8[10];
      if (v26)
      {
        if (!v27 || (v19[9] != v8[9] || v26 != v27) && (sub_1000AC7AC() & 1) == 0)
        {
          break;
        }
      }

      else if (v27)
      {
        break;
      }

      if (v47._object != 2 || v19[12] != v8[12])
      {
        break;
      }

      v51._countAndFlagsBits = 32;
      v51._object = 0xE100000000000000;
      sub_1000AC12C(v51);
      v52._countAndFlagsBits = v22;
      v52._object = v21;
      sub_1000AC12C(v52);

LABEL_114:
      if (v17 == ++v18)
      {

        v16 = 0;
        goto LABEL_127;
      }
    }

    v28 = v17;
    if (!v5)
    {
      goto LABEL_111;
    }

    v29 = v19[3] == v5[3] && v19[4] == v5[4];
    v30 = v29;
    if (!v29 && (sub_1000AC7AC() & 1) == 0)
    {
      goto LABEL_92;
    }

    if (v19[5] == v5[5] && v19[6] == v5[6] || (sub_1000AC7AC() & 1) != 0)
    {
      v31 = v19[8];
      v32 = v5[8];
      if (v31)
      {
        if (!v32 || (v19[7] != v5[7] || v31 != v32) && (sub_1000AC7AC() & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      else if (v32)
      {
        goto LABEL_91;
      }

      v33 = v19[10];
      v34 = v5[10];
      if (v33)
      {
        if (!v34 || (v19[9] != v5[9] || v33 != v34) && (sub_1000AC7AC() & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      else if (v34)
      {
        goto LABEL_91;
      }

      if (v19[12] == v5[12])
      {
        v35 = [objc_opt_self() mainBundle];
        v47._countAndFlagsBits = 0xE000000000000000;
        v53._countAndFlagsBits = 4476481;
        v53._object = 0xE300000000000000;
        v57.value._countAndFlagsBits = 0;
        v57.value._object = 0;
        v36.super.isa = v35;
        v58._countAndFlagsBits = 0;
        v58._object = 0xE000000000000000;
        v37 = sub_1000AB61C(v53, v57, v36, v58, 0, v47);
        v39 = v38;

        v50._countAndFlagsBits = v37;
        v50._object = v39;

        v54._countAndFlagsBits = 32;
        v54._object = 0xE100000000000000;
        sub_1000AC12C(v54);

        v40 = v19[5];
        v41 = v19[6];

        v55._countAndFlagsBits = v40;
        v55._object = v41;
        sub_1000AC12C(v55);

LABEL_112:
        sub_1000AC12C(v50);

        goto LABEL_113;
      }
    }

LABEL_91:
    if (v30)
    {
LABEL_93:
      if ((v19[5] != v5[5] || v19[6] != v5[6]) && (sub_1000AC7AC() & 1) == 0)
      {
        goto LABEL_111;
      }

      v42 = v19[8];
      v43 = v5[8];
      if (v42)
      {
        if (!v43 || (v19[7] != v5[7] || v42 != v43) && (sub_1000AC7AC() & 1) == 0)
        {
          goto LABEL_111;
        }
      }

      else if (v43)
      {
        goto LABEL_111;
      }

      v44 = v19[10];
      v45 = v5[10];
      if (v44)
      {
        if (!v45 || (v19[9] != v5[9] || v44 != v45) && (sub_1000AC7AC() & 1) == 0)
        {
          goto LABEL_111;
        }

LABEL_110:
        if (v19[12] == v5[12])
        {
LABEL_113:

          v17 = v28;
          v0 = v48;
          goto LABEL_114;
        }

        goto LABEL_111;
      }

      if (!v45)
      {
        goto LABEL_110;
      }

LABEL_111:
      v50 = *(v19 + 5);

      v56._countAndFlagsBits = 8236;
      v56._object = 0xE200000000000000;
      sub_1000AC12C(v56);
      goto LABEL_112;
    }

LABEL_92:
    if ((sub_1000AC7AC() & 1) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_93;
  }

  if (v14)
  {
    goto LABEL_123;
  }

  result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
LABEL_24:
    if ((v0 & 0xC000000000000001) != 0)
    {
      v46 = sub_1000AC5AC();

      v16 = *(v46 + 40);

      swift_unknownObjectRelease();
      goto LABEL_27;
    }

    if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v0 + 32);

      v16 = *(v15 + 40);

LABEL_27:

      goto LABEL_127;
    }

    goto LABEL_130;
  }

LABEL_126:

  v16 = 0;
LABEL_127:

  return v16;
}

uint64_t sub_100061790()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_1000617F0(v0);
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_1000617F0(uint64_t a1)
{
  v2 = sub_1000609C8();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000AC65C())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_1000AC5AC();
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      *(v6 + 96) = v5;

      ++v5;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v8 = objc_opt_self();
  p_attr = &stru_1000E5FF8.attr;
  v10 = [(SEL *)v8 mainBundle];
  v47._countAndFlagsBits = 0xE000000000000000;
  v50._countAndFlagsBits = 0x454C45535F554F59;
  v50._object = 0xEC00000044455443;
  v51.value._countAndFlagsBits = 0;
  v51.value._object = 0;
  v11.super.isa = v10;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v12 = sub_1000AB61C(v50, v51, v11, v53, 0, v47);
  v14 = v13;

  v15 = sub_1000609C8();
  type metadata accessor for IMBListSection();
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v14;
  *(v16 + 32) = 0;
  *(v16 + 40) = v15;
  *(v16 + 48) = 0;
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000B04C0;
  *(inited + 32) = v16;

  sub_1000A54E8(inited);
  v18 = sub_100060C1C();
  if (v18 >> 62)
  {
    goto LABEL_28;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v19)
  {
LABEL_16:
    v49 = v8;
    v20 = sub_100060C1C();
    v21 = v20;
    v8 = p_attr;
    if (v20 >> 62)
    {
      v22 = sub_1000AC65C();
      if (!v22)
      {
LABEL_31:

        v27 = sub_100060C1C();
        if (v27 >> 62)
        {
          v28 = sub_1000AC65C();
        }

        else
        {
          v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v29 = [v49 v8[384]];
        v48._countAndFlagsBits = 0xE000000000000000;
        if (v28 < 2)
        {
          v30._countAndFlagsBits = 0x524548544FLL;
          v30._object = 0xE500000000000000;
        }

        else
        {
          v30._countAndFlagsBits = 0x53524548544FLL;
          v30._object = 0xE600000000000000;
        }

        v52.value._countAndFlagsBits = 0;
        v52.value._object = 0;
        v31.super.isa = v29;
        v54._countAndFlagsBits = 0;
        v54._object = 0xE000000000000000;
        v32 = sub_1000AB61C(v30, v52, v31, v54, 0, v48);
        v34 = v33;

        v35 = sub_100060C1C();
        v36 = swift_allocObject();
        *(v36 + 16) = v32;
        *(v36 + 24) = v34;
        *(v36 + 32) = 1;
        *(v36 + 40) = v35;
        *(v36 + 48) = 0;
        v37 = swift_initStackObject();
        *(v37 + 16) = xmmword_1000B04C0;
        *(v37 + 32) = v36;
        sub_1000A54E8(v37);
        goto LABEL_37;
      }
    }

    else
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_31;
      }
    }

    v23 = 0;
    p_attr = (v21 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = sub_1000AC5AC();
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v26 = sub_1000AC65C();

          if (!v26)
          {
            break;
          }

          goto LABEL_16;
        }
      }

      *(v24 + 96) = v23;

      ++v23;
      if (v25 == v22)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_37:
  v38 = *(*(a1 + 16) + 16);
  type metadata accessor for IMBListRequest();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = _swiftEmptyArrayStorage;
  if (qword_1000EEE88 != -1)
  {
    swift_once();
  }

  v40 = qword_1000FC010;
  v41 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000AF0E0;

  v43 = sub_1000872F4();
  v45 = v44;

  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = sub_10000587C();
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  sub_1000ABA5C("Reply listRequest: %@", 21, 2, &_mh_execute_header, v40, v41, v42);

  return v39;
}

uint64_t sub_100061CF4()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100061DF4(void *a1, void *a2)
{
  sub_100061088();
  if (a2)
  {
    v4 = [a2 subtitle];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1000AC06C();
      a1 = v7;
    }

    else
    {
      v6 = 0;
      a1 = 0;
    }

    v8 = [a2 style];
    v9 = [a2 imageIdentifier];
    if (v9)
    {
      v10 = v9;
      sub_1000AC06C();
      v6 = v11;

      goto LABEL_18;
    }
  }

  else if (a1)
  {
    v8 = [a1 style];
    v6 = 0;
    a1 = 0;
  }

  else
  {
    v8 = BCBubbleViewStyleIcon;
    v6 = 0;
  }

  v12 = sub_1000609C8();
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_17:

    v6 = 0;
    if (!a2)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v14 = v12;
  v15 = sub_1000AC65C();
  v12 = v14;
  if (!v15)
  {
    goto LABEL_17;
  }

LABEL_12:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v21 = sub_1000AC5AC();

    v6 = *(v21 + 80);

    swift_unknownObjectRelease();
    if (!a2)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_44:
    v44 = sub_1000AC5AC();

    v45 = *(v44 + 88);
    v25 = v45;
    swift_unknownObjectRelease();
    if (!v45)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v13 = *(v12 + 32);

  v6 = *(v13 + 80);

  if (a2)
  {
LABEL_18:
    v16 = [a2 imageIdentifier];
    if (v16)
    {

      v17 = [a2 imageDescription];
      if (v17)
      {
        v18 = v17;
        sub_1000AC06C();
        v20 = v19;

        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

LABEL_22:
  result = sub_1000609C8();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

LABEL_30:

    goto LABEL_31;
  }

  v28 = result;
  v29 = sub_1000AC65C();
  result = v28;
  if (!v29)
  {
    goto LABEL_30;
  }

LABEL_24:
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_44;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v23 = *(result + 32);

  v24 = *(v23 + 88);
  v25 = v24;

  if (!v24)
  {
    goto LABEL_31;
  }

LABEL_27:
  v26 = [v25 imageDescription];

  if (v26)
  {
    sub_1000AC06C();
    v20 = v27;

    goto LABEL_32;
  }

LABEL_31:
  v20 = 0;
LABEL_32:
  v30 = v8;
  v31 = sub_1000AC02C();
  if (a1)
  {
    v32 = sub_1000AC02C();
  }

  else
  {
    v32 = 0;
  }

  v33 = sub_1000AC02C();

  if (!v6)
  {
    v34 = 0;
    if (v20)
    {
      goto LABEL_37;
    }

LABEL_39:
    v35 = 0;
    goto LABEL_40;
  }

  v34 = sub_1000AC02C();

  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_37:
  v35 = sub_1000AC02C();

LABEL_40:
  v36 = [objc_allocWithZone(BCMessageInfo) initWithTitle:v31 subtitle:v32 style:v30 alternateTitle:v33 imageIdentifier:v34 imageDescription:v35];

  if (qword_1000EEE88 != -1)
  {
    swift_once();
  }

  v37 = qword_1000FC010;
  v38 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1000AF0E0;
  v40 = [v36 debugDescription];
  v41 = sub_1000AC06C();
  v43 = v42;

  *(v39 + 56) = &type metadata for String;
  *(v39 + 64) = sub_10000587C();
  *(v39 + 32) = v41;
  *(v39 + 40) = v43;
  sub_1000ABA5C("Composed reply message: %@", 26, 2, &_mh_execute_header, v37, v38, v39);

  return v36;
}

unint64_t sub_100062344(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000DA4F0;
  v6._object = a2;
  v4 = sub_1000AC6AC(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

id sub_100062390(uint64_t a1)
{
  v51 = _swiftEmptyArrayStorage;
  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

  v2 = sub_10004F0CC(0x737574617473, 0xE600000000000000);
  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_100017348(*(a1 + 56) + 32 * v2, &v47);
  v49 = v47;
  v50 = v48;
  if (!*(&v48 + 1))
  {

    sub_1000172E0(&v49);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v4 = sub_100062344(v45, v46), v4 == 5))
  {
LABEL_6:

LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v5 = qword_1000FC008;
    v6 = sub_1000AC2AC();
    sub_1000ABA5C("BusinessChat: Auth Response did not contain TransactionResult", 61, 2, &_mh_execute_header, v5, v6, _swiftEmptyArrayStorage);
    return 0;
  }

  v8 = v4;
  if (*(a1 + 16) && (v9 = sub_10004F0CC(0x73726F727265, 0xE600000000000000), (v10 & 1) != 0))
  {
    sub_100017348(*(a1 + 56) + 32 * v9, &v47);

    v49 = v47;
    v50 = v48;
    if (*(&v48 + 1))
    {
      sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
      if (swift_dynamicCast())
      {
        v42 = v8;
        v11 = *(v45 + 16);
        if (v11)
        {
          v12 = v45 + 32;
          v44 = _swiftEmptyArrayStorage;
          do
          {

            v14 = sub_100020A9C(v13);
            if (v14)
            {
              v15 = qword_1000B3FA0[*(v14 + 16)];
              v16 = PKPaymentErrorDomain;
              sub_10001FF78();
              v17 = objc_allocWithZone(NSError);
              isa = sub_1000ABFAC().super.isa;

              v19 = [v17 initWithDomain:v16 code:v15 userInfo:isa];

              if (qword_1000EEE80 != -1)
              {
                swift_once();
              }

              v20 = qword_1000FC008;
              v21 = sub_1000AC2BC();
              sub_10000413C(&qword_1000F0060, &unk_1000B0470);
              v22 = swift_allocObject();
              *(v22 + 16) = xmmword_1000AF0E0;
              v43 = v19;
              v23 = [v19 debugDescription];
              v24 = sub_1000AC06C();
              v26 = v25;

              *(v22 + 56) = &type metadata for String;
              *(v22 + 64) = sub_10000587C();
              *(v22 + 32) = v24;
              *(v22 + 40) = v26;
              sub_1000ABA5C("BusinessChat: ApplePayError = %@", 32, 2, &_mh_execute_header, v20, v21, v22);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v44 = sub_1000388E0(0, v44[2] + 1, 1, v44);
              }

              v27 = v44;
              v29 = v44[2];
              v28 = v44[3];
              if (v29 >= v28 >> 1)
              {
                v27 = sub_1000388E0((v28 > 1), v29 + 1, 1, v44);
              }

              v27[2] = v29 + 1;
              v44 = v27;
              v27[v29 + 4] = v43;

              sub_1000AC17C();
              if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1000AC1BC();
              }

              sub_1000AC1DC();
            }

            v12 += 8;
            --v11;
          }

          while (v11);
        }

        v39 = objc_allocWithZone(PKPaymentAuthorizationResult);

        sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
        v40 = sub_1000AC18C().super.isa;
        v41 = [v39 initWithStatus:v42 != 0 errors:v40];

        return v41;
      }
    }

    else
    {
      sub_1000172E0(&v49);
    }
  }

  else
  {
  }

  if (v8)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v30 = qword_1000FC008;
    v31 = sub_1000AC2AC();
    sub_1000ABA5C("Transaction was denied", 22, 2, &_mh_execute_header, v30, v31, _swiftEmptyArrayStorage);
    v32 = objc_allocWithZone(PKPaymentAuthorizationResult);
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    v33.super.isa = sub_1000AC18C().super.isa;
    v34 = [v32 initWithStatus:1 errors:v33.super.isa];
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v35 = qword_1000FC008;
    v36 = sub_1000AC2BC();
    sub_1000ABA5C("Transaction was approved", 24, 2, &_mh_execute_header, v35, v36, _swiftEmptyArrayStorage);
    v37 = objc_allocWithZone(PKPaymentAuthorizationResult);
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    v33.super.isa = sub_1000AC18C().super.isa;
    v34 = [v37 initWithStatus:0 errors:v33.super.isa];
  }

  v38 = v34;

  return v38;
}

id sub_100062A48(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_27;
  }

  v2 = sub_10004F0CC(0x656C746974, 0xE500000000000000);
  if ((v3 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_100017348(*(a1 + 56) + 32 * v2, &v26);
  v28 = v26;
  v29 = v27;
  if (!*(&v27 + 1))
  {

    sub_1000172E0(&v28);
LABEL_28:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v19 = qword_1000FC008;
    v20 = sub_1000AC2AC();
    sub_1000ABA5C("Unable to create location: title key is missing", 47, 2, &_mh_execute_header, v19, v20, _swiftEmptyArrayStorage);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  v4 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v4 = *&v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    goto LABEL_27;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v5 = sub_10004F0CC(0x656475746974616CLL, 0xE800000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_100017348(*(a1 + 56) + 32 * v5, &v26);
  v28 = v26;
  v29 = v27;
  if (!*(&v27 + 1))
  {

    sub_1000172E0(&v28);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:

LABEL_23:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v17 = qword_1000FC008;
    v18 = sub_1000AC2AC();
    sub_1000ABA5C("Unable to create location: latitude key is missing", 50, 2, &_mh_execute_header, v17, v18, _swiftEmptyArrayStorage);
    return 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_33;
  }

  v7 = sub_10004F0CC(0x64757469676E6F6CLL, 0xE900000000000065);
  if ((v8 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_100017348(*(a1 + 56) + 32 * v7, &v26);
  v28 = v26;
  v29 = v27;
  if (!*(&v27 + 1))
  {

    sub_1000172E0(&v28);
    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:

LABEL_34:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v22 = qword_1000FC008;
    v23 = sub_1000AC2AC();
    sub_1000ABA5C("Unable to create location: longitude key is missing", 51, 2, &_mh_execute_header, v22, v23, _swiftEmptyArrayStorage);
    return 0;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = sub_1000AC02C();

  v11 = [ObjCClassFromMetadata locationWithTitle:v10];

  v12 = objc_allocWithZone(CLLocation);
  v13 = v11;
  v14 = [v12 initWithLatitude:v24 longitude:v24];
  [v13 setGeoLocation:v14];

  if (!*(a1 + 16) || (v15 = sub_10004F0CC(0x737569646172, 0xE600000000000000), (v16 & 1) == 0))
  {

LABEL_39:

    return v13;
  }

  sub_100017348(*(a1 + 56) + 32 * v15, &v26);

  v28 = v26;
  v29 = v27;
  if (*(&v27 + 1))
  {
    if (swift_dynamicCast())
    {
      [v13 setRadius:v24];
    }

    goto LABEL_39;
  }

  sub_1000172E0(&v28);
  return v13;
}

void *sub_100062EC8()
{
  v1 = v0;
  v29 = _swiftEmptyDictionarySingleton;
  v2 = [v0 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1000AC06C();
    v6 = v5;

    v28 = &type metadata for String;
    *&v27 = v4;
    *(&v27 + 1) = v6;
    sub_100006910(&v27, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = _swiftEmptyDictionarySingleton;
    sub_10003A3E8(v26, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v29 = _swiftEmptyDictionarySingleton;
  }

  else
  {
    sub_100039E5C(0x656C746974, 0xE500000000000000, &v27);
    sub_1000172E0(&v27);
  }

  v8 = [v0 geoLocation];
  if (v8)
  {
    v9 = v8;
    [v8 coordinate];
    v11 = v10;

    v28 = &type metadata for Double;
    *&v27 = v11;
    sub_100006910(&v27, v26);
    v12 = v29;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v24 = v12;
    sub_10003A3E8(v26, 0x656475746974616CLL, 0xE800000000000000, v13);
    v29 = v12;
  }

  else
  {
    sub_100039E5C(0x656475746974616CLL, 0xE800000000000000, &v27);
    sub_1000172E0(&v27);
  }

  v14 = [v1 geoLocation];
  if (v14)
  {
    v15 = v14;
    [v14 coordinate];
    v17 = v16;

    v28 = &type metadata for Double;
    *&v27 = v17;
    sub_100006910(&v27, v26);
    v18 = v29;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v25 = v18;
    sub_10003A3E8(v26, 0x64757469676E6F6CLL, 0xE900000000000065, v19);
  }

  else
  {
    sub_100039E5C(0x64757469676E6F6CLL, 0xE900000000000065, &v27);
    sub_1000172E0(&v27);
    v18 = v29;
  }

  [v1 radius];
  v28 = &type metadata for Double;
  *&v27 = v20;
  sub_100006910(&v27, v26);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v26, 0x737569646172, 0xE600000000000000, v21);
  return v18;
}

double EKEventStore.events(fromDate:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v27 = a1;
  v32 = sub_1000ABF3C();
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000ABF6C();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000AB7EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_1000ABF4C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
  v14 = sub_1000AC35C();
  (*(v11 + 8))(v13, v10);
  (*(v8 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v15, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v19 = v28;
  v18 = v29;
  *(v17 + v16) = v28;
  v20 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v30;
  *v20 = v18;
  v20[1] = v21;
  aBlock[4] = sub_100063BB4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023BE0;
  aBlock[3] = &unk_1000DD120;
  v22 = _Block_copy(aBlock);
  v23 = v19;

  sub_1000ABF5C();
  v36 = _swiftEmptyArrayStorage;
  sub_100042004();
  sub_10000413C(&unk_1000F1E00, &unk_1000B1BF0);
  sub_10004205C();
  v25 = v31;
  v24 = v32;
  sub_1000AC49C();
  sub_1000AC33C();
  _Block_release(v22);

  (*(v35 + 8))(v25, v24);
  (*(v33 + 8))(v6, v34);

  return result;
}

uint64_t sub_1000635B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v5 = sub_1000ABF3C();
  v34 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000ABF6C();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000AB7EC();
  v11 = *(v31 - 8);
  __chkstk_darwin(v31);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB76C();
  isa = [a2 calendarsForEntityType:0];
  if (!isa)
  {
    sub_100005A24(0, &qword_1000F1BE8, EKCalendar_ptr);
    sub_1000AC19C();
    isa = sub_1000AC18C().super.isa;
  }

  v15 = sub_1000AB77C().super.isa;
  v16 = sub_1000AB77C().super.isa;
  v17 = [a2 predicateForEventsWithStartDate:v15 endDate:v16 calendars:isa];

  v18 = [a2 eventsMatchingPredicate:v17];
  sub_100005A24(0, &qword_1000F1BF0, EKEvent_ptr);
  sub_1000AC19C();

  aBlock[0] = sub_100087E28(v19);
  sub_100063C68(aBlock);

  v20 = aBlock[0];
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000AF0E0;
  if (v20 < 0 || (v20 & 0x4000000000000000) != 0)
  {
    v22 = sub_1000AC65C();
  }

  else
  {
    v22 = *(v20 + 16);
  }

  *(v21 + 56) = &type metadata for Int;
  *(v21 + 64) = &protocol witness table for Int;
  *(v21 + 32) = v22;
  sub_1000ABA5C("Events found %d in calendar", v28);

  sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
  v23 = sub_1000AC32C();
  v24 = swift_allocObject();
  v25 = v30;
  v24[2] = v29;
  v24[3] = v25;
  v24[4] = v20;
  aBlock[4] = sub_100064F2C;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023BE0;
  aBlock[3] = &unk_1000DD170;
  v26 = _Block_copy(aBlock);

  sub_1000ABF5C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100042004();
  sub_10000413C(&unk_1000F1E00, &unk_1000B1BF0);
  sub_10004205C();
  sub_1000AC49C();
  sub_1000AC33C();
  _Block_release(v26);

  (*(v34 + 8))(v7, v5);
  (*(v32 + 8))(v10, v33);
  return (*(v11 + 8))(v13, v31);
}

uint64_t sub_100063B04()
{
  v1 = sub_1000AB7EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_100063BB4()
{
  v1 = *(sub_1000AB7EC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1000635B0(v0 + v2, v4, v6, v7);
}

double sub_100063C50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_100063C68(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000A4D24(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100063CE4(v6);
  sub_1000AC5FC();
  return result;
}

void sub_100063CE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1000AC77C(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100005A24(0, &qword_1000F1BF0, EKEvent_ptr);
        v6 = sub_1000AC1CC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10006403C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100063DF8(0, v2, 1, a1);
  }
}

void sub_100063DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_1000AB7EC();
  v8 = __chkstk_darwin(v38);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v32 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v36 = (v10 + 8);
    v39 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v34 = v14;
    v35 = a3;
    v16 = *(v39 + 8 * a3);
    v33 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 startDate];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      sub_1000AB7BC();

      v23 = [v20 startDate];
      if (!v23)
      {
        goto LABEL_13;
      }

      v24 = v23;
      v25 = v37;
      sub_1000AB7BC();

      v40 = sub_1000AB7CC();
      v26 = v17;
      v27 = *v36;
      v28 = v25;
      v29 = v38;
      (*v36)(v28, v38);
      v27(v12, v29);

      if (v40 == -1)
      {
        if (!v39)
        {
          goto LABEL_14;
        }

        v30 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v30;
        v14 -= 8;
        ++v17;
        if (v26 != -1)
        {
          continue;
        }
      }

      a3 = v35 + 1;
      v14 = v34 + 8;
      v15 = v33 - 1;
      if (v35 + 1 == v32)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

void sub_10006403C(id *a1, uint64_t a2, char **a3, int64_t a4)
{
  v6 = v4;
  v140 = a1;
  v152 = sub_1000AB7EC();
  v9 = __chkstk_darwin(v152);
  v149 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v134 - v12;
  v14 = __chkstk_darwin(v11);
  v143 = &v134 - v15;
  v16 = __chkstk_darwin(v14);
  v144 = &v134 - v17;
  v18 = __chkstk_darwin(v16);
  v136 = &v134 - v19;
  __chkstk_darwin(v18);
  v148 = a3;
  v22 = a3[1];
  if (v22 >= 1)
  {
    v135 = (&v134 - v21);
    v23 = 0;
    v151 = (v20 + 8);
    v24 = _swiftEmptyArrayStorage;
    v25 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
    v139 = a4;
    v153 = v13;
    while (1)
    {
      v26 = v23;
      v27 = v23 + 1;
      v141 = v23;
      if ((v23 + 1) < v22)
      {
        v146 = v22;
        v137 = v24;
        v138 = v6;
        v28 = *v148;
        v29 = *&(*v148)[8 * v23];
        v30 = *&(*v148)[8 * v27];
        v31 = v29;
        v32 = [v30 v25[100]];
        if (!v32)
        {
          goto LABEL_142;
        }

        v33 = v32;
        v150 = v30;
        v5 = v135;
        sub_1000AB7BC();

        v34 = [v31 v25[100]];
        if (!v34)
        {
          goto LABEL_143;
        }

        v35 = v34;
        v23 = v136;
        sub_1000AB7BC();

        v147 = sub_1000AB7CC();
        v36 = v152;
        v37 = *v151;
        (*v151)(v23, v152);
        v145 = v37;
        v37(v5, v36);

        v38 = (v141 + 2);
        v142 = 8 * v141;
        v39 = &v28[8 * v141 + 16];
        while (1)
        {
          v40 = v146;
          if (v146 == v38)
          {
            break;
          }

          v41 = *(v39 - 1);
          v42 = *v39;
          v43 = v41;
          v44 = [v42 v25[100]];
          if (!v44)
          {
            goto LABEL_137;
          }

          v45 = v44;
          v46 = v144;
          sub_1000AB7BC();

          v47 = [v43 v25[100]];
          if (!v47)
          {
            goto LABEL_136;
          }

          v48 = v47;
          LODWORD(v150) = v147 == -1;
          v49 = v143;
          sub_1000AB7BC();

          v50 = sub_1000AB7CC();
          v51 = v49;
          v23 = v46;
          v52 = v152;
          v5 = v145;
          (v145)(v51, v152);
          v5(v23, v52);

          ++v38;
          ++v39;
          v13 = v153;
          v25 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
          if (((v150 ^ (v50 != -1)) & 1) == 0)
          {
            v40 = (v38 - 1);
            break;
          }
        }

        v24 = v137;
        v6 = v138;
        a4 = v139;
        v26 = v141;
        v53 = v142;
        if (v147 == -1)
        {
          if (v40 < v141)
          {
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
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
            return;
          }

          if (v141 < v40)
          {
            v54 = 8 * v40 - 8;
            v55 = v40;
            v56 = v141;
            do
            {
              if (v56 != --v55)
              {
                v58 = *v148;
                if (!*v148)
                {
                  goto LABEL_140;
                }

                v57 = *&v58[v53];
                *&v58[v53] = *&v58[v54];
                *&v58[v54] = v57;
              }

              ++v56;
              v54 -= 8;
              v53 += 8;
            }

            while (v56 < v55);
          }
        }

        v27 = v40;
      }

      v59 = v148[1];
      if (v27 >= v59)
      {
        v23 = v27;
        if (v27 < v26)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v60 = v27;
        v79 = __OFSUB__(v27, v26);
        v61 = v27 - v26;
        if (v79)
        {
          goto LABEL_128;
        }

        if (v61 >= a4)
        {
          goto LABEL_31;
        }

        v62 = (v26 + a4);
        if (__OFADD__(v26, a4))
        {
          goto LABEL_129;
        }

        if (v62 >= v59)
        {
          v62 = v148[1];
        }

        if (v62 < v26)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (v60 == v62)
        {
LABEL_31:
          v23 = v60;
          if (v60 < v26)
          {
            goto LABEL_127;
          }
        }

        else
        {
          v137 = v24;
          v138 = v6;
          v150 = *v148;
          v112 = &v150[8 * v60 - 8];
          v113 = (v26 - v60);
          v142 = v62;
          do
          {
            v146 = v112;
            v147 = v60;
            v114 = *&v150[8 * v60];
            v145 = v113;
            while (1)
            {
              v115 = *v112;
              v5 = v114;
              v116 = v115;
              v117 = [v5 v25[100]];
              if (!v117)
              {
                goto LABEL_133;
              }

              v118 = v117;
              sub_1000AB7BC();

              v119 = [v116 v25[100]];
              if (!v119)
              {
                goto LABEL_134;
              }

              v120 = v119;
              v121 = v149;
              sub_1000AB7BC();

              v122 = sub_1000AB7CC();
              v123 = v13;
              v124 = *v151;
              v125 = v121;
              v126 = v152;
              (*v151)(v125, v152);
              v124(v123, v126);

              if (v122 != -1)
              {
                break;
              }

              if (!v150)
              {
                goto LABEL_135;
              }

              v127 = *v112;
              v114 = *(v112 + 1);
              *v112 = v114;
              *(v112 + 1) = v127;
              v112 -= 8;
              v128 = __CFADD__(v113++, 1);
              v13 = v153;
              v25 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
              if (v128)
              {
                goto LABEL_86;
              }
            }

            v13 = v153;
            v25 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
LABEL_86:
            v60 = v147 + 1;
            v112 = v146 + 8;
            v113 = v145 - 1;
          }

          while (v147 + 1 != v142);
          v23 = v142;
          v24 = v137;
          v6 = v138;
          if (v142 < v141)
          {
            goto LABEL_127;
          }
        }
      }

      v63 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v24 = v63;
      }

      else
      {
        v24 = sub_1000386A8(0, *(v63 + 2) + 1, 1, v63);
      }

      v65 = *(v24 + 2);
      v64 = *(v24 + 3);
      v66 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        v24 = sub_1000386A8((v64 > 1), v65 + 1, 1, v24);
      }

      *(v24 + 2) = v66;
      v67 = &v24[16 * v65];
      *(v67 + 4) = v141;
      *(v67 + 5) = v23;
      v5 = *v140;
      if (!*v140)
      {
        goto LABEL_141;
      }

      if (v65)
      {
        while (1)
        {
          v68 = v66 - 1;
          if (v66 >= 4)
          {
            break;
          }

          if (v66 == 3)
          {
            v69 = *(v24 + 4);
            v70 = *(v24 + 5);
            v79 = __OFSUB__(v70, v69);
            v71 = v70 - v69;
            v72 = v79;
LABEL_53:
            if (v72)
            {
              goto LABEL_116;
            }

            v85 = &v24[16 * v66];
            v87 = *v85;
            v86 = *(v85 + 1);
            v88 = __OFSUB__(v86, v87);
            v89 = v86 - v87;
            v90 = v88;
            if (v88)
            {
              goto LABEL_119;
            }

            v91 = &v24[16 * v68 + 32];
            v93 = *v91;
            v92 = *(v91 + 1);
            v79 = __OFSUB__(v92, v93);
            v94 = v92 - v93;
            if (v79)
            {
              goto LABEL_122;
            }

            if (__OFADD__(v89, v94))
            {
              goto LABEL_123;
            }

            if (v89 + v94 >= v71)
            {
              if (v71 < v94)
              {
                v68 = v66 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          v95 = &v24[16 * v66];
          v97 = *v95;
          v96 = *(v95 + 1);
          v79 = __OFSUB__(v96, v97);
          v89 = v96 - v97;
          v90 = v79;
LABEL_67:
          if (v90)
          {
            goto LABEL_118;
          }

          v98 = &v24[16 * v68];
          v100 = *(v98 + 4);
          v99 = *(v98 + 5);
          v79 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v79)
          {
            goto LABEL_121;
          }

          if (v101 < v89)
          {
            goto LABEL_3;
          }

LABEL_74:
          v106 = v68 - 1;
          if (v68 - 1 >= v66)
          {
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
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          if (!*v148)
          {
            goto LABEL_138;
          }

          v107 = v24;
          v108 = *&v24[16 * v106 + 32];
          v109 = *&v24[16 * v68 + 40];
          sub_1000649E0(&(*v148)[8 * v108], &(*v148)[8 * *&v24[16 * v68 + 32]], &(*v148)[8 * v109], v5);
          if (v6)
          {
            goto LABEL_110;
          }

          if (v109 < v108)
          {
            goto LABEL_112;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v110 = v107;
          }

          else
          {
            v110 = sub_1000A2CCC(v107);
          }

          v13 = v153;
          if (v106 >= *(v110 + 2))
          {
            goto LABEL_113;
          }

          v111 = &v110[16 * v106];
          *(v111 + 4) = v108;
          *(v111 + 5) = v109;
          v154 = v110;
          sub_1000A2C40(v68);
          v24 = v154;
          v66 = *(v154 + 2);
          if (v66 <= 1)
          {
            goto LABEL_3;
          }
        }

        v73 = &v24[16 * v66 + 32];
        v74 = *(v73 - 64);
        v75 = *(v73 - 56);
        v79 = __OFSUB__(v75, v74);
        v76 = v75 - v74;
        if (v79)
        {
          goto LABEL_114;
        }

        v78 = *(v73 - 48);
        v77 = *(v73 - 40);
        v79 = __OFSUB__(v77, v78);
        v71 = v77 - v78;
        v72 = v79;
        if (v79)
        {
          goto LABEL_115;
        }

        v80 = &v24[16 * v66];
        v82 = *v80;
        v81 = *(v80 + 1);
        v79 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v79)
        {
          goto LABEL_117;
        }

        v79 = __OFADD__(v71, v83);
        v84 = v71 + v83;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v84 >= v76)
        {
          v102 = &v24[16 * v68 + 32];
          v104 = *v102;
          v103 = *(v102 + 1);
          v79 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v79)
          {
            goto LABEL_124;
          }

          if (v71 < v105)
          {
            v68 = v66 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_53;
      }

LABEL_3:
      v22 = v148[1];
      a4 = v139;
      if (v23 >= v22)
      {
        goto LABEL_99;
      }
    }
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_99:
  v5 = *v140;
  if (!*v140)
  {
    goto LABEL_144;
  }

  v23 = v24;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v129 = v23;
  }

  else
  {
LABEL_131:
    v129 = sub_1000A2CCC(v23);
  }

  v154 = v129;
  v23 = *(v129 + 2);
  if (v23 >= 2)
  {
    while (*v148)
    {
      v130 = *&v129[16 * v23];
      v131 = v129;
      v132 = *&v129[16 * v23 + 24];
      sub_1000649E0(&(*v148)[8 * v130], &(*v148)[8 * *&v129[16 * v23 + 16]], &(*v148)[8 * v132], v5);
      if (v6)
      {
        goto LABEL_110;
      }

      if (v132 < v130)
      {
        goto LABEL_125;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v131 = sub_1000A2CCC(v131);
      }

      if (v23 - 2 >= *(v131 + 2))
      {
        goto LABEL_126;
      }

      v133 = &v131[16 * v23];
      *v133 = v130;
      *(v133 + 1) = v132;
      v154 = v131;
      sub_1000A2C40(v23 - 1);
      v129 = v154;
      v23 = *(v154 + 2);
      if (v23 <= 1)
      {
        goto LABEL_110;
      }
    }

    goto LABEL_139;
  }

LABEL_110:
}

uint64_t sub_1000649E0(void **a1, void **a2, void **a3, void **a4)
{
  v65 = sub_1000AB7EC();
  v8 = *(v65 - 8);
  v9 = __chkstk_darwin(v65);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v63 = (&v58 - v12);
  v13 = __chkstk_darwin(v11);
  v60 = &v58 - v14;
  __chkstk_darwin(v13);
  v62 = (&v58 - v15);
  v16 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v16 = a2 - a1;
  }

  v17 = v16 >> 3;
  v18 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v18 = a3 - a2;
  }

  v19 = v18 >> 3;
  if (v17 < v18 >> 3)
  {
    if (a4 != a1 || &a1[v17] <= a4)
    {
      memmove(a4, a1, 8 * v17);
    }

    v67 = &a4[v17];
    if (a2 - a1 >= 8)
    {
      v20 = a2;
      if (a2 < a3)
      {
        v61 = (v8 + 8);
        v21 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
        v66 = a3;
        v22 = v62;
        while (1)
        {
          v23 = *v20;
          v63 = a4;
          v24 = *a4;
          v25 = v23;
          v26 = v24;
          result = [v25 v21[100]];
          if (!result)
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v28 = result;
          v64 = a1;
          sub_1000AB7BC();

          result = [v26 v21[100]];
          if (!result)
          {
            goto LABEL_48;
          }

          v29 = result;
          v30 = v60;
          sub_1000AB7BC();

          v31 = sub_1000AB7CC();
          v32 = *v61;
          v33 = v65;
          (*v61)(v30, v65);
          v32(v22, v33);

          if (v31 != -1)
          {
            break;
          }

          v35 = v20;
          a4 = v63;
          v34 = v64;
          v37 = v64 == v20++;
          v36 = v66;
          if (!v37)
          {
            goto LABEL_16;
          }

LABEL_17:
          a1 = v34 + 1;
          v21 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
          if (a4 >= v67 || v20 >= v36)
          {
            goto LABEL_41;
          }
        }

        v34 = v64;
        v35 = v63;
        a4 = v63 + 1;
        v36 = v66;
        if (v64 == v63)
        {
          goto LABEL_17;
        }

LABEL_16:
        *v34 = *v35;
        goto LABEL_17;
      }
    }

LABEL_41:
    a2 = a1;
    goto LABEL_43;
  }

  if (a4 != a2 || &a2[v19] <= a4)
  {
    memmove(a4, a2, 8 * v19);
  }

  v67 = &a4[v19];
  if (a3 - a2 < 8 || a2 <= a1)
  {
LABEL_43:
    if (a2 != a4 || a2 >= (a4 + ((v67 - a4 + (v67 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v67 - a4));
    }

    return 1;
  }

  v60 = (v8 + 8);
  v38 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
  v64 = a1;
LABEL_29:
  v59 = a2;
  v39 = a2 - 1;
  v40 = (a3 - 1);
  v41 = v67;
  v62 = v39;
  while (1)
  {
    v66 = v40;
    v42 = *--v41;
    v43 = *v39;
    v44 = v42;
    v45 = v43;
    result = [v44 v38[100]];
    if (!result)
    {
      goto LABEL_49;
    }

    v46 = result;
    v47 = a4;
    v48 = v63;
    sub_1000AB7BC();

    result = [v45 v38[100]];
    if (!result)
    {
      break;
    }

    v49 = result;
    v50 = v61;
    sub_1000AB7BC();

    v51 = sub_1000AB7CC();
    v52 = *v60;
    v53 = v50;
    v54 = v65;
    (*v60)(v53, v65);
    v52(v48, v54);

    if (v51 == -1)
    {
      a3 = v66;
      a4 = v47;
      v56 = v64;
      v57 = v62;
      if (v66 + 8 != v59)
      {
        *v66 = *v62;
      }

      v38 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
      if (v67 <= v47 || (a2 = v57, v57 <= v56))
      {
        a2 = v57;
        goto LABEL_43;
      }

      goto LABEL_29;
    }

    v55 = v66;
    a4 = v47;
    v39 = v62;
    if (v66 + 8 != v67)
    {
      *v66 = *v41;
    }

    v40 = v55 - 8;
    v67 = v41;
    v38 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
    if (v41 <= a4)
    {
      v67 = v41;
      a2 = v59;
      goto LABEL_43;
    }
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_100064EEC()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100064F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItem] = 0;
  v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_selectionType] = 0;
  v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_showsSeparator] = 1;
  v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected] = 0;
  v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_accessibilityRoleIsButton] = 0;
  v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_isDimmed] = 0;
  v44 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_titleLabel;
  v4 = [objc_allocWithZone(UILabel) init];
  [v4 setNumberOfLines:0];
  v47 = objc_opt_self();
  v5 = [v47 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
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

  v13 = objc_opt_self();
  v14 = [v13 fontWithDescriptor:v12 size:13.0];
  v15 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v16 = [v15 scaledFontForFont:v14];

  [v4 setFont:v16];
  *&v3[v44] = v4;
  v17 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_subtitleLabel;
  v18 = [objc_allocWithZone(UILabel) init];
  [v18 setNumberOfLines:0];
  v19 = [v47 preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v20 = [v13 fontWithDescriptor:v19 size:11.0];
  v21 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleSubheadline];
  v22 = [v21 scaledFontForFont:v20];

  [v18 setFont:v22];
  *&v3[v17] = v18;
  v23 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemImageView;
  v24 = [objc_allocWithZone(UIImageView) init];
  [v24 setContentMode:2];
  v25 = [v24 layer];

  [v25 setMasksToBounds:1];
  *&v3[v23] = v24;
  v26 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_horizontalStackView;
  v27 = [objc_allocWithZone(UIStackView) init];
  [v27 setAxis:0];
  [v27 setAlignment:3];
  [v27 setDistribution:0];
  [v27 setSpacing:10.0];
  *&v3[v26] = v27;
  v28 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_verticalStackView;
  v29 = [objc_allocWithZone(UIStackView) init];
  [v29 setAxis:1];
  [v29 setAlignment:1];
  [v29 setDistribution:0];
  [v29 setSpacing:2.0];
  *&v3[v28] = v29;
  v30 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkImageView;
  v31 = [v47 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  v32 = [v13 fontWithDescriptor:v31 size:13.0];
  v33 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v34 = [v33 scaledFontForFont:v32];

  v35 = [objc_opt_self() configurationWithFont:v34];
  v36 = sub_1000AC02C();
  v37 = [objc_opt_self() systemImageNamed:v36 withConfiguration:v35];

  v38 = [objc_allocWithZone(UIImageView) initWithImage:v37];
  *&v3[v30] = v38;
  v39 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkPlacholderView;
  *&v3[v39] = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell____lazy_storage___separatorView] = 0;
  if (a3)
  {
    v40 = sub_1000AC02C();
  }

  else
  {
    v40 = 0;
  }

  v48.receiver = v3;
  v48.super_class = type metadata accessor for MacListPickerTableViewCell();
  v41 = objc_msgSendSuper2(&v48, "initWithStyle:reuseIdentifier:", a1, v40);

  v42 = v41;
  sub_1000656F0();
  sub_100065840();
  sub_1000662E8();

  return v42;
}

void sub_1000656F0()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_verticalStackView];
  [v1 addArrangedSubview:*&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_titleLabel]];
  [v1 addArrangedSubview:*&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_subtitleLabel]];
  v2 = *&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_horizontalStackView];
  [v2 addArrangedSubview:*&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemImageView]];
  [v2 addArrangedSubview:v1];
  [v2 addArrangedSubview:*&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkImageView]];
  [v2 addArrangedSubview:*&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkPlacholderView]];
  v3 = [v0 contentView];
  [v3 addSubview:v2];

  v4 = [v0 contentView];
  v5 = sub_100066378();
  [v4 addSubview:v5];
}

void sub_100065840()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_horizontalStackView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000B3CB0;
  v3 = [v1 topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:12.0];
  *(v2 + 32) = v6;
  v7 = [v1 bottomAnchor];
  v8 = [v0 contentView];
  v9 = [v8 bottomAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:-12.0];
  *(v2 + 40) = v10;
  v11 = [v1 leadingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:16.0];
  *(v2 + 48) = v14;
  v15 = [v1 trailingAnchor];
  v16 = [v0 contentView];
  v17 = [v16 trailingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:-16.0];
  *(v2 + 56) = v18;
  v19 = *&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemImageView];
  v20 = [v19 heightAnchor];
  v21 = [v20 constraintEqualToConstant:48.0];

  *(v2 + 64) = v21;
  v22 = [v19 widthAnchor];
  v23 = [v22 constraintEqualToConstant:48.0];

  *(v2 + 72) = v23;
  v24 = *&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkPlacholderView];
  v25 = [v24 heightAnchor];
  v26 = *&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkImageView];
  v27 = [v26 image];
  v28 = 0.0;
  v29 = 0.0;
  if (v27)
  {
    v30 = v27;
    [v27 size];
    v29 = v31;
  }

  v32 = [v25 constraintEqualToConstant:v29];

  *(v2 + 80) = v32;
  v33 = [v24 widthAnchor];
  v34 = [v26 image];
  if (v34)
  {
    v35 = v34;
    [v34 size];
    v28 = v36;
  }

  v37 = objc_opt_self();
  v38 = [v33 constraintEqualToConstant:v28];

  *(v2 + 88) = v38;
  sub_10000F840();
  isa = sub_1000AC18C().super.isa;

  [v37 activateConstraints:isa];

  v60 = [v0 contentView];
  v40 = *&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_verticalStackView];
  v41 = v1;
  v42 = sub_100066378();
  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];

  v43 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell____lazy_storage___separatorView;
  v44 = [*&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell____lazy_storage___separatorView] heightAnchor];
  v45 = [v0 traitCollection];
  [v45 displayScale];
  v47 = v46;

  if (v47 <= 0.0)
  {
    v48 = [objc_opt_self() mainScreen];
    [v48 scale];
    v47 = v49;

    if (v47 <= 0.0)
    {
      v47 = 1.0;
    }
  }

  v50 = [v44 constraintEqualToConstant:1.0 / v47];

  [v50 setActive:1];
  v51 = [*&v0[v43] bottomAnchor];
  v52 = [v60 bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:-1.0];

  [v53 setActive:1];
  v54 = [*&v0[v43] leadingAnchor];
  v55 = [v40 leadingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:0.0];

  [v56 setActive:1];
  v57 = [*&v0[v43] trailingAnchor];
  v58 = [v41 trailingAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:-0.0];

  [v59 setActive:1];
}

double sub_100065F44(double result)
{
  v2 = *&v1[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItem];
  if (v2)
  {
    v3 = v1;
    v4 = *&v1[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_titleLabel];

    v5 = sub_1000AC02C();

    [v4 setText:v5];

    v6 = v2[8];
    if (v6)
    {
      v7 = v2[7];
      v8 = *&v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_subtitleLabel];

      v9 = sub_1000AC02C();
      [v8 setText:v9];

      [v8 setHidden:0];
      v22 = v2[5];
      v24 = v2[6];

      v27._countAndFlagsBits = 8250;
      v27._object = 0xE200000000000000;
      sub_1000AC12C(v27);

      v28._countAndFlagsBits = v7;
      v28._object = v6;
      sub_1000AC12C(v28);
    }

    else
    {
      v10 = *&v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_subtitleLabel];
      [v10 setText:0];
      [v10 setHidden:1];
    }

    v11 = sub_1000AC02C();

    [v3 setAccessibilityLabel:v11];

    v12 = sub_1000600B0();
    v13 = *&v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemImageView];
    if (v12)
    {
      v14 = v12;
      [*&v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemImageView] setImage:v12];
      [v13 setHidden:0];
      v15 = v2[11];
      if (v15 && (v16 = [v15 imageDescription]) != 0)
      {
        v17 = v16;
        [v13 setAccessibilityLabel:v16];

        [v13 setIsAccessibilityElement:{1, v22, v24}];
      }

      else
      {
        [v13 setAccessibilityLabel:{0, v22, v24}];
        [v13 setIsAccessibilityElement:{0, v23, v25}];
      }
    }

    else
    {
      [*&v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemImageView] setHidden:1];
      [v13 setAccessibilityLabel:0];
      [v13 setIsAccessibilityElement:0];
    }

    v18 = sub_100066378();
    if (![v3 isSelected] || (v19 = 0.0, v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_selectionType] != 1))
    {
      v19 = 1.0;
    }

    [v18 setAlpha:{v19, v22, v24}];

    v20 = *&v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkImageView];
    if (v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_selectionType] > 1u)
    {
      v21 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected;
      [v20 setHidden:(v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected] & 1) == 0];
      [*&v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkPlacholderView] setHidden:v3[v21]];
    }

    else
    {
      [v20 setHidden:1];
      [*&v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkPlacholderView] setHidden:1];
    }

    [v3 setNeedsUpdateConfiguration];
  }

  return result;
}

id sub_1000662E8()
{
  if (v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_accessibilityRoleIsButton])
  {
    v1 = &UIAccessibilityTraitButton;
  }

  else
  {
    v1 = &UIAccessibilityTraitStaticText;
  }

  v2 = *v1;
  if (v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_isDimmed] == 1)
  {
    v3 = UIAccessibilityTraitNotEnabled;
    if ((UIAccessibilityTraitNotEnabled & ~v2) == 0)
    {
      v3 = 0;
    }

    v2 |= v3;
  }

  if (v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected] == 1)
  {
    v4 = UIAccessibilityTraitSelected;
    if ((UIAccessibilityTraitSelected & ~v2) == 0)
    {
      v4 = 0;
    }

    v2 |= v4;
  }

  return [v0 setAccessibilityTraits:v2];
}

id sub_100066378()
{
  v1 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell____lazy_storage___separatorView);
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

uint64_t sub_1000663F0(uint64_t a1)
{
  v2 = sub_10000413C(&unk_1000F1C90, &qword_1000B3FF8);
  __chkstk_darwin(v2 - 8);
  v56 = &v47 - v3;
  v55 = sub_1000ABB7C();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1000ABBDC();
  v61 = *(v59 - 8);
  v5 = __chkstk_darwin(v59);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  v10 = sub_1000ABB3C();
  v58 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v57 = &v47 - v14;
  v15 = sub_1000ABAEC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v16;
  v19 = *(v16 + 16);
  v60 = v20;
  v19(v18, a1);
  if (sub_1000ABABC())
  {
    sub_1000ABADC();
  }

  sub_1000ABB1C();
  v21 = v60;
  v64 = v60;
  v65 = &protocol witness table for UICellConfigurationState;
  v22 = sub_100030970(v63);
  (v19)(v22, v18, v21);
  sub_1000ABB2C();
  v50 = *(v58 + 8);
  v51 = v58 + 8;
  v50(v13, v10);
  sub_10000E738(v63);
  sub_1000ABAFC();
  if (qword_1000EEDC0 != -1)
  {
    swift_once();
  }

  v23 = qword_1000FBEF0;
  sub_1000ABB0C();
  v24 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_selectionType;
  if (*(v62 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_selectionType) <= 1u)
  {
    sub_1000ABABC();
  }

  v54 = v10;
  sub_1000ABB4C();
  v25 = v60;
  v64 = v60;
  v65 = &protocol witness table for UICellConfigurationState;
  v26 = sub_100030970(v63);
  (v19)(v26, v18, v25);
  sub_1000ABBCC();
  v27 = *(v61 + 8);
  v61 += 8;
  v49 = v27;
  v27(v7, v59);
  sub_10000E738(v63);
  if (*(v62 + v24) == 2)
  {
    v28 = objc_opt_self();
    v29 = [v28 labelColor];
    v30 = sub_1000ABB8C();
    sub_1000ABB6C();
    v30(v63, 0);
    v31 = [v28 labelColor];
    v32 = sub_1000ABBAC();
    sub_1000ABB6C();
    v32(v63, 0);
  }

  v33 = v62;
  v34 = *(v62 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_titleLabel);
  v35 = v48;
  sub_1000ABB9C();
  isa = sub_1000ABB5C().super.isa;
  v37 = *(v53 + 8);
  v38 = v9;
  v39 = v55;
  v37(v35, v55);
  [v34 setTextColor:isa];

  v40 = *(v33 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_subtitleLabel);
  sub_1000ABBBC();
  v41 = sub_1000ABB5C().super.isa;
  v37(v35, v39);
  [v40 setTextColor:v41];

  v43 = v57;
  v42 = v58;
  v44 = v56;
  v45 = v54;
  (*(v58 + 16))(v56, v57, v54);
  (*(v42 + 56))(v44, 0, 1, v45);
  sub_1000AC2CC();
  v49(v38, v59);
  v50(v43, v45);
  return (*(v52 + 8))(v18, v60);
}

id sub_100066B34(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MacListPickerTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100066C48()
{
  *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_selectionType) = 0;
  *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_showsSeparator) = 1;
  *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected) = 0;
  *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_accessibilityRoleIsButton) = 0;
  *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_isDimmed) = 0;
  v37 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_titleLabel;
  v1 = [objc_allocWithZone(UILabel) init];
  [v1 setNumberOfLines:0];
  v38 = objc_opt_self();
  v2 = [v38 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  sub_10000413C(&qword_1000EF8B0, &unk_1000B4000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AF0E0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_10000413C(&qword_1000EF8B8, &qword_1000B0600);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1000AF0E0;
  *(v4 + 32) = UIFontWeightTrait;
  *(v4 + 40) = UIFontWeightSemibold;
  v5 = UIFontDescriptorTraitsAttribute;
  v6 = UIFontWeightTrait;
  v7 = sub_10004FA58(v4);

  *(inited + 64) = sub_10000413C(&qword_1000EF8C8, &unk_1000B0610);
  *(inited + 40) = v7;
  sub_10004FB48(inited);

  type metadata accessor for AttributeName(0);
  sub_100013968();
  isa = sub_1000ABFAC().super.isa;

  v9 = [v2 fontDescriptorByAddingAttributes:isa];

  v36 = objc_opt_self();
  v10 = [v36 fontWithDescriptor:v9 size:13.0];
  v11 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v12 = [v11 scaledFontForFont:v10];

  [v1 setFont:v12];
  *(v0 + v37) = v1;
  v13 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_subtitleLabel;
  v14 = [objc_allocWithZone(UILabel) init];
  [v14 setNumberOfLines:0];
  v15 = [v38 preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v16 = [v36 fontWithDescriptor:v15 size:11.0];
  v17 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleSubheadline];
  v18 = [v17 scaledFontForFont:v16];

  [v14 setFont:v18];
  *(v0 + v13) = v14;
  v19 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemImageView;
  v20 = [objc_allocWithZone(UIImageView) init];
  [v20 setContentMode:2];
  v21 = [v20 layer];

  [v21 setMasksToBounds:1];
  *(v0 + v19) = v20;
  v22 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_horizontalStackView;
  v23 = [objc_allocWithZone(UIStackView) init];
  [v23 setAxis:0];
  [v23 setAlignment:3];
  [v23 setDistribution:0];
  [v23 setSpacing:10.0];
  *(v0 + v22) = v23;
  v24 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_verticalStackView;
  v25 = [objc_allocWithZone(UIStackView) init];
  [v25 setAxis:1];
  [v25 setAlignment:1];
  [v25 setDistribution:0];
  [v25 setSpacing:2.0];
  *(v0 + v24) = v25;
  v26 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkImageView;
  v27 = [v38 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  v28 = [v36 fontWithDescriptor:v27 size:13.0];
  v29 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v30 = [v29 scaledFontForFont:v28];

  v31 = [objc_opt_self() configurationWithFont:v30];
  v32 = sub_1000AC02C();
  v33 = [objc_opt_self() systemImageNamed:v32 withConfiguration:v31];

  v34 = [objc_allocWithZone(UIImageView) initWithImage:v33];
  *(v0 + v26) = v34;
  v35 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkPlacholderView;
  *(v0 + v35) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell____lazy_storage___separatorView) = 0;
  sub_1000AC63C();
  __break(1u);
}

NSString sub_1000672D8()
{
  result = sub_1000AC02C();
  qword_1000FBFE0 = result;
  return result;
}

char *sub_100067310(void *a1, void *a2, char a3)
{
  v7 = type metadata accessor for URLHelper(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  *&v3[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_rawDictionary] = 0;
  v13 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_label;
  *&v3[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator;
  *&v3[v14] = [objc_allocWithZone(UIActivityIndicatorView) init];
  v3[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_showStateLabel] = 0;
  *&v3[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController] = 0;
  v3[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded] = 0;
  v3[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_viewDidAppearFired] = 0;
  v15 = &v3[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_bundleVersion];
  *v15 = 0;
  *(v15 + 1) = 0;
  v3[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_userCanSelect] = a3;
  v16 = a1;
  v17 = a2;
  sub_10004EA70(v12);
  sub_10001E764(v12, v10);
  v18 = sub_1000A47C0(v16, v17, v10, v3);

  sub_10001E7C8(v12);
  v19 = OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message;
  v20 = [*&v18[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] dictionaryValue];
  v21 = sub_1000ABFBC();

  if (*(v21 + 16))
  {
    v22 = sub_10004F0CC(0x63696D616E7964, 0xE700000000000000);
    if (v23)
    {
      sub_1000068B4(*(v21 + 56) + 32 * v22, &v51);
      sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
      if (swift_dynamicCast())
      {
        v24 = *&v50[0];
        if (*(*&v50[0] + 16) && (v25 = sub_10004F0CC(0x6E6F6973726576, 0xE700000000000000), (v26 & 1) != 0))
        {
          sub_1000068B4(*(v24 + 56) + 32 * v25, &v51);

          if (swift_dynamicCast())
          {
            v48 = v50[0];
            if (qword_1000EEEA8 != -1)
            {
              swift_once();
            }

            v27 = *&v18[v19];
            v47 = qword_1000F3AE0;
            v46 = v18;
            v28 = [v27 imageStore];
            if (v28)
            {
              v29 = v28;
              v45 = [v28 rawArray];

              v30 = v45;
              if (v45)
              {
                v52 = sub_100005A24(0, &qword_1000F1DD8, NSArray_ptr);
                *&v51 = v30;
                sub_100006910(&v51, v50);
                v45 = v30;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v49 = v21;
                sub_10003A3E8(v50, 0x736567616D69, 0xE600000000000000, isUniquelyReferenced_nonNull_native);

                v21 = v49;
              }
            }

            v32 = *(v21 + 16);
            if (v32)
            {
              v33 = sub_10004F0CC(0x6E655F6775626564, 0xED000064656C6261);
              if ((v34 & 1) != 0 && (sub_1000068B4(*(v21 + 56) + 32 * v33, &v51), swift_dynamicCast()))
              {
                LOBYTE(v32) = v50[0];
              }

              else
              {
                LOBYTE(v32) = 0;
              }
            }

            v36 = v46;
            v46[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_showStateLabel] = v32;
            v37 = *&v18[v19];

            v38 = [v37 isFromMe];
            v52 = &type metadata for Bool;
            LOBYTE(v51) = v38;
            sub_100006910(&v51, v50);
            v39 = swift_isUniquelyReferenced_nonNull_native();
            v49 = v21;
            sub_10003A3E8(v50, 0x654D6D6F72467369, 0xE800000000000000, v39);
            *&v36[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_rawDictionary] = v49;

            v40 = v48;
            *&v36[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_bundleVersion] = v48;

            if (qword_1000EEE80 != -1)
            {
              swift_once();
            }

            v41 = qword_1000FC008;
            v42 = sub_1000AC28C();
            sub_1000ABA5C("JITAppKit : initializing JITAppKit Base View controller ", 56, 2, &_mh_execute_header, v41, v42, _swiftEmptyArrayStorage);
            v43 = v47;
            *&v47[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_delegate + 8] = &off_1000DD1D0;
            swift_unknownObjectWeakAssign();
            v44 = [objc_opt_self() shared];
            [v44 setDelegate:v36];

            IMBJITAppBundleManager.load(_:)(v40);

            goto LABEL_20;
          }
        }

        else
        {
        }
      }

LABEL_20:

      return v18;
    }
  }

  return v18;
}

void sub_1000679C0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for IMBJITAppKitViewController();
  objc_msgSendSuper2(&v10, "viewDidDisappear:", v3 & 1);
  v4 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController;
  v5 = *&v2[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController];
  if (v5)
  {
    v6 = v5;
    [v6 willMoveToParentViewController:0];
    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      [v7 removeFromSuperview];

      [v6 removeFromParentViewController];
      v9 = *&v2[v4];
      *&v2[v4] = 0;

      v2[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100067AE8()
{
  if (qword_1000EEEA8 != -1)
  {
    swift_once();
  }

  v1 = [qword_1000F3AE0 bundleState];
  if (*(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_viewDidAppearFired) != 1)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v2 = qword_1000FC008;
    v3 = sub_1000AC28C();
    v4 = "JITAppKit : View is not on screen yet!";
    v5 = 38;
    goto LABEL_11;
  }

  if (*(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded))
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v2 = qword_1000FC008;
    v3 = sub_1000AC28C();
    v4 = "JITAppKit : View already on screen skipping relaunching the view";
    v5 = 64;
LABEL_11:

    sub_1000ABA5C(v4, v5, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);
    return;
  }

  if (v1 == 5)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v7 = qword_1000FC008;
    v8 = sub_1000AC2AC();
    sub_1000ABA5C("JITAppKit : Error state showing retry view", 42, 2, &_mh_execute_header, v7, v8, _swiftEmptyArrayStorage);
    v9 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator;
    [*(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator) stopAnimating];
    [*(v0 + v9) removeFromSuperview];

    sub_100069ED8(v10);
  }

  else if (v1 == 3)
  {
    v6 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator;
    [*(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator) stopAnimating];
    [*(v0 + v6) removeFromSuperview];

    sub_100067D5C();
  }

  else
  {

    sub_100068638();
  }
}

void sub_100067D5C()
{
  v1 = [v0 viewIfLoaded];
  if (!v1)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v26 = qword_1000FC008;
    v27 = sub_1000AC2AC();
    sub_1000ABA5C("JITAppKit : Unable to launch view as the view is in transition and is not ready to accept any constraints. Exiting as this might lead to a crash!", 145, 2, &_mh_execute_header, v26, v27, _swiftEmptyArrayStorage);

    sub_100069ED8(v28);
    return;
  }

  v2 = *&v0[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_rawDictionary];
  v3 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded;
  v56 = v1;
  if (!v2)
  {
    if (!v0[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded])
    {
      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      v31 = qword_1000FC008;
      v32 = sub_1000AC2AC();
      sub_1000ABA5C("JITAppKit : Unable to launch view as the data is empty.", 55, 2, &_mh_execute_header, v31, v32, _swiftEmptyArrayStorage);
      v33 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator;
      [*&v0[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator] stopAnimating];
      [*&v0[v33] removeFromSuperview];
      sub_100069ED8(v34);
      goto LABEL_23;
    }

LABEL_17:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v29 = qword_1000FC008;
    v30 = sub_1000AC28C();
    sub_1000ABA5C("JITAppKit : ViewController already onscreen. Skipping relaunch", 62, 2, &_mh_execute_header, v29, v30, _swiftEmptyArrayStorage);
LABEL_23:

    return;
  }

  if (v0[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded])
  {
    goto LABEL_17;
  }

  v4 = v0;
  v5 = *&v0[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation];

  v6 = [v5 recipientAddresses];
  v7 = sub_1000AC19C();

  v59 = sub_10000413C(qword_1000F1E10, &qword_1000B0490);
  *&v58 = v7;
  sub_100006910(&v58, v57);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v57, 0xD000000000000012, 0x80000001000BAF20, isUniquelyReferenced_nonNull_native);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v9 = qword_1000FC008;
  v10 = sub_1000AC28C();
  sub_1000ABA5C("JITAppKit : Attaching template to base view controller", 54, 2, &_mh_execute_header, v9, v10, _swiftEmptyArrayStorage);
  v11 = [objc_opt_self() shared];
  v12 = sub_1000AC02C();
  sub_10004D7AC(v2);
  isa = sub_1000ABFAC().super.isa;

  v14 = [v11 loadPage:v12 withData:isa];

  [v14 loadViewIfNeeded];
  v15 = [v14 view];
  if (!v15)
  {

    v35 = sub_1000AC2AC();
    sub_1000ABA5C("JITAppKit : Error with loading view for the given vc", 52, 2, &_mh_execute_header, v9, v35, _swiftEmptyArrayStorage);
    v36 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator;
    [*&v4[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator] stopAnimating];
    [*&v4[v36] removeFromSuperview];
    sub_100069ED8(v37);

LABEL_31:
    return;
  }

  v16 = v15;
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = v4;
  sub_10006A440();
  [*&v4[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator] stopAnimating];
  [v4 loadViewIfNeeded];
  v18 = [v4 view];
  if (v18)
  {
    v19 = v18;
    [v18 addSubview:v16];

    v20 = [v4 view];
    if (v20)
    {
      v21 = v20;

      [v21 bringSubviewToFront:v16];

      [v4 addChildViewController:v14];
      [v14 didMoveToParentViewController:v4];
      sub_10000413C(&unk_1000F06B0, qword_1000B0520);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1000B04D0;
      v23 = [v16 topAnchor];
      if (sub_10002CE60() == 1)
      {
        v24 = [v56 safeAreaLayoutGuide];
        v25 = [v24 topAnchor];
      }

      else
      {
        v25 = [v56 topAnchor];
      }

      v55 = objc_opt_self();
      v38 = [v23 constraintEqualToAnchor:v25];

      *(v22 + 32) = v38;
      v39 = [v16 bottomAnchor];
      v40 = [v56 safeAreaLayoutGuide];
      v41 = [v40 bottomAnchor];

      v42 = [v39 constraintEqualToAnchor:v41];
      *(v22 + 40) = v42;
      v43 = [v16 leftAnchor];
      v44 = [v56 safeAreaLayoutGuide];
      v45 = [v44 leftAnchor];

      v46 = [v43 constraintEqualToAnchor:v45];
      *(v22 + 48) = v46;
      v47 = [v16 rightAnchor];
      v48 = [v56 safeAreaLayoutGuide];
      v49 = [v48 rightAnchor];

      v50 = [v47 constraintEqualToAnchor:v49];
      *(v22 + 56) = v50;
      sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
      v51 = sub_1000AC18C().super.isa;

      [v55 activateConstraints:v51];

      v17[v3] = 1;
      v52 = *&v17[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController];
      *&v17[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController] = v14;
      v53 = v14;

      v54 = [objc_opt_self() defaultCenter];
      if (qword_1000EEE70 != -1)
      {
        swift_once();
      }

      [v54 addObserver:v17 selector:? name:? object:?];

      goto LABEL_31;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100068638()
{
  v1 = v0;
  v2 = sub_1000ABF3C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000ABF6C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000ABF8C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded;
  if ((v1[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded] & 1) == 0)
  {
    v89 = v11;
    v90 = v83 - v16;
    v91 = v9;
    v92 = v15;
    v27 = [v1 view];
    if (v27)
    {
      v28 = v27;
      v84 = v7;
      v85 = v5;
      v86 = v6;
      v87 = v3;
      v88 = v2;
      v29 = [objc_opt_self() systemBackgroundColor];
      [v28 setBackgroundColor:v29];

      v30 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator;
      [*&v1[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator] setActivityIndicatorViewStyle:100];
      [*&v1[v30] setTranslatesAutoresizingMaskIntoConstraints:0];
      [*&v1[v30] setHidesWhenStopped:1];
      v31 = [v1 view];
      if (v31)
      {
        v32 = v31;
        [v31 addSubview:*&v1[v30]];

        v83[2] = sub_10000413C(&unk_1000F06B0, qword_1000B0520);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1000B3780;
        v34 = [*&v1[v30] centerXAnchor];
        v35 = [v1 view];
        if (v35)
        {
          v36 = v35;
          v37 = [v35 centerXAnchor];

          v38 = [v34 constraintEqualToAnchor:v37];
          *(v33 + 32) = v38;
          v39 = [*&v1[v30] centerYAnchor];
          v40 = [v1 view];
          if (v40)
          {
            v41 = v40;
            v42 = objc_opt_self();
            v43 = [v41 centerYAnchor];

            v44 = [v39 constraintEqualToAnchor:v43];
            *(v33 + 40) = v44;
            v83[1] = sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
            isa = sub_1000AC18C().super.isa;

            [v42 activateConstraints:isa];

            sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
            v46 = sub_1000AC32C();
            sub_1000ABF7C();
            v47 = v90;
            sub_1000ABF9C();
            v89 = *(v89 + 8);
            (v89)(v14, v92);
            v48 = swift_allocObject();
            *(v48 + 16) = v1;
            aBlock[4] = sub_10006A824;
            aBlock[5] = v48;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100023BE0;
            aBlock[3] = &unk_1000DD218;
            v49 = _Block_copy(aBlock);
            v50 = v1;

            v51 = v91;
            sub_1000ABF5C();
            aBlock[0] = _swiftEmptyArrayStorage;
            sub_100042004();
            sub_10000413C(&unk_1000F1E00, &unk_1000B1BF0);
            sub_10004205C();
            v52 = v85;
            v53 = v88;
            sub_1000AC49C();
            sub_1000AC30C();
            _Block_release(v49);

            (*(v87 + 8))(v52, v53);
            (*(v84 + 8))(v51, v86);
            (v89)(v47, v92);
            if (v50[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_showStateLabel] != 1)
            {
              return;
            }

            v54 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_label;
            [*&v50[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_label] setTranslatesAutoresizingMaskIntoConstraints:0];
            [*&v50[v54] setNumberOfLines:0];
            v55 = *&v50[v54];
            v56 = sub_1000AC02C();
            [v55 setText:v56];

            v57 = [v50 view];
            if (v57)
            {
              v58 = v57;
              [v57 addSubview:*&v50[v54]];

              v59 = [v50 view];
              if (v59)
              {
                v60 = v59;
                v61 = swift_allocObject();
                *(v61 + 16) = xmmword_1000B04D0;
                v62 = [*&v50[v54] bottomAnchor];
                v63 = [v50 view];
                if (v63)
                {
                  v64 = v63;
                  v65 = [v63 bottomAnchor];

                  v66 = [v62 constraintEqualToAnchor:v65 constant:10.0];
                  *(v61 + 32) = v66;
                  v67 = [*&v50[v54] leadingAnchor];
                  v68 = [v50 view];
                  if (v68)
                  {
                    v69 = v68;
                    v70 = [v68 leadingAnchor];

                    v71 = [v67 constraintEqualToAnchor:v70 constant:10.0];
                    *(v61 + 40) = v71;
                    v72 = [*&v50[v54] trailingAnchor];
                    v73 = [v50 view];
                    if (v73)
                    {
                      v74 = v73;
                      v75 = [v73 trailingAnchor];

                      v76 = [v72 constraintEqualToAnchor:v75 constant:-10.0];
                      *(v61 + 48) = v76;
                      v77 = [*&v50[v54] topAnchor];
                      v78 = [v50 view];
                      if (v78)
                      {
                        v79 = v78;
                        v80 = [v78 topAnchor];

                        v81 = [v77 constraintEqualToAnchor:v80 constant:10.0];
                        *(v61 + 56) = v81;
                        v82 = sub_1000AC18C().super.isa;

                        [v60 addConstraints:v82];

                        return;
                      }

LABEL_32:
                      __break(1u);
                      return;
                    }

LABEL_31:
                    __break(1u);
                    goto LABEL_32;
                  }

LABEL_30:
                  __break(1u);
                  goto LABEL_31;
                }

LABEL_29:
                __break(1u);
                goto LABEL_30;
              }

LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  v18 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController;
  v19 = *&v1[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController];
  if (!v19)
  {
    return;
  }

  v20 = qword_1000EEE80;
  v92 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_1000FC008;
  v22 = sub_1000AC28C();
  sub_1000ABA5C("JITAppKit : Tearing down existing View and restarting", 53, 2, &_mh_execute_header, v21, v22, _swiftEmptyArrayStorage);
  [v92 willMoveToParentViewController:0];
  v23 = [v92 view];
  if (!v23)
  {
    goto LABEL_26;
  }

  v24 = v23;
  [v23 removeFromSuperview];

  [v92 removeFromParentViewController];
  v25 = *&v1[v18];
  *&v1[v18] = 0;

  v1[v17] = 0;
  sub_100068638();
  v26 = v92;
}

id sub_1000690C0(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded) != 1)
  {
    goto LABEL_5;
  }

  if (qword_1000EEEA8 != -1)
  {
    swift_once();
  }

  result = [qword_1000F3AE0 bundleState];
  if (result != 5)
  {
LABEL_5:
    v3 = *(a1 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator);

    return [v3 startAnimating];
  }

  return result;
}

void sub_100069170(void *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() defaultCenter];
  if (qword_1000EEE70 != -1)
  {
    swift_once();
  }

  [v4 removeObserver:v2 name:qword_1000FBFE0 object:0];

  v5 = [a1 userInfo];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = v5;
  v7 = sub_1000ABFBC();

  sub_1000AC54C();
  if (!*(v7 + 16) || (v8 = sub_10004F144(&v109), (v9 & 1) == 0))
  {

    sub_100005970(&v109);
LABEL_19:
    v107 = 0u;
    v108 = 0u;
    goto LABEL_20;
  }

  sub_1000068B4(*(v7 + 56) + 32 * v8, &v107);
  sub_100005970(&v109);

  if (!*(&v108 + 1))
  {
LABEL_20:
    sub_1000172E0(&v107);
    goto LABEL_21;
  }

  sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  countAndFlagsBits = v109._countAndFlagsBits;
  v11 = [a1 userInfo];
  if (!v11)
  {

    goto LABEL_19;
  }

  v12 = v11;
  v13 = sub_1000ABFBC();

  sub_1000AC54C();
  if (!*(v13 + 16) || (v14 = sub_10004F144(&v109), (v15 & 1) == 0))
  {

    sub_100005970(&v109);
    v107 = 0u;
    v108 = 0u;
    goto LABEL_25;
  }

  sub_1000068B4(*(v13 + 56) + 32 * v14, &v107);
  sub_100005970(&v109);

  if (!*(&v108 + 1))
  {
LABEL_25:

    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    v16 = v109._countAndFlagsBits;
    v104 = *(v2 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation);
    v17 = [v104 selectedMessage];
    v18 = [v17 session];

    if (!v18)
    {
      v18 = [objc_allocWithZone(MSSession) init];
    }

    v96 = v18;
    v103 = [objc_allocWithZone(MSMessage) initWithSession:v18];
    v100 = [objc_allocWithZone(MSMessageTemplateLayout) init];
    v19 = *(v2 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
    v20 = [v19 replyMessage];
    if (v20 && (v21 = v20, v22 = [v20 imageIdentifier], v21, v22))
    {
      sub_1000AC06C();
      v102 = v23;
    }

    else if (*(v16 + 16) && (v26 = sub_10004F0CC(0x6564496567616D69, 0xEF7265696669746ELL), (v27 & 1) != 0))
    {
      sub_1000068B4(*(v16 + 56) + 32 * v26, &v109);
      v28 = swift_dynamicCast();
      v29 = *(&v107 + 1);
      if (!v28)
      {
        v29 = 0;
      }

      v102 = v29;
    }

    else
    {
      v102 = 0;
    }

    v30 = [v19 replyMessage];
    if (v30 && (v31 = v30, v32 = [v30 imageIdentifier], v31, v32))
    {

      v33 = [v19 replyMessage];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 imageDescription];

        if (v35)
        {
          v95 = sub_1000AC06C();
          v101 = v36;

          goto LABEL_48;
        }
      }
    }

    else if (*(v16 + 16))
    {
      v37 = sub_10004F0CC(0xD000000000000010, 0x80000001000BAD80);
      if (v38)
      {
        sub_1000068B4(*(v16 + 56) + 32 * v37, &v109);
        v39 = swift_dynamicCast();
        v40 = v107;
        if (!v39)
        {
          v40 = 0;
        }

        v95 = v40;
        if (v39)
        {
          v41 = *(&v107 + 1);
        }

        else
        {
          v41 = 0;
        }

        v101 = v41;
LABEL_48:
        v42 = [v19 replyMessage];
        if (v42 || (v42 = [v19 receivedMessage]) != 0)
        {
          v43 = v42;
          v98 = [v42 style];

          if (!*(v16 + 16))
          {
            goto LABEL_55;
          }
        }

        else
        {
          v98 = BCBubbleViewStyleIcon;
          if (!*(v16 + 16))
          {
            goto LABEL_55;
          }
        }

        v44 = sub_10004F0CC(0x6E6F6974706163, 0xE700000000000000);
        if (v45)
        {
          sub_1000068B4(*(v16 + 56) + 32 * v44, &v109);
          if (swift_dynamicCast())
          {
            v46 = *(&v107 + 1);
            v47 = v107;
LABEL_56:
            v48 = [v19 replyMessage];
            v105 = v19;
            if (v48 && (v49 = v48, v50 = [v48 subtitle], v49, v50))
            {
              v51 = sub_1000AC06C();
              v53 = v52;
            }

            else
            {
              v51 = 0;
              v53 = 0;
            }

            v54 = [v105 replyMessage];
            if (v54 && (v55 = v54, v56 = [v54 image], v55, v56))
            {
              *&v107 = v56;
            }

            else if (*(v16 + 16) && (v57 = sub_10004F0CC(0xD000000000000010, 0x80000001000BAD80), (v58 & 1) != 0))
            {
              sub_1000068B4(*(v16 + 56) + 32 * v57, &v109);
              sub_100005A24(0, &qword_1000F3A70, UIImage_ptr);
              if ((swift_dynamicCast() & 1) == 0)
              {
                *&v107 = 0;
              }

              v56 = v107;
            }

            else
            {
              v56 = 0;
              *&v107 = 0;
            }

            [v100 setImage:v56];

            v59 = sub_1000AC02C();
            [v100 setCaption:v59];

            if (v53)
            {

              v60 = sub_1000AC02C();
            }

            else
            {
              v60 = 0;
            }

            [v100 setSubcaption:v60];

            *&v107 = v47;
            *(&v107 + 1) = v46;
            if (v53)
            {
              v109._countAndFlagsBits = 32;
              v109._object = 0xE100000000000000;

              v114._countAndFlagsBits = v51;
              v114._object = v53;
              sub_1000AC12C(v114);

              sub_1000AC12C(v109);
            }

            else
            {
            }

            v61 = sub_1000AC02C();
            [v103 setAccessibilityLabel:v61];

            v62 = [v104 selectedMessage];
            v63 = [v62 layout];

            if (v63)
            {

              v64 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v100];
              [v103 setLayout:v64];
            }

            else
            {
              [v103 setLayout:v100];
            }

            v99 = v98;
            v65 = sub_1000AC02C();
            if (v53)
            {
              v66 = sub_1000AC02C();
            }

            else
            {
              v66 = 0;
            }

            v67 = sub_1000AC02C();
            if (v102)
            {

              v68 = sub_1000AC02C();
            }

            else
            {
              v68 = 0;
            }

            if (v101)
            {

              v69 = sub_1000AC02C();
            }

            else
            {
              v69 = 0;
            }

            v70 = [objc_allocWithZone(BCMessageInfo) initWithTitle:v65 subtitle:v66 style:v99 alternateTitle:v67 imageIdentifier:v68 imageDescription:v69];

            type metadata accessor for IMBJITAppKitData();
            v97 = swift_allocObject();
            *(v97 + 16) = countAndFlagsBits;
            v71 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController;
            v72 = *(v2 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController);
            if (v72)
            {

              v73 = v72;
              [v73 willMoveToParentViewController:0];
              v74 = [v73 view];
              v75 = v105;
              if (!v74)
              {
                goto LABEL_97;
              }

              v76 = v74;

              [v76 removeFromSuperview];

              [v73 removeFromParentViewController];
              v77 = *(v2 + v71);
              *(v2 + v71) = 0;

              *(v2 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded) = 0;
            }

            else
            {

              v75 = v105;
            }

            v78 = BCMessageRootJITAppKitKey;
            v109._countAndFlagsBits = v75;
            v109._object = v103;
            v110 = v104;
            v111 = v70;
            v112 = BCMessageRootJITAppKitKey;
            v113 = v97;
            v79 = v75;
            v80 = v103;
            v81 = v104;
            v82 = v70;
            v83 = v78;

            sub_100036FA8(1);
            v84 = v2 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_unknownObjectRelease();
              if (swift_unknownObjectWeakLoadStrong())
              {
                v106 = v81;
                v85 = *(v84 + 8);
                v86 = v79;
                v87 = v80;
                v88 = v82;
                v89 = v83;
                ObjectType = swift_getObjectType();
                v91 = *(v85 + 16);
                v92 = type metadata accessor for IMBJITAppKitViewController();
                v93 = ObjectType;
                v83 = v89;
                v82 = v88;
                v80 = v87;
                v94 = v85;
                v81 = v106;
                v91(v2, v92, v93, v94);

                swift_unknownObjectRelease();
              }

              else
              {
              }

              return;
            }

            __break(1u);
LABEL_97:
            __break(1u);
            return;
          }
        }

LABEL_55:
        v47 = 0;
        v46 = 0xE000000000000000;
        goto LABEL_56;
      }
    }

    v95 = 0;
    v101 = 0;
    goto LABEL_48;
  }

LABEL_21:
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v24 = qword_1000FC008;
  v25 = sub_1000AC2AC();
  sub_1000ABA5C("JITAppKIT : Malformed response. Please retry with proper keys in the userinfo.", 78, 2, &_mh_execute_header, v24, v25, _swiftEmptyArrayStorage);
}

void sub_100069ED8(__n128 a1)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v2 = qword_1000FC008;
  v3 = sub_1000AC28C();
  sub_1000ABA5C("JITAppKit : Not able load bundle/launch view at this moment. Try again.", 71, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);
  v4 = [objc_allocWithZone(type metadata accessor for RetryView()) init];
  *&v4[OBJC_IVAR____TtC8Business9RetryView_delegate + 8] = &off_1000DD1E0;
  swift_unknownObjectWeakAssign();
  v5 = v4;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController;
  v7 = *&v1[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController];
  if (v7)
  {
    v8 = v7;
    [v8 willMoveToParentViewController:0];
    v9 = [v8 view];
    if (!v9)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v10 = v9;
    [v9 removeFromSuperview];

    [v8 removeFromParentViewController];
    v11 = *&v1[v6];
    *&v1[v6] = 0;

    v1[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded] = 0;
  }

  v12 = [v1 view];
  if (!v12)
  {
    goto LABEL_26;
  }

  v13 = v12;
  v14 = [v12 subviews];

  sub_100005A24(0, &qword_1000F0F30, UIView_ptr);
  v15 = sub_1000AC19C();

  if (v15 >> 62)
  {
    v16 = sub_1000AC65C();
    if (!v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_16;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = 0;
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = sub_1000AC5AC();
    }

    else
    {
      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    ++v17;
    [v18 removeFromSuperview];
    [v19 setHidden:1];
  }

  while (v16 != v17);
LABEL_16:

  v20 = [v1 view];
  if (!v20)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v20;
  [v20 addSubview:v5];

  v22 = [v1 view];
  if (!v22)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v23 = v22;
  [v22 bringSubviewToFront:v5];

  v24 = [v1 view];
  if (!v24)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v25 = v24;
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000B04B0;
  v27 = [v5 centerYAnchor];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v29 = v28;
  v30 = [v28 centerYAnchor];

  v31 = [v27 constraintEqualToAnchor:v30];
  *(v26 + 32) = v31;
  v32 = [v5 leadingAnchor];
  v33 = [v1 view];
  if (!v33)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v34 = v33;
  v35 = [v33 layoutMarginsGuide];

  v36 = [v35 leadingAnchor];
  v37 = [v32 constraintEqualToAnchor:v36];

  *(v26 + 40) = v37;
  v38 = [v5 trailingAnchor];

  v39 = [v1 view];
  if (!v39)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v40 = v39;
  v41 = [v39 layoutMarginsGuide];

  v42 = [v41 trailingAnchor];
  v43 = [v38 constraintEqualToAnchor:v42];

  *(v26 + 48) = v43;
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  isa = sub_1000AC18C().super.isa;

  [v25 addConstraints:isa];
}

id sub_10006A440()
{
  v1 = [v0 childViewControllers];
  sub_100005A24(0, &qword_1000F1DE0, UIViewController_ptr);
  v2 = sub_1000AC19C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_16:
  }

LABEL_15:
  v3 = sub_1000AC65C();
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_1000AC5AC();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    result = [v5 view];
    if (!result)
    {
      break;
    }

    v9 = result;
    [result removeFromSuperview];

    result = [v6 view];
    if (!result)
    {
      goto LABEL_20;
    }

    v10 = result;
    [result setHidden:1];

    [v6 removeFromParentViewController];
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10006A5DC()
{
}

id sub_10006A650(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IMBJITAppKitViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10006A7EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10006A82C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10006A844()
{
  *(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_rawDictionary) = 0;
  v1 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_label;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator;
  *(v0 + v2) = [objc_allocWithZone(UIActivityIndicatorView) init];
  *(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_showStateLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded) = 0;
  *(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_viewDidAppearFired) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_bundleVersion);
  *v3 = 0;
  v3[1] = 0;
  sub_1000AC63C();
  __break(1u);
}

uint64_t sub_10006A938()
{
  v1 = sub_1000ABF3C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000ABF6C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
  v9 = sub_1000AC32C();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_10006ABCC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023BE0;
  aBlock[3] = &unk_1000DD268;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_1000ABF5C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100042004();
  sub_10000413C(&unk_1000F1E00, &unk_1000B1BF0);
  sub_10004205C();
  sub_1000AC49C();
  sub_1000AC33C();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10006ABFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Outcome(255, *(a1 + 80), a3, a4);
  result = sub_1000AC42C();
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

char *sub_10006ACAC()
{
  v1 = *v0;

  v2 = *(*v0 + 96);
  type metadata accessor for Outcome(255, *(v1 + 80), v3, v4);
  v5 = sub_1000AC42C();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  return v0;
}

uint64_t sub_10006AD4C()
{
  sub_10006ACAC();

  return swift_deallocClassInstance();
}

double sub_10006ADBC(double a1, double a2)
{
  v4 = fmin(a1, 263.0);
  v5 = [*(v2 + OBJC_IVAR____TtC8Business13IMBBubbleView_widthConstraint) setConstant:v4];
  v6 = (*((swift_isaMask & *v2) + 0x390))(v5);
  if (v6 <= a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = a2;
  }

  v8 = OBJC_IVAR____TtC8Business13IMBBubbleView_heightConstraint;
  [*(v2 + OBJC_IVAR____TtC8Business13IMBBubbleView_heightConstraint) setActive:0];
  [*(v2 + v8) setConstant:v7];
  [*(v2 + v8) setActive:1];
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v9 = qword_1000FC008;
  v10 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000AF0F0;
  v12 = sub_1000AC36C();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_10000587C();
  *(v11 + 64) = v15;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v16 = sub_1000AC36C();
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 72) = v16;
  *(v11 + 80) = v17;
  sub_1000ABA5C("IMBBubbleView.contentSizeThatFits: size %@ preferredSize: %@", 60, 2, &_mh_execute_header, v9, v10, v11);

  return v4;
}

id sub_10006B384(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ABSBarButtonItem();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10006B3DC()
{
  v1 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___timeFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___timeFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___timeFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    [v4 setDateStyle:0];
    [v4 setTimeStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10006B524()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = sub_10006FB64();
  [v0 setFont:v1];

  if (sub_10002CE60() >= 2u)
  {
    v2 = [objc_opt_self() secondaryLabelColor];
  }

  else
  {
    v2 = 0;
  }

  [v0 setTextColor:v2];

  [v0 setNumberOfLines:0];
  return v0;
}

id sub_10006B694()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v0 setFont:v1];

  sub_100015C6C();
  isa = sub_1000AC39C(0.57647, 0.57647, 0.59608, 1.0).super.isa;
  [v0 setTextColor:isa];

  [v0 setNumberOfLines:0];
  [v0 setLineBreakMode:0];
  return v0;
}

id sub_10006B7F0(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_10006B898()
{
  v0 = [objc_opt_self() buttonWithType:0];
  v1 = [objc_opt_self() linkColor];
  [v0 setTitleColor:v1 forState:0];

  v2 = [v0 titleLabel];
  if (v2)
  {
    v3 = v2;
    if (sub_10002CE60() == 2)
    {
      v4 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleSubheadline];
      v5 = [objc_opt_self() systemFontOfSize:11.0];
      v6 = [v4 scaledFontForFont:v5];
    }

    else
    {
      v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
    }

    [v3 setFont:v6];
  }

  [v0 setContentHorizontalAlignment:1];
  return v0;
}

id sub_10006BA40()
{
  if (sub_10002CE60() >= 2u && (v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline]) != 0)
  {
    v1 = v0;
    v2 = [objc_opt_self() buttonWithType:0];
    v3 = [v2 titleLabel];
    if (v3)
    {
      v4 = v3;
      [v3 setFont:v1];
    }
  }

  else
  {
    v2 = [objc_opt_self() buttonWithType:1];
  }

  v5 = [objc_opt_self() mainBundle];
  v9._countAndFlagsBits = 0xE000000000000000;
  v10._object = 0x80000001000BB510;
  v10._countAndFlagsBits = 0xD000000000000010;
  v11.value._countAndFlagsBits = 0;
  v11.value._object = 0;
  v6.super.isa = v5;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1000AB61C(v10, v11, v6, v12, 0, v9);

  v7 = sub_1000AC02C();

  [v2 setTitle:v7 forState:0];

  return v2;
}

id sub_10006BC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___timeFormatter] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___dateLabel] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___conflictsLabel] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton] = 0;
  v6 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell_viewInCalendarButton;
  *&v3[v6] = sub_10006BA40();
  v7 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for IMBTimeslotsContainerView(0)) init];
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeSelectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotViewTopConstraint] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_conflictHeigthConstraint] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonHeigthConstraint] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonBottomConstraint] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonHeight] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonWidth] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData] = 0;
  v8 = &v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_urlHelper];
  v8[3] = type metadata accessor for URLHelper(0);
  v8[4] = &off_1000DCB20;
  v9 = sub_100030970(v8);
  sub_10004EA70(v9);
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___separatorView] = 0;
  if (a3)
  {
    v10 = sub_1000AC02C();
  }

  else
  {
    v10 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for IMBDateTableViewCell();
  v11 = objc_msgSendSuper2(&v14, "initWithStyle:reuseIdentifier:", a1, v10);

  v12 = v11;
  sub_10006BFA8();
  sub_10006C358();

  return v12;
}

id sub_10006BE04(void *a1)
{
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___timeFormatter] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___dateLabel] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___conflictsLabel] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton] = 0;
  v3 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell_viewInCalendarButton;
  *&v1[v3] = sub_10006BA40();
  v4 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for IMBTimeslotsContainerView(0)) init];
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeSelectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotViewTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_conflictHeigthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonHeigthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonHeight] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonWidth] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData] = 0;
  v5 = &v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_urlHelper];
  v5[3] = type metadata accessor for URLHelper(0);
  v5[4] = &off_1000DCB20;
  v6 = sub_100030970(v5);
  sub_10004EA70(v6);
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___separatorView] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for IMBDateTableViewCell();
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_10006BFA8();
    sub_10006C358();
  }

  return v8;
}

double sub_10006BFA8()
{
  if (sub_10002CE60() != 2)
  {
    goto LABEL_4;
  }

  if (qword_1000EEDC0 != -1)
  {
    goto LABEL_6;
  }

  while (1)
  {
    [isEscapingClosureAtFileLocation setBackgroundColor:qword_1000FBEF0];
LABEL_4:
    [isEscapingClosureAtFileLocation setBounds:{0.0, 0.0, 350.0, 10000.0}];
    [isEscapingClosureAtFileLocation setSelectionStyle:0];
    v1 = sub_10006B7D0();
    [v1 addTarget:isEscapingClosureAtFileLocation action:"toggleMoreLess" forControlEvents:64];

    v2 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_viewInCalendarButton);
    [v2 addTarget:isEscapingClosureAtFileLocation action:"viewInCalendar" forControlEvents:64];
    v3 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView);
    *(v3 + OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeSelectionDelegate + 8) = &off_1000DD398;
    swift_unknownObjectWeakAssign();
    v4 = [isEscapingClosureAtFileLocation contentView];
    [v4 addSubview:v3];

    v5 = [isEscapingClosureAtFileLocation contentView];
    [v5 addSubview:*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton)];

    v6 = [isEscapingClosureAtFileLocation contentView];
    v7 = sub_10006B4BC();
    [v6 addSubview:v7];

    v8 = [isEscapingClosureAtFileLocation contentView];
    v9 = sub_10006B62C();
    [v8 addSubview:v9];

    v10 = [isEscapingClosureAtFileLocation contentView];
    [v10 addSubview:v2];

    v11 = [isEscapingClosureAtFileLocation contentView];
    v12 = sub_10006F6DC();
    [v11 addSubview:v12];

    v13 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = isEscapingClosureAtFileLocation;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000701F8;
    *(v15 + 24) = v14;
    v19[4] = sub_1000701FC;
    v19[5] = v15;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_10006E6D8;
    v19[3] = &unk_1000DD5E8;
    v16 = _Block_copy(v19);
    v17 = isEscapingClosureAtFileLocation;

    [v13 performWithoutAnimation:v16];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_6:
    swift_once();
  }

  return result;
}

void sub_10006C358()
{
  if (!UIApp)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v1 = [UIApp preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

  v3 = sub_10006B7D0();
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v126 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView];
  [v126 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = sub_10006B4BC();
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = sub_10006B62C();
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v125 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_viewInCalendarButton];
  [v125 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___dateLabel;
  v7 = [*&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___dateLabel] topAnchor];
  v8 = [v0 contentView];
  v9 = [v8 topAnchor];

  v10 = sub_10002CE60();
  v11 = 20.0;
  if (v10 == 2)
  {
    v11 = 0.0;
  }

  v12 = [v7 constraintEqualToAnchor:v9 constant:v11];

  [v12 setActive:1];
  v13 = [*&v0[v6] leadingAnchor];
  v14 = [v0 layoutMarginsGuide];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  if (sub_10002CE60() != 2)
  {
    v18 = [*&v0[v6] heightAnchor];
    v19 = [v18 constraintGreaterThanOrEqualToConstant:22.0];

    [v19 setActive:1];
  }

  LODWORD(v17) = 1148846080;
  [*&v0[v6] setContentCompressionResistancePriority:1 forAxis:v17];
  v124 = v6;
  if (IsAccessibilityContentSizeCategory)
  {
    v20 = [*&v0[v6] trailingAnchor];
    v21 = [v0 layoutMarginsGuide];
    v22 = [v21 trailingAnchor];

    v23 = [v20 constraintEqualToAnchor:v22];
    [v23 setActive:1];

    v24 = &v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton];
    v25 = [*&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton] topAnchor];
    v26 = [*&v0[v6] bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    [v27 setActive:1];
    v28 = [*v24 leadingAnchor];
    v29 = [v0 layoutMarginsGuide];
    v30 = [v29 leadingAnchor];

    v31 = [v28 constraintEqualToAnchor:v30];
    p_attr = (&stru_1000E5FF8 + 8);
  }

  else
  {
    if (sub_10002CE60() == 2)
    {
      v33 = &selRef_firstBaselineAnchor;
    }

    else
    {
      v33 = &selRef_centerYAnchor;
    }

    v34 = [*&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton] *v33];
    v35 = [*&v0[v6] *v33];
    v36 = [v34 constraintEqualToAnchor:v35];

    [v36 setActive:1];
    v24 = &v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton];
    LODWORD(v37) = 1148846080;
    [*&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton] setContentHuggingPriority:0 forAxis:v37];
    v28 = [*&v0[v6] trailingAnchor];
    v30 = [*v24 leadingAnchor];
    p_attr = &stru_1000E5FF8.attr;
    v31 = [v28 constraintEqualToAnchor:v30 constant:-8.0];
  }

  v38 = v31;

  [v38 setActive:1];
  v39 = [*v24 trailingAnchor];
  v40 = [v0 layoutMarginsGuide];
  v41 = [v40 trailingAnchor];

  sub_10002CE60();
  v42 = [v39 p_attr[300]];

  [v42 setActive:1];
  v43 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton;
  v44 = [*&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton] heightAnchor];
  v45 = [v44 constraintEqualToConstant:0.0];

  v46 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonHeight];
  *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonHeight] = v45;

  v47 = [*&v0[v43] widthAnchor];
  v48 = [v47 constraintEqualToConstant:0.0];

  v49 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonWidth];
  *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonWidth] = v48;

  v50 = [v126 leadingAnchor];
  v51 = [v0 layoutMarginsGuide];
  v52 = [v51 leadingAnchor];

  sub_10002CE60();
  v53 = [v50 p_attr[300]];

  [v53 setActive:1];
  v54 = [v126 trailingAnchor];
  v55 = [v0 layoutMarginsGuide];
  v56 = [v55 trailingAnchor];

  sub_10002CE60();
  v57 = [v54 p_attr[300]];

  [v57 setActive:1];
  v58 = [v126 heightAnchor];
  v59 = sub_10002CE60();
  v60 = 55.0;
  if ((v59 & 0xFE) == 0)
  {
    v60 = 68.0;
  }

  v61 = [v58 constraintGreaterThanOrEqualToConstant:v60];

  [v61 setActive:1];
  v62 = [v126 topAnchor];
  v63 = [v0 contentView];
  v64 = [v63 topAnchor];

  v65 = [v62 constraintEqualToAnchor:v64];
  v66 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotViewTopConstraint];
  *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotViewTopConstraint] = v65;
  v67 = v65;

  if (!v67)
  {
    goto LABEL_26;
  }

  [v67 setActive:1];

  v68 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___conflictsLabel;
  v69 = [*&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___conflictsLabel] topAnchor];
  v70 = [v126 bottomAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];

  [v71 setActive:1];
  v72 = [*&v0[v68] leadingAnchor];
  v73 = [v0 layoutMarginsGuide];
  v74 = [v73 leadingAnchor];

  v75 = [v72 constraintEqualToAnchor:v74];
  [v75 setActive:1];

  v76 = [*&v0[v68] trailingAnchor];
  v77 = [v0 layoutMarginsGuide];
  v78 = [v77 trailingAnchor];

  v79 = [v76 constraintEqualToAnchor:v78];
  [v79 setActive:1];

  v80 = [v125 heightAnchor];
  v81 = [v80 constraintEqualToConstant:0.0];

  v82 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_conflictHeigthConstraint];
  *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_conflictHeigthConstraint] = v81;

  v83 = [v125 topAnchor];
  v84 = [*&v0[v68] bottomAnchor];
  v85 = [v83 constraintEqualToAnchor:v84];

  [v85 setActive:1];
  v86 = [v125 leadingAnchor];
  v87 = [v0 layoutMarginsGuide];
  v88 = [v87 leadingAnchor];

  v89 = [v86 constraintEqualToAnchor:v88];
  [v89 setActive:1];

  v90 = [v125 trailingAnchor];
  v91 = [v0 layoutMarginsGuide];
  v92 = [v91 trailingAnchor];

  v93 = [v90 constraintLessThanOrEqualToAnchor:v92];
  [v93 setActive:1];

  LODWORD(v94) = 1148846080;
  [v125 setContentHuggingPriority:0 forAxis:v94];
  v95 = [v125 bottomAnchor];
  v96 = [v0 contentView];
  v97 = [v96 bottomAnchor];

  v98 = [v95 constraintEqualToAnchor:v97 constant:-20.0];
  v99 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonBottomConstraint];
  *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonBottomConstraint] = v98;
  v100 = v98;

  if (!v100)
  {
LABEL_27:
    __break(1u);
    return;
  }

  [v100 setActive:1];

  v101 = [v125 heightAnchor];
  v102 = [v101 constraintEqualToConstant:0.0];

  v103 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonHeigthConstraint];
  *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonHeigthConstraint] = v102;

  if (sub_10002CE60() == 2)
  {
    v104 = *&v0[v124];
    v105 = [v0 layoutMarginsGuide];
    v106 = [v0 layoutMarginsGuide];
    v107 = sub_10006F6DC();
    [v107 setTranslatesAutoresizingMaskIntoConstraints:0];

    v108 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___separatorView;
    v109 = [*&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___separatorView] heightAnchor];
    v110 = [v0 traitCollection];
    [v110 displayScale];
    v112 = v111;

    if (v112 <= 0.0)
    {
      v113 = [objc_opt_self() mainScreen];
      [v113 scale];
      v112 = v114;

      if (v112 <= 0.0)
      {
        v112 = 1.0;
      }
    }

    v115 = [v109 constraintEqualToConstant:1.0 / v112];

    [v115 setActive:1];
    v116 = [*&v0[v108] bottomAnchor];
    v117 = [v104 bottomAnchor];
    v118 = [v116 constraintEqualToAnchor:v117 constant:4.0];

    [v118 setActive:1];
    v119 = [*&v0[v108] leadingAnchor];
    v120 = [v105 leadingAnchor];
    v121 = [v119 constraintEqualToAnchor:v120 constant:0.0];

    [v121 setActive:1];
    v122 = [*&v0[v108] trailingAnchor];
    v123 = [v106 trailingAnchor];
    v127 = [v122 constraintEqualToAnchor:v123 constant:-0.0];

    [v127 setActive:1];
  }

  else
  {
    v127 = [v0 contentView];
    sub_100090134(1, v127);
  }
}

void sub_10006D394()
{
  v1 = v0;
  [v0 setNeedsLayout];
  [v0 layoutIfNeeded];
  v2 = &v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeSelectionDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView];
  v6 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_expanded;
  v7 = v5[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_expanded];
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = (v7 & 1) == 0;
  *(v9 + 24) = v1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000701F8;
  *(v10 + 24) = v9;
  v25 = sub_1000701FC;
  v26 = v10;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_10006E6D8;
  v24 = &unk_1000DD4D0;
  v11 = _Block_copy(&v21);
  v12 = v1;

  [v8 performWithoutAnimation:v11];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    if (v5[v6] == 1)
    {
      v5[v6] = 0;
      v13 = swift_allocObject();
      *(v13 + 16) = v5;
      v25 = sub_100070208;
      v26 = v13;
      v21 = _NSConcreteStackBlock;
      v22 = 1107296256;
      v14 = &unk_1000DD570;
    }

    else
    {
      v5[v6] = 1;
      v15 = swift_allocObject();
      *(v15 + 16) = v5;
      v25 = sub_100070208;
      v26 = v15;
      v21 = _NSConcreteStackBlock;
      v22 = 1107296256;
      v14 = &unk_1000DD520;
    }

    v23 = sub_100023BE0;
    v24 = v14;
    v16 = _Block_copy(&v21);
    v17 = v5;

    [v8 animateWithDuration:v16 animations:{0.3, v21, v22}];
    _Block_release(v16);
    v18 = *&v12[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData];
    if (v18)
    {
      *(v18 + 24) = v5[v6];
    }

    sub_10006E700();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v2 + 1);
      v20 = swift_getObjectType();
      (*(v19 + 16))(v20, v19);
      swift_unknownObjectRelease();
    }
  }
}

id sub_10006D76C()
{
  v32 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  __chkstk_darwin(v32);
  v2 = &v29 - v1;
  v3 = sub_1000AB7EC();
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_1000AB6EC();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData);
  if (!v14)
  {
    return result;
  }

  v15 = *(v14 + 32);
  if (!v15)
  {
    return result;
  }

  v16 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    result = sub_1000AC65C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v15 & 0xC000000000000001) != 0)
  {

    v17 = sub_1000AC5AC();

LABEL_8:
    v18 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell_urlHelper;
    v30 = v0;
    sub_10000E6D4(v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_urlHelper, v34);
    sub_1000058D0(v34, v35);
    v31 = v17;
    result = [v17 startDate];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v19 = result;
    sub_1000AB7BC();

    sub_10004EC6C();
    v16 = v33;
    (*(v33 + 8))(v5, v3);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v13, v8, v9);
      sub_10000E738(v34);
      sub_10000E6D4(v30 + v18, v34);
      sub_1000058D0(v34, v35);
      sub_10004E400(v13, 1, 0, 0);

      (*(v10 + 8))(v13, v9);
      return sub_10000E738(v34);
    }

    sub_10004B9C0(v8);
    sub_10000E738(v34);
    if (qword_1000EEE80 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v15 + 32);
    goto LABEL_8;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_11:
  v20 = qword_1000FC008;
  v21 = sub_1000AC2AC();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000AF0E0;
  v23 = [v31 startDate];
  if (v23)
  {
    v24 = v23;
    sub_1000AB7BC();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v16 + 56))(v2, v25, 1, v3);
  v26 = sub_1000AC0CC();
  v28 = v27;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_10000587C();
  *(v22 + 32) = v26;
  *(v22 + 40) = v28;
  sub_1000ABA5C("IMBDateTableViewCell: Failed to generate calShow url for date %@", 64, 2, &_mh_execute_header, v20, v21, v22);
}

void sub_10006DC7C()
{
  v1 = v0;
  v2 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v66[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v66[-v6];
  v8 = sub_1000AB7EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v66[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData;
  v12 = *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData];
  if (v12)
  {
    v70 = v5;
    v13 = UIApp;
    if (!UIApp)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v14 = [v13 preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    v15 = [objc_allocWithZone(NSDateFormatter) init];
    v16 = *(v12 + 16) + OBJC_IVAR____TtC8Business15IMBProposedDate_date;
    v69 = *(v9 + 16);
    v69(v11, v16, v8);
    sub_10006FCDC(v11);
    v68 = *(v9 + 8);
    v68(v11, v8);
    v17 = sub_1000AC02C();

    v72 = v15;
    [v15 setDateFormat:v17];

    v18 = *&v1[v71];
    if (v18)
    {
      v19 = OBJC_IVAR____TtC8Business20IMBTableViewCellData_timezone;
      swift_beginAccess();
      sub_100012680(v18 + v19, v7);
      v20 = sub_1000AB91C();
      v21 = *(v20 - 8);
      isa = 0;
      if ((*(v21 + 48))(v7, 1, v20) != 1)
      {
        isa = sub_1000AB8EC().super.isa;
        (*(v21 + 8))(v7, v20);
      }
    }

    else
    {
      v23 = sub_1000AB91C();
      (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
      isa = 0;
    }

    [v72 setTimeZone:isa];

    v24 = *(v12 + 16);
    v25 = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
    swift_beginAccess();
    v26 = *(v24 + v25);
    if (v26 >> 62)
    {
      v27 = sub_1000AC65C();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = sub_10006B7D0();
    v29 = v28;
    v30 = "setHidden:";
    if (v27 <= 3)
    {
      [v28 setHidden:1];

      v31 = *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonHeight];
      if (!v31)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      [v31 setActive:1];
      v28 = *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonWidth];
      if (v28)
      {
LABEL_15:
        [v28 setActive:v27 < 4];
        v69(v11, *(v12 + 16) + OBJC_IVAR____TtC8Business15IMBProposedDate_date, v8);
        v33 = sub_1000AB77C().super.isa;
        v68(v11, v8);
        v34 = [v72 stringFromDate:v33];

        sub_1000AC06C();
        v35 = sub_10006B4BC();
        if (sub_10002CE60() == 2)
        {
          sub_1000AC0FC();
        }

        else
        {
        }

        v36 = v70;
        v37 = sub_1000AC02C();

        [v35 setText:v37];

        v38 = *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView];
        v39 = OBJC_IVAR____TtC8Business20IMBTableViewCellData_timezone;
        swift_beginAccess();
        sub_100012680(v12 + v39, v36);
        sub_100070384(v36);
        v40 = *(v12 + 16);
        v41 = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
        swift_beginAccess();
        *&v38[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslots] = *(v40 + v41);

        sub_100070E64();
        v42 = *&v1[v71];
        if (v42)
        {
          v43 = *(v42 + 24);
        }

        else
        {
          v43 = 0;
        }

        v38[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_expanded] = v43;
        v44 = objc_opt_self();
        v45 = swift_allocObject();
        *(v45 + 16) = v38;
        v77 = sub_100070130;
        v78 = v45;
        aBlock = _NSConcreteStackBlock;
        *&v46 = 1107296256;
        v74 = 1107296256;
        v75 = sub_100023BE0;
        v76 = &unk_1000DD3E0;
        v47 = _Block_copy(&aBlock);
        v48 = v38;

        [v44 animateWithDuration:v47 animations:0.3];
        _Block_release(v47);
        v49 = swift_allocObject();
        *(v49 + 16) = v43;
        *(v49 + 24) = v1;
        v50 = swift_allocObject();
        *(v50 + 16) = sub_100070188;
        *(v50 + 24) = v49;
        v77 = sub_1000701A4;
        v78 = v50;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v75 = sub_10006E6D8;
        v76 = &unk_1000DD458;
        v51 = _Block_copy(&aBlock);
        v52 = v1;

        [v44 performWithoutAnimation:v51];
        _Block_release(v51);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else
        {
          [v52 setNeedsLayout];
          [v52 layoutIfNeeded];
          v54 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___dateLabel;
          [*&v52[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___dateLabel] frame];
          v56 = v55;
          [*&v52[v54] frame];
          v46 = v56 + v57;
          if (sub_10002CE60() == 2)
          {
            v46 = v46 + 5.0;
          }

          if (!IsAccessibilityContentSizeCategory)
          {
            goto LABEL_28;
          }

          v58 = *(v12 + 16);
          v59 = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
          swift_beginAccess();
          v60 = *(v58 + v59);
          if (!(v60 >> 62))
          {
            if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }
        }

        if (sub_1000AC65C() >= 4)
        {
LABEL_27:
          v61 = sub_10006B7D0();
          [v61 bounds];
          v63 = v62;

          v46 = v46 + v63;
        }

LABEL_28:
        v64 = *&v52[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotViewTopConstraint];
        if (v64)
        {
          v65 = v64;

          [v65 setConstant:v46];

          return;
        }

        goto LABEL_36;
      }

      __break(1u);
    }

    [v28 v30];

    v32 = *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonHeight];
    if (!v32)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    [v32 setActive:0];
    v28 = *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonWidth];
    if (!v28)
    {
LABEL_39:
      __break(1u);
      return;
    }

    goto LABEL_15;
  }
}

void sub_10006E5C0(char a1)
{
  v2 = sub_10006B7D0();
  v3 = [objc_opt_self() mainBundle];
  v6._countAndFlagsBits = 0xE000000000000000;
  if (a1)
  {
    v4._countAndFlagsBits = 0x53454C5F574F4853;
    v4._object = 0xE900000000000053;
  }

  else
  {
    v4._countAndFlagsBits = 0x524F4D5F574F4853;
    v4._object = 0xE900000000000045;
  }

  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v5.super.isa = v3;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000AB61C(v4, v9, v5, v10, 0, v6);

  v7 = sub_1000AC02C();

  [v2 setTitle:v7 forState:0];
}

void sub_10006E700()
{
  v1 = sub_1000AB7EC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v87 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v86 = &v72 - v6;
  __chkstk_darwin(v5);
  v8 = &v72 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData);
  if (!v9)
  {
    goto LABEL_63;
  }

  v10 = *(v9 + 32);
  if (!v10)
  {
    goto LABEL_63;
  }

  v84 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    goto LABEL_55;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_63;
  }

  while (2)
  {
    v12 = *(v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView);
    if (!*(v12 + OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslots))
    {
      break;
    }

    type metadata accessor for IMBProposedTimeslot(0);

    v13.super.isa = sub_1000AC18C().super.isa;

    v14 = *(v12 + OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_expanded);
    v15 = [(objc_class *)v13.super.isa count];
    v16 = 3;
    if (v15 < 3)
    {
      v16 = v15;
    }

    if (v14)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    v18 = [(objc_class *)v13.super.isa subarrayWithRange:0, v17, v72];
    v19 = sub_1000AC19C();

    v20 = sub_10006FA78(v19);

    if (!v20)
    {
LABEL_62:

      break;
    }

    v21 = v20 & 0xFFFFFFFFFFFFFF8;
    v81 = v20 & 0xFFFFFFFFFFFFFF8;
    if (!(v20 >> 62))
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_14;
      }

LABEL_61:

      goto LABEL_62;
    }

    while (1)
    {
      v22 = sub_1000AC65C();
      v21 = v81;
      if (!v22)
      {
        goto LABEL_61;
      }

LABEL_14:
      v88 = v11;
      v72 = v0;
      v23 = 0;
      v80 = v20 & 0xC000000000000001;
      v73 = (v20 + 32);
      v89 = v10 & 0xC000000000000001;
      v24 = _swiftEmptyDictionarySingleton;
      v11 = (v2 + 8);
      v2 = v84;
      v78 = v22;
      v79 = v20;
      while (2)
      {
        if (v80)
        {
          v25 = v23;
          v91 = sub_1000AC5AC();
          v26 = __OFADD__(v25, 1);
          v0 = (v25 + 1);
          if (v26)
          {
            goto LABEL_54;
          }

LABEL_21:
          v82 = v0;
          v20 = 0;
          v90 = OBJC_IVAR____TtC8Business19IMBProposedTimeslot_startTime;
          v85 = OBJC_IVAR____TtC8Business19IMBProposedTimeslot_duration;
          while (2)
          {
            v83 = v24;
            v27 = v20;
            while (1)
            {
              if (v89)
              {
                v28 = sub_1000AC5AC();
              }

              else
              {
                if (v27 >= *(v2 + 16))
                {
                  goto LABEL_53;
                }

                v28 = *(v10 + 8 * v27 + 32);
              }

              v29 = v28;
              v20 = v27 + 1;
              if (__OFADD__(v27, 1))
              {
                __break(1u);
LABEL_53:
                __break(1u);
                goto LABEL_54;
              }

              sub_1000AB7AC();
              v31 = v30;
              v32 = [v29 endDate];
              if (!v32)
              {
                goto LABEL_67;
              }

              v33 = v32;
              sub_1000AB7BC();

              v0 = v8;
              sub_1000AB7AC();
              v35 = v34;
              v36 = *v11;
              (*v11)(v8, v1);
              if (v31 <= v35)
              {
                v37 = v8;
                v38 = v10;
                v39 = v1;
                v40 = [v29 startDate];
                if (!v40)
                {
                  goto LABEL_68;
                }

                v41 = v40;
                v42 = v86;
                sub_1000AB7BC();

                sub_1000AB7AC();
                v44 = v43;
                v45 = v42;
                v1 = v39;
                v36(v45, v39);
                sub_1000AB7AC();
                v0 = v87;
                sub_1000AB79C();
                sub_1000AB7AC();
                v47 = v46;
                v36(v0, v39);
                v10 = v38;
                v8 = v37;
                v2 = v84;
                if (v44 <= v47 && ([v29 isAllDay] & 1) == 0)
                {
                  break;
                }
              }

              ++v27;
              if (v20 == v88)
              {
                v24 = v83;
                goto LABEL_49;
              }
            }

            v48 = [v29 calendarItemIdentifier];
            v49 = sub_1000AC06C();
            v51 = v50;

            v76 = v29;
            v0 = v83;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v92 = v0;
            v75 = v49;
            v77 = v51;
            v52 = sub_10004F0CC(v49, v51);
            v54 = v52;
            v55 = v0[2];
            v56 = (v53 & 1) == 0;
            v57 = v55 + v56;
            if (__OFADD__(v55, v56))
            {
              goto LABEL_58;
            }

            v58 = v53;
            if (v0[3] < v57)
            {
              sub_1000394E4(v57, isUniquelyReferenced_nonNull_native);
              v0 = v92;
              v59 = sub_10004F0CC(v75, v77);
              if ((v58 & 1) != (v60 & 1))
              {
                goto LABEL_69;
              }

              v54 = v59;
              if ((v58 & 1) == 0)
              {
                goto LABEL_39;
              }

LABEL_43:

              v24 = v92;
              v66 = v92[7];
              v0 = *(v66 + 8 * v54);
              v67 = v76;
              *(v66 + 8 * v54) = v76;

              goto LABEL_44;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              if (v53)
              {
                goto LABEL_43;
              }
            }

            else
            {
              v0 = &v92;
              sub_10003ADE8();
              if (v58)
              {
                goto LABEL_43;
              }
            }

LABEL_39:
            v24 = v92;
            v92[(v54 >> 6) + 8] |= 1 << v54;
            v61 = (v24[6] + 16 * v54);
            v62 = v77;
            *v61 = v75;
            v61[1] = v62;
            v63 = v76;
            *(v24[7] + 8 * v54) = v76;

            v64 = v24[2];
            v26 = __OFADD__(v64, 1);
            v65 = v64 + 1;
            if (v26)
            {
              goto LABEL_59;
            }

            v24[2] = v65;
LABEL_44:
            if (v20 != v88)
            {
              continue;
            }

            break;
          }

LABEL_49:

          v20 = v79;
          v23 = v82;
          v21 = v81;
          if (v82 != v78)
          {
            continue;
          }

          v68 = v24[2];
          if (v68)
          {
            goto LABEL_64;
          }

          goto LABEL_51;
        }

        break;
      }

      v0 = v23;
      if (v23 < *(v21 + 16))
      {
        break;
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
    }

    v91 = v73[v23];

    v26 = __OFADD__(v0, 1);
    v0 = (v0 + 1);
    if (!v26)
    {
      goto LABEL_21;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    v11 = sub_1000AC65C();
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_63:
  v24 = _swiftEmptyDictionarySingleton;
  v68 = _swiftEmptyDictionarySingleton[2];
  if (!v68)
  {
LABEL_51:
    v69 = _swiftEmptyArrayStorage;
    goto LABEL_65;
  }

LABEL_64:
  v69 = sub_1000A4D28();
  v70 = sub_1000A45DC(&v92, v69 + 4, v68, v24);
  v71 = v92;

  sub_100012760(v71);
  if (v70 == v68)
  {
LABEL_65:
    sub_10006EE54(v69);
  }

  else
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    sub_1000AC7EC();
    __break(1u);
  }
}

void sub_10006EE54(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1000AB7EC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v72 - v9;
  v11 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  __chkstk_darwin(v11 - 8);
  v13 = &v72 - v12;
  if (a1 >> 62)
  {
    if (sub_1000AC65C())
    {
LABEL_3:
      v74 = v8;
      v76 = v5;
      v14 = sub_10006B3DC();
      isa = *(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData);
      if (isa)
      {
        v16 = OBJC_IVAR____TtC8Business20IMBTableViewCellData_timezone;
        swift_beginAccess();
        sub_100012680(isa + v16, v13);
        v17 = sub_1000AB91C();
        v18 = *(v17 - 8);
        isa = 0;
        if ((*(v18 + 48))(v13, 1, v17) != 1)
        {
          isa = sub_1000AB8EC().super.isa;
          (*(v18 + 8))(v13, v17);
        }
      }

      else
      {
        v19 = sub_1000AB91C();
        (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
      }

      [v14 setTimeZone:isa];

      if ((a1 & 0xC000000000000001) != 0)
      {
        v20 = v4;
        v21 = sub_1000AC5AC();
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_34;
        }

        v20 = v4;
        v21 = *(a1 + 32);
      }

      v22 = v21;
      v73 = a1 >> 62;
      v23 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___timeFormatter;
      v24 = *(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___timeFormatter);
      v25 = [v22 startDate];
      if (v25)
      {
        v26 = v25;
        sub_1000AB7BC();

        v27 = sub_1000AB77C().super.isa;
        v28 = *(v76 + 8);
        v29 = v10;
        v30 = v20;
        v28(v29, v20);
        v31 = [v24 stringFromDate:v27];

        v72 = sub_1000AC06C();
        v76 = v32;

        v33 = *(v2 + v23);
        v75 = v22;
        v34 = [v22 endDate];
        if (v34)
        {
          v35 = v34;
          v36 = v74;
          sub_1000AB7BC();

          v37 = sub_1000AB77C().super.isa;
          v28(v36, v30);
          v38 = [v33 stringFromDate:v37];

          v39 = sub_1000AC06C();
          v41 = v40;

          if (v73)
          {
            v42 = sub_1000AC65C();
          }

          else
          {
            v42 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v43 = sub_10006B62C();
          v44 = [objc_opt_self() mainBundle];
          if (v42 == 1)
          {
            v74 = v41;
            v71._countAndFlagsBits = 0xE000000000000000;
            v78._object = 0x80000001000BB480;
            v78._countAndFlagsBits = 0xD000000000000010;
            v80.value._countAndFlagsBits = 0;
            v80.value._object = 0;
            v45.super.isa = v44;
            v82._countAndFlagsBits = 0;
            v82._object = 0xE000000000000000;
            sub_1000AB61C(v78, v80, v45, v82, 0, v71);

            sub_10000413C(&qword_1000F0060, &unk_1000B0470);
            v46 = swift_allocObject();
            *(v46 + 16) = xmmword_1000B0620;
            v47 = [v75 title];
            if (!v47)
            {
LABEL_42:
              __break(1u);
              return;
            }

            v48 = v47;
            v49 = sub_1000AC06C();
            v51 = v50;

            *(v46 + 56) = &type metadata for String;
            v52 = sub_10000587C();
            *(v46 + 32) = v49;
            *(v46 + 40) = v51;
            *(v46 + 96) = &type metadata for String;
            *(v46 + 104) = v52;
            v53 = v72;
            *(v46 + 64) = v52;
            *(v46 + 72) = v53;
            *(v46 + 80) = v76;
            *(v46 + 136) = &type metadata for String;
            *(v46 + 144) = v52;
            v54 = v74;
            *(v46 + 112) = v39;
            *(v46 + 120) = v54;

            sub_1000AC03C();
          }

          else
          {
            v71._countAndFlagsBits = 0xE000000000000000;
            v79._countAndFlagsBits = 0xD00000000000001ALL;
            v79._object = 0x80000001000BB460;
            v81.value._countAndFlagsBits = 0;
            v81.value._object = 0;
            v55.super.isa = v44;
            v83._countAndFlagsBits = 0;
            v83._object = 0xE000000000000000;
            sub_1000AB61C(v79, v81, v55, v83, 0, v71);

            sub_10000413C(&qword_1000F0060, &unk_1000B0470);
            v56 = swift_allocObject();
            *(v56 + 16) = xmmword_1000AF0F0;
            *(v56 + 56) = &type metadata for Int;
            *(v56 + 64) = &protocol witness table for Int;
            *(v56 + 32) = v42;
            *(v56 + 96) = &type metadata for String;
            *(v56 + 104) = sub_10000587C();
            v57 = v76;
            *(v56 + 72) = v72;
            *(v56 + 80) = v57;

            sub_1000AC03C();
          }

          v58 = sub_1000AC02C();

          [v43 setText:v58];

          v59 = *(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonHeigthConstraint);
          if (v59)
          {
            [v59 setActive:0];
            v60 = *(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_conflictHeigthConstraint);
            if (v60)
            {
              [v60 setActive:0];
              [*(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_viewInCalendarButton) setAlpha:1.0];
              v61 = sub_10006B62C();
              [v61 setAlpha:1.0];

              v62 = *(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonBottomConstraint);
              if (v62)
              {
                v63 = v62;

                v64 = sub_10002CE60();
                v65 = -20.0;
                if (v64 == 2)
                {
                  v65 = -10.0;
                }

                [v63 setConstant:v65];

                return;
              }

              goto LABEL_38;
            }

LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v66 = sub_10006B62C();
  v67 = sub_1000AC02C();
  [v66 setText:v67];

  v68 = *(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonHeigthConstraint);
  if (!v68)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v68 setActive:1];
  v69 = *(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_conflictHeigthConstraint);
  if (!v69)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v69 setActive:1];
  [*(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_viewInCalendarButton) setAlpha:0.0];
  [*(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___conflictsLabel) setAlpha:0.0];
  v70 = *(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonBottomConstraint);
  if (!v70)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v70 setConstant:-12.0];
}

id sub_10006F6DC()
{
  v1 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___separatorView);
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

id sub_10006F754(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBDateTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10006F8D8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeSelectionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10006F968()
{
  v1 = v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeSelectionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10006F9E0()
{
  [v0 setNeedsLayout];
  [v0 layoutIfNeeded];
  v1 = &v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeSelectionDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_10006FA78(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_1000AC60C();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1000068B4(i, v5);
    type metadata accessor for IMBProposedTimeslot(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1000AC5EC();
    sub_1000AC61C();
    sub_1000AC62C();
    sub_1000AC5FC();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id sub_10006FB64()
{
  if (sub_10002CE60() > 1u)
  {
    v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleSubheadline];
    v8 = [objc_opt_self() systemFontOfSize:11.0 weight:UIFontWeightSemibold];
    v9 = [v7 scaledFontForFont:v8];

    return v9;
  }

  else
  {
    v0 = objc_opt_self();
    v1 = [v0 preferredFontForTextStyle:UIFontTextStyleTitle3];
    v2 = [v1 fontDescriptor];

    [v2 pointSize];
    v4 = v3;

    v5 = [v0 systemFontOfSize:v4 weight:UIFontWeightSemibold];

    return v5;
  }
}

uint64_t sub_10006FCDC(uint64_t a1)
{
  v30 = a1;
  v1 = sub_10000413C(&unk_1000F3B10, &qword_1000B4168);
  __chkstk_darwin(v1 - 8);
  v29 = &v27 - v2;
  v28 = sub_1000AB7EC();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000AB89C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000AB8BC();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB88C();
  v13 = enum case for Calendar.Component.year(_:);
  v14 = *(v7 + 104);
  v14(v9, enum case for Calendar.Component.year(_:), v6);
  sub_1000AB7DC();
  v15 = sub_1000AB8AC();
  (*(v3 + 8))(v5, v28);
  v16 = *(v7 + 8);
  v16(v9, v6);
  v14(v9, v13, v6);
  v17 = v12;
  v18 = sub_1000AB8AC();
  v16(v9, v6);
  v19 = v29;
  if (v15 == v18)
  {
    v20 = 0x4D4D202C45454545;
  }

  else
  {
    v20 = 0xD000000000000012;
  }

  v21 = sub_1000AC02C();

  sub_1000AB87C();
  v22 = sub_1000AB83C();
  v23 = *(v22 - 8);
  isa = 0;
  if ((*(v23 + 48))(v19, 1, v22) != 1)
  {
    isa = sub_1000AB82C().super.isa;
    (*(v23 + 8))(v19, v22);
  }

  v25 = [objc_opt_self() dateFormatFromTemplate:v21 options:0 locale:isa];

  if (v25)
  {

    v20 = sub_1000AC06C();
  }

  (*(v31 + 8))(v17, v32);
  return v20;
}

uint64_t sub_1000700F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100070138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100070150()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100070384(uint64_t a1)
{
  v3 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timezone;
  swift_beginAccess();
  sub_1000725E4(a1, v1 + v6);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_dateFormatter);
  sub_100012680(v1 + v6, v5);
  v8 = sub_1000AB91C();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v5, 1, v8) != 1)
  {
    isa = sub_1000AB8EC().super.isa;
    (*(v9 + 8))(v5, v8);
  }

  [v7 setTimeZone:isa];

  return sub_100072654(a1);
}

char *sub_100070520()
{
  v1 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView;
  *&v0[v1] = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_dateFormatter;
  v3 = [objc_allocWithZone(NSDateFormatter) init];
  [v3 setDateStyle:0];
  [v3 setTimeStyle:1];
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViewHeightConstraint] = 0;
  v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_areConflictsShowing] = 1;
  *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeSelectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews] = 0;
  *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslots] = 0;
  v4 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timezone;
  v5 = sub_1000AB91C();
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_expanded] = 0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for IMBTimeslotsContainerView(0);
  v6 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v7 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView;
  v8 = *&v6[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView];
  v9 = v6;
  v10 = sub_1000AC02C();
  [v8 setAccessibilityIdentifier:v10];

  v11 = [*&v6[v7] layer];
  [v11 setMasksToBounds:1];

  [v9 addSubview:*&v6[v7]];
  sub_100070984();

  return v9;
}

char *sub_100070750(void *a1)
{
  v3 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_dateFormatter;
  v5 = [objc_allocWithZone(NSDateFormatter) init];
  [v5 setDateStyle:0];
  [v5 setTimeStyle:1];
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViewHeightConstraint] = 0;
  v1[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_areConflictsShowing] = 1;
  *&v1[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeSelectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews] = 0;
  *&v1[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslots] = 0;
  v6 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timezone;
  v7 = sub_1000AB91C();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v1[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_expanded] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for IMBTimeslotsContainerView(0);
  v8 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);
  v9 = v8;
  if (v8)
  {
    v10 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView;
    v11 = *&v8[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView];
    v12 = v8;
    v13 = sub_1000AC02C();
    [v11 setAccessibilityIdentifier:v13];

    v14 = [*&v9[v10] layer];
    [v14 setMasksToBounds:1];

    [v12 addSubview:*&v9[v10]];
    sub_100070984();
  }

  return v9;
}

void sub_100070984()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 topAnchor];
  v3 = [v0 topAnchor];
  if ((sub_10002CE60() & 0xFE) != 0)
  {
    v4 = 10.0;
  }

  else
  {
    v4 = 12.0;
  }

  v5 = [v2 constraintEqualToAnchor:v3 constant:v4];

  [v5 setActive:1];
  v6 = [v1 leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  [v8 setActive:1];
  v9 = [v1 trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  [v11 setActive:1];
  v12 = [v1 bottomAnchor];
  v13 = [v0 bottomAnchor];
  if ((sub_10002CE60() & 0xFE) != 0)
  {
    v14 = 10.0;
  }

  else
  {
    v14 = 12.0;
  }

  v15 = [v12 constraintEqualToAnchor:v13 constant:v14];

  [v15 setActive:1];
  v16 = [v0 heightAnchor];
  v17 = [v16 constraintGreaterThanOrEqualToConstant:68.0];

  v18 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViewHeightConstraint;
  v19 = *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViewHeightConstraint];
  *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViewHeightConstraint] = v17;
  v20 = v17;

  if (!v20)
  {
    __break(1u);
    goto LABEL_13;
  }

  LODWORD(v21) = 1132068864;
  [v20 setPriority:v21];

  v22 = *&v0[v18];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v22 setActive:1];
}

id sub_100070C60()
{
  result = UIApp;
  if (UIApp)
  {
    v2 = [UIApp preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    if ((IsAccessibilityContentSizeCategory & 1) == 0)
    {
      v4 = (sub_10002CE60() & 0xFE) != 0 ? 20.0 : 24.0;
      [v0 frame];
      Width = CGRectGetWidth(v14);
      v6 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews;
      swift_beginAccess();
      v7 = *&v0[v6];
      if (v7)
      {
        if (v7 >> 62)
        {
LABEL_23:
          v8 = sub_1000AC65C();
        }

        else
        {
          v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v8)
        {
          v9 = 0;
          Width = (Width - v4) / 3.0;
          while (1)
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v10 = sub_1000AC5AC();
            }

            else
            {
              if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v10 = *(v7 + 8 * v9 + 32);
            }

            v11 = v10;
            v12 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            result = *&v10[OBJC_IVAR____TtC8Business15IMBTimeslotView_widthLayoutConstraint];
            if (!result)
            {
              break;
            }

            [result setConstant:Width];

            ++v9;
            if (v12 == v8)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_25;
        }

LABEL_19:
      }
    }

    v13.receiver = v0;
    v13.super_class = type metadata accessor for IMBTimeslotsContainerView(0);
    return objc_msgSendSuper2(&v13, "layoutSubviews");
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_100070E64()
{
  result = UIApp;
  if (!UIApp)
  {
    goto LABEL_92;
  }

  v2 = [UIApp preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

  v107 = *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView];
  v4 = [v107 subviews];
  sub_100072598();
  v5 = sub_1000AC19C();

  v114 = v0;
  if (v5 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000AC65C())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_1000AC5AC();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v8 removeFromSuperview];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v11 = v0;
  v13 = sub_100070320(v116);
  if (*v12)
  {
    *v12 = _swiftEmptyArrayStorage;
  }

  (v13)(v116, 0);
  v14 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews;
  swift_beginAccess();
  *&v114[v14] = _swiftEmptyArrayStorage;

  result = *&v114[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslots];
  if (!result)
  {
    return sub_100071D20();
  }

  v105 = result & 0xFFFFFFFFFFFFFF8;
  v113 = *&v114[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslots];
  v15 = result >> 62;
  if (IsAccessibilityContentSizeCategory)
  {
    if (v15)
    {
      goto LABEL_87;
    }

    v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_83;
    }

    goto LABEL_21;
  }

  if (v15)
  {
    v101 = *&v114[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslots];
    v45 = sub_1000AC65C();
    result = v101;
  }

  else
  {
    v45 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v104 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_dateFormatter;
  v46 = result;

  if (!v45)
  {
    v29 = 0;
    v81 = 0;
LABEL_81:

    goto LABEL_82;
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  v29 = 0;
  v102 = v45;
  v103 = v46 & 0xC000000000000001;
  while (v103)
  {
    result = sub_1000AC5AC();
    v50 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_85;
    }

LABEL_49:
    v109 = v50;
    v51 = objc_allocWithZone(type metadata accessor for IMBTimeslotView());

    v53 = sub_1000798CC(v52);
    v54 = *&v11[v104];
    v55 = *&v53[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel];
    isa = sub_1000AB77C().super.isa;
    v57 = [v54 stringFromDate:isa];

    if (!v57)
    {
      sub_1000AC06C();
      v57 = sub_1000AC02C();
    }

    [v55 setText:v57];

    *&v53[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeSelectionDelegate + 8] = &off_1000DD610;
    result = swift_unknownObjectWeakAssign();
    v112 = v48;
    v106 = v48 + 3 * (v47 / 3);
    if (v106)
    {
      v58 = (&stru_1000E5FF8 + 8);
      if (!v29)
      {
        goto LABEL_91;
      }

      v59 = v29;
      p_attr = (&stru_1000E5FF8 + 8);
    }

    else
    {
      v59 = [objc_allocWithZone(UIView) init];
      [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
      v61 = v107;
      [v107 addSubview:v59];
      if (v29)
      {
        if (v49)
        {
          v62 = v29;
          v63 = [v49 trailingAnchor];
          v64 = [v62 trailingAnchor];
          v65 = [v63 constraintEqualToAnchor:v64];

          p_attr = &stru_1000E5FF8.attr;
          [v65 setActive:1];
        }

        else
        {
          v69 = v29;
          p_attr = &stru_1000E5FF8.attr;
        }

        v70 = [v59 topAnchor];
        v71 = [v29 bottomAnchor];
        if ((sub_10002CE60() & 0xFE) != 0)
        {
          v72 = 10.0;
        }

        else
        {
          v72 = 12.0;
        }

        v68 = [v70 constraintEqualToAnchor:v71 constant:v72];

        [v68 setActive:1];
        v61 = v107;
      }

      else
      {
        v66 = [v59 topAnchor];
        v67 = [v107 topAnchor];
        v68 = [v66 constraintEqualToAnchor:v67];

        p_attr = &stru_1000E5FF8.attr;
        [v68 setActive:1];
        v29 = 0;
      }

      v73 = [v59 leadingAnchor];
      v74 = [v61 leadingAnchor];
      v75 = v61;
      v76 = [v73 constraintEqualToAnchor:v74];

      [v76 setActive:1];
      v77 = [v59 trailingAnchor];
      v78 = v75;
      v58 = &stru_1000E5FF8.attr;
      v79 = [v78 trailingAnchor];
      v80 = [v77 constraintEqualToAnchor:v79];

      [v80 setActive:1];
      v29 = v59;
    }

    v81 = v53;
    [v59 addSubview:v81];
    [v81 setTranslatesAutoresizingMaskIntoConstraints:0];
    v82 = [v81 topAnchor];
    v83 = [v59 topAnchor];
    v84 = [v82 v58[293]];

    [v84 p_attr[316]];
    v85 = [v81 bottomAnchor];

    v86 = [v59 bottomAnchor];
    v87 = [v85 v58[293]];

    [v87 p_attr[316]];
    if (v49)
    {
      v49 = v49;
      v88 = [v81 widthAnchor];

      v89 = [v49 widthAnchor];
      v90 = [v88 v58[293]];

      [v90 p_attr[316]];
      if (v106)
      {
        v91 = [v81 leadingAnchor];

        v92 = [v49 trailingAnchor];
        if ((sub_10002CE60() & 0xFE) != 0)
        {
          v93 = 10.0;
        }

        else
        {
          v93 = 12.0;
        }

        v94 = [v91 constraintEqualToAnchor:v92 constant:v93];
        v95 = v112;
        goto LABEL_72;
      }
    }

    else
    {
    }

    v95 = v112;
    v91 = [v81 leadingAnchor];

    v92 = [v59 leadingAnchor];
    v94 = [v91 v58[293]];
LABEL_72:
    v96 = v94;

    [v96 setActive:1];
    v11 = v114;
    v98 = sub_100070320(v116);
    if (*v97)
    {
      v99 = v97;
      sub_1000AC17C();
      if (*((*v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000AC1BC();
      }

      sub_1000AC1DC();
    }

    else
    {
    }

    (v98)(v116, 0);

    v48 = v95 - 1;
    ++v47;
    v49 = v81;
    if (v109 == v102)
    {
      goto LABEL_81;
    }
  }

  if (v47 >= *(v105 + 16))
  {
    goto LABEL_86;
  }

  v50 = v47 + 1;
  if (!__OFADD__(v47, 1))
  {
    goto LABEL_49;
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  v100 = result;
  v16 = sub_1000AC65C();
  result = v100;
  if (!v16)
  {
LABEL_83:
    [v114 setNeedsLayout];
    [v114 layoutIfNeeded];
    return sub_100071D20();
  }

LABEL_21:
  if (v16 >= 1)
  {
    v108 = result & 0xC000000000000001;
    v110 = *&v114[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_dateFormatter];

    v18 = 0;
    v19 = 0;
    v111 = v16;
    do
    {
      if (v108)
      {
        v20 = sub_1000AC5AC();
      }

      else
      {
        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = type metadata accessor for IMBTimeslotView();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeSelectionDelegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v22[OBJC_IVAR____TtC8Business15IMBTimeslotView_widthLayoutConstraint] = 0;
      v23 = OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel;
      v24 = objc_allocWithZone(UILabel);

      *&v22[v23] = [v24 init];
      v22[OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected] = 0;
      *&v22[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeslot] = v20;
      v115.receiver = v22;
      v115.super_class = v21;

      v25 = objc_msgSendSuper2(&v115, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      sub_100079D3C();
      sub_100079F40();

      *&v25[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeSelectionDelegate + 8] = &off_1000DD610;
      swift_unknownObjectWeakAssign();
      v26 = *&v25[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel];
      v27 = sub_1000AB77C().super.isa;
      v28 = [v110 stringFromDate:v27];

      if (!v28)
      {
        sub_1000AC06C();
        v28 = sub_1000AC02C();
      }

      [v26 setText:v28];

      v29 = v25;
      [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v107 addSubview:v29];
      v30 = [v29 topAnchor];
      if (v18)
      {
        v31 = [v18 bottomAnchor];
        if ((sub_10002CE60() & 0xFE) != 0)
        {
          v32 = 10.0;
        }

        else
        {
          v32 = 12.0;
        }

        v33 = [v30 constraintEqualToAnchor:v31 constant:v32];
        v34 = (&stru_1000E5FF8 + 8);
      }

      else
      {
        v31 = [v107 topAnchor];
        v34 = &stru_1000E5FF8.attr;
        v33 = [v30 constraintEqualToAnchor:v31];
      }

      v35 = v33;

      [v35 setActive:1];
      v36 = [v29 leadingAnchor];
      v37 = [v107 leadingAnchor];
      v38 = [v36 v34[293]];

      [v38 setActive:1];
      v39 = [v29 trailingAnchor];
      v40 = [v107 trailingAnchor];
      v41 = [v39 v34[293]];

      [v41 setActive:1];
      v43 = sub_100070320(v116);
      if (*v42)
      {
        v44 = v42;
        sub_1000AC17C();
        if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000AC1BC();
        }

        sub_1000AC1DC();
      }

      else
      {
      }

      (v43)(v116, 0);
      ++v19;

      v18 = v29;
      v17 = v113;
    }

    while (v111 != v19);
LABEL_82:

    goto LABEL_83;
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
  return result;
}

id sub_100071D20()
{
  v1 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews;
  result = swift_beginAccess();
  v3 = *&v0[v1];
  if (v3)
  {
    v4 = UIApp;
    if (!UIApp)
    {
      __break(1u);
      goto LABEL_70;
    }

    v5 = [v4 preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    v40 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_expanded;
    v6 = v3 >> 62;
    v38 = v3 >> 62;
    if (v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_expanded] == 1)
    {
      if (v6)
      {
        goto LABEL_21;
      }

      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    else
    {
      v7 = 3;
      if (v6)
      {
        goto LABEL_22;
      }
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000AC65C())
    {
      v9 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = sub_1000AC5AC();
        }

        else
        {
          if (v9 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v10 = *(v3 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v9 >= v7)
        {
          v13 = 0.0;
        }

        else
        {
          v13 = 1.0;
        }

        [v10 setAlpha:{v13, v38}];

        ++v9;
        if (v12 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v7 = sub_1000AC65C();
LABEL_22:
      ;
    }

LABEL_23:
    v14 = *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView];
    v15 = [v14 subviews];
    sub_100072598();
    v16 = sub_1000AC19C();

    if (v16 >> 62)
    {
      if (sub_1000AC65C())
      {
        goto LABEL_25;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = sub_1000AC5AC();
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_67;
        }

        v17 = *(v16 + 32);
      }

      v15 = v17;

      v18 = *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViewHeightConstraint];
      if ((IsAccessibilityContentSizeCategory & 1) == 0)
      {
        if (!v0[v40])
        {
          if (v18)
          {
            v33 = v18;

            [v15 bounds];
            v35 = v34;
            v36 = sub_10002CE60();
            v37 = 20.0;
            if ((v36 & 0xFE) == 0)
            {
              v37 = 24.0;
            }

            [v33 setConstant:v35 + v37];

            goto LABEL_60;
          }

LABEL_73:
          __break(1u);
          return result;
        }

        if (v18)
        {
          goto LABEL_34;
        }

        goto LABEL_71;
      }

      if (!v0[v40])
      {
        if (v18)
        {
          if (v39)
          {
            v26 = sub_1000AC65C();
          }

          else
          {
            v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v27 = v18;

          if (v26 >= 3)
          {
            v28 = 3;
          }

          else
          {
            v28 = v26;
          }

          [v15 bounds];
          v30 = v29;
          if ((sub_10002CE60() & 0xFE) != 0)
          {
            v31 = 10.0;
          }

          else
          {
            v31 = 12.0;
          }

          if ((sub_10002CE60() & 0xFE) != 0)
          {
            v32 = 10.0;
          }

          else
          {
            v32 = 12.0;
          }

          [v27 setConstant:v32 + (v30 + v31) * v28];

          goto LABEL_60;
        }

        goto LABEL_72;
      }

      if (v18)
      {
LABEL_34:
        v16 = v18;

        v19 = [v14 subviews];
        v20 = sub_1000AC19C();

        if (!(v20 >> 62))
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_36:

          [v15 bounds];
          v23 = v22;
          if ((sub_10002CE60() & 0xFE) != 0)
          {
            v24 = 10.0;
          }

          else
          {
            v24 = 12.0;
          }

          if ((sub_10002CE60() & 0xFE) != 0)
          {
            v25 = 10.0;
          }

          else
          {
            v25 = 12.0;
          }

          [v16 setConstant:v25 + (v23 + v24) * v21];

LABEL_60:
          return [v0 layoutIfNeeded];
        }

LABEL_67:
        v21 = sub_1000AC65C();
        goto LABEL_36;
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    return [v0 layoutIfNeeded];
  }

  return result;
}