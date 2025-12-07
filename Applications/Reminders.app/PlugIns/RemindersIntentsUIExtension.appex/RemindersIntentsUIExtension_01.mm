char *sub_10001113C(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a3 + 20);
  v8 = sub_10001F974();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);

  if (v10(&a2[v7], 1, v8))
  {
    v11 = sub_100003120(&qword_10002DF60, &qword_100020EB0);
    memcpy(&a1[v7], &a2[v7], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

char *sub_10001127C(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = *(a3 + 20);
  v7 = sub_10001F974();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = sub_100003120(&qword_10002DF60, &qword_100020EB0);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

char *sub_100011434(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_10001F974();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    v9 = sub_100003120(&qword_10002DF60, &qword_100020EB0);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

char *sub_100011558(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a3 + 20);
  v8 = sub_10001F974();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(&a1[v7], &a2[v7], v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(&a1[v7], v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = sub_100003120(&qword_10002DF60, &qword_100020EB0);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 32))(&a1[v7], &a2[v7], v8);
  (*(v9 + 56))(&a1[v7], 0, 1, v8);
LABEL_7:
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

uint64_t sub_10001170C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003120(&qword_10002DF60, &qword_100020EB0);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000117EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003120(&qword_10002DF60, &qword_100020EB0);
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_1000118B4(uint64_t a1)
{
  sub_100011958(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_100011958(uint64_t a1)
{
  if (!qword_10002DAD8)
  {
    sub_10001F974();
    v1 = sub_10001FD34();
    if (!v2)
    {
      atomic_store(v1, &qword_10002DAD8);
    }
  }
}

__n128 initializeWithTake for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000119C0(uint64_t a1, int a2)
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

uint64_t sub_1000119E0(uint64_t result, int a2, int a3)
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

void sub_100011A1C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void *sub_100011B70()
{
  v1 = [v0 modifiedTask];
  v4 = v1;
  if (v1)
  {
    v2 = v1;
    sub_10001FAF4();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10001FB24();
    }

    sub_10001FB44();
  }

  sub_100012244(&v4);
  return _swiftEmptyArrayStorage;
}

void *sub_100011C58(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v27 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v25 = v1;
    while (1)
    {
      if (v28)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10001FE14();
      }

      else
      {
        if (v2 >= *(v27 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v26 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = [isUniquelyReferenced_nonNull_bridgeObject tasks];
      sub_100010E38(0, &qword_10002DB40, INTask_ptr);
      v7 = sub_10001FB14();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_10001FEE4();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10001FEE4();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_39:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v9;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_10001FEE4();
        goto LABEL_21;
      }

      if (v10)
      {
        goto LABEL_20;
      }

      v12 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = v3;
        goto LABEL_22;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_10001FE24();
      v29 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10001FEE4();
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v31)
          {
            goto LABEL_43;
          }

          v16 = v12 + 8 * v13 + 32;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_45;
            }

            sub_1000121E0();
            for (i = 0; i != v15; ++i)
            {
              sub_100003120(&qword_10002DB50, &qword_1000212D8);
              v18 = sub_10000AE10(v30, i, v7);
              v20 = *v19;
              (v18)(v30, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v29;
          if (v31 >= 1)
          {
            v21 = *(v12 + 16);
            v5 = __OFADD__(v21, v31);
            v22 = v21 + v31;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v12 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      v3 = v29;
      if (v31 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_10001FEE4();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100011FC8()
{
  v1 = *v0;
  v2 = [v1 tasks];
  if (v2)
  {
    v3 = v2;
    sub_100010E38(0, &qword_10002DB40, INTask_ptr);
    v4 = sub_10001FB14();

    return v4;
  }

  else
  {
    v6 = [v1 taskLists];
    if (!v6)
    {
      return _swiftEmptyArrayStorage;
    }

    v7 = v6;
    sub_100010E38(0, &qword_10002DB48, INTaskList_ptr);
    v8 = sub_10001FB14();

    v9 = sub_100011C58(v8);

    return v9;
  }
}

void *sub_1000120CC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = v4;
  sub_100010E38(0, &qword_10002DB40, INTask_ptr);
  v6 = sub_10001FB14();

  return v6;
}

void *sub_10001214C()
{
  v1 = [*v0 createdTaskList];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  v3 = [v1 tasks];

  sub_100010E38(0, &qword_10002DB40, INTask_ptr);
  v4 = sub_10001FB14();

  return v4;
}

unint64_t sub_1000121E0()
{
  result = qword_10002DB58;
  if (!qword_10002DB58)
  {
    sub_1000104EC(&qword_10002DB50, &qword_1000212D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DB58);
  }

  return result;
}

uint64_t sub_100012244(uint64_t a1)
{
  v2 = sub_100003120(&qword_10002DB60, &unk_1000212E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000122AC()
{
  v1 = [objc_opt_self() effectWithStyle:4];
  v2 = [objc_opt_self() effectForBlurEffect:v1 style:6];

  v3 = [v0 initWithEffect:v2];
  v4 = v3;
  [v4 setAutoresizingMask:18];
  v5 = [objc_allocWithZone(UIView) init];
  v6 = [objc_opt_self() whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.5];

  [v5 setBackgroundColor:v7];
  [v5 setAutoresizingMask:18];
  v8 = [v4 contentView];

  [v8 addSubview:v5];
  return v4;
}

void sub_1000124D4()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TTRIVibrantTableCell();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v1 = [v0 selectedBackgroundView];
  if (!v1 || (v2 = v1, type metadata accessor for TTRIVibrantTableCell.VibrantSelectedBackgroundView(), v3 = swift_dynamicCastClass(), v2, !v3))
  {
    v4 = [objc_allocWithZone(type metadata accessor for TTRIVibrantTableCell.VibrantSelectedBackgroundView()) init];
    [v0 setSelectedBackgroundView:v4];

    v5 = [objc_opt_self() ttr_systemGrayColor];
    v6 = [v5 colorWithAlphaComponent:0.00390625];

    [v0 setBackgroundColor:v6];
  }

  v7 = [v0 selectedBackgroundView];
  if (v7)
  {
    v8 = v7;
    [v0 bounds];
    [v8 setFrame:?];
  }
}

id sub_100012714(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v9.receiver = a1;
  v9.super_class = a5(a4, a2);
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", v6);

  if (v7)
  {
  }

  return v7;
}

char *sub_10001280C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_image] = 0;
  v4 = OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_imageView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_imageView;
    v8 = *&v5[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_imageView];
    v9 = v5;
    [v8 setAutoresizingMask:18];
    [*&v6[v7] setUserInteractionEnabled:0];
    v10 = [v9 contentView];
    [v10 addSubview:*&v6[v7]];

    sub_100013330(0);
    v11 = *&v6[v7];
    v12 = *&v9[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_image];
    if (v12)
    {
      v13 = [v12 imageWithRenderingMode:2];
    }

    else
    {
      v13 = 0;
    }

    [v11 setImage:v13];

    [v9 invalidateIntrinsicContentSize];
  }

  return v6;
}

id sub_1000129D0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TTRIVibrantCompletedButton(uint64_t a1)
{
  result = qword_10002DC00;
  if (!qword_10002DC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012B1C(void *a1)
{
  v2 = v1;
  v3 = qword_10002DBF8;
  v4 = *&v1[qword_10002DBF8];
  *&v2[qword_10002DBF8] = a1;
  v5 = a1;

  v6 = [v2 traitCollection];
  v7 = [v6 isAmbientPresented];

  if (v7)
  {
    v8 = *&v2[v3];
    v9 = type metadata accessor for TTRIVibrantCompletedButton(0);
    v14.receiver = v2;
    v14.super_class = v9;
    objc_msgSendSuper2(&v14, "setImage:forState:", v8, 0);
    v10 = [objc_opt_self() secondaryLabelColor];
    v13.receiver = v2;
    v13.super_class = v9;
    objc_msgSendSuper2(&v13, "setTintColor:", v10);
  }

  else
  {
    v11 = *&v2[v3];
    v12 = v11;
    sub_100013330(v11);
  }
}

char *sub_100012C64()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIVibrantTemplateImageView();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_image] = 0;
  v4 = OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_imageView;
  *&v3[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = [objc_opt_self() effectWithStyle:4];
  v6 = [objc_opt_self() effectForBlurEffect:v5 style:1];

  v22.receiver = v3;
  v22.super_class = v2;
  v7 = objc_msgSendSuper2(&v22, "initWithEffect:", v6);

  v8 = OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_imageView;
  v9 = *&v7[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_imageView];
  v10 = v7;
  [v9 setAutoresizingMask:18];
  [*&v7[v8] setUserInteractionEnabled:0];
  v11 = [v10 contentView];
  [v11 addSubview:*&v7[v8]];

  sub_100013330(0);
  v12 = *&v7[v8];
  v13 = *&v10[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_image];
  if (v13)
  {
    v14 = [v13 imageWithRenderingMode:2];
  }

  else
  {
    v14 = 0;
  }

  v15 = qword_10002DBF0;
  [v12 setImage:v14];

  [v10 invalidateIntrinsicContentSize];
  *&v1[v15] = v10;
  *&v1[qword_10002DBF8] = 0;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for TTRIVibrantCompletedButton(0);
  v16 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v17 = qword_10002DBF0;
  v18 = *&v16[qword_10002DBF0];
  v19 = v16;
  [v18 setUserInteractionEnabled:0];
  [*&v16[v17] setAutoresizingMask:2];
  [v19 addSubview:*&v16[v17]];

  return v19;
}

char *sub_100012EE8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIVibrantTemplateImageView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_image] = 0;
  v6 = OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_imageView;
  *&v5[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = [objc_opt_self() effectWithStyle:4];
  v8 = [objc_opt_self() effectForBlurEffect:v7 style:1];

  v25.receiver = v5;
  v25.super_class = v4;
  v9 = objc_msgSendSuper2(&v25, "initWithEffect:", v8);

  v10 = OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_imageView;
  v11 = *&v9[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_imageView];
  v12 = v9;
  [v11 setAutoresizingMask:18];
  [*&v9[v10] setUserInteractionEnabled:0];
  v13 = [v12 contentView];
  [v13 addSubview:*&v9[v10]];

  sub_100013330(0);
  v14 = *&v9[v10];
  v15 = *&v12[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_image];
  if (v15)
  {
    v16 = [v15 imageWithRenderingMode:2];
  }

  else
  {
    v16 = 0;
  }

  v17 = qword_10002DBF0;
  [v14 setImage:v16];

  [v12 invalidateIntrinsicContentSize];
  *&v2[v17] = v12;
  *&v2[qword_10002DBF8] = 0;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for TTRIVibrantCompletedButton(0);
  v18 = objc_msgSendSuper2(&v24, "initWithCoder:", a1);
  v19 = v18;
  if (v18)
  {
    v20 = qword_10002DBF0;
    v21 = *&v18[qword_10002DBF0];
    v22 = v18;
    [v21 setUserInteractionEnabled:0];
    [*&v19[v20] setAutoresizingMask:2];
    [v22 addSubview:*&v19[v20]];
  }

  return v19;
}

void sub_100013170(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for TTRIVibrantCompletedButton(0);
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v2 = *&v1[qword_10002DBF0];
  [v1 intrinsicContentSize];
  [v2 frame];
  [v2 setFrame:?];
}

void sub_100013248()
{
  v1 = *(v0 + qword_10002DBF8);
}

id sub_1000132A4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1000132DC(uint64_t a1)
{
  v2 = *(a1 + qword_10002DBF8);
}

id sub_100013330(void *a1)
{
  v2 = OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_image;
  v3 = *&v1[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_image];
  *&v1[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_image] = a1;
  v4 = a1;

  v5 = *&v1[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_imageView];
  v6 = *&v1[v2];
  if (v6)
  {
    v7 = [v6 imageWithRenderingMode:2];
  }

  else
  {
    v7 = 0;
  }

  [v5 setImage:v7];

  return [v1 invalidateIntrinsicContentSize];
}

void sub_1000133D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v26 = a5;
  v9 = sub_10001F4C4();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10001F9B4();
  sub_100003120(&qword_10002DC50, &qword_100021390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100020EA0;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_100013904();
  *(inited + 48) = sub_10001FD24();
  *(inited + 56) = 0xD00000000000001ALL;
  *(inited + 64) = 0x8000000100022130;
  v23 = a1;
  *(inited + 72) = sub_10001FA54();
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x8000000100022150;
  v24 = a3;
  *(inited + 96) = sub_10001FA54();
  sub_10001D9BC(inited);
  swift_setDeallocating();
  sub_100003120(&qword_10002DC60, &qword_100021398);
  swift_arrayDestroy();
  sub_10001F9A4();

  if (qword_10002D930 != -1)
  {
    swift_once();
  }

  v13 = sub_10001F9D4();
  sub_1000138CC(v13, qword_10002E500);
  v14 = v27;
  (*(v27 + 16))(v11, v26, v9);

  v15 = sub_10001F9C4();
  v16 = sub_10001FBE4();

  v17 = v9;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_10001CCE0(v23, a2, &v28);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10001CCE0(v24, a4, &v28);
    *(v18 + 22) = 2080;
    v19 = sub_10001F4B4();
    v21 = v20;
    (*(v14 + 8))(v11, v17);
    v22 = sub_10001CCE0(v19, v21, &v28);

    *(v18 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Navigating (%s) -> (%s) {url:%s}", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v14 + 8))(v11, v9);
  }
}

uint64_t sub_1000137F4(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = sub_10001F9D4();
  sub_100013868(v5, a2);
  sub_1000138CC(v5, a2);
  v6 = [objc_opt_self() *a3];
  return sub_10001F9E4();
}

uint64_t *sub_100013868(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000138CC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100013904()
{
  result = qword_10002DC58;
  if (!qword_10002DC58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002DC58);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TTRIIntentsSnippetReminderCellViewModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

id sub_100013980(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

uint64_t destroy for TTRIIntentsSnippetReminderCellViewModel(uint64_t a1)
{

  v2 = *(a1 + 88);
  if (v2 != 255)
  {
    sub_100013A18(*(a1 + 72), *(a1 + 80), v2);
  }
}

void sub_100013A18(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t initializeWithCopy for TTRIIntentsSnippetReminderCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  v8 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;
  v9 = *(a2 + 88);
  v10 = v4;
  v11 = v5;

  if (v9 == 255)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    v12 = *(a2 + 72);
    v13 = *(a2 + 80);
    sub_100013980(v12, v13, v9);
    *(a1 + 72) = v12;
    *(a1 + 80) = v13;
    *(a1 + 88) = v9;
  }

  v14 = *(a2 + 96);
  *(a1 + 96) = v14;
  *(a1 + 104) = *(a2 + 104);
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);
  *(a1 + 112) = v15;
  *(a1 + 120) = v16;
  v17 = v14;

  return a1;
}

uint64_t assignWithCopy for TTRIIntentsSnippetReminderCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  v10 = *(a2 + 88);
  if (*(a1 + 88) == 255)
  {
    if (v10 == 255)
    {
      v19 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 72) = v19;
    }

    else
    {
      v16 = *(a2 + 72);
      v17 = *(a2 + 80);
      sub_100013980(v16, v17, *(a2 + 88));
      *(a1 + 72) = v16;
      *(a1 + 80) = v17;
      *(a1 + 88) = v10;
    }
  }

  else if (v10 == 255)
  {
    sub_100013CD4(a1 + 72);
    v18 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v18;
  }

  else
  {
    v11 = *(a2 + 72);
    v12 = *(a2 + 80);
    sub_100013980(v11, v12, *(a2 + 88));
    v13 = *(a1 + 72);
    v14 = *(a1 + 80);
    *(a1 + 72) = v11;
    *(a1 + 80) = v12;
    v15 = *(a1 + 88);
    *(a1 + 88) = v10;
    sub_100013A18(v13, v14, v15);
  }

  v20 = *(a1 + 96);
  v21 = *(a2 + 96);
  *(a1 + 96) = v21;
  v22 = v21;

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

__n128 initializeWithTake for TTRIIntentsSnippetReminderCellViewModel(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t assignWithTake for TTRIIntentsSnippetReminderCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;

  v8 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;

  v9 = *(a1 + 88);
  if (v9 == 255)
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 88);
  if (v10 == 255)
  {
    sub_100013CD4(a1 + 72);
LABEL_5:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    goto LABEL_6;
  }

  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v10;
  sub_100013A18(v11, v12, v9);
LABEL_6:
  v13 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  v14 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v14;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIIntentsSnippetReminderCellViewModel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for TTRIIntentsSnippetReminderCellViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100013F00(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_100013980(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRIIntentsSnippetReminderCellViewModel.ContactTriggerState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_100013980(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_100013A18(v6, v7, v8);
  return a1;
}

__n128 initializeWithTake for TTRIIntentsSnippetReminderCellViewModel.ContactTriggerState(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRIIntentsSnippetReminderCellViewModel.ContactTriggerState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_100013A18(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIIntentsSnippetReminderCellViewModel.ContactTriggerState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIIntentsSnippetReminderCellViewModel.ContactTriggerState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_10001408C(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1000140A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

char *sub_1000140D0()
{
  v1 = sub_10001F874();
  __chkstk_darwin(v1 - 8);
  v3 = v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001F6E4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v53 - v9;
  v11 = sub_10001F8B4();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10001F8D4();
  v56 = *(v12 - 8);
  v57 = v12;
  __chkstk_darwin(v12);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100010E38(0, &unk_10002E040, REMReminder_ptr);
  v66 = &protocol witness table for REMReminder;
  v63 = v0;
  v15 = v0;
  sub_10001F8A4();
  sub_10001F8C4();
  v16 = sub_10001F894();
  v58 = v14;
  if (v16 || (v16 = [v15 title]) != 0)
  {
    v54 = v16;
    v55 = v8;
    v59 = v5;
    v60 = v4;
    sub_100003120(&qword_10002DCA0, &qword_100021418);
    inited = swift_initStackObject();
    v61 = xmmword_100020E90;
    *(inited + 16) = xmmword_100020E90;
    *(inited + 32) = NSFontAttributeName;
    v18 = NSFontAttributeName;
    IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
    sub_100010E38(0, &qword_10002DCA8, UIFont_ptr);
    if (IsBoldTextEnabled)
    {
      v20 = sub_10001FCA4();
    }

    else
    {
      v20 = sub_10001FCB4();
    }

    *(inited + 40) = v20;
    v53[4] = sub_1000148CC(inited);
    swift_setDeallocating();
    sub_1000105E4(inited + 32, &qword_10002DCB0, &qword_100021420);
    v21 = swift_initStackObject();
    *(v21 + 16) = v61;
    *(v21 + 32) = v18;
    *(v21 + 40) = sub_10001FCC4();
    v53[3] = sub_1000148CC(v21);
    swift_setDeallocating();
    sub_1000105E4(v21 + 32, &qword_10002DCB0, &qword_100021420);
    v14 = v58;
    sub_10001F884();
    v53[2] = v3;
    sub_10001F6C4();
    v59[1](v10, v60);
    v22 = swift_initStackObject();
    *(v22 + 16) = v61;
    *(v22 + 32) = NSForegroundColorAttributeName;
    sub_100010E38(0, &qword_10002DCB8, UIColor_ptr);
    v23 = NSForegroundColorAttributeName;
    *(v22 + 40) = sub_10001FCE4();
    v53[1] = sub_1000148CC(v22);
    swift_setDeallocating();
    sub_1000105E4(v22 + 32, &qword_10002DCB0, &qword_100021420);
    v24 = swift_initStackObject();
    *(v24 + 16) = v61;
    *(v24 + 32) = v23;
    v25 = v23;
    *(v24 + 40) = sub_10001FCE4();
    v53[0] = sub_1000148CC(v24);
    swift_setDeallocating();
    sub_1000105E4(v24 + 32, &qword_10002DCB0, &qword_100021420);
    v26 = swift_initStackObject();
    *(v26 + 16) = v61;
    *(v26 + 32) = v25;
    *(v26 + 40) = sub_10001FCD4();
    sub_1000148CC(v26);
    swift_setDeallocating();
    v5 = v59;
    sub_1000105E4(v26 + 32, &qword_10002DCB0, &qword_100021420);
    v27 = swift_initStackObject();
    *(v27 + 16) = v61;
    *(v27 + 32) = v25;
    *(v27 + 40) = [objc_opt_self() magentaColor];
    sub_1000148CC(v27);
    swift_setDeallocating();
    sub_1000105E4(v27 + 32, &qword_10002DCB0, &qword_100021420);
    v28 = sub_10001F714();
    sub_10001F704();
    v29 = objc_allocWithZone(v28);
    v4 = v60;
    v30 = sub_10001F6F4();
    v31 = v54;
    [v30 insertAttributedString:v54 atIndex:0];
    v32 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v30];

    v8 = v55;
  }

  else
  {
    v32 = 0;
  }

  sub_10001F884();
  v33 = sub_10001F6D4();
  v5[1](v8, v4);
  if (!(v33 >> 62))
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_9;
    }

LABEL_20:

    v37 = _swiftEmptyArrayStorage;
LABEL_21:
    v63 = v37;
    sub_100003120(&qword_10002DC90, &qword_100021410);
    sub_100015148();
    sub_10001FA34();

    (*(v56 + 8))(v14, v57);
    return v32;
  }

  v34 = sub_10001FEE4();
  if (!v34)
  {
    goto LABEL_20;
  }

LABEL_9:
  v62 = _swiftEmptyArrayStorage;
  result = sub_100009640(0, v34 & ~(v34 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    v37 = v62;
    v38 = v33;
    v59 = v32;
    v60 = v33 & 0xC000000000000001;
    *&v61 = v33;
    do
    {
      if (v60)
      {
        v39 = sub_10001FE14();
      }

      else
      {
        v39 = *(v38 + 8 * v36 + 32);
      }

      v40 = v39;
      v41 = sub_10001FAA4();
      v43 = v42;
      v44 = [v40 name];
      v45 = sub_10001FA84();
      v47 = v46;

      v63 = v41;
      v64 = v43;

      v67._countAndFlagsBits = v45;
      v67._object = v47;
      sub_10001FAC4(v67);

      v48 = v63;
      v49 = v64;
      v62 = v37;
      v51 = v37[2];
      v50 = v37[3];
      if (v51 >= v50 >> 1)
      {
        sub_100009640((v50 > 1), v51 + 1, 1);
        v37 = v62;
      }

      ++v36;
      v37[2] = v51 + 1;
      v52 = &v37[2 * v51];
      v52[4] = v48;
      v52[5] = v49;
      v38 = v61;
    }

    while (v34 != v36);

    v14 = v58;
    v32 = v59;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000148CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003120(&qword_10002DCC0, qword_100021428);
    v3 = sub_10001FF24();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100004218(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000149C4@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v74 = a3;
  v75 = a2;
  v6 = sub_100003120(&qword_10002DC68, &qword_1000213E8);
  __chkstk_darwin(v6 - 8);
  v76 = &v61 - v7;
  v8 = sub_100003120(&qword_10002DC70, &qword_1000213F0);
  __chkstk_darwin(v8 - 8);
  v73 = &v61 - v9;
  v10 = sub_100003120(&qword_10002DC78, &qword_1000213F8);
  __chkstk_darwin(v10 - 8);
  v12 = &v61 - v11;
  v70 = sub_10001F844();
  v13 = *(v70 - 8);
  __chkstk_darwin(v70);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003120(&qword_10002DC80, &qword_100021400);
  __chkstk_darwin(v16 - 8);
  v18 = &v61 - v17;
  v19 = sub_10001F864();
  __chkstk_darwin(v19 - 8);
  v20 = sub_100003120(&qword_10002DC88, &qword_100021408);
  __chkstk_darwin(v20 - 8);
  v22 = &v61 - v21;
  v23 = sub_10001F834();
  v71 = *(v23 - 8);
  v72 = v23;
  __chkstk_darwin(v23);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10001F774();
  (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
  v78 = sub_100010E38(0, &unk_10002E040, REMReminder_ptr);
  v79 = &protocol witness table for REMReminder;
  v77 = a1;
  v27 = a1;
  sub_10001F854();
  v28 = sub_10001F8D4();
  (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
  sub_10001F7F4();
  sub_10001F7C4();
  v29 = v70;
  v30 = (*(v13 + 88))(v15, v70);
  if (v30 == enum case for TTRReminderDetailViewModel.FlaggedState.supported(_:))
  {
    (*(v13 + 96))(v15, v29);
    LODWORD(v70) = *v15;
  }

  else
  {
    if (v30 != enum case for TTRReminderDetailViewModel.FlaggedState.unsupported(_:))
    {
      result = sub_10001FF64();
      __break(1u);
      return result;
    }

    LODWORD(v70) = 0;
  }

  v31 = v73;
  v32 = v27;
  v68 = sub_1000140D0();
  v69 = v33;
  v73 = v34;
  v67 = sub_10001F824();
  v65 = sub_10001F7B4();
  v66 = sub_10001F7D4();
  sub_10001F7A4();
  v35 = sub_10001F744();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v12, 1, v35) == 1)
  {
    sub_1000105E4(v12, &qword_10002DC78, &qword_1000213F8);
    v63 = 0;
    v64 = 0;
  }

  else
  {
    v37 = sub_10001F734();
    v63 = v38;
    v64 = v37;
    (*(v36 + 8))(v12, v35);
  }

  v39 = sub_10001F7E4();
  v61 = v40;
  v62 = v39;
  sub_10001F814();
  v41 = sub_10001F764();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v31, 1, v41) == 1)
  {
    sub_1000105E4(v31, &qword_10002DC70, &qword_1000213F0);
    v43 = 0;
    v44 = 0;
  }

  else
  {
    v43 = sub_10001F754();
    v44 = v45;
    (*(v42 + 8))(v31, v41);
  }

  v46 = [v32 contactHandles];
  sub_10001F804();
  v47 = v76;
  v48 = sub_10001F794();
  v49 = v32;
  v50 = *(v48 - 8);
  if ((*(v50 + 48))(v47, 1, v48) == 1)
  {
    (*(v71 + 8))(v25, v72);

    result = sub_1000105E4(v47, &qword_10002DC68, &qword_1000213E8);
    v52 = 0;
  }

  else
  {
    v52 = sub_10001F784();

    (*(v71 + 8))(v25, v72);
    result = (*(v50 + 8))(v47, v48);
  }

  if (v46)
  {
    v53 = 0;
  }

  else
  {
    v53 = -1;
  }

  v54 = v66;
  v55 = v65 & 1;
  *a4 = v67;
  *(a4 + 8) = v68;
  v56 = v74 & 1;
  *(a4 + 16) = v55;
  v57 = v75 & 1;
  *(a4 + 17) = v70;
  *(a4 + 18) = v56;
  *(a4 + 19) = v54 & 1;
  v58 = v63;
  *(a4 + 24) = v64;
  *(a4 + 32) = v58;
  v59 = v61;
  *(a4 + 40) = v62;
  *(a4 + 48) = v59;
  *(a4 + 56) = v43;
  *(a4 + 64) = v44;
  *(a4 + 72) = v46;
  *(a4 + 80) = 0;
  *(a4 + 88) = v53;
  *(a4 + 96) = v52;
  *(a4 + 104) = v57;
  v60 = v69;
  *(a4 + 112) = v73;
  *(a4 + 120) = v60;
  return result;
}

unint64_t sub_100015148()
{
  result = qword_10002DC98;
  if (!qword_10002DC98)
  {
    sub_1000104EC(&qword_10002DC90, &qword_100021410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DC98);
  }

  return result;
}

void sub_1000151B0()
{
  v1 = *&v0[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_headingLabel];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;

  v3 = sub_10001FA54();

  [v2 setText:v3];

  v4 = *&v0[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_topConstraint];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = 16.0;
  if (v0[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_isFirst])
  {
    v5 = 6.0;
  }

  [v4 setConstant:v5];

  [v0 layoutIfNeeded];
}

id sub_1000153D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_viewModel];
  *v7 = 0;
  v7[1] = 0;
  v3[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_isFirst] = 0;
  *&v3[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_topConstraint] = 0;
  *&v3[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_headingLabel] = 0;
  if (a3)
  {
    v8 = sub_10001FA54();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithStyle:reuseIdentifier:", a1, v8);

  return v9;
}

id sub_1000154EC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_viewModel];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_isFirst] = 0;
  *&v1[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_topConstraint] = 0;
  *&v1[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_headingLabel] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_1000155B0()
{

  v1 = *(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_headingLabel);
}

uint64_t sub_100015688()
{
  result = sub_10001F624();
  qword_10002E530 = result;
  return result;
}

uint64_t sub_1000156A8()
{
  result = sub_10001F634();
  qword_10002E538 = result;
  return result;
}

uint64_t sub_1000156C8()
{
  result = sub_10001F644();
  qword_10002E540 = result;
  return result;
}

void sub_1000156E8()
{
  v1 = v0;
  sub_10001629C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v3 = Strong;
  v4 = &v1[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel];
  swift_beginAccess();
  v5 = *(v4 + 5);
  v42[4] = *(v4 + 4);
  v42[5] = v5;
  v6 = *(v4 + 7);
  v42[6] = *(v4 + 6);
  v42[7] = v6;
  v7 = *(v4 + 1);
  v42[0] = *v4;
  v42[1] = v7;
  v8 = *(v4 + 3);
  v42[2] = *(v4 + 2);
  v42[3] = v8;
  v9 = 0;
  if (sub_100018298(v42) != 1)
  {
    v9 = *(v4 + 1);
  }

  [v3 setAttributedText:v9];

  sub_1000164E4();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = v10;
  v12 = *(v4 + 5);
  v41[4] = *(v4 + 4);
  v41[5] = v12;
  v13 = *(v4 + 7);
  v41[6] = *(v4 + 6);
  v41[7] = v13;
  v14 = *(v4 + 1);
  v41[0] = *v4;
  v41[1] = v14;
  v15 = *(v4 + 3);
  v41[2] = *(v4 + 2);
  v41[3] = v15;
  if (sub_100018298(v41) == 1 || !*(v4 + 8))
  {
    v16 = 0;
  }

  else
  {

    v16 = sub_10001FA54();
  }

  [v11 setText:v16];

  v43._countAndFlagsBits = 0x6E6967617373654DLL;
  v43._object = 0xED00004025203A67;
  v44._object = 0x8000000100022490;
  v44._countAndFlagsBits = 0xD00000000000002FLL;
  v17 = sub_10001F684(v43, v44);
  v19 = v18;
  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
    goto LABEL_23;
  }

  v21 = v20;
  sub_10001759C(v1, v17, v19);
  v23 = v22;

  if (v23)
  {
    v24 = sub_10001FA54();
  }

  else
  {
    v24 = 0;
  }

  [v21 setText:v24];

  sub_100016E30();
  [v1 layoutIfNeeded];
  v25 = *(v4 + 5);
  v40[4] = *(v4 + 4);
  v40[5] = v25;
  v26 = *(v4 + 7);
  v40[6] = *(v4 + 6);
  v40[7] = v26;
  v27 = *(v4 + 1);
  v40[0] = *v4;
  v40[1] = v27;
  v28 = *(v4 + 3);
  v40[2] = *(v4 + 2);
  v40[3] = v28;
  if (sub_100018298(v40) != 1 && !v4[88])
  {
    v30 = *(v4 + 9);
    v29 = *(v4 + 10);
    sub_100013980(v30, v29, 0);
    v31 = sub_100015AB4(v38);
    v33 = v32;
    memmove(__dst, v32, 0x80uLL);
    if (sub_100018298(__dst) != 1)
    {
      v34 = *(v33 + 9);
      v35 = *(v33 + 10);
      *(v33 + 9) = 0;
      *(v33 + 10) = 0;
      v36 = *(v33 + 88);
      *(v33 + 88) = 2;
      sub_1000182B0(v34, v35, v36);
    }

    v31(v38, 0);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10001F914();
      swift_unknownObjectRelease();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = sub_10001F984();
      sub_10001F994();

      sub_1000182B0(v30, v29, 0);
    }

    else
    {
      sub_1000182B0(v30, v29, 0);
    }
  }
}

uint64_t (*sub_100015AB4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100015B18;
}

uint64_t sub_100015B18(uint64_t a1, char a2)
{
  if (a2)
  {

    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return sub_1000156E8();
  }
}

void *sub_100015B54()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "prepareForReuse");
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_100015C70();

    sub_10001846C(v15);
    v4 = &v1[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel];
    swift_beginAccess();
    v5 = *(v4 + 5);
    v16[4] = *(v4 + 4);
    v16[5] = v5;
    v6 = *(v4 + 7);
    v16[6] = *(v4 + 6);
    v16[7] = v6;
    v7 = *(v4 + 1);
    v16[0] = *v4;
    v16[1] = v7;
    v8 = *(v4 + 3);
    v16[2] = *(v4 + 2);
    v16[3] = v8;
    v9 = v15[0];
    v10 = v15[1];
    v11 = v15[3];
    *(v4 + 2) = v15[2];
    *(v4 + 3) = v11;
    *v4 = v9;
    *(v4 + 1) = v10;
    v12 = v15[4];
    v13 = v15[5];
    v14 = v15[7];
    *(v4 + 6) = v15[6];
    *(v4 + 7) = v14;
    *(v4 + 4) = v12;
    *(v4 + 5) = v13;
    sub_1000105E4(v16, &qword_10002E080, &qword_100021640);
    sub_1000156E8();
    *&v1[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_delegate + 8] = 0;
    return swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100015C70()
{
  v1 = v0;
  v2 = [v0 arrangedSubviews];
  sub_100010E38(0, &qword_10002DA50, UIView_ptr);
  v3 = sub_10001FB14();

  if (v3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10001FEE4())
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v14 = v3;
    while (1)
    {
      if (v6)
      {
        v9 = sub_10001FE14();
      }

      else
      {
        if (v5 >= *(v7 + 16))
        {
          goto LABEL_13;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v1 removeArrangedSubview:v9];
      isa = [v10 constraints];
      if (!isa)
      {
        sub_100010E38(0, &qword_10002DDA8, NSLayoutConstraint_ptr);
        sub_10001FB14();
        isa = sub_10001FB04().super.isa;
        v3 = v14;
      }

      [objc_opt_self() deactivateConstraints:isa];

      [v10 removeFromSuperview];
      sub_100003120(&qword_10002D978, &unk_100021500);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100020E80;
      *(inited + 32) = v10;
      sub_1000032AC(inited);
      ++v5;
      if (v11 == i)
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

  return _swiftEmptyArrayStorage;
}

id sub_100016064()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v1 = &v0[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel];
  swift_beginAccess();
  v2 = *(v1 + 5);
  v18[4] = *(v1 + 4);
  v18[5] = v2;
  v3 = *(v1 + 7);
  v18[6] = *(v1 + 6);
  v18[7] = v3;
  v4 = *(v1 + 1);
  v18[0] = *v1;
  v18[1] = v4;
  v5 = *(v1 + 3);
  v18[2] = *(v1 + 2);
  v18[3] = v5;
  v6 = sub_100018298(v18) == 1 || (v1[104] & 1) == 0;
  [v0 setSeparatorStyle:v6];
  v7 = *(v1 + 5);
  v16[4] = *(v1 + 4);
  v16[5] = v7;
  v8 = *(v1 + 7);
  v16[6] = *(v1 + 6);
  v16[7] = v8;
  v9 = *(v1 + 1);
  v16[0] = *v1;
  v16[1] = v9;
  v10 = *(v1 + 3);
  v16[2] = *(v1 + 2);
  v16[3] = v10;
  v11 = 16.0;
  if (sub_100018298(v16) != 1)
  {
    if (v1[18])
    {
      v11 = 52.0;
    }

    else
    {
      v11 = 16.0;
    }
  }

  v12 = sub_10001620C();
  v14 = v13;

  [v14 setConstant:v11];
  [v0 separatorInset];
  return [v0 setSeparatorInset:?];
}

id sub_10001620C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton];
  v3 = *&v0[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton];
  v4 = *&v0[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton + 8];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = sub_1000172F8(v1);
    v8 = v7;
    v9 = *v2;
    v10 = *(v2 + 1);
    *v2 = v6;
    *(v2 + 1) = v7;
    v5 = v6;
    v8;
    sub_1000183C4(v9, v10);
  }

  sub_100018404(v3, v4);
  return v5;
}

void sub_10001629C()
{
  v1 = v0;
  v2 = sub_10001620C();

  v4 = (v1 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel);
  swift_beginAccess();
  v5 = v4[5];
  v23[4] = v4[4];
  v23[5] = v5;
  v6 = v4[7];
  v23[6] = v4[6];
  v23[7] = v6;
  v7 = v4[1];
  v23[0] = *v4;
  v23[1] = v7;
  v8 = v4[3];
  v23[2] = v4[2];
  v23[3] = v8;
  if (sub_100018298(v23) == 1 || (v4[1] & 1) == 0)
  {
    if (qword_10002D948 != -1)
    {
      swift_once();
    }

    v9 = &qword_10002E538;
  }

  else
  {
    if (qword_10002D940 != -1)
    {
      swift_once();
    }

    v9 = &qword_10002E530;
  }

  v10 = *v9;
  v11 = *v9;
  sub_100012B1C(v10);

  v12 = OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton;
  v13 = *(v1 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton);
  v14 = v4[5];
  v22[4] = v4[4];
  v22[5] = v14;
  v15 = v4[7];
  v22[6] = v4[6];
  v22[7] = v15;
  v16 = v4[1];
  v22[0] = *v4;
  v22[1] = v16;
  v17 = v4[3];
  v22[2] = v4[2];
  v22[3] = v17;
  sub_100018298(v22);
  v18 = v13;
  v19 = sub_10001FA54();

  [v18 setAccessibilityIdentifier:v19];

  v20 = *(v1 + v12);
  v21 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
  [v20 setPreferredSymbolConfiguration:v21 forImageInState:0];
}

void sub_1000164E4()
{
  v2 = (v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel);
  swift_beginAccess();
  v3 = v2[5];
  v94[4] = v2[4];
  v94[5] = v3;
  v4 = v2[7];
  v94[6] = v2[6];
  v94[7] = v4;
  v5 = v2[1];
  v94[0] = *v2;
  v94[1] = v5;
  v6 = v2[3];
  v94[2] = v2[2];
  v94[3] = v6;
  if (sub_100018298(v94) == 1 || (v7 = *(v2 + 4)) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      [Strong setText:0];

      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_35;
  }

  v92 = *(v2 + 3);
  v93 = v7;
  v8 = v2[5];
  v88 = v2[4];
  v89 = v8;
  v9 = v2[7];
  v90 = v2[6];
  v91 = v9;
  v10 = v2[1];
  v84 = *v2;
  v85 = v10;
  v11 = v2[3];
  v86 = v2[2];
  v87 = v11;
  if (sub_100018298(&v84) == 1 || (*(v2 + 19) & 1) == 0)
  {
    v12 = &selRef_secondaryLabelColor;
  }

  else
  {
    v12 = &selRef_redColor;
  }

  v15 = objc_opt_self();

  v16 = [v15 *v12];
  v17 = v2[5];
  v83[4] = v2[4];
  v83[5] = v17;
  v18 = v2[7];
  v83[6] = v2[6];
  v83[7] = v18;
  v19 = v2[1];
  v83[0] = *v2;
  v83[1] = v19;
  v20 = v2[3];
  v83[2] = v2[2];
  v83[3] = v20;
  if (sub_100018298(v83) != 1)
  {
    v21._object = *(v2 + 6);
    if (v21._object)
    {
      v21._countAndFlagsBits = *(v2 + 5);
      sub_10001FAC4(v21);
      v95._countAndFlagsBits = 8236;
      v95._object = 0xE200000000000000;
      sub_10001FAC4(v95);
    }
  }

  v1 = OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_timeTriggerLabel;
  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v23 = v22;
  v24 = sub_10001FA54();
  [v23 setText:v24];

  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v26 = v25;

  [v26 setTextColor:v16];

LABEL_15:
  v27 = v2[5];
  v88 = v2[4];
  v89 = v27;
  v28 = v2[7];
  v90 = v2[6];
  v91 = v28;
  v29 = v2[1];
  v84 = *v2;
  v85 = v29;
  v30 = v2[3];
  v86 = v2[2];
  v87 = v30;
  if (sub_100018298(&v84) != 1)
  {
    v31 = *(v2 + 15);
    if (v31)
    {
      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = v2[7] & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {
        v33 = sub_100010E38(0, &qword_10002DCA8, UIFont_ptr);

        v82 = sub_10001FC94();
        isa = sub_10001FC84().super.isa;
        v72 = objc_opt_self();
        v35 = [v72 secondaryLabelColor];
        sub_100003120(&qword_10002DD98, &unk_1000214F0);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_100021460;
        *(v36 + 32) = NSFontAttributeName;
        *(v36 + 40) = isa;
        v80 = v33;
        *(v36 + 64) = v33;
        *(v36 + 72) = NSForegroundColorAttributeName;
        v79 = sub_100010E38(0, &qword_10002DCB8, UIColor_ptr);
        *(v36 + 104) = v79;
        *(v36 + 80) = v35;
        v75 = NSFontAttributeName;
        v81 = isa;
        v73 = NSForegroundColorAttributeName;
        v37 = v35;
        sub_10001DAC0(v36);
        swift_setDeallocating();
        sub_100003120(&unk_10002E090, &unk_100021650);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v38 = objc_allocWithZone(NSAttributedString);
        v1 = sub_10001FA54();
        type metadata accessor for Key(0);
        sub_10001836C();
        v39 = sub_10001F9F4().super.isa;

        v40 = [v38 initWithString:v1 attributes:v39];

        v41 = swift_unknownObjectWeakLoadStrong();
        if (v41)
        {
          v42 = v41;
          v1 = [v41 text];

          if (v1)
          {
            v43 = sub_10001FA84();
            v45 = HIBYTE(v44) & 0xF;
            if ((v44 & 0x2000000000000000) == 0)
            {
              v45 = v43 & 0xFFFFFFFFFFFFLL;
            }

            if (v45)
            {
              v96._countAndFlagsBits = 0x4025204025204025;
              v97._object = 0x80000001000224C0;
              v96._object = 0xE800000000000000;
              v97._countAndFlagsBits = 0xD00000000000004FLL;
              sub_10001F684(v96, v97);
              v46 = swift_unknownObjectWeakLoadStrong();
              if (!v46)
              {
LABEL_39:

                __break(1u);
                return;
              }

              v47 = v46;
              v70 = v40;
              v71 = v37;

              v48 = [v47 textColor];

              if (!v48)
              {
                v48 = [v72 secondaryLabelColor];
              }

              v49 = swift_allocObject();
              *(v49 + 32) = v75;
              *(v49 + 16) = xmmword_100021460;
              *(v49 + 40) = v82;
              *(v49 + 64) = v80;
              *(v49 + 72) = v73;
              *(v49 + 104) = v79;
              *(v49 + 80) = v48;
              v50 = v75;
              v51 = v73;
              v76 = v50;
              v52 = v51;
              v74 = v82;
              v78 = v48;
              sub_10001DAC0(v49);
              swift_setDeallocating();
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v53 = objc_allocWithZone(NSAttributedString);
              v54 = sub_10001F9F4().super.isa;

              v77 = [v53 initWithString:v1 attributes:v54];

              v55 = swift_allocObject();
              *(v55 + 16) = xmmword_100020E90;
              *(v55 + 32) = v52;
              *(v55 + 64) = v79;
              *(v55 + 40) = v71;
              v56 = v71;
              sub_10001DAC0(v55);
              swift_setDeallocating();
              sub_1000105E4(v55 + 32, &unk_10002E090, &unk_100021650);
              swift_deallocClassInstance();
              v57 = objc_allocWithZone(NSAttributedString);
              v58 = sub_10001FA54();
              v59 = sub_10001F9F4().super.isa;

              v60 = [v57 initWithString:v58 attributes:v59];

              sub_100010E38(0, &qword_10002DDA0, NSAttributedString_ptr);
              v61 = swift_allocObject();
              *(v61 + 16) = xmmword_100020E90;
              *(v61 + 32) = v76;
              *(v61 + 64) = v80;
              *(v61 + 40) = v74;
              v62 = v74;
              sub_10001DAC0(v61);
              swift_setDeallocating();
              sub_1000105E4(v61 + 32, &unk_10002E090, &unk_100021650);
              swift_deallocClassInstance();
              sub_100003120(&qword_10002D978, &unk_100021500);
              v63 = swift_allocObject();
              *(v63 + 16) = xmmword_100021470;
              *(v63 + 32) = v77;
              *(v63 + 40) = v60;
              v40 = v70;
              *(v63 + 48) = v70;
              v64 = v77;
              v1 = v60;
              v65 = v70;
              v37 = v71;
              v66 = sub_10001FC14();

              goto LABEL_31;
            }
          }

          v66 = v40;
LABEL_31:
          v67 = swift_unknownObjectWeakLoadStrong();
          if (v67)
          {
            v68 = v67;
            v69 = v66;

            [v68 setAttributedText:v69];

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
    }
  }
}

void sub_100016E30()
{
  v1 = v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v21[4] = *(v1 + 64);
  v21[5] = v2;
  v3 = *(v1 + 112);
  v21[6] = *(v1 + 96);
  v21[7] = v3;
  v4 = *(v1 + 16);
  v21[0] = *v1;
  v21[1] = v4;
  v5 = *(v1 + 48);
  v21[2] = *(v1 + 32);
  v21[3] = v5;
  if (sub_100018298(v21) != 1 && *(v1 + 17) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_11;
    }

    v7 = Strong;
    v8 = sub_100017710();
    [v7 addArrangedSubview:v8];
  }

  v9 = *(v1 + 80);
  v20[4] = *(v1 + 64);
  v20[5] = v9;
  v10 = *(v1 + 112);
  v20[6] = *(v1 + 96);
  v20[7] = v10;
  v11 = *(v1 + 16);
  v20[0] = *v1;
  v20[1] = v11;
  v12 = *(v1 + 48);
  v20[2] = *(v1 + 32);
  v20[3] = v12;
  if (sub_100018298(v20) != 1)
  {
    v13 = *(v1 + 96);
    if (v13)
    {
      v14 = v13;
      v15 = sub_10001797C();
      [v15 setImage:v14 forState:0];

      v16 = OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView;
      v17 = *(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView);
      [v14 size];
      [v17 frame];
      [v17 setFrame:?];

      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v18;
        [v18 addArrangedSubview:*(v0 + v16)];

        return;
      }

      __break(1u);
LABEL_11:
      __break(1u);
    }
  }
}

void sub_100016FEC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_100015AB4(v22);
    v8 = v7;
    memmove(__dst, v7, 0x80uLL);
    if (sub_100018298(__dst) != 1)
    {
      v9 = *(v8 + 9);
      v10 = *(v8 + 10);
      *(v8 + 9) = v3;
      *(v8 + 10) = v2;
      v11 = *(v8 + 88);
      *(v8 + 88) = 1;

      sub_1000182B0(v9, v10, v11);
    }

    v6(v22, 0);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v24._countAndFlagsBits = 0x6E6967617373654DLL;
    v24._object = 0xED00004025203A67;
    v25._object = 0x8000000100022490;
    v25._countAndFlagsBits = 0xD00000000000002FLL;
    v14 = sub_10001F684(v24, v25);
    v16 = v15;
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      sub_10001759C(v13, v14, v16);
      v20 = v19;

      if (v20)
      {
        v21 = sub_10001FA54();
      }

      else
      {
        v21 = 0;
      }

      [v18 setText:v21];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000171C0()
{
  v1 = &v0[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel];
  swift_beginAccess();
  v2 = *(v1 + 5);
  v14 = *(v1 + 4);
  v15 = v2;
  v3 = *(v1 + 7);
  v16 = *(v1 + 6);
  v17 = v3;
  v4 = *(v1 + 1);
  v10 = *v1;
  v11 = v4;
  v5 = *(v1 + 3);
  v12 = *(v1 + 2);
  v13 = v5;
  v18 = v10;
  v19 = v4;
  v20 = v12;
  v21 = v5;
  v22 = v14;
  v23 = v2;
  v24 = v16;
  v25 = v3;
  result = sub_100018298(&v18);
  if (result != 1)
  {
    v9[4] = v22;
    v9[5] = v23;
    v9[6] = v24;
    v9[7] = v25;
    v9[0] = v18;
    v9[1] = v19;
    v9[2] = v20;
    v9[3] = v21;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8[4] = v14;
      v8[5] = v15;
      v8[6] = v16;
      v8[7] = v17;
      v8[0] = v10;
      v8[1] = v11;
      v8[2] = v12;
      v8[3] = v13;
      sub_1000184F4(v8, &v7);
      sub_10001C4E4(v0, v9);
      swift_unknownObjectRelease();
      return sub_1000105E4(&v10, &qword_10002E080, &qword_100021640);
    }
  }

  return result;
}

id sub_1000172F8(char *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for TTRIVibrantCompletedButton(0)) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v2 leadingAnchor];
  v4 = [a1 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:16.0];

  v6 = [a1 contentView];
  [v6 addSubview:v2];

  sub_100003120(&qword_10002D978, &unk_100021500);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100021470;
  *(v7 + 32) = v5;
  v5;
  v8 = [v2 centerYAnchor];
  v9 = [a1 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v7 + 40) = v10;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = objc_opt_self();
    v14 = [v12 leadingAnchor];

    v15 = [v2 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:12.0];

    *(v7 + 48) = v16;
    sub_100010E38(0, &qword_10002DDA8, NSLayoutConstraint_ptr);
    isa = sub_10001FB04().super.isa;

    [v13 activateConstraints:isa];

    [v2 addTarget:a1 action:"didTapCompleteButton:" forControlEvents:0x2000];
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001759C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v13[4] = *(v3 + 64);
  v13[5] = v4;
  v5 = *(v3 + 112);
  v13[6] = *(v3 + 96);
  v13[7] = v5;
  v6 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v6;
  v7 = *(v3 + 48);
  v13[2] = *(v3 + 32);
  v13[3] = v7;
  if (sub_100018298(v13) == 1)
  {
    return 0;
  }

  if (*(v3 + 88) > 1u)
  {
    if (*(v3 + 88) != 2)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (!*(v3 + 88))
  {
LABEL_7:
    sub_100003120(&qword_10002DD88, "x\a");
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100020E90;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100018318();
    *(v12 + 32) = 3026478;
    *(v12 + 40) = 0xE300000000000000;
    return sub_10001FA94();
  }

  v10 = *(v3 + 72);
  v9 = *(v3 + 80);
  sub_100003120(&qword_10002DD88, "x\a");
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100020E90;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100018318();
  *(v11 + 32) = v10;
  *(v11 + 40) = v9;
  sub_100013980(v10, v9, 1);
  return sub_10001FA94();
}

char *sub_100017710()
{
  v1 = OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___flaggedView;
  v2 = *(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___flaggedView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___flaggedView);
  }

  else
  {
    v4 = v0;
    if (qword_10002D950 != -1)
    {
      swift_once();
    }

    v5 = qword_10002E540;
    v6 = type metadata accessor for TTRIVibrantTemplateImageView();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_image] = 0;
    v8 = OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_imageView;
    v9 = objc_allocWithZone(UIImageView);
    v10 = v5;
    *&v7[v8] = [v9 init];
    v11 = [objc_opt_self() effectWithStyle:4];
    v12 = [objc_opt_self() effectForBlurEffect:v11 style:1];

    v25.receiver = v7;
    v25.super_class = v6;
    v13 = objc_msgSendSuper2(&v25, "initWithEffect:", v12);

    v14 = OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_imageView;
    v15 = *&v13[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_imageView];
    v16 = v13;
    [v15 setAutoresizingMask:18];
    [*&v13[v14] setUserInteractionEnabled:0];
    v17 = [v16 contentView];
    [v17 addSubview:*&v13[v14]];

    v18 = v10;
    sub_100013330(v5);

    v19 = *&v13[v14];
    v20 = *&v16[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIVibrantTemplateImageView_image];
    if (v20)
    {
      v21 = [v20 imageWithRenderingMode:2];
    }

    else
    {
      v21 = 0;
    }

    [v19 setImage:v21];

    [v16 invalidateIntrinsicContentSize];
    v22 = *(v4 + v1);
    *(v4 + v1) = v16;
    v3 = v16;

    v2 = 0;
  }

  v23 = v2;
  return v3;
}

