UIImage *sub_100002008()
{
  v1 = objc_autoreleasePoolPush();
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v6 = [objc_opt_self() mainScreen];
  [v6 scale];
  v8 = v7;

  v11.width = v3;
  v11.height = v5;
  UIGraphicsBeginImageContextWithOptions(v11, 0, v8);
  [v0 bounds];
  [v0 drawViewHierarchyInRect:0 afterScreenUpdates:?];
  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  objc_autoreleasePoolPop(v1);
  return v9;
}

id sub_1000020E8(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(UILabel) init];
  sub_100003430(a1, a2, v5);
  v6 = [objc_opt_self() systemFontOfSize:15.0];
  [v5 setFont:v6];

  [v5 setNumberOfLines:0];
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  [v5 setTextColor:v8];

  v9 = v5;
  v10 = [v7 blackColor];
  v11 = [v10 colorWithAlphaComponent:0.3];

  [v9 setBackgroundColor:v11];
  [v9 sizeToFit];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:v9];
  v12 = objc_opt_self();
  sub_100002D54(&qword_1000634E0, &qword_10004C3C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10004C280;
  v14 = [v9 leadingAnchor];
  v15 = [v2 safeAreaLayoutGuide];
  v16 = [v15 leadingAnchor];

  v17 = [v14 constraintEqualToAnchor:v16];
  *(v13 + 32) = v17;
  v18 = [v9 trailingAnchor];
  v19 = [v2 safeAreaLayoutGuide];
  v20 = [v19 trailingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v13 + 40) = v21;
  v22 = [v9 bottomAnchor];

  v23 = [v2 safeAreaLayoutGuide];
  v24 = [v23 bottomAnchor];

  v25 = [v22 constraintLessThanOrEqualToAnchor:v24 constant:-200.0];
  *(v13 + 48) = v25;
  sub_100002D9C();
  isa = sub_10004AA4C().super.isa;

  [v12 activateConstraints:isa];

  return v9;
}

char *sub_100002474(uint64_t a1)
{
  v2 = sub_10004A71C();
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  v6 = objc_allocWithZone(type metadata accessor for GradientView(0));
  v7 = sub_1000248CC(v4);
  sub_100002560(v7, 1);
  return v7;
}

void sub_100002560(void *a1, char a2)
{
  v5 = [a1 layer];
  [v5 setZPosition:dbl_10004C9D8[a2]];

  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:a1];
  v6 = objc_opt_self();
  sub_100002D54(&qword_1000634E0, &qword_10004C3C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10004C290;
  v8 = [a1 leadingAnchor];
  v9 = [v2 leadingAnchor];
  v10 = sub_100003A8C();

  *(v7 + 32) = v10;
  v11 = [a1 trailingAnchor];
  v12 = [v2 trailingAnchor];
  v13 = sub_100003A8C();

  *(v7 + 40) = v13;
  v14 = [a1 topAnchor];
  v15 = [v2 topAnchor];
  v16 = sub_100003A8C();

  *(v7 + 48) = v16;
  v17 = [a1 bottomAnchor];
  v18 = [v2 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v7 + 56) = v19;
  sub_100002D9C();
  isa = sub_10004AA4C().super.isa;

  [v6 activateConstraints:isa];
}

