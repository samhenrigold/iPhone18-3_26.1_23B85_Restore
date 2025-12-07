id sub_1000018B0(void *a1, unsigned __int8 a2, id a3, uint64_t a4, uint64_t a5)
{
  v7 = [a3 serviceName];
  v8 = sub_1000258CC();
  v10 = v9;

  v11 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  v12 = [v11 mainBundle];
  v61._countAndFlagsBits = 0xE000000000000000;
  v75._object = 0x8000000100027D70;
  v75._countAndFlagsBits = 0xD000000000000018;
  v80.value._countAndFlagsBits = 0;
  v80.value._object = 0;
  v13.super.isa = v12;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  sub_10002567C(v75, v80, v13, v85, 0, v61);

  sub_100002370(&qword_10003B2F8, "\n%");
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100026BD0;
  *(v14 + 56) = &type metadata for String;
  v62._object = sub_100004010();
  *(v14 + 64) = v62._object;
  v73 = v8;
  *(v14 + 32) = v8;
  *(v14 + 40) = v10;
  v15 = sub_1000258DC();
  v17 = v16;

  v18 = [a3 supportedMediaIntents];
  v74 = v11;
  if (v18)
  {
    v19 = v18;
    v20 = sub_1000259CC();

    v21 = sub_100003F10(v20);
    v23 = v22;

    if (v23)
    {
      goto LABEL_7;
    }
  }

  v24 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v24 = v73 & 0xFFFFFFFFFFFFLL;
  }

  v23 = 0xE000000000000000;
  if (v24)
  {

    v25 = [v11 mainBundle];
    v62._countAndFlagsBits = 0xE000000000000000;
    v76._countAndFlagsBits = 0xD00000000000001ALL;
    v76._object = 0x8000000100027D90;
    v81.value._countAndFlagsBits = 0;
    v81.value._object = 0;
    v26.super.isa = v25;
    v86._countAndFlagsBits = 0;
    v86._object = 0xE000000000000000;
    sub_10002567C(v76, v81, v26, v86, 0, v62);

    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100026BD0;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = v62._object;
    *(v27 + 32) = v73;
    *(v27 + 40) = v10;
    v21 = sub_1000258DC();
    v23 = v28;
LABEL_7:

    goto LABEL_9;
  }

  v21 = 0;
LABEL_9:
  v66 = a2;
  if (a2 == 2)
  {
    v29 = 3;
  }

  else
  {
    v29 = 1;
  }

  *(v5 + OBJC_IVAR____TtC21MediaSetupViewService23AddToHomeViewController_trigger) = v29;
  if (a2 == 2)
  {
    v30 = 31;
  }

  else
  {
    v30 = 41;
  }

  v70 = a1;
  v31 = sub_1000160B8(v70, v15, v17, v21, v23);
  v32 = sub_10002224C(v30);
  v34 = v33;
  v35 = v31;
  v36 = [v74 mainBundle];
  v62._countAndFlagsBits = 0xE000000000000000;
  v77._countAndFlagsBits = v32;
  v77._object = v34;
  v82.value._countAndFlagsBits = 0;
  v82.value._object = 0;
  v37.super.isa = v36;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v38 = sub_10002567C(v77, v82, v37, v87, 0, v62);
  v40 = v39;

  v41 = sub_1000235DC(0, v38, v40);

  [v41 addTarget:v35 action:"selectAddToHomes" forControlEvents:64];
  v42 = v35;
  v43 = [v42 buttonTray];
  v68 = v41;
  [v43 addButton:v41];

  v44 = [v74 mainBundle];
  v63._countAndFlagsBits = 0xE000000000000000;
  v78._countAndFlagsBits = 0x574F4E5F544F4ELL;
  v78._object = 0xE700000000000000;
  v83.value._countAndFlagsBits = 0;
  v83.value._object = 0;
  v45.super.isa = v44;
  v88._countAndFlagsBits = 0;
  v88._object = 0xE000000000000000;
  v46 = sub_10002567C(v78, v83, v45, v88, 0, v63);
  v48 = v47;

  v49 = sub_1000235DC(1, v46, v48);

  [v49 addTarget:v42 action:"requestDismiss" forControlEvents:64];

  v50 = [v42 buttonTray];
  [v50 addButton:v49];

  if (v66 == 2)
  {
  }

  else
  {
    v51 = [v42 buttonTray];

    v52 = [v74 mainBundle];
    v64._countAndFlagsBits = 0xE000000000000000;
    v79._countAndFlagsBits = 0xD00000000000001ELL;
    v79._object = 0x8000000100027DB0;
    v84.value._countAndFlagsBits = 0;
    v84.value._object = 0;
    v53.super.isa = v52;
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    sub_10002567C(v79, v84, v53, v89, 0, v64);

    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_100026BD0;
    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = v65;
    *(v54 + 32) = v73;
    *(v54 + 40) = v10;
    sub_1000258DC();

    v55 = sub_1000258BC();

    [v51 setCaptionText:v55];
  }

  v56 = objc_allocWithZone(type metadata accessor for MainContentView());
  swift_bridgeObjectRetain_n();
  v57 = a3;
  v58 = sub_100023CA0(1, a4, a5, v57);
  v59 = [v42 contentView];

  [v59 addSubview:v58];
  sub_10001FD28();

  swift_bridgeObjectRelease_n();
  return v42;
}

uint64_t sub_100001FF8()
{
  v0 = sub_100003E78(&off_100034CD0);
  result = swift_arrayDestroy();
  off_10003B248 = v0;
  return result;
}

id sub_100002048()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddToHomeViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t variable initialization expression of SetupSession.dispatchQueue()
{
  v0 = sub_10002581C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002198();
  (*(v1 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v4 = sub_100025A6C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

unint64_t sub_100002198()
{
  result = qword_10003B3A0;
  if (!qword_10003B3A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003B3A0);
  }

  return result;
}

double variable initialization expression of SetupSession.hostAuditToken@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

double variable initialization expression of SetupSession.stepContext@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t variable initialization expression of SetupSession.stateStack()
{
  sub_100002370(&qword_10003B290, &unk_100026BE0);
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  return result;
}

id variable initialization expression of SetupSession.setupAnalyticEvent()
{
  v0 = objc_allocWithZone(MSSetupCompleteEvent);

  return [v0 init];
}

id variable initialization expression of SetupSession.defaults()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1000258BC();
  v2 = [v0 initWithSuiteName:v1];

  return v2;
}

uint64_t sub_100002370(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 sub_1000023F4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002400(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002420(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_100002460(uint64_t a1, unint64_t *a2, uint64_t a3)
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

BOOL sub_1000024F0(void *a1, uint64_t *a2)
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

void *sub_100002520@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10000254C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_100002638@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002668@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100003FD8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100002710(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MSTestUIFlags(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000027BC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100002E58(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_1000028E8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_100025D2C();

    sub_1000258FC();
    v23 = sub_100025D4C();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_100025CAC() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_10000342C(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_100025D2C();

            sub_1000258FC();
            v41 = sub_100025D4C();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_100025CAC() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1000031F4(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_100004064(v13);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100002E58(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_100025D2C();
  sub_1000258FC();
  v6 = sub_100025D4C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_100025CAC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100003650();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1000039E4(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_100002F94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002370(&qword_10003B308, &qword_100026E20);
  result = sub_100025B7C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_100025D2C();
      sub_1000258FC();
      result = sub_100025D4C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t *sub_1000031F4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_10000342C(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_100025D2C();

        sub_1000258FC();
        v19 = sub_100025D4C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_100025CAC() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_10000342C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100002370(&qword_10003B308, &qword_100026E20);
  result = sub_100025B8C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_100025D2C();

    sub_1000258FC();
    result = sub_100025D4C();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_100003650()
{
  v1 = v0;
  sub_100002370(&qword_10003B308, &qword_100026E20);
  v2 = *v0;
  v3 = sub_100025B6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1000037AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002370(&qword_10003B308, &qword_100026E20);
  result = sub_100025B7C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_100025D2C();

      sub_1000258FC();
      result = sub_100025D4C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1000039E4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_100025B2C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_100025D2C();

        sub_1000258FC();
        v10 = sub_100025D4C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100003BA8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100025D2C();
  sub_1000258FC();
  v8 = sub_100025D4C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100025CAC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100003CF8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100003CF8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100002F94(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100003650();
      goto LABEL_16;
    }

    sub_1000037AC(v8 + 1);
  }

  v10 = *v4;
  sub_100025D2C();
  sub_1000258FC();
  result = sub_100025D4C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100025CAC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_100025CBC();
  __break(1u);
  return result;
}

uint64_t sub_100003E78(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000259DC();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100003BA8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100003F10(void *a1)
{
  if (qword_10003B240 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = off_10003B248;
  if (*(off_10003B248 + 2) <= a1[2] >> 3)
  {
    v7 = a1;

    sub_1000027BC(v1);
    v3 = v7;
  }

  else
  {
    v2 = a1;

    v3 = sub_1000028E8(v1, v2);
  }

  v4 = sub_10002338C(v3);
  if (v4 == 7)
  {
    return 0;
  }

  else
  {
    return sub_10001FFB8(v4);
  }
}

uint64_t sub_100003FD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_100004010()
{
  result = qword_10003B300;
  if (!qword_10003B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B300);
  }

  return result;
}

uint64_t sub_100004074(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homesToSetup;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_100004124(uint64_t a1)
{
  v2 = a1;
  v3 = v1;
  v4 = sub_1000257BC();
  v5 = sub_1000259EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = SetupState.description.getter(v2);
    v9 = sub_10001EB4C(v7, v8, v22);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v11 = SetupState.description.getter(v3[v10]);
    v13 = sub_10001EB4C(v11, v12, v22);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "State change: %s -> %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *&v3[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stateStack];
  v15 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  v16 = v3[v15];
  swift_beginAccess();
  v17 = *(v14 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1000138F8(0, *(v17 + 2) + 1, 1, v17);
    *(v14 + 16) = v17;
  }

  v20 = *(v17 + 2);
  v19 = *(v17 + 3);
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1000138F8((v19 > 1), v20 + 1, 1, v17);
  }

  *(v17 + 2) = v20 + 1;
  v17[v20 + 32] = v16;
  *(v14 + 16) = v17;
  swift_endAccess();
}

uint64_t SetupSession.state.getter()
{
  v1 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1000043A8()
{
  v1 = (v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v2 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
  v26 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v27 = v2;
  v3 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
  v28 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
  v29 = v3;
  if (*(&v3 + 1))
  {
    v4 = v1[1];
    v21 = *v1;
    v22 = v4;
    v23 = v1[2];
    v24 = *(v1 + 6);
    v25 = *(&v3 + 1);
    v20[0] = v21;
    v20[1] = v4;
    v5 = v1[3];
    v20[2] = v23;
    v20[3] = v5;
    sub_10000EB94(&v26, v19, &qword_10003B7C0, &qword_100026FF8);
    sub_10000E7DC(v20, v19);
    v6 = sub_1000257BC();
    v7 = sub_1000259EC();
    sub_10000EBFC(&v26, &qword_10003B7C0, &qword_100026FF8);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136380675;
      v19[0] = v26;
      v19[1] = v27;
      v19[2] = v28;
      v19[3] = v29;
      sub_10000E7DC(v19, v17);
      v10 = sub_10002181C();
      v12 = v11;
      sub_10000EBFC(&v26, &qword_10003B7C0, &qword_100026FF8);
      v13 = sub_10001EB4C(v10, v12, &v18);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "StepContext: %{private}s", v8, 0xCu);
      sub_10000E734(v9);

      sub_10000EBFC(&v26, &qword_10003B7C0, &qword_100026FF8);
    }

    else
    {

      sub_10000EBFC(&v26, &qword_10003B7C0, &qword_100026FF8);
    }
  }

  else
  {
    oslog = sub_1000257BC();
    v14 = sub_1000259EC();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "StepContext = nil", v15, 2u);
    }
  }
}

id sub_100004668()
{
  v1 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession____lazy_storage___configuration;
  v2 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession____lazy_storage___configuration);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession____lazy_storage___configuration);
LABEL_5:
    v7 = v2;
    return v3;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    [result setQueue:*(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_dispatchQueue)];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_100004708()
{
  v1 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession____lazy_storage___mediaService;
  v2 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession____lazy_storage___mediaService);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_100004778(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_10000EE44(v4);
  }

  sub_10000EE54(v2);
  return v3;
}

id sub_100004778(uint64_t a1)
{
  v2 = sub_10002577C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID + 8);
  if (!v7)
  {
    v15 = sub_1000257BC();
    v16 = sub_100025A0C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "### No host bundle ID?";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);
    }

LABEL_10:

    return 0;
  }

  v8 = *(a1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount);
  if (!v8)
  {
    v15 = sub_1000257BC();
    LOBYTE(v16) = sub_100025A0C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "### No setup context?";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v9 = v4;
  v10 = *(a1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID);
  v11 = v8;

  v12 = [v11 serviceID];
  if (!v12)
  {

    v19 = sub_1000257BC();
    v20 = sub_100025A0C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "### No serviceID?", v21, 2u);
    }

    return 0;
  }

  v13 = v12;
  sub_10002574C();

  objc_allocWithZone(MediaService);
  v14 = v11;
  v22 = sub_100019C00(v14, v10, v7);

  v23 = v22;
  isa = sub_10002573C().super.isa;
  [v23 setServiceID:isa];

  v25 = v23;
  if (*(a1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configPublicKey + 8))
  {

    v26 = sub_1000258BC();

    [v25 setConfigPublicKey:v26];

    (*(v3 + 8))(v6, v9);
    return v25;
  }

  else
  {
    (*(v3 + 8))(v6, v9);

    return v23;
  }
}

id SetupSession.targetHome.getter()
{
  v1 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager;
  v2 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager);
  if (!v2)
  {
    goto LABEL_7;
  }

  result = [v2 currentHome];
  if (result)
  {
    return result;
  }

  v4 = *(v0 + v1);
  if (v4)
  {
    v5 = [v4 homes];
    sub_10000E970(0, &qword_10003B388, HMHome_ptr);
    v6 = sub_10002597C();

    if (v6 >> 62)
    {
      goto LABEL_5;
    }
  }

  else
  {
LABEL_7:
    v6 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
LABEL_5:
      result = sub_100025C3C();
      if (!result)
      {
LABEL_6:

        return 0;
      }

      goto LABEL_9;
    }
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_6;
  }

LABEL_9:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = sub_100025BBC();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  return v8;
}

uint64_t sub_100004D2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002577C();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  if (*(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags))
  {
    if (qword_10003B278 != -1)
    {
      swift_once();
    }

    v9 = sub_10000EE0C(v3, qword_10003CE38);
    v10 = *(v18 + 16);

    return v10(a1, v9, v3);
  }

  else
  {
    v12 = SetupSession.targetHome.getter();
    if (v12)
    {
      v13 = v12;
      v14 = [v12 currentUser];

      v15 = [v14 uniqueIdentifier];
      sub_10002574C();

      v16 = *(v18 + 32);
      v16(v8, v5, v3);
      (*(v18 + 56))(v8, 0, 1, v3);
      return (v16)(a1, v8, v3);
    }

    else
    {
      (*(v18 + 56))(v8, 1, 1, v3);
      sub_10002576C();
      result = (*(v18 + 48))(v8, 1, v3);
      if (result != 1)
      {
        return sub_10000EBFC(v8, &qword_10003B4F0, &qword_100027000);
      }
    }
  }

  return result;
}

void sub_100004FE0()
{
  v1 = v0;
  v2 = sub_1000257BC();
  v3 = sub_1000259EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15[0] = v5;
    *v4 = 136380675;
    v6 = *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount];
    sub_100002370(&unk_10003B570, qword_100027048);
    v7 = sub_1000258EC();
    v9 = sub_10001EB4C(v7, v8, v15);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Activating with context %{private}s", v4, 0xCu);
    sub_10000E734(v5);
  }

  if (!*&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount])
  {
    v10 = sub_1000257BC();
    v11 = sub_100025A0C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "### Activating without context?", v12, 2u);
    }

    v13 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v14 = v1[v13];
    v1[v13] = 3;
    sub_100004124(v14);
  }

  sub_1000051E4();
}

void sub_1000051E4()
{
  v1 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  switch(*(v0 + v1))
  {
    case 2:
      v2 = sub_1000257BC();
      v3 = sub_100025A0C();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "Invalid state", v4, 2u);
      }

      return;
    case 3:
      if (sub_100005FE4(3))
      {
        v10 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
        v25 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
        v26 = v10;
        v11 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
        v27 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
        v28 = v11;
        v12 = *(&v11 + 1);
        if (*(&v11 + 1))
        {
          v13 = v25;
          v14 = v26;
          v15 = v27;
          v16 = v28;
        }

        else
        {
          v13 = xmmword_100026E90;
          v14 = 0uLL;
          v12 = _swiftEmptyArrayStorage;
          v16 = 5;
          v15 = 0uLL;
        }

        v23[0] = v13;
        v23[1] = v14;
        v23[2] = v15;
        LOBYTE(v24) = v16;
        *(&v24 + 1) = v12;
        v29 = v13;
        v30 = v14;
        v31 = v15;
        v32 = v24;
        sub_10000EB94(&v25, v22, &qword_10003B7C0, &qword_100026FF8);
        sub_10000E7DC(v23, v22);
        sub_100007AC4(4, &v29);
        sub_10000E838(v23);
        sub_10000E838(v23);
      }

      return;
    case 4:
      sub_1000088EC();
      return;
    case 5:
    case 9:
    case 0xC:
    case 0xE:
    case 0x11:
    case 0x13:
    case 0x16:
    case 0x18:
    case 0x1B:
      return;
    case 6:
      sub_1000094DC();
      return;
    case 7:
      sub_1000096DC();
      return;
    case 8:
      if (sub_100005FE4(8))
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        sub_100007AC4(9, &v29);
        v5 = *(v0 + v1);
        *(v0 + v1) = 9;
        goto LABEL_38;
      }

      return;
    case 0xA:
      sub_100009A0C();
      return;
    case 0xB:
      if (sub_100005FE4(11))
      {
        v8 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
        v29 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
        v30 = v8;
        v9 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
        v31 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
        v32 = v9;
        sub_10000EB94(&v29, &v25, &qword_10003B7C0, &qword_100026FF8);
        sub_100007AC4(5, &v29);
        sub_10000EBFC(&v29, &qword_10003B7C0, &qword_100026FF8);
        *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist + 2) = 1;
        v5 = *(v0 + v1);
        v6 = 12;
        break;
      }

      return;
    case 0xD:
      sub_100009F8C();
      return;
    case 0xF:
      sub_10000A06C();
      return;
    case 0x10:
      if (*(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeTopology) == 1)
      {
        v7 = 23;
      }

      else
      {
        v7 = 20;
      }

      *(v0 + v1) = v7;
      v5 = 16;
      goto LABEL_38;
    case 0x12:
      sub_10000AE50();
      return;
    case 0x14:
      if ((sub_100005FE4(20) & 1) == 0)
      {
        return;
      }

      v17 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
      v29 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
      v30 = v17;
      v18 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
      v31 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
      v32 = v18;
      sub_10000EB94(&v29, &v25, &qword_10003B7C0, &qword_100026FF8);
      v19 = 6;
      goto LABEL_36;
    case 0x15:
      if ((sub_100005FE4(21) & 1) == 0)
      {
        return;
      }

      v20 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
      v29 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
      v30 = v20;
      v21 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
      v31 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
      v32 = v21;
      sub_10000EB94(&v29, &v25, &qword_10003B7C0, &qword_100026FF8);
      v19 = 7;
