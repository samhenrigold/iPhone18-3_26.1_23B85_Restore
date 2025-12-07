void sub_AC750(void *a1)
{
  sub_30C1C8();
  v2 = sub_30C098();

  [a1 setBool:1 forKey:v2];
}

uint64_t sub_AC7BC()
{
  v1 = sub_302558();
  v73 = *(v1 - 8);
  v74 = v1;
  __chkstk_darwin(v1);
  v72 = v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3023D8();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v68 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v4;
  __chkstk_darwin(v5);
  v69 = v60 - v6;
  v7 = sub_30BA28();
  __chkstk_darwin(v7 - 8);
  v65 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0, &qword_317E00);
  __chkstk_darwin(v9 - 8);
  v64 = v60 - v10;
  v11 = sub_30B898();
  __chkstk_darwin(v11 - 8);
  v66 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3041E8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v60 - v18;
  sub_3041B8();
  v20 = v0;
  v21 = sub_3041D8();
  v22 = sub_30C7B8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v78 = v63;
    *v23 = 136315394;
    v75[0] = *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_adamID];
    sub_28A88();
    v24 = sub_30D6D8();
    v26 = v13;
    v27 = v16;
    v28 = v14;
    v29 = sub_191264(v24, v25, &v78);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    v30 = sub_3032F8();
    v32 = sub_191264(v30, v31, &v78);

    *(v23 + 14) = v32;
    v14 = v28;
    v16 = v27;
    v13 = v26;
    _os_log_impl(&dword_0, v21, v22, "User tapped on the favorite button for interest with adamID: %s. The current state of the interest when the user tapped: %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  v33 = *(v14 + 8);
  v33(v19, v13);
  v34 = sub_30C678();
  if (v34)
  {
    v62 = v35;
    v63 = v34;
    if (v20[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_currentState] == 2)
    {
      v61 = *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_adamID];
      v36 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160, &qword_317DF0);
      sub_30B7E8();
      *(swift_allocObject() + 16) = xmmword_315430;
      *&v78 = v36;
      sub_1D770();
      sub_30D438();
      sub_303858();
      sub_303788();
      v37 = sub_301CB8();
      v38 = v64;
      (*(*(v37 - 8) + 56))(v64, 1, 1, v37);
      sub_302718();
      sub_30B788();
      v85[0] = v78;
      sub_EB68(v85, &unk_408130, &unk_318C10);
      v84 = v79;
      sub_EB68(&v84, &qword_3FC878, &unk_318D40);
      v83 = v80;
      sub_EB68(&v83, &qword_408140, &unk_318C20);
      sub_1EBD0(v81, v82);

      sub_EB68(v38, &qword_3FB8E0, &qword_317E00);
      sub_30BA18();
      sub_30B878();
      v76 = sub_30A7D8();
      v77 = sub_ADC48(&qword_3FCA10, &type metadata accessor for UnfavoriteInterestAction, &protocol conformance descriptor for UnfavoriteInterestAction);
      __swift_allocate_boxed_opaque_existential_0Tm(v75);
      sub_30A7B8();
    }

    else
    {
      if (*&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipPresenter])
      {
        if ((v20[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipRequestID + 8] & 1) == 0)
        {

          sub_309898();
        }
      }

      v61 = *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_adamID];
      v47 = v61;
      v60[1] = v20[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_contentKind];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160, &qword_317DF0);
      sub_30B7E8();
      *(swift_allocObject() + 16) = xmmword_315430;
      *&v78 = v47;
      sub_1D770();
      sub_30D438();
      sub_303858();
      sub_303818();
      v48 = sub_301CB8();
      v49 = v64;
      (*(*(v48 - 8) + 56))(v64, 1, 1, v48);
      sub_302718();
      sub_30B788();
      v85[0] = v78;
      sub_EB68(v85, &unk_408130, &unk_318C10);
      v84 = v79;
      sub_EB68(&v84, &qword_3FC878, &unk_318D40);
      v83 = v80;
      sub_EB68(&v83, &qword_408140, &unk_318C20);
      sub_1EBD0(v81, v82);

      sub_EB68(v49, &qword_3FB8E0, &qword_317E00);
      sub_30BA18();
      sub_30B878();
      v76 = sub_30A0B8();
      v77 = sub_ADC48(&qword_3FCA08, &type metadata accessor for FavoriteInterestAction, &protocol conformance descriptor for FavoriteInterestAction);
      __swift_allocate_boxed_opaque_existential_0Tm(v75);
      sub_30A0A8();
    }

    v50 = v69;
    sub_302378();

    v52 = v70;
    v51 = v71;
    v53 = v68;
    (*(v70 + 16))(v68, v50, v71);
    v54 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v55 = swift_allocObject();
    (*(v52 + 32))(v55 + v54, v53, v51);
    sub_30B948();

    (*(v52 + 8))(v50, v51);
    swift_getObjectType();
    v57 = v72;
    v56 = v73;
    v58 = v74;
    (*(v73 + 104))(v72, enum case for ActionMetricsBehavior.fromAction(_:), v74);
    sub_307C38();
    swift_unknownObjectRelease();

    (*(v56 + 8))(v57, v58);
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  else
  {
    sub_3041B8();
    v39 = v20;
    v40 = sub_3041D8();
    v41 = sub_30C798();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v78 = v43;
      *v42 = 136315138;
      v75[0] = *&v39[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_adamID];
      sub_28A88();
      v44 = sub_30D6D8();
      v46 = sub_191264(v44, v45, &v78);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_0, v40, v41, "Cannot perform Favorite action for button for adamID: %s because we can't get the action runner.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
    }

    return (v33)(v16, v13);
  }
}

id sub_AD50C(uint64_t a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v6, "willMoveToSuperview:", a1);
  if (!a1)
  {
    v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipSubscription;
    if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipSubscription])
    {

      sub_304D08();
    }

    *&v2[v5] = 0;

    if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipPresenter])
    {
      if ((v2[OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_tipRequestID + 8] & 1) == 0)
      {

        sub_309898();
      }
    }
  }

  return result;
}

uint64_t sub_AD7E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20FavoriteHeaderButton_currentState);
  v2 = [objc_opt_self() mainBundle];
  v3 = "onViews.FavoriteHeaderButton";
  if (v1 == 2)
  {
    v3 = "VORITE_VALUE_OFF";
    v4._countAndFlagsBits = 0xD00000000000001FLL;
  }

  else
  {
    v4._countAndFlagsBits = 0xD000000000000020;
  }

  v8._countAndFlagsBits = 0xE000000000000000;
  v4._object = (v3 | 0x8000000000000000);
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v5.super.isa = v2;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v6 = sub_301AB8(v4, v9, v5, v10, 0, v8);

  return v6;
}

void sub_AD8B4(void *a1, uint64_t a2, NSString a3, SEL *a4)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_30C0D8();
    v8 = a1;
    a3 = sub_30C098();
  }

  else
  {
    v9 = a1;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, *a4, a3);
}

uint64_t sub_AD980()
{
}

uint64_t type metadata accessor for FavoriteHeaderButton(uint64_t a1)
{
  result = qword_400B30;
  if (!qword_400B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_ADB50(double a1)
{
  v2 = sub_3023D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_ADBD8(uint64_t a1, double a2)
{
  v4 = *(sub_3023D8() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_122088(a1, v5);
}

uint64_t sub_ADC48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_ADC90(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_124C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_ADCD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_ADD1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B80, qword_31E230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_ADD8C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for FollowButtonState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = ((v7 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v8 = -2;
  }

  if (v8 < 0)
  {
    v8 = -1;
  }

  v9 = v8 + 1;
  v10 = v8 - 2;
  if (v9 >= 4)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FollowButtonState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_ADF94(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    v2 = ((v1 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v2 = -2;
  }

  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *sub_ADFC4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_ADFEC(unsigned __int8 a1)
{
  v1 = 0xD000000000000011;
  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      v1 = 0xD00000000000001BLL;
      v4 = "PRODUCT_FOLLOW_BUTTON_TITLE";
      goto LABEL_11;
    }

    if (a1 != 5)
    {
LABEL_8:
      v4 = "PRODUCT_FOLLOWING";
LABEL_11:
      v3 = v4 - 32;
      goto LABEL_12;
    }

    v3 = "AX_DOWNLOAD_BUTTON";
    v1 = 0xD00000000000001ELL;
LABEL_12:
    v5 = [objc_opt_self() mainBundle];
    v8._countAndFlagsBits = 0xE000000000000000;
    v9._object = (v3 | 0x8000000000000000);
    v9._countAndFlagsBits = v1;
    v10.value._countAndFlagsBits = 0;
    v10.value._object = 0;
    v6.super.isa = v5;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v2 = sub_301AB8(v9, v10, v6, v11, 0, v8);

    return v2;
  }

  if (a1 == 2)
  {
    v3 = "PRODUCT_FOLLOWING";
    v1 = 0xD000000000000012;
    goto LABEL_12;
  }

  if (a1 != 3)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_AE104@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X8>)
{
  v3 = 1;
  if (a1 > 3u)
  {
    if (a1 == 5)
    {
      goto LABEL_13;
    }

    if (a1 != 4)
    {
      goto LABEL_8;
    }

    sub_302958();
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        goto LABEL_13;
      }

LABEL_8:
      if (a1)
      {
        sub_302928();
      }

      else
      {
        sub_302988();
      }

      goto LABEL_12;
    }

    sub_302978();
  }

LABEL_12:
  v3 = 0;
LABEL_13:
  v4 = sub_302AB8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

BOOL sub_AE1D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (v2 == 3 || v2 == 5)
  {
    return 0;
  }

  v5 = *a2;
  if (v2 == 4)
  {
    return v5 == 4;
  }

  if ((v5 - 3) < 3)
  {
    return 0;
  }

  if (v2 == 2)
  {
    return v5 == 2;
  }

  if (v5 == 2)
  {
    return 0;
  }

  return (v5 ^ v2 ^ 1) & 1;
}

BOOL sub_AE24C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_AE290(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    return 4;
  }

  if (a1 == 3)
  {
    return 5;
  }

  v5 = sub_30CAB8();
  v6 = sub_303AC8();
  v7 = sub_303AC8();
  v8 = a1 & 1;
  if (v6 != v7)
  {
    v8 = 1;
  }

  if (v5)
  {
    return v8;
  }

  else
  {
    return 2;
  }
}

uint64_t getEnumTagSinglePayload for FollowButtonState.AutoDownloadState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FollowButtonState.AutoDownloadState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_AE480(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_AE49C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

BOOL sub_AE4C4(unsigned __int8 *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == &dword_0 + 1)
  {
    return 1;
  }

  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  return v6 == &dword_0 + 2 && a1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState] - 7 < 0xFFFFFFFC;
}

id sub_AE580(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v4 = a3(a1) & 1;

  return [a2 setSharesBackground:v4];
}

void sub_AE5CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30, &qword_31EA30);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_302F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B50, &qword_31E210);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipPresenter))
  {
    v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipSubscription;
    if (!*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipSubscription))
    {
      v21 = v0;
      v22 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B58, &qword_31E218);
      sub_30B8C8();
      if (v25)
      {
        sub_12658(&v24, v26);
        v20 = v9;
        __swift_project_boxed_opaque_existential_1Tm(v26, v26[3]);
        (*(v5 + 104))(v7, enum case for TipGroup.headerButtons(_:), v4);
        sub_302F48();
        v14 = sub_302EF8();

        (*(v5 + 8))(v7, v4);
        *&v24 = v14;
        sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
        v15 = sub_30C8F8();
        v23 = v15;
        v16 = sub_30C8E8();
        (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B68, &qword_31E228);
        sub_EC8C(&qword_400B70, &qword_400B68, &qword_31E228, &protocol conformance descriptor for AnyPublisher<A, B>);
        sub_ADC90(&qword_3FCF68, &qword_3FBF20, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
        sub_304F28();
        sub_EB68(v3, &unk_408F30, &qword_31EA30);

        swift_allocObject();
        v17 = v21;
        swift_unknownObjectWeakInit();
        sub_EC8C(&qword_400B78, &qword_400B50, &qword_31E210, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
        v18 = v22;
        v19 = sub_304F58();

        (*(v20 + 8))(v12, v18);
        *(v17 + v13) = v19;

        __swift_destroy_boxed_opaque_existential_1(v26);
      }

      else
      {
        sub_EB68(&v24, &qword_400B60, &qword_31E220);
      }
    }
  }
}

void sub_AEA84(int a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState;
  v3 = v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState];
  if (v3 == 6)
  {
    if (a1 == 6)
    {
      return;
    }

    goto LABEL_14;
  }

  if (a1 == 6)
  {
    sub_AFEFC(v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState]);
LABEL_14:
    v17 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate];
    if (v17)
    {
      v18 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate + 8];
      v19 = v1[v2];

      v17(v19);
      sub_1EBD0(v17, v18);
    }

    return;
  }

  if (v3 == 3 || v3 == 5)
  {
    goto LABEL_11;
  }

  if (v3 == 4)
  {
    if (a1 == 4)
    {
      return;
    }

    goto LABEL_11;
  }

  if ((a1 - 3) < 3u)
  {
    goto LABEL_11;
  }

  if (v3 == 2)
  {
    if (a1 == 2)
    {
      return;
    }

    goto LABEL_11;
  }

  if (a1 == 2 || ((v3 ^ a1) & 1) != 0)
  {
LABEL_11:
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
    v8 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
    v9 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock + 8];
    *v7 = sub_B06FC;
    v7[1] = v6;

    sub_1EBD0(v8, v9);
    if ((v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] & 1) == 0)
    {
      v10 = v3 == 5;
      v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 1;
      [v1 layoutIfNeeded];
      v11 = objc_opt_self();
      v12 = swift_allocObject();
      *(v12 + 16) = v1;
      *(v12 + 24) = v10;
      v24 = sub_B0740;
      v25 = v12;
      v20 = _NSConcreteStackBlock;
      v21 = 1107296256;
      v22 = sub_914CC;
      v23 = &block_descriptor_15;
      v13 = _Block_copy(&v20);
      v14 = v1;

      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = sub_B0764;
      v25 = v15;
      v20 = _NSConcreteStackBlock;
      v21 = 1107296256;
      v22 = sub_2504C4;
      v23 = &block_descriptor_47_0;
      v16 = _Block_copy(&v20);

      [v11 animateWithDuration:65540 delay:v13 options:v16 animations:0.2 completion:0.0];
      _Block_release(v16);
      _Block_release(v13);
    }

    goto LABEL_14;
  }
}

void sub_AEDD4(uint64_t a1, uint64_t a2)
{
  sub_ADD1C(a1, &v6);
  if (v7)
  {
    sub_12658(&v6, v8);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_AEEE8(v8);
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_EB68(&v6, &qword_400B80, qword_31E230);
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      if (*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipPresenter] && (v4[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipRequestID + 8] & 1) == 0)
      {
        v5 = v4;

        sub_309898();
      }

      else
      {
      }
    }
  }
}

void *sub_AEEE8(void *result)
{
  if (*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipPresenter])
  {
    v2 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipRequestID];
    if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipRequestID + 8] == 1 && v1[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState] == 4)
    {
      v3 = __swift_project_boxed_opaque_existential_1Tm(result, result[3]);
      v4 = __chkstk_darwin(v3);
      (*(v6 + 16))(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

      v7 = v1;
      sub_30ADE8();
      v8 = *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_userDefaults];
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      v10 = v14;
      v11 = v15;
      v12 = v8;
      sub_1EBD0(v10, v11);
      v14 = sub_B11A4;
      v15 = v9;
      sub_3098A8();

      *v2 = v13[0];
      v2[8] = 0;
      return sub_ADDCC(v13);
    }
  }

  return result;
}

void sub_AF0B8(void *a1)
{
  sub_30C1B8();
  v2 = sub_30C098();

  [a1 setBool:1 forKey:v2];
}

uint64_t sub_AF124()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FC140, &unk_317CE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1B0, &unk_31E140);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0, qword_31E3C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState) == 4)
  {
    v10 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
    [v10 notificationOccurred:0];

    if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipPresenter))
    {
      if ((*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipRequestID + 8) & 1) == 0)
      {

        sub_309898();
      }
    }
  }

  v11 = sub_302268();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = sub_3022E8();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = sub_309F08();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_309D38();
  sub_EB68(v3, &unk_3FC140, &unk_317CE0);
  sub_EB68(v6, &qword_3FC1B0, &unk_31E140);
  return sub_EB68(v9, &unk_4090C0, qword_31E3C0);
}

double sub_AF438(uint64_t a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "willMoveToSuperview:", a1);
  if (!a1)
  {
    v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipSubscription;
    if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipSubscription])
    {

      sub_304D08();
    }

    *&v2[v5] = 0;

    if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipPresenter])
    {
      if ((v2[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipRequestID + 8] & 1) == 0)
      {

        sub_309898();
      }
    }
  }

  return result;
}

void *sub_AF57C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0, qword_31E3C0);
  __chkstk_darwin(v2 - 8);
  v4 = v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406BB0, qword_31E160);
  __chkstk_darwin(v5 - 8);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC1B0, &unk_31E140);
  __chkstk_darwin(v8 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v27 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = sub_3022E8();
    v16 = *(v15 - 8);
    v17 = *(v16 + 56);
    v18 = v16 + 56;
    v17(v13, 1, 1, v15);
    v19 = Strong;
    if (sub_30CE68())
    {
      *v7 = v19;
      size = CGRectNull.size;
      *(v7 + 8) = CGRectNull.origin;
      *(v7 + 24) = size;
      v28 = v17;
      v21 = enum case for PresentationSource.Position.view(_:);
      v22 = sub_3022D8();
      v27[1] = v18;
      v23 = v22;
      v24 = *(v22 - 8);
      (*(v24 + 104))(v7, v21, v22);
      (*(v24 + 56))(v7, 0, 1, v23);
      sub_3022A8();
      sub_EB68(v13, &qword_3FC1B0, &unk_31E140);
      v28(v10, 0, 1, v15);
      sub_AB300(v10, v13);
    }

    else
    {
    }

    v25 = sub_302268();
    (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
    Strong = sub_309D28();
    sub_EB68(v4, &unk_4090C0, qword_31E3C0);
    sub_EB68(v13, &qword_3FC1B0, &unk_31E140);
  }

  return Strong;
}

uint64_t sub_AF97C()
{
  v0 = sub_306E58();
  __swift_allocate_value_buffer(v0, qword_400B88);
  *__swift_project_value_buffer(v0, qword_400B88) = 500;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

void sub_AFA0C(uint64_t a1)
{
  v3 = sub_306EA8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_updateStateCallback;
  if (*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_updateStateCallback))
  {

    sub_306EC8();
  }

  *(v1 + v10) = a1;
  swift_retain_n();

  if (a1)
  {
    sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
    v11 = sub_30C8F8();
    sub_306E98();
    if (qword_3FAA08 != -1)
    {
      swift_once();
    }

    v12 = sub_306E58();
    __swift_project_value_buffer(v12, qword_400B88);
    sub_306EF8();
    v13 = *(v4 + 8);
    v13(v6, v3);
    sub_30C8D8();

    v13(v9, v3);
  }
}

double sub_AFC20()
{
  sub_1EBD0(*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate), *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate + 8));

  return result;
}

uint64_t type metadata accessor for FollowHeaderButton(uint64_t a1)
{
  result = qword_400C00;
  if (!qword_400C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_AFE2C(char a1, uint64_t a2, uint64_t a3)
{
  sub_AFA0C(0);
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState;
  v8 = sub_AE290(a1, a2, a3);
  v9 = *(v3 + v7);
  *(v3 + v7) = v8;

  sub_AEA84(v9);
}

void sub_AFEA0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_AFEFC(v2);
  }
}

id sub_AFEFC(unsigned __int8 a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8A8, &unk_31FE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v31[-v4];
  v6 = sub_302AB8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v31[-v11];
  sub_AE104(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_EB68(v5, &qword_3FE8A8, &unk_31FE60);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    sub_24E704(v9);
    (*(v7 + 8))(v12, v6);
  }

  if (a1 == 4)
  {
    v13 = [objc_opt_self() mainBundle];
    v30._countAndFlagsBits = 0x8000000000339450;
    v32._object = 0x8000000000339430;
    v32._countAndFlagsBits = 0xD000000000000017;
    v33.value._countAndFlagsBits = 0;
    v33.value._object = 0;
    v14.super.isa = v13;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v15 = sub_301AB8(v32, v33, v14, v34, 0xD00000000000003BLL, v30);
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  swift_beginAccess();
  *v18 = v15;
  v18[1] = v17;

  v19 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  v20 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 8];
  v21 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 16];
  v22 = v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24];

  sub_2506C4(v15, v17, v19, v20, v21, v22);

  v23 = 0;
  if (a1 == 5)
  {
    v23 = [objc_allocWithZone(type metadata accessor for Spinner()) initWithActivityIndicatorStyle:100];
    [v23 startAnimating];
  }

  v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay;
  swift_beginAccess();
  v25 = *&v1[v24];
  if (v25)
  {
    [v25 removeFromSuperview];
    v26 = *&v1[v24];
  }

  else
  {
    v26 = 0;
  }

  *&v1[v24] = v23;
  v27 = v23;

  sub_250E38();
  v28 = (a1 - 6) < 0xFDu;
  [v1 setShowsMenuAsPrimaryAction:v28];
  return [v1 setContextMenuInteractionEnabled:v28];
}

unint64_t sub_B032C()
{
  sub_30D558(40);

  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState);
  if ((v1 - 3) < 2)
  {
    v2 = 0xEC000000676E6977;
    v3._countAndFlagsBits = 0x6F6C6C6F46746F6ELL;
  }

  else if (v1 == 6)
  {
    v2 = 0xE700000000000000;
    v3._countAndFlagsBits = 0x6E776F6E6B6E75;
  }

  else if (v1 == 5)
  {
    v2 = 0xE700000000000000;
    v3._countAndFlagsBits = 0x676E6964616F6CLL;
  }

  else
  {
    v2 = 0xE900000000000067;
    v3._countAndFlagsBits = 0x6E69776F6C6C6F66;
  }

  v3._object = v2;
  sub_30C238(v3);

  v5._countAndFlagsBits = 93;
  v5._object = 0xE100000000000000;
  sub_30C238(v5);
  return 0xD000000000000025;
}