void sub_1000027DC(CGFloat a1, double a2, double a3)
{
  if (a1 > 0.0)
  {
    [v3 bounds];
    v15.origin.x = 0.0;
    v15.origin.y = 0.0;
    v15.size.width = 0.0;
    v15.size.height = 0.0;
    if (!CGRectEqualToRect(v12, v15))
    {
      v7 = [v3 layer];
      [v7 setAnchorPoint:{a2, a3}];

      [v3 bounds];
      v8 = 1.0 / a1 * (a2 + -0.5) * CGRectGetWidth(v13);
      [v3 bounds];
      v9 = 1.0 / a1 * (a3 + -0.5) * CGRectGetHeight(v14);
      CGAffineTransformMakeScale(&v11, a1, a1);
      CGAffineTransformTranslate(&v10, &v11, v8, v9);
      v11 = v10;
      [v3 setTransform:&v11];
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for UnlockState(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000029D4(uint64_t a1, id *a2)
{
  result = sub_10004A96C();
  *a2 = 0;
  return result;
}

uint64_t sub_100002A4C(uint64_t a1, id *a2)
{
  v3 = sub_10004A97C();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100002ACC()
{
  sub_10004A98C();
  v0 = sub_10004A95C();

  return v0;
}

NSString sub_100002B40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002ACC();
  *a1 = result;
  return result;
}

uint64_t sub_100002B84()
{
  sub_10004A98C();
  v0 = sub_10004A9FC();

  return v0;
}

uint64_t sub_100002BD8(uint64_t a1, uint64_t a2)
{
  sub_10004A98C();
  sub_10004A9CC();
}

Swift::Int sub_100002C48(uint64_t a1, uint64_t a2)
{
  sub_10004A98C();
  sub_10004AFEC();
  sub_10004A9CC();
  v2 = sub_10004B00C();

  return v2;
}

void sub_100002CC8(uint64_t a2@<X8>)
{
  sub_100002CFC();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void sub_100002D04()
{
  sub_100003AA8();
  WeatherIntentResponseCode.rawValue.getter();
  *v0 = v1;
}

uint64_t sub_100002D54(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002D9C()
{
  result = qword_1000634E8;
  if (!qword_1000634E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000634E8);
  }

  return result;
}

uint64_t sub_100002E00(uint64_t a1)
{
  v2 = sub_100003568(&qword_100063598, type metadata accessor for CLError, &unk_10004C774);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100002E6C(uint64_t a1)
{
  v2 = sub_100003568(&qword_100063598, type metadata accessor for CLError, &unk_10004C774);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002ED8(void *a1, uint64_t a2)
{
  v4 = sub_100003568(&qword_100063598, type metadata accessor for CLError, &unk_10004C774);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100002F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003568(&qword_100063598, type metadata accessor for CLError, &unk_10004C774);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100003010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004AFEC();
  sub_10004A93C();
  return sub_10004B00C();
}

uint64_t sub_100003074(uint64_t a1)
{
  v2 = sub_100003568(&qword_100063600, type metadata accessor for AttributeName, &unk_10004C90C);
  v3 = sub_100003568(&qword_100063608, type metadata accessor for AttributeName, &unk_10004C500);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003134@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10004A95C();

  *a2 = v3;
  return result;
}

uint64_t sub_10000317C()
{
  v1 = sub_100003AA8();
  result = sub_1000031A4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000031A8(uint64_t a1)
{
  v2 = sub_100003568(&qword_1000635F0, type metadata accessor for TraitKey, &unk_10004C950);
  v3 = sub_100003568(&qword_1000635F8, type metadata accessor for TraitKey, &unk_10004C614);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003264(uint64_t a1)
{
  v2 = sub_100003568(&qword_1000635A0, type metadata accessor for CLError, &unk_10004C8C8);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000032D0(uint64_t a1)
{
  v2 = sub_100003568(&qword_1000635A0, type metadata accessor for CLError, &unk_10004C8C8);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100003340(uint64_t a1)
{
  v2 = sub_100003568(&qword_100063598, type metadata accessor for CLError, &unk_10004C774);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000033AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003568(&qword_100063598, type metadata accessor for CLError, &unk_10004C774);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

void sub_100003430(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10004A95C();
  [a3 setText:v4];
}

uint64_t sub_1000034C4(uint64_t a1, int a2)
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

uint64_t sub_1000034E4(uint64_t result, int a2, int a3)
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

uint64_t sub_100003568(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10000372C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_1000038E4()
{
  result = qword_1000635C8;
  if (!qword_1000635C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000635C8);
  }

  return result;
}

id sub_100003A8C()
{
  v4 = *(v2 + 4080);

  return [v0 v4];
}

uint64_t getEnumTagSinglePayload for UnlockState(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[16])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UnlockState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

Swift::Int sub_100003B68(unsigned __int8 a1)
{
  sub_10004AFEC();
  sub_10004AFFC(a1);
  return sub_10004B00C();
}

Swift::Int sub_100003BC0(uint64_t a1)
{
  v2 = *v1;
  sub_10004AFEC();
  sub_10004AFFC(v2);
  return sub_10004B00C();
}

uint64_t sub_100003C04(char a1)
{
  if (!a1)
  {
    return 0x64656B636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x64656B636F6C6E75;
  }

  return 0x697469736E617274;
}

uint64_t sub_100003C6C(char a1, double a2)
{
  sub_10004AD6C(27);

  strcpy(v6, "screenState:");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  if (a1)
  {
    if (a1 == 1)
    {
      v3._countAndFlagsBits = 0x64656B636F6C6E75;
    }

    else
    {
      v3._countAndFlagsBits = 0x697469736E617274;
    }

    if (a1 == 1)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xED0000676E696E6FLL;
    }
  }

  else
  {
    v4 = 0xE600000000000000;
    v3._countAndFlagsBits = 0x64656B636F6CLL;
  }

  v3._object = v4;
  sub_10004A9DC(v3);

  v7._countAndFlagsBits = 0x6572676F7270202CLL;
  v7._object = 0xEB000000003A7373;
  sub_10004A9DC(v7);
  v8._countAndFlagsBits = sub_10004AB3C();
  sub_10004A9DC(v8);

  return v6[0];
}

uint64_t getEnumTagSinglePayload for UnlockState.ScreenState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UnlockState.ScreenState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100003F44);
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

unint64_t sub_100003F90()
{
  result = qword_1000637A0;
  if (!qword_1000637A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000637A0);
  }

  return result;
}

uint64_t sub_100003FF8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100049F2C();
  sub_100005A00();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_18:

    return sub_100004288(v9, a2, v8);
  }

  sub_100049B7C();
  sub_100005A00();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_17:
    v9 = a1 + v12;
    goto LABEL_18;
  }

  sub_100049D9C();
  sub_100005A00();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_17;
  }

  sub_10004A69C();
  sub_100005A00();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[9];
    goto LABEL_17;
  }

  sub_100002D54(&unk_100063DE0, "4E");
  sub_100005A00();
  if (*(v18 + 84) == a2)
  {
    v8 = v17;
    v12 = a3[10];
    goto LABEL_17;
  }

  sub_10004A8AC();
  sub_100005A00();
  if (*(v20 + 84) == a2)
  {
    v8 = v19;
    v12 = a3[12];
    goto LABEL_17;
  }

  sub_100002D54(&qword_1000637A8, "4E");
  sub_100005A00();
  if (*(v22 + 84) == a2)
  {
    v8 = v21;
    v12 = a3[14];
    goto LABEL_17;
  }

  sub_10004A72C();
  sub_100005A00();
  if (*(v24 + 84) == a2)
  {
    v8 = v23;
    v12 = a3[16];
    goto LABEL_17;
  }

  v26 = *(a1 + a3[17]);
  if (v26 >= 0xFFFFFFFF)
  {
    LODWORD(v26) = -1;
  }

  v27 = v26 - 1;
  if (v27 < 0)
  {
    v27 = -1;
  }

  return (v27 + 1);
}

void sub_1000042C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100049F2C();
  sub_100005A00();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_100049B7C();
    sub_100005A00();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_100049D9C();
      sub_100005A00();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        sub_10004A69C();
        sub_100005A00();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[9];
        }

        else
        {
          sub_100002D54(&unk_100063DE0, "4E");
          sub_100005A00();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[10];
          }

          else
          {
            sub_10004A8AC();
            sub_100005A00();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[12];
            }

            else
            {
              sub_100002D54(&qword_1000637A8, "4E");
              sub_100005A00();
              if (*(v24 + 84) == a3)
              {
                v10 = v23;
                v14 = a4[14];
              }

              else
              {
                sub_10004A72C();
                sub_100005A00();
                if (*(v26 + 84) != a3)
                {
                  *(a1 + a4[17]) = a2;
                  return;
                }

                v10 = v25;
                v14 = a4[16];
              }
            }
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  sub_100004544(v11, a2, a2, v10);
}

uint64_t type metadata accessor for PosterAnimationViewModel(uint64_t a1)
{
  result = qword_100063808;
  if (!qword_100063808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000045B8(uint64_t a1)
{
  sub_100049F2C();
  if (v1 <= 0x3F)
  {
    sub_100049B7C();
    if (v2 <= 0x3F)
    {
      sub_100049D9C();
      if (v3 <= 0x3F)
      {
        sub_10004A69C();
        if (v4 <= 0x3F)
        {
          sub_100004750(319, &qword_100063818, &type metadata accessor for Date);
          if (v5 <= 0x3F)
          {
            sub_10004A8AC();
            if (v6 <= 0x3F)
            {
              sub_100004750(319, &qword_100063820, &type metadata accessor for BackgroundMoonData);
              if (v7 <= 0x3F)
              {
                sub_10004A72C();
                if (v8 <= 0x3F)
                {
                  sub_100004750(319, &qword_100063828, sub_1000047A4);
                  if (v9 <= 0x3F)
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

void sub_100004750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004ACDC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000047A4()
{
  result = qword_100063830;
  if (!qword_100063830)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100063830);
  }

  return result;
}

uint64_t sub_1000047E8(uint64_t a1, uint64_t a2)
{
  v96 = sub_10004A6DC();
  sub_1000059BC();
  v94 = v4;
  __chkstk_darwin(v5);
  sub_1000059D0();
  v92 = v7 - v6;
  v8 = sub_100002D54(&qword_1000637A8, "4E");
  v9 = sub_100005A50(v8);
  __chkstk_darwin(v9);
  v93 = &v87[-v10];
  v11 = sub_100002D54(&qword_100063898, &qword_10004CBB8);
  sub_100005A24();
  __chkstk_darwin(v12);
  v95 = &v87[-v13];
  sub_100005A44();
  v14 = sub_100049B7C();
  sub_1000059BC();
  v97 = v15;
  __chkstk_darwin(v16);
  sub_1000059D0();
  v19 = v18 - v17;
  v20 = sub_100002D54(&unk_100063DE0, "4E");
  v21 = sub_100005A50(v20);
  __chkstk_darwin(v21);
  sub_100005A34();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  v27 = &v87[-v26];
  v28 = sub_100002D54(&qword_1000638A0, &qword_10004CBC0);
  sub_100005A24();
  __chkstk_darwin(v29);
  sub_100005A34();
  v32 = (v30 - v31);
  __chkstk_darwin(v33);
  v35 = &v87[-v34];
  if ((sub_100049EEC() & 1) == 0)
  {
    return 0;
  }

  v91 = v11;
  v36 = a2;
  v37 = type metadata accessor for PosterAnimationViewModel(0);
  if ((sub_100049B2C() & 1) == 0 || (sub_10000A4A4(a1 + v37[6], v36 + v37[6]) & 1) == 0 || *(a1 + v37[7]) != *(v36 + v37[7]) || *(a1 + v37[8]) != *(v36 + v37[8]) || (sub_10004A68C() & 1) == 0)
  {
    return 0;
  }

  v89 = a1;
  v90 = v37;
  v38 = v37[10];
  v39 = a1 + v38;
  v40 = *(v28 + 48);
  sub_1000058BC(v39, v35, &unk_100063DE0, "4E");
  sub_1000058BC(v36 + v38, &v35[v40], &unk_100063DE0, "4E");
  sub_1000059E0(v35);
  v41 = v36;
  if (v43)
  {
    sub_1000059E0(&v35[v40]);
    v42 = v91;
    if (v43)
    {
      sub_10000591C(v35, &unk_100063DE0, "4E");
      goto LABEL_17;
    }

LABEL_15:
    v44 = &qword_1000638A0;
    v45 = &qword_10004CBC0;
    v46 = v35;
LABEL_27:
    sub_10000591C(v46, v44, v45);
    return 0;
  }

  sub_1000058BC(v35, v27, &unk_100063DE0, "4E");
  sub_1000059E0(&v35[v40]);
  if (v43)
  {
    (*(v97 + 8))(v27, v14);
    goto LABEL_15;
  }

  v47 = v40;
  v48 = v97;
  (*(v97 + 32))(v19, &v35[v47], v14);
  sub_100005A0C();
  sub_100005974(v49, v50, &protocol conformance descriptor for Date);
  v88 = sub_10004A94C();
  v51 = *(v48 + 8);
  v51(v19, v14);
  v51(v27, v14);
  v41 = v36;
  v42 = v91;
  sub_10000591C(v35, &unk_100063DE0, "4E");
  if ((v88 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v52 = v90[11];
  v53 = *(v28 + 48);
  sub_1000058BC(v89 + v52, v32, &unk_100063DE0, "4E");
  sub_1000058BC(v41 + v52, &v32[v53], &unk_100063DE0, "4E");
  sub_1000059E0(v32);
  if (v43)
  {
    sub_1000059E0(&v32[v53]);
    if (v43)
    {
      sub_10000591C(v32, &unk_100063DE0, "4E");
      goto LABEL_31;
    }

LABEL_25:
    v44 = &qword_1000638A0;
    v45 = &qword_10004CBC0;
LABEL_26:
    v46 = v32;
    goto LABEL_27;
  }

  sub_1000058BC(v32, v24, &unk_100063DE0, "4E");
  sub_1000059E0(&v32[v53]);
  if (v54)
  {
    (*(v97 + 8))(v24, v14);
    goto LABEL_25;
  }

  v56 = v97;
  (*(v97 + 32))(v19, &v32[v53], v14);
  sub_100005A0C();
  sub_100005974(v57, v58, &protocol conformance descriptor for Date);
  v59 = sub_10004A94C();
  v60 = *(v56 + 8);
  v60(v19, v14);
  v60(v24, v14);
  sub_10000591C(v32, &unk_100063DE0, "4E");
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v62 = v89;
  v61 = v90;
  if ((sub_10004A87C() & 1) == 0 || *(v62 + v61[13]) != *(v41 + v61[13]))
  {
    return 0;
  }

  v63 = v61[14];
  v64 = *(v42 + 48);
  v32 = v95;
  sub_1000058BC(v62 + v63, v95, &qword_1000637A8, "4E");
  sub_1000058BC(v41 + v63, &v32[v64], &qword_1000637A8, "4E");
  v65 = v96;
  if (sub_100004288(v32, 1, v96) != 1)
  {
    v66 = v93;
    sub_1000058BC(v32, v93, &qword_1000637A8, "4E");
    if (sub_100004288(&v32[v64], 1, v65) != 1)
    {
      v67 = v94;
      v68 = &v32[v64];
      v69 = v92;
      (*(v94 + 32))(v92, v68, v65);
      sub_100005974(&qword_1000638A8, &type metadata accessor for BackgroundMoonData, &protocol conformance descriptor for BackgroundMoonData);
      v70 = sub_10004A94C();
      v71 = *(v67 + 8);
      v71(v69, v65);
      v71(v66, v65);
      sub_10000591C(v32, &qword_1000637A8, "4E");
      if ((v70 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_40;
    }

    (*(v94 + 8))(v66, v65);
    goto LABEL_38;
  }

  if (sub_100004288(&v32[v64], 1, v65) != 1)
  {
LABEL_38:
    v44 = &qword_100063898;
    v45 = &qword_10004CBB8;
    goto LABEL_26;
  }

  sub_10000591C(v32, &qword_1000637A8, "4E");
LABEL_40:
  if (*(v62 + v90[15]) != *(v41 + v90[15]))
  {
    return 0;
  }

  v72 = v41;
  v73 = v90;
  if ((sub_10000A960(v62 + v90[16], v72 + v90[16]) & 1) == 0)
  {
    return 0;
  }

  v74 = v73[17];
  v75 = *(v62 + v74);
  v76 = v72;
  v77 = *(v72 + v74);
  if (v75)
  {
    if (!v77)
    {
      return 0;
    }

    sub_1000047A4();
    v78 = v77;
    v79 = v75;
    v80 = sub_10004ACBC();

    if ((v80 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v77)
  {
    return 0;
  }

  v81 = v90[18];
  v82 = *(v89 + v81);
  v83 = *(v76 + v81);
  if (v82)
  {
    if (v83)
    {
      sub_1000047A4();
      v84 = v83;
      v85 = v82;
      v86 = sub_10004ACBC();

      if (v86)
      {
        return 1;
      }
    }
  }

  else if (!v83)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1000050D8@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v80 = a3;
  v81 = a2;
  v79 = a1;
  v5 = sub_100002D54(&qword_1000637A8, "4E");
  v6 = sub_100005A50(v5);
  __chkstk_darwin(v6);
  v76 = &v71 - v7;
  sub_100005A44();
  sub_10004A8AC();
  sub_1000059BC();
  v77 = v9;
  v78 = v8;
  __chkstk_darwin(v8);
  sub_1000059D0();
  v75 = v11 - v10;
  v12 = sub_100002D54(&unk_100063DE0, "4E");
  v13 = sub_100005A50(v12);
  __chkstk_darwin(v13);
  sub_100005A34();
  v87 = v14 - v15;
  __chkstk_darwin(v16);
  v85 = &v71 - v17;
  sub_100005A44();
  v84 = sub_10004A69C();
  sub_1000059BC();
  v92 = v18;
  __chkstk_darwin(v19);
  sub_1000059D0();
  v91 = v21 - v20;
  sub_100005A44();
  v93 = sub_100049D9C();
  sub_1000059BC();
  v95 = v22;
  __chkstk_darwin(v23);
  sub_1000059D0();
  v94 = v25 - v24;
  sub_100005A44();
  v71 = sub_100049BCC();
  sub_1000059BC();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_1000059D0();
  v31 = v30 - v29;
  sub_100049F2C();
  sub_1000059BC();
  v89 = v33;
  v90 = v32;
  __chkstk_darwin(v32);
  sub_1000059D0();
  v88 = v35 - v34;
  v36 = sub_100049B7C();
  v82 = v36;
  v72 = *(v36 - 8);
  v37 = v72;
  __chkstk_darwin(v36);
  sub_100005A34();
  v40 = (v38 - v39);
  v42 = __chkstk_darwin(v41);
  v44 = &v71 - v43;
  __chkstk_darwin(v42);
  v46 = &v71 - v45;
  sub_100049B6C();
  v83 = v46;
  sub_100049B5C();
  v48 = v37 + 8;
  v47 = *(v37 + 8);
  v86 = v44;
  v47(v44, v36);
  v73 = v47;
  v74 = v48;
  sub_100049F1C();
  sub_100049BBC();
  sub_100049ABC();
  v49 = *(v27 + 8);
  v50 = v71;
  v49(v31, v71);
  sub_100049BBC();
  sub_100049ACC();
  v49(v31, v50);
  v51 = v82;
  v47(v40, v82);
  (*(v95 + 104))(v94, enum case for WeatherCondition.mostlyClear(_:), v93);
  v52 = v84;
  (*(v92 + 104))(v91, enum case for CloudAltitudeKind.low(_:), v84);
  sub_100049BBC();
  sub_100049ABC();
  v49(v31, v50);
  sub_100005A5C();
  sub_100049BBC();
  v53 = v87;
  sub_100049ABC();
  v49(v31, v50);
  sub_100005A5C();
  v54 = v75;
  sub_10004A8BC();
  v55 = sub_10004A6DC();
  v56 = v76;
  sub_100004544(v76, 1, 1, v55);
  (*(v89 + 16))(a4, v88, v90);
  v57 = type metadata accessor for PosterAnimationViewModel(0);
  (*(v72 + 16))(a4 + v57[5], v86, v51);
  (*(v95 + 16))(a4 + v57[6], v94, v93);
  *(a4 + v57[7]) = 0;
  *(a4 + v57[8]) = 0;
  (*(v92 + 16))(a4 + v57[9], v91, v52);
  v58 = v85;
  sub_1000058BC(v85, a4 + v57[10], &unk_100063DE0, "4E");
  sub_1000058BC(v53, a4 + v57[11], &unk_100063DE0, "4E");
  v59 = v77;
  v60 = v54;
  v61 = v54;
  v62 = v78;
  (*(v77 + 16))(a4 + v57[12], v60, v78);
  *(a4 + v57[13]) = 1;
  sub_1000058BC(v56, a4 + v57[14], &qword_1000637A8, "4E");
  *(a4 + v57[15]) = v80;
  v63 = v79;
  *(a4 + v57[17]) = v79;
  v64 = v81;
  *(a4 + v57[18]) = v81;
  v65 = v57[16];
  v66 = v63;
  v67 = v64;
  sub_100035598(a4 + v65);
  sub_10000591C(v56, &qword_1000637A8, "4E");
  (*(v59 + 8))(v61, v62);
  sub_10000591C(v87, &unk_100063DE0, "4E");
  sub_10000591C(v58, &unk_100063DE0, "4E");
  (*(v92 + 8))(v91, v84);
  (*(v95 + 8))(v94, v93);
  v68 = v82;
  v69 = v73;
  v73(v86, v82);
  (*(v89 + 8))(v88, v90);
  return v69(v83, v68);
}

uint64_t sub_1000058BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100002D54(a3, a4);
  sub_100005A24();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10000591C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100002D54(a2, a3);
  sub_100005A24();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100005974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100005A5C()
{

  return sub_100004544(v1, 0, 1, v0);
}

uint64_t sub_100005A7C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100002D54(&qword_100064230, &qword_10004CC28);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_10004A22C();
  sub_1000059BC();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100008994();
  *v16 = sub_10004ABFC();
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = sub_10004A24C();
  result = (*(v13 + 8))(v16, v11);
  if (v17)
  {
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a2;
    v20[4] = a3;
    if (*(v4 + 40))
    {

      sub_10004AB1C();
    }

    else
    {
    }

    v21 = sub_10004AB0C();
    sub_100004544(v10, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = sub_100008A50;
    v22[5] = v20;
    v22[6] = v4;
    v22[7] = a1;

    v23 = a1;
    *(v4 + 40) = sub_100007F58(0, 0, v10, &unk_10004CC38, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100005D10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 40) = 0;
  }

  if (sub_10004AB2C())
  {
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v6 = sub_100049FCC();
    sub_100008F90(v6, qword_100068348);
    v7 = sub_100049FAC();
    v8 = sub_10004AB9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Task was cancelled before it completed. Call to completion will be skipped.", v9, 2u);
    }
  }

  else
  {
    a3(a1);
  }
}

uint64_t sub_100005E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for PosterData(0);
  v9 = swift_task_alloc();
  v7[4] = v9;
  v10 = swift_task_alloc();
  v7[5] = v10;
  *v10 = v7;
  v10[1] = sub_100005F2C;

  return sub_100006140(v9, a7);
}

uint64_t sub_100005F2C()
{
  sub_100009808();
  sub_1000097FC();
  v1 = *v0;
  sub_100009570();
  *v2 = v1;

  sub_1000099F0();

  return _swift_task_switch(v3);
}

uint64_t sub_100006014()
{
  sub_100009808();
  sub_10004AAEC();
  *(v0 + 48) = sub_10004AADC();
  sub_10004AAAC();

  return _swift_task_switch(sub_1000060A4);
}

uint64_t sub_1000060A4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v2(v1);
  sub_100009078(v1, type metadata accessor for PosterData);

  sub_100009748();

  return v3();
}

uint64_t sub_100006140(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_10004A8AC();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_10004A69C();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_100049E3C();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v7 = sub_100002D54(&qword_100063970, &unk_10004CC60);
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v8 = sub_100049D9C();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = type metadata accessor for PosterDataModel(0);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  sub_100002D54(&qword_1000637A8, "4E");
  v3[29] = swift_task_alloc();
  v9 = sub_100049B7C();
  v3[30] = v9;
  v3[31] = *(v9 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v10 = sub_10004AC7C();
  v3[34] = v10;
  v3[35] = *(v10 - 8);
  v3[36] = swift_task_alloc();
  v11 = sub_100049C2C();
  v3[37] = v11;
  v3[38] = *(v11 - 8);
  v3[39] = swift_task_alloc();
  v12 = sub_100002D54(&qword_100063978, &qword_10004CC70);
  v3[40] = v12;
  v3[41] = *(v12 - 8);
  v3[42] = swift_task_alloc();
  v13 = sub_100002D54(&qword_100063980, &qword_10004CC78);
  v3[43] = v13;
  v3[44] = *(v13 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = sub_100002D54(&qword_100063988, &qword_10004CC80);
  v3[47] = swift_task_alloc();
  v3[48] = sub_100002D54(&qword_100063990, &qword_10004CC88);
  v3[49] = swift_task_alloc();
  v3[50] = sub_100049CAC();
  v3[51] = swift_task_alloc();
  sub_100002D54(&qword_100063998, &qword_10004CC90);
  v3[52] = swift_task_alloc();
  sub_100002D54(&qword_1000639A0, &qword_10004CC98);
  v3[53] = swift_task_alloc();
  sub_100002D54(&qword_1000639A8, &unk_10004CCA0);
  v3[54] = swift_task_alloc();
  v14 = sub_100049CDC();
  v3[55] = v14;
  v3[56] = *(v14 - 8);
  v3[57] = swift_task_alloc();
  v15 = sub_100049C9C();
  v3[58] = v15;
  v3[59] = *(v15 - 8);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v16 = sub_100049E9C();
  v3[62] = v16;
  v3[63] = *(v16 - 8);
  v3[64] = swift_task_alloc();

  return _swift_task_switch(sub_100006860);
}

uint64_t sub_100006860()
{
  v44 = v0;
  if (qword_100063488 != -1)
  {
    sub_100009728(&qword_100063488);
  }

  v1 = v0[4].i64[0];
  v2 = sub_100049FCC();
  v0[32].i64[1] = sub_100008F90(v2, qword_100068348);
  v3 = v1;
  v4 = sub_100049FAC();
  v5 = sub_10004AB9C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[31].i64[1];
    v6 = v0[32].i64[0];
    v8 = v0[31].i64[0];
    v9 = v0[4].i64[0];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v43 = v11;
    sub_100009580(7.2225e-34);
    [v9 coordinate];
    sub_100049EBC();
    v12 = sub_100049E4C();
    v14 = v13;
    (*(v7 + 8))(v6, v8);
    v15 = sub_1000230EC(v12, v14, &v43);

    *(v10 + 14) = v15;
    sub_10000985C();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    sub_100008FC8(v11);
    sub_100009788();
    sub_100009830();
  }

  v21 = WCCountryCodeEstimate();
  if (v21)
  {
    v22 = v21;
    v41 = v0[28].i64[1];
    v24 = v0[26].i64[1];
    v23 = v0[27].i64[0];
    v25 = v0[26].i64[0];
    v26 = v0[18].i64[1];
    v42 = v0[4];
    sub_10004A98C();

    sub_100049C1C();
    sub_100004544(v23, 0, 1, v26);
    v27 = sub_100049CEC();
    sub_100004544(v24, 1, 1, v27);
    v28 = sub_100049CBC();
    sub_100004544(v25, 1, 1, v28);
    v0[3].i64[0] = &_swiftEmptyArrayStorage;
    sub_100009184();
    sub_100002D54(&qword_1000639C0, &qword_10004CCB0);
    sub_1000091DC();
    sub_10004ACFC();
    sub_100009A10();
    sub_100049CCC();
    v29 = swift_task_alloc();
    v0[33].i64[0] = v29;
    v29[1] = vextq_s8(v42, v42, 8uLL);
    v29[2].i64[0] = v41;
    v30 = swift_task_alloc();
    v0[33].i64[1] = v30;
    *v30 = v0;
    v30[1] = sub_100006C64;
    sub_1000099F0();

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v31);
  }

  else
  {
    sub_100049D2C();
    sub_100049D1C();
    v32 = swift_task_alloc();
    v0[34].i64[1] = v32;
    *v32 = v0;
    v32[1] = sub_100007354;
    v33 = v0[30].i64[0];
    v34 = v0[29].i64[0];
    v36 = v0[23].i64[0];
    v35 = v0[23].i64[1];
    v37 = v0[22].i64[1];
    v38 = v0[21].i64[0];
    v39 = v0[4].i64[0];

    return WeatherService.weather<A, B>(for:including:_:)(v33, v35, v39, v37, v38, v34, v36);
  }
}

uint64_t sub_100006C64()
{
  sub_100009808();
  sub_1000097FC();
  v3 = v2;
  v4 = *v1;
  sub_100009570();
  *v5 = v4;
  *(v3 + 544) = v0;

  if (!v0)
  {
  }

  sub_1000099F0();

  return _swift_task_switch(v6);
}

uint64_t sub_100007354(uint64_t a1)
{
  sub_1000097FC();
  v4 = v3;
  v5 = v3[45];
  v6 = v3[44];
  v7 = v3[43];
  v8 = v3[42];
  v9 = v3[41];
  v10 = v3[40];
  v11 = *v2;
  sub_100009570();
  *v12 = v11;
  v4[70] = v1;

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  if (!v1)
  {
    sub_1000090CC(v4[47], &qword_100063988, &qword_10004CC80);
  }

  sub_1000099F0();

  return _swift_task_switch(v13);
}

uint64_t sub_100007AE0()
{
  v16 = v0;
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = sub_100049FAC();
  v5 = sub_10004AB7C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    sub_100009A24(4.8751e-34);
    v8 = sub_10004AFCC();
    v10 = sub_1000230EC(v8, v9, &v15);

    *(v6 + 4) = v10;
    sub_100009AC4(&_mh_execute_header, v11, v12, "Update task failed to fetch current weather; error=%{public}s");
    sub_100008FC8(v7);

    sub_100009788();
  }

  else
  {
  }

  sub_100009A84();
  sub_1000099E4();
  swift_storeEnumTagMultiPayload();
  sub_100009490();
  sub_100009650();

  sub_100009748();

  return v13();
}

uint64_t sub_100007D30()
{
  v13 = v0;
  swift_errorRetain();
  v1 = sub_100049FAC();
  v2 = sub_10004AB7C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    sub_100009A24(4.8751e-34);
    v5 = sub_10004AFCC();
    v7 = sub_1000230EC(v5, v6, &v12);

    *(v3 + 4) = v7;
    sub_100009AC4(&_mh_execute_header, v8, v9, "Update task failed to fetch current weather; error=%{public}s");
    sub_100008FC8(v4);

    sub_100009788();
  }

  else
  {
  }

  sub_100009A84();
  sub_1000099E4();
  swift_storeEnumTagMultiPayload();
  sub_100009490();
  sub_100009650();

  sub_100009748();

  return v10();
}

uint64_t sub_100007F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002D54(&qword_100064230, &qword_10004CC28);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_100009398(a3, v24 - v10, &qword_100064230, &qword_10004CC28);
  v12 = sub_10004AB0C();
  v13 = sub_100004288(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1000090CC(v11, &qword_100064230, &qword_10004CC28);
  }

  else
  {
    sub_10004AAFC();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10004AAAC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10004A9BC() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1000090CC(a3, &qword_100064230, &qword_10004CC28);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000090CC(a3, &qword_100064230, &qword_10004CC28);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10000823C()
{
  v1 = v0;
  v2 = sub_10004A22C();
  sub_1000059BC();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100008994();
  *v7 = sub_10004ABFC();
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = sub_10004A24C();
  result = (*(v4 + 8))(v7, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    sub_100009728(&qword_100063488);
    goto LABEL_4;
  }

  if (!*(v1 + 40))
  {
    return result;
  }

  v10 = qword_100063488;

  if (v10 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = sub_100049FCC();
  sub_100008F90(v11, qword_100068348);
  v12 = sub_100049FAC();
  v13 = sub_10004AB9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Canceling task to update poster data", v14, 2u);
    sub_100009830();
  }

  sub_10004AB1C();

  *(v1 + 40) = 0;
}

void *sub_100008424()
{

  return v0;
}

uint64_t sub_10000845C()
{
  sub_100008424();

  return _swift_deallocClassInstance(v0, 48, 7);
}

void *sub_1000084B4()
{
  sub_100049D6C();
  v0[2] = sub_10002CCA0();
  sub_10004A64C();
  swift_allocObject();
  v0[3] = sub_10004A63C();
  if (qword_100063450 != -1)
  {
    swift_once();
  }

  v0[4] = qword_1000682A8;
  v0[5] = 0;

  return v0;
}

uint64_t sub_10000854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v6 = sub_100002D54(&qword_1000639D0, &qword_10004CCB8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = sub_100002D54(&qword_100063978, &qword_10004CC70);
  v23 = *(v10 - 8);
  v24 = v10;
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v22 = sub_100002D54(&qword_100063980, &qword_10004CC78);
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v21 - v14;
  v21 = *(a2 + 16);
  sub_100049C9C();
  sub_100049D2C();
  sub_100002D54(&qword_100063988, &qword_10004CC80);
  sub_100049D1C();
  v16 = a1;
  v17 = v6;
  (*(v7 + 16))(v9, v16, v6);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  (*(v7 + 32))(v19 + v18, v9, v17);
  sub_100049D3C();

  (*(v23 + 8))(v12, v24);
  return (*(v13 + 8))(v15, v22);
}

uint64_t sub_100008828(uint64_t a1)
{
  v2 = sub_100002D54(&qword_100063990, &qword_10004CC88);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - v3;
  v5 = sub_100002D54(&qword_1000639D8, &qword_10004CCC0);
  __chkstk_darwin(v5);
  v7 = (v9 - v6);
  sub_100009398(a1, v9 - v6, &qword_1000639D8, &qword_10004CCC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    sub_100002D54(&qword_1000639D0, &qword_10004CCB8);
    return sub_10004AABC();
  }

  else
  {
    sub_100009400(v7, v4);
    sub_100002D54(&qword_1000639D0, &qword_10004CCB8);
    return sub_10004AACC();
  }
}

unint64_t sub_100008994()
{
  result = qword_100065260;
  if (!qword_100065260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100065260);
  }

  return result;
}

uint64_t sub_1000089D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008A10()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008A5C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100008AAC(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = swift_task_alloc();
  v4 = sub_10000984C(v3);
  *v4 = v5;
  v4[1] = sub_100008B6C;
  sub_100009A10();

  return sub_100005E4C(v6, v7, v8, v9, v10, v11, v2);
}

uint64_t sub_100008B6C()
{
  sub_100009808();
  sub_1000097FC();
  v1 = *v0;
  sub_100009570();
  *v2 = v1;

  sub_100009748();

  return v3();
}

uint64_t sub_100008C4C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100008D44;

  return v6(a1);
}

uint64_t sub_100008D44()
{
  sub_100009808();
  sub_1000097FC();
  v1 = *v0;
  sub_100009570();
  *v2 = v1;

  sub_100009748();

  return v3();
}

uint64_t sub_100008E28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008E60()
{
  v0 = swift_task_alloc();
  v1 = sub_10000984C(v0);
  *v1 = v2;
  v3 = sub_1000097A4(v1);

  return v4(v3);
}

uint64_t sub_100008EF8()
{
  v0 = swift_task_alloc();
  v1 = sub_10000984C(v0);
  *v1 = v2;
  v3 = sub_1000097A4(v1);

  return v4(v3);
}

uint64_t sub_100008F90(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100008FC8(void *a1)
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

uint64_t sub_100009014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterDataModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009078(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_100009714();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000090CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100002D54(a2, a3);
  sub_100009714();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100009120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterDataModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100009184()
{
  result = qword_1000639B8;
  if (!qword_1000639B8)
  {
    sub_100049CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000639B8);
  }

  return result;
}

unint64_t sub_1000091DC()
{
  result = qword_1000639C8;
  if (!qword_1000639C8)
  {
    sub_100009240(&qword_1000639C0, &qword_10004CCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000639C8);
  }

  return result;
}

uint64_t sub_100009240(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100009294()
{
  sub_100002D54(&qword_1000639D0, &qword_10004CCB8);
  sub_100009714();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000931C(uint64_t a1)
{
  sub_100002D54(&qword_1000639D0, &qword_10004CCB8);

  return sub_100008828(a1);
}

uint64_t sub_100009398(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002D54(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009400(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&qword_100063990, &qword_10004CC88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000094B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v20 - 184) = v19[65];
  v22 = v19[39];
  *(v20 - 160) = v19[30];
  *(v20 - 152) = v19[28];
  *(v20 - 144) = v19[26];
  *(v20 - 128) = v19[25];
  *(v20 - 168) = v22;

  return sub_100049C1C();
}

void sub_100009580(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t sub_10000959C()
{
  v3 = v0[61];
  v4 = v0[59];
  *(v1 - 136) = v0[58];
  *(v1 - 128) = v3;
  v5 = v0[38];
  *(v1 - 152) = v0[39];
  *(v1 - 144) = v4;
  v6 = v0[36];
  v7 = v0[37];
  *(v1 - 168) = v5;
  *(v1 - 160) = v7;
  *(v1 - 176) = v6;
  *(v1 - 184) = v0[34];

  return swift_slowAlloc();
}

uint64_t sub_1000095F8()
{
  v3 = v0[27];
  *(v1 - 184) = v0[28];
  *(v1 - 176) = v3;
  v5 = v0[21];
  v4 = v0[22];
  *(v1 - 168) = v0[25];
  *(v1 - 160) = v4;
  v6 = v0[18];
  *(v1 - 152) = v5;
  *(v1 - 144) = v6;
  v7 = v0[12];
  *(v1 - 136) = v0[15];
  *(v1 - 128) = v7;
}

uint64_t sub_100009650()
{
  v3 = *(v0 + 96);
  *(v1 - 96) = *(v0 + 120);
  *(v1 - 88) = v3;
}

uint64_t sub_1000096A8()
{
  *(v0 + v1[8]) = v2;
  *(v0 + v1[9]) = v3;
  return v0 + v1[10];
}

uint64_t sub_1000096D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *(v34 + *(v35 + 48)) = v33 & 1;
  v38 = *(v36 - 152);
  *v38 = 49;
  v38[1] = 0xE100000000000000;
  *(v38 + *(*(v36 - 144) + 40)) = a13;

  return sub_100009014(v38, a33);
}

uint64_t sub_100009728(uint64_t a1)
{

  return swift_once();
}

void sub_100009754()
{
  v4 = v1[61];
  *(v2 - 136) = v1[58];
  *(v2 - 128) = v4;
  *(v2 - 144) = v1[39];
}

uint64_t sub_100009788()
{
}

uint64_t sub_100009830()
{
}

uint64_t sub_10000986C(__n128 a1, __n128 a2)
{

  return sub_10004A52C();
}

uint64_t sub_100009894()
{

  return sub_10004A62C();
}

uint64_t sub_1000098BC()
{

  return swift_allocObject();
}

uint64_t sub_10000992C(__n128 a1, __n128 a2)
{
  a1.n128_u64[0] = v5;
  a2.n128_u64[0] = v6;

  return CLLocationCoordinate2D.solarEvents(referenceDate:timeZone:)(v2, v3, a1, a2);
}

uint64_t sub_100009950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return CurrentWeather.date.getter(a1, a2, a3, a4);
}

uint64_t sub_100009974(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  a1[1] = a5;

  return CurrentWeather.date.getter(a1, a2, a3, a4);
}

uint64_t sub_100009998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return Measurement<>.converted(to:)(a1, a20);
}

uint64_t sub_100009A24(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t sub_100009A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return CurrentWeather.date.getter(a1, a2, a3, a4);
}

uint64_t sub_100009A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 - 176) = v4;

  return CurrentWeather.date.getter(a1, a2, a3, a4);
}

uint64_t sub_100009A84()
{
  **(v0 + 56) = 3;

  return type metadata accessor for PosterData(0);
}

uint64_t sub_100009AA4()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 2082;

  return sub_10002A190();
}

void sub_100009AC4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

_BYTE *storeEnumTagSinglePayload for WakeState.ScreenState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100009BF8);
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

unint64_t sub_100009C44()
{
  result = qword_1000639E0;
  if (!qword_1000639E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000639E0);
  }

  return result;
}

uint64_t sub_100009C98(char a1, uint64_t a2, double a3)
{
  if (*&a2 == a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = *&a2 >= a3;
  }

  if (a1 == 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100009CC0(char a1)
{
  if (!a1)
  {
    return 28271;
  }

  if (a1 == 1)
  {
    return 6710895;
  }

  return 0x697469736E617274;
}

uint64_t sub_100009D18(char a1, double a2)
{
  sub_10004AD6C(27);

  strcpy(v6, "screenState:");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  if (a1)
  {
    if (a1 == 1)
    {
      v3._countAndFlagsBits = 6710895;
    }

    else
    {
      v3._countAndFlagsBits = 0x697469736E617274;
    }

    if (a1 == 1)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xED0000676E696E6FLL;
    }
  }

  else
  {
    v4 = 0xE200000000000000;
    v3._countAndFlagsBits = 28271;
  }

  v3._object = v4;
  sub_10004A9DC(v3);

  v7._countAndFlagsBits = 0x6572676F7270202CLL;
  v7._object = 0xEB000000003A7373;
  sub_10004A9DC(v7);
  v8._countAndFlagsBits = sub_10004AB3C();
  sub_10004A9DC(v8);

  return v6[0];
}

uint64_t sub_100009E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100049BAC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100004288(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100009F0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100049BAC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100004544(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for DynamicRotationAnimationState(uint64_t a1)
{
  result = qword_100063A40;
  if (!qword_100063A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000A000(uint64_t a1)
{
  sub_100049BAC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIInterfaceOrientation(319);
    if (v2 <= 0x3F)
    {
      sub_10000A0B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10000A0B0()
{
  result = qword_100063A50;
  if (!qword_100063A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100063A50);
  }

  return result;
}

uint64_t sub_10000A0F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10004A98C();
  v4 = v3;
  v5 = sub_10004A98C();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013EB8(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_10000A17C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_100030C88(a1);
  v5 = v4;
  v6 = sub_100030C88(v2);
  if (v3 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100013EB8(v3, v7, v6);
  }

  return v9 & 1;
}

uint64_t sub_10000A1F4(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656E696C66666FLL;
  }

  else
  {
    v3 = 0x6C62616863616572;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x656E696C66666FLL;
  }

  else
  {
    v5 = 0x6C62616863616572;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013EB8(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_10000A28C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6E6F6973726576;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6E6F6973726576;
  switch(v4)
  {
    case 1:
      v5 = 0x616E6964726F6F63;
      v3 = 0xEA00000000006574;
      break;
    case 2:
      v5 = 0xD000000000000012;
      v3 = 0x800000010004E830;
      break;
    case 3:
      v5 = 0x657369726E7573;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x7465736E7573;
      break;
    case 5:
      v5 = 0x617461446E6F6F6DLL;
      v6 = 3307053;
      goto LABEL_8;
    case 6:
      v5 = 0x4472656874616577;
      v6 = 6386785;
LABEL_8:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x616E6964726F6F63;
      v7 = 0xEA00000000006574;
      break;
    case 2:
      v2 = 0xD000000000000012;
      v7 = 0x800000010004E830;
      break;
    case 3:
      v2 = 0x657369726E7573;
      break;
    case 4:
      v7 = 0xE600000000000000;
      v2 = 0x7465736E7573;
      break;
    case 5:
      v2 = 0x617461446E6F6F6DLL;
      v8 = 3307053;
      goto LABEL_16;
    case 6:
      v2 = 0x4472656874616577;
      v8 = 6386785;
LABEL_16:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_100013EB8(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_10000A4EC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1702125924;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1702125924;
  switch(v4)
  {
    case 1:
      v5 = 0x6F697469646E6F63;
      v3 = 0xE90000000000006ELL;
      break;
    case 2:
      v5 = 0x65657053646E6977;
      goto LABEL_5;
    case 3:
      v5 = 0x766F4364756F6C63;
      v3 = 0xEA00000000007265;
      break;
    case 4:
      v5 = 0x6E694B64756F6C63;
LABEL_5:
      v3 = 0xE900000000000064;
      break;
    case 5:
      v5 = 0xD000000000000010;
      v3 = 0x800000010004E7F0;
      break;
    case 6:
      v5 = 0x6F69746176656C65;
      v3 = 0xED00004D5073496ELL;
      break;
    case 7:
      v5 = 0x67696C7961447369;
      v3 = 0xEA00000000007468;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6F697469646E6F63;
      v6 = 0xE90000000000006ELL;
      break;
    case 2:
      v2 = 0x65657053646E6977;
      goto LABEL_14;
    case 3:
      v2 = 0x766F4364756F6C63;
      v6 = 0xEA00000000007265;
      break;
    case 4:
      v2 = 0x6E694B64756F6C63;
LABEL_14:
      v6 = 0xE900000000000064;
      break;
    case 5:
      v2 = 0xD000000000000010;
      v6 = 0x800000010004E7F0;
      break;
    case 6:
      v2 = 0x6F69746176656C65;
      v6 = 0xED00004D5073496ELL;
      break;
    case 7:
      v2 = 0x67696C7961447369;
      v6 = 0xEA00000000007468;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013EB8(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_10000A770(unsigned __int8 a1, char a2)
{
  v2 = 0xEE00656E696C6666;
  v3 = 0x4F6B726F7774656ELL;
  v4 = a1;
  v5 = 0x4F6B726F7774656ELL;
  v6 = 0xEE00656E696C6666;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v6 = 0xE600000000000000;
      v5 = 0x617461446F6ELL;
      break;
    case 3:
      v5 = 0xD000000000000014;
      v7 = "ized";
      goto LABEL_5;
    default:
      v5 = 0xD000000000000014;
      v7 = "allery";
LABEL_5:
      v6 = v7 | 0x8000000000000000;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x617461446F6ELL;
      break;
    case 3:
      v3 = 0xD000000000000014;
      v8 = "ized";
      goto LABEL_10;
    default:
      v3 = 0xD000000000000014;
      v8 = "allery";
LABEL_10:
      v2 = v8 | 0x8000000000000000;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_10004AF3C();
  }

  return v10 & 1;
}

uint64_t sub_10000A8D8(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 0x726F727265;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1635017060;
  }

  else
  {
    v5 = 0x726F727265;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013EB8(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_10000A9A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1000136C8(a4, a5, a6);
  sub_10004AA0C();
  sub_10004AA0C();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_10004AF3C();
  }

  return v10 & 1;
}

uint64_t sub_10000AA80(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x64657472617473;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x646570706F7473;
    }

    else
    {
      v4 = 0x646573756170;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x64657472617473;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x646570706F7473;
    }

    else
    {
      v2 = 0x646573756170;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013EB8(v4, a2, v2);
  }

  return v8 & 1;
}

void sub_10000AB6C(uint64_t a1)
{
  sub_100014000();
  v2 = v1;
  v4 = v3;
  v5 = sub_100002D54(&qword_100063CC0, &qword_10004CF60);
  sub_100005A50(v5);
  sub_100013ED4();
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = sub_100049D9C();
  sub_1000059BC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100005A34();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  sub_100013820(0, &qword_100063CB8, NSUserDefaults_ptr);
  v19 = sub_10004ABAC();
  if (!v19)
  {
    goto LABEL_5;
  }

  v20 = v19;
  v21 = sub_10004A95C();
  v22 = [v20 stringForKey:v21];

  if (!v22)
  {
    goto LABEL_5;
  }

  sub_10004A98C();

  sub_100049D7C();
  if (sub_100004288(v8, 1, v9) == 1)
  {
    sub_1000090CC(v8, &qword_100063CC0, &qword_10004CF60);
LABEL_5:
    v23 = type metadata accessor for PosterAnimationViewModel(0);
    (*(v11 + 16))(v4, v2 + *(v23 + 24), v9);
    goto LABEL_6;
  }

  v35 = *(v11 + 32);
  v35(v18, v8, v9);
  if (qword_100063480 != -1)
  {
    swift_once();
  }

  v24 = sub_100049FCC();
  sub_100008F90(v24, qword_100068330);
  (*(v11 + 16))(v15, v18, v9);
  v25 = sub_100049FAC();
  v26 = sub_10004AB9C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = sub_100014030();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v27 = 136446210;
    v28 = sub_100049D8C();
    v34 = v4;
    v30 = v29;
    (*(v11 + 8))(v15, v9);
    v31 = sub_1000230EC(v28, v30, &v36);
    v4 = v34;

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "Rendering overridden weather condition=%{public}s", v27, 0xCu);
    v32 = v33;
    sub_100008FC8(v33);
    sub_100013F58(v32);
    sub_100013F58(v27);
  }

  else
  {

    (*(v11 + 8))(v15, v9);
  }

  v35(v4, v18, v9);
LABEL_6:
  sub_100014018();
}

id sub_10000AF0C()
{
  sub_100013820(0, &qword_100063CB8, NSUserDefaults_ptr);
  v0 = sub_10004ABAC();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_10004A95C();
  v3 = [v1 BOOLForKey:v2];

  return v3;
}

uint64_t sub_10000AFA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100049FCC();
  sub_1000059BC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000059D0();
  v10 = v9 - v8;
  sub_10004A37C();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  swift_allocObject();
  *(v1 + 72) = sub_10004A36C();
  sub_10004A4BC();
  swift_allocObject();
  *(v1 + 80) = sub_10004A4AC();
  type metadata accessor for VFXLightningManager();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v1 + 88) = v11;
  type metadata accessor for VFXSimulationManager();
  v12 = swift_allocObject();
  *(v12 + 16) = &_swiftEmptySetSingleton;
  *(v12 + 24) = 0;
  *(v1 + 96) = v12;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  v13 = sub_10004A7AC();
  sub_100013E80(v13);
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView) = 0;
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_gradientView) = 0;
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_debugLabel) = 0;
  v14 = type metadata accessor for PosterAnimationViewModel(0);
  sub_100013E80(v14);
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer) = 0;
  v15 = (v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
  *v15 = 0;
  v15[1] = 0;
  v16 = type metadata accessor for SimulationReason(0);
  sub_100013E80(v16);
  v17 = sub_100049B7C();
  sub_100013E80(v17);
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_lastPauseAnimationTimerDuration) = 0;
  v18 = type metadata accessor for DynamicRotationState(0);
  sub_100013E80(v18);
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_deviceRotationTimer) = 0;
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_rendererDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v19 = *(v6 + 16);
  v19(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_logger, a1, v4);
  v19(v10, a1, v4);
  type metadata accessor for VFXSnapshotRenderer(0);
  swift_allocObject();
  v20 = sub_10003CBF4(v10);
  (*(v6 + 8))(a1, v4);
  *(v2 + 104) = v20;
  return v2;
}

void sub_10000B244(uint64_t a1, uint64_t a2)
{
  sub_100014000();
  v3 = v2;
  v138 = v4;
  v6 = v5;
  v133 = sub_100049FCC();
  sub_1000059BC();
  v132 = v7;
  __chkstk_darwin(v8);
  sub_1000059D0();
  v139 = v10 - v9;
  sub_100005A44();
  v137 = sub_10004A71C();
  sub_1000059BC();
  v136 = v11;
  __chkstk_darwin(v12);
  sub_1000059D0();
  v131 = v14 - v13;
  v15 = sub_100002D54(&qword_100063C78, &qword_10004E0A0);
  v16 = sub_100005A50(v15);
  __chkstk_darwin(v16);
  sub_100005A34();
  v134 = v17 - v18;
  sub_100013EFC();
  __chkstk_darwin(v19);
  v135 = &v131 - v20;
  v21 = sub_100002D54(&unk_100063DE0, "4E");
  sub_100005A50(v21);
  sub_100013ED4();
  __chkstk_darwin(v22);
  sub_100013F88();
  v142 = v23;
  v24 = sub_100005A44();
  v25 = type metadata accessor for PosterAnimationViewModel(v24);
  sub_100005A24();
  __chkstk_darwin(v26);
  sub_100005A34();
  v145 = v27 - v28;
  sub_100013EFC();
  __chkstk_darwin(v29);
  sub_100013FC8();
  v146 = v30;
  sub_100013EFC();
  __chkstk_darwin(v31);
  sub_100013FC8();
  v143 = v32;
  sub_100013EFC();
  __chkstk_darwin(v33);
  v35 = &v131 - v34;
  v36 = sub_100002D54(&qword_100063C80, &qword_10004CF50) - 8;
  sub_100013ED4();
  __chkstk_darwin(v37);
  v39 = &v131 - v38;
  v40 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v41 = sub_100005A50(v40);
  __chkstk_darwin(v41);
  sub_100005A34();
  v141 = v42 - v43;
  sub_100013EFC();
  __chkstk_darwin(v44);
  sub_100013FC8();
  v140 = v45;
  sub_100013EFC();
  __chkstk_darwin(v46);
  sub_100013FC8();
  v144 = v47;
  sub_100013EFC();
  v49 = __chkstk_darwin(v48);
  v51 = &v131 - v50;
  __chkstk_darwin(v49);
  v53 = &v131 - v52;
  sub_100013E68();
  v148 = v6;
  sub_100013710();
  sub_100013FE8();
  sub_100004544(v54, v55, v56, v25);
  v57 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_posterViewModel;
  swift_beginAccess();
  v58 = *(v36 + 56);
  sub_100013F94();
  sub_1000139C8();
  v147 = v3;
  sub_1000139C8();
  sub_100013F08(v39);
  if (v60)
  {
    sub_1000090CC(v53, &unk_100063DF0, &qword_10004CF28);
    sub_100013F08(&v39[v58]);
    v59 = v148;
    if (v60)
    {
      sub_1000090CC(v39, &unk_100063DF0, &qword_10004CF28);
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  sub_1000139C8();
  sub_100013F08(&v39[v58]);
  if (v60)
  {
    sub_1000090CC(v53, &unk_100063DF0, &qword_10004CF28);
    sub_100013E38();
    sub_100013674(v51, v61);
    v59 = v148;
LABEL_9:
    sub_1000090CC(v39, &qword_100063C80, &qword_10004CF50);
    v62 = v147;
    goto LABEL_10;
  }

  sub_10001361C();
  v91 = sub_1000047E8(v51, v35);
  sub_100013674(v35, type metadata accessor for PosterAnimationViewModel);
  v58 = &qword_10004CF28;
  sub_1000090CC(v53, &unk_100063DF0, &qword_10004CF28);
  sub_100013674(v51, type metadata accessor for PosterAnimationViewModel);
  sub_1000090CC(v39, &unk_100063DF0, &qword_10004CF28);
  v62 = v147;
  v59 = v148;
  if (v91)
  {
LABEL_18:
    sub_100013E68();
    v79 = v145;
    sub_100013710();
    v80 = sub_100049FAC();
    v92 = sub_10004AB9C();
    if (sub_100014048(v92))
    {
      sub_100014030();
      v93 = sub_100013FA0();
      v149[0] = v93;
      *v51 = 136446210;
      sub_100049B7C();
      sub_100013EA0();
      sub_1000136C8(v94, v95, &protocol conformance descriptor for Date);
      v96 = sub_10004AF1C();
      v98 = v97;
      sub_100013E38();
      sub_100013674(v79, v99);
      v100 = sub_1000230EC(v96, v98, v149);

      *(v51 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v80, v92, "Animation already reflects the view model with weather data at date=%{public}s", v51, 0xCu);
      sub_100008FC8(v93);
      v90 = v93;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

LABEL_10:
  v63 = v62 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_rendererDelegate;
  if (!swift_unknownObjectWeakLoadStrong() || (v64 = *(v63 + 8), ObjectType = swift_getObjectType(), LOBYTE(v64) = (*(v64 + 8))(ObjectType, v64), swift_unknownObjectRelease(), (v64 & 1) == 0))
  {
    sub_100013E68();
    v79 = v146;
    sub_100013710();
    v80 = sub_100049FAC();
    v81 = sub_10004AB9C();
    if (sub_100014048(v81))
    {
      sub_100014030();
      v82 = sub_100013FA0();
      v149[0] = v82;
      *v51 = 136446210;
      sub_100049B7C();
      sub_100013EA0();
      sub_1000136C8(v83, v84, &protocol conformance descriptor for Date);
      v85 = sub_10004AF1C();
      v87 = v86;
      sub_100013E38();
      sub_100013674(v79, v88);
      v89 = sub_1000230EC(v85, v87, v149);

      *(v51 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v80, v81, "Animation was not granted a render session; Skipping render of weather data at date=%{public}s", v51, 0xCu);
      sub_100008FC8(v82);
      v90 = v82;
LABEL_20:
      sub_100013F58(v90);
      sub_100013F58(v51);

      goto LABEL_46;
    }

LABEL_21:

    sub_100013E38();
    sub_100013674(v79, v101);
    goto LABEL_46;
  }

  v66 = v144;
  sub_1000139C8();
  sub_100013E68();
  sub_100013710();
  sub_100013FE8();
  sub_100004544(v67, v68, v69, v25);
  sub_100013F40(v62 + v57, v149);
  sub_100013120();
  swift_endAccess();
  v70 = v142;
  sub_100049B6C();
  sub_100049B7C();
  sub_100013FE8();
  sub_100004544(v71, v72, v73, v74);
  sub_100013F40(v62 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_renderStartTime, v149);
  sub_100013120();
  swift_endAccess();
  v75 = v141;
  sub_1000139C8();
  sub_100013F08(v75);
  if (v60)
  {
    v76 = &unk_100063DF0;
    v77 = &qword_10004CF28;
    v78 = v75;
  }

  else
  {
    sub_100013E68();
    v102 = v143;
    sub_10001361C();
    v103 = *(v25 + 68);
    v104 = *(v102 + v103);
    v105 = *(v59 + v103);
    if (v104)
    {
      sub_100013F70();
      if (v105)
      {
        sub_100013820(0, &qword_100063830, UIView_ptr);
        v106 = v105;
        v107 = v104;
        v108 = sub_10004ACBC();

        if (v108)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_100013F70();
      if (!v105)
      {
LABEL_25:
        sub_100013E38();
        v110 = v143;
LABEL_37:
        sub_100013674(v110, v109);
        goto LABEL_38;
      }
    }

    v111 = sub_100049FAC();
    v112 = sub_10004AB9C();
    if (sub_100014048(v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v111, v112, "Resetting views due to change in background view", v113, 2u);
      sub_100013F58(v113);
    }

    v114 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_gradientView;
    v115 = 1;
    swift_beginAccess();
    v116 = *(v62 + v114);
    if (v116)
    {
      v117 = OBJC_IVAR____TtC13WeatherPoster12GradientView_skyBackgroundGradient;
      swift_beginAccess();
      (*(v57 + 16))(v58, &v116[v117], v70);
      v115 = 0;
    }

    sub_100004544(v58, v115, 1, v70);
    *(v62 + v114) = 0;

    v118 = *(v62 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView);
    *(v62 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView) = 0;

    v119 = *(v62 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_debugLabel);
    *(v62 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_debugLabel) = 0;

    v120 = v134;
    sub_1000139C8();
    if (sub_100004288(v120, 1, v70) != 1)
    {
      v122 = v131;
      (*(v57 + 32))(v131, v120, v70);
      v123 = v143;
      if ((*(v143 + *(v25 + 60)) & 1) == 0)
      {
        sub_10000BEB8(v122);
      }

      (*(v57 + 8))(v122, v70);
      sub_1000090CC(v58, &qword_100063C78, &qword_10004E0A0);
      sub_100013E38();
      v110 = v123;
      goto LABEL_37;
    }

    sub_1000090CC(v58, &qword_100063C78, &qword_10004E0A0);
    sub_100013E38();
    sub_100013674(v143, v121);
    v78 = v120;
    v76 = &qword_100063C78;
    v77 = &qword_10004E0A0;
  }

  sub_1000090CC(v78, v76, v77);
LABEL_38:
  if (*(v59 + *(v25 + 60)) == 1)
  {
    v124 = sub_10000C8F4(v62);
    sub_10004A3FC();
    if (v138)
    {
      sub_100049F9C();
      v125 = sub_100049FAC();
      v126 = sub_10004AB9C();
      if (sub_100014048(v126))
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&_mh_execute_header, v125, v126, "VFX animation should start paused, freezing the scene", v127, 2u);
        sub_100013F58(v127);
      }

      (*(v132 + 8))(v139, v133);
      v128 = sub_10004A42C();
      sub_10004A08C();

      v129 = sub_10004A42C();
      sub_10004A0BC();
    }

    v130 = sub_10000CB0C(v62);
    sub_10000DD78(v59, v124, v130);
  }

  else
  {
    sub_10000C268();
  }

  sub_1000090CC(v66, &unk_100063DF0, &qword_10004CF28);
LABEL_46:
  sub_100014018();
}

void sub_10000BEB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for DynamicRotationState(0);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004A71C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_posterViewModel;
  swift_beginAccess();
  v15 = type metadata accessor for PosterAnimationViewModel(0);
  if (!sub_100004288(v14, 1, v15))
  {
    v16 = *(v14 + *(v15 + 68));
    if (v16)
    {
      v31 = v9;
      v17 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_gradientView;
      swift_beginAccess();
      v18 = *(v2 + v17);
      if (v18)
      {
        (*(v11 + 16))(v13, a1, v10);
        v19 = v16;
        v20 = v18;
        sub_1000243AC(v13);

        return;
      }

      v21 = v16;
      v22 = sub_100002474(a1);
      v23 = *(v2 + v17);
      *(v2 + v17) = v22;

      swift_beginAccess();
      sub_1000139C8();
      if (sub_100004288(v6, 1, v7) == 1)
      {

        sub_1000090CC(v6, &qword_100063C18, &qword_10004E300);
        return;
      }

      v24 = v31;
      sub_10001361C();
      v25 = [objc_opt_self() currentDevice];
      v26 = [v25 userInterfaceIdiom];

      if (v26 == 1)
      {
        swift_beginAccess();
        v27 = *(v2 + v17);
        if (v27)
        {
          swift_endAccess();
          v28 = v27;
          v29 = v31;
          sub_10002424C(v31);

          sub_100013674(v29, type metadata accessor for DynamicRotationState);
          return;
        }

        sub_100013674(v31, type metadata accessor for DynamicRotationState);
        swift_endAccess();
      }

      else
      {
        sub_100013674(v24, type metadata accessor for DynamicRotationState);
      }
    }
  }
}

uint64_t sub_10000C268()
{
  v1 = v0;
  v2 = sub_10004A1DC();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v40 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10004A1FC();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10004A21C();
  v5 = *(v44 - 8);
  v6 = __chkstk_darwin(v44);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v14 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = sub_100049FAC();
  v18 = sub_10004AB9C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Skipping showing vfx because the poster should not show animation", v19, 2u);
  }

  v20 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView;
  v21 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView);
  if (v21)
  {
    [v21 removeFromSuperview];
    v22 = *(v1 + v20);
  }

  else
  {
    v22 = 0;
  }

  *(v1 + v20) = 0;

  *(v1 + 64) = 0;

  v47 = 0;
  aBlock = 0u;
  v46 = 0u;
  swift_beginAccess();
  sub_100013120();
  swift_endAccess();
  *(v1 + 16) = 0;

  if (qword_100063458 != -1)
  {
    swift_once();
  }

  v23 = sub_10004A71C();
  v24 = sub_100008F90(v23, qword_1000682B8);
  sub_10000BEB8(v24);
  swift_beginAccess();
  v25 = v16;
  sub_1000139C8();
  sub_100013820(0, &qword_100065260, OS_dispatch_queue_ptr);
  v35 = sub_10004ABFC();
  sub_10004A20C();
  sub_10004A23C();
  v36 = *(v5 + 8);
  v36(v8, v44);
  v26 = swift_allocObject();
  swift_weakInit();
  sub_1000139C8();
  v27 = (*(v37 + 80) + 24) & ~*(v37 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  sub_1000138F4(v14, v28 + v27);
  v47 = sub_100013D58;
  v48 = v28;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v46 = sub_100012500;
  *(&v46 + 1) = &unk_10005E918;
  v29 = _Block_copy(&aBlock);

  v30 = v38;
  sub_10004A1EC();
  *&aBlock = &_swiftEmptyArrayStorage;
  sub_1000136C8(&qword_100063C50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002D54(&qword_100063C58, &unk_10004DE10);
  sub_1000138A8(&qword_100063C60, &qword_100063C58, &unk_10004DE10, &protocol conformance descriptor for [A]);
  v31 = v40;
  v32 = v43;
  sub_10004ACFC();
  v33 = v35;
  sub_10004ABDC();
  _Block_release(v29);

  (*(v42 + 8))(v31, v32);
  (*(v39 + 8))(v30, v41);
  v36(v10, v44);
  return sub_1000090CC(v25, &unk_100063DF0, &qword_10004CF28);
}

uint64_t sub_10000C8F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
  }

  else
  {
    swift_beginAccess();
    sub_1000139C8();
    if (v11)
    {
      sub_100013A84(&v10, v13);
    }

    else
    {
      v3 = sub_10004A86C();
      swift_allocObject();
      v13[3] = v3;
      v13[4] = &protocol witness table for VFXSceneTemplateManager;
      v13[0] = sub_10004A85C();
    }

    sub_100013A20(v13, &v10);
    swift_beginAccess();
    sub_100013120();
    swift_endAccess();
    v4 = sub_100049FAC();
    v5 = sub_10004AB9C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Initial rendering of animation, creating background manager", v6, 2u);
    }

    v7 = *(a1 + 80);
    v11 = sub_10004A4BC();
    v12 = &protocol witness table for WeatherConditionConfigurationManager;
    *&v10 = v7;
    sub_100013A20(v13, &v9);
    sub_10004A43C();
    swift_allocObject();

    v1 = sub_10004A3AC();
    sub_100008FC8(v13);
    *(a1 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10000CB0C(uint64_t a1)
{
  v2 = sub_100002D54(&qword_100063CC8, &qword_10004CF68);
  __chkstk_darwin(v2);
  v3 = sub_100002D54(&qword_100063CD0, &qword_10004CF70);
  __chkstk_darwin(v3);
  v4 = sub_100002D54(&qword_100063CD8, &qword_10004CF78);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  if (*(a1 + 64))
  {
    v8 = *(a1 + 64);
  }

  else
  {
    v14 = v5;
    sub_10004A34C();
    swift_allocObject();
    v8 = sub_10004A33C();
    *(a1 + 64) = v8;

    sub_10004A32C();
    sub_10004A30C();
    sub_1000138A8(&qword_100063CE0, &qword_100063CD0, &qword_10004CF70, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1000138A8(&qword_100063CE8, &qword_100063CC8, &qword_10004CF68, &protocol conformance descriptor for Published<A>.Publisher);
    sub_10004A0FC();
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_100013860;
    *(v10 + 24) = v9;
    sub_1000138A8(&qword_100063CF0, &qword_100063CD8, &qword_10004CF78, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
    v11 = sub_10004A11C();

    (*(v14 + 8))(v7, v4);
    v16 = sub_10004A10C();
    v17 = &protocol witness table for AnyCancellable;
    v15 = v11;
    swift_beginAccess();
    sub_100013120();
    swift_endAccess();
  }

  return v8;
}

uint64_t sub_10000CE78(char a1, char *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000CEEC(a1 & 1, a2);
  }

  return result;
}

void sub_10000CEEC(char a1, char *a2)
{
  v3 = v2;
  v107 = a2;
  v5 = sub_10004A1DC();
  v105 = *(v5 - 8);
  v106 = v5;
  __chkstk_darwin(v5);
  v103 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10004A1FC();
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10004A21C();
  v100 = *(v108 - 8);
  v8 = __chkstk_darwin(v108);
  v95 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v99 = &v84 - v10;
  v11 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v96 = *(v11 - 8);
  v12 = *(v96 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v97 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v98 = &v84 - v14;
  v91 = sub_100049FCC();
  v93 = *(v91 - 8);
  v15 = __chkstk_darwin(v91);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v84 - v18;
  v20 = sub_100002D54(&unk_100063DE0, "4E");
  v21 = __chkstk_darwin(v20 - 8);
  v92 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v84 - v23;
  v25 = sub_100049B7C();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v94 = &v84 - v30;
  v31 = sub_100002D54(&unk_100063D00, &qword_10004CF88);
  __chkstk_darwin(v31 - 8);
  v33 = &v84 - v32;
  v34 = sub_10004A2BC();
  v35 = __chkstk_darwin(v34);
  v38 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v88 = v38;
    v87 = v36;
    v89 = v35;
    v90 = v3;
    v39 = v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_posterViewModel;
    swift_beginAccess();
    v40 = type metadata accessor for PosterAnimationViewModel(0);
    if (!sub_100004288(v39, 1, v40) && *(v39 + *(v40 + 60)) == 1)
    {
      v86 = v39;
      sub_1000139C8();
      v41 = v89;
      if (sub_100004288(v33, 1, v89) == 1)
      {
        sub_1000090CC(v33, &unk_100063D00, &qword_10004CF88);
        return;
      }

      v45 = v88;
      (*(v87 + 32))(v88, v33, v41);
      sub_100011B5C(v45);
      v46 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_renderStartTime;
      swift_beginAccess();
      sub_1000139C8();
      if (sub_100004288(v24, 1, v25) == 1)
      {
        sub_1000090CC(v24, &unk_100063DE0, "4E");
LABEL_36:
        v72 = v98;
        sub_1000139C8();
        sub_100013820(0, &qword_100065260, OS_dispatch_queue_ptr);
        v94 = sub_10004ABFC();
        v73 = v95;
        sub_10004A20C();
        v74 = v99;
        sub_10004A23C();
        v107 = *(v100 + 8);
        (v107)(v73, v108);
        v75 = swift_allocObject();
        swift_weakInit();
        v76 = v97;
        sub_1000139C8();
        v77 = (*(v96 + 80) + 24) & ~*(v96 + 80);
        v78 = swift_allocObject();
        *(v78 + 16) = v75;
        sub_1000138F4(v76, v78 + v77);
        aBlock[4] = sub_100013964;
        aBlock[5] = v78;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100012500;
        aBlock[3] = &unk_10005E878;
        v79 = _Block_copy(aBlock);

        v80 = v101;
        sub_10004A1EC();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_1000136C8(&qword_100063C50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100002D54(&qword_100063C58, &unk_10004DE10);
        sub_1000138A8(&qword_100063C60, &qword_100063C58, &unk_10004DE10, &protocol conformance descriptor for [A]);
        v81 = v103;
        v82 = v106;
        sub_10004ACFC();
        v83 = v94;
        sub_10004ABDC();
        _Block_release(v79);

        (*(v105 + 8))(v81, v82);
        (*(v102 + 8))(v80, v104);
        (v107)(v74, v108);
        sub_1000090CC(v72, &unk_100063DF0, &qword_10004CF28);
        (*(v87 + 8))(v88, v89);
        return;
      }

      v107 = v46;
      (*(v26 + 32))(v94, v24, v25);
      sub_100049B6C();
      sub_100049AFC();
      v48 = v47;
      v85 = *(v26 + 8);
      v85(v29, v25);
      sub_100049F9C();
      v49 = sub_100049FAC();
      v50 = sub_10004AB9C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 134217984;
        *(v51 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v49, v50, "VFX animation took %fs to load", v51, 0xCu);
      }

      v52 = v93 + 8;
      v53 = *(v93 + 8);
      v54 = v91;
      v53(v19, v91);
      v55 = v90;
      v84 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer;
      if (*(v90 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer) && v48 < 0.3)
      {
        v93 = v52;
        sub_100049F9C();

        v56 = sub_100049FAC();
        v57 = sub_10004AB9C();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 134349056;
          *(v58 + 4) = *(v90 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_lastPauseAnimationTimerDuration);
          _os_log_impl(&_mh_execute_header, v56, v57, "VFX animation loaded quickly, restarting pause timer after %{public}fs", v58, 0xCu);
          v55 = v90;
        }

        v53(v17, v54);
        sub_10000FAA8(*(v55 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_lastPauseAnimationTimerDuration));
      }

      if (*(v55 + 16))
      {

        v59 = sub_10004A42C();

        sub_10004A0AC();
        v61 = v60;

        if (v61 == 1.0)
        {
          v62 = *(v55 + v84);
          if (v62)
          {
            v63 = [v62 fireDate];
            sub_100049B3C();

            sub_100049B1C();
            v65 = v64;
            v66 = v29;
            v67 = v85;
            v85(v66, v25);
            v68 = v65 > 0.4;
            goto LABEL_29;
          }

          v68 = 1;
        }

        else
        {
          v68 = 0;
        }
      }

      else
      {
        v68 = 0;
      }

      v67 = v85;
LABEL_29:
      v69 = sub_10004A2AC();
      if (v69)
      {
        v70 = v69;
        if ((*(*(v55 + 88) + 24) & 1) == 0 || !v68)
        {
          v67(v94, v25);

          goto LABEL_35;
        }

        sub_100013374(0.1, 0.4);
        sub_1000479C0(v70, v71);
      }

      v67(v94, v25);
LABEL_35:
      sub_100004544(v92, 1, 1, v25);
      swift_beginAccess();
      sub_100013120();
      swift_endAccess();
      goto LABEL_36;
    }

    v42 = sub_100049FAC();
    v43 = sub_10004AB9C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "VFX finished loading, but skipping showing VFX because the poster is no longer showing animation", v44, 2u);
    }
  }

  else
  {

    sub_100011B00();
  }
}

uint64_t sub_10000DD1C(unsigned __int8 *a1, uint64_t (*a2)(uint64_t, unsigned __int8 *))
{
  v4 = *a1;
  v5 = sub_100002D54(&qword_100063CF8, &qword_10004CF80);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_10000DD78(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1))
{
  v168 = a3;
  v161 = a2;
  v131 = a1;
  v103 = sub_10004A65C();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10004A74C();
  v100 = *(v107 - 8);
  __chkstk_darwin(v107);
  v99 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  __chkstk_darwin(v6 - 8);
  v104 = &v97 - v7;
  v105 = type metadata accessor for DynamicRotationState(0);
  v8 = __chkstk_darwin(v105);
  v98 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v106 = &v97 - v10;
  v11 = sub_100002D54(&qword_100063C90, &unk_10004E3A0);
  __chkstk_darwin(v11 - 8);
  v148 = &v97 - v12;
  v147 = sub_10004A72C();
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v143 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10004A1BC();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002D54(&unk_100063DE0, "4E");
  v16 = __chkstk_darwin(v15 - 8);
  v139 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v138 = &v97 - v18;
  v135 = sub_10004A45C();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_10004A38C();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_10004A61C();
  v155 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10004A46C();
  __chkstk_darwin(v22 - 8);
  v133 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100002D54(&qword_1000637A8, "4E");
  __chkstk_darwin(v24 - 8);
  v127 = &v97 - v25;
  v26 = sub_100002D54(&qword_100063970, &unk_10004CC60);
  __chkstk_darwin(v26 - 8);
  v164 = &v97 - v27;
  v125 = sub_100049B7C();
  v122 = *(v125 - 8);
  __chkstk_darwin(v125);
  v163 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_100049F2C();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v162 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_10004A7AC();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v154 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100002D54(&qword_100063C28, &qword_10004CF20);
  __chkstk_darwin(v31 - 8);
  v172 = &v97 - v32;
  v146 = sub_10004A5DC();
  v144 = *(v146 - 8);
  __chkstk_darwin(v146);
  v153 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_10004A69C();
  v170 = *(v160 - 1);
  __chkstk_darwin(v160);
  v158 = &v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_10004A2EC();
  v119 = *(v126 - 8);
  __chkstk_darwin(v126);
  v115 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_10004A8AC();
  v169 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10004A2FC();
  v116 = *(v118 - 8);
  __chkstk_darwin(v118);
  v114 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10004A71C();
  v167 = *(v124 - 8);
  v38 = __chkstk_darwin(v124);
  v123 = &v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v171 = &v97 - v40;
  v41 = sub_100049D9C();
  v166 = v41;
  v42 = *(v41 - 8);
  v43 = __chkstk_darwin(v41);
  v45 = &v97 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v47 = &v97 - v46;
  v48 = sub_100002D54(&qword_100063C20, &qword_10004D2C0);
  __chkstk_darwin(v48 - 8);
  v50 = &v97 - v49;
  v51 = type metadata accessor for SimulationReason(0);
  __chkstk_darwin(v51);
  v53 = &v97 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100049B9C();
  swift_storeEnumTagMultiPayload();
  sub_10001CA74(v53, v161);
  v136 = v53;
  sub_100013710();
  sub_100004544(v50, 0, 1, v51);
  swift_beginAccess();
  v156 = v3;
  sub_100013120();
  swift_endAccess();
  v165 = v47;
  v54 = v131;
  sub_10000AB6C(v131);
  v137 = v42;
  v110 = *(v42 + 16);
  v55 = v45;
  v110(v45, v47, v41);
  v56 = type metadata accessor for PosterAnimationViewModel(0);
  v111 = v56[12];
  v57 = *(v169 + 16);
  v169 += 16;
  v112 = v57;
  v58 = v157;
  v57(v157, v54 + v111, v159);
  v117 = *(v54 + v56[13]);
  v59 = v54;
  v60 = enum case for WeatherConditionGradientModel.AnimationContext.vfx(_:);
  v61 = sub_10004A2DC();
  v62 = v115;
  (*(*(v61 - 8) + 104))(v115, v60, v61);
  (*(v119 + 104))(v62, enum case for WeatherConditionGradientModel.PresentationContext.fullScreen(_:), v126);
  v108 = v56;
  v119 = v56[9];
  v63 = *(v170 + 16);
  v170 += 16;
  v109 = v63;
  v64 = v158;
  v63(v158, v59 + v119, v160);
  v65 = v114;
  v113 = v55;
  sub_10004A2CC();
  v66 = v171;
  sub_10004A35C();
  (*(v116 + 8))(v65, v118);
  sub_10000BEB8(v66);
  v67 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_lastModel;
  swift_beginAccess();
  v126 = v67;
  sub_1000139C8();
  (*(v120 + 16))(v162, v59, v121);
  v68 = v108;
  (*(v122 + 16))(v163, v59 + v108[5], v125);
  v110(v55, v165, v166);
  v69 = objc_opt_self();

  v70 = [v69 milesPerHour];
  sub_100013820(0, &qword_100063C98, NSUnitSpeed_ptr);
  sub_1000498DC();
  v109(v64, v59 + v119, v160);
  v112(v58, v59 + v111, v159);
  sub_1000139C8();
  v71 = *(v155 + 104);
  LODWORD(v169) = enum case for VFXEffectViewID.poster(_:);
  v170 = v155 + 104;
  v160 = v71;
  v71(v151);
  (*(v129 + 104))(v128, enum case for WeatherConditionBackgroundConfig.CameraPositionType.default(_:), v130);
  (*(v134 + 104))(v132, enum case for WeatherConditionBackgroundOptions.DisplayLocation.poster(_:), v135);
  v72 = objc_opt_self();
  v73 = [v72 mainScreen];
  [v73 bounds];

  v74 = [v72 mainScreen];
  [v74 scale];

  sub_10004A44C();
  sub_1000139C8();
  sub_1000139C8();
  UIAccessibilityIsReduceMotionEnabled();
  v75 = v124;
  v76 = v154;
  sub_10004A78C();
  (*(v167 + 16))(v123, v171, v75);
  (*(v141 + 104))(v140, enum case for DynamicTypeSize.large(_:), v142);
  v77 = v59 + v68[16];
  v78 = v153;
  (*(v145 + 16))(v143, v77, v147);
  v79 = sub_10004A6EC();
  sub_100004544(v148, 1, 1, v79);
  sub_10004A5BC();
  sub_10004A3DC();
  v80 = [objc_opt_self() currentDevice];
  v81 = [v80 userInterfaceIdiom];

  if (v81 == 1)
  {
    swift_beginAccess();
    v82 = v104;
    sub_1000139C8();
    if (sub_100004288(v82, 1, v105) == 1)
    {
      sub_1000090CC(v82, &qword_100063C18, &qword_10004E300);
    }

    else
    {
      sub_10001361C();
      v83 = v98;
      v168 = type metadata accessor for DynamicRotationState;
      sub_100013710();
      v84 = v99;
      sub_10004A73C();
      sub_100013674(v83, type metadata accessor for DynamicRotationState);
      v85 = v100;
      v86 = v101;
      (*(v100 + 16))(v101, v84, v107);
      v87 = v102;
      v88 = v103;
      (*(v102 + 104))(v86, enum case for VFXOverrideModel.deviceRotation(_:), v103);
      v89 = v151;
      v90 = v75;
      v91 = v152;
      (v160)(v151, v169, v152);
      sub_10004A3CC();
      v92 = v91;
      v75 = v90;
      (*(v155 + 8))(v89, v92);
      (*(v87 + 8))(v86, v88);
      v76 = v154;
      v93 = v84;
      v78 = v153;
      (*(v85 + 8))(v93, v107);
      sub_100013674(v106, v168);
    }
  }

  sub_10004A43C();
  sub_1000136C8(&qword_100063CA0, &type metadata accessor for WeatherConditionBackgroundManager, &protocol conformance descriptor for WeatherConditionBackgroundManager);
  sub_10004A4CC();
  v94 = v172;
  sub_10004A5CC();
  v95 = v150;
  sub_100004544(v94, 0, 1, v150);
  swift_beginAccess();
  sub_100013120();
  swift_endAccess();
  sub_10004A5CC();
  sub_10001283C(v76);
  (*(v149 + 8))(v76, v95);
  (*(v144 + 8))(v78, v146);
  (*(v167 + 8))(v171, v75);
  (*(v137 + 8))(v165, v166);
  return sub_100013674(v136, type metadata accessor for SimulationReason);
}

void sub_10000F64C()
{
  type metadata accessor for SimulationReason(0);
  sub_100005A24();
  __chkstk_darwin(v1);
  sub_1000059D0();
  v4 = v3 - v2;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    swift_storeEnumTagMultiPayload();
    v5 = *(v0 + 16);

    sub_10001CA74(v4, v5);

    sub_100013E50();
    sub_100013674(v4, v6);
    if (*(v0 + 16))
    {

      sub_10004A40C(0);
    }

    v7 = *(v0 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView);
    if (v7 && (v8 = [v7 effect]) != 0)
    {
      v9 = v8;
      sub_100013374(0.0, 0.4);
      sub_1000479C0(v9, v10);
    }

    else
    {
      *(*(v0 + 88) + 24) = 1;
    }
  }
}

uint64_t sub_10000F778(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, double a4)
{
  v5 = v4;
  v9 = a4;
  *(v5 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_lastPauseAnimationTimerDuration) = a4;
  sub_100013FBC();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = v10;

  if ((a1 & 1) != 0 && !UIAccessibilityIsReduceMotionEnabled())
  {

    v19 = (v5 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
    v20 = *(v5 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
    v21 = *(v5 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion + 8);
    *v19 = sub_100013608;
    v19[1] = v11;

    sub_100013110(v20, v21);
    if (!*(v5 + 64) || (, v22 = sub_10004A31C(), , (v22 & 1) == 0))
    {
      v9 = v9 + 0.3;
    }

    sub_10000FAA8(v9);
  }

  else
  {
    sub_100047B2C();
    v12 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer;
    v13 = *(v5 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer);
    if (v13)
    {
      [v13 invalidate];
      v14 = *(v5 + v12);
    }

    else
    {
      v14 = 0;
    }

    *(v5 + v12) = 0;

    v15 = (v5 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
    v16 = *(v5 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
    v17 = *(v5 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion + 8);
    *v15 = 0;
    v15[1] = 0;
    sub_100013110(v16, v17);
    if (*(v5 + 16))
    {

      sub_10004A41C();
    }

    sub_10000F994(a2, a3, v10);
  }
}

uint64_t sub_10000F994(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for SimulationReason(0);
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_storeEnumTagMultiPayload();
    v9 = *(v8 + 16);

    sub_10001D088(v6, v9);

    sub_100013674(v6, type metadata accessor for SimulationReason);
  }

  return a1(Strong);
}

void sub_10000FAA8(double a1)
{
  v3 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer;
  v4 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer);
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_100013614;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100011A98;
  v10[3] = &unk_10005E800;
  v7 = _Block_copy(v10);

  v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:a1];
  _Block_release(v7);
  v9 = *(v1 + v3);
  *(v1 + v3) = v8;
}

uint64_t sub_10000FBD8(int a1, uint64_t (*a2)(uint64_t), uint64_t a3, double a4)
{
  type metadata accessor for SimulationReason(0);
  sub_1000059BC();
  v10 = __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  result = UIAccessibilityIsReduceMotionEnabled();
  if ((result & 1) == 0)
  {
    v28 = a1;
    v14 = *(v4 + 16);
    if (v14)
    {
      v15 = *(v4 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView);
      if (v15)
      {

        v16 = [v15 effect];
        if (v16)
        {
          v27 = v16;
          sub_100049B9C();
          swift_storeEnumTagMultiPayload();

          sub_10001CA74(v12, v14);

          if (v28 == 2)
          {
            v17 = 0;
            v18 = 0;
          }

          else
          {
            sub_100013FBC();
            v26 = swift_allocObject();
            swift_weakInit();
            sub_100013710();
            v18 = swift_allocObject();
            *(v18 + 16) = v26;
            sub_10001361C();
            v17 = sub_100013298;
          }

          v19 = sub_10004A42C();
          sub_100013FBC();
          v20 = swift_allocObject();
          swift_weakInit();
          v21 = swift_allocObject();
          *(v21 + 16) = v17;
          *(v21 + 24) = v18;
          *(v21 + 32) = a2;
          *(v21 + 40) = a3;
          v22 = v27;
          *(v21 + 48) = v20;
          *(v21 + 56) = v22;
          *(v21 + 64) = v28;
          *(v21 + 72) = a4;
          sub_100013364(v17, v18);
          sub_100013364(a2, a3);

          v23 = v22;
          sub_10004A04C();

          sub_100013110(v17, v18);

          sub_100013E50();
          sub_100013674(v12, v24);
        }
      }
    }
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_10000FEF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 16);

    sub_10001D088(a2, v4);
  }

  return result;
}

uint64_t sub_10000FF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v39 = a2;
  v40 = a6;
  v38 = a1;
  v10 = sub_10004A67C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004A58C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v18 = sub_10004A0EC();
    if (v18)
    {

      *&v19 = a7;
      v37 = v19;
      v20 = 1.0 - *&v19;
      sub_100013478(&off_10005DD00);
      v36 = v21;
      sub_100002D54(&qword_100063C40, &qword_10004CF40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10004CE30;
      v23 = *&v37;
      v24 = v36;
      *(inited + 32) = vmul_n_f32(*v36.f32, *&v37);
      *(inited + 40) = vmuls_lane_f32(v23, v24, 2) + 100.0;
      sub_100013478(inited);
      v31 = v25;
      *&v37 = a4;
      v35 = *(v15 + 104);
      v30 = v14;
      v35(v17, enum case for BoundEntity.camera(_:), v14);
      sub_10004A57C();
      v29 = v26;
      v34 = *(v15 + 8);
      v34(v17, v14);
      v33 = *(v11 + 104);
      v33(v13, enum case for BoundPropertyName.cameraPosition(_:), v10);
      sub_10004A66C();
      v36.i64[0] = a3;
      v32 = *(v11 + 8);
      v32(v13, v10);
      v42 = sub_100002D54(&qword_100063C48, &qword_10004CF48);
      v41[0] = swift_allocObject();
      *(v41[0] + 16) = v31;
      sub_10004A0DC();

      sub_100008FC8(v41);
      v27 = v30;
      v35(v17, enum case for BoundEntity.lightning(_:), v30);
      sub_10004A57C();
      v34(v17, v27);
      v33(v13, enum case for BoundPropertyName.lightningFadeProgress(_:), v10);
      sub_10004A66C();
      v32(v13, v10);
      v42 = &type metadata for Float;
      *v41 = v20;
      sub_10004A0DC();
      a4 = v37;

      a3 = v36.i64[0];

      sub_100008FC8(v41);
    }
  }

  return sub_1000103F4(v38, v39, a3, a4);
}

uint64_t sub_1000103F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10004A1DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004A1FC();
  result = __chkstk_darwin(v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 | a3)
  {
    v22 = v14;
    v23 = result;
    sub_100013820(0, &qword_100065260, OS_dispatch_queue_ptr);
    v21 = sub_10004ABFC();
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = a3;
    v17[5] = a4;
    aBlock[4] = sub_100013564;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012500;
    aBlock[3] = &unk_10005E7B0;
    v18 = _Block_copy(aBlock);
    sub_100013364(a1, a2);
    sub_100013364(a3, a4);

    sub_10004A1EC();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000136C8(&qword_100063C50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100002D54(&qword_100063C58, &unk_10004DE10);
    sub_1000138A8(&qword_100063C60, &qword_100063C58, &unk_10004DE10, &protocol conformance descriptor for [A]);
    sub_10004ACFC();
    v19 = v21;
    sub_10004AC0C();
    _Block_release(v18);

    (*(v9 + 8))(v11, v8);
    return (*(v22 + 8))(v16, v23);
  }

  return result;
}

uint64_t sub_100010710(uint64_t a1)
{
  v3 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  sub_100005A50(v3);
  sub_100013ED4();
  __chkstk_darwin(v4);
  sub_100013F88();
  sub_100005A44();
  v5 = sub_10004A61C();
  sub_1000059BC();
  v49 = v6;
  __chkstk_darwin(v7);
  sub_1000059D0();
  v50 = v9 - v8;
  sub_100005A44();
  sub_10004A65C();
  sub_1000059BC();
  v47 = v11;
  v48 = v10;
  __chkstk_darwin(v10);
  sub_1000059D0();
  v46 = v13 - v12;
  v14 = sub_100005A44();
  v52 = type metadata accessor for DynamicRotationState(v14);
  sub_100005A24();
  __chkstk_darwin(v15);
  sub_1000059D0();
  v18 = v17 - v16;
  v51 = sub_10004A74C();
  sub_1000059BC();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000059D0();
  v24 = v23 - v22;
  v25 = sub_100005A44();
  type metadata accessor for SimulationReason(v25);
  sub_100005A24();
  __chkstk_darwin(v26);
  sub_1000059D0();
  v29 = v28 - v27;
  sub_100049BAC();
  sub_100005A24();
  v31 = a1;
  (*(v30 + 16))(v29, a1);
  swift_storeEnumTagMultiPayload();
  v32 = *(v1 + 16);

  sub_10001CA74(v29, v32);

  v53 = v1;
  if (*(v1 + 16))
  {
    v45 = a1;
    sub_100013710();

    sub_10004A73C();
    sub_100013674(v18, type metadata accessor for DynamicRotationState);
    (*(v20 + 16))(v46, v24, v51);
    (*(v47 + 104))(v46, enum case for VFXOverrideModel.deviceRotation(_:), v48);
    v33 = enum case for VFXEffectViewID.poster(_:);
    v44 = *(v49 + 104);
    v44(v50, enum case for VFXEffectViewID.poster(_:), v5);
    sub_10004A3CC();
    v34 = *(v49 + 8);
    v34(v50, v5);
    (*(v47 + 8))(v46, v48);
    v44(v50, v33, v5);
    v31 = v45;
    sub_10004A3EC();

    v34(v50, v5);
    (*(v20 + 8))(v24, v51);
  }

  v35 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_gradientView;
  swift_beginAccess();
  v36 = *(v53 + v35);
  if (v36)
  {
    swift_endAccess();
    v37 = v36;
    sub_10002424C(v31);

    sub_100013E50();
    sub_100013674(v29, v38);
  }

  else
  {
    sub_100013E50();
    sub_100013674(v29, v39);
    swift_endAccess();
  }

  sub_100013710();
  sub_100013FE8();
  sub_100004544(v40, v41, v42, v52);
  sub_100013F40(v53 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_rotationState, v54);
  sub_100013120();
  return swift_endAccess();
}

uint64_t sub_100010C14(uint64_t a1)
{
  type metadata accessor for SimulationReason(0);
  sub_100005A24();
  __chkstk_darwin(v3);
  sub_1000059D0();
  v6 = v5 - v4;
  sub_100049BAC();
  sub_100005A24();
  (*(v7 + 16))(v6, a1);
  swift_storeEnumTagMultiPayload();
  v8 = *(v1 + 16);

  sub_10001D088(v6, v8);

  sub_100013E50();
  return sub_100013674(v6, v9);
}

void sub_100010CFC(uint64_t a1)
{
  sub_100014000();
  v3 = v1;
  v5 = v4;
  v6 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  sub_100005A50(v6);
  sub_100013ED4();
  __chkstk_darwin(v7);
  sub_100013F88();
  v68 = v8;
  v9 = sub_100002D54(&unk_100063DE0, "4E");
  sub_100005A50(v9);
  sub_100013ED4();
  __chkstk_darwin(v10);
  sub_100013F88();
  v67 = v11;
  v12 = sub_100002D54(&qword_100063C20, &qword_10004D2C0);
  sub_100005A50(v12);
  sub_100013ED4();
  __chkstk_darwin(v13);
  sub_100013F88();
  v66 = v14;
  v15 = sub_100002D54(&qword_100063C28, &qword_10004CF20);
  sub_100005A50(v15);
  sub_100013ED4();
  __chkstk_darwin(v16);
  v18 = &v64[-v17];
  v19 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  sub_100005A50(v19);
  sub_100013ED4();
  __chkstk_darwin(v20);
  v22 = &v64[-v21];
  v23 = sub_100049FAC();
  v24 = sub_10004AB9C();
  if (os_log_type_enabled(v23, v24))
  {
    sub_100014030();
    v25 = sub_100013FA0();
    *&v70 = v25;
    *v2 = 136446210;
    v65 = v5;
    if (v5)
    {
      if (v5 == 1)
      {
        v26 = 0xD000000000000011;
      }

      else
      {
        v26 = 0x646564616F6C6E75;
      }

      if (v5 == 1)
      {
        v27 = 0x800000010004E960;
      }

      else
      {
        v27 = 0xE800000000000000;
      }
    }

    else
    {
      v27 = 0x800000010004E980;
      v26 = 0xD000000000000013;
    }

    v28 = sub_1000230EC(v26, v27, &v70);

    *(v2 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v23, v24, "Invalidating animation for reason=%{public}s", v2, 0xCu);
    sub_100008FC8(v25);
    sub_100013F58(v25);
    sub_100013F58(v2);

    LOBYTE(v5) = v65;
  }

  else
  {
  }

  v29 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView;
  v30 = *(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView);
  if (v30)
  {
    [v30 removeFromSuperview];
  }

  v31 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_gradientView;
  swift_beginAccess();
  v32 = *(v3 + v31);
  if (v32)
  {
    [v32 removeFromSuperview];
  }

  v33 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_debugLabel;
  v34 = *(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_debugLabel);
  if (v34)
  {
    [v34 removeFromSuperview];
  }

  v35 = type metadata accessor for PosterAnimationViewModel(0);
  sub_100013F28(v22, v36, v37, v35);
  sub_100013EE0(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_posterViewModel);
  sub_100013120();
  swift_endAccess();
  v38 = sub_10004A7AC();
  sub_100013F28(v18, v39, v40, v38);
  sub_100013EE0(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_lastModel);
  sub_100013120();
  swift_endAccess();
  v41 = *(v3 + v29);
  *(v3 + v29) = 0;

  v42 = *(v3 + v31);
  *(v3 + v31) = 0;

  v43 = *(v3 + v33);
  *(v3 + v33) = 0;

  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  sub_100013F40(v3 + 112, v69);
  sub_100013120();
  swift_endAccess();
  *(v3 + 64) = 0;

  v44 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer;
  v45 = *(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer);
  if (v45)
  {
    [v45 invalidate];
    v46 = *(v3 + v44);
  }

  else
  {
    v46 = 0;
  }

  *(v3 + v44) = 0;

  v47 = (v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
  v48 = *(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
  v49 = *(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion + 8);
  *v47 = 0;
  v47[1] = 0;
  sub_100013110(v48, v49);
  v50 = type metadata accessor for SimulationReason(0);
  sub_100013F28(v66, v51, v52, v50);
  sub_100013EE0(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_activeRenderSimulation);
  sub_100013120();
  swift_endAccess();
  v53 = sub_100049B7C();
  sub_100013F28(v67, v54, v55, v53);
  sub_100013EE0(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_renderStartTime);
  sub_100013120();
  swift_endAccess();
  sub_100047B2C();
  *(v3 + 16) = 0;

  sub_10001D648();
  *(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_lastPauseAnimationTimerDuration) = 0;
  v56 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_deviceRotationTimer;
  v57 = *(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_deviceRotationTimer);
  if (v57)
  {
    [v57 invalidate];
    v58 = *(v3 + v56);
  }

  else
  {
    v58 = 0;
  }

  *(v3 + v56) = 0;

  v59 = type metadata accessor for DynamicRotationState(0);
  sub_100013F28(v68, v60, v61, v59);
  sub_100013EE0(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_rotationState);
  sub_100013120();
  swift_endAccess();
  sub_10003CA44();
  if (!v5)
  {
LABEL_29:

    goto LABEL_30;
  }

  v62 = sub_10004AF3C();

  if ((v62 & 1) == 0)
  {
    if (v5 == 2)
    {
      v63 = sub_10004AF3C();

      if ((v63 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_30:
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  sub_100013F40(v3 + 24, v69);
  sub_100013120();
  swift_endAccess();
LABEL_31:
  sub_100014018();
}

char *sub_100011380()
{

  sub_1000090CC(v0 + 24, &qword_100063C38, &qword_10004CF38);

  sub_1000090CC(v0 + 112, &qword_100063C30, &qword_10004CF30);
  sub_1000090CC(v0 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_lastModel, &qword_100063C28, &qword_10004CF20);

  sub_1000090CC(v0 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_posterViewModel, &unk_100063DF0, &qword_10004CF28);
  sub_100013110(*(v0 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion), *(v0 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion + 8));
  sub_1000090CC(v0 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_activeRenderSimulation, &qword_100063C20, &qword_10004D2C0);
  sub_1000090CC(v0 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_renderStartTime, &unk_100063DE0, "4E");
  sub_1000090CC(v0 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_rotationState, &qword_100063C18, &qword_10004E300);

  v1 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_logger;
  sub_100049FCC();
  sub_100009714();
  (*(v2 + 8))(v0 + v1);
  sub_100013DE4(v0 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_rendererDelegate);
  return v0;
}

uint64_t sub_100011550()
{
  sub_100011380();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for VFXAnimation(uint64_t a1)
{
  result = qword_100063AC0;
  if (!qword_100063AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000115FC(uint64_t a1)
{
  sub_100011894(319, &qword_100063AD0, &type metadata accessor for BackgroundAnimationData.Model);
  if (v1 <= 0x3F)
  {
    sub_100011894(319, &qword_100063AD8, type metadata accessor for PosterAnimationViewModel);
    if (v2 <= 0x3F)
    {
      sub_100011894(319, &qword_100063AE0, type metadata accessor for SimulationReason);
      if (v3 <= 0x3F)
      {
        sub_100011894(319, &qword_100063818, &type metadata accessor for Date);
        if (v4 <= 0x3F)
        {
          sub_100011894(319, &qword_100063AE8, type metadata accessor for DynamicRotationState);
          if (v5 <= 0x3F)
          {
            sub_100049FCC();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100011894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004ACDC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000118E8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_rendererDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100011954(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer;
    v5 = *(result + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimer);
    if (v5)
    {
      [v5 invalidate];
      v6 = *(v3 + v4);
    }

    else
    {
      v6 = 0;
    }

    *(v3 + v4) = 0;

    sub_100047B2C();

    if (*(v3 + 16))
    {
      v7 = *(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
      v8 = *(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion + 8);

      sub_100013364(v7, v8);
      sub_10004A41C();
      sub_100013110(v7, v8);
    }

    else
    {
      v9 = *(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
      if (v9)
      {
        v10 = *(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion + 8);

        v9(v11);
        sub_100013110(v9, v10);
      }
    }

    v12 = (v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
    v13 = *(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion);
    v14 = *(v3 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_freezeTimerCompletion + 8);
    *v12 = 0;
    v12[1] = 0;
    sub_100013110(v13, v14);
  }

  return result;
}

void sub_100011A98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100011B00()
{
  v1 = *(v0 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView);
  if (v1)
  {
    v2 = v1;
    sub_100012F98(v2, 0.0);
  }
}

void sub_100011B5C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_posterViewModel;
  swift_beginAccess();
  v3 = type metadata accessor for PosterAnimationViewModel(0);
  if (!sub_100004288(v2, 1, v3))
  {
    v4 = *(v2 + *(v3 + 68));
    if (v4)
    {
      v5 = v4;
      v6 = sub_100012EFC(v1);
      sub_10004ACAC();
      sub_100012F98(v6, 1.0);
    }
  }
}

void sub_100011C18(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v2 = sub_100002D54(&qword_100063C20, &qword_10004D2C0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v33 - v6;
  v8 = type metadata accessor for SimulationReason(0);
  __chkstk_darwin(v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PosterAnimationViewModel(0);
  __chkstk_darwin(v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  __chkstk_darwin(v14 - 8);
  v16 = &v33 - v15;
  v17 = sub_100002D54(&qword_100063C80, &qword_10004CF50);
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = Strong;
  v33 = v10;
  v34 = v5;
  v35 = v8;
  swift_beginAccess();
  v22 = *(v17 + 48);
  sub_1000139C8();
  sub_1000139C8();
  if (sub_100004288(v19, 1, v11) == 1)
  {
    if (sub_100004288(&v19[v22], 1, v11) == 1)
    {
      sub_1000090CC(v19, &unk_100063DF0, &qword_10004CF28);
LABEL_12:
      swift_beginAccess();
      sub_1000139C8();
      v27 = v35;
      if (sub_100004288(v7, 1, v35) == 1)
      {
        sub_1000090CC(v7, &qword_100063C20, &qword_10004D2C0);
        v28 = sub_100049FAC();
        v29 = sub_10004AB7C();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "Completed rendering of weather data, but there was no active render simulation.", v30, 2u);
        }
      }

      else
      {
        v31 = v33;
        sub_10001361C();
        v32 = *(v21 + 16);

        sub_10001D088(v31, v32);

        sub_100013674(v31, type metadata accessor for SimulationReason);
        sub_100004544(v34, 1, 1, v27);
        swift_beginAccess();
        sub_100013120();
        swift_endAccess();
      }

      sub_1000121D0();

      return;
    }

    goto LABEL_7;
  }

  sub_1000139C8();
  if (sub_100004288(&v19[v22], 1, v11) == 1)
  {
    sub_100013674(v16, type metadata accessor for PosterAnimationViewModel);
LABEL_7:
    sub_1000090CC(v19, &qword_100063C80, &qword_10004CF50);
    goto LABEL_8;
  }

  sub_10001361C();
  v26 = sub_1000047E8(v16, v13);
  sub_100013674(v13, type metadata accessor for PosterAnimationViewModel);
  sub_100013674(v16, type metadata accessor for PosterAnimationViewModel);
  sub_1000090CC(v19, &unk_100063DF0, &qword_10004CF28);
  if (v26)
  {
    goto LABEL_12;
  }

LABEL_8:
  v23 = sub_100049FAC();
  v24 = sub_10004AB9C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Skipping notifying of completion because a newer request is inflight that will notify instead", v25, 2u);
  }
}

uint64_t sub_1000121D0()
{
  v1 = v0;
  v2 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  __chkstk_darwin(v2 - 8);
  v24 = &v23 - v3;
  v4 = sub_100049B7C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_100049FAC();
  v9 = sub_10004AB9C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v10 = 136446210;
    v12 = v0 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_posterViewModel;
    swift_beginAccess();
    v13 = type metadata accessor for PosterAnimationViewModel(0);
    if (sub_100004288(v12, 1, v13))
    {
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
      (*(v5 + 16))(v7, v12 + *(v13 + 20), v4);
      v14 = sub_100049ADC();
      v15 = v16;
      (*(v5 + 8))(v7, v4);
    }

    v17 = sub_1000230EC(v14, v15, v25);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Completed rendering of weather data at date=%{public}s", v10, 0xCu);
    sub_100008FC8(v11);
  }

  else
  {
  }

  v18 = v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_rendererDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v22 = v24;
    sub_1000139C8();
    (*(v20 + 16))(v22, ObjectType, v20);
    swift_unknownObjectRelease();
    return sub_1000090CC(v22, &unk_100063DF0, &qword_10004CF28);
  }

  return result;
}

uint64_t sub_100012500(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100012544(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for PosterAnimationViewModel(0);
  __chkstk_darwin(v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  __chkstk_darwin(v5 - 8);
  v7 = &v14[-v6];
  v8 = sub_100002D54(&qword_100063C80, &qword_10004CF50);
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v12 = *(v8 + 48);
    sub_1000139C8();
    sub_1000139C8();
    if (sub_100004288(v10, 1, v2) == 1)
    {
      if (sub_100004288(&v10[v12], 1, v2) == 1)
      {
        sub_1000090CC(v10, &unk_100063DF0, &qword_10004CF28);
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000139C8();
      if (sub_100004288(&v10[v12], 1, v2) != 1)
      {
        sub_10001361C();
        v13 = sub_1000047E8(v7, v4);
        sub_100013674(v4, type metadata accessor for PosterAnimationViewModel);
        sub_100013674(v7, type metadata accessor for PosterAnimationViewModel);
        sub_1000090CC(v10, &unk_100063DF0, &qword_10004CF28);
        if ((v13 & 1) == 0)
        {
        }

LABEL_10:
        sub_1000121D0();
      }

      sub_100013674(v7, type metadata accessor for PosterAnimationViewModel);
    }

    return sub_1000090CC(v10, &qword_100063C80, &qword_10004CF50);
  }

  return result;
}

void sub_10001283C(uint64_t a1)
{
  v62 = a1;
  v2 = sub_10004A8AC();
  v60 = *(v2 - 8);
  v61 = v2;
  __chkstk_darwin(v2);
  v59 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100049B7C();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100049D9C();
  v56 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100049C2C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100049F2C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v1;
  v17 = v1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_posterViewModel;
  swift_beginAccess();
  v18 = type metadata accessor for PosterAnimationViewModel(0);
  if (!sub_100004288(v17, 1, v18))
  {
    v19 = *(v17 + *(v18 + 72));
    if (v19)
    {
      v20 = v19;
      if (sub_10000AF0C())
      {
        v54 = v20;
        v21 = [objc_allocWithZone(NSDateFormatter) init];
        sub_10004A77C();
        sub_100049F0C();
        v22 = *(v14 + 8);
        v52 = v14 + 8;
        v53 = v22;
        v22(v16, v13);
        isa = sub_100049BFC().super.isa;
        (*(v10 + 8))(v12, v9);
        v51 = v21;
        [v21 setTimeZone:isa];

        [v21 setTimeStyle:1];
        [v21 setDateStyle:1];
        v24 = 0xE000000000000000;
        v66 = 0;
        v67 = 0xE000000000000000;
        sub_10004AD6C(49);
        v68._countAndFlagsBits = 0x6F697469646E6F43;
        v68._object = 0xEB00000000203A6ELL;
        sub_10004A9DC(v68);
        sub_10004A75C();
        v25 = sub_100049D8C();
        v27 = v26;
        (*(v56 + 8))(v8, v6);
        v69._countAndFlagsBits = v25;
        v69._object = v27;
        sub_10004A9DC(v69);

        v70._countAndFlagsBits = 0x6F697461636F4C0ALL;
        v70._object = 0xEB00000000203A6ELL;
        sub_10004A9DC(v70);
        sub_10004A77C();
        sub_100049EDC();
        v29 = v28;
        v31 = v30;
        v32 = v13;
        v33 = v51;
        v53(v16, v32);
        v64 = v29;
        v65 = v31;
        type metadata accessor for CLLocationCoordinate2D(0);
        sub_10004AE0C();
        v71._countAndFlagsBits = 0x203A657461440ALL;
        v71._object = 0xE700000000000000;
        sub_10004A9DC(v71);
        v34 = v55;
        sub_10004A76C();
        v35 = sub_100049B0C().super.isa;
        (*(v57 + 8))(v34, v58);
        v36 = [v33 stringForObjectValue:v35];

        if (v36)
        {
          v37 = sub_10004A98C();
          v24 = v38;
        }

        else
        {
          v37 = 0;
        }

        v39 = v63;
        v72._countAndFlagsBits = v37;
        v72._object = v24;
        sub_10004A9DC(v72);

        v73._countAndFlagsBits = 0x69746176656C450ALL;
        v73._object = 0xEC000000203A6E6FLL;
        sub_10004A9DC(v73);
        sub_100002D54(&qword_100063CA8, &qword_10004CF58);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_10004CBE0;
        v41 = v59;
        sub_10004A79C();
        sub_10004A89C();
        v43 = v42;
        (*(v60 + 8))(v41, v61);
        *(v40 + 56) = &type metadata for CGFloat;
        *(v40 + 64) = sub_100013768();
        *(v40 + 32) = v43;
        v74._countAndFlagsBits = sub_10004A99C();
        sub_10004A9DC(v74);

        v45 = v66;
        v44 = v67;
        v46 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_debugLabel;
        v47 = *(v39 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_debugLabel);
        v20 = v54;
        if (v47)
        {
          v48 = v47;
          sub_1000137BC(v45, v44, v48);
        }

        else
        {
          v49 = sub_1000020E8(v66, v67);

          v20 = *(v39 + v46);
          *(v39 + v46) = v49;
        }
      }
    }
  }
}

id sub_100012EFC(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView;
  v2 = *(a1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView);
  if (v2)
  {
    v3 = *(a1 + OBJC_IVAR____TtC13WeatherPoster12VFXAnimation_vfxView);
  }

  else
  {
    v5 = [objc_allocWithZone(VFXView) init];
    [v5 setAlpha:0.0];
    sub_100002560(v5, 0);
    v6 = *(a1 + v1);
    *(a1 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100012F98(void *a1, double a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  if (qword_100063470 != -1)
  {
    swift_once();
  }

  [v4 setAnimationTimingFunction:qword_100068300];
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v10[4] = sub_1000139B4;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100012500;
  v10[3] = &unk_10005E8C8;
  v7 = _Block_copy(v10);
  v8 = a1;

  [v5 animateWithDuration:v7 animations:0.25];
  _Block_release(v7);
  return [v4 commit];
}

uint64_t sub_100013110(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100013120()
{
  sub_100013FF4();
  sub_100002D54(v1, v2);
  sub_100005A24();
  v3 = sub_100013F94();
  v4(v3);
  return v0;
}

uint64_t sub_100013178()
{
  swift_weakDestroy();
  sub_100013FBC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000131AC()
{
  v1 = *(type metadata accessor for SimulationReason(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() <= 2)
  {
    sub_100049BAC();
    sub_100009714();
    (*(v5 + 8))(v0 + v3);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100013298()
{
  v0 = type metadata accessor for SimulationReason(0);
  sub_100005A50(v0);
  v1 = sub_100013FD4();

  return sub_10000FEF0(v1, v2);
}

uint64_t sub_1000132EC()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

double sub_100013364(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

void sub_100013374(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1000133EC(0x20000000000001uLL);
  }
}

unint64_t sub_1000133EC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100013478(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {

    goto LABEL_8;
  }

  if (v1 - 4 < 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = 0;
  v3 = 0uLL;
  do
  {
    v4 = *(result + 4 * v2 + 32);
    v5 = v3;
    *(&v5 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2 & 3))) = v4;
    v3 = v5;
    ++v2;
  }

  while (v1 != v2);

  if (v1 < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_100013514()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100013564()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v1)
  {
    result = v1();
  }

  if (v2)
  {
    return v2();
  }

  return result;
}

double sub_1000135B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000135C8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001361C()
{
  sub_100013FF4();
  v1(0);
  sub_100005A24();
  v2 = sub_100013F94();
  v3(v2);
  return v0;
}

uint64_t sub_100013674(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100009714();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000136C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100013710()
{
  sub_100013FF4();
  v1(0);
  sub_100005A24();
  v2 = sub_100013F94();
  v3(v2);
  return v0;
}

unint64_t sub_100013768()
{
  result = qword_100063CB0;
  if (!qword_100063CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063CB0);
  }

  return result;
}

void sub_1000137BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10004A95C();

  [a3 setText:v4];
}

uint64_t sub_100013820(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100013868()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000138A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100009240(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000138F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001397C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000139C8()
{
  sub_100013FF4();
  sub_100002D54(v1, v2);
  sub_100005A24();
  v3 = sub_100013F94();
  v4(v3);
  return v0;
}

uint64_t sub_100013A20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100013A84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100013A9C(uint64_t a1, uint64_t a2)
{
  sub_100014000();
  v3 = *(sub_100002D54(&unk_100063DF0, &qword_10004CF28) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  v5 = v2 + v4;
  v6 = type metadata accessor for PosterAnimationViewModel(0);
  if (!sub_100004288(v2 + v4, 1, v6))
  {
    sub_100049F2C();
    sub_100009714();
    (*(v7 + 8))(v2 + v4);
    v8 = v6[5];
    v9 = sub_100049B7C();
    sub_100005A24();
    v11 = *(v10 + 8);
    v11(v5 + v8, v9);
    v12 = v6[6];
    sub_100049D9C();
    sub_100009714();
    (*(v13 + 8))(v5 + v12);
    v14 = v6[9];
    sub_10004A69C();
    sub_100009714();
    (*(v15 + 8))(v5 + v14);
    v16 = v6[10];
    if (!sub_100004288(v5 + v16, 1, v9))
    {
      v11(v5 + v16, v9);
    }

    v17 = v6[11];
    if (!sub_100004288(v5 + v17, 1, v9))
    {
      v11(v5 + v17, v9);
    }

    v18 = v6[12];
    sub_10004A8AC();
    sub_100009714();
    (*(v19 + 8))(v5 + v18);
    v20 = v6[14];
    v21 = sub_10004A6DC();
    if (!sub_100004288(v5 + v20, 1, v21))
    {
      (*(*(v21 - 8) + 8))(v5 + v20, v21);
    }

    v22 = v6[16];
    sub_10004A72C();
    sub_100009714();
    (*(v23 + 8))(v5 + v22);
  }

  sub_100014018();

  return _swift_deallocObject(v24, v25, v26);
}

uint64_t sub_100013D70(uint64_t (*a1)(uint64_t))
{
  v1 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  sub_100005A50(v1);
  v2 = sub_100013FD4();

  return a1(v2);
}

uint64_t sub_100013E80(uint64_t a1)
{

  return sub_100004544(v1 + v2, 1, 1, a1);
}

uint64_t sub_100013EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_10004AF3C();
}

uint64_t sub_100013EE0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_100013F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100004544(a1, 1, 1, a4);
}

uint64_t sub_100013F40(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_100013F58(uint64_t a1)
{
}

uint64_t sub_100013FA0()
{

  return swift_slowAlloc();
}

uint64_t sub_100014030()
{

  return swift_slowAlloc();
}

BOOL sub_100014048(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_100014060()
{
  sub_100014000();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v4 = sub_100049FCC();
  sub_1000059BC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100005A34();
  v10 = (v8 - v9);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer] = 0;
  v14 = type metadata accessor for PosterData(0);
  sub_100013E80(v14);
  v15 = type metadata accessor for PosterAnimationViewModel(0);
  sub_100013E80(v15);
  *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unlockState] = xmmword_10004CF90;
  *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_wakeState] = xmmword_10004CF90;
  v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_lastWakeTransitionDirection] = 3;
  v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_isRenderRequiredOnUpdate] = 0;
  if (qword_100063498 != -1)
  {
    sub_100019F98(&qword_100063498);
  }

  v16 = sub_100008F90(v4, qword_100068378);
  v37 = v6;
  v17 = *(v6 + 16);
  v17(v13, v16, v4);
  v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_deviceSupportsVFX] = v3 & 1;
  v17(v10, v13, v4);
  if (v3)
  {
    v18 = type metadata accessor for VFXAnimation(0);
    sub_10001A0AC(v18);
    v19 = sub_10001A0C4();
    v20 = sub_10000AFA4(v19);
    v21 = &off_10005E690;
  }

  else
  {
    v22 = type metadata accessor for MicaAnimation(0);
    sub_10001A0AC(v22);
    v23 = sub_10001A0C4();
    v20 = sub_10003D3EC(v23);
    v21 = &off_10005F490;
  }

  v24 = &v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation];
  *v24 = v20;
  v24[1] = v21;
  v25 = objc_allocWithZone(type metadata accessor for PosterDataManager());
  *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_dataManager] = sub_100042BFC(0);
  v26 = type metadata accessor for RenderingSessionManager(0);
  sub_10001A0AC(v26);
  v27 = sub_100031754();
  v28 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderingSessionManager;
  *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderingSessionManager] = v27;
  if (v3)
  {
    v29 = [objc_opt_self() currentDevice];
    v30 = [v29 userInterfaceIdiom];

    v31 = v30 != 1;
    v32 = *&v1[v28];
  }

  else
  {
    v32 = v27;
    v31 = 0;
  }

  type metadata accessor for AnimationUnloadManager();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unloadManager] = sub_100034FB4(v31, v32);
  v17(v10, v13, v4);
  v33 = type metadata accessor for PosterLabelManager(0);
  sub_10001A0AC(v33);
  v34 = sub_10001A0C4();
  *&v1[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_labelManager] = sub_1000393F8(v34);
  v35 = type metadata accessor for DynamicRotationManager(0);
  sub_10001A0AC(v35);

  v36 = sub_10002F6A0();
  (*(v37 + 8))(v13, v4);
  *&v1[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_rotationManager] = v36;
  v39.receiver = v1;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, "init");
  sub_100014018();
}

void sub_1000143C4()
{
  sub_100014000();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_100049E9C();
  sub_1000059BC();
  v85 = v7;
  v86 = v6;
  __chkstk_darwin(v6);
  sub_1000059D0();
  v84 = v9 - v8;
  v10 = sub_100002D54(&qword_100063DC0, &qword_10004E5C0);
  sub_100005A50(v10);
  sub_100013ED4();
  __chkstk_darwin(v11);
  v13 = &v81 - v12;
  v14 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  sub_100005A50(v14);
  sub_100013ED4();
  __chkstk_darwin(v15);
  v89 = &v81 - v16;
  v88 = type metadata accessor for PosterData(0);
  sub_100005A24();
  __chkstk_darwin(v17);
  sub_100005A34();
  v20 = v18 - v19;
  v22 = __chkstk_darwin(v21);
  sub_10001A030(v22, v23, v24, v25, v26, v27, v28, v29, v81);
  __chkstk_darwin(v30);
  v32 = &v81 - v31;
  if (qword_100063498 != -1)
  {
    sub_100019F98(&qword_100063498);
  }

  v33 = sub_100049FCC();
  sub_10001A018(v33, qword_100068378);
  swift_unknownObjectRetain();
  v87 = v0;
  v34 = sub_100049FAC();
  v35 = sub_10004AB9C();
  v36 = &selRef_topAnchor;
  if (sub_10001A094(v35))
  {
    v37 = swift_slowAlloc();
    v82 = v5;
    v38 = v37;
    v39 = sub_10001A07C();
    v83 = v13;
    v40 = v39;
    v91[0] = v39;
    *v38 = 67240706;
    *(v38 + 4) = [v3 isPreview];
    *(v38 + 8) = 1026;
    *(v38 + 10) = [v3 isSnapshot];
    swift_unknownObjectRelease();
    *(v38 + 14) = 2082;
    [v3 deviceOrientation];
    v41 = sub_10001A1C4();
    v43 = sub_1000230EC(v41, v42, v91);
    v36 = &selRef_topAnchor;

    *(v38 + 16) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "Did initialize; isPreview=%{BOOL,public}d, isSnapshot=%{BOOL,public}d, orientation=%{public}s", v38, 0x18u);
    sub_100008FC8(v40);
    v44 = v40;
    v13 = v83;
    sub_100013F58(v44);
    v45 = v38;
    v5 = v82;
    sub_100013F58(v45);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v46 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer);
  *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer) = v5;

  v47 = v5;
  sub_10002FD90();
  *(*(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_rotationManager) + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_delegate + 8) = &off_10005E940;
  swift_unknownObjectWeakAssign();
  sub_100002D54(&unk_100063E10, &qword_10004D0C0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10004CFA0;
  v49 = *(*(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8) + 8);
  *(v48 + 32) = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation);
  *(v48 + 40) = v49;
  *(v48 + 48) = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_labelManager);
  *(v48 + 56) = &off_10005F460;
  swift_unknownObjectRetain();

  sub_10002D7A8(v48);

  sub_10002D844([v3 v36[47]]);
  v91[4] = sub_100014C20;
  v91[5] = 0;
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 1107296256;
  v91[2] = sub_100014C24;
  v91[3] = &unk_10005E9C0;
  v50 = _Block_copy(v91);

  [v47 updatePreferences:v50];
  _Block_release(v50);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    if (([v3 isPreview] & 1) == 0)
    {
      v51 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_dataManager);
      sub_1000425C8(v32);
      v52 = v89;
      sub_100019D10(v32, v89, type metadata accessor for PosterData);
      sub_100004544(v52, 0, 1, v88);
      v53 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_posterData;
      sub_10001A060(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_posterData);
      sub_100019C48(v52, v1 + v53);
      swift_endAccess();
      v54 = v90;
      sub_100019D10(v32, v90, type metadata accessor for PosterData);
      sub_100019D10(v32, v20, type metadata accessor for PosterData);
      v55 = sub_100049FAC();
      v56 = sub_10004AB9C();
      if (sub_10001A094(v56))
      {
        LODWORD(v87) = v56;
        v88 = v55;
        v89 = v32;
        v57 = sub_10001A07C();
        v83 = swift_slowAlloc();
        v91[0] = v83;
        *v57 = 136446723;
        v58 = sub_100026D60();
        v60 = v59;
        sub_100019F80();
        sub_100019CB8(v61, v62);
        v63 = sub_1000230EC(v58, v60, v91);

        *(v57 + 4) = v63;
        sub_100019FE8();
        sub_100026C88(v13);
        v64 = type metadata accessor for PosterDataModel(0);
        if (sub_100004288(v13, 1, v64) == 1)
        {
          sub_10000591C(v13, &qword_100063DC0, &qword_10004E5C0);
          v65 = 0xE300000000000000;
          v66 = 7104878;
        }

        else
        {
          v67 = *(v64 + 20);
          v68 = v13;
          v70 = v85;
          v69 = v86;
          v71 = *(v85 + 16);
          v90 = v20;
          v72 = v84;
          v71(v84, v68 + v67, v86);
          sub_100019FD0();
          sub_100019CB8(v68, v73);
          v66 = sub_100049E4C();
          v65 = v74;
          v75 = v72;
          v20 = v90;
          (*(v70 + 8))(v75, v69);
        }

        sub_100019F80();
        sub_100019CB8(v20, v76);
        v77 = sub_1000230EC(v66, v65, v91);

        *(v57 + 24) = v77;
        v78 = v88;
        _os_log_impl(&_mh_execute_header, v88, v87, "Initializing with data=%{public}s, location=%{private,mask.hash}s", v57, 0x20u);
        v79 = v83;
        swift_arrayDestroy();
        sub_100013F58(v79);
        sub_100013F58(v57);

        v32 = v89;
      }

      else
      {

        sub_100019CB8(v20, type metadata accessor for PosterData);
        sub_100019CB8(v54, type metadata accessor for PosterData);
      }

      *(v51 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_posterDataDelegate + 8) = &off_10005E988;
      swift_unknownObjectWeakAssign();
      *(v51 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate + 8) = &off_10005E970;
      swift_unknownObjectWeakAssign();
      sub_100042830();
      sub_100019F80();
      sub_100019CB8(v32, v80);
    }

    sub_100014C8C(v47, [v3 isPreview]);
    sub_1000162B4(v3, v47, 0);
    sub_100014018();
  }
}

void sub_100014BAC(void *a1)
{
  v2 = [objc_opt_self() whiteColor];
  [a1 setPreferredProminentColor:v2];
}

uint64_t sub_100014C24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  return swift_unknownObjectRelease();
}

uint64_t sub_100014C8C(void *a1, int a2)
{
  v155 = a2;
  v159 = a1;
  v3 = sub_100002D54(&qword_1000637A8, "4E");
  __chkstk_darwin(v3 - 8);
  v134 = &v123 - v4;
  v142 = sub_10004A8AC();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v131 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_10004A69C();
  v140 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_100049D9C();
  v139 = *(v148 - 8);
  __chkstk_darwin(v148);
  v146 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_100049B7C();
  v138 = *(v154 - 8);
  __chkstk_darwin(v154);
  v145 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002D54(&unk_100063DE0, "4E");
  v10 = __chkstk_darwin(v9 - 8);
  v137 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v144 = &v123 - v12;
  v129 = sub_100049E9C();
  v128 = *(v129 - 1);
  __chkstk_darwin(v129);
  v127 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_100049C2C();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v126 = (&v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = sub_100049F2C();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v143 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for PosterDataModel.DataPoint(0);
  v16 = *(v130 - 8);
  __chkstk_darwin(v130);
  v133 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PosterDataModel(0);
  v19 = __chkstk_darwin(v18);
  v123 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v150 = &v123 - v21;
  v132 = type metadata accessor for PosterAnimationViewModel(0);
  v22 = __chkstk_darwin(v132);
  v151 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v153 = &v123 - v24;
  v25 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  __chkstk_darwin(v25 - 8);
  v27 = &v123 - v26;
  v28 = type metadata accessor for PosterData(0);
  v29 = __chkstk_darwin(v28);
  v31 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v123 - v32;
  v34 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_posterData;
  swift_beginAccess();
  v158 = v2;
  sub_100019DB0(v2 + v34, v27, &unk_100063DD0, &unk_10004D100);
  if (sub_100004288(v27, 1, v28) == 1)
  {
    *v33 = 2;
    swift_storeEnumTagMultiPayload();
    v35 = v33;
    if (sub_100004288(v27, 1, v28) != 1)
    {
      sub_10000591C(v27, &unk_100063DD0, &unk_10004D100);
    }
  }

  else
  {
    sub_100019E7C(v27, v33, type metadata accessor for PosterData);
    v35 = v33;
  }

  v36 = v159;
  v157 = [v159 backgroundView];
  v156 = [v36 foregroundView];
  sub_100019D10(v35, v31, type metadata accessor for PosterData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v152 = v35;
  if (EnumCaseMultiPayload != 1)
  {
    v64 = v158;
    v65 = *v31;
    LODWORD(v150) = *v31;
    v66 = v157;
    if (v155)
    {
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
    }

    else
    {
      sub_10002CF38(v65, 0, v163);
      v67 = v163[0];
      v68 = v163[1];
      v69 = v163[2];
      v70 = v163[3];
      v71 = v164;
    }

    v149 = v67;
    v165[0] = v67;
    v165[1] = v68;
    v165[2] = v69;
    v165[3] = v70;
    v166 = v71;
    v72 = v64;
    v73 = v66;
    v74 = [v159 environment];
    swift_getObjectType();
    *&v75 = sub_100035304();
    v77 = v76;
    v78 = v75;
    swift_unknownObjectRelease();
    sub_1000392BC(v165, v66, v77, v78);
    sub_100019D6C(v149, v68, v69, v70);

    v79 = *(v72 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unloadManager);
    v80 = v150;
    if (v150 == 2)
    {
      *(v79 + 32) = 0;
    }

    else
    {
      *(v79 + 32) = 1;
      sub_100034928();
    }

    v51 = v153;
    p_weak_ivar_lyt = &MicaAnimation.weak_ivar_lyt;
    sub_1000050D8(v73, v156, v80 == 2, v153);
    v36 = v159;
    goto LABEL_15;
  }

  v38 = v150;
  sub_100019E7C(v31, v150, type metadata accessor for PosterDataModel);
  v39 = v158;
  sub_100039370();
  *(*(v39 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unloadManager) + 32) = 0;
  v40 = *(v38 + v18[10]);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = v133;
    sub_100019D10(v40 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * (v41 - 1), v133, type metadata accessor for PosterDataModel.DataPoint);
    (*(v124 + 16))(v126, v38 + v18[6], v125);
    (*(v128 + 16))(v127, v38 + v18[5], v129);
    sub_10004AC9C();
    v43 = v144;
    v44 = v154;
    sub_100004544(v144, 1, 1, v154);
    sub_100049EFC();
    v129 = *(v138 + 16);
    v129(v145, v42, v44);
    v45 = v130;
    v46 = *(v130 + 20);
    v128 = *(v139 + 16);
    (v128)(v146, v42 + v46, v148);
    v47 = *(v42 + v45[6]);
    v48 = *(v42 + v45[7]);
    v49 = v45[8];
    v127 = *(v140 + 16);
    (v127)(v147, v42 + v49, v149);
    sub_100019DB0(v38 + v18[7], v43, &unk_100063DE0, "4E");
    sub_100019DB0(v38 + v18[8], v137, &unk_100063DE0, "4E");
    v126 = *(v141 + 16);
    v50 = v131;
    v126();
    LODWORD(v130) = *(v42 + v45[10]);
    sub_100019DB0(v38 + v18[9], v134, &qword_1000637A8, "4E");
    v51 = v153;
    (*(v135 + 16))(v153, v143, v136);
    v52 = v132;
    v129((v51 + *(v132 + 20)), v145, v154);
    (v128)(v51 + v52[6], v146, v148);
    v53 = v157;
    *(v51 + v52[7]) = v47;
    *(v51 + v52[8]) = v48;
    (v127)(v51 + v52[9], v147, v149);
    sub_100019DB0(v144, v51 + v52[10], &unk_100063DE0, "4E");
    v54 = v137;
    sub_100019DB0(v137, v51 + v52[11], &unk_100063DE0, "4E");
    v55 = v50;
    v56 = v50;
    v57 = v142;
    (v126)(v51 + v52[12], v56, v142);
    *(v51 + v52[13]) = v130;
    v58 = v134;
    sub_100019DB0(v134, v51 + v52[14], &qword_1000637A8, "4E");
    *(v51 + v52[15]) = 1;
    *(v51 + v52[17]) = v53;
    v59 = v156;
    *(v51 + v52[18]) = v156;
    v60 = v52[16];
    v61 = v53;
    v36 = v159;
    v62 = v59;
    sub_100035598(v51 + v60);
    sub_10000591C(v58, &qword_1000637A8, "4E");
    (*(v141 + 8))(v55, v57);
    p_weak_ivar_lyt = (&MicaAnimation + 56);
    sub_10000591C(v54, &unk_100063DE0, "4E");
    sub_10000591C(v144, &unk_100063DE0, "4E");
    (*(v140 + 8))(v147, v149);
    (*(v139 + 8))(v146, v148);
    (*(v138 + 8))(v145, v154);
    (*(v135 + 8))(v143, v136);
    sub_100019CB8(v133, type metadata accessor for PosterDataModel.DataPoint);
    sub_100019CB8(v150, type metadata accessor for PosterDataModel);
LABEL_15:
    v81 = v151;
    goto LABEL_16;
  }

  if (qword_100063498 != -1)
  {
    swift_once();
  }

  v106 = sub_100049FCC();
  sub_100008F90(v106, qword_100068378);
  v107 = v123;
  sub_100019D10(v38, v123, type metadata accessor for PosterDataModel);
  v108 = sub_100049FAC();
  v109 = sub_10004AB7C();
  v110 = os_log_type_enabled(v108, v109);
  v51 = v153;
  if (v110)
  {
    v111 = v107;
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v165[0] = v113;
    *v112 = 136446210;
    v114 = sub_10002A190();
    v116 = v115;
    sub_100019CB8(v111, type metadata accessor for PosterDataModel);
    v117 = sub_1000230EC(v114, v116, v165);

    *(v112 + 4) = v117;
    _os_log_impl(&_mh_execute_header, v108, v109, "Poster has data but no recent weather; model=%{public}s", v112, 0xCu);
    sub_100008FC8(v113);
  }

  else
  {

    sub_100019CB8(v107, type metadata accessor for PosterDataModel);
  }

  v81 = v151;
  sub_1000050D8(v157, v156, 1, v51);
  sub_100019CB8(v150, type metadata accessor for PosterDataModel);
  p_weak_ivar_lyt = (&MicaAnimation + 56);
LABEL_16:
  if (v155)
  {
    v82 = [objc_msgSend(v36 "environment")];
    swift_unknownObjectRelease();
    if (p_weak_ivar_lyt[147] != -1)
    {
      swift_once();
    }

    v83 = sub_100049FCC();
    sub_100008F90(v83, qword_100068378);
    v84 = sub_100049FAC();
    v85 = sub_10004AB9C();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v86 = 136446210;
      v160 = 0x2D7972656C6C6167;
      v161 = 0xE800000000000000;
      v162 = v87;
      v167._countAndFlagsBits = sub_10001A1C4();
      sub_10004A9DC(v167);

      v88 = sub_1000230EC(v160, v161, &v162);

      *(v86 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v84, v85, "Rendering poster snapshot for kind=%{public}s", v86, 0xCu);
      sub_100008FC8(v87);
    }

    v89 = v152;
    v90 = *(v158 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8);
    ObjectType = swift_getObjectType();
    (*(v90 + 48))(v51, v82, ObjectType, v90);
  }

  else
  {
    if (p_weak_ivar_lyt[147] != -1)
    {
      swift_once();
    }

    v92 = sub_100049FCC();
    sub_100008F90(v92, qword_100068378);
    sub_100019D10(v51, v81, type metadata accessor for PosterAnimationViewModel);
    v93 = sub_100049FAC();
    v94 = sub_10004AB9C();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v160 = v96;
      *v95 = 136446210;
      sub_100019ED8(&qword_100063C88, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v97 = sub_10004AF1C();
      v98 = v81;
      v100 = v99;
      sub_100019CB8(v98, type metadata accessor for PosterAnimationViewModel);
      v101 = sub_1000230EC(v97, v100, &v160);

      *(v95 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v93, v94, "Rendering poster with live animation of weather data at date=%{public}s", v95, 0xCu);
      sub_100008FC8(v96);
    }

    else
    {

      sub_100019CB8(v81, type metadata accessor for PosterAnimationViewModel);
    }

    v102 = [v36 environment];
    swift_getObjectType();
    sub_100035304();
    v104 = v103;
    swift_unknownObjectRelease();
    if (v104)
    {
      v105 = 1;
    }

    else
    {
      v105 = [objc_msgSend(v36 "environment")];
      swift_unknownObjectRelease();
    }

    v118 = *(v158 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8);
    v119 = swift_getObjectType();
    v120 = *(v118 + 24);
    v121 = swift_unknownObjectRetain();
    v120(v121, &off_10005E958, v119, v118);
    (*(v118 + 40))(v51, v105, v119, v118);
    v89 = v152;
  }

  sub_100019CB8(v51, type metadata accessor for PosterAnimationViewModel);
  return sub_100019CB8(v89, type metadata accessor for PosterData);
}

void sub_1000162B4(void *a1, char *a2, void *a3)
{
  swift_getObjectType();
  if (([a1 isPreview] & 1) == 0 && (objc_msgSend(a1, "isSnapshot") & 1) == 0)
  {
    sub_10002DD38([a1 deviceOrientation], a3);
    v6 = sub_100035390();
    sub_100018224(v7, a2, v6);
    v9 = sub_100035304();

    sub_100018670(v8, a2, v9);
  }
}

void sub_100016410(void *a1, void *a2, void *a3)
{
  v4 = v3;
  if (qword_100063498 != -1)
  {
    sub_100019F98(&qword_100063498);
  }

  v8 = sub_100049FCC();
  sub_100008F90(v8, qword_100068378);
  swift_unknownObjectRetain();
  v9 = sub_100049FAC();
  v10 = sub_10004AB9C();
  if (sub_10001A094(v10))
  {
    v21 = a3;
    v11 = swift_slowAlloc();
    v12 = sub_10001A07C();
    v23 = v12;
    *v11 = 67240706;
    *(v11 + 4) = [a2 isPreview];
    *(v11 + 8) = 1026;
    *(v11 + 10) = [a2 isSnapshot];
    swift_unknownObjectRelease();
    *(v11 + 14) = 2082;
    [a2 deviceOrientation];
    v13 = sub_10001A1C4();
    v15 = sub_1000230EC(v13, v14, &v23);

    *(v11 + 16) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Did update; isPreview=%{BOOL,public}d, isSnapshot=%{BOOL,public}d, orientation=%{public}s", v11, 0x18u);
    sub_100008FC8(v12);
    sub_100013F58(v12);
    v16 = v11;
    a3 = v21;
    sub_100013F58(v16);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_10002FD90();
  v17 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_isRenderRequiredOnUpdate;
  if (*(v4 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_isRenderRequiredOnUpdate) == 1)
  {
    v18 = sub_100049FAC();
    v19 = sub_10004AB9C();
    if (sub_10001A094(v19))
    {
      v20 = sub_10001A048();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Rendering poster data update that was postponed", v20, 2u);
      sub_100013F58(v20);
    }

    *(v4 + v17) = 0;
    sub_100014C8C(a1, [a2 isPreview]);
  }

  v22 = [a3 animationSettings];
  sub_1000162B4(a2, a1, v22);
}

double sub_100016734()
{
  v1 = v0;
  v2 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  sub_100005A50(v2);
  sub_100013ED4();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  if (qword_100063498 != -1)
  {
    sub_100019F98(&qword_100063498);
  }

  v6 = sub_100049FCC();
  sub_10001A018(v6, qword_100068378);
  v7 = sub_100049FAC();
  v8 = sub_10004AB9C();
  if (sub_10001A094(v8))
  {
    v9 = sub_10001A048();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Invalidated", v9, 2u);
    sub_100013F58(v9);
  }

  sub_10004287C();
  sub_10002DBA0();
  v10 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8);
  ObjectType = swift_getObjectType();
  (*(v10 + 80))(0, ObjectType, v10);
  sub_100034928();
  sub_10002FE54();
  sub_1000391F0();
  v12 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer);
  *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer) = 0;

  v13 = type metadata accessor for PosterData(0);
  sub_100004544(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_posterData;
  swift_beginAccess();
  sub_100019C48(v5, v1 + v14);
  swift_endAccess();
  *&result = 3;
  *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unlockState) = xmmword_10004CF90;
  *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_wakeState) = xmmword_10004CF90;
  *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_isRenderRequiredOnUpdate) = 0;
  return result;
}

id sub_1000169EC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PosterRenderer(uint64_t a1)
{
  result = qword_100063DA0;
  if (!qword_100063DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016B54(uint64_t a1)
{
  sub_100016CAC(319, &qword_100063DB0, type metadata accessor for PosterData);
  if (v1 <= 0x3F)
  {
    sub_100016CAC(319, &qword_100063AD8, type metadata accessor for PosterAnimationViewModel);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100016CAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004ACDC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100016D04()
{
  sub_100014000();
  v2 = v0;
  v4 = v3;
  sub_100049E9C();
  sub_1000059BC();
  v96 = v6;
  v97 = v5;
  __chkstk_darwin(v5);
  sub_1000059D0();
  v95 = v8 - v7;
  v9 = sub_100002D54(&qword_100063DC0, &qword_10004E5C0);
  sub_100005A50(v9);
  sub_100013ED4();
  __chkstk_darwin(v10);
  v98 = &v94 - v11;
  v12 = type metadata accessor for PosterData(0);
  sub_100005A24();
  __chkstk_darwin(v13);
  sub_100005A34();
  v100 = v14 - v15;
  v17 = __chkstk_darwin(v16);
  sub_10001A030(v17, v18, v19, v20, v21, v22, v23, v24, v94);
  __chkstk_darwin(v25);
  v99 = (&v94 - v26);
  v27 = sub_100002D54(&qword_100063DC8, &qword_10004D0B0) - 8;
  sub_100013ED4();
  __chkstk_darwin(v28);
  v30 = &v94 - v29;
  v31 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  v32 = sub_100005A50(v31);
  __chkstk_darwin(v32);
  sub_100005A34();
  v35 = v33 - v34;
  v37 = __chkstk_darwin(v36);
  v39 = &v94 - v38;
  __chkstk_darwin(v37);
  sub_10001A008();
  sub_100019FB8();
  v101 = v4;
  sub_100019D10(v4, v1, v40);
  sub_100004544(v1, 0, 1, v12);
  v41 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_posterData;
  swift_beginAccess();
  v42 = *(v27 + 56);
  sub_100019DB0(v1, v30, &unk_100063DD0, &unk_10004D100);
  v102 = v2;
  sub_100019DB0(v2 + v41, &v30[v42], &unk_100063DD0, &unk_10004D100);
  sub_10001A0F0(v30);
  if (v43)
  {
    sub_10000591C(v1, &unk_100063DD0, &unk_10004D100);
    sub_10001A0F0(&v30[v42]);
    if (v43)
    {
      sub_10000591C(v30, &unk_100063DD0, &unk_10004D100);
      goto LABEL_27;
    }

    goto LABEL_9;
  }

  sub_100019DB0(v30, v39, &unk_100063DD0, &unk_10004D100);
  sub_10001A0F0(&v30[v42]);
  if (v43)
  {
    sub_10000591C(v1, &unk_100063DD0, &unk_10004D100);
    sub_100019F80();
    sub_100019CB8(v39, v44);
LABEL_9:
    sub_10000591C(v30, &qword_100063DC8, &qword_10004D0B0);
    v45 = v103;
    goto LABEL_10;
  }

  v74 = v99;
  sub_100019E7C(&v30[v42], v99, type metadata accessor for PosterData);
  v75 = sub_10002A500(v39, v74);
  sub_100019CB8(v74, type metadata accessor for PosterData);
  sub_10000591C(v1, &unk_100063DD0, &unk_10004D100);
  sub_100019CB8(v39, type metadata accessor for PosterData);
  sub_10000591C(v30, &unk_100063DD0, &unk_10004D100);
  v45 = v103;
  if (v75)
  {
LABEL_27:
    if (qword_100063498 != -1)
    {
      sub_100019F98(&qword_100063498);
    }

    v76 = sub_100049FCC();
    sub_10001A018(v76, qword_100068378);
    v59 = sub_100049FAC();
    v77 = sub_10004AB9C();
    if (os_log_type_enabled(v59, v77))
    {
      v78 = sub_10001A048();
      *v78 = 0;
      v79 = "Poster data updated, but did not change";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v59, v77, v79, v78, 2u);
      sub_100013F58(v78);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

LABEL_10:
  sub_100019FB8();
  v46 = v101;
  sub_100019D10(v101, v35, v47);
  sub_100004544(v35, 0, 1, v12);
  v48 = v102;
  sub_10001A060(v102 + v41);
  sub_100019C48(v35, v48 + v41);
  swift_endAccess();
  v49 = *(v48 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer);
  if (v49)
  {
    v50 = *(v48 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_wakeState);
    v51 = 0xE200000000000000;
    v52 = 28271;
    v53 = 0xE300000000000000;
    v54 = 6710895;
    if (v50 != 1)
    {
      v54 = 0x697469736E617274;
      v53 = 0xED0000676E696E6FLL;
    }

    if (*(v48 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_wakeState))
    {
      v52 = v54;
      v51 = v53;
    }

    v55 = v50 == 3;
    if (v50 == 3)
    {
      v56 = 0x6E776F6E6B6E75;
    }

    else
    {
      v56 = v52;
    }

    v103 = v56;
    if (v55)
    {
      v57 = 0xE700000000000000;
    }

    else
    {
      v57 = v51;
    }

    v58 = qword_100063498;
    v59 = v49;
    v60 = v100;
    if (v58 != -1)
    {
      sub_100019F98(&qword_100063498);
    }

    v61 = sub_100049FCC();
    sub_100008F90(v61, qword_100068378);
    sub_100019D10(v46, v45, type metadata accessor for PosterData);
    sub_100019D10(v46, v60, type metadata accessor for PosterData);

    v62 = sub_100049FAC();
    LODWORD(v46) = sub_10004AB9C();

    if (os_log_type_enabled(v62, v46))
    {
      v63 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v104[0] = v101;
      *v63 = 136446979;
      sub_100026D60();
      sub_100019F80();
      sub_100019CB8(v45, v64);
      v65 = sub_100013F94();
      v68 = sub_1000230EC(v65, v66, v67);

      *(v63 + 4) = v68;
      *(v63 + 12) = 2160;
      *(v63 + 14) = 1752392040;
      *(v63 + 22) = 2081;
      v69 = v98;
      sub_100026C88(v98);
      v70 = v69;
      v71 = type metadata accessor for PosterDataModel(0);
      if (sub_100004288(v70, 1, v71) == 1)
      {
        sub_10000591C(v70, &qword_100063DC0, &qword_10004E5C0);
        v72 = 0xE300000000000000;
        v73 = 7104878;
      }

      else
      {
        v81 = *(v71 + 20);
        LODWORD(v99) = v46;
        v46 = v96;
        v82 = v97;
        v83 = v70 + v81;
        v84 = v70;
        v85 = v95;
        (*(v96 + 16))(v95, v83, v97);
        sub_100019FD0();
        sub_100019CB8(v84, v86);
        v73 = sub_100049E4C();
        v72 = v87;
        v88 = v82;
        v60 = v100;
        (*(v46 + 8))(v85, v88);
        LOBYTE(v46) = v99;
      }

      sub_100019F80();
      sub_100019CB8(v60, v89);
      v90 = sub_1000230EC(v73, v72, v104);

      *(v63 + 24) = v90;
      *(v63 + 32) = 2082;
      v91 = sub_1000230EC(v103, v57, v104);

      *(v63 + 34) = v91;
      _os_log_impl(&_mh_execute_header, v62, v46, "Updating to reflect the latest data; data=%{public}s, location=%{private,mask.hash}s, screen=%{public}s", v63, 0x2Au);
      v92 = v101;
      swift_arrayDestroy();
      sub_100013F58(v92);
      sub_100013F58(v63);
    }

    else
    {

      sub_100019CB8(v60, type metadata accessor for PosterData);
      sub_100019CB8(v45, type metadata accessor for PosterData);
    }

    v93 = [-[NSObject environment](v59 "environment")];
    swift_unknownObjectRelease();
    sub_100014C8C(v59, v93);
  }

  else
  {
    if (qword_100063498 != -1)
    {
      sub_100019F98(&qword_100063498);
    }

    v80 = sub_100049FCC();
    sub_10001A018(v80, qword_100068378);
    v59 = sub_100049FAC();
    v77 = sub_10004AB7C();
    if (os_log_type_enabled(v59, v77))
    {
      v78 = sub_10001A048();
      *v78 = 0;
      v79 = "Poster data updated, but unable to render new data because renderer does not exist.";
      goto LABEL_35;
    }
  }

LABEL_40:

  sub_100014018();
}

uint64_t sub_1000175F8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer);
  if (v3)
  {
    v4 = v3;
    v5 = sub_10003026C(a1, v4);

    return v5 & 1;
  }

  else
  {
    if (qword_100063498 != -1)
    {
      sub_100019F98(&qword_100063498);
    }

    v7 = sub_100049FCC();
    sub_10001A018(v7, qword_100068378);
    v8 = sub_100049FAC();
    v9 = sub_10004AB7C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = sub_10001A07C();
      v15 = v11;
      *v10 = 136446210;
      v12 = sub_100030C88(a1);
      v14 = sub_1000230EC(v12, v13, &v15);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to extend session for %{public}s because renderer does not exist", v10, 0xCu);
      sub_100008FC8(v11);
      sub_100013F58(v11);
      sub_100013F58(v10);
    }

    return 0;
  }
}

void sub_100017788()
{
  sub_100014000();
  v2 = sub_100049E9C();
  sub_1000059BC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000059D0();
  v8 = v7 - v6;
  v9 = sub_100002D54(&qword_100063DC0, &qword_10004E5C0);
  sub_100005A50(v9);
  sub_100013ED4();
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  v13 = type metadata accessor for PosterData(0);
  sub_100005A24();
  __chkstk_darwin(v14);
  sub_100005A34();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  sub_10001A008();
  v19 = *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer];
  if (!v19)
  {
    if (qword_100063498 != -1)
    {
      sub_100019F98(&qword_100063498);
    }

    v21 = sub_100049FCC();
    sub_10001A018(v21, qword_100068378);
    v20 = sub_100049FAC();
    v22 = sub_10004AB7C();
    if (os_log_type_enabled(v20, v22))
    {
      v23 = sub_10001A048();
      *v23 = 0;
      sub_10001A0D0(&_mh_execute_header, v24, v25, "Unable to extend session for 'weatherRendering' because renderer does not exist");
      sub_100013F58(v23);
    }

    goto LABEL_3;
  }

  v20 = v19;
  if ((sub_10003026C(1, v20) & 1) == 0)
  {
    v57 = v2;
    if (qword_100063498 != -1)
    {
      sub_100019F98(&qword_100063498);
    }

    v26 = sub_100049FCC();
    sub_10001A018(v26, qword_100068378);
    v27 = v0;
    v28 = sub_100049FAC();
    v29 = sub_10004AB9C();

    v58 = v29;
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_20;
    }

    v55 = v28;
    v56 = v20;
    v52 = v4;
    v30 = sub_10001A07C();
    v53 = swift_slowAlloc();
    v59 = v53;
    v54 = v30;
    *v30 = 136446723;
    v31 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_posterData;
    swift_beginAccess();
    if (sub_100004288(&v27[v31], 1, v13))
    {
      v32 = 0xE300000000000000;
      v33 = v27;
      v34 = 7104878;
    }

    else
    {
      sub_100019FB8();
      sub_100019D10(&v27[v31], v1, v35);
      v33 = v27;
      v34 = sub_100026D60();
      v32 = v36;
      sub_100019F80();
      sub_100019CB8(v1, v37);
    }

    v38 = v57;
    v39 = sub_1000230EC(v34, v32, &v59);

    v40 = v54;
    *(v54 + 1) = v39;
    sub_100019FE8();
    v27 = v33;
    if (!sub_100004288(&v33[v31], 1, v13))
    {
      sub_100019FB8();
      sub_100019D10(&v33[v31], v17, v41);
      sub_100026C88(v12);
      sub_100019F80();
      sub_100019CB8(v17, v42);
      v43 = type metadata accessor for PosterDataModel(0);
      if (sub_100004288(v12, 1, v43) != 1)
      {
        v48 = v52;
        (*(v52 + 16))(v8, &v12[*(v43 + 20)], v38);
        sub_100019FD0();
        sub_100019CB8(v12, v49);
        v45 = sub_100049E4C();
        v44 = v50;
        (*(v48 + 8))(v8, v38);
        v20 = v56;
        goto LABEL_19;
      }

      sub_10000591C(v12, &qword_100063DC0, &qword_10004E5C0);
    }

    v44 = 0xE300000000000000;
    v20 = v56;
    v45 = 7104878;
LABEL_19:
    v46 = sub_1000230EC(v45, v44, &v59);

    *(v40 + 24) = v46;
    v28 = v55;
    _os_log_impl(&_mh_execute_header, v55, v58, "Render was postponed because extended session was not granted; data=%{public}s, location=%{private,mask.hash}s", v40, 0x20u);
    v47 = v53;
    swift_arrayDestroy();
    sub_100013F58(v47);
    sub_100013F58(v40);
LABEL_20:

    v27[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_isRenderRequiredOnUpdate] = 1;
    goto LABEL_21;
  }

LABEL_3:

LABEL_21:
  sub_100014018();
}

void sub_100017C48()
{
  sub_100014000();
  v2 = v0;
  v4 = v3;
  v5 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v6 = sub_100005A50(v5);
  __chkstk_darwin(v6);
  sub_100005A34();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  sub_10001A008();
  sub_100030A2C(1);
  v11 = *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer];
  if (v11)
  {
    v12 = *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation];
    v13 = *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8];
    v14 = v11;
    sub_100034EC0(v14, v12, v13);
    LOBYTE(v12) = [objc_msgSend(v14 "environment")];
    swift_unknownObjectRelease();
    if ((v12 & 1) == 0)
    {
      v15 = [objc_msgSend(v14 "environment")];
      swift_unknownObjectRelease();
      if ((v15 & 1) == 0)
      {
        v16 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_lastRenderedAnimationViewModel;
        swift_beginAccess();
        sub_100019DB0(&v0[v16], v1, &unk_100063DF0, &qword_10004CF28);
        v17 = sub_100019334(v1, v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_deviceSupportsVFX]);
        sub_10000591C(v1, &unk_100063DF0, &qword_10004CF28);
        if (v17)
        {
          if (qword_100063498 != -1)
          {
            sub_100019F98(&qword_100063498);
          }

          v18 = sub_100049FCC();
          sub_10001A018(v18, qword_100068378);
          sub_100019DB0(v4, v9, &unk_100063DF0, &qword_10004CF28);
          v19 = v2;
          v20 = sub_100049FAC();
          v21 = sub_10004AB9C();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v39[0] = v37;
            *v22 = 136446466;
            sub_100019DB0(v2 + v16, v1, &unk_100063DF0, &qword_10004CF28);
            v36 = v21;
            v23 = sub_100019898();
            v25 = v24;
            sub_10000591C(v1, &unk_100063DF0, &qword_10004CF28);
            v26 = sub_1000230EC(v23, v25, v39);

            *(v22 + 4) = v26;
            *(v22 + 12) = 2082;
            v27 = sub_100019898();
            v29 = v28;
            sub_10000591C(v9, &unk_100063DF0, &qword_10004CF28);
            sub_1000230EC(v27, v29, v39);
            sub_10001A0C4();

            *(v22 + 14) = v27;
            _os_log_impl(&_mh_execute_header, v20, v36, "Render content has significantly changed; from='%{public}s', to='%{public}s'", v22, 0x16u);
            swift_arrayDestroy();
            sub_100013F58(v37);
            sub_100013F58(v22);
          }

          else
          {

            sub_10000591C(v9, &unk_100063DF0, &qword_10004CF28);
          }

          [v14 noteContentSignificantlyChanged];
        }
      }
    }

    v35 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_lastRenderedAnimationViewModel;
    sub_10001A060(v2 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_lastRenderedAnimationViewModel);
    sub_100019E0C(v4, v2 + v35);
    swift_endAccess();
    sub_100014018();
  }

  else
  {
    if (qword_100063498 != -1)
    {
      sub_100019F98(&qword_100063498);
    }

    v30 = sub_100049FCC();
    sub_10001A018(v30, qword_100068378);
    v38 = sub_100049FAC();
    v31 = sub_10004AB7C();
    if (os_log_type_enabled(v38, v31))
    {
      v32 = sub_10001A048();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v38, v31, "Unable to handle render completion because renderer does not exist", v32, 2u);
      sub_100013F58(v32);
    }

    sub_100014018();
  }
}

uint64_t sub_1000180D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer);
  if (v1)
  {
    v2 = v1;
    v3 = sub_10003026C(4, v2);
  }

  else
  {
    if (qword_100063498 != -1)
    {
      sub_100019F98(&qword_100063498);
    }

    v4 = sub_100049FCC();
    sub_10001A018(v4, qword_100068378);
    v2 = sub_100049FAC();
    v5 = sub_10004AB7C();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = sub_10001A048();
      *v6 = 0;
      sub_10001A0D0(&_mh_execute_header, v7, v8, "Unable to extend session for device rotation because renderer does not exist");
      sub_100013F58(v6);
    }

    v3 = 0;
  }

  return v3 & 1;
}

id sub_1000181BC()
{
  sub_100030A2C(4);
  result = *(v0 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer);
  if (result)
  {

    return [result noteContentSignificantlyChanged];
  }

  return result;
}

void sub_100018224(char a1, char *a2, double a3)
{
  v4 = v3;
  v8 = v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_wakeState;
  v9 = *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_wakeState);
  v10 = *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_wakeState + 8);
  v11 = v9;
  if (v9 == 3 || (v9 == a1 ? (v12 = *&v10 == a3) : (v12 = 0), !v12))
  {
    v13 = sub_100009C98(v9, v10, a3);
    v14 = OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_lastWakeTransitionDirection;
    v15 = *(v4 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_lastWakeTransitionDirection);
    if (v11 != 1 && a1 == 1)
    {
      if (qword_100063498 != -1)
      {
        swift_once();
      }

      v17 = sub_100049FCC();
      sub_100008F90(v17, qword_100068378);
      v18 = sub_100049FAC();
      v19 = sub_10004AB9C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Screen is off, pausing animation", v20, 2u);
      }

      sub_100018D14(1, a2);
    }

    if (!v13 && v15 && !*(v4 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unlockState))
    {
      if (qword_100063498 != -1)
      {
        swift_once();
      }

      v21 = sub_100049FCC();
      sub_100008F90(v21, qword_100068378);
      v22 = sub_100049FAC();
      v23 = sub_10004AB9C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Screen was turned on and settled on lock screen, starting animation", v24, 2u);
      }

      sub_100018D14(2, a2);
    }

    v25 = a1;
    if (qword_100063498 != -1)
    {
      swift_once();
    }

    v26 = sub_100049FCC();
    sub_100008F90(v26, qword_100068378);
    v27 = sub_100049FAC();
    v28 = sub_10004AB9C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v29 = 136446466;
      v30 = sub_100009D18(a1, a3);
      v32 = sub_1000230EC(v30, v31, &v36);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2082;
      v33 = 0xE300000000000000;
      v34 = 7104878;
      switch(v13)
      {
        case 1:
          v34 = 6710895;
          break;
        case 2:
          v33 = 0xED0000676E696E6FLL;
          v34 = 0x697469736E617274;
          break;
        case 3:
          break;
        default:
          v33 = 0xE200000000000000;
          v34 = 28271;
          break;
      }

      v35 = sub_1000230EC(v34, v33, &v36);

      *(v29 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Setting wake state to %{public}s; transitionDirection=%{public}s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    *v8 = v25;
    *(v8 + 8) = a3;
    *(v4 + v14) = v13;
  }
}

