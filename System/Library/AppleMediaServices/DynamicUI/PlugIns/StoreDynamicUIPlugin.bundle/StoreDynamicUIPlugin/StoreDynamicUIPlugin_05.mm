uint64_t sub_8366C(uint64_t a1)
{
  result = sub_13BCD4();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_83850(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ChannelLinkAction(uint64_t a1)
{
  result = qword_19DE10;
  if (!qword_19DE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_83790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelLinkAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_837F4(uint64_t a1)
{
  v2 = type metadata accessor for ChannelLinkAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_83850(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_13C214();
  sub_13BBA4();
  v8 = sub_13C234();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_13C144() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_83BF8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

void sub_8399C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_4948(&qword_19DDB0, &unk_145A00);
  v4 = sub_13BFD4();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

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
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_7D0F0(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_13C214();
    sub_13BBA4();
    v19 = sub_13C234();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_83BF8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_8399C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_83EB8(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_13C214();
      sub_13BBA4();
      v16 = sub_13C234();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_13C144() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_83D60();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_13C164();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void sub_83D60()
{
  v1 = v0;
  sub_4948(&qword_19DDB0, &unk_145A00);
  v2 = *v0;
  v3 = sub_13BFC4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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
}

void sub_83EB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_4948(&qword_19DDB0, &unk_145A00);
  v4 = sub_13BFD4();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_13C214();

        sub_13BBA4();
        v18 = sub_13C234();
        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v5 + 48) + 16 * v22);
        *v27 = v16;
        v27[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

uint64_t sub_84100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_13B644();
    v9 = a1 + *(a3 + 40);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_8419C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B644();
    v8 = v5 + *(a4 + 40);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_8421C(uint64_t a1)
{
  sub_18AD4(319, &qword_19B250, &unk_19B258, &unk_14C220);
  if (v1 <= 0x3F)
  {
    sub_18AD4(319, &qword_19DE20, &qword_19DE28, &qword_145A30);
    if (v2 <= 0x3F)
    {
      sub_84370();
      if (v3 <= 0x3F)
      {
        sub_18AD4(319, &qword_19DE30, &unk_19DE38, &unk_145A38);
        if (v4 <= 0x3F)
        {
          sub_13B644();
          if (v5 <= 0x3F)
          {
            sub_18AD4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_84370()
{
  if (!qword_19CA40)
  {
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19CA40);
    }
  }
}

uint64_t sub_843C0(uint64_t a1)
{
  result = sub_84418(&qword_19DE88, type metadata accessor for ChannelLinkAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_84418(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_18BF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int ServiceDetailLayout.Metrics.ContentAlignment.hashValue.getter(char a1)
{
  sub_13C214();
  sub_13C224(a1 & 1);
  return sub_13C234();
}

uint64_t sub_84540(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v7 = sub_4948(&qword_19DFD0, &qword_145B00);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  sub_13B994();
  sub_101A8();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_CACC(0, &qword_19DFD8, ACAccount_ptr);
  sub_13B6A4();
  v45 = v46[0];
  sub_13B6B4();
  sub_13B9A4();
  v15 = sub_CACC(0, &unk_19DFE0, AMSProcessInfo_ptr);
  sub_89798(v15);
  v16 = v46[0];
  v17 = sub_139DA4();
  sub_89798(v17);
  v44 = v46[0];
  sub_89798(&type metadata for MetricsContext);
  v18 = v46[1];
  v19 = sub_139E64();
  sub_89798(v19);
  v20 = v46[0];
  if (!v18)
  {
    v18 = sub_13BB14();
  }

  if (a1[1])
  {
    v21 = a1[1];
  }

  else
  {
    v21 = sub_13BB14();
  }

  v22 = sub_849B0(v21, v18);
  (*(v11 + 16))(v9, v14, v3);
  sub_53A8(v9, 0, 1, v3);
  v23 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_bag;
  swift_beginAccess();
  sub_887C0(v9, v5 + v23);
  v24 = swift_endAccess();
  v25 = (*(*v20 + 88))(v24);
  v26 = [v25 topViewController];

  swift_unknownObjectWeakAssign();
  v27 = sub_13B984();
  v43 = v14;
  v28 = v11;
  v29 = a1[3];
  v30 = a1[4];
  v31 = a1[5];
  v32 = a1[6];
  v33 = *(a1 + 16);
  v41 = a1[7];
  v40 = *a1;
  v34 = v45;
  sub_84A34(v45, v27, v16, v29, v30, v31, v32, v33, v40, v22, v41);
  swift_unknownObjectRelease();

  v35 = swift_allocObject();
  v36 = v44;
  *(v35 + 16) = sub_88830;
  *(v35 + 24) = v36;
  sub_CACC(0, &qword_19EBA0, OS_dispatch_queue_ptr);

  v37 = sub_13BD84();
  sub_88E3C(v37, sub_8888C, v35);

  v46[3] = sub_13B7C4();
  v46[4] = &protocol witness table for SyncTaskScheduler;
  sub_CC08(v46);
  sub_13B7B4();
  v38 = sub_13B9C4();

  (*(v28 + 8))(v43, v3);
  sub_3C04(v46);
  return v38;
}

uint64_t sub_849B0(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_88A40(a1, sub_88A08, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_84A34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = a8;
  sub_4948(&qword_19DFF8, &qword_145B08);
  v33 = sub_13BA24();
  v19 = objc_allocWithZone(AMSChannelLinkTask);
  v20 = a1;

  swift_unknownObjectRetain();

  v21 = sub_88914(a1, a2, a4, a5, a6, a7, a11);
  v22 = v21;
  if (v18 != 2 && (a8 & 1) != 0)
  {
    [v21 setICloudSignInPreferred:1];
  }

  [v22 setDelegate:{v32, a3}];
  [v22 setClientInfo:v31];
  if (a9)
  {
    v23.super.isa = sub_13BAF4().super.isa;
  }

  else
  {
    v23.super.isa = 0;
  }

  [v22 setAdditionalLinkingParameters:v23.super.isa];

  if (a10)
  {
    sub_84D48(a10);
    v24.super.isa = sub_13BAF4().super.isa;
  }

  else
  {
    v24.super.isa = 0;
  }

  [v22 setMetricsOverlay:v24.super.isa];

  v25 = [v22 perform];
  v26 = swift_allocObject();
  *(v26 + 16) = v32;
  *(v26 + 24) = v33;
  aBlock[4] = sub_88FC4;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_8977C;
  aBlock[3] = &unk_188CF8;
  v27 = _Block_copy(aBlock);
  v28 = v32;

  [v25 addFinishBlock:v27];
  _Block_release(v27);

  return v33;
}

id sub_84CF0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[3] = sub_CACC(0, &qword_19DFF0, AMSCarrierLinkResult_ptr);
  *a2 = v3;
  return v3;
}

uint64_t sub_84D48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_4948(&qword_19E000, &qword_145B10);
    v2 = sub_13C0E4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_7D228(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_7D284(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_7D284(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_7D284(v31, v32);
    result = sub_13BFA4(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_7D284(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_8500C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_4948(&qword_19E000, &qword_145B10);
    v2 = sub_13C0E4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_4948(&qword_19E030, &qword_145B30);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_7D284(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_7D284(v29, v30);
    result = sub_13BFA4(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *&v7[8 * v15];
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    v21 = v2[6] + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_7D284(v30, (v2[7] + 32 * v16));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_852D4(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = objc_allocWithZone(AMSCarrierLinkResult);
    v6 = a1;
    v7 = [v5 initWithChannelLinkResult:v6];
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v20 = type metadata accessor for ChannelLinkActionImplementation(0);
    v19[0] = a3;
    v9 = a3;
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v19);
    sub_139974();
    sub_1399F4();

    v19[0] = v7;
    sub_13BA14();
  }

  else
  {
    if (!a2)
    {
      sub_88FE4();
      swift_allocError();
      *v12 = 1;
    }

    swift_errorRetain();
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v13 = sub_139A14();
    sub_4910(v13, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v20 = type metadata accessor for ChannelLinkActionImplementation(0);
    v19[0] = a3;
    v14 = a3;
    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v19);
    sub_139974();
    swift_getErrorValue();
    v17 = sub_13C1A4();
    v20 = &type metadata for String;
    v19[0] = v17;
    v19[1] = v18;
    sub_139984();
    sub_CC68(v19, &unk_1A06F0, &unk_13EF80);
    sub_1399E4();

    sub_13BA04();
  }
}

id sub_8570C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_bag;
  v3 = sub_13B994();
  sub_53A8(&v0[v2], 1, 1, v3);
  swift_unknownObjectWeakInit();
  v4 = &v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_signInCallback];
  *v4 = 0;
  *(v4 + 1) = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

id sub_857C8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ChannelLinkActionImplementation(uint64_t a1)
{
  result = qword_19DED0;
  if (!qword_19DED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_858C4(uint64_t a1, __n128 a2)
{
  sub_85968(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_85968(uint64_t a1, __n128 a2)
{
  if (!qword_19DEE0)
  {
    sub_13B994();
    v2 = sub_13BF44();
    if (!v3)
    {
      atomic_store(v2, &qword_19DEE0);
    }
  }
}

Swift::Int sub_859E8()
{
  sub_13C214();
  sub_13C224(0);
  return sub_13C234();
}

Swift::Int sub_85A58()
{
  sub_13C214();
  sub_13C224(0);
  return sub_13C234();
}

void sub_85A98(void *a1, char *a2, void (**a3)(void, void, void))
{
  v30 = a1;
  v5 = sub_13B4A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_13B4E4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_CACC(0, &qword_19EBA0, OS_dispatch_queue_ptr);
    v28 = v6;
    v29 = v9;
    _Block_copy(a3);
    v27 = sub_13BD84();
    v16 = swift_allocObject();
    v17 = v30;
    v16[2] = v30;
    v16[3] = a2;
    v16[4] = sub_89758;
    v16[5] = v13;
    v16[6] = v15;
    aBlock[4] = sub_8940C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_E2448;
    aBlock[3] = &unk_188F00;
    v18 = _Block_copy(aBlock);
    v26 = a3;
    v19 = v18;
    v20 = v17;
    v21 = a2;

    v22 = v15;

    sub_13B4C4();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_89304(&qword_19E060, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_4948(&unk_19EBB0, &qword_145B40);
    sub_74FC4();
    sub_13BF64();
    v23 = v27;
    sub_13BD94();
    _Block_release(v19);

    (*(v28 + 8))(v8, v5);
    (*(v10 + 8))(v12, v29);

    _Block_release(v26);
  }

  else
  {
    sub_89134();
    swift_allocError();
    _Block_copy(a3);
    v24 = sub_1397A4();
    (a3)[2](a3, 0, v24);

    _Block_release(a3);
  }
}

void sub_85E84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = [a1 options];
  if (v10 && (v11 = v10, v12 = [v10 serviceType], v11, v12 == &dword_0 + 1))
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    v14 = (a2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_signInCallback);
    v15 = *(a2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_signInCallback);
    v16 = *(a2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_signInCallback + 8);
    *v14 = sub_8941C;
    v14[1] = v13;

    sub_C9FC(v15, v16);
    v25 = [objc_allocWithZone(AAUISignInController) init];
    [v25 setDelegate:a2];
    sub_4948(&qword_19E090, &qword_145B48);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_13E650;
    v18 = AIDAServiceTypeCloud;
    v19 = AIDAServiceTypeStore;
    *(v17 + 32) = AIDAServiceTypeCloud;
    *(v17 + 40) = v19;
    v20 = v18;
    v21 = v19;
    sub_88C70(v17, v25);
    [a5 presentViewController:v25 animated:1 completion:0];
  }

  else
  {
    sub_CACC(0, &qword_19E088, AMSUIAuthenticateTask_ptr);
    v22 = sub_869CC(a1, a5);
    v23 = [v22 performAuthentication];
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_8977C;
    aBlock[3] = &unk_188F28;
    v24 = _Block_copy(aBlock);

    [v23 addFinishBlock:v24];
    _Block_release(v24);
  }
}

double sub_86110(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a2;
  v22 = a1;
  v5 = sub_13B4A4();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_13B4E4();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_13B4B4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_CACC(0, &qword_19EBA0, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v15 = sub_13BDB4();
  (*(v12 + 8))(v14, v11);
  v16 = swift_allocObject();
  v17 = v22;
  v16[2] = v23;
  v16[3] = a4;
  v18 = v24;
  v16[4] = v17;
  v16[5] = v18;
  aBlock[4] = sub_8946C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_E2448;
  aBlock[3] = &unk_188FA0;
  v19 = _Block_copy(aBlock);

  v20 = v17;
  swift_errorRetain();
  sub_13B4C4();
  v27 = _swiftEmptyArrayStorage;
  sub_89304(&qword_19E060, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_4948(&unk_19EBB0, &qword_145B40);
  sub_74FC4();
  sub_13BF64();
  sub_13BD94();
  _Block_release(v19);

  (*(v26 + 8))(v7, v5);
  (*(v8 + 8))(v10, v25);

  return result;
}

void sub_864CC(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = sub_13B4A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_13B4E4();
  v25 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_CACC(0, &qword_19EBA0, OS_dispatch_queue_ptr);
    _Block_copy(a3);
    v24 = sub_13BD84();
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = v14;
    v15[4] = sub_8934C;
    v15[5] = v12;
    aBlock[4] = sub_893B0;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_E2448;
    aBlock[3] = &unk_188E60;
    v16 = _Block_copy(aBlock);
    v23 = v9;
    v17 = v16;
    v18 = a1;
    v19 = v14;

    sub_13B4C4();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_89304(&qword_19E060, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_4948(&unk_19EBB0, &qword_145B40);
    sub_74FC4();
    sub_13BF64();
    v20 = v24;
    sub_13BD94();
    _Block_release(v17);

    (*(v6 + 8))(v8, v5);
    (*(v25 + 8))(v11, v23);

    _Block_release(a3);
  }

  else
  {
    sub_89134();
    swift_allocError();
    _Block_copy(a3);
    v21 = sub_1397A4();
    (a3)[2](a3, 0, v21);

    _Block_release(a3);
  }
}

void sub_868A8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_CACC(0, &qword_19E080, AMSUIAlertDialogTask_ptr);
  v8 = sub_869CC(a1, a2);
  v9 = [v8 present];
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_8977C;
  v11[3] = &unk_188E88;
  v10 = _Block_copy(v11);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

id sub_869CC(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequest:a1 presentingViewController:a2];

  return v4;
}

void sub_86A40(void *a1, char *a2, const void *a3)
{
  v62 = a1;
  v5 = sub_139A14();
  v76 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_13B4A4();
  v67 = *(v8 - 8);
  v68 = v8;
  __chkstk_darwin(v8);
  v65 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_13B4E4();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4948(&qword_19DFD0, &qword_145B00);
  __chkstk_darwin(v11 - 8);
  v71 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  v16 = sub_13B994();
  v75 = *(v16 - 8);
  v17 = *(v75 + 64);
  __chkstk_darwin(v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v59 - v20;
  v74 = swift_allocObject();
  *(v74 + 16) = a3;
  v22 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_bag;
  swift_beginAccess();
  v70 = v22;
  sub_890C4(&a2[v22], v15);
  v23 = sub_52E0(v15, 1, v16);
  v72 = v7;
  v73 = v5;
  if (v23 == 1)
  {
    _Block_copy(a3);
    sub_CC68(v15, &qword_19DFD0, &qword_145B00);
  }

  else
  {
    v24 = v16;
    v25 = *(v75 + 32);
    v25(v21, v15, v24);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v73 = Strong;
      sub_CACC(0, &qword_19EBA0, OS_dispatch_queue_ptr);
      _Block_copy(a3);
      v76 = sub_13BD84();
      v27 = v75;
      v28 = *(v75 + 16);
      v61 = v21;
      v28(v18, v21, v24);
      v29 = (*(v27 + 80) + 24) & ~*(v27 + 80);
      v30 = (v17 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = v24;
      v31 = swift_allocObject();
      v32 = v62;
      *(v31 + 16) = v62;
      v25((v31 + v29), v18, v24);
      v34 = v73;
      v33 = v74;
      *(v31 + v30) = v73;
      v35 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v35 = sub_89758;
      v35[1] = v33;
      v81 = sub_8926C;
      v82 = v31;
      aBlock = _NSConcreteStackBlock;
      v78 = 1107296256;
      v79 = sub_E2448;
      v80 = &unk_188DC0;
      v36 = _Block_copy(&aBlock);
      v37 = v32;
      v38 = v34;

      v39 = v63;
      sub_13B4C4();
      aBlock = _swiftEmptyArrayStorage;
      sub_89304(&qword_19E060, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_4948(&unk_19EBB0, &qword_145B40);
      sub_74FC4();
      v40 = v65;
      v41 = v68;
      sub_13BF64();
      v42 = v76;
      sub_13BD94();
      _Block_release(v36);

      (*(v67 + 8))(v40, v41);
      (*(v64 + 8))(v39, v66);
      (*(v75 + 8))(v61, v60);
      goto LABEL_20;
    }

    _Block_copy(a3);
    v16 = v24;
    (*(v75 + 8))(v21, v24);
    v7 = v72;
    v5 = v73;
  }

  v43 = v76;
  v69 = a3;
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v44 = sub_4910(v5, qword_1B2B00);
  (*(v43 + 16))(v7, v44, v5);
  sub_4948(&unk_19E010, qword_13F520);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_140290;
  v80 = type metadata accessor for ChannelLinkActionImplementation(0);
  aBlock = a2;
  v45 = a2;
  v46 = AMSLogKey();
  if (v46)
  {
    v47 = v46;
    sub_13BB84();
  }

  v48 = 1702195828;
  sub_139994();

  sub_3C04(&aBlock);
  sub_139974();
  aBlock = 0x7369784520676142;
  v78 = 0xEB000000003A7374;
  v49 = &a2[v70];
  v50 = v71;
  sub_890C4(v49, v71);
  v51 = sub_52E0(v50, 1, v16);
  sub_CC68(v50, &qword_19DFD0, &qword_145B00);
  v52 = v51 == 1;
  if (v51 == 1)
  {
    v53._countAndFlagsBits = 0x65736C6166;
  }

  else
  {
    v53._countAndFlagsBits = 1702195828;
  }

  v54 = 0xE500000000000000;
  if (v52)
  {
    v55 = 0xE500000000000000;
  }

  else
  {
    v55 = 0xE400000000000000;
  }

  v53._object = v55;
  sub_13BBC4(v53);

  v80 = &type metadata for String;
  sub_139984();
  sub_CC68(&aBlock, &unk_1A06F0, &unk_13EF80);
  aBlock = 0;
  v78 = 0xE000000000000000;
  sub_13BFE4(23);

  aBlock = 0xD000000000000015;
  v78 = 0x800000000014FF40;
  v56 = swift_unknownObjectWeakLoadStrong();
  if (v56)
  {

    v54 = 0xE400000000000000;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  v83._countAndFlagsBits = v48;
  v83._object = v54;
  sub_13BBC4(v83);

  v80 = &type metadata for String;
  sub_139984();
  sub_CC68(&aBlock, &unk_1A06F0, &unk_13EF80);
  v57 = v72;
  sub_1399E4();

  (*(v76 + 8))(v57, v73);
  sub_89134();
  swift_allocError();
  v58 = sub_1397A4();
  a3 = v69;
  (*(v69 + 2))(v69, 0, v58);

LABEL_20:

  _Block_release(a3);
}

void sub_87430(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_CACC(0, &qword_19E078, AMSUIEngagementTask_ptr);
  v9 = a1;
  v10 = sub_13B984();
  v11 = sub_87564(v9, v10, a3);
  v12 = [v11 presentEngagement];
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_8977C;
  v14[3] = &unk_188DE8;
  v13 = _Block_copy(v14);

  [v12 addFinishBlock:v13];
  _Block_release(v13);
}

id sub_87564(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequest:a1 bag:a2 presentingViewController:a3];

  swift_unknownObjectRelease();
  return v5;
}

void sub_875D0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_87674(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_87700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1397A4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_87770()
{
  ObjectType = swift_getObjectType();
  if (qword_19A018 != -1)
  {
    sub_CCD4(&qword_19A018);
  }

  v2 = sub_139A14();
  sub_4910(v2, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  v3 = sub_1399C4();
  sub_CCF4(v3);
  *(swift_allocObject() + 16) = xmmword_13E650;
  v16[3] = ObjectType;
  v16[0] = v0;
  v4 = v0;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v16);
  sub_139974();
  sub_1399F4();

  v7 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_signInCallback];
  v8 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_signInCallback];
  if (v8)
  {
    v9 = v7[1];
    type metadata accessor for AMSError(0);

    sub_92FDC(_swiftEmptyArrayStorage);
    sub_89780();
    sub_89304(v10, v11, &unk_13EDF0);
    sub_139794();
    v12 = v16[0];
    v8(0, v16[0]);
    sub_C9FC(v8, v9);

    v13 = *v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v7[1];
  *v7 = 0;
  v7[1] = 0;
  return sub_C9FC(v13, v14);
}

void sub_87A30(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (qword_19A018 != -1)
  {
    sub_CCD4(&qword_19A018);
  }

  v5 = sub_139A14();
  sub_4910(v5, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  v6 = sub_1399C4();
  sub_CCF4(v6);
  v8 = *(v7 + 72);
  v101 = 3 * v8;
  v104 = xmmword_13E660;
  *(sub_897DC() + 16) = xmmword_13E660;
  v118 = ObjectType;
  v117[0] = v2;
  v112 = v2;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v117);
  sub_139974();
  v118 = sub_4948(&unk_19E040, &qword_145B38);
  v117[0] = a2;

  sub_139984();
  sub_CC68(v117, &unk_1A06F0, &unk_13EF80);
  sub_1399F4();

  v11 = sub_13BB84();
  v13 = sub_88690(v11, v12, a2);

  if (v13)
  {
    v98 = 2 * v8;
    if ([v13 success])
    {
      v14 = [objc_opt_self() ams_sharedAccountStore];
      v15 = [v14 ams_activeiCloudAccount];

      if (v15)
      {
        v16 = [objc_allocWithZone(AMSAuthenticateResult) initWithAccount:v15];
        v17 = sub_897DC();
        *(v17 + 16) = xmmword_13E660;
        v25 = sub_897F8(v17, v18, v19, v20, v21, v22, v23, v24, v98, v101, 3, 6, v109, v112);
        v26 = AMSLogKey();
        if (v26)
        {
          v27 = v26;
          sub_13BB84();
        }

        sub_139994();

        sub_3C04(v117);
        sub_139974();
        v118 = sub_CACC(0, &qword_19E050, AMSAuthenticateResult_ptr);
        v117[0] = v16;
        v84 = v16;
        sub_1399B4();
        sub_CC68(v117, &unk_1A06F0, &unk_13EF80);
        sub_1399F4();

        v85 = v84;
        sub_881F4(v84, 0, v25, a1);

        return;
      }

      v72 = sub_897DC();
      *(v72 + 16) = xmmword_13E650;
      v80 = sub_897F8(v72, v73, v74, v75, v76, v77, v78, v79, v98, v101, 3, 6, v109, v112);
      v81 = AMSLogKey();
      if (v81)
      {
        v82 = v81;
        sub_13BB84();
      }

      sub_139994();

      sub_3C04(v117);
      sub_89814();
      sub_139974();
      sub_1399E4();

      type metadata accessor for AMSError(0);
      sub_92FDC(_swiftEmptyArrayStorage);
      sub_89780();
      v88 = sub_89304(v86, v87, &unk_13EDF0);
      sub_897B8(v88, v89, v90, v91, v92, v93, v94, v95, v100, v103, v106, v108, v111, v114);
      v96 = v117[0];
      sub_881F4(0, v117[0], v80, a1);
    }

    else
    {
      v39 = [v13 error];
      if (!v39)
      {
        type metadata accessor for AMSError(0);
        sub_92FDC(_swiftEmptyArrayStorage);
        sub_89780();
        v42 = sub_89304(v40, v41, &unk_13EDF0);
        sub_897B8(v42, v43, v44, v45, v46, v47, v48, v49, v98, v101, 3, 6, v109, v112);
        v39 = v117[0];
      }

      v50 = sub_897DC();
      *(v50 + 16) = v104;
      v58 = sub_897F8(v50, v51, v52, v53, v54, v55, v56, v57, v98, v101, v104, *(&v104 + 1), v109, v112);
      v59 = AMSLogKey();
      if (v59)
      {
        v60 = v59;
        sub_13BB84();
      }

      sub_139994();

      sub_3C04(v117);
      sub_139974();
      swift_getErrorValue();
      v118 = v116;
      v83 = sub_CC08(v117);
      (*(*(v116 - 8) + 16))(v83);
      sub_139984();
      sub_CC68(v117, &unk_1A06F0, &unk_13EF80);
      sub_1399E4();

      swift_errorRetain();
      sub_881F4(0, v39, v58, a1);
    }

    return;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_13E650;
  v36 = sub_897F8(v28, v29, v30, v31, v32, v33, v34, v35, v97, v101, 3, 6, v109, v112);
  v37 = AMSLogKey();
  if (v37)
  {
    v38 = v37;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v117);
  sub_89814();
  sub_139974();
  sub_1399E4();

  type metadata accessor for AMSError(0);
  sub_92FDC(_swiftEmptyArrayStorage);
  sub_89780();
  v63 = sub_89304(v61, v62, &unk_13EDF0);
  sub_897B8(v63, v64, v65, v66, v67, v68, v69, v70, v99, v102, v105, v107, v110, v113);
  v71 = v117[0];
  sub_881F4(0, v117[0], v36, a1);
}

void sub_881F4(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v7 = sub_139A14();
  sub_4910(v7, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  v17 = type metadata accessor for ChannelLinkActionImplementation(0);
  aBlock[0] = a3;
  v8 = a3;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(aBlock);
  sub_139974();
  sub_1399F4();

  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = a1;
  v11[4] = a2;
  v18 = sub_89080;
  v19 = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_E2448;
  v17 = &unk_188D48;
  v12 = _Block_copy(aBlock);
  v13 = v8;
  v14 = a1;
  swift_errorRetain();

  [a4 dismissViewControllerAnimated:1 completion:v12];
  _Block_release(v12);
}

uint64_t sub_88478(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v6 = sub_139A14();
  sub_4910(v6, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  v16[3] = type metadata accessor for ChannelLinkActionImplementation(0);
  v16[0] = a1;
  v7 = a1;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v16);
  sub_139974();
  sub_1399F4();

  v10 = &v7[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_signInCallback];
  v11 = *v10;
  if (*v10)
  {
    v12 = v10[1];

    v11(a2, a3);
    sub_C9FC(v11, v12);
    v13 = *v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  return sub_C9FC(v13, v14);
}

void *sub_88690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_7C52C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_887C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19DFD0, &qword_145B00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_88854()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_888B8(void *a1, void (*a2)(void **, void))
{
  v4 = a1;
  v3 = a1;
  a2(&v4, 0);
}

id sub_88914(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_13BB54();

  v13 = sub_13BB54();

  if (a7)
  {
    v14.super.isa = sub_13BCB4().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  v15 = [v8 initWithAccount:a1 bag:a2 linkParams:v12 productCode:v13 supplementaryFields:v14.super.isa];

  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_88A08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_7C850((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_88A40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_7FB50(v29);
  v27[2] = v29[0];
  v27[3] = v29[1];
  v27[4] = v29[2];
  v28 = v30;

  while (1)
  {
    sub_88CE4(&v26);
    v7 = *(&v26 + 1);
    if (!*(&v26 + 1))
    {
      sub_7D220();

      return;
    }

    v8 = v26;
    sub_7D284(v27, v25);
    v9 = *a5;
    v11 = sub_7C52C(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_4948(&qword_19E020, &qword_145B18);
        sub_13C084();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_7CD0C();
      v15 = sub_7C52C(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v11 = v15;
      if (v14)
      {
LABEL_10:
        v17 = *a5;
        sub_7D228(v25, v24);
        sub_3C04(v25);

        v18 = (v17[7] + 32 * v11);
        sub_3C04(v18);
        sub_7D284(v24, v18);
        goto LABEL_14;
      }
    }

    v19 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_7D284(v25, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_17;
    }

    v19[2] = v23;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_13C174();
  __break(1u);
}

void sub_88C70(uint64_t a1, void *a2)
{
  type metadata accessor for AIDAServiceType(0);
  isa = sub_13BC14().super.isa;

  [a2 setServiceTypes:isa];
}

uint64_t sub_88CE4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_7D228(*(v3 + 56) + 32 * v10, v18);
    *&v19 = v13;
    *(&v19 + 1) = v12;
    sub_7D284(v18, &v20);

    v15 = *(&v19 + 1);
    v16 = v19;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v17 = v1[5];
      *&v18[0] = v16;
      *(&v18[0] + 1) = v15;
      v18[1] = v20;
      v18[2] = v21;
      v17(v18);
      return sub_CC68(v18, &qword_19E028, &unk_145B20);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_88E3C(void *a1, uint64_t a2, uint64_t a3)
{
  v10[3] = sub_CACC(0, &qword_19EBA0, OS_dispatch_queue_ptr);
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  swift_retain_n();
  v8 = a1;
  sub_13B9D4();

  return sub_3C04(v10);
}

uint64_t sub_88F48(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = 0;
  return v2(&v4, a1);
}

uint64_t sub_88F84()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_88FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_88FE4()
{
  result = qword_19E008;
  if (!qword_19E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E008);
  }

  return result;
}

uint64_t sub_89038()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8908C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_890C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19DFD0, &qword_145B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_89134()
{
  result = qword_19E058;
  if (!qword_19E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E058);
  }

  return result;
}

uint64_t sub_89188(__n128 a1)
{
  sub_13B994();
  sub_101A8();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v2 + v6, v1);

  return _swift_deallocObject(v2, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v5 | 7);
}

void sub_8926C(__n128 a1)
{
  v2 = sub_13B994();
  sub_CCF4(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + v8);
  v11 = (v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  sub_87430(v9, v1 + v7, v10, v12, v13);
}

uint64_t sub_89304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_89368()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_893BC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_89424()
{

  return _swift_deallocObject(v0, 48, 7);
}

_BYTE *storeEnumTagSinglePayload for ChannelLinkActionImplementation.PresentationError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x89538);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChannelLinkActionImplementation.CarrierLinkError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x8963CLL);
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

unint64_t sub_89678()
{
  result = qword_19E098;
  if (!qword_19E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E098);
  }

  return result;
}

unint64_t sub_896D0()
{
  result = qword_19E0A0;
  if (!qword_19E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E0A0);
  }

  return result;
}

void *sub_89798(uint64_t a1)
{

  return sub_13B9A4();
}

void *sub_897B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{

  return sub_139794();
}

uint64_t sub_897DC()
{

  return swift_allocObject();
}

id sub_897F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{

  return a14;
}

void sub_89828()
{
  sub_A1FC();
  v3 = v2;
  v4 = sub_13AB24();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  sub_8ADB8();
  sub_4948(&qword_19E2E0, &qword_13FE80);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v8);
  v9 = sub_8AE24();
  sub_8ADC4(*(v9 + 24));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A934();
    sub_9F94();
    (*(v10 + 32))(v3, v1);
  }

  else
  {
    sub_13BD54();
    v11 = sub_13AE64();
    sub_8ADE4(v11, &dword_0, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v13, v14, _swiftEmptyArrayStorage);

    sub_13AB14();
    swift_getAtKeyPath();

    (*(v6 + 8))(v0, v4);
  }

  sub_A214();
}

void sub_899C4()
{
  sub_A1FC();
  v3 = v2;
  v4 = sub_13AB24();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  sub_8ADB8();
  sub_4948(&qword_19ACE8, &qword_13FEB8);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v8);
  v9 = sub_8AE24();
  sub_8ADC4(*(v9 + 28));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_8AA68(v1, v3);
  }

  else
  {
    sub_13BD54();
    v10 = sub_13AE64();
    sub_8ADE4(v10, &dword_0, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v12, v13, _swiftEmptyArrayStorage);

    sub_13AB14();
    swift_getAtKeyPath();

    (*(v6 + 8))(v0, v4);
  }

  sub_A214();
}

id sub_89B38()
{
  v1 = type metadata accessor for ComponentCellWrapper(0);
  v2 = sub_8AD98(v1);
  __chkstk_darwin(v2);
  sub_9EC0();
  v5 = v4 - v3;
  sub_8AAD8(v0, v4 - v3);
  v6 = type metadata accessor for ComponentCellWrapper.ComponentCellWrapperCoordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_8AAD8(v5, v7 + OBJC_IVAR____TtCV20StoreDynamicUIPlugin20ComponentCellWrapper31ComponentCellWrapperCoordinator_parent);
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = objc_msgSendSuper2(&v11, "init");
  sub_8AD80();
  sub_8AD28(v5, v9);
  return v8;
}

uint64_t sub_89BF8()
{
  v2 = sub_139E74();
  v3 = sub_8AD98(v2);
  __chkstk_darwin(v3);
  sub_9EC0();
  sub_8ADB8();
  v4 = sub_13B834();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v11 = (v0 + OBJC_IVAR____TtCV20StoreDynamicUIPlugin20ComponentCellWrapper31ComponentCellWrapperCoordinator_parent);
  sub_162F0((v0 + OBJC_IVAR____TtCV20StoreDynamicUIPlugin20ComponentCellWrapper31ComponentCellWrapperCoordinator_parent + 24), *(v0 + OBJC_IVAR____TtCV20StoreDynamicUIPlugin20ComponentCellWrapper31ComponentCellWrapperCoordinator_parent + 48));
  sub_13B664();
  if (!*(&v17 + 1))
  {
    return sub_928C(&v16, &unk_19E320, &unk_140950);
  }

  sub_9414(&v16, v19);
  sub_139E84();
  v12 = *v11;
  sub_13B6B4();
  sub_13B9A4();
  v13 = v16;
  sub_13B9A4();
  (*(v6 + 16))(v1, v10, v4);
  v14 = sub_4948(&unk_19B7E0, &unk_141F10);
  sub_8AE04(v14);
  v16 = 0u;
  v17 = 0u;
  v18 = -1;
  (*(*v13 + 216))(v19, v1, v12, &v16);

  sub_928C(&v16, &unk_19E330, &qword_144CD0);
  sub_8AD28(v1, &type metadata accessor for ResultingActionDispatcher.MetricsBehavior);
  (*(v6 + 8))(v10, v4);
  return sub_3C04(v19);
}

id sub_89EEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComponentCellWrapper.ComponentCellWrapperCoordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_89F74(uint64_t a1)
{
  result = type metadata accessor for ComponentCellWrapper(319);
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

uint64_t sub_8A038(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19E208, &qword_145D00);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_4948(&qword_19E210, &qword_145D08);
      v10 = *(a3 + 28);
    }

    return sub_52E0(a1 + v10, a2, v9);
  }
}

void *sub_8A130(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_4948(&qword_19E208, &qword_145D00);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_4948(&qword_19E210, &qword_145D08);
      v10 = *(a4 + 28);
    }

    return sub_53A8(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_8A210(uint64_t a1)
{
  sub_13B6B4();
  if (v1 <= 0x3F)
  {
    sub_8A2B4(319);
    if (v2 <= 0x3F)
    {
      sub_8A30C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_8A2B4(uint64_t a1)
{
  if (!qword_19E280)
  {
    sub_13A934();
    v1 = sub_13A764();
    if (!v2)
    {
      atomic_store(v1, &qword_19E280);
    }
  }
}

void sub_8A30C(uint64_t a1)
{
  if (!qword_19E288)
  {
    sub_558C(&unk_19E290, &qword_13FEC0);
    v1 = sub_13A764();
    if (!v2)
    {
      atomic_store(v1, &qword_19E288);
    }
  }
}

void sub_8A370()
{
  sub_A1FC();
  v25 = v1;
  v2 = sub_4948(&qword_19E2E8, &qword_145E18);
  sub_8AD98(v2);
  sub_171D0();
  __chkstk_darwin(v3);
  sub_4948(&qword_19E2F0, &qword_145E20);
  sub_9E94();
  v23 = v5;
  v24 = v4;
  sub_171D0();
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v22 = sub_4948(&qword_19E2F8, &qword_145E28);
  sub_9E94();
  v10 = v9;
  sub_171D0();
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v15 = v0[1];
  v14 = v0[2];
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_4B14((v0 + 3), v26);
  sub_13B604();
  v26[0] = 0;
  sub_13BAE4();
  sub_4948(&qword_19E300, &qword_145E30);
  swift_allocObject();
  v26[0] = sub_13B7F4();
  sub_8AB3C();
  sub_13BAC4();
  (*(v14 + 16))(v13, v8, *v0, v15, v14);
  (*(v23 + 8))(v8, v24);
  (*(v10 + 8))(v13, v22);
  v26[3] = type metadata accessor for ComponentCellWrapper.ComponentCellWrapperCoordinator(0);
  sub_4948(&qword_19E310, &qword_145E38);
  sub_13ADC4();
  v17 = objc_allocWithZone(UITapGestureRecognizer);
  v18 = sub_8ABA0(v26, "performTap");
  sub_13ADC4();
  v19 = v26[0];
  [v18 setDelegate:v26[0]];

  v20 = v16;
  [v20 addGestureRecognizer:v18];

  sub_A214();
}

void sub_8A690()
{
  sub_A1FC();
  v1 = v0;
  v19 = v2;
  v18 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_4948(&unk_19E290, &qword_13FEC0);
  sub_8AD98(v8);
  sub_171D0();
  __chkstk_darwin(v9);
  sub_13A594();
  sub_9F94();
  __chkstk_darwin(v10);
  sub_9EC0();
  v11 = sub_4948(&unk_19E2D0, &qword_145E10);
  sub_8AD98(v11);
  sub_171D0();
  __chkstk_darwin(v12);
  sub_8ADB8();
  sub_89828();
  v13 = sub_13A934();
  sub_8AE04(v13);
  sub_13BE24();
  sub_13BEA4();
  sub_8ADA4();
  sub_13A584();
  sub_13BEB4();
  sub_899C4();
  sub_13BDF4();
  sub_13BEA4();
  sub_8ADA4();
  sub_13A574();
  sub_13BEB4();
  [v1 updateTraitsIfNeeded];
  width = v7;
  height = UILayoutFittingCompressedSize.height;
  if (v5)
  {
    width = UILayoutFittingCompressedSize.width;
  }

  v17 = v18;
  if (v19)
  {
    v17 = UILayoutFittingCompressedSize.height;
  }

  LODWORD(height) = 1148846080;
  LODWORD(v14) = 1112014848;
  [v1 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:v17 verticalFittingPriority:{height, v14, *&v18}];
  [v1 sizeThatFits:?];
  sub_A214();
}

id sub_8A894@<X0>(void *a1@<X8>)
{
  result = sub_89B38();
  *a1 = result;
  return result;
}

uint64_t sub_8A8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8ACE4(&qword_19E318, &unk_145D80);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_8A970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8ACE4(&qword_19E318, &unk_145D80);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_8A9F0(uint64_t a1)
{
  sub_8ACE4(&qword_19E318, &unk_145D80);
  sub_13ACB4();
  __break(1u);
}

uint64_t sub_8AA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&unk_19E290, &qword_13FEC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8AAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentCellWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_8AB3C()
{
  result = qword_19E308;
  if (!qword_19E308)
  {
    sub_558C(&qword_19E300, &qword_145E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E308);
  }

  return result;
}

id sub_8ABA0(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = sub_162F0(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_13C134();
    (*(v7 + 8))(v10, v4);
    sub_3C04(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_8ACE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComponentCellWrapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8AD28(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_9F94();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_8ADC4@<X0>(uint64_t a1@<X8>)
{

  return sub_9D58(v1 + a1, v2, v3, v4);
}

uint64_t sub_8ADE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_13A004();
}

uint64_t sub_8AE04(uint64_t a1)
{

  return sub_53A8(v1, 0, 1, a1);
}

uint64_t sub_8AE24()
{

  return type metadata accessor for ComponentCellWrapper(0);
}

unint64_t sub_8AE44(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1843B0;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_8AE90(char a1)
{
  result = 0x6C65685379646F62;
  switch(a1)
  {
    case 1:
      return sub_EDE4();
    case 2:
      return 0xD000000000000015;
    case 3:
      v3 = 1953460070;
      goto LABEL_6;
    case 4:
      v3 = 1684104552;
LABEL_6:
      v4 = v3 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
      goto LABEL_8;
    case 5:
      v4 = 0x70756B636F6CLL;
LABEL_8:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6853000000000000;
      break;
    case 6:
      result = 0x656853656C746974;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_8AF9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_8AE44(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_8AFCC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_8AE90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_8AFF8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_8AE44(a1, a2);
  if (v7 == 7)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v21 = &type metadata for ContingentLockupSheetLayout.BodySpacing;
    v20[0] = swift_allocObject();
    memcpy((v20[0] + 16), v3, 0x1B8uLL);
    sub_8C7DC(v3, __dst);
    sub_139984();
    sub_49C8(v20);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v23._countAndFlagsBits = a1;
    v23._object = a2;
    sub_13BBC4(v23);
    v24._object = 0x800000000014E6F0;
    v24._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v24);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for ContingentLockupSheetLayout.BodySpacing;
    a3[4] = &off_189360;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0x1B8uLL);
    return sub_8C7DC(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v21 = &type metadata for ContingentLockupSheetLayout.BodySpacing;
    v20[0] = swift_allocObject();
    memcpy((v20[0] + 16), v3, 0x1B8uLL);
    sub_8C7DC(v3, __dst);
    sub_139984();
    sub_49C8(v20);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for ContingentLockupSheetLayout.BodySpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    switch(v11)
    {
      case 1:
      case 2:
      case 3:
        memcpy(__dst, (v3 + 264), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v13 = swift_allocObject();
        *a3 = v13;
        v14 = (v13 + 16);
        v15 = (v3 + 264);
        break;
      case 4:
        memcpy(__dst, (v3 + 352), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v19 = swift_allocObject();
        *a3 = v19;
        v14 = (v19 + 16);
        v15 = (v3 + 352);
        break;
      case 5:
        memcpy(__dst, (v3 + 88), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v17 = swift_allocObject();
        *a3 = v17;
        v14 = (v17 + 16);
        v15 = (v3 + 88);
        break;
      case 6:
        memcpy(__dst, (v3 + 176), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v18 = swift_allocObject();
        *a3 = v18;
        v14 = (v18 + 16);
        v15 = (v3 + 176);
        break;
      default:
        memcpy(__dst, v3, 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v16 = swift_allocObject();
        *a3 = v16;
        v14 = (v16 + 16);
        v15 = v3;
        break;
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v20);
  }
}

void *sub_8B5E4@<X0>(void *a1@<X8>)
{
  sub_139F34();
  sub_139F34();
  sub_139F34();
  sub_139F34();
  sub_139F34();
  return memcpy(a1, __src, 0x1B8uLL);
}

unint64_t sub_8B7FC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184478;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_8B848()
{
  result = sub_EDE4();
  switch(v1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x68537265746F6F66;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

unint64_t sub_8B990@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_8B7FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_8B9C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_8B848();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_8B9EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_8B7FC(a1, a2);
  if (v7 == 5)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v21 = &type metadata for ContingentLockupSheetLayout.FooterSpacing;
    v20[0] = swift_allocObject();
    memcpy((v20[0] + 16), v3, 0x1B8uLL);
    sub_8C864(v3, __dst);
    sub_139984();
    sub_49C8(v20);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v23._countAndFlagsBits = a1;
    v23._object = a2;
    sub_13BBC4(v23);
    v24._object = 0x800000000014E6F0;
    v24._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v24);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for ContingentLockupSheetLayout.FooterSpacing;
    a3[4] = &off_189310;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0x1B8uLL);
    return sub_8C864(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v21 = &type metadata for ContingentLockupSheetLayout.FooterSpacing;
    v20[0] = swift_allocObject();
    memcpy((v20[0] + 16), v3, 0x1B8uLL);
    sub_8C864(v3, __dst);
    sub_139984();
    sub_49C8(v20);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for ContingentLockupSheetLayout.FooterSpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    switch(v11)
    {
      case 1:
        memcpy(__dst, (v3 + 88), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v19 = swift_allocObject();
        *a3 = v19;
        v14 = (v19 + 16);
        v15 = (v3 + 88);
        break;
      case 2:
        memcpy(__dst, (v3 + 176), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v17 = swift_allocObject();
        *a3 = v17;
        v14 = (v17 + 16);
        v15 = (v3 + 176);
        break;
      case 3:
        memcpy(__dst, (v3 + 264), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v18 = swift_allocObject();
        *a3 = v18;
        v14 = (v18 + 16);
        v15 = (v3 + 264);
        break;
      case 4:
        memcpy(__dst, (v3 + 352), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v16 = swift_allocObject();
        *a3 = v16;
        v14 = (v16 + 16);
        v15 = (v3 + 352);
        break;
      default:
        memcpy(__dst, v3, 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v13 = swift_allocObject();
        *a3 = v13;
        v14 = (v13 + 16);
        v15 = v3;
        break;
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v20);
  }
}

void *sub_8BFD0@<X0>(void *a1@<X8>)
{
  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != &dword_0 + 1)
  {
    sub_E7E8();
    static UIApplication.hasNotch()();
  }

  sub_139F34();
  LOBYTE(v20) = 1;
  LOBYTE(v17) = 0;
  LOBYTE(v14) = 1;
  LOBYTE(v11) = 0;
  sub_139F34();
  v4 = [v1 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != &dword_0 + 1)
  {
    sub_E7E8();
    static UIApplication.hasNotch()();
  }

  LOBYTE(v21) = 1;
  LOBYTE(v18) = 0;
  LOBYTE(v15) = 1;
  LOBYTE(v12) = 0;
  sub_139F34();
  v6 = [v1 currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 != &dword_0 + 1)
  {
    sub_E7E8();
    static UIApplication.hasNotch()();
  }

  LOBYTE(v22) = 1;
  LOBYTE(v19) = 0;
  LOBYTE(v16) = 1;
  LOBYTE(v13) = 0;
  sub_139F34();
  v8 = [v1 currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 != &dword_0 + 1)
  {
    sub_E7E8();
    static UIApplication.hasNotch()();
  }

  sub_139F34();
  return memcpy(a1, __src, 0x1B8uLL);
}

uint64_t sub_8C3AC@<X0>(uint64_t *a1@<X8>)
{
  sub_8B5E4(__src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x1B8uLL);
  sub_8BFD0(v6);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v6, 0x1B8uLL);
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_8C4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_8C3AC(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_8C56C()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  if (v0[31])
  {
  }

  if (v0[33])
  {
  }

  if (v0[42])
  {
  }

  if (v0[44])
  {
  }

  if (v0[53])
  {
  }

  if (v0[55])
  {
  }

  return _swift_deallocObject(v0, 456, 7);
}

uint64_t sub_8C63C()
{
  sub_3C04(v0 + 2);
  sub_3C04(v0 + 7);
  sub_3C04(v0 + 12);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_8C6A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 440))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_8C6F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 440) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 440) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_8C814()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t getEnumTagSinglePayload for ContingentLockupSheetLayout.FooterSpacing.OverrideSectionIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContingentLockupSheetLayout.FooterSpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x8C9F0);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContingentLockupSheetLayout.BodySpacing.OverrideSectionIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContingentLockupSheetLayout.BodySpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x8CB7CLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_8CBB8()
{
  result = qword_19E340;
  if (!qword_19E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E340);
  }

  return result;
}

unint64_t sub_8CC10()
{
  result = qword_19E348;
  if (!qword_19E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E348);
  }

  return result;
}

uint64_t sub_8CC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_13B644();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_8CD04@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a2;
  v87 = a3;
  v4 = sub_4948(&qword_19DDA8, &unk_1459F0);
  __chkstk_darwin(v4 - 8);
  v88 = &v77 - v5;
  v90 = sub_13B584();
  sub_9E94();
  v7 = v6;
  __chkstk_darwin(v8);
  v86 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v77 - v11;
  __chkstk_darwin(v13);
  v15 = &v77 - v14;
  v16 = sub_13B644();
  sub_9E94();
  v85 = v17;
  __chkstk_darwin(v18);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DelegateAction(0);
  sub_2B538();
  __chkstk_darwin(v22);
  v24 = (&v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_139BD4();
  inited = swift_initStackObject();
  v26 = v89;
  v27 = sub_BB310();
  if (v26)
  {
    (*(v7 + 8))(a1, v90);
    sub_13B5A4();
    sub_5224();
    return (*(v29 + 8))(v96);
  }

  v79 = v20;
  v83 = v16;
  v80 = v12;
  v81 = inited;
  v84 = v7;
  *v24 = v27;
  v24[1] = v28;
  v82 = v28;
  v89 = v21;
  v31 = a1;
  v32 = sub_2B0B0(0x6574656D61726170, 0xEA00000000007372, v21);
  v78 = 0;
  v33 = v15;
  v34 = v88;
  v24[2] = v32;
  sub_13B594();
  v35 = sub_13B564();
  v36 = v96;
  v37 = v83;
  if (v35)
  {
    goto LABEL_6;
  }

  v88 = v31;
  sub_8D5D8(v33, v96, v34);
  if (sub_52E0(v34, 1, v37) == 1)
  {
    sub_184DC(v34, &qword_19DDA8, &unk_1459F0);
    v31 = v88;
LABEL_6:
    sub_13BAB4();
    sub_8DB5C();
    v40 = sub_8DB14(v38, v39, &protocol conformance descriptor for JSONError);
    sub_18B70(v40);
    v88 = v32;
    strcpy(v41, "actionMetrics");
    *(v41 + 7) = -4864;
    *(v41 + 2) = v89;
    sub_2B538();
    (*(v42 + 104))();
    swift_willThrow();
    v43 = *(v84 + 8);
    v44 = v90;
    v43(v31, v90);
    v43(v33, v44);
    sub_13B5A4();
    sub_5224();
    (*(v45 + 8))(v36);
  }

  v46 = *(v84 + 8);
  v46(v33, v90);
  v47 = *(v85 + 32);
  v48 = v79;
  (v47)(v79, v34, v37);
  v49 = v89;
  sub_8DB8C();
  v47();
  v50 = v80;
  sub_13B594();
  v51 = sub_13B564();
  v77 = v24;
  if ((v51 & 1) == 0)
  {
    v52 = v78;
    sub_139BC4();
    v48 = v52;
    if (!v52)
    {
      v75 = v50;
      v61 = v46;
      v46(v75, v90);
      sub_9414(v91, &v93);
      v49 = v89;
      goto LABEL_11;
    }

    v92 = 0;
    memset(v91, 0, sizeof(v91));
    sub_184DC(v91, &unk_19E320, &unk_140950);
    v49 = v89;
    sub_8DB8C();
  }

  sub_13BAB4();
  sub_8DB5C();
  v55 = sub_8DB14(v53, v54, &protocol conformance descriptor for JSONError);
  v56 = sub_18B70(v55);
  sub_8DB74(v56, v57);
  *v58 = v48;
  v58[1] = v59;
  v58[2] = v49;
  sub_2B538();
  (*(v60 + 104))();
  swift_willThrow();
  v46(v50, v90);

  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v61 = v46;
LABEL_11:
  sub_8DBA0(v77 + *(v49 + 28));
  v62 = v86;
  v63 = v88;
  sub_13B594();
  v64 = sub_13B564();
  v65 = v90;
  if (v64)
  {
    sub_13BAB4();
    sub_8DB5C();
    sub_8DB14(v66, v67, &protocol conformance descriptor for JSONError);
    v68 = swift_allocError();
    sub_8DB74(v68, v69);
    *v70 = 0x4173736563637573;
    v70[1] = v71;
    v70[2] = v49;
    sub_2B538();
    (*(v72 + 104))();
    swift_willThrow();

    v61(v63, v65);
    v61(v62, v65);

    v76 = v49;
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
  }

  else
  {
    sub_139BC4();

    v61(v63, v65);
    v61(v62, v65);
    sub_9414(v91, &v93);
    v76 = v89;
  }

  v73 = v77;
  sub_8DBA0(v77 + *(v76 + 32));
  sub_8D7F0(v73, v87);
  sub_13B5A4();
  sub_5224();
  (*(v74 + 8))(v96);
  return sub_8D854(v73);
}

uint64_t sub_8D5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  sub_13B634();
  v14 = sub_13B644();
  return sub_53A8(a3, 0, 1, v14);
}

uint64_t type metadata accessor for DelegateAction(uint64_t a1)
{
  result = qword_19E3A8;
  if (!qword_19E3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8D7F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegateAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8D854(uint64_t a1)
{
  v2 = type metadata accessor for DelegateAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8D8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_13B644();
    v9 = a1 + *(a3 + 24);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_8D960(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B644();
    v8 = v5 + *(a4 + 24);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_8D9E0(uint64_t a1)
{
  sub_248F4(319, &qword_19DE20, &qword_19DE28, &qword_145A30);
  if (v1 <= 0x3F)
  {
    sub_13B644();
    if (v2 <= 0x3F)
    {
      sub_248F4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_8DABC(uint64_t a1)
{
  result = sub_8DB14(&qword_19E3F0, type metadata accessor for DelegateAction, &unk_146210);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_8DB14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_8DBA0@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 144);
  v3 = *(v1 - 128);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 - 112);
  return result;
}

uint64_t sub_8DBB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v5 = sub_139A14();
  sub_4910(v5, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  v22 = type metadata accessor for DelegateActionImplementation();
  v21[0] = v3;
  v6 = v3;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v21);
  sub_139974();
  sub_1399F4();

  sub_139DA4();
  sub_13B6B4();
  sub_13B9A4();
  v9 = v21[0];
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  sub_4948(&unk_1A0070, &qword_1462F8);

  v13 = sub_13BA24();
  v14 = objc_allocWithZone(AMSDelegateAction);
  v15 = sub_8E570(v10, v11, v12);
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  *(v16 + 24) = v13;
  v17 = *(*v9 + 216);
  v18 = v6;

  v17(v15, sub_8E650, v16);

  v22 = sub_13B7C4();
  v23 = &protocol witness table for SyncTaskScheduler;
  sub_CC08(v21);
  sub_13B7B4();
  v19 = sub_13B9C4();

  sub_3C04(v21);
  return v19;
}

uint64_t sub_8DEE8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v5 = sub_139A14();
    sub_4910(v5, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    *(&v20 + 1) = type metadata accessor for DelegateActionImplementation();
    *&v19 = a3;
    v6 = a3;
    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(&v19);
    sub_139974();
    sub_1399E4();

    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_E0B50(a2, &v19);

    return sub_8E6AC(&v19);
  }

  if (*(a1 + 24))
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v9 = sub_139A14();
    sub_4910(v9, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    *(&v20 + 1) = type metadata accessor for DelegateActionImplementation();
    *&v19 = a3;
    v10 = a3;
    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(&v19);
    sub_139974();
    sub_1399F4();

    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_E0C88(1, &v19);
    return sub_8E6AC(&v19);
  }

  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v13 = sub_139A14();
  sub_4910(v13, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  *(&v20 + 1) = type metadata accessor for DelegateActionImplementation();
  *&v19 = a3;
  v14 = a3;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(&v19);
  sub_139974();
  sub_1399E4();

  sub_8E658();
  v18 = swift_allocError();
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_E0B50(v18, &v19);
  sub_8E6AC(&v19);
}

char *sub_8E428@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *(a2 + 24) = &type metadata for Bool;
  *a2 = v2;
  return result;
}

id sub_8E440()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DelegateActionImplementation();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_8E498()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DelegateActionImplementation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_8E4F4()
{
  result = qword_19E3F0;
  if (!qword_19E3F0)
  {
    type metadata accessor for DelegateAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E3F0);
  }

  return result;
}

id sub_8E570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_13BB54();

  if (a3)
  {
    v6.super.isa = sub_13BAF4().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithIdentifier:v5 parameters:v6.super.isa];

  return v7;
}

uint64_t sub_8E610()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_8E658()
{
  result = qword_19E440;
  if (!qword_19E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E440);
  }

  return result;
}

uint64_t sub_8E6AC(uint64_t a1)
{
  v2 = sub_4948(&qword_1A0060, &qword_146300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DelegateActionImplementation.PerformError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x8E7B0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_8E7EC()
{
  result = qword_19E448;
  if (!qword_19E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E448);
  }

  return result;
}

void sub_8E840()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_color);
  if (v1 && *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style) <= 1u)
  {
    v2 = v1;
    sub_8F5AC(v2);
  }
}

void sub_8E8AC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_color);
  *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_color) = a1;
  v3 = a1;

  sub_8E840();
}

id sub_8E904()
{
  v1 = sub_13A5D4();
  __chkstk_darwin(v1 - 8);
  sub_9EC0();
  v2 = sub_13A604();
  sub_8FA90();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView;
  *&v0[v9] = [objc_allocWithZone(type metadata accessor for DynamicButtonView()) init];
  sub_13A5C4();
  sub_13A614();
  sub_13A5F4();
  (*(v4 + 8))(v8, v2);
  *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_color] = 0;
  v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style] = 0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for DynamicButton(0);
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_8F2B4();

  return v10;
}

id sub_8EACC(void *a1)
{
  v3 = sub_13A5D4();
  __chkstk_darwin(v3 - 8);
  sub_9EC0();
  v4 = sub_13A604();
  sub_8FA90();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView;
  *&v1[v11] = [objc_allocWithZone(type metadata accessor for DynamicButtonView()) init];
  sub_13A5C4();
  sub_13A614();
  sub_13A5F4();
  (*(v6 + 8))(v10, v4);
  *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_color] = 0;
  v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for DynamicButton(0);
  v12 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    sub_8F2B4();
  }

  return v13;
}

id sub_8ED34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicButton(0);
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

id sub_8EDC0(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DynamicButton(0);
  objc_msgSendSuper2(&v4, "setHighlighted:", a1 & 1);
  return sub_8EE0C();
}

id sub_8EE0C()
{
  v1 = v0;
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!_UISolariumEnabled())
  {
    return sub_128260([v1 isHighlighted], 1);
  }

  (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
  v6 = sub_139A24();
  result = (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    return sub_128260([v1 isHighlighted], 1);
  }

  return result;
}

id sub_8EF28()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DynamicButton(0);
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView];
  [v0 bounds];
  return [v1 setFrame:?];
}

uint64_t sub_8F0F8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView) accessibilityLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_13BB84();

  return v3;
}

void sub_8F2B4()
{
  v1 = [objc_opt_self() ams_clear];
  [v0 setBackgroundColor:v1];

  [v0 setIsAccessibilityElement:1];
  [v0 setAccessibilityTraits:UIAccessibilityTraitButton];
  v2 = v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style];

  sub_8F358(v2);
}

void sub_8F358(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  sub_8F458(a1);
  v4 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView];
  if (!v3)
  {
    *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_style) = 0;
    sub_90FAC();
    sub_8F494();
    v5 = 0;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_style) = 1;
    sub_90FAC();
    sub_8F494();
    v5 = 1;
LABEL_5:
    v7 = sub_8F6C0(v5);
    sub_8F5AC(v7);
    v6 = v7;
    goto LABEL_7;
  }

  *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_style) = 2;
  sub_90FAC();
  [v2 addSubview:v4];
  sub_13BE94();
  [v2 setNeedsLayout];
  v6 = sub_8F6C0(2);
LABEL_7:
}

id sub_8F494()
{
  v1 = sub_4948(&qword_19E498, &qword_146408);
  __chkstk_darwin(v1 - 8);
  v3 = &v9[-1] - v2;
  sub_13A5A4();
  v4 = sub_13A5B4();
  sub_53A8(v3, 0, 1, v4);
  sub_13BEC4();
  v5 = sub_13A604();
  v9[3] = v5;
  v9[4] = &protocol witness table for _Glass;
  v6 = sub_CC08(v9);
  (*(*(v5 - 8) + 16))(v6, &v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_glassView], v5);
  sub_13BE94();
  return [v0 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView]];
}

uint64_t sub_8F5AC(uint64_t a1)
{
  v2 = sub_13A604();
  sub_8FA90();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_glassView, v2);
  v10[3] = v2;
  v10[4] = &protocol witness table for _Glass;
  sub_CC08(v10);
  sub_13A5E4();
  (*(v4 + 8))(v8, v2);
  return sub_13BE94();
}

id sub_8F6C0(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = [objc_opt_self() ams_clear];

      return v2;
    }
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_color];
    if (v4)
    {
LABEL_10:

      return v4;
    }

    result = [v1 tintColor];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  v4 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_color];
  if (v4)
  {
    goto LABEL_10;
  }

  result = [v1 tintColor];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_8F7D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DynamicButton(uint64_t a1)
{
  result = qword_19E488;
  if (!qword_19E488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8F8E8(uint64_t a1)
{
  result = sub_13A604();
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

uint64_t sub_8F99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_8FA90();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_9EC0();
  v14 = v13 - v12;
  (*(v10 + 16))(v13 - v12);
  sub_91BF0(v14, a2, *(a3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView), a4, a5);
  return (*(v10 + 8))(v14, a4);
}

unint64_t sub_8FAA0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184510;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_8FAEC(char a1)
{
  if (!a1)
  {
    return 0x656E6961746E6F63;
  }

  if (a1 == 1)
  {
    return 0x6365537373616C67;
  }

  return 1954047348;
}

unint64_t sub_8FB70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_8FAA0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_8FBA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_8FAEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_8FBCC()
{
  v1 = v0;
  v26.n128_u64[0] = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel;
  sub_139BB4();
  v2 = objc_opt_self();
  v3 = [v2 ams_primaryText];
  v4 = sub_13A2A4();
  v35 = v4;
  v36 = &protocol witness table for FontSource;
  v5 = sub_CC08(&v34);
  if (qword_199FB0 != -1)
  {
    sub_91ED0(&qword_199FB0);
  }

  v6 = qword_19E4E8;
  *v5 = qword_19E4E8;
  v7 = enum case for FontSource.textStyle(_:);
  sub_2B538();
  v9 = *(v8 + 104);
  v9(v5, v7, v4);
  v10 = v6;
  sub_91F34();
  *&v0[v26.n128_u64[0]] = sub_139BA4();
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel;
  v12 = [v2 ams_primaryText];
  v35 = v4;
  v36 = &protocol witness table for FontSource;
  sub_CC08(&v34);
  if (qword_199FB8 != -1)
  {
    sub_91EB0(&qword_199FB8);
  }

  v13 = qword_19E4F0;
  v14 = sub_91F20();
  (v9)(v14);
  v15 = v13;
  sub_91F34();
  *&v0[v11] = sub_139BA4();
  v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_isEnabled] = 1;
  v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_style] = 0;
  v16 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_metrics;
  if (qword_199F98 != -1)
  {
    sub_91E90(&qword_199F98);
  }

  v17 = xmmword_19E4A0;
  v18 = *&qword_19E4B0;
  if (qword_199FA0 != -1)
  {
    sub_91E6C(&qword_199FA0);
    v18 = v25;
    v17 = v26;
  }

  v19 = xmmword_19E4C0;
  v20 = *&qword_19E4D0;
  v35 = &type metadata for CGFloat;
  v36 = &protocol witness table for CGFloat;
  *&v34 = 0;
  v32 = &type metadata for CGFloat;
  v33 = &protocol witness table for CGFloat;
  v30 = &protocol witness table for CGFloat;
  *&v31 = 0x404A000000000000;
  v29 = &type metadata for CGFloat;
  *&v28 = 0x404A000000000000;
  if (qword_199FA8 != -1)
  {
    sub_91E44(&qword_199FA8);
    v20 = v23;
    v19 = v24;
    v18 = v25;
    v17 = v26;
  }

  sub_91F00(*&qword_19E4E0, v17, v18, v19, v20);
  sub_21520(&v34, v16 + 64);
  sub_21520(&v31, v16 + 104);
  sub_21520(&v28, v16 + 144);
  v27.receiver = v1;
  v27.super_class = type metadata accessor for DynamicButtonView();
  v21 = objc_msgSendSuper2(&v27, "init");
  sub_90F00();

  return v21;
}

id sub_8FEE4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v34.n128_u64[0] = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel;
  sub_139BB4();
  v10 = objc_opt_self();
  v11 = [v10 ams_primaryText];
  v12 = sub_13A2A4();
  v43 = v12;
  v44 = &protocol witness table for FontSource;
  v13 = sub_CC08(&v42);
  if (qword_199FB0 != -1)
  {
    sub_91ED0(&qword_199FB0);
  }

  v14 = qword_19E4E8;
  *v13 = qword_19E4E8;
  v15 = enum case for FontSource.textStyle(_:);
  sub_2B538();
  v17 = *(v16 + 104);
  v17(v13, v15, v12);
  v18 = v14;
  *&v4[v34.n128_u64[0]] = sub_139BA4();
  v19 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel;
  v20 = [v10 ams_primaryText];
  v43 = v12;
  v44 = &protocol witness table for FontSource;
  sub_CC08(&v42);
  if (qword_199FB8 != -1)
  {
    sub_91EB0(&qword_199FB8);
  }

  v21 = qword_19E4F0;
  v22 = sub_91F20();
  (v17)(v22);
  v23 = v21;
  *&v4[v19] = sub_139BA4();
  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_isEnabled] = 1;
  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_style] = 0;
  v24 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_metrics;
  if (qword_199F98 != -1)
  {
    sub_91E90(&qword_199F98);
  }

  v25 = xmmword_19E4A0;
  v26 = *&qword_19E4B0;
  if (qword_199FA0 != -1)
  {
    sub_91E6C(&qword_199FA0);
    v26 = v33;
    v25 = v34;
  }

  v27 = xmmword_19E4C0;
  v28 = *&qword_19E4D0;
  v43 = &type metadata for CGFloat;
  v44 = &protocol witness table for CGFloat;
  v41 = &protocol witness table for CGFloat;
  *&v42 = 0;
  v40 = &type metadata for CGFloat;
  v38 = &protocol witness table for CGFloat;
  *&v39 = 0x404A000000000000;
  v37 = &type metadata for CGFloat;
  *&v36 = 0x404A000000000000;
  if (qword_199FA8 != -1)
  {
    sub_91E44(&qword_199FA8);
    v28 = v31;
    v27 = v32;
    v26 = v33;
    v25 = v34;
  }

  sub_91F00(*&qword_19E4E0, v25, v26, v27, v28);
  sub_21520(&v42, v24 + 64);
  sub_21520(&v39, v24 + 104);
  sub_21520(&v36, v24 + 144);
  v35.receiver = v5;
  v35.super_class = type metadata accessor for DynamicButtonView();
  v29 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  sub_90F00();

  return v29;
}

id sub_90234(void *a1)
{
  v2 = v1;
  *&v31 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel;
  sub_139BB4();
  v3 = objc_opt_self();
  v4 = [v3 ams_primaryText];
  v5 = sub_13A2A4();
  v41 = v5;
  v42 = &protocol witness table for FontSource;
  v6 = sub_CC08(&v40);
  if (qword_199FB0 != -1)
  {
    sub_91ED0(&qword_199FB0);
  }

  v7 = qword_19E4E8;
  *v6 = qword_19E4E8;
  v8 = enum case for FontSource.textStyle(_:);
  sub_2B538();
  v10 = *(v9 + 104);
  v10(v6, v8, v5);
  v11 = v7;
  sub_91F34();
  *&v1[v31] = sub_139BA4();
  v12 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel;
  v13 = [v3 ams_primaryText];
  v41 = v5;
  v42 = &protocol witness table for FontSource;
  v14 = sub_CC08(&v40);
  if (qword_199FB8 != -1)
  {
    sub_91EB0(&qword_199FB8);
  }

  v15 = qword_19E4F0;
  *v14 = qword_19E4F0;
  v10(v14, v8, v5);
  v16 = v15;
  sub_91F34();
  *&v1[v12] = sub_139BA4();
  v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_isEnabled] = 1;
  v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_style] = 0;
  v17 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_metrics;
  if (qword_199F98 != -1)
  {
    sub_91E90(&qword_199F98);
  }

  v18 = &v1[v17];
  v19 = xmmword_19E4A0;
  v20 = *&qword_19E4B0;
  if (qword_199FA0 != -1)
  {
    sub_91E6C(&qword_199FA0);
    v20 = v30;
    v19 = v31;
  }

  v21 = xmmword_19E4C0;
  v22 = *&qword_19E4D0;
  v41 = &type metadata for CGFloat;
  v42 = &protocol witness table for CGFloat;
  *&v40 = 0;
  v38 = &type metadata for CGFloat;
  v39 = &protocol witness table for CGFloat;
  v36 = &protocol witness table for CGFloat;
  *&v37 = 0x404A000000000000;
  v35 = &type metadata for CGFloat;
  *&v34 = 0x404A000000000000;
  if (qword_199FA8 != -1)
  {
    sub_91E44(&qword_199FA8);
    v22 = v28;
    v21 = v29;
    v20 = v30;
    v19 = v31;
  }

  v23 = qword_19E4E0;
  *(v18 + 26) = &type metadata for CGFloat;
  *(v18 + 27) = &protocol witness table for CGFloat;
  *(v18 + 23) = v23;
  *(v18 + 31) = &type metadata for CGFloat;
  *(v18 + 32) = &protocol witness table for CGFloat;
  *(v18 + 28) = 0;
  *v18 = v19;
  *(v18 + 1) = v20;
  *(v18 + 2) = v21;
  *(v18 + 3) = v22;
  sub_21520(&v40, (v18 + 64));
  sub_21520(&v37, (v18 + 104));
  sub_21520(&v34, (v18 + 144));
  v33.receiver = v2;
  v33.super_class = type metadata accessor for DynamicButtonView();
  v24 = objc_msgSendSuper2(&v33, "initWithCoder:", a1);
  v25 = v24;
  if (v24)
  {
    v26 = v24;
    sub_90F00();
  }

  return v25;
}