LABEL_36:
      sub_100007AC4(v19, &v29);
      sub_10000EBFC(&v29, &qword_10003B7C0, &qword_100026FF8);
      v5 = *(v0 + v1);
      v6 = 22;
      break;
    case 0x17:
      if ((sub_100005FE4(23) & 1) == 0)
      {
        return;
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      sub_100007AC4(14, &v29);
      v5 = *(v0 + v1);
      v6 = 24;
      break;
    case 0x19:
      sub_100005FE4(25);
      return;
    case 0x1A:
      if ((sub_100005FE4(26) & 1) == 0)
      {
        return;
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      sub_100007AC4(10, &v29);
      v5 = *(v0 + v1);
      v6 = 27;
      break;
    case 0x1C:
      if (sub_100005FE4(28))
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        sub_100007AC4(3, &v29);
      }

      return;
    case 0x1D:
      if ((sub_100005FE4(29) & 1) == 0)
      {
        return;
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      sub_100007AC4(11, &v29);
      v5 = *(v0 + v1);
      v6 = 28;
      break;
    default:
      sub_10000BC70(*(v0 + v1) & 1);
      return;
  }

  *(v0 + v1) = v6;
LABEL_38:
  sub_100004124(v5);
  sub_1000051E4();
}

void sub_1000056D4(unsigned __int8 a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *a2;
  v66 = a2[2];
  v67 = a2[1];
  v64 = a2[4];
  v65 = a2[3];
  v63 = a2[5];
  sub_10000EB94(a2, &v73, &qword_10003B7C0, &qword_100026FF8);
  v7 = sub_1000257BC();
  v8 = sub_1000259EC();
  sub_10000EBFC(a2, &qword_10003B7C0, &qword_100026FF8);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v68[0] = swift_slowAlloc();
    *v9 = 136315395;
    v62 = v6;
    if (a1 > 3u)
    {
      v16 = 0x80000001000280B0;
      v17 = 0xD000000000000012;
      if (a1 == 6)
      {
        v17 = 0xD000000000000013;
      }

      else
      {
        v16 = 0x8000000100028090;
      }

      v18 = 0xEF676E6973557065;
      v19 = 0x654B7463656C6573;
      if (a1 != 4)
      {
        v19 = 0x654C7463656C6573;
        v18 = 0xEF65726F4D6E7261;
      }

      if (a1 <= 5u)
      {
        v14 = v19;
      }

      else
      {
        v14 = v17;
      }

      if (a1 <= 5u)
      {
        v15 = v18;
      }

      else
      {
        v15 = v16;
      }
    }

    else
    {
      v10 = 0xEE0065756E69746ELL;
      v11 = 0x6F437463656C6573;
      if (a1 != 2)
      {
        v11 = 0xD000000000000014;
        v10 = 0x80000001000280D0;
      }

      v12 = 0x8000000100028110;
      v13 = 0xD000000000000011;
      if (a1)
      {
        v13 = 0xD000000000000010;
        v12 = 0x80000001000280F0;
      }

      if (a1 <= 1u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11;
      }

      if (a1 <= 1u)
      {
        v15 = v12;
      }

      else
      {
        v15 = v10;
      }
    }

    v20 = sub_10001EB4C(v14, v15, v68);

    *(v9 + 4) = v20;
    *(v9 + 12) = 2081;
    v21 = *(a2 + 1);
    v73 = *a2;
    v74 = v21;
    v22 = *(a2 + 3);
    v75 = *(a2 + 2);
    v76 = v22;
    sub_10000EB94(a2, &v69, &qword_10003B7C0, &qword_100026FF8);
    sub_100002370(&qword_10003B7C0, &qword_100026FF8);
    v23 = sub_1000258EC();
    v25 = sub_10001EB4C(v23, v24, v68);

    *(v9 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v7, v8, "User event: %s, context: %{private}s", v9, 0x16u);
    swift_arrayDestroy();

    v6 = v62;
    if (a2[7])
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (a2[7])
    {
LABEL_27:
      v26 = (v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
      v27 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
      v73 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
      v74 = v27;
      v28 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
      v75 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
      v76 = v28;
      v29 = *(a2 + 1);
      *v26 = *a2;
      v26[1] = v29;
      v30 = *(a2 + 3);
      v26[2] = *(a2 + 2);
      v26[3] = v30;
      sub_10000EB94(a2, &v69, &qword_10003B7C0, &qword_100026FF8);
      sub_10000EB94(a2, &v69, &qword_10003B7C0, &qword_100026FF8);
      sub_10000E780(v6, v67, v66, v65, v64, v63);

      sub_10000EBFC(&v73, &qword_10003B7C0, &qword_100026FF8);
      sub_1000043A8();
      sub_10000EBFC(a2, &qword_10003B7C0, &qword_100026FF8);
      sub_10000EBFC(a2, &qword_10003B7C0, &qword_100026FF8);
    }
  }

  LODWORD(v31) = a1;
  if (a1 > 3u)
  {
LABEL_40:
    if (v31 > 5)
    {
      if (v31 == 6)
      {
        if ((sub_100005FE4(12) & 1) == 0)
        {
          return;
        }

        v38 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
        swift_beginAccess();
        v60 = *(v3 + v38);
        v39 = 13;
      }

      else
      {
        if ((sub_100005FE4(17) & 1) == 0)
        {
          return;
        }

        v38 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
        swift_beginAccess();
        v60 = *(v3 + v38);
        v39 = 16;
      }
    }

    else if (v31 == 4)
    {
      if ((sub_100005FE4(12) & 1) == 0)
      {
        return;
      }

      v38 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
      swift_beginAccess();
      v60 = *(v3 + v38);
      v39 = 15;
    }

    else
    {
LABEL_63:
      if ((sub_100005FE4(9) & 1) == 0)
      {
        return;
      }

      v38 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
      swift_beginAccess();
      v60 = *(v3 + v38);
      v39 = 7;
    }
  }

  else
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        if ((sub_100005FE4(22) & 1) == 0)
        {
          return;
        }

        v38 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
        swift_beginAccess();
        v60 = *(v3 + v38);
        v39 = 21;
        goto LABEL_76;
      }

      if ((sub_100006238(&off_100034F50) & 1) == 0)
      {
        return;
      }

      v38 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    }

    else
    {
      if (!a1)
      {
        if ((sub_100005FE4(3) & 1) == 0)
        {
          return;
        }

        v32 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stateStack);
        v33 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_recoverableStates);

        swift_beginAccess();
        while (1)
        {
          v34 = *(v32 + 16);
          if (!*(v34 + 2))
          {
            break;
          }

          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v32 + 16) = v34;
          if (isUniquelyReferenced_nonNull_native)
          {
            v31 = *(v34 + 2);
            if (!v31)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v34 = sub_10000DFD4(v34);
            v31 = *(v34 + 2);
            if (!v31)
            {
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          v36 = v31 - 1;
          v37 = v34[v36 + 32];
          *(v34 + 2) = v36;
          *(v32 + 16) = v34;
          swift_endAccess();
          if (sub_100006A7C(v37, v33))
          {

            v49 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 16);
            v69 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext);
            v70 = v49;
            v50 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 48);
            v52 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext);
            v51 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 16);
            v71 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 32);
            v53 = (v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
            v54 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
            v55 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
            v72 = v50;
            v73 = v54;
            v56 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
            v57 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
            v74 = v55;
            v75 = v56;
            v76 = v57;
            v58 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 48);
            v53[2] = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 32);
            v53[3] = v58;
            *v53 = v52;
            v53[1] = v51;
            sub_10000EB94(&v69, v68, &qword_10003B7C0, &qword_100026FF8);
            sub_10000EB94(&v69, v68, &qword_10003B7C0, &qword_100026FF8);
            sub_10000EBFC(&v73, &qword_10003B7C0, &qword_100026FF8);
            sub_1000043A8();
            sub_10000EBFC(&v69, &qword_10003B7C0, &qword_100026FF8);
            v59 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
            swift_beginAccess();
            v60 = *(v3 + v59);
            *(v3 + v59) = v37;
            goto LABEL_77;
          }
        }

        v38 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
        swift_beginAccess();
        v60 = *(v3 + v38);
        v39 = 29;
        goto LABEL_76;
      }

      if ((sub_100006238(&off_100034F28) & 1) == 0)
      {
        return;
      }

      v40 = (v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
      v41 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
      v73 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
      v74 = v41;
      v42 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
      v75 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
      v76 = v42;
      v43 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        v44 = v40[1];
        v69 = *v40;
        v70 = v44;
        v71 = v40[2];
        *&v72 = *(v40 + 6);
        *(&v72 + 1) = *(&v42 + 1);
        sub_10000EB94(&v73, v68, &qword_10003B7C0, &qword_100026FF8);

        sub_10000EBFC(&v69, &qword_10003B7C0, &qword_100026FF8);
        if (v43 >> 62)
        {
          goto LABEL_72;
        }

        v45 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v45)
        {
          while (1)
          {
            v46 = 0;
            while ((v43 & 0xC000000000000001) != 0)
            {
              v47 = sub_100025BBC();
              v48 = v46 + 1;
              if (__OFADD__(v46, 1))
              {
LABEL_62:
                __break(1u);
                goto LABEL_63;
              }

LABEL_58:
              *(v47 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_userRequestsSetup) = 1;

              ++v46;
              if (v48 == v45)
              {
                goto LABEL_73;
              }
            }

            if (v46 < *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              break;
            }

            __break(1u);
LABEL_72:
            v45 = sub_100025C3C();
            if (!v45)
            {
              goto LABEL_73;
            }
          }

          v48 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_62;
          }

          goto LABEL_58;
        }

LABEL_73:
      }

      else
      {
        v61 = v40[1];
        v69 = *v40;
        v70 = v61;
        v71 = v40[2];
        v72 = *(v40 + 6);
        sub_10000EB94(&v73, v68, &qword_10003B7C0, &qword_100026FF8);
        sub_10000EBFC(&v69, &qword_10003B7C0, &qword_100026FF8);
      }

      v38 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    }

    swift_beginAccess();
    v60 = *(v3 + v38);
    v39 = 18;
  }

LABEL_76:
  *(v3 + v38) = v39;
LABEL_77:
  sub_100004124(v60);
  sub_1000051E4();
}

uint64_t sub_100005FE4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  v5 = _s21MediaSetupViewService0B5StateO2eeoiySbAC_ACtFZ_0(v3, v1[v4]);
  if (v5)
  {
    v6 = sub_1000257BC();
    v7 = sub_1000259EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      v10 = SetupState.description.getter(v3);
      v12 = sub_10001EB4C(v10, v11, &v23);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s (valid)", v8, 0xCu);
      sub_10000E734(v9);

LABEL_6:
    }
  }

  else
  {
    v13 = v1;
    v6 = sub_1000257BC();
    v14 = sub_100025A1C();

    if (os_log_type_enabled(v6, v14))
    {
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v15 = 136315394;
      v16 = SetupState.description.getter(v3);
      v18 = sub_10001EB4C(v16, v17, &v23);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v19 = SetupState.description.getter(v2[v4]);
      v21 = sub_10001EB4C(v19, v20, &v23);

      *(v15 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v6, v14, "State mismatch: expected '%s', have '%s'", v15, 0x16u);
      swift_arrayDestroy();

      goto LABEL_6;
    }
  }

  return v5 & 1;
}

uint64_t sub_100006238(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  v5 = sub_100006A7C(v1[v4], a1);
  v6 = v1;
  v7 = sub_1000257BC();
  if (v5)
  {
    v8 = sub_1000259EC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315138;
      v11 = SetupState.description.getter(v2[v4]);
      v13 = sub_10001EB4C(v11, v12, &v23);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s (valid)", v9, 0xCu);
      sub_10000E734(v10);

LABEL_6:
    }
  }

  else
  {
    v14 = sub_100025A1C();

    if (os_log_type_enabled(v7, v14))
    {
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v15 = 136315394;
      v16 = SetupState.description.getter(v2[v4]);
      v18 = sub_10001EB4C(v16, v17, &v23);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v19 = SetupState.description.getter(v2[v4]);
      v21 = sub_10001EB4C(v19, v20, &v23);

      *(v15 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v7, v14, "State mismatch: expected '%s', have '%s'", v15, 0x16u);
      swift_arrayDestroy();

      goto LABEL_6;
    }
  }

  return v5 & 1;
}

void sub_100006484()
{
  v1 = v0;
  v2 = sub_10002577C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004708();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 serviceID];

    sub_10002574C();
    v9 = sub_10002572C();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    v12 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_defaults);
    if (!v12)
    {
LABEL_13:

      return;
    }

    v13 = sub_1000258BC();
    v14 = [v12 arrayForKey:v13];

    if (!v14 || (v15 = sub_10002597C(), v14, v16 = sub_10001C5A8(v15), v17 = , !v16))
    {
      sub_100002370(&unk_10003B4E0, &qword_100026FF0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100026BD0;
      *(v22 + 32) = v9;
      *(v22 + 40) = v11;
      isa = sub_10002596C().super.isa;

      v24 = sub_1000258BC();
      [v12 setObject:isa forKey:v24];

      return;
    }

    v35[0] = v9;
    v35[1] = v11;
    __chkstk_darwin(v17);
    v34[-2] = v35;

    v18 = sub_10001C6BC(sub_10000E714, &v34[-4], v16);

    if (v18)
    {

      goto LABEL_13;
    }

    v25 = sub_1000257BC();
    v26 = sub_1000259EC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_10001EB4C(v9, v11, v35);
      _os_log_impl(&_mh_execute_header, v25, v26, "noted successful setup of %s", v27, 0xCu);
      sub_10000E734(v28);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_100013BC4(0, *(v16 + 2) + 1, 1, v16);
    }

    v30 = *(v16 + 2);
    v29 = *(v16 + 3);
    if (v30 >= v29 >> 1)
    {
      v16 = sub_100013BC4((v29 > 1), v30 + 1, 1, v16);
    }

    *(v16 + 2) = v30 + 1;
    v31 = &v16[16 * v30];
    *(v31 + 4) = v9;
    *(v31 + 5) = v11;
    v32 = sub_10002596C().super.isa;

    v33 = sub_1000258BC();
    [v12 setObject:v32 forKey:v33];
  }

  else
  {
    v34[0] = sub_1000257BC();
    v19 = sub_100025A0C();
    if (os_log_type_enabled(v34[0], v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v34[0], v19, "Failed to note service as a successful onboard. had no serviceID", v20, 2u);
    }

    v21 = v34[0];
  }
}

BOOL sub_100006970(uint64_t a1, uint64_t a2)
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

    sub_10002577C();
    ++v2;
    sub_10000EA84(&qword_10003B500, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  }

  while ((sub_1000258AC() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_100006A7C(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    while (1)
    {
      v5 = *v3++;
      v4 = v5;
      switch(v5)
      {
        case 2:
          if (a1 != 2)
          {
            goto LABEL_4;
          }

          return 1;
        case 3:
          if (a1 == 3)
          {
            return 1;
          }

          goto LABEL_4;
        case 4:
          if (a1 == 4)
          {
            return 1;
          }

          goto LABEL_4;
        case 5:
          if (a1 == 5)
          {
            return 1;
          }

          goto LABEL_4;
        case 6:
          if (a1 == 6)
          {
            return 1;
          }

          goto LABEL_4;
        case 7:
          if (a1 == 7)
          {
            return 1;
          }

          goto LABEL_4;
        case 8:
          if (a1 == 8)
          {
            return 1;
          }

          goto LABEL_4;
        case 9:
          if (a1 == 9)
          {
            return 1;
          }

          goto LABEL_4;
        case 10:
          if (a1 == 10)
          {
            return 1;
          }

          goto LABEL_4;
        case 11:
          if (a1 == 11)
          {
            return 1;
          }

          goto LABEL_4;
        case 12:
          if (a1 == 12)
          {
            return 1;
          }

          goto LABEL_4;
        case 13:
          if (a1 == 13)
          {
            return 1;
          }

          goto LABEL_4;
        case 14:
          if (a1 == 14)
          {
            return 1;
          }

          goto LABEL_4;
        case 15:
          if (a1 == 15)
          {
            return 1;
          }

          goto LABEL_4;
        case 16:
          if (a1 == 16)
          {
            return 1;
          }

          goto LABEL_4;
        case 17:
          if (a1 == 17)
          {
            return 1;
          }

          goto LABEL_4;
        case 18:
          if (a1 == 18)
          {
            return 1;
          }

          goto LABEL_4;
        case 19:
          if (a1 == 19)
          {
            return 1;
          }

          goto LABEL_4;
        case 20:
          if (a1 == 20)
          {
            return 1;
          }

          goto LABEL_4;
        case 21:
          if (a1 == 21)
          {
            return 1;
          }

          goto LABEL_4;
        case 22:
          if (a1 == 22)
          {
            return 1;
          }

          goto LABEL_4;
        case 23:
          if (a1 == 23)
          {
            return 1;
          }

          goto LABEL_4;
        case 24:
          if (a1 == 24)
          {
            return 1;
          }

          goto LABEL_4;
        case 25:
          if (a1 == 25)
          {
            return 1;
          }

          goto LABEL_4;
        case 26:
          if (a1 == 26)
          {
            return 1;
          }

          goto LABEL_4;
        case 27:
          if (a1 == 27)
          {
            return 1;
          }

          goto LABEL_4;
        case 28:
          if (a1 == 28)
          {
            return 1;
          }

          goto LABEL_4;
        case 29:
          if (a1 != 29)
          {
            goto LABEL_4;
          }

          return 1;
        default:
          if ((a1 - 2) >= 0x1Cu && ((v4 ^ a1) & 1) == 0)
          {
            return 1;
          }

LABEL_4:
          if (!--v2)
          {
            return 0;
          }

          break;
      }
    }
  }

  return 0;
}

void sub_100006D18(unsigned __int8 a1)
{
  v3 = sub_10002577C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 != 2 && a1 != 3)
    {
      return;
    }

    goto LABEL_9;
  }

  if (a1)
  {
LABEL_9:
    v8 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_didEncounterErrorDuringSetup);
    v9 = objc_allocWithZone(MSSetupEarlyExitEvent);
    v10 = sub_1000258BC();

    v11 = [v9 initWithExitReason:v10 didEncounterError:v8];

    v12 = sub_100004708();
    if (v12)
    {
      v13 = v12;
      v14 = [v12 serviceID];

      sub_10002574C();
      sub_10002572C();
      (*(v4 + 8))(v6, v3);
      v15 = sub_1000258BC();
    }

    else
    {
      v15 = 0;
    }

    [v11 setServiceID:v15];

    [objc_opt_self() sendSetupEvent:v11];
    return;
  }

  if (!*(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession__completedSetupEvent))
  {
    v7 = sub_100007080();
    if (v7)
    {
      v23 = v7;
    }

    else
    {
      v16 = sub_1000257BC();
      v17 = sub_1000259EC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "completed setup but somehow did it without a service or serviceID. recording error", v18, 2u);
      }

      v19 = objc_allocWithZone(MSSetupFailedEvent);
      v20 = sub_1000258BC();
      v23 = [v19 initWithErrorNamed:v20];
    }

    [objc_opt_self() sendSetupEvent:v23];
    v21 = v23;
  }
}