void sub_100018670(uint64_t a1, void *a2, double a3)
{
  v4 = v3;
  v8 = (v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unlockState);
  v9 = *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unlockState);
  if (v9 == 3 || (v9 == a1 ? (v10 = v8[1] == a3) : (v10 = 0), !v10))
  {
    if (sub_100030114(a2))
    {
      v43 = *v8;
      if (v43 != 3)
      {
        if (!*v8 && a1)
        {
          if (qword_100063498 != -1)
          {
            swift_once();
          }

          v11 = sub_100049FCC();
          sub_100008F90(v11, qword_100068378);
          v12 = sub_100049FAC();
          v13 = sub_10004AB9C();
          if (!os_log_type_enabled(v12, v13))
          {
            v15 = 1;
            goto LABEL_29;
          }

          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, v13, "Starting to move from lock screen to home screen, pausing animation", v14, 2u);
          v15 = 1;
          goto LABEL_27;
        }

        if (!*v8)
        {
          goto LABEL_30;
        }
      }

      if (a1 || *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_wakeState))
      {
LABEL_30:
        if (qword_100063498 != -1)
        {
          swift_once();
        }

        v27 = sub_100049FCC();
        sub_100008F90(v27, qword_100068378);
        v28 = sub_100049FAC();
        v29 = sub_10004AB9C();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v44 = v31;
          *v30 = 136446210;
          v32 = sub_100003C6C(a1, a3);
          v34 = sub_1000230EC(v32, v33, &v44);

          *(v30 + 4) = v34;
          _os_log_impl(&_mh_execute_header, v28, v29, "Setting unlock progress to %{public}s", v30, 0xCu);
          sub_100008FC8(v31);
        }

        *v8 = a1;
        v8[1] = a3;
        if (sub_100034968())
        {
          v35 = [objc_msgSend(a2 "environment")];
          swift_unknownObjectRelease();
          if ((v35 & 1) == 0)
          {
            sub_10003498C(a3);
            if (a1 == 1)
            {
              if (v43 != 1)
              {
                if (sub_10003026C(2, a2))
                {
                  v37 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v36 = sub_100019F58;
                  goto LABEL_37;
                }

                v40 = sub_100049FAC();
                v41 = sub_10004AB9C();
                if (os_log_type_enabled(v40, v41))
                {
                  v42 = swift_slowAlloc();
                  *v42 = 0;
                  _os_log_impl(&_mh_execute_header, v40, v41, "Skipping unloading because renderer failed to get extended session", v42, 2u);
                }
              }
            }

            else if (v43 == 1 && !UIAccessibilityIsReduceMotionEnabled())
            {
              sub_100014C8C(a2, 0);
            }
          }
        }

        v36 = 0;
        v37 = 0;