id sub_90588()
{
  (*(&stru_158.size + (swift_isaMask & **&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel])))();

  return [v0 setNeedsLayout];
}

id sub_90640()
{
  if ([*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel) hasContent])
  {
    return &dword_0 + 1;
  }

  else
  {
    return [*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel) hasContent];
  }
}

uint64_t sub_90694()
{
  v1 = v0;
  v2 = sub_13A314();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DynamicButtonView();
  v20.receiver = v0;
  v20.super_class = v6;
  objc_msgSendSuper2(&v20, "layoutSubviews");
  sub_91CDC(&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_metrics], v19);
  v7 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel];
  v8 = sub_139BB4();
  v19[36] = v8;
  v9 = sub_270D8();
  v19[33] = v7;
  v10 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel];
  v19[41] = v8;
  v19[42] = v9;
  v19[37] = v9;
  v19[38] = v10;
  v11 = v7;
  v12 = v10;
  [v1 bounds];
  sub_92100(v1, v13, v14, v15, v16);
  (*(v3 + 8))(v5, v2);
  return sub_91D38(v19);
}

double sub_9084C(double a1, double a2)
{
  sub_91CDC(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_metrics, v12);
  v4 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel);
  v5 = sub_139BB4();
  v12[36] = v5;
  v6 = sub_270D8();
  v12[33] = v4;
  v7 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel);
  v12[41] = v5;
  v12[42] = v6;
  v12[37] = v6;
  v12[38] = v7;
  v8 = v4;
  v9 = v7;
  v10 = sub_91968(v2, v12, a1);
  sub_91D38(v12);
  return v10;
}