id sub_B05DC(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for Spinner();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id sub_B0630()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Spinner();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_B068C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B06C4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_B0708()
{

  return _swift_deallocObject(v0, 25, 7);
}

double block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_B0774(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v62 = a3;
  v67 = a4;
  v63 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0, &unk_31E0C0);
  __chkstk_darwin(v8 - 8);
  v69 = &v61 - v9;
  v10 = sub_302AB8();
  v64 = *(v10 - 8);
  v65 = v10;
  __chkstk_darwin(v10);
  v68 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_309D48();
  __chkstk_darwin(v12 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_30C7D8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState] = 6;
  v19 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipRequestID];
  *v20 = 0;
  v20[8] = 1;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipSubscription] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_updateStateCallback] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_objectGraph] = a1;
  sub_3098F8();

  sub_30B8C8();
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipPresenter] = v71;
  sub_124C4(0, &qword_400B40, NSUserDefaults_ptr);
  (*(v16 + 104))(v18, enum case for NSUserDefaults.Name.shared(_:), v15);
  sub_ADC90(&qword_400B48, &qword_400B40, NSUserDefaults_ptr, &protocol conformance descriptor for NSUserDefaults);
  sub_30B958();
  v21 = (*(v16 + 8))(v18, v15);
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_userDefaults] = v71;
  v66 = a2;
  sub_B104C(a2, v14, v21);
  sub_309D88();
  swift_allocObject();

  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_presenter] = sub_309D68();
  if (v63 == 2)
  {
    v22 = _UISolariumEnabled() ^ 1;
    if (v62 != 1)
    {
      v22 = 1;
    }

    v67 = v22;
  }

  sub_302958();
  v23 = sub_3029E8();
  v24 = *(*(v23 - 8) + 56);
  v24(v69, 1, 1, v23);
  if (_UISolariumEnabled())
  {
    v25 = 0;
  }

  else
  {
    v25 = 2;
  }

  v63 = v25;
  v26 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v26 = 0;
  v26[1] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48, UIColor_ptr);
  v28 = objc_opt_self();
  v29 = [v28 systemGray6Color];
  v30 = [v28 systemGray5Color];
  v31 = sub_30CFB8();

  *&v5[v27] = v31;
  v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v5[v32] = [objc_allocWithZone(UIImageView) init];
  v33 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v34 = [objc_allocWithZone(UIView) init];
  [v34 setClipsToBounds:1];
  [v34 setUserInteractionEnabled:0];
  *&v5[v33] = v34;
  v35 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v36 = [objc_opt_self() effectWithStyle:16];
  v37 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v36];

  v38 = v37;
  [v38 setUserInteractionEnabled:0];
  [v38 setClipsToBounds:1];

  *&v5[v35] = v38;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v39 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v39 = 0;
  v39[1] = 0;
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v40 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v24(&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v23);
  v42 = v64;
  v41 = v65;
  v43 = v68;
  (*(v64 + 16))(&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v68, v65);
  swift_beginAccess();
  v44 = v69;
  sub_A8088(v69, &v5[v40]);
  swift_endAccess();
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = v63;
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v45 = *&v5[v32];
  v46 = sub_250990(v67 & 1, v45);
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v53 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *v53 = v46;
  *(v53 + 1) = v48;
  *(v53 + 2) = v50;
  v53[24] = v52 & 1;
  v54 = type metadata accessor for GlyphButton(0);
  v70.receiver = v5;
  v70.super_class = v54;
  v55 = objc_msgSendSuper2(&v70, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_24DE30();
  sub_24F788(0, 0, 1);

  sub_EB68(v44, &unk_4080B0, &unk_31E0C0);
  (*(v42 + 8))(v43, v41);
  if (_UISolariumEnabled())
  {
    [v55 _setMonochromaticTreatment:2];
    [v55 _setEnableMonochromaticTreatment:1];
  }

  v56 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground;
  swift_beginAccess();
  *(v55 + v56) = 0;
  v57 = v55;
  sub_24E1B8();
  sub_B10B0();
  v58 = v57;

  sub_309D78();

  [v58 addTarget:v58 action:"primaryActionTriggered" forControlEvents:0x2000];

  sub_AE5CC();
  sub_B1108(v66, v59);
  return v58;
}

void sub_B0FA0()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState) = 6;
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipRequestID;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_tipSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_updateStateCallback) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t sub_B104C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_309D48();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_B10B0()
{
  result = qword_400C38;
  if (!qword_400C38)
  {
    type metadata accessor for FollowHeaderButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_400C38);
  }

  return result;
}

uint64_t sub_B1108(uint64_t a1, double a2)
{
  v3 = sub_309D48();
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_B116C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void (*UINavigationBar.navBarTintColor.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 tintColor];
  return sub_B12A0;
}

void sub_B12A0(id *a1)
{
  v1 = *a1;
  [a1[1] setTintColor:?];
}

Class sub_B1360(uint64_t a1, void *a2, uint64_t a3)
{
  v138 = a3;
  v140 = a2;
  v141 = a1;
  v3 = sub_309B58();
  __chkstk_darwin(v3 - 8);
  v4 = sub_307678();
  v139 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v130 - v8;
  v133 = sub_3041E8();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_302AB8();
  __chkstk_darwin(v11 - 8);
  v134 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_309D48();
  __chkstk_darwin(v13 - 8);
  v15 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v137 = &v130 - v17;
  v136 = sub_307BE8();
  v135 = *(v136 - 8);
  v18 = *(v135 + 64);
  __chkstk_darwin(v136);
  v19 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v130 - v21;
  v23 = sub_308BD8();
  __chkstk_darwin(v23);
  v25 = (&v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_B4644(v142, v25, &type metadata accessor for HeaderButtonItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    v28 = v139;
    v29 = v140;
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v51 = v6;
        v52 = v4;
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400C40, &unk_31E410);
        v54 = *(v53 + 64);
        v55 = *(v25 + *(v53 + 48));
        (*(v28 + 32))(v9, v25, v52);
        sub_EB68(v25 + v54, &qword_3FE8B0, &qword_330320);
        _UISolariumEnabled();
        sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
        v56 = v51;
        (*(v28 + 16))(v51, v9, v52);
        v57 = v141;

        v44.super.super.isa = sub_6C8C8(v56, v55, v57);
        (*(v28 + 8))(v9, v52);
        return v44.super.super.isa;
      }

      v84 = *v25;
      v85 = *(v25 + 8);
      if (_UISolariumEnabled())
      {
        objc_allocWithZone(type metadata accessor for FavoriteBarButtonItemView());
        v86 = v141;

        v87 = v29;
        v88 = sub_B8634(v86, v84, v85, v87);

LABEL_37:
        v44.super.super.isa = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v88];

        return v44.super.super.isa;
      }

      objc_allocWithZone(type metadata accessor for FavoriteHeaderButton(0));

      v83 = sub_AB44C(v111, v84, v85, 0, 0, 1);
    }

    else
    {
      if (EnumCaseMultiPayload == 8)
      {
        v58 = sub_308BB8();
        v60 = v59;
        if (v58 == sub_308BB8() && v60 == v61)
        {

          if (v138 != 1)
          {
            return 0;
          }
        }

        else
        {
          v108 = sub_30D728();

          if ((v108 & 1) != 0 && v138 != 1)
          {
            return 0;
          }
        }

        sub_309B48();
        v109 = objc_allocWithZone(sub_309B68());

        v110 = sub_309B38();
        v44.super.super.isa = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v110];
        [(objc_class *)v44.super.super.isa _setPrefersNoPlatter:1];

        return v44.super.super.isa;
      }

      if (EnumCaseMultiPayload == 9)
      {
        sub_12658(v25, v146);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);
        v30 = v141;
        sub_30B8E8();
        __swift_project_boxed_opaque_existential_1Tm(v145, v145[3]);
        v142 = v147;
        v31 = v147;
        v32 = __swift_project_boxed_opaque_existential_1Tm(v146, v147);
        *&v144[3] = v142;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v144);
        (*(*(v31 - 8) + 16))(boxed_opaque_existential_0Tm, v32, v31);
        v34 = sub_30A8B8();
        __swift_destroy_boxed_opaque_existential_1(v144);
        if (v34)
        {
          sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
          v35 = [objc_opt_self() mainBundle];
          v129._countAndFlagsBits = 0xE000000000000000;
          v151._countAndFlagsBits = 0x6572616853;
          v151._object = 0xE500000000000000;
          v153.value._countAndFlagsBits = 0;
          v153.value._object = 0;
          v36.super.isa = v35;
          v154._countAndFlagsBits = 0;
          v154._object = 0xE000000000000000;
          v37 = sub_301AB8(v151, v153, v36, v154, 0, v129);
          v39 = v38;

          v40 = sub_30C098();
          v41 = [objc_opt_self() systemImageNamed:v40];

          sub_124C4(0, &qword_408080, UIAction_ptr);
          sub_12670(v145, v144);
          sub_12670(v146, v143);
          v42 = swift_allocObject();
          *(v42 + 16) = v29;
          sub_12658(v144, v42 + 24);
          *(v42 + 64) = v30;
          sub_12658(v143, v42 + 72);

          v43 = v29;
          v148.is_nil = sub_30D0C8();
          v152.value._countAndFlagsBits = v37;
          v152.value._object = v39;
          v148.value.super.isa = v41;
          v149.value.super.super.isa = 0;
          v44.super.super.isa = sub_30C828(v152, v148, v149, v150).super.super.isa;
          __swift_destroy_boxed_opaque_existential_1(v145);
LABEL_29:
          __swift_destroy_boxed_opaque_existential_1(v146);
          return v44.super.super.isa;
        }

        __swift_destroy_boxed_opaque_existential_1(v145);
LABEL_46:
        __swift_destroy_boxed_opaque_existential_1(v146);
        return 0;
      }

      sub_B4A64(v141, 28.0, 28.0);
    }

    v88 = v83;
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v73 = v137;
      sub_B45E0(v25, v137, v27);
      sub_B4644(v73, v15, &type metadata accessor for FollowButtonPresenter.Data);
      v74 = objc_allocWithZone(type metadata accessor for FollowHeaderButton(0));

      v76 = sub_B0774(v75, v15, v138, 2);

      v44.super.super.isa = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v76];
      v77 = sub_30C098();
      [(objc_class *)v44.super.super.isa setIdentifier:v77];

      if (_UISolariumEnabled())
      {
        v78 = swift_allocObject();
        *(v78 + 16) = v76;
        v79 = v76;
        v80 = [v79 traitCollection];
        v81 = [v80 horizontalSizeClass];

        if (v81 == &dword_0 + 1)
        {
          v82 = 1;
        }

        else
        {
          v112 = [v79 traitCollection];
          v113 = [v112 horizontalSizeClass];

          v82 = v113 == &dword_0 + 2 && v79[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState] - 7 < 0xFFFFFFFC;
        }

        [(objc_class *)v44.super.super.isa setSharesBackground:v82];
        sub_B46C0(v73, &type metadata accessor for FollowButtonPresenter.Data);
        v123 = swift_allocObject();
        v123[2].super.super.isa = v44.super.super.isa;
        v123[3].super.super.isa = sub_B46AC;
        v123[4].super.super.isa = v78;
        v124 = &v79[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate];
        v125 = *&v79[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate];
        v126 = *&v79[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate + 8];
        *v124 = sub_B46B4;
        v124[1] = v123;
        v127 = v44.super.super.isa;
        sub_2B8D4(v125, v126);
      }

      else
      {
        sub_B46C0(v73, &type metadata accessor for FollowButtonPresenter.Data);
      }

      return v44.super.super.isa;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v46 = *v25;
      v45 = *(v25 + 1);
      v47 = objc_allocWithZone(UIBarButtonItem);

      v48 = [v47 initWithBarButtonSystemItem:0 target:0 action:0];
      sub_124C4(0, &qword_408080, UIAction_ptr);
      v49 = swift_allocObject();
      *(v49 + 16) = v46;
      *(v49 + 24) = v45;

      v44.super.super.isa = v48;
      v50 = sub_30D0C8();
      [(objc_class *)v44.super.super.isa setPrimaryAction:v50];

      return v44.super.super.isa;
    }

    sub_12658(v25, v146);
    if (!_UISolariumEnabled())
    {
      v89 = type metadata accessor for ContextMenuButton();
      v90 = v147;
      v91 = __swift_project_boxed_opaque_existential_1Tm(v146, v147);
      v92 = v134;
      v93 = sub_302948();
      v94 = __chkstk_darwin(v93);
      v96 = &v130 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v97 + 16))(v96, v91, v90, v94);

      v99 = sub_A8F5C(v98, v96, v92, v89, v90, *(&v90 + 1));
      if (v99)
      {
        v100 = v99;
        [v100 setTranslatesAutoresizingMaskIntoConstraints:0];
        v101 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_317F20;
        v103 = [v100 widthAnchor];
        v104 = [v103 constraintEqualToConstant:28.0];

        *(v102 + 32) = v104;
        v105 = [v100 heightAnchor];
        v106 = [v105 constraintEqualToConstant:28.0];

        *(v102 + 40) = v106;
        sub_124C4(0, &qword_403000, NSLayoutConstraint_ptr);
        isa = sub_30C358().super.isa;

        [v101 activateConstraints:isa];

        v44.super.super.isa = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v100];
        goto LABEL_29;
      }

      sub_124C4(0, &qword_3FC1C0, OS_os_log_ptr);
      v114 = v131;
      sub_30D348();
      sub_12670(v146, v145);
      v115 = sub_3041D8();
      v116 = sub_30C7A8();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *&v143[0] = v118;
        *v117 = 136315138;
        sub_12670(v145, v144);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400C48, qword_31E420);
        v119 = sub_30C148();
        v121 = v120;
        __swift_destroy_boxed_opaque_existential_1(v145);
        v122 = sub_191264(v119, v121, v143);

        *(v117 + 4) = v122;
        _os_log_impl(&dword_0, v115, v116, "Error loading context menu, model didn't work: %s", v117, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v118);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v145);
      }

      (*(v132 + 8))(v114, v133);
    }

    goto LABEL_46;
  }

  if ((EnumCaseMultiPayload - 1) < 2)
  {
    sub_B46C0(v25, &type metadata accessor for HeaderButtonItem);
    return 0;
  }

  v62 = v135;
  v63 = *(v135 + 32);
  v64 = v22;
  v65 = v136;
  v63(v22, v25, v136);
  sub_307BC8();
  *&v142 = v66;
  (*(v62 + 16))(v19, v22, v65);
  v67 = (*(v62 + 80) + 24) & ~*(v62 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = v141;
  v63((v68 + v67), v19, v65);
  v69 = objc_allocWithZone(UIBarButtonItem);

  v70 = [v69 init];
  sub_124C4(0, &qword_408080, UIAction_ptr);
  v71 = swift_allocObject();
  *(v71 + 16) = sub_B476C;
  *(v71 + 24) = v68;
  v44.super.super.isa = v70;

  v72 = sub_30D0C8();
  [(objc_class *)v44.super.super.isa setPrimaryAction:v72];

  (*(v62 + 8))(v64, v65);
  return v44.super.super.isa;
}

uint64_t sub_B25A8(uint64_t a1)
{
  v1 = sub_308668();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0, qword_31E3C0);
  __chkstk_darwin(v5 - 8);
  v7 = v10 - v6;
  sub_3093A8();

  sub_30B9B8();
  v8 = sub_302268();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  memset(v10, 0, 32);
  sub_309388();

  sub_EB68(v10, &unk_3FBB70, &unk_3174C0);
  sub_EB68(v7, &unk_4090C0, qword_31E3C0);
  sub_307BD8();

  sub_308678();
  sub_308658();

  return (*(v2 + 8))(v4, v1);
}

id sub_B27C4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v42 = sub_302268();
  v9 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3022E8();
  v43 = *(v12 - 8);
  v44 = v12;
  __chkstk_darwin(v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406BB0, qword_31E160);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = (&v41 - v20);
  v22 = [a1 presentationSourceItem];
  if (v22)
  {
    *v21 = v22;
    v23 = enum case for PresentationSource.Position.sourceItem(_:);
    v24 = sub_3022D8();
    *&v45 = v14;
    v25 = a3;
    v26 = v11;
    v27 = v9;
    v28 = a5;
    v29 = a2;
    v30 = v24;
    v31 = *(v24 - 8);
    (*(v31 + 104))(v21, v23, v24);
    v32 = v30;
    a2 = v29;
    a5 = v28;
    v9 = v27;
    v11 = v26;
    a3 = v25;
    v14 = v45;
    (*(v31 + 56))(v21, 0, 1, v32);
  }

  else
  {
    v33 = sub_3022D8();
    (*(*(v33 - 8) + 56))(v21, 1, 1, v33);
  }

  sub_EB00(v21, v17, &qword_406BB0, qword_31E160);
  v34 = a2;
  sub_3022A8();
  __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
  v45 = *(a5 + 24);
  v35 = v45;
  v36 = __swift_project_boxed_opaque_existential_1Tm(a5, v45);
  v47 = v45;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v46);
  (*(*(v35 - 8) + 16))(boxed_opaque_existential_0Tm, v36, v35);
  result = [v34 view];
  if (result)
  {
    v39 = result;
    sub_30CE78();

    v40 = sub_30A858();
    (*(v9 + 8))(v11, v42);
    __swift_destroy_boxed_opaque_existential_1(v46);
    if (v40)
    {
      sub_3022C8();
    }

    (*(v43 + 8))(v14, v44);
    return sub_EB68(v21, &qword_406BB0, qword_31E160);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_B2C14()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return _swift_deallocObject(v0, 112, 7);
}

Class sub_B2C78(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = sub_309D48();
  __chkstk_darwin(v8 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  v14 = sub_308BD8();
  __chkstk_darwin(v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_B1360(a1, a2, a3);
  if (result)
  {
    v18 = result;
    sub_B4644(v4, v16, &type metadata accessor for HeaderButtonItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_31BF90;
      *(v31 + 32) = v18;
      v32 = objc_allocWithZone(UIBarButtonItemGroup);
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v33 = v18;
      isa = sub_30C358().super.isa;

      v35 = [v32 initWithBarButtonItems:isa representativeItem:0];

      return v35;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_B45E0(v16, v13, v20);
      sub_B4644(v13, v10, &type metadata accessor for FollowButtonPresenter.Data);
      v21 = objc_allocWithZone(type metadata accessor for FollowHeaderButton(0));

      v23 = sub_B0774(v22, v10, a3, 0);

      v24 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v23];
      v25 = sub_30C098();
      [v24 setIdentifier:v25];

      if (_UISolariumEnabled())
      {
        v26 = swift_allocObject();
        *(v26 + 16) = v23;
        v27 = v23;
        v28 = [v27 traitCollection];
        v29 = [v28 horizontalSizeClass];

        if (v29 == &dword_0 + 1)
        {
          v30 = 1;
        }

        else
        {
          v36 = [v27 traitCollection];
          v37 = [v36 horizontalSizeClass];

          v30 = v37 == &dword_0 + 2 && v27[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState] - 7 < 0xFFFFFFFC;
        }

        [v24 setSharesBackground:v30];
        v38 = swift_allocObject();
        *(v38 + 2) = v24;
        *(v38 + 3) = sub_B4A60;
        *(v38 + 4) = v26;
        v39 = &v27[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate];
        v40 = *&v27[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate];
        v41 = *&v27[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate + 8];
        *v39 = sub_B4A5C;
        v39[1] = v38;
        v42 = v24;
        sub_2B8D4(v40, v41);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_31BF90;
      *(v43 + 32) = v18;
      v44 = objc_allocWithZone(UIBarButtonItemGroup);
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v45 = v18;
      v46 = sub_30C358().super.isa;

      v47 = [v44 initWithBarButtonItems:v46 representativeItem:v24];

      sub_B46C0(v13, &type metadata accessor for FollowButtonPresenter.Data);
      return v47;
    }

    else
    {

      sub_B46C0(v16, &type metadata accessor for HeaderButtonItem);
      return 0;
    }
  }

  return result;
}

_BYTE *sub_B3158(uint64_t a1, uint64_t a2)
{
  v120 = a2;
  v114 = a1;
  v2 = sub_3041E8();
  v112 = *(v2 - 8);
  v113 = v2;
  __chkstk_darwin(v2);
  v111 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_309B58();
  __chkstk_darwin(v4 - 8);
  v119 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_302AB8();
  __chkstk_darwin(v6 - 8);
  v118 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0, &unk_31EF40);
  __chkstk_darwin(v8 - 8);
  v117 = &v107 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8B0, &qword_330320);
  __chkstk_darwin(v10 - 8);
  v107 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v107 - v13;
  v15 = sub_307678();
  v116 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v107 - v19;
  __chkstk_darwin(v21);
  v23 = &v107 - v22;
  v24 = sub_309D48();
  __chkstk_darwin(v24 - 8);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v108 = &v107 - v28;
  v29 = sub_307BE8();
  v109 = *(v29 - 8);
  v110 = v29;
  v30 = *(v109 + 64);
  __chkstk_darwin(v29);
  v31 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v115 = &v107 - v33;
  v34 = sub_308BD8();
  __chkstk_darwin(v34);
  v36 = (&v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_B4644(v121, v36, &type metadata accessor for HeaderButtonItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    v121 = v20;
    v53 = v117;
    v52 = v118;
    v54 = v116;
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400C40, &unk_31E410);
        LODWORD(v118) = *(v36 + v55[12]);
        v56 = v55[16];
        LODWORD(v119) = *(v36 + v55[20]);
        (*(v54 + 32))(v23, v36, v15);
        sub_B48A4(v36 + v56, v14);
        sub_307638();
        v57 = sub_3031C8();
        LODWORD(v56) = (*(*(v57 - 8) + 48))(v53, 1, v57);
        sub_EB68(v53, &unk_402FF0, &unk_31EF40);
        if (v56 == 1 && (v58 = sub_302A98(), (*(*(v58 - 8) + 48))(v14, 1, v58) == 1))
        {
          sub_124C4(0, &qword_3FE8A0, UIButton_ptr);
          (*(v54 + 16))(v121, v23, v15);

          v47.super.super.super.super.isa = sub_30D2C8();
          (*(v54 + 8))(v23, v15);
          sub_EB68(v14, &qword_3FE8B0, &qword_330320);
        }

        else
        {
          (*(v54 + 16))(v17, v23, v15);
          type metadata accessor for GlyphButton(0);
          v93 = v107;
          sub_EB00(v14, v107, &qword_3FE8B0, &qword_330320);
          v94 = v120;

          v47.super.super.super.super.isa = sub_6D980(v17, v118, v93, v94);
          v95 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active;
          swift_beginAccess();
          *(v47.super.super.super.super.isa + v95) = v119;
          sub_24E1B8();
          (*(v54 + 8))(v23, v15);
          sub_EB68(v14, &qword_3FE8B0, &qword_330320);
        }

        return v47.super.super.super.super.isa;
      }

      sub_12658(v36, aBlock);
      v72 = type metadata accessor for ContextMenuButton();
      v73 = v123;
      v74 = v124;
      v75 = __swift_project_boxed_opaque_existential_1Tm(aBlock, v123);
      v76 = sub_3029A8();
      v77 = __chkstk_darwin(v76);
      v79 = &v107 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v80 + 16))(v79, v75, v73, v77);

      v47.super.super.super.super.isa = sub_A8F5C(v81, v79, v52, v72, v73, v74);
      if (!v47.super.super.super.super.isa)
      {
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        return v47.super.super.super.super.isa;
      }

      __swift_destroy_boxed_opaque_existential_1(aBlock);
      goto LABEL_37;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v82 = *v36;
      v83 = *(v36 + 8);
      objc_allocWithZone(type metadata accessor for FavoriteHeaderButton(0));

      v85 = sub_AB44C(v84, v82, v83, 2, 0, 1);
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_27;
      }

      v59 = sub_308BB8();
      v61 = v60;
      if (v59 == sub_308BB8() && v61 == v62)
      {

        if (v114 != 1)
        {
          return 0;
        }
      }

      else
      {
        v96 = sub_30D728();

        if ((v96 & 1) != 0 && v114 != 1)
        {
          return 0;
        }
      }

      sub_309B48();
      v97 = objc_allocWithZone(sub_309B68());

      v85 = sub_309B38();
    }

    v47.super.super.super.super.isa = v85;