void *sub_100007080()
{
  v1 = sub_10002570C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002577C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = [v13 serviceID];
  if (v14)
  {
    v25 = v2;
    v15 = v14;
    sub_10002574C();

    (*(v6 + 32))(v11, v9, v5);
    v16 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession__completedSetupEvent;
    if (*(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession__completedSetupEvent))
    {

      (*(v6 + 8))(v11, v5);
      v17 = *(v0 + v16);
      v18 = v17;
    }

    else
    {
      v17 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_setupAnalyticEvent);
      v24 = v0;
      sub_10002572C();
      v19 = sub_1000258BC();

      [v17 setServiceID:v19];

      sub_1000256FC();
      isa = sub_1000256EC().super.isa;
      (*(v25 + 8))(v4, v1);
      [v17 setEndTime:isa];

      (*(v6 + 8))(v11, v5);
      v21 = *(v24 + v16);
      *(v24 + v16) = v17;
      v22 = v17;
    }
  }

  else
  {

    return 0;
  }

  return v17;
}

id SetupSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetupSession.init()()
{
  v1 = v0;
  v2 = sub_10002581C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homesToSetup] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state] = 4;
  *&v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount] = 0;
  v6 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_dispatchQueue;
  sub_10000E970(0, &qword_10003B3A0, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v5, enum case for DispatchQoS.QoSClass.default(_:), v2);
  v7 = sub_100025A6C();
  (*(v3 + 8))(v5, v2);
  *&v1[v6] = v7;
  v8 = &v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostAuditToken];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = &v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_progressHandler];
  *v10 = 0;
  v10[1] = 0;
  *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags] = 0;
  v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_didEncounterErrorDuringSetup] = 0;
  sub_1000257CC();
  *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist] = 0;
  v11 = &v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel];
  v11[1] = 0;
  v11[2] = 0;
  *v11 = 0;
  v12 = &v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configPublicKey];
  *v12 = 0;
  v12[1] = 0;
  v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeTopology] = 3;
  *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager] = 0;
  v13 = &v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext];
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v14 = &v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext];
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  v15 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stateStack;
  sub_100002370(&qword_10003B290, &unk_100026BE0);
  v16 = swift_allocObject();
  *(v16 + 16) = _swiftEmptyArrayStorage;
  *&v1[v15] = v16;
  *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_recoverableStates] = &off_100034FA0;
  v17 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_setupAnalyticEvent;
  *&v1[v17] = [objc_allocWithZone(MSSetupCompleteEvent) init];
  v18 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_defaults;
  v19 = objc_allocWithZone(NSUserDefaults);
  v20 = sub_1000258BC();
  v21 = [v19 initWithSuiteName:v20];

  *&v1[v18] = v21;
  *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession____lazy_storage___configuration] = 0;
  *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession____lazy_storage___mediaService] = 1;
  *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession__completedSetupEvent] = 0;
  v22 = type metadata accessor for SetupSession(0);
  v24.receiver = v1;
  v24.super_class = v22;
  return objc_msgSendSuper2(&v24, "init");
}

id SetupSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetupSession(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000078F4(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist;
  *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist) = 1;
  v3 = (v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostAuditToken);
  if (*(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostAuditToken + 32))
  {
    oslog = sub_1000257BC();
    v4 = sub_100025A0C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "### Missing host audit token?";
LABEL_8:
      _os_log_impl(&_mh_execute_header, oslog, v4, v6, v5, 2u);
    }
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount);
    if (v7)
    {
      v9 = v3[2];
      v8 = v3[3];
      v11 = *v3;
      v10 = v3[1];
      type metadata accessor for EntitlementProxy(0);
      swift_allocObject();
      v12 = v7;
      sub_100016D04(v11, v10, v9, v8);
      LOBYTE(v8) = sub_10001688C(v12);

      *(v2 + 3) = v8 & 1;
      return;
    }

    oslog = sub_1000257BC();
    v4 = sub_100025A0C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "### Missing setup context?";
      goto LABEL_8;
    }
  }
}

uint64_t sub_100007AC4(char a1, _OWORD *a2)
{
  v5 = sub_10002580C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002583C();
  result = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_progressHandler);
  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_progressHandler + 8);
    v23 = v11;
    v24 = result;
    sub_10000E970(0, &qword_10003B3A0, OS_dispatch_queue_ptr);

    v22 = sub_100025A4C();
    v16 = swift_allocObject();
    v17 = a2[1];
    *(v16 + 40) = *a2;
    *(v16 + 56) = v17;
    v18 = a2[3];
    *(v16 + 72) = a2[2];
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;
    v21 = v15;
    *(v16 + 32) = a1;
    *(v16 + 88) = v18;
    aBlock[4] = sub_10000EDB8;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C280;
    aBlock[3] = &unk_1000353A8;
    v19 = _Block_copy(aBlock);
    sub_10000EDEC(v14, v15);
    sub_10000EB94(a2, &v25, &qword_10003B7C0, &qword_100026FF8);

    sub_10002582C();
    v25 = _swiftEmptyArrayStorage;
    sub_10000EA84(&qword_10003B538, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100002370(&qword_10003B540, "V\x1B");
    sub_10000ECA4(&qword_10003B548, &qword_10003B540, "V\x1B", &protocol conformance descriptor for [A]);
    sub_100025B1C();
    v20 = v22;
    sub_100025A5C();
    _Block_release(v19);

    sub_10000EDFC(v14, v21);
    (*(v6 + 8))(v8, v5);
    return (*(v23 + 8))(v13, v24);
  }

  return result;
}

void sub_100007E28()
{
  v0 = sub_100004708();
  if (v0)
  {
    v11 = v0;
    v1 = SetupSession.targetHome.getter();
    if (v1)
    {
      v2 = v1;
      v3 = sub_1000257BC();
      v4 = sub_1000259EC();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Switching to new service", v5, 2u);
      }

      v6 = sub_100004668();
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v2;
      aBlock[4] = sub_10000EB8C;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000088E4;
      aBlock[3] = &unk_100035268;
      v9 = _Block_copy(aBlock);
      v10 = v2;

      [v6 switchUserAccountInfo:v11 home:v10 completion:v9];
      _Block_release(v9);
    }

    else
    {
      sub_10000808C(2u, 0x6567726174206F4ELL, 0xEF3F656D6F682074, 1);
    }
  }

  else
  {

    sub_10000808C(2u, 0xD000000000000010, 0x80000001000282C0, 1);
  }
}

void sub_10000808C(unsigned __int8 a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  v41 = a4;
  v9 = sub_10002577C();
  v39 = *(v9 - 8);
  v40 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_1000257BC();
  v13 = sub_100025A0C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v49[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10001EB4C(a2, a3, v49);
    _os_log_impl(&_mh_execute_header, v12, v13, "### %s", v14, 0xCu);
    sub_10000E734(v15);
  }

  v16 = (v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v17 = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
  v43[0] = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v43[1] = v17;
  v18 = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
  v20 = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v19 = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
  v43[2] = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
  v43[3] = v18;
  v21 = (v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext);
  v22 = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 16);
  v44[0] = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext);
  v44[1] = v22;
  v23 = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 48);
  v44[2] = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 32);
  v44[3] = v23;
  v24 = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
  v21[2] = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
  v21[3] = v24;
  *v21 = v20;
  v21[1] = v19;
  sub_10000EB94(v43, v49, &qword_10003B7C0, &qword_100026FF8);
  sub_10000EBFC(v44, &qword_10003B7C0, &qword_100026FF8);
  v46 = 0u;
  v47 = 0u;
  v45 = xmmword_100026E90;
  LOBYTE(v48) = a1;
  *(&v48 + 1) = _swiftEmptyArrayStorage;
  v25 = v16[1];
  v49[0] = *v16;
  v49[1] = v25;
  v26 = v16[3];
  v49[2] = v16[2];
  v49[3] = v26;
  v27 = v48;
  v16[2] = 0u;
  v16[3] = v27;
  v28 = v46;
  *v16 = v45;
  v16[1] = v28;
  sub_10000E7DC(&v45, &v42);
  sub_10000EBFC(v49, &qword_10003B7C0, &qword_100026FF8);
  sub_1000043A8();
  sub_10000E838(&v45);
  v29 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  v30 = *(v5 + v29);
  *(v5 + v29) = 3;
  sub_100004124(v30);
  *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_didEncounterErrorDuringSetup) = 1;
  v31 = objc_allocWithZone(MSSetupFailedEvent);
  v32 = sub_1000258BC();

  v33 = [v31 initWithErrorNamed:v32];

  v34 = sub_100004708();
  if (v34)
  {
    v35 = v34;
    v36 = [v34 serviceID];

    sub_10002574C();
    sub_10002572C();
    (*(v39 + 8))(v11, v40);
    v37 = sub_1000258BC();
  }

  else
  {
    v37 = 0;
  }

  [v33 setServiceID:v37];

  [objc_opt_self() sendSetupEvent:v33];
  if (v41)
  {
    sub_1000051E4();
  }
}

void sub_100008534(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10002577C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = a3;
    swift_errorRetain();
    v12 = sub_1000257BC();
    v13 = sub_1000259EC();

    if (os_log_type_enabled(v12, v13))
    {
      v33 = v13;
      v34 = v12;
      v14 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35[0] = v32;
      *v14 = 136381187;
      v15 = [v11 name];
      v16 = sub_1000258CC();
      v18 = v17;

      v19 = sub_10001EB4C(v16, v18, v35);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2081;
      v20 = [v11 uniqueIdentifier];
      sub_10002574C();

      sub_10000EA84(&qword_10003B4F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_100025C9C();
      v23 = v22;
      (*(v6 + 8))(v8, v5);
      v24 = sub_10001EB4C(v21, v23, v35);

      *(v14 + 14) = v24;
      *(v14 + 22) = 2080;
      if (a1)
      {
        swift_getErrorValue();
        v25 = sub_100025CDC();
        v27 = v26;
      }

      else
      {
        v27 = 0xE300000000000000;
        v25 = 7104878;
      }

      v28 = sub_10001EB4C(v25, v27, v35);

      *(v14 + 24) = v28;
      v12 = v34;
      _os_log_impl(&_mh_execute_header, v34, v33, "Setup: %{private}s (%{private}s error=%s", v14, 0x20u);
      swift_arrayDestroy();
    }

    if (a1)
    {
      sub_10000808C(3u, 0x6166207075746553, 0xEC00000064656C69, 1);
    }

    else
    {
      v10[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist + 6] = 1;
      v29 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
      swift_beginAccess();
      v30 = v10[v29];
      v10[v29] = 13;
      sub_100004124(v30);
      sub_1000051E4();
    }
  }
}

void sub_1000088EC()
{
  v1 = v0;
  v2 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v80 - v6;
  v8 = sub_10002577C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v80 - v14;
  __chkstk_darwin(v13);
  v17 = &v80 - v16;
  if ((sub_100005FE4(4) & 1) == 0)
  {
    return;
  }

  if (*&v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags])
  {

    sub_10000C2C4();
    return;
  }

  v18 = &v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist];
  v19 = v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist + 1];
  v87 = &v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist];
  if ((v19 & 1) == 0)
  {
    v20 = sub_1000257BC();
    v21 = sub_1000259EC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v86 = v17;
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Starting HomeKit", v22, 2u);
      v17 = v86;
    }

    v23 = [objc_allocWithZone(HMHomeManager) init];
    v24 = *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager];
    *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager] = v23;
    v25 = v23;

    if (v25)
    {
      [v25 setDelegate:v1];
    }

    v18 = v87;
    v87[1] = 1;
  }

  if (v18[4] != 1)
  {
    v32 = sub_1000257BC();
    v33 = sub_100025A1C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Still waiting on HomeKit update...";
LABEL_27:
      _os_log_impl(&_mh_execute_header, v32, v33, v35, v34, 2u);
    }

LABEL_28:

    v36 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v37 = v1[v36];
    v1[v36] = 5;
    sub_100004124(v37);
    return;
  }

  if ((v18[7] & 1) == 0)
  {
    v26 = sub_1000257BC();
    v27 = sub_1000259EC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v86 = v17;
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Starting service ID mapping", v28, 2u);
      v17 = v86;
    }

    sub_10000C4C8();
  }

  v29 = *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount];
  if (!v29)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_25;
  }

  v30 = [v29 serviceID];
  if (v30)
  {
    v31 = v30;
    sub_10002574C();

    (*(v9 + 56))(v5, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v5, 1, 1, v8);
  }

  sub_10000E88C(v5, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_25:
    sub_10000EBFC(v7, &qword_10003B4F0, &qword_100027000);
    v32 = sub_1000257BC();
    v33 = sub_1000259EC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Still waiting on serviceID....";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v85 = *(v9 + 32);
  v86 = v9 + 32;
  v38 = v85(v17, v7, v8);
  v39 = v87;
  if ((v87[5] & 1) == 0)
  {
    v40 = *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager];
    if (v40)
    {
      v41 = [v40 homes];
      sub_10000E970(0, &qword_10003B388, HMHome_ptr);
      v42 = sub_10002597C();
    }

    else
    {
      v42 = _swiftEmptyArrayStorage;
    }

    if (v42 >> 62)
    {
      v43 = sub_100025C3C();
      if (v43)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43)
      {
LABEL_36:
        v84 = v9;
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10001F1D8(0, v43 & ~(v43 >> 63), 0);
        if (v43 < 0)
        {
          __break(1u);
          return;
        }

        v44 = 0;
        v45 = aBlock[0];
        v46 = v42;
        v81 = v42 & 0xC000000000000001;
        v82 = v43;
        v83 = v42;
        do
        {
          if (v81)
          {
            v47 = sub_100025BBC();
          }

          else
          {
            v47 = *(v46 + 8 * v44 + 32);
          }

          v48 = v47;
          v49 = [v47 currentUser];
          v50 = [v49 uniqueIdentifier];

          sub_10002574C();
          aBlock[0] = v45;
          v52 = *(v45 + 16);
          v51 = *(v45 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_10001F1D8((v51 > 1), v52 + 1, 1);
            v45 = aBlock[0];
          }

          ++v44;
          *(v45 + 16) = v52 + 1;
          v85((v45 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v52), v12, v8);
          v46 = v83;
        }

        while (v82 != v44);

        v9 = v84;
        goto LABEL_47;
      }
    }

LABEL_47:
    (*(v9 + 16))(v15, v17, v8);

    v53 = sub_1000257BC();
    v54 = sub_1000259EC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      aBlock[0] = v86;
      *v55 = 136380931;
      v56 = sub_10002598C();
      LODWORD(v85) = v54;
      v58 = v9;
      v59 = sub_10001EB4C(v56, v57, aBlock);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      sub_10000EA84(&qword_10003B4F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v60 = sub_100025C9C();
      v62 = v61;
      (*(v58 + 8))(v15, v8);
      v63 = sub_10001EB4C(v60, v62, aBlock);
      v9 = v58;

      *(v55 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v53, v85, "Getting configuration info for userIDs %{private}s serviceID %s", v55, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v15, v8);
    }

    v64 = sub_100004668();
    isa = sub_10002596C().super.isa;

    v66 = sub_10002573C().super.isa;
    v67 = swift_allocObject();
    *(v67 + 16) = v1;
    aBlock[4] = sub_10000E934;
    aBlock[5] = v67;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000CBA4;
    aBlock[3] = &unk_100035150;
    v68 = _Block_copy(aBlock);
    v69 = v1;

    [v64 getServiceConfigurationInfo:isa serviceID:v66 completion:v68];
    _Block_release(v68);

    v39 = v87;
    v87[5] = 1;
  }

  if (*&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 8])
  {
    if ((*v39 & 1) == 0)
    {
      sub_1000078F4(v38);
      v39 = v87;
    }

    if (v39[3] == 1)
    {
      v70 = sub_1000257BC();
      v71 = sub_1000259EC();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "Preflight completed, all info loaded.", v72, 2u);
      }

      v73 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
      swift_beginAccess();
      v74 = v1[v73];
      v1[v73] = 6;
      sub_100004124(v74);
      sub_1000051E4();
    }

    else
    {
      sub_10000808C(1u, 0xD000000000000033, 0x8000000100028160, 1);
    }
  }

  else
  {
    v75 = sub_1000257BC();
    v76 = sub_100025A1C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Still waiting on config model...", v77, 2u);
    }

    v78 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v79 = v1[v78];
    v1[v78] = 5;
    sub_100004124(v79);
  }

  (*(v9 + 8))(v17, v8);
}

void sub_1000094DC()
{
  v1 = v0;
  if (sub_100005FE4(6))
  {
    v2 = v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel;
    v3 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 8);
    if (v3)
    {
      v4 = *v2;
      v5 = *(v2 + 16);
      sub_10000EA20(*v2, *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 8));
      v6 = sub_10001A394(v3, v5);
      v7 = sub_1000257BC();
      v8 = sub_1000259EC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 67109120;
        *(v9 + 4) = v6;
        _os_log_impl(&_mh_execute_header, v7, v8, "Should offer 'learn more' = %{BOOL}d", v9, 8u);
      }

      if (v6)
      {
        v10 = 8;
      }

      else
      {
        v10 = 10;
      }

      v11 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
      swift_beginAccess();
      v12 = *(v1 + v11);
      *(v1 + v11) = v10;
      sub_100004124(v12);
      sub_1000051E4();
    }

    else
    {
      oslog = sub_1000257BC();
      v13 = sub_100025A0C();
      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v13, "### No config model?", v14, 2u);
      }
    }
  }
}

uint64_t sub_1000096DC()
{
  v1 = sub_10002580C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002583C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100005FE4(7);
  if (result)
  {
    memset(v21, 0, 64);
    sub_100007AC4(8, v21);
    v17 = v2;
    v18 = v5;
    v10 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v11 = v0[v10];
    v0[v10] = 9;
    sub_100004124(v11);
    v12 = *&v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_dispatchQueue];
    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    aBlock[4] = sub_10000EA60;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C280;
    aBlock[3] = &unk_1000351F0;
    v14 = _Block_copy(aBlock);
    v15 = v12;
    v16 = v0;
    sub_10002582C();
    v19 = _swiftEmptyArrayStorage;
    sub_10000EA84(&qword_10003B538, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100002370(&qword_10003B540, "V\x1B");
    sub_10000ECA4(&qword_10003B548, &qword_10003B540, "V\x1B", &protocol conformance descriptor for [A]);
    sub_100025B1C();
    sub_100025A5C();
    _Block_release(v14);

    (*(v17 + 8))(v4, v1);
    (*(v6 + 8))(v8, v18);
  }

  return result;
}