uint64_t sub_90A1C()
{
  v1 = v0;
  v2 = *(&stru_B8.reserved2 + (swift_isaMask & **(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel)));
  v2(v33);
  v3 = v34;
  if (v34)
  {
    v4 = v35;
    sub_162F0(v33, v34);
    v5 = (*(v4 + 16))(v3, v4);
    v7 = v6;
    v8 = sub_3C04(v33);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = sub_2519C(v33);
  }

  (v2)(v33, v8);
  v9 = v34;
  if (!v34)
  {
    sub_2519C(v33);

    v13 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v10 = v35;
  sub_162F0(v33, v34);
  v5 = (*(v10 + 72))(v9, v10);
  v7 = v11;
  sub_3C04(v33);

LABEL_7:
  sub_58C88();
  v13 = v12;
  v14 = v12[2];
  if (v14 >= v12[3] >> 1)
  {
    sub_58C88();
    v13 = v30;
  }

  v13[2] = v14 + 1;
  v15 = &v13[2 * v14];
  v15[4] = v5;
  v15[5] = v7;
LABEL_11:
  v16 = *(&stru_B8.reserved2 + (swift_isaMask & **(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel)));
  v16(v33);
  v17 = v34;
  if (v34)
  {
    v18 = v35;
    sub_162F0(v33, v34);
    v19 = (*(v18 + 16))(v17, v18);
    v21 = v20;
    v22 = sub_3C04(v33);
    if (v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v22 = sub_2519C(v33);
  }

  (v16)(v33, v22);
  v23 = v34;
  if (!v34)
  {
    sub_2519C(v33);

    goto LABEL_23;
  }

  v24 = v35;
  sub_162F0(v33, v34);
  v19 = (*(v24 + 72))(v23, v24);
  v21 = v25;
  sub_3C04(v33);

LABEL_17:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_58C88();
    v13 = v31;
  }

  v26 = v13[2];
  if (v26 >= v13[3] >> 1)
  {
    sub_58C88();
    v13 = v32;
  }

  v13[2] = v26 + 1;
  v27 = &v13[2 * v26];
  v27[4] = v19;
  v27[5] = v21;
LABEL_23:
  v33[0] = v13;
  sub_4948(&qword_19E550, &unk_1464D0);
  sub_91D8C();
  v28 = sub_13BB34();

  return v28;
}

void sub_90E80(uint64_t a1)
{
  v2.receiver = v1;
  v2.super_class = type metadata accessor for DynamicButtonView();
  objc_msgSendSuper2(&v2, "tintColorDidChange");
  sub_90FAC();
}

id sub_90F00()
{
  v1 = [objc_opt_self() ams_clear];
  [v0 setBackgroundColor:v1];

  [v0 setUserInteractionEnabled:0];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel]];
  v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel];

  return [v0 addSubview:v2];
}

