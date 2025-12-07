uint64_t sub_10002F274(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = sub_1000847C8();
  v8 = *(v48 - 8);
  __chkstk_darwin(v48);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MarkdownStyle(0);
  v45 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v47 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v40 - v14;
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100005740(&qword_1000A5C78, &unk_10008B880);
  result = sub_100085618();
  v16 = result;
  v42 = v10;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43 = a4;
  v44 = (v8 + 48);
  v40 = (v8 + 8);
  v41 = (v8 + 32);
  v20 = result + 56;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_16:
    v24 = *(a4 + 48);
    v46 = *(v45 + 72);
    sub_100032EB8(v24 + v46 * (v21 | (v19 << 6)), v15, type metadata accessor for MarkdownStyle);
    sub_100085A08();
    v25 = v15;
    v26 = v15;
    v27 = v47;
    sub_100032EB8(v26, v47, type metadata accessor for MarkdownStyle);
    v28 = (*v44)(v27, 6, v48);
    if (v28 <= 2)
    {
      if (!v28)
      {
        (*v41)(v42, v47, v48);
        sub_100085A18(6uLL);
        sub_100031408(&qword_1000A5C70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v30 = v48;
        sub_100085028();
        (*v40)(v42, v30);
        v15 = v25;
        goto LABEL_28;
      }

      v15 = v25;
      v29 = v28 != 1;
    }

    else if (v28 > 4)
    {
      v15 = v25;
      if (v28 == 5)
      {
        v29 = 4;
      }

      else
      {
        v29 = 5;
      }
    }

    else
    {
      v15 = v25;
      if (v28 == 3)
      {
        v29 = 2;
      }

      else
      {
        v29 = 3;
      }
    }

    sub_100085A18(v29);
LABEL_28:
    result = sub_100085A38();
    v31 = -1 << *(v16 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v20 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_38;
        }
      }

      goto LABEL_43;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_38:
    *(v20 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    result = sub_100032CA4(v15, *(v16 + 48) + v34 * v46, type metadata accessor for MarkdownStyle);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_44;
    }

    a4 = v43;
    if (!a3)
    {
LABEL_40:

      return v16;
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      goto LABEL_40;
    }

    v23 = a1[v19];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v18 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_10002F734(int64_t a1)
{
  v40 = sub_1000847C8();
  v3 = *(v40 - 8);
  __chkstk_darwin(v40);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for MarkdownStyle(0);
  v5 = *(v36 - 8);
  v6 = __chkstk_darwin(v36);
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v41 = &v33 - v9;
  v10 = *v1;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  v38 = *v1 + 56;
  if (((1 << v12) & *(v38 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;

    v14 = v38;
    v15 = sub_100085558();
    if ((*(v14 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = (v15 + 1) & v13;
      v17 = *(v5 + 72);
      v37 = (v3 + 48);
      v33 = (v3 + 8);
      v34 = (v3 + 32);
      while (1)
      {
        v18 = v13;
        v19 = v17;
        v20 = v17 * v12;
        v21 = v41;
        sub_100032EB8(*(v10 + 48) + v17 * v12, v41, type metadata accessor for MarkdownStyle);
        sub_100085A08();
        v22 = v39;
        sub_100032EB8(v21, v39, type metadata accessor for MarkdownStyle);
        v23 = (*v37)(v22, 6, v40);
        if (v23 <= 2)
        {
          if (v23)
          {
            sub_100085A18(v23 != 1);
          }

          else
          {
            v25 = v35;
            v26 = v40;
            (*v34)(v35, v39, v40);
            sub_100085A18(6uLL);
            sub_100031408(&qword_1000A5C70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            sub_100085028();
            (*v33)(v25, v26);
          }

          v13 = v18;
        }

        else
        {
          if (v23 > 4)
          {
            v13 = v18;
            v24 = v23 == 5 ? 4 : 5;
          }

          else
          {
            v13 = v18;
            v24 = v23 == 3 ? 2 : 3;
          }

          sub_100085A18(v24);
        }

        v27 = sub_100085A38();
        sub_100032F20(v41, type metadata accessor for MarkdownStyle);
        v28 = v27 & v13;
        if (a1 >= v16)
        {
          break;
        }

        v17 = v19;
        if (v28 < v16)
        {
          goto LABEL_24;
        }

LABEL_25:
        v29 = v17 * a1;
        if (v17 * a1 < v20 || *(v10 + 48) + v17 * a1 >= (*(v10 + 48) + v20 + v17))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v12;
          if (v29 == v20)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v12;
LABEL_6:
        v12 = (v12 + 1) & v13;
        if (((*(v38 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v17 = v19;
      if (v28 < v16)
      {
        goto LABEL_6;
      }

LABEL_24:
      if (a1 < v28)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_29:

    *(v38 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v38 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v10 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v32;
    ++*(v10 + 36);
  }

  return result;
}

uint64_t sub_10002FBDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000847C8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MarkdownStyle(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005740(&qword_1000A5C60, &qword_10008B870);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_100032EB8(a1, &v21 - v13, type metadata accessor for MarkdownStyle);
  sub_100032EB8(a2, &v14[v15], type metadata accessor for MarkdownStyle);
  v16 = *(v5 + 48);
  v17 = v16(v14, 6, v4);
  if (v17 <= 2)
  {
    if (!v17)
    {
      sub_100032EB8(v14, v10, type metadata accessor for MarkdownStyle);
      if (!v16(&v14[v15], 6, v4))
      {
        (*(v5 + 32))(v7, &v14[v15], v4);
        v18 = sub_100084758();
        v20 = *(v5 + 8);
        v20(v7, v4);
        v20(v10, v4);
        sub_100032F20(v14, type metadata accessor for MarkdownStyle);
        return v18 & 1;
      }

      (*(v5 + 8))(v10, v4);
      goto LABEL_20;
    }

    if (v17 == 1)
    {
      if (v16(&v14[v15], 6, v4) != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v16(&v14[v15], 6, v4) == 2)
    {
      goto LABEL_16;
    }

LABEL_20:
    sub_1000058F0(v14, &qword_1000A5C60, &qword_10008B870);
    v18 = 0;
    return v18 & 1;
  }

  if (v17 > 4)
  {
    if (v17 == 5)
    {
      if (v16(&v14[v15], 6, v4) != 5)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v16(&v14[v15], 6, v4) == 6)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (v17 == 3)
  {
    if (v16(&v14[v15], 6, v4) != 3)
    {
      goto LABEL_20;
    }
  }

  else if (v16(&v14[v15], 6, v4) != 4)
  {
    goto LABEL_20;
  }

LABEL_16:
  sub_100032F20(v14, type metadata accessor for MarkdownStyle);
  v18 = 1;
  return v18 & 1;
}

id sub_10002FF98(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 57);
  result = [a1 attributedString];
  v8 = result;
  v44 = a2;
  if (v6)
  {
    if (!result)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    [result ic_range];

    v8 = sub_1000854A8();
    v9 = [a2 managedObjectContext];
    v10 = *(a3 + 60);
    v53 = _swiftEmptyArrayStorage;
    v11 = [v8 string];
    v12 = sub_100085098();
    v14 = v13;

    v51 = v12;
    v52 = v14;
    v15 = [v8 ic_range];
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = &v51;
    *(v18 + 24) = v9;
    *(v18 + 32) = v10;
    a2 = swift_allocObject();
    a2[2] = sub_100035CD4;
    a2[3] = v18;
    v49 = sub_100035C90;
    v50 = a2;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_10001EF40;
    v48 = &unk_10009EFD0;
    v19 = _Block_copy(&aBlock);
    v20 = v9;

    [v8 enumerateAttributesInRange:v15 options:v17 usingBlock:{0, v19}];
    sub_100030518(a3);

    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_7:
      v43 = v51;

      return v43;
    }

    __break(1u);
  }

  if (v8)
  {
    v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v8];

    v23 = ICTTAttributeNameReplicaID;
    v24 = v22;
    v25 = [v24 ic_range];
    [v24 removeAttribute:v23 range:{v25, v26}];

    v27 = ICTTAttributeNameTimestamp;
    v28 = [v24 ic_range];
    [v24 removeAttribute:v27 range:{v28, v29}];

    v30 = [a2 managedObjectContext];
    v31 = *(a3 + 60);
    v53 = _swiftEmptyArrayStorage;
    v32 = [v24 string];
    v33 = sub_100085098();
    v35 = v34;

    v51 = v33;
    v52 = v35;
    v36 = [v24 ic_range];
    v38 = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = &v51;
    *(v39 + 24) = v30;
    *(v39 + 32) = v31;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1000304BC;
    *(v40 + 24) = v39;
    v49 = sub_1000304D8;
    v50 = v40;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_10001EF40;
    v48 = &unk_10009EF58;
    v41 = _Block_copy(&aBlock);
    v42 = v30;

    [v24 enumerateAttributesInRange:v36 options:v38 usingBlock:{0, v41}];
    sub_100030518(a3);

    _Block_release(v41);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if ((v41 & 1) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100030484()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100030500(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000305CC(void *a1, char a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10003E50C(_swiftEmptyArrayStorage);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v25 = ICTTAttributeNameParagraphStyle;
  v10 = [a1 ic_range];
  v23 = v11;
  v24 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = a1;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  *(v12 + 48) = v7;
  *(v12 + 56) = a2;
  *(v12 + 64) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100031274;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1000312B4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002A6AC;
  aBlock[3] = &unk_10009F0C0;
  v14 = _Block_copy(aBlock);

  v15 = a1;

  v16 = a3;

  [v15 enumerateAttribute:v25 inRange:v24 options:v23 usingBlock:{0, v14}];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v19 = *(v6 + 16);
    v20 = *(v6 + 24);
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
    }

    else
    {
      v22 = [v15 string];
      v19 = sub_100085098();
    }

    return v19;
  }

  return result;
}

uint64_t sub_1000308DC(void *a1, id a2, uint64_t a3)
{
  v5 = [a2 managedObjectContext];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 attributedString];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v7];

      v10 = ICTTAttributeNameReplicaID;
      v11 = v9;
      v12 = [v11 ic_range];
      [v11 removeAttribute:v10 range:{v12, v13}];

      v14 = ICTTAttributeNameTimestamp;
      v15 = [v11 ic_range];
      [v11 removeAttribute:v14 range:{v15, v16}];

      v17 = sub_1000305CC(v11, *(a3 + 1), v6);
      return v17;
    }

    __break(1u);
  }

  if (qword_1000A5400 != -1)
  {
    swift_once();
  }

  v19 = sub_100084FB8();
  sub_10000B614(v19, qword_1000A5BF8);
  v20 = sub_100084FA8();
  v21 = sub_100085378();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "no context found for markdown export of note", v22, 2u);
  }

  result = sub_100085708();
  __break(1u);
  return result;
}

uint64_t sub_100030B30(CGColor *a1)
{
  v2 = CGColorGetColorSpace(a1);
  if (v2)
  {
    v3 = v2;
    v4 = CGColorSpaceCopyName(v2);

    if (v4)
    {
      v5 = sub_100085328();
      if (v5)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
          v26 = _swiftEmptyArrayStorage;
          v7 = v5;
          sub_10003BE2C(0, v6, 0);
          v8 = v7;
          v9 = _swiftEmptyArrayStorage;
          v10 = _swiftEmptyArrayStorage[2];
          v11 = 32;
          do
          {
            v12 = *(v8 + v11);
            v26 = v9;
            v13 = v9[3];
            if (v10 >= v13 >> 1)
            {
              sub_10003BE2C((v13 > 1), v10 + 1, 1);
              v8 = v7;
              v9 = v26;
            }

            v9[2] = v10 + 1;
            v9[v10 + 4] = v12;
            v11 += 8;
            ++v10;
            --v6;
          }

          while (v6);
        }

        v25 = sub_100085098();

        return v25;
      }
    }
  }

  if (qword_1000A5400 != -1)
  {
    swift_once();
  }

  v14 = sub_100084FB8();
  sub_10000B614(v14, qword_1000A5BF8);
  v15 = a1;
  v16 = sub_100084FA8();
  v17 = sub_100085378();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    type metadata accessor for CGColor(0);
    v20 = v15;
    v21 = sub_1000850D8();
    v23 = sub_100038A4C(v21, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Cannot create color from CGColor — returning nil {cgColor: %s}", v18, 0xCu);
    sub_100006304(v19);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100030DD0(uint64_t result)
{
  if (result > 4)
  {
    if (result <= 100)
    {
      if (result == 5)
      {
        return 4;
      }

      if (result == 100)
      {
        return 6;
      }
    }

    else
    {
      switch(result)
      {
        case 'e':
          return 7;
        case 'f':
          return 8;
        case 'g':
          return 9;
      }
    }
  }

  else
  {
    if (result > 1)
    {
      if (result != 2 && result != 3)
      {
        return 5;
      }

      return result;
    }

    if (result <= 1)
    {
      return result;
    }
  }

  if (qword_1000A5400 != -1)
  {
    swift_once();
  }

  v1 = sub_100084FB8();
  sub_10000B614(v1, qword_1000A5BF8);
  v2 = sub_100084FA8();
  v3 = sub_100085388();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unknown named paragraph style — returning nil", v4, 2u);
  }

  return 10;
}

unint64_t sub_100030F48(unint64_t result)
{
  if (result >= 5)
  {
    if (qword_1000A5400 != -1)
    {
      swift_once();
    }

    v1 = sub_100084FB8();
    sub_10000B614(v1, qword_1000A5BF8);
    v2 = sub_100084FA8();
    v3 = sub_100085388();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unknown text alignment — returning nil", v4, 2u);
    }

    return 5;
  }

  return result;
}

unint64_t sub_100031030(unint64_t a1)
{
  if (a1 < 6)
  {
    return 0x40302010005uLL >> (8 * a1);
  }

  if (qword_1000A5400 != -1)
  {
    swift_once();
  }

  v2 = sub_100084FB8();
  sub_10000B614(v2, qword_1000A5BF8);
  v3 = sub_100084FA8();
  v4 = sub_100085388();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown emphasis color type — returning nil", v5, 2u);
  }

  return 5;
}

void sub_100031130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_100031194()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000311CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031214()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000312DC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100031394()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100031408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100031450(void *a1)
{
  v3 = sub_100005740(&qword_1000A61C0, &qword_10008C0E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100034C48();
  sub_100085A68();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_1000857E8();
    sub_100005740(&qword_1000A61D0, &qword_10008C0E8);
    v9[15] = 1;
    sub_100034C9C(&qword_1000A61D8, &qword_1000A61E0, &unk_10008BCCC, &protocol conformance descriptor for <A> [A]);
    sub_100085828();
    (*(v4 + 8))(v6, v3);
  }

  sub_100006304(a1);
  return v7;
}

uint64_t sub_10003168C(void *a1)
{
  v3 = sub_100005740(&qword_1000A62A8, &qword_10008C898);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100035954();
  sub_100085A68();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_1000857E8();
    sub_100005740(&qword_1000A62B8, &qword_10008C8A0);
    v9[15] = 1;
    sub_1000359A8(&qword_1000A62C0, &protocol witness table for Double, &protocol conformance descriptor for <A> [A]);
    sub_100085828();
    (*(v4 + 8))(v6, v3);
  }

  sub_100006304(a1);
  return v7;
}

uint64_t sub_1000318B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A6953746E696F70 && a2 == 0xE900000000000065 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C6F427369 && a2 == 0xE600000000000000 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63696C6174497369 && a2 == 0xE800000000000000 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C7265646E557369 && a2 == 0xEB00000000656E69 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656B697274537369 && a2 == 0xEF6867756F726874 || (sub_100085948() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7263737265707573 && a2 == 0xEB00000000747069 || (sub_100085948() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100031B58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100005740(&qword_1000A6078, &qword_10008C090);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  v70 = 1;
  v67 = 1;
  v9 = a1[3];
  v42 = a1;
  sub_10000626C(a1, v9);
  sub_100034454();
  sub_100085A68();
  if (v2)
  {
    v71 = v2;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 2;
    v15 = 2;
    v16 = 2;
    v17 = 2;
LABEL_4:
    sub_100006304(v42);
    *&v51 = v13;
    *(&v51 + 1) = v12;
    v52 = v11;
    v53 = v70;
    v54 = v17;
    v55 = v16;
    v56 = v15;
    v57 = v14;
    v58 = v68;
    v59 = v69;
    v60 = v10;
    v61 = v67;
    *v62 = *v66;
    *&v62[3] = *&v66[3];
    v63 = 0;
    v64 = 0;
    v65 = 0;
    return sub_1000344A8(&v51);
  }

  LOBYTE(v51) = 0;
  *&v41 = sub_100085798();
  *(&v41 + 1) = v19;
  LOBYTE(v51) = 1;
  v40 = sub_1000857B8();
  v70 = v20 & 1;
  LOBYTE(v51) = 2;
  v39 = sub_1000857A8();
  LOBYTE(v51) = 3;
  v38 = sub_1000857A8();
  LOBYTE(v51) = 4;
  v37 = sub_1000857A8();
  LOBYTE(v51) = 5;
  v14 = sub_1000857A8();
  LOBYTE(v51) = 6;
  v21 = sub_1000857C8();
  v71 = 0;
  v10 = v21;
  v67 = v22 & 1;
  v48 = 7;
  sub_1000344D8();
  v23 = v71;
  sub_1000857D8();
  v71 = v23;
  if (v23)
  {
    (*(v6 + 8))(v8, v5);
    v12 = *(&v41 + 1);
    v13 = v41;
    v11 = v40;
    v17 = v39;
    v16 = v38;
    v15 = v37;
    goto LABEL_4;
  }

  (*(v6 + 8))(v8, v5);
  v34 = *(&v49 + 1);
  v35 = v49;
  v33 = v50;
  v24 = v41;
  v43 = v41;
  v25 = v40;
  *&v44 = v40;
  v36 = v70;
  BYTE8(v44) = v70;
  v26 = v39;
  BYTE9(v44) = v39;
  v27 = v38;
  BYTE10(v44) = v38;
  v28 = v37;
  BYTE11(v44) = v37;
  BYTE12(v44) = v14;
  *&v45 = v10;
  v29 = v67;
  BYTE8(v45) = v67;
  v46 = v49;
  v47 = v50;
  sub_10003452C(&v43, &v51);
  sub_100006304(v42);
  v51 = __PAIR128__(*(&v41 + 1), v24);
  v52 = v25;
  v53 = v36;
  v54 = v26;
  v55 = v27;
  v56 = v28;
  v57 = v14;
  v60 = v10;
  v61 = v29;
  v63 = v35;
  v64 = v34;
  v65 = v33;
  result = sub_1000344A8(&v51);
  v30 = v46;
  *(a2 + 32) = v45;
  *(a2 + 48) = v30;
  *(a2 + 64) = v47;
  v31 = v44;
  *a2 = v43;
  *(a2 + 16) = v31;
  return result;
}

unint64_t sub_1000321AC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009DD40;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000321F8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009DDD8;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100032244(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009DEE8;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100032290(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65646E69 && a2 == 0xE600000000000000 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100086CC0 == a2 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73696C6B63656863 && a2 == 0xED00006D65744974 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F75516B636F6C62 && a2 == 0xEF6C6576654C6574 || (sub_100085948() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1000324F4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10009DF80;
  v6._object = a2;
  v4 = sub_100085788(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100032540(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000100086CE0 == a2;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100086D00 == a2 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74786554746C61 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10003270C(void *a1)
{
  v2 = sub_100005740(&qword_1000A61A8, &qword_10008C0D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_10000626C(a1, a1[3]);
  sub_100034BF4();
  sub_100085A68();
  v8[15] = 0;
  v6 = sub_100085818();
  v8[14] = 1;
  sub_100085818();
  (*(v3 + 8))(v5, v2);
  sub_100006304(a1);
  return v6;
}

uint64_t sub_1000328B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v4 || (sub_100085948() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100086D20 == a2 || (sub_100085948() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_100085948() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953394534 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7061726761726170 && a2 == 0xEE00656C79745368 || (sub_100085948() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7369736168706D65 && a2 == 0xED0000656C797453 || (sub_100085948() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000 || (sub_100085948() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100086D40 == a2 || (sub_100085948() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100086D60 == a2 || (sub_100085948() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100086D80 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_100085948();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_100032C00(uint64_t result)
{
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2._countAndFlagsBits = 0;
    v3 = 0xE000000000000000;
    v4 = 1;
    while (1)
    {
      v2._object = v3;
      sub_100085158(v2);

      v2._countAndFlagsBits = 62;
      v3 = 0xE100000000000000;
      if (v1 == v4)
      {
        break;
      }

      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        break;
      }
    }

    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    sub_100085158(v6);
    return 62;
  }

  return result;
}

uint64_t sub_100032CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100032D0C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100032D60()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100032DD4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100032E74()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100032EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100032F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_100032F80(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100032FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000847C8();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100033078(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000847C8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000330FC(uint64_t a1)
{
  v1 = sub_1000847C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_100033168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100084918();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100033248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100084918();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100033300(uint64_t a1)
{
  result = sub_100084918();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100033374(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10003338C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000333B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10003340C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100033494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *(a1 + 1);
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100005740(&qword_1000A5C50, &qword_10008B860);
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
      v13 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000335DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *(result + 1) = a2 + 4;
  }

  else
  {
    v8 = sub_100005740(&qword_1000A5C50, &qword_10008B860);
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
      v13 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100033714(uint64_t a1)
{
  sub_1000341B8(319, &qword_1000A5E50, &type metadata for Int);
  if (v1 <= 0x3F)
  {
    sub_10003381C(319, &qword_1000A5E58, _s16AttributedStringV13ChecklistItemVMa);
    if (v2 <= 0x3F)
    {
      sub_10003381C(319, &unk_1000A5E60, &type metadata accessor for UUID);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003381C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000854E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000338B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100033984(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100033A34(uint64_t a1)
{
  sub_1000341B8(319, &qword_1000A5538, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_10003381C(319, &qword_1000A5518, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100033B10(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  v11 = sub_100005740(&qword_1000A5C18, &unk_10008B830);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_9;
  }

  v12 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[10];
    goto LABEL_9;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[12] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_100005740(&qword_1000A5C10, &unk_10008B820);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[13];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100033D70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v15 = *(v10 + 56);

    return v15(a1 + v11, a2, a2, v9);
  }

  v12 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_100005740(&qword_1000A5C18, &unk_10008B830);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  result = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[12] + 8) = a2;
  }

  else
  {
    v16 = sub_100005740(&qword_1000A5C10, &unk_10008B820);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + a4[13];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

void sub_100033FB0(uint64_t a1)
{
  sub_10003381C(319, &unk_1000A5E60, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_10003381C(319, &qword_1000A5518, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      sub_1000341B8(319, &qword_1000A5FB0, &_s16AttributedStringV4FontVN);
      if (v3 <= 0x3F)
      {
        sub_10003381C(319, &qword_1000A5FB8, _s16AttributedStringV14ParagraphStyleVMa);
        if (v4 <= 0x3F)
        {
          sub_1000341B8(319, &qword_1000A5FC0, &_s16AttributedStringV13EmphasisStyleON);
          if (v5 <= 0x3F)
          {
            sub_10003381C(319, &qword_1000A5FC8, &type metadata accessor for URL);
            if (v6 <= 0x3F)
            {
              sub_1000341B8(319, &qword_1000A5FD0, &_s16AttributedStringV17WritingDirectionsON);
              if (v7 <= 0x3F)
              {
                sub_1000341B8(319, &qword_1000A5538, &type metadata for String);
                if (v8 <= 0x3F)
                {
                  sub_10003381C(319, &unk_1000A5FD8, _s16AttributedStringV16InlineAttachmentVMa);
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

void sub_1000341B8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000854E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_100034234(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_10003425C()
{
  result = qword_1000A6028;
  if (!qword_1000A6028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6028);
  }

  return result;
}

unint64_t sub_1000342B4()
{
  result = qword_1000A6030;
  if (!qword_1000A6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6030);
  }

  return result;
}

unint64_t sub_10003430C()
{
  result = qword_1000A6038;
  if (!qword_1000A6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6038);
  }

  return result;
}

unint64_t sub_100034364()
{
  result = qword_1000A6040;
  if (!qword_1000A6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6040);
  }

  return result;
}

unint64_t sub_100034400()
{
  result = qword_1000A6058;
  if (!qword_1000A6058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6058);
  }

  return result;
}

unint64_t sub_100034454()
{
  result = qword_1000A6080;
  if (!qword_1000A6080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6080);
  }

  return result;
}

unint64_t sub_1000344D8()
{
  result = qword_1000A6088;
  if (!qword_1000A6088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6088);
  }

  return result;
}

unint64_t sub_100034564()
{
  result = qword_1000A6098;
  if (!qword_1000A6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6098);
  }

  return result;
}

unint64_t sub_1000345B8()
{
  result = qword_1000A60A8;
  if (!qword_1000A60A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A60A8);
  }

  return result;
}

unint64_t sub_10003460C()
{
  result = qword_1000A60B0;
  if (!qword_1000A60B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A60B0);
  }

  return result;
}

unint64_t sub_100034660()
{
  result = qword_1000A60B8;
  if (!qword_1000A60B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A60B8);
  }

  return result;
}

unint64_t sub_1000346B4()
{
  result = qword_1000A60D0;
  if (!qword_1000A60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A60D0);
  }

  return result;
}

unint64_t sub_100034708()
{
  result = qword_1000A60D8;
  if (!qword_1000A60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A60D8);
  }

  return result;
}

unint64_t sub_10003475C()
{
  result = qword_1000A60E8;
  if (!qword_1000A60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A60E8);
  }

  return result;
}

unint64_t sub_1000347B0()
{
  result = qword_1000A60F0;
  if (!qword_1000A60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A60F0);
  }

  return result;
}

unint64_t sub_100034804()
{
  result = qword_1000A6100;
  if (!qword_1000A6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6100);
  }

  return result;
}

unint64_t sub_100034858()
{
  result = qword_1000A6118;
  if (!qword_1000A6118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6118);
  }

  return result;
}

unint64_t sub_1000348AC()
{
  result = qword_1000A6120;
  if (!qword_1000A6120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6120);
  }

  return result;
}

unint64_t sub_100034900()
{
  result = qword_1000A6128;
  if (!qword_1000A6128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6128);
  }

  return result;
}

unint64_t sub_100034954()
{
  result = qword_1000A6138;
  if (!qword_1000A6138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6138);
  }

  return result;
}

unint64_t sub_1000349A8()
{
  result = qword_1000A6148;
  if (!qword_1000A6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6148);
  }

  return result;
}

unint64_t sub_1000349FC()
{
  result = qword_1000A6160;
  if (!qword_1000A6160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6160);
  }

  return result;
}

unint64_t sub_100034A50()
{
  result = qword_1000A6168;
  if (!qword_1000A6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6168);
  }

  return result;
}

unint64_t sub_100034AA4()
{
  result = qword_1000A6178;
  if (!qword_1000A6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6178);
  }

  return result;
}

unint64_t sub_100034AF8()
{
  result = qword_1000A6188;
  if (!qword_1000A6188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6188);
  }

  return result;
}

unint64_t sub_100034B4C()
{
  result = qword_1000A6198;
  if (!qword_1000A6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6198);
  }

  return result;
}

unint64_t sub_100034BA0()
{
  result = qword_1000A61A0;
  if (!qword_1000A61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A61A0);
  }

  return result;
}

unint64_t sub_100034BF4()
{
  result = qword_1000A61B0;
  if (!qword_1000A61B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A61B0);
  }

  return result;
}

unint64_t sub_100034C48()
{
  result = qword_1000A61C8;
  if (!qword_1000A61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A61C8);
  }

  return result;
}

uint64_t sub_100034C9C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A61D0, &qword_10008C0E8);
    sub_100031408(a2, _s16AttributedStringV9AttributeVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100034D6C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100034DFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICArchiveModels(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ICArchiveModels(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s16AttributedStringV14ParagraphStyleV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16AttributedStringV14ParagraphStyleV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100035180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000351CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100035220()
{
  result = qword_1000A6200;
  if (!qword_1000A6200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6200);
  }

  return result;
}

unint64_t sub_100035278()
{
  result = qword_1000A6208;
  if (!qword_1000A6208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6208);
  }

  return result;
}

unint64_t sub_1000352D0()
{
  result = qword_1000A6210;
  if (!qword_1000A6210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6210);
  }

  return result;
}

unint64_t sub_100035328()
{
  result = qword_1000A6218;
  if (!qword_1000A6218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6218);
  }

  return result;
}

unint64_t sub_100035380()
{
  result = qword_1000A6220;
  if (!qword_1000A6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6220);
  }

  return result;
}

unint64_t sub_1000353D8()
{
  result = qword_1000A6228;
  if (!qword_1000A6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6228);
  }

  return result;
}

unint64_t sub_100035430()
{
  result = qword_1000A6230;
  if (!qword_1000A6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6230);
  }

  return result;
}

unint64_t sub_100035488()
{
  result = qword_1000A6238;
  if (!qword_1000A6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6238);
  }

  return result;
}

unint64_t sub_1000354E0()
{
  result = qword_1000A6240;
  if (!qword_1000A6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6240);
  }

  return result;
}

