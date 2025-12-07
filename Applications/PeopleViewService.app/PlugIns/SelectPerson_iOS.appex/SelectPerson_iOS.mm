id sub_1000015B8()
{
  v0 = sub_100005064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005084();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  sub_100005044();
  v11 = sub_100005034();
  sub_100005154();

  v12 = sub_100005144();
  (*(v1 + 104))(v3, enum case for ContactFormatter.Style.fullName(_:), v0);

  sub_100005184();
  sub_100005074();
  sub_1000050A4();
  v13 = sub_100005094();
  (*(v5 + 16))(v8, v10, v4);
  v14 = sub_100003F58(v11, v12, v8, v13);
  (*(v5 + 8))(v10, v4);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

char *sub_10000185C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = [a1 people];
  v9 = &_swiftEmptyArrayStorage;
  v47 = v5;
  if (!v8)
  {
    v20 = 0;
    v14 = &_swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v10 = v8;
  v43 = a2;
  sub_100005024();
  v11 = sub_1000051D4();

  v48 = &_swiftEmptyArrayStorage;
  v12 = v11 >> 62;
  if (v11 >> 62)
  {
    v13 = sub_1000052B4();
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = &_swiftEmptyArrayStorage;
  if (v13)
  {
    v15 = 0;
    v9 = (v11 & 0xC000000000000001);
    v14 = (v11 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if (v9)
      {
        v16 = sub_100005244();
      }

      else
      {
        if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v16 = *(v11 + 8 * v15 + 32);
      }

      v17 = v16;
      v6 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v18 = [v16 identifier];
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        sub_100005264();
        a2 = *(v48 + 16);
        sub_100005294();
        sub_1000052A4();
        v10 = &v48;
        sub_100005274();
      }

      ++v15;
    }

    while (v6 != v13);
    v19 = v48;
    v14 = &_swiftEmptyArrayStorage;
    v12 = v11 >> 62;
    if ((v48 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v19 = &_swiftEmptyArrayStorage;
    if ((&_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
    {
LABEL_19:
      if ((v19 & 0x4000000000000000) == 0)
      {
        v20 = *(v19 + 16);
        goto LABEL_21;
      }
    }
  }

  v20 = sub_1000052B4();
LABEL_21:

  if (v12)
  {
    v21 = sub_1000052B4();
    if (v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_23:
      v48 = &_swiftEmptyArrayStorage;
      result = sub_100003D70(0, v21 & ~(v21 >> 63), 0);
      if (v21 < 0)
      {
        __break(1u);
        return result;
      }

      v42 = v20;
      v23 = 0;
      v14 = v48;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v24 = sub_100005244();
        }

        else
        {
          v24 = *(v11 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = [v24 identifier];
        if (v26)
        {
          v27 = v26;
          v28 = sub_100005174();
          v30 = v29;
        }

        else
        {

          v28 = 0;
          v30 = 0xE000000000000000;
        }

        v48 = v14;
        v32 = v14[2];
        v31 = v14[3];
        if (v32 >= v31 >> 1)
        {
          sub_100003D70((v31 > 1), v32 + 1, 1);
          v14 = v48;
        }

        ++v23;
        v14[2] = v32 + 1;
        v33 = &v14[2 * v32];
        v33[4] = v28;
        v33[5] = v30;
      }

      while (v21 != v23);

      v6 = v47;
      v20 = v42;
      a2 = v43;
      goto LABEL_37;
    }
  }

  v6 = v47;
  a2 = v43;
LABEL_37:
  v9 = &_swiftEmptyArrayStorage;
LABEL_38:
  v10 = swift_allocObject();
  *(v10 + 16) = v20 < sub_100004FD4();
  v15 = swift_allocObject();
  *(v15 + 16) = &_swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_allContacts;
  v34 = *&v6[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_allContacts];
  if (v34 >> 62)
  {
LABEL_46:
    if (sub_1000052B4())
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_40:
    sub_100003550(&v6[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher], *&v6[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher + 24]);
    *&v6[v12] = sub_1000050C4();
  }

LABEL_41:
  *(v15 + 16) = *&v6[v12];

  v35 = swift_allocObject();
  v35[2] = v14;
  v35[3] = v6;
  v35[4] = a2;
  v35[5] = a3;
  v35[6] = v10;
  v35[7] = v15;
  v35[8] = a4;
  v35[9] = a5;
  v36 = swift_allocObject();
  *(v36 + 16) = v9;
  v38 = *&v6[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_widgetCenter + 24];
  v37 = *&v6[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_widgetCenter + 32];
  sub_100003550(&v6[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_widgetCenter], v38);
  v39 = swift_allocObject();
  v39[2] = v36;
  v39[3] = sub_100003604;
  v39[4] = v35;
  v40 = *(v37 + 8);

  v41 = v47;
  v40(sub_1000036B0, v39, v38, v37);
}

void sub_100001D88(char *a1, uint64_t a2, char *a3, id *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(id, void))
{
  v12 = 0;
  v99 = *(a2 + 16);
  if (v99)
  {
    *&v98 = a2 + 32;

    v13 = 0;
    do
    {
      v101 = v13;
      v14 = (v98 + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = sub_1000040E4(a1, *v14, v15);
      if (v19)
      {
        v20 = *(a1 + 2);

        v9 = v20;
      }

      else
      {
        v9 = v17;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_90;
        }

        v96 = v12;
        v21 = *(a1 + 2);

        if (v20 != v21)
        {
          v30 = 16 * v9;
          while (v20 < v21)
          {
            v18 = &a1[v30];
            v8 = *&a1[v30 + 48];
            v10 = *&a1[v30 + 56];
            v32 = v8 == v16 && v10 == v15;
            if (!v32 && (sub_1000052D4() & 1) == 0)
            {
              if (v20 != v9)
              {
                if (v9 >= v21)
                {
                  goto LABEL_87;
                }

                v33 = &a1[16 * v9 + 32];
                v34 = *(v33 + 1);
                v100 = *v33;

                v35 = a1;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v35 = sub_100003F44(a1);
                }

                v36 = &v35[16 * v9];
                *(v36 + 4) = v8;
                *(v36 + 5) = v10;

                v18 = *(v35 + 2);
                if (v20 >= v18)
                {
                  goto LABEL_88;
                }

                v31 = &v35[v30];
                *(v31 + 6) = v100;
                *(v31 + 7) = v34;

                a1 = v35;
              }

              ++v9;
            }

            ++v20;
            v21 = *(a1 + 2);
            v30 += 16;
            if (v20 == v21)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

LABEL_8:
        if (v20 < v9)
        {
          goto LABEL_84;
        }

        v12 = v96;
        if (v9 < 0)
        {
          goto LABEL_85;
        }
      }

      v8 = a1;
      v22 = v9 - v20;
      if (__OFADD__(v20, v9 - v20))
      {
        goto LABEL_86;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v9 <= *(a1 + 3) >> 1)
      {
        v24 = a1;
      }

      else
      {
        if (v20 <= v9)
        {
          v25 = v9;
        }

        else
        {
          v25 = v20;
        }

        v24 = sub_1000036BC(isUniquelyReferenced_nonNull_native, v25, 1, a1);
      }

      v26 = v24;
      v27 = v24 + 32;
      v8 = &v24[16 * v9 + 32];
      swift_arrayDestroy();
      if (v20 != v9)
      {
        memmove(v8, &v27[16 * v20], 16 * (*(v26 + 16) - v20));
        v28 = *(v26 + 16);
        v29 = __OFADD__(v28, v22);
        v18 = (v28 + v22);
        if (v29)
        {
          goto LABEL_91;
        }

        *(v26 + 16) = v18;
      }

      v13 = v101 + 1;

      a1 = v26;
    }

    while (v101 + 1 != v99);
  }

  else
  {
  }

  sub_100003550(&a3[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher], *&a3[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher + 24]);
  sub_100004FE4();
  v20 = sub_1000050E4();
  v104[0] = v20;
  if (a5)
  {
    swift_beginAccess();
    *(a6 + 16) = 0;
    v8 = a4;
    v37 = sub_1000050B4();

    v104[0] = v37;
    v38 = a7;
    swift_beginAccess();

    v39 = sub_1000050B4();

    swift_beginAccess();
    *(a7 + 16) = v39;

    v20 = v37;
  }

  else
  {
    v38 = a7;
  }

  swift_beginAccess();
  v15 = *(v38 + 16);

  v40 = sub_100005004();
  if (v40 < 0)
  {
    goto LABEL_92;
  }

  v18 = v40;
  v8 = v15 >> 62;
  if (v15 >> 62)
  {
    goto LABEL_93;
  }

  v41 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v41 >= v18)
  {
    v42 = v18;
  }

  else
  {
    v42 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  if (v41 >= v43)
  {
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0 && v43)
      {
        sub_100004184();

        v44 = 0;
        do
        {
          v45 = v44 + 1;
          sub_100005234(v44);
          v44 = v45;
        }

        while (v43 != v45);
      }

      else
      {
      }

      if (v8)
      {
        sub_1000052C4();
        v9 = v46;
        v8 = v47;
        v49 = v48;

        v43 = v49 >> 1;
      }

      else
      {
        v9 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      v15 = &_swiftEmptyArrayStorage;
      v50 = a3;
      v10 = (v43 - v8);
      if (v43 == v8)
      {
        break;
      }

      if (v43 <= v8)
      {
        v18 = v8;
      }

      else
      {
        v18 = v43;
      }

      v70 = v18 - v8;
      v8 = v9 + 8 * v8;
      while (v70)
      {
        v103 = *v8;
        v71 = v103;
        sub_100002880(v104, &v102);

        if (v102)
        {
          sub_1000051B4();
          if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1000051E4();
          }

          sub_100005204();
          v15 = &_swiftEmptyArrayStorage;
        }

        --v70;
        v8 += 8;
        if (!--v10)
        {
          goto LABEL_60;
        }
      }

LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      v79 = v18;
      v80 = sub_1000052B4();
      if (sub_1000052B4() < 0)
      {
        __break(1u);
        return;
      }

      if (v80 >= v79)
      {
        v81 = v79;
      }

      else
      {
        v81 = v80;
      }

      if (v80 < 0)
      {
        v81 = v79;
      }

      if (v79)
      {
        v43 = v81;
      }

      else
      {
        v43 = 0;
      }

      if (sub_1000052B4() < v43)
      {
        goto LABEL_103;
      }
    }

LABEL_60:
    swift_unknownObjectRelease();

    sub_100005184();
    v51 = objc_allocWithZone(INObjectSection);
    v52 = sub_100005164();

    sub_100005024();
    isa = sub_1000051C4().super.isa;

    v10 = [v51 initWithTitle:v52 items:isa];

    sub_100003E9C(&qword_10000C548, &qword_1000058C0);
    v54 = swift_allocObject();
    v98 = xmmword_100005850;
    *(v54 + 16) = xmmword_100005850;
    sub_100004FF4();
    sub_100005184();

    v55 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v56 = sub_100005164();

    v57 = [v55 initWithIdentifier:0 displayString:v56];

    *(v54 + 32) = v57;
    v58 = objc_allocWithZone(INObjectSection);
    v59 = sub_1000051C4().super.isa;

    v9 = [v58 initWithTitle:0 items:v59];

    if (v20 >> 62)
    {
      goto LABEL_104;
    }

    v60 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60)
    {
      sub_100005284();
      goto LABEL_63;
    }

    goto LABEL_108;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  if (!sub_1000052B4())
  {
LABEL_108:

    swift_beginAccess();
    if (*(a6 + 16) == 1)
    {
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_100005860;
      *(v83 + 32) = v9;
      *(v83 + 40) = v10;
      v84 = v9;
    }

    else
    {
      v85 = swift_allocObject();
      *(v85 + 16) = v98;
      *(v85 + 32) = v10;
    }

    v86 = objc_allocWithZone(INObjectCollection);
    v87 = v10;
    sub_100003E9C(&qword_10000C550, qword_1000058C8);
    v88 = sub_1000051C4().super.isa;

    v89 = [v86 initWithSections:v88];

    v78 = v89;
    a8(v89, 0);

    goto LABEL_112;
  }

  v82 = sub_1000052B4();
  if (v82)
  {
    v60 = v82;
    sub_100005284();
    if (v60 < 0)
    {
      __break(1u);
      goto LABEL_108;
    }

LABEL_63:
    v97 = v9;
    v61 = 0;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v62 = sub_100005244();
      }

      else
      {
        v62 = *(v20 + 8 * v61 + 32);
      }

      v63 = v62;
      ++v61;
      sub_100003110(v62);

      sub_100005264();
      sub_100005294();
      sub_1000052A4();
      sub_100005274();
    }

    while (v60 != v61);

    v9 = v97;
  }

  else
  {
  }

  sub_100005184();
  v64 = objc_allocWithZone(INObjectSection);
  v65 = sub_100005164();

  v66 = sub_1000051C4().super.isa;

  v67 = [v64 initWithTitle:v65 items:v66];

  swift_beginAccess();
  if (*(a6 + 16))
  {
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_100005870;
    *(v68 + 32) = v9;
    *(v68 + 40) = v67;
    *(v68 + 48) = v10;
    v69 = v9;
  }

  else
  {
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_100005860;
    *(v72 + 32) = v67;
    *(v72 + 40) = v10;
  }

  v73 = objc_allocWithZone(INObjectCollection);
  v74 = v10;
  v75 = v67;
  sub_100003E9C(&qword_10000C550, qword_1000058C8);
  v76 = sub_1000051C4().super.isa;

  v77 = [v73 initWithSections:v76];

  v78 = v77;
  a8(v77, 0);

LABEL_112:
}

id sub_100002880@<X0>(unint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (*a1 >> 62)
  {
LABEL_19:
    v18 = v3;
    v20 = sub_1000052B4();
  }

  else
  {
    v18 = *a1 & 0xFFFFFFFFFFFFFF8;
    v20 = *(v18 + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v20 == v4)
    {

      result = sub_100003110(v19);
      goto LABEL_16;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_100005244();
    }

    else
    {
      v3 = *(v18 + 16);
      if (v4 >= v3)
      {
        goto LABEL_18;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = [v6 identifier];
    v9 = sub_100005174();
    v11 = v10;

    v12 = [v19 identifier];
    v13 = sub_100005174();
    v15 = v14;

    if (v9 == v13 && v11 == v15)
    {
      break;
    }

    v5 = sub_1000052D4();

    ++v4;
    if (v5)
    {
      goto LABEL_15;
    }
  }

LABEL_15:

  result = 0;
LABEL_16:
  *a2 = result;
  return result;
}

void sub_100002B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100004F84();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100002C28(unint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v52[1] = a4;
  v53 = a3;
  v6 = sub_100004FA4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000052B4())
  {
    v12 = 0;
    v59 = a1 & 0xC000000000000001;
    v54 = a1 + 32;
    v55 = a1 & 0xFFFFFFFFFFFFFF8;
    v13 = v7 + 1;
    *&v8 = 136315138;
    v61 = v8;
    v56 = i;
    v57 = a1;
    v62 = v6;
    v63 = a2;
    while (1)
    {
      if (v59)
      {
        v14 = sub_100005244();
      }

      else
      {
        if (v12 >= *(v55 + 16))
        {
          goto LABEL_37;
        }

        v14 = *(v54 + 8 * v12);
      }

      v7 = v14;
      if (__OFADD__(v12++, 1))
      {
        break;
      }

      sub_100004FB4();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v60 = v7;
        v17 = [v16 people];
        if (v17)
        {
          v18 = v17;
          sub_100005024();
          v19 = sub_1000051D4();

          v20 = v19;
        }

        else
        {
          v20 = &_swiftEmptyArrayStorage;
        }

        v7 = v60;
        if (v20 >> 62)
        {
          v49 = v20;
          v21 = sub_1000052B4();
          v20 = v49;
          if (!v21)
          {
LABEL_34:

            goto LABEL_4;
          }
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v21)
          {
            goto LABEL_34;
          }
        }

        if (v21 < 1)
        {
          goto LABEL_36;
        }

        v58 = v12;
        v22 = 0;
        v64 = v20 & 0xC000000000000001;
        v65 = v21;
        v66 = v20;
        do
        {
          if (v64)
          {
            v23 = sub_100005244();
          }

          else
          {
            v23 = *(v20 + 8 * v22 + 32);
          }

          v24 = v23;
          sub_100004FC4();
          v25 = v24;
          v26 = sub_100004F94();
          v27 = sub_100005214();

          v28 = os_log_type_enabled(v26, v27);
          v67 = v25;
          if (v28)
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v68[0] = v30;
            *v29 = v61;
            v31 = [v25 debugDescription];
            v32 = v13;
            v33 = v10;
            v34 = sub_100005174();
            v36 = v35;

            v37 = v34;
            v10 = v33;
            v13 = v32;
            v38 = sub_1000037C8(v37, v36, v68);
            v25 = v67;

            *(v29 + 4) = v38;
            v6 = v62;
            a2 = v63;
            _os_log_impl(&_mh_execute_header, v26, v27, "people in widget%s", v29, 0xCu);
            sub_100004B68(v30);
          }

          (*v13)(v10, v6);
          v39 = [v25 identifier];
          if (v39)
          {
            v40 = v39;
            v41 = sub_100005174();
            v43 = v42;
          }

          else
          {
            v41 = 0;
            v43 = 0xE000000000000000;
          }

          swift_beginAccess();
          v44 = *(a2 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a2 + 16) = v44;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v44 = sub_1000036BC(0, *(v44 + 2) + 1, 1, v44);
            *(a2 + 16) = v44;
          }

          v47 = *(v44 + 2);
          v46 = *(v44 + 3);
          if (v47 >= v46 >> 1)
          {
            v44 = sub_1000036BC((v46 > 1), v47 + 1, 1, v44);
          }

          ++v22;
          *(v44 + 2) = v47 + 1;
          v48 = &v44[16 * v47];
          *(v48 + 4) = v41;
          *(v48 + 5) = v43;
          *(a2 + 16) = v44;
          swift_endAccess();

          v20 = v66;
        }

        while (v65 != v22);
        v7 = v66;

        i = v56;
        a1 = v57;
        v12 = v58;
      }

      else
      {
      }

LABEL_4:
      if (v12 == i)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

LABEL_39:
  swift_beginAccess();

  v53(v50);
}

id sub_100003110(void *a1)
{
  v2 = v1;
  v4 = sub_100005064();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100005084();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 identifier];
  v12 = sub_100005174();
  v14 = v13;

  v29 = v12;
  v30 = v14;
  sub_100003550((v2 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFormatter), *(v2 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFormatter + 24));
  sub_1000050F4();
  (*(v5 + 104))(v7, enum case for ContactFormatter.Style.shortName(_:), v4);
  v15 = a1;
  sub_100005184();
  sub_100005074();
  v16.super.isa = a1;
  sub_100005054(v16);
  (*(v8 + 8))(v10, v27);
  sub_100003550((v2 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_verticalTextHelper), *(v2 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_verticalTextHelper + 24));
  v17 = sub_100005104();
  v19 = v18;

  if (v19)
  {
    v28._countAndFlagsBits = 124;
    v28._object = 0xE100000000000000;
    v31._countAndFlagsBits = v17;
    v31._object = v19;
    sub_100005194(v31);

    sub_100005194(v28);
  }

  sub_100005024();
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = sub_100005164();

  v22 = sub_100005164();

  v23 = [v20 initWithIdentifier:v21 displayString:v22];

  v24 = [v15 identifier];
  if (!v24)
  {
    sub_100005174();
    v24 = sub_100005164();
  }

  [v23 setId:v24];

  return v23;
}