void sub_90FAC()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_style];
  v3 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel];
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = objc_opt_self();
      v5 = [v4 ams_primaryText];
      (*&stru_B8.segname[(swift_isaMask & *v3) + 8])(v5);
      v6 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel];
      v7 = [v4 ams_primaryText];
      (*&stru_B8.segname[(swift_isaMask & *v6) + 8])(v7);
      v8 = [v4 ams_clear];
LABEL_16:
      v25 = v8;
      [v1 setBackgroundColor:v25];

      return;
    }

    if ([v1 tintColor])
    {
      sub_91EF0();
      (*(v23 + 208))();
      if ([v1 tintColor])
      {
        sub_91EF0();
        (*(v24 + 208))();
        v8 = [objc_opt_self() ams_clear];
        goto LABEL_16;
      }

LABEL_22:
      __break(1u);
      return;
    }

    goto LABEL_20;
  }

  v9 = [v1 tintColor];
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = v9;
  v11 = [v9 ams_isLight];

  v12 = objc_opt_self();
  if (v11)
  {
    v13 = &selRef_blackColor;
  }

  else
  {
    v13 = &selRef_whiteColor;
  }

  v14 = [v12 *v13];
  sub_91EF0();
  (*(v15 + 208))();
  v16 = [v1 tintColor];
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v16;
  v18 = [v16 ams_isLight];

  v19 = objc_opt_self();
  if (v18)
  {
    v20 = &selRef_blackColor;
  }

  else
  {
    v20 = &selRef_whiteColor;
  }

  v21 = [v19 *v20];
  sub_91EF0();
  (*(v22 + 208))();
}