LABEL_37:
        v38 = *(v4 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8);
        ObjectType = swift_getObjectType();
        (*(v38 + 72))(a1, v36, v37, ObjectType, v38, a3);
        sub_1000393C4(a3);

        sub_100013110(v36, v37);
        return;
      }

      if (qword_100063498 != -1)
      {
        swift_once();
      }

      v24 = sub_100049FCC();
      sub_100008F90(v24, qword_100068378);
      v12 = sub_100049FAC();
      v25 = sub_10004AB9C();
      v15 = 2;
      if (!os_log_type_enabled(v12, v25))
      {
LABEL_29:

        sub_100018D14(v15, a2);
        goto LABEL_30;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v12, v25, "Settling on lock screen from home screen and screen is on, restarting animation", v26, 2u);
LABEL_27:

      goto LABEL_29;
    }

    if (qword_100063498 != -1)
    {
      swift_once();
    }

    v16 = sub_100049FCC();
    sub_100008F90(v16, qword_100068378);
    v17 = sub_100049FAC();
    v18 = sub_10004AB9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44 = v20;
      *v19 = 136446210;
      v21 = sub_100003C6C(a1, a3);
      v23 = sub_1000230EC(v21, v22, &v44);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get extended session for unlock, skipping unlock update; unlockState=%{public}s", v19, 0xCu);
      sub_100008FC8(v20);
    }

    *v8 = a1;
    v8[1] = a3;
  }
}

