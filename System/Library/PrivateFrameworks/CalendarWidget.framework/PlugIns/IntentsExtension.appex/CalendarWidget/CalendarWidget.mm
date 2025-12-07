void sub_10000187C(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 calendarIdentifier];
  sub_1000086A8();

  v5 = CUIKDisplayedTitleForCalendar();
  if (!v5)
  {
    sub_1000086A8();
    v5 = sub_100008698();
  }

  type metadata accessor for EKUICalendar();
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_100008698();

  v8 = [v6 initWithIdentifier:v7 displayString:v5];

  v9 = [v3 source];
  if (!v9)
  {
    __break(1u);
    goto LABEL_22;
  }

  v10 = v9;
  v11 = [v9 externalID];

  [v8 setAcAccountIdentifier:v11];
  v12 = [v3 image];
  if (v12)
  {
    v13 = v12;
    if ([v12 type] == 1)
    {
      v14 = [v13 name];
      if (v14)
      {
        v15 = v14;
        v16 = objc_opt_self();
        v17 = v8;
        v18 = [v16 systemImageNamed:v15];

        [v17 setDisplayImage:v18];
      }
    }
  }

  v19 = v8;
  v20 = [v19 displayImage];
  if (v20)
  {
    goto LABEL_10;
  }

  v21 = [v3 source];
  if (!v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = v21;
  v23 = [v21 sourceType];

  if (v23 != 5 || ([v3 isSuggestedEventCalendar] & 1) != 0)
  {
    goto LABEL_14;
  }

  v32 = objc_opt_self();
  v33 = sub_100008698();
  v34 = [v32 systemImageNamed:v33];

  [v19 setDisplayImage:v34];
  v20 = v34;
LABEL_10:

LABEL_14:
  v24 = [v19 displayImage];
  v25 = v19;
  if (v24)
  {
LABEL_18:

    goto LABEL_19;
  }

  v26 = [v3 displayColor];
  v25 = v19;
  if (!v26)
  {
LABEL_19:

    *a2 = v19;
    return;
  }

  v27 = v26;
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 preferredFontForTextStyle:UIFontTextStyleBody];
  v31 = ScaledCalendarColorDotImageForColor();

  if (v31)
  {
    v25 = [objc_opt_self() imageWithUIImage:v31];

    [v19 setDisplayImage:v25];
    v24 = v19;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

id sub_100001C58()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16IntentsExtension19WidgetIntentHandler_eventStore) calendarsForEntityType:0];
  sub_1000050F8(0, &qword_100011220, EKCalendar_ptr);
  v2 = sub_1000086E8();

  v91 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000087D8())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_100008758();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 source];
      if (!v8)
      {
        goto LABEL_106;
      }

      v9 = v8;
      v10 = [v8 isDelegate];

      if (v10)
      {
      }

      else
      {
        sub_100008768();
        sub_100008798();
        sub_1000087A8();
        sub_100008778();
      }

      ++v4;
      if (v7 == i)
      {
        v11 = v91;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_19:

  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    goto LABEL_59;
  }

  v12 = *(v11 + 16);
  v90 = v11;
  if (v12)
  {
LABEL_22:
    v13 = 0;
    v88 = v11 & 0xC000000000000001;
    v14 = &_swiftEmptyDictionarySingleton;
    v86 = v12;
    while (1)
    {
      if (v88)
      {
        v18 = sub_100008758();
      }

      else
      {
        if (v13 >= *(v11 + 16))
        {
          goto LABEL_56;
        }

        v18 = *(v11 + 8 * v13 + 32);
      }

      v19 = v18;
      v20 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        v12 = sub_1000087D8();
        v90 = v11;
        if (!v12)
        {
          break;
        }

        goto LABEL_22;
      }

      v21 = [objc_allocWithZone(CUIKCalendarInfo) initWithCalendar:v18];
      if (!v21)
      {
        goto LABEL_107;
      }

      v22 = v21;
      v23 = [v21 customGroupType];
      if (v23 == 1)
      {
        v24 = 0xE500000000000000;
        v25 = 0x726568744FLL;
        if (!v14[2])
        {
          goto LABEL_38;
        }
      }

      else
      {
        v26 = [v22 calendar];
        if (!v26)
        {
          goto LABEL_110;
        }

        v27 = v26;
        v11 = [v26 source];

        if (!v11)
        {
          goto LABEL_109;
        }

        v28 = [v11 sourceIdentifier];

        v25 = sub_1000086A8();
        v24 = v29;

        if (!v14[2])
        {
          goto LABEL_38;
        }
      }

      v30 = sub_100002AE4(v25, v24);
      if (v31)
      {
        v32 = v30;

        v33 = *(v14[7] + 8 * v32);
        goto LABEL_24;
      }

LABEL_38:
      if (v23 == 1)
      {
        v34 = [objc_allocWithZone(CUIKGroupInfo) initWithCustomGroupType:1];
        if (!v34)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v35 = [v22 calendar];
        if (!v35)
        {
          goto LABEL_113;
        }

        v36 = v35;
        v37 = [v35 source];

        v11 = [objc_allocWithZone(CUIKGroupInfo) initWithSource:v37];
        if (!v11)
        {
          goto LABEL_112;
        }

        v34 = v11;
      }

      v33 = v34;
      v38 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = v38;
      v40 = sub_100002AE4(v25, v24);
      v42 = *(v38 + 16);
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_57;
      }

      v11 = v41;
      if (*(v38 + 24) < v45)
      {
        sub_100004210(v45, isUniquelyReferenced_nonNull_native);
        v40 = sub_100002AE4(v25, v24);
        if ((v11 & 1) != (v46 & 1))
        {
          goto LABEL_114;
        }

LABEL_49:
        v14 = v91;
        if (v11)
        {
          goto LABEL_23;
        }

        goto LABEL_50;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_49;
      }

      v50 = v40;
      sub_10000456C();
      v40 = v50;
      v14 = v91;
      if (v11)
      {
LABEL_23:
        v15 = v14[7];
        v16 = *(v15 + 8 * v40);
        *(v15 + 8 * v40) = v33;

        goto LABEL_24;
      }