unint64_t sub_100035538()
{
  result = qword_1000A6248;
  if (!qword_1000A6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6248);
  }

  return result;
}

unint64_t sub_100035590()
{
  result = qword_1000A6250;
  if (!qword_1000A6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6250);
  }

  return result;
}

unint64_t sub_1000355E8()
{
  result = qword_1000A6258;
  if (!qword_1000A6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6258);
  }

  return result;
}

unint64_t sub_100035640()
{
  result = qword_1000A6260;
  if (!qword_1000A6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6260);
  }

  return result;
}

unint64_t sub_100035698()
{
  result = qword_1000A6268;
  if (!qword_1000A6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6268);
  }

  return result;
}

unint64_t sub_1000356F0()
{
  result = qword_1000A6270;
  if (!qword_1000A6270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6270);
  }

  return result;
}

unint64_t sub_100035748()
{
  result = qword_1000A6278;
  if (!qword_1000A6278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6278);
  }

  return result;
}

unint64_t sub_1000357A0()
{
  result = qword_1000A6280;
  if (!qword_1000A6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6280);
  }

  return result;
}

unint64_t sub_1000357F8()
{
  result = qword_1000A6288;
  if (!qword_1000A6288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6288);
  }

  return result;
}

unint64_t sub_100035850()
{
  result = qword_1000A6290;
  if (!qword_1000A6290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6290);
  }

  return result;
}