LABEL_37:
    swift_getObjectType();
    v98 = swift_conformsToProtocol2();
    if (v98 && v47.super.super.super.super.isa)
    {
      v99 = v98;
      ObjectType = swift_getObjectType();
      v101 = objc_allocWithZone(UIColor);
      v124 = sub_AB208;
      v125 = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2EB7C;
      v123 = &block_descriptor_16;
      v102 = _Block_copy(aBlock);
      v103 = v47.super.super.super.super.isa;
      v104 = [v101 initWithDynamicProvider:v102];
      _Block_release(v102);

      (*(v99 + 72))(v104, ObjectType, v99);
    }

    return v47.super.super.super.super.isa;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if ((EnumCaseMultiPayload - 1) < 2)
    {
LABEL_30:
      sub_B46C0(v36, &type metadata accessor for HeaderButtonItem);
      return 0;
    }

    if (!EnumCaseMultiPayload)
    {
      v40 = v109;
      v39 = v110;
      v41 = *(v109 + 32);
      v42 = v115;
      v41(v115, v36, v110);
      v121 = sub_124C4(0, &qword_3FE8A0, UIButton_ptr);
      sub_124C4(0, &qword_408080, UIAction_ptr);
      (*(v40 + 16))(v31, v42, v39);
      v43 = (*(v40 + 80) + 24) & ~*(v40 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = v120;
      v45 = v44 + v43;
      v46 = v39;
      v41(v45, v31, v39);

      v126.value.super.super.isa = sub_30D0C8();
      v47.super.super.super.super.isa = sub_30D2B8(UIButtonTypeSystem, v126).super.super.super.super.isa;
      sub_307BC8();
      v48 = sub_30C098();

      [(objc_class *)v47.super.super.super.super.isa setTitle:v48 forState:0];

      v49 = [(objc_class *)v47.super.super.super.super.isa titleLabel];
      if (v49)
      {
        v50 = v49;
        v51 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
        [v50 setFont:v51];
      }

      (*(v40 + 8))(v115, v46);
      return v47.super.super.super.super.isa;
    }

LABEL_27:
    sub_124C4(0, &qword_3FC1C0, OS_os_log_ptr);
    v89 = v111;
    sub_30D348();
    v90 = sub_3041D8();
    v91 = sub_30C7A8();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, "Button of this type is not supported in standard button mode", v92, 2u);
    }

    (*(v112 + 8))(v89, v113);
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v86 = v108;
    sub_B45E0(v36, v108, v38);
    sub_B4644(v86, v26, &type metadata accessor for FollowButtonPresenter.Data);
    v87 = objc_allocWithZone(type metadata accessor for FollowHeaderButton(0));

    v47.super.super.super.super.isa = sub_B0774(v88, v26, v114, 2);

    sub_B46C0(v86, &type metadata accessor for FollowButtonPresenter.Data);
  }

  else
  {
    v64 = *v36;
    v63 = *(v36 + 1);
    sub_124C4(0, &qword_3FE8A0, UIButton_ptr);
    sub_124C4(0, &qword_408080, UIAction_ptr);
    v65 = swift_allocObject();
    *(v65 + 16) = v64;
    *(v65 + 24) = v63;

    v127.value.super.super.isa = sub_30D0C8();
    v47.super.super.super.super.isa = sub_30D2B8(UIButtonTypeSystem, v127).super.super.super.super.isa;
    v66 = [objc_opt_self() mainBundle];
    v106._countAndFlagsBits = 0xE000000000000000;
    v128._countAndFlagsBits = 1701736260;
    v128._object = 0xE400000000000000;
    v129.value._countAndFlagsBits = 0;
    v129.value._object = 0;
    v67.super.isa = v66;
    v130._countAndFlagsBits = 0;
    v130._object = 0xE000000000000000;
    sub_301AB8(v128, v129, v67, v130, 0, v106);

    v68 = sub_30C098();

    [(objc_class *)v47.super.super.super.super.isa setTitle:v68 forState:0];

    v69 = [(objc_class *)v47.super.super.super.super.isa titleLabel];
    if (v69)
    {
      v70 = v69;
      v71 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
      [v70 setFont:v71];
    }
  }

  return v47.super.super.super.super.isa;
}

uint64_t sub_B40B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_308668();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0, qword_31E3C0);
  __chkstk_darwin(v6 - 8);
  v8 = v11 - v7;
  sub_3093A8();

  sub_30B9B8();
  v9 = sub_302268();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  memset(v11, 0, 32);
  sub_309388();

  sub_EB68(v11, &unk_3FBB70, &unk_3174C0);
  sub_EB68(v8, &unk_4090C0, qword_31E3C0);
  sub_307BD8();

  sub_308678();
  sub_308658();

  return (*(v3 + 8))(v5, v2);
}

void sub_B42D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [v2 leftBarButtonItems];
  if (v5)
  {
    v6 = v5;
    sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
    v7 = sub_30C368();
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = [v3 rightBarButtonItems];
  if (v8)
  {
    v9 = v8;
    sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
    v10 = sub_30C368();
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  sub_14A38C(v10);
  if (v7 >> 62)
  {
LABEL_29:
    v11 = sub_30D668();
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_30:
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_31;
  }

  v11 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  if (!v11)
  {
    goto LABEL_30;
  }

LABEL_9:
  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  do
  {
    v14 = v12;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v15 = sub_30D578();
      }

      else
      {
        if (v14 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_28;
        }

        v15 = *(v7 + 8 * v14 + 32);
      }

      v16 = v15;
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v17 = [v15 customView];

      if (v17)
      {
        break;
      }

LABEL_12:
      ++v14;
      if (v12 == v11)
      {
        goto LABEL_31;
      }
    }

    swift_getObjectType();
    v18 = swift_conformsToProtocol2();
    if (!v18)
    {

      goto LABEL_12;
    }

    v32 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_CA690(0, v13[2] + 1, 1, v13);
    }

    v21 = v13[2];
    v20 = v13[3];
    v22 = v32;
    if (v21 >= v20 >> 1)
    {
      v13 = sub_CA690((v20 > 1), v21 + 1, 1, v13);
      v22 = v32;
    }

    v13[2] = v21 + 1;
    v23 = &v13[2 * v21];
    v23[4] = v17;
    v23[5] = v22;
  }

  while (v12 != v11);
LABEL_31:

  v24 = v13[2];
  if (v24)
  {
    v25 = 0;
    v26 = v13 + 5;
    while (v25 < v13[2])
    {
      ++v25;
      v27 = *(v26 - 1);
      v28 = *v26;
      ObjectType = swift_getObjectType();
      v30 = *(v28 + 96);
      v31 = v27;

      v30(a1, a2, ObjectType, v28);

      v26 += 2;
      if (v24 == v25)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_35:
  }
}

uint64_t sub_B45E0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_309D48();
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_B4644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_B46C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_B4720()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B476C()
{
  sub_307BE8();
  v1 = *(v0 + 16);

  return sub_B25A8(v1);
}

uint64_t sub_B47D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B4810()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroy_5Tm()
{

  return _swift_deallocObject(v0, 40, 7);
}

double block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_B48A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE8B0, &qword_330320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_11Tm()
{
  v1 = sub_307BE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_B49D8(uint64_t a1)
{
  sub_307BE8();
  v3 = *(v1 + 16);

  return sub_B40B8(a1, v3);
}

void sub_B4A64(uint64_t a1, double a2, double a3)
{
  v59 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0, &unk_31E0C0);
  __chkstk_darwin(v5 - 8);
  v66 = &v56 - v6;
  v7 = sub_302AB8();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v63 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_30B898();
  __chkstk_darwin(v9 - 8);
  v10 = sub_30AA18();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_30A4E8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_308778();
  v19 = __chkstk_darwin(v18);
  (*(v21 + 104))(&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowDestination.prototypeUpNextSettings(_:), v19);
  (*(v15 + 104))(v17, enum case for FlowPresentationContext.presentPopover(_:), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090E0, qword_328430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315420;
  v23 = sub_30AF68();
  *(inited + 32) = v23;
  v24 = sub_30AF98();
  *(inited + 33) = v24;
  sub_30AFB8();
  sub_30AFB8();
  if (sub_30AFB8() != v23)
  {
    sub_30AFB8();
  }

  sub_30AFB8();
  if (sub_30AFB8() != v24)
  {
    sub_30AFB8();
  }

  (*(v11 + 104))(v13, enum case for FlowDestinationPageHeader.standard(_:), v10);
  sub_30B868();
  sub_3076F8();
  swift_allocObject();
  sub_307708();
  v25 = sub_30AF68();
  sub_30AFB8();
  sub_30AFB8();
  if (sub_30AFB8() != v25)
  {
    sub_30AFB8();
  }

  v57 = sub_308498();
  swift_allocObject();
  v58 = sub_308488();
  v26 = v63;
  sub_3029D8();
  v27 = sub_3029E8();
  v28 = *(v27 - 8);
  v60 = *(v28 + 56);
  v61 = v28 + 56;
  v29 = v66;
  v60(v66, 1, 1, v27);
  v62 = type metadata accessor for GlyphButton(0);
  v30 = objc_allocWithZone(v62);
  v31 = &v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v31 = 0;
  v31[1] = 0;
  *&v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48, UIColor_ptr);
  v33 = objc_opt_self();
  v34 = [v33 systemGray6Color];
  v35 = [v33 systemGray5Color];
  v36 = sub_30CFB8();

  *&v30[v32] = v36;
  v37 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v30[v37] = [objc_allocWithZone(UIImageView) init];
  v38 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v39 = [objc_allocWithZone(UIView) init];
  [v39 setClipsToBounds:1];
  [v39 setUserInteractionEnabled:0];
  *&v30[v38] = v39;
  v40 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v41 = [objc_opt_self() effectWithStyle:16];
  v42 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v41];

  v43 = v42;
  v44 = v26;
  [v43 setUserInteractionEnabled:0];
  [v43 setClipsToBounds:1];

  *&v30[v40] = v43;
  *&v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v45 = &v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v45 = 0;
  v45[1] = 0;
  v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v46 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v60(&v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v27);
  v47 = v64;
  v48 = v26;
  v49 = v65;
  (*(v64 + 16))(&v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v48, v65);
  swift_beginAccess();
  sub_A8088(v29, &v30[v46]);
  swift_endAccess();
  v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = 2;
  v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v50 = *&v30[v37];
  v51 = &v30[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *(v51 + 1) = 0;
  *(v51 + 2) = 0;
  *v51 = v50;
  v51[24] = 0;
  v68.receiver = v30;
  v68.super_class = v62;
  v52 = v50;
  v53 = objc_msgSendSuper2(&v68, "initWithFrame:", 0.0, 0.0, a2, a3);
  sub_24DE30();
  if (*(v53 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24))
  {
    __break(1u);
  }

  else
  {
    v54 = objc_opt_self();
    sub_124C4(0, &qword_403000, NSLayoutConstraint_ptr);
    isa = sub_30C358().super.isa;
    [v54 activateConstraints:isa];

    sub_A80F8(v29);
    (*(v47 + 8))(v44, v49);
    v67[3] = v57;
    v67[4] = sub_B5370();
    v67[0] = v58;

    sub_30D388();

    __swift_destroy_boxed_opaque_existential_1(v67);
  }
}

unint64_t sub_B5370()
{
  result = qword_400C50;
  if (!qword_400C50)
  {
    sub_308498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_400C50);
  }

  return result;
}

void sub_B53C8(uint64_t a1, void *a2)
{
  v58 = a2;
  v59 = a1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0, &unk_31E0C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v54 - v3;
  v63 = sub_302AB8();
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = OBJC_IVAR____TtC23ShelfKitCollectionViews38CustomBackButtonNavigationBarTitleView_backButton;
  sub_302938();
  v7 = sub_3029E8();
  v8 = *(v7 - 8);
  v61 = *(v8 + 56);
  v62 = v8 + 56;
  v61(v4, 1, 1, v7);
  v64 = type metadata accessor for GlyphButton(0);
  v9 = objc_allocWithZone(v64);
  v10 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v10 = 0;
  v10[1] = 0;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48, UIColor_ptr);
  v12 = objc_opt_self();
  v13 = [v12 systemGray6Color];
  v14 = [v12 systemGray5Color];
  v15 = sub_30CFB8();

  *&v9[v11] = v15;
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v9[v16] = [objc_allocWithZone(UIImageView) init];
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v18 = [objc_allocWithZone(UIView) init];
  [v18 setClipsToBounds:1];
  [v18 setUserInteractionEnabled:0];
  *&v9[v17] = v18;
  v19 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v20 = [objc_opt_self() effectWithStyle:16];
  v21 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v20];

  v22 = v21;
  v23 = v60;
  [v22 setUserInteractionEnabled:0];
  v24 = v63;
  [v22 setClipsToBounds:1];

  *&v9[v19] = v22;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v25 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v25 = 0;
  v25[1] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v61(&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v7);
  (*(v23 + 16))(&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v6, v24);
  swift_beginAccess();
  sub_A8088(v4, &v9[v26]);
  swift_endAccess();
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v27 = *&v9[v16];
  v28 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  *v28 = v27;
  v28[24] = 0;
  v67.receiver = v9;
  v67.super_class = v64;
  v29 = v27;
  v30 = objc_msgSendSuper2(&v67, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_24DE30();
  if ((*(v30 + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24) & 1) == 0)
  {
    v31 = objc_opt_self();
    sub_124C4(0, &qword_403000, NSLayoutConstraint_ptr);
    isa = sub_30C358().super.isa;
    [v31 activateConstraints:isa];

    sub_A80F8(v4);
    (*(v23 + 8))(v6, v24);
    v33 = ObjectType;
    v34 = v57;
    *&v57[v55] = v30;
    v66.receiver = v34;
    v66.super_class = v33;
    v35 = objc_msgSendSuper2(&v66, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v36 = OBJC_IVAR____TtC23ShelfKitCollectionViews38CustomBackButtonNavigationBarTitleView_backButton;
    v37 = *&v35[OBJC_IVAR____TtC23ShelfKitCollectionViews38CustomBackButtonNavigationBarTitleView_backButton];
    v38 = v35;
    v39 = v37;
    v40 = sub_30C098();
    [v39 setAccessibilityIdentifier:v40];

    v41 = *&v35[v36];
    v42 = v58;
    if (v58)
    {
      v43 = v58;
      [v41 setTintColor:v43];
      v44 = *&v35[v36];
      v45 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
      swift_beginAccess();
      v46 = v44[v45];
      v44[v45] = 1;
      if (v46 != 1)
      {
        v47 = v44;
        sub_24E1B8();

        v43 = v47;
      }
    }

    else
    {
      v48 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
      swift_beginAccess();
      v49 = v41[v48];
      v41[v48] = 2;
      if (v49 == 2)
      {
LABEL_8:
        v50 = *&v35[v36];
        v51 = sub_309298();
        swift_allocObject();
        v52 = v50;
        v53 = sub_309288();
        v65[3] = v51;
        v65[4] = sub_B6864();
        v65[0] = v53;
        sub_30D388();

        __swift_destroy_boxed_opaque_existential_1(v65);
        [v38 addSubview:*&v35[v36]];
        [*&v35[v36] setAlpha:1.0];
        [v38 setBackButtonAlpha:0.0];

        return;
      }

      v43 = v41;
      sub_24E1B8();
    }

    goto LABEL_8;
  }

  __break(1u);
}

id sub_B5AC4()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v37, "layoutSubviews");
  v2 = [v0 effectiveUserInterfaceLayoutDirection];
  [v1 layoutMargins];
  v4 = v3;
  v6 = v5;
  [v1 safeAreaInsets];
  if (v2 == &dword_0 + 1)
  {
    v9 = v6 - v8;
  }

  else
  {
    v9 = v4 - v7;
  }

  [v1 floatingTabBarHeight];
  if (v10 <= 0.0)
  {
    [v1 bounds];
    Height = CGRectGetHeight(v43);
  }

  else
  {
    [v1 floatingTabBarHeight];
    v12 = v11;
    [v1 layoutMargins];
    Height = v12 + v13;
  }

  v15 = v9 + 8.0;
  v16 = [v1 overlays];
  if (v2 == &dword_0 + 1)
  {
    if (v16)
    {
      v17 = v16;
      sub_30CBF8();
      v18 = v38;
      v19 = v39;
      v20 = v40;
      v21 = v41;

      v22 = 0.0;
      if (v42)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v18;
      }

      if (v42)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v19;
      }

      if (v42)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v20;
      }

      if ((v42 & 1) == 0)
      {
        v22 = v21;
      }
    }

    else
    {
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      v22 = 0.0;
    }

    v35 = CGRectGetMaxX(*(&v22 - 3)) + -28.0 - v15;
  }

  else
  {
    if (v16)
    {
      v26 = v16;
      sub_30CBF8();
      v27 = v38;
      v28 = v39;
      v29 = v40;
      v30 = v41;

      v31 = 0.0;
      if (v42)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v27;
      }

      if (v42)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v28;
      }

      if (v42)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = v29;
      }

      if ((v42 & 1) == 0)
      {
        v31 = v30;
      }
    }

    else
    {
      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      v31 = 0.0;
    }

    v35 = v15 + CGRectGetMinX(*(&v31 - 3));
  }

  return [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews38CustomBackButtonNavigationBarTitleView_backButton] setFrame:{v35, (Height + -28.0) * 0.5, 28.0, 28.0}];
}

uint64_t sub_B5E04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0, &unk_31E0C0);
  __chkstk_darwin(v0 - 8);
  v2 = v35 - v1;
  v3 = sub_302AB8();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  __chkstk_darwin(v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = OBJC_IVAR____TtC23ShelfKitCollectionViews38CustomBackButtonNavigationBarTitleView_backButton;
  sub_302938();
  v7 = sub_3029E8();
  v8 = *(v7 - 8);
  v36 = *(v8 + 56);
  v37 = v8 + 56;
  v36(v2, 1, 1, v7);
  v40 = type metadata accessor for GlyphButton(0);
  v9 = objc_allocWithZone(v40);
  v10 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v10 = 0;
  v10[1] = 0;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48, UIColor_ptr);
  v12 = objc_opt_self();
  v13 = [v12 systemGray6Color];
  v14 = [v12 systemGray5Color];
  v15 = sub_30CFB8();

  *&v9[v11] = v15;
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v9[v16] = [objc_allocWithZone(UIImageView) init];
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v18 = [objc_allocWithZone(UIView) init];
  [v18 setClipsToBounds:1];
  [v18 setUserInteractionEnabled:0];
  *&v9[v17] = v18;
  v19 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v20 = [objc_opt_self() effectWithStyle:16];
  v21 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v20];

  v22 = v21;
  [v22 setUserInteractionEnabled:0];
  [v22 setClipsToBounds:1];

  *&v9[v19] = v22;
  v23 = v38;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v24 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v24 = 0;
  v24[1] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v26 = v7;
  v27 = v39;
  v36(&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v26);
  (*(v27 + 16))(&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v6, v23);
  swift_beginAccess();
  sub_A8088(v2, &v9[v25]);
  swift_endAccess();
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v28 = *&v9[v16];
  v29 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *(v29 + 1) = 0;
  *(v29 + 2) = 0;
  *v29 = v28;
  v29[24] = 0;
  v41.receiver = v9;
  v41.super_class = v40;
  v30 = v28;
  v31 = objc_msgSendSuper2(&v41, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_24DE30();
  if (v31[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24])
  {
    __break(1u);
  }

  v32 = objc_opt_self();
  sub_124C4(0, &qword_403000, NSLayoutConstraint_ptr);
  isa = sub_30C358().super.isa;
  [v32 activateConstraints:isa];

  sub_A80F8(v2);
  (*(v27 + 8))(v6, v23);
  *(v35[1] + v35[0]) = v31;
  result = sub_30D648();
  __break(1u);
  return result;
}

uint64_t sub_B6334()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0, &unk_31E0C0);
  __chkstk_darwin(v0 - 8);
  v2 = v35 - v1;
  v3 = sub_302AB8();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  __chkstk_darwin(v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = OBJC_IVAR____TtC23ShelfKitCollectionViews38CustomBackButtonNavigationBarTitleView_backButton;
  sub_302938();
  v7 = sub_3029E8();
  v8 = *(v7 - 8);
  v36 = *(v8 + 56);
  v37 = v8 + 56;
  v36(v2, 1, 1, v7);
  v40 = type metadata accessor for GlyphButton(0);
  v9 = objc_allocWithZone(v40);
  v10 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v10 = 0;
  v10[1] = 0;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48, UIColor_ptr);
  v12 = objc_opt_self();
  v13 = [v12 systemGray6Color];
  v14 = [v12 systemGray5Color];
  v15 = sub_30CFB8();

  *&v9[v11] = v15;
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v9[v16] = [objc_allocWithZone(UIImageView) init];
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v18 = [objc_allocWithZone(UIView) init];
  [v18 setClipsToBounds:1];
  [v18 setUserInteractionEnabled:0];
  *&v9[v17] = v18;
  v19 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v20 = [objc_opt_self() effectWithStyle:16];
  v21 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v20];

  v22 = v21;
  [v22 setUserInteractionEnabled:0];
  [v22 setClipsToBounds:1];

  *&v9[v19] = v22;
  v23 = v38;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v24 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v24 = 0;
  v24[1] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v26 = v7;
  v27 = v39;
  v36(&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v26);
  (*(v27 + 16))(&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v6, v23);
  swift_beginAccess();
  sub_A8088(v2, &v9[v25]);
  swift_endAccess();
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = 0;
  v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v28 = *&v9[v16];
  v29 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *(v29 + 1) = 0;
  *(v29 + 2) = 0;
  *v29 = v28;
  v29[24] = 0;
  v41.receiver = v9;
  v41.super_class = v40;
  v30 = v28;
  v31 = objc_msgSendSuper2(&v41, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_24DE30();
  if (v31[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout + 24])
  {
    __break(1u);
  }

  v32 = objc_opt_self();
  sub_124C4(0, &qword_403000, NSLayoutConstraint_ptr);
  isa = sub_30C358().super.isa;
  [v32 activateConstraints:isa];

  sub_A80F8(v2);
  (*(v27 + 8))(v6, v23);
  *(v35[1] + v35[0]) = v31;
  result = sub_30D648();
  __break(1u);
  return result;
}

unint64_t sub_B6864()
{
  result = qword_400C88;
  if (!qword_400C88)
  {
    sub_309298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_400C88);
  }

  return result;
}

void sub_B68BC(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  sub_302918();
  v5 = v4;
  v6 = [v1 traitCollection];
  v7 = sub_30C968();

  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = 7;
  }

  v12 = [objc_opt_self() configurationWithPointSize:v8 weight:3 scale:v5];
  if (v3 == 2)
  {
    v9 = sub_30C098();
    v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v12];

    if (v10)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v11 = sub_30C098();
  v10 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v12];

  if (!v10)
  {
    __break(1u);
    return;
  }

LABEL_8:
  [v2 setImage:v10 forState:0];
}

void sub_B6A58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30, &qword_31EA30);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_302F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B50, &qword_31E210);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipPresenter))
  {
    v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipSubscription;
    if (!*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipSubscription))
    {
      v21 = v0;
      v22 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B58, &qword_31E218);
      sub_30B8C8();
      if (v25)
      {
        sub_12658(&v24, v26);
        v20 = v9;
        __swift_project_boxed_opaque_existential_1Tm(v26, v26[3]);
        (*(v5 + 104))(v7, enum case for TipGroup.headerButtons(_:), v4);
        sub_302F58();
        v14 = sub_302EF8();

        (*(v5 + 8))(v7, v4);
        *&v24 = v14;
        sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
        v15 = sub_30C8F8();
        v23 = v15;
        v16 = sub_30C8E8();
        (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400B68, &qword_31E228);
        sub_EC8C(&qword_400B70, &qword_400B68, &qword_31E228, &protocol conformance descriptor for AnyPublisher<A, B>);
        sub_ADC90(&qword_3FCF68, &qword_3FBF20, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
        sub_304F28();
        sub_EB68(v3, &unk_408F30, &qword_31EA30);

        swift_allocObject();
        v17 = v21;
        swift_unknownObjectWeakInit();
        sub_EC8C(&qword_400B78, &qword_400B50, &qword_31E210, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
        v18 = v22;
        v19 = sub_304F58();

        (*(v20 + 8))(v12, v18);
        *(v17 + v13) = v19;

        __swift_destroy_boxed_opaque_existential_1(v26);
      }

      else
      {
        sub_EB68(&v24, &qword_400B60, &qword_31E220);
      }
    }
  }
}