double sub_912F0(double a1, double a2, float a3, float a4)
{
  if (a3 == 1000.0)
  {
    v7 = a1;
  }

  else
  {
    v7 = 1.79769313e308;
  }

  sub_91CDC(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_metrics, v17);
  v8 = *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel);
  v9 = sub_139BB4();
  v17[36] = v9;
  v10 = sub_270D8();
  v17[33] = v8;
  v11 = *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel);
  v17[41] = v9;
  v17[42] = v10;
  v17[37] = v10;
  v17[38] = v11;
  v12 = v8;
  v13 = v11;
  v14 = sub_91968(v4, v17, v7);
  if (a3 == 1000.0)
  {
    v15 = a1;
  }

  else
  {
    v15 = v14;
  }

  sub_91D38(v17);
  return v15;
}

id sub_913F4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DynamicButtonView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

_BYTE *storeEnumTagSinglePayload for DynamicButtonView.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x91574);
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

unint64_t sub_915B0()
{
  result = qword_19E548;
  if (!qword_19E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E548);
  }

  return result;
}

uint64_t sub_91604()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 13.0, (v5 & 1) == 0))
  {
    v6 = 14.0;
  }

  *&xmmword_19E4A0 = v6;
  *(&xmmword_19E4A0 + 1) = 0x4030000000000000;
  qword_19E4B0 = *&v6;
  qword_19E4B8 = 0x4030000000000000;
  return result;
}

uint64_t sub_9171C()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 5.0, (v5 & 1) == 0))
  {
    v6 = 6.0;
  }

  *&xmmword_19E4C0 = v6;
  *(&xmmword_19E4C0 + 1) = 0x4030000000000000;
  qword_19E4D0 = *&v6;
  qword_19E4D8 = 0x4030000000000000;
  return result;
}

uint64_t sub_91834()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 0.0, (v5 & 1) == 0))
  {
    v6 = 2.0;
  }

  qword_19E4E0 = *&v6;
  return result;
}

double sub_91968(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_13A514();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0((a2 + 264), *(a2 + 288));
  if (sub_13A324())
  {
    sub_162F0((a2 + 264), *(a2 + 288));
    if ((sub_13A364() & 1) == 0)
    {
      sub_1398D4();
      sub_1398D4();
      sub_1398D4();
      sub_1398D4();
    }
  }

  sub_13BE64();
  sub_162F0((a2 + 264), *(a2 + 288));
  if ((sub_13A324() & 1) != 0 && (sub_162F0((a2 + 264), *(a2 + 288)), (sub_13A364() & 1) == 0))
  {
    v9 = 168;
    v10 = 144;
  }

  else
  {
    v9 = 128;
    v10 = 104;
  }

  sub_162F0((a2 + v10), *(a2 + v9));
  sub_13A3F4();
  sub_92504();
  sub_13A464();
  (*(v6 + 8))(v8, v5);
  return a3;
}

uint64_t sub_91BF0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v9[3] = a4;
  v9[4] = a5;
  sub_CC08(v9);
  sub_2B538();
  (*(v7 + 16))();
  (*(&stru_158.size + (swift_isaMask & **&a3[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel])))(v9, a2);
  [a3 setNeedsLayout];
  return sub_3C04(v9);
}

unint64_t sub_91D8C()
{
  result = qword_19E558;
  if (!qword_19E558)
  {
    sub_558C(&qword_19E550, &unk_1464D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E558);
  }

  return result;
}

uint64_t sub_91E44(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_91E6C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_91E90(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_91EB0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_91ED0(uint64_t a1)
{

  return swift_once();
}

void sub_91F00(double a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v9 = (v5 + v6);
  v9[13].n128_u64[0] = v7;
  v9[13].n128_u64[1] = v8;
  v9[11].n128_f64[1] = a1;
  v9[15].n128_u64[1] = v7;
  v9[16].n128_u64[0] = v8;
  v9[14].n128_u64[0] = 0;
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
}

uint64_t sub_91F48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 344))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_91F88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 344) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_92030(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 264))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_92070(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_92100(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v7 = sub_13A564();
  __chkstk_darwin(v7 - 8);
  sub_9EC0();
  v8 = sub_13A514();
  sub_9E94();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_9EC0();
  v14 = v13 - v12;
  v15 = sub_13A314();
  sub_9E94();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_9EC0();
  v21 = v20 - v19;
  sub_162F0(v5 + 33, v5[36]);
  if (sub_13A324())
  {
    sub_162F0(v5 + 33, v5[36]);
    if ((sub_13A364() & 1) == 0)
    {
      sub_1398D4();
      sub_1398D4();
      sub_1398D4();
      sub_1398D4();
    }
  }

  sub_13BE34();
  sub_92504();
  sub_13A474();
  (*(v10 + 8))(v14, v8);
  (*(v17 + 8))(v21, v15);
  sub_162F0(v5 + 38, v5[41]);
  sub_13A344();
  v23 = v22;
  sub_92E38();
  v24 = 0.0;
  v25 = 0.0;
  if (sub_13A324())
  {
    sub_92E38();
    if ((sub_13A364() & 1) == 0)
    {
      sub_92E38();
      sub_13A344();
      v25 = v26;
    }
  }

  sub_92E38();
  if (sub_13A324())
  {
    sub_92E38();
    if ((sub_13A364() & 1) == 0)
    {
      sub_162F0(v5 + 23, v5[26]);
      sub_13A3F4();
      v24 = v27;
    }
  }

  v35.origin.x = sub_3001C();
  v28 = (CGRectGetHeight(v35) - v23 - v25 - v24) * 0.5 + a3;
  sub_162F0(v5 + 38, v5[41]);
  v29 = sub_13A334();
  *(v30 + 8) = v28;
  v29(v34, 0);
  sub_162F0(v5 + 33, v5[36]);
  v31 = sub_13A334();
  *(v32 + 8) = v24 + v23 + v28;
  v31(v34, 0);
  sub_13A554();
  sub_3001C();
  return sub_13A2F4();
}

uint64_t sub_92504()
{
  v32 = sub_13A4C4();
  sub_9E94();
  v36 = v0;
  __chkstk_darwin(v1);
  sub_9EC0();
  v30 = v3 - v2;
  v35 = sub_13A454();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  v10 = sub_13A4B4();
  v33 = *(v10 - 8);
  __chkstk_darwin(v10);
  sub_9EC0();
  v34 = v12 - v11;
  sub_4948(&qword_19AFE8, &unk_140260);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v40[0] = v13;
  sub_20068();
  sub_4948(&qword_19AFF0, &unk_1402B0);
  sub_1D268();
  v31 = v10;
  sub_13BF64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  sub_13A4F4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  v14 = v29[41];
  v15 = v29[42];
  v16 = sub_162F0(v29 + 38, v14);
  v41 = v14;
  v42 = *(v15 + 8);
  v17 = sub_CC08(v40);
  (*(*(v14 - 8) + 16))(v17, v16, v14);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v28 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v27 = *(v5 + 104);
  v27(v9);
  v26 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v25 = *(v36 + 104);
  v25(v30);
  sub_13A4E4();
  v36 += 8;
  v24 = *v36;
  (*v36)(v30, v32);
  v18 = *(v5 + 8);
  v18(v9, v35);
  sub_1D2CC(&v37);
  sub_3C04(v40);
  v19 = v29[36];
  v20 = v29[37];
  v21 = sub_162F0(v29 + 33, v19);
  v41 = v19;
  v42 = *(v20 + 8);
  v22 = sub_CC08(v40);
  (*(*(v19 - 8) + 16))(v22, v21, v19);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  (v27)(v9, v28, v35);
  (v25)(v30, v26, v32);
  sub_13A4E4();
  v24(v30, v32);
  v18(v9, v35);
  sub_1D2CC(&v37);
  sub_3C04(v40);
  sub_13A4D4();
  return (*(v33 + 8))(v34, v31);
}

double sub_92B00(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_92BB0(a1, v3, a2);
}

unint64_t sub_92B5C()
{
  result = qword_19E560;
  if (!qword_19E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E560);
  }

  return result;
}

double sub_92BB0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_13A514();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0((a2 + 264), *(a2 + 288));
  if (sub_13A324())
  {
    sub_162F0((a2 + 264), *(a2 + 288));
    if ((sub_13A364() & 1) == 0)
    {
      sub_1398D4();
      sub_1398D4();
      sub_1398D4();
      sub_1398D4();
    }
  }

  sub_13BE64();
  sub_162F0((a2 + 264), *(a2 + 288));
  if ((sub_13A324() & 1) != 0 && (sub_162F0((a2 + 264), *(a2 + 288)), (sub_13A364() & 1) == 0))
  {
    v9 = 168;
    v10 = 144;
  }

  else
  {
    v9 = 128;
    v10 = 104;
  }

  sub_162F0((a2 + v10), *(a2 + v9));
  sub_13A3F4();
  sub_92504();
  sub_13A464();
  (*(v6 + 8))(v8, v5);
  return a3;
}

uint64_t sub_92E38()
{
  v1 = *(v0 + 288);
  sub_162F0((v0 + 264), v1);
  return v1;
}

uint64_t sub_92E64()
{
  v1 = v0;
  v2 = sub_13B704();
  __chkstk_darwin(v2 - 8);
  v3 = sub_13B764();
  v4 = __chkstk_darwin(v3 - 8);
  v5 = (*(&stru_68.reloff + (swift_isaMask & *v0)))(v4);
  sub_93184();

  (*&stru_68.segname[(swift_isaMask & *v1) + 16])();
  sub_13B6F4();
  sub_92FDC(&_swiftEmptyArrayStorage);
  sub_92FDC(&_swiftEmptyArrayStorage);
  return sub_13B774();
}