id sub_10000347C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100003550(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000035A4()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100003638()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003670()
{

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_1000036BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003E9C(&qword_10000C530, &qword_1000058B0);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000037C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003894(v11, 0, 0, 1, a1, a2);
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
    sub_100003EE8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004B68(v11);
  return v7;
}

unint64_t sub_100003894(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000039A0(a5, a6);
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
    result = sub_100005254();
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

char *sub_1000039A0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000039EC(a1, a2);
  sub_100003B1C(&off_1000084E8);
  return v3;
}

char *sub_1000039EC(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100003C08(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100005254();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000051A4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003C08(v10, 0);
        result = sub_100005224();
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

uint64_t sub_100003B1C(uint64_t result)
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

  result = sub_100003C7C(result, v11, 1, v3);
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

void *sub_100003C08(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100003E9C(&qword_10000C538, &qword_1000058B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003C7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003E9C(&qword_10000C538, &qword_1000058B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100003D70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100003D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100003D90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003E9C(&qword_10000C530, &qword_1000058B0);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100003E9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003EE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_100003F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100005084();
  v18[3] = v8;
  v18[4] = &protocol witness table for ContactFormatter;
  v9 = sub_100004AA0(v18);
  (*(*(v8 - 8) + 32))(v9, a3, v8);
  v17[3] = sub_1000050A4();
  v17[4] = &protocol witness table for VerticalTextHelper;
  v17[0] = a4;
  v16[3] = sub_100005044();
  v16[4] = &protocol witness table for ContactFetcher;
  v16[0] = a1;
  v15[3] = sub_100005154();
  v15[4] = &protocol witness table for WidgetCenter;
  v15[0] = a2;
  v10 = type metadata accessor for IntentHandler();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_allContacts] = &_swiftEmptyArrayStorage;
  sub_100004B04(v16, &v11[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher]);
  sub_100004B04(v15, &v11[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_widgetCenter]);
  sub_100004B04(v18, &v11[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFormatter]);
  sub_100004B04(v17, &v11[OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_verticalTextHelper]);
  v14.receiver = v11;
  v14.super_class = v10;
  v12 = objc_msgSendSuper2(&v14, "init");
  sub_100004B68(v17);
  sub_100004B68(v18);
  sub_100004B68(v15);
  sub_100004B68(v16);
  return v12;
}

uint64_t sub_1000040E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_1000052D4() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_100004184()
{
  result = qword_10000C540;
  if (!qword_10000C540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C540);
  }

  return result;
}

unint64_t sub_1000041D0()
{
  v2 = sub_100004FA4();
  v57 = *(v2 - 8);
  v58 = v2;
  __chkstk_darwin(v2);
  v56 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher;
  sub_100003550((v0 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher), *(v0 + OBJC_IVAR____TtC16SelectPerson_iOS13IntentHandler_contactFetcher + 24));
  sub_100005014();
  v5 = &_swiftEmptyArrayStorage;
  v6 = sub_1000050E4();
  v7 = v6;
  if (v6 >> 62)
  {
    v8 = sub_1000052B4();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_11:

    v1 = &_swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_3:
  v71 = &_swiftEmptyArrayStorage;
  sub_100005284();
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_76;
  }

  v9 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_100005244();
    }

    else
    {
      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    sub_100003110(v10);

    sub_100005264();
    sub_100005294();
    sub_1000052A4();
    sub_100005274();
  }

  while (v8 != v9);

  v1 = v71;
LABEL_12:
  v71 = v1;
  if (v1 >> 62)
  {
    goto LABEL_74;
  }

  v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  if (v12 >= sub_100005014())
  {
    goto LABEL_80;
  }

  sub_100003550(v4, *(v4 + 24));
  v13 = sub_1000050D4();
  v4 = v13;
  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_17;
    }

    goto LABEL_77;
  }

LABEL_76:
  v14 = sub_1000052B4();
  if (v14)
  {
LABEL_17:
    v70 = v5;
    result = sub_100005284();
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v17 = sub_100005244();
      }

      else
      {
        v17 = *(v4 + 8 * v16 + 32);
      }

      v18 = v17;
      ++v16;
      sub_100003110(v17);

      sub_100005264();
      sub_100005294();
      sub_1000052A4();
      sub_100005274();
    }

    while (v14 != v16);

    v19 = v70;
    if (!(v70 >> 62))
    {
      goto LABEL_24;
    }