double sub_B6F5C(uint64_t a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "willMoveToSuperview:", a1);
  if (!a1)
  {
    v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipSubscription;
    if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipSubscription])
    {

      sub_304D08();
    }

    *&v2[v5] = 0;

    if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipPresenter])
    {
      if ((v2[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipRequestID + 8] & 1) == 0)
      {

        sub_309898();
      }
    }
  }

  return result;
}

uint64_t sub_B70A0()
{
  v1 = sub_302558();
  v73 = *(v1 - 8);
  v74 = v1;
  __chkstk_darwin(v1);
  v72 = v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3023D8();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v68 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v4;
  __chkstk_darwin(v5);
  v69 = v60 - v6;
  v7 = sub_30BA28();
  __chkstk_darwin(v7 - 8);
  v65 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0, &qword_317E00);
  __chkstk_darwin(v9 - 8);
  v64 = v60 - v10;
  v11 = sub_30B898();
  __chkstk_darwin(v11 - 8);
  v66 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3041E8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v60 - v18;
  sub_3041B8();
  v20 = v0;
  v21 = sub_3041D8();
  v22 = sub_30C7B8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v78 = v63;
    *v23 = 136315394;
    v75[0] = *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_adamID];
    sub_28A88();
    v24 = sub_30D6D8();
    v26 = v13;
    v27 = v16;
    v28 = v14;
    v29 = sub_191264(v24, v25, &v78);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    v30 = sub_3032F8();
    v32 = sub_191264(v30, v31, &v78);

    *(v23 + 14) = v32;
    v14 = v28;
    v16 = v27;
    v13 = v26;
    _os_log_impl(&dword_0, v21, v22, "User tapped on the favorite button for interest with adamID: %s. The current state of the interest when the user tapped: %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  v33 = *(v14 + 8);
  v33(v19, v13);
  v34 = sub_30C678();
  if (v34)
  {
    v62 = v35;
    v63 = v34;
    if (v20[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_currentState] == 2)
    {
      v61 = *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_adamID];
      v36 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160, &qword_317DF0);
      sub_30B7E8();
      *(swift_allocObject() + 16) = xmmword_315430;
      *&v78 = v36;
      sub_1D770();
      sub_30D438();
      sub_303858();
      sub_303788();
      v37 = sub_301CB8();
      v38 = v64;
      (*(*(v37 - 8) + 56))(v64, 1, 1, v37);
      sub_302718();
      sub_30B788();
      v85[0] = v78;
      sub_EB68(v85, &unk_408130, &unk_318C10);
      v84 = v79;
      sub_EB68(&v84, &qword_3FC878, &unk_318D40);
      v83 = v80;
      sub_EB68(&v83, &qword_408140, &unk_318C20);
      sub_1EBD0(v81, v82);

      sub_EB68(v38, &qword_3FB8E0, &qword_317E00);
      sub_30BA18();
      sub_30B878();
      v76 = sub_30A7D8();
      v77 = sub_ADC48(&qword_3FCA10, &type metadata accessor for UnfavoriteInterestAction, &protocol conformance descriptor for UnfavoriteInterestAction);
      __swift_allocate_boxed_opaque_existential_0Tm(v75);
      sub_30A7B8();
    }

    else
    {
      if (*&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipPresenter])
      {
        if ((v20[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipRequestID + 8] & 1) == 0)
        {

          sub_309898();
        }
      }

      v61 = *&v20[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_adamID];
      v47 = v61;
      v60[1] = v20[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_contentKind];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC160, &qword_317DF0);
      sub_30B7E8();
      *(swift_allocObject() + 16) = xmmword_315430;
      *&v78 = v47;
      sub_1D770();
      sub_30D438();
      sub_303858();
      sub_303818();
      v48 = sub_301CB8();
      v49 = v64;
      (*(*(v48 - 8) + 56))(v64, 1, 1, v48);
      sub_302718();
      sub_30B788();
      v85[0] = v78;
      sub_EB68(v85, &unk_408130, &unk_318C10);
      v84 = v79;
      sub_EB68(&v84, &qword_3FC878, &unk_318D40);
      v83 = v80;
      sub_EB68(&v83, &qword_408140, &unk_318C20);
      sub_1EBD0(v81, v82);

      sub_EB68(v49, &qword_3FB8E0, &qword_317E00);
      sub_30BA18();
      sub_30B878();
      v76 = sub_30A0B8();
      v77 = sub_ADC48(&qword_3FCA08, &type metadata accessor for FavoriteInterestAction, &protocol conformance descriptor for FavoriteInterestAction);
      __swift_allocate_boxed_opaque_existential_0Tm(v75);
      sub_30A0A8();
    }

    v50 = v69;
    sub_302378();

    v52 = v70;
    v51 = v71;
    v53 = v68;
    (*(v70 + 16))(v68, v50, v71);
    v54 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v55 = swift_allocObject();
    (*(v52 + 32))(v55 + v54, v53, v51);
    sub_30B948();

    (*(v52 + 8))(v50, v51);
    swift_getObjectType();
    v57 = v72;
    v56 = v73;
    v58 = v74;
    (*(v73 + 104))(v72, enum case for ActionMetricsBehavior.fromAction(_:), v74);
    sub_307C38();
    swift_unknownObjectRelease();

    (*(v56 + 8))(v57, v58);
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  else
  {
    sub_3041B8();
    v39 = v20;
    v40 = sub_3041D8();
    v41 = sub_30C798();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v78 = v43;
      *v42 = 136315138;
      v75[0] = *&v39[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_adamID];
      sub_28A88();
      v44 = sub_30D6D8();
      v46 = sub_191264(v44, v45, &v78);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_0, v40, v41, "Cannot perform Favorite action for button for adamID: %s because we can't get the action runner.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
    }

    return (v33)(v16, v13);
  }
}

double sub_B7DF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_303A88();
    v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_currentState;
    v4[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_currentState] = v5;
    v7 = sub_3032F8();
    v9 = v8;
    if (v7 == sub_3032F8() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_30D728();

      if ((v12 & 1) == 0)
      {
        sub_B68BC(v4[v6]);
      }
    }
  }

  return result;
}

void sub_B7EEC(uint64_t a1, uint64_t a2)
{
  sub_ADD1C(a1, &v6);
  if (v7)
  {
    sub_12658(&v6, v8);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_B8000(v8);
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_EB68(&v6, &qword_400B80, qword_31E230);
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      if (*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipPresenter] && (v4[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipRequestID + 8] & 1) == 0)
      {
        v5 = v4;

        sub_309898();
      }

      else
      {
      }
    }
  }
}

void sub_B8000(void *a1)
{
  if (!*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipPresenter])
  {
    return;
  }

  v2 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipRequestID];
  if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipRequestID + 8] != 1)
  {
    return;
  }

  v4 = sub_303108();
  v6 = v5;
  if (v4 == sub_303108() && v6 == v7)
  {

    goto LABEL_12;
  }

  v9 = sub_30D728();

  if (v9)
  {
LABEL_12:
    v10 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v11 = __chkstk_darwin(v10);
    (*(v13 + 16))(v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

    v14 = v1;
    sub_30ADE8();
    v15 = *&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_userDefaults];
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v17 = v21;
    v18 = v22;
    v19 = v15;
    sub_1EBD0(v17, v18);
    v21 = sub_ADDC4;
    v22 = v16;
    sub_3098A8();

    *v2 = v20[0];
    v2[8] = 0;
    sub_ADDCC(v20);
    return;
  }
}

uint64_t sub_B84DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_currentState);
  v2 = [objc_opt_self() mainBundle];
  v3 = "onViews.FavoriteHeaderButton";
  if (v1 == 2)
  {
    v3 = "VORITE_VALUE_OFF";
    v4._countAndFlagsBits = 0xD00000000000001FLL;
  }

  else
  {
    v4._countAndFlagsBits = 0xD000000000000020;
  }

  v8._countAndFlagsBits = 0xE000000000000000;
  v4._object = (v3 | 0x8000000000000000);
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v5.super.isa = v2;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v6 = sub_301AB8(v4, v9, v5, v10, 0, v8);

  return v6;
}

uint64_t sub_B85AC(double a1)
{
  v2 = sub_3023D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

id sub_B8634(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_30C7D8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipRequestID];
  *v14 = 0;
  v14[8] = 1;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipSubscription] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_objectGraph] = a1;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_adamID] = a2;
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_contentKind] = a3;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_sourceViewController] = a4;
  sub_124C4(0, &qword_400B40, NSUserDefaults_ptr);
  (*(v11 + 104))(v13, enum case for NSUserDefaults.Name.shared(_:), v10);
  sub_ADC90(&qword_400B48, &qword_400B40, NSUserDefaults_ptr, &protocol conformance descriptor for NSUserDefaults);

  v15 = a4;
  sub_30B958();
  (*(v11 + 8))(v13, v10);
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_userDefaults] = v21;
  sub_3098F8();
  sub_30B8C8();
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_tipPresenter] = v21;
  sub_303BA8();
  sub_30B8E8();
  v16 = sub_303B98();

  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_stateMachine] = v16;

  LOBYTE(a1) = sub_303A88();

  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_currentState] = a1;
  v20.receiver = v5;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (_UISolariumEnabled())
  {
    [v17 _setMonochromaticTreatment:2];
    [v17 _setEnableMonochromaticTreatment:1];
  }

  [v17 addTarget:v17 action:"primaryActionTriggered" forControlEvents:{0x2000, ObjectType}];
  sub_B68BC(*(v17 + OBJC_IVAR____TtC23ShelfKitCollectionViews25FavoriteBarButtonItemView_currentState));
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_303A68();

  sub_B6A58();
  return v17;
}

uint64_t sub_B89A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B89EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_B8A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v18 = a2;
  v19 = a3;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_B9734;
  v17 = &block_descriptor_6;
  v10 = _Block_copy(&v14);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = a4;
  v19 = a5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_B9784;
  v17 = &block_descriptor_3;
  v11 = _Block_copy(&v14);

LABEL_6:
  v12 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v10 actionProvider:v11];
  sub_1EBD0(a4, a5);
  sub_1EBD0(a2, a3);
  swift_unknownObjectRelease();
  _Block_release(v11);
  _Block_release(v10);
  return v12;
}

id sub_B8C20(uint64_t (*a1)(char *, char *, uint64_t), double a2, double a3)
{
  v4 = v3;
  v61 = a1;
  ObjectType = swift_getObjectType();
  v53 = sub_302268();
  v57 = *(v53 - 8);
  __chkstk_darwin(v53);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_3022E8();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_308CB8();
  v60 = *(v63 - 8);
  v10 = *(v60 + 64);
  __chkstk_darwin(v63);
  v58 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D50, &unk_31E520);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - v14;
  v16 = sub_307678();
  v17 = *(v16 - 8);
  v18 = v17[8];
  __chkstk_darwin(v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v50 - v21;
  v69.receiver = v4;
  v69.super_class = ObjectType;

  v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews20MacContextMenuButton_model;
  sub_12670(&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MacContextMenuButton_model], aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406560, &qword_32CDD0);
  v24 = swift_dynamicCast();
  v25 = v17[7];
  if (v24)
  {
    v25(v15, 0, 1, v16);
    v61 = v17[4];
    v26 = v16;
    v51 = v16;
    v27 = v17;
    v28 = v22;
    v52 = v22;
    v61(v22, v15, v26);
    v29 = v62;
    sub_308CA8();
    v59 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MacContextMenuButton_objectGraph];
    v30 = v60;
    v31 = v58;
    (*(v60 + 16))(v58, v29, v63);
    v32 = v27;
    v33 = v27[2];
    v34 = v51;
    v33(v19, v28, v51);
    v35 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v36 = v32;
    v37 = (v10 + *(v32 + 80) + v35) & ~*(v32 + 80);
    v38 = swift_allocObject();
    v39 = v38 + v35;
    v40 = v63;
    (*(v30 + 32))(v39, v31, v63);
    v61((v38 + v37), v19, v34);
    *(v38 + ((v18 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = v59;
    v41 = objc_opt_self();
    v66 = sub_B9648;
    v67 = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_B9784;
    v65 = &block_descriptor_17;
    v42 = _Block_copy(aBlock);

    v43 = [v41 configurationWithIdentifier:0 previewProvider:0 actionProvider:v42];

    _Block_release(v42);
    (*(v30 + 8))(v62, v40);
    (v36[1])(v52, v34);
    return v43;
  }

  v25(v15, 1, 1, v16);
  sub_B9484(v15);
  sub_12670(&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MacContextMenuButton_episodeController], aBlock);
  __swift_project_boxed_opaque_existential_1Tm(aBlock, v65);
  sub_12670(&v4[v23], v68);
  v44 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews20MacContextMenuButton_sourceViewController];
  v45 = v4;
  v46 = v59;
  sub_302298();
  result = [v44 view];
  if (result)
  {
    v48 = result;
    v49 = v55;
    sub_30CE78();

    v43 = sub_30A9D8();
    (*(v57 + 8))(v49, v53);
    (*(v54 + 8))(v46, v56);
    __swift_destroy_boxed_opaque_existential_1(v68);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    return v43;
  }

  __break(1u);
  return result;
}

uint64_t sub_B9484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D50, &unk_31E520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B94EC()
{
  v1 = sub_308CB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_307678();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_B9648()
{
  sub_308CB8();
  sub_307678();
  return sub_308C98();
}

id sub_B9734(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_B9784(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_B981C();
  v3 = sub_30C368();

  v4 = v2(v3);

  return v4;
}

double block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_B981C()
{
  result = qword_408010;
  if (!qword_408010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_408010);
  }

  return result;
}

double ModernPageViewController.anyPresenter.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + qword_400D60);
  a1[3] = *(&stru_20.filesize + (swift_isaMask & *v1));
  *a1 = v2;
  swift_unknownObjectRetain();
  return result;
}

char *ModernPageViewController.showcaseView.getter()
{
  v1 = sub_301F38();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_400D58;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 40);
  sub_301EE8();
  isa = sub_301EA8().super.isa;
  (*(v2 + 8))(v4, v1);
  v9 = [v7 cellForItemAtIndexPath:isa];

  if (!v9)
  {
    return 0;
  }

  type metadata accessor for UberCollectionViewCell();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews22UberCollectionViewCell_uberBackgroundView];
    v12 = v11;
    if (!v11)
    {
      v12 = v10;
      v13 = v10;
    }

    v14 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t ModernPageViewController.actionDispatcher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_4290C8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40, &unk_31E590);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ModernPageViewController.pageHeaderHint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_4290D0;
  swift_beginAccess();
  v4 = sub_30AA18();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ModernPageViewController.pageHeaderHint.setter(uint64_t a1)
{
  v3 = qword_4290D0;
  swift_beginAccess();
  v4 = sub_30AA18();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void sub_B9CC0(uint64_t a1)
{
  v3 = sub_301988();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4067B0, &unk_328D90);
  __chkstk_darwin(v6 - 8);
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401140, &qword_31EA90);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v15 = qword_400DC0;
  swift_beginAccess();
  v16 = *(v12 + 56);
  sub_EB00(v1 + v15, v14, &unk_4067B0, &unk_328D90);
  sub_EB00(a1, &v14[v16], &unk_4067B0, &unk_328D90);
  v17 = *(v4 + 48);
  if (v17(v14, 1, v3) == 1)
  {
    if (v17(&v14[v16], 1, v3) == 1)
    {
      sub_EB68(v14, &unk_4067B0, &unk_328D90);
      return;
    }
  }

  else
  {
    sub_EB00(v14, v10, &unk_4067B0, &unk_328D90);
    if (v17(&v14[v16], 1, v3) != 1)
    {
      v20 = v24;
      (*(v4 + 32))(v24, &v14[v16], v3);
      sub_CEB6C(&unk_408FF0, &type metadata accessor for EntityIdentifier, &protocol conformance descriptor for EntityIdentifier);
      v21 = sub_30C018();
      v22 = *(v4 + 8);
      v22(v20, v3);
      v22(v10, v3);
      sub_EB68(v14, &unk_4067B0, &unk_328D90);
      if (v21)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v10, v3);
  }

  sub_EB68(v14, &qword_401140, &qword_31EA90);
LABEL_7:
  if ([v1 isViewLoaded])
  {
    v18 = [v1 view];
    if (v18)
    {
      v19 = v18;
      sub_EB00(v1 + v15, v25, &unk_4067B0, &unk_328D90);
      sub_30CEC8();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_BA098(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4067B0, &unk_328D90);
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-v4];
  v6 = qword_400DC0;
  swift_beginAccess();
  sub_EB00(v1 + v6, v5, &unk_4067B0, &unk_328D90);
  swift_beginAccess();
  sub_CF528(a1, v1 + v6);
  swift_endAccess();
  sub_B9CC0(v5);
  sub_EB68(a1, &unk_4067B0, &unk_328D90);
  return sub_EB68(v5, &unk_4067B0, &unk_328D90);
}

uint64_t sub_BA1D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_304E18();

  return v1;
}

uint64_t sub_BA294(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_304E28();
}

uint64_t sub_BA354()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401018, &unk_31E910);
  sub_304E08();
  return swift_endAccess();
}

uint64_t sub_BA3C8(char a1)
{
  v2 = a1 & 1;
  result = *(v1 + qword_400E98);
  if (result != v2)
  {
    return sub_309688();
  }

  return result;
}

uint64_t ModernPageViewController.navigationTabIdentifier.getter()
{
  v1 = sub_302218();
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ModernPageViewController.interactionContextPage.getter();
  if (swift_getEnumCaseMultiPayload() == 24)
  {
    return 6;
  }

  sub_CEBB4(v3, &type metadata accessor for InteractionContext.Page);
  v4 = *(v0 + qword_400D68);
  sub_BA528(v4);
  return v4;
}

uint64_t ModernPageViewController.navigationTabIdentifier.setter(uint64_t a1)
{
  v2 = *(v1 + qword_400D68);
  *(v1 + qword_400D68) = a1;
  return sub_BA54C(v2);
}

double sub_BA528(uint64_t result)
{
  if (result != 19)
  {
    return sub_BA538(result);
  }

  return v1;
}

double sub_BA538(uint64_t a1)
{
  if ((a1 - 1) >= 0x12)
  {
  }

  return result;
}

uint64_t sub_BA54C(uint64_t result)
{
  if (result != 19)
  {
    return sub_1DB3C(result);
  }

  return result;
}

uint64_t (*ModernPageViewController.navigationTabIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ModernPageViewController.navigationTabIdentifier.getter();
  return sub_BA5A4;
}

uint64_t sub_BA5A4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_BA528(*a1);
    v4 = *(v3 + qword_400D68);
    *(v3 + qword_400D68) = v2;
    sub_BA54C(v4);
  }

  else
  {
    v5 = *(v3 + qword_400D68);
    *(v3 + qword_400D68) = v2;
    v2 = v5;
  }

  return sub_BA54C(v2);
}

uint64_t sub_BA610()
{
  v0 = ModernPageViewController.navigationTabIdentifier.getter();
  if (v0 == 19)
  {
    sub_30D708();
    return 0;
  }

  else
  {
    v2 = v0;
    v3 = sub_3083D8();
    sub_BA54C(v2);
    return v3;
  }
}

uint64_t sub_BA6D0(void *a1)
{
  v1 = a1;
  v2 = ModernPageViewController.preferredStatusBarStyle.getter();

  return v2;
}

uint64_t ModernPageViewController.preferredStatusBarStyle.getter()
{
  sub_309568();
  sub_304D58();

  if (v5 >> 5 != 2 || ((v5 << 32) & 0x100000000) != 0)
  {
    sub_BA7E8(v2, v3, v4 | (v5 << 32));
  }

  else
  {
    v0 = UIAccessibilityDarkerSystemColorsEnabled();
    sub_BA7E8(v2, v3, v4 | (v5 << 32));
    if (!v0)
    {
      return 1;
    }
  }

  return 0;
}

void sub_BA7E8(void *a1, id a2, unint64_t a3)
{
  if (((a3 >> 37) & 7) > 5)
  {
    if (((a3 >> 37) & 7) == 6)
    {
    }
  }

  else
  {
  }
}

uint64_t ModernPageViewController.representedFlowDestinations.getter()
{
  sub_CBC88();
}

double ModernPageViewController.representedFlowDestinations.setter(uint64_t a1)
{
  v3 = qword_4290D8;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void *ModernPageViewController.__allocating_init(asPartOf:with:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_CDAE4(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return v3;
}

void *ModernPageViewController.init(asPartOf:with:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_CBCCC(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  return v3;
}

void sub_BAA50(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_BAB08(a1, a2, a4);
  }

  else
  {
    v9 = sub_309F08();
    (*(*(v9 - 8) + 56))(a4, 1, 1, v9);
  }
}

void sub_BAB08(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_409030, &qword_31EA98);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4004A0, &unk_31DD80);
  __chkstk_darwin(v9 - 8);
  v49 = v41 - v10;
  v51 = sub_307108();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_301F38();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_308598();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v41 - v18;
  v20 = qword_400D58;
  swift_beginAccess();
  v21 = *(v3 + v20);
  if (!v21)
  {
    v29 = sub_309F08();
    (*(*(v29 - 8) + 56))(a3, 1, 1, v29);
    return;
  }

  v45 = v16;
  v46 = v14;
  v47 = v13;
  v22 = *(v21 + 40);
  sub_CA074(v55, v22);
  if ((v24 & 0x100) != 0)
  {
    v30 = sub_309F08();
    (*(*(v30 - 8) + 56))(a3, 1, 1, v30);

    return;
  }

  v25 = v24;
  v41[1] = v23;
  v42 = v22;
  v43 = v8;
  v44 = a3;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_30A1C8();
  if ((v25 & 1) == 0)
  {
    v31 = v52;
    sub_301EC8();
    v28 = v44;
    v32 = v43;
    if (*(v3 + v20))
    {

      sub_95E58(&v56);

      v61[2] = v58;
      v61[3] = v59;
      v61[4] = v60;
      v61[0] = v56;
      v61[1] = v57;
      v33 = v51;
      v34 = v50;
      v35 = v49;
      if (v57)
      {
        (v57)(v31);
      }

      else
      {
        (*(v50 + 56))(v49, 1, 1, v51);
      }

      v36 = v47;
      v37 = v46;
      sub_A0044(v61);
      if ((*(v34 + 48))(v35, 1, v33) != 1)
      {
        v39 = v48;
        (*(v34 + 32))(v48, v35, v33);
        (*(v37 + 16))(v45, v19, v36);
        sub_306FA8();
        (*(v37 + 56))(v32, 0, 1, v36);
        sub_309EE8();

        (*(v34 + 8))(v39, v33);
        goto LABEL_15;
      }
    }

    else
    {
      v35 = v49;
      (*(v50 + 56))(v49, 1, 1, v51);
      v36 = v47;
      v37 = v46;
    }

    v38 = v42;
    sub_EB68(v35, &unk_4004A0, &unk_31DD80);
    (*(v37 + 16))(v45, v19, v36);
    (*(v37 + 56))(v32, 1, 1, v36);
    sub_309EE8();

LABEL_15:
    (*(v53 + 8))(v31, v54);
    (*(v37 + 8))(v19, v36);
    goto LABEL_16;
  }

  v26 = v46;
  v27 = v47;
  (*(v46 + 16))(v45, v19, v47);
  (*(v26 + 56))(v43, 1, 1, v27);
  v28 = v44;
  sub_309EE8();

  (*(v26 + 8))(v19, v27);
LABEL_16:
  v40 = sub_309F08();
  (*(*(v40 - 8) + 56))(v28, 0, 1, v40);
}