id sub_10001797C()
{
  v1 = OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView;
  v2 = *(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView);
  }

  else
  {
    sub_10001F724();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 addTarget:v0 action:"didTapAppLinkButton:" forControlEvents:0x2000];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100017A14()
{
  v1 = (v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel);
  swift_beginAccess();
  v2 = v1[5];
  v12 = v1[4];
  v13 = v2;
  v3 = v1[7];
  v14 = v1[6];
  v15 = v3;
  v4 = v1[1];
  v9[0] = *v1;
  v9[1] = v4;
  v5 = v1[3];
  v10 = v1[2];
  v11 = v5;
  v16 = v9[0];
  v17 = v4;
  v18 = v10;
  v19 = v5;
  v20 = v12;
  v21 = v2;
  v22 = v14;
  v23 = v3;
  result = sub_100018298(&v16);
  if (result != 1)
  {
    v8[4] = v20;
    v8[5] = v21;
    v8[6] = v22;
    v8[7] = v23;
    v8[0] = v16;
    v8[1] = v17;
    v8[2] = v18;
    v8[3] = v19;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100018484(v9, v7);
      sub_10001DCE0(v8);
      swift_unknownObjectRelease();
      return sub_1000105E4(v9, &qword_10002E080, &qword_100021640);
    }
  }

  return result;
}