uint64_t sub_100018D14(char a1, char *a2)
{
  v3 = v2;
  if (sub_10003026C(0, a2))
  {
    if (a1 == 2)
    {
      v5 = *(v2 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 56))(ObjectType, v5);
    }

    v7 = *(v2 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8);
    v8 = 0.0;
    if (a1 != 1)
    {
      v8 = sub_100038D88();
    }

    v9 = swift_getObjectType();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = *(v7 + 64);

    v11(a1 != 1, sub_100019F60, v10, v9, v7, v8);
  }

  else
  {
    if (qword_100063498 != -1)
    {
      swift_once();
    }

    v13 = sub_100049FCC();
    sub_100008F90(v13, qword_100068378);
    v14 = sub_100049FAC();
    v15 = sub_10004AB9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136446210;
      if (a1)
      {
        if (a1 == 1)
        {
          v18 = 0xD000000000000010;
        }

        else
        {
          v18 = 0x6E65685479616C70;
        }

        if (a1 == 1)
        {
          v19 = 0x800000010004EE40;
        }

        else
        {
          v19 = 0xED00006573756150;
        }
      }

      else
      {
        v19 = 0xE500000000000000;
        v18 = 0x6573756170;
      }

      v20 = sub_1000230EC(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Skipping %{public}s animation because no render session was granted", v16, 0xCu);
      sub_100008FC8(v17);
    }

    v21 = *(v3 + OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation + 8);
    v22 = swift_getObjectType();
    return (*(v21 + 64))(0, WeatherIntentResponseCode.rawValue.getter, 0, v22, v21, 0.0);
  }
}