void sub_100009A0C()
{
  v1 = v0;
  v2 = sub_10002577C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100005FE4(10))
  {
    v6 = (v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel);
    v7 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 8);
    if (v7)
    {
      v8 = *v6;
      v9 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount);
      if (v9)
      {
        sub_10000EA20(*v6, *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 8));
        v10 = v9;
        sub_100004D2C(v5);
        sub_10001A6D4(v10, v5, v7, &v39);
        v30 = *(&v39 + 1);
        v31 = v39;
        v32 = v40;
        v28 = v42;
        v29 = v41;
        v27 = *(&v42 + 1);
        (*(v3 + 8))(v5, v2);
        v45[0] = v39;
        v44 = v41;
        v43 = v42;
        sub_10000EB94(v45, v38, &qword_10003B530, &unk_100027020);
        sub_10000EB94(&v44, v38, &qword_10003B550, &qword_100027030);
        sub_10000EB94(&v43, v38, &qword_10003B530, &unk_100027020);
        v11 = sub_1000257BC();
        v12 = sub_1000259EC();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 67109120;
          v14 = v40;
          *(v13 + 4) = v40 & 1;
          sub_10000EBFC(v45, &qword_10003B530, &unk_100027020);
          sub_10000EBFC(&v44, &qword_10003B550, &qword_100027030);
          sub_10000EBFC(&v43, &qword_10003B530, &unk_100027020);
          _os_log_impl(&_mh_execute_header, v11, v12, "Account mismatch = %{BOOL}d", v13, 8u);

          if ((v14 & 1) == 0)
          {
LABEL_6:
            v15 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
            swift_beginAccess();
            v16 = *(v1 + v15);
            *(v1 + v15) = 15;
            sub_100004124(v16);
LABEL_15:
            sub_1000051E4();
            sub_10000EBFC(v45, &qword_10003B530, &unk_100027020);
            sub_10000EBFC(&v44, &qword_10003B550, &qword_100027030);
            sub_10000EBFC(&v43, &qword_10003B530, &unk_100027020);

            return;
          }
        }

        else
        {
          sub_10000EBFC(v45, &qword_10003B530, &unk_100027020);
          sub_10000EBFC(&v44, &qword_10003B550, &qword_100027030);
          sub_10000EBFC(&v43, &qword_10003B530, &unk_100027020);

          if ((v40 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v18 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
        swift_beginAccess();
        v19 = *(v1 + v18);
        *(v1 + v18) = 11;
        sub_100004124(v19);
        *&v34 = v31;
        *(&v34 + 1) = v30;
        *&v35 = v32;
        *(&v35 + 1) = v29;
        *&v36 = v28;
        *(&v36 + 1) = v27;
        LOBYTE(v37) = 6;
        *(&v37 + 1) = _swiftEmptyArrayStorage;
        v20 = (v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
        v21 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
        v38[0] = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
        v38[1] = v21;
        v22 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
        v38[2] = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
        v38[3] = v22;
        v23 = v34;
        v24 = v35;
        v25 = v37;
        v20[2] = v36;
        v20[3] = v25;
        *v20 = v23;
        v20[1] = v24;
        sub_10000EB94(v45, v33, &qword_10003B530, &unk_100027020);
        sub_10000EB94(&v44, v33, &qword_10003B550, &qword_100027030);
        sub_10000EB94(&v43, v33, &qword_10003B530, &unk_100027020);
        sub_10000E7DC(&v34, v33);
        sub_10000EBFC(v38, &qword_10003B7C0, &qword_100026FF8);
        sub_1000043A8();
        sub_10000E838(&v34);
        goto LABEL_15;
      }

      v32 = v8;

      sub_10000808C(2u, 0xD000000000000011, 0x80000001000282A0, 1);

      v17 = v32;
    }

    else
    {

      sub_10000808C(2u, 0x69666E6F63206F4ELL, 0xEF3F6F666E692067, 1);
    }
  }
}

void sub_100009F8C()
{
  if (sub_100005FE4(13))
  {
    v1 = v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist;
    if ((*(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags) & 4) != 0)
    {
      *(v1 + 6) = 1;
      goto LABEL_6;
    }

    if (*(v1 + 6))
    {
      [*(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_setupAnalyticEvent) setDidSwitchAccount:1];
LABEL_6:
      v2 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
      swift_beginAccess();
      v3 = *(v0 + v2);
      *(v0 + v2) = 15;
      sub_100004124(v3);
      sub_1000051E4();
      return;
    }

    sub_100007E28();
    v4 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v5 = *(v0 + v4);
    *(v0 + v4) = 14;
    sub_100004124(v5);
  }
}

uint64_t sub_10000A06C()
{
  v1 = sub_10002577C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_100002370(&qword_10003B558, &qword_100027038);
  __chkstk_darwin(v110);
  v6 = &v89 - v5;
  v7 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v89 - v12;
  __chkstk_darwin(v11);
  v15 = &v89 - v14;
  result = sub_100005FE4(15);
  if ((result & 1) == 0)
  {
    return result;
  }

  v17 = v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel;
  v18 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 8);
  if (!v18)
  {
    return result;
  }

  v107 = v2;
  v105 = v6;
  v113 = v13;
  v97 = v10;
  v96 = v4;
  v19 = *(v17 + 16);
  v20 = *v17;
  v112 = v0;
  v21 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount);
  sub_10000EA20(v20, v18);
  v22 = v21;
  v23 = sub_10001812C(v21, v20, v18, v19);
  LOBYTE(v21) = v24;

  v25 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeTopology;
  *(v112 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeTopology) = v21;
  v26 = v112;
  v116 = 0u;
  v114 = xmmword_100026E90;
  v115 = 0u;
  LOBYTE(v117) = 6;
  *(&v117 + 1) = v23;
  v27 = (v112 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v28 = *(v112 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
  v118[0] = *(v112 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v118[1] = v28;
  v29 = *(v112 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
  v118[2] = *(v112 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
  v118[3] = v29;
  v30 = v117;
  v27[2] = 0u;
  v27[3] = v30;
  v31 = v115;
  *v27 = v114;
  v27[1] = v31;
  sub_10000E7DC(&v114, &v119);
  sub_10000E7DC(&v114, &v119);

  sub_10000EBFC(v118, &qword_10003B7C0, &qword_100026FF8);
  sub_1000043A8();
  sub_10000E838(&v114);
  if ((*(v26 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags) & 8) != 0)
  {

    v58 = SetupSession.targetHome.getter();
    if (v58)
    {
      v59 = v58;
      v60 = [v58 isCurrentUserHomeOwner];
    }

    else
    {
      v60 = 0;
    }

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    sub_100007AC4(v60, &v119);
    v61 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v62 = *(v26 + v61);
    *(v26 + v61) = 17;
    goto LABEL_100;
  }

  v111 = v15;
  v92 = v25;
  v90 = v26 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist;
  v32 = *(v26 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist + 2);
  v93 = v23 >> 62;
  v33 = v113;
  if (v32 != 1)
  {
    goto LABEL_44;
  }

  if (v93)
  {
LABEL_113:
    v34 = sub_100025C3C();
    if (v34)
    {
      goto LABEL_7;
    }

LABEL_44:
    if (v93)
    {
      goto LABEL_63;
    }

    v63 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1 = v23 & 0xC000000000000001;
    if (!v63)
    {
      goto LABEL_64;
    }

LABEL_46:
    v26 = 0;
    v33 = v23 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v1)
      {
        v64 = sub_100025BBC();
        v65 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
LABEL_57:
          __break(1u);
LABEL_58:
          v67 = 1;
          goto LABEL_65;
        }
      }

      else
      {
        if (v26 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_60;
        }

        v65 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_57;
        }
      }

      if (*(v64 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_service))
      {
      }

      else
      {
        v66 = *(v64 + 16);

        if ((v66 | 2) == 2)
        {
          v67 = 0;
          goto LABEL_65;
        }
      }

      ++v26;
      if (v65 == v63)
      {
        goto LABEL_58;
      }
    }
  }

  v34 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_44;
  }

LABEL_7:
  v35 = 0;
  v104 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager;
  v103 = v23 & 0xC000000000000001;
  v102 = v23 & 0xFFFFFFFFFFFFFF8;
  v101 = (v107 + 16);
  v109 = (v107 + 56);
  v91 = (v107 + 32);
  v95 = (v107 + 8);
  v98 = v34;
  v99 = v23;
  v100 = (v107 + 48);
  v108 = v1;
  while (!v103)
  {
    if (v35 >= *(v102 + 16))
    {
      goto LABEL_61;
    }

    v37 = *(v23 + 8 * v35 + 32);

    v23 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_60;
    }

LABEL_14:
    v38 = v111;
    (*v101)(v111, v37 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_id, v1);
    v39 = *v109;
    (*v109)(v38, 0, 1, v1);
    v40 = *(v26 + v104);
    v107 = v37;
    v106 = v23;
    if (v40)
    {
      v41 = [v40 currentHome];
      if (v41)
      {
        goto LABEL_24;
      }

      v42 = *(v112 + v104);
      if (v42)
      {
        v43 = [v42 homes];
        sub_10000E970(0, &qword_10003B388, HMHome_ptr);
        v26 = sub_10002597C();
      }

      else
      {
        v26 = _swiftEmptyArrayStorage;
      }

      v33 = v113;
      if (!(v26 >> 62))
      {
LABEL_19:
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_19;
      }
    }

    if (sub_100025C3C())
    {
LABEL_20:
      if ((v26 & 0xC000000000000001) != 0)
      {
        v44 = sub_100025BBC();
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v44 = *(v26 + 32);
      }

      v41 = v44;

LABEL_24:
      v45 = [v41 uniqueIdentifier];

      v33 = v113;
      sub_10002574C();

      v46 = 0;
      goto LABEL_29;
    }

LABEL_28:

    v46 = 1;
LABEL_29:
    v47 = v108;
    v39(v33, v46, 1, v108);
    v48 = *(v110 + 48);
    v49 = v111;
    v50 = v105;
    sub_10000EB94(v111, v105, &qword_10003B4F0, &qword_100027000);
    sub_10000EB94(v33, v50 + v48, &qword_10003B4F0, &qword_100027000);
    v51 = v33;
    v52 = *v100;
    if ((*v100)(v50, 1, v47) == 1)
    {
      sub_10000EBFC(v51, &qword_10003B4F0, &qword_100027000);
      sub_10000EBFC(v49, &qword_10003B4F0, &qword_100027000);
      v36 = v52(v50 + v48, 1, v47);
      v26 = v112;
      v23 = v99;
      if (v36 != 1)
      {
LABEL_9:
        sub_10000EBFC(v50, &qword_10003B558, &qword_100027038);
        goto LABEL_10;
      }

      sub_10000EBFC(v50, &qword_10003B4F0, &qword_100027000);
      v57 = v107;
LABEL_43:
      *(v57 + 17) = 1;

      goto LABEL_44;
    }

    v53 = v97;
    sub_10000EB94(v50, v97, &qword_10003B4F0, &qword_100027000);
    v54 = v52(v50 + v48, 1, v47);
    v23 = v99;
    if (v54 == 1)
    {
      sub_10000EBFC(v113, &qword_10003B4F0, &qword_100027000);
      sub_10000EBFC(v111, &qword_10003B4F0, &qword_100027000);
      (*v95)(v53, v47);
      v26 = v112;
      goto LABEL_9;
    }

    v55 = v96;
    (*v91)(v96, v50 + v48, v47);
    sub_10000EA84(&qword_10003B500, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v94 = sub_1000258AC();
    v56 = *v95;
    (*v95)(v55, v47);
    sub_10000EBFC(v113, &qword_10003B4F0, &qword_100027000);
    sub_10000EBFC(v111, &qword_10003B4F0, &qword_100027000);
    v56(v53, v47);
    sub_10000EBFC(v50, &qword_10003B4F0, &qword_100027000);
    v26 = v112;
    v57 = v107;
    if (v94)
    {
      goto LABEL_43;
    }

LABEL_10:

    ++v35;
    v33 = v113;
    v1 = v108;
    if (v106 == v98)
    {
      goto LABEL_44;
    }
  }

  v37 = sub_100025BBC();
  v23 = v35 + 1;
  if (!__OFADD__(v35, 1))
  {
    goto LABEL_14;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  v63 = sub_100025C3C();
  v1 = v23 & 0xC000000000000001;
  if (v63)
  {
    goto LABEL_46;
  }

LABEL_64:
  v67 = 0;
  v33 = v23 & 0xFFFFFFFFFFFFFF8;
LABEL_65:
  v68 = 0;
  do
  {
    v69 = v68;
    if (v63 == v68)
    {
      break;
    }

    if (v1)
    {
      v70 = sub_100025BBC();
      if (__OFADD__(v69, 1))
      {
LABEL_74:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v68 >= *(v33 + 16))
      {
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      if (__OFADD__(v69, 1))
      {
        goto LABEL_74;
      }
    }

    v26 = *(v70 + 16);

    v68 = v69 + 1;
  }

  while ((v26 | 2) != 2);
  v71 = 0;
  do
  {
    v72 = v71;
    if (v63 == v71)
    {
      break;
    }

    if (v1)
    {
      v73 = sub_100025BBC();
      if (__OFADD__(v72, 1))
      {
LABEL_84:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v71 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_112;
      }

      if (__OFADD__(v72, 1))
      {
        goto LABEL_84;
      }
    }

    v26 = *(v73 + 16);

    v71 = v72 + 1;
  }

  while (v26 != 2);

  v74 = v112;
  v75 = sub_1000257BC();
  v76 = sub_1000259EC();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 67109632;
    *(v77 + 4) = v67;
    *(v77 + 8) = 1024;
    *(v77 + 10) = v63 == v69;
    *(v77 + 14) = 1024;
    *(v77 + 16) = v63 != v72;
    v74 = v112;
    _os_log_impl(&_mh_execute_header, v75, v76, "HomeTopologyCheck allSetup=%{BOOL}d inelgibible=%{BOOL}d needsUpdate=%{BOOL}d", v77, 0x14u);
  }

  v78 = *(v74 + v92);
  if (v78 == 3 || !*(v74 + v92))
  {
    v79 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v62 = *(v74 + v79);
    v80 = 8;
    goto LABEL_90;
  }

  if (*(v90 + 2) == 1)
  {
    if (*(v90 + 6))
    {
      v81 = 26;
    }

    else
    {
      v81 = 29;
    }

    v82 = v78 == 1;
LABEL_96:
    if (v82)
    {
      v83 = v81;
    }

    else
    {
      v83 = 20;
    }

    v84 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v62 = *(v74 + v84);
    *(v74 + v84) = v83;
  }

  else if (v63 == v69 || ((v67 ^ 1) & 1) != 0)
  {
    if (v63 == v72)
    {
      v82 = v78 == 1;
      v81 = 23;
      goto LABEL_96;
    }

    v85 = SetupSession.targetHome.getter();
    if (v85)
    {
      v86 = v85;
      v87 = [v85 isCurrentUserHomeOwner];
    }

    else
    {
      v87 = 0;
    }

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    sub_100007AC4(v87, &v119);
    v88 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v62 = *(v74 + v88);
    *(v74 + v88) = 17;
  }

  else
  {
    v79 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v62 = *(v74 + v79);
    v80 = 26;
LABEL_90:
    *(v74 + v79) = v80;
  }

LABEL_100:
  sub_100004124(v62);
  sub_1000051E4();
  return sub_10000E838(&v114);
}