void sub_BB298(uint64_t a1, uint64_t a2)
{
  v3 = sub_307B08();
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_CEC14(a1, v5, &type metadata accessor for PageContent);
    sub_BB364(v5);
  }
}

uint64_t sub_BB364(uint64_t a1)
{
  v3 = sub_307B08();
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = qword_400DB0;
  swift_beginAccess();
  sub_CEC14(v1 + v6, v5, &type metadata accessor for PageContent);
  swift_beginAccess();
  sub_CF598(a1, v1 + v6);
  swift_endAccess();
  sub_BC624(v5);
  sub_CEBB4(a1, &type metadata accessor for PageContent);
  return sub_CEBB4(v5, &type metadata accessor for PageContent);
}

double sub_BB470(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + qword_400D88);
    v5 = Strong;

    if (v4)
    {
      sub_3024F8();
    }
  }

  return result;
}

void sub_BB4F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + qword_400ED0) = v2;

    sub_BF880();
  }
}

void sub_BB574(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = v2;
      sub_BB5EC(v6, v3);
    }
  }
}

void sub_BB5EC(void *a1, uint64_t a2)
{
  v3 = v2;
  v60 = qword_400E20;
  if (*&v2[qword_400E20])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      swift_unknownObjectRelease();
      if (v6 == a1)
      {
        return;
      }
    }
  }

  v7 = [v3 collectionView];
  if (!v7)
  {
    goto LABEL_52;
  }

  v8 = v7;
  [v7 _setVisibleRectEdgeInsets:{-10000.0, 0.0, 0.0, 0.0}];

  v9 = *&v3[qword_400DA8];
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_scrollCoordinators;
  swift_beginAccess();
  v61 = v9;
  v11 = *(v9 + v10);
  v12 = v11[2];
  if (!v12)
  {
LABEL_9:
    v15 = v12;
    goto LABEL_14;
  }

  type metadata accessor for ModernUberScrollCoordinator();
  v13 = 0;
  v14 = 32;
  while (!swift_dynamicCastClass())
  {
    ++v13;
    v14 += 16;
    if (v12 == v13)
    {
      goto LABEL_9;
    }
  }

  v15 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v15 != v12)
  {
    v44 = v14 + 16;
    while (v15 < v12)
    {
      v63 = *(v11 + v44);
      if (!swift_dynamicCastClass())
      {
        if (v15 != v13)
        {
          if (v13 >= v12)
          {
            goto LABEL_48;
          }

          v58 = *&v11[2 * v13 + 4];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v61 + v10) = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v11 = sub_17EE18(v11);
            *(v61 + v10) = v11;
          }

          *&v11[2 * v13 + 4] = v63;
          swift_unknownObjectRelease();
          *(v61 + v10) = v11;
          if (v15 >= v11[2])
          {
            goto LABEL_49;
          }

          *(v11 + v44) = v58;
          swift_unknownObjectRelease();
          *(v61 + v10) = v11;
        }

        ++v13;
      }

      ++v15;
      v12 = v11[2];
      v44 += 16;
      if (v15 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v15 = v12;
LABEL_13:
  v12 = v13;
  if (v15 < v13)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_14:
  sub_17FAE0(v12, v15);
  swift_endAccess();
  if (sub_BDC48())
  {
    v17 = v16;
    _UISolariumEnabled();
  }

  else
  {
    v42 = *&v3[qword_400D70];
    v17 = *&v3[qword_400D70 + 8];
    swift_unknownObjectRetain();
    if ((_UISolariumEnabled() & 1) == 0 && !v42)
    {
      return;
    }
  }

  v56 = v17;
  v18 = v3;
  v19 = *&v3[qword_400E80];

  v62 = [v18 navigationItem];
  v57 = [v18 collectionView];
  v55 = v18;
  swift_unknownObjectWeakInit();
  v20 = type metadata accessor for ModernUberScrollCoordinator();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_navigationBar];
  *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_navigationBar + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v23 = a1;
  v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_active;
  v21[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_active] = 0;
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_cellWidth;
  *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_cellWidth] = 0;
  v26 = &v21[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_statusBarStyleHandler];
  *v26 = 0;
  v26[1] = 0;
  *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_cell + 8] = 0;
  v27 = swift_unknownObjectWeakInit();
  *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator____lazy_storage___scrollConfigurations] = 0;
  *(v27 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v21[v24] = 1;
  v28 = v23;
  *&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_pageNavigationItem] = v19;
  *(v22 + 1) = v56;
  swift_unknownObjectWeakAssign();
  v29 = v57;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRetain();
  [v23 frame];
  *&v21[v25] = v30;
  v31 = *v26;
  v32 = v26[1];
  *v26 = UINavigationBar.overrideBackButtonStyle.setter;
  v26[1] = 0;
  sub_1EBD0(v31, v32);
  v64.receiver = v21;
  v64.super_class = v20;
  v33 = objc_msgSendSuper2(&v64, "init");
  v34 = v33;
  if (v57)
  {
    v35 = v33;
    v36 = v61;
    if ((_UISolariumEnabled() & 1) != 0 || v35[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_active] == 1)
    {
      v37 = swift_unknownObjectWeakLoadStrong();
      v38 = v55;
      if (!v37)
      {
        v39 = &v35[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_navigationBar];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v40 = *(v39 + 1);
          ObjectType = swift_getObjectType();
          v37 = (*(v40 + 152))(ObjectType, v40);
          swift_unknownObjectRelease();
        }

        else
        {
          v37 = 0;
        }

        v29 = v57;
      }

      sub_14C6EC(v29, v37);

      v35 = v37;
    }

    else
    {

      v38 = v55;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectWeakDestroy();
    v43 = &PlayControlsStackView;
  }

  else
  {
    swift_unknownObjectWeakDestroy();

    swift_unknownObjectRelease();

    v43 = &PlayControlsStackView;
    v36 = v61;
    v38 = v55;
  }

  v46 = *&v38[v60];
  *&v38[v60] = v34;
  v47 = v34;

  v48 = v47;
  sub_17F310(v48, v36);

  v49 = [v38 *&v43[396]];
  if (!v49)
  {
LABEL_53:
    __break(1u);
    return;
  }

  v50 = v49;
  v51 = [v49 refreshControl];

  if (v51)
  {
    v53 = [v28 contentView];
    v54 = [v53 overrideUserInterfaceStyle];

    [v51 setOverrideUserInterfaceStyle:v54];
  }

  *&v38[qword_400EC0] = 2;
  sub_BF764(v52);
  swift_unknownObjectRelease();
}

void sub_BBC54(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 20);
  v5 = *(a1 + 4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_BBCD8(v2, v3, (v5 | (v4 << 32)) & 0xFFFFFFFFFFLL);
  }
}

void sub_BBCD8(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = a3 & 0xFFFFFFFFFFLL;
  v10 = sub_307798();
  v11 = v9;
  v12 = (v5 >> 37) & 7;
  if (((v5 >> 37) & 7) <= 2)
  {
    if (!v12)
    {
      v16 = 0;
      v18 = 0;
      v19 = 0;
      a1 = 0;
      v17 = 1;
      goto LABEL_23;
    }

    if (v12 == 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      a1 = 0;
      goto LABEL_23;
    }

    v53 = v9;
    v19 = [objc_allocWithZone(UINavigationBarAppearance) init];
    if ((v8 & 0x100000000) != 0 || UIAccessibilityDarkerSystemColorsEnabled())
    {
      [v19 configureWithDefaultBackground];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40, &unk_31D640);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_315430;
      *(inited + 32) = NSFontAttributeName;
      v22 = sub_124C4(0, &qword_408100, UIFont_ptr);
      v23 = NSFontAttributeName;
      v24 = sub_30CC98();
      *(inited + 64) = v22;
      *(inited + 40) = v24;
      sub_2D6CB0(inited);
      swift_setDeallocating();
      sub_EB68(inited + 32, &unk_3FFD50, &qword_31E9D0);
    }

    else
    {
      v35 = v19;
      [v35 configureWithTransparentBackground];
      v36 = [objc_allocWithZone(UIColor) initWithRed:v5 / 255.0 green:BYTE1(v5) / 255.0 blue:BYTE2(v5) / 255.0 alpha:BYTE3(v5) / 255.0];
      [v35 setBackgroundColor:v36];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40, &unk_31D640);
      v37 = swift_initStackObject();
      *(v37 + 16) = xmmword_315420;
      *(v37 + 32) = NSForegroundColorAttributeName;
      v38 = objc_opt_self();
      v39 = NSForegroundColorAttributeName;
      v40 = [v38 whiteColor];
      v41 = sub_124C4(0, &qword_3FFD48, UIColor_ptr);
      *(v37 + 40) = v40;
      *(v37 + 64) = v41;
      *(v37 + 72) = NSFontAttributeName;
      v42 = sub_124C4(0, &qword_408100, UIFont_ptr);
      v43 = NSFontAttributeName;
      v44 = sub_30CC98();
      *(v37 + 104) = v42;
      *(v37 + 80) = v44;
      sub_2D6CB0(v37);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD50, &qword_31E9D0);
      swift_arrayDestroy();
    }

    type metadata accessor for Key(0);
    sub_CEB6C(&qword_3FB410, type metadata accessor for Key, &unk_316364);
    isa = sub_30BF88().super.isa;

    [v19 setTitleTextAttributes:isa];

    sub_BEFBC(a1, a2, v8);
    v46 = v19;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    a1 = 0;
    v20 = 2;
    v11 = v53;
    if (!_UISolariumEnabled())
    {
      goto LABEL_28;
    }
  }

  else if (((v5 >> 37) & 7) > 4)
  {
    if (v12 != 5)
    {

      v25 = a1;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_23;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    a1 = 0;
    v16 = 1;
    v20 = 3;
    if (!_UISolariumEnabled())
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v12 == 3)
    {
      v13 = [v4 traitCollection];
      if (v5 == 4)
      {
        v14 = v13;
        v15 = [v13 horizontalSizeClass];

        if (v15 == &dword_0 + 1)
        {
          LOBYTE(v5) = 2;
        }

        else
        {
          LOBYTE(v5) = 5;
        }
      }

      else
      {
      }

      sub_BE8F0(0, v5);
      v16 = 0;
      v17 = 0;
      v19 = 0;
      a1 = 0;
      v18 = 1;
LABEL_23:
      v20 = 2;
      if (_UISolariumEnabled())
      {
        goto LABEL_24;
      }

LABEL_28:
      v47 = a1;
      sub_BF4A4(v10, v11, a1);
      v48 = &v4[qword_400EC8];
      v48[16] = 0;
      *v48 = 0;
      *(v48 + 1) = 0;

      goto LABEL_29;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    a1 = 0;
    v16 = 1;
    v20 = 1;
    if (!_UISolariumEnabled())
    {
      goto LABEL_28;
    }
  }

LABEL_24:
  v26 = v19;
  v27 = a1;
  v28 = v11;
  v29 = qword_400E80;
  v54 = v20;
  v30 = *&v4[qword_400E80];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40AB30, &qword_319B40);
  sub_120F0();
  v52 = v16;
  *(v30 + 42) = (sub_30D398() & 1) == 0;

  *(*&v4[v29] + 44) = v18;

  sub_CF698();

  v31 = *&v4[v29];
  *(v31 + 24) = v10;
  *(v31 + 32) = v28;
  a1 = v27;
  v19 = v26;

  v20 = v54;

  sub_CF698();

  *(*&v4[v29] + 40) = v17;

  sub_CF698();

  *(*&v4[v29] + 41) = v52;

  sub_CF698();

  v32 = &v4[qword_400EC8];
  v32[16] = 0;
  *v32 = 0;
  *(v32 + 1) = 0;

  v34 = v4[qword_400EF0];
  v4[qword_400EF0] = 1;
  if (v34 != v4[qword_400EF0])
  {
    v33 = [v4 isViewLoaded];
  }

LABEL_29:
  *&v4[qword_400EC0] = v20;
  sub_BF764(v33);
  if (v19)
  {
    v49 = v19;
    v50 = [v4 navigationItem];
    [v50 setStandardAppearance:v49];

    v51 = [v4 navigationItem];
    [v51 setScrollEdgeAppearance:v49];
  }

  [v4 setNeedsStatusBarAppearanceUpdate];
}

void sub_BC3D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong isViewLoaded])
    {
      v4 = [v3 collectionView];
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = v4;
      [v4 reloadData];

      v3 = v5;
    }
  }
}

void sub_BC470(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4067B0, &unk_328D90);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_EB00(a1, v5, &unk_4067B0, &unk_328D90);
    sub_BA098(v5);
  }
}

void sub_BC540(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong contentScrollView];
    [v5 scrollToTopAnimated:v2];
  }
}

uint64_t sub_BC624(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_307B08();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_306EE8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
  *v14 = sub_30C8F8();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = sub_306F18();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v17 = qword_400DB0;
    swift_beginAccess();
    sub_CEC14(v2 + v17, v10, &type metadata accessor for PageContent);
    sub_BC900(v10);
    sub_CEBB4(v10, &type metadata accessor for PageContent);
    sub_CEC14(v2 + v17, v10, &type metadata accessor for PageContent);
    sub_CEC14(a1, v6, &type metadata accessor for PageContent);
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_BCC0C(v10, v6);
    sub_EB68(v6, &qword_400D80, &qword_31E5B0);
    return sub_CEBB4(v10, &type metadata accessor for PageContent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_BC900(uint64_t a1)
{
  v2 = sub_307788();
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_30A078();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_307B08();
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_CEC14(a1, v11, &type metadata accessor for PageContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_CF1E4(v11, v4, &type metadata accessor for ModernPage);
    v16 = sub_CEB6C(&qword_401080, &type metadata accessor for ModernPage, &protocol conformance descriptor for ModernPage);
    v17 = sub_CEB6C(&qword_401088, &type metadata accessor for ModernPage, &protocol conformance descriptor for ModernPage);
    sub_C84D8(v4, v2, v16, v17);
    v18 = &type metadata accessor for ModernPage;
    v19 = v4;
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v6 + 32))(v8, v11, v5);
      v13 = sub_CEB6C(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
      v14 = sub_CEB6C(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
      sub_C84D8(v8, v5, v13, v14);
      return (*(v6 + 8))(v8, v5);
    }

    v18 = &type metadata accessor for PageContent;
    v19 = v11;
  }

  return sub_CEBB4(v19, v18);
}

void sub_BCC0C(uint64_t a1, uint64_t a2)
{
  v112 = a2;
  v111 = swift_isaMask & *v2;
  v117 = sub_30BB28();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v114 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v116 = &v92 - v6;
  __chkstk_darwin(v7);
  v9 = &v92 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v10 - 8);
  v110 = &v92 - v11;
  v103 = sub_307788();
  __chkstk_darwin(v103);
  v109 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_304338();
  __chkstk_darwin(v13 - 8);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_30A078();
  v107 = *(v16 - 8);
  v108 = v16;
  __chkstk_darwin(v16);
  v104 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v106 = &v92 - v19;
  v101 = sub_306E68();
  __chkstk_darwin(v101);
  v102 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_3042E8();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v92 - v23;
  v25 = sub_307B08();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v92 - v30;
  sub_CDEB8(0);
  if ([v2 isViewLoaded])
  {
    v94 = v15;
    v95 = v9;
    v32 = *&v2[qword_400D88];
    v97 = v2;
    v105 = v25;
    v33 = *&v2[qword_400E30];
    sub_CEC14(a1, v31, &type metadata accessor for PageContent);
    v93 = v26;
    v34 = a1;
    v35 = (*(v26 + 80) + 24) & ~*(v26 + 80);
    v36 = (v27 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    v96 = v32;
    *(v37 + 16) = v32;
    v38 = v37 + v35;
    v39 = v34;
    sub_CF1E4(v31, v38, &type metadata accessor for PageContent);
    v113 = v37;
    *(v37 + v36) = v33;
    sub_CEC14(v34, v28, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v48 = v116;
      if (EnumCaseMultiPayload == 2)
      {
        v51 = v106;
        v50 = v107;
        v52 = v108;
        (*(v107 + 32))(v106, v28, v108);
        v42 = v97;
        v53 = *&v97[qword_400D90];
        v54 = v104;
        (*(v50 + 16))(v104, v51, v52);
        *(&v119 + 1) = sub_304A38();
        v120 = &protocol witness table for UIContentUnavailableConfiguration;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&aBlock);

        UIContentUnavailableConfiguration.init(asPartOf:for:)(v53, v54, boxed_opaque_existential_0Tm);
        sub_30C8A8();
        sub_CDF68(0);
        v56 = qword_400D58;
        swift_beginAccess();
        v49 = v117;
        if (*&v42[v56])
        {
          swift_endAccess();
          v57 = v113;

          sub_997C4(_swiftEmptyArrayStorage, 0, sub_CF154, v57);

          (*(v50 + 8))(v51, v52);
        }

        else
        {
          (*(v50 + 8))(v51, v52);
          swift_endAccess();
        }
      }

      else
      {
        v62 = v109;
        sub_CF1E4(v28, v109, &type metadata accessor for ModernPage);
        v120 = 0;
        aBlock = 0u;
        v119 = 0u;

        v42 = v97;
        sub_30C8A8();
        sub_CDF68(0);
        v63 = sub_309618();
        v49 = v117;
        if (v63)
        {
          v64 = v112;
          v65 = sub_307AD8();
        }

        else
        {
          v65 = 0;
          v64 = v112;
        }

        v72 = v93;
        v73 = qword_400D58;
        swift_beginAccess();
        if (*&v42[v73])
        {
          v74 = *(v62 + *(v103 + 24));
          v75 = v42;
          v76 = v113;

          v77 = v74;
          v64 = v112;
          sub_997C4(v77, v65 & 1, sub_CF154, v76);

          v42 = v75;
        }

        v78 = v110;
        sub_EB00(v64, v110, &qword_400D80, &qword_31E5B0);
        if ((*(v72 + 48))(v78, 1, v105) == 1)
        {
          sub_CEBB4(v62, &type metadata accessor for ModernPage);
          sub_EB68(v78, &qword_400D80, &qword_31E5B0);
        }

        else
        {
          if (swift_getEnumCaseMultiPayload())
          {
            sub_CEBB4(v62, &type metadata accessor for ModernPage);
            v79 = &type metadata accessor for PageContent;
            v80 = v78;
          }

          else
          {
            UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
            v79 = &type metadata accessor for ModernPage;
            v80 = v62;
          }

          sub_CEBB4(v80, v79);
        }
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v120 = 0;
      aBlock = 0u;
      v119 = 0u;

      v42 = v97;
      sub_30C8A8();
      swift_errorRetain();
      sub_304328();
      v58 = objc_allocWithZone(sub_304358());

      v59 = sub_304348();
      sub_CDF68(v59);

      v60 = qword_400D58;
      swift_beginAccess();
      v49 = v117;
      if (*&v42[v60])
      {
        v61 = v113;

        sub_997C4(_swiftEmptyArrayStorage, 0, sub_CF154, v61);
      }

      else
      {
      }

      v48 = v116;
    }

    else
    {
      v41 = *v28;
      v42 = v97;
      if (v41)
      {
        v43 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v44 = swift_allocObject();
        v45 = v111;
        v44[2] = *(v111 + 80);
        v44[3] = *(v45 + 88);
        v44[4] = v43;
        v46 = v113;
        v44[5] = sub_CF154;
        v44[6] = v46;
        v120 = sub_CF28C;
        v121 = v44;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v119 = sub_914CC;
        *(&v119 + 1) = &block_descriptor_93;
        _Block_copy(&aBlock);
        v122 = _swiftEmptyArrayStorage;
        sub_CEB6C(&qword_40D760, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860, &unk_31E9E0);
        sub_EC8C(&qword_40D770, &qword_408860, &unk_31E9E0, &protocol conformance descriptor for [A]);
        sub_30D488();
        sub_306ED8();
        swift_allocObject();
        v47 = sub_306EB8();

        sub_CDEB8(v47);

        v48 = v116;
        v49 = v117;
      }

      else
      {
        v120 = 0;
        aBlock = 0u;
        v119 = 0u;
        v66 = v96;

        sub_30C8A8();
        sub_3042D8();
        v67 = v99;
        v68 = v100;
        (*(v99 + 16))(v98, v24, v100);
        if (v66)
        {
          sub_302518();
        }

        sub_304318();
        v69 = sub_3042F8();
        (*(v67 + 8))(v24, v68);
        sub_CDF68(v69);

        v70 = qword_400D58;
        swift_beginAccess();
        v48 = v116;
        v49 = v117;
        if (*&v42[v70])
        {

          v71 = v113;

          sub_997C4(_swiftEmptyArrayStorage, 0, sub_CF154, v71);
        }
      }
    }

    v81 = [v42 collectionView];
    if (v81)
    {
      v82 = v81;
      sub_BA610();
      aBlock = 0u;
      v119 = 0u;
      v83 = v114;
      sub_30BAD8();

      sub_EB68(&aBlock, &unk_3FBB70, &unk_3174C0);
      v84 = sub_307AE8();
      *(&v119 + 1) = &type metadata for String;
      *&aBlock = v84;
      *(&aBlock + 1) = v85;
      sub_30BB08();
      v117 = v39;
      v86 = v48;
      v87 = *(v115 + 8);
      v87(v83, v49);
      sub_EB68(&aBlock, &unk_3FBB70, &unk_3174C0);
      v88 = [v42 collectionView];
      if (v88)
      {
        v89 = v88;
        v90 = [v88 numberOfSections];

        *(&v119 + 1) = &type metadata for Int;
        *&aBlock = v90;
        v91 = v95;
        sub_30BB08();
        v87(v86, v49);
        sub_EB68(&aBlock, &unk_3FBB70, &unk_3174C0);
        sub_30CED8();

        v87(v91, v49);
        sub_BE3E8(v117);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_BDB84()
{
  v3 = *&v0[qword_4290E0];
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];

    sub_302758();
  }

  else
  {
    __break(1u);
  }
}

id sub_BDC48()
{
  v1 = sub_303098();
  v2 = [v0 navigationController];
  v3 = v2;
  if (v1)
  {
    if (v2)
    {
      v4 = [v2 navigationBar];

      return v4;
    }
  }

  else if (v2)
  {
    ObjectType = swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      v8 = *(v7 + 8);
      v9 = v7;
      v10 = v3;
      v11 = v8(ObjectType, v9);

      return v11;
    }
  }

  return 0;
}

Swift::Void __swiftcall ModernPageViewController.willMove(toParent:)(UIViewController_optional toParent)
{
  isa = toParent.value.super.super.isa;
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "willMoveToParentViewController:", isa);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    v6 = &protocol witness table for UINavigationBar;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = &v1[qword_400D70];
  *v7 = v5;
  *(v7 + 1) = v6;
  swift_unknownObjectRelease();
}

void sub_BDE04(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.super.isa = a3;
  ModernPageViewController.willMove(toParent:)(v9);
}

void sub_BDE70()
{
  v1 = sub_306E58();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_306EA8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  if (*(v0 + qword_400EB0))
  {

    sub_306E98();
    *v4 = 500;
    (*(v2 + 104))(v4, enum case for DispatchTimeInterval.milliseconds(_:), v1);
    sub_306EF8();
    (*(v2 + 8))(v4, v1);
    v12 = *(v6 + 8);
    v12(v8, v5);
    sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
    v13 = sub_30C8F8();
    sub_30C8D8();

    v12(v11, v5);
  }
}

uint64_t sub_BE0A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_307B08();
  __chkstk_darwin(v4);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v11 - v6;
  if (a1)
  {
    sub_CEC14(a2, &v11 - v6, &type metadata accessor for PageContent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = &type metadata accessor for PageContent;
    if (EnumCaseMultiPayload == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401040, &qword_31E9A8);
      sub_3024A8();
      v9 = &type metadata accessor for ModernPage;
    }

    sub_CEBB4(v7, v9);
  }

  return sub_3098B8();
}