uint64_t sub_100017B28(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_10001FD44();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_1000105E4(v9, &unk_10002DDB0, &qword_100021510);
}

id sub_100017BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel];
  sub_10001846C(v17);
  v8 = v17[5];
  *(v7 + 4) = v17[4];
  *(v7 + 5) = v8;
  v9 = v17[7];
  *(v7 + 6) = v17[6];
  *(v7 + 7) = v9;
  v10 = v17[1];
  *v7 = v17[0];
  *(v7 + 1) = v10;
  v11 = v17[3];
  *(v7 + 2) = v17[2];
  *(v7 + 3) = v11;
  *&v3[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v3[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v3[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___flaggedView] = 0;
  *&v3[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView] = 0;
  if (a3)
  {
    v13 = sub_10001FA54();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "initWithStyle:reuseIdentifier:", a1, v13);

  return v14;
}

id sub_100017D74(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel];
  sub_10001846C(v13);
  v5 = v13[5];
  *(v4 + 4) = v13[4];
  *(v4 + 5) = v5;
  v6 = v13[7];
  *(v4 + 6) = v13[6];
  *(v4 + 7) = v6;
  v7 = v13[1];
  *v4 = v13[0];
  *(v4 + 1) = v7;
  v8 = v13[3];
  *(v4 + 2) = v13[2];
  *(v4 + 3) = v8;
  *&v1[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9 = &v1[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v1[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___flaggedView] = 0;
  *&v1[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView] = 0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);

  if (v10)
  {
  }

  return v10;
}

void sub_100017EE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel + 80);
  v5[4] = *(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel + 64);
  v5[5] = v1;
  v2 = *(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel + 112);
  v5[6] = *(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel + 96);
  v5[7] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel + 16);
  v5[0] = *(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel);
  v5[1] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel + 48);
  v5[2] = *(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel + 32);
  v5[3] = v4;
  sub_1000105E4(v5, &qword_10002E080, &qword_100021640);
  sub_100018444(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_delegate);
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  sub_1000183C4(*(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton), *(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton + 8));
}