void sub_10000AE50()
{
  v1 = sub_10002577C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v99 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v98 = &v88 - v5;
  if ((sub_100005FE4(18) & 1) == 0)
  {
    return;
  }

  memset(v107, 0, sizeof(v107));
  sub_100007AC4(13, v107);
  if (*(&v0->isa + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags))
  {

    sub_10000CC94();
    return;
  }

  v6 = *(&v0[2].isa + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v103 = *(&v0->isa + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v104 = v6;
  v7 = *(&v0[6].isa + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v105 = *(&v0[4].isa + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v106 = v7;
  v8 = *(&v7 + 1);
  if (!*(&v7 + 1))
  {
    v32 = 0xD000000000000023;
    v33 = 0x8000000100028320;
    v34 = 2;
LABEL_41:
    sub_10000808C(v34, v32, v33, 1);
    return;
  }

  v97 = v0;
  v102 = _swiftEmptyArrayStorage;
  v9 = (*(&v7 + 1) & 0xFFFFFFFFFFFFFF8);
  if (*(&v7 + 1) >> 62)
  {
    goto LABEL_94;
  }

  for (i = *((*(&v7 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100025C3C())
  {
    sub_10000E780(v103, *(&v103 + 1), v104, *(&v104 + 1), v105, *(&v105 + 1));

    v11 = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v12 = 0;
    v13 = (v8 & 0xC000000000000001);
    v96 = i;
    v95 = (v8 & 0xC000000000000001);
    while (v13)
    {
      v14 = sub_100025BBC();
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        v11 = v102;
        goto LABEL_24;
      }

LABEL_16:
      if ((*(v14 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_userRequestsSetup) & 1) != 0 && (*(v14 + 17) & 1) == 0 && (*(v14 + 16) | 2) == 2)
      {
        sub_100025BEC();
        sub_100025C1C();
        v13 = v95;
        sub_100025C2C();
        sub_100025BFC();
        i = v96;
      }

      else
      {
      }

      v12 = (v12 + 1);
      if (v15 == i)
      {
        goto LABEL_23;
      }
    }

    if (v12 < v9[2].isa)
    {
      v14 = *(v8 + 8 * v12 + 32);

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

LABEL_24:
  sub_10000EBFC(&v103, &qword_10003B7C0, &qword_100026FF8);
  v16 = sub_100004708();
  if (!v16)
  {

    v33 = 0x80000001000282C0;
    v34 = 3;
    v32 = 0xD000000000000010;
    goto LABEL_41;
  }

  v9 = v16;
  v17 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_log;

  v18 = sub_1000257BC();
  v19 = sub_1000259EC();

  v20 = os_log_type_enabled(v18, v19);
  v92 = v9;
  v91 = v17;
  if (!v20)
  {

    v35 = v11 & 0x4000000000000000;
    goto LABEL_44;
  }

  v21 = swift_slowAlloc();
  v89 = swift_slowAlloc();
  aBlock[0] = v89;
  v90 = v21;
  *v21 = 136380675;
  v94 = (v11 & 0x4000000000000000);
  LODWORD(v93) = v19;
  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    v22 = sub_100025C3C();
  }

  else
  {
    v22 = *(v11 + 16);
  }

  v95 = v18;
  if (!v22)
  {
    goto LABEL_43;
  }

  v101 = _swiftEmptyArrayStorage;
  sub_10001F218(0, v22 & ~(v22 >> 63), 0);
  if (v22 < 0)
  {
    __break(1u);
LABEL_125:
    __break(1u);
    return;
  }

  v23 = 0;
  v24 = v101;
  v96 = v11 & 0xC000000000000001;
  v25 = v22;
  do
  {
    if (v96)
    {
      v26 = sub_100025BBC();
    }

    else
    {
      v26 = *(v11 + 8 * v23 + 32);
    }

    v27 = *(v26 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
    v28 = *(v26 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name + 8);

    v101 = v24;
    v30 = v24[2];
    v29 = v24[3];
    if (v30 >= v29 >> 1)
    {
      sub_10001F218((v29 > 1), v30 + 1, 1);
      v24 = v101;
    }

    ++v23;
    v24[2] = v30 + 1;
    v31 = &v24[2 * v30];
    v31[4] = v27;
    v31[5] = v28;
  }

  while (v25 != v23);
LABEL_43:
  v36 = sub_10002598C();
  v38 = v37;

  v39 = sub_10001EB4C(v36, v38, aBlock);

  v40 = v90;
  *(v90 + 1) = v39;
  v9 = v95;
  _os_log_impl(&_mh_execute_header, v95, v93, "Setup with %{private}s", v40, 0xCu);
  sub_10000E734(v89);

  v35 = v94;
LABEL_44:
  v41 = 0;
  v43 = v11 < 0 || v35 != 0;
  v44 = v11 & 0xC000000000000001;
  if (v43)
  {
LABEL_51:
    v8 = sub_100025C3C();
    goto LABEL_53;
  }

  while (1)
  {
    v8 = *(v11 + 16);
LABEL_53:
    if (v41 == v8)
    {
      goto LABEL_63;
    }

    if (v44)
    {
      v9 = sub_100025BBC();
      if (__OFADD__(v41, 1))
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v41 >= *(v11 + 16))
      {
        goto LABEL_91;
      }

      v9 = *(v11 + 8 * v41 + 32);

      if (__OFADD__(v41, 1))
      {
LABEL_62:
        __break(1u);
LABEL_63:

        v47 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
        v48 = v97;
        swift_beginAccess();
        v49 = *(&v48->isa + v47);
        *(&v48->isa + v47) = 1;
        sub_100004124(v49);
        sub_1000051E4();

        return;
      }
    }

    v45 = *(&v9->isa + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_service);
    v46 = v45;

    if (!v45)
    {
      break;
    }

    ++v41;
    if (v43)
    {
      goto LABEL_51;
    }
  }

  v9 = _swiftEmptyArrayStorage;
  aBlock[0] = _swiftEmptyArrayStorage;
  if (v8)
  {
    v50 = 0;
    do
    {
      if (v44)
      {
        v51 = sub_100025BBC();
        v52 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v50 >= *(v11 + 16))
        {
          goto LABEL_93;
        }

        v51 = *(v11 + 8 * v50 + 32);

        v52 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_92;
        }
      }

      if (*(v51 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_service))
      {
      }

      else
      {
        sub_100025BEC();
        v9 = *(aBlock[0] + 16);
        sub_100025C1C();
        sub_100025C2C();
        sub_100025BFC();
      }

      ++v50;
    }

    while (v52 != v8);
    v53 = aBlock[0];
  }

  else
  {
    v53 = _swiftEmptyArrayStorage;
  }

  if (v53 < 0 || (v53 & 0x4000000000000000) != 0)
  {
    v54 = sub_100025C3C();
    v55 = v97;
    if (!v54)
    {
      goto LABEL_97;
    }

LABEL_81:
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10001F1D8(0, v54 & ~(v54 >> 63), 0);
    v96 = v54;
    if ((v54 & 0x8000000000000000) == 0)
    {
      v56 = 0;
      v57 = aBlock[0];
      v95 = (v53 & 0xC000000000000001);
      v58 = v98;
      do
      {
        if (v95)
        {
          v59 = sub_100025BBC();
        }

        else
        {
          v59 = *(v53 + 8 * v56 + 32);
        }

        (*(v2 + 16))(v58, v59 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_id, v1);

        aBlock[0] = v57;
        v61 = v57[2];
        v60 = v57[3];
        if (v61 >= v60 >> 1)
        {
          sub_10001F1D8((v60 > 1), v61 + 1, 1);
          v58 = v98;
          v57 = aBlock[0];
        }

        ++v56;
        v57[2] = v61 + 1;
        (*(v2 + 32))(v57 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v61, v58, v1);
        v55 = v97;
      }

      while (v96 != v56);

      goto LABEL_98;
    }

    goto LABEL_125;
  }

  v54 = *(v53 + 16);
  v55 = v97;
  if (v54)
  {
    goto LABEL_81;
  }

LABEL_97:

  v57 = _swiftEmptyArrayStorage;
LABEL_98:
  v62 = *(v55 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager);
  if (v62)
  {
    v63 = [v62 homes];
    sub_10000E970(0, &qword_10003B388, HMHome_ptr);
    v64 = sub_10002597C();
  }

  else
  {
    v64 = _swiftEmptyArrayStorage;
  }

  aBlock[0] = _swiftEmptyArrayStorage;
  if (v64 >> 62)
  {
    goto LABEL_118;
  }

  for (j = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_100025C3C())
  {
    v55 = 0;
    v98 = (v64 & 0xC000000000000001);
    v96 = v64 & 0xFFFFFFFFFFFFFF8;
    v90 = v64;
    v93 = v64 + 32;
    v94 = (v2 + 8);
    v95 = j;
    while (1)
    {
      if (v98)
      {
        v66 = sub_100025BBC();
      }

      else
      {
        if (v55 >= *(v96 + 16))
        {
          goto LABEL_117;
        }

        v66 = *(v93 + 8 * v55);
      }

      v67 = v66;
      if (__OFADD__(v55++, 1))
      {
        break;
      }

      v69 = [v66 uniqueIdentifier];
      sub_10002574C();

      v70 = 0;
      v64 = v57[2];
      do
      {
        if (v64 == v70)
        {
          (*v94)(v99, v1);

          goto LABEL_105;
        }

        v71 = v70 + 1;
        sub_10000EA84(&qword_10003B500, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v72 = sub_1000258AC();
        v70 = v71;
      }

      while ((v72 & 1) == 0);
      (*v94)(v99, v1);
      sub_100025BEC();
      sub_100025C1C();
      sub_100025C2C();
      sub_100025BFC();
LABEL_105:
      if (v55 == v95)
      {
        v73 = aBlock[0];
        v55 = v97;
        goto LABEL_120;
      }
    }

    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    ;
  }

  v73 = _swiftEmptyArrayStorage;
LABEL_120:

  v74 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homesToSetup;
  swift_beginAccess();
  *(v55 + v74) = v73;

  v75 = v92;
  v76 = v92;
  v77 = sub_1000257BC();
  v78 = sub_1000259EC();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v79 = 138477827;
    *(v79 + 4) = v76;
    *v80 = v75;
    v81 = v76;
    _os_log_impl(&_mh_execute_header, v77, v78, "Setting up %{private}@", v79, 0xCu);
    sub_10000EBFC(v80, &qword_10003B518, &qword_100027008);
  }

  v82 = sub_100004668();

  sub_10000D12C(v83);

  isa = sub_10002596C().super.isa;

  v85 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  *(v86 + 24) = v57;
  aBlock[4] = sub_10000EC9C;
  aBlock[5] = v86;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C208;
  aBlock[3] = &unk_1000352B8;
  v87 = _Block_copy(aBlock);

  [v82 addMediaService:v76 toHomes:isa completion:v87];
  _Block_release(v87);
}

void sub_10000BC70(char a1)
{
  if (sub_100005FE4(a1 & 1))
  {
    if (a1)
    {
      v3 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
      swift_beginAccess();
      v4 = v1[v3];
      v1[v3] = 28;
      sub_100004124(v4);
      sub_1000051E4();
      return;
    }

    v5 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homesToSetup;
    swift_beginAccess();
    v6 = *&v1[v5];
    if (v6 >> 62)
    {
      v7 = sub_100025C3C();
      if (v7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_6:
        if (v7 < 1)
        {
          __break(1u);
          return;
        }

        v8 = 0;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = sub_100025BBC();
          }

          else
          {
            v9 = *(v6 + 8 * v8 + 32);
          }

          v10 = v9;
          ++v8;
          v11 = sub_100004668();
          v12 = sub_100004708();
          v13 = swift_allocObject();
          *(v13 + 16) = v1;
          *(v13 + 24) = v10;
          aBlock[4] = sub_10000ED44;
          aBlock[5] = v13;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10000C208;
          aBlock[3] = &unk_100035358;
          v14 = _Block_copy(aBlock);
          v15 = v10;
          v16 = v1;

          [v11 removeServiceFromHome:v12 fromHome:v15 completion:v14];
          _Block_release(v14);
        }

        while (v7 != v8);
      }
    }

    sub_10000808C(3u, 0xD00000000000001FLL, 0x8000000100028370, 1);
  }
}

void sub_10000BEB8(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10002577C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a4;
  swift_errorRetain();
  v31 = sub_1000257BC();
  v12 = sub_100025A1C();

  if (os_log_type_enabled(v31, v12))
  {
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v13 = 136381443;
    v14 = [v11 name];
    v15 = sub_1000258CC();
    HIDWORD(v29) = a1;
    v17 = v16;

    v18 = sub_10001EB4C(v15, v17, &v32);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2081;
    v19 = [v11 uniqueIdentifier];
    sub_10002574C();

    sub_10000EA84(&qword_10003B4F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = sub_100025C9C();
    v22 = v21;
    (*(v8 + 8))(v10, v7);
    v23 = sub_10001EB4C(v20, v22, &v32);

    *(v13 + 14) = v23;
    *(v13 + 22) = 1024;
    *(v13 + 24) = BYTE4(v29) & 1;
    *(v13 + 28) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v24 = sub_100025CDC();
      v26 = v25;
    }

    else
    {
      v26 = 0xE300000000000000;
      v24 = 7104878;
    }

    v28 = sub_10001EB4C(v24, v26, &v32);

    *(v13 + 30) = v28;
    _os_log_impl(&_mh_execute_header, v31, v12, "Setup reverted for %{private}s (%{private}s success=%{BOOL}d, error=%s", v13, 0x26u);
    swift_arrayDestroy();
  }

  else
  {
    v27 = v31;
  }
}

void sub_10000C208(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10000C280(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_10000C2C4()
{
  v1 = v0;
  v2 = sub_10002577C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount);
  if (v6)
  {
    v7 = v6;
    sub_10002576C();
    isa = sub_10002573C().super.isa;
    (*(v3 + 8))(v5, v2);
    [v7 setServiceID:isa];

    v9 = sub_1000257BC();
    v10 = sub_1000259EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Running preflight for testing", v11, 2u);
    }

    v12 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags);
    v13 = v7;
    sub_100019CE4(v12, v13);
    v14 = (v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel);
    v15 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel);
    v16 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 8);
    *v14 = v17;
    v14[1] = v18;
    v14[2] = v19;
    sub_10000E9B8(v15, v16);
    v20 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v21 = *(v1 + v20);
    *(v1 + v20) = 6;
    sub_100004124(v21);
    sub_1000051E4();
  }
}

void sub_10000C4C8()
{
  if (*&v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID + 8])
  {

    v1 = sub_100004668();
    v2 = sub_1000258BC();

    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v6[4] = sub_10000E9FC;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_10000DDA4;
    v6[3] = &unk_1000351A0;
    v4 = _Block_copy(v6);
    v5 = v0;

    [v1 getPublicInfoForBundleID:v2 completion:v4];
    _Block_release(v4);
  }

  else
  {
    sub_10000808C(2u, 0xD000000000000011, 0x8000000100028210, 1);
  }

  v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist + 7] = 1;
}

void sub_10000C62C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  if ((_s21MediaSetupViewService0B5StateO2eeoiySbAC_ACtFZ_0(v2[v6], 5) & 1) == 0)
  {
    v7 = v2;
    v8 = sub_1000257BC();
    v9 = sub_100025A0C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v53 = v11;
      *v10 = 136315138;
      v12 = SetupState.description.getter(v3[v6]);
      v14 = sub_10001EB4C(v12, v13, &v53);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "### Received service configuration info while in state %s?", v10, 0xCu);
      sub_10000E734(v11);
    }
  }

  if (!a2)
  {
LABEL_12:
    if (!a1)
    {
      v23 = 0xD000000000000021;
      v24 = 0x80000001000281A0;
      v25 = 0;
LABEL_26:
      sub_10000808C(v25, v23, v24, 1);
      return;
    }

    goto LABEL_20;
  }

  v15 = sub_10002568C();
  v16 = [v15 domain];
  v17 = sub_1000258CC();
  v19 = v18;

  if (v17 == sub_1000258CC() && v19 == v20)
  {
  }

  else
  {
    v22 = sub_100025CAC();

    if ((v22 & 1) == 0)
    {

      goto LABEL_12;
    }
  }

  v26 = v15;
  v27 = sub_1000257BC();
  v28 = sub_100025A0C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "### Configuration returned error: %@", v29, 0xCu);
    sub_10000EBFC(v30, &qword_10003B518, &qword_100027008);
  }

  if ([v26 code] != 2 && objc_msgSend(v26, "code") != 1)
  {
    v50 = sub_1000257BC();
    v51 = sub_100025A0C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Received configuration info response with unexpected failure", v52, 2u);
    }

    sub_10000808C(0, 0xD00000000000001CLL, 0x80000001000281F0, 1);
    goto LABEL_35;
  }

LABEL_20:
  v32 = *&v3[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount];
  if (!v32)
  {
    v24 = 0x80000001000281D0;
    v25 = 2;
    v23 = 0xD000000000000015;
    goto LABEL_26;
  }

  v33 = v32;
  v34 = sub_1000257BC();
  v35 = sub_1000259EC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Received configuration info response", v36, 2u);
  }

  if (a1)
  {
    v37 = a1;
  }

  else
  {
    v37 = sub_10000DFE8(_swiftEmptyArrayStorage);
  }

  v38 = *&v3[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager];

  if (v38)
  {
    v39 = [v38 homes];
    sub_10000E970(0, &qword_10003B388, HMHome_ptr);
    v40 = sub_10002597C();
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
  }

  v26 = v33;
  v41 = sub_10001AE28(v37, v40, v26);
  v43 = v42;
  v45 = v44;

  v46 = &v3[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel];
  v47 = *&v3[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel];
  v48 = *&v3[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 8];
  *v46 = v41;
  v46[1] = v43;
  v46[2] = v45;
  sub_10000E9B8(v47, v48);
  v49 = v3[v6];
  v3[v6] = 4;
  sub_100004124(v49);
  sub_1000051E4();
LABEL_35:
}

uint64_t sub_10000CBA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10002577C();
    sub_10000E970(0, &qword_10003B508, MediaService_ptr);
    sub_10000EA84(&qword_10003B510, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v4 = sub_10002587C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_10000CC94()
{
  v28 = sub_10002580C();
  v31 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002583C();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000257FC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10002585C();
  v25 = v9;
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  if ((*(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags) & 0x80) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = 500;
  }

  v26 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_dispatchQueue);
  sub_10002584C();
  *v8 = v16;
  (*(v6 + 104))(v8, enum case for DispatchTimeInterval.milliseconds(_:), v5);
  sub_10002586C();
  (*(v6 + 8))(v8, v5);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  aBlock[4] = sub_10000ECFC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C280;
  aBlock[3] = &unk_100035308;
  v19 = _Block_copy(aBlock);
  v20 = v0;
  sub_10002582C();
  v32 = _swiftEmptyArrayStorage;
  sub_10000EA84(&qword_10003B538, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002370(&qword_10003B540, "V\x1B");
  sub_10000ECA4(&qword_10003B548, &qword_10003B540, "V\x1B", &protocol conformance descriptor for [A]);
  v21 = v27;
  v22 = v28;
  sub_100025B1C();
  v23 = v26;
  sub_100025A3C();
  _Block_release(v19);

  (*(v31 + 8))(v21, v22);
  (*(v29 + 8))(v4, v30);
  v17(v15, v25);
}

char *sub_10000D12C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100025C3C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_10001F1F8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100025BBC();
        sub_10000E970(0, &qword_10003B388, HMHome_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10001F1F8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10000ECEC(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10000E970(0, &qword_10003B388, HMHome_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10001F1F8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10000ECEC(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_10000D328(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = sub_10002577C();
  v7 = *(v47 - 8);
  __chkstk_darwin(v47);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a2)
    {
      swift_errorRetain();
      v12 = sub_1000257BC();
      v13 = sub_100025A0C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v48[0] = v15;
        *v14 = 136315138;
        swift_getErrorValue();
        v16 = sub_100025CDC();
        v18 = sub_10001EB4C(v16, v17, v48);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Failed to setup media service in requested homes: %s", v14, 0xCu);
        sub_10000E734(v15);
      }

      else
      {
      }
    }

    else
    {
      v19 = *(a4 + 16);
      v20 = _swiftEmptyArrayStorage;
      if (v19)
      {
        v42 = Strong;
        v43 = a1;
        v48[0] = _swiftEmptyArrayStorage;
        sub_10001F218(0, v19, 0);
        v20 = v48[0];
        v22 = *(v7 + 16);
        v21 = v7 + 16;
        v23 = a4 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
        v44 = *(v21 + 56);
        v45 = v22;
        v46 = v21;
        v24 = (v21 - 8);
        do
        {
          v25 = v47;
          v45(v9, v23, v47);
          v26 = sub_10002572C();
          v28 = v27;
          (*v24)(v9, v25);
          v48[0] = v20;
          v30 = v20[2];
          v29 = v20[3];
          if (v30 >= v29 >> 1)
          {
            sub_10001F218((v29 > 1), v30 + 1, 1);
            v20 = v48[0];
          }

          v20[2] = v30 + 1;
          v31 = &v20[2 * v30];
          v31[4] = v26;
          v31[5] = v28;
          v23 += v44;
          --v19;
        }

        while (v19);
        LOBYTE(a1) = v43;
        v11 = v42;
      }

      v48[0] = v20;
      sub_100002370(&qword_10003B560, &qword_100027040);
      sub_10000ECA4(&qword_10003B568, &qword_10003B560, &qword_100027040, &protocol conformance descriptor for [A]);
      v32 = sub_10002589C();
      v34 = v33;

      v35 = sub_1000257BC();
      v36 = sub_1000259EC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v48[0] = v38;
        *v37 = 136380675;
        v39 = sub_10001EB4C(v32, v34, v48);

        *(v37 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v35, v36, "Successfully setup media service in homes: %{private}s", v37, 0xCu);
        sub_10000E734(v38);
      }

      else
      {
      }
    }

    v40 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v41 = v11[v40];
    v11[v40] = a1 & 1;
    sub_100004124(v41);
    sub_1000051E4();
  }
}

uint64_t sub_10000D818(void *a1)
{
  v2 = v1;
  v4 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  __chkstk_darwin(v4 - 8);
  v6 = v43 - v5;
  v7 = sub_10002577C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v43 - v12;
  if (!a1)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_100025BAC(34);

    v45 = 0xD00000000000001FLL;
    v46 = 0x8000000100028250;
    v20 = *(v2 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID + 8);
    v47 = *(v2 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID);
    v48 = v20;

    sub_100002370(&qword_10003B530, &unk_100027020);
    v50._countAndFlagsBits = sub_1000258EC();
    sub_10002592C(v50);

    v51._countAndFlagsBits = 63;
    v51._object = 0xE100000000000000;
    sub_10002592C(v51);
    sub_10000808C(2u, v45, v46, 1);
  }

  v14 = a1;
  v15 = [v14 serviceID];
  sub_1000258CC();

  sub_10002571C();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000EBFC(v6, &qword_10003B4F0, &qword_100027000);
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_100025BAC(42);

    v45 = 0xD000000000000028;
    v46 = 0x8000000100028270;
    v16 = [v14 serviceID];
    v17 = sub_1000258CC();
    v19 = v18;

    v49._countAndFlagsBits = v17;
    v49._object = v19;
    sub_10002592C(v49);

    sub_10000808C(0, v45, v46, 1);
  }

  v44 = v14;
  (*(v8 + 32))(v13, v6, v7);
  (*(v8 + 16))(v11, v13, v7);
  v22 = sub_1000257BC();
  v23 = sub_1000259EC();
  v24 = os_log_type_enabled(v22, v23);
  v43[1] = v8;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    v45 = v43[0];
    *v25 = 136380675;
    sub_10000EA84(&qword_10003B4F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = sub_100025C9C();
    v28 = v27;
    v29 = *(v8 + 8);
    v29(v11, v7);
    v30 = sub_10001EB4C(v26, v28, &v45);

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Service ID = %{private}s", v25, 0xCu);
    sub_10000E734(v43[0]);

    v31 = v29;
  }

  else
  {

    v31 = *(v8 + 8);
    v31(v11, v7);
  }

  v32 = *(v2 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount);
  v33 = v44;
  if (v32)
  {
    v34 = v32;
    isa = sub_10002573C().super.isa;
    [v34 setServiceID:isa];
  }

  v36 = [v33 configurationPublicKey];
  v37 = sub_1000258CC();
  v39 = v38;

  v40 = (v2 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configPublicKey);
  *v40 = v37;
  v40[1] = v39;

  v41 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  v42 = *(v2 + v41);
  *(v2 + v41) = 4;
  sub_100004124(v42);
  sub_1000051E4();

  return (v31)(v13, v7);
}