unint64_t sub_1000358A8()
{
  result = qword_1000A6298;
  if (!qword_1000A6298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6298);
  }

  return result;
}

unint64_t sub_100035900()
{
  result = qword_1000A62A0;
  if (!qword_1000A62A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A62A0);
  }

  return result;
}

unint64_t sub_100035954()
{
  result = qword_1000A62B0;
  if (!qword_1000A62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A62B0);
  }

  return result;
}

uint64_t sub_1000359A8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(&qword_1000A62B8, &qword_10008C8A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICAccountArchiveModel.Types(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ICAccountArchiveModel.Types(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100035B68()
{
  result = qword_1000A62D8;
  if (!qword_1000A62D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A62D8);
  }

  return result;
}

unint64_t sub_100035BC0()
{
  result = qword_1000A62E0;
  if (!qword_1000A62E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A62E0);
  }

  return result;
}

unint64_t sub_100035C18()
{
  result = qword_1000A62E8;
  if (!qword_1000A62E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A62E8);
  }

  return result;
}

uint64_t ICArchivePreviewer.__allocating_init(forArchiveAt:)(void (**a1)(char *, uint64_t))
{
  v2 = swift_allocObject();
  ICArchivePreviewer.init(forArchiveAt:)(a1);
  return v2;
}

id ICArchivePreviewer.startPreviewing(_:completion:)(void *a1, void (*a2)(void *, uint64_t), void *a3)
{
  v4 = v3;
  v73 = a2;
  v74 = a3;
  v6 = sub_1000847C8();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v70 - v15;
  __chkstk_darwin(v14);
  v18 = &v70 - v17;
  swift_beginAccess();
  v19 = *(v3 + 24);
  if (*(v19 + 16) && (v20 = sub_100039054(a1), (v21 & 1) != 0))
  {
    v70 = a1;
    v22 = *(v19 + 56) + 24 * v20;
    v24 = *v22;
    v23 = *(v22 + 8);
    v25 = *(v22 + 16);
    swift_endAccess();
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        swift_errorRetain();
        v73(v24, 1);
        v44 = [objc_allocWithZone(NSProgress) init];
        sub_10003B050(v24, v23, 2);
        return v44;
      }

      else
      {
        v49 = [objc_opt_self() progressWithTotalUnitCount:1];
        sub_100005740(&qword_1000A5A70, &qword_10008B590);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_10008B5D0;
        v51 = swift_allocObject();
        v52 = v74;
        *(v51 + 16) = v73;
        *(v51 + 24) = v52;
        *(v50 + 32) = sub_100039134;
        *(v50 + 40) = v51;
        swift_beginAccess();

        v74 = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = *(v4 + 24);
        *(v4 + 24) = 0x8000000000000000;
        v54 = v70;
        sub_10003AE34(v49, v50, 0, v70, isUniquelyReferenced_nonNull_native);
        *(v4 + 24) = v76;
        swift_endAccess();
        v55 = v10;
        v56 = *(v10 + 16);
        v56(v18, v54, v9);
        v57 = *(v55 + 80);
        v58 = swift_allocObject();
        *(v58 + 16) = v4;
        v71 = *(v55 + 32);
        v72 = v58;
        v59 = v18;
        v60 = v9;
        (v71)(v58 + ((v57 + 24) & ~v57), v59, v9);
        v73 = *(v4 + 16);
        v56(v16, v70, v9);
        v61 = (v57 + 16) & ~v57;
        v62 = (v11 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
        v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
        v64 = swift_allocObject();
        (v71)(v64 + v61, v16, v60);
        v65 = v74;
        *(v64 + v62) = v74;
        *(v64 + v63) = v4;
        v66 = (v64 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8));
        v67 = v72;
        *v66 = sub_10003B030;
        v66[1] = v67;
        aBlock[4] = sub_10003B034;
        aBlock[5] = v64;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000389E4;
        aBlock[3] = &unk_10009FD58;
        v68 = _Block_copy(aBlock);
        swift_retain_n();
        v69 = v65;

        [v73 performBackgroundTask:v68];
        _Block_release(v68);

        return v69;
      }
    }

    else if (v25)
    {
      v45 = objc_opt_self();
      v46 = v24;
      v47 = [v45 progressWithTotalUnitCount:1];
      [v47 setCompletedUnitCount:{objc_msgSend(v47, "totalUnitCount")}];
      v48 = v46;
      v73(v24, 0);
      sub_10003B050(v24, v23, 1);
      sub_10003B050(v24, v23, 1);
      return v47;
    }

    else
    {
      sub_100005740(&qword_1000A5A70, &qword_10008B590);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10008B5D0;
      v27 = swift_allocObject();
      v28 = v74;
      *(v27 + 16) = v73;
      *(v27 + 24) = v28;
      *(inited + 32) = sub_10003F0AC;
      *(inited + 40) = v27;
      aBlock[0] = v23;
      sub_1000112CC(v24, v23, 0);
      v29 = v24;

      sub_10003935C(inited);
      v30 = aBlock[0];
      swift_beginAccess();
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v76 = *(v4 + 24);
      *(v4 + 24) = 0x8000000000000000;
      sub_10003AE34(v24, v30, 0, v70, v31);
      *(v4 + 24) = v76;
      swift_endAccess();
      return v29;
    }
  }

  else
  {
    swift_endAccess();
    if (qword_1000A5408 != -1)
    {
      swift_once();
    }

    v33 = sub_100084FB8();
    sub_10000B614(v33, qword_1000A62F0);
    v34 = v10;
    (*(v10 + 16))(v13, a1, v9);
    v35 = sub_100084FA8();
    v36 = sub_100085388();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      aBlock[0] = v70;
      *v37 = 136315138;
      sub_100084A78();
      sub_10003EB7C(&qword_1000A5AD8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v38 = v72;
      v39 = sub_100085908();
      v41 = v40;
      (*(v71 + 8))(v8, v38);
      (*(v34 + 8))(v13, v9);
      v42 = sub_100038A4C(v39, v41, aBlock);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "Object to be previewed does not exist {url: %s}", v37, 0xCu);
      sub_100006304(v70);
    }

    else
    {

      (*(v34 + 8))(v13, v9);
    }

    sub_1000081FC();
    swift_allocError();
    *v43 = 4;
    (v73)();

    return [objc_allocWithZone(NSProgress) init];
  }
}