void *_s27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCellC21CompletedButtonHolderVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

void destroy for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t assignWithCopy for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100018298(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1000182B0(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_100013A18(a1, a2, a3);
  }
}

uint64_t sub_1000182C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100018318()
{
  result = qword_10002DD90;
  if (!qword_10002DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DD90);
  }

  return result;
}

unint64_t sub_10001836C()
{
  result = qword_10002DB30;
  if (!qword_10002DB30)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DB30);
  }

  return result;
}

void sub_1000183C4(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id sub_100018404(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

double sub_10001846C(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100018484(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003120(&qword_10002E080, &qword_100021640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100018554(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_10001FEC4();

    if (v4)
    {
      sub_100010E38(0, &unk_10002E040, REMReminder_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1000042AC(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_100018618()
{
  v0 = sub_10001F9D4();
  sub_100013868(v0, qword_10002DDC0);
  v1 = sub_1000138CC(v0, qword_10002DDC0);
  if (qword_10002D938 != -1)
  {
    swift_once();
  }

  v2 = sub_1000138CC(v0, qword_10002E518);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000186E0()
{
  v0 = objc_allocWithZone(CNContactStore);

  return [v0 init];
}

void *sub_100018718(uint64_t a1)
{
  v2 = type metadata accessor for TTRIIntentsSnippetViewController.ViewModel(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = (&v54 - v7);
  v9 = type metadata accessor for TTRIIntentsSnippetSection(0);
  __chkstk_darwin(v9);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = _swiftEmptyArrayStorage;
  v74 = _swiftEmptyArrayStorage;
  v59 = *(a1 + 16);
  if (!v59)
  {
    return v13;
  }

  v14 = 0;
  v58 = *(v9 + 24);
  v57 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v64 = OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_cachedReminders;
  v56 = *(v10 + 72);
  v15 = 1;
  v63 = v2;
  v55 = v8;
  v54 = v9;
  v60 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v61 = v14;
    sub_10001F2F4(v57 + v56 * v14, v12, type metadata accessor for TTRIIntentsSnippetSection);
    v73 = _swiftEmptyArrayStorage;
    v17 = v12[1];
    if (v17)
    {
      v18 = *v12;
      v19 = sub_100003120(&qword_10002DF58, &unk_100021598);
      v20 = *(v19 + 48);
      v21 = v12;
      v22 = *(v19 + 64);
      *v8 = v18;
      v8[1] = v17;
      sub_100010484(v21 + *(v9 + 20), v8 + v20, &qword_10002DF60, &qword_100020EB0);
      *(v8 + v22) = v15 & 1;
      swift_storeEnumTagMultiPayload();

      v23 = sub_100003A2C(0, 1, 1, _swiftEmptyArrayStorage);
      v25 = v23[2];
      v24 = v23[3];
      if (v25 >= v24 >> 1)
      {
        v23 = sub_100003A2C((v24 > 1), v25 + 1, 1, v23);
      }

      v23[2] = v25 + 1;
      sub_10001F290(v8, v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v25);
      v73 = v23;
      v12 = v60;
    }

    v26 = *(v12 + v58);
    v27 = v26 >> 62;
    if (v26 >> 62)
    {
      break;
    }

    v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v69 = v28 - 1;
    if (v28)
    {
      goto LABEL_11;
    }

LABEL_4:
    v14 = v61 + 1;
    sub_1000033D8(v13);
    v16 = v73;
    sub_10001F128(v12, type metadata accessor for TTRIIntentsSnippetSection);
    sub_1000033D8(v16);
    v15 = 0;
    v13 = _swiftEmptyArrayStorage;
    if (v14 == v59)
    {
      return v74;
    }
  }

  result = sub_10001FEE4();
  v69 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_47;
  }

  v28 = sub_10001FEE4();
  if (!v28)
  {
    goto LABEL_4;
  }

LABEL_11:
  v68 = v26;
  v72 = _swiftEmptyArrayStorage;
  result = sub_100009660(0, v28 & ~(v28 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v13 = v72;
    v30 = v68;
    if (v27)
    {
      v31 = sub_10001FEE4();
    }

    else
    {
      v31 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = swift_beginAccess();
    if (v31 >= 1)
    {
      v32 = v30;
      v33 = 0;
      v67 = v30 & 0xC000000000000001;
      v62 = v30 & 0xFFFFFFFFFFFFFF8;
      v34 = v28 - 1;
      v66 = v31;
      do
      {
        if (v67)
        {
          v35 = sub_10001FE14();
        }

        else
        {
          if (v33 >= *(v62 + 16))
          {
            goto LABEL_45;
          }

          v35 = *(v32 + 8 * v33 + 32);
        }

        v36 = v35;
        v37 = [v35 parentReminder];
        v38 = v37;
        if (v37)
        {
          v39 = [v37 objectID];
          v40 = *(v65 + v64);
          if ((v40 & 0xC000000000000001) != 0)
          {
            v41 = v39;

            v42 = sub_10001FEC4();
            if (v42)
            {
              v70 = v42;
              sub_100010E38(0, &unk_10002E040, REMReminder_ptr);
              swift_dynamicCast();
              v43 = *&v71[0];
LABEL_28:

              if (v43)
              {

                LODWORD(v38) = 1;
                goto LABEL_32;
              }
            }

            else
            {
            }

            LODWORD(v38) = 0;
            goto LABEL_32;
          }

          if (*(v40 + 16))
          {
            v41 = v39;

            v44 = sub_1000042AC(v41);
            if (v45)
            {
              v43 = *(*(v40 + 56) + 8 * v44);
              goto LABEL_28;
            }

            LODWORD(v38) = 0;
          }

          else
          {

            LODWORD(v38) = 0;
          }
        }

LABEL_32:
        v46 = v69 == v33;
        v47 = v36;
        sub_1000149C4(v47, v46, v38, v71);
        v48 = v71[5];
        *(v6 + 72) = v71[4];
        *(v6 + 88) = v48;
        v49 = v71[7];
        *(v6 + 104) = v71[6];
        *(v6 + 120) = v49;
        v50 = v71[1];
        *(v6 + 8) = v71[0];
        *(v6 + 24) = v50;
        v51 = v71[3];
        *(v6 + 40) = v71[2];
        *v6 = v47;
        *(v6 + 56) = v51;
        swift_storeEnumTagMultiPayload();
        v72 = v13;
        v53 = v13[2];
        v52 = v13[3];
        if (v53 >= v52 >> 1)
        {
          sub_100009660((v52 > 1), v53 + 1, 1);
          v13 = v72;
        }

        v13[2] = v53 + 1;
        result = sub_10001F290(v6, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v53);
        if (v34 == v33)
        {
          v8 = v55;
          v9 = v54;
          v12 = v60;
          goto LABEL_4;
        }

        ++v33;
        v32 = v68;
      }

      while (v66 != v33);
    }

    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

char *sub_100018FE0(uint64_t a1, __int128 *a2)
{
  v3 = a2[5];
  v48 = a2[4];
  v49 = v3;
  v4 = a2[7];
  v50 = a2[6];
  v51 = v4;
  v5 = a2[1];
  v44 = *a2;
  v45 = v5;
  v6 = a2[3];
  v46 = a2[2];
  v47 = v6;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_10001FA54();
    isa = sub_10001F5C4().super.isa;
    v11 = [v8 dequeueReusableCellWithIdentifier:v9 forIndexPath:isa];

    type metadata accessor for TTRIIntentsSnippetReminderViewCell();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      *(v12 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_delegate + 8) = &off_100029230;
      swift_unknownObjectWeakAssign();
      v39 = v48;
      v40 = v49;
      v41 = v50;
      v42 = v51;
      v35 = v44;
      v36 = v45;
      v37 = v46;
      v38 = v47;
      nullsub_2();
      v14 = &v13[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel];
      swift_beginAccess();
      v15 = *v14;
      v16 = *(v14 + 1);
      v17 = *(v14 + 3);
      v43[2] = *(v14 + 2);
      v43[3] = v17;
      v43[0] = v15;
      v43[1] = v16;
      v18 = *(v14 + 4);
      v19 = *(v14 + 5);
      v20 = *(v14 + 7);
      v43[6] = *(v14 + 6);
      v43[7] = v20;
      v43[4] = v18;
      v43[5] = v19;
      v21 = v51;
      v23 = v48;
      v22 = v49;
      *(v14 + 6) = v50;
      *(v14 + 7) = v21;
      *(v14 + 4) = v23;
      *(v14 + 5) = v22;
      v24 = v35;
      v25 = v36;
      v26 = v38;
      *(v14 + 2) = v37;
      *(v14 + 3) = v26;
      *v14 = v24;
      *(v14 + 1) = v25;
      sub_1000184F4(a2, v34);
      sub_1000105E4(v43, &qword_10002E080, &qword_100021640);
      sub_1000156E8();
    }

    else
    {
      if (qword_10002D958 != -1)
      {
        swift_once();
      }

      v27 = sub_10001F9D4();
      sub_1000138CC(v27, qword_10002DDC0);
      v28 = v11;
      v29 = sub_10001F9C4();
      v30 = sub_10001FBD4();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v28;
        *v32 = v28;
        v33 = v28;
        _os_log_impl(&_mh_execute_header, v29, v30, "Expected to dequeue reminder cell, but got %@", v31, 0xCu);
        sub_1000105E4(v32, &qword_10002E038, &qword_100021620);
      }

      v13 = [objc_allocWithZone(UITableViewCell) init];
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *sub_1000192E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_10001FA54();
    isa = sub_10001F5C4().super.isa;
    v11 = [v8 dequeueReusableCellWithIdentifier:v9 forIndexPath:isa];

    type metadata accessor for TTRIIntentsSnippetHeaderCell();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = (v12 + OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_viewModel);
      *v13 = a2;
      v13[1] = a3;
      v14 = v12;

      sub_1000151B0();
      v14[OBJC_IVAR____TtC27RemindersIntentsUIExtension28TTRIIntentsSnippetHeaderCell_isFirst] = a4 & 1;
      sub_1000151B0();
    }

    else
    {
      if (qword_10002D958 != -1)
      {
        swift_once();
      }

      v15 = sub_10001F9D4();
      sub_1000138CC(v15, qword_10002DDC0);
      v16 = v11;
      v17 = sub_10001F9C4();
      v18 = sub_10001FBD4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v16;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v17, v18, "Expected to dequeue header cell, but got %@", v19, 0xCu);
        sub_1000105E4(v20, &qword_10002E038, &qword_100021620);
      }

      v14 = [objc_allocWithZone(UITableViewCell) init];
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100019530()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for TTRIIntentsSnippetViewController();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = Strong;
  [Strong setEstimatedRowHeight:UITableViewAutomaticDimension];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [objc_opt_self() effectWithStyle:4];
  v6 = [objc_opt_self() effectForBlurEffect:v5 style:5];

  [v4 setSeparatorEffect:v6];
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTableFooterView:v9];

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setTableHeaderView:v12];

  v13 = swift_unknownObjectWeakLoadStrong();
  [v13 reloadData];

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    [v14 invalidateIntrinsicContentSize];
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    [v16 layoutIfNeeded];
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    [v18 setInsetsLayoutMarginsFromSafeArea:1];

    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1000198B0(unint64_t a1)
{
  v2 = sub_10001DBE8(_swiftEmptyArrayStorage);
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10001FEE4())
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_10001FE14();
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v7 = *(a1 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = [v7 remObjectID];
      if ((v2 & 0xC000000000000001) != 0)
      {
        if (v2 >= 0)
        {
          v2 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v11 = v8;
        v12 = sub_10001FEB4();
        if (__OFADD__(v12, 1))
        {
          goto LABEL_30;
        }

        v2 = sub_10001D484(v2, v12 + 1);
      }

      else
      {
        v13 = v8;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_1000042AC(v10);
      v17 = *(v2 + 16);
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_29;
      }

      v21 = v16;
      if (*(v2 + 24) < v20)
      {
        sub_100005018(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_1000042AC(v10);
        if ((v21 & 1) != (v22 & 1))
        {
          sub_100010E38(0, &qword_10002DA18, REMObjectID_ptr);
          result = sub_10001FF94();
          __break(1u);
          return result;
        }

LABEL_21:
        if (v21)
        {
          goto LABEL_4;
        }

        goto LABEL_22;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v25 = v15;
      sub_10001D85C();
      v15 = v25;
      if (v21)
      {
LABEL_4:
        v5 = *(v2 + 56);
        v6 = *(v5 + 8 * v15);
        *(v5 + 8 * v15) = v8;

        goto LABEL_5;
      }

LABEL_22:
      *(v2 + 8 * (v15 >> 6) + 64) |= 1 << v15;
      *(*(v2 + 48) + 8 * v15) = v10;
      *(*(v2 + 56) + 8 * v15) = v8;

      v23 = *(v2 + 16);
      v19 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v19)
      {
        goto LABEL_31;
      }

      *(v2 + 16) = v24;
LABEL_5:
      ++v4;
      if (v9 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:
  v26 = OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_cachedReminders;
  swift_beginAccess();
  *(v28 + v26) = v2;
}

void sub_100019B3C(void *a1)
{
  if (!a1)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_1000105E4(&v18, &qword_10002E058, &qword_100021628);
    goto LABEL_20;
  }

  if (![a1 intentResponse] || (sub_100010E38(0, &unk_10002E070, INIntentResponse_ptr), sub_100003120(&qword_10002E068, &unk_100021630), (swift_dynamicCast() & 1) == 0))
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_11;
  }

  if (!*(&v19 + 1))
  {
LABEL_11:
    sub_1000105E4(&v18, &qword_10002E058, &qword_100021628);
    if ([a1 intent])
    {
      sub_100010E38(0, &qword_10002E060, INIntent_ptr);
      sub_100003120(&qword_10002E068, &unk_100021630);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          sub_10001F224(&v18, v21);
          if (qword_10002D958 != -1)
          {
            swift_once();
          }

          v9 = sub_10001F9D4();
          sub_1000138CC(v9, qword_10002DDC0);
          v10 = a1;
          v4 = sub_10001F9C4();
          v11 = sub_10001FBB4();

          if (!os_log_type_enabled(v4, v11))
          {
            goto LABEL_23;
          }

          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *v12 = 138412290;
          v14 = [v10 intent];
          *(v12 + 4) = v14;
          *v13 = v14;
          _os_log_impl(&_mh_execute_header, v4, v11, "getting tasks from {intent: %@}", v12, 0xCu);
          sub_1000105E4(v13, &qword_10002E038, &qword_100021620);

          goto LABEL_18;
        }

LABEL_21:
        sub_1000105E4(&v18, &qword_10002E058, &qword_100021628);
        return;
      }
    }

LABEL_20:
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_21;
  }

  sub_10001F224(&v18, v21);
  if (qword_10002D958 != -1)
  {
    swift_once();
  }

  v2 = sub_10001F9D4();
  sub_1000138CC(v2, qword_10002DDC0);
  v3 = a1;
  v4 = sub_10001F9C4();
  v5 = sub_10001FBB4();
  if (!os_log_type_enabled(v4, v5))
  {

    goto LABEL_23;
  }

  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  *v6 = 138412290;
  v8 = [v3 intentResponse];

  if (v8)
  {
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "getting tasks from {response: %@}", v6, 0xCu);
    sub_1000105E4(v7, &qword_10002E038, &qword_100021620);

LABEL_18:

LABEL_23:

    v15 = v22;
    v16 = v23;
    sub_10001F23C(v21, v22);
    v17 = (*(v16 + 8))(v15, v16);
    sub_100019F90(v17);

    sub_10001F188(v21);
    return;
  }

  __break(1u);
}

void *sub_100019F90(unint64_t a1)
{
  v2 = v1;
  v28 = _swiftEmptyArrayStorage;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_24:
    v5 = sub_10001FEE4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = sub_10001FE14();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_23;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v10 = sub_10001FC74();

    ++v6;
    if (v10)
    {
      sub_10001FAF4();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10001FB24();
      }

      sub_10001FB44();
      v6 = v9;
    }
  }

  v11 = *(v2 + OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_store);
  sub_100010E38(0, &qword_10002DA18, REMObjectID_ptr);
  isa = sub_10001FB04().super.isa;

  v28 = 0;
  v13 = [v11 fetchRemindersWithObjectIDs:isa error:{&v28, 0}];

  v14 = v28;
  if (v13)
  {
    sub_100010E38(0, &unk_10002E040, REMReminder_ptr);
    sub_10001F1D4(&qword_10002E050, &qword_10002DA18, REMObjectID_ptr);
    v15 = sub_10001FA04();
    v16 = v14;

    v17 = sub_10001D288(v15);
  }

  else
  {
    v18 = v28;
    sub_10001F4A4();

    swift_willThrow();
    if (qword_10002D958 != -1)
    {
      swift_once();
    }

    v19 = sub_10001F9D4();
    sub_1000138CC(v19, qword_10002DDC0);
    swift_errorRetain();
    v20 = sub_10001F9C4();
    v21 = sub_10001FBC4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = sub_10001FFA4();
      v26 = sub_10001CCE0(v24, v25, &v28);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to fetch reminders from INTasks {error: %s}", v22, 0xCu);
      sub_10001F188(v23);
    }

    return _swiftEmptyArrayStorage;
  }

  return v17;
}

id sub_10001A34C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_cachedReminders;
  swift_beginAccess();
  v5 = *(v2 + v4);

  v6 = sub_100018554(a1, v5);

  if (!v6)
  {
    if (qword_10002D958 != -1)
    {
      swift_once();
    }

    v7 = sub_10001F9D4();
    sub_1000138CC(v7, qword_10002DDC0);
    v8 = a1;
    v9 = sub_10001F9C4();
    v10 = sub_10001FBB4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "Dont have id in cache, fetching %@", v11, 0xCu);
      sub_1000105E4(v12, &qword_10002E038, &qword_100021620);
    }

    v14 = *(v2 + OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_store);
    v25 = 0;
    v6 = [v14 fetchReminderWithObjectID:v8 error:&v25];
    v15 = v25;
    if (!v6)
    {
      v16 = v15;
      sub_10001F4A4();

      swift_willThrow();
      swift_errorRetain();
      v17 = sub_10001F9C4();
      v18 = sub_10001FBC4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25 = v20;
        *v19 = 136315138;
        swift_getErrorValue();
        v21 = sub_10001FFA4();
        v23 = sub_10001CCE0(v21, v22, &v25);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to fetch reminder by id {error: %s}", v19, 0xCu);
        sub_10001F188(v20);
      }

      else
      {
      }

      return 0;
    }
  }

  return v6;
}