void sub_10000DDAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10000DE1C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags);
  v3 = sub_1000257BC();
  v4 = sub_1000259EC();
  v5 = os_log_type_enabled(v3, v4);
  if ((v2 & 0x20) != 0)
  {
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Simulating error via test flag", v9, 2u);
    }

    sub_10000808C(3u, 0xD000000000000018, 0x8000000100028350, 0);
  }

  else
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Skipping setup via test flags", v6, 2u);
    }

    v7 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v8 = *(a1 + v7);
    *(a1 + v7) = 28;
    sub_100004124(v8);
  }

  sub_1000051E4();
}

uint64_t type metadata accessor for SetupSession(uint64_t a1)
{
  result = qword_10003B470;
  if (!qword_10003B470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000DFE8(uint64_t a1)
{
  v2 = sub_100002370(&qword_10003B520, &qword_100027010);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002370(&qword_10003B528, &qword_100027018);
    v7 = sub_100025C6C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000EB94(v9, v5, &qword_10003B520, &qword_100027010);
      result = sub_100013FCC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10002577C();
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

void _s21MediaSetupViewService0B7SessionC25homeManagerDidUpdateHomesyySo06HMHomeG0CF_0()
{
  v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist + 4] = 1;
  v1 = v0;
  v2 = sub_1000257BC();
  v3 = sub_1000259EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    *v4 = 136315395;
    *(v4 + 4) = sub_10001EB4C(0xD00000000000001DLL, 0x8000000100028390, v13);
    *(v4 + 12) = 2081;
    v5 = *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager];
    if (v5)
    {
      v6 = [v5 homes];
      sub_10000E970(0, &qword_10003B388, HMHome_ptr);
      sub_10002597C();
    }

    sub_10000E970(0, &qword_10003B388, HMHome_ptr);
    v7 = sub_10002598C();
    v9 = v8;

    v10 = sub_10001EB4C(v7, v9, v13);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s %{private}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v11 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  v12 = v1[v11];
  v1[v11] = 4;
  sub_100004124(v12);
  sub_1000051E4();
}

uint64_t sub_10000E3FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homesToSetup;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_10000E45C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10000E4B4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  return sub_100004124(v5);
}

uint64_t sub_10000E518(uint64_t a1)
{
  result = sub_1000257DC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Checklist(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Checklist(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10000E734(void *a1)
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

void sub_10000E780(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {

    v7 = a4;
  }
}

uint64_t sub_10000E88C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E8FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E958(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E970(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_10000E9B8(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

void *sub_10000EA20(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
  }

  return result;
}

uint64_t sub_10000EA84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000EACC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000EB14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EB4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EB94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002370(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000EBFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002370(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000EC5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ECA4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000EACC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_10000ECEC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000ED04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ED4C()
{

  if (*(v0 + 96))
  {
    if (*(v0 + 48) != 1)
    {
    }
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10000EDEC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000EDFC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000EE0C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_10000EE44(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_10000EE54(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_10000EE64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a8)
  {
    sub_10000EEA4(a1, a2, a3, a4, a5, a6);
  }
}

void sub_10000EEA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

id sub_10000EF38(void *a1, uint64_t *a2)
{
  v48 = a2[6];
  v4 = [v48 serviceName];
  v5 = sub_1000258CC();
  v7 = v6;

  v8 = *a2;
  v9 = a2[1];
  v46 = a2[3];
  v44._object = a2[4];
  v10 = a2[5];
  v11 = objc_opt_self();

  v12 = [v11 mainBundle];
  v44._countAndFlagsBits = 0xE000000000000000;
  v49._object = 0x80000001000283F0;
  v49._countAndFlagsBits = 0xD00000000000001DLL;
  v50.value._countAndFlagsBits = 0;
  v50.value._object = 0;
  v13.super.isa = v12;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  sub_10002567C(v49, v50, v13, v51, 0, v44);

  sub_100002370(&qword_10003B2F8, "\n%");
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100026BD0;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100004010();
  *(v14 + 32) = v5;
  *(v14 + 40) = v7;
  v15 = sub_1000258DC();
  v17 = v16;

  v18 = sub_10001FA48(0, v5, v7, v8, v9);
  v20 = v19;

  v47 = a1;
  v21 = sub_1000160B8(v47, v15, v17, v18, v20);

  v22 = v21;
  v23 = sub_10001FA48(38, v45, v10, 0, 0);
  v25 = v24;

  v26 = sub_1000235DC(0, v23, v25);

  [v26 addTarget:v22 action:"selectSwitchAccounts" forControlEvents:64];
  v27 = [v22 buttonTray];
  [v27 addButton:v26];

  if (v46)
  {
    v28 = [v46 accountName];
    v29 = sub_1000258CC();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = sub_10001FA48(34, v29, v31, 0, 0);
  v34 = v33;

  v35 = sub_1000235DC(1, v32, v34);

  [v35 addTarget:v22 action:"selectKeepUsing" forControlEvents:64];

  v36 = [v22 buttonTray];
  [v36 addButton:v35];

  v37 = a2[7];
  v38 = a2[8];
  v39 = objc_allocWithZone(type metadata accessor for MainContentView());
  swift_bridgeObjectRetain_n();
  v40 = v48;
  v41 = sub_100023CA0(0, v37, v38, v40);
  v42 = [v22 contentView];

  [v42 addSubview:v41];
  sub_10001FD28();

  sub_10000F438(a2);

  return v22;
}

void sub_10000F344(char *a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = *(*&a1[OBJC_IVAR____TtC21MediaSetupViewService23SetupBaseViewController_mainController] + OBJC_IVAR___MediaSetupNavigationController_setupSession);
  if (v3)
  {
    memset(v7, 0, sizeof(v7));
    v6 = a1;
    v5 = v3;
    sub_1000056D4(a3, v7);
  }
}

id sub_10000F3E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountMismatchViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10000F468(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000F48C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000F4D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10000F534()
{
  v1 = v0;
  v2 = sub_1000257BC();
  v3 = sub_1000259EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = *(&v1->isa + OBJC_IVAR___MediaSetupNavigationController_waiting);

    _os_log_impl(&_mh_execute_header, v2, v3, "Update, waiting=%{BOOL}d", v4, 8u);
  }

  else
  {

    v2 = v1;
  }

  if (*(&v1->isa + OBJC_IVAR___MediaSetupNavigationController_waiting) == 1)
  {
    [v1 setModalInPresentation:1];
    v12 = [objc_allocWithZone(UIActivityIndicatorView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [v1 topViewController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 navigationItem];

      sub_100002370(&qword_10003B7B0, &unk_1000271F0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100027110;
      *(v8 + 32) = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v12];
      sub_10000E970(0, &qword_10003B7B8, UIBarButtonItem_ptr);
      isa = sub_10002596C().super.isa;

      [v7 setRightBarButtonItems:isa animated:1];
    }

    [v12 startAnimating];
  }

  else
  {
    [v1 setModalInPresentation:0];
    v10 = [v1 topViewController];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    v12 = [v10 navigationItem];

    [v12 setRightBarButtonItems:0 animated:1];
  }
}

void sub_10000F7D8(void *a1)
{
  v2 = sub_1000257BC();
  v3 = sub_1000259EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Begin extension request", v4, 2u);
  }

  sub_10000F900(a1);
}

void sub_10000F900(void *a1)
{
  v2 = v1;
  v3 = [a1 inputItems];
  v4 = sub_10002597C();

  if (!*(v4 + 16))
  {

    return;
  }

  sub_1000157C0(v4 + 32, v46);

  sub_10000E970(0, &qword_10003B788, NSExtensionItem_ptr);
  if (swift_dynamicCast())
  {
    v5 = v47[0];
    v6 = [v47[0] userInfo];
    if (v6)
    {
      v7 = v6;
      v8 = sub_10002587C();

      v41 = sub_1000258CC();
      v44 = v9;
      sub_100025B5C();
      if (*(v8 + 16) && (v10 = sub_100014064(v46), (v11 & 1) != 0))
      {
        sub_1000157C0(*(v8 + 56) + 32 * v10, v47);
        sub_10001581C(v46);
        if (swift_dynamicCast())
        {

          v12 = sub_1000257BC();
          v13 = sub_1000259EC();

          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            v46[0] = v15;
            *v14 = 136315138;
            *(v14 + 4) = sub_10001EB4C(v41, v44, v46);
            _os_log_impl(&_mh_execute_header, v12, v13, "HostBundleID: %s", v14, 0xCu);
            sub_10000E734(v15);
          }

          v16 = (v2 + OBJC_IVAR___MediaSetupNavigationController_hostBundleID);
          *v16 = v41;
          v16[1] = v44;
        }
      }

      else
      {
        sub_10001581C(v46);
      }

      v42 = sub_1000258CC();
      v45 = v17;
      sub_100025B5C();
      if (*(v8 + 16) && (v18 = sub_100014064(v46), (v19 & 1) != 0))
      {
        sub_1000157C0(*(v8 + 56) + 32 * v18, v47);
        sub_10001581C(v46);
        if (swift_dynamicCast())
        {
          sub_10000E970(0, &qword_10003B7A0, NSKeyedUnarchiver_ptr);
          sub_100025A2C();
          if (v46[3])
          {
            sub_10000E970(0, &qword_10003B7A8, MSServiceAccount_ptr);
            if (swift_dynamicCast())
            {
              v33 = v47[0];
              v34 = sub_1000257BC();
              v35 = sub_1000259EC();

              if (os_log_type_enabled(v34, v35))
              {
                v36 = swift_slowAlloc();
                log = v34;
                v37 = swift_slowAlloc();
                *v36 = 138477827;
                *(v36 + 4) = v33;
                *v37 = v33;
                v38 = v33;
                _os_log_impl(&_mh_execute_header, log, v35, "serviceAccount: %{private}@", v36, 0xCu);
                sub_10000EBFC(v37, &qword_10003B518, &qword_100027008);

                sub_100015870(v42, v45);
              }

              else
              {
                sub_100015870(v42, v45);
              }

              v39 = *(v2 + OBJC_IVAR___MediaSetupNavigationController_serviceAccount);
              *(v2 + OBJC_IVAR___MediaSetupNavigationController_serviceAccount) = v33;
            }

            else
            {
              sub_100015870(v42, v45);
            }
          }

          else
          {
            sub_100015870(v42, v45);
            sub_10000EBFC(v46, &qword_10003B718, &unk_1000271D0);
          }
        }
      }

      else
      {
        sub_10001581C(v46);
      }

      v43 = sub_1000258CC();
      sub_100025B5C();
      if (!*(v8 + 16) || (v20 = sub_100014064(v46), (v21 & 1) == 0))
      {

        sub_10001581C(v46);
        return;
      }

      sub_1000157C0(*(v8 + 56) + 32 * v20, v47);
      sub_10001581C(v46);

      sub_10000E970(0, &unk_10003B790, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v22 = v43;
        v23 = sub_1000257BC();
        v24 = sub_1000259FC();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          *v25 = 138412290;
          *(v25 + 4) = v22;
          *v26 = v22;
          v27 = v22;
          _os_log_impl(&_mh_execute_header, v23, v24, "Test flags: %@", v25, 0xCu);
          sub_10000EBFC(v26, &qword_10003B518, &qword_100027008);
        }

        v28 = [v22 unsignedLongLongValue];
        v29 = v2 + OBJC_IVAR___MediaSetupNavigationController_testFlags;
        *v29 = v28;
        *(v29 + 8) = 0;
        return;
      }
    }

    else
    {
      v30 = sub_1000257BC();
      v31 = sub_100025A0C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "No info to extract?", v32, 2u);
      }
    }
  }
}

void sub_100010018(uint64_t a1)
{
  v1 = sub_1000257BC();
  v2 = sub_1000259EC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_10001EB4C(0xD000000000000023, 0x80000001000285F0, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000E734(v4);
  }

  sub_100010130(v5);
}

void sub_100010130(uint64_t a1)
{
  v2 = OBJC_IVAR___MediaSetupNavigationController_setupSession;
  if (!*&v1[OBJC_IVAR___MediaSetupNavigationController_setupSession])
  {
    v3 = v1;
    v4 = sub_1000257BC();
    v5 = sub_1000259EC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Starting setup session", v6, 2u);
    }

    v7 = [objc_allocWithZone(type metadata accessor for SetupSession(0)) init];
    v8 = *&v3[OBJC_IVAR___MediaSetupNavigationController_serviceAccount];
    v9 = *&v7[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount];
    *&v7[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount] = v8;
    v10 = v8;

    [v3 _hostAuditToken];
    v11 = v23;
    v12 = &v7[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostAuditToken];
    *v12 = v22;
    *(v12 + 1) = v11;
    v12[32] = 0;
    v13 = *&v3[OBJC_IVAR___MediaSetupNavigationController_hostBundleID + 8];
    v14 = &v7[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID];
    *v14 = *&v3[OBJC_IVAR___MediaSetupNavigationController_hostBundleID];
    *(v14 + 1) = v13;

    v15 = swift_allocObject();
    *(v15 + 16) = v3;
    v16 = &v7[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_progressHandler];
    v17 = *&v7[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_progressHandler];
    v18 = *&v7[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_progressHandler + 8];
    *v16 = sub_100015958;
    v16[1] = v15;
    v19 = v3;
    sub_10000EDFC(v17, v18);
    if (v19[OBJC_IVAR___MediaSetupNavigationController_testFlags + 8])
    {
      v20 = 0;
    }

    else
    {
      v20 = *&v19[OBJC_IVAR___MediaSetupNavigationController_testFlags];
    }

    *&v7[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags] = v20;
    sub_100004FE0();
    v21 = *&v3[v2];
    *&v3[v2] = v7;
  }
}

void sub_100010394(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000257BC();
  v4 = sub_1000259EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10001EB4C(0x4C64694477656976, 0xED0000292864616FLL, &v17);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000E734(v6);
  }

  v7 = type metadata accessor for MediaSetupNavigationController(0);
  v18.receiver = v2;
  v18.super_class = v7;
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v8 = [v2 interactivePopGestureRecognizer];
  if (v8)
  {
    v9 = v8;
    [v8 setEnabled:0];
  }

  v10 = [v2 navigationItem];
  [v10 setHidesBackButton:1];

  v11 = [v2 presentationController];
  if (v11)
  {
    v12 = v11;
    [v11 setDelegate:v2];
  }

  [v2 setToolbarHidden:1 animated:0];
  v13 = objc_allocWithZone(OBWelcomeController);
  v14 = sub_1000258BC();
  v15 = sub_1000258BC();
  v16 = [v13 initWithTitle:v14 detailText:v15 icon:0];

  [v2 pushViewController:v16 animated:0];
  *(v2 + OBJC_IVAR___MediaSetupNavigationController_waiting) = 1;
  sub_10000F534();
}

id sub_1000106C4(uint64_t ObjCClassFromMetadata, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___MediaSetupNavigationController_hostBundleID];
  *v5 = 0;
  v5[1] = 0;
  *&v2[OBJC_IVAR___MediaSetupNavigationController_serviceAccount] = 0;
  *&v2[OBJC_IVAR___MediaSetupNavigationController_setupSession] = 0;
  v6 = &v2[OBJC_IVAR___MediaSetupNavigationController_stepContext];
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v7 = &v2[OBJC_IVAR___MediaSetupNavigationController_testFlags];
  *v7 = 0;
  v7[8] = 1;
  sub_1000257CC();
  v2[OBJC_IVAR___MediaSetupNavigationController_firstVC] = 1;
  v2[OBJC_IVAR___MediaSetupNavigationController_dismissed] = 0;
  *&v2[OBJC_IVAR___MediaSetupNavigationController_vcAccountMismatch] = 0;
  *&v2[OBJC_IVAR___MediaSetupNavigationController_vcAddToHome] = 0;
  *&v2[OBJC_IVAR___MediaSetupNavigationController_vcMultiHomeCustomize] = 0;
  *&v2[OBJC_IVAR___MediaSetupNavigationController_vcDone] = 0;
  *&v2[OBJC_IVAR___MediaSetupNavigationController_vcLearnMore] = 0;
  *&v2[OBJC_IVAR___MediaSetupNavigationController_vcSoftwareUpdate] = 0;
  v2[OBJC_IVAR___MediaSetupNavigationController_waiting] = 0;
  if (ObjCClassFromMetadata)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  if (a2)
  {
    a2 = swift_getObjCClassFromMetadata();
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for MediaSetupNavigationController(0);
  return objc_msgSendSuper2(&v9, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, a2);
}

id sub_1000108E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR___MediaSetupNavigationController_hostBundleID];
  *v6 = 0;
  v6[1] = 0;
  *&v3[OBJC_IVAR___MediaSetupNavigationController_serviceAccount] = 0;
  *&v3[OBJC_IVAR___MediaSetupNavigationController_setupSession] = 0;
  v7 = &v3[OBJC_IVAR___MediaSetupNavigationController_stepContext];
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v8 = &v3[OBJC_IVAR___MediaSetupNavigationController_testFlags];
  *v8 = 0;
  v8[8] = 1;
  sub_1000257CC();
  v3[OBJC_IVAR___MediaSetupNavigationController_firstVC] = 1;
  v3[OBJC_IVAR___MediaSetupNavigationController_dismissed] = 0;
  *&v3[OBJC_IVAR___MediaSetupNavigationController_vcAccountMismatch] = 0;
  *&v3[OBJC_IVAR___MediaSetupNavigationController_vcAddToHome] = 0;
  *&v3[OBJC_IVAR___MediaSetupNavigationController_vcMultiHomeCustomize] = 0;
  *&v3[OBJC_IVAR___MediaSetupNavigationController_vcDone] = 0;
  *&v3[OBJC_IVAR___MediaSetupNavigationController_vcLearnMore] = 0;
  *&v3[OBJC_IVAR___MediaSetupNavigationController_vcSoftwareUpdate] = 0;
  v3[OBJC_IVAR___MediaSetupNavigationController_waiting] = 0;
  if (a2)
  {
    v9 = sub_1000258BC();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for MediaSetupNavigationController(0);
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_100010AE8(void *a1)
{
  v3 = &v1[OBJC_IVAR___MediaSetupNavigationController_hostBundleID];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_serviceAccount] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_setupSession] = 0;
  v4 = &v1[OBJC_IVAR___MediaSetupNavigationController_stepContext];
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v5 = &v1[OBJC_IVAR___MediaSetupNavigationController_testFlags];
  *v5 = 0;
  v5[8] = 1;
  sub_1000257CC();
  v1[OBJC_IVAR___MediaSetupNavigationController_firstVC] = 1;
  v1[OBJC_IVAR___MediaSetupNavigationController_dismissed] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcAccountMismatch] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcAddToHome] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcMultiHomeCustomize] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcDone] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcLearnMore] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcSoftwareUpdate] = 0;
  v1[OBJC_IVAR___MediaSetupNavigationController_waiting] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for MediaSetupNavigationController(0);
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_100010C88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaSetupNavigationController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediaSetupNavigationController(uint64_t a1)
{
  result = qword_10003B6A8;
  if (!qword_10003B6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010E34(uint64_t a1)
{
  result = sub_1000257DC();
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

void sub_100010F08(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v5 = a1;
  sub_10001597C(a2, &v26);
  v6 = sub_1000257BC();
  v7 = sub_1000259EC();
  sub_10000EBFC(a2, &qword_10003B7C0, &qword_100026FF8);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v8 = 136315395;
    v9 = sub_10002158C(v5);
    v11 = sub_10001EB4C(v9, v10, &v24);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2081;
    v12 = a2[1];
    v26 = *a2;
    v27 = v12;
    v13 = a2[3];
    v28 = a2[2];
    v29 = v13;
    sub_10001597C(a2, v25);
    sub_100002370(&qword_10003B7C0, &qword_100026FF8);
    v14 = sub_1000258EC();
    v16 = sub_10001EB4C(v14, v15, &v24);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Handle session event: %s, context: %{private}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v17 = (v3 + OBJC_IVAR___MediaSetupNavigationController_stepContext);
  v18 = *(v3 + OBJC_IVAR___MediaSetupNavigationController_stepContext + 16);
  v26 = *(v3 + OBJC_IVAR___MediaSetupNavigationController_stepContext);
  v27 = v18;
  v19 = *(v3 + OBJC_IVAR___MediaSetupNavigationController_stepContext + 48);
  v28 = *(v3 + OBJC_IVAR___MediaSetupNavigationController_stepContext + 32);
  v29 = v19;
  v20 = a2[1];
  *v17 = *a2;
  v17[1] = v20;
  v21 = a2[3];
  v17[2] = a2[2];
  v17[3] = v21;
  sub_10000EBFC(&v26, &qword_10003B7C0, &qword_100026FF8);
  switch(v5)
  {
    case 2u:
      sub_10001597C(a2, v25);
      return;
    case 3u:
    case 0xAu:
      sub_10001597C(a2, v25);
      v22 = 130;
      goto LABEL_17;
    case 4u:
      sub_10001597C(a2, v25);
      v22 = 131;
      goto LABEL_17;
    case 5u:
      sub_10001597C(a2, v25);
      v22 = 128;
      goto LABEL_17;
    case 6u:
      sub_10001597C(a2, v25);
      v22 = 2;
      goto LABEL_17;
    case 7u:
      sub_10001597C(a2, v25);
      v22 = 129;
      goto LABEL_17;
    case 8u:
      sub_10001597C(a2, v25);
      v22 = 193;
      goto LABEL_17;
    case 9u:
      sub_10001597C(a2, v25);
      v22 = 192;
      goto LABEL_17;
    case 0xBu:
      sub_10001597C(a2, v25);
      sub_100011B3C(1);
      return;
    case 0xCu:
      sub_10001597C(a2, v25);
      v22 = 194;
      goto LABEL_17;
    case 0xDu:
      v23 = sub_10001597C(a2, v25);
      sub_100011E04(v23);
      return;
    case 0xEu:
      sub_10001597C(a2, v25);
      v22 = 1;
      goto LABEL_17;
    default:
      sub_10001597C(a2, v25);
      v22 = v5 & 1 | 0x40u;
LABEL_17:
      sub_10001127C(v22);
      return;
  }
}

void sub_10001127C(uint64_t a1)
{
  if (v1[OBJC_IVAR___MediaSetupNavigationController_dismissed])
  {
    v2 = a1;
    oslog = sub_1000257BC();
    v3 = sub_100025A0C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *&v79 = v5;
      *v4 = 136315138;
      v6 = sub_100022C88(v2);
      v8 = sub_10001EB4C(v6, v7, &v79);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v3, "### Dismiss already requested, not showing UI (%s)", v4, 0xCu);
      sub_10000E734(v5);

      return;
    }

    goto LABEL_36;
  }

  v9 = *&v1[OBJC_IVAR___MediaSetupNavigationController_serviceAccount];
  if (v9 && (v10 = *&v1[OBJC_IVAR___MediaSetupNavigationController_hostBundleID + 8]) != 0)
  {
    v11 = *&v1[OBJC_IVAR___MediaSetupNavigationController_hostBundleID];
    if ((a1 >> 6) <= 1u)
    {
      if (a1 >> 6)
      {
        v21 = a1;
        v22 = objc_allocWithZone(type metadata accessor for SoftwareUpdateViewController());
        v23 = v9;
        swift_bridgeObjectRetain_n();
        v24 = v23;
        v25 = sub_10001C0F0(v1, v24, v11, v10, v21 & 1);

        v13 = v25;
LABEL_43:
        v55 = v25;
        sub_100013038(v55);

        return;
      }

      v12 = OBJC_IVAR___MediaSetupNavigationController_vcAddToHome;
      v13 = *&v1[OBJC_IVAR___MediaSetupNavigationController_vcAddToHome];
      if (!v13)
      {
        v14 = a1;
        v15 = objc_allocWithZone(type metadata accessor for AddToHomeViewController());
        v16 = v9;
        swift_bridgeObjectRetain_n();
        v13 = sub_1000018B0(v1, v14, v16, v11, v10);
        v17 = *&v1[v12];
        *&v1[v12] = v13;
LABEL_42:
        v25 = v13;

        goto LABEL_43;
      }

LABEL_33:
      v45 = v9;

      v25 = v13;
      goto LABEL_43;
    }

    if (a1 >> 6 == 3)
    {
      if (a1 != 192)
      {
        if (a1 == 193)
        {
          oslog = v9;

          sub_1000122A0();
        }

        else
        {
          oslog = v9;

          sub_100012684();
        }

        goto LABEL_35;
      }

      v34 = OBJC_IVAR___MediaSetupNavigationController_vcLearnMore;
      v13 = *&v1[OBJC_IVAR___MediaSetupNavigationController_vcLearnMore];
      if (v13)
      {
        goto LABEL_33;
      }

      objc_allocWithZone(type metadata accessor for LearnMoreViewController());
      v41 = v9;
      swift_bridgeObjectRetain_n();
      v42 = v41;
      v43 = v1;
      v44 = v11;
      v39 = v1;
      v40 = sub_1000162F0(v43, v42, v44, v10);
      goto LABEL_41;
    }

    if (a1 > 0x81u)
    {
      if (a1 != 130)
      {
        oslog = v9;

        sub_100011EC4();
LABEL_35:

LABEL_36:

        return;
      }

      v34 = OBJC_IVAR___MediaSetupNavigationController_vcDone;
      v13 = *&v1[OBJC_IVAR___MediaSetupNavigationController_vcDone];
      if (v13)
      {
        goto LABEL_33;
      }

      objc_allocWithZone(type metadata accessor for DoneViewController());
      v35 = v9;
      swift_bridgeObjectRetain_n();
      v36 = v35;
      v37 = v1;
      v38 = v11;
      v39 = v1;
      v40 = sub_100015C9C(v37, v36, v38, v10);
LABEL_41:
      v13 = v40;
      v17 = *&v39[v34];
      *&v39[v34] = v40;
      goto LABEL_42;
    }

    if (a1 == 128)
    {
      v26 = OBJC_IVAR___MediaSetupNavigationController_vcAccountMismatch;
      v13 = *&v1[OBJC_IVAR___MediaSetupNavigationController_vcAccountMismatch];
      if (v13)
      {
        goto LABEL_33;
      }

      v27 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 16];
      v71 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext];
      v72 = v27;
      v28 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 48];
      v73 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 32];
      v74 = v28;
      v29 = *(&v71 + 1);
      v30 = *(&v72 + 1);
      if (*(&v28 + 1))
      {
        v70[0] = v71;
        v70[1] = v72;
        v70[2] = v73;
        v70[3] = v28;
        v66 = *(&v73 + 1);
        osloga = v73;
        v31 = v71;
        v32 = v72;
        v33 = v9;
        swift_bridgeObjectRetain_n();
        v67 = v33;
        sub_10001597C(&v71, &v79);
        sub_10000E780(v31, v29, v32, v30, osloga, v66);
        sub_10000EBFC(v70, &qword_10003B7C0, &qword_100026FF8);
        if (v29 != 1)
        {
          v79 = __PAIR128__(v29, v31);
          LOBYTE(v80) = v32 & 1;
          *(&v80 + 1) = v30;
          v81 = __PAIR128__(v66, osloga);
          *&v82 = v67;
          *(&v82 + 1) = v11;
          v83 = v10;
          v64 = objc_allocWithZone(type metadata accessor for AccountMismatchViewController());
          v13 = sub_10000EF38(v1, &v79);
          v65 = *&v1[v26];
          *&v1[v26] = v13;
          v25 = v13;

          goto LABEL_43;
        }
      }

      else
      {
        v79 = v71;
        v80 = v72;
        v81 = v73;
        v82 = v28;
        v56 = v9;

        sub_10001597C(&v71, v70);
        sub_10000EBFC(&v79, &qword_10003B7C0, &qword_100026FF8);
      }

      v57 = sub_1000257BC();
      v58 = sub_100025A0C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "User had mismatched account but had no context to construct the view", v59, 2u);
      }

      sub_100011EC4();
    }

    else
    {
      v34 = OBJC_IVAR___MediaSetupNavigationController_vcMultiHomeCustomize;
      v13 = *&v1[OBJC_IVAR___MediaSetupNavigationController_vcMultiHomeCustomize];
      if (v13)
      {
        goto LABEL_33;
      }

      v46 = &v1[OBJC_IVAR___MediaSetupNavigationController_stepContext];
      v47 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 16];
      v79 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext];
      v80 = v47;
      v48 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 48];
      v81 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 32];
      v82 = v48;
      v75 = v79;
      v76 = v47;
      v77 = v81;
      v78 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 48];
      if (*(&v48 + 1))
      {
        v49 = *(v46 + 1);
        v71 = *v46;
        v72 = v49;
        v73 = *(v46 + 2);
        *&v74 = *(v46 + 6);
        *(&v74 + 1) = *(&v48 + 1);
        v50 = v9;

        sub_10001597C(&v79, v70);

        sub_10000EBFC(&v71, &qword_10003B7C0, &qword_100026FF8);

        *&v70[0] = sub_100015018(v51);
        sub_100014330(v70);

        v52 = *&v70[0];
        objc_allocWithZone(type metadata accessor for MultiHomeCustomizeViewController(0));
        v53 = v1;
        v54 = v52;
        v39 = v1;
        sub_10001C890(v53, v54, v50);
        goto LABEL_41;
      }

      v60 = v9;

      sub_10001597C(&v79, &v71);
      v71 = v75;
      v72 = v76;
      v73 = v77;
      v74 = v78;
      sub_10000EBFC(&v71, &qword_10003B7C0, &qword_100026FF8);
      v61 = sub_1000257BC();
      v62 = sub_100025A0C();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "User tried to setup multiple homes but had no context which to draw the UI with", v63, 2u);
      }

      sub_100011EC4();
    }
  }

  else
  {
    v18 = sub_1000257BC();
    v19 = sub_100025A0C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Attempted to show UI but lacked the necessary service information to construct views", v20, 2u);
    }

    sub_100011EC4();
  }
}