void ICArchivePreviewer.stopPreviewing(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000847C8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  swift_beginAccess();
  v12 = v1[3];
  if (!*(v12 + 16) || (v13 = sub_100039054(a1), (v14 & 1) == 0))
  {
    v37 = v5;
    swift_endAccess();
    if (qword_1000A5408 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  v15 = *(v12 + 56) + 24 * v13;
  v16 = *v15;
  v4 = *(v15 + 8);
  v17 = *(v15 + 16);
  swift_endAccess();
  if (v17 > 1)
  {
    if (v17 != 2)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v2[3];
      v2[3] = 0x8000000000000000;
      v31 = v16;
      v32 = v4;
      goto LABEL_15;
    }

LABEL_14:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v2[3];
    v2[3] = 0x8000000000000000;
    v31 = 0;
    v32 = 0;
LABEL_15:
    sub_10003AE34(v31, v32, 3, a1, isUniquelyReferenced_nonNull_native);
    v2[3] = v38;
    swift_endAccess();
    return;
  }

  if (!v17)
  {
    v8 = v16;

    [v8 cancel];
    swift_beginAccess();
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v2[3];
    v2[3] = 0x8000000000000000;
    sub_10003AE34(0, 0, 3, a1, v18);
    v2[3] = v38;
    swift_endAccess();
    v2 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v9 = *(v4 + 16);
    if (!v9)
    {
LABEL_9:

      return;
    }

    v7 = 0;
    v11 = (v4 + 40);
    while (v7 < *(v4 + 16))
    {
      ++v7;
      v19 = *(v11 - 1);
      v39 = v2;
      v40 = 1;

      v19(&v39);

      v11 += 16;
      if (v9 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
LABEL_11:
    v20 = sub_100084FB8();
    sub_10000B614(v20, qword_1000A62F0);
    (*(v9 + 16))(v11, a1, v8);
    v21 = sub_100084FA8();
    v22 = sub_100085388();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36 = a1;
      v24 = v23;
      v35 = swift_slowAlloc();
      v39 = v35;
      *v24 = 136315138;
      sub_100084A78();
      sub_10003EB7C(&qword_1000A5AD8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v25 = sub_100085908();
      v26 = v4;
      v28 = v27;
      (*(v37 + 8))(v7, v26);
      (*(v9 + 8))(v11, v8);
      v29 = sub_100038A4C(v25, v28, &v39);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "Object to be previewed does not exist {url: %s}", v24, 0xCu);
      sub_100006304(v35);

      a1 = v36;
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    goto LABEL_14;
  }

  [v16 setMarkedForDeletion:1];
  swift_beginAccess();
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v2[3];
  v2[3] = 0x8000000000000000;
  sub_10003AE34(0, 0, 3, a1, v33);
  v2[3] = v38;
  swift_endAccess();
  sub_10003B050(v16, v4, 1);
}

uint64_t sub_100036C04()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A62F0);
  sub_10000B614(v0, qword_1000A62F0);
  return sub_100084F98();
}

uint64_t ICArchivePreviewer.init(forArchiveAt:)(void (**a1)(char *, uint64_t))
{
  v3 = v1;
  v73 = sub_100005740(&qword_1000A6308, &unk_10008CA10);
  v78 = *(v73 - 8);
  __chkstk_darwin(v73);
  v6 = v65 - v5;
  v82 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v79 = *(v82 - 8);
  __chkstk_darwin(v82);
  v77 = v65 - v7;
  *(v1 + 24) = sub_10003D2D8(_swiftEmptyArrayStorage);
  v8 = (v1 + 24);
  v9 = [objc_opt_self() sharedContext];
  if (!v9 || (v10 = v9, v11 = [v9 persistentContainer], v10, !v11))
  {
    if (qword_1000A5408 != -1)
    {
      goto LABEL_45;
    }

    goto LABEL_6;
  }

  v70 = v6;
  v71 = v8;
  *(v3 + 16) = v11;
  v72 = v11;
  v12 = [v72 viewContext];
  v13 = type metadata accessor for ICArchiveImporter();
  v76 = objc_allocWithZone(v13);
  ObjectType = swift_getObjectType();
  v14 = [objc_opt_self() defaultManager];
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v74 = v2;
  v16 = IsAlexandriaDemoModeEnabled;
  v17 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v18 = objc_allocWithZone(v13);
  v18[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_isImporting] = 0;
  v19 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  *&v18[v19] = sub_10003D4E0(_swiftEmptyArrayStorage);
  *&v18[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_saveBatchSize] = 32;
  v18[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v20 = &v18[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v20 = 0u;
  v20[1] = 0u;
  *&v18[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context] = v12;
  v21 = &v18[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
  *v21 = v16;
  v21[1] = v17;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 1) = 0;
  *(v21 + 16) = 2;
  v22 = &v18[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager];
  *v22 = v14;
  v22[1] = &protocol witness table for NSFileManager;
  v81.receiver = v18;
  v81.super_class = v13;
  v23 = v12;
  v24 = objc_msgSendSuper2(&v81, "init");
  sub_100044760();

  swift_deallocPartialClassInstance();
  v25 = v74;
  v26 = ICArchiveImporter.objects(forArchiveAt:)(a1);
  if (v25)
  {
    v27 = sub_1000847C8();
    (*(*(v27 - 8) + 8))(a1, v27);

    return v3;
  }

  v66 = v24;
  v67 = 0;
  v34 = v26[2];
  v68 = a1;
  v69 = v3;
  if (v34)
  {
    v35 = *(v79 + 16);
    v36 = *(v79 + 80);
    v65[1] = v26;
    v74 = (v36 + 32) & ~v36;
    ObjectType = v35;
    v37 = v26 + v74;
    v3 = *(v79 + 72);
    v76 = (v79 + 16);
    a1 = (v79 + 8);
    v38 = _swiftEmptyArrayStorage;
    while (1)
    {
      v39 = v77;
      v40 = v82;
      ObjectType(v77, v37, v82);
      v41 = sub_100084A88();
      (*a1)(v39, v40);
      v42 = *(v41 + 16);
      v43 = v38[2];
      v44 = v43 + v42;
      if (__OFADD__(v43, v42))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        swift_once();
LABEL_6:
        v28 = sub_100084FB8();
        sub_10000B614(v28, qword_1000A62F0);
        v29 = sub_100084FA8();
        v30 = sub_100085388();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "No shared note context has been set up", v31, 2u);
        }

        [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:134060 userInfo:0];
        swift_willThrow();
        v32 = sub_1000847C8();
        (*(*(v32 - 8) + 8))(a1, v32);

        swift_deallocPartialClassInstance();
        return v3;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v44 <= v38[3] >> 1)
      {
        if (*(v41 + 16))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v43 <= v44)
        {
          v46 = v43 + v42;
        }

        else
        {
          v46 = v43;
        }

        v38 = sub_10000ED28(isUniquelyReferenced_nonNull_native, v46, 1, v38);
        if (*(v41 + 16))
        {
LABEL_23:
          if ((v38[3] >> 1) - v38[2] < v42)
          {
            goto LABEL_43;
          }

          swift_arrayInitWithCopy();

          if (v42)
          {
            v47 = v38[2];
            v48 = __OFADD__(v47, v42);
            v49 = v47 + v42;
            if (v48)
            {
              goto LABEL_44;
            }

            v38[2] = v49;
          }

          goto LABEL_13;
        }
      }

      if (v42)
      {
        goto LABEL_42;
      }

LABEL_13:
      v37 += v3;
      if (!--v34)
      {

        a1 = v68;
        v3 = v69;
        goto LABEL_29;
      }
    }
  }

  v38 = _swiftEmptyArrayStorage;
LABEL_29:
  v50 = v38[2];
  v51 = v70;
  if (v50)
  {
    v80 = _swiftEmptyArrayStorage;
    sub_10003BC80(0, v50, 0);
    v52 = v80;
    v77 = *(v79 + 16);
    v53 = v38 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
    v79 += 16;
    v54 = *(v79 + 56);
    v55 = v73;
    do
    {
      (v77)(v51, v53, v82);
      v56 = v51 + *(v55 + 48);
      *v56 = 0;
      *(v56 + 8) = 0;
      *(v56 + 16) = 3;
      v80 = v52;
      v58 = v52[2];
      v57 = v52[3];
      if (v58 >= v57 >> 1)
      {
        sub_10003BC80((v57 > 1), v58 + 1, 1);
        v55 = v73;
        v52 = v80;
      }

      v52[2] = v58 + 1;
      sub_10003D6C8(v51, v52 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v58);
      v53 += v54;
      --v50;
    }

    while (v50);

    a1 = v68;
    v3 = v69;
  }

  else
  {

    v52 = _swiftEmptyArrayStorage;
  }

  v59 = v67;
  if (v52[2])
  {
    sub_100005740(&qword_1000A5CB0, &unk_10008B8B8);
    v60 = sub_100085748();
  }

  else
  {
    v60 = &_swiftEmptyDictionarySingleton;
  }

  v61 = v72;
  v80 = v60;
  sub_10003CAE4(v52, 1, &v80);
  if (!v59)
  {
    v62 = sub_1000847C8();
    (*(*(v62 - 8) + 8))(a1, v62);

    v63 = v80;
    v64 = v71;
    swift_beginAccess();
    *v64 = v63;

    return v3;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t ICArchivePreviewer.deinit()
{
  v1 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  swift_beginAccess();
  v5 = *(v0 + 24);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  v14 = v2 + 16;
  swift_bridgeObjectRetain_n();

  for (i = 0; v8; result = (*(v2 + 8))(v4, v1))
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v2 + 16))(v4, *(v5 + 48) + *(v2 + 72) * (v13 | (v12 << 6)), v1);
    ICArchivePreviewer.stopPreviewing(_:)(v4);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      *(v0 + 24) = &_swiftEmptyDictionarySingleton;

      return v0;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ICArchivePreviewer.__deallocating_deinit()
{
  ICArchivePreviewer.deinit();

  return swift_deallocClassInstance();
}

uint64_t ICArchivePreviewer.Errors.errorDescription.getter(uint64_t a1)
{
  if (a1)
  {
    result = sub_100085958();
    __break(1u);
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = sub_100085068();
    v3 = [v1 localizedStringForKey:v2 value:0 table:0];

    v4 = sub_100085098();
    return v4;
  }

  return result;
}

Swift::Int sub_100037834(uint64_t a1, uint64_t a2)
{
  sub_100085A08();
  sub_100085028();
  return sub_100085A38();
}

uint64_t sub_100037898(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003E5E8();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000378E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100085A08();
  sub_100085028();
  return sub_100085A38();
}