void sub_100019020(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100019074();
  }
}

void sub_100019074()
{
  v1 = v0;
  if ((sub_100034968() & 1) != 0 && v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unlockState] == 1)
  {
    v2 = *&v0[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_renderer];
    v3 = &v1[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation];
    v4 = *&v1[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_animation];
    v5 = *(v3 + 1);
    v17 = v2;
    sub_100034A54(v2, v4, v5);
  }

  else
  {
    if (qword_100063498 != -1)
    {
      swift_once();
    }

    v6 = sub_100049FCC();
    sub_100008F90(v6, qword_100068378);
    v7 = v0;
    v8 = sub_100049FAC();
    v9 = sub_10004AB9C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 67240450;
      *(v10 + 4) = sub_100034968() & 1;

      *(v10 + 8) = 2082;
      v12 = v7[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unlockState];
      if (v12 == 3)
      {
        v13 = 0xE300000000000000;
        v14 = 7104878;
      }

      else
      {
        v14 = sub_100003C6C(v12, *&v7[OBJC_IVAR____TtC13WeatherPoster14PosterRenderer_unlockState + 8]);
        v13 = v15;
      }

      v16 = sub_1000230EC(v14, v13, &v18);

      *(v10 + 10) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Skipping unloading because state changed; unloadingEnabled=%{BOOL,public}d unlockState=%{public}s", v10, 0x12u);
      sub_100008FC8(v11);
    }

    else
    {
    }

    sub_100030A2C(2);
  }
}