void sub_BE1B8(uint64_t a1, void (*a2)(__n128), uint64_t a3)
{
  v5 = sub_3042E8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v17 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v13 = Strong;
    sub_30C8A8();

    sub_3042D8();
    v14 = *&v13[qword_400D88];
    (*(v6 + 16))(v8, v11, v5);
    if (v14)
    {

      sub_302518();
    }

    sub_304318();
    v15 = sub_3042F8();

    (*(v6 + 8))(v11, v5);
    sub_CDF68(v15);

    v16 = qword_400D58;
    swift_beginAccess();
    if (*&v13[v16])
    {

      sub_997C4(_swiftEmptyArrayStorage, 1, a2, a3);
    }

    else
    {
    }
  }
}

uint64_t sub_BE3E8(uint64_t a1)
{
  v3 = sub_30BE68();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v50 - v7;
  v9 = sub_30A078();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  v15 = sub_307B08();
  __chkstk_darwin(v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  sub_CEC14(a1, &v50 - v19, &type metadata accessor for PageContent);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v51 = v1;
    sub_CEC14(v20, v17, &type metadata accessor for PageContent);
    (*(v10 + 16))(v14, v17, v9);
    sub_30A048();
    v21 = sub_3034F8();
    v23 = v22;
    v24 = sub_303328();
    v52 = v9;
    v26 = v25;
    v56 = v21;
    v57 = v23;
    v58._countAndFlagsBits = 95;
    v58._object = 0xE100000000000000;
    sub_30C238(v58);
    v59._countAndFlagsBits = v24;
    v59._object = v26;
    sub_30C238(v59);

    sub_30BE48();
    LOBYTE(v26) = sub_30BE38();
    v27 = v55;
    v28 = *(v54 + 8);
    v28(v5, v55);
    v28(v8, v27);
    if (v26)
    {
      v29 = v52;
      v30 = [v51 collectionView];
      if (v30)
      {
        v31 = v30;
        [v30 setScrollEnabled:0];
      }

      v32 = *(v10 + 8);
      v32(v14, v29);
      v32(v17, v29);
      return sub_CEBB4(v20, &type metadata accessor for PageContent);
    }

    v33 = *(v10 + 8);
    v34 = v52;
    v54 = v10 + 8;
    v50 = v33;
    v33(v14, v52);
    v35 = v53;
    (*(v10 + 32))(v53, v17, v34);
    sub_30A048();
    v36 = sub_3034F8();
    v38 = v37;
    v39 = sub_303338();
    v41 = v40;
    v56 = v36;
    v57 = v38;
    v60._countAndFlagsBits = 95;
    v60._object = 0xE100000000000000;
    sub_30C238(v60);
    v61._countAndFlagsBits = v39;
    v61._object = v41;
    sub_30C238(v61);

    sub_30BE48();
    LOBYTE(v36) = sub_30BE38();
    v42 = v55;
    v28(v5, v55);
    v28(v8, v42);
    if (v36)
    {
      v43 = v50;
      v44 = v52;
      v45 = [v51 collectionView];
      if (v45)
      {
        v46 = v45;
        [v45 setScrollEnabled:0];
      }

      v43(v35, v44);
      return sub_CEBB4(v20, &type metadata accessor for PageContent);
    }

    v50(v35, v52);
    v1 = v51;
  }

  v47 = [v1 collectionView];
  if (v47)
  {
    v48 = v47;
    [v47 setScrollEnabled:1];
  }

  return sub_CEBB4(v20, &type metadata accessor for PageContent);
}

void sub_BE8F0(char a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = type metadata accessor for UberScrollConfiguration(0);
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    if (*&v2[qword_400E20])
    {
      return;
    }

    if (_UISolariumEnabled())
    {
      goto LABEL_4;
    }

    if (a2 <= 7u)
    {
      if (((1 << a2) & 0xC) != 0)
      {
LABEL_4:
        if (qword_3FAB60 != -1)
        {
          swift_once();
        }

        v9 = qword_4293A8;
LABEL_7:
        __swift_project_value_buffer(v6, v9);
LABEL_17:

        return;
      }

      if (((1 << a2) & 0x30) != 0)
      {
        if (qword_3FAB68 != -1)
        {
          swift_once();
        }

        v9 = qword_4293C0;
        goto LABEL_7;
      }

      if (((1 << a2) & 0xC0) != 0)
      {
        if (qword_3FAB70 != -1)
        {
          swift_once();
        }

        v9 = qword_4293D8;
        goto LABEL_7;
      }
    }

    if (a2)
    {
      if (qword_3FAB58 != -1)
      {
        swift_once();
      }

      v9 = qword_429390;
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!sub_BDC48())
  {
    return;
  }

  v11 = v10;
  v12 = [v2 navigationItem];

  if (a1)
  {
    [v12 _setManualScrollEdgeAppearanceEnabled:0];
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(ObjectType, v11, 1.0);
    (*(v11 + 40))(ObjectType, v11, 1.0);
    v14 = [v12 titleView];
    if (v14)
    {
      v15 = v14;
      type metadata accessor for UberNavigationTitleView();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        [v16 setHideStandardTitle:0];
      }
    }

    if (qword_3FAFB8 != -1)
    {
      swift_once();
    }

    v17 = qword_40DB80;
    v18 = *(v11 + 64);
    v19 = qword_40DB80;
    v18(v17, ObjectType, v11);
    swift_unknownObjectRelease();

    goto LABEL_17;
  }

  [v12 _setManualScrollEdgeAppearanceEnabled:1];
  v20 = objc_allocWithZone(type metadata accessor for UberNavigationTitleView());

  sub_154000(v21);
  v23 = v22;
  [v12 setTitleView:v22];
  if (_UISolariumEnabled())
  {
    goto LABEL_21;
  }

  if (a2 > 7u)
  {
LABEL_60:
    if (a2)
    {
      if (qword_3FAB58 != -1)
      {
        swift_once();
      }

      v24 = qword_429390;
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (((1 << a2) & 0xC) == 0)
  {
    if (((1 << a2) & 0x30) != 0)
    {
      if (qword_3FAB68 != -1)
      {
        swift_once();
      }

      v24 = qword_4293C0;
      goto LABEL_24;
    }

    if (((1 << a2) & 0xC0) != 0)
    {
      if (qword_3FAB70 != -1)
      {
        swift_once();
      }

      v24 = qword_4293D8;
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_21:
  if (qword_3FAB60 != -1)
  {
    swift_once();
  }

  v24 = qword_4293A8;
LABEL_24:
  v25 = __swift_project_value_buffer(v6, v24);
  sub_CEC14(v25, v8, type metadata accessor for UberScrollConfiguration);
  v26 = v8[80];
  sub_CEBB4(v8, type metadata accessor for UberScrollConfiguration);
  if (v26 == 1)
  {
    v27 = swift_getObjectType();
    (*(v11 + 40))(v27, v11, 0.0);
  }

  v28 = 1.0;
  v29 = 0.0;
  v30 = 0.0;
  if (((1 << a2) & 0xD7) == 0)
  {
    v31 = [v23 traitCollection];
    v32 = sub_30C9D8();

    if (v32)
    {
      v29 = 20.0;
    }

    else
    {
      v29 = -20.0;
    }

    v30 = 1.0;
    v28 = 0.0;
  }

  v33 = swift_unknownObjectWeakInit();
  sub_154994(v33, v30, v28, v29);

  swift_unknownObjectWeakDestroy();

  v34 = *&v3[qword_400E20];
  if (v34)
  {
    v34[OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_active] = 1;
    v35 = v34;
    v36 = [v3 collectionView];
    if (!v36)
    {
      __break(1u);
      return;
    }

    v37 = v36;

    v38 = [v3 navigationItem];
    sub_14C6EC(v37, v38);
  }

  swift_unknownObjectRelease();
}

void sub_BEFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xE000000000) != 0x4000000000)
  {
    return;
  }

  v4 = a3 & 0xFFFFFFFFFFLL;
  if ((a3 & 0x100000000) != 0)
  {
    v45 = 0;
    if (_UISolariumEnabled())
    {
LABEL_46:

      return;
    }
  }

  else
  {
    v45 = [objc_opt_self() whiteColor];
    if (_UISolariumEnabled())
    {
      goto LABEL_46;
    }
  }

  if ((v4 & 0x100000000) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v44 = v5;
  v6 = [v3 navigationItem];
  v7 = [v6 leftBarButtonItems];

  if (v7)
  {
    sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
    v8 = sub_30C368();
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = [v3 navigationItem];
  v10 = [v9 rightBarButtonItems];

  if (v10)
  {
    sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
    v11 = sub_30C368();
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  sub_14A38C(v11);
  if (v8 >> 62)
  {
LABEL_39:
    v12 = sub_30D668();
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_40:
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_41;
  }

  v12 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  if (!v12)
  {
    goto LABEL_40;
  }

LABEL_18:
  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  do
  {
    v15 = v14;
    v16 = v13;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v17 = sub_30D578();
      }

      else
      {
        if (v16 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_38;
        }

        v17 = *(v8 + 8 * v16 + 32);
      }

      v18 = v17;
      v13 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v19 = [v17 customView];

      if (v19)
      {
        break;
      }

LABEL_21:
      ++v16;
      if (v13 == v12)
      {
        v14 = v15;
        goto LABEL_41;
      }
    }

    swift_getObjectType();
    v20 = swift_conformsToProtocol2();
    if (!v20)
    {

      goto LABEL_21;
    }

    v21 = v20;
    v22 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_CA6B4(0, v15[2] + 1, 1, v15, &qword_401008, &qword_31E900, &qword_401010, &qword_31E908);
    }

    v25 = v22[2];
    v24 = v22[3];
    v26 = v22;
    if (v25 >= v24 >> 1)
    {
      v26 = sub_CA6B4((v24 > 1), v25 + 1, 1, v22, &qword_401008, &qword_31E900, &qword_401010, &qword_31E908);
    }

    v26[2] = v25 + 1;
    v14 = v26;
    v27 = &v26[2 * v25];
    v27[4] = v19;
    v27[5] = v21;
  }

  while (v13 != v12);
LABEL_41:

  v28 = v14[2];
  if (!v28)
  {
LABEL_45:

    v38 = [v43 navigationItem];
    v39 = *&v43[qword_400D90];
    v40 = objc_allocWithZone(type metadata accessor for CustomBackButtonNavigationBarTitleView());

    v41 = v45;
    sub_B53C8(v39, v45);
    v45 = v42;
    [v38 setTitleView:v42];

    goto LABEL_46;
  }

  v29 = 0;
  v30 = v14 + 5;
  while (v29 < v14[2])
  {
    ++v29;
    v31 = *(v30 - 1);
    v32 = *v30;
    v33 = v14;
    ObjectType = swift_getObjectType();
    v35 = *(v32 + 24);
    v36 = v31;
    v35(v44, ObjectType, v32);
    v37 = [objc_opt_self() effectWithStyle:16];
    v14 = v33;
    (*(v32 + 8))();

    [v36 setTintColor:v45];
    v30 += 2;
    if (v28 == v29)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
}

void sub_BF4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + qword_400EB8);
  v5 = *(v3 + qword_400EB8 + 16);
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;

  sub_BF4F4();
}

void sub_BF4F4()
{
  if (sub_303098())
  {
    v1 = [v0 navigationItem];
    if (*&v0[qword_400EB8 + 8])
    {

      v2 = sub_30C098();
    }

    else
    {
      v2 = 0;
    }

    [v1 setTitle:v2];
  }

  else
  {
    if (*&v0[qword_400EB8 + 8])
    {

      v2 = sub_30C098();
    }

    else
    {
      v2 = 0;
    }

    [v0 setTitle:v2];
  }

  sub_BF600();
}

void sub_BF600()
{
  if ((sub_303098() & 1) == 0 && *(v0 + qword_400DF8) == 1)
  {
    if (sub_BDC48())
    {
      v2 = v1;
      ObjectType = swift_getObjectType();
      v4 = *(v0 + qword_400EB8);
      v5 = *(v0 + qword_400EB8 + 8);
      v6 = *(v0 + qword_400EB8 + 16);
      v7 = *(v2 + 88);
      v8 = v6;

      v7(v4, v5, v6, ObjectType, v2);
      swift_unknownObjectRelease();
    }

    if (sub_BDC48())
    {
      v10 = v9;
      v11 = swift_getObjectType();

      v14 = sub_C01F8(v12, v13);

      (*(v10 + 112))(v14, v11, v10);
      swift_unknownObjectRelease();
    }

    sub_C1548();
  }
}

void sub_BF764(uint64_t a1)
{
  v2 = _UISolariumEnabled();
  v3 = qword_400EC0;
  v4 = *&v1[qword_400EC0];
  if ((v2 & 1) == 0 && v4 == 3)
  {
    v5 = [v1 traitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == &dword_0 + 1)
    {
      v4 = *&v1[v3];
    }

    else
    {
      v4 = 1;
    }
  }

  v7 = [v1 navigationItem];
  v8 = [v7 largeTitleDisplayMode];

  v9 = [v1 navigationItem];
  [v9 setLargeTitleDisplayMode:v4];

  if (v8 != v4 && (_UISolariumEnabled() & 1) == 0)
  {

    sub_BF880();
  }
}

void sub_BF880()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058, &unk_32C5D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_308BD8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v52 - v11;
  if (!_UISolariumEnabled() || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    if (v20 == &dword_0 + 3)
    {
      v21 = *&v1[qword_400ED0];
      if (v21)
      {
        v53 = qword_400ED0;
        v54 = v2;
        v22 = *(v21 + 16);

        if (v22)
        {
          v23 = 0;
          while (v23 < *(v21 + 16))
          {
            sub_CEC14(v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23, v9, &type metadata accessor for HeaderButtonItem);
            if (sub_308BC8())
            {

              sub_CF1E4(v9, v5, &type metadata accessor for HeaderButtonItem);
              (*(v7 + 56))(v5, 0, 1, v6);
              sub_EB68(v5, &qword_401058, &unk_32C5D0);
              v47 = [v1 traitCollection];
              v48 = sub_30C968();

              if (v48)
              {
                goto LABEL_18;
              }

              v49 = [v1 navigationItem];
              [v49 setRightBarButtonItems:0];

              v50 = *&v1[v53];
              if (v50 && *(v50 + 16))
              {
                v51 = *&v1[qword_400D90];
                objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

                v24 = sub_268170(v50, v51);
                v27.super.isa = [v1 navigationItem];
                [(objc_class *)v27.super.isa _setLargeTitleAccessoryView:v24 alignToBaseline:v24[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
                goto LABEL_19;
              }

              goto LABEL_20;
            }

            ++v23;
            sub_CEBB4(v9, &type metadata accessor for HeaderButtonItem);
            if (v22 == v23)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_36;
        }

LABEL_16:
      }

      (*(v7 + 56))(v5, 1, 1, v6);
      sub_EB68(v5, &qword_401058, &unk_32C5D0);
    }

LABEL_18:
    v24 = [v1 navigationItem];

    sub_C01F8(v25, v26);

    sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
    v27.super.isa = sub_30C358().super.isa;

    [v24 setRightBarButtonItems:v27.super.isa];
LABEL_19:

LABEL_20:
    v28 = [v1 navigationItem];
    v29 = [v1 navigationController];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 navigationBar];

      v32 = [v31 _backdropViewLayerGroupName];
      if (v32)
      {
        v33 = sub_30C0D8();
        v35 = v34;

        v29 = v33;
        goto LABEL_25;
      }

      v29 = 0;
    }

    v35 = 0;
LABEL_25:
    sub_B42D4(v29, v35);

    if (_UISolariumEnabled())
    {
      return;
    }

    goto LABEL_26;
  }

  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    while (1)
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
LABEL_8:

        goto LABEL_29;
      }

      if (v15 >= *(v13 + 16))
      {
        break;
      }

      sub_CEC14(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15++, v12, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_CEBB4(v12, &type metadata accessor for HeaderButtonItem);
      if (v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v16 = 0;
LABEL_29:
  v1[qword_400ED8] = v16;
  v39 = [v1 navigationItem];

  sub_C0708(v40, v41);

  sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  isa = sub_30C358().super.isa;

  [v39 setTrailingItemGroups:isa];

  v43 = [v1 navigationItem];

  v46 = sub_C0C24(v44, v45);

  [v43 setAdditionalOverflowItems:v46];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_C1548();
    sub_309568();
    sub_304D58();

    v36 = v55;
    v37 = v56;
    v38 = v57 | (v58 << 32);
    sub_BEFBC(v55, v56, v38);
    sub_BA7E8(v36, v37, v38);
  }
}

id sub_BFFE0()
{
  v1 = v0;
  v2 = sub_302B48();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isViewLoaded];
  if (!result)
  {
    return result;
  }

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  [result safeAreaInsets];
  v10 = v9;
  v12 = v11;

  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  [result bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v30.origin.x = v15;
  v30.origin.y = v17;
  v30.size.width = v19;
  v30.size.height = v21;
  CGRectGetWidth(v30);
  sub_302B08();
  sub_302B28();
  v23 = v22;
  result = [v1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v24 = result;
  v25 = [result effectiveUserInterfaceLayoutDirection];

  if (v25 == &dword_0 + 1)
  {
    v26 = v12;
  }

  else
  {
    v26 = v10;
  }

  v27 = v23 + v26;
  v28 = [v1 navigationItem];
  [v28 _setTitleMinimumMargins:{0.0, v27, 0.0, 0.0}];

  return (*(v3 + 8))(v6, v2);
}

void *sub_C01F8(void *a1, double a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1[2];
  v28 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v4 = _swiftEmptyArrayStorage;
    v5 = v3;
    do
    {
      --v5;
      while (1)
      {
        if (v5 >= v3)
        {
          __break(1u);
          goto LABEL_15;
        }

        sub_308BD8();
        sub_C0658(v2, &v27);
        if (v27)
        {
          break;
        }

        if (--v5 == -1)
        {
          goto LABEL_16;
        }
      }

      sub_30C348();
      if (*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v28 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_30C378();
      }

      sub_30C3C8();
      v4 = v28;
    }

    while (v5);
  }

  else
  {
LABEL_15:
    v4 = _swiftEmptyArrayStorage;
  }

LABEL_16:
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v28 = _swiftEmptyArrayStorage;
    if (v4 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
    {
      v7 = 0;
      v8 = v4 & 0xC000000000000001;
      v9 = v4 & 0xFFFFFFFFFFFFFF8;
      --v3;
      v26 = i;
      v25 = v3;
      while (v8)
      {
        v11 = sub_30D578();
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_33;
        }

LABEL_25:
        v13 = v11;
        sub_30C348();
        if (*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v28 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_30C378();
        }

        sub_30C3C8();
        if (v7 >= v3)
        {
          v10 = v28;
        }

        else
        {
          v14 = [objc_allocWithZone(UIView) init];
          [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
          v15 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_317F20;
          v17 = [v14 widthAnchor];
          v18 = [v17 constraintEqualToConstant:0.0];

          *(v16 + 32) = v18;
          v19 = [v14 heightAnchor];
          v20 = [v19 constraintEqualToConstant:1.0];

          *(v16 + 40) = v20;
          sub_124C4(0, &qword_403000, NSLayoutConstraint_ptr);
          isa = sub_30C358().super.isa;

          [v15 activateConstraints:isa];

          v22 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v14];
          v23 = v22;
          sub_30C348();
          if (*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v28 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_30C378();
          }

          sub_30C3C8();

          v10 = v28;
          v8 = v4 & 0xC000000000000001;
          v3 = v25;
          v9 = v4 & 0xFFFFFFFFFFFFFF8;
          i = v26;
        }

        ++v7;
        if (v12 == i)
        {
          goto LABEL_37;
        }
      }

      if (v7 >= *(v9 + 16))
      {
        goto LABEL_34;
      }

      v11 = *(v4 + 8 * v7 + 32);
      v12 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_25;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

    v10 = _swiftEmptyArrayStorage;
LABEL_37:

    return v10;
  }

  return v4;
}

void sub_C0658(char *a1@<X1>, Class *a2@<X8>)
{
  v4 = *&a1[qword_400D90];

  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  v7 = sub_B1360(v4, a1, v6);

  *a2 = v7;
}