unint64_t sub_92FDC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_4948(&qword_19D530, &qword_144D98);
  v2 = sub_13C0E4();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_93114(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_7C52C(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_7D284(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_93114(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19E568, &unk_146640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_93184()
{
  sub_93268();
  v1 = (*(v0 + 160))();
  v3 = v2;
  sub_93268();
  v5 = (*(v4 + 112))();
  v7 = v6;
  sub_93268();
  v9 = (*(v8 + 136))();

  return ImpressionMetrics.ID.init(parent:element:index:)(v1, v3, v5, v7, v9);
}

uint64_t sub_93278(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_184578;
  v7._object = a2;
  v4 = sub_13C104(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_932CC(char a1)
{
  if (a1)
  {
    return 0x49416E65706FLL;
  }

  else
  {
    return 0x6C616E7265747865;
  }
}

uint64_t sub_93324@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_93278(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_93354@<X0>(uint64_t *a1@<X8>)
{
  result = sub_932CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_93390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_13B644();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_93404(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v132 = a2;
  v122 = a3;
  v5 = sub_4948(&qword_19DDA8, &unk_1459F0);
  __chkstk_darwin(v5 - 8);
  v124 = &v116 - v6;
  v123 = sub_13B644();
  sub_9E94();
  v119 = v7;
  __chkstk_darwin(v8);
  v118 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13B5A4();
  sub_9E94();
  v130 = v11;
  v131 = v10;
  __chkstk_darwin(v10);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v12);
  v14 = &v116 - v13;
  v135 = sub_13B584();
  sub_9E94();
  v141 = v15;
  __chkstk_darwin(v16);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v17);
  sub_18B60();
  __chkstk_darwin(v18);
  v20 = &v116 - v19;
  __chkstk_darwin(v21);
  sub_18B60();
  __chkstk_darwin(v22);
  v24 = &v116 - v23;
  __chkstk_darwin(v25);
  v27 = &v116 - v26;
  __chkstk_darwin(v28);
  v30 = &v116 - v29;
  v31 = type metadata accessor for ExternalAuthenticationAction(0);
  sub_2B538();
  __chkstk_darwin(v32);
  v34 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  v133 = v31;
  v134 = a1;
  sub_70E4(0xD000000000000011, 0x8000000000150300, v31, v35, v36, v37, v38, v39);
  v41 = v3;
  v125 = v20;
  v128 = v24;
  if (v3)
  {

    v41 = 0;
    v40 = 1;
  }

  *v34 = v40 & 1;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_8;
  }

  (*(v141 + 16))(v27, v30, v135);
  (*(v130 + 16))(v14, v132, v131);
  sub_94664();
  sub_13BF34();
  if (v41)
  {

    v137 = xmmword_146650;
    v138 = 0u;
    v139 = 0u;
    v140 = 0;
LABEL_7:
    sub_946B8(v137, 2, v138, *(&v138 + 1), v139, *(&v139 + 1), v140);
LABEL_8:
    v42 = sub_13BAB4();
    sub_94E90();
    v45 = sub_94DF0(v43, v44, &protocol conformance descriptor for JSONError);
    sub_94ED8(v42, v45);
    *v46 = 0x6E75426C65646F6DLL;
    v46[1] = 0xEB00000000656C64;
    v46[2] = v133;
    sub_2B538();
    (*(v47 + 104))();
    swift_willThrow();
    v48 = sub_94F04();
    MEMORY[0xEB00000000656C64](v48);

    v49 = 0;
    v50 = xmmword_13F2A0;
    v51 = 0uLL;
    v52 = 0uLL;
    goto LABEL_9;
  }

  if (*(&v137 + 1) == 2)
  {
    goto LABEL_7;
  }

  v86 = sub_94F04();
  MEMORY[0xEB00000000656C64](v86);
  v50 = v137;
  v51 = v138;
  v52 = v139;
  v49 = v140;
LABEL_9:
  *(v34 + 88) = v50;
  *(v34 + 104) = v51;
  *(v34 + 120) = v52;
  *(v34 + 17) = v49;
  v53 = v128;
  v54 = v134;
  sub_13B594();
  if (sub_13B564())
  {
LABEL_12:
    v56 = sub_13BAB4();
    sub_94E90();
    v59 = sub_94DF0(v57, v58, &protocol conformance descriptor for JSONError);
    v60 = sub_94ED8(v56, v59);
    *v61 = 0x656449687475416FLL;
    v61[1] = 0xEF7265696669746ELL;
    v61[2] = v133;
    sub_2B538();
    (*(v62 + 104))();
    v55 = v60;
    swift_willThrow();
    v63 = sub_94EA8();
    MEMORY[0xEB00000000656C64](v63);

    v64 = 0;
    v65 = xmmword_13F2A0;
    v66 = 0uLL;
    v67 = 0uLL;
    goto LABEL_13;
  }

  (*(v141 + 16))(v126, v53, v135);
  (*(v130 + 16))(v127, v132, v131);
  sub_94730();
  v55 = 0;
  sub_13BF34();
  if (*(&v137 + 1) == 2)
  {
    sub_94784(v137, 2, v138, *(&v138 + 1), v139, *(&v139 + 1), v140);
    goto LABEL_12;
  }

  v87 = sub_94EA8();
  MEMORY[0xEB00000000656C64](v87);
  v65 = v137;
  v66 = v138;
  v67 = v139;
  v64 = v140;
LABEL_13:
  *(v34 + 8) = v65;
  *(v34 + 24) = v66;
  *(v34 + 40) = v67;
  v34[56] = v64;
  sub_94F18();
  v68 = sub_BB310();
  if (v55)
  {
    MEMORY[0xEB00000000656C64](v54, 0);

LABEL_19:
    (*(v130 + 8))(v132, v131);
    sub_94794(*(v34 + 1), *(v34 + 2), *(v34 + 3), *(v34 + 4), *(v34 + 5), *(v34 + 6));
    if (!v55)
    {
    }

    sub_946C8(*(v34 + 11), *(v34 + 12), *(v34 + 13), *(v34 + 14), *(v34 + 15), *(v34 + 16), *(v34 + 17));
    return;
  }

  *(v34 + 8) = v68;
  *(v34 + 9) = v69;
  sub_94F18();
  v70 = sub_BB458();
  v117 = 0xEB00000000656C64;
  v34[80] = v70 & 1;
  v71 = v125;
  v72 = v134;
  sub_13B594();
  if (sub_13B564())
  {
LABEL_18:
    v78 = sub_13BAB4();
    sub_94E90();
    v81 = sub_94DF0(v79, v80, &protocol conformance descriptor for JSONError);
    sub_94ED8(v78, v81);
    strcpy(v82, "actionMetrics");
    *(v82 + 7) = -4864;
    *(v82 + 2) = v133;
    sub_2B538();
    (*(v83 + 104))();
    swift_willThrow();

    v84 = v135;
    v85 = v117;
    v117(v72, v135);
    v85(v71, v84);
    goto LABEL_19;
  }

  v76 = v124;
  sub_83C8(v71, v132, v73, v74, v75);
  v77 = v123;
  if (sub_52E0(v76, 1, v123) == 1)
  {
    sub_184DC(v76, &qword_19DDA8, &unk_1459F0);
    v72 = v134;
    goto LABEL_18;
  }

  v88 = v77;
  v89 = v141 + 8;
  v90 = v71;
  v91 = v135;
  v92 = v117;
  v117(v90, v135);
  v93 = v76;
  v95 = v119 + 32;
  v94 = *(v119 + 32);
  v96 = v118;
  v94(v118, v93, v88);
  v94(&v34[*(v133 + 36)], v96, v88);
  sub_94EF0();
  v97 = v120;
  sub_13B594();
  v98 = sub_13B564();
  v141 = v89;
  if (v98)
  {
    v99 = sub_13BAB4();
    sub_94E90();
    v102 = sub_94DF0(v100, v101, &protocol conformance descriptor for JSONError);
    sub_94ED8(v99, v102);
    *v103 = 0x416572756C696166;
    v103[1] = v95;
    v114 = v133;
    v103[2] = v133;
    sub_2B538();
    (*(v104 + 104))();
    swift_willThrow();
    v92(v97, v91);

    *&v139 = 0;
    v137 = 0u;
    v138 = 0u;
  }

  else
  {
    sub_139BC4();
    v92(v97, v91);
    sub_9414(&v136, &v137);
    v114 = v133;
  }

  sub_94EC0(*(v114 + 40));
  v105 = v121;
  v106 = v134;
  sub_13B594();
  if (sub_13B564())
  {
    v107 = sub_13BAB4();
    sub_94E90();
    v110 = sub_94DF0(v108, v109, &protocol conformance descriptor for JSONError);
    sub_94ED8(v107, v110);
    *v111 = 0x4173736563637573;
    v111[1] = v95;
    v111[2] = v133;
    sub_2B538();
    (*(v112 + 104))();
    swift_willThrow();

    v113 = v135;
    v92(v106, v135);
    v92(v105, v113);
    v114 = v133;

    *&v139 = 0;
    v137 = 0u;
    v138 = 0u;
  }

  else
  {
    sub_139BC4();

    v115 = v135;
    v92(v134, v135);
    v92(v105, v115);
    sub_9414(&v136, &v137);
  }

  sub_94EC0(*(v114 + 44));
  sub_947E8(v34, v122);
  (*(v130 + 8))(v132, v131);
  sub_9484C(v34);
}

uint64_t sub_941D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_BB310();
  if (v3)
  {

    v19 = 0;
    v8 = 0;
  }

  else
  {
    v8 = v7;
    v19 = v6;
  }

  v9 = sub_BB310();
  v11 = v10;
  v12 = sub_2B0E4(0x65676175676E616CLL, 0xEC00000065646F43, &type metadata for ExternalAuthenticationAction.Model);
  v13 = sub_BB310();
  v15 = v14;
  sub_13B5A4();
  sub_5224();
  (*(v16 + 8))(a2);
  sub_13B584();
  sub_5224();
  result = (*(v17 + 8))(a1);
  *a3 = v19;
  a3[1] = v8;
  a3[2] = v9;
  a3[3] = v11;
  a3[4] = v12;
  a3[5] = v13;
  a3[6] = v15;
  return result;
}

double sub_943AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_941D8(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    result = *&v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

uint64_t sub_943FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_BB310();
  if (v3)
  {

    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v19 = sub_BB458() & 1;
  v10 = sub_BB310();
  v12 = v11;
  v13 = sub_BB310();
  v15 = v14;
  sub_13B5A4();
  sub_5224();
  (*(v16 + 8))(a2);
  sub_13B584();
  sub_5224();
  result = (*(v17 + 8))(a1);
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v15;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = v19;
  return result;
}

double sub_945C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_943FC(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    result = *&v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

uint64_t type metadata accessor for ExternalAuthenticationAction(uint64_t a1)
{
  result = qword_19E5D8;
  if (!qword_19E5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_94664()
{
  result = qword_19E570;
  if (!qword_19E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E570);
  }

  return result;
}

void sub_946B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 2)
  {
    sub_946C8(result, a2, a3, a4, a5, a6, a7);
  }
}

void sub_946C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_94730()
{
  result = qword_19E578;
  if (!qword_19E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E578);
  }

  return result;
}

void sub_94784(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 2)
  {
    sub_94794(result, a2, a3, a4, a5, a6);
  }
}

void sub_94794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_947E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalAuthenticationAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9484C(uint64_t a1)
{
  v2 = type metadata accessor for ExternalAuthenticationAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ExternalAuthenticationAction.AuthenticatorType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x94974);
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

uint64_t sub_949AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_94A00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_94A70(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_94A8C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_94AE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_94B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_13B644();
    v9 = a1 + *(a3 + 36);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_94C04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B644();
    v8 = v5 + *(a4 + 36);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_94C84(uint64_t a1)
{
  sub_189DC(319, &qword_19E5E8, &type metadata for ExternalAuthenticationAction.OAuthIdentifier);
  if (v1 <= 0x3F)
  {
    sub_189DC(319, &qword_19CA40, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_189DC(319, &unk_19E5F0, &type metadata for ExternalAuthenticationAction.Model);
      if (v3 <= 0x3F)
      {
        sub_13B644();
        if (v4 <= 0x3F)
        {
          sub_5528(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_94D98(uint64_t a1)
{
  result = sub_94DF0(&qword_19E638, type metadata accessor for ExternalAuthenticationAction, &unk_146660);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_94DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_94E3C()
{
  result = qword_19E640;
  if (!qword_19E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E640);
  }

  return result;
}

__n128 sub_94EC0@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *(v2 - 160);
  v5 = *(v2 - 144);
  *v3 = result;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v2 - 128);
  return result;
}

uint64_t sub_94ED8(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_94F2C(char *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (qword_19A018 != -1)
  {
    sub_CCD4(&qword_19A018);
  }

  v7 = sub_139A14();
  sub_4910(v7, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  v8 = sub_1399C4();
  sub_CCF4(v8);
  *(swift_allocObject() + 16) = xmmword_13E660;
  v19 = ObjectType;
  v18[0] = v3;
  v3;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v18);
  sub_139974();
  v11 = *a1;
  v19 = &type metadata for ExternalAuthenticationAction.AuthenticatorType;
  LOBYTE(v18[0]) = v11;
  sub_139984();
  sub_928C(v18, &unk_1A06F0, &unk_13EF80);
  sub_1399F4();

  sub_4948(&qword_19E698, &unk_14A5F0);
  v13 = sub_13BA24();
  if (v11)
  {
    sub_9675C(a1, v12, a3);
  }

  else
  {
    sub_95198(a1, v12, a3);
  }

  sub_CACC(0, &qword_19EBA0, OS_dispatch_queue_ptr);
  v14 = sub_13BD84();
  v15 = sub_17208();
  sub_99728(v15, v16, v13);

  return v13;
}

uint64_t sub_95198(void *a1, uint64_t a2, uint64_t a3)
{
  v277 = a3;
  v300 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_4948(&qword_19E6A0, &qword_146900);
  sub_8AD98(v3);
  sub_171D0();
  __chkstk_darwin(v4);
  sub_2159C(&v260 - v5);
  v6 = sub_139B14();
  sub_9E94();
  v282 = v7;
  __chkstk_darwin(v8);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v9);
  sub_99F84();
  v291 = v10;
  sub_99FD4();
  v11 = sub_139AD4();
  sub_9E94();
  v267 = v12;
  __chkstk_darwin(v13);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v14);
  sub_99F84();
  sub_2159C(v15);
  v16 = sub_139AA4();
  sub_9E94();
  v270 = v17;
  __chkstk_darwin(v18);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v19);
  sub_99F84();
  sub_2159C(v20);
  v285 = sub_1397E4();
  sub_9E94();
  v284 = v21;
  __chkstk_darwin(v22);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v23);
  sub_99F84();
  v289 = v24;
  sub_99FD4();
  v279 = sub_13A264();
  sub_9E94();
  v278 = v25;
  __chkstk_darwin(v26);
  sub_9A178();
  v265 = v27;
  v264 = v28;
  __chkstk_darwin(v29);
  sub_99F84();
  v293 = v30;
  sub_99FD4();
  v290 = sub_13A274();
  sub_9E94();
  v288 = v31;
  __chkstk_darwin(v32);
  sub_9EC0();
  v287 = v34 - v33;
  v35 = sub_4948(&qword_19E6A8, &qword_146908);
  v36 = sub_8AD98(v35);
  __chkstk_darwin(v36);
  sub_2162C();
  v286 = v37;
  sub_99F78();
  __chkstk_darwin(v38);
  sub_99F84();
  v292 = v39;
  v40 = sub_4948(&qword_19E6B0, &qword_146910);
  sub_8AD98(v40);
  sub_171D0();
  __chkstk_darwin(v41);
  v43 = &v260 - v42;
  sub_139914();
  sub_9E94();
  v295 = v45;
  v296 = v44;
  __chkstk_darwin(v44);
  sub_9EC0();
  v294 = v47 - v46;
  v48 = sub_4948(&qword_19E6B8, &qword_146918);
  sub_8AD98(v48);
  sub_171D0();
  __chkstk_darwin(v49);
  v50 = sub_4948(&qword_19E6C0, &qword_146920);
  sub_8AD98(v50);
  sub_171D0();
  __chkstk_darwin(v51);
  v53 = &v260 - v52;
  sub_1398F4();
  sub_9E94();
  v298 = v55;
  v299 = v54;
  __chkstk_darwin(v54);
  v57 = &v260 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  sub_99F84();
  v297 = v59;
  v60 = sub_4948(&qword_19E6C8, &qword_146928);
  v61 = sub_8AD98(v60);
  __chkstk_darwin(v61);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v62);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v63);
  v65 = &v260 - v64;
  v66 = sub_4948(&qword_19E6D0, &qword_146930);
  v67 = sub_8AD98(v66);
  __chkstk_darwin(v67);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v68);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v69);
  v71 = &v260 - v70;
  v72 = sub_4948(&qword_19E6D8, &qword_146938);
  v73 = sub_8AD98(v72);
  __chkstk_darwin(v73);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v74);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v75);
  v77 = &v260 - v76;
  sub_99FA8();
  v280 = v16;
  sub_53A8(v78, v79, v80, v16);
  sub_99FA8();
  v274 = v11;
  sub_53A8(v81, v82, v83, v11);
  sub_99FA8();
  sub_53A8(v84, v85, v86, v6);
  sub_4948(&qword_19E698, &unk_14A5F0);
  v87 = sub_13BA24();
  v88 = v87;
  if (v300[12] < 2uLL)
  {
    goto LABEL_8;
  }

  v262 = v87;
  v281 = v77;
  v283 = v71;
  v266 = v65;
  v261 = v6;
  v89 = v300[14];
  v90 = v300[17];
  v260 = v300[16];
  if (v89)
  {

    sub_139844();
    sub_139834();
    sub_99FE0();
    sub_53A8(v91, v92, v93, v94);
  }

  else
  {
    sub_139834();
    sub_99FA8();
    sub_53A8(v95, v96, v97, v98);
  }

  sub_1398E4();
  sub_99FE0();
  v99 = v299;
  sub_53A8(v100, v101, v102, v299);
  v103 = v297;
  (*(v298 + 32))(v297, v53, v99);
  sub_9A10C();
  v104(v57, v103, v99);
  sub_139904();
  v105 = v296;
  sub_9A13C(v43, 1, v296);
  if (v106)
  {
    v107 = sub_9A1C0();
    v108(v107);
    sub_928C(v43, &qword_19E6B0, &qword_146910);
    v65 = v266;
    v71 = v283;
    v77 = v281;
    v88 = v262;
LABEL_8:
    v109 = sub_997E8();
    sub_94ED8(&type metadata for ExternalAuthenticationActionImplementation.ExternalAuthenticationError, v109);
    *v110 = 2;
    sub_13BA04();
    sub_928C(v65, &qword_19E6C8, &qword_146928);
    sub_928C(v71, &qword_19E6D0, &qword_146930);
    sub_928C(v77, &qword_19E6D8, &qword_146938);
    goto LABEL_9;
  }

  v112 = sub_101E4();
  v113(v112);
  if (v90)
  {

    v114 = v292;
    sub_13A1E4();
  }

  else
  {
    v114 = v292;
    sub_13A1F4();
  }

  v115 = v290;
  v116 = v291;
  v117 = v289;
  v118 = v293;
  v119 = v286;
  sub_16C24(v114, v286, &qword_19E6A8, &qword_146908);
  sub_9A13C(v119, 1, v115);
  if (v106)
  {
    v120 = sub_9A0A8();
    sub_928C(v120, v121, &qword_146908);
    v122 = sub_997E8();
    sub_94ED8(&type metadata for ExternalAuthenticationActionImplementation.ExternalAuthenticationError, v122);
    *v123 = 0;
    v88 = v262;
    sub_13BA04();
    sub_928C(v114, &qword_19E6A8, &qword_146908);
    (*(v295 + 8))(v294, v105);
    v124 = sub_9A0B4();
    v125(v124);
    sub_928C(v266, &qword_19E6C8, &qword_146928);
    v126 = sub_9A0D0();
    sub_928C(v126, v127, v128);
    v129 = sub_9A16C();
    sub_928C(v129, v130, v131);
    goto LABEL_9;
  }

  (*(v288 + 32))(v287, v119, v115);
  sub_13A204();
  sub_13A234();
  v132 = *(v300 + 80);
  if (v132 != 2)
  {
    sub_13A224();
    if (v133)
    {
      sub_13A214();
      if (v134)
      {
        if (v132)
        {
          sub_139A94();
          sub_9A1CC(&v302);
          sub_99FE0();
          sub_53A8(v135, v136, v137, v280);
          sub_9A1B4();
          sub_9A020();
          sub_16038(v138, v139, v140, v141);
          goto LABEL_29;
        }
      }
    }
  }

  if (qword_19A018 != -1)
  {
    sub_CCD4(&qword_19A018);
  }

  v142 = sub_139A14();
  sub_4910(v142, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  sub_9A0C4();
  v143 = sub_1399C4();
  sub_CCF4(v143);
  *(swift_allocObject() + 16) = xmmword_13E650;
  v301[3] = ObjectType;
  v301[0] = v272;
  v144 = v272;
  v145 = AMSLogKey();
  if (v145)
  {
    v146 = v145;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v301);
  sub_139974();
  sub_1399D4();

  v114 = v292;
  v118 = v293;
  v105 = v296;
LABEL_29:
  v147 = v300[2];
  if (v147 == 1)
  {
    goto LABEL_37;
  }

  v148 = *(v300 + 56);
  if (v148 != 2 && (v148 & 1) != 0)
  {
    sub_9A00C();
    v149 = sub_9A1A0();
    v150(v149);
    v118 = v293;
    sub_13A244();
    sub_9A18C();
    sub_139AB4();
    v114 = v292;
LABEL_35:
    v105 = v296;
LABEL_36:
    sub_9A1CC(&v303);
    sub_99FE0();
    sub_53A8(v153, v154, v155, v274);
    sub_9A1B4();
    sub_9A020();
    sub_16038(v156, v157, v158, v159);
    goto LABEL_37;
  }

  if (v300[6])
  {
    sub_9A00C();
    v151 = sub_9A1A0();
    v152(v151);

    sub_9A18C();
    sub_139AB4();
    v114 = v292;
    v118 = v293;
    goto LABEL_35;
  }

  v114 = v292;
  v118 = v293;
  v105 = v296;
  if (v147 && v300[4])
  {
    sub_9A00C();
    v258 = sub_9A160();
    v259(v258, v117, v285);

    v116 = v291;
    sub_9A020();
    sub_139AC4();
    goto LABEL_36;
  }

LABEL_37:
  v160 = sub_9A16C();
  v161 = v275;
  sub_16C24(v160, v275, v162, v163);
  v164 = v280;
  sub_9A13C(v161, 1, v280);
  if (!v106)
  {
    v170 = v269;
    v171 = sub_9A1B4();
    v172(v171);
    v173 = sub_9A0E8();
    v174(v173, v170, v164);
    v175 = sub_9A0D0();
    sub_16C24(v175, v273, v176, v177);
    sub_139AF4();
    v178 = sub_9A0A8();
    v179(v178);
    v180 = v266;
    v181 = sub_9A0A8();
    sub_928C(v181, v182, &qword_146928);
    sub_99FE0();
    sub_53A8(v183, v184, v185, v261);
    v116 = v291;
LABEL_42:
    sub_9A020();
    sub_16038(v197, v198, v199, v200);
    goto LABEL_43;
  }

  sub_928C(v161, &qword_19E6D8, &qword_146938);
  v165 = sub_9A0D0();
  v166 = v268;
  sub_16C24(v165, v268, v167, v168);
  v169 = v274;
  sub_9A13C(v166, 1, v274);
  v180 = v266;
  if (!v106)
  {
    v186 = v267;
    v187 = sub_9A160();
    v188(v187, v166, v169);
    v189 = sub_9A0E8();
    v190(v189, v116, v169);
    sub_139B04();
    v191 = v116;
    v116 = v291;
    (*(v186 + 8))(v191, v169);
    v192 = sub_9A0A8();
    sub_928C(v192, v193, &qword_146928);
    sub_99FE0();
    sub_53A8(v194, v195, v196, v261);
    goto LABEL_42;
  }

  sub_928C(v166, &qword_19E6D0, &qword_146930);
LABEL_43:
  v201 = v276;
  sub_139E64();
  sub_9A0C4();
  sub_13B6B4();
  sub_13B9A4();
  v202 = v301[0];
  v203 = sub_9A1C0();
  sub_16C24(v203, v204, v205, v206);
  v207 = sub_9A0DC();
  sub_9A13C(v207, v208, v261);
  if (v106)
  {
    sub_928C(v201, &qword_19E6C8, &qword_146928);
  }

  else
  {
    v209 = (*(v282 + 32))(v116, v201, v261);
    v210 = (*(*v202 + 88))(v209);
    if (v210)
    {
      v211 = v210;
      v212 = [v210 topViewController];

      if (v212)
      {
        v213 = v118;
        v214 = sub_9A0E8();
        v215(v214, v116, v261);
        v216 = objc_allocWithZone(sub_139B34());
        v300 = v212;
        v217 = sub_139B24();
        sub_13BCA4();
        v218 = v263;
        sub_99FA8();
        sub_53A8(v219, v220, v221, v222);
        v223 = v278;
        sub_9A10C();
        v224 = sub_9A160();
        v225 = v213;
        v226 = v279;
        v227(v224, v225, v279);
        v228 = v114;
        v229 = (v264 + ((*(v223 + 80) + 40) & ~*(v223 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
        v230 = swift_allocObject();
        v231 = sub_9A02C(v230);
        v232(v231);
        v233 = v262;
        *&v216[v229] = v262;
        v234 = v217;

        sub_98364(0, 0, v218, &unk_146948, v216);

        sub_40750();
        v235(v291, v261);
        v88 = v233;
        sub_40750();
        v236(v289, v285);
        (*(v223 + 8))(v293, v226);
        (*(v288 + 8))(v287, v290);
        sub_928C(v228, &qword_19E6A8, &qword_146908);
        (*(v295 + 8))(v294, v296);
        v237 = sub_9A0B4();
        v238(v237);
        sub_928C(v266, &qword_19E6C8, &qword_146928);
        v239 = sub_9A0D0();
        sub_928C(v239, v240, v241);
        v242 = sub_9A16C();
        sub_928C(v242, v243, v244);
        return v88;
      }
    }

    sub_40750();
    v245(v116, v261);
  }

  v246 = sub_997E8();
  sub_94ED8(&type metadata for ExternalAuthenticationActionImplementation.ExternalAuthenticationError, v246);
  *v247 = 1;
  v88 = v262;
  sub_13BA04();

  sub_40750();
  v248(v117, v285);
  sub_40750();
  v249(v118, v279);
  (*(v288 + 8))(v287, v290);
  sub_928C(v114, &qword_19E6A8, &qword_146908);
  (*(v295 + 8))(v294, v105);
  v250 = sub_9A0B4();
  v251(v250);
  sub_928C(v180, &qword_19E6C8, &qword_146928);
  v252 = sub_9A0D0();
  sub_928C(v252, v253, v254);
  v255 = sub_9A16C();
  sub_928C(v255, v256, v257);
LABEL_9:

  return v88;
}

uint64_t sub_9675C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v183 = a3;
  v186 = a1;
  v3 = sub_4948(&qword_19E6A0, &qword_146900);
  sub_8AD98(v3);
  sub_171D0();
  __chkstk_darwin(v4);
  sub_2159C(&v165 - v5);
  v194 = sub_139B14();
  sub_9E94();
  v192 = v6;
  __chkstk_darwin(v7);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v8);
  sub_99F84();
  v191 = v9;
  sub_99FD4();
  v10 = sub_139AD4();
  sub_9E94();
  v171 = v11;
  __chkstk_darwin(v12);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v13);
  sub_99F84();
  sub_2159C(v14);
  v15 = sub_139AA4();
  sub_9E94();
  v175 = v16;
  __chkstk_darwin(v17);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v18);
  sub_99F84();
  sub_2159C(v19);
  v20 = sub_1397E4();
  sub_9E94();
  v179 = v21;
  __chkstk_darwin(v22);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v23);
  sub_99F84();
  v195 = v24;
  v25 = sub_4948(&unk_19EBC0, &unk_1479D0);
  sub_8AD98(v25);
  sub_171D0();
  __chkstk_darwin(v26);
  v28 = &v165 - v27;
  v178 = sub_13A1D4();
  sub_9E94();
  v30 = v29;
  __chkstk_darwin(v31);
  sub_9EC0();
  v34 = v33 - v32;
  sub_13A1C4();
  sub_9E94();
  v184 = v36;
  v185 = v35;
  __chkstk_darwin(v35);
  sub_9A178();
  v167 = v37;
  v166 = v38;
  __chkstk_darwin(v39);
  v41 = &v165 - v40;
  v42 = sub_4948(&qword_19E6C8, &qword_146928);
  v43 = sub_8AD98(v42);
  __chkstk_darwin(v43);
  sub_2162C();
  v181 = v44;
  sub_99F78();
  __chkstk_darwin(v45);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v46);
  v48 = &v165 - v47;
  v49 = sub_4948(&qword_19E6D0, &qword_146930);
  v50 = sub_8AD98(v49);
  __chkstk_darwin(v50);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v51);
  sub_18C34();
  v176 = v52;
  sub_99F78();
  __chkstk_darwin(v53);
  v55 = &v165 - v54;
  v56 = sub_4948(&qword_19E6D8, &qword_146938);
  v57 = sub_8AD98(v56);
  __chkstk_darwin(v57);
  sub_2162C();
  v180 = v58;
  sub_99F78();
  __chkstk_darwin(v59);
  v61 = &v165 - v60;
  __chkstk_darwin(v62);
  v193 = &v165 - v63;
  sub_99FA8();
  v187 = v15;
  sub_53A8(v64, v65, v66, v15);
  v189 = v55;
  sub_99FA8();
  v67 = v10;
  sub_53A8(v68, v69, v70, v10);
  v190 = v48;
  sub_99FA8();
  sub_53A8(v71, v72, v73, v194);
  sub_4948(&qword_19E698, &unk_14A5F0);
  v182 = sub_13BA24();
  sub_13A174();
  v74 = v186;
  sub_1397D4();
  result = sub_9A13C(v28, 1, v20);
  if (!v76)
  {
    sub_13A164();
    (*(v30 + 8))(v34, v178);
    v77 = v179;
    v177 = *(v179 + 8);
    v178 = v179 + 8;
    v177(v28, v20);
    sub_13A1A4();
    sub_13A194();
    v188 = v41;
    sub_13A184();
    v78 = v74;
    v79 = *(v74 + 80);
    v80 = v20;
    if (v79 == 2)
    {

      v81 = v193;
      v82 = v187;
    }

    else
    {
      v82 = v187;
      if (v79)
      {
        sub_139A94();
        v81 = v193;
        sub_928C(v193, &qword_19E6D8, &qword_146938);
        sub_99FE0();
        sub_53A8(v83, v84, v85, v82);
        sub_16038(v61, v81, &qword_19E6D8, &qword_146938);
      }

      else
      {

        v81 = v193;
      }
    }

    v86 = v78[2];
    v87 = v189;
    v187 = v80;
    if (v86 != 1)
    {
      if (v78[6])
      {
        (*(v77 + 16))(v172, v195, v80);

        sub_101E4();
        sub_139AB4();
      }

      else
      {
        if (!v86 || !v78[4])
        {
          goto LABEL_14;
        }

        (*(v77 + 16))(v172, v195, v187);

        v81 = v193;
        sub_139AC4();
      }

      sub_928C(v87, &qword_19E6D0, &qword_146930);
      sub_99FE0();
      sub_53A8(v88, v89, v90, v67);
      sub_9A020();
      sub_16038(v91, v92, v93, v94);
    }

LABEL_14:
    v95 = v180;
    sub_16C24(v81, v180, &qword_19E6D8, &qword_146938);
    v96 = sub_9A0DC();
    sub_9A13C(v96, v97, v82);
    if (v76)
    {
      sub_928C(v95, &qword_19E6D8, &qword_146938);
      v98 = v173;
      sub_16C24(v87, v173, &qword_19E6D0, &qword_146930);
      v99 = sub_9A0DC();
      sub_9A13C(v99, v100, v67);
      v115 = v188;
      if (v76)
      {
        sub_928C(v98, &qword_19E6D0, &qword_146930);
        v107 = v194;
        v104 = v190;
      }

      else
      {
        v116 = v171;
        v117 = v169;
        v118 = sub_9A1C0();
        v119(v118);
        (*(v116 + 16))(v170, v117, v67);
        sub_139B04();
        v120 = sub_9A1B4();
        v121(v120);
        v104 = v190;
        v122 = sub_9A0A8();
        sub_928C(v122, v123, &qword_146928);
        sub_99FE0();
        v107 = v194;
        sub_53A8(v124, v125, v126, v194);
        sub_9A020();
        sub_16038(v127, v128, v129, v130);
      }
    }

    else
    {
      v101 = v175;
      v102 = sub_9A0E8();
      v103(v102, v95, v82);
      (*(v101 + 16))(v174, v67, v82);
      sub_16C24(v87, v176, &qword_19E6D0, &qword_146930);
      sub_139AF4();
      (*(v101 + 8))(v67, v82);
      v104 = v190;
      v105 = sub_9A0A8();
      sub_928C(v105, v106, &qword_146928);
      sub_99FE0();
      v107 = v194;
      sub_53A8(v108, v109, v110, v194);
      sub_9A020();
      sub_16038(v111, v112, v113, v114);
      v115 = v188;
    }

    v131 = v181;
    sub_139E64();
    sub_9A0C4();
    sub_13B6B4();
    sub_13B9A4();
    v132 = v196;
    v133 = sub_9A1C0();
    sub_16C24(v133, v134, v135, v136);
    v137 = sub_9A0DC();
    sub_9A13C(v137, v138, v107);
    if (v76)
    {
      sub_928C(v131, &qword_19E6C8, &qword_146928);
    }

    else
    {
      v139 = (*(v192 + 32))(v191, v131, v107);
      v140 = (*(*v132 + 88))(v139);
      if (v140)
      {
        v141 = v140;
        v142 = [v140 topViewController];

        if (v142)
        {
          v143 = sub_9A0E8();
          v144(v143);
          v145 = objc_allocWithZone(sub_139B34());
          v186 = v142;
          v146 = sub_139B24();
          sub_13BCA4();
          v147 = v168;
          sub_99FA8();
          sub_53A8(v148, v149, v150, v151);
          v152 = v184;
          v153 = v185;
          sub_9A10C();
          v154 = sub_9A160();
          v155(v154, v115, v153);
          v156 = (v166 + ((*(v152 + 80) + 40) & ~*(v152 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
          v157 = swift_allocObject();
          v158 = sub_9A02C(v157);
          v159(v158);
          v160 = v182;
          *&v145[v156] = v182;
          v161 = v146;

          sub_98364(0, 0, v147, &unk_146998, v145);

          v162 = v160;
          (*(v192 + 8))(v191, v107);
          v177(v195, v187);
          (*(v152 + 8))(v188, v153);
          sub_928C(v190, &qword_19E6C8, &qword_146928);
          sub_928C(v189, &qword_19E6D0, &qword_146930);
          sub_928C(v193, &qword_19E6D8, &qword_146938);
          return v162;
        }
      }

      (*(v192 + 8))(v191, v107);
    }

    v163 = sub_997E8();
    sub_94ED8(&type metadata for ExternalAuthenticationActionImplementation.ExternalAuthenticationError, v163);
    *v164 = 1;
    v162 = v182;
    sub_13BA04();

    v177(v195, v187);
    (*(v184 + 8))(v115, v185);
    sub_928C(v104, &qword_19E6C8, &qword_146928);
    sub_928C(v87, &qword_19E6D0, &qword_146930);
    sub_928C(v81, &qword_19E6D8, &qword_146938);

    return v162;
  }

  __break(1u);
  return result;
}

uint64_t sub_97524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v7 = sub_13A1C4();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = sub_13A154();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = sub_1397E4();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  v10 = sub_139AE4();
  v6[21] = v10;
  v6[22] = *(v10 - 8);
  v6[23] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[24] = v11;
  v14 = (&async function pointer to dispatch thunk of ExternalAuthenticateTask.perform() + async function pointer to dispatch thunk of ExternalAuthenticateTask.perform());
  v12 = swift_task_alloc();
  v6[25] = v12;
  *v12 = v6;
  v12[1] = sub_97758;

  return v14(v11);
}

uint64_t sub_97758()
{
  sub_9A058();
  sub_9A04C();
  sub_99F9C();
  *v3 = v2;
  v4 = *v1;
  sub_99F68();
  *v5 = v4;
  *(v6 + 208) = v0;

  sub_9A154();

  return _swift_task_switch(v7);
}

uint64_t sub_97854(uint64_t a1)
{
  v2 = v1[23];
  sub_9A10C();
  v3(v2);
  v4 = sub_101E4();
  v6 = v5(v4);
  if (v6 == enum case for ExternalAuthenticateTask.Result.siwa(_:))
  {
    v8 = v1[23];
    v7 = v1[24];
    v9 = v1[21];
    v10 = v1[22];
    v11 = sub_9A0F4();
    v12(v11);
    v13 = *v8;
    v14 = sub_CACC(0, &qword_19E6E8, AKAuthorization_ptr);
    v1[2] = v13;
    v1[5] = v14;
    v15 = v13;
    sub_13BA14();

    (*(v10 + 8))(v7, v9);
    sub_99BB4((v1 + 2));
LABEL_8:
    sub_99FB4();

    sub_99F90();

    return v32();
  }

  if (v6 != enum case for ExternalAuthenticateTask.Result.oAuth(_:))
  {
    v26 = v1[23];
    v25 = v1[24];
    v27 = v1[21];
    v28 = v1[22];
    v29 = sub_997E8();
    sub_94ED8(&type metadata for ExternalAuthenticationActionImplementation.ExternalAuthenticationError, v29);
    *v30 = 3;
    sub_13BA04();
    v31 = *(v28 + 8);
    v31(v25, v27);

    v31(v26, v27);
    goto LABEL_8;
  }

  v17 = v1[13];
  v16 = v1[14];
  v18 = v1[12];
  v19 = v1[10];
  (*(v1[22] + 96))(v1[23], v1[21]);
  v20 = sub_17208();
  v21(v20);
  (*(v17 + 16))(v16, v19, v18);
  v22 = swift_task_alloc();
  v1[27] = v22;
  *v22 = v1;
  v22[1] = sub_97B00;
  v23 = v1[20];
  v24 = v1[17];

  return OpenAIAuthenticator.Session.handleAuthorizationRedirect(url:)(v24, v23);
}

uint64_t sub_97B00()
{
  sub_9A058();
  sub_9A04C();
  sub_99F9C();
  *v3 = v2;
  v4 = *v1;
  sub_99F68();
  *v5 = v4;
  *(v6 + 224) = v0;

  sub_9A154();

  return _swift_task_switch(v7);
}

uint64_t sub_97BFC()
{
  v2 = v0[22];
  v12 = v0[21];
  v13 = v0[24];
  v3 = v0[19];
  v11 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  sub_97E70();
  v8 = sub_4948(&qword_19DE28, &qword_145A30);
  sub_9A118(v8);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v11, v4);
  (*(v2 + 8))(v13, v12);
  sub_99BB4(v1);
  sub_99FB4();

  sub_99F90();

  return v9();
}