LABEL_78:
    v20 = sub_1000052B4();
    if (v20)
    {
LABEL_25:
      v5 = 0;
      v62 = v19;
      v63 = v19 & 0xC000000000000001;
      v59 = v19 + 32;
      v60 = v19 & 0xFFFFFFFFFFFFFF8;
      v4 = &OBJC_PROTOCOL___SelectPeopleIntentHandling;
      v61 = v20;
      while (1)
      {
        if (v63)
        {
          v21 = sub_100005244();
        }

        else
        {
          if (v5 >= *(v60 + 16))
          {
            goto LABEL_73;
          }

          v21 = *(v59 + 8 * v5);
        }

        v69 = v21;
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_72;
        }

        v64 = v1 >> 62;
        v65 = v5;
        v23 = v1 >> 62 ? sub_1000052B4() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v23)
        {
          break;
        }

LABEL_57:

        if (v64)
        {
          v38 = sub_1000052B4();
        }

        else
        {
          v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v39 = v61;
        v5 = v65;
        if (v38 >= sub_100005014())
        {
        }

        else
        {
          v40 = v69;
          sub_1000051B4();
          if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1000051E4();
          }

          sub_100005204();

          v1 = v71;
        }

LABEL_27:
        if (v5 == v39)
        {
          goto LABEL_79;
        }
      }

      v24 = 0;
      v67 = v1 & 0xFFFFFFFFFFFFFF8;
      v68 = v1 & 0xC000000000000001;
      v66 = v1;
      while (1)
      {
        if (v68)
        {
          v25 = sub_100005244();
        }

        else
        {
          if (v24 >= *(v67 + 16))
          {
            goto LABEL_71;
          }

          v25 = *(v1 + 8 * v24 + 32);
        }

        v1 = v25;
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          v12 = sub_1000052B4();
          goto LABEL_14;
        }

        v27 = [v25 *(v4 + 680)];
        if (v27)
        {
          v28 = v27;
          v29 = sub_100005174();
          v31 = v30;
        }

        else
        {
          v29 = 0;
          v31 = 0;
        }

        v32 = v4;
        v33 = [v69 *(v4 + 680)];
        if (!v33)
        {
          break;
        }

        v34 = v33;
        v5 = sub_100005174();
        v36 = v35;

        if (!v31)
        {

          v4 = v32;
          if (!v36)
          {
            goto LABEL_65;
          }

          goto LABEL_38;
        }

        v4 = v32;
        if (!v36)
        {
          goto LABEL_55;
        }

        if (v29 == v5 && v31 == v36)
        {

          v41 = v66;

          v1 = v41;
LABEL_68:
          v39 = v61;
          v5 = v65;
          goto LABEL_27;
        }

        v37 = sub_1000052D4();

        v1 = v66;
        if (v37)
        {

LABEL_67:

          goto LABEL_68;
        }