id sub_10001A668(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_store;
  *&v4[v7] = [objc_allocWithZone(REMStore) initUserInteractive:1];
  v8 = OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_contactsProvider;
  sub_100010E38(0, &qword_10002E0A0, OS_dispatch_queue_ptr);
  sub_10001FC04();
  sub_10001F8F4();
  sub_10001F8E4();
  sub_10001F924();
  swift_allocObject();
  *&v4[v8] = sub_10001F904();
  v9 = OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_timeProvider;
  sub_10001F6B4();
  swift_allocObject();
  *&v4[v9] = sub_10001F6A4();
  *&v4[OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_viewModel] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_maxContentHeight] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_cachedReminders;
  *&v4[v10] = sub_10001DBE8(_swiftEmptyArrayStorage);
  if (a2)
  {
    v11 = sub_10001FA54();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for TTRIIntentsSnippetViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

id sub_10001A884(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_store;
  *&v2[v4] = [objc_allocWithZone(REMStore) initUserInteractive:1];
  v5 = OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_contactsProvider;
  sub_100010E38(0, &qword_10002E0A0, OS_dispatch_queue_ptr);
  sub_10001FC04();
  sub_10001F8F4();
  sub_10001F8E4();
  sub_10001F924();
  swift_allocObject();
  *&v2[v5] = sub_10001F904();
  v6 = OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_timeProvider;
  sub_10001F6B4();
  swift_allocObject();
  *&v2[v6] = sub_10001F6A4();
  *&v2[OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_viewModel] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_maxContentHeight] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_cachedReminders;
  *&v2[v7] = sub_10001DBE8(_swiftEmptyArrayStorage);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for TTRIIntentsSnippetViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

id sub_10001AA3C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTRIIntentsSnippetViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10001AB20(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_100003120(&qword_10002DF60, &qword_100020EB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v38 = [a2 intent];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v9 = sub_10001C294(a1);
    v10 = sub_100018718(v9);

    *(v3 + OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_viewModel) = v10;

    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong reloadData];

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      [v12 invalidateIntrinsicContentSize];
    }

    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v37 = v14;
      [v14 layoutIfNeeded];

      v15 = v37;
LABEL_17:

      return;
    }