void *sub_1000192C0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;

    sub_100030A2C(0);
  }

  return result;
}

uint64_t sub_100019334(uint64_t a1, int a2)
{
  v34 = a2;
  v38 = a1;
  v37 = sub_100002D54(&qword_100063C80, &qword_10004CF50);
  __chkstk_darwin(v37);
  v4 = &v33[-v3];
  v5 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v6 = __chkstk_darwin(v5 - 8);
  v36 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v10 = &v33[-v9];
  __chkstk_darwin(v8);
  v12 = &v33[-v11];
  v13 = type metadata accessor for PosterAnimationViewModel(0);
  v14 = __chkstk_darwin(v13);
  v35 = &v33[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v18 = &v33[-v17];
  __chkstk_darwin(v16);
  v20 = &v33[-v19];
  sub_100019DB0(v2, v12, &unk_100063DF0, &qword_10004CF28);
  if (sub_100004288(v12, 1, v13) == 1)
  {
    v10 = v12;
    v21 = v38;
LABEL_5:
    sub_10000591C(v10, &unk_100063DF0, &qword_10004CF28);
    v22 = *(v37 + 48);
    sub_100019DB0(v21, v4, &unk_100063DF0, &qword_10004CF28);
    sub_100019DB0(v2, &v4[v22], &unk_100063DF0, &qword_10004CF28);
    if (sub_100004288(v4, 1, v13) == 1)
    {
      if (sub_100004288(&v4[v22], 1, v13) == 1)
      {
        sub_10000591C(v4, &unk_100063DF0, &qword_10004CF28);
        v23 = 0;
        return v23 & 1;
      }
    }

    else
    {
      v24 = v36;
      sub_100019DB0(v4, v36, &unk_100063DF0, &qword_10004CF28);
      if (sub_100004288(&v4[v22], 1, v13) != 1)
      {
        v27 = &v4[v22];
        v28 = v35;
        sub_100019E7C(v27, v35, type metadata accessor for PosterAnimationViewModel);
        v29 = sub_1000047E8(v24, v28);
        sub_100019CB8(v28, type metadata accessor for PosterAnimationViewModel);
        sub_100019CB8(v24, type metadata accessor for PosterAnimationViewModel);
        sub_10000591C(v4, &unk_100063DF0, &qword_10004CF28);
        v23 = v29 ^ 1;
        return v23 & 1;
      }

      sub_100019CB8(v24, type metadata accessor for PosterAnimationViewModel);
    }

    sub_10000591C(v4, &qword_100063C80, &qword_10004CF50);
LABEL_16:
    v23 = 1;
    return v23 & 1;
  }

  sub_100019E7C(v12, v20, type metadata accessor for PosterAnimationViewModel);
  v21 = v38;
  sub_100019DB0(v38, v10, &unk_100063DF0, &qword_10004CF28);
  if (sub_100004288(v10, 1, v13) == 1)
  {
    sub_100019CB8(v20, type metadata accessor for PosterAnimationViewModel);
    goto LABEL_5;
  }

  sub_100019E7C(v10, v18, type metadata accessor for PosterAnimationViewModel);
  sub_100049D9C();
  sub_100019ED8(&unk_100063E00, &type metadata accessor for WeatherCondition, &protocol conformance descriptor for WeatherCondition);
  if ((sub_10004A94C() & 1) == 0)
  {
    sub_100019CB8(v18, type metadata accessor for PosterAnimationViewModel);
    sub_100019CB8(v20, type metadata accessor for PosterAnimationViewModel);
    goto LABEL_16;
  }

  if (v34)
  {
    sub_100049AFC();
    v26 = v25;
    sub_100019CB8(v18, type metadata accessor for PosterAnimationViewModel);
    sub_100019CB8(v20, type metadata accessor for PosterAnimationViewModel);
    v23 = v26 >= 900.0;
  }

  else
  {
    v31 = v20[*(v13 + 52)];
    sub_100019CB8(v20, type metadata accessor for PosterAnimationViewModel);
    v32 = v18[*(v13 + 52)];
    sub_100019CB8(v18, type metadata accessor for PosterAnimationViewModel);
    v23 = v31 ^ v32;
  }

  return v23 & 1;
}

uint64_t sub_100019898()
{
  v1 = v0;
  v2 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for PosterAnimationViewModel(0);
  __chkstk_darwin(v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019DB0(v1, v4, &unk_100063DF0, &qword_10004CF28);
  if (sub_100004288(v4, 1, v5) == 1)
  {
    sub_10000591C(v4, &unk_100063DF0, &qword_10004CF28);
    return 7104878;
  }

  else
  {
    sub_100019E7C(v4, v7, type metadata accessor for PosterAnimationViewModel);
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_10004AD6C(38);

    v12 = 0x697469646E6F637BLL;
    v13 = 0xEB000000003D6E6FLL;
    v14._countAndFlagsBits = sub_100049D8C();
    sub_10004A9DC(v14);

    v15._countAndFlagsBits = 0x3D65746164202CLL;
    v15._object = 0xE700000000000000;
    sub_10004A9DC(v15);
    sub_100049B7C();
    sub_100019ED8(&qword_100063C88, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v16._countAndFlagsBits = sub_10004AF1C();
    sub_10004A9DC(v16);

    v17._countAndFlagsBits = 0x6C7961447369202CLL;
    v17._object = 0xED00003D74686769;
    sub_10004A9DC(v17);
    if (v7[*(v5 + 52)])
    {
      v9._countAndFlagsBits = 1702195828;
    }

    else
    {
      v9._countAndFlagsBits = 0x65736C6166;
    }

    if (v7[*(v5 + 52)])
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v9._object = v10;
    sub_10004A9DC(v9);

    v18._countAndFlagsBits = 125;
    v18._object = 0xE100000000000000;
    sub_10004A9DC(v18);
    v8 = v12;
    sub_100019CB8(v7, type metadata accessor for PosterAnimationViewModel);
  }

  return v8;
}

uint64_t sub_100019B58()
{
  v1 = sub_10004A95C();
  v2 = [v0 objectForUserInfoKey:v1];

  if (v2)
  {
    sub_10004ACEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10000591C(v7, &qword_100064240, &qword_10004D0B8);
  }

  return 0;
}

uint64_t sub_100019C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019CB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100005A24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100019D10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100005A24();
  v4 = sub_100013F94();
  v5(v4);
  return a2;
}

void sub_100019D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_100019DB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100002D54(a3, a4);
  sub_100005A24();
  v5 = sub_100013F94();
  v6(v5);
  return a2;
}

uint64_t sub_100019E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019E7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100005A24();
  v4 = sub_100013F94();
  v5(v4);
  return a2;
}