LABEL_50:
      v14[(v40 >> 6) + 8] |= 1 << v40;
      v47 = (v14[6] + 16 * v40);
      *v47 = v25;
      v47[1] = v24;
      *(v14[7] + 8 * v40) = v33;
      v48 = v14[2];
      v44 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v44)
      {
        goto LABEL_58;
      }

      v14[2] = v49;
LABEL_24:
      v17 = v22;
      [v33 insertCalendarInfo:v17];

      ++v13;
      v11 = v90;
      if (v20 == v86)
      {
        goto LABEL_61;
      }
    }
  }

  v14 = &_swiftEmptyDictionarySingleton;
LABEL_61:
  v51 = v14[2];
  if (v51)
  {
    v52 = sub_100002CDC(v51, 0);
    v53 = sub_100004998(&v91, v52 + 4, v51, v14);
    v54 = v91;

    sub_1000050F0(v54);
    if (v53 != v51)
    {
      __break(1u);
    }
  }

  v91 = sub_100004760(v55);
  sub_100002B5C(&v91);

  v56 = v91;
  v91 = _swiftEmptyArrayStorage;
  if (v56 < 0 || (v56 & 0x4000000000000000) != 0)
  {
LABEL_104:
    v57 = sub_1000087D8();
  }

  else
  {
    v57 = *(v56 + 16);
  }

  if (!v57)
  {
LABEL_98:

    v78 = objc_allocWithZone(INObjectCollection);
    sub_100005090(&qword_100011218, &qword_1000091A0);
    isa = sub_1000086D8().super.isa;

    v80 = [v78 initWithSections:isa];

    return v80;
  }

  v58 = 0;
  v84 = v56;
  v85 = v56 & 0xC000000000000001;
  v82 = v56 + 32;
  v83 = v57;
  while (1)
  {
    if (v85)
    {
      v59 = sub_100008758();
    }

    else
    {
      if (v58 >= *(v56 + 16))
      {
        goto LABEL_103;
      }

      v59 = *(v82 + 8 * v58);
    }

    v60 = v59;
    v44 = __OFADD__(v58++, 1);
    if (v44)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v61 = [v59 title];
    if (v61)
    {
      v62 = v61;
      sub_1000086A8();
      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    v65 = [v60 calendarInfos];
    if (!v65)
    {
      goto LABEL_108;
    }

    v66 = v65;
    v87 = v64;
    sub_1000050F8(0, &qword_100011228, CUIKCalendarInfo_ptr);
    v67 = sub_1000086E8();

    if (v67 >> 62)
    {
      break;
    }

    v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v89 = v60;
    if (v68)
    {
      goto LABEL_80;
    }

LABEL_91:

LABEL_92:
    sub_100004AEC(_swiftEmptyArrayStorage);

    if (v87)
    {
      v73 = sub_100008698();
    }

    else
    {
      v73 = 0;
    }

    v74 = objc_allocWithZone(INObjectSection);
    type metadata accessor for EKUICalendar();
    v75 = sub_1000086D8().super.isa;

    v76 = [v74 initWithTitle:v73 items:v75];

    v77 = v76;
    sub_1000086C8();
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000086F8();
    }

    sub_100008718();

    if (v58 == v57)
    {
      goto LABEL_98;
    }
  }

  v68 = sub_1000087D8();
  v89 = v60;
  if (!v68)
  {
    goto LABEL_91;
  }

LABEL_80:
  sub_100008788();
  if (v68 < 0)
  {
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v69 = 0;
  while (1)
  {
    v70 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    if ((v67 & 0xC000000000000001) != 0)
    {
      v71 = sub_100008758();
    }

    else
    {
      if (v69 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }

      v71 = *(v67 + 8 * v69 + 32);
    }

    v72 = v71;
    if (![v71 calendar])
    {
      break;
    }

    sub_100008768();
    v56 = _swiftEmptyArrayStorage[2];
    sub_100008798();
    sub_1000087A8();
    sub_100008778();
    ++v69;
    if (v70 == v68)
    {

      v57 = v83;
      v56 = v84;
      goto LABEL_92;
    }
  }

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
  sub_100008858();
  __break(1u);

  __break(1u);
  return result;
}