LABEL_16:
    v15 = v38;
    goto LABEL_17;
  }

  v16 = sub_10001E9C4(a2);
  if (v16 && (v17 = v16, v18 = sub_10001FB94(), v17, (v18 & 1) == 0))
  {
    v31 = sub_1000108B8(a1);
    v32 = sub_100018718(v31);

    *(v3 + OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_viewModel) = v32;

    v33 = swift_unknownObjectWeakLoadStrong();
    [v33 reloadData];

    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = v34;
      [v34 invalidateIntrinsicContentSize];
    }

    v36 = swift_unknownObjectWeakLoadStrong();
    if (v36)
    {
      v38 = v36;
      [v36 layoutIfNeeded];
      goto LABEL_16;
    }
  }

  else
  {
    sub_100003120(&qword_10002E030, &unk_100020ED0);
    v19 = (type metadata accessor for TTRIIntentsSnippetSection(0) - 8);
    v20 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100020E90;
    v22 = (v21 + v20);
    v23 = sub_10001F974();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    *v22 = 0;
    v22[1] = 0;
    sub_100010484(v8, v22 + v19[7], &qword_10002DF60, &qword_100020EB0);
    v24 = sub_10000C328(a1, 0, 0);
    sub_1000105E4(v8, &qword_10002DF60, &qword_100020EB0);
    *(v22 + v19[8]) = v24;
    v25 = sub_100018718(v21);
    swift_setDeallocating();
    sub_10001F128(v22, type metadata accessor for TTRIIntentsSnippetSection);
    swift_deallocClassInstance();
    *(v3 + OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_viewModel) = v25;

    v26 = swift_unknownObjectWeakLoadStrong();
    [v26 reloadData];

    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      [v27 invalidateIntrinsicContentSize];
    }

    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = v29;
      [v29 layoutIfNeeded];
    }
  }
}

double sub_10001AF6C(char a1, double a2, double a3, double a4, CGFloat a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v11 = Strong;
  [Strong contentSize];
  [v11 setFrame:{0.0, 0.0, a4, a5}];
  sub_10001EAAC(v11, a1 & 1, a5);
  if (*(v5 + OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_maxContentHeight) > v12)
  {
    v13 = *(v5 + OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_maxContentHeight);
  }

  else
  {
    v13 = v12;
  }

  *(v5 + OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_maxContentHeight) = v13;
  if (qword_10002D958 != -1)
  {
    swift_once();
  }

  v14 = sub_10001F9D4();
  sub_1000138CC(v14, qword_10002DDC0);
  v15 = sub_10001F9C4();
  v16 = sub_10001FBB4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136446722;
    v25 = v18;
    type metadata accessor for CGSize(0);
    sub_10001FE94();
    v19 = sub_10001CCE0(0, 0xE000000000000000, &v25);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2082;
    v20 = sub_10001FB54();
    v22 = sub_10001CCE0(v20, v21, &v25);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2082;
    sub_10001FE94();
    v23 = sub_10001CCE0(0, 0xE000000000000000, &v25);

    *(v17 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "preferred content size {originalContentSize: %{public}s, tableContentHeight: %{public}s, preferredContentSize: %{public}s}", v17, 0x20u);
    swift_arrayDestroy();
  }

  return a2;
}

char *sub_10001B42C(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = &v18[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      v7 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v7;
      v8 = a2[2];
      *(a1 + 2) = v8;
      *(a1 + 6) = *(a2 + 6);
      v9 = a2[5];
      *(a1 + 4) = a2[4];
      *(a1 + 5) = v9;
      v10 = a2[7];
      *(a1 + 6) = a2[6];
      *(a1 + 7) = v10;
      v11 = a2[9];
      *(a1 + 8) = a2[8];
      *(a1 + 9) = v11;
      v12 = *(a2 + 96);
      v13 = v6;
      v14 = v7;
      v15 = v8;

      if (v12 == 255)
      {
        *(a1 + 5) = *(a2 + 5);
        a1[96] = *(a2 + 96);
      }

      else
      {
        v16 = a2[10];
        v17 = a2[11];
        sub_100013980(v16, v17, v12);
        *(a1 + 10) = v16;
        *(a1 + 11) = v17;
        a1[96] = v12;
      }

      v25 = a2[13];
      *(a1 + 13) = v25;
      a1[112] = *(a2 + 112);
      v26 = a2[15];
      v27 = a2[16];
      *(a1 + 15) = v26;
      *(a1 + 16) = v27;
      v28 = v25;
    }

    else
    {
      v19 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v19;

      v20 = sub_100003120(&qword_10002DF58, &unk_100021598);
      v21 = *(v20 + 48);
      v22 = sub_10001F974();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(a2 + v21, 1, v22))
      {
        v24 = sub_100003120(&qword_10002DF60, &qword_100020EB0);
        memcpy(&a1[v21], a2 + v21, *(*(v24 - 8) + 64));
      }

      else
      {
        (*(v23 + 16))(&a1[v21], a2 + v21, v22);
        (*(v23 + 56))(&a1[v21], 0, 1, v22);
      }

      a1[*(v20 + 64)] = *(a2 + *(v20 + 64));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10001B6B0(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v3 = *(a1 + 96);
    if (v3 != 255)
    {
      sub_100013A18(*(a1 + 80), *(a1 + 88), v3);
    }
  }

  else
  {

    v5 = *(sub_100003120(&qword_10002DF58, &unk_100021598) + 48);
    v6 = sub_10001F974();
    v8 = *(v6 - 8);
    result = (*(v8 + 48))(a1 + v5, 1, v6);
    if (!result)
    {
      v7 = *(v8 + 8);

      return v7(a1 + v5, v6);
    }
  }

  return result;
}