uint64_t sub_97D24()
{
  sub_9A064();
  sub_9A1EC();

  sub_99FB4();

  sub_99F90();

  return v0();
}

uint64_t sub_97DB0()
{
  sub_9A064();
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = sub_101E4();
  v2(v1);
  sub_9A1EC();

  sub_99FB4();

  sub_99F90();

  return v3();
}

uint64_t sub_97E70()
{
  v1 = sub_139824();
  v46 = *(v1 - 8);
  v47 = v1;
  __chkstk_darwin(v1);
  v45 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_13A0D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_13A104();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  v43 = v0;
  sub_13A114();
  sub_13A0E4();
  v17 = *(v8 + 8);
  v44 = v7;
  v42 = v17;
  v17(v16, v7);
  v18 = (*(v4 + 88))(v6, v3);
  if (v18 == enum case for OpenAIAuthenticator.BillingPlan.Category.free(_:))
  {
    v19 = 0xE400000000000000;
    v20 = 1701147238;
  }

  else if (v18 == enum case for OpenAIAuthenticator.BillingPlan.Category.paid(_:))
  {
    v19 = 0xE400000000000000;
    v20 = 1684627824;
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    v19 = 0xE700000000000000;
    v20 = 0x6E776F6E6B6E75;
  }

  v41 = v20;
  sub_4948(&qword_19E6F0, &qword_146970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_140290;
  *(inited + 32) = 0x656D614E72657375;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_13A144();
  *(inited + 56) = v22;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6C69616D65;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = sub_13A134();
  *(inited + 104) = v23;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x79726F6765746163;
  *(inited + 136) = 0xE800000000000000;
  sub_4948(&qword_19E6F8, &qword_146978);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_13E660;
  *(v24 + 32) = 0x79726F6765746163;
  *(v24 + 40) = 0xE800000000000000;
  *(v24 + 48) = v41;
  *(v24 + 56) = v19;
  *(v24 + 64) = 0x656D614E6E616C70;
  *(v24 + 72) = 0xE800000000000000;
  sub_13A114();
  v25 = sub_13A0F4();
  v27 = v26;
  v28 = v13;
  v29 = v44;
  v30 = v42;
  v42(v28, v44);
  *(v24 + 80) = v25;
  *(v24 + 88) = v27;
  *(v24 + 96) = 0x636170736B726F77;
  *(v24 + 104) = 0xEB00000000444965;
  sub_13A114();
  v31 = sub_13A0C4();
  v33 = v32;
  v30(v10, v29);
  *(v24 + 112) = v31;
  *(v24 + 120) = v33;
  v34 = sub_13BB14();
  v35 = sub_4948(&qword_19E700, &unk_146980);
  *(inited + 144) = v34;
  *(inited + 168) = v35;
  strcpy((inited + 176), "expirationDate");
  *(inited + 191) = -18;
  v36 = v45;
  sub_13A124();
  v37 = sub_139814();
  v39 = v38;
  (*(v46 + 8))(v36, v47);
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v37;
  *(inited + 200) = v39;
  return sub_13BB14();
}

uint64_t sub_98364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_4948(&qword_19E6A0, &qword_146900);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_16C24(a3, v24 - v10, &qword_19E6A0, &qword_146900);
  v12 = sub_13BCA4();
  v13 = sub_52E0(v11, 1, v12);

  if (v13 == 1)
  {
    sub_928C(v11, &qword_19E6A0, &qword_146900);
  }

  else
  {
    sub_13BC94();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_13BC84();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_13BB94() + 32;
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

      sub_928C(a3, &qword_19E6A0, &qword_146900);

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

  sub_928C(a3, &qword_19E6A0, &qword_146900);
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

uint64_t sub_98648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v7 = sub_13A0B4();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = sub_1397E4();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = sub_139AE4();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[21] = v10;
  v13 = (&async function pointer to dispatch thunk of ExternalAuthenticateTask.perform() + async function pointer to dispatch thunk of ExternalAuthenticateTask.perform());
  v11 = swift_task_alloc();
  v6[22] = v11;
  *v11 = v6;
  v11[1] = sub_98820;

  return v13(v10);
}

uint64_t sub_98820()
{
  sub_9A058();
  sub_9A04C();
  sub_99F9C();
  *v3 = v2;
  v4 = *v1;
  sub_99F68();
  *v5 = v4;
  *(v6 + 184) = v0;

  sub_9A154();

  return _swift_task_switch(v7);
}

uint64_t sub_9891C(uint64_t a1)
{
  v2 = v1[20];
  sub_9A10C();
  v3(v2);
  v4 = sub_101E4();
  v6 = v5(v4);
  if (v6 == enum case for ExternalAuthenticateTask.Result.siwa(_:))
  {
    v8 = v1[20];
    v7 = v1[21];
    v9 = v1[18];
    v10 = v1[19];
    v11 = sub_9A0F4();
    v12(v11);
    v13 = *v8;
    v14 = sub_CACC(0, &qword_19E6E8, AKAuthorization_ptr);
    v1[2] = v13;
    v1[5] = v14;
    v15 = v13;
    sub_13BA14();

    (*(v10 + 8))(v7, v9);
    sub_99BB4((v1 + 2));
LABEL_8:
    sub_9A08C();

    sub_99F90();

    return v28();
  }

  if (v6 != enum case for ExternalAuthenticateTask.Result.oAuth(_:))
  {
    v22 = v1[20];
    v21 = v1[21];
    v23 = v1[18];
    v24 = v1[19];
    v25 = sub_997E8();
    sub_94ED8(&type metadata for ExternalAuthenticationActionImplementation.ExternalAuthenticationError, v25);
    *v26 = 3;
    sub_13BA04();
    v27 = *(v24 + 8);
    v27(v21, v23);

    v27(v22, v23);
    goto LABEL_8;
  }

  (*(v1[19] + 96))(v1[20], v1[18]);
  v16 = sub_17208();
  v17(v16);
  v18 = swift_task_alloc();
  v1[24] = v18;
  *v18 = v1;
  v18[1] = sub_98B8C;
  v19 = v1[17];
  v20 = v1[14];

  return ExternalPartnerAuthenticator.AuthenticationSession.exchangeCredentialedURLForCredentials(url:)(v20, v19);
}

uint64_t sub_98B8C()
{
  sub_9A058();
  sub_9A04C();
  sub_99F9C();
  *v3 = v2;
  v4 = *v1;
  sub_99F68();
  *v5 = v4;
  *(v6 + 200) = v0;

  sub_9A154();

  return _swift_task_switch(v7);
}

uint64_t sub_98C88()
{
  v2 = v0[19];
  v12 = v0[18];
  v13 = v0[21];
  v3 = v0[16];
  v11 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  sub_98EE4();
  v8 = sub_4948(&qword_19DE28, &qword_145A30);
  sub_9A118(v8);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v11, v4);
  (*(v2 + 8))(v13, v12);
  sub_99BB4(v1);
  sub_9A08C();

  sub_99F90();

  return v9();
}