void *sub_100002634()
{
  v1 = *(v0 + OBJC_IVAR____TtC16IntentsExtension19WidgetIntentHandler_eventStore);
  v2 = objc_allocWithZone(EKCalendarVisibilityManager);
  v9[4] = NextEventComplicationConfigurationIntentResponseCode.rawValue.getter;
  v9[5] = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100002AA0;
  v9[3] = &unk_10000C4D8;
  v3 = _Block_copy(v9);

  v4 = [v2 initWithEventStore:v1 visibilityChangedCallback:v3 queue:0];
  _Block_release(v3);
  v5 = [v4 visibleCalendars];
  sub_1000050F8(0, &qword_100011220, EKCalendar_ptr);
  v6 = sub_1000086E8();

  v7 = sub_100004AEC(v6);

  return v7;
}

id sub_100002778()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000027E4(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a3;
  v8 = a1;
  sub_100004C3C(v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

Class sub_100002868(void *a1)
{
  v1 = a1;
  v2 = sub_100002634();
  v3 = sub_100008728();
  sub_100005090(&qword_100011208, &qword_100009198);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100009140;
  if (v2 >> 62)
  {
    v5 = sub_1000087D8();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  *(v4 + 32) = v5;
  sub_1000050F8(0, &qword_100011210, OS_os_log_ptr);
  v6 = sub_100008738();
  sub_100008668(v3, &_mh_execute_header, v6, "defaultCalendars: %d calendars", v9);

  type metadata accessor for EKUICalendar();
  v7.super.isa = sub_1000086D8().super.isa;

  return v7.super.isa;
}

void sub_1000029D0(void *a1, int a2, void *a3, void *aBlock, uint64_t (*a5)(void), uint64_t *a6)
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a1;
  sub_100004F18(v11, v12, v10, a5, a6);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_100002AA0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_100002AE4(uint64_t a1, uint64_t a2)
{
  sub_100008868();
  sub_1000086B8();
  v4 = sub_100008888();

  return sub_1000044B4(a1, a2, v4);
}

uint64_t sub_100002B5C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100004984(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100002D64(v6);
  return sub_100008778();
}

char *sub_100002BD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005090(&qword_100011258, &qword_1000091B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100002CDC(uint64_t a1, uint64_t a2)
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

  sub_100005090(&qword_100011260, &qword_1000091C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_100002D64(uint64_t *a1)
{
  sub_100005090(&qword_100011248, &qword_1000091B0);
  __chkstk_darwin();
  v43 = &v34 - v3;
  v4 = a1[1];
  v5 = sub_100008818(v4);
  if (v5 >= v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4 < 2)
      {
        return;
      }

      v34 = v1;
      v35 = v4;
      v8 = *a1;
      v9 = -1;
      v10 = 1;
      v11 = &WidgetIntentHandler;
      v12 = *a1;
      v39 = *a1;
LABEL_10:
      v37 = v10;
      v38 = v9;
      v13 = *(v8 + 8 * v10);
      v36 = v12;
      while (1)
      {
        v14 = *v12;
        v15 = v13;
        v16 = v14;
        v17 = [v15 v11[30].weak_ivar_lyt];
        if (v17 >= [v16 v11[30].weak_ivar_lyt])
        {
          v18 = [v15 v11[30].weak_ivar_lyt];
          if ([v16 v11[30].weak_ivar_lyt] < v18)
          {

LABEL_9:
            v10 = v37 + 1;
            v12 = v36 + 8;
            v9 = v38 - 1;
            if (v37 + 1 == v35)
            {
              return;
            }

            goto LABEL_10;
          }

          v19 = [v15 title];
          if (!v19)
          {
            goto LABEL_27;
          }

          v20 = v19;
          v21 = sub_1000086A8();
          v23 = v22;

          v41 = v21;
          v42 = v23;
          v24 = [v16 title];
          if (!v24)
          {
            goto LABEL_28;
          }

          v25 = v24;
          v26 = sub_1000086A8();
          v28 = v27;

          v40[0] = v26;
          v40[1] = v28;
          v29 = sub_100008658();
          v30 = v43;
          (*(*(v29 - 8) + 56))(v43, 1, 1, v29);
          sub_1000051EC();
          v31 = sub_100008748();
          sub_100005240(v30);

          v8 = v39;
          v11 = &WidgetIntentHandler;
          if (v31 != -1)
          {
            goto LABEL_9;
          }
        }

        else
        {
        }

        if (!v8)
        {
          goto LABEL_26;
        }

        v32 = *v12;
        v13 = *(v12 + 8);
        *v12 = v13;
        *(v12 + 8) = v32;
        v12 -= 8;
        if (__CFADD__(v9++, 1))
        {
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    if (v4 >= -1)
    {
      v6 = v5;
      if (v4 <= 1)
      {
        v7 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000050F8(0, &qword_100011230, CUIKGroupInfo_ptr);
        v7 = sub_100008708();
        *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 / 2;
      }

      v41 = ((v7 & 0xFFFFFFFFFFFFFF8) + 32);
      v42 = v4 / 2;
      sub_1000030B4(&v41, v40, a1, v6);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1000030B4(__objc2_class_ro **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v144 = a4;
  v146 = a1;
  sub_100005090(&qword_100011248, &qword_1000091B0);
  __chkstk_darwin();
  v152 = &v141 - v8;
  v9 = *(a3 + 8);
  v147 = a3;
  if (v9 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_115:
    v12 = *v146;
    if (!*v146)
    {
      goto LABEL_158;
    }

    v4 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v136 = v4;
LABEL_118:
      v157 = v136;
      v4 = *(v136 + 2);
      if (v4 >= 2)
      {
        do
        {
          v137 = *a3;
          if (!*a3)
          {
            goto LABEL_154;
          }

          v138 = *&v136[16 * v4];
          v139 = v136;
          a3 = *&v136[16 * v4 + 24];
          sub_100003BB4((v137 + 8 * v138), (v137 + 8 * *&v136[16 * v4 + 16]), (v137 + 8 * a3), v12);
          if (v6)
          {
            break;
          }

          if (a3 < v138)
          {
            goto LABEL_141;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v139 = sub_1000041FC(v139);
          }

          if (v4 - 2 >= *(v139 + 2))
          {
            goto LABEL_142;
          }

          v140 = &v139[16 * v4];
          *v140 = v138;
          v140[1] = a3;
          v157 = v139;
          sub_100004170(v4 - 1);
          v136 = v157;
          v4 = *(v157 + 2);
          a3 = v147;
        }

        while (v4 > 1);
      }

LABEL_126:

      return;
    }

LABEL_148:
    v136 = sub_1000041FC(v4);
    goto LABEL_118;
  }

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  v12 = &WidgetIntentHandler;
  v13 = &WidgetIntentHandler;
  while (1)
  {
    v14 = v10;
    v15 = v10 + 1;
    v150 = v9;
    if (v15 >= v9)
    {
      v151 = v15;
      v22 = v144;
      goto LABEL_38;
    }

    v143 = v11;
    v16 = *a3;
    v17 = *(v16 + 8 * v15);
    v145 = v14;
    v18 = *(v16 + 8 * v14);
    v19 = v17;
    v20 = v18;
    v21 = [v19 v12[30].weak_ivar_lyt];
    if (v21 >= [v20 v12[30].weak_ivar_lyt])
    {
      v23 = [v19 v12[30].weak_ivar_lyt];
      if ([v20 v12[30].weak_ivar_lyt] >= v23)
      {
        v24 = [v19 v13[30].name];
        if (!v24)
        {
          goto LABEL_160;
        }

        v25 = v24;
        v26 = sub_1000086A8();
        v28 = v27;

        v155 = v26;
        v156 = v28;
        v29 = [v20 v13[30].name];
        if (!v29)
        {
          goto LABEL_159;
        }

        v30 = v29;
        v31 = sub_1000086A8();
        v33 = v32;

        v153 = v31;
        v154 = v33;
        v34 = sub_100008658();
        v35 = v152;
        (*(*(v34 - 8) + 56))(v152, 1, 1, v34);
        sub_1000051EC();
        v36 = sub_100008748();
        sub_100005240(v35);

        v4 = v36 == -1;
        v12 = &WidgetIntentHandler;
      }

      else
      {

        v4 = 0;
      }
    }

    else
    {

      v4 = 1;
    }

    v14 = v145;
    v151 = v145 + 2;
    if (v145 + 2 >= v150)
    {
      v11 = v143;
      v22 = v144;
      a3 = v147;
      if (!v4)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v37 = (v16 + 8 * v145 + 16);
      v38 = v150;
      do
      {
        v39 = *(v37 - 1);
        v40 = *v37;
        v41 = v39;
        LODWORD(v39) = [v40 v12[30].weak_ivar_lyt];
        if (v39 < [v41 v12[30].weak_ivar_lyt])
        {

          if ((v4 & 1) == 0)
          {
            a3 = v147;
            v11 = v143;
            v22 = v144;
            v14 = v145;
            goto LABEL_38;
          }
        }

        else
        {
          v42 = [v40 v12[30].weak_ivar_lyt];
          if ([v41 v12[30].weak_ivar_lyt] >= v42)
          {
            v43 = [v40 v13[30].name];
            if (!v43)
            {
              goto LABEL_156;
            }

            v44 = v43;
            v45 = sub_1000086A8();
            v47 = v46;

            v155 = v45;
            v156 = v47;
            v48 = [v41 v13[30].name];
            if (!v48)
            {
              goto LABEL_155;
            }

            v49 = v48;
            v50 = sub_1000086A8();
            v52 = v51;

            v153 = v50;
            v154 = v52;
            v53 = sub_100008658();
            v54 = v152;
            (*(*(v53 - 8) + 56))(v152, 1, 1, v53);
            sub_1000051EC();
            v55 = sub_100008748();
            sub_100005240(v54);

            v12 = &WidgetIntentHandler;
            v13 = &WidgetIntentHandler;
            v38 = v150;
            if (v4 == (v55 != -1))
            {
              goto LABEL_28;
            }
          }

          else
          {

            if (v4)
            {
              a3 = v147;
              v11 = v143;
              v22 = v144;
              v14 = v145;
              goto LABEL_31;
            }
          }
        }

        ++v37;
        ++v151;
      }

      while (v38 != v151);
      v151 = v38;
LABEL_28:
      v11 = v143;
      v22 = v144;
      v14 = v145;
      a3 = v147;
      if (!v4)
      {
        goto LABEL_38;
      }
    }

LABEL_31:
    v56 = v151;
    if (v151 < v14)
    {
      goto LABEL_147;
    }

    if (v14 < v151)
    {
      v57 = 8 * v151 - 8;
      v58 = 8 * v14;
      v59 = v14;
      do
      {
        if (v59 != --v56)
        {
          v60 = *a3;
          if (!*a3)
          {
            goto LABEL_153;
          }

          v61 = *(v60 + v58);
          *(v60 + v58) = *(v60 + v57);
          *(v60 + v57) = v61;
        }

        ++v59;
        v57 -= 8;
        v58 += 8;
      }

      while (v59 < v56);
    }

LABEL_38:
    v62 = *(a3 + 8);
    if (v151 < v62)
    {
      if (__OFSUB__(v151, v14))
      {
        goto LABEL_144;
      }

      if (v151 - v14 < v22)
      {
        break;
      }
    }

LABEL_62:
    if (v151 < v14)
    {
      goto LABEL_143;
    }

    v87 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v11 = v87;
    }

    else
    {
      v11 = sub_100002BD8(0, *(v87 + 2) + 1, 1, v87);
    }

    v4 = *(v11 + 2);
    v88 = *(v11 + 3);
    v89 = v4 + 1;
    if (v4 >= v88 >> 1)
    {
      v11 = sub_100002BD8((v88 > 1), v4 + 1, 1, v11);
    }

    *(v11 + 2) = v89;
    v90 = &v11[16 * v4];
    v91 = v151;
    *(v90 + 4) = v14;
    *(v90 + 5) = v91;
    v92 = *v146;
    if (!*v146)
    {
      goto LABEL_157;
    }

    if (v4)
    {
      while (1)
      {
        v93 = v89 - 1;
        if (v89 >= 4)
        {
          break;
        }

        if (v89 == 3)
        {
          v94 = *(v11 + 4);
          v95 = *(v11 + 5);
          v104 = __OFSUB__(v95, v94);
          v96 = v95 - v94;
          v97 = v104;
LABEL_82:
          if (v97)
          {
            goto LABEL_132;
          }

          v110 = &v11[16 * v89];
          v112 = *v110;
          v111 = *(v110 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = &v11[16 * v93 + 32];
          v118 = *v116;
          v117 = *(v116 + 1);
          v104 = __OFSUB__(v117, v118);
          v119 = v117 - v118;
          if (v104)
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v119))
          {
            goto LABEL_139;
          }

          if (v114 + v119 >= v96)
          {
            if (v96 < v119)
            {
              v93 = v89 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        v120 = &v11[16 * v89];
        v122 = *v120;
        v121 = *(v120 + 1);
        v104 = __OFSUB__(v121, v122);
        v114 = v121 - v122;
        v115 = v104;
LABEL_96:
        if (v115)
        {
          goto LABEL_134;
        }

        v123 = &v11[16 * v93];
        v125 = *(v123 + 4);
        v124 = *(v123 + 5);
        v104 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v104)
        {
          goto LABEL_137;
        }

        if (v126 < v114)
        {
          goto LABEL_3;
        }

LABEL_103:
        v4 = v93 - 1;
        if (v93 - 1 >= v89)
        {
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (!*a3)
        {
          goto LABEL_152;
        }

        v131 = v11;
        v132 = *&v11[16 * v4 + 32];
        v133 = *&v11[16 * v93 + 40];
        sub_100003BB4((*a3 + 8 * v132), (*a3 + 8 * *&v11[16 * v93 + 32]), (*a3 + 8 * v133), v92);
        if (v6)
        {
          goto LABEL_126;
        }

        if (v133 < v132)
        {
          goto LABEL_128;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v134 = v131;
        }

        else
        {
          v134 = sub_1000041FC(v131);
        }

        v13 = &WidgetIntentHandler;
        if (v4 >= *(v134 + 2))
        {
          goto LABEL_129;
        }

        v135 = &v134[16 * v4];
        *(v135 + 4) = v132;
        *(v135 + 5) = v133;
        v157 = v134;
        sub_100004170(v93);
        v11 = v157;
        v89 = *(v157 + 2);
        if (v89 <= 1)
        {
          goto LABEL_3;
        }
      }

      v98 = &v11[16 * v89 + 32];
      v99 = *(v98 - 64);
      v100 = *(v98 - 56);
      v104 = __OFSUB__(v100, v99);
      v101 = v100 - v99;
      if (v104)
      {
        goto LABEL_130;
      }

      v103 = *(v98 - 48);
      v102 = *(v98 - 40);
      v104 = __OFSUB__(v102, v103);
      v96 = v102 - v103;
      v97 = v104;
      if (v104)
      {
        goto LABEL_131;
      }

      v105 = &v11[16 * v89];
      v107 = *v105;
      v106 = *(v105 + 1);
      v104 = __OFSUB__(v106, v107);
      v108 = v106 - v107;
      if (v104)
      {
        goto LABEL_133;
      }

      v104 = __OFADD__(v96, v108);
      v109 = v96 + v108;
      if (v104)
      {
        goto LABEL_136;
      }

      if (v109 >= v101)
      {
        v127 = &v11[16 * v93 + 32];
        v129 = *v127;
        v128 = *(v127 + 1);
        v104 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v104)
        {
          goto LABEL_140;
        }

        if (v96 < v130)
        {
          v93 = v89 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_82;
    }

LABEL_3:
    v9 = *(a3 + 8);
    v10 = v151;
    if (v151 >= v9)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v14, v22))
  {
    goto LABEL_145;
  }

  if (v14 + v22 >= v62)
  {
    v63 = *(a3 + 8);
  }

  else
  {
    v63 = v14 + v22;
  }

  if (v63 < v14)
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v151 == v63)
  {
    goto LABEL_62;
  }

  v142 = v6;
  v143 = v11;
  v64 = *a3;
  v65 = *a3 + 8 * v151 - 8;
  v145 = v14;
  v4 = v14 - v151;
  v66 = v151;
  v148 = v63;
LABEL_50:
  v150 = v65;
  v151 = v66;
  v67 = *(v64 + 8 * v66);
  v149 = v4;
  while (1)
  {
    v68 = *v65;
    v69 = v67;
    v70 = v68;
    LODWORD(v68) = [v69 v12[30].weak_ivar_lyt];
    if (v68 >= [v70 v12[30].weak_ivar_lyt])
    {
      v71 = [v69 v12[30].weak_ivar_lyt];
      if ([v70 v12[30].weak_ivar_lyt] < v71)
      {

LABEL_49:
        v66 = v151 + 1;
        v65 = v150 + 8;
        v4 = v149 - 1;
        if (v151 + 1 == v148)
        {
          v151 = v148;
          v6 = v142;
          v11 = v143;
          a3 = v147;
          v14 = v145;
          goto LABEL_62;
        }

        goto LABEL_50;
      }

      v72 = [v69 v13[30].name];
      if (!v72)
      {
        goto LABEL_150;
      }

      v73 = v72;
      v74 = sub_1000086A8();
      v76 = v75;

      v155 = v74;
      v156 = v76;
      v77 = [v70 v13[30].name];
      if (!v77)
      {
        goto LABEL_151;
      }

      v78 = v77;
      v79 = sub_1000086A8();
      v81 = v80;

      v153 = v79;
      v154 = v81;
      v82 = sub_100008658();
      v83 = v152;
      (*(*(v82 - 8) + 56))(v152, 1, 1, v82);
      sub_1000051EC();
      v84 = sub_100008748();
      sub_100005240(v83);

      v12 = &WidgetIntentHandler;
      v13 = &WidgetIntentHandler;
      if (v84 != -1)
      {
        goto LABEL_49;
      }
    }

    else
    {
    }

    if (!v64)
    {
      break;
    }

    v85 = *v65;
    v67 = *(v65 + 8);
    *v65 = v67;
    *(v65 + 8) = v85;
    v65 -= 8;
    if (__CFADD__(v4++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
}

uint64_t sub_100003BB4(void **a1, id *a2, id *a3, void **a4)
{
  sub_100005090(&qword_100011248, &qword_1000091B0);
  __chkstk_darwin();
  v60 = &v56 - v8;
  v9 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v9 = a2 - a1;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v10 < v11 >> 3)
  {
    v13 = a1;
    if (a4 != a1 || &a1[v10] <= a4)
    {
      memmove(a4, a1, 8 * v10);
    }

    v14 = &a4[v10];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v15 = &WidgetIntentHandler;
      v66 = v14;
      while (1)
      {
        v16 = *a4;
        v17 = *a2;
        v18 = v16;
        LODWORD(v16) = [v17 v15[30].weak_ivar_lyt];
        if (v16 < [v18 v15[30].weak_ivar_lyt])
        {
          break;
        }

        v21 = [v17 v15[30].weak_ivar_lyt];
        if ([v18 v15[30].weak_ivar_lyt] >= v21)
        {
          v59 = v13;
          v22 = a4;
          result = [v17 title];
          if (!result)
          {
            goto LABEL_58;
          }

          v24 = result;
          v25 = sub_1000086A8();
          v27 = v26;

          v64 = v25;
          v65 = v27;
          result = [v18 title];
          if (!result)
          {
            goto LABEL_57;
          }

          v28 = result;
          v29 = sub_1000086A8();
          v31 = v30;

          v62 = v29;
          v63 = v31;
          v32 = sub_100008658();
          v33 = v60;
          (*(*(v32 - 8) + 56))(v60, 1, 1, v32);
          sub_1000051EC();
          v34 = sub_100008748();
          sub_100005240(v33);

          a4 = v22;
          v13 = v59;
          v14 = v66;
          v15 = &WidgetIntentHandler;
          if (v34 == -1)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }

        v19 = a4;
        v20 = v13 == a4++;
        if (!v20)
        {
          goto LABEL_15;
        }

LABEL_16:
        ++v13;
        if (a4 >= v14 || a2 >= a3)
        {
          goto LABEL_49;
        }
      }

LABEL_14:
      v19 = a2;
      v20 = v13 == a2++;
      if (v20)
      {
        goto LABEL_16;
      }

LABEL_15:
      *v13 = *v19;
      goto LABEL_16;
    }

LABEL_49:
    a2 = v13;
LABEL_51:
    if (a2 != a4 || a2 >= (a4 + ((v14 - a4 + (v14 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v14 - a4));
    }

    return 1;
  }

  v59 = a1;
  if (a4 != a2 || &a2[v12] <= a4)
  {
    memmove(a4, a2, 8 * v12);
  }

  v14 = &a4[v12];
  if (a3 - a2 < 8 || a2 <= v59)
  {
    goto LABEL_51;
  }

  v35 = &WidgetIntentHandler;
  v57 = a4;
LABEL_33:
  v36 = a2 - 1;
  --a3;
  v37 = v14;
  v58 = a2;
  v66 = a2 - 1;
  while (1)
  {
    v38 = *--v37;
    v39 = *v36;
    v40 = v38;
    v41 = v39;
    LODWORD(v39) = [v40 v35[30].weak_ivar_lyt];
    if (v39 < [v41 v35[30].weak_ivar_lyt])
    {

LABEL_44:
      v55 = v66;
      if (a3 + 1 != a2)
      {
        *a3 = *v66;
      }

      if (v14 <= a4 || (a2 = v55, v55 <= v59))
      {
        a2 = v55;
        goto LABEL_51;
      }

      goto LABEL_33;
    }

    v42 = [v40 v35[30].weak_ivar_lyt];
    if ([v41 v35[30].weak_ivar_lyt] < v42)
    {

      goto LABEL_41;
    }

    v61 = a3;
    result = [v40 title];
    if (!result)
    {
      break;
    }

    v43 = result;
    v44 = v14;
    v45 = sub_1000086A8();
    v47 = v46;

    v64 = v45;
    v65 = v47;
    result = [v41 title];
    if (!result)
    {
      goto LABEL_56;
    }

    v48 = result;
    v49 = sub_1000086A8();
    v51 = v50;

    v62 = v49;
    v63 = v51;
    v52 = sub_100008658();
    v53 = v60;
    (*(*(v52 - 8) + 56))(v60, 1, 1, v52);
    sub_1000051EC();
    v54 = sub_100008748();
    sub_100005240(v53);

    a4 = v57;
    a2 = v58;
    v14 = v44;
    a3 = v61;
    v35 = &WidgetIntentHandler;
    if (v54 == -1)
    {
      goto LABEL_44;
    }

LABEL_41:
    v36 = v66;
    if (a3 + 1 != v14)
    {
      *a3 = *v37;
    }

    --a3;
    v14 = v37;
    if (v37 <= a4)
    {
      v14 = v37;
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_100004170(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000041FC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100004210(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005090(&qword_100011268, qword_1000091C8);
  v35 = v4;
  result = sub_1000087F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_100008868();
      sub_1000086B8();
      result = sub_100008888();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1000044B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100008838())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_10000456C()
{
  v1 = v0;
  sub_100005090(&qword_100011268, qword_1000091C8);
  v2 = *v0;
  v3 = sub_1000087E8();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void (*sub_1000046D8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100008758();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100004758;
  }

  __break(1u);
  return result;
}

void *sub_100004760(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1000087D8();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100002CDC(v3, 0);
  sub_1000047F4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000047F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000087D8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1000087D8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100005140();
          for (i = 0; i != v6; ++i)
          {
            sub_100005090(&qword_100011238, &qword_1000091A8);
            v9 = sub_1000046D8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000050F8(0, &qword_100011230, CUIKGroupInfo_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100004998(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100004AEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000087D8())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v10 = _swiftEmptyArrayStorage;
    sub_100008788();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_100008758();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = v6;
      sub_10000187C(&v8, &v9);

      sub_100008768();
      sub_100008798();
      sub_1000087A8();
      sub_100008778();
      if (v5 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

void sub_100004C3C(uint64_t a1, uint64_t a2)
{
  v23 = sub_100001C58();
  v3 = sub_100008728();
  sub_100005090(&qword_100011208, &qword_100009198);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100009150;
  v5 = &WidgetIntentHandler;
  v6 = [v23 sections];
  sub_100005090(&qword_100011218, &qword_1000091A0);
  v7 = sub_1000086E8();

  v22 = a2;
  if (v7 >> 62)
  {
LABEL_24:
    v8 = sub_1000087D8();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  *(v4 + 32) = v8;
  v9 = [v23 *&v5[27].ivar_base_size];
  v10 = sub_1000086E8();

  *(v4 + 96) = &type metadata for Int;
  *(v4 + 104) = &protocol witness table for Int;
  v20 = v4;
  if (v10 >> 62)
  {
    v11 = sub_1000087D8();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v13 = 0;
  v5 = (v10 & 0xC000000000000001);
  while (v11 != v12)
  {
    if (v5)
    {
      v14 = sub_100008758();
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v14 = *(v10 + 8 * v12 + 32);
    }

    v4 = v14;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v15 = [v14 items];
    type metadata accessor for EKUICalendar();
    v16 = sub_1000086E8();

    if (v16 >> 62)
    {
      v17 = sub_1000087D8();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v12;
    v18 = __OFADD__(v13, v17);
    v13 += v17;
    if (v18)
    {
      goto LABEL_23;
    }
  }

  *(v20 + 72) = v13;
  sub_1000050F8(0, &qword_100011210, OS_os_log_ptr);
  v19 = sub_100008738();
  sub_100008668(v3, &_mh_execute_header, v19, "provideCalendarsOptionsCollection: %d sections, %d calendars", v20, v21);

  (*(v22 + 16))(v22, v23, 0);
}

void sub_100004F18(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v9 = [a1 mirrorCalendarApp];
  if (v9)
  {
    v10 = v9;
    if ([v9 BOOLValue])
    {
      v11 = sub_100002634();
LABEL_7:
      v13 = v11;

      goto LABEL_9;
    }
  }

  v12 = [a1 calendars];
  if (v12)
  {
    v10 = v12;
    type metadata accessor for EKUICalendar();
    v11 = sub_1000086E8();
    goto LABEL_7;
  }

  v13 = 0;
LABEL_9:
  v14 = [objc_allocWithZone(a4(0)) init];
  v15 = *a5;
  swift_beginAccess();
  *&v14[v15] = 4;
  [v14 setUserActivity:0];
  if (v13)
  {
    type metadata accessor for EKUICalendar();
    v16.super.isa = sub_1000086D8().super.isa;
  }

  else
  {
    v16.super.isa = 0;
  }

  [v14 setCalendars:v16.super.isa];

  (*(a3 + 16))(a3, v14);
}

uint64_t sub_100005090(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000050D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000050F8(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_100005140()
{
  result = qword_100011240;
  if (!qword_100011240)
  {
    sub_1000051A4(&qword_100011238, &qword_1000091A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011240);
  }

  return result;
}

uint64_t sub_1000051A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000051EC()
{
  result = qword_100011250;
  if (!qword_100011250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011250);
  }

  return result;
}

uint64_t sub_100005240(uint64_t a1)
{
  v2 = sub_100005090(&qword_100011248, &qword_1000091B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000053F0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_100005448(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000548C(void *a1)
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

char *EKUICalendarsIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id NextEventComplicationConfigurationIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EKUICalendarsIntent.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EKUICalendarsIntent();
  return objc_msgSendSuper2(&v4, "init");
}

id NextEventComplicationConfigurationIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id EKUICalendarsIntent.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for EKUICalendarsIntent();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id NextEventComplicationConfigurationIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_100008698();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id EKUICalendarsIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_100008698();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for EKUICalendarsIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id NextEventComplicationConfigurationIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100008698();

  v8 = sub_100008698();

  if (a5)
  {
    v9.super.isa = sub_100008678().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9.super.isa];

  return v10;
}

id EKUICalendarsIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100008698();

  v8 = sub_100008698();

  if (a5)
  {
    v9.super.isa = sub_100008678().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for EKUICalendarsIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

Swift::Int sub_100005BB0()
{
  v1 = *v0;
  sub_100008868();
  sub_100008878(v1);
  return sub_100008888();
}

Swift::Int sub_100005C24(uint64_t a1)
{
  v2 = *v1;
  sub_100008868();
  sub_100008878(v2);
  return sub_100008888();
}

unint64_t sub_100005C68@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000062EC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t EKUICalendarsIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *EKUICalendarsIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id EKUICalendarsIntentResponse.init()()
{
  *&v0[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id EKUICalendarsIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id NextEventComplicationConfigurationIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id EKUICalendarsIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100006098(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id NextEventComplicationConfigurationIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_100008678().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id EKUICalendarsIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_100008678().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_1000062B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000062EC(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100006324()
{
  result = qword_100011300;
  if (!qword_100011300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011300);
  }

  return result;
}

uint64_t sub_100006378@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000063D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

char *NextEventComplicationConfigurationIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id NextEventComplicationConfigurationIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id NextEventComplicationConfigurationIntent.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id NextEventComplicationConfigurationIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_100008698();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id NextEventComplicationConfigurationIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100008698();

  v8 = sub_100008698();

  if (a5)
  {
    v9.super.isa = sub_100008678().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

uint64_t NextEventComplicationConfigurationIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *NextEventComplicationConfigurationIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id NextEventComplicationConfigurationIntentResponse.init()()
{
  *&v0[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id NextEventComplicationConfigurationIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id NextEventComplicationConfigurationIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100006CCC(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id NextEventComplicationConfigurationIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_100008678().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_100006E64(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100006EC4()
{
  result = qword_100011360;
  if (!qword_100011360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011360);
  }

  return result;
}

uint64_t sub_100006F18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100006F70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id LunarDateComplicationConfigurationIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id LunarDateComplicationConfigurationIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id LunarDateComplicationConfigurationIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_100008698();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id LunarDateComplicationConfigurationIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100008698();

  v8 = sub_100008698();

  if (a5)
  {
    v9.super.isa = sub_100008678().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

uint64_t LunarDateComplicationConfigurationIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *LunarDateComplicationConfigurationIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *LunarDateComplicationConfigurationIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id LunarDateComplicationConfigurationIntentResponse.init()()
{
  *&v0[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id LunarDateComplicationConfigurationIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id LunarDateComplicationConfigurationIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100007864(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id LunarDateComplicationConfigurationIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_100008678().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_1000079FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100007A5C()
{
  result = qword_1000113C0;
  if (!qword_1000113C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000113C0);
  }

  return result;
}

uint64_t sub_100007AB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100007B08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id EKUICalendar.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_100008698();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_100008698();

  if (a6)
  {
    v10 = sub_100008698();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id EKUICalendar.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_100008698();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_100008698();

  if (a6)
  {
    v10 = sub_100008698();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for EKUICalendar();
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:displayString:pronunciationHint:", v8, v9, v10);

  return v11;
}

id EKUICalendar.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendar();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static EKUICalendarResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___EKUICalendarResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static EKUICalendarResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_100008094();

    sub_1000087C8();
  }

  else
  {

    sub_100008848();
    sub_100008094();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100008094();
  isa = sub_1000086D8().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___EKUICalendarResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_100008094()
{
  result = qword_100011440;
  if (!qword_100011440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100011440);
  }

  return result;
}

id static EKUICalendarResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___EKUICalendarResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id EKUICalendarResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_100008678().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id EKUICalendarResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_100008678().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for EKUICalendarResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_100008620(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}