uint64_t sub_10001B814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v6;
    v7 = *(a2 + 16);
    *(a1 + 16) = v7;
    *(a1 + 24) = *(a2 + 24);
    v8 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v8;
    v9 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v9;
    v10 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = v10;
    v11 = *(a2 + 96);
    v12 = v5;
    v13 = v6;
    v14 = v7;

    if (v11 == 255)
    {
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      v15 = *(a2 + 80);
      v16 = *(a2 + 88);
      sub_100013980(v15, v16, v11);
      *(a1 + 80) = v15;
      *(a1 + 88) = v16;
      *(a1 + 96) = v11;
    }

    v23 = *(a2 + 104);
    *(a1 + 104) = v23;
    *(a1 + 112) = *(a2 + 112);
    v24 = *(a2 + 120);
    v25 = *(a2 + 128);
    *(a1 + 120) = v24;
    *(a1 + 128) = v25;
    v26 = v23;
  }

  else
  {
    v17 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v17;

    v18 = sub_100003120(&qword_10002DF58, &unk_100021598);
    v19 = *(v18 + 48);
    v20 = sub_10001F974();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(a2 + v19, 1, v20))
    {
      v22 = sub_100003120(&qword_10002DF60, &qword_100020EB0);
      memcpy((a1 + v19), (a2 + v19), *(*(v22 - 8) + 64));
    }

    else
    {
      (*(v21 + 16))(a1 + v19, a2 + v19, v20);
      (*(v21 + 56))(a1 + v19, 0, 1, v20);
    }

    *(a1 + *(v18 + 64)) = *(a2 + *(v18 + 64));
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_10001BA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_10001F128(a1, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *a2;
      *a1 = *a2;
      v6 = *(a2 + 8);
      *(a1 + 8) = v6;
      v7 = *(a2 + 16);
      *(a1 + 16) = v7;
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 25) = *(a2 + 25);
      *(a1 + 26) = *(a2 + 26);
      *(a1 + 27) = *(a2 + 27);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      v8 = *(a2 + 96);
      v9 = v5;
      v10 = v6;
      v11 = v7;

      if (v8 == 255)
      {
        v19 = *(a2 + 80);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 80) = v19;
      }

      else
      {
        v12 = *(a2 + 80);
        v13 = *(a2 + 88);
        sub_100013980(v12, v13, v8);
        *(a1 + 80) = v12;
        *(a1 + 88) = v13;
        *(a1 + 96) = v8;
      }

      v20 = *(a2 + 104);
      *(a1 + 104) = v20;
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      v21 = v20;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);

      v14 = sub_100003120(&qword_10002DF58, &unk_100021598);
      v15 = *(v14 + 48);
      v16 = sub_10001F974();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(a2 + v15, 1, v16))
      {
        v18 = sub_100003120(&qword_10002DF60, &qword_100020EB0);
        memcpy((a1 + v15), (a2 + v15), *(*(v18 - 8) + 64));
      }

      else
      {
        (*(v17 + 16))(a1 + v15, a2 + v15, v16);
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
      }

      *(a1 + *(v14 + 64)) = *(a2 + *(v14 + 64));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t type metadata accessor for TTRIIntentsSnippetViewController.ViewModel(uint64_t a1)
{
  result = qword_10002DFD8;
  if (!qword_10002DFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_OWORD *sub_10001BD2C(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
    v8 = sub_100003120(&qword_10002DF58, &unk_100021598);
    v9 = *(v8 + 48);
    v10 = sub_10001F974();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2 + v9, 1, v10))
    {
      v12 = sub_100003120(&qword_10002DF60, &qword_100020EB0);
      memcpy(a1 + v9, a2 + v9, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 32))(a1 + v9, a2 + v9, v10);
      (*(v11 + 56))(a1 + v9, 0, 1, v10);
    }

    *(a1 + *(v8 + 64)) = *(a2 + *(v8 + 64));
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *sub_10001BED4(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_10001F128(a1, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v8 = sub_100003120(&qword_10002DF58, &unk_100021598);
    v9 = *(v8 + 48);
    v10 = sub_10001F974();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(&a2[v9], 1, v10))
    {
      v12 = sub_100003120(&qword_10002DF60, &qword_100020EB0);
      memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 32))(&a1[v9], &a2[v9], v10);
      (*(v11 + 56))(&a1[v9], 0, 1, v10);
    }

    a1[*(v8 + 64)] = a2[*(v8 + 64)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void sub_10001C104(uint64_t a1)
{
  sub_100011958(319);
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v2[4] = v2;
    v2[5] = &unk_1000215E8;
    swift_initEnumMetadataMultiPayload();
  }
}

void sub_10001C1B0(char a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5)
{
  if (a2)
  {
    v7 = a5.n128_u64[0];
    v8 = a4.n128_u64[0];
    sub_100010E38(0, &qword_10002E018, INParameter_ptr);
    sub_10001F1D4(&qword_10002E020, &qword_10002E018, INParameter_ptr);
    v9.super.isa = sub_10001FB64().super.isa;
    a4.n128_u64[0] = v8;
    a5.n128_u64[0] = v7;
    isa = v9.super.isa;
  }

  else
  {
    isa = 0;
  }

  v11 = isa;
  (*(a3 + 16))(a3, a1 & 1, a4, a5);
}

void *sub_10001C294(unint64_t a1)
{
  v3 = sub_100003120(&qword_10002DF60, &qword_100020EB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-1] - v4;
  v6 = *(v1 + OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_timeProvider);
  v15[3] = sub_10001F6B4();
  v15[4] = &protocol witness table for TTRCurrentTimeProvider;
  v15[0] = v6;

  LOBYTE(v6) = sub_10001FC34();
  sub_10001F188(v15);
  if (v6)
  {
    return sub_10000274C(a1);
  }

  if (sub_10001FC64())
  {
    return sub_100001E30(a1);
  }

  if (sub_10001FC44())
  {
    return sub_10000CBD4(a1);
  }

  if (sub_10001FC54())
  {
    return sub_1000108B8(a1);
  }

  sub_100003120(&qword_10002E030, &unk_100020ED0);
  v8 = (type metadata accessor for TTRIIntentsSnippetSection(0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100020E90;
  v11 = (v10 + v9);
  v12 = sub_10001F974();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  *v11 = 0;
  v11[1] = 0;
  sub_100010484(v5, v10 + v9 + v8[7], &qword_10002DF60, &qword_100020EB0);
  v13 = sub_10000C328(a1, 0, 0);
  sub_1000105E4(v5, &qword_10002DF60, &qword_100020EB0);
  result = v10;
  *(v11 + v8[8]) = v13;
  return result;
}

void sub_10001C4E4(char *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = sub_10001A34C(*a2);
  if (v5)
  {
    v44 = v5;
    swift_beginAccess();
    v6 = sub_10001D338(v4);
    swift_endAccess();

    v7 = *(a2 + 16);
    v8 = *(a2 + 8);
    v9 = *(a2 + 17);
    v10 = *(a2 + 18);
    v11 = *(a2 + 19);
    v12 = *(a2 + 24);
    v14 = *(a2 + 64);
    v13 = *(a2 + 72);
    v43 = *(a2 + 96);
    v15 = *(a2 + 104);
    v16 = *(a2 + 112);
    v41 = *(a2 + 80);
    v42 = *(a2 + 120);
    *&v47 = v4;
    *(&v47 + 1) = v8;
    LOBYTE(v48) = (v7 & 1) == 0;
    BYTE1(v48) = v9;
    BYTE2(v48) = v10;
    BYTE3(v48) = v11;
    *(&v48 + 1) = v12;
    v17 = *(a2 + 88);
    v40 = *(a2 + 48);
    v49 = *(a2 + 32);
    v50 = v40;
    *&v51 = v14;
    *(&v51 + 1) = v13;
    *&v52 = v41;
    BYTE8(v52) = v17;
    *&v53 = v43;
    BYTE8(v53) = v15;
    *&v54 = v16;
    *(&v54 + 1) = v42;
    v61 = v53;
    v62 = v54;
    v59 = v51;
    v60 = v52;
    v57 = v49;
    v58 = v40;
    v55 = v47;
    v56 = v48;
    nullsub_2();
    v18 = &a1[OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel];
    swift_beginAccess();
    v19 = *(v18 + 5);
    v63[4] = *(v18 + 4);
    v63[5] = v19;
    v20 = *(v18 + 7);
    v63[6] = *(v18 + 6);
    v63[7] = v20;
    v21 = *(v18 + 1);
    v63[0] = *v18;
    v63[1] = v21;
    v22 = *(v18 + 2);
    v23 = *(v18 + 3);
    *(v18 + 2) = v49;
    *(v18 + 3) = v40;
    v24 = v56;
    *v18 = v55;
    *(v18 + 1) = v24;
    v25 = v62;
    *(v18 + 6) = v61;
    *(v18 + 7) = v25;
    v26 = v60;
    *(v18 + 4) = v59;
    *(v18 + 5) = v26;
    v63[2] = v22;
    v63[3] = v23;

    v27 = v4;
    v28 = v8;

    sub_10001F3B0(v13, v41, v17);

    v29 = v43;
    sub_1000184F4(&v47, v46);
    sub_1000105E4(v63, &qword_10002E080, &qword_100021640);
    sub_1000156E8();
    sub_10001F35C(&v47);
    v30 = sub_10001F674();
    __chkstk_darwin(v30);
    v31 = swift_allocObject();
    v32 = *(a2 + 80);
    *(v31 + 88) = *(a2 + 64);
    *(v31 + 104) = v32;
    v33 = *(a2 + 112);
    *(v31 + 120) = *(a2 + 96);
    *(v31 + 136) = v33;
    v34 = *(a2 + 16);
    *(v31 + 24) = *a2;
    *(v31 + 40) = v34;
    v35 = *(a2 + 48);
    *(v31 + 56) = *(a2 + 32);
    *(v31 + 16) = a1;
    *(v31 + 72) = v35;
    v36 = a1;
    sub_1000184F4(a2, v46);
    sub_10001F654();
  }

  else
  {
    if (qword_10002D958 != -1)
    {
      swift_once();
    }

    v37 = sub_10001F9D4();
    sub_1000138CC(v37, qword_10002DDC0);
    v45 = sub_10001F9C4();
    v38 = sub_10001FBC4();
    if (os_log_type_enabled(v45, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v45, v38, "didn't get reminder object on toggle request", v39, 2u);
    }
  }
}

void sub_10001C8E0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = a3[5];
  v54 = a3[4];
  v55 = v4;
  v5 = a3[7];
  v56 = a3[6];
  v57 = v5;
  v6 = a3[1];
  v50 = *a3;
  v51 = v6;
  v7 = a3[3];
  v52 = a3[2];
  v53 = v7;
  if (a1)
  {
    swift_errorRetain();
    if (qword_10002D958 != -1)
    {
      swift_once();
    }

    v9 = sub_10001F9D4();
    sub_1000138CC(v9, qword_10002DDC0);
    swift_errorRetain();
    v10 = sub_10001F9C4();
    v11 = sub_10001FBC4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v49[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_10001FFA4();
      v16 = sub_10001CCE0(v14, v15, v49);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed toggling reminder complete: %s", v12, 0xCu);
      sub_10001F188(v13);
    }

    v45 = v54;
    v46 = v55;
    v47 = v56;
    v48 = v57;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53;
    nullsub_2();
    v17 = (a2 + OBJC_IVAR____TtC27RemindersIntentsUIExtension34TTRIIntentsSnippetReminderViewCell_viewModel);
    swift_beginAccess();
    v18 = v17[5];
    v49[4] = v17[4];
    v49[5] = v18;
    v19 = v17[7];
    v49[6] = v17[6];
    v49[7] = v19;
    v20 = v17[1];
    v49[0] = *v17;
    v49[1] = v20;
    v21 = v17[3];
    v49[2] = v17[2];
    v49[3] = v21;
    v22 = v41;
    v23 = v42;
    v24 = v44;
    v17[2] = v43;
    v17[3] = v24;
    *v17 = v22;
    v17[1] = v23;
    v25 = v45;
    v26 = v46;
    v27 = v48;
    v17[6] = v47;
    v17[7] = v27;
    v17[4] = v25;
    v17[5] = v26;
    sub_1000184F4(a3, v40);
    sub_1000105E4(v49, &qword_10002E080, &qword_100021640);
    sub_1000156E8();
  }

  else
  {
    if (qword_10002D958 != -1)
    {
      swift_once();
    }

    v28 = sub_10001F9D4();
    sub_1000138CC(v28, qword_10002DDC0);
    sub_1000184F4(a3, v49);
    v29 = sub_10001F9C4();
    v30 = sub_10001FBB4();
    sub_10001F35C(a3);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v49[0] = v33;
      *v31 = 138412546;
      v34 = *a3;
      *(v31 + 4) = *a3;
      *v32 = v34;
      *(v31 + 12) = 2080;
      v35 = (a3[1] & 1) == 0;
      if (a3[1])
      {
        v36 = 20302;
      }

      else
      {
        v36 = 5457241;
      }

      if (v35)
      {
        v37 = 0xE300000000000000;
      }

      else
      {
        v37 = 0xE200000000000000;
      }

      v38 = v34;
      v39 = sub_10001CCE0(v36, v37, v49);

      *(v31 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "toggle complete for reminder {reminderID: %@}, {expected completed: %s}", v31, 0x16u);
      sub_1000105E4(v32, &qword_10002E038, &qword_100021620);

      sub_10001F188(v33);
    }
  }
}

unint64_t sub_10001CCE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001CDAC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001F0CC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10001F188(v11);
  return v7;
}

unint64_t sub_10001CDAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001CEB8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10001FE34();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10001CEB8(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001CF04(a1, a2);
  sub_10001D034(&off_100028DD8);
  return v3;
}