LABEL_39:
        ++v24;
        if (v26 == v23)
        {
          goto LABEL_57;
        }
      }

      if (!v31)
      {

LABEL_65:
        v1 = v66;
        goto LABEL_67;
      }

LABEL_55:

LABEL_38:

      v1 = v66;
      goto LABEL_39;
    }

    goto LABEL_79;
  }

LABEL_77:

  v19 = &_swiftEmptyArrayStorage;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_78;
  }

LABEL_24:
  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
    goto LABEL_25;
  }

LABEL_79:

LABEL_80:
  if (v1 >> 62)
  {
    v42 = sub_1000052B4();
  }

  else
  {
    v42 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v42 < sub_100005014())
  {
    sub_100005024();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    do
    {
      sub_100004FF4();
      sub_100005184();

      v44 = objc_allocWithZone(ObjCClassFromMetadata);
      v45 = sub_100005164();

      [v44 initWithIdentifier:0 displayString:v45];

      sub_1000051B4();
      if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000051E4();
      }

      sub_100005204();
      v1 = v71;
      if (v71 >> 62)
      {
        v46 = sub_1000052B4();
      }

      else
      {
        v46 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    while (v46 < sub_100005014());
  }

  v47 = v56;
  sub_100004FC4();
  v48 = sub_100004F94();
  v49 = sub_100005214();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v70 = v51;
    *v50 = 136315138;
    sub_100005024();

    v52 = sub_1000051F4();
    v54 = v53;

    v55 = sub_1000037C8(v52, v54, &v70);

    *(v50 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v48, v49, "Default contacts for widget: %s", v50, 0xCu);
    sub_100004B68(v51);
  }

  (*(v57 + 8))(v47, v58);
  return v1;
}

uint64_t sub_100004A60()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_100004AA0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100004B04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004B68(void *a1)
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

uint64_t WidgetCenter.getCurrentWidgetConfigurations(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = &_swiftEmptyArrayStorage;
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;

  sub_100005134();
}

uint64_t sub_100004C78()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004CB0(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a2)
  {
    sub_100003E9C(&qword_10000C5B8, &unk_100005930);
    return swift_willThrowTypedImpl();
  }

  else
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v9 = *(sub_100005124() - 8);
      v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v11 = *(v9 + 72);
      do
      {
        v12 = sub_100005114();
        if (v12)
        {
          v13 = v12;
          swift_beginAccess();
          v14 = v13;
          sub_1000051B4();
          if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1000051E4();
          }

          sub_100005204();
          swift_endAccess();
        }

        v10 += v11;
        --v7;
      }

      while (v7);
    }

    swift_beginAccess();

    a4(v15);
  }
}

uint64_t sub_100004E78(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = &_swiftEmptyArrayStorage;
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;

  sub_100005134();
}

uint64_t sub_100004F3C()
{

  return _swift_deallocObject(v0, 40, 7);
}