uint64_t sub_100011B3C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1000257BC();
  v5 = sub_1000259EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v26[0] = v7;
    *v6 = 136315138;
    v8 = 0xED00006574656C70;
    v9 = 0x6D6F437075746573;
    v10 = 0xED000065726F4D6ELL;
    v11 = 0x7261654C72657375;
    v12 = 0x8000000100028050;
    v13 = 0xD000000000000010;
    if (v3 != 3)
    {
      v13 = 0x6E776F6E6B6E75;
      v12 = 0xE700000000000000;
    }

    if (v3 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    if (v3)
    {
      v9 = 1919251317;
      v8 = 0xE400000000000000;
    }

    if (v3 <= 1u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    if (v3 <= 1u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v10;
    }

    v16 = sub_10001EB4C(v14, v15, v26);

    *(v6 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Requesting dismiss (%s)", v6, 0xCu);
    sub_10000E734(v7);
  }

  v2[OBJC_IVAR___MediaSetupNavigationController_dismissed] = 1;
  v17 = OBJC_IVAR___MediaSetupNavigationController_setupSession;
  v18 = *&v2[OBJC_IVAR___MediaSetupNavigationController_setupSession];
  if (v18)
  {
    v19 = v18;
    sub_100006D18(v3);
  }

  if (!v3)
  {
    v20 = *&v2[v17];
    if (v20)
    {
      v21 = v20;
      sub_100006484();
    }
  }

  if ([v2 _remoteViewControllerProxy])
  {
    sub_100025AFC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  if (!*(&v25 + 1))
  {
    return sub_10000EBFC(v26, &qword_10003B718, &unk_1000271D0);
  }

  sub_100002370(&qword_10003B780, &unk_1000271E0);
  result = swift_dynamicCast();
  if (result)
  {
    [v23 requestDismiss];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100011E04(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000257BC();
  v4 = sub_1000259EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Handle setup started", v5, 2u);
  }

  *(v2 + OBJC_IVAR___MediaSetupNavigationController_waiting) = 1;

  sub_10000F534();
}

void sub_100011EC4()
{
  v1 = v0;
  v0[OBJC_IVAR___MediaSetupNavigationController_waiting] = 0;
  sub_10000F534();
  v2 = sub_1000257BC();
  v3 = sub_1000259FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Presenting error alert", v4, 2u);
  }

  v5 = *&v1[OBJC_IVAR___MediaSetupNavigationController_serviceAccount];
  if (v5)
  {
    v6 = [v5 serviceName];
    v7 = sub_1000258CC();
    v9 = v8;
  }

  else
  {
    v9 = 0xE100000000000000;
    v7 = 63;
  }

  sub_10000E970(0, &unk_10003B800, UIAlertController_ptr);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = v1;
  v12 = sub_1000200F8(v7, v9, sub_100015C24, v10);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v16[4] = sub_100015C2C;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10000C280;
  v16[3] = &unk_100035570;
  v14 = _Block_copy(v16);
  v15 = v11;

  [v15 presentViewController:v12 animated:1 completion:v14];
  _Block_release(v14);
}

void sub_1000120EC(uint64_t a1)
{
  v2 = sub_1000257BC();
  v3 = sub_1000259FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Dismissing error alert", v4, 2u);
  }

  v5 = *(a1 + OBJC_IVAR___MediaSetupNavigationController_setupSession);
  if (v5)
  {
    memset(v7, 0, sizeof(v7));
    v6 = v5;
    sub_1000056D4(0, v7);
  }
}

void sub_1000121F4(uint64_t a1)
{
  oslog = sub_1000257BC();
  v1 = sub_1000259FC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Presented error alert", v2, 2u);
  }
}

uint64_t sub_1000122A0()
{
  v1 = v0;
  v2 = sub_100002370(&qword_10003B7E8, &unk_100027210);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_1000256DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = sub_1000257BC();
  v13 = sub_1000259EC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Launching learn more website", v14, 2u);
  }

  v15 = [objc_opt_self() mainBundle];
  v29._countAndFlagsBits = 0xE000000000000000;
  v33._object = 0x8000000100028620;
  v33._countAndFlagsBits = 0xD000000000000012;
  v34.value._countAndFlagsBits = 0;
  v34.value._object = 0;
  v16.super.isa = v15;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10002567C(v33, v34, v16, v35, 0, v29);

  sub_1000256CC();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000EBFC(v4, &qword_10003B7E8, &unk_100027210);
  }

  v18 = *(v6 + 32);
  v18(v11, v4, v5);
  v19 = [objc_opt_self() defaultWorkspace];
  if (v19)
  {
    v21 = v19;
    sub_1000256AC(v20);
    v31 = v22;
    v23 = v1;
    (*(v6 + 16))(v9, v11, v5);
    v24 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    v18((v25 + v24), v9, v5);
    aBlock[4] = sub_100015B80;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000134D8;
    aBlock[3] = &unk_1000354A8;
    v26 = _Block_copy(aBlock);
    v27 = v23;

    v28 = v31;
    [v21 openURL:v31 configuration:0 completionHandler:v26];
    _Block_release(v26);
  }

  return (*(v6 + 8))(v11, v5);
}