void *sub_10001CF04(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10001D120(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10001FE34();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10001FAD4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001D120(v10, 0);
        result = sub_10001FE04();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10001D034(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10001D194(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10001D120(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003120(&qword_10002E028, &unk_100021610);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001D194(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003120(&qword_10002E028, &unk_100021610);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_10001D288(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_10001FEB4();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100003C30(v2, 0);

    v1 = sub_10000B318(&v5, v3 + 4, v2, v1);
    sub_10001047C(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t sub_10001D338(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1000042AC(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_10001D6D0(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_10001D85C();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_10001FEC4();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_10001FEB4();
  v8 = sub_10001D484(v4, v7);

  v9 = sub_1000042AC(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_10001D6D0(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_10001D484(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003120(&qword_10002DA38, &qword_100020F60);
    v2 = sub_10001FF14();
    v19 = v2;
    sub_10001FEA4();
    v3 = sub_10001FED4();
    if (v3)
    {
      v4 = v3;
      sub_100010E38(0, &qword_10002DA18, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100010E38(0, &unk_10002E040, REMReminder_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100005018(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_10001FCF4(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_10001FED4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

void sub_10001D6D0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10001FD54() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_10001FCF4(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

id sub_10001D85C()
{
  v1 = v0;
  sub_100003120(&qword_10002DA38, &qword_100020F60);
  v2 = *v0;
  v3 = sub_10001FEF4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_10001D9BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003120(&unk_10002E0B0, &qword_100021668);
    v3 = sub_10001FF24();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000041A0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001DAC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003120(&qword_10002E088, &qword_100021648);
    v3 = sub_10001FF24();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010484(v4, &v11, &unk_10002E090, &unk_100021650);
      v5 = v11;
      result = sub_100004218(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10001F280(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001DBE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003120(&qword_10002DA38, &qword_100020F60);
    v3 = sub_10001FF24();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1000042AC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10001DCE0(void **a1)
{
  v2 = *a1;
  v3 = sub_10001A34C(*a1);
  if (v3)
  {
    v12 = v3;
    v4 = [v3 userActivity];
    if (v4)
    {
      v5 = v4;
      sub_10001FBF4();
    }
  }

  else
  {
    if (qword_10002D958 != -1)
    {
      swift_once();
    }

    v6 = sub_10001F9D4();
    sub_1000138CC(v6, qword_10002DDC0);
    sub_1000184F4(a1, v13);
    v7 = sub_10001F9C4();
    v8 = sub_10001FBC4();
    sub_10001F35C(a1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v2;
      *v10 = v2;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v7, v8, "Didn't get reminder object on app link launch request {id: %@}", v9, 0xCu);
      sub_1000105E4(v10, &qword_10002E038, &qword_100021620);
    }
  }
}

unint64_t sub_10001DE90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10001F614();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v39 - v10;
  v12 = type metadata accessor for TTRIIntentsSnippetViewController.ViewModel(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001F5F4();
  v17 = OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_viewModel;
  if (v16 < *(*(v3 + OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_viewModel) + 16))
  {
    result = sub_10001F5F4();
    if ((result & 0x8000000000000000) == 0)
    {
      v19 = *(v3 + v17);
      if (result >= *(v19 + 16))
      {
        __break(1u);
      }

      else
      {
        sub_10001F2F4(v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * result, v15, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v20 = *v15;
          v21 = *(v15 + 88);
          v39[4] = *(v15 + 72);
          v39[5] = v21;
          v22 = *(v15 + 120);
          v39[6] = *(v15 + 104);
          v39[7] = v22;
          v23 = *(v15 + 24);
          v39[0] = *(v15 + 8);
          v39[1] = v23;
          v24 = *(v15 + 56);
          v39[2] = *(v15 + 40);
          v39[3] = v24;

          v25 = sub_100018FE0(a1, v39);
          sub_10001F35C(v39);
        }

        else
        {
          v35 = *v15;
          v36 = *(v15 + 1);
          v37 = sub_100003120(&qword_10002DF58, &unk_100021598);
          v38 = *(v37 + 48);
          v25 = sub_1000192E4(a1, v35, v36, v15[*(v37 + 64)]);

          sub_1000105E4(&v15[v38], &qword_10002DF60, &qword_100020EB0);
        }

        return v25;
      }

      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_10002D958 != -1)
  {
LABEL_14:
    swift_once();
  }

  v26 = sub_10001F9D4();
  sub_1000138CC(v26, qword_10002DDC0);
  v27 = *(v6 + 16);
  v27(v11, a1, v5);
  v27(v9, a1, v5);
  v28 = sub_10001F9C4();
  v29 = sub_10001FBC4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134218240;
    v31 = sub_10001F604();
    v32 = *(v6 + 8);
    v32(v11, v5);
    *(v30 + 4) = v31;
    *(v30 + 12) = 2048;
    v33 = sub_10001F5F4();
    v32(v9, v5);
    *(v30 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v28, v29, "Got asked for path {section: %ld, row: %ld} with no coresponding item", v30, 0x16u);
  }

  else
  {
    v34 = *(v6 + 8);
    v34(v9, v5);
    v34(v11, v5);
  }

  return [objc_allocWithZone(UITableViewCell) init];
}

id sub_10001E2C0()
{
  v1 = v0;
  v44 = sub_10001F4C4();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001F974();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v43 - v8);
  v10 = type metadata accessor for TTRIIntentsSnippetViewController.ViewModel(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v43 - v16;
  v18 = __chkstk_darwin(v15);
  v47 = &v43 - v19;
  __chkstk_darwin(v18);
  v48 = &v43 - v20;
  result = sub_10001F5F4();
  v22 = OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_viewModel;
  if (result < *(*(v0 + OBJC_IVAR____TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController_viewModel) + 16))
  {
    v23 = sub_10001F5F4();
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v24 = *(v0 + v22);
      if (v23 < *(v24 + 16))
      {
        v25 = v48;
        sub_10001F2F4(v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23, v48, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
        v26 = v25;
        v27 = v47;
        sub_10001F2F4(v26, v47, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_10001F2F4(v27, v14, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);

          v36 = *(sub_100003120(&qword_10002DF58, &unk_100021598) + 48);
          v38 = v45;
          v37 = v46;
          if ((*(v45 + 48))(&v14[v36], 1, v46) == 1)
          {
            sub_10001F128(v48, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
            sub_1000105E4(&v14[v36], &qword_10002DF60, &qword_100020EB0);
            return sub_10001F128(v27, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
          }

          (*(v38 + 32))(v7, &v14[v36], v37);
          if (qword_10002D958 != -1)
          {
            swift_once();
          }

          v39 = sub_10001F9D4();
          sub_1000138CC(v39, qword_10002DDC0);
          sub_10001F964();
          sub_1000133D8(0x696E532069726953, 0xEC00000074657070, 0x7265646E696D6552, 0xED00007473694C20, v3);
          v40 = *(v43 + 8);
          v41 = v44;
          v40(v3, v44);
          result = [objc_opt_self() defaultWorkspace];
          if (result)
          {
            v42 = result;
            sub_10001F964();
            sub_10001FC24();

            v40(v3, v41);
            (*(v38 + 8))(v7, v37);
            goto LABEL_14;
          }

LABEL_21:
          __break(1u);
          return result;
        }

        sub_10001F2F4(v27, v17, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
        v7 = *v17;
        v28 = *(v17 + 88);
        v49[4] = *(v17 + 72);
        v49[5] = v28;
        v29 = *(v17 + 120);
        v49[6] = *(v17 + 104);
        v49[7] = v29;
        v30 = *(v17 + 24);
        v49[0] = *(v17 + 8);
        v49[1] = v30;
        v31 = *(v17 + 56);
        v49[2] = *(v17 + 40);
        v49[3] = v31;
        sub_10001F35C(v49);
        sub_100003120(&qword_10002E0A8, &qword_100021660);
        *v9 = [v7 remObjectID];
        sub_10001F954();
        v1 = v45;
        v14 = v46;
        (*(v45 + 104))(v9, enum case for REMNavigationSpecifier.reminder(_:), v46);
        if (qword_10002D958 == -1)
        {
LABEL_6:
          v32 = sub_10001F9D4();
          sub_1000138CC(v32, qword_10002DDC0);
          sub_10001F964();
          sub_1000133D8(0x696E532069726953, 0xEC00000074657070, 0x7265646E696D6552, 0xE800000000000000, v3);
          v33 = *(v43 + 8);
          v34 = v44;
          v33(v3, v44);
          result = [objc_opt_self() defaultWorkspace];
          if (result)
          {
            v35 = result;
            sub_10001F964();
            sub_10001FC24();

            v33(v3, v34);
            (*(v1 + 8))(v9, v14);
LABEL_14:
            sub_10001F128(v48, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
            v27 = v47;
            return sub_10001F128(v27, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
          }

          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        swift_once();
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

id sub_10001E9C4(void *a1)
{
  v2 = [a1 intentResponse];
  if (!v2)
  {
LABEL_5:
    v6 = [a1 intentResponse];
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v5 = [v8 createdTaskList];

        return v5;
      }
    }

    return 0;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {

    goto LABEL_5;
  }

  v5 = [v4 modifiedTaskList];

  return v5;
}

void sub_10001EAAC(void *a1, uint64_t a2, CGFloat a3)
{
  v4 = a2;
  v6 = sub_10001F614();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 numberOfSections];
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v12 = v10;
  if (v10)
  {
    v13 = 0;
    v14 = (v7 + 8);
    MaxY = 0.0;
    *&v11 = 134219520;
    v32 = v11;
    v33 = v10;
    while (1)
    {
      v16 = [a1 numberOfRowsInSection:{v13, v32}];
      if ((v16 & 0x8000000000000000) != 0)
      {
        break;
      }

      v17 = v16;
      if (v16)
      {
        v18 = 0;
        while (1)
        {
          sub_10001F5E4();
          isa = sub_10001F5C4().super.isa;
          (*v14)(v9, v6);
          [a1 rectForRowAtIndexPath:isa];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          if (v4)
          {
            v35.origin.x = v21;
            v35.origin.y = v23;
            v35.size.width = v25;
            v35.size.height = v27;
            if (CGRectGetMaxY(v35) > a3)
            {
              break;
            }
          }

          ++v18;
          v34.origin.x = v21;
          v34.origin.y = v23;
          v34.size.width = v25;
          v34.size.height = v27;
          MaxY = CGRectGetMaxY(v34);
          if (v17 == v18)
          {
            goto LABEL_5;
          }
        }

        if (qword_10002D958 != -1)
        {
          swift_once();
        }

        v28 = sub_10001F9D4();
        sub_1000138CC(v28, qword_10002DDC0);
        sub_10001C28C();
        sub_10001C28C();
        sub_10001C28C();
        sub_10001C28C();
        sub_10001C28C();
        sub_10001C28C();
        v29 = sub_10001F9C4();
        v30 = sub_10001FBB4();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = v32;
          *(v31 + 4) = v18;
          *(v31 + 12) = 1040;
          *(v31 + 14) = 1;
          *(v31 + 18) = 2048;
          v36.origin.x = v21;
          v36.origin.y = v23;
          v36.size.width = v25;
          v36.size.height = v27;
          *(v31 + 20) = CGRectGetMaxY(v36);
          *(v31 + 28) = 1040;
          *(v31 + 30) = 1;
          *(v31 + 34) = 2048;
          *(v31 + 36) = MaxY;
          *(v31 + 44) = 1040;
          *(v31 + 46) = 1;
          *(v31 + 50) = 2048;
          *(v31 + 52) = a3;
          _os_log_impl(&_mh_execute_header, v29, v30, "Adding row %ld would be too large to fit, stopping at previous height. { currentRowMaxY:  %.*f, previousMaxY: %.*f, maxHeight: %.*f}", v31, 0x3Cu);
          v12 = v33;
        }
      }

LABEL_5:
      if (++v13 == v12)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_10001EDE0(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, __n128, __n128), __n128 a4, __n128 a5)
{
  if (!a1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_10001FD84())
    {
      goto LABEL_4;
    }
  }

  else if (*(a1 + 16))
  {
LABEL_4:
    if (a3)
    {
LABEL_5:
      a4.n128_u64[0] = 0;
      a5.n128_u64[0] = 0;
      v10 = a1;
LABEL_24:
      a3(1, v10, a4, a5);
      return;
    }

    goto LABEL_26;
  }

  sub_100019B3C(a2);
  if (!v11)
  {
    if (a3)
    {
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_22;
  }

  v12 = v11;
  sub_1000198B0(v11);
  if (!a2)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_10001AB20(v12, a2);
  v13 = [v5 extensionContext];
  if (!v13 || (v14 = v13, [v13 hostedViewMinimumAllowedSize], v16 = v15, v18 = v17, v14, (v19 = objc_msgSend(v6, "extensionContext")) == 0))
  {
    if (qword_10002D958 != -1)
    {
      swift_once();
    }

    v29 = sub_10001F9D4();
    sub_1000138CC(v29, qword_10002DDC0);
    v30 = sub_10001F9C4();
    v31 = sub_10001FBD4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unable to determine hostedViewMinimumAllowedSize", v32, 2u);
    }

    if (!a3)
    {
      goto LABEL_28;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = Strong;
      [Strong contentSize];
      v27 = v35;
      v28 = v36;

      goto LABEL_23;
    }

LABEL_22:
    v27 = 0;
    v28 = 0;
    goto LABEL_23;
  }

  v20 = v19;
  [v19 hostedViewMaximumAllowedSize];
  v22 = v21;
  v24 = v23;

  v25 = sub_10001AF6C(1, v16, v18, v22, v24);
  if (a3)
  {
    v27 = *&v25;
    v28 = v26;

LABEL_23:
    v10 = a1;
    a4.n128_u64[0] = v27;
    a5.n128_u64[0] = v28;
    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_10001F07C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001F08C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F0CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001F128(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001F188(void *a1)
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

uint64_t sub_10001F1D4(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010E38(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001F224(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_10001F23C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_10001F280(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001F290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIIntentsSnippetViewController.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F2F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_10001F3B0(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100013980(result, a2, a3);
  }

  return result;
}

uint64_t sub_10001F404()
{

  v1 = *(v0 + 112);
  if (v1 != 255)
  {
    sub_100013A18(*(v0 + 96), *(v0 + 104), v1);
  }

  return _swift_deallocObject(v0, 152, 7);
}