void sub_C0708(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v53 = _swiftEmptyArrayStorage;
  v9 = objc_allocWithZone(UIBarButtonItemGroup);
  v10 = sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
  isa = sub_30C358().super.isa;
  v12 = [v9 initWithBarButtonItems:isa representativeItem:0];

  v13 = *(a1 + 16);
  if (!v13)
  {

    return;
  }

  v48 = v12;
  v14 = 0;
  v50 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v51 = _swiftEmptyArrayStorage;
  v49 = *(v6 + 72);
  v15 = &selRef_registerImage_withTraitCollection_;
  v16 = &PlayControlsStackView;
  v45 = v13;
  v46 = v10;
  v17 = qword_400D90;
  v47 = qword_400D90;
  while (1)
  {
    sub_CEC14(v50 + v49 * v14, v8, &type metadata accessor for HeaderButtonItem);
    v19 = *&v3[v17];

    v20 = [v3 v15[241]];
    v21 = [v20 *&v16[328]];

    v23 = sub_B2C78(v19, v3, v21, v22);

    if (!v23)
    {
      break;
    }

    v18 = v23;
    sub_30C348();
    if (*(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v53 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
      v17 = v47;
    }

    sub_30C3C8();

    sub_CEBB4(v8, &type metadata accessor for HeaderButtonItem);
    v51 = v53;
LABEL_7:
    v15 = &selRef_registerImage_withTraitCollection_;
LABEL_8:
    v16 = &PlayControlsStackView;
    if (++v14 == v13)
    {

      return;
    }
  }

  v24 = *&v3[v17];

  v25 = [v3 v15[241]];
  v26 = [v25 *&v16[328]];

  v27 = sub_B1360(v24, v3, v26);

  if (!v27)
  {
    sub_CEBB4(v8, &type metadata accessor for HeaderButtonItem);
    goto LABEL_8;
  }

  v28 = v51;
  if (!(v51 >> 62))
  {
    v29 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
    v30 = v48;
    if (v29)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

  v37 = sub_30D668();
  v28 = v51;
  v29 = v37;
  v30 = v48;
  if (!v37)
  {
LABEL_26:
    v38 = v30;
    sub_30C348();
    if (*(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v53 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
    }

    sub_30C3C8();
    v51 = v53;
LABEL_29:
    v13 = v45;
    v39 = v27;
    v40 = v48;
    v41 = [v48 barButtonItems];
    v42 = sub_30C368();

    v52 = v42;
    sub_30C348();
    v17 = v47;
    if (*(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v52 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
      v17 = v47;
    }

    sub_30C3C8();
    v43 = sub_30C358().super.isa;

    [v40 setBarButtonItems:v43];

    sub_CEBB4(v8, &type metadata accessor for HeaderButtonItem);
    goto LABEL_7;
  }

LABEL_13:
  v31 = 0;
  v32 = v28 & 0xC000000000000001;
  v33 = v28 & 0xFFFFFFFFFFFFFF8;
  v34 = v28 + 32;
  while (1)
  {
    while (v32)
    {
      v35 = sub_30D578();
      if (__OFADD__(v31++, 1))
      {
        goto LABEL_37;
      }

      v44 = v35;
      swift_unknownObjectRelease();
      if (v44 == v30)
      {
        goto LABEL_29;
      }

      if (v31 == v29)
      {
        goto LABEL_26;
      }
    }

    if ((v31 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v31 >= *(v33 + 16))
    {
      goto LABEL_36;
    }

    if (*(v34 + 8 * v31) == v30)
    {
      goto LABEL_29;
    }

    if (++v31 == v29)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

id sub_C0C24(uint64_t a1, double a2)
{
  v4 = swift_isaMask & *v2;
  v5 = sub_308BD8();
  __chkstk_darwin(v5);
  v7 = &aBlock[-2] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (&aBlock[-2] - v10);
  if (a1)
  {
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v14 = *(v9 + 72);
      while (1)
      {
        sub_CEC14(v13, v7, &type metadata accessor for HeaderButtonItem);
        if (sub_308B98())
        {
          break;
        }

        sub_CEBB4(v7, &type metadata accessor for HeaderButtonItem);
        v13 += v14;
        if (!--v12)
        {
          return 0;
        }
      }

      sub_CF1E4(v7, v11, &type metadata accessor for HeaderButtonItem);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_12658(v11, v34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);

        sub_30B8E8();

        __swift_project_boxed_opaque_existential_1Tm(v33, v33[3]);
        v27 = v35;
        v15 = v35;
        v16 = __swift_project_boxed_opaque_existential_1Tm(v34, v35);
        v29 = v27;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(aBlock);
        (*(*(v15 - 8) + 16))(boxed_opaque_existential_0Tm, v16, v15);

        v18 = sub_30A8C8();

        __swift_destroy_boxed_opaque_existential_1(aBlock);
        if (v18)
        {
          v19 = objc_opt_self();
          v20 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_12670(v33, v32);
          sub_12670(v34, v31);
          v21 = swift_allocObject();
          v21[2] = *(v4 + 80);
          v21[3] = *(v4 + 88);
          v21[4] = v20;
          sub_12658(v32, (v21 + 5));
          sub_12658(v31, (v21 + 10));
          *(&v29 + 1) = sub_CEB20;
          v30 = v21;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1FA234;
          *&v29 = &block_descriptor_39;
          v22 = _Block_copy(aBlock);

          v23 = [v19 elementWithUncachedProvider:v22];
          _Block_release(v22);
          v24 = v23;
          v25 = sub_30C098();
          [v24 setAccessibilityIdentifier:v25];

          __swift_destroy_boxed_opaque_existential_1(v33);
          __swift_destroy_boxed_opaque_existential_1(v34);
          return v24;
        }

        __swift_destroy_boxed_opaque_existential_1(v33);
        __swift_destroy_boxed_opaque_existential_1(v34);
      }

      else
      {
        sub_CEBB4(v11, &type metadata accessor for HeaderButtonItem);
      }
    }
  }

  return 0;
}

void sub_C10AC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v34 = a2;
  v8 = sub_302268();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406BB0, qword_31E160);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = sub_3022E8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = a4[3];
    v29[2] = a4[4];
    v30 = a1;
    v29[1] = __swift_project_boxed_opaque_existential_1Tm(a4, v20);
    v31 = *(a5 + 24);
    v21 = v31;
    v22 = __swift_project_boxed_opaque_existential_1Tm(a5, v31);
    v36 = v31;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v35);
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_0Tm, v22, v21);
    v24 = sub_3022D8();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);

    v25 = v19;
    sub_3022A8();
    v26 = [v25 view];
    if (v26)
    {
      v27 = v26;
      sub_30CE78();

      v28 = sub_30A878();

      (*(v32 + 8))(v10, v33);
      (*(v15 + 8))(v17, v14);
      __swift_destroy_boxed_opaque_existential_1(v35);
      v30(v28);
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_C13EC()
{
  v1 = [v0 navigationItem];
  v2 = [v1 trailingItemGroups];

  sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v3 = sub_30C368();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_30D578();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = v6;
      sub_C1980(&v10, v0);

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return result;
}

void sub_C1548()
{
  v1 = v0;
  sub_309568();
  sub_304D58();

  sub_BA7E8(v7, v8, v9 | (v10 << 32));
  if (v10 >> 5 == 3)
  {
    v2 = *&v0[qword_400E20];
    if (v2)
    {
      v3 = v2;
      v4 = [v1 collectionView];
      if (v4)
      {
        v5 = v4;

        v6 = [v1 navigationItem];
        sub_14C6EC(v5, v6);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

double sub_C1680()
{
  sub_C16D4();
  v1 = *(v0 + qword_400EE0);
  if (v1)
  {
    *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = *(v0 + qword_400ED8);
  }

  return sub_C13EC();
}

void sub_C16D4()
{
  if (*(v0 + qword_400ED8) == 1)
  {
    v1 = qword_400EE0;
    if (!*(v0 + qword_400EE0))
    {
      v2 = swift_isaMask & *v0;
      v3 = [objc_allocWithZone(type metadata accessor for ConfigurableScrollCoordinator()) init];
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v5 = swift_allocObject();
      *(v5 + 2) = *(v2 + 80);
      *(v5 + 3) = *(v2 + 88);
      *(v5 + 4) = v4;
      v6 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_didScroll];
      v7 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_didScroll];
      v8 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_didScroll + 8];
      *v6 = sub_CEB34;
      v6[1] = v5;

      sub_1EBD0(v7, v8);

      v9 = *(v0 + qword_400DA8);
      v11 = v3;
      sub_17F304(v11, v9);
      v10 = *(v0 + v1);
      *(v0 + v1) = v11;

      sub_C18BC();
    }
  }
}

void sub_C1868(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_C18BC();
  }
}

void sub_C18BC()
{
  v4 = v0[qword_400ED8] == 1 && (v1 = [v0 navigationItem], objc_msgSend(v1, "_manualScrollEdgeAppearanceProgress"), v3 = v2, v1, v3 >= 1.0) && !UIAccessibilityIsVoiceOverRunning();
  v5 = v0[qword_400EE8];
  v0[qword_400EE8] = v4;
  if (v5 != v0[qword_400EE8])
  {

    sub_C13EC();
  }
}

double sub_C1980(id *a1, uint64_t a2)
{
  v3 = [*a1 barButtonItems];
  sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
  v4 = sub_30C368();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_30D578();
      }

      else
      {
        if (v6 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 setHidden:*(a2 + qword_400EE8)];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return result;
}

Swift::Void __swiftcall ModernPageViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_isaMask & *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4067B0, &unk_328D90);
  __chkstk_darwin(v4 - 8);
  v6 = &v109 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D78, &unk_31E5A0);
  v113 = *(v7 - 8);
  v114 = v7;
  __chkstk_darwin(v7);
  v112 = &v109 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401970, &unk_32C590);
  v110 = *(v9 - 8);
  v111 = v9;
  __chkstk_darwin(v9);
  v109 = &v109 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400D80, &qword_31E5B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v109 - v12;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F50, &unk_32C5A0);
  __chkstk_darwin(v131);
  v116 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v117 = &v109 - v16;
  __chkstk_darwin(v17);
  v115 = &v109 - v18;
  v19 = sub_307B08();
  v128 = *(v19 - 8);
  v129 = v19;
  __chkstk_darwin(v19);
  v130 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4005D0, &qword_31DD20);
  v22 = __chkstk_darwin(v21 - 8);
  v132 = &v109 - v23;
  v138.receiver = v0;
  v138.super_class = ObjectType;
  objc_msgSendSuper2(&v138, "viewDidLoad", v22);
  if (*&v0[qword_400D88])
  {
    sub_302488();
  }

  v24 = qword_400D90;

  sub_C2C50(v25);

  v26 = [v0 collectionView];
  if (!v26)
  {
    __break(1u);
    goto LABEL_25;
  }

  v27 = v26;
  [v26 setKeyboardDismissMode:1];

  v28 = [v1 collectionView];
  if (!v28)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v29 = v28;
  v125 = v13;
  v126 = v6;
  v127 = ObjectType;
  v30 = [objc_opt_self() systemBackgroundColor];
  [v29 setBackgroundColor:v30];

  v31 = [v1 traitCollection];
  v32 = [v31 horizontalSizeClass];

  *&v1[qword_400D98] = v32;
  v33 = [v1 splitViewController];
  if (v33)
  {
    v34 = v33;
    [v33 isCollapsed];
    v36 = *(v3 + 80);
    v35 = *(v3 + 88);
    sub_309688();
    v37 = [v34 isCollapsed];
    v38 = v1[qword_400E98];
    v1[qword_400E98] = v37;
    sub_BA3C8(v38);

    v39 = v35;
  }

  else
  {
    v36 = *(v3 + 80);
    v39 = *(v3 + 88);
  }

  v40 = *&v1[qword_400D60];
  sub_309698();
  *&v137[0] = [v1 tab];
  sub_304D68();

  sub_30BC68();
  v41 = v1;
  v42 = *&v1[v24];
  v43 = *&v41[qword_400DA0];

  v44 = [v41 collectionView];
  if (!v44)
  {
    goto LABEL_26;
  }

  v45 = v39;
  v46 = v44;
  v119 = v41;
  v47 = *&v41[qword_400DA8];
  v48 = v132;
  sub_309608();
  v123 = v36;
  v124 = v40;
  v122 = v45;
  v49 = sub_309658();
  type metadata accessor for CollectionController(0);
  v50 = swift_allocObject();
  *(v50 + 64) = 0;
  *(v50 + 72) = 0;
  *(v50 + 80) = 1;
  *(v50 + 88) = 0u;
  *(v50 + 104) = 0u;
  *(v50 + 120) = 0u;
  *(v50 + 136) = 0u;
  *(v50 + 152) = 0;
  v51 = v50 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CollectionController_largeMacHeader;
  v52 = *(v131 + 48);
  v53 = sub_30B0B8();
  (*(*(v53 - 8) + 56))(v51, 1, 1, v53);
  *(v51 + v52) = 0;
  *(v50 + 16) = v42;
  *(v50 + 24) = v43;
  *(v50 + 32) = v47;
  *(v50 + 40) = v46;
  sub_302818();

  v118 = v47;
  v120 = v46;
  v54 = v46;
  sub_30B8E8();
  *(v50 + 48) = *&v137[0];
  sub_302448();
  sub_30B8E8();
  *(v50 + 56) = *&v137[0];
  [v54 setKeyboardDismissMode:1];
  v55 = sub_95540();
  swift_allocObject();
  swift_weakInit();

  sub_304A58();

  sub_96FEC(v48);
  if (v49)
  {
    swift_allocObject();
    swift_weakInit();

    sub_30A788();

    [*(v50 + 40) setAllowsMultipleSelectionDuringEditing:1];
    v121 = v49;
  }

  else
  {
    [*(v50 + 40) setAllowsMultipleSelection:1];
    v121 = 0;
  }

  v56 = sub_95898();
  [v54 setCollectionViewLayout:v56];

  sub_95E58(v134);
  swift_beginAccess();
  v57 = v43[2];
  v58 = v43[3];
  v59 = v43[5];
  v135[3] = v43[4];
  v135[4] = v59;
  v135[1] = v57;
  v135[2] = v58;
  v135[0] = v43[1];
  v60 = v134[4];
  v43[4] = v134[3];
  v43[5] = v60;
  v61 = v134[2];
  v43[2] = v134[1];
  v43[3] = v61;
  v43[1] = v134[0];
  sub_A0044(v135);
  sub_95E58(v136);
  v62 = v118;
  v63 = &v118[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_converter];
  swift_beginAccess();
  v137[0] = *v63;
  v64 = *(v63 + 1);
  v65 = *(v63 + 2);
  v66 = *(v63 + 4);
  v137[3] = *(v63 + 3);
  v137[4] = v66;
  v137[1] = v64;
  v137[2] = v65;
  v67 = v136[3];
  *(v63 + 2) = v136[2];
  *(v63 + 3) = v67;
  *(v63 + 4) = v136[4];
  v68 = v136[1];
  *v63 = v136[0];
  *(v63 + 1) = v68;
  sub_A0044(v137);
  v69 = *(v50 + 72);
  v70 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_collectionView;
  swift_beginAccess();
  v71 = *(v43 + v70);
  *(v43 + v70) = v120;
  v72 = v69;

  type metadata accessor for ShelfBackgroundView();
  v73 = v54;
  static ShelfBackgroundView.register(layout:)(v72);

  v74 = objc_allocWithZone(type metadata accessor for CollectionController.CollectionViewBackgroundAdjustHackView());

  v75 = v73;
  v76 = sub_9DCE0(v43, v75);
  [v75 setBackgroundView:v76];

  [v75 setDelegate:v62];

  sub_EB68(v132, &qword_4005D0, &qword_31DD20);
  v77 = qword_400D58;
  v78 = v119;
  swift_beginAccess();
  *&v78[v77] = v50;

  v79 = qword_400DB0;
  swift_beginAccess();
  v80 = v130;
  sub_CEC14(&v78[v79], v130, &type metadata accessor for PageContent);
  sub_BC900(v80);
  sub_CEBB4(v80, &type metadata accessor for PageContent);
  v81 = *&v78[v77];
  if (v81)
  {
    v82 = v115;
    sub_EB00(&v78[qword_400DB8], v115, &unk_408F50, &unk_32C5A0);
    v83 = v131;
    v84 = *(v82 + *(v131 + 48));
    v85 = v82;
    v86 = v117;
    sub_CDB68(v85, v117);
    *(v86 + *(v83 + 48)) = v84;
    v87 = v116;
    sub_EB00(v86, v116, &unk_408F50, &unk_32C5A0);
    v88 = *(v87 + *(v83 + 48));
    v89 = v81 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CollectionController_largeMacHeader;
    swift_beginAccess();

    sub_A32A0(v87, v89, &qword_400450, &qword_31DC60);
    *(v89 + *(v83 + 48)) = v88;
    swift_endAccess();
    sub_99060();

    sub_EB68(v86, &unk_408F50, &unk_32C5A0);
  }

  sub_CEC14(&v78[v79], v80, &type metadata accessor for PageContent);
  v90 = v125;
  (*(v128 + 56))(v125, 1, 1, v129);
  sub_BCC0C(v80, v90);
  sub_EB68(v90, &qword_400D80, &qword_31E5B0);
  sub_CEBB4(v80, &type metadata accessor for PageContent);
  v91 = v124;
  swift_getObjectType();
  v92 = swift_conformsToProtocol2();
  v94 = v126;
  v93 = v127;
  if (v92 && v91)
  {
    swift_getObjectType();
    swift_unknownObjectRetain_n();
    v133 = sub_308D88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401980, &unk_31F140);
    sub_EC8C(&qword_400DF0, &unk_401980, &unk_31F140, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v95 = v109;
    sub_304F48();

    v96 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v97 = swift_allocObject();
    v98 = v122;
    v97[2] = v123;
    v97[3] = v98;
    v97[4] = v96;
    sub_EC8C(&unk_401990, &unk_401970, &unk_32C590, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v99 = v111;
    sub_304F58();

    (*(v110 + 8))(v95, v99);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90, &unk_31E5C0);
    sub_EC8C(&qword_4019A0, &unk_408F90, &unk_31E5C0, &protocol conformance descriptor for [A]);
    sub_304CF8();
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  if (swift_conformsToProtocol2() && v91)
  {
    swift_getObjectType();
    v133 = sub_309B78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400DC8, &qword_31E5B8);
    sub_EC8C(&qword_400DD0, &qword_400DC8, &qword_31E5B8, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    sub_CDBF0();
    v100 = v112;
    sub_304F48();

    v101 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v102 = swift_allocObject();
    v103 = v122;
    v102[2] = v123;
    v102[3] = v103;
    v102[4] = v101;
    sub_EC8C(&qword_400DE0, &qword_400D78, &unk_31E5A0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v104 = v114;
    sub_304F58();

    (*(v113 + 8))(v100, v104);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90, &unk_31E5C0);
    sub_EC8C(&qword_4019A0, &unk_408F90, &unk_31E5C0, &protocol conformance descriptor for [A]);
    sub_304CF8();
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v105 = [v78 view];
  if (v105)
  {
    v106 = v105;
    v107 = qword_400DC0;
    swift_beginAccess();
    sub_EB00(&v78[v107], v94, &unk_4067B0, &unk_328D90);
    sub_30CEC8();

    [v78 isViewLoaded];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4004E0, &qword_31DCE0);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_315430;
    *(v108 + 32) = sub_304BB8();
    *(v108 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(swift_allocObject() + 16) = v93;
    sub_30C898();
    swift_unknownObjectRelease();

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_C2C50(uint64_t a1)
{
  v70 = a1;
  v4 = *v1;
  v5 = swift_isaMask;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401098, &qword_31E9F0);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v54 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4010A0, &qword_31E9F8);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = &v54 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4010A8, &qword_31EA00);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v59 = &v54 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4010B0, &qword_31EA08);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v54 - v9;
  v10 = *&v1[qword_400D60];
  v11 = *(&stru_20.filesize + (v5 & v4));
  v71 = v1;
  v12 = *(&stru_20.maxprot + (v5 & v4));
  v13 = sub_3095B8();
  v14 = v13;
  if (v13 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)); ; i = sub_30D668())
  {
    v68 = v11;
    v60 = v12;
    if (!i)
    {
      break;
    }

    *&v74 = _swiftEmptyArrayStorage;
    v16 = &v74;
    sub_1751E4(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      goto LABEL_35;
    }

    v54 = v10;
    v10 = 0;
    v5 = 0;
    v3 = v74;
    v2 = v14 & 0xC000000000000001;
    v69 = v14 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v2)
      {
        v17 = sub_30D578();
      }

      else
      {
        if (v10 >= *(v69 + 16))
        {
          goto LABEL_32;
        }

        v17 = *(v14 + 8 * v10 + 32);
      }

      *&v72 = v17;
      sub_C9800(&v72, v71, v70, &v76);

      *&v74 = v3;
      v11 = *(v3 + 16);
      v18 = *(v3 + 24);
      if (v11 >= v18 >> 1)
      {
        sub_1751E4((v18 > 1), v11 + 1, 1);
        v3 = v74;
      }

      *(v3 + 16) = v11 + 1;
      sub_1DA94(&v76, (v3 + 32 * v11 + 32));
      ++v10;
      if (v12 == i)
      {

        v11 = v68;
        v10 = v54;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_16:
  v5 = qword_400E48;
  v19 = v71;
  swift_beginAccess();
  sub_14A3E4(v3);
  swift_endAccess();
  v20 = [v19 traitCollection];
  LODWORD(v3) = sub_30C968();

  *&v76 = v10;
  sub_D45D0(&v76, v11, &v74);
  if (!v75)
  {
    return sub_EB68(&v74, &qword_4010B8, &qword_31EA10);
  }

  sub_12658(&v74, &v76);
  i = swift_allocObject();
  *(i + 16) = 0u;
  v2 = i + 16;
  *(i + 32) = 0u;
  *(i + 48) = 0;
  if (v3 & 1) == 0 || (sub_303088())
  {
    LODWORD(v69) = v3;
    v21 = i;
    v23 = v77;
    v22 = v78;
    v24 = __swift_project_boxed_opaque_existential_1Tm(&v76, v77);
    v25 = v71;
    v26 = [v71 navigationItem];
    v27 = [v25 navigationItem];
    v28 = [v27 _bottomPalette];
    if (v28)
    {
      v29 = v28;
      type metadata accessor for MultiViewHostingPalette();
      v30 = swift_dynamicCastClass();
      if (v30)
      {
        goto LABEL_23;
      }
    }

    v30 = [objc_allocWithZone(type metadata accessor for MultiViewHostingPalette()) init];
    [v27 _setBottomPalette:v30];

LABEL_23:
    (*(v22 + 16))(&v72, v26, v30, v23, v22);

    if (!v73)
    {
      sub_EB68(&v72, &qword_400E58, &unk_31E5E8);
      i = v21;
      LOBYTE(v3) = v69;
      goto LABEL_30;
    }

    sub_12658(&v72, &v74);
    v31 = v75;
    v32 = __swift_project_boxed_opaque_existential_1Tm(&v74, v75);
    v73 = v31;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v72);
    (*(*(v31 - 8) + 16))(boxed_opaque_existential_0Tm, v32, v31);
    v34 = v71;
    swift_beginAccess();
    v16 = *&v34[v5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34[v5] = v16;
    i = v21;
    LOBYTE(v3) = v69;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_35:
      v16 = sub_CB35C(0, *(v16 + 2) + 1, 1, v16);
      *&v71[v5] = v16;
    }

    v37 = *(v16 + 2);
    v36 = *(v16 + 3);
    if (v37 >= v36 >> 1)
    {
      v16 = sub_CB35C((v36 > 1), v37 + 1, 1, v16);
    }

    *(v16 + 2) = v37 + 1;
    sub_1DA94(&v72, &v16[32 * v37 + 32]);
    *&v71[v5] = v16;
    swift_endAccess();
    sub_EB68(v2, &qword_400E58, &unk_31E5E8);
    sub_12670(&v74, v2);
    __swift_destroy_boxed_opaque_existential_1(&v74);
  }

LABEL_30:
  v39 = v77;
  v40 = v78;
  __swift_project_boxed_opaque_existential_1Tm(&v76, v77);
  *&v74 = (*(v40 + 8))(v39, v40);
  v41 = v55;
  sub_BA354();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401980, &unk_31F140);
  sub_EC8C(&qword_400DF0, &unk_401980, &unk_31F140, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_EC8C(&qword_4010C0, &qword_401098, &qword_31E9F0, &protocol conformance descriptor for Published<A>.Publisher);
  v42 = v58;
  v43 = v57;
  sub_304EB8();
  (*(v56 + 8))(v41, v43);

  v44 = swift_allocObject();
  *(v44 + 16) = v3 & 1;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_CF2EC;
  *(v45 + 24) = v44;
  sub_EC8C(&qword_4010C8, &qword_4010A0, &qword_31E9F8, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v46 = v59;
  v47 = v63;
  sub_304ED8();

  (*(v61 + 8))(v42, v47);
  sub_EC8C(&qword_4010D0, &qword_4010A8, &qword_31EA00, &protocol conformance descriptor for Publishers.Map<A, B>);
  v48 = v65;
  v49 = v64;
  sub_304F48();
  (*(v62 + 8))(v46, v49);
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_12670(&v76, &v74);
  v51 = swift_allocObject();
  v52 = v60;
  *(v51 + 16) = v68;
  *(v51 + 24) = v52;
  *(v51 + 32) = v50;
  *(v51 + 40) = v3 & 1;
  sub_12658(&v74, v51 + 48);
  *(v51 + 88) = v70;
  *(v51 + 96) = i;
  sub_EC8C(&qword_4010D8, &qword_4010B0, &qword_31EA08, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);

  v53 = v67;
  sub_304F58();

  (*(v66 + 8))(v48, v53);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90, &unk_31E5C0);
  sub_EC8C(&qword_4019A0, &unk_408F90, &unk_31E5C0, &protocol conformance descriptor for [A]);
  sub_304CF8();
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_1(&v76);
}