uint64_t sub_100019ED8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100019F20()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100019F68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100019F98(uint64_t a1)
{

  return swift_once();
}

void sub_100019FE8()
{
  *(v0 + 12) = 2160;
  *(v0 + 14) = 1752392040;
  *(v0 + 22) = 2081;
}

uint64_t sub_10001A048()
{

  return swift_slowAlloc();
}

uint64_t sub_10001A060(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_10001A07C()
{

  return swift_slowAlloc();
}

BOOL sub_10001A094(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10001A0AC(uint64_t a1)
{

  return swift_allocObject();
}

void sub_10001A0D0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

float sub_10001A110(uint64_t a1, unint64_t a2, float result)
{
  v3 = 0.0;
  if (a2 - 2 <= 2)
  {
    v3 = flt_10004D0C8[a2 - 2];
  }

  switch(a1)
  {
    case 0:
    case 1:
      if (a2 == 4)
      {
        goto LABEL_5;
      }

      break;
    case 2:
      if (a2 == 3)
      {
        goto LABEL_5;
      }

      break;
    case 3:
      if (a2 < 2)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (a2 == 2)
      {
LABEL_5:
        if (v3 > result)
        {
          result = result + 360.0;
        }
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001A284()
{
  type metadata accessor for PosterDataCacheManager(0);
  v0 = swift_allocObject();
  result = sub_10001B8C8();
  qword_1000682A8 = v0;
  return result;
}

uint64_t sub_10001A2C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002D54(&qword_100063F20, &unk_10004D110);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  swift_beginAccess();
  sub_1000139C8();
  v8 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  if (sub_100004288(v7, 1, v8) != 1)
  {
    return sub_10001BA90(v7, a1);
  }

  sub_10000591C(v7, &qword_100063F20, &unk_10004D110);
  sub_10001A474(a1);
  sub_1000139C8();
  sub_100004544(v5, 0, 1, v8);
  swift_beginAccess();
  sub_100013120();
  return swift_endAccess();
}

uint64_t sub_10001A474@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 URLsForDirectory:9 inDomains:1];

  v10 = sub_100049A6C();
  v11 = sub_10004AA5C();

  sub_100031DE4(v11, v7);

  sub_1000139C8();
  if (sub_100004288(v5, 1, v10) == 1)
  {
    sub_10000591C(v7, &unk_100063E80, &qword_10004D0F8);
    sub_10000591C(v5, &unk_100063E80, &qword_10004D0F8);
    v12 = 1;
  }

  else
  {
    sub_100049A2C();
    sub_10000591C(v7, &unk_100063E80, &qword_10004D0F8);
    (*(*(v10 - 8) + 8))(v5, v10);
    v12 = 0;
  }

  return sub_100004544(a1, v12, 1, v10);
}

uint64_t sub_10001A674@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v14[-v6];
  swift_beginAccess();
  sub_1000139C8();
  v8 = type metadata accessor for PosterData(0);
  if (sub_100004288(v7, 1, v8) != 1)
  {
    return sub_10001BB00();
  }

  sub_10000591C(v7, &unk_100063DD0, &unk_10004D100);
  if (qword_100063488 != -1)
  {
    sub_100009728(&qword_100063488);
  }

  v9 = sub_100049FCC();
  sub_100008F90(v9, qword_100068348);
  v10 = sub_100049FAC();
  v11 = sub_10004AB9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Decoding cached poster data from disk", v12, 2u);
    sub_100013F58(v12);
  }

  sub_10001A8C4(a1);
  sub_10001BB9C();
  sub_10001B9DC();
  sub_100004544(v5, 0, 1, v8);
  swift_beginAccess();
  sub_100013120();
  return swift_endAccess();
}

uint64_t sub_10001A8C4@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_100049A6C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A2C4(v4);
  if (sub_100004288(v4, 1, v5) == 1)
  {
    sub_10000591C(v4, &unk_100063E80, &qword_10004D0F8);
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v9 = sub_100049FCC();
    sub_100008F90(v9, qword_100068348);
    v10 = sub_100049FAC();
    v11 = sub_10004AB7C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to read cached poster data from disk due to missing file path", v12, 2u);
    }

    *a1 = 2;
    type metadata accessor for PosterData(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v13 = sub_100049A7C();
    v15 = v14;
    type metadata accessor for PosterData(0);
    sub_10001BB58(&qword_100063F28, &unk_10004D794);
    sub_10004992C();
    (*(v6 + 8))(v8, v5);
    return sub_10001B984(v13, v15);
  }
}

void sub_10001AD40(uint64_t a1)
{
  v57 = type metadata accessor for PosterDataModel(0);
  sub_100005A24();
  v2 = __chkstk_darwin(v1);
  v58 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v59 = &v57 - v4;
  v5 = type metadata accessor for PosterData(0);
  sub_100005A24();
  __chkstk_darwin(v6);
  v60 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  __chkstk_darwin(v8 - 8);
  v10 = &v57 - v9;
  v11 = sub_100049A6C();
  v61 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  __chkstk_darwin(v14 - 8);
  v16 = &v57 - v15;
  sub_10001BB9C();
  sub_10001B9DC();
  sub_100004544(v16, 0, 1, v5);
  swift_beginAccess();
  v17 = v11;
  sub_100013120();
  swift_endAccess();
  sub_10001A2C4(v10);
  if (sub_100004288(v10, 1, v11) == 1)
  {
    sub_10000591C(v10, &unk_100063E80, &qword_10004D0F8);
    if (qword_100063488 != -1)
    {
      sub_100009728(&qword_100063488);
    }

    v18 = sub_100049FCC();
    sub_100008F90(v18, qword_100068348);
    v19 = sub_100049FAC();
    v20 = sub_10004AB7C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to save poster data to disk due to missing file path", v21, 2u);
      sub_100013F58(v21);
    }

    return;
  }

  v22 = v61;
  (*(v61 + 32))(v13, v10, v17);
  sub_10001BB58(&qword_100063F18, &unk_10004D76C);
  v23 = v13;
  v24 = sub_10004996C();
  v26 = v25;
  sub_100049A9C();
  sub_10001B984(v24, v26);
  sub_10001BB9C();
  v29 = v60;
  sub_10001B9DC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v31 = v59;
    sub_10001BB00();
    if (qword_100063488 != -1)
    {
      sub_100009728(&qword_100063488);
    }

    v32 = sub_100049FCC();
    sub_100008F90(v32, qword_100068348);
    v33 = v58;
    sub_10001B9DC();
    v34 = sub_100049FAC();
    v35 = sub_10004AB9C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v17;
      v38 = swift_slowAlloc();
      v62[0] = v38;
      *v36 = 141558275;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2081;
      v39 = sub_100049E4C();
      v40 = v33;
      v42 = v41;
      sub_10001BA34(v40);
      v43 = sub_1000230EC(v39, v42, v62);

      *(v36 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "Successfully saved poster data of type 'data' to disk; location=%{private,mask.hash}s", v36, 0x16u);
      sub_100008FC8(v38);
      sub_100013F58(v38);
      sub_100013F58(v36);

      sub_10001BA34(v31);
      (*(v22 + 8))(v23, v37);
      return;
    }

    sub_10001BA34(v33);
    sub_10001BA34(v31);
    v27 = *(v22 + 8);
    v28 = v23;
LABEL_8:
    v27(v28, v17);
    return;
  }

  v44 = v13;
  v45 = *v29;
  if (qword_100063488 != -1)
  {
    sub_100009728(&qword_100063488);
  }

  v46 = sub_100049FCC();
  sub_100008F90(v46, qword_100068348);
  v47 = sub_100049FAC();
  v48 = sub_10004AB9C();
  if (!os_log_type_enabled(v47, v48))
  {

    v27 = *(v22 + 8);
    v28 = v13;
    goto LABEL_8;
  }

  v49 = v22;
  v50 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v62[0] = v51;
  *v50 = 136446210;
  v52 = 0xEE00656E696C6666;
  v53 = 0x4F6B726F7774656ELL;
  v54 = v17;
  switch(v45)
  {
    case 1:
      break;
    case 2:
      v52 = 0xE600000000000000;
      v53 = 0x617461446F6ELL;
      break;
    case 3:
      v53 = 0xD000000000000014;
      v55 = "weatherRequestFailed";
      goto LABEL_23;
    default:
      v53 = 0xD000000000000014;
      v55 = "locationUnauthorized";
LABEL_23:
      v52 = (v55 - 32) | 0x8000000000000000;
      break;
  }

  v56 = sub_1000230EC(v53, v52, v62);

  *(v50 + 4) = v56;
  _os_log_impl(&_mh_execute_header, v47, v48, "Successfully saved poster data of type 'error' to disk; error=%{public}s", v50, 0xCu);
  sub_100008FC8(v51);
  sub_100013F58(v51);
  sub_100013F58(v50);

  (*(v49 + 8))(v44, v54);
}

uint64_t sub_10001B60C()
{
  sub_10000591C(v0 + OBJC_IVAR____TtC13WeatherPoster22PosterDataCacheManager_posterData, &unk_100063DD0, &unk_10004D100);

  sub_10000591C(v0 + OBJC_IVAR____TtC13WeatherPoster22PosterDataCacheManager____lazy_storage___posterDataURL, &qword_100063F20, &unk_10004D110);
  return v0;
}

uint64_t sub_10001B684()
{
  sub_10001B60C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for PosterDataCacheManager(uint64_t a1)
{
  result = qword_100063E68;
  if (!qword_100063E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001B730(uint64_t a1)
{
  sub_10001B80C(319);
  if (v1 <= 0x3F)
  {
    sub_10001B864(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10001B80C(uint64_t a1)
{
  if (!qword_100063DB0)
  {
    type metadata accessor for PosterData(255);
    v1 = sub_10004ACDC();
    if (!v2)
    {
      atomic_store(v1, &qword_100063DB0);
    }
  }
}

void sub_10001B864(uint64_t a1)
{
  if (!qword_100063E78)
  {
    sub_100009240(&unk_100063E80, &qword_10004D0F8);
    v1 = sub_10004ACDC();
    if (!v2)
    {
      atomic_store(v1, &qword_100063E78);
    }
  }
}

uint64_t sub_10001B8C8()
{
  v1 = v0;
  v2 = type metadata accessor for PosterData(0);
  sub_100013E80(v2);
  v3 = OBJC_IVAR____TtC13WeatherPoster22PosterDataCacheManager_decoder;
  sub_10004994C();
  swift_allocObject();
  *(v0 + v3) = sub_10004993C();
  v4 = OBJC_IVAR____TtC13WeatherPoster22PosterDataCacheManager_serializer;
  sub_10004998C();
  swift_allocObject();
  v5 = sub_10004997C();
  sub_10004995C();
  *(v1 + v4) = v5;
  v6 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  sub_100013E80(v6);
  return v1;
}

uint64_t sub_10001B984(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_10001B9DC()
{
  sub_100013FF4();
  v1(0);
  sub_100005A24();
  v2 = sub_100013F94();
  v3(v2);
  return v0;
}

uint64_t sub_10001BA34(uint64_t a1)
{
  v2 = type metadata accessor for PosterDataModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001BA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001BB00()
{
  sub_100013FF4();
  v1(0);
  sub_100005A24();
  v2 = sub_100013F94();
  v3(v2);
  return v0;
}

uint64_t sub_10001BB58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PosterData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001BBB4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_unknownObjectRetain();
    sub_10001BD48(v5, a2);
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = a1;
    v8[4] = a2;
    v15[4] = sub_10001C048;
    v15[5] = v8;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100011A98;
    v15[3] = &unk_10005EA38;
    v9 = _Block_copy(v15);
    swift_unknownObjectRetain();

    v10 = [v6 scheduledTimerWithTimeInterval:0 repeats:v9 block:5.0];
    _Block_release(v9);
    v11 = *(v2 + 24);
    *(v2 + 24) = v10;

    ObjectType = swift_getObjectType();
    v13 = (*(a2 + 8))(*(v2 + 16), ObjectType, a2);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_10001BD48(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(*(v2 + 16), ObjectType, a2);
  }

  v5 = *(v2 + 24);
  if (v5)
  {
    [v5 invalidate];
    v5 = *(v2 + 24);
  }

  *(v2 + 24) = 0;
}

uint64_t sub_10001BDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v8 = sub_100049FCC();
    sub_100008F90(v8, qword_100068348);

    v9 = sub_100049FAC();
    v10 = sub_10004AB9C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136446210;
      v13 = sub_100030C88(*(v7 + 16));
      v15 = sub_1000230EC(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Extended session for %{public}s timed out before its task was completed", v11, 0xCu);
      sub_100008FC8(v12);
    }

    sub_10001BD48(a3, a4);
  }

  return result;
}

uint64_t sub_10001BF74()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10001BFD0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C008()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

double sub_10001C054(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10001C06C()
{
  sub_10001C9A4();
  v0 = sub_10004ABAC();
  if (!v0)
  {
    return DeviceSupportsVFX();
  }

  v1 = v0;
  v2 = sub_10004A95C();
  v3 = [v1 stringForKey:v2];

  if (!v3)
  {
    return DeviceSupportsVFX();
  }

  v4 = sub_10004A98C();
  v6 = v5;

  v7 = v4 == 7890550 && v6 == 0xE300000000000000;
  if (v7 || (sub_10004AF3C() & 1) != 0)
  {

    return 1;
  }

  if (v4 == 1633905005 && v6 == 0xE400000000000000)
  {

    return 0;
  }

  v10 = sub_10004AF3C();

  result = 0;
  if ((v10 & 1) == 0)
  {
    return DeviceSupportsVFX();
  }

  return result;
}

uint64_t sub_10001C1AC()
{
  v0 = sub_10001C06C();
  [objc_opt_self() setSuppressEngagement:1];
  return v0 & 1;
}

uint64_t sub_10001C1F0(char a1)
{
  [objc_allocWithZone(type metadata accessor for PosterUpdater()) init];
  *(swift_allocObject() + 16) = a1;
  sub_100002D54(&qword_100063FE8, &qword_10004D170);
  swift_allocObject();
  sub_10004A27C();
  sub_10001CA1C(&qword_100063FF0, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_100049F8C();
}

uint64_t sub_10001C2F0@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  sub_10004A28C();
  swift_allocObject();
  v4 = sub_10004A29C();
  *(swift_allocObject() + 16) = a1;
  sub_10004A25C();
  swift_allocObject();
  v5 = sub_10004A26C();
  v6 = sub_10001C438(v4, v5);

  *a2 = v6;
  return result;
}

uint64_t sub_10001C438(uint64_t a1, uint64_t a2)
{
  sub_100002D54(&qword_100063FF8, &unk_10004D1F0);
  sub_100049F5C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10004CFA0;
  sub_10004A28C();
  sub_10001C95C(&qword_100064000, &type metadata accessor for PRRenderingConfiguration, &protocol conformance descriptor for PRRenderingConfiguration);

  sub_100049F4C();
  sub_10004A25C();
  sub_10001C95C(&qword_100064008, &type metadata accessor for PREditingConfiguration, &protocol conformance descriptor for PREditingConfiguration);

  sub_100049F4C();
  return v2;
}

uint64_t sub_10001C5D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001C1AC();
  *a1 = result & 1;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10001C694();
  sub_10001CA1C(&qword_100063FE0, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_100049F6C();
  return 0;
}

unint64_t sub_10001C694()
{
  result = qword_100063FD8;
  if (!qword_100063FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063FD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherPosterExtension(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WeatherPosterExtension(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10001C84CLL);
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

uint64_t sub_10001C95C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001C9A4()
{
  result = qword_100063CB8;
  if (!qword_100063CB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100063CB8);
  }

  return result;
}

uint64_t sub_10001CA1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100009240(&qword_100063FE8, &qword_10004D170);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10001CA74(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  sub_100049FCC();
  sub_1000059BC();
  v72 = v10;
  v73 = v9;
  __chkstk_darwin(v9);
  sub_100005A34();
  v71 = v11 - v12;
  sub_100013EFC();
  __chkstk_darwin(v13);
  v70 = &v68 - v14;
  sub_100013EFC();
  __chkstk_darwin(v15);
  v69 = &v68 - v16;
  v17 = type metadata accessor for SimulationReason(0);
  v18 = sub_100005A50(v17);
  __chkstk_darwin(v18);
  sub_100005A34();
  v21 = v19 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v68 - v24;
  __chkstk_darwin(v23);
  sub_100020A60();
  __chkstk_darwin(v26);
  sub_100020A9C();
  __chkstk_darwin(v27);
  sub_100020A80();
  swift_beginAccess();
  v28 = *(v2 + 16);
  v75 = a1;

  v29 = sub_10001F6AC(sub_1000209F8, v74, v28);
  swift_beginAccess();
  *(v6 + 16) = v29;

  sub_1000202A8(a1, v5);
  sub_10001E724(v4, v5);
  swift_endAccess();
  sub_10002030C(v4);
  if (a2)
  {
    if (*(v6 + 24))
    {

      sub_10001DBAC(v30);

      v31 = v70;
      sub_100049F9C();
      sub_1000202A8(a1, v25);

      v32 = sub_100049FAC();
      v33 = sub_10004AB9C();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = v31;
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v76 = v36;
        *v35 = 136446466;
        sub_10001D970();
        v38 = v37;
        sub_10002030C(v25);
        v39 = sub_100020AC4();
        v41 = sub_1000230EC(v39, v38, v40);

        *(v35 + 4) = v41;
        *(v35 + 12) = 2082;
        sub_10004AA6C();
        v43 = v42;

        v44 = sub_100020AC4();
        v46 = sub_1000230EC(v44, v43, v45);

        *(v35 + 14) = v46;
        _os_log_impl(&_mh_execute_header, v32, v33, "VFX simulation for '%{public}s' started, and scene was already unfrozen; activeSimulations=%{public}s", v35, 0x16u);
        swift_arrayDestroy();
        sub_100013F58(v36);
        sub_100013F58(v35);

        (*(v72 + 8))(v34, v73);
      }

      else
      {

        sub_10002030C(v25);
        (*(v72 + 8))(v31, v73);
      }
    }

    else
    {

      v57 = v69;
      sub_100049F9C();
      sub_1000202A8(a1, v3);
      v58 = sub_100049FAC();
      v59 = sub_10004AB9C();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = sub_100014030();
        v61 = sub_10001A07C();
        v76 = v61;
        *v60 = 136446210;
        sub_10001D970();
        v63 = v62;
        sub_10002030C(v3);
        v64 = sub_100020AC4();
        v66 = sub_1000230EC(v64, v63, v65);

        *(v60 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v58, v59, "VFX simulation for '%{public}s' started. Unfreezing the scene to start rendering.", v60, 0xCu);
        sub_100008FC8(v61);
        sub_100013F58(v61);
        sub_100013F58(v60);
      }

      else
      {

        sub_10002030C(v3);
      }

      (*(v72 + 8))(v57, v73);
      *(v6 + 24) = 1;
      sub_10004A3FC();
      v67 = sub_10004A42C();
      sub_10004A08C();
    }
  }

  else
  {
    v47 = v71;
    sub_100049F9C();
    sub_1000202A8(a1, v21);
    v48 = sub_100049FAC();
    v49 = sub_10004AB9C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = sub_100014030();
      v51 = sub_10001A07C();
      v76 = v51;
      *v50 = 136446210;
      sub_10001D970();
      v53 = v52;
      sub_10002030C(v21);
      v54 = sub_100020AC4();
      v56 = sub_1000230EC(v54, v53, v55);

      *(v50 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "VFX simulation for '%{public}s' started; Failed to unfreeze scene because manager was nil.", v50, 0xCu);
      sub_100008FC8(v51);
      sub_100013F58(v51);
      sub_100013F58(v50);
    }

    else
    {

      sub_10002030C(v21);
    }

    (*(v72 + 8))(v47, v73);
  }
}