void *sub_100037944@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_10003797C(uint64_t a1)
{
  v2 = sub_10003E5E8();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_1000379B8(uint64_t a1)
{
  v2 = sub_10003E5E8();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1000379FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003E5E8();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

void sub_100037A88(void *a1, char a2, uint64_t a3, void *a4)
{
  v8 = sub_1000847C8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = (&v47 - v15);
  swift_beginAccess();
  v17 = *(a3 + 24);
  v18 = *(v17 + 16);
  v50 = v9;
  v51 = v8;
  v56 = a4;
  if (v18 && (v19 = sub_100039054(a4), (v20 & 1) != 0))
  {
    v21 = *(v17 + 56) + 24 * v19;
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    v54 = *v21;
    v55 = v23;
    sub_1000112CC(v54, v22, v23);
  }

  else
  {
    v54 = 0;
    v22 = 0;
    v55 = 255;
  }

  swift_endAccess();
  v52 = *(v12 + 16);
  v52(v16, v56, v11);
  swift_beginAccess();
  v24 = v12;
  v25 = v11;
  if (a2)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  sub_10003ECD4(a1, a2 & 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(a3 + 24);
  *(a3 + 24) = 0x8000000000000000;
  v28 = v26;
  v29 = v25;
  sub_10003AE34(a1, 0, v28, v16, isUniquelyReferenced_nonNull_native);
  v30 = *(v24 + 8);
  v30(v16, v25);
  *(a3 + 24) = v57;
  swift_endAccess();
  LOBYTE(v16) = v55;
  if (v55)
  {
    v48 = v30;
    if (qword_1000A5408 == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v43 = v54;
    sub_1000112CC(v54, v22, 0);

    v44 = *(v22 + 16);
    if (!v44)
    {
LABEL_16:
      sub_10003ECE0(v43, v22, 0);

      return;
    }

    v45 = 0;
    v46 = v22 + 40;
    while (v45 < *(v22 + 16))
    {
      ++v45;
      v16 = *(v46 - 8);
      v58 = a1;
      v59 = a2 & 1;

      v16(&v58);

      v46 += 16;
      if (v44 == v45)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_10:
  v31 = sub_100084FB8();
  sub_10000B614(v31, qword_1000A62F0);
  v32 = v53;
  v52(v53, v56, v29);
  v33 = sub_100084FA8();
  v34 = sub_100085388();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v58 = v56;
    *v35 = 136315138;
    v36 = v49;
    LODWORD(v52) = v34;
    sub_100084A78();
    sub_10003EB7C(&qword_1000A5AD8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v37 = v51;
    v38 = sub_100085908();
    v39 = v29;
    v41 = v40;
    (*(v50 + 8))(v36, v37);
    v48(v32, v39);
    v42 = sub_100038A4C(v38, v41, &v58);

    *(v35 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v33, v52, "Preview object is in unexpected state {url: %s}", v35, 0xCu);
    sub_100006304(v56);

    sub_10003ECE0(v54, v22, v55);
  }

  else
  {
    sub_10003ECE0(v54, v22, v16);

    v48(v32, v29);
  }
}

uint64_t sub_100037FD4(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v64 = a5;
  v65 = a6;
  v61 = a4;
  v62 = a2;
  v8 = sub_100084FC8();
  v69 = *(v8 - 8);
  v70 = v8;
  __chkstk_darwin(v8);
  v68 = &v56[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100084FE8();
  v66 = *(v10 - 8);
  v67 = v10;
  __chkstk_darwin(v10);
  v63 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for ICArchiveImporter();
  v13 = objc_allocWithZone(v12);
  swift_getObjectType();
  v14 = [objc_opt_self() defaultManager];
  IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v16 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v17 = objc_allocWithZone(v12);
  v17[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_isImporting] = 0;
  v18 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  v19 = a1;
  *&v17[v18] = sub_10003D4E0(_swiftEmptyArrayStorage);
  v20 = a3;
  *&v17[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_saveBatchSize] = 32;
  v17[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v21 = &v17[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v21 = 0u;
  v21[1] = 0u;
  *&v17[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context] = v19;
  v22 = &v17[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
  *v22 = IsAlexandriaDemoModeEnabled;
  v22[1] = v16;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 1) = 0;
  *(v22 + 16) = 2;
  v23 = &v17[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager];
  *v23 = v14;
  v23[1] = &protocol witness table for NSFileManager;
  v77.receiver = v17;
  v77.super_class = v12;
  v24 = v19;
  v25 = objc_msgSendSuper2(&v77, "init");
  sub_100044760();

  swift_deallocPartialClassInstance();
  v26 = [objc_opt_self() inMemoryAccountInContext:v24];
  v27 = [v26 defaultFolder];
  v28 = sub_100042D18(v62, v27, &off_10009E9B0, a3);
  v30 = v29;
  v31 = v28;
  v60 = v32;
  v62 = v33;
  v34 = v61;

  aBlock = 0;
  v35 = [v24 save:&aBlock];
  v36 = aBlock;
  if (v35)
  {
    sub_100008250(0, &qword_1000A6498, OS_dispatch_queue_ptr);
    v37 = v36;
    v59 = sub_1000853B8();
    v38 = swift_allocObject();
    v58 = v31;
    v39 = v60;
    *(v38 + 16) = v31;
    *(v38 + 24) = v39;
    v40 = v62;
    *(v38 + 32) = v62;
    v41 = v30 & 1;
    *(v38 + 40) = v41;
    v57 = v41;
    *(v38 + 48) = v34;
    *(v38 + 56) = v20;
    v42 = v65;
    *(v38 + 64) = v64;
    *(v38 + 72) = v42;
    v75 = sub_10003EC6C;
    v76 = v38;
    aBlock = _NSConcreteStackBlock;
    v72 = 1107296256;
    v73 = sub_1000389A0;
    v74 = &unk_10009FED0;
    v64 = _Block_copy(&aBlock);
    sub_10003EC84(v31, v39, v40, v41);

    v43 = v20;

    v44 = v63;
    sub_100084FD8();
    aBlock = _swiftEmptyArrayStorage;
    sub_10003EB7C(&qword_1000A64A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005740(&qword_1000A64A8, &unk_10008CD70);
    sub_10003ECF4(&qword_1000A64B0, &qword_1000A64A8, &unk_10008CD70, &protocol conformance descriptor for [A]);
    v45 = v68;
    v46 = v70;
    sub_100085538();
    v47 = v64;
    v48 = v59;
    sub_1000853C8();
    _Block_release(v47);

    sub_10003EBC4(v58, v60, v62, v57);
  }

  else
  {
    v49 = aBlock;
    v50 = sub_100084688();

    swift_willThrow();
    sub_10003EBC4(v31, v60, v62, v30 & 1);
    v46 = v70;
    v44 = v63;

    sub_100008250(0, &qword_1000A6498, OS_dispatch_queue_ptr);
    v51 = sub_1000853B8();
    v52 = swift_allocObject();
    v53 = v65;
    v52[2] = v64;
    v52[3] = v53;
    v52[4] = v50;
    v75 = sub_10003EB48;
    v76 = v52;
    aBlock = _NSConcreteStackBlock;
    v72 = 1107296256;
    v73 = sub_1000389A0;
    v74 = &unk_10009FE80;
    v54 = _Block_copy(&aBlock);

    swift_errorRetain();

    sub_100084FD8();
    aBlock = _swiftEmptyArrayStorage;
    sub_10003EB7C(&qword_1000A64A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005740(&qword_1000A64A8, &unk_10008CD70);
    sub_10003ECF4(&qword_1000A64B0, &qword_1000A64A8, &unk_10008CD70, &protocol conformance descriptor for [A]);
    v45 = v68;
    sub_100085538();
    sub_1000853C8();

    _Block_release(v54);
  }

  (*(v69 + 8))(v45, v46);
  return (*(v66 + 8))(v44, v67);
}

void sub_10003878C(void *a1, uint64_t a2, void *a3, char a4, uint64_t a5, void *a6, void (*a7)(void *, uint64_t))
{
  v9 = a1;
  if (a4)
  {
    swift_errorRetain();
    v10 = 1;
  }

  else
  {
    v14[0] = a1;
    v14[1] = a2;
    v14[2] = a3;

    v13 = a3;
    sub_100038878(v14, a5, &v15);

    v9 = v15;
    v10 = v16;
  }

  [a6 setCompletedUnitCount:{objc_msgSend(a6, "totalUnitCount")}];
  a7(v9, v10);

  sub_1000117F8(v9, v10);
}

void sub_100038878(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = [*(a2 + 16) viewContext];
  v6 = [v4 objectID];
  v7 = [v5 objectWithID:v6];

  v14[3] = sub_100008250(0, &qword_1000A64B8, NSManagedObject_ptr);
  v14[0] = v7;
  v8 = v7;
  v9 = sub_10000DD3C(v14);
  sub_100006304(v14);
  v10 = [v9 isPasswordProtected];
  v11 = v10;
  if (v10)
  {
    sub_10003D794();
    v12 = swift_allocError();
    *v13 = 0;

    v9 = v12;
  }

  *a3 = v9;
  *(a3 + 8) = v11;
}

uint64_t sub_1000389A0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1000389E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_100038A4C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100038B18(v11, 0, 0, 1, a1, a2);
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
    sub_1000056E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006304(v11);
  return v7;
}

unint64_t sub_100038B18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100038C24(a5, a6);
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
    result = sub_100085658();
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

void *sub_100038C24(uint64_t a1, unint64_t a2)
{
  v3 = sub_100038C70(a1, a2);
  sub_100038DA0(&off_10009DC70);
  return v3;
}

void *sub_100038C70(uint64_t a1, unint64_t a2)
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

  v6 = sub_10004CF5C(v5, 0);
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

  result = sub_100085658();
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
        v10 = sub_100085168();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10004CF5C(v10, 0);
        result = sub_100085628();
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

uint64_t sub_100038DA0(uint64_t result)
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

  result = sub_100038E8C(result, v11, 1, v3);
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

char *sub_100038E8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005740(&qword_1000A64C0, &qword_10008D370);
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

unint64_t sub_100038F80(uint64_t a1)
{
  sub_1000847C8();
  sub_10003EB7C(&qword_1000A5C70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v2 = sub_100085018();
  return sub_10003B9DC(a1, v2, &type metadata accessor for URL, &qword_1000A6460, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_100039054(uint64_t a1)
{
  sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  sub_10003ECF4(&qword_1000A6480, &qword_1000A58E8, &qword_10008B8B0, &protocol conformance descriptor for ICObjectReferences<A>);
  v2 = sub_100085018();

  return sub_10003B6F4(a1, v2);
}

uint64_t sub_1000390FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100039138(uint64_t a1, uint64_t a2)
{
  sub_100085A08();
  sub_100085118();
  v4 = sub_100085A38();

  return sub_10003B8B8(a1, a2, v4);
}

unint64_t sub_1000391B0(uint64_t a1)
{
  v2 = sub_1000859F8();

  return sub_10003B970(a1, v2);
}

unint64_t sub_1000391F4(uint64_t a1)
{
  sub_100084918();
  sub_10003EB7C(&qword_1000A6418, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = sub_100085018();
  return sub_10003B9DC(a1, v2, &type metadata accessor for UUID, &qword_1000A6420, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_1000392C8(uint64_t a1)
{
  sub_100085098();
  sub_100085A08();
  sub_100085118();
  v2 = sub_100085A38();

  return sub_10003BB7C(a1, v2);
}

void *sub_10003935C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10000ED4C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100005740(&qword_1000A5A78, &qword_10008B598);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100039460(uint64_t a1)
{
  v66 = _s3TagVMa(0);
  v4 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005740(&qword_1000A63E8, &qword_10008CCA8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v63 = &v53 - v11;
  result = __chkstk_darwin(v10);
  v14 = &v53 - v13;
  v15 = *(a1 + 16);
  v16 = *v2;
  v17 = *(*v2 + 16);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = v16[3] >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_10000EE80(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = v16[3] >> 1;
  }

  v22 = v16[2];
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_100010FFC(&v67, v16 + v18 + v17 * v22, v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v25 = v16[2];
    v26 = __OFADD__(v25, result);
    v27 = v25 + result;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v16[2] = v27;
  }

  if (result != v23)
  {
    result = sub_100010FF4(v67);
LABEL_14:
    *v2 = v16;
    return result;
  }

LABEL_17:
  v62 = v16[2];
  v24 = v68;
  v55 = v68;
  v56 = v67;
  v27 = v70;
  v53 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v33 = (v28 - 1) & v28;
    sub_10001172C(*(v56 + 48) + (__clz(__rbit64(v28)) | (v29 << 6)) * v17, v14);
    v58 = *(v1 + 56);
    v58(v14, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_100005888(v14, v63, &qword_1000A63E8, &qword_10008CCA8);
      v35 = *(v1 + 48);
      v1 += 48;
      v61 = v35;
      if (v35(v34, 1, v66) == 1)
      {
        break;
      }

      v54 = (v53 + 64) >> 6;
      v57 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_10003DA60(v34);
        v40 = v16[3];
        v41 = v40 >> 1;
        v62 = v36;
        if ((v40 >> 1) < v36 + 1)
        {
          v16 = sub_10000EE80((v40 > 1), v36 + 1, 1, v16);
          v41 = v16[3] >> 1;
        }

        v42 = v65;
        sub_100005888(v14, v65, &qword_1000A63E8, &qword_10008CCA8);
        if (v61(v42, 1, v66) != 1)
        {
          break;
        }

        v43 = v32;
        v44 = v65;
LABEL_37:
        sub_10003DA60(v44);
        v37 = v62;
        v32 = v43;
LABEL_32:
        v38 = v66;
        v16[2] = v37;
        v34 = v63;
        sub_100005888(v14, v63, &qword_1000A63E8, &qword_10008CCA8);
        v39 = v61(v34, 1, v38);
        v36 = v62;
        if (v39 == 1)
        {
          goto LABEL_29;
        }
      }

      v59 = v16 + v18;
      v45 = v62;
      if (v62 <= v41)
      {
        v45 = v41;
      }

      v60 = v45;
      v44 = v65;
      while (1)
      {
        v49 = v64;
        sub_10003DAC8(v44, v64);
        if (v62 == v60)
        {
          sub_10003DB2C(v49);
          v37 = v60;
          v62 = v60;
          goto LABEL_32;
        }

        v4 = v62;
        sub_10003DA60(v14);
        sub_10003DAC8(v49, &v59[v4 * v17]);
        if (!v33)
        {
          break;
        }

        v50 = v32;
LABEL_52:
        v52 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        sub_10001172C(*(v56 + 48) + (v52 | (v50 << 6)) * v17, v14);
        v46 = 0;
        v32 = v50;
LABEL_42:
        v62 = v4 + 1;
        v47 = v66;
        v58(v14, v46, 1, v66);
        v44 = v65;
        sub_100005888(v14, v65, &qword_1000A63E8, &qword_10008CCA8);
        v48 = v61(v44, 1, v47);
        v43 = v32;
        if (v48 == 1)
        {
          goto LABEL_37;
        }
      }

      if (v54 <= (v32 + 1))
      {
        v51 = v32 + 1;
      }

      else
      {
        v51 = v54;
      }

      while (1)
      {
        v50 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v50 >= v54)
        {
          v33 = 0;
          v46 = 1;
          v32 = v51 - 1;
          goto LABEL_42;
        }

        v33 = *(v55 + 8 * v50);
        ++v32;
        if (v33)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_54:
      v58 = *(v1 + 56);
      v58(v14, 1, 1, v66);
      v33 = 0;
    }

LABEL_29:
    sub_10003DA60(v14);
    sub_100010FF4(v56);
    result = sub_10003DA60(v34);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v53 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v53 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_54;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100039A50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v46 = &v40 - v7;
  v8 = *v2;
  sub_100005740(&qword_1000A5CB0, &unk_10008B8B8);
  v45 = v4;
  result = sub_100085738();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v41 = v2;
    v42 = (v6 + 16);
    v43 = v8;
    v44 = v6;
    v47 = (v6 + 32);
    v17 = result + 64;
    v51 = v5;
    v18 = v46;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v44 + 72) * v25;
      v27 = 24 * v25;
      v49 = *(v44 + 72);
      v50 = v22;
      if (v45)
      {
        (*v47)(v18, v26, v51);
        v28 = *(v8 + 56) + v27;
        v29 = *(v28 + 8);
        v48 = *v28;
        v30 = *(v28 + 16);
      }

      else
      {
        (*v42)(v18, v26, v51);
        v31 = *(v8 + 56) + v27;
        v29 = *(v31 + 8);
        v30 = *(v31 + 16);
        v48 = *v31;
        sub_1000112CC(v48, v29, v30);
      }

      sub_10003ECF4(&qword_1000A6480, &qword_1000A58E8, &qword_10008B8B0, &protocol conformance descriptor for ICObjectReferences<A>);
      result = sub_100085018();
      v32 = -1 << *(v10 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v18 = v46;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v17 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v18 = v46;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v47)(*(v10 + 48) + v49 * v19, v18, v51);
      v20 = *(v10 + 56) + 24 * v19;
      *v20 = v48;
      *(v20 + 8) = v29;
      *(v20 + 16) = v30;
      ++*(v10 + 16);
      v8 = v43;
      v15 = v50;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v8 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v12, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v39;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_100039E64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_100084918();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100005740(&qword_1000A5C80, &qword_10008F8A0);
  v44 = v4;
  result = sub_100085738();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_10003EB7C(&qword_1000A6418, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_100085018();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

_OWORD *sub_10003A24C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005740(&qword_1000A5CA0, &unk_10008B8A0);
  v35 = v4;
  result = sub_100085738();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
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
    v14 = result + 4;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_10001C864(v22, v36);
      }

      else
      {
        sub_1000056E4(v22, v36);
        v23 = v21;
      }

      sub_100085098();
      sub_100085A08();
      sub_100085118();
      v24 = sub_100085A38();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 6) + 8 * v15) = v21;
      result = sub_10001C864(v36, (*(v7 + 7) + 32 * v15));
      ++*(v7 + 2);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10003A51C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005740(&qword_1000A5C58, &qword_10008B868);
  result = sub_100085738();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1000859F8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10003A7BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100005740(a3, a4);
  v37 = v6;
  result = sub_100085738();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_100085A08();
      sub_100085118();
      result = sub_100085A38();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_10003AA58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000847C8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100005740(&qword_1000A5CA8, &qword_10008CD30);
  v39 = v4;
  result = sub_100085738();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        swift_errorRetain();
      }

      sub_10003EB7C(&qword_1000A5C70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      result = sub_100085018();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_10003AE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v9 = a3;
  v30 = a1;
  v31 = a2;
  v10 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = *v5;
  v16 = sub_100039054(a4);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      sub_10002BC9C();
      goto LABEL_9;
    }

    sub_100039A50(v19, a5 & 1);
    v22 = sub_100039054(a4);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    sub_100085978();
    __break(1u);
    return;
  }

LABEL_9:
  v24 = v31;
  v25 = *v6;
  if (v20)
  {
    v26 = v25[7] + 24 * v16;
    v27 = *v26;
    v28 = *(v26 + 8);
    *v26 = v30;
    *(v26 + 8) = v24;
    v29 = *(v26 + 16);
    *(v26 + 16) = v9;

    sub_10003B050(v27, v28, v29);
  }

  else
  {
    (*(v11 + 16))(v13, a4, v10);
    sub_10003B4F4(v16, v13, v30, v24, v9, v25);
  }
}

uint64_t sub_10003B038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10003B050(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:

      break;
  }
}

_OWORD *sub_10003B0C4(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000392C8(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10002C1D0();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10003A24C(v13, a3 & 1);
    v8 = sub_1000392C8(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_100085978();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100006304(v19);

    return sub_10001C864(a1, v19);
  }

  else
  {
    sub_10003B5D4(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_10003B204(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000391B0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_10002C350();
    result = v17;
    goto LABEL_8;
  }

  sub_10003A51C(v14, a3 & 1);
  result = sub_1000391B0(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_100085978();
  __break(1u);
  return result;
}

uint64_t sub_10003B328(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000847C8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100038F80(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10002C608();
      goto LABEL_7;
    }

    sub_10003AA58(v17, a3 & 1);
    v22 = sub_100038F80(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10003B63C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_100085978();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_10003B4F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = a6[7] + 24 * a1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

_OWORD *sub_10003B5D4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10001C864(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_10003B63C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000847C8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_10003B6F4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10003ECF4(&qword_1000A64C8, &qword_1000A58E8, &qword_10008B8B0, &protocol conformance descriptor for ICObjectReferences<A>);
      v15 = sub_100085058();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10003B8B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100085948())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10003B970(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10003B9DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_10003EB7C(v23, v24, v25);
      v19 = sub_100085058();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_10003BB7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_100085098();
      v8 = v7;
      if (v6 == sub_100085098() && v8 == v9)
      {
        break;
      }

      v11 = sub_100085948();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_10003BC80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003C168(a1, a2, a3, *v3, &qword_1000A6488, &qword_10008CD58, &qword_1000A6308, &unk_10008CA10);
  *v3 = result;
  return result;
}

char *sub_10003BCC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003BF58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003BCE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003C908(a1, a2, a3, *v3, &qword_1000A59E0, &qword_10008B500, _s3TagVMa);
  *v3 = result;
  return result;
}

void *sub_10003BD24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003C908(a1, a2, a3, *v3, &qword_1000A6408, &unk_10008CCD0, _s14AudioRecordingV8FragmentVMa);
  *v3 = result;
  return result;
}

void *sub_10003BD68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003C908(a1, a2, a3, *v3, &qword_1000A6410, &unk_10008CCE0, _s8ActivityVMa);
  *v3 = result;
  return result;
}

char *sub_10003BDAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003C064(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003BDCC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003C168(a1, a2, a3, *v3, &qword_1000A59E8, &qword_10008B508, &qword_1000A59F0, &qword_10008B510);
  *v3 = result;
  return result;
}

void *sub_10003BE0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003C350(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003BE2C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003C484(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003BE4C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003C588(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003BE6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003C68C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003BE8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003C7D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003BEAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003C908(a1, a2, a3, *v3, &qword_1000A5A50, &qword_10008B570, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

void *sub_10003BEF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003C908(a1, a2, a3, *v3, &qword_1000A6400, &qword_10008CCC8, _s14AudioRecordingV17TranscriptSegmentVMa);
  *v3 = result;
  return result;
}

char *sub_10003BF58(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005740(&qword_1000A59D8, &qword_10008CCA0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003C064(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005740(&qword_1000A6478, &unk_10008CD48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10003C168(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005740(a5, a6);
  v16 = *(sub_100005740(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100005740(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_10003C350(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005740(&qword_1000A63F0, &unk_10008CCB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005740(&qword_1000A5AD0, &unk_10008B5E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003C484(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005740(&qword_1000A63F8, &qword_10008CCC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10003C588(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005740(&qword_1000A6448, &unk_10008CD08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10003C68C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005740(&qword_1000A6430, &qword_10008CCF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005740(&qword_1000A6438, &qword_10008CCF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003C7D4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005740(&qword_1000A6468, &qword_10008CD38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005740(&qword_1000A6470, &qword_10008CD40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003C908(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005740(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10003CAE4(uint64_t a1, char a2, void *a3)
{
  v65 = a3;
  v6 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v66 = &v57 - v7;
  v8 = sub_100005740(&qword_1000A6308, &unk_10008CA10);
  v62 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v61 = &v57 - v10;
  v59 = *(a1 + 16);
  if (!v59)
  {
  }

  v57 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v61;
  v12 = v61 + *(v9 + 48);
  v13 = *(v62 + 80);
  v60 = a1;
  v14 = (v63 + 32);
  v58 = a1 + ((v13 + 32) & ~v13);
  sub_100005888(v58, v61, &qword_1000A6308, &unk_10008CA10);
  v15 = *v14;
  v16 = v66;
  (*v14)(v66, v11, v64);
  v18 = *v12;
  v17 = *(v12 + 8);
  v19 = *(v12 + 16);
  v20 = *v65;
  v22 = sub_100039054(v16);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v31 = v22;
      sub_10002BC9C();
      v22 = v31;
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_100039A50(v25, a2 & 1);
  v27 = sub_100039054(v66);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v32 = v66;
      v33 = *v65;
      v34 = v22;
      *(*v65 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v15(v33[6] + *(v63 + 72) * v22, v32, v64);
      v35 = v33[7] + 24 * v34;
      *v35 = v18;
      *(v35 + 8) = v17;
      *(v35 + 16) = v19;
      v36 = v33[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v33[2] = v38;
      if (v59 != 1)
      {
        v39 = 1;
        while (v39 < *(v60 + 16))
        {
          v40 = v61;
          sub_100005888(v58 + *(v62 + 72) * v39, v61, &qword_1000A6308, &unk_10008CA10);
          v41 = *v14;
          v42 = v66;
          (*v14)(v66, v40, v64);
          v18 = *v12;
          v17 = *(v12 + 8);
          v19 = *(v12 + 16);
          v43 = *v65;
          v44 = sub_100039054(v42);
          v46 = v43[2];
          v47 = (v45 & 1) == 0;
          v37 = __OFADD__(v46, v47);
          v48 = v46 + v47;
          if (v37)
          {
            goto LABEL_26;
          }

          v49 = v45;
          if (v43[3] < v48)
          {
            sub_100039A50(v48, 1);
            v44 = sub_100039054(v66);
            if ((v49 & 1) != (v50 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v49)
          {
            goto LABEL_11;
          }

          v51 = v66;
          v52 = *v65;
          *(*v65 + 8 * (v44 >> 6) + 64) |= 1 << v44;
          v53 = v44;
          v41(v52[6] + *(v63 + 72) * v44, v51, v64);
          v54 = v52[7] + 24 * v53;
          *v54 = v18;
          *(v54 + 8) = v17;
          *(v54 + 16) = v19;
          v55 = v52[2];
          v37 = __OFADD__(v55, 1);
          v56 = v55 + 1;
          if (v37)
          {
            goto LABEL_27;
          }

          ++v39;
          v52[2] = v56;
          if (v59 == v39)
          {
          }
        }

        goto LABEL_25;
      }
    }

LABEL_11:
    v29 = swift_allocError();
    swift_willThrow();

    v69 = v29;
    swift_errorRetain();
    sub_100005740(&qword_1000A5B98, &unk_10008B760);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_10003B050(v18, v17, v19);
      (*(v63 + 8))(v66, v64);
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_100085978();
  __break(1u);
LABEL_29:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_100085638(30);
  v70._object = 0x8000000100086ED0;
  v70._countAndFlagsBits = 0xD00000000000001BLL;
  sub_100085158(v70);
  sub_1000856F8();
  v71._countAndFlagsBits = 39;
  v71._object = 0xE100000000000000;
  sub_100085158(v71);
  result = sub_100085708();
  __break(1u);
  return result;
}

id sub_10003D07C(void *a1, __int128 *a2, uint64_t a3, unsigned __int8 a4, char a5)
{
  v10 = a4;
  v11 = type metadata accessor for ICArchiveImporter();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_isImporting] = 0;
  v13 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  *&v12[v13] = sub_10003D4E0(_swiftEmptyArrayStorage);
  *&v12[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_saveBatchSize] = 32;
  v12[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarning] = 0;
  v14 = &v12[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_didReceiveMemoryWarningObserver];
  *v14 = 0u;
  v14[1] = 0u;
  *&v12[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_context] = a1;
  if (v10 == 2 || (a4 & 1) == 0)
  {
    v23 = &v12[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
    v24 = *a2;
    v25 = a2[1];
    *(v23 + 16) = *(a2 + 16);
    *v23 = v24;
    *(v23 + 1) = v25;
    v26 = a1;
    sub_10003EA58(a2, v31);
  }

  else
  {
    v15 = a1;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v17 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v18 = &v12[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_configuration];
    *v18 = IsAlexandriaDemoModeEnabled;
    v18[1] = v17;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 1) = 0;
    v18[32] = 1;
    v18[33] = a5;
    if (qword_1000A5418 != -1)
    {
      swift_once();
    }

    v19 = sub_100084FB8();
    sub_10000B614(v19, qword_1000A6608);
    v20 = sub_100084FA8();
    v21 = sub_100085368();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "archiver init", v22, 2u);
    }
  }

  v27 = &v12[OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_fileManager];
  *v27 = a3;
  v27[1] = &protocol witness table for NSFileManager;
  v30.receiver = v12;
  v30.super_class = v11;
  v28 = objc_msgSendSuper2(&v30, "init");
  sub_100044760();
  sub_10003EAB4(a2);

  return v28;
}

unint64_t sub_10003D2D8(uint64_t a1)
{
  v2 = sub_100005740(&qword_1000A6308, &unk_10008CA10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100005740(&qword_1000A5CB0, &unk_10008B8B8);
    v7 = sub_100085748();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005888(v9, v5, &qword_1000A6308, &unk_10008CA10);
      result = sub_100039054(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 24 * v13;
      v17 = v8[16];
      *v16 = *v8;
      *(v16 + 16) = v17;
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

unint64_t sub_10003D4E0(uint64_t a1)
{
  v2 = sub_100005740(&qword_1000A6490, &unk_10008CD60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100005740(&qword_1000A5CA8, &qword_10008CD30);
    v7 = sub_100085748();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005888(v9, v5, &qword_1000A6490, &unk_10008CD60);
      result = sub_100038F80(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1000847C8();
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

uint64_t sub_10003D6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005740(&qword_1000A6308, &unk_10008CA10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003D73C()
{
  result = qword_1000A6310;
  if (!qword_1000A6310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6310);
  }

  return result;
}

unint64_t sub_10003D794()
{
  result = qword_1000A6318;
  if (!qword_1000A6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6318);
  }

  return result;
}

unint64_t sub_10003D7EC()
{
  result = qword_1000A6320;
  if (!qword_1000A6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6320);
  }

  return result;
}

unint64_t sub_10003D844()
{
  result = qword_1000A6328;
  if (!qword_1000A6328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6328);
  }

  return result;
}

unint64_t sub_10003D89C()
{
  result = qword_1000A6330;
  if (!qword_1000A6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6330);
  }

  return result;
}

unint64_t sub_10003D8F4()
{
  result = qword_1000A6338;
  if (!qword_1000A6338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6338);
  }

  return result;
}

uint64_t sub_10003D97C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10003D998(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003D9AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10003D9F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_10003DA38(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10003DA60(uint64_t a1)
{
  v2 = sub_100005740(&qword_1000A63E8, &qword_10008CCA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003DAC8(uint64_t a1, uint64_t a2)
{
  v4 = _s3TagVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003DB2C(uint64_t a1)
{
  v2 = _s3TagVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_10003DB88(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t), void *a4))(uint64_t, uint64_t)
{
  v8 = sub_1000847C8();
  v78 = *(v8 - 8);
  v79 = v8;
  __chkstk_darwin(v8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v11 = *(v80 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v80);
  v14 = __chkstk_darwin(v13);
  v16 = &v76 - v15;
  __chkstk_darwin(v14);
  v18 = &v76 - v17;
  v19 = swift_allocObject();
  v82 = a3;
  v83 = v19;
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  swift_beginAccess();
  v77 = a2;
  v20 = a2[3];
  v21 = *(v20 + 16);
  v81 = a4;
  v22 = a1;

  if (!v21 || (v23 = sub_100039054(a1), (v24 & 1) == 0))
  {
    swift_endAccess();
    if (qword_1000A5408 != -1)
    {
      swift_once();
    }

    v36 = sub_100084FB8();
    sub_10000B614(v36, qword_1000A62F0);
    v37 = v11;
    v38 = *(v11 + 16);
    v39 = v80;
    v38(v18, a1, v80);
    v40 = sub_100084FA8();
    v41 = sub_100085388();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = v77;
      *v42 = 136315138;
      sub_100084A78();
      sub_10003EB7C(&qword_1000A5AD8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v43 = v79;
      v44 = sub_100085908();
      v46 = v45;
      (*(v78 + 8))(v10, v43);
      (*(v37 + 8))(v18, v39);
      v47 = sub_100038A4C(v44, v46, aBlock);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "Object to be previewed does not exist {url: %s}", v42, 0xCu);
      sub_100006304(v77);
    }

    else
    {

      (*(v37 + 8))(v18, v39);
    }

    sub_1000081FC();
    v48 = swift_allocError();
    *v49 = 4;
    swift_errorRetain();
    v82(v48, 1);

    v32 = [objc_allocWithZone(NSProgress) init];
    goto LABEL_12;
  }

  v79 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v20 + 56) + 24 * v23;
  v27 = *v25;
  v26 = *(v25 + 8);
  v28 = *(v25 + 16);
  swift_endAccess();
  if (v28 <= 1)
  {
    if (v28)
    {
      v51 = objc_opt_self();
      v52 = v27;
      v32 = [v51 progressWithTotalUnitCount:1];
      [v32 setCompletedUnitCount:{objc_msgSend(v32, "totalUnitCount")}];
      v85 = sub_100008250(0, &qword_1000A54A8, ICCloudSyncingObject_ptr);
      aBlock[0] = v52;
      v53 = v52;
      v54 = sub_10000DD18(aBlock);
      sub_100006304(aBlock);
      v82(v54, 0);

      sub_10003B050(v27, v26, 1);
      sub_10003B050(v27, v26, 1);
    }

    else
    {
      sub_100005740(&qword_1000A5A70, &qword_10008B590);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10008B5D0;
      v30 = swift_allocObject();
      v31 = v83;
      *(v30 + 16) = sub_10003ED3C;
      *(v30 + 24) = v31;
      *(inited + 32) = sub_10003F0AC;
      *(inited + 40) = v30;
      aBlock[0] = v26;
      sub_1000112CC(v27, v26, 0);
      v32 = v27;

      sub_10003935C(inited);
      v33 = aBlock[0];
      v34 = v77;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v34[3];
      v34[3] = 0x8000000000000000;
      sub_10003AE34(v27, v33, 0, v22, isUniquelyReferenced_nonNull_native);
      v34[3] = v88;
      swift_endAccess();
    }

    goto LABEL_12;
  }

  if (v28 == 2)
  {
    swift_errorRetain();
    v82(v27, 1);
    v32 = [objc_allocWithZone(NSProgress) init];
    sub_10003B050(v27, v26, 2);
LABEL_12:

    return v32;
  }

  v55 = [objc_opt_self() progressWithTotalUnitCount:1];
  sub_100005740(&qword_1000A5A70, &qword_10008B590);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_10008B5D0;
  v57 = swift_allocObject();
  v58 = v83;
  *(v57 + 16) = sub_10003ED3C;
  *(v57 + 24) = v58;
  *(v56 + 32) = sub_10003F0AC;
  *(v56 + 40) = v57;
  v59 = v77;
  swift_beginAccess();

  v82 = v55;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v88 = v59[3];
  v59[3] = 0x8000000000000000;
  sub_10003AE34(v55, v56, 0, v22, v60);
  v59[3] = v88;
  swift_endAccess();
  v61 = v11;
  v62 = *(v11 + 16);
  v63 = v80;
  v62(v16, v22, v80);
  v64 = *(v61 + 80);
  v65 = swift_allocObject();
  v78 = v65;
  *(v65 + 16) = v59;
  v76 = *(v61 + 32);
  v76(v65 + ((v64 + 24) & ~v64), v16, v63);
  v81 = v59[2];
  v66 = v79;
  v62(v79, v22, v63);
  v67 = (v64 + 16) & ~v64;
  v68 = (v12 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v76(v70 + v67, v66, v63);
  v71 = v82;
  *(v70 + v68) = v82;
  *(v70 + v69) = v77;
  v72 = (v70 + ((v69 + 15) & 0xFFFFFFFFFFFFFFF8));
  v73 = v78;
  *v72 = sub_10003F0B4;
  v72[1] = v73;
  v86 = sub_10003F0A8;
  v87 = v70;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000389E4;
  v85 = &unk_10009FF98;
  v74 = _Block_copy(aBlock);
  swift_retain_n();
  v75 = v71;

  [v81 performBackgroundTask:v74];
  _Block_release(v74);

  return v75;
}

unint64_t sub_10003E50C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005740(&qword_1000A5C58, &qword_10008B868);
    v3 = sub_100085748();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1000391B0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_10003E5E8()
{
  result = qword_1000A6428;
  if (!qword_1000A6428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6428);
  }

  return result;
}

unint64_t sub_10003E63C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005740(&qword_1000A5CA0, &unk_10008B8A0);
    v3 = sub_100085748();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005888(v4, &v11, &qword_1000A6450, &qword_10008CD18);
      v5 = v11;
      result = sub_1000392C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10001C864(&v12, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003E764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005740(&qword_1000A6458, &unk_10008CD20);
    v3 = sub_100085748();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100039138(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003E868(uint64_t a1)
{
  v2 = sub_100005740(&qword_1000A5A28, &unk_10008F890);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100005740(&qword_1000A5C80, &qword_10008F8A0);
    v7 = sub_100085748();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005888(v9, v5, &qword_1000A5A28, &unk_10008F890);
      result = sub_1000391F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100084918();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
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

uint64_t sub_10003EB08()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003EB7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10003EBC4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_10003EC14()
{
  sub_10003EBC4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

id sub_10003EC84(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {

    return swift_errorRetain();
  }

  else
  {

    return a3;
  }
}

id sub_10003ECD4(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_10003ECE0(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_10003B050(a1, a2, a3);
  }
}

uint64_t sub_10003ECF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011888(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003ED48()
{
  v1 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10003EE18(void *a1, char a2)
{
  v5 = *(sub_100005740(&qword_1000A58E8, &qword_10008B8B0) - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  sub_100037A88(a1, a2 & 1, v6, v7);
}

uint64_t sub_10003EEAC()
{
  v1 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_10003EF80(void *a1)
{
  v3 = *(sub_100005740(&qword_1000A58E8, &qword_10008B8B0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_100037FD4(a1, (v1 + v4), v7, v8, v10, v11);
}

void *sub_10003F0B8(uint64_t a1)
{
  v3 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  __chkstk_darwin(v3 - 8);
  v5 = v46 - v4;
  v6 = _s3TagVMa(0);
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1000855B8();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v63 = _swiftEmptyArrayStorage;
  sub_10003BCE0(0, v9 & ~(v9 >> 63), 0);
  v10 = v63;
  if (v55)
  {
    result = sub_100085568();
  }

  else
  {
    result = sub_100085548();
    v12 = *(a1 + 36);
  }

  v60 = result;
  v61 = v12;
  v62 = v55 != 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
    v51 = v5;
    v52 = a1;
    v13 = 0;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v14 = a1;
    }

    v48 = a1 + 56;
    v49 = v14;
    v46[1] = v1;
    v47 = a1 + 64;
    v50 = v9;
    while (v13 < v9)
    {
      if (__OFADD__(v13++, 1))
      {
        goto LABEL_42;
      }

      v17 = v60;
      v57 = v61;
      v58 = v10;
      v56 = v62;
      sub_100040358(v60, v61, v62, a1);
      v19 = v18;
      v20 = sub_1000848B8();
      v21 = *(*(v20 - 8) + 56);
      v22 = 1;
      v23 = v8;
      v21(v8, 1, 1, v20);
      v24 = [v19 creationDate];
      v25 = v51;
      if (v24)
      {
        v26 = v24;
        sub_100084888();

        v22 = 0;
      }

      v21(v25, v22, 1, v20);
      v27 = v25;
      v8 = v23;
      sub_100040A94(v27, v23);
      v28 = [v19 displayText];
      if (v28)
      {
        v29 = v28;
        v30 = sub_100085098();
        v32 = v31;
      }

      else
      {

        v30 = 0;
        v32 = 0xE000000000000000;
      }

      a1 = v52;
      v9 = v50;
      v33 = &v8[*(v54 + 20)];
      *v33 = v30;
      v33[1] = v32;
      v10 = v58;
      v63 = v58;
      v35 = v58[2];
      v34 = v58[3];
      if (v35 >= v34 >> 1)
      {
        sub_10003BCE0((v34 > 1), v35 + 1, 1);
        v10 = v63;
      }

      v10[2] = v35 + 1;
      result = sub_10003DAC8(v8, v10 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v35);
      if (v55)
      {
        if (!v56)
        {
          goto LABEL_47;
        }

        if (sub_100085588())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_100005740(&qword_1000A6500, &qword_10008CD88);
        v15 = sub_1000852B8();
        sub_1000855E8();
        result = v15(v59, 0);
        if (v13 == v9)
        {
LABEL_39:
          sub_100040B04(v60, v61, v62);
          return v10;
        }
      }

      else
      {
        if (v56)
        {
          goto LABEL_48;
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        v36 = 1 << *(a1 + 32);
        if (v17 >= v36)
        {
          goto LABEL_43;
        }

        v37 = v17 >> 6;
        v38 = *(v48 + 8 * (v17 >> 6));
        if (((v38 >> v17) & 1) == 0)
        {
          goto LABEL_44;
        }

        if (*(a1 + 36) != v57)
        {
          goto LABEL_45;
        }

        v39 = v38 & (-2 << (v17 & 0x3F));
        if (v39)
        {
          v36 = __clz(__rbit64(v39)) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v40 = v37 << 6;
          v41 = v37 + 1;
          v42 = (v47 + 8 * v37);
          while (v41 < (v36 + 63) >> 6)
          {
            v44 = *v42++;
            v43 = v44;
            v40 += 64;
            ++v41;
            if (v44)
            {
              result = sub_100040B04(v17, v57, 0);
              v36 = __clz(__rbit64(v43)) + v40;
              goto LABEL_38;
            }
          }

          result = sub_100040B04(v17, v57, 0);
        }

LABEL_38:
        v45 = *(a1 + 36);
        v60 = v36;
        v61 = v45;
        v62 = 0;
        if (v13 == v9)
        {
          goto LABEL_39;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_10003F5CC()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A64D0);
  sub_10000B614(v0, qword_1000A64D0);
  return sub_100084F98();
}

uint64_t sub_10003F618(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6550, &qword_10008CE58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000626C(a1, a1[3]);
  sub_100040CA4();
  sub_100085A78();
  LOBYTE(v10) = *v3;
  v11 = 0;
  sub_100040CF8();
  sub_1000858D8();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    sub_100085898();
    LOBYTE(v10) = 2;
    sub_100085848();
    LOBYTE(v10) = *(v3 + 40);
    v11 = 3;
    sub_100040D4C();
    sub_100085888();
    v10 = *(v3 + 48);
    v11 = 4;
    sub_100005740(&qword_1000A6570, &qword_10008CE60);
    sub_1000414D0(&qword_1000A6578, &qword_1000A6580, &unk_10008E45C, &protocol conformance descriptor for <> Set<A>);
    sub_100085888();
    v10 = *(v3 + 56);
    v11 = 5;
    sub_100005740(&qword_1000A6588, &qword_10008CE68);
    sub_100041558(&qword_1000A6590, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_100085888();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10003F934()
{
  v1 = *v0;
  v2 = 0x6E65644965707974;
  v3 = 1701869940;
  v4 = 1936154996;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003F9F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100040DE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003FA24(uint64_t a1)
{
  v2 = sub_100040CA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003FA60(uint64_t a1)
{
  v2 = sub_100040CA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10003FA9C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100040FF4(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

id sub_10003FAF8(id a1, uint64_t a2, _BYTE *a3)
{
  v5 = v3;
  if ((*a3 & 1) == 0 || (v9 = [a1 managedObjectContext]) == 0)
  {
LABEL_8:
    ObjectType = swift_getObjectType();
    v14 = a1;
    v16 = (*(a2 + 16))(*(v5 + 8), *(v5 + 16), a3, ObjectType, a2);
    if (!v4)
    {
      v14 = v16;
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = v17;
        v14 = v14;
        v19 = v14;
        if ([v18 isRenamable])
        {

          v19 = sub_100085068();

          [v18 setTitle:v19];
        }
      }
    }

    return v14;
  }

  v10 = *(v3 + 40);
  if (v10 == 2)
  {

    goto LABEL_8;
  }

  v11 = v9;
  v12 = objc_opt_self();
  v13 = &selRef_localAccountInContext_;
  if ((v10 & 1) == 0)
  {
    v13 = &selRef_cloudKitAccountInContext_;
  }

  v14 = [v12 *v13];

  if (!v14)
  {
    goto LABEL_8;
  }

  return v14;
}

id sub_10003FCAC(id a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = a1;
  v5 = *(v3 + 16);
  v23 = a1;
  if (!v5)
  {
    goto LABEL_18;
  }

  v7 = 0;
  v8 = v3 + 40;
  v22 = v8;
  do
  {
    v9 = (v8 + 16 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_31;
      }

      if (!*(a2 + 16))
      {
        goto LABEL_6;
      }

      v11 = *(v9 - 1);
      v12 = *v9;

      v13 = sub_100039138(v11, v12);
      if (v14)
      {
        if ([*(*(a2 + 56) + 8 * v13) identifier])
        {
          break;
        }
      }

LABEL_6:
      ++v10;
      v9 += 2;
      if (v7 == v5)
      {
        v4 = v23;
        goto LABEL_18;
      }
    }

    sub_1000851F8();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100085228();
    }

    a1 = sub_100085258();
    v4 = v23;
    v8 = v22;
  }

  while (v7 != v5);
LABEL_18:
  a1 = [v4 subFolderIdentifiersOrderedSet];
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_34;
  }

  v16 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    a1 = a1;
    v17 = a1;
    if (!v16)
    {
      break;
    }

    v18 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        a1 = sub_100085648();
      }

      else
      {
        if (v18 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        a1 = _swiftEmptyArrayStorage[v18 + 4];
      }

      v19 = a1;
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      [v17 addObject:a1];

      ++v18;
      if (v20 == v16)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v21 = a1;
    v16 = sub_100085718();
    a1 = v21;
  }

LABEL_29:

  [v23 setSubFolderOrderMergeableDataDirty:1];
  [v23 saveSubFolderMergeableDataIfNeeded];
  return [v23 subFolderIdentifiersOrderedSetDocument];
}

uint64_t sub_10003FF4C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x4C41434F4CLL;
  }

  else
  {
    v2 = 0x44554F4C43;
  }

  if (*a2)
  {
    v3 = 0x4C41434F4CLL;
  }

  else
  {
    v3 = 0x44554F4C43;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_100085948();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10003FFCC()
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_10004003C(uint64_t a1)
{
  sub_100085118();
}

Swift::Int sub_100040090(uint64_t a1)
{
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_1000400FC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10009E018;
  v8._object = v3;
  v5 = sub_100085788(v4, v8);

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

  *a2 = v7;
  return result;
}

void sub_10004015C(uint64_t *a1@<X8>)
{
  v2 = 0x44554F4C43;
  if (*v1)
  {
    v2 = 0x4C41434F4CLL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_100040258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100041944();
  sub_1000418F0();

  return sub_100084A28();
}

uint64_t sub_1000402E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100041944();
  sub_1000418F0();

  return sub_100084A48();
}

void sub_100040358(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1000855C8();
      sub_100008250(0, &qword_1000A64E8, ICHashtag_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100008250(0, &qword_1000A64E8, ICHashtag_ptr);
    if (sub_100085598() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_1000855A8();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_1000854B8(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_1000854C8();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10004057C(int a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  if (a1 == 3)
  {
    return 1;
  }

  if (qword_1000A5410 != -1)
  {
    swift_once();
  }

  v2 = sub_100084FB8();
  sub_10000B614(v2, qword_1000A64D0);
  v3 = sub_100084FA8();
  v4 = sub_100085388();
  if (os_log_type_enabled(v3, v4))
  {
    v1 = 2;
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown account type — returning nil", v5, 2u);
  }

  else
  {

    return 2;
  }

  return v1;
}

uint64_t sub_100040688@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_100030518(a2);
  v5 = [a1 identifier];
  if (v5)
  {
    v6 = v5;
    v7 = sub_100085098();
    v39 = v8;
  }

  else
  {
    v7 = 0;
    v39 = 0xE000000000000000;
  }

  v9 = [a1 localizedName];
  v10 = sub_100085098();
  v36 = v11;
  v37 = v10;

  v35 = sub_10004057C([a1 accountType]);
  v12 = [a1 hashtags];
  sub_100008250(0, &qword_1000A64E8, ICHashtag_ptr);
  sub_1000409C4();
  v13 = sub_100085298();

  v14 = sub_10003F0B8(v13);

  v15 = sub_100079D24(v14);

  v38 = a1;
  v16 = [a1 subFolderIdentifiersOrderedSet];
  v17 = [v16 allObjects];

  sub_100008250(0, &qword_1000A64F8, NSString_ptr);
  v18 = sub_100085208();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v15;
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_16:

    v22 = _swiftEmptyArrayStorage;
LABEL_17:
    LOBYTE(v41) = 1;
    *(&v41 + 1) = v7;
    *&v42 = v39;
    *(&v42 + 1) = v37;
    *&v43 = v36;
    BYTE8(v43) = v35;
    *&v44 = v34;
    *(&v44 + 1) = v22;
    LOBYTE(v45[0]) = 1;
    v45[1] = v7;
    v45[2] = v39;
    v45[3] = v37;
    v45[4] = v36;
    v46 = v35;
    v47 = v34;
    v48 = v22;
    sub_100040A2C(&v41, v40);
    result = sub_100040A64(v45);
    v31 = v42;
    *a3 = v41;
    a3[1] = v31;
    v32 = v44;
    a3[2] = v43;
    a3[3] = v32;
    return result;
  }

  v19 = sub_100085718();
  v34 = v15;
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_6:
  v45[0] = _swiftEmptyArrayStorage;
  result = sub_10003BCC0(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v33 = v7;
    v21 = 0;
    v22 = v45[0];
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = sub_100085648();
      }

      else
      {
        v23 = *(v18 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = sub_100085098();
      v27 = v26;

      v45[0] = v22;
      v29 = v22[2];
      v28 = v22[3];
      if (v29 >= v28 >> 1)
      {
        sub_10003BCC0((v28 > 1), v29 + 1, 1);
        v22 = v45[0];
      }

      ++v21;
      v22[2] = v29 + 1;
      v30 = &v22[2 * v29];
      v30[4] = v25;
      v30[5] = v27;
    }

    while (v19 != v21);

    v7 = v33;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000409C4()
{
  result = qword_1000A64F0;
  if (!qword_1000A64F0)
  {
    sub_100008250(255, &qword_1000A64E8, ICHashtag_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A64F0);
  }

  return result;
}

uint64_t sub_100040A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040B04(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

__n128 sub_100040B10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100040B24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100040B6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}