void sub_100012684()
{
  v1 = v0;
  v2 = sub_100002370(&qword_10003B7E8, &unk_100027210);
  __chkstk_darwin(v2 - 8);
  v4 = &v68 - v3;
  v74 = sub_1000256DC();
  v5 = *(v74 - 8);
  v6 = __chkstk_darwin(v74);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v73 = &v68 - v9;
  v10 = sub_10002577C();
  v75 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v68 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v68 - v18;
  __chkstk_darwin(v17);
  v21 = &v68 - v20;
  v22 = &v1[OBJC_IVAR___MediaSetupNavigationController_stepContext];
  v23 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 16];
  v82[0] = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext];
  v82[1] = v23;
  v24 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 48];
  v82[2] = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 32];
  v82[3] = v24;
  v25 = *(&v24 + 1);
  if (!*(&v24 + 1))
  {
    v43 = *(v22 + 1);
    v77 = *v22;
    v78 = v43;
    v79 = *(v22 + 2);
    v80 = *(v22 + 6);
    v81 = 0;
    sub_10001597C(v82, aBlock);
    sub_10000EBFC(&v77, &qword_10003B7C0, &qword_100026FF8);
LABEL_21:
    v65 = sub_1000257BC();
    v66 = sub_100025A0C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "### Show update in Home without HomeID?", v67, 2u);
    }

    sub_100011EC4();
    return;
  }

  v26 = *(v22 + 1);
  v77 = *v22;
  v78 = v26;
  v79 = *(v22 + 2);
  v80 = *(v22 + 6);
  v81 = *(&v24 + 1);
  sub_10001597C(v82, aBlock);

  sub_10000EBFC(&v77, &qword_10003B7C0, &qword_100026FF8);
  if (v25 >> 62)
  {
    if (sub_100025C3C())
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:

    goto LABEL_21;
  }

LABEL_4:
  v72 = v21;
  v71 = v5;
  v70 = v1;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = v10;
    v28 = sub_100025BBC();
  }

  else
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v27 = v10;
    v28 = *(v25 + 32);
  }

  v29 = v75;
  v30 = *(v75 + 16);
  v30(v19, v28 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_id, v27);

  v31 = v72;
  (*(v29 + 32))(v72, v19, v27);
  v30(v16, v31, v27);
  sub_1000204CC(v16, v4);
  v32 = v71;
  v33 = v74;
  if ((*(v71 + 48))(v4, 1, v74) == 1)
  {
    sub_10000EBFC(v4, &qword_10003B7E8, &unk_100027210);
    v30(v13, v31, v27);
    v34 = sub_1000257BC();
    v35 = sub_100025A0C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 136380675;
      sub_100015C34(&qword_10003B4F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = sub_100025C9C();
      v40 = v39;
      v41 = *(v75 + 8);
      v41(v13, v27);
      v42 = sub_10001EB4C(v38, v40, aBlock);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "### Failed to generate homeURL with homeID %{private}s", v36, 0xCu);
      sub_10000E734(v37);
    }

    else
    {

      v41 = *(v75 + 8);
      v41(v13, v27);
    }

    sub_100011EC4();
    v41(v72, v27);
  }

  else
  {
    v44 = v73;
    (*(v32 + 32))(v73, v4, v33);
    (*(v32 + 16))(v8, v44, v33);
    v45 = v70;
    v46 = sub_1000257BC();
    v47 = sub_1000259FC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock[0] = v49;
      *v48 = 136315138;
      sub_100015C34(&unk_10003B7F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = sub_100025C9C();
      v52 = v51;
      v69 = *(v32 + 8);
      v69(v8, v74);
      v53 = sub_10001EB4C(v50, v52, aBlock);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v46, v47, "Opening %s", v48, 0xCu);
      sub_10000E734(v49);
      v33 = v74;
    }

    else
    {

      v69 = *(v32 + 8);
      v69(v8, v33);
    }

    v54 = v27;
    v55 = [objc_allocWithZone(_LSOpenConfiguration) init];
    [v55 setSensitive:1];
    v56 = [objc_opt_self() defaultWorkspace];
    v57 = v73;
    if (v56)
    {
      v58 = v56;
      sub_1000256AC(&v83);
      v60 = v59;
      v61 = swift_allocObject();
      *(v61 + 16) = v45;
      aBlock[4] = sub_100015C1C;
      aBlock[5] = v61;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000134D8;
      aBlock[3] = &unk_1000354F8;
      v62 = _Block_copy(aBlock);
      v63 = v55;
      v64 = v45;

      [v58 openURL:v60 configuration:v63 completionHandler:v62];
      _Block_release(v62);
    }

    v69(v57, v33);
    (*(v75 + 8))(v72, v54);
  }
}

void sub_100013038(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___MediaSetupNavigationController_firstVC) ^ 1;
  if ((v4 & 1) == 0)
  {
    *(v1 + OBJC_IVAR___MediaSetupNavigationController_firstVC) = 0;
  }

  v5 = sub_1000257BC();
  v6 = sub_1000259FC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v4 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Transitioning animated: %{BOOL}d", v7, 8u);
  }

  v8 = [v2 viewControllers];
  sub_10000E970(0, &qword_10003B7C8, UIViewController_ptr);
  v9 = sub_10002597C();

  v13 = a1;
  __chkstk_darwin(v10);
  v12[2] = &v13;
  v11 = sub_10001C768(sub_1000159EC, v12, v9);

  *(v2 + OBJC_IVAR___MediaSetupNavigationController_waiting) = 0;
  sub_10000F534();
  if (v11)
  {
  }

  else
  {
    [v2 pushViewController:a1 animated:v4 & 1];
  }
}

uint64_t sub_100013214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000256DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v8 + 16))(v10, a4, v7);
    swift_errorRetain();
    v11 = sub_1000257BC();
    v12 = sub_100025A0C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = a3;
      v14 = v13;
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v14 = 136315394;
      sub_100015C34(&unk_10003B7F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v16 = sub_100025C9C();
      v18 = v17;
      (*(v8 + 8))(v10, v7);
      v19 = sub_10001EB4C(v16, v18, &v25);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v20;
      *v15 = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "### Failed to open %s: %@", v14, 0x16u);
      sub_10000EBFC(v15, &qword_10003B518, &qword_100027008);

      sub_10000E734(v23);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }
  }

  return sub_100011B3C(2);
}

uint64_t sub_1000134D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_10002587C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_100013584(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    v2 = sub_1000257BC();
    v3 = sub_100025A0C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "### Error launching home app: %@", v4, 0xCu);
      sub_10000EBFC(v5, &qword_10003B518, &qword_100027008);
    }

    else
    {
    }
  }

  return sub_100011B3C(3);
}

id sub_100013844(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol:*a3];

  return v3;
}

uint64_t sub_100013898(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

char *sub_1000138F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002370(&qword_10003B810, &qword_100027220);
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

void *sub_1000139EC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002370(&qword_10003B818, &qword_100027228);
  v10 = *(type metadata accessor for SetupEntitlement(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SetupEntitlement(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100013BC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002370(&unk_10003B4E0, &qword_100026FF0);
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

char *sub_100013CD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002370(&qword_10003B7E0, &qword_100027208);
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

char *sub_100013DD4(uint64_t a1, uint64_t a2)
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

  sub_100002370(&unk_10003B820, qword_100027230);
  v4 = *(type metadata accessor for ConfigurationModelItem(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100013ED0(uint64_t a1, uint64_t a2)
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

  sub_100002370(&qword_10003B7B0, &unk_1000271F0);
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

void sub_100013F58(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_100013FCC(uint64_t a1)
{
  sub_10002577C();
  sub_100015C34(&qword_10003B510, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = sub_10002588C();

  return sub_1000140A8(a1, v2);
}

unint64_t sub_100014064(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100025B3C(*(v2 + 40));

  return sub_100014268(a1, v4);
}

unint64_t sub_1000140A8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_10002577C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      sub_100015C34(&qword_10003B500, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = sub_1000258AC();
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

unint64_t sub_100014268(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000158C4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100025B4C();
      sub_10001581C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_100014330(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10001522C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v5 = v2 + 32;
  v25[0] = v2 + 32;
  v25[1] = v4;
  v6 = sub_100025C8C(v4);
  if (v6 >= v4)
  {
    if (v4 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = v5;
      do
      {
        v13 = *(v5 + 8 * v11);
        v14 = v10;
        v15 = v12;
        do
        {
          v16 = (v13 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
          v17 = *v16;
          v18 = v16[1];
          v19 = (*v15 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
          if (v17 == *v19 && v18 == v19[1])
          {
            break;
          }

          if ((sub_100025CAC() & 1) == 0)
          {
            break;
          }

          v21 = *v15;
          v13 = v15[1];
          *v15 = v13;
          v15[1] = v21;
          --v15;
        }

        while (!__CFADD__(v14++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v4);
    }
  }

  else
  {
    v7 = v6;
    v8 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for HomeItem(0);
      v9 = sub_1000259AC();
      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v24[0] = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
    v24[1] = v8;
    sub_1000144C4(v24, v26, v25, v7);
    *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_100025BFC();
}

uint64_t sub_1000144C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v112 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_152;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (2)
  {
    v8 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v9 = *a3;
      v10 = (*(*a3 + 8 * v8) + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
      result = *v10;
      v11 = v10[1];
      v12 = (*(*a3 + 8 * v6) + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
      v13 = result == *v12 && v11 == v12[1];
      if (v13)
      {
        v4 = 0;
      }

      else
      {
        result = sub_100025CAC();
        v4 = result;
      }

      v8 = v6 + 2;
      if (v6 + 2 < v5)
      {
        v14 = OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name;
        v15 = (v9 + 8 * v6 + 16);
        do
        {
          v16 = (*v15 + v14);
          result = *v16;
          v17 = v16[1];
          v18 = (*(v15 - 1) + v14);
          if (result == *v18 && v17 == v18[1])
          {
            if (v4)
            {
              goto LABEL_23;
            }
          }

          else
          {
            result = sub_100025CAC();
            if ((v4 ^ result))
            {
              goto LABEL_22;
            }

            v14 = OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name;
          }

          ++v8;
          ++v15;
        }

        while (v5 != v8);
        v8 = v5;
      }

LABEL_22:
      if (v4)
      {
LABEL_23:
        if (v8 < v6)
        {
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        if (v6 < v8)
        {
          v20 = 8 * v8 - 8;
          v21 = 8 * v6;
          v22 = v8;
          v23 = v6;
          do
          {
            if (v23 != --v22)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_187;
              }

              v24 = *(v25 + v21);
              *(v25 + v21) = *(v25 + v20);
              *(v25 + v20) = v24;
            }

            ++v23;
            v20 -= 8;
            v21 += 8;
          }

          while (v23 < v22);
        }
      }
    }

    v26 = a3[1];
    if (v8 < v26)
    {
      if (__OFSUB__(v8, v6))
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          result = sub_100015004(v7);
          v7 = result;
LABEL_154:
          v107 = *(v7 + 2);
          if (v107 < 2)
          {
          }

          while (*a3)
          {
            v108 = *&v7[16 * v107];
            v109 = *&v7[16 * v107 + 24];
            sub_100014D10((*a3 + 8 * v108), (*a3 + 8 * *&v7[16 * v107 + 16]), (*a3 + 8 * v109), v4);
            if (v113)
            {
            }

            if (v109 < v108)
            {
              goto LABEL_178;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_100015004(v7);
            }

            if (v107 - 2 >= *(v7 + 2))
            {
              goto LABEL_179;
            }

            v110 = &v7[16 * v107];
            *v110 = v108;
            *(v110 + 1) = v109;
            result = sub_100014F78(v107 - 1);
            v107 = *(v7 + 2);
            if (v107 <= 1)
            {
            }
          }

LABEL_189:
          __break(1u);
          goto LABEL_190;
        }

        if (v6 + a4 >= v26)
        {
          v27 = a3[1];
        }

        else
        {
          v27 = v6 + a4;
        }

        if (v27 < v6)
        {
          goto LABEL_183;
        }

        if (v8 != v27)
        {
          v28 = *a3;
          v29 = *a3 + 8 * v8 - 8;
          v4 = (v6 - v8);
          do
          {
            v30 = *(v28 + 8 * v8);
            v31 = v4;
            v32 = v29;
            do
            {
              v33 = (v30 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
              v34 = *v33;
              v35 = v33[1];
              v36 = (*v32 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
              v37 = v34 == *v36 && v35 == v36[1];
              if (v37 || (sub_100025CAC() & 1) == 0)
              {
                break;
              }

              if (!v28)
              {
                goto LABEL_184;
              }

              v38 = *v32;
              v30 = v32[1];
              *v32 = v30;
              v32[1] = v38;
              --v32;
            }

            while (!__CFADD__(v31++, 1));
            ++v8;
            v29 += 8;
            --v4;
          }

          while (v8 != v27);
          v8 = v27;
        }
      }
    }

    if (v8 < v6)
    {
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v114 = v8;
    if ((result & 1) == 0)
    {
      result = sub_100013CD0(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v41 = *(v7 + 2);
    v40 = *(v7 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_100013CD0((v40 > 1), v41 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v42;
    v43 = &v7[16 * v41];
    *(v43 + 4) = v6;
    *(v43 + 5) = v114;
    if (!*v112)
    {
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    if (!v41)
    {
      goto LABEL_3;
    }

    __dst = *v112;
    do
    {
      v44 = v42 - 1;
      if (v42 >= 4)
      {
        v49 = &v7[16 * v42 + 32];
        v50 = *(v49 - 64);
        v51 = *(v49 - 56);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_166;
        }

        v54 = *(v49 - 48);
        v53 = *(v49 - 40);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_167;
        }

        v56 = &v7[16 * v42];
        v58 = *v56;
        v57 = *(v56 + 1);
        v55 = __OFSUB__(v57, v58);
        v59 = v57 - v58;
        if (v55)
        {
          goto LABEL_169;
        }

        v55 = __OFADD__(v47, v59);
        v60 = v47 + v59;
        if (v55)
        {
          goto LABEL_172;
        }

        if (v60 >= v52)
        {
          v78 = &v7[16 * v44 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v55 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v55)
          {
            goto LABEL_176;
          }

          if (v47 < v81)
          {
            v44 = v42 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_74;
      }

      if (v42 == 3)
      {
        v45 = *(v7 + 4);
        v46 = *(v7 + 5);
        v55 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        v48 = v55;
LABEL_74:
        if (v48)
        {
          goto LABEL_168;
        }

        v61 = &v7[16 * v42];
        v63 = *v61;
        v62 = *(v61 + 1);
        v64 = __OFSUB__(v62, v63);
        v65 = v62 - v63;
        v66 = v64;
        if (v64)
        {
          goto LABEL_171;
        }

        v67 = &v7[16 * v44 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v55 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v55)
        {
          goto LABEL_174;
        }

        if (__OFADD__(v65, v70))
        {
          goto LABEL_175;
        }

        if (v65 + v70 >= v47)
        {
          if (v47 < v70)
          {
            v44 = v42 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_88;
      }

      v71 = &v7[16 * v42];
      v73 = *v71;
      v72 = *(v71 + 1);
      v55 = __OFSUB__(v72, v73);
      v65 = v72 - v73;
      v66 = v55;
LABEL_88:
      if (v66)
      {
        goto LABEL_170;
      }

      v74 = &v7[16 * v44];
      v76 = *(v74 + 4);
      v75 = *(v74 + 5);
      v55 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v55)
      {
        goto LABEL_173;
      }

      if (v77 < v65)
      {
        break;
      }

LABEL_95:
      if (v44 - 1 >= v42)
      {
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
        goto LABEL_177;
      }

      v82 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      v121 = v7;
      v117 = v44 - 1;
      v118 = v44;
      v83 = *&v7[16 * v44 + 32];
      v84 = *&v7[16 * v44 + 40];
      v119 = *&v7[16 * v44 + 16];
      v120 = v84;
      v85 = (v82 + 8 * v119);
      v86 = 8 * v83;
      v7 = (v82 + 8 * v83);
      v87 = 8 * v84;
      v88 = (v82 + 8 * v84);
      v89 = 8 * v83 - 8 * v119;
      v90 = 8 * v84 - 8 * v83;
      if (v89 >= v90)
      {
        if (v7 != __dst || v88 <= __dst)
        {
          memmove(__dst, (v82 + 8 * v83), 8 * v84 - 8 * v83);
        }

        v91 = &__dst[v90];
        if (v90 >= 1 && v86 > 8 * v119)
        {
          v93 = v119;
          while (1)
          {
            v4 = v7 - 8;
            v88 -= 8;
            v100 = v91;
            while (1)
            {
              v101 = *(v100 - 1);
              v100 -= 8;
              v102 = *(v101 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name + 8);
              v103 = (*v4 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
              v104 = *(v101 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name) == *v103 && v102 == v103[1];
              if (!v104 && (sub_100025CAC() & 1) != 0)
              {
                break;
              }

              if (v88 + 8 != v91)
              {
                *v88 = *v100;
              }

              v88 -= 8;
              v91 = v100;
              if (v100 <= __dst)
              {
                v91 = v100;
                v92 = __dst;
                v4 = v7;
                goto LABEL_141;
              }
            }

            if (v88 + 8 != v7)
            {
              *v88 = *v4;
            }

            if (v91 <= __dst)
            {
              v92 = __dst;
              goto LABEL_141;
            }

            v92 = __dst;
            v7 -= 8;
            if (v85 >= v4)
            {
              goto LABEL_141;
            }
          }
        }

        v92 = __dst;
        v4 = v7;
        goto LABEL_139;
      }

      if (v85 != __dst || v7 <= __dst)
      {
        memmove(__dst, (v82 + 8 * v119), 8 * v83 - 8 * v119);
      }

      v91 = &__dst[v89];
      if (v89 < 1 || v87 <= v86)
      {
        v92 = __dst;
        v4 = v85;
LABEL_139:
        v93 = v119;
        goto LABEL_141;
      }

      v92 = __dst;
      v93 = v119;
      do
      {
        v94 = (*v7 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
        v95 = *v94;
        v96 = v94[1];
        v97 = (*v92 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
        v98 = v95 == *v97 && v96 == v97[1];
        if (!v98 && (sub_100025CAC() & 1) != 0)
        {
          v99 = v7;
          v13 = v85 == v7;
          v7 += 8;
          if (v13)
          {
            goto LABEL_114;
          }

LABEL_113:
          *v85 = *v99;
          goto LABEL_114;
        }

        v99 = v92;
        v13 = v85 == v92;
        v92 += 8;
        if (!v13)
        {
          goto LABEL_113;
        }

LABEL_114:
        v85 += 8;
      }

      while (v92 < v91 && v7 < v88);
      v4 = v85;
LABEL_141:
      if (v4 != v92 || v4 >= &v92[(v91 - v92 + (v91 - v92 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v4, v92, 8 * ((v91 - v92) / 8));
      }

      v105 = v121;
      if (v120 < v93)
      {
        goto LABEL_164;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_100015004(v121);
      }

      if (v118 > *(v105 + 2))
      {
        goto LABEL_165;
      }

      v106 = &v105[16 * v117];
      *(v106 + 4) = v93;
      *(v106 + 5) = v120;
      result = sub_100014F78(v118);
      v7 = v105;
      v42 = *(v105 + 2);
    }

    while (v42 > 1);
LABEL_3:
    v6 = v114;
    v5 = a3[1];
    if (v114 < v5)
    {
      continue;
    }

    break;
  }

LABEL_152:
  v4 = *v112;
  if (*v112)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_154;
    }

    goto LABEL_185;
  }

LABEL_190:
  __break(1u);
  return result;
}