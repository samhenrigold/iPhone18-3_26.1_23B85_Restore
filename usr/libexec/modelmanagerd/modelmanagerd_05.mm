uint64_t sub_100080CFC(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for StateDump.SessionState();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100065020(&qword_1001B95C0, &qword_100170218);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100011624(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10000814C(&qword_1001B95B0, &type metadata accessor for StateDump.SessionState, &protocol conformance descriptor for StateDump.SessionState);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
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
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100081054(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for StateDump.RequestState();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100065020(&qword_1001B95A8, &qword_100170210);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100011624(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10000814C(&qword_1001B9598, &type metadata accessor for StateDump.RequestState, &protocol conformance descriptor for StateDump.RequestState);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
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
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000813AC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - v4;
  v5 = *v1;
  sub_100065020(&qword_1001B9590, &qword_100170208);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100011624(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10001B2C0(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
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
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100081708(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for StateDump.RemoteRequestState();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100065020(&qword_1001B9578, &qword_100170200);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100011624(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10000814C(&qword_1001B9568, &type metadata accessor for StateDump.RemoteRequestState, &protocol conformance descriptor for StateDump.RemoteRequestState);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
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
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100081A60(uint64_t a1)
{
  v2 = v1;
  active = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest();
  v3 = *(active - 8);
  __chkstk_darwin(active);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100065020(&qword_1001B9560, &qword_1001701F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100011624(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, active);
    sub_10000814C(&qword_1001B9550, &type metadata accessor for StateDump.InferenceProviderState.ActiveRequest, &protocol conformance descriptor for StateDump.InferenceProviderState.ActiveRequest);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, active);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
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
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100081DB8(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for StateDump.InferenceProviderState();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100065020(&qword_1001B9548, &qword_1001701F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100011624(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10000814C(&qword_1001B9538, &type metadata accessor for StateDump.InferenceProviderState, &protocol conformance descriptor for StateDump.InferenceProviderState);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
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
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100082110(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for InferenceProviderAssetDescriptor();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100065020(&qword_1001B94C8, &qword_1001701C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100011624(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10000814C(&qword_1001B94B8, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
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
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_100082468(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  __chkstk_darwin(v3);
  v4 = *v1;
  sub_100065020(&qword_1001B9520, &qword_1001701E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v4 + 32);
    if (v24 >= 64)
    {
      sub_100011624(0, (v24 + 63) >> 6, v4 + 56);
    }

    else
    {
      *v8 = -1 << v24;
    }

    v2 = v1;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v11 &= v11 - 1;
LABEL_12:
    sub_10000D460();
    Hasher.init(_seed:)();
    UUID.hash(into:)();
    result = Hasher._finalize()();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v13 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    result = sub_10000D460();
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v13 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100082778(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100065020(&qword_1001B94A0, &qword_1001701B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v32 = v1;
  v33 = v3;
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
  v34 = result;
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
        v37 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_100011624(0, (v31 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v37 = (v10 - 1) & v10;
LABEL_12:
    v16 = v13 | (v6 << 6);
    v17 = type metadata accessor for UUID();
    v36 = &v32;
    v18 = *(v17 - 8);
    __chkstk_darwin(v17);
    v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *(v18 + 72);
    v22 = *(v3 + 48) + v21 * v16;
    v35 = *(v18 + 32);
    v35(v20, v22, v17);
    v5 = v34;
    sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v23 = -1 << *(v5 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = (v35)(*(v5 + 48) + v26 * v21, v20, v17);
    ++*(v5 + 16);
    v10 = v37;
    v3 = v33;
    if (!v37)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v12 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_100082AA4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0);
  __chkstk_darwin(v3);
  v4 = *v1;
  sub_100065020(&qword_1001B9518, &qword_1001701D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v2 = v6;
    return result;
  }

  v25 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v4 + 32);
    if (v24 >= 64)
    {
      sub_100011624(0, (v24 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v24;
    }

    v2 = v1;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v11 &= v11 - 1;
LABEL_12:
    sub_10000D460();
    Hasher.init(_seed:)();
    String.hash(into:)();
    type metadata accessor for UUID();
    sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v13 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    result = sub_10000D460();
    ++*(v6 + 16);
    v4 = v25;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v13 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100082DEC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - v4;
  v5 = *v1;
  sub_100065020(&qword_1001B94F8, &qword_1001701D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100011624(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10001B2C0(&qword_1001B9500, &qword_1001B94F0, &unk_100172060, &protocol conformance descriptor for UUIDIdentifier<A>);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
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
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100083148(uint64_t a1)
{
  v2 = v1;
  v36 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - v4;
  v5 = *v1;
  sub_100065020(&qword_1001B94D8, &qword_1001701C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100011624(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10001B2C0(&qword_1001B94E0, &qword_1001B94D0, &unk_100171E80, &protocol conformance descriptor for UUIDIdentifier<A>);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
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
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_1000834A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100065020(&qword_1001B9498, &qword_1001701B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
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
  v12 = result + 56;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_100011624(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = NSObject._rawHashValue(seed:)(*(v5 + 40));
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1000836C8(uint64_t a1, void *a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v9);
  Hasher._finalize()();
  sub_100011E24();
  _HashTable.nextHole(atOrAfter:)();
  sub_100005AF4();
  *(a2 + v8 + 56) |= v7 << v6;
  *(a2[6] + 8 * v6) = a1;
  ++a2[2];
}

unint64_t sub_10008376C(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_1000837F0(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10007FB34(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_100086CF0(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_100086460();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_100083958(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = type metadata accessor for Assertion.DaemonRep();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10007FD90(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_100086F24(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10000814C(&qword_1001B8BA0, &type metadata accessor for Assertion.DaemonRep, &protocol conformance descriptor for Assertion.DaemonRep);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10000814C(&qword_1001B8BA8, &type metadata accessor for Assertion.DaemonRep, &protocol conformance descriptor for Assertion.DaemonRep);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1000866EC();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_100083C08(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000800E8(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_10008723C(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10001B2C0(&qword_1001B8B88, &qword_1001B8B78, &qword_10016F740, &protocol conformance descriptor for UUIDIdentifier<A>);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10001B2C0(&qword_1001B8B90, &qword_1001B8B78, &qword_10016F740, &protocol conformance descriptor for UUIDIdentifier<A>);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_100027D74();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void sub_100084074(Swift::UInt result, int a2, uint64_t a3, unint64_t a4, char a5)
{
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 <= v10 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_100080730(v10 + 1);
      goto LABEL_10;
    }

    if (v11 <= v10)
    {
      sub_1000877C0(v10 + 1);
LABEL_10:
      v17 = *v5;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(result);
      v18 = Hasher._finalize()();
      v19 = ~(-1 << *(v17 + 32));
      while (1)
      {
        a4 = v18 & v19;
        if (((*(v17 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v17 + 48) + 24 * a4) == result)
        {
          goto LABEL_15;
        }

        v18 = a4 + 1;
      }
    }

    sub_1000865CC();
  }

LABEL_7:
  v12 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v13 = *(v12 + 48) + 24 * a4;
  *v13 = result;
  *(v13 + 8) = a2;
  *(v13 + 16) = a3;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v16;
  }
}

uint64_t sub_1000841D4(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = type metadata accessor for StateDump.AssetState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000809A4(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_100087A18(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10000814C(&qword_1001B95C8, &type metadata accessor for StateDump.AssetState, &protocol conformance descriptor for StateDump.AssetState);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10000814C(&qword_1001B95D0, &type metadata accessor for StateDump.AssetState, &protocol conformance descriptor for StateDump.AssetState);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1000866EC();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_100084484(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = type metadata accessor for StateDump.SessionState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100080CFC(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_100087D30(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10000814C(&qword_1001B95B0, &type metadata accessor for StateDump.SessionState, &protocol conformance descriptor for StateDump.SessionState);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10000814C(&qword_1001B95B8, &type metadata accessor for StateDump.SessionState, &protocol conformance descriptor for StateDump.SessionState);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1000866EC();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_100084734(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = type metadata accessor for StateDump.RequestState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100081054(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_100088048(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10000814C(&qword_1001B9598, &type metadata accessor for StateDump.RequestState, &protocol conformance descriptor for StateDump.RequestState);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10000814C(&qword_1001B95A0, &type metadata accessor for StateDump.RequestState, &protocol conformance descriptor for StateDump.RequestState);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1000866EC();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_1000849E4(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000813AC(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_100088360(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10001B2C0(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10001B2C0(&qword_1001B9588, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_100027D74();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_100084C90(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = type metadata accessor for StateDump.RemoteRequestState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100081708(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_10008867C(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10000814C(&qword_1001B9568, &type metadata accessor for StateDump.RemoteRequestState, &protocol conformance descriptor for StateDump.RemoteRequestState);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10000814C(&qword_1001B9570, &type metadata accessor for StateDump.RemoteRequestState, &protocol conformance descriptor for StateDump.RemoteRequestState);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1000866EC();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_100084F40(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  active = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest();
  v7 = *(active - 8);
  __chkstk_darwin(active);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100081A60(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_100088994(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10000814C(&qword_1001B9550, &type metadata accessor for StateDump.InferenceProviderState.ActiveRequest, &protocol conformance descriptor for StateDump.InferenceProviderState.ActiveRequest);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, active);
        sub_10000814C(&qword_1001B9558, &type metadata accessor for StateDump.InferenceProviderState.ActiveRequest, &protocol conformance descriptor for StateDump.InferenceProviderState.ActiveRequest);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, active);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1000866EC();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, active);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_1000851F0(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = type metadata accessor for StateDump.InferenceProviderState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100081DB8(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_100088CAC(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10000814C(&qword_1001B9538, &type metadata accessor for StateDump.InferenceProviderState, &protocol conformance descriptor for StateDump.InferenceProviderState);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10000814C(&qword_1001B9540, &type metadata accessor for StateDump.InferenceProviderState, &protocol conformance descriptor for StateDump.InferenceProviderState);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1000866EC();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_1000854A0(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = type metadata accessor for InferenceProviderAssetDescriptor();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100082110(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_100088FC4(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10000814C(&qword_1001B94B8, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10000814C(&qword_1001B94C0, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1000866EC();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_100085750(uint64_t a1, unint64_t a2, char a3)
{
  v6 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  if (v10 <= v9 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100082468(v9 + 1);
      goto LABEL_8;
    }

    if (v10 <= v9)
    {
      sub_1000892DC(v9 + 1);
LABEL_8:
      v20 = v3;
      v11 = *v3;
      Hasher.init(_seed:)();
      UUID.hash(into:)();
      v12 = Hasher._finalize()();
      v13 = ~(-1 << *(v11 + 32));
      while (1)
      {
        a2 = v12 & v13;
        if (((*(v11 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
        {
          break;
        }

        sub_10000931C();
        v14 = static UUID.== infix(_:_:)();
        sub_10000D2AC(v8);
        if (v14)
        {
          goto LABEL_16;
        }

        v12 = a2 + 1;
      }

      v3 = v20;
      goto LABEL_13;
    }

    sub_100086848();
  }

LABEL_13:
  v15 = *v3;
  *(v15 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10000D460();
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v19;
  }

  return result;
}

uint64_t sub_1000859A4(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100082778(v5 + 1);
      goto LABEL_8;
    }

    if (v6 <= v5)
    {
      sub_1000895BC(v5 + 1);
LABEL_8:
      v23 = v3;
      v7 = *v3;
      v8 = type metadata accessor for UUID();
      sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
      v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = ~(-1 << *(v7 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          break;
        }

        v11 = *(v8 - 8);
        __chkstk_darwin(v9);
        v13 = &v23 - v12;
        (*(v11 + 16))(&v23 - v12, *(v7 + 48) + *(v14 + 72) * a2, v8);
        sub_10005F2BC(&qword_1001B94A8, &protocol conformance descriptor for UUID);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v11 + 8))(v13, v8);
        if (v15)
        {
          goto LABEL_16;
        }

        v9 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1000869B0();
  }

LABEL_13:
  v16 = *v3;
  *(v16 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v17 = *(v16 + 48);
  v18 = type metadata accessor for UUID();
  result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * a2, v24, v18);
  v20 = *(v16 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v22;
  }

  return result;
}

uint64_t sub_100085C1C(uint64_t *a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0);
  v23[1] = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v23[0] = v3;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a3)
  {
    sub_100082AA4(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_100086848();
      goto LABEL_17;
    }

    sub_1000898C8(v9 + 1);
  }

  v11 = *v3;
  Hasher.init(_seed:)();
  v12 = *v24;
  v13 = v24[1];
  String.hash(into:)();
  type metadata accessor for UUID();
  sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v11 + 32);
  a2 = v14 & ~v15;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    do
    {
      sub_10000931C();
      v17 = *v8 == v12 && v8[1] == v13;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static UUID.== infix(_:_:)())
      {
        goto LABEL_20;
      }

      sub_10000D2AC(v8);
      a2 = (a2 + 1) & v16;
    }

    while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_17:
  v18 = *v23[0];
  *(*v23[0] + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10000D460();
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_20:
  sub_10000D2AC(v8);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100085F08(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100082DEC(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_100089BE0(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10001B2C0(&qword_1001B9500, &qword_1001B94F0, &unk_100172060, &protocol conformance descriptor for UUIDIdentifier<A>);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10001B2C0(&qword_1001B9508, &qword_1001B94F0, &unk_100172060, &protocol conformance descriptor for UUIDIdentifier<A>);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_100027D74();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_1000861B4(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100083148(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_100089EFC(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10001B2C0(&qword_1001B94E0, &qword_1001B94D0, &unk_100171E80, &protocol conformance descriptor for UUIDIdentifier<A>);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10001B2C0(&qword_1001B94E8, &qword_1001B94D0, &unk_100171E80, &protocol conformance descriptor for UUIDIdentifier<A>);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_100027D74();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void *sub_100086460()
{
  v1 = v0;
  sub_100065020(&qword_1001B9410, &qword_100170108);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

  return result;
}

void sub_1000865CC()
{
  sub_1000134E8();
  v3 = v0;
  sub_100065020(&qword_1001B9448, &qword_100170168);
  v4 = sub_1000239EC();
  if (*(v1 + 16))
  {
    sub_10000A874();
    sub_100019480();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v2, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v1 + 16);
    sub_100003878();
    sub_100012714();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        sub_1000137E0();
LABEL_15:
        v20 = 3 * (v16 | (v10 << 6));
        v21 = *(v1 + 48) + 8 * v20;
        v22 = *(v21 + 8);
        v23 = *(v21 + 16);
        v24 = *(v4 + 48) + 8 * v20;
        *v24 = *v21;
        *(v24 + 8) = v22;
        *(v24 + 16) = v23;
      }

      while (v13);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_17;
      }

      ++v17;
      if (*(v2 + v10))
      {
        sub_1000062A0();
        v13 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v4;
    sub_100009C38();
  }
}

void sub_1000866EC()
{
  sub_1000055B0();
  v4 = sub_10001B210();
  v5(v4);
  sub_100002BDC();
  sub_100004B1C();
  __chkstk_darwin(v6);
  sub_100011D6C();
  v7 = sub_100007748();
  if (*(v0 + 16))
  {
    sub_10000A874();
    sub_100013AA0();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v1, 8 * v9);
    }

    v13 = 0;
    *(v7 + 16) = *(v0 + 16);
    sub_100003878();
    sub_100012714();
    sub_100018C90();
    while (v3)
    {
      sub_100011268();
LABEL_15:
      sub_10000949C();
      v18 = sub_100030274();
      v19(v18);
      v20 = sub_100046488();
      v21(v20);
    }

    v14 = v13;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v13 >= v2)
      {
        goto LABEL_17;
      }

      sub_100005968();
      if (v15)
      {
        sub_1000062A0();
        v3 = v17 & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_10001E490();
    sub_100002EEC();
  }
}

void sub_100086848()
{
  sub_1000055B0();
  v2 = sub_10001B210();
  v4 = v3(v2);
  sub_100002F44(v4);
  sub_100004B1C();
  __chkstk_darwin(v5);
  sub_100011D6C();
  v6 = sub_100007748();
  if (*(v0 + 16))
  {
    sub_10000A874();
    sub_100013AA0();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v1, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v0 + 16);
    sub_100003878();
    sub_100012714();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        sub_100011268();
LABEL_15:
        sub_10000949C();
        sub_10000931C();
        sub_10000D460();
      }

      while (v15);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_17;
      }

      sub_100005968();
      if (v19)
      {
        sub_1000062A0();
        v15 = v21 & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_10001E490();
    sub_100002EEC();
  }
}

void sub_1000869B0()
{
  sub_1000055B0();
  v3 = v0;
  sub_100065020(&qword_1001B94A0, &qword_1001701B8);
  v4 = sub_1000239EC();
  if (*(v1 + 16))
  {
    v28 = v3;
    sub_10000A874();
    sub_100019480();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v2, 8 * v6);
    }

    v10 = 0;
    v11 = *(v1 + 16);
    v29 = v4;
    *(v4 + 16) = v11;
    sub_100003878();
    sub_100012714();
    v14 = v13 & v12;
    v16 = (v15 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_15:
        v21 = v17 | (v10 << 6);
        v22 = type metadata accessor for UUID();
        v23 = *(v22 - 8);
        __chkstk_darwin(v22);
        v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        v27 = *(v26 + 72) * v21;
        (*(v23 + 16))(v25, *(v1 + 48) + v27, v22);
        (*(v23 + 32))(*(v29 + 48) + v27, v25, v22);
      }

      while (v14);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        goto LABEL_19;
      }

      ++v18;
      if (*(v2 + v10))
      {
        sub_1000062A0();
        v14 = v20 & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    sub_10001E490();
    sub_100002EEC();
  }
}

id sub_100086BA0()
{
  v1 = v0;
  sub_100065020(&qword_1001B9498, &qword_1001701B0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

Swift::Int sub_100086CF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100065020(&qword_1001B9410, &qword_100170108);
  result = static _SetStorage.resize(original:capacity:move:)();
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
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
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

  return result;
}

uint64_t sub_100086F24(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Assertion.DaemonRep();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100065020(&qword_1001B8B98, &qword_10016F750);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10000814C(&qword_1001B8BA0, &type metadata accessor for Assertion.DaemonRep, &protocol conformance descriptor for Assertion.DaemonRep);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_10008723C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - v4;
  v6 = *v1;
  sub_100065020(&qword_1001B8B80, &qword_10016F748);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10001B2C0(&qword_1001B8B88, &qword_1001B8B78, &qword_10016F740, &protocol conformance descriptor for UUIDIdentifier<A>);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100087558(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ModelCatalogAsset(0);
  v21 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v20 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100065020(&qword_1001B9440, &qword_100170160);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v18 = v1;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    for (i = result + 56; v11; ++*(v7 + 16))
    {
      v11 &= v11 - 1;
LABEL_12:
      sub_10000931C();
      Hasher.init(_seed:)();
      sub_10000C228(v22);
      Hasher._finalize()();
      v15 = i;
      v16 = _HashTable.nextHole(atOrAfter:)();
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_10000D460();
    }

    v13 = v8;
    while (1)
    {
      v8 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v2 = v18;
        goto LABEL_16;
      }

      v14 = *(v5 + 56 + 8 * v8);
      ++v13;
      if (v14)
      {
        v11 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_1000877C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100065020(&qword_1001B9448, &qword_100170168);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v17);
        result = Hasher._finalize()();
        v20 = -1 << *(v5 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = *(v5 + 48) + 24 * v23;
        *v28 = v17;
        *(v28 + 8) = v18;
        *(v28 + 16) = v19;
        ++*(v5 + 16);

        v3 = v29;
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
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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

  return result;
}

uint64_t sub_100087A18(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for StateDump.AssetState();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100065020(&qword_1001B95D8, &qword_100170220);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10000814C(&qword_1001B95C8, &type metadata accessor for StateDump.AssetState, &protocol conformance descriptor for StateDump.AssetState);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100087D30(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for StateDump.SessionState();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100065020(&qword_1001B95C0, &qword_100170218);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10000814C(&qword_1001B95B0, &type metadata accessor for StateDump.SessionState, &protocol conformance descriptor for StateDump.SessionState);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100088048(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for StateDump.RequestState();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100065020(&qword_1001B95A8, &qword_100170210);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10000814C(&qword_1001B9598, &type metadata accessor for StateDump.RequestState, &protocol conformance descriptor for StateDump.RequestState);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100088360(uint64_t a1)
{
  v2 = v1;
  v33 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - v4;
  v6 = *v1;
  sub_100065020(&qword_1001B9590, &qword_100170208);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10001B2C0(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_10008867C(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for StateDump.RemoteRequestState();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100065020(&qword_1001B9578, &qword_100170200);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10000814C(&qword_1001B9568, &type metadata accessor for StateDump.RemoteRequestState, &protocol conformance descriptor for StateDump.RemoteRequestState);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100088994(uint64_t a1)
{
  v2 = v1;
  active = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest();
  v3 = *(active - 8);
  __chkstk_darwin(active);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100065020(&qword_1001B9560, &qword_1001701F8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), active);
        sub_10000814C(&qword_1001B9550, &type metadata accessor for StateDump.InferenceProviderState.ActiveRequest, &protocol conformance descriptor for StateDump.InferenceProviderState.ActiveRequest);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, active);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100088CAC(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for StateDump.InferenceProviderState();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100065020(&qword_1001B9548, &qword_1001701F0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10000814C(&qword_1001B9538, &type metadata accessor for StateDump.InferenceProviderState, &protocol conformance descriptor for StateDump.InferenceProviderState);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100088FC4(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for InferenceProviderAssetDescriptor();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100065020(&qword_1001B94C8, &qword_1001701C0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10000814C(&qword_1001B94B8, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_1000892DC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  __chkstk_darwin(v3);
  v4 = *v1;
  sub_100065020(&qword_1001B9520, &qword_1001701E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v10 &= v10 - 1;
LABEL_12:
        sub_10000931C();
        Hasher.init(_seed:)();
        UUID.hash(into:)();
        result = Hasher._finalize()();
        v15 = -1 << *(v6 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        result = sub_10000D460();
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

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
        v22 = *(v12 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v4 + 56 + 8 * v7);
        ++v13;
        if (v14)
        {
          v10 = (v14 - 1) & v14;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000895BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100065020(&qword_1001B94A0, &qword_1001701B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v34 = v1;
    v35 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v36 = result;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v38 = (v10 - 1) & v10;
LABEL_12:
        v16 = v13 | (v6 << 6);
        v17 = type metadata accessor for UUID();
        v37 = &v33;
        v18 = *(v17 - 8);
        __chkstk_darwin(v17);
        v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = v21;
        v23 = *(v3 + 48);
        v24 = *(v22 + 72);
        (*(v18 + 16))(v20, v23 + v24 * v16, v17);
        v5 = v36;
        sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v25 = -1 << *(v5 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
        {
          break;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        result = (*(v18 + 32))(*(v5 + 48) + v28 * v24, v20, v17);
        ++*(v5 + 16);
        v10 = v38;
        v3 = v35;
        if (!v38)
        {
          goto LABEL_7;
        }
      }

      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v34;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v38 = (v15 - 1) & v15;
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

  return result;
}

Swift::Int sub_1000898C8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0);
  __chkstk_darwin(v3);
  v4 = *v1;
  sub_100065020(&qword_1001B9518, &qword_1001701D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v10 &= v10 - 1;
LABEL_12:
        sub_10000931C();
        Hasher.init(_seed:)();
        String.hash(into:)();
        type metadata accessor for UUID();
        sub_10005F2BC(&qword_1001B8C00, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v15 = -1 << *(v6 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        result = sub_10000D460();
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

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
        v22 = *(v12 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v4 + 56 + 8 * v7);
        ++v13;
        if (v14)
        {
          v10 = (v14 - 1) & v14;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100089BE0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - v4;
  v6 = *v1;
  sub_100065020(&qword_1001B94F8, &qword_1001701D0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10001B2C0(&qword_1001B9500, &qword_1001B94F0, &unk_100172060, &protocol conformance descriptor for UUIDIdentifier<A>);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100089EFC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - v4;
  v6 = *v1;
  sub_100065020(&qword_1001B94D8, &qword_1001701C8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10001B2C0(&qword_1001B94E0, &qword_1001B94D0, &unk_100171E80, &protocol conformance descriptor for UUIDIdentifier<A>);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_10008A218(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100065020(&qword_1001B9498, &qword_1001701B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v5 + 40);
        v16 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = NSObject._rawHashValue(seed:)(v15);
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
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

          v2 = v25;
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

  return result;
}

uint64_t sub_10008A428(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = &v40 - v9;
  v10 = type metadata accessor for Assertion.DaemonRep();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v54 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *(a1 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;

  if (v13 > 0xD)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v40 = &v40;
    __chkstk_darwin(v16);
    v41 = v14;
    v43 = (&v40 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100011624(0, v14, v43);
    v50 = a2;
    v51 = 0;
    v14 = 0;
    v17 = *(a1 + 56);
    v42 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = v18 < 64 ? ~(-1 << v18) : -1;
    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v56 = a2 + 56;
    v55 = v5 + 16;
    v57 = (v5 + 8);
    v46 = (v11 + 8);
    v47 = v11 + 16;
    v15 = v58;
    v48 = v21;
    v49 = v10;
    v44 = v11;
    v45 = a1;
LABEL_6:
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v53 = (v20 - 1) & v20;
LABEL_13:
      v25 = v22 | (v14 << 6);
      v26 = *(a1 + 48);
      v27 = *(v11 + 72);
      v52 = v25;
      a2 = a1;
      (*(v11 + 16))(v54, v26 + v27 * v25, v10);
      Assertion.DaemonRep.id.getter();
      v28 = v50;
      if (*(v50 + 16))
      {
        sub_10001B2C0(&qword_1001B8B88, &qword_1001B8B78, &qword_10016F740, &protocol conformance descriptor for UUIDIdentifier<A>);
        v29 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v30 = v28;
        v31 = ~(-1 << *(v28 + 32));
        while (1)
        {
          a2 = v29 & v31;
          if (((*(v56 + (((v29 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v31)) & 1) == 0)
          {
            break;
          }

          (*(v5 + 16))(v8, *(v30 + 48) + *(v5 + 72) * a2, v4);
          sub_10001B2C0(&qword_1001B8B90, &qword_1001B8B78, &qword_10016F740, &protocol conformance descriptor for UUIDIdentifier<A>);
          v32 = dispatch thunk of static Equatable.== infix(_:_:)();
          v33 = *(v5 + 8);
          v33(v8, v4);
          v29 = a2 + 1;
          if (v32)
          {
            v34 = v58;
            v33(v58, v4);
            v15 = v34;
            v10 = v49;
            (*v46)(v54, v49);
            v11 = v44;
            a1 = v45;
            v21 = v48;
            v20 = v53;
            goto LABEL_6;
          }
        }

        v11 = v44;
        a1 = v45;
        v15 = v58;
      }

      (*v57)(v15, v4);
      v10 = v49;
      (*v46)(v54, v49);
      *(v43 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      v35 = __OFADD__(v51++, 1);
      v21 = v48;
      v20 = v53;
      if (v35)
      {
        goto LABEL_26;
      }
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v21)
      {
        v36 = sub_10008C1EC(v43, v41, v51, a1);
        swift_bridgeObjectRelease_n();
        return v36;
      }

      v24 = *(v42 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v53 = (v24 - 1) & v24;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v38 = a1;
  v39 = swift_slowAlloc();

  v36 = sub_10008C09C(v39, v14, v38, a2, &_swift_bridgeObjectRetain_n, sub_10008B144, &_swift_bridgeObjectRelease_n);

  swift_bridgeObjectRelease_n();
  return v36;
}

uint64_t sub_10008AA34(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100065020(&qword_1001B9420, &qword_100170118);
  __chkstk_darwin(v6 - 8);
  v8 = v59 - v7;
  v9 = type metadata accessor for Assertion.DaemonRep();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v77 = v59 - v14;
  v15 = *(a1 + 32);
  v16 = v15 & 0x3F;
  v17 = ((1 << v15) + 63) >> 6;
  v18 = (8 * v17);
  v73 = a2;

  if (v16 > 0xD)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v61 = v3;
    v59[1] = v59;
    __chkstk_darwin(v19);
    v60 = v17;
    v62 = (v59 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100011624(0, v17, v62);
    v63 = 0;
    v17 = 0;
    v21 = a1 + 56;
    v22 = 1 << *(a1 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(a1 + 56);
    v25 = (v22 + 63) >> 6;
    v76 = v10 + 16;
    v68 = (v10 + 8);
    *&v20 = 136315138;
    v64 = v20;
    v71 = v10;
    v72 = v8;
    v74 = v13;
    v3 = a1;
    v69 = v25;
    v70 = a1 + 56;
    v66 = a1;
    v67 = v9;
    while (v24)
    {
      v26 = __clz(__rbit64(v24));
      v75 = (v24 - 1) & v24;
LABEL_12:
      a1 = v26 | (v17 << 6);
      v13 = *(v10 + 16);
      v13(v77, *(v3 + 48) + *(v10 + 72) * a1, v9);
      v29 = Assertion.DaemonRep.policy.getter();
      v31 = v30;
      v32 = *(v73 + 296);
      if (*(v32 + 16))
      {
        v33 = v29;

        v34 = sub_1000236F4(v33, v31);
        if (v35)
        {
          v36 = v34;
          v37 = a1;
          v38 = v3;
          v39 = *(v32 + 56);
          v40 = type metadata accessor for Policy();
          v41 = *(v40 - 8);
          v42 = v39 + *(v41 + 72) * v36;
          v3 = v38;
          a1 = v37;
          v8 = v72;
          (*(v41 + 16))(v72, v42, v40);
          v43 = v8;
          v44 = 0;
        }

        else
        {
          v40 = type metadata accessor for Policy();
          v8 = v72;
          v43 = v72;
          v44 = 1;
        }

        sub_100009BFC(v43, v44, 1, v40);
      }

      else
      {
        v40 = type metadata accessor for Policy();
        sub_100009BFC(v8, 1, 1, v40);
      }

      type metadata accessor for Policy();
      v18 = sub_10000C6C0(v8, 1, v40);
      sub_10000C7F0(v8, &qword_1001B9420);
      v9 = v67;
      if (v18 == 1)
      {
        v45 = v68;
        if (qword_1001B88D8 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        v18 = sub_10000641C(v46, qword_1001B9218);
        a1 = v74;
        v13(v74, v77, v9);
        v13 = v9;
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v78 = v65;
          *v49 = v64;
          v50 = Assertion.DaemonRep.policy.getter();
          a1 = v51;
          v52 = *v45;
          v52(v74, v13);
          v53 = sub_100004A3C(v50, a1, &v78);

          *(v49 + 4) = v53;
          _os_log_impl(&_mh_execute_header, v47, v48, "Cannot restore assertion with non-existent policy: %s", v49, 0xCu);
          v18 = v65;
          sub_100003324(v65);

          v8 = v72;
        }

        else
        {

          v52 = *v45;
          v52(a1, v13);
        }

        v9 = v13;
        v52(v77, v13);
        v3 = v66;
        v21 = v70;
        v10 = v71;
        v25 = v69;
        v24 = v75;
      }

      else
      {
        (*v68)(v77, v67);
        *(v62 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
        v54 = __OFADD__(v63++, 1);
        v21 = v70;
        v10 = v71;
        v25 = v69;
        v24 = v75;
        if (v54)
        {
          __break(1u);
        }
      }
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v17 >= v25)
      {
        v55 = sub_10008C1EC(v62, v60, v63, v3);

        return v55;
      }

      v28 = *(v21 + 8 * v17);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v75 = (v28 - 1) & v28;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_31:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v57 = swift_slowAlloc();
  v58 = v73;

  v55 = sub_10008C09C(v57, v17, a1, v58, &_swift_retain_n, sub_10008B5D0, &_swift_release_n);

  return v55;
}

uint64_t sub_10008B144(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v41 = a1;
  v6 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Assertion.DaemonRep();
  result = __chkstk_darwin(v13);
  v51 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a3;
  v49 = 0;
  v17 = 0;
  v18 = *(a3 + 56);
  v40 = a3 + 56;
  v19 = 1 << *(a3 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v45 = v15 + 16;
  v46 = v15;
  v53 = v7;
  v54 = a4 + 56;
  v52 = v7 + 16;
  v55 = (v7 + 8);
  v43 = result;
  v44 = (v15 + 8);
  v42 = v22;
LABEL_5:
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v50 = (v21 - 1) & v21;
LABEL_12:
    v26 = v23 | (v17 << 6);
    (*(v46 + 16))(v51, *(v48 + 48) + *(v46 + 72) * v26, v13);
    Assertion.DaemonRep.id.getter();
    if (*(a4 + 16))
    {
      v47 = v26;
      sub_10001B2C0(&qword_1001B8B88, &qword_1001B8B78, &qword_10016F740, &protocol conformance descriptor for UUIDIdentifier<A>);
      v27 = v12;
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = a4;
      v30 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v31 = v28 & v30;
        if (((*(v54 + (((v28 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v30)) & 1) == 0)
        {
          break;
        }

        v32 = v53;
        (*(v53 + 16))(v10, *(v29 + 48) + *(v53 + 72) * v31, v6);
        sub_10001B2C0(&qword_1001B8B90, &qword_1001B8B78, &qword_10016F740, &protocol conformance descriptor for UUIDIdentifier<A>);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v34 = *(v32 + 8);
        v34(v10, v6);
        v28 = v31 + 1;
        if (v33)
        {
          v12 = v27;
          v34(v27, v6);
          v13 = v43;
          result = (*v44)(v51, v43);
          a4 = v29;
          v22 = v42;
          v21 = v50;
          goto LABEL_5;
        }
      }

      a4 = v29;
      v12 = v27;
      v22 = v42;
      v13 = v43;
      v26 = v47;
    }

    (*v55)(v12, v6);
    result = (*v44)(v51, v13);
    *(v41 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v21 = v50;
    if (__OFADD__(v49++, 1))
    {
      __break(1u);
LABEL_21:
      v36 = v48;

      v37 = sub_10008C1EC(v41, v39, v49, v36);

      return v37;
    }
  }

  v24 = v17;
  while (1)
  {
    v17 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v17 >= v22)
    {
      goto LABEL_21;
    }

    v25 = *(v40 + 8 * v17);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v50 = (v25 - 1) & v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10008B5D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a2;
  v67 = a4;
  v57 = a1;
  v5 = sub_100065020(&qword_1001B9420, &qword_100170118);
  __chkstk_darwin(v5 - 8);
  v7 = &v56 - v6;
  v8 = type metadata accessor for Assertion.DaemonRep();
  v9 = __chkstk_darwin(v8);
  v68 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v72 = &v56 - v14;
  v58 = 0;
  v15 = 0;
  v65 = v12;
  v66 = a3;
  v18 = *(a3 + 56);
  v17 = a3 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v71 = v12 + 16;
  v62 = (v12 + 8);
  *&v13 = 136315138;
  v59 = v13;
  v69 = result;
  v63 = v22;
  v64 = v17;
  v61 = v7;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v70 = (v21 - 1) & v21;
LABEL_11:
    v26 = v23 | (v15 << 6);
    v27 = *(v65 + 16);
    v27(v72, *(v66 + 48) + *(v65 + 72) * v26, v8);
    v28 = Assertion.DaemonRep.policy.getter();
    v30 = v29;
    v31 = *(v67 + 296);
    if (*(v31 + 16))
    {
      v32 = v28;

      v33 = sub_1000236F4(v32, v30);
      if (v34)
      {
        v35 = v33;
        v36 = *(v31 + 56);
        v37 = type metadata accessor for Policy();
        (*(*(v37 - 8) + 16))(v7, v36 + *(*(v37 - 8) + 72) * v35, v37);
        v38 = v7;
        v39 = 0;
      }

      else
      {
        v37 = type metadata accessor for Policy();
        v38 = v7;
        v39 = 1;
      }

      sub_100009BFC(v38, v39, 1, v37);

      v8 = v69;
    }

    else
    {
      v37 = type metadata accessor for Policy();
      sub_100009BFC(v7, 1, 1, v37);
    }

    type metadata accessor for Policy();
    v40 = sub_10000C6C0(v7, 1, v37);
    sub_10000C7F0(v7, &qword_1001B9420);
    if (v40 == 1)
    {
      if (qword_1001B88D8 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_10000641C(v41, qword_1001B9218);
      v42 = v68;
      v27(v68, v72, v8);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.fault.getter();
      v45 = os_log_type_enabled(v43, v44);
      v46 = v62;
      if (v45)
      {
        v47 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v73 = v60;
        *v47 = v59;
        v48 = Assertion.DaemonRep.policy.getter();
        v50 = v49;
        v51 = *v46;
        (*v46)(v68, v69);
        v52 = sub_100004A3C(v48, v50, &v73);

        *(v47 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v43, v44, "Cannot restore assertion with non-existent policy: %s", v47, 0xCu);
        sub_100003324(v60);

        v8 = v69;
      }

      else
      {

        v51 = *v46;
        (*v46)(v42, v8);
      }

      result = (v51)(v72, v8);
      v7 = v61;
      v22 = v63;
      v17 = v64;
      v21 = v70;
    }

    else
    {
      result = (*v62)(v72, v8);
      *(v57 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v53 = __OFADD__(v58++, 1);
      v22 = v63;
      v17 = v64;
      v21 = v70;
      if (v53)
      {
        goto LABEL_29;
      }
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      v54 = v66;

      v55 = sub_10008C1EC(v57, v56, v58, v54);

      return v55;
    }

    v25 = *(v17 + 8 * v15);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v70 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10008BB3C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = type metadata accessor for Assertion.DaemonRep();
  result = __chkstk_darwin(v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v7 + 16;
  v34 = v7;
  v31 = 0;
  v32 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      return (*v32)(v20, v19);
    }

    v25 = v23;
    result = (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;

        return sub_10008C1EC(v30, v29, v31, v27);
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_10008BEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  v8 = sub_100002F44(v7);
  __chkstk_darwin(v8);
  sub_100002B8C();
  v11 = v10 - v9;
  v22 = 0;
  v12 = 0;
  v13 = a3 + 56;
  sub_100002F28();
  sub_100057A30();
  v15 = v14 >> 6;
  while (v5)
  {
    sub_1000137E0();
LABEL_9:
    sub_100005B9C();
    sub_10000931C();
    v19 = a4(v11);
    sub_100005618();
    sub_10000D2AC(v11);
    if (v4)
    {
      return;
    }

    if (v19)
    {
      sub_100005AF4();
      sub_10000CCF0(v20);
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_14:

        sub_10008C87C();
        return;
      }
    }
  }

  v16 = v12;
  while (1)
  {
    v12 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v12 >= v15)
    {
      goto LABEL_14;
    }

    ++v16;
    if (*(v13 + 8 * v12))
    {
      sub_1000062A0();
      v5 = v18 & v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_10008C09C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a5(a4, 2);
    v14 = a6(v13, a2, a3, a4);
    a7(a4, 2);

    return v14;
  }

  return result;
}

unint64_t *sub_10008C15C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10008BB3C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10008C1EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for Assertion.DaemonRep();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100065020(&qword_1001B8B98, &qword_10016F750);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10000814C(&qword_1001B8BA0, &type metadata accessor for Assertion.DaemonRep, &protocol conformance descriptor for Assertion.DaemonRep);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_27:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_27;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10008C50C()
{
  sub_100003884();
  sub_1000135C4();
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = swift_task_alloc();
  v7 = sub_100004B00(v6);
  *v7 = v8;
  v9 = sub_10003F82C(v7);

  return sub_10007A404(v9, v0, v2, v3, v5, v4);
}

uint64_t sub_10008C5BC()
{
  sub_1000094B0();
  sub_10000636C();
  v1 = type metadata accessor for Policy();
  sub_100002F44(v1);
  sub_100011900();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_10006FA64;
  sub_1000135D0();
  sub_100006378();

  return sub_10007A8E8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10008C6CC()
{
  sub_1000094B0();
  sub_10000636C();
  sub_10002A104();
  v0 = type metadata accessor for Policy();
  sub_100002F44(v0);
  sub_100011900();
  v1 = swift_task_alloc();
  v2 = sub_100004B00(v1);
  *v2 = v3;
  v2[1] = sub_10006FA64;
  sub_1000135D0();
  sub_100006378();

  return sub_10007B06C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10008C7D0()
{
  sub_100001ED0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;

  return sub_10000AB2C();
}

void sub_10008C87C()
{
  sub_1000055B0();
  sub_100026F40();
  type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  sub_100002BDC();
  __chkstk_darwin(v4);
  sub_100002B8C();
  if (!v1)
  {
LABEL_28:

LABEL_29:
    sub_100002EEC();
    return;
  }

  if (*(v0 + 16) == v1)
  {
    goto LABEL_29;
  }

  sub_100065020(&qword_1001B9520, &qword_1001701E0);
  sub_100001F0C();
  v5 = static _SetStorage.allocate(capacity:)();
  v6 = v5;
  if (v2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v3;
  }

  v8 = 0;
  v9 = v5 + 56;
  while (v7)
  {
    sub_10002F700();
LABEL_16:
    sub_100005B9C();
    sub_10000931C();
    Hasher.init(_seed:)();
    UUID.hash(into:)();
    Hasher._finalize()();
    sub_10000D028();
    if (((v15 << v14) & ~*(v9 + 8 * v13)) == 0)
    {
      sub_10000783C();
      while (1)
      {
        sub_100060714();
        if (v20)
        {
          if (v18)
          {
            goto LABEL_31;
          }
        }

        if (v17 == v19)
        {
          v17 = 0;
        }

        if (*(v9 + 8 * v17) != -1)
        {
          sub_1000081CC();
          goto LABEL_26;
        }
      }
    }

    sub_1000033E8();
LABEL_26:
    *(v9 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    sub_100005B9C();
    sub_10000D460();
    ++*(v6 + 16);
    if (__OFSUB__(v1--, 1))
    {
      goto LABEL_32;
    }

    if (!v1)
    {
      goto LABEL_28;
    }
  }

  v10 = v8;
  while (1)
  {
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v8 >= v2)
    {
      goto LABEL_28;
    }

    ++v10;
    if (v3[v8])
    {
      sub_1000062A0();
      v7 = v12 & v11;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_10008CAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_10008CAEC@<X0>(uint64_t a1@<X8>)
{
  v39 = sub_100065020(&qword_1001B9458, &qword_100174250);
  __chkstk_darwin(v39);
  v4 = &v36 - v3;
  v5 = type metadata accessor for Policy();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100065020(&qword_1001B9480, &qword_1001701A8);
  v10 = __chkstk_darwin(v9 - 8);
  v41 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v36 = v4;
  v40 = v17;
  if (v19)
  {
    v38 = a1;
    v20 = v18;
LABEL_7:
    v37 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v20 << 6);
    v22 = (*(v15 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v21, v5);
    v25 = v39;
    v26 = *(v39 + 48);
    *v14 = v23;
    *(v14 + 1) = v24;
    v27 = v8;
    v28 = v25;
    (*(v6 + 32))(&v14[v26], v27, v5);
    sub_100009BFC(v14, 0, 1, v28);

    v29 = v37;
    a1 = v38;
LABEL_8:
    *v1 = v15;
    v1[1] = v16;
    v30 = v41;
    v1[2] = v40;
    v1[3] = v18;
    v1[4] = v29;
    v31 = v1[5];
    sub_10002F6B4(v14, v30, &qword_1001B9480, &qword_1001701A8);
    v32 = 1;
    if (sub_10000C6C0(v30, 1, v28) != 1)
    {
      v33 = v30;
      v34 = v36;
      sub_10002F6B4(v33, v36, &qword_1001B9458, &qword_100174250);
      v31(v34);
      sub_10000C7F0(v34, &qword_1001B9458);
      v32 = 0;
    }

    v35 = sub_100065020(&qword_1001B9460, &qword_100170188);
    return sub_100009BFC(a1, v32, 1, v35);
  }

  else
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= ((v17 + 64) >> 6))
      {
        v28 = v39;
        sub_100009BFC(&v36 - v13, 1, 1, v39);
        v29 = 0;
        goto LABEL_8;
      }

      v19 = *(v16 + 8 * v20);
      ++v18;
      if (v19)
      {
        v38 = a1;
        v18 = v20;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10008CE3C()
{
  sub_100003884();
  sub_1000135C4();
  v0 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  sub_100002F44(v0);
  v1 = swift_task_alloc();
  v2 = sub_100004B00(v1);
  *v2 = v3;
  v2[1] = sub_10006FA64;
  sub_100003D20();

  return sub_100075B88(v4, v5, v6);
}

uint64_t sub_10008CF48()
{
  sub_100003884();
  sub_1000135C4();
  v0 = type metadata accessor for Assertion.DaemonRep();
  sub_100002F04(v0);
  v1 = swift_task_alloc();
  v2 = sub_100004B00(v1);
  *v2 = v3;
  v2[1] = sub_10006FA64;
  sub_100003D20();

  return sub_10007484C(v4, v5, v6, v7);
}

uint64_t sub_10008D024()
{
  sub_1000094B0();
  sub_10000636C();
  v1 = sub_100065020(&qword_1001B9420, &qword_100170118);
  sub_100002F44(v1);
  sub_100011900();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_10006F558;
  sub_100006378();

  return sub_100074558(v3, v4, v5, v6, v7);
}

uint64_t sub_10008D16C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_10008D1C4()
{
  result = qword_1001B9530;
  if (!qword_1001B9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9530);
  }

  return result;
}

uint64_t sub_10008D218()
{
  sub_100001ED0();
  sub_1000135C4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  v6 = sub_10003F82C(v4);

  return sub_100076520(v6, v2, v1);
}

uint64_t sub_10008D340()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001B95E0);
  sub_10000641C(v0, qword_1001B95E0);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void sub_10008D3AC()
{
  v0 = [objc_opt_self() currentEstimates];
  sub_10000E2C0(0, &qword_1001B9690, RDEstimate_ptr);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = sub_10000E8DC(v1);
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v2 == v3)
    {

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v8 = sub_10008DBF0(v5);
    v10 = v9;

    ++v3;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10013FBE8(0, v4[2] + 1, 1, v4);
        v4 = v14;
      }

      v12 = v4[2];
      v11 = v4[3];
      if (v12 >= v11 >> 1)
      {
        sub_10013FBE8(v11 > 1, v12 + 1, 1, v4);
        v4 = v15;
      }

      v4[2] = v12 + 1;
      v13 = &v4[2 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v3 = v7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_10008D538(uint64_t a1)
{
  v37 = a1;
  v1 = sub_100065020(&qword_1001B9698, &qword_100170280);
  sub_100002BDC();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002BDC();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  out_token = -1;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  sub_10000E2C0(0, &qword_1001B8BC0, OS_dispatch_queue_ptr);
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v7);
  v16 = static OS_dispatch_queue.global(qos:)();
  v17 = v12;
  v18 = v37;
  (*(v9 + 8))(v17, v7);
  (*(v3 + 16))(v6, v18, v1);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v6, v1);
  aBlock[4] = sub_10008DC54;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008DB78;
  aBlock[3] = &unk_1001B0798;
  v21 = _Block_copy(aBlock);

  v22 = String.utf8CString.getter();
  v23 = notify_register_dispatch((v22 + 32), &out_token, v16, v21);

  _Block_release(v21);

  if (!v23)
  {
    v30 = out_token;
    if (out_token != -1)
    {

      *(swift_allocObject() + 16) = v30;
      AsyncStream.Continuation.onTermination.setter();
      return;
    }

    if (qword_1001B88E0 != -1)
    {
      sub_100004FFC(&qword_1001B88E0);
    }

    v31 = type metadata accessor for Logger();
    sub_10000641C(v31, qword_1001B95E0);

    v25 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315138;
      v35 = sub_100004A3C(v13, v15, aBlock);

      *(v33 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v25, v32, "Could not register for %s. Registration token invalid.", v33, 0xCu);
      sub_100003324(v34);

      goto LABEL_6;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (qword_1001B88E0 != -1)
  {
    sub_100004FFC(&qword_1001B88E0);
  }

  v24 = type metadata accessor for Logger();
  sub_10000641C(v24, qword_1001B95E0);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v25, v26))
  {
    goto LABEL_13;
  }

  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  aBlock[0] = v28;
  *v27 = 136315394;
  v29 = sub_100004A3C(v13, v15, aBlock);

  *(v27 + 4) = v29;
  *(v27 + 12) = 1024;
  *(v27 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v25, v26, "Could not register for %s. Status: %u.", v27, 0x12u);
  sub_100003324(v28);

LABEL_6:

LABEL_14:

  AsyncStream.Continuation.finish()();
}

uint64_t sub_10008DAAC()
{
  v0 = sub_100065020(&qword_1001B96A0, &qword_100170288);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  AsyncStream.Continuation.yield<A>()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10008DB78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10008DBF0(void *a1)
{
  v1 = [a1 countryCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10008DC54()
{
  sub_100065020(&qword_1001B9698, &qword_100170280);

  return sub_10008DAAC();
}

void *sub_10008DCD8()
{

  sub_100003324(v0 + 9);
  sub_10000ED30((v0 + 14), &qword_1001B8AF8, &qword_10016F6E8);

  sub_100003324(v0 + 22);

  sub_100003324(v0 + 28);
  sub_100003324(v0 + 33);
  sub_100003324(v0 + 38);
  sub_100003324(v0 + 43);
  sub_100003324(v0 + 48);

  sub_100003324(v0 + 63);
  sub_100003324(v0 + 68);
  sub_100003324(v0 + 73);
  sub_100003324(v0 + 78);
  sub_100003324(v0 + 83);
  return v0;
}

uint64_t sub_10008DE3C()
{
  sub_10008DCD8();

  return _swift_deallocClassInstance(v0, 704, 7);
}

uint64_t sub_10008DE94(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = [objc_allocWithZone(NSProcessInfo) init];
  v3 = OBJC_IVAR____TtC13modelmanagerd6Daemon_logHandle;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  generalLogHandle.getter();
  (*(v5 + 32))(v1 + v3, v7, v4);
  *(v1 + OBJC_IVAR____TtC13modelmanagerd6Daemon_simulatorListener) = 0;
  *(v1 + OBJC_IVAR____TtC13modelmanagerd6Daemon_context) = a1;
  return v1;
}

uint64_t sub_10008DFCC()
{
  sub_100002BAC();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10008E094;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10008E094()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  return _swift_task_switch(sub_10000F258, 0, 0);
}

uint64_t sub_10008E180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v3[4] = swift_task_alloc();

  return _swift_task_switch(sub_10008E21C, 0, 0);
}

uint64_t sub_10008E21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  type metadata accessor for TaskPriority();
  sub_100005BB4();
  sub_100005640();
  v21 = swift_allocObject();
  sub_100003B28(v21);
  sub_1000057EC();
  sub_10007AE90();
  sub_10000A538();
  sub_100005BB4();
  sub_100005640();
  v22 = swift_allocObject();
  sub_100003B28(v22);
  sub_1000057EC();
  sub_10007AE90();
  sub_10000A538();
  sub_100005BB4();
  sub_100005640();
  v23 = swift_allocObject();
  sub_100003B28(v23);
  sub_1000057EC();
  sub_10007AE90();
  sub_10000A538();
  sub_100005BB4();
  sub_100005640();
  v24 = swift_allocObject();
  sub_100003B28(v24);
  sub_1000057EC();
  sub_10007AE90();
  sub_10000A538();
  sub_100005BB4();
  sub_100005640();
  v25 = swift_allocObject();
  sub_100003B28(v25);
  sub_1000057EC();
  sub_10007AE90();
  sub_10000A538();
  v26 = swift_task_alloc();
  *(v20 + 40) = v26;
  v27 = sub_100065020(&qword_1001B9408, &qword_100174090);
  *v26 = v20;
  v26[1] = sub_10008E43C;

  return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_10008E43C()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100001F00();

  return v3();
}

uint64_t sub_10008E558()
{
  sub_100002BAC();
  *(v0 + 24) = *(*(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd6Daemon_context) + 64);

  v1 = swift_task_alloc();
  v2 = sub_100007A14(v1);
  *v2 = v3;
  sub_100004B28(v2);

  return sub_1000FF6E0();
}

uint64_t sub_10008E61C()
{
  sub_100002BAC();
  *(v0 + 24) = *(*(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd6Daemon_context) + 56);

  v1 = swift_task_alloc();
  v2 = sub_100007A14(v1);
  *v2 = v3;
  v4 = sub_100004B28(v2);

  return sub_100073AE0(v4);
}

uint64_t sub_10008E6C0()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100001F00();

  return v3();
}

uint64_t sub_10008E7DC()
{
  sub_100002BAC();
  *(v0 + 24) = *(*(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd6Daemon_context) + 424);

  v1 = swift_task_alloc();
  v2 = sub_100007A14(v1);
  *v2 = v3;
  sub_100004B28(v2);

  return sub_1000A0F90();
}

uint64_t sub_10008E8A0()
{
  sub_100002BAC();
  *(v0 + 24) = *(*(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd6Daemon_context) + 24);

  v1 = swift_task_alloc();
  v2 = sub_100007A14(v1);
  *v2 = v3;
  sub_100004B28(v2);

  return sub_1000CC898();
}

uint64_t sub_10008E964()
{
  sub_100002BAC();
  v1 = *(*(*(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd6Daemon_context) + 32) + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inferenceMonitorManager);
  *(v0 + 24) = v1;

  return _swift_task_switch(sub_10008E9F4, v1, 0);
}

uint64_t sub_10008E9F4()
{
  sub_100002BAC();
  sub_100125690();

  sub_100001F00();

  return v0();
}

uint64_t sub_10008EA54()
{
  sub_100002BAC();
  *(v1 + 240) = v0;
  type metadata accessor for XPCListener.InitializationOptions();
  *(v1 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10008EB0C, v0, 0);
}

uint64_t sub_10008EB0C()
{
  type metadata accessor for _OSActivity();
  v0[32] = swift_initStackObject();
  v1 = sub_10001B160("Daemon setup", 12, 2);
  v2 = OBJC_IVAR____TtC13modelmanagerd6Daemon_logHandle;
  v0[33] = v1;
  v0[34] = v2;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = sub_100002F80(v4);
  v6 = v0[30];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    v7[1] = [*(v6 + 112) processIdentifier];

    sub_100002F9C();
    _os_log_impl(v8, v9, v10, v11, v12, 8u);
    sub_100002BB8(v7);
  }

  else
  {
  }

  v13 = swift_task_alloc();
  v0[35] = v13;
  *v13 = v0;
  v13[1] = sub_10008ECA4;

  return sub_10008DFAC();
}

uint64_t sub_10008ECA4()
{
  sub_100002BAC();
  v1 = *(*v0 + 240);
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;

  return _swift_task_switch(sub_10008EDD4, v1, 0);
}

uint64_t sub_10008EDD4(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    sub_1000059D8(&_mh_execute_header, v5, v6, "Daemon setup complete");
    sub_100002BB8(v4);
  }

  *(v1 + 80) = &type metadata for ModelManager;
  *(v1 + 88) = sub_1000207F8();
  *(v1 + 56) = 1;
  v7 = isFeatureEnabled(_:)();
  sub_100003324((v1 + 56));
  if ((v7 & 1) != 0 && os_variant_has_internal_content())
  {
    sub_10008F570(*(*(v1 + 240) + OBJC_IVAR____TtC13modelmanagerd6Daemon_context) + 112, v1 + 136);
    if (*(v1 + 160))
    {
      v8 = *(v1 + 240);
      sub_100004A04((v1 + 136), v1 + 96);
      v9 = static RemoteIPCRequest.remoteXPCServiceName.getter();
      v11 = v10;
      sub_1000480AC(v1 + 96, v1 + 176);

      sub_100107F60(v9, v11, (v1 + 176), sub_10008F5E0, v8);
      sub_100003324((v1 + 96));
    }

    else
    {
      sub_10000ED30(v1 + 136, &qword_1001B8AF8, &qword_10016F6E8);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (sub_100002F80(v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        sub_1000059D8(&_mh_execute_header, v15, v16, "Cannot build remoteXPC listener in simulator");
        sub_100002BB8(v14);
      }
    }
  }

  static ModelXPCRequest.serviceName.getter();

  static XPCListener.InitializationOptions.none.getter();
  type metadata accessor for XPCListener();
  swift_allocObject();
  XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();

  v17 = *(v1 + 264);
  swift_beginAccess();
  os_activity_scope_leave((v17 + 24));
  swift_endAccess();

  sub_100001F00();

  return v18();
}

uint64_t (*sub_10008F278(uint64_t (*result)(), uint64_t a2))()
{
  v2 = *(*(a2 + OBJC_IVAR____TtC13modelmanagerd6Daemon_context) + 160);
  if (v2)
  {
    v3 = result;
    swift_retain_n();
    v4 = sub_100108174(v3, v2);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10008F300(uint64_t a1, uint64_t a2)
{
  if (*(*(a2 + OBJC_IVAR____TtC13modelmanagerd6Daemon_context) + 152))
  {

    sub_100065020(&qword_1001B9910, &qword_100170408);
    sub_10008F5F0();
    dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10008F3A4()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd6Daemon_logHandle;
  type metadata accessor for Logger();
  sub_1000055EC();
  (*(v2 + 8))(v0 + v1);

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10008F428()
{
  sub_10008F3A4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for Daemon(uint64_t a1)
{
  result = qword_1001B9840;
  if (!qword_1001B9840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008F4A8(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10008F570(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001B8AF8, &qword_10016F6E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008F5F0()
{
  result = qword_1001B9918;
  if (!qword_1001B9918)
  {
    sub_10006A614(&qword_1001B9910, &qword_100170408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9918);
  }

  return result;
}

uint64_t sub_10008F654()
{
  sub_100001ED0();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  v6 = sub_100004B00(v5);
  *v6 = v7;
  v6[1] = sub_10006F558;

  return sub_10008E180(v4, v2, v0);
}

uint64_t sub_10008F6F4()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_10000501C(v1);

  return sub_10008E538(v3, v4, v5, v6);
}

uint64_t sub_10008F780()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_10000501C(v1);

  return sub_10008E5FC(v3, v4, v5, v6);
}

uint64_t sub_10008F80C()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_10000501C(v1);

  return sub_10008E7BC(v3, v4, v5, v6);
}

uint64_t sub_10008F898()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_10000501C(v1);

  return sub_10008E880(v3, v4, v5, v6);
}

uint64_t sub_10008F924()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_10000501C(v1);

  return sub_10008E944(v3, v4, v5, v6);
}

uint64_t sub_10008F9B4()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001B9920);
  sub_10000641C(v0, qword_1001B9920);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10008FA20()
{
  sub_100001ED0();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100003960();
  *v6 = v5;
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v5 + 184) = v0;

  if (!v0)
  {
    *(v5 + 208) = v3;
  }

  sub_1000059F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10008FB30(uint64_t a1)
{
  v2 = v1[23];
  TaskCancellingXPCReceivedMessage.auditToken.getter();
  sub_1000020C0(v1 + 2);
  sub_100003370(v1 + 2, v1[5]);
  sub_100012728();
  v3 = v1[20];
  v4 = v1[13];
  if (v2)
  {
    v3(v4, v1[10]);
    sub_100003324(v1 + 2);
    v5 = v1[7];
    v5[3] = sub_100065020(&qword_1001B99F0, &qword_100170530);
    v5[4] = sub_1000085B8(&qword_1001B9A10);
    v5[5] = sub_100005038(&qword_1001B99F8);
    sub_10000366C(v5);
    swift_errorRetain();
    ModelManagerError.init(wrapping:)();
    swift_storeEnumTagMultiPayload();

    v6 = sub_10001132C();
    v7(v6);

    sub_100001F00();

    return v8();
  }

  else
  {
    v3(v4, v1[10]);
    sub_100003324(v1 + 2);
    TaskCancellingXPCReceivedMessage.auditToken.getter();
    swift_task_alloc();
    sub_100004B34();
    v1[24] = v10;
    *v10 = v11;
    v10[1] = sub_10008FD40;
    v12 = v1[12];
    v13 = v1[9];
    v14 = v1[7];

    return sub_100013CBC(v14, v13, v12);
  }
}

uint64_t sub_10008FD40()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100003960();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 200) = v0;

  (*(v2 + 160))(*(v2 + 96), *(v2 + 80));
  sub_1000059F8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10008FEA4()
{
  sub_100001ED0();
  v0 = sub_10001132C();
  v1(v0);

  sub_100001F00();

  return v2();
}

uint64_t sub_10008FF2C()
{
  sub_100001ED0();
  v1 = *(v0 + 56);
  v1[3] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v1[4] = sub_1000085B8(&qword_1001B9A10);
  v1[5] = sub_100005038(&qword_1001B99F8);
  sub_10000366C(v1);
  swift_errorRetain();
  ModelManagerError.init(wrapping:)();
  sub_100019A1C();

  v2 = sub_10001132C();
  v3(v2);

  sub_100001F00();

  return v4();
}

uint64_t sub_100090024()
{
  sub_100001ED0();
  v1 = *(v0 + 56);
  v1[3] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v1[4] = sub_1000085B8(&qword_1001B9A10);
  v1[5] = sub_100005038(&qword_1001B99F8);
  sub_10000366C(v1);
  swift_errorRetain();
  ModelManagerError.init(wrapping:)();
  sub_100019A1C();

  v2 = sub_10001132C();
  v3(v2);

  sub_100001F00();

  return v4();
}

uint64_t sub_10009011C()
{
  sub_100001ED0();
  v1 = *(v0 + 56);
  v1[3] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v1[4] = sub_1000085B8(&qword_1001B9A10);
  v1[5] = sub_100005038(&qword_1001B99F8);
  sub_10000366C(v1);
  swift_errorRetain();
  ModelManagerError.init(wrapping:)();
  sub_100019A1C();

  v2 = sub_10001132C();
  v3(v2);

  sub_100001F00();

  return v4();
}

uint64_t sub_100090214()
{
  sub_100002BAC();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = type metadata accessor for AuditToken();
  v1[16] = v5;
  sub_100002F44(v5);
  v1[17] = v6;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v7 = type metadata accessor for ModelXPCRequest();
  v1[21] = v7;
  sub_100002F44(v7);
  v1[22] = v8;
  v1[23] = swift_task_alloc();
  sub_1000059F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100090334()
{
  sub_100003884();
  v1 = v0[15];
  sub_100005490();
  TaskCancellingXPCReceivedMessage.decode()();
  TaskCancellingXPCReceivedMessage.auditToken.getter();
  swift_task_alloc();
  sub_100004B34();
  v0[24] = v2;
  *v2 = v3;
  v2[1] = sub_100090408;
  v4 = v0[20];

  return sub_10015DED0(v1 + 16, v4);
}

uint64_t sub_100090408()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[25] = v0;

  v6 = v2[20];
  v7 = v2[17];
  v8 = v2[16];
  if (v0)
  {
    v9 = *(v7 + 8);
    v3[35] = v9;
    v9(v6, v8);
    sub_1000059F8();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = v3[15];
    v14 = *(v7 + 8);
    v3[26] = v14;
    v3[27] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v6, v8);
    v15 = swift_task_alloc();
    v3[28] = v15;
    *v15 = v5;
    v15[1] = sub_1000905E4;

    return sub_10015E158(v13 + 16);
  }
}

uint64_t sub_1000905E4()
{
  sub_100001ED0();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100003960();
  *v6 = v5;
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v5 + 232) = v0;

  if (!v0)
  {
    *(v5 + 288) = v3;
  }

  sub_1000059F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000906F4(uint64_t a1)
{
  v2 = *(v1 + 232);
  TaskCancellingXPCReceivedMessage.auditToken.getter();
  sub_1000020C0((v1 + 56));
  sub_100003370((v1 + 56), *(v1 + 80));
  sub_100012728();
  if (v2)
  {
    (*(v1 + 208))(*(v1 + 152), *(v1 + 128));
    sub_100003324((v1 + 56));
    *(v1 + 256) = *(v1 + 208);
    *(v1 + 264) = v2;
    v3 = *(v1 + 104);
    *(v1 + 40) = sub_100065020(&qword_1001B99F0, &qword_100170530);
    *(v1 + 48) = sub_100005038(&qword_1001B99F8);
    sub_10000366C((v1 + 16));
    swift_errorRetain();
    ModelManagerError.init(wrapping:)();
    swift_storeEnumTagMultiPayload();
    v13 = (v3 + *v3);
    swift_task_alloc();
    sub_100004B34();
    *(v1 + 272) = v4;
    *v4 = v5;
    v6 = sub_100005BD4(v4);

    return v13(v6);
  }

  else
  {
    (*(v1 + 208))(*(v1 + 152), *(v1 + 128));
    sub_100003324((v1 + 56));
    *(v1 + 240) = *(v1 + 208);
    TaskCancellingXPCReceivedMessage.auditToken.getter();
    v8 = swift_task_alloc();
    *(v1 + 248) = v8;
    *v8 = v1;
    v9 = sub_10000A554(v8);

    return sub_10015E4B8(v9, v10, v11, v12);
  }
}

uint64_t sub_10009091C()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[30];
  v3 = v1[18];
  v4 = v1[16];
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  v2(v3, v4);
  sub_1000059F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100090A74()
{
  sub_100001ED0();
  (*(v0[22] + 8))(v0[23], v0[21]);

  sub_100001F00();

  return v1();
}

uint64_t sub_100090B0C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1;
  sub_100003960();
  *v3 = v2;
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100003324((v2 + 16));
  sub_1000059F8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100090BF8()
{
  sub_100002BAC();

  v0[30] = v0[32];
  TaskCancellingXPCReceivedMessage.auditToken.getter();
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v2 = sub_10000A554(v1);

  return sub_10015E4B8(v2, v3, v4, v5);
}

uint64_t sub_100090C80()
{
  sub_100003884();
  v1 = v0[25];
  v0[32] = v0[35];
  v0[33] = v1;
  v0[5] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v0[6] = sub_100005038(&qword_1001B99F8);
  sub_10000366C(v0 + 2);
  swift_errorRetain();
  ModelManagerError.init(wrapping:)();
  swift_storeEnumTagMultiPayload();
  sub_100007850();
  v7 = v2;
  swift_task_alloc();
  sub_100004B34();
  v0[34] = v3;
  *v3 = v4;
  v5 = sub_100005BD4(v3);

  return v7(v5);
}

uint64_t sub_100090D90()
{
  sub_100003884();
  v1 = v0[29];
  v0[32] = v0[26];
  v0[33] = v1;
  v0[5] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v0[6] = sub_100005038(&qword_1001B99F8);
  sub_10000366C(v0 + 2);
  swift_errorRetain();
  ModelManagerError.init(wrapping:)();
  swift_storeEnumTagMultiPayload();
  sub_100007850();
  v7 = v2;
  swift_task_alloc();
  sub_100004B34();
  v0[34] = v3;
  *v3 = v4;
  v5 = sub_100005BD4(v3);

  return v7(v5);
}

uint64_t sub_100090EA0@<X0>(uint64_t *a2@<X8>)
{
  if (qword_1001B88E8 != -1)
  {
    sub_10000A220(&qword_1001B88E8);
  }

  v3 = type metadata accessor for Logger();
  sub_10000641C(v3, qword_1001B9920);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error during decoding the message %@", v6, 0xCu);
    sub_10006F830(v7);
  }

  a2[3] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  a2[4] = sub_100005038(&qword_1001B99F8);
  v9 = sub_10000366C(a2);
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  _print_unlocked<A, B>(_:_:)();
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = enum case for ModelManagerError.ipcError(_:);
  v11 = type metadata accessor for ModelManagerError();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000910B0()
{
  sub_100002BAC();
  *(v1 + 80) = v0;
  sub_1000059F8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100091138()
{
  sub_100003884();
  v1 = *(v0 + 80);
  type metadata accessor for _OSActivity();
  *(v0 + 88) = swift_initStackObject();
  *(v0 + 96) = sub_10001B160("Client connection cancellation", 30, 2);
  v2 = *(v1 + 56);
  os_unfair_lock_lock(v2 + 5);
  os_unfair_lock_opaque = v2[4]._os_unfair_lock_opaque;
  *(v0 + 136) = os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2 + 5);
  if (qword_1001B88E8 != -1)
  {
    sub_10000A220(&qword_1001B88E8);
  }

  v4 = type metadata accessor for Logger();
  sub_10000641C(v4, qword_1001B9920);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = os_unfair_lock_opaque;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cancellation Handler with XPC Error, sessionManager invoked for removeAllSession with pid %ld", v7, 0xCu);
  }

  v8 = *(v0 + 80);

  *(v0 + 104) = *(*sub_100003370((v8 + 16), *(v8 + 40)) + 128);

  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_100091328;

  return sub_100092C14();
}

uint64_t sub_100091328()
{
  sub_100002BAC();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_1000059F8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10009145C()
{
  sub_100001ED0();
  *(v0 + 120) = *(*sub_100003370((*(v0 + 80) + 16), *(*(v0 + 80) + 40)) + 120);

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_100091548;
  v2 = *(v0 + 136);

  return sub_10007687C(v2);
}

uint64_t sub_100091548()
{
  sub_100002BAC();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_1000059F8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10009167C()
{
  sub_100002BAC();
  v1 = *(v0 + 96);
  swift_beginAccess();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  sub_100001F00();

  return v2();
}

void *sub_100091728()
{
  sub_100003324((v0 + 16));

  return v0;
}

uint64_t sub_100091758()
{
  sub_100091728();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_1000917F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100090214();
}

uint64_t sub_1000918A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10006FA64;

  return TaskCancellablePeerHandler.handleIncomingRequest(_:)(a1, a2, a3);
}

uint64_t sub_100091958()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;

  return sub_1000910B0();
}

uint64_t sub_100091A00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100091A48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(&qword_1001B99F0, &qword_100170530);
    sub_100091A00(&qword_1001B9A00, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    sub_100091A00(&qword_1001B9A08, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100091B30(uint64_t a1)
{
  v2 = type metadata accessor for ModelCatalogAsset(0);
  v3 = sub_100002F44(v2);
  v32 = v4;
  __chkstk_darwin(v3);
  sub_100005F44(v5, v27);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002045C(0, v6, 0);
  result = sub_10001E724();
  v10 = result;
  v11 = 0;
  v35 = a1 + 56;
  v28 = a1 + 64;
  v29 = v6;
  v30 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v10 < 1 << *(a1 + 32))
    {
      v12 = v10 >> 6;
      if ((*(v35 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_25;
      }

      v34 = v9;
      v33 = v8;
      sub_10000C050(*(a1 + 48) + *(v32 + 72) * v10, v31);
      v14 = *v31;
      v13 = v31[1];

      result = sub_10000AAD0(v31, type metadata accessor for ModelCatalogAsset);
      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_10002045C((v15 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v14;
      v17[5] = v13;
      if (v34)
      {
        goto LABEL_29;
      }

      a1 = v30;
      v18 = 1 << *(v30 + 32);
      if (v10 >= v18)
      {
        goto LABEL_26;
      }

      v19 = *(v35 + 8 * v12);
      if ((v19 & (1 << v10)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v30 + 36) != v33)
      {
        goto LABEL_28;
      }

      v20 = v19 & (-2 << (v10 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v21 = v29;
      }

      else
      {
        v22 = v12 << 6;
        v23 = v12 + 1;
        v21 = v29;
        v24 = (v28 + 8 * v12);
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_100016E94(v10, v33, 0);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        result = sub_100016E94(v10, v33, 0);
      }

LABEL_19:
      if (++v11 == v21)
      {
        return _swiftEmptyArrayStorage;
      }

      v9 = 0;
      v8 = *(v30 + 36);
      v10 = v18;
      if (v18 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100091E08(uint64_t a1)
{
  v3 = type metadata accessor for ModelCatalogAsset(0);
  v39 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v38 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AppleIntelligenceAsset();
  v5 = *(v37 - 8);
  __chkstk_darwin(v37);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v35 = v7;
  v30[1] = v1;
  v43 = _swiftEmptyArrayStorage;
  sub_100016FE0(0, v8, 0);
  v9 = v43;
  result = sub_10001E724();
  v13 = result;
  v14 = 0;
  v42 = a1 + 56;
  v31 = a1 + 64;
  v32 = v8;
  v15 = a1;
  v33 = a1;
  v34 = v5 + 32;
  v36 = v5;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v13 < 1 << *(v15 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v42 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v15 + 36) != v11)
      {
        goto LABEL_25;
      }

      v41 = v12;
      v40 = v11;
      v17 = *(v15 + 48);
      v18 = v38;
      sub_10000C050(v17 + *(v39 + 72) * v13, v38);

      v19 = v35;
      AppleIntelligenceAsset.init(assetIdentifier:version:)();
      sub_10000AAD0(v18, type metadata accessor for ModelCatalogAsset);
      v43 = v9;
      v21 = v9[2];
      v20 = v9[3];
      if (v21 >= v20 >> 1)
      {
        sub_100016FE0(v20 > 1, v21 + 1, 1);
        v9 = v43;
      }

      v9[2] = v21 + 1;
      result = (*(v36 + 32))(v9 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v21, v19, v37);
      if (v41)
      {
        goto LABEL_29;
      }

      v15 = v33;
      v22 = 1 << *(v33 + 32);
      if (v13 >= v22)
      {
        goto LABEL_26;
      }

      v23 = *(v42 + 8 * v16);
      if ((v23 & (1 << v13)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v33 + 36) != v40)
      {
        goto LABEL_28;
      }

      v24 = v23 & (-2 << (v13 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v16 << 6;
        v26 = v16 + 1;
        v27 = (v31 + 8 * v16);
        while (v26 < (v22 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_100016E94(v13, v40, 0);
            v22 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        result = sub_100016E94(v13, v40, 0);
      }

LABEL_19:
      if (++v14 == v32)
      {
        return v9;
      }

      v12 = 0;
      v11 = *(v15 + 36);
      v13 = v22;
      if (v22 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000921C4()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001B9A18);
  sub_10000641C(v0, qword_1001B9A18);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100092238()
{
  sub_100002BAC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_100004B28(v1);

  return sub_100093228();
}

uint64_t sub_1000922C0(uint64_t a1, uint64_t a2, void *a3)
{
  CustomAssetConfiguration.instanceID.getter();
  CustomAssetConfiguration.templateID.getter();
  AuditToken.processIdentifier.getter();
  v3 = static CustomAssetConfiguration.getCustomAssetConfigurationIdentifer(instanceID:templateID:clientProcessID:appBundleID:executablePath:)();
  v5 = v4;

  if (v3 == CustomAssetConfiguration.identifier.getter() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      v10 = type metadata accessor for ModelManagerError();
      sub_100015F10(&qword_1001B8F50, 255, &type metadata accessor for ModelManagerError);
      swift_allocError();
      (*(*(v10 - 8) + 104))(v11, enum case for ModelManagerError.invalidClientIdentifier(_:), v10);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000924A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  CustomAssetConfiguration.templateID.getter();
  CustomAssetConfiguration.copyWithAuditToken(auditToken:)();
  v6 = type metadata accessor for CustomAssetConfiguration();
  sub_100009BFC(v5, 0, 1, v6);
  return sub_1000FF3CC();
}

uint64_t sub_100092580()
{
  sub_100005F88();
  sub_1000033DC();

  sub_100003324((v0 + 176));
  if (qword_1001B88F0 != -1)
  {
    sub_10000505C();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001B9A18);
  sub_10000D0E8();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10001E6F0();

  if (os_log_type_enabled(v3, v1))
  {
    sub_1000267F8();
    v4 = sub_1000039DC();
    sub_1000033D0();
    v14 = swift_slowAlloc();
    sub_100026B40(4.8151e-34);
    sub_10001AFF8();
    sub_10000CD00();
    v5 = sub_10000CF10();
    sub_100004A3C(v5, v6, v7);
    sub_10000A08C();

    sub_100003760();
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    sub_10003DDBC(v8);
    sub_100057A3C(&_mh_execute_header, v3, v1, "Session %s couldn't mark assets as in use by the session: %@");
    sub_10001301C(v4, &qword_1001B8F68);
    sub_100002BD0();

    sub_100003324(v14);
    sub_100007C2C();

    sub_100002BD0();
  }

  else
  {
  }

  swift_task_alloc();
  sub_100004B34();
  *(v0 + 624) = v9;
  *v9 = v10;
  sub_100002FAC(v9);
  sub_1000A0258();
  sub_1000062BC();

  return Task<>.value.getter(v11);
}

uint64_t sub_100092764()
{
  sub_100005F88();
  sub_1000033DC();
  sub_100003324((v0 + 176));
  if (qword_1001B88F0 != -1)
  {
    sub_10000505C();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001B9A18);
  sub_10000D0E8();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10001E6F0();

  if (os_log_type_enabled(v3, v1))
  {
    sub_1000267F8();
    v4 = sub_1000039DC();
    sub_1000033D0();
    v14 = swift_slowAlloc();
    sub_100026B40(4.8151e-34);
    sub_10001AFF8();
    sub_10000CD00();
    v5 = sub_10000CF10();
    sub_100004A3C(v5, v6, v7);
    sub_10000A08C();

    sub_100003760();
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    sub_10003DDBC(v8);
    sub_100057A3C(&_mh_execute_header, v3, v1, "Session %s couldn't mark assets as in use by the session: %@");
    sub_10001301C(v4, &qword_1001B8F68);
    sub_100002BD0();

    sub_100003324(v14);
    sub_100007C2C();

    sub_100002BD0();
  }

  else
  {
  }

  swift_task_alloc();
  sub_100004B34();
  *(v0 + 624) = v9;
  *v9 = v10;
  sub_100002FAC(v9);
  sub_1000A0258();
  sub_1000062BC();

  return Task<>.value.getter(v11);
}

uint64_t sub_100092940()
{
  sub_100002BAC();
  *(v0 + 16) = *(v0 + 72);
  sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  CheckedContinuation.resume(throwing:)();

  sub_100001F00();

  return v1();
}

uint64_t sub_1000929C8()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_10000CC50();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100092AE0()
{
  sub_10001446C();
  sub_10000636C();
  sub_10004575C();
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    sub_10000A05C();
    v4 = swift_slowAlloc();
    sub_1000033D0();
    swift_slowAlloc();
    sub_1000265BC();
    *v4 = 136315138;
    v5 = sub_10001AFF8();
    sub_10000CB58(v5, v6, v7, v8);
    sub_100007BA0();
    *(v4 + 4) = v2;
    sub_1000033FC();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_100003324(v1);
    sub_1000039CC();

    sub_100002BD0();
  }

  sub_10000D070(*(v0 + 56));
  *(v0 + 112) = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
  Session.Metadata.onBehalfOfPID.getter();
  v14 = swift_task_alloc();
  v15 = sub_10000D03C(v14);
  *v15 = v16;
  sub_1000094C8(v15);
  sub_100003770();

  return sub_100037440();
}

uint64_t sub_100092C14()
{
  sub_100002BAC();
  *(v1 + 96) = v0;
  *(v1 + 184) = v2;
  v3 = type metadata accessor for RequestCancellationReason();
  *(v1 + 104) = v3;
  sub_100002F44(v3);
  *(v1 + 112) = v4;
  *(v1 + 120) = sub_100002C58();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100092CBC()
{
  sub_10000636C();
  v2 = *(v0 + 96);
  sub_100004CBC();
  swift_beginAccess();
  v3 = *(v2 + 112);
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_1000464A4(v3);
    __CocoaSet.makeIterator()();
    v4 = sub_100005B00();
    type metadata accessor for DaemonSession(v4);
    sub_10000C61C();
    sub_100015F10(v5, 255, v6);
    sub_100001F70();
    Set.Iterator.init(_cocoa:)();
    result = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 48);
  }

  else
  {
    v12 = -1 << *(v3 + 32);
    v8 = v3 + 56;
    v10 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v3 + 56);

    v9 = 0;
  }

  *(v0 + 136) = v8;
  *(v0 + 144) = v10;
  *(v0 + 128) = result;
  *(v0 + 188) = enum case for RequestCancellationReason.clientTermination(_:);
  if (result < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v15 = v9;
  v16 = v9;
  if (!v11)
  {
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v16 >= ((*(v0 + 144) + 64) >> 6))
      {
        break;
      }

      ++v15;
      if (*(*(v0 + 136) + 8 * v16))
      {
        goto LABEL_12;
      }
    }

LABEL_21:
    sub_100055984(result);
    sub_100001F00();
    sub_100023A30();

    __asm { BRAA            X1, X16 }
  }

LABEL_12:
  sub_1000062A0();
  sub_10001E4DC();
  while (1)
  {
    *(v0 + 160) = v16;
    *(v0 + 168) = v1;
    *(v0 + 152) = v10;
    if (!v10)
    {
LABEL_20:
      result = *(v0 + 128);
      goto LABEL_21;
    }

    v19 = *(v0 + 184);
    if (AuditToken.processIdentifier.getter() == v19)
    {
      break;
    }

    result = *(v0 + 128);
    v9 = v16;
    v11 = v1;
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v17 = __CocoaSet.Iterator.next()();
    if (!v17)
    {
      goto LABEL_20;
    }

    *(v0 + 88) = v17;
    v18 = type metadata accessor for DaemonSession(0);
    sub_10001910C(v18);
    v10 = *(v0 + 80);
    v16 = v9;
    v1 = v11;
  }

  v22 = sub_1000A0270();
  v23(v22);
  v24 = swift_task_alloc();
  *(v0 + 176) = v24;
  *v24 = v0;
  sub_100007FBC(v24);
  sub_100023A30();

  return sub_100036A94();
}

uint64_t sub_100092F2C()
{
  sub_100001ED0();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100001F70();
  v4(v3);
  v5 = sub_100003DE0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10009307C()
{
  sub_10000636C();

  v3 = *(v0 + 160);
  for (i = *(v0 + 168); ; i = v2)
  {
    result = *(v0 + 128);
    if (result < 0)
    {
      v8 = __CocoaSet.Iterator.next()();
      if (!v8)
      {
        goto LABEL_14;
      }

      *(v0 + 88) = v8;
      v9 = type metadata accessor for DaemonSession(0);
      sub_10001910C(v9);
      v1 = *(v0 + 80);
      v7 = v3;
      v2 = i;
      goto LABEL_10;
    }

    v6 = v3;
    v7 = v3;
    if (!i)
    {
      break;
    }

LABEL_7:
    sub_1000062A0();
    sub_10001E4DC();
LABEL_10:
    *(v0 + 160) = v7;
    *(v0 + 168) = v2;
    *(v0 + 152) = v1;
    if (!v1)
    {
LABEL_14:
      result = *(v0 + 128);
LABEL_15:
      sub_100055984(result);
      sub_100001F00();
      sub_100023A30();

      __asm { BRAA            X1, X16 }
    }

    v10 = *(v0 + 184);
    if (AuditToken.processIdentifier.getter() == v10)
    {
      v13 = sub_1000A0270();
      v14(v13);
      v15 = swift_task_alloc();
      *(v0 + 176) = v15;
      *v15 = v0;
      sub_100007FBC(v15);
      sub_100023A30();

      return sub_100036A94();
    }

    v3 = v7;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= ((*(v0 + 144) + 64) >> 6))
    {
      goto LABEL_15;
    }

    ++v6;
    if (*(*(v0 + 136) + 8 * v7))
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100093228()
{
  sub_100001ED0();
  v1[17] = v0;
  v2 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v2);
  v1[18] = sub_10000F0C0();
  v1[19] = swift_task_alloc();
  v3 = sub_100065020(&qword_1001B9CB8, &qword_1001728F0);
  v1[20] = v3;
  sub_100002F44(v3);
  v1[21] = v4;
  v1[22] = sub_100002C58();
  v5 = sub_100065020(&qword_1001B9CC0, &qword_100170728);
  v1[23] = v5;
  sub_100002F44(v5);
  v1[24] = v6;
  v1[25] = sub_100002C58();
  sub_1000071A8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000933A0()
{
  sub_100002BAC();
  v1 = sub_10000D070(*(v0 + 136));
  *(v0 + 208) = v1;
  v2 = *v1;

  return _swift_task_switch(sub_100093434, v2, 0);
}

uint64_t sub_100093434()
{
  sub_100001ED0();
  sub_1000FBDBC(*(v0 + 176));
  sub_10000CC50();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000934D4()
{
  sub_100001ED0();
  AsyncStream.makeAsyncIterator()();
  v1 = sub_100001F70();
  v2(v1);
  sub_100011344();
  *(v0 + 216) = sub_100015F10(v3, v4, v5);
  v6 = swift_task_alloc();
  *(v0 + 224) = v6;
  *v6 = v0;
  sub_100011910(v6);
  v7 = sub_10001646C();

  return AsyncStream.Iterator.next(isolation:)(v7);
}

uint64_t sub_1000935D0()
{
  sub_100001ED0();
  sub_10014E860(*(v0 + 212));
  sub_10000CC50();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100093EDC()
{
  sub_100003884();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_1000060A4();
  v4(v3);
  sub_1000071A8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000951CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  sub_10005D918();
  sub_1000033DC();
  v14 = *(v12 + 16);

  swift_errorRetain();
  v15 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10001E6F0();

  if (os_log_type_enabled(v15, v13))
  {
    sub_1000267F8();
    v16 = sub_1000039DC();
    sub_1000033D0();
    a10 = swift_slowAlloc();
    *v14 = 136315394;
    v17 = sub_10001AFF8();
    v21 = sub_10000CB58(v17, v18, v19, v20);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    sub_10003DDBC(v22);
    sub_100005A04();
    _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
    sub_10001301C(v16, &qword_1001B8F68);
    sub_100002BD0();

    sub_100003324(a10);
    sub_100007C2C();

    sub_100002BD0();
  }

  else
  {
  }

  sub_100001F00();
  sub_100016688();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_100095360()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_1000953BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005B00();
  v6 = type metadata accessor for ModelCatalogAsset(v5);
  v7 = sub_100002F44(v6);
  v9 = v8;
  v10 = __chkstk_darwin(v7);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v64 - v13;
  v15 = sub_10004BB90();
  if (!v2)
  {
    v17 = v15;
    v18 = v16;
    v19 = sub_10001CFA8();
    v3 = v19;
    if (a2)
    {
      v71 = v14;
      v65 = v18;
      v66 = v12;
      v64[0] = v17;
      v64[1] = 0;
      v18 = v19 + 56;
      v21 = 1 << *(v19 + 32);
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v23 = v22 & *(v19 + 56);
      v24 = (v21 + 63) >> 6;
      v73 = a2 + 56;

      v25 = 0;
      v70 = _swiftEmptyArrayStorage;
      v67 = v9;
      v68 = v3;
LABEL_9:
      while (v23)
      {
LABEL_14:
        v27 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v28 = *(v3 + 48);
        v69 = *(v9 + 72);
        sub_10000C050(v28 + v69 * (v27 | (v25 << 6)), v71);
        if (*(a2 + 16))
        {
          v29 = *v71;
          v30 = v71[1];
          Hasher.init(_seed:)();
          String.hash(into:)();
          v31 = Hasher._finalize()();
          v32 = ~(-1 << *(a2 + 32));
          while (1)
          {
            v33 = v31 & v32;
            if (((*(v73 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
            {
              break;
            }

            v34 = (*(a2 + 48) + 16 * v33);
            if (*v34 != v29 || v34[1] != v30)
            {
              v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v31 = v33 + 1;
              if ((v36 & 1) == 0)
              {
                continue;
              }
            }

            sub_100025814(v71, v66);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000093CC();
              v70 = v39;
            }

            v9 = v67;
            v3 = v68;
            v37 = v70[2];
            if (v37 >= v70[3] >> 1)
            {
              sub_1000093CC();
              v70 = v40;
            }

            v38 = v70;
            v70[2] = v37 + 1;
            sub_100025814(v66, v38 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v37 * v69);
            goto LABEL_9;
          }
        }

        sub_10000AAD0(v71, type metadata accessor for ModelCatalogAsset);
        v9 = v67;
        v3 = v68;
      }

      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        if (v26 >= v24)
        {
          break;
        }

        v23 = *(v18 + 8 * v26);
        ++v25;
        if (v23)
        {
          v25 = v26;
          goto LABEL_14;
        }
      }

      sub_1000089FC(v70);
      v3 = v41;
      if (*(v41 + 16) != *(a2 + 16))
      {

        type metadata accessor for ModelManagerError();
        sub_100005C00();
        sub_100015F10(v57, 255, v58);
        sub_1000055A4();
        sub_100007894();
        v59 = swift_allocError();
        sub_100011D90(v59, v60);
        v61 = v65;
        *v62 = v64[0];
        v62[1] = v61;
        v62[2] = a2;
        sub_100006098();
        (*(v63 + 104))();
        swift_willThrow();
        return v3;
      }

      if (qword_1001B88F0 != -1)
      {
        sub_10000505C();
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_10000641C(v42, qword_1001B9A18);
      sub_10000A08C();

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v43, v44))
      {
        sub_10000A05C();
        v45 = swift_slowAlloc();
        sub_1000033D0();
        v46 = swift_slowAlloc();
        v72 = v46;
        *v45 = 136315138;
        sub_100091B30(v3);
        Array.description.getter();
        sub_10001E598();
        v47 = sub_10000CF10();
        v50 = sub_100004A3C(v47, v48, v49);
        v3 = v18;

        *(v45 + 4) = v50;
        v51 = "Request specified required asset IDs, using asset subset: %s";
        goto LABEL_36;
      }
    }

    else
    {

      if (qword_1001B88F0 != -1)
      {
LABEL_40:
        sub_10000505C();
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_10000641C(v52, qword_1001B9A18);
      sub_10000A08C();

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v43, v44))
      {
        sub_10000A05C();
        v45 = swift_slowAlloc();
        sub_1000033D0();
        v46 = swift_slowAlloc();
        v72 = v46;
        *v45 = 136315138;
        sub_100091B30(v3);
        Array.description.getter();
        sub_10001E598();
        v53 = sub_10000CF10();
        v56 = sub_100004A3C(v53, v54, v55);
        v3 = v18;

        *(v45 + 4) = v56;
        v51 = "Request didn't specify required asset IDs, using full asset bundle: %s";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v43, v44, v51, v45, 0xCu);
        sub_100003324(v46);
        sub_100007C2C();

        sub_1000039CC();
      }
    }
  }

  return v3;
}