uint64_t sub_98DA8()
{
  sub_9A064();
  sub_9A1EC();

  sub_9A08C();

  sub_99F90();

  return v0();
}

uint64_t sub_98E2C()
{
  sub_9A064();
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = sub_101E4();
  v2(v1);
  sub_9A1EC();

  sub_9A08C();

  sub_99F90();

  return v3();
}

uint64_t sub_98EE4()
{
  v0 = sub_139824();
  v45 = *(v0 - 8);
  v46 = v0;
  __chkstk_darwin(v0);
  v44 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_13A024();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_13A054();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  sub_13A064();
  sub_13A034();
  v15 = *(v7 + 8);
  v43 = v6;
  v41 = v15;
  v15(v14, v6);
  v16 = (*(v3 + 88))(v5, v2);
  if (v16 == enum case for BillingPlan.Category.free(_:))
  {
    v17 = 0xE400000000000000;
    v18 = 1701147238;
  }

  else if (v16 == enum case for BillingPlan.Category.paid(_:))
  {
    v17 = 0xE400000000000000;
    v18 = 1684627824;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    v17 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E75;
  }

  sub_4948(&qword_19E6F0, &qword_146970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13F4C0;
  strcpy((inited + 32), "credentialsID");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_13A074();
  *(inited + 56) = v20;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x656D614E72657375;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_13A0A4();
  *(inited + 104) = v21;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x6C69616D65;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = sub_13A094();
  *(inited + 152) = v22;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x50676E696C6C6962;
  *(inited + 184) = 0xEB000000006E616CLL;
  sub_4948(&qword_19E6F8, &qword_146978);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_13E660;
  *(v23 + 32) = 0x79726F6765746163;
  *(v23 + 40) = 0xE800000000000000;
  *(v23 + 48) = v18;
  *(v23 + 56) = v17;
  *(v23 + 64) = 0x656D614E6E616C70;
  *(v23 + 72) = 0xE800000000000000;
  sub_13A064();
  v24 = sub_13A044();
  v26 = v25;
  v27 = v43;
  v28 = v41;
  v41(v11, v43);
  *(v23 + 80) = v24;
  *(v23 + 88) = v26;
  *(v23 + 96) = 0x636170736B726F77;
  *(v23 + 104) = 0xEB00000000444965;
  v29 = v42;
  sub_13A064();
  v30 = sub_13A014();
  v32 = v31;
  v28(v29, v27);
  *(v23 + 112) = v30;
  *(v23 + 120) = v32;
  v33 = sub_13BB14();
  v34 = sub_4948(&qword_19E700, &unk_146980);
  *(inited + 192) = v33;
  *(inited + 216) = v34;
  strcpy((inited + 224), "expirationDate");
  *(inited + 239) = -18;
  v35 = v44;
  sub_13A084();
  v36 = sub_139814();
  v38 = v37;
  (*(v45 + 8))(v35, v46);
  *(inited + 264) = &type metadata for String;
  *(inited + 240) = v36;
  *(inited + 248) = v38;
  return sub_13BB14();
}

id sub_9941C()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

unint64_t sub_994D0()
{
  result = qword_19E638;
  if (!qword_19E638)
  {
    type metadata accessor for ExternalAuthenticationAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E638);
  }

  return result;
}

uint64_t sub_9954C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_99644;

  return v6(a1);
}

uint64_t sub_99644()
{
  sub_9A058();
  sub_9A04C();
  v1 = *v0;
  sub_99F68();
  *v2 = v1;

  sub_99F90();

  return v3();
}

uint64_t sub_99728(uint64_t a1, void *a2, uint64_t a3)
{
  v6[3] = sub_CACC(0, &qword_19EBA0, OS_dispatch_queue_ptr);
  v6[4] = &protocol witness table for OS_dispatch_queue;
  v6[0] = a2;
  swift_retain_n();
  v4 = a2;
  sub_13B9D4();

  return sub_3C04(v6);
}

unint64_t sub_997E8()
{
  result = qword_19E6E0;
  if (!qword_19E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E6E0);
  }

  return result;
}

uint64_t sub_99854(uint64_t a1)
{
  sub_9A0C4();
  v4 = sub_13A264();
  sub_CCF4(v4);
  sub_9A070();
  v5 = swift_task_alloc();
  v6 = sub_99FFC(v5);
  *v6 = v7;
  v6[1] = sub_99954;
  v8 = sub_99FEC();

  return sub_98648(v8, v9, v1, v2, v10, v3);
}

uint64_t sub_99954()
{
  sub_9A058();
  sub_9A04C();
  v1 = *v0;
  sub_99F68();
  *v2 = v1;

  sub_99F90();

  return v3();
}

uint64_t sub_99A34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_99A6C()
{
  sub_9A064();
  v0 = swift_task_alloc();
  v1 = sub_99FFC(v0);
  *v1 = v2;
  v1[1] = sub_99F64;
  v3 = sub_99FEC();

  return v4(v3);
}

uint64_t sub_99B10()
{
  sub_9A064();
  v0 = swift_task_alloc();
  v1 = sub_99FFC(v0);
  *v1 = v2;
  v1[1] = sub_99954;
  v3 = sub_99FEC();

  return v4(v3);
}

uint64_t sub_99C28(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_9E94();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 40) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v4 + 8))(v1 + v6, v2);

  return _swift_deallocObject(v1, v8 + 8, v5 | 7);
}

uint64_t sub_99D04(uint64_t a1)
{
  sub_9A0C4();
  v4 = sub_13A1C4();
  sub_CCF4(v4);
  sub_9A070();
  v5 = swift_task_alloc();
  v6 = sub_99FFC(v5);
  *v6 = v7;
  v6[1] = sub_99F64;
  v8 = sub_99FEC();

  return sub_97524(v8, v9, v1, v2, v10, v3);
}

_BYTE *storeEnumTagSinglePayload for ExternalAuthenticationActionImplementation.ExternalAuthenticationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x99ED0);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_99F0C()
{
  result = qword_19E708;
  if (!qword_19E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E708);
  }

  return result;
}

uint64_t sub_99FB4()
{
}

char *sub_9A02C(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
  return a1 + v2;
}

uint64_t sub_9A08C()
{
}

uint64_t sub_9A118(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 48) = v1;

  return sub_13BA14();
}

uint64_t sub_9A1CC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_928C(v4, v1, v2);
}

uint64_t sub_9A1EC()
{

  return sub_13BA04();
}

uint64_t sub_9A204()
{
  v0 = sub_13A3E4();
  sub_7E5D8(v0, qword_1B2AA8);
  v1 = sub_4910(v0, qword_1B2AA8);
  v2 = sub_9A2E0(14.0, 17.0, 23.0, 23.0);
  *v1 = 0xD000000000000012;
  *(v1 + 8) = 0x80000000001503E0;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

double (*sub_9A2E0(double a1, double a2, double a3, double a4))(uint64_t a1)
{
  sub_4948(&qword_19E710, &qword_146A98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_146A70;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  *(inited + 40) = a1;
  *(inited + 48) = UIContentSizeCategorySmall;
  v9 = objc_opt_self();
  v10 = UIContentSizeCategoryExtraSmall;
  v11 = UIContentSizeCategorySmall;
  v12 = [v9 functionWithName:kCAMediaTimingFunctionLinear];
  LODWORD(v13) = 1051372203;
  [v12 _solveForInput:v13];
  v15 = v14;

  *(inited + 56) = round(v15 * a2 + (1.0 - v15) * a1);
  *(inited + 64) = UIContentSizeCategoryMedium;
  v16 = UIContentSizeCategoryMedium;
  v17 = [v9 functionWithName:kCAMediaTimingFunctionLinear];
  LODWORD(v18) = 1059760811;
  [v17 _solveForInput:v18];
  v20 = v19;

  *(inited + 72) = round(v20 * a2 + (1.0 - v20) * a1);
  *(inited + 80) = UIContentSizeCategoryLarge;
  *(inited + 88) = a2;
  *(inited + 96) = UIContentSizeCategoryExtraLarge;
  v21 = UIContentSizeCategoryLarge;
  v22 = UIContentSizeCategoryExtraLarge;
  v23 = [v9 functionWithName:kCAMediaTimingFunctionLinear];
  LODWORD(v24) = 1051372203;
  [v23 _solveForInput:v24];
  LODWORD(a1) = v25;

  *(inited + 104) = round(*&a1 * a3 + (1.0 - *&a1) * a2);
  *(inited + 112) = UIContentSizeCategoryExtraExtraLarge;
  v26 = UIContentSizeCategoryExtraExtraLarge;
  v27 = [v9 functionWithName:kCAMediaTimingFunctionLinear];
  LODWORD(v28) = 1059760811;
  [v27 _solveForInput:v28];
  LODWORD(a1) = v29;

  *(inited + 120) = round(*&a1 * a3 + (1.0 - *&a1) * a2);
  *(inited + 128) = UIContentSizeCategoryExtraExtraExtraLarge;
  *(inited + 136) = a3;
  *(inited + 144) = UIContentSizeCategoryAccessibilityMedium;
  v30 = UIContentSizeCategoryExtraExtraExtraLarge;
  v31 = UIContentSizeCategoryAccessibilityMedium;
  v32 = [v9 functionWithName:kCAMediaTimingFunctionLinear];
  LODWORD(v33) = 1045220557;
  [v32 _solveForInput:v33];
  LODWORD(a1) = v34;

  *(inited + 152) = round(*&a1 * a4 + (1.0 - *&a1) * a3);
  *(inited + 160) = UIContentSizeCategoryAccessibilityLarge;
  v35 = UIContentSizeCategoryAccessibilityLarge;
  v36 = [v9 functionWithName:kCAMediaTimingFunctionLinear];
  LODWORD(v37) = 1053609165;
  [v36 _solveForInput:v37];
  LODWORD(a1) = v38;

  *(inited + 168) = round(*&a1 * a4 + (1.0 - *&a1) * a3);
  *(inited + 176) = UIContentSizeCategoryAccessibilityExtraLarge;
  v39 = UIContentSizeCategoryAccessibilityExtraLarge;
  v40 = [v9 functionWithName:kCAMediaTimingFunctionLinear];
  LODWORD(v41) = 1058642330;
  [v40 _solveForInput:v41];
  LODWORD(a1) = v42;

  *(inited + 184) = round(*&a1 * a4 + (1.0 - *&a1) * a3);
  *(inited + 192) = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v43 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v44 = [v9 functionWithName:kCAMediaTimingFunctionLinear];
  LODWORD(v45) = 1061997773;
  [v44 _solveForInput:v45];
  LODWORD(a1) = v46;

  *(inited + 200) = round(*&a1 * a4 + (1.0 - *&a1) * a3);
  *(inited + 208) = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  *(inited + 216) = a4;
  type metadata accessor for UIContentSizeCategory(0);
  sub_9A7CC();
  v47 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v48 = sub_13BB14();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = a2;
  return sub_9A85C;
}

double sub_9A784(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 16))
  {
    v5 = sub_7C5A4(a1);
    if (v6)
    {
      return *(*(a2 + 56) + 8 * v5);
    }
  }

  return a3;
}

unint64_t sub_9A7CC()
{
  result = qword_19A2F8;
  if (!qword_19A2F8)
  {
    type metadata accessor for UIContentSizeCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A2F8);
  }

  return result;
}

uint64_t sub_9A824()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t FooterMetrics.buttonMaximumWidth.setter(__int128 *a1)
{
  sub_3C04(v1);

  return sub_21520(a1, v1);
}

uint64_t FooterMetrics.buttonSpacing.setter(__int128 *a1)
{
  sub_3C04((v1 + 40));

  return sub_21520(a1, v1 + 40);
}

uint64_t FooterMetrics.buttonTopSpace.setter(__int128 *a1)
{
  sub_3C04((v1 + 80));

  return sub_21520(a1, v1 + 80);
}

uint64_t FooterMetrics.buttonTopSpaceWithoutDisclaimer.setter(__int128 *a1)
{
  sub_3C04((v1 + 120));

  return sub_21520(a1, v1 + 120);
}

void OfferPlatterComponentLayout.Metrics.buttonInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[20] = a1;
  v4[21] = a2;
  v4[22] = a3;
  v4[23] = a4;
}

uint64_t sub_9A9AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_9A9EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 192) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FullSheetOverlayFooterLayoutLandscape.init(metrics:disclaimerView:footerView:primaryButton:secondaryButton:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  memcpy(a6, __src, 0xC0uLL);
  sub_21520(a2, a6 + 192);
  sub_21520(a3, a6 + 232);
  sub_21520(a4, a6 + 272);

  return sub_21520(a5, a6 + 312);
}

double FullSheetOverlayFooterLayoutLandscape.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  sub_9B610(a2);
  sub_9B540(v3 + 24, v3[27]);
  if (sub_13A324())
  {
    sub_9B5B0(v3 + 24);
    sub_9B5D8();
    sub_13A384();
  }

  sub_9B540(v3 + 24, v3[27]);
  if (sub_13A324())
  {
    sub_9B5B0(v3 + 10);
    sub_9B5D8();
    sub_13A3F4();
    sub_9B5B0(v3 + 10);
  }

  else
  {
    sub_9B5B0(v3 + 15);
  }

  sub_9B5D8();
  sub_13A3F4();
  sub_9B5B0(v3);
  sub_9B5D8();
  sub_13A3F4();
  sub_9B5B0(v3 + 39);
  sub_9B5D8();
  sub_13A384();
  v5 = v4;
  sub_9B540(v3 + 39, v3[42]);
  v6 = sub_13A324();
  sub_9B584(v3);
  sub_13A3F4();
  if (v6)
  {
    sub_9B5B0(v3 + 5);
    sub_9B5D8();
    sub_13A3F4();
  }

  sub_9B5B0(v3 + 34);
  sub_9B5D8();
  sub_13A384();
  v8 = v7;
  sub_9B540(v3 + 39, v3[42]);
  if (sub_13A324())
  {
    sub_9B5B0(v3 + 5);
    sub_9B5D8();
    sub_13A3F4();
    return v5 + v8 + v9;
  }

  return v8;
}

uint64_t FullSheetOverlayFooterLayoutLandscape.placeChildren(relativeTo:in:)(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  Width = CGRectGetWidth(*&a2);
  sub_9B610(Width);
  sub_9B560(v5 + 24);
  if (sub_13A324())
  {
    sub_9B584(v5 + 24);
    sub_9B5CC();
    sub_13A384();
  }

  sub_9B560(v5 + 24);
  if (sub_13A324())
  {
    sub_9B540(v5 + 10, v5[13]);
    sub_13A3F4();
    sub_9B540(v5 + 10, v5[13]);
  }

  else
  {
    sub_9B540(v5 + 15, v5[18]);
  }

  sub_13A3F4();
  sub_9B540(v5, v5[3]);
  sub_13A3F4();
  sub_9B584(v5 + 39);
  sub_9B5CC();
  sub_13A384();
  sub_9B560(v5 + 39);
  v9 = sub_13A324();
  sub_162F0(v5, v5[3]);
  sub_13A3F4();
  if (v9)
  {
    sub_9B540(v5 + 5, v5[8]);
    sub_13A3F4();
  }

  sub_9B584(v5 + 34);
  sub_9B5CC();
  sub_13A384();
  sub_9B560(v5 + 39);
  if (sub_13A324())
  {
    sub_9B540(v5 + 5, v5[8]);
    sub_13A3F4();
  }

  v23.origin.x = sub_9B5F0();
  CGRectGetMaxY(v23);
  sub_9B584(v5 + 29);
  v24.origin.x = sub_9B5F0();
  CGRectGetMidX(v24);
  sub_13A354();
  sub_9B560(v5 + 24);
  if (sub_13A324())
  {
    sub_9B560(v5 + 29);
    sub_13A344();
    CGRectGetWidth(v25);
    sub_9B540(v5 + 10, v5[13]);
    sub_13A3F4();
    sub_162F0(v5 + 24, v5[27]);
    sub_9B5A0();
    sub_13A354();
  }

  sub_9B560(v5 + 39);
  if (sub_13A324())
  {
    v10 = [a1 traitCollection];
    v11 = sub_13BDD4();

    if (v11)
    {
      sub_162F0(v6 + 34, v6[37]);
      sub_9B5A0();
      sub_13A354();
      sub_9B560(v6 + 34);
      sub_13A344();
      CGRectGetMaxX(v26);
      sub_9B540(v6 + 5, v6[8]);
      sub_13A3F4();
      v12 = sub_9B5E4();
      sub_9B540(v12, a1);
      sub_13A344();
      CGRectGetMinY(v27);
      v13 = sub_9B5E4();
      sub_9B540(v13, a1);
      sub_13A344();
      CGRectGetWidth(v28);
      v14 = sub_9B5E4();
      sub_9B540(v14, a1);
      sub_13A344();
      CGRectGetHeight(v29);
      v15 = sub_9B604();
    }

    else
    {
      sub_162F0(v6 + 39, v6[42]);
      sub_9B5A0();
      sub_13A354();
      sub_9B560(v6 + 39);
      sub_13A344();
      CGRectGetMaxX(v31);
      sub_9B540(v6 + 5, v6[8]);
      sub_13A3F4();
      v18 = sub_9B604();
      sub_9B540(v18, a1);
      sub_13A344();
      CGRectGetMinY(v32);
      v19 = sub_9B604();
      sub_9B540(v19, a1);
      sub_13A344();
      CGRectGetWidth(v33);
      v20 = sub_9B604();
      sub_9B540(v20, a1);
      sub_13A344();
      CGRectGetHeight(v34);
      v15 = sub_9B5E4();
    }

    sub_162F0(v15, a1);
  }

  else
  {
    v16 = v5[32];
    sub_9B540(v5 + 29, v16);
    sub_13A344();
    CGRectGetWidth(v30);
    v17 = sub_9B5E4();
    sub_162F0(v17, v16);
  }

  sub_9B5CC();
  sub_13A354();
  sub_9B540(v6 + 29, v6[32]);
  sub_13A344();

  return sub_13A2B4();
}