void sub_C3830(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    ModernPageViewController.setEditing(_:animated:)(v2, 1);
  }
}

Swift::Void __swiftcall ModernPageViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v16.receiver = v2;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "setEditing:animated:", _, animated);
  if (animated)
  {
    v5 = [v2 collectionView];
    if (v5)
    {
      v6 = v5;
      [v5 setEditing:_];

      v7 = 0;
      v8 = 0;
      goto LABEL_5;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v9 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = _;
  v10 = swift_allocObject();
  v7 = sub_CDCD4;
  *(v10 + 16) = sub_CDCD4;
  *(v10 + 24) = v8;
  v15[4] = sub_293C0;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_19D688;
  v15[3] = &block_descriptor_18;
  v11 = _Block_copy(v15);
  v12 = v2;

  [v9 performWithoutAnimation:v11];
  _Block_release(v11);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_5:
  v13 = *&v2[qword_400D60];
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v13)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_308D88();
    sub_304D58();

    v14 = _;
    if (LOBYTE(v15[0]) == v14)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_308D88();
      LOBYTE(v15[0]) = v14;
      sub_304D48();
      swift_unknownObjectRelease();
    }
  }

  sub_1EBD0(v7, v8);
}

void sub_C3B38(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_C3B94(v2);
  }
}

void sub_C3B94(uint64_t a1)
{
  v2 = a1;
  v3 = sub_306E68();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_306E88();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() mainSystem];
  [v11 setNeedsRevalidate];

  v12 = [v1 collectionView];
  if (v12)
  {
    v22 = v12;
    if (v2)
    {
      v13 = sub_C9CCC();
      if (v13)
      {
        v14 = v13;
        if ((sub_3088E8() & 1) == 0)
        {
          sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
          v21 = sub_30C8F8();
          v16 = swift_allocObject();
          *(v16 + 16) = v14;
          aBlock[4] = sub_CEEC8;
          aBlock[5] = v16;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_914CC;
          aBlock[3] = &block_descriptor_60;
          v19 = _Block_copy(aBlock);
          v20 = v14;

          sub_306E78();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_CEB6C(&qword_40D760, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860, &unk_31E9E0);
          sub_EC8C(&qword_40D770, &qword_408860, &unk_31E9E0, &protocol conformance descriptor for [A]);
          sub_30D488();
          v17 = v19;
          v18 = v21;
          sub_30C908();
          _Block_release(v17);

          (*(v4 + 8))(v6, v3);
          (*(v8 + 8))(v10, v7);
          return;
        }

        if (([v14 isRefreshing] & 1) == 0)
        {
          [v14 beginRefreshing];
        }
      }
    }

    else
    {
      [v12 setRefreshControl:0];
    }

    v15 = v22;
  }
}

void sub_C3F84(void *a1, void *a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [a2 preferredContentSizeCategory];
  sub_C4030(v4, v5);
}

void sub_C4030(void *a1, void *a2)
{
  v5 = sub_306E68();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_306E88();
  v9 = *(v44 - 8);
  __chkstk_darwin(v44);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_307B08();
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_30CAD8() & 1) == 0)
  {
    if ((sub_30CAD8() & 1) == 0)
    {
      return;
    }

    v21 = a2;
    goto LABEL_10;
  }

  v15 = a1;
  if ((sub_30CAD8() & 1) == 0)
  {
    if (!v15)
    {
      return;
    }

    v42 = v9;
    v43 = v15;
    goto LABEL_14;
  }

  v16 = a2;
  if (!v15)
  {
LABEL_10:
    if (!a2)
    {
      return;
    }

    v42 = v9;
    v43 = 0;
    goto LABEL_15;
  }

  v42 = v9;
  v43 = v15;
  if (!v16)
  {
LABEL_14:
    a2 = 0;
    goto LABEL_15;
  }

  v40 = v16;
  v41 = v6;
  v17 = sub_30C0D8();
  v19 = v18;
  if (v17 != sub_30C0D8() || v19 != v20)
  {
    v38 = sub_30D728();

    if (v38)
    {
      goto LABEL_23;
    }

    v6 = v41;
LABEL_15:
    v22 = qword_400DB0;
    swift_beginAccess();
    v23 = v2;
    sub_CEC14(v2 + v22, v14, &type metadata accessor for PageContent);
    v24 = sub_307AF8();
    sub_CEBB4(v14, &type metadata accessor for PageContent);
    if ((v24 & 1) == 0)
    {

      return;
    }

    v41 = v6;
    v25 = objc_opt_self();
    v26 = swift_allocObject();
    v27 = v23;
    *(v26 + 16) = v23;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_CEF70;
    *(v28 + 24) = v26;
    v40 = v26;
    v49 = sub_74D04;
    v50 = v28;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_19D688;
    v48 = &block_descriptor_77;
    v29 = _Block_copy(&aBlock);
    v30 = v27;

    [v25 performWithoutAnimation:v29];
    _Block_release(v29);
    LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

    if (v25)
    {
      __break(1u);
    }

    else
    {
      v31 = [v30 collectionView];
      if (v31)
      {
        v32 = v31;
        [v31 reloadData];

        sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
        v33 = sub_30C8F8();
        v34 = [v30 collectionView];
        if (v34)
        {
          v35 = v34;
          v36 = swift_allocObject();
          *(v36 + 16) = v35;
          v49 = sub_CEF78;
          v50 = v36;
          aBlock = _NSConcreteStackBlock;
          v46 = 1107296256;
          v47 = sub_914CC;
          v48 = &block_descriptor_83;
          v37 = _Block_copy(&aBlock);

          sub_306E78();
          aBlock = _swiftEmptyArrayStorage;
          sub_CEB6C(&qword_40D760, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860, &unk_31E9E0);
          sub_EC8C(&qword_40D770, &qword_408860, &unk_31E9E0, &protocol conformance descriptor for [A]);
          sub_30D488();
          sub_30C908();
          _Block_release(v37);

          (*(v41 + 8))(v8, v5);
          (*(v42 + 8))(v11, v44);

          return;
        }

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

LABEL_23:

  v39 = v40;
}

void sub_C4694(void *a1)
{
  v1 = a1;
  ModernPageViewController.viewDidLoad()();
}

Swift::Void __swiftcall ModernPageViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *v1;
  v6 = swift_isaMask;
  v7 = sub_3026D8();
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = *(&stru_20.filesize + (v6 & v5));
  v14 = *(&stru_20.maxprot + (v6 & v5));
  [v2 setClearsSelectionOnViewWillAppear:sub_309678() & 1];
  v32.receiver = v2;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "viewWillAppear:", a1);
  if (*&v2[qword_400D88])
  {
    sub_3024B8();
  }

  v2[qword_400DF8] = 1;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_BF600();
    sub_C4B34();
  }

  sub_C4E28();
  sub_BA294(1);

  sub_308EB8();

  sub_30BC88();
  v15 = ModernPageViewController.navigationTabIdentifier.getter();
  if (v15 == 19)
  {
    v31 = swift_getObjectType();
    swift_getMetatypeMetadata();
    sub_30C148();
  }

  else
  {
    v16 = v15;
    sub_3083F8();
    sub_BA54C(v16);
  }

  sub_302708();
  v17 = sub_3026F8();
  v28 = v12;
  sub_3026E8();

  v27 = sub_3095C8();
  v31 = v27;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = v14;
  v20 = v29;
  v21 = v12;
  v22 = v30;
  (*(v29 + 16))(v9, v21, v30);
  v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v13;
  *(v25 + 24) = v19;
  (*(v20 + 32))(v25 + v23, v9, v22);
  *(v25 + v24) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400E08, &qword_31E5D0);
  sub_EC8C(&qword_400E10, &qword_400E08, &qword_31E5D0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_304F58();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F90, &unk_31E5C0);
  sub_EC8C(&qword_4019A0, &unk_408F90, &unk_31E5C0, &protocol conformance descriptor for [A]);
  sub_304CF8();
  swift_endAccess();

  (*(v20 + 8))(v28, v22);
}

void sub_C4B34()
{
  v1 = v0;
  v2 = sub_30AA18();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  sub_309568();
  sub_304D58();

  v9 = v29 | (v30 << 32);
  if (v30 >> 5 == 3)
  {
    v10 = v29;
    sub_BA7E8(v27, v28, v29 | (v30 << 32));
    v11 = [v1 traitCollection];
    if (v10 == 4)
    {
      v12 = v11;
      v13 = [v11 horizontalSizeClass];

      if (v13 == &dword_0 + 1)
      {
        LOBYTE(v9) = 2;
      }

      else
      {
        LOBYTE(v9) = 5;
      }
    }

    else
    {
    }

    v18 = 0;
    v19 = v9;
    goto LABEL_15;
  }

  v26 = v5;
  sub_BA7E8(v27, v28, v9);
  v14 = qword_4290D0;
  swift_beginAccess();
  v25 = v3[2];
  v25(v8, &v1[v14], v2);
  v24 = v3[11];
  v15 = v24(v8, v2);
  v16 = enum case for FlowDestinationPageHeader.uber(_:);
  v17 = v3[1];
  v17(v8, v2);
  if (v15 == v16)
  {
    v18 = 0;
LABEL_14:
    v19 = 2;
LABEL_15:
    sub_BE8F0(v18, v19);
    return;
  }

  v20 = v26;
  v25(v26, &v1[v14], v2);
  v21 = v24(v20, v2);
  v22 = enum case for FlowDestinationPageHeader.largeTitle(_:);
  v23 = (v17)(v20, v2);
  if (v21 == v22)
  {
    *&v1[qword_400EC0] = 3;
    sub_BF764(v23);
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v18 = 1;
    goto LABEL_14;
  }
}

double sub_C4E28()
{
  v1 = *(v0 + qword_400D60);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401068, &qword_31E9C8);
    swift_unknownObjectRetain();

    sub_30B8C8();

    if (v4)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_3087B8();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_C4F2C(uint64_t a1, uint64_t a2, char *a3)
{
  v64 = a3;
  v71 = a2;
  v4 = sub_306E68();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v67 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_306E88();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3026D8();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v60 = v8;
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_306EA8();
  v76 = *(v74 - 8);
  __chkstk_darwin(v74);
  v56 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v54 - v11;
  v12 = sub_302478();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v58 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v57 = v18;
  v20 = __chkstk_darwin(v19);
  v22 = &v54 - v21;
  v23 = v13[2];
  v72 = a1;
  v75 = v23;
  (v23)(&v54 - v21, a1, v12, v20);
  v24 = v13[11];
  v25 = v24(v22, v12);
  v26 = enum case for ExtendedLaunchStatus.loading(_:);
  v59 = v13;
  v27 = v13[1];
  v27(v22, v12);
  if (v25 != v26)
  {
    v28 = v72;
    v75(v17, v72, v12);
    v29 = v24(v17, v12);
    v30 = enum case for ExtendedLaunchStatus.notImplementedError(_:);
    v27(v17, v12);
    if (v29 == v30)
    {
      sub_124C4(0, &qword_3FBF20, OS_dispatch_queue_ptr);
      v55 = sub_30C8F8();
      v31 = v56;
      sub_306E98();
      sub_303CF8();
      sub_303CE8();
      sub_306F08();
      v32 = *(v76 + 8);
      v76 += 8;
      v64 = v32;
      (v32)(v31, v74);
      v34 = v62;
      v33 = v63;
      v35 = v61;
      (*(v62 + 16))(v61, v71, v63);
      v36 = v58;
      v75(v58, v28, v12);
      v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
      v38 = v59;
      v39 = (v60 + *(v59 + 80) + v37) & ~*(v59 + 80);
      v40 = swift_allocObject();
      (*(v34 + 32))(v40 + v37, v35, v33);
      (v38[4])(v40 + v39, v36, v12);
      aBlock[4] = sub_CEDC4;
      aBlock[5] = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_914CC;
      aBlock[3] = &block_descriptor_54;
      v41 = _Block_copy(aBlock);

      v42 = v65;
      sub_306E78();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_CEB6C(&qword_40D760, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860, &unk_31E9E0);
      sub_EC8C(&qword_40D770, &qword_408860, &unk_31E9E0, &protocol conformance descriptor for [A]);
      v43 = v67;
      v44 = v70;
      sub_30D488();
      v45 = v73;
      v46 = v55;
      sub_30C8C8();
      _Block_release(v41);

      (*(v69 + 8))(v43, v44);
      (*(v66 + 8))(v42, v68);
      (v64)(v45, v74);
    }

    else
    {
      v47 = sub_3026C8();
      v48 = sub_302468();
      if (v48)
      {
        v49 = v48;
        sub_302458();
        sub_CEB6C(&qword_401078, &type metadata accessor for ExtendedLaunchStatus.ExtendedLaunchError, &protocol conformance descriptor for ExtendedLaunchStatus.ExtendedLaunchError);
        v50 = swift_allocError();
        *v51 = v49;
      }

      else
      {
        v50 = 0;
      }

      v47(v50);

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v53 = Strong;
        sub_C5814(0x6F43646564616F4CLL, 0xED0000746E65746ELL, 1, 1);
      }
    }
  }
}

double sub_C573C(uint64_t a1)
{
  v1 = sub_3026C8();
  v2 = sub_302468();
  if (v2)
  {
    v3 = v2;
    sub_302458();
    sub_CEB6C(&qword_401078, &type metadata accessor for ExtendedLaunchStatus.ExtendedLaunchError, &protocol conformance descriptor for ExtendedLaunchStatus.ExtendedLaunchError);
    v4 = swift_allocError();
    *v5 = v3;
  }

  else
  {
    v4 = 0;
  }

  v1(v4);

  return result;
}

uint64_t sub_C5814(uint64_t a1, unint64_t a2, int a3, int a4)
{
  v5 = v4;
  LODWORD(v61) = a3;
  v56 = a1;
  v57 = a2;
  v7 = sub_302258();
  v60 = *(v7 - 8);
  __chkstk_darwin(v7);
  v59 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401070, &qword_31E9D8);
  __chkstk_darwin(v9);
  v11 = &v50[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDE0, &qword_317C38);
  __chkstk_darwin(v12 - 8);
  v58 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v55 = &v50[-v15];
  __chkstk_darwin(v16);
  v54 = &v50[-v17];
  __chkstk_darwin(v18);
  v20 = &v50[-v19];
  v62 = sub_302218();
  v21 = *(v62 - 8);
  __chkstk_darwin(v62);
  v23 = &v50[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v26 = &v50[-v25];
  ModernPageViewController.interactionContextPage.getter();
  if ((v61 & 1) == 0)
  {
    goto LABEL_8;
  }

  v51 = a4;
  v53 = v7;
  v61 = v26;
  sub_CEC14(v26, v20, &type metadata accessor for InteractionContext.Page);
  v27 = *(v21 + 56);
  v28 = v21;
  v29 = v62;
  v27(v20, 0, 1, v62);
  v30 = qword_400E90;
  swift_beginAccess();
  v31 = *(v9 + 48);
  sub_EB00(v20, v11, &qword_3FBDE0, &qword_317C38);
  v52 = v4;
  v32 = v4 + v30;
  v33 = v29;
  v21 = v28;
  sub_EB00(v32, &v11[v31], &qword_3FBDE0, &qword_317C38);
  v34 = *(v28 + 48);
  if (v34(v11, 1, v33) == 1)
  {
    sub_EB68(v20, &qword_3FBDE0, &qword_317C38);
    v35 = v34(&v11[v31], 1, v33);
    v26 = v61;
    if (v35 == 1)
    {
      sub_EB68(v11, &qword_3FBDE0, &qword_317C38);
      return sub_CEBB4(v26, &type metadata accessor for InteractionContext.Page);
    }

    goto LABEL_7;
  }

  v36 = v54;
  sub_EB00(v11, v54, &qword_3FBDE0, &qword_317C38);
  if (v34(&v11[v31], 1, v33) == 1)
  {
    sub_EB68(v20, &qword_3FBDE0, &qword_317C38);
    sub_CEBB4(v36, &type metadata accessor for InteractionContext.Page);
    v26 = v61;
LABEL_7:
    sub_EB68(v11, &qword_401070, &qword_31E9D8);
    v5 = v52;
    v7 = v53;
    LOBYTE(a4) = v51;
    goto LABEL_8;
  }

  sub_CF1E4(&v11[v31], v23, &type metadata accessor for InteractionContext.Page);
  v49 = sub_3021F8();
  sub_CEBB4(v23, &type metadata accessor for InteractionContext.Page);
  sub_EB68(v20, &qword_3FBDE0, &qword_317C38);
  sub_CEBB4(v36, &type metadata accessor for InteractionContext.Page);
  sub_EB68(v11, &qword_3FBDE0, &qword_317C38);
  v5 = v52;
  v7 = v53;
  v26 = v61;
  LOBYTE(a4) = v51;
  if (v49)
  {
    return sub_CEBB4(v26, &type metadata accessor for InteractionContext.Page);
  }

LABEL_8:
  if (a4)
  {
    v37 = qword_400E90;
    swift_beginAccess();
    v38 = v5 + v37;
    v39 = v55;
    sub_EB00(v38, v55, &qword_3FBDE0, &qword_317C38);
    if ((*(v21 + 48))(v39, 1, v62) == 1)
    {
      sub_CEBB4(v26, &type metadata accessor for InteractionContext.Page);
      return sub_EB68(v39, &qword_3FBDE0, &qword_317C38);
    }

    sub_EB68(v39, &qword_3FBDE0, &qword_317C38);
  }

  v41 = ModernPageViewController.navigationTabIdentifier.getter();
  if (v41 == 19)
  {
    v42 = 0;
    v43 = 0xE000000000000000;
  }

  else
  {
    v63 = 32;
    v64 = 0xE100000000000000;
    v44 = v41;
    sub_BA528(v41);
    v65._countAndFlagsBits = sub_3083D8();
    sub_30C238(v65);

    sub_BA54C(v44);
    sub_BA54C(v44);
    v42 = v63;
    v43 = v64;
  }

  v45 = v7;
  v63 = v56;
  v64 = v57;

  v66._countAndFlagsBits = v42;
  v66._object = v43;
  sub_30C238(v66);

  v46 = v59;
  ModernPageViewController.interactionContextOrigin.getter();
  sub_302208();

  (*(v60 + 8))(v46, v45);
  v47 = v58;
  sub_CF1E4(v26, v58, &type metadata accessor for InteractionContext.Page);
  (*(v21 + 56))(v47, 0, 1, v62);
  v48 = qword_400E90;
  swift_beginAccess();
  sub_A32A0(v47, v5 + v48, &qword_3FBDE0, &qword_317C38);
  return swift_endAccess();
}

void sub_C5F3C(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  ModernPageViewController.viewWillAppear(_:)(a3);
}

Swift::Void __swiftcall ModernPageViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1);
  if (*&v2[qword_400D88])
  {
    sub_302498();
  }

  sub_BA294(2);
  sub_30BC78();

  sub_308EB8();

  sub_C5814(0x4164694477656976, 0xED00007261657070, 0, 0);
  sub_302798();
  sub_302788();
  sub_302778();

  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  [v5 addObserver:v2 selector:"appEnteredWhileAppeared" name:MTApplicationDidBecomeActiveNotification object:0];

  v6 = [v4 defaultCenter];
  [v6 addObserver:v2 selector:"appExitedWhileAppeared" name:MTApplicationDidEnterBackgroundNotification object:0];

  v7 = [v4 defaultCenter];
  [v7 addObserver:v2 selector:"increaseContrastSettingDidChange" name:UIAccessibilityDarkerSystemColorsStatusDidChangeNotification object:0];

  if ((sub_303098() & 1) == 0)
  {
    sub_309568();
    sub_304D58();

    sub_BBCD8(v8, v9, v10 | (v11 << 32));
    sub_BA7E8(v8, v9, v10 | (v11 << 32));
  }
}

void sub_C6218(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  ModernPageViewController.viewDidAppear(_:)(a3);
}

Swift::Void __swiftcall ModernPageViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1);
  if (*&v2[qword_400D88])
  {
    sub_3024C8();
  }

  sub_C63E0();
  sub_BA294(4);
  sub_30BC98();

  sub_308EB8();

  v4 = [v2 tabBarController];
  if (v4)
  {
    v5 = v4;
    v6 = UITabBarController.currentNavigationTab.getter();

    if (v6 != 19)
    {
      v7 = ModernPageViewController.navigationTabIdentifier.getter();
      if (v7 != 19)
      {
        v8 = v7;
        if ((sub_308428() & 1) == 0)
        {
          sub_309638();
        }

        sub_BA54C(v8);
      }

      sub_BA54C(v6);
    }
  }
}

double sub_C63E0()
{
  v1 = *(v0 + qword_400D60);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401068, &qword_31E9C8);
    swift_unknownObjectRetain();

    sub_30B8C8();

    if (v6)
    {
      swift_getObjectType();
      v4 = sub_3087A8();
      if (v4 && (v5 = v4, swift_unknownObjectRelease(), v1 == v5))
      {
        sub_3087B8();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_C6500(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  ModernPageViewController.viewDidDisappear(_:)(a3);
}

Swift::Void __swiftcall ModernPageViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v3 = a1;
  ObjectType = swift_getObjectType();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400E18, &qword_31E5D8);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = v24 - v5;
  v7 = sub_30B898();
  __chkstk_darwin(v7 - 8);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = sub_302F68();
  v9 = *(v24[0] - 8);
  __chkstk_darwin(v24[0]);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_30BCF8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29.receiver = v2;
  v29.super_class = ObjectType;
  v26 = v3;
  objc_msgSendSuper2(&v29, "viewWillDisappear:", v3, v14);
  if (*&v2[qword_400D88])
  {
    sub_30BCC8();
    sub_3024D8();
    (*(v13 + 8))(v16, v12);
  }

  v2[qword_400DF8] = 0;
  sub_BA294(3);
  sub_30BCD8();
  sub_30BCA8();
  (*(v13 + 8))(v16, v12);
  v17 = *&v2[qword_400E20];
  if (v17)
  {
    *(v17 + OBJC_IVAR____TtC23ShelfKitCollectionViews27ModernUberScrollCoordinator_active) = 0;
  }

  sub_308EB8();

  [*&v2[qword_400E28] clearSharedItems];
  sub_C6AB4();
  v18 = objc_opt_self();
  v19 = [v18 defaultCenter];
  [v19 removeObserver:v2 name:MTApplicationDidBecomeActiveNotification object:0];

  v20 = [v18 defaultCenter];
  [v20 removeObserver:v2 name:MTApplicationDidEnterBackgroundNotification object:0];

  v21 = [v18 defaultCenter];
  [v21 removeObserver:v2 name:UIAccessibilityDarkerSystemColorsStatusDidChangeNotification object:0];

  sub_3098C8(v26);
  (*(v9 + 104))(v11, enum case for TipGroup.headerButtons(_:), v24[0]);
  sub_30B868();
  v28[3] = sub_302F38();
  v28[4] = sub_CEB6C(&qword_400E38, &type metadata accessor for RequestTipProviderRefreshAction, &protocol conformance descriptor for RequestTipProviderRefreshAction);
  __swift_allocate_boxed_opaque_existential_0Tm(v28);
  sub_302F28();
  v22 = v25;
  v23 = v27;
  (*(v25 + 104))(v6, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40, &unk_31E590);
  sub_30B9F8();

  (*(v22 + 8))(v6, v23);
  __swift_destroy_boxed_opaque_existential_1(v28);
}