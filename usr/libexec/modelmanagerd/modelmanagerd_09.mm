uint64_t sub_1000EBD88(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return _swift_task_switch(sub_1000EBDAC, v1, 0);
}

uint64_t sub_1000EBDAC()
{
  sub_100002BAC();
  v1 = *(v0 + 32);
  *(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assetVersionChangeUnloadTask) = 0;

  if (v1 == 1 && sub_1000E7B78())
  {
    v2 = swift_task_alloc();
    *(v0 + 24) = v2;
    *v2 = v0;
    v2[1] = sub_1000486E8;

    return sub_1000440E8();
  }

  else
  {
    sub_100001F00();

    return v4();
  }
}

uint64_t sub_1000EBE98(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v8 = a1 + *(v7 + 36);
  v9 = a1 + *(v7 + 32);
  sub_10002B0EC();
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  (*(v4 + 16))(v6, v10, v3);
  v11 = dispatch thunk of static Comparable.<= infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return v11 & 1;
}

uint64_t sub_1000EBFD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000EE528;

  return sub_100025A00();
}

void *sub_1000EC068(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v30 = v2;
    v5 = &_swiftEmptySetSingleton;
    v34 = &_swiftEmptySetSingleton;

    __CocoaSet.makeIterator()();
LABEL_3:
    while (1)
    {
      v6 = __CocoaSet.Iterator.next()();
      if (!v6)
      {
        break;
      }

      v31[0] = v6;
      type metadata accessor for InferenceProviderAsset(0);
      swift_dynamicCast();
      v7 = InferenceProviderAssetDescriptor.identifier.getter();
      v9 = v8;
      if (*(a2 + 16))
      {
        v10 = v7;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v11 = Hasher._finalize()();
        v12 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v13 = v11 & v12;
          if (((*(a2 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
          {
            break;
          }

          v14 = (*(a2 + 48) + 16 * v13);
          if (*v14 != v10 || v14[1] != v9)
          {
            v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v11 = v13 + 1;
            if ((v16 & 1) == 0)
            {
              continue;
            }
          }

          v24 = v32;
          v25 = v5[2];
          if (v5[3] <= v25)
          {
            sub_100080444(v25 + 1, v17, v18, v19, v20, v21, v22, v23, v29, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, vars0, vars8);
          }

          v5 = v34;
          Hasher.init(_seed:)();
          sub_10001214C(v31);
          Hasher._finalize()();
          v26 = _HashTable.nextHole(atOrAfter:)();
          *(v5 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v26;
          *(v5[6] + 8 * v26) = v24;
          ++v5[2];
          goto LABEL_3;
        }
      }
    }

    swift_bridgeObjectRelease_n();

    return v5;
  }

  else
  {

    v28 = sub_1000EC570(a1, a2);

    return v28;
  }
}

uint64_t sub_1000EC2C8(uint64_t a1, _UNKNOWN **a2)
{
  v3 = v2;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v31 = a2;
    v32 = v3;
    v29 = &v28;
    __chkstk_darwin(v10);
    v9 = &v28 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    v30 = v8;
    sub_100011624(0, v8, v9);
    v33 = 0;
    v3 = 0;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v8 = v16 & *(a1 + 56);
    v17 = (v15 + 63) >> 6;
    a2 = &OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    while (v8)
    {
      v18 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v21 = v18 | (v3 << 6);
      v22 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + *(*(a1 + 48) + 8 * v21);
      swift_beginAccess();
      if (v22[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 56)] == 1)
      {
        *&v9[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1000120FC(v9, v30, v33, a1, v11, v12, v13, v14, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, vars0, vars8);
          v25 = v24;

          return v25;
        }
      }
    }

    v19 = v3;
    while (1)
    {
      v3 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v3 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(a1 + 56 + 8 * v3);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v8 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();

  v25 = sub_1000ECD64(v27);

  return v25;
}

void *sub_1000EC570(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v42 = v3;
    v40 = &v39;
    __chkstk_darwin(v10);
    v41 = v8;
    v43 = &v39 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v8, v43);
    v44 = v5;
    v45 = 0;
    v15 = 0;
    v8 = v5 + 56;
    v16 = 1 << *(v5 + 32);
    v17 = v16 < 64 ? ~(-1 << v16) : -1;
    v18 = v17 & *(v5 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = a2;
    v48 = a2 + 56;
LABEL_6:
    while (v18)
    {
      v21 = __clz(__rbit64(v18));
      v47 = (v18 - 1) & v18;
LABEL_13:
      v24 = v21 | (v15 << 6);
      v25 = *(v5 + 48);
      v46 = v24;
      a2 = *(v25 + 8 * v24);

      v26 = InferenceProviderAssetDescriptor.identifier.getter();
      v28 = v27;
      if (*(v20 + 16))
      {
        v9 = v26;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v29 = Hasher._finalize()();
        v30 = ~(-1 << *(v20 + 32));
        while (1)
        {
          v3 = v29 & v30;
          if (((*(v48 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
          {
            break;
          }

          v31 = (*(v20 + 48) + 16 * v3);
          if (*v31 != v9 || v31[1] != v28)
          {
            v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v29 = v3 + 1;
            if ((v33 & 1) == 0)
            {
              continue;
            }
          }

          v5 = v44;
          *(v43 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
          v34 = __OFADD__(v45++, 1);
          v18 = v47;
          if (v34)
          {
            goto LABEL_28;
          }

          goto LABEL_6;
        }
      }

      v5 = v44;
      v18 = v47;
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v19)
      {
        sub_1000120FC(v43, v41, v45, v5, v11, v12, v13, v14, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
        v36 = v35;
        goto LABEL_26;
      }

      v23 = *(v8 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v38 = swift_slowAlloc();

  v36 = sub_1000ECF0C(v38, v8, v5, a2);

LABEL_26:
  swift_bridgeObjectRelease_n();
  return v36;
}

uint64_t sub_1000ECA6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = result;
  v34 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v48 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v37 = (v9 - 1) & v9;
LABEL_12:
    v35 = v11 | (v5 << 6);

    v14 = InferenceProviderAssetDescriptor.identifier.getter();
    v16 = v15;
    if (*(a4 + 16))
    {
      v17 = v14;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v20 = v18 & v19;
        if (((*(v48 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {
          break;
        }

        v21 = (*(a4 + 48) + 16 * v20);
        if (*v21 != v17 || v21[1] != v16)
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v18 = v20 + 1;
          if ((v23 & 1) == 0)
          {
            continue;
          }
        }

        *(v33 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        v24 = __OFADD__(v34++, 1);
        v9 = v37;
        if (v24)
        {
          goto LABEL_26;
        }

        goto LABEL_5;
      }
    }

    v9 = v37;
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      sub_1000120FC(v33, a2, v34, a3, v25, v26, v27, v28, a2, v32, v33, v34, v35, a3, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
      v30 = v29;

      return v30;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v37 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_1000ECCAC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    v12 = sub_1000EC8D8(v11, a2, a3, a4, a5, a6);

    return v12;
  }

  return result;
}

void *sub_1000ECF0C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    swift_bridgeObjectRetain_n();
    v8 = sub_1000ECA6C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1000ECFAC(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v39 = a2;
  v6 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v30 - v10;
  v12 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_10014AFE0(v12);
    *a1 = v12;
  }

  v14 = *(v12 + 16);
  v32 = v12 + 32;
  v38[0] = (v12 + 32);
  v38[1] = v14;
  v15 = _minimumMergeRunLength(_:)(v14);
  if (v15 >= v14)
  {
    if (v14 >= 2)
    {
      v30[1] = a1;
      v30[2] = v3;
      v19 = -1;
      v20 = 1;
      v21 = v32;
      v31 = v14;
      do
      {
        v34 = v20;
        v35 = v19;
        v22 = *(v32 + 8 * v20);
        v33 = v21;
        v23 = v21;
        do
        {
          v24 = *v23;
          v25 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          sub_10001938C(v25 + v22, v11);
          v26 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          sub_10001938C(v26 + v24, v9);

          LOBYTE(v26) = v39(v11, v9);
          sub_1000193F0(v9);
          sub_1000193F0(v11);

          if ((v26 & 1) == 0)
          {
            break;
          }

          v27 = *v23;
          v22 = v23[1];
          *v23 = v22;
          v23[1] = v27;
          --v23;
        }

        while (!__CFADD__(v19++, 1));
        v20 = v34 + 1;
        v21 = v33 + 1;
        v19 = v35 - 1;
      }

      while (v34 + 1 != v31);
    }
  }

  else
  {
    v16 = v15;
    v17 = sub_100065B18(v14 >> 1);
    v37[0] = v18;
    v37[1] = v14 >> 1;
    sub_1000ED208(v37, v36, v38, v16, v39, a3);
    *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

void sub_1000ED208(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v162 = a5;
  v145 = a1;
  v8 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v9 = __chkstk_darwin(v8 - 8);
  v161 = (&v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v160 = &v143 - v11;
  v150 = a3;
  v12 = a3[1];
  if (v12 >= 1)
  {
    v144 = a4;
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      v15 = v13;
      v16 = v13 + 1;
      if (v13 + 1 < v12)
      {
        v149 = v14;
        v17 = *&(*v150)[8 * v16];
        v18 = &(*v150)[8 * v13];
        i = (8 * v13);
        v20 = *v18;
        v19 = (v18 + 16);
        v21 = (v13 + 1);
        v14 = &OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        v22 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        v159 = v12;
        swift_beginAccess();
        v23 = v160;
        sub_10001938C(v22 + v17, v160);
        v24 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        swift_beginAccess();
        v25 = v24 + v20;
        v16 = v21;
        v26 = v161;
        sub_10001938C(v25, v161);

        LODWORD(v158) = v162(v23, v26);
        sub_1000193F0(v26);
        sub_1000193F0(v23);

        v27 = v159;
        v156 = v15;
        v28 = v15 + 2;
        while (1)
        {
          v29 = v28;
          v30 = (v16 + 1);
          if (v30 >= v27)
          {
            break;
          }

          v32 = *(v19 - 1);
          v31 = *v19;
          v33 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          v14 = v30;
          v34 = v160;
          sub_10001938C(v33 + v31, v160);
          v35 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          v36 = v161;
          sub_10001938C(v35 + v32, v161);

          LODWORD(v35) = v162(v34, v36) & 1;
          sub_1000193F0(v36);
          v37 = v34;
          v16 = v14;
          sub_1000193F0(v37);

          ++v19;
          v28 = v29 + 1;
          v27 = v159;
          if ((v158 & 1) != v35)
          {
            goto LABEL_9;
          }
        }

        v16 = v27;
LABEL_9:
        if (v158)
        {
          v15 = v156;
          if (v16 < v156)
          {
            goto LABEL_153;
          }

          if (v156 >= v16)
          {
            v14 = v149;
          }

          else
          {
            if (v27 >= v29)
            {
              v38 = v29;
            }

            else
            {
              v38 = v27;
            }

            v39 = 8 * v38 - 8;
            v40 = v16;
            v41 = v156;
            v14 = v149;
            v42 = i;
            do
            {
              if (v41 != --v40)
              {
                v43 = *v150;
                if (!*v150)
                {
                  goto LABEL_159;
                }

                v44 = *&v42[v43];
                *&v42[v43] = *&v43[v39];
                *&v43[v39] = v44;
              }

              ++v41;
              v39 -= 8;
              v42 += 8;
            }

            while (v41 < v40);
          }
        }

        else
        {
          v14 = v149;
          v15 = v156;
        }
      }

      v45 = v150[1];
      if (v16 < v45)
      {
        if (__OFSUB__(v16, v15))
        {
          goto LABEL_152;
        }

        if (v16 - v15 < v144)
        {
          v46 = (v15 + v144);
          if (__OFADD__(v15, v144))
          {
            goto LABEL_154;
          }

          if (v46 >= v45)
          {
            v46 = v150[1];
          }

          if (v46 < v15)
          {
            goto LABEL_155;
          }

          if (v16 != v46)
          {
            v149 = v14;
            v14 = *v150;
            v47 = &(*v150)[8 * v16 - 8];
            v156 = v15;
            v48 = (v15 - v16);
            i = v46;
            do
            {
              v147 = v16;
              v49 = *&v14[8 * v16];
              v158 = v48;
              v159 = v47;
              do
              {
                v50 = *v47;
                v51 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
                swift_beginAccess();
                v52 = v160;
                sub_10001938C(v51 + v49, v160);
                v53 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
                swift_beginAccess();
                v54 = v161;
                sub_10001938C(v53 + v50, v161);

                LOBYTE(v53) = v162(v52, v54);
                sub_1000193F0(v54);
                sub_1000193F0(v52);

                if ((v53 & 1) == 0)
                {
                  break;
                }

                if (!v14)
                {
                  goto LABEL_156;
                }

                v55 = *v47;
                v49 = *(v47 + 1);
                *v47 = v49;
                *(v47 + 1) = v55;
                v47 -= 8;
                v104 = __CFADD__(v48++, 1);
              }

              while (!v104);
              v16 = v147 + 1;
              v47 = v159 + 8;
              v48 = v158 - 1;
            }

            while ((v147 + 1) != i);
            v16 = i;
            v14 = v149;
            v15 = v156;
          }
        }
      }

      if (v16 < v15)
      {
        goto LABEL_151;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v147 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10013FB2C();
        v14 = v133;
      }

      v57 = *(v14 + 2);
      v58 = v57 + 1;
      if (v57 >= *(v14 + 3) >> 1)
      {
        sub_10013FB2C();
        v14 = v134;
      }

      *(v14 + 2) = v58;
      v59 = v14 + 32;
      v60 = &v14[16 * v57 + 32];
      v61 = v147;
      *v60 = v15;
      *(v60 + 1) = v61;
      v159 = *v145;
      if (!v159)
      {
        goto LABEL_161;
      }

      if (v57)
      {
        break;
      }

LABEL_119:
      v12 = v150[1];
      v13 = v147;
      if (v147 >= v12)
      {
        goto LABEL_122;
      }
    }

    v149 = v14;
    v148 = v14 + 32;
    while (1)
    {
      v62 = v58 - 1;
      v63 = &v59[16 * v58 - 16];
      v64 = &v14[16 * v58];
      if (v58 >= 4)
      {
        break;
      }

      if (v58 == 3)
      {
        v65 = *(v14 + 4);
        v66 = *(v14 + 5);
        v75 = __OFSUB__(v66, v65);
        v67 = v66 - v65;
        v68 = v75;
LABEL_60:
        if (v68)
        {
          goto LABEL_139;
        }

        v80 = *v64;
        v79 = *(v64 + 1);
        v81 = __OFSUB__(v79, v80);
        v82 = v79 - v80;
        v83 = v81;
        if (v81)
        {
          goto LABEL_142;
        }

        v84 = *(v63 + 1);
        v85 = v84 - *v63;
        if (__OFSUB__(v84, *v63))
        {
          goto LABEL_145;
        }

        if (__OFADD__(v82, v85))
        {
          goto LABEL_146;
        }

        if (v82 + v85 >= v67)
        {
          if (v67 < v85)
          {
            v62 = v58 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_74;
      }

      v86 = *v64;
      v87 = *(v64 + 1);
      v75 = __OFSUB__(v87, v86);
      v82 = v87 - v86;
      v83 = v75;
LABEL_74:
      if (v83)
      {
        goto LABEL_141;
      }

      v89 = *v63;
      v88 = *(v63 + 1);
      v75 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v75)
      {
        goto LABEL_144;
      }

      if (v90 < v82)
      {
        goto LABEL_119;
      }

LABEL_81:
      if (v62 - 1 >= v58)
      {
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
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
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
        goto LABEL_157;
      }

      v94 = *v150;
      if (!*v150)
      {
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
        return;
      }

      v152 = &v59[16 * v62 - 16];
      v95 = *v152;
      v155 = v62;
      v151 = &v59[16 * v62];
      v96 = &v94[8 * v95];
      v97 = 8 * *v151;
      v98 = &v94[v97];
      v99 = 8 * *(v151 + 1);
      v153 = *(v151 + 1);
      v100 = &v94[v99];
      v154 = v95;
      v101 = v97 - 8 * v95;
      v102 = v99 - v97;
      if (v101 >> 3 < (v99 - v97) >> 3)
      {
        v14 = v159;
        sub_100060E68(v96);
        v103 = &v14[v101];
        v158 = v100;
        for (i = &v14[v101]; ; v103 = i)
        {
          v104 = v14 >= v103 || v98 >= v100;
          if (v104)
          {
            v98 = v96;
            goto LABEL_109;
          }

          v105 = v96;
          v106 = v98;
          v107 = *v98;
          v108 = *v14;
          v109 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          v110 = v160;
          sub_10001938C(v109 + v107, v160);
          v111 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          v112 = v161;
          sub_10001938C(v111 + v108, v161);

          LOBYTE(v111) = v162(v110, v112);
          sub_1000193F0(v112);
          sub_1000193F0(v110);

          if ((v111 & 1) == 0)
          {
            break;
          }

          v113 = v106;
          v98 = v106 + 8;
          v114 = v105;
          if (v105 != v106)
          {
            goto LABEL_93;
          }

LABEL_94:
          v96 = v114 + 8;
          v100 = v158;
        }

        v113 = v14;
        v114 = v105;
        v115 = v105 == v14;
        v14 += 8;
        v98 = v106;
        if (v115)
        {
          goto LABEL_94;
        }

LABEL_93:
        *v114 = *v113;
        goto LABEL_94;
      }

      v116 = v159;
      sub_100060E68(v98);
      v103 = v116 + v102;
      v156 = v96;
LABEL_96:
      v117 = v98 - 8;
      v100 -= 8;
      v158 = v98;
      for (i = v98 - 8; v103 > v159 && v96 < v98; v117 = i)
      {
        v119 = *(v103 - 1);
        v120 = *v117;
        v121 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        swift_beginAccess();
        v122 = v160;
        sub_10001938C(v121 + v119, v160);
        v123 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        swift_beginAccess();
        v124 = v161;
        sub_10001938C(v123 + v120, v161);

        LOBYTE(v123) = v162(v122, v124);
        sub_1000193F0(v124);
        sub_1000193F0(v122);

        v125 = v100 + 8;
        if (v123)
        {
          v126 = i;
          v98 = i;
          v96 = v156;
          if (v125 != v158)
          {
            *v100 = *i;
            v98 = v126;
          }

          goto LABEL_96;
        }

        if (v103 != v125)
        {
          *v100 = *(v103 - 1);
        }

        v100 -= 8;
        v103 -= 8;
        v96 = v156;
        v98 = v158;
      }

      v14 = v159;
LABEL_109:
      v127 = (v103 - v14) / 8;
      if (v98 != v14 || v98 >= &v14[8 * v127])
      {
        memmove(v98, v14, 8 * v127);
      }

      v129 = v153;
      v130 = v155;
      if (v153 < v154)
      {
        goto LABEL_134;
      }

      v14 = v149;
      v131 = *(v149 + 2);
      if (v155 > v131)
      {
        goto LABEL_135;
      }

      v132 = v152;
      *v152 = v154;
      *(v132 + 1) = v129;
      if (v130 >= v131)
      {
        goto LABEL_136;
      }

      v58 = v131 - 1;
      sub_100147E04(v151 + 16, v131 - 1 - v130, v151);
      *(v14 + 2) = v131 - 1;
      v59 = v148;
      if (v131 <= 2)
      {
        goto LABEL_119;
      }
    }

    v69 = &v59[16 * v58];
    v70 = *(v69 - 8);
    v71 = *(v69 - 7);
    v75 = __OFSUB__(v71, v70);
    v72 = v71 - v70;
    if (v75)
    {
      goto LABEL_137;
    }

    v74 = *(v69 - 6);
    v73 = *(v69 - 5);
    v75 = __OFSUB__(v73, v74);
    v67 = v73 - v74;
    v68 = v75;
    if (v75)
    {
      goto LABEL_138;
    }

    v76 = *(v64 + 1);
    v77 = v76 - *v64;
    if (__OFSUB__(v76, *v64))
    {
      goto LABEL_140;
    }

    v75 = __OFADD__(v67, v77);
    v78 = v67 + v77;
    if (v75)
    {
      goto LABEL_143;
    }

    if (v78 >= v72)
    {
      v92 = *v63;
      v91 = *(v63 + 1);
      v75 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v75)
      {
        goto LABEL_147;
      }

      if (v67 < v93)
      {
        v62 = v58 - 2;
      }

      goto LABEL_81;
    }

    goto LABEL_60;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_122:
  v161 = *v145;
  if (!v161)
  {
    goto LABEL_162;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_157:
    v14 = sub_100147DF0(v14);
  }

  v135 = v14 + 16;
  v136 = *(v14 + 2);
  while (v136 >= 2)
  {
    if (!*v150)
    {
      goto LABEL_160;
    }

    v137 = v14;
    v14 += 16 * v136;
    v138 = *v14;
    v139 = &v135[2 * v136];
    v140 = *(v139 + 1);
    v141 = v146;
    sub_1000EDE60(&(*v150)[8 * *v14], &(*v150)[8 * *v139], &(*v150)[8 * v140], v161, v162);
    v146 = v141;
    if (v141)
    {
      break;
    }

    if (v140 < v138)
    {
      goto LABEL_148;
    }

    if (v136 - 2 >= *v135)
    {
      goto LABEL_149;
    }

    *v14 = v138;
    *(v14 + 1) = v140;
    v142 = *v135 - v136;
    if (*v135 < v136)
    {
      goto LABEL_150;
    }

    v136 = *v135 - 1;
    sub_100147E04(v139 + 16, v142, v139);
    *v135 = v136;
    v14 = v137;
  }
}

uint64_t sub_1000EDE60(void *a1, void *a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v48 = a5;
  v9 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v10 = __chkstk_darwin(v9 - 8);
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v46 = &v41 - v12;
  v13 = a2 - a1;
  v14 = a3 - a2;
  if (v13 < v14)
  {
    sub_100060E68(a1);
    v15 = &a4[v13];
    v44 = v15;
    for (i = a3; ; a3 = i)
    {
      if (a4 >= v15 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_28;
      }

      v17 = *a2;
      v18 = *a4;
      v19 = a4;
      v20 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      v21 = v46;
      sub_10001938C(v20 + v17, v46);
      v22 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      v23 = v47;
      sub_10001938C(v22 + v18, v47);

      LOBYTE(v22) = v48(v21, v23);
      sub_1000193F0(v23);
      sub_1000193F0(v21);

      if ((v22 & 1) == 0)
      {
        break;
      }

      v24 = a2;
      v25 = a1 == a2++;
      a4 = v19;
      if (!v25)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++a1;
      v15 = v44;
    }

    v24 = v19;
    a4 = v19 + 1;
    if (a1 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *a1 = *v24;
    goto LABEL_13;
  }

  sub_100060E68(a2);
  v15 = &a4[v14];
  v42 = a4;
  v43 = a1;
LABEL_15:
  v26 = a2 - 1;
  v27 = a3 - 1;
  v44 = a2 - 1;
  for (i = a2; v15 > a4 && a2 > a1; a2 = i)
  {
    v29 = v27;
    v30 = *(v15 - 1);
    v31 = *v26;
    v32 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    v33 = v46;
    sub_10001938C(v32 + v30, v46);
    v34 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    v35 = v47;
    sub_10001938C(v34 + v31, v47);

    LOBYTE(v34) = v48(v33, v35);
    sub_1000193F0(v35);
    sub_1000193F0(v33);

    a3 = v29;
    v36 = v29 + 1;
    if (v34)
    {
      v37 = v44;
      a2 = v44;
      a4 = v42;
      a1 = v43;
      if (v36 != i)
      {
        *v29 = *v44;
        a2 = v37;
      }

      goto LABEL_15;
    }

    if (v15 != v36)
    {
      *v29 = *(v15 - 1);
    }

    v27 = v29 - 1;
    --v15;
    a4 = v42;
    a1 = v43;
    v26 = v44;
  }

LABEL_28:
  v38 = v15 - a4;
  if (a2 != a4 || a2 >= &a4[v38])
  {
    memmove(a2, a4, 8 * v38);
  }

  return 1;
}

uint64_t sub_1000EE1C8()
{
  sub_100001ED0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_100013838(v1);

  return sub_1000E6658(v3, v4);
}

uint64_t sub_1000EE258()
{
  sub_100002BAC();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10006F558;

  return sub_1000E7840(v3, v0);
}

uint64_t sub_1000EE2EC()
{
  sub_100001ED0();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_100004B00(v6);
  *v7 = v8;
  v7[1] = sub_10006FA64;

  return sub_1000E7EB8(v2, v3, v4, v5);
}

uint64_t sub_1000EE39C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000EE3E4()
{
  sub_100001ED0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_100013838(v1);

  return sub_1000EBFD8();
}

uint64_t sub_1000EE494()
{
  sub_100001ED0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_100013838(v1);

  return sub_1000E65C8();
}

uint64_t sub_1000EE52C()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BBA90);
  sub_10000641C(v0, qword_1001BBA90);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void (*sub_1000EE598(uint64_t a1))(char *, uint64_t, uint64_t)
{
  v2 = type metadata accessor for FilePath();
  sub_100002BDC();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v51 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v49 - v8;
  v10 = type metadata accessor for URL();
  sub_100002BDC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100002B8C();
  v16 = v15 - v14;
  v17 = sub_100065020(&qword_1001B9C50, &qword_1001706A8);
  __chkstk_darwin(v17 - 8);
  v19 = v49 - v18;
  v52 = v4;
  v20 = *(v4 + 16);
  v50 = a1;
  v20(v9, a1, v2);
  type metadata accessor for URL.DirectoryHint();
  sub_100002BDC();
  __chkstk_darwin(v21);
  sub_100002B8C();
  v24 = v23 - v22;
  (*(v25 + 104))(v23 - v22, enum case for URL.DirectoryHint.notDirectory(_:));
  sub_1000A2E44(v9, v24, v19);
  if (sub_10000C6C0(v19, 1, v10) == 1)
  {
    sub_1000EEADC(v19);
    if (qword_1001B8958 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000641C(v26, qword_1001BBA90);
    v20(v51, v50, v2);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v53 = v30;
      *v29 = 136315138;
      sub_1000EECC8();
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      v34 = sub_100005D0C();
      v35(v34);
      v36 = sub_100004A3C(v31, v33, &v53);

      *(v29 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to open %s: path contains illegal UTF-8 sequences", v29, 0xCu);
      sub_100003324(v30);
    }

    else
    {

      v39 = sub_100005D0C();
      v40(v39);
    }

    v41 = type metadata accessor for POSIXError();
    sub_100002BDC();
    v43 = v42;
    __chkstk_darwin(v44);
    sub_100002B8C();
    v47 = (v46 - v45);
    v54 = 22;
    sub_1000EEB44(_swiftEmptyArrayStorage);
    sub_1000EEC7C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v20 = v47;
    POSIXError._nsError.getter();
    (*(v43 + 8))(v47, v41);
    swift_willThrow();
  }

  else
  {
    (*(v12 + 32))(v16, v19, v10);
    v37 = v49[1];
    v38 = Data.init(contentsOf:options:)();
    if (!v37)
    {
      v20 = v38;
    }

    (*(v12 + 8))(v16, v10);
  }

  return v20;
}

uint64_t sub_1000EEADC(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001B9C50, &qword_1001706A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000EEB44(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_100065020(&qword_1001BBB48, &qword_1001724B0);
  v2 = static _DictionaryStorage.allocate(capacity:)();
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
    sub_1000EED20(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1000236F4(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_10006B8DC(&v17, (v3[7] + 32 * result));
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

unint64_t sub_1000EEC7C()
{
  result = qword_1001BBB40;
  if (!qword_1001BBB40)
  {
    type metadata accessor for POSIXError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BBB40);
  }

  return result;
}

unint64_t sub_1000EECC8()
{
  result = qword_1001B9528;
  if (!qword_1001B9528)
  {
    type metadata accessor for FilePath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9528);
  }

  return result;
}

uint64_t sub_1000EED20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BBB50, &qword_1001724B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EED90(uint64_t a1)
{
  v3 = type metadata accessor for ModelCatalogAsset(0);
  v33 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v32 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v28[1] = v1;
  v37 = _swiftEmptyArrayStorage;
  sub_10002045C(0, v5, 0);
  v6 = v37;
  result = sub_10001E724();
  v10 = result;
  v11 = 0;
  v36 = a1 + 56;
  v29 = a1 + 64;
  v30 = v5;
  v31 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v10 < 1 << *(a1 + 32))
    {
      v12 = v10 >> 6;
      if ((*(v36 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_25;
      }

      v35 = v9;
      v34 = v8;
      v13 = v32;
      sub_1000FA888();
      v15 = *v13;
      v14 = v13[1];

      result = sub_1000FA980(v13, type metadata accessor for ModelCatalogAsset);
      v37 = v6;
      v17 = v6[2];
      v16 = v6[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_10002045C((v16 > 1), v17 + 1, 1);
        v6 = v37;
      }

      v6[2] = v17 + 1;
      v18 = &v6[2 * v17];
      v18[4] = v15;
      v18[5] = v14;
      if (v35)
      {
        goto LABEL_29;
      }

      a1 = v31;
      v19 = 1 << *(v31 + 32);
      if (v10 >= v19)
      {
        goto LABEL_26;
      }

      v20 = *(v36 + 8 * v12);
      if ((v20 & (1 << v10)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v31 + 36) != v34)
      {
        goto LABEL_28;
      }

      v21 = v20 & (-2 << (v10 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v22 = v30;
      }

      else
      {
        v23 = v12 << 6;
        v24 = v12 + 1;
        v22 = v30;
        v25 = (v29 + 8 * v12);
        while (v24 < (v19 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_100016E94(v10, v34, 0);
            v19 = __clz(__rbit64(v26)) + v23;
            goto LABEL_19;
          }
        }

        result = sub_100016E94(v10, v34, 0);
      }

LABEL_19:
      if (++v11 == v22)
      {
        return v6;
      }

      v9 = 0;
      v8 = *(a1 + 36);
      v10 = v19;
      if (v19 < 0)
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

uint64_t sub_1000EF084()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BBB58);
  sub_10000641C(v0, qword_1001BBB58);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000EF0F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4974736575716572 && a2 == 0xE900000000000044;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6361667265746E69 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1000EF21C(char a1)
{
  if (!a1)
  {
    return 0x496E6F6973736573;
  }

  if (a1 == 1)
  {
    return 0x4974736575716572;
  }

  return 0x6361667265746E69;
}

uint64_t sub_1000EF274()
{
  sub_10000C1C0();
  type metadata accessor for Session();
  sub_100001F70();
  if ((static UUIDIdentifier.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  type metadata accessor for RequestMetadata();
  if ((static UUIDIdentifier.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static RemoteInterfaceInformation.== infix(_:_:)();
}

uint64_t sub_1000EF320(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001BBDC0, &qword_100172668);
  sub_100002BDC();
  v4 = v3;
  sub_100004B1C();
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = sub_100005E8C();
  sub_100003370(v8, v9);
  sub_1000FA514();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = 0;
  v10 = sub_100005E8C();
  sub_100065020(v10, v11);
  sub_100003914();
  sub_1000082D4(v12, v13, v14, v15);
  sub_10005784C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v21[1] = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
    v23 = 1;
    v16 = sub_100008004();
    sub_100065020(v16, v17);
    sub_1000082D4(&qword_1001BBDD0, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
    sub_10005784C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = 2;
    type metadata accessor for RemoteInterfaceInformation();
    sub_10000A650();
    sub_1000FA4CC(v18, 255, v19, &protocol conformance descriptor for RemoteInterfaceInformation);
    sub_10005784C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1000EF580(uint64_t a1)
{
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_1000082D4(&qword_1001B9500, &qword_1001B94F0, &unk_100172060, &protocol conformance descriptor for UUIDIdentifier<A>);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_10002B0C0();
  sub_1000082D4(v1, v2, v3, &protocol conformance descriptor for UUIDIdentifier<A>);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for RemoteInterfaceInformation();
  sub_10000A650();
  sub_1000FA4CC(v4, 255, v5, &protocol conformance descriptor for RemoteInterfaceInformation);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000EF6C0()
{
  Hasher.init(_seed:)();
  v0 = sub_100007660();
  sub_100065020(v0, v1);
  sub_1000082D4(&qword_1001B9500, &qword_1001B94F0, &unk_100172060, &protocol conformance descriptor for UUIDIdentifier<A>);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_1000082D4(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for RemoteInterfaceInformation();
  sub_10000A650();
  sub_1000FA4CC(v2, 255, v3, &protocol conformance descriptor for RemoteInterfaceInformation);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EF818@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = type metadata accessor for RemoteInterfaceInformation();
  sub_100002BDC();
  v38 = v4;
  __chkstk_darwin(v5);
  sub_100008624();
  v41 = v6;
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v44 = v8;
  v45 = v7;
  sub_100004B1C();
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  v42 = v13;
  sub_100004B1C();
  __chkstk_darwin(v14);
  v46 = &v35 - v15;
  v47 = sub_100065020(&qword_1001BBD98, &qword_100172660);
  sub_100002BDC();
  v43 = v16;
  sub_100004B1C();
  __chkstk_darwin(v17);
  v18 = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  sub_100002C00();
  __chkstk_darwin(v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v22 = sub_100004CB0();
  sub_100003370(v22, v23);
  sub_1000FA514();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003324(v48);
  }

  v24 = v44;
  v36 = v18;
  v37 = v21;
  v25 = v45;
  v51 = 0;
  sub_100006114(&qword_1001BBDA8, &qword_1001B94F0, &unk_100172060);
  v26 = v46;
  sub_10005784C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v42 + 32))(v37, v26, v12);
  v50 = 1;
  sub_100006114(&qword_1001BBDB0, &qword_1001B8F48, &qword_10016FB30);
  sub_10005784C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v24 + 32))(&v37[*(v36 + 20)], v11, v25);
  v49 = 2;
  sub_10000A650();
  sub_1000FA4CC(v27, 255, v28, &protocol conformance descriptor for RemoteInterfaceInformation);
  v29 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = sub_10000A81C();
  v31(v30);
  (*(v38 + 32))(&v37[*(v36 + 24)], v41, v29);
  sub_1000FA888();
  sub_100003324(v48);
  v32 = sub_1000062B0();
  return sub_1000FA980(v32, v33);
}

uint64_t sub_1000EFCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EF0F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000EFD40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000EF214();
  *a1 = result;
  return result;
}

uint64_t sub_1000EFD68(uint64_t a1)
{
  v2 = sub_1000FA514();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EFDA4(uint64_t a1)
{
  v2 = sub_1000FA514();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000EFDE8(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_1000082D4(&qword_1001B9500, &qword_1001B94F0, &unk_100172060, &protocol conformance descriptor for UUIDIdentifier<A>);
  dispatch thunk of Hashable.hash(into:)();
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_1000082D4(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for RemoteInterfaceInformation();
  sub_1000FA4CC(&qword_1001BBD90, 255, &type metadata accessor for RemoteInterfaceInformation, &protocol conformance descriptor for RemoteInterfaceInformation);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EFF7C()
{
  sub_100002BAC();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v5 = type metadata accessor for InferenceProviderDescriptor();
  v1[21] = v5;
  sub_100002F44(v5);
  v1[22] = v6;
  v1[23] = sub_10000F0C0();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000F003C()
{
  sub_10000636C();
  sub_1000F4054(v0[18], v0[19], 0);
  v0[26] = v1;
  v0[27] = v2;
  v5 = v2;

  if (*(v5 + 16))
  {
    v6 = v0[20];
    sub_100020444(0, v5, v0[24]);
    v7 = sub_100007660();
    v8(v7);
    sub_100003370((v6 + 152), *(v6 + 176));
    swift_task_alloc();
    sub_100004B34();
    v0[28] = v9;
    *v9 = v10;
    v9[1] = sub_1000F02C8;
    v11 = v0[25];

    return sub_1000253E8((v0 + 2), v11);
  }

  else
  {
    if (qword_1001B8960 != -1)
    {
      sub_1000086EC(&qword_1001B8960);
    }

    v12 = type metadata accessor for Logger();
    sub_100002FD0(v12, qword_1001BBB58);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (sub_100006468(v14))
    {
      v15 = sub_100007648();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to have any inference providers associated with bundle id", v15, 2u);
      sub_100004B78();
    }

    type metadata accessor for ModelManagerError();
    sub_1000051EC();
    sub_1000FA4CC(v16, 255, v17, &protocol conformance descriptor for ModelManagerError);
    v18 = sub_100008194();
    sub_10002AB60(v18, v19);
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    sub_100006098();
    (*(v21 + 104))();
    swift_willThrow();

    sub_100001F7C();

    return v3(0);
  }
}

uint64_t sub_1000F02C8()
{
  sub_100001ED0();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 232) = v0;

  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000F03E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v25;
  a24 = v26;
  sub_100005EA4();
  a22 = v24;
  sub_1000FAD20();
  if (v24[15])
  {
    v72 = sub_100018428();
    v73 = v27 + *v27;
    v28 = swift_task_alloc();
    v24[30] = v28;
    *v28 = v24;
    v28[1] = sub_1000F0854;
    sub_1000031B8(v24[17]);
    sub_10000C750();
    sub_100003D04();

    return v32(v29, v30, v31, v32, v33, v34, v35, v36, a9, v72, v73, a12, a13, a14, a15, a16);
  }

  else
  {
    sub_10000ECD8((v24 + 12), &qword_1001B9CB0, &qword_100171E70);
    if (qword_1001B8960 != -1)
    {
      sub_1000086EC(&qword_1001B8960);
    }

    v38 = type metadata accessor for Logger();
    sub_10000641C(v38, qword_1001BBB58);
    v39 = sub_1000062B0();
    v40(v39);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v43 = sub_100026838(v42);
    v44 = v24[22];
    if (v43)
    {
      v45 = sub_100007698();
      a11 = sub_1000031E0();
      a12 = a11;
      *v45 = 136315138;
      sub_100005D20();
      sub_1000FA4CC(v46, 255, v47, &protocol conformance descriptor for InferenceProviderDescriptor);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      LODWORD(a10) = v42;
      v51 = *(v44 + 8);
      v52 = sub_100005E8C();
      v51(v52);
      v53 = v51;
      v54 = sub_100004A3C(v48, v50, &a12);

      *(v45 + 4) = v54;
      sub_10000EEC0(&_mh_execute_header, "Failed to acquire %s", a10);
      sub_100003A7C();
      sub_10000706C();
    }

    else
    {

      v55 = *(v44 + 8);
      v56 = sub_100005E8C();
      v55(v56);
      v53 = v55;
    }

    type metadata accessor for ModelManagerError();
    sub_1000051EC();
    sub_1000FA4CC(v57, 255, v58, &protocol conformance descriptor for ModelManagerError);
    sub_100008194();
    v60 = v59;
    *v59 = InferenceProviderDescriptor.id.getter();
    v60[1] = v61;
    sub_100006098();
    (*(v62 + 104))(v60);
    swift_willThrow();

    sub_10000ECD8((v24 + 2), &qword_1001B9CB0, &qword_100171E70);
    v63 = sub_100001F70();
    v53(v63);

    sub_100001F7C();
    sub_100003D04();

    return v66(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1000F07AC()
{
  sub_100001ED0();

  v0 = sub_1000060A4();
  v1(v0);

  sub_100001F7C();

  return v2(0);
}

uint64_t sub_1000F0854()
{
  sub_100003884();
  v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 248) = v0;

  if (!v0)
  {
    *(v4 + 256) = v3 & 1;
  }

  sub_10000E700();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000F0984()
{
  sub_10001881C();
  sub_100003884();
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[21];

  sub_10000ECD8((v0 + 2), &qword_1001B9CB0, &qword_100171E70);
  (*(v2 + 8))(v1, v3);
  sub_100003324(v0 + 7);

  sub_100001F7C();
  sub_100007BB8();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1000F0A50()
{
  sub_100001ED0();

  sub_10000ECD8(v0 + 16, &qword_1001B9CB0, &qword_100171E70);
  v1 = sub_1000060A4();
  v2(v1);
  sub_100003324((v0 + 56));

  sub_100001F7C();

  return v3(0);
}

uint64_t sub_1000F0B18()
{
  sub_100002BAC();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v8 = sub_100065020(&qword_1001BA5F0, &qword_100171290);
  sub_100002F04(v8);
  v1[9] = sub_100002C58();
  v9 = type metadata accessor for InferenceProviderRequestResult();
  v1[10] = v9;
  sub_100002F44(v9);
  v1[11] = v10;
  v1[12] = sub_100002C58();
  v11 = sub_100002C10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000F0BF4()
{
  sub_10000636C();
  v16 = v0;
  if (qword_1001B8960 != -1)
  {
    sub_1000086EC(&qword_1001B8960);
  }

  v1 = type metadata accessor for Logger();
  v0[13] = sub_100002FD0(v1, qword_1001BBB58);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = sub_100007698();
    v7 = sub_1000031E0();
    v15 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100004A3C(v5, v4, &v15);
    sub_10000A4A4();
    _os_log_impl(v8, v9, v10, v11, v6, 0xCu);
    sub_100003324(v7);
    sub_100012684();
    sub_100004B78();
  }

  swift_task_alloc();
  sub_100004B34();
  v0[14] = v12;
  *v12 = v13;
  v12[1] = sub_1000F0D80;

  return sub_1000F55C0();
}

uint64_t sub_1000F0D80()
{
  sub_100001ED0();
  sub_100018E0C();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v0;

  sub_10000CC7C();
  if (!v0)
  {
  }

  sub_10000CC50();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000F0EA4()
{
  sub_100003884();
  v1 = v0[9];
  InferenceProviderRequestResult.firstResponse.getter();
  v2 = type metadata accessor for ClientData();
  sub_100003494(v1);
  if (v3)
  {
    sub_10000ECD8(v0[9], &qword_1001BA5F0, &qword_100171290);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = sub_100007648();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "OneShot acquired response but got no data", v6, 2u);
      sub_100002BB8(v6);
    }

    type metadata accessor for ModelManagerError();
    sub_1000051EC();
    sub_1000FA4CC(v7, 255, v8, &protocol conformance descriptor for ModelManagerError);
    sub_100008194();
    sub_100006098();
    (*(v9 + 104))();
    swift_willThrow();
    v10 = sub_100001F70();
    v11(v10);

    sub_100001F00();
  }

  else
  {
    v12 = v0[9];
    v13 = v0[2];
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_100006098();
    (*(v14 + 32))(v13, v12, v2);

    sub_100001F00();
  }

  return v15();
}

uint64_t sub_1000F10C0()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_1000F1128()
{
  sub_100002BAC();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v1[22] = v5;
  v1[23] = v6;
  v1[21] = v7;
  v8 = type metadata accessor for Version();
  v1[28] = v8;
  sub_100002F44(v8);
  v1[29] = v9;
  v1[30] = sub_100002C58();
  v10 = type metadata accessor for RemoteInterfaceInformation();
  v1[31] = v10;
  sub_100002F44(v10);
  v1[32] = v11;
  v1[33] = sub_100002C58();
  v12 = sub_100065020(&qword_1001BA600, &unk_100172720);
  sub_100002F04(v12);
  v1[34] = sub_100002C58();
  v13 = sub_100065020(&qword_1001BA5F0, &qword_100171290);
  sub_100002F04(v13);
  v1[35] = sub_100002C58();
  v14 = type metadata accessor for ClientData();
  v1[36] = v14;
  sub_100002F44(v14);
  v1[37] = v15;
  v1[38] = sub_100002C58();
  v16 = type metadata accessor for InferenceProviderRequestResult();
  v1[39] = v16;
  sub_100002F44(v16);
  v1[40] = v17;
  v1[41] = sub_100002C58();
  v18 = sub_100002C10();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_1000F1314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v25;
  a24 = v26;
  sub_100005EA4();
  a22 = v24;
  if (RemoteInterfaceInformation.supportsTrueStreaming()())
  {
    if (qword_1001B8960 != -1)
    {
      sub_1000086EC(&qword_1001B8960);
    }

    v27 = type metadata accessor for Logger();
    v24[42] = sub_100002FD0(v27, qword_1001BBB58);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v31 = v24[24];
      v30 = v24[25];
      v32 = sub_100007698();
      v33 = sub_1000031E0();
      a13 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_100004A3C(v31, v30, &a13);
      sub_10000A4A4();
      _os_log_impl(v34, v35, v36, v37, v32, 0xCu);
      sub_100003324(v33);
      sub_100012684();
      sub_100004B78();
    }

    swift_task_alloc();
    sub_100004B34();
    v24[43] = v38;
    *v38 = v39;
    v38[1] = sub_1000F16A0;
    sub_100003D04();

    return sub_1000F55C0();
  }

  else
  {
    if (qword_1001B8960 != -1)
    {
      sub_1000086EC(&qword_1001B8960);
    }

    v42 = type metadata accessor for Logger();
    sub_10000641C(v42, qword_1001BBB58);
    v43 = sub_100007660();
    v44(v43);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    v47 = sub_100026838(v46);
    v48 = v24[32];
    v49 = v24[33];
    v50 = v24[31];
    if (v47)
    {
      v51 = v24[29];
      v52 = v24[30];
      v68 = v46;
      v53 = v24[28];
      v54 = sub_100007698();
      a13 = sub_1000031E0();
      *v54 = 136315138;
      v67 = v50;
      RemoteInterfaceInformation.version.getter();
      sub_1000FA4CC(&qword_1001BA480, 255, &type metadata accessor for Version, &protocol conformance descriptor for Version);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      (*(v51 + 8))(v52, v53);
      (*(v48 + 8))(v49, v67);
      v56 = sub_1000037BC();
      sub_100004A3C(v56, v57, v58);
      sub_10000A08C();

      *(v54 + 4) = v55;
      sub_10000EEC0(&_mh_execute_header, "RemoteManager received a executeStreamingRequest from a modelmanager version: %s that does not support true streaming. Falling back to v0 of streaming", v68);
      sub_100003A7C();
      sub_10000706C();
    }

    else
    {

      (*(v48 + 8))(v49, v50);
    }

    swift_task_alloc();
    sub_100004B34();
    v24[49] = v59;
    *v59 = v60;
    v59[1] = sub_1000F2154;
    sub_100003D04();

    return sub_1000E193C(v61, v62, v63, v64, v65);
  }
}

uint64_t sub_1000F16A0()
{
  sub_100001ED0();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100004B40();
  *v6 = v5;
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v5[44] = v3;
  v5[45] = v0;

  if (v0)
  {
    sub_10000E700();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v5[46] = v12;
    *v12 = v7;
    v12[1] = sub_1000F1810;

    return sub_1000F8D48();
  }
}

uint64_t sub_1000F1810()
{
  sub_100001ED0();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 376) = v0;

  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000F192C()
{
  sub_10001881C();
  sub_100003884();
  v1 = v0[5];
  v2 = sub_100003370(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = sub_100002C58();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  sub_100007660();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000366C(v0 + 7);
  sub_100003754();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  sub_100007E70();
  sub_1000FA4CC(v5, v6, v7, &unk_100172634);
  sub_100016494((v0 + 7), v0[10]);
  swift_task_alloc();
  sub_100004B34();
  v0[48] = v8;
  *v8 = v9;
  v8[1] = sub_1000F1B00;
  sub_100007BB8();

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1000F1B00()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  v7 = *(v3 + 216);
  if (v0)
  {
    v8 = sub_1000F2420;
  }

  else
  {
    v8 = sub_1000F1BFC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000F1BFC()
{
  v3 = v0[35];
  v2 = v0[36];
  sub_10000323C(v3, 1, v2);
  if (v4)
  {
    sub_10000ECD8(v3, &qword_1001BA5F0, &qword_100171290);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (sub_100026838(v6))
    {
      v7 = sub_100007648();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "executeStreamingRequest got an empty stream. Returning empty array", v7, 2u);
      sub_100002F64();
    }

    v8 = v0[31];

    static RemoteInterfaceInformation.currentInterface.getter();
    sub_1000039A8();
    sub_100009BFC(v9, v10, v11, v8);
    v12 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
    sub_100002F04(v12);
    sub_100002C58();
    type metadata accessor for UUID();
    sub_100003978();
    sub_100009BFC(v13, v14, v15, v16);
    RemoteIPCRequest.ExecuteRemoteStreamingRequest.Response.init(interface:result:requestId:)();

    v17 = sub_100007660();
    v18(v17);
  }

  else
  {
    (*(v0[37] + 32))(v0[38], v3, v2);
    v19 = type metadata accessor for UUID();
    sub_100002BDC();
    v21 = *(v20 + 64) + 15;
    v22 = swift_task_alloc();
    RequestMetadata.uuid.getter();
    swift_task_alloc();
    sub_10000C750();
    v56 = v23;
    v23();
    v24 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_10000D58C();
    if (os_log_type_enabled(v24, v25))
    {
      sub_100007698();
      sub_100003E34();
      *v21 = 136315138;
      sub_10005A8F4();
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = sub_1000063D4();
      v29(v28);
      v30 = sub_1000037BC();
      sub_100004A3C(v30, v31, v32);
      sub_10000A08C();

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v24, v1, "executeStreaming request created to request id: %s", v21, 0xCu);
      sub_100003A7C();
      sub_100002BB8(v21);
    }

    else
    {

      v33 = sub_1000063D4();
      v34(v33);
    }

    v52 = v0[40];
    v53 = v0[39];
    v54 = v0[41];
    v35 = v0[37];
    v50 = v0[36];
    v51 = v0[38];
    v36 = v0[31];
    v37 = v0[27];

    v38 = swift_task_alloc();
    sub_10000C750();
    v56();
    sub_100007130((v0 + 7), (v0 + 12));
    sub_100004B50(v37 + 248, (v0 + 17));
    sub_1000FF528((v0 + 12), v38);
    swift_endAccess();

    static RemoteInterfaceInformation.currentInterface.getter();
    sub_1000039A8();
    sub_100009BFC(v39, v40, v41, v36);
    sub_100065020(&qword_1001B90B8, &qword_10016FD30);
    v42 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_10016FF40;
    (*(v35 + 16))(v43 + v42, v51, v50);
    v44 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
    sub_100002F04(v44);
    sub_100002C58();
    v56();
    sub_1000039A8();
    sub_100009BFC(v45, v46, v47, v19);
    sub_10002B0C0();
    RemoteIPCRequest.ExecuteRemoteStreamingRequest.Response.init(interface:result:requestId:)();

    v55(v22, v19);
    (*(v35 + 8))(v51, v50);
    (*(v52 + 8))(v54, v53);
  }

  sub_100003324(v0 + 7);
  sub_100003324(v0 + 2);

  sub_100001F00();

  return v48();
}

uint64_t sub_1000F2154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v11 = *v10;
  sub_100002B9C();
  *v12 = v11;

  sub_100006378();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1000F22EC()
{
  sub_10001881C();
  sub_100003884();
  sub_10001195C();

  sub_100001F00();
  sub_100007BB8();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1000F2374()
{
  sub_10001881C();
  sub_100003884();

  v0 = sub_100001F70();
  v1(v0);
  sub_10001195C();

  sub_100001F00();
  sub_100007BB8();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000F2420()
{
  sub_10001881C();
  sub_100003884();

  v1 = sub_100001F70();
  v2(v1);
  sub_100003324((v0 + 56));
  sub_100003324((v0 + 16));
  sub_10001195C();

  sub_100001F00();
  sub_100007BB8();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000F24DC()
{
  sub_100002BAC();
  v1[56] = v2;
  v1[57] = v0;
  v1[55] = v3;
  v4 = sub_100065020(&qword_1001BA5F0, &qword_100171290);
  sub_100002F04(v4);
  v1[58] = sub_100002C58();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000F2564()
{
  if (qword_1001B8960 != -1)
  {
    sub_1000086EC(&qword_1001B8960);
  }

  v1 = type metadata accessor for Logger();
  v0[59] = sub_10000641C(v1, qword_1001BBB58);
  v2 = type metadata accessor for UUID();
  v0[60] = v2;
  sub_100002BDC();
  v4 = v3;
  v0[61] = *(v5 + 64);
  swift_task_alloc();
  v0[62] = *(v4 + 16);
  v0[63] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  sub_100019274();
  v106 = v6;
  v6();
  v7 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_10000D58C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_100007698();
    v107 = sub_1000031E0();
    *v9 = 136315138;
    v10 = sub_10005A8F4();
    sub_100009B78(v10);
    v11 = *(v4 + 8);
    v12 = sub_1000080D8();
    v11(v12);
    v13 = sub_100007660();
    v16 = sub_100004A3C(v13, v14, v15);

    *(v9 + 4) = v16;
    sub_1000166A4(&_mh_execute_header, v17, v18, "Entering RemoteManager.fetchNextStreamingResult for requestId: %s");
    sub_100003324(v107);
    sub_100002BB8(v107);
    sub_100002BB8(v9);

    v19 = v11;
  }

  else
  {

    v19 = *(v4 + 8);
    v20 = sub_1000080D8();
    v19(v20);
  }

  v0[64] = v19;
  v21 = v0[57];

  swift_beginAccess();

  sub_100007660();
  sub_100072C94(v22, v23);

  if (!v0[5])
  {
    swift_task_alloc();
    sub_100019274();
    v106();
    v38 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_10000D58C();
    if (os_log_type_enabled(v38, v39))
    {
      sub_100007698();
      v109 = sub_100003E34();
      *v19 = 136315138;
      v40 = sub_10005A8F4();
      sub_100009B78(v40);
      v41 = sub_100013D98();
      v19(v41);
      v42 = sub_100004CB0();
      v45 = sub_100004A3C(v42, v43, v44);

      *(v19 + 4) = v45;
      sub_1000111AC(&_mh_execute_header, v46, v21, "fetchNextStreamingRequest called for unknown requestId: %s");
      sub_100003324(v109);
      sub_100002F64();
      sub_100012684();
    }

    else
    {

      v62 = sub_100013D98();
      v19(v62);
    }

    v63 = v0[56];

    type metadata accessor for ModelManagerError();
    sub_1000051EC();
    sub_1000FA4CC(v64, 255, v65, &protocol conformance descriptor for ModelManagerError);
    sub_100007894();
    swift_allocError();
    v67 = v66;
    (v106)(v66, v63, v2);
    sub_100006098();
    (*(v68 + 104))(v67);
    goto LABEL_20;
  }

  v105 = v19;
  v24 = v0[57];
  sub_100003324(v0 + 2);
  swift_beginAccess();

  sub_100007660();
  sub_1000753F8();
  v26 = v25;

  v27 = swift_task_alloc();
  v28 = v0[56];
  if (v26)
  {
    (v106)(v27, v0[56], v2);
    v29 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_10000D58C();
    if (os_log_type_enabled(v29, v30))
    {
      sub_100007698();
      v108 = sub_100003E34();
      *v28 = 136315138;
      v31 = sub_10005A8F4();
      sub_100009B78(v31);
      v32 = sub_100013D98();
      v105(v32);
      v33 = sub_100004CB0();
      v36 = sub_100004A3C(v33, v34, v35);

      *(v28 + 4) = v36;
      sub_1000111AC(&_mh_execute_header, v37, v21, "fetchNextStreamingRequest for request: %s cannot be called concurrently");
      sub_100003324(v108);
      sub_100002F64();
      sub_100012684();
    }

    else
    {

      v69 = sub_100013D98();
      v105(v69);
    }

    type metadata accessor for ModelManagerError();
    sub_1000051EC();
    sub_1000FA4CC(v70, 255, v71, &protocol conformance descriptor for ModelManagerError);
    sub_100007894();
    v72 = swift_allocError();
    sub_10002AB60(v72, v73);
    sub_100006098();
    (*(v74 + 104))(v75);
LABEL_20:
    swift_willThrow();

    sub_100001F00();
LABEL_21:

    return v76();
  }

  swift_task_alloc();
  v106();
  sub_100004B50(v24 + 256, (v0 + 33));
  sub_10007EE00();
  v0[65] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47 = sub_1000080D8();
  v105(v47);
  swift_endAccess();

  v48 = *(v21 + 248);

  sub_100072C94(v48, (v0 + 7));

  v49 = v0[10];
  if (!v49)
  {
    v77 = type metadata accessor for ClientData();
    v78 = sub_10000205C();
    sub_100009BFC(v78, v79, 1, v77);
    v80 = v0[62];
    v81 = v0[60];
    v82 = v0[56];
    sub_10000ECD8(v0[58], &qword_1001BA5F0, &qword_100171290);
    v83 = swift_task_alloc();
    (v80)(v83, v82, v81);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.info.getter();
    v86 = os_log_type_enabled(v84, v85);
    v87 = v0[64];
    v88 = v0[60];
    if (v86)
    {
      sub_100007698();
      sub_100003E34();
      *v80 = 136315138;
      sub_10005A8F4();
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v87(v83, v88);
      v90 = sub_1000037BC();
      sub_100004A3C(v90, v91, v92);
      sub_10000A08C();

      *(v80 + 4) = v89;
      sub_1000111AC(&_mh_execute_header, v93, v85, "iterator is exhausted for requestId: %s, removing from ongoingStreams and returning nil");
      sub_100003A7C();
      sub_100012684();
    }

    else
    {

      v87(v83, v88);
    }

    v94 = v0[57];

    sub_100004B50(v94 + 248, (v0 + 36));
    sub_10014D450((v0 + 12));
    if (v0[15])
    {
      sub_100003324(v0 + 12);
    }

    swift_endAccess();
    v95 = sub_10000205C();
    sub_100009BFC(v95, v96, 1, v77);
    if (v0[10])
    {
      sub_100003324(v0 + 7);
    }

    v97 = v0[57];
    v98 = sub_100003754();
    v100 = sub_100065020(v98, v99);
    sub_100002F04(v100);
    sub_100002C58();
    sub_100004B50(v97 + 256, (v0 + 39));
    sub_100143444();
    sub_1000135D0();
    sub_10000ECD8(v101, v102, v103);
    swift_endAccess();

    sub_100001F00();
    goto LABEL_21;
  }

  v50 = v0[57];
  sub_100007E70();
  v54 = sub_1000FA4CC(v51, v52, v53, &unk_100172634);
  v55 = v0[11];
  sub_100016494((v0 + 7), v49);
  v56 = *(v55 + 8);
  swift_task_alloc();
  sub_100004B34();
  v0[66] = v59;
  *v59 = v60;
  v59[1] = sub_1000F2ECC;
  v61 = v0[58];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v61, v50, v54, v0 + 54, v49, v56, v57, v58);
}

uint64_t sub_1000F2ECC()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  v7 = *(v3 + 456);
  if (v0)
  {
    v8 = sub_1000F331C;
  }

  else
  {
    v8 = sub_1000F2FC8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000F2FC8()
{
  v1 = *(v0 + 464);
  v2 = type metadata accessor for ClientData();
  v3 = sub_10000C6C0(v1, 1, v2);
  v4 = *(v0 + 496);
  v5 = *(v0 + 480);
  if (v3 == 1)
  {
    v6 = *(v0 + 448);
    sub_10000ECD8(v1, &qword_1001BA5F0, &qword_100171290);
    v7 = swift_task_alloc();
    v4(v7, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 512);
    v12 = *(v0 + 480);
    if (v10)
    {
      sub_100007698();
      sub_100003E34();
      *v5 = 136315138;
      sub_10005A8F4();
      v35 = v9;
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v11(v7, v12);
      v14 = sub_1000037BC();
      sub_100004A3C(v14, v15, v16);
      sub_10000A08C();

      *(v5 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v8, v35, "iterator is exhausted for requestId: %s, removing from ongoingStreams and returning nil", v5, 0xCu);
      sub_100003A7C();
      sub_100012684();
    }

    else
    {

      v11(v7, v12);
    }

    v17 = v0 + 312;
    v21 = *(v0 + 456);

    sub_100004B50(v21 + 248, v0 + 288);
    sub_10014D450(v0 + 96);
    if (*(v0 + 120))
    {
      sub_100003324((v0 + 96));
    }

    swift_endAccess();
    v22 = sub_10000205C();
  }

  else
  {
    v17 = v0 + 408;
    v18 = *(v0 + 448);
    sub_100006098();
    (*(v19 + 32))();
    v20 = swift_task_alloc();
    v4(v20, v18, v5);
    if (*(v0 + 80))
    {
      sub_100007130(v0 + 56, v0 + 176);
    }

    else
    {
      v24 = *(v0 + 72);
      *(v0 + 176) = *(v0 + 56);
      *(v0 + 192) = v24;
      *(v0 + 208) = *(v0 + 88);
    }

    v25 = *(v0 + 440);
    sub_100004B50(*(v0 + 456) + 248, v0 + 384);
    sub_1000FF528(v0 + 176, v20);
    swift_endAccess();

    v22 = v25;
    v23 = 0;
  }

  sub_100009BFC(v22, v23, 1, v2);
  if (*(v0 + 80))
  {
    sub_100003324((v0 + 56));
  }

  v26 = *(v0 + 456);
  v27 = sub_1000071D0();
  v29 = sub_100065020(v27, v28);
  sub_100002F04(v29);
  sub_100002C58();
  sub_100004B50(v26 + 256, v17);
  sub_100143444();
  sub_100006570();
  sub_10000ECD8(v30, v31, v32);
  swift_endAccess();

  sub_100001F00();

  return v33();
}

uint64_t sub_1000F331C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v17 = v16[54];
  if (v16[10])
  {
    sub_100003324(v16 + 7);
  }

  v18 = v16[62];
  v19 = v16[60];
  v20 = v16[56];
  v21 = sub_100002C58();
  v18(v21, v20, v19);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  v24 = os_log_type_enabled(v22, v23);
  v25 = v16[64];
  v26 = v16[60];
  if (v24)
  {
    v27 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    a10 = sub_1000031E0();
    a12 = a10;
    *v27 = 138412546;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v28;
    *a9 = v28;
    *(v27 + 12) = 2080;
    sub_10005A8F4();
    dispatch thunk of CustomStringConvertible.description.getter();
    v25(v21, v26);
    v29 = sub_100008004();
    v32 = sub_100004A3C(v29, v30, v31);

    *(v27 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, "fetchNextStreamingResult ran into %@. Invalidating the requestId: %s from ongoingStreams", v27, 0x16u);
    sub_10000ECD8(a9, &qword_1001B8F68, &qword_10016FB80);
    sub_100002BB8(a9);
    sub_100003A7C();
    sub_100004B78();
  }

  else
  {

    v25(v21, v26);
  }

  v33 = v16[57];

  sub_100004B50(v33 + 248, (v16 + 42));
  sub_10014D450((v16 + 17));
  if (v16[20])
  {
    sub_100003324(v16 + 17);
  }

  v34 = v16[57];
  swift_endAccess();
  swift_willThrow();
  v35 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  sub_100002F04(v35);
  v36 = sub_100002C58();
  sub_100004B50(v34 + 256, (v16 + 45));
  sub_100143444();
  sub_10000ECD8(v36, &qword_1001B9060, &unk_10016FCD0);
  swift_endAccess();

  sub_100001F00();
  sub_100003D04();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, v17, a12, a13, a14, a15, a16);
}

uint64_t sub_1000F35C4()
{
  sub_100002BAC();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for Version();
  v1[15] = v3;
  sub_100002F44(v3);
  v1[16] = v4;
  v1[17] = sub_100002C58();
  v5 = type metadata accessor for InferenceProviderDescriptor.Instance();
  sub_100002F04(v5);
  v1[18] = sub_100002C58();
  v6 = type metadata accessor for InferenceProviderDescriptor();
  v1[19] = v6;
  sub_100002F44(v6);
  v1[20] = v7;
  v1[21] = sub_100002C58();
  v8 = sub_100002C10();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000F36D4()
{
  sub_100001ED0();
  sub_100003370((v0[14] + 152), *(v0[14] + 176));
  default argument 1 of InferenceProviderDescriptor.init(id:instance:hostedOnServer:)();
  default argument 2 of InferenceProviderDescriptor.init(id:instance:hostedOnServer:)();
  InferenceProviderDescriptor.init(id:instance:hostedOnServer:)();
  swift_task_alloc();
  sub_100004B34();
  v0[22] = v1;
  *v1 = v2;
  v1[1] = sub_1000F37CC;
  v3 = v0[21];

  return sub_1000253E8((v0 + 7), v3);
}

uint64_t sub_1000F37CC()
{
  sub_100001ED0();
  sub_100018E0C();
  sub_100004B40();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 184) = v1;

  sub_10000CC7C();
  (*(*(v0 + 160) + 8))(*(v5 + 168), *(v0 + 152));
  sub_10000CC50();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000F3930()
{
  sub_10000636C();
  if (*(v0 + 80))
  {
    sub_100004A04((v0 + 56), v0 + 16);
    v1 = *(v0 + 48);
    sub_100003370((v0 + 16), *(v0 + 40));
    Version.init(major:minor:patch:)();
    v16 = (*(v1 + 16) + **(v1 + 16));
    v2 = swift_task_alloc();
    *(v0 + 192) = v2;
    *v2 = v0;
    v2[1] = sub_1000F3C7C;
    sub_1000031B8(*(v0 + 136));
    sub_10000C750();

    return v16();
  }

  else
  {
    sub_10000ECD8(v0 + 56, &qword_1001B9CB0, &qword_100171E70);
    if (qword_1001B8960 != -1)
    {
      sub_1000086EC(&qword_1001B8960);
    }

    v4 = type metadata accessor for Logger();
    sub_100002FD0(v4, qword_1001BBB58);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = sub_100007648();
      *v7 = 0;
      sub_10000A4A4();
      _os_log_impl(v8, v9, v10, v11, v7, 2u);
      sub_100002F64();
    }

    type metadata accessor for ModelManagerError();
    sub_1000051EC();
    sub_1000FA4CC(v12, 255, v13, &protocol conformance descriptor for ModelManagerError);
    sub_100007894();
    swift_allocError();
    sub_100006098();
    (*(v14 + 104))();
    swift_willThrow();

    sub_100001F00();

    return v15();
  }
}

uint64_t sub_1000F3C04()
{
  sub_100001ED0();

  sub_100001F00();

  return v0();
}

uint64_t sub_1000F3C7C()
{
  sub_10001881C();
  sub_100003884();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  v7 = v4[16];
  *v6 = *v1;
  v5[25] = v0;

  v8 = v4[17];
  v9 = v4[15];
  if (!v0)
  {
    *(v5 + 208) = v3 & 1;
  }

  (*(v7 + 8))(v8, v9);
  sub_100007BB8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000F3E0C()
{
  sub_10001881C();
  sub_100003884();
  v1 = *(v0 + 208);
  v2 = *(v0 + 112);
  sub_100003370((v2 + 200), *(v2 + 224));
  v3 = sub_1000060A4();
  if ((v4(v3) & 1) != 0 && v1)
  {
    static RemoteDeviceSet.virtualHost.getter();
  }

  else
  {
    v5 = *(v0 + 208);
    sub_100003370((v2 + 200), *(v2 + 224));
    v6 = sub_1000060A4();
    if ((v7(v6) & 1) != 0 && v5)
    {
      static RemoteDeviceSet.simulatorHost.getter();
    }

    else
    {
      type metadata accessor for RemoteDeviceSet();
      *(v0 + 96) = _swiftEmptyArrayStorage;
      sub_1000FA4CC(&qword_1001BBE38, 255, &type metadata accessor for RemoteDeviceSet, &protocol conformance descriptor for RemoteDeviceSet);
      v8 = sub_1000071D0();
      sub_100065020(v8, v9);
      sub_100006570();
      sub_1000082D4(v10, v11, v12, v13);
      dispatch thunk of SetAlgebra.init<A>(_:)();
    }
  }

  sub_100003324((v0 + 16));

  sub_100001F00();
  sub_100007BB8();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1000F3FD4()
{
  sub_100001ED0();
  sub_100003324((v0 + 16));

  sub_100001F00();

  return v1();
}

void sub_1000F4054(uint64_t a1, uint64_t a2, int a3)
{
  v28[3] = a3;
  v5 = sub_100065020(&qword_1001B9C50, &qword_1001706A8);
  v6 = sub_100002F04(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = a1;
  URL.init(string:)();
  v10 = type metadata accessor for URL();
  sub_100002BDC();
  v12 = v11;
  v14 = __chkstk_darwin(v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  sub_1000FAD20();
  if (sub_10000C6C0(v28 - v9, 1, v10) == 1)
  {
    sub_100006570();
    sub_10000ECD8(v17, v18, v19);
    type metadata accessor for ModelManagerError();
    sub_1000051EC();
    sub_1000FA4CC(v20, 255, v21, &protocol conformance descriptor for ModelManagerError);
    sub_100007894();
    swift_allocError();
    *v22 = v30;
    v22[1] = a2;
    sub_100006098();
    (*(v23 + 104))();
    swift_willThrow();

    sub_100006570();
LABEL_6:
    sub_10000ECD8(v24, v25, v26);
    goto LABEL_7;
  }

  (*(v12 + 32))(v16, v28 - v9, v10);
  sub_100003370((v31 + 112), *(v31 + 136));
  v27 = v29;
  sub_100003E80(v16);
  if (v27)
  {
    (*(v12 + 8))(v16, v10);
    v25 = &qword_1001B9C50;
    v26 = &qword_1001706A8;
    v24 = v28 - v9;
    goto LABEL_6;
  }

  type metadata accessor for DaemonSession(0);
  sub_10001F04C();
  (*(v12 + 8))(v16, v10);
  sub_10000ECD8(v28 - v9, &qword_1001B9C50, &qword_1001706A8);
LABEL_7:
  sub_10002B0C0();
}

uint64_t sub_1000F4398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned int a7, unsigned int a8)
{
  v105 = __PAIR64__(a8, a7);
  v102 = a6;
  v100 = a5;
  v97 = a4;
  v107 = a2;
  v108 = a3;
  v106 = a1;
  v101 = type metadata accessor for ClientData();
  sub_100002BDC();
  v99 = v8;
  __chkstk_darwin(v9);
  sub_100008624();
  v104 = v10;
  sub_100003B1C();
  v11 = type metadata accessor for RequestMetadata();
  v12 = sub_100002F04(v11);
  __chkstk_darwin(v12);
  sub_100008624();
  v103 = v13;
  sub_100003B1C();
  v14 = type metadata accessor for TaskPriority();
  v15 = sub_100002F04(v14);
  __chkstk_darwin(v15);
  sub_100008624();
  v111 = v16;
  sub_100003B1C();
  v94 = type metadata accessor for Version();
  sub_100002BDC();
  v93 = v17;
  __chkstk_darwin(v18);
  sub_100008624();
  v110 = v19;
  v20 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  v22 = v21;
  v24 = __chkstk_darwin(v23);
  v95 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v81 - v27;
  __chkstk_darwin(v26);
  v30 = &v81 - v29;
  v31 = type metadata accessor for UUID();
  sub_100002BDC();
  v33 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v36);
  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  UUID.init()();
  type metadata accessor for Session();
  UUIDIdentifier.init()();
  if (qword_1001B8960 != -1)
  {
    sub_1000086EC(&qword_1001B8960);
  }

  v38 = type metadata accessor for Logger();
  v39 = sub_100002FD0(v38, qword_1001BBB58);
  v84 = &v81;
  v92 = v35;
  __chkstk_darwin(v39);
  v40 = &v81 - v37;
  v41 = *(v33 + 16);
  v96 = &v81 - v37;
  v89 = (v33 + 16);
  v88 = v41;
  v41(&v81 - v37, &v81 - v37, v31);
  v42 = v31;
  v43 = *(v22 + 16);
  v98 = v30;
  v87 = v43;
  v43(v28, v30, v20);
  v44 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_10000D58C();
  v46 = os_log_type_enabled(v44, v45);
  v109 = v31;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v86 = v28;
    v48 = v20;
    v49 = v47;
    v83 = swift_slowAlloc();
    v112 = v83;
    *v49 = 136315394;
    v50 = sub_10005A8F4();
    sub_100009B78(v50);
    v51 = *(v33 + 8);
    v90 = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v40;
    v53 = v48;
    v91 = v51;
    v51(v52, v109);
    v54 = sub_100001F70();
    v57 = sub_100004A3C(v54, v55, v56);

    *(v49 + 4) = v57;
    *(v49 + 12) = 2080;
    sub_1000082D4(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060, &protocol conformance descriptor for UUIDIdentifier<A>);
    v58 = v86;
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_1000265F4();
    v86 = v59;
    v59(v58, v48);
    v60 = sub_1000062B0();
    v63 = sub_100004A3C(v60, v61, v62);

    *(v49 + 14) = v63;
    v42 = v109;
    _os_log_impl(&_mh_execute_header, v44, v30, "Creating remote request with uuid: %s and session UUID: %s", v49, 0x16u);
    v64 = v83;
    swift_arrayDestroy();
    sub_100002BB8(v64);
    sub_10000706C();
  }

  else
  {

    sub_1000265F4();
    v86 = v65;
    v65(v28, v20);
    v90 = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v66 = sub_1000080D8();
    v91 = v67;
    (v67)(v66);
    v53 = v20;
  }

  v82 = v53;
  v68 = sub_100003B1C();
  v84 = type metadata accessor for DaemonRequest(v68);
  type metadata accessor for CustomAssetConfiguration();
  v83 = Dictionary.init(dictionaryLiteral:)();
  sub_100007130(v97, &v112);
  (*(v93 + 16))(v110, v100, v94);
  static TaskPriority.userInitiated.getter();
  v69 = (*(v99 + 16))(v104, v102, v101);
  v102 = &v81;
  __chkstk_darwin(v69);
  v71 = v96;
  v88(&v81 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0), v96, v42);
  v72 = v98;
  v87(v95, v98, v53);
  v73 = v108;
  v74 = sub_1000EED90(v108);
  sub_100077254(v74);
  default argument 7 of RequestMetadata.init(loggingIdentifier:clientData:UUID:sessionID:requiredAssetIDs:isInference:isStream:isInputStream:subrequestID:allInputStreamed:useCaseID:)();
  default argument 8 of RequestMetadata.init(loggingIdentifier:clientData:UUID:sessionID:requiredAssetIDs:isInference:isStream:isInputStream:subrequestID:allInputStreamed:useCaseID:)();
  default argument 9 of RequestMetadata.init(loggingIdentifier:clientData:UUID:sessionID:requiredAssetIDs:isInference:isStream:isInputStream:subrequestID:allInputStreamed:useCaseID:)();
  v75 = v103;
  sub_1000FB130();
  RequestMetadata.init(loggingIdentifier:clientData:UUID:sessionID:requiredAssetIDs:isInference:isStream:isInputStream:subrequestID:allInputStreamed:useCaseID:)();

  v76 = v107;

  LOWORD(v80) = *(&v105 + 3) & 0x100;
  sub_10014F010(v106, v76, v73, v83, &v112, v110, v111, 0x614D65746F6D6552, 0xED0000726567616ELL, v80, v75, 0xE000000000000000, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, BYTE1(v90), v91);
  v78 = v77;
  v86(v72, v82);
  v91(v71, v109);
  return v78;
}

uint64_t sub_1000F4BD8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100002C10();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000F4C04()
{
  sub_100003884();
  v2 = v0[3];
  v1 = v0[4];
  sub_100007E70();
  sub_1000FA4CC(v3, v4, v5, &unk_100172634);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[6] = v7;
  type metadata accessor for InferenceProviderRequestResult();
  *v7 = v0;
  v7[1] = sub_1000F4D28;
  sub_100019274();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1000F4D28()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v7 = *(v3 + 32);

    return _swift_task_switch(sub_1000F4E48, v7, 0);
  }

  else
  {

    sub_100001F00();

    return v8();
  }
}

uint64_t sub_1000F4E48()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

double sub_1000F4EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100065020(&qword_1001BBE30, &qword_1001726E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  v10 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  sub_100009BFC(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  v15 = sub_1000FA4CC(&qword_1001BBE28, v14, type metadata accessor for RemoteManager, &unk_100172634);
  v16 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = v15;
  *(v17 + 4) = a2;
  *(v17 + 5) = a3;
  (*(v7 + 32))(&v17[v16], v9, v6);
  swift_retain_n();

  sub_1000652FC();

  return result;
}

uint64_t sub_1000F50BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v8 = sub_100065020(&qword_1001BBE30, &qword_1001726E0);
  v6[6] = v8;
  v9 = *(v8 - 8);
  v6[7] = v9;
  v6[8] = *(v9 + 64);
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000F5198, a4, 0);
}

uint64_t sub_1000F5198()
{
  sub_10001881C();
  sub_100003884();
  (*(v0[7] + 16))(v0[9], v0[5], v0[6]);
  v0[10] = swift_allocObject();
  sub_10000C750();
  v1();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1000F52B4;
  sub_1000031B8(v0[4]);
  sub_100007BB8();

  return sub_100139284();
}

uint64_t sub_1000F52B4()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    v7 = *(v3 + 24);

    return _swift_task_switch(sub_1000F53FC, v7, 0);
  }

  else
  {

    sub_100001F00();

    return v8();
  }
}

uint64_t sub_1000F53FC()
{
  sub_100002BAC();
  *(v0 + 16) = *(v0 + 96);
  CheckedContinuation.resume(throwing:)();

  sub_100001F00();

  return v1();
}

uint64_t sub_1000F5468(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for InferenceProviderRequestResult();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000F5528, 0, 0);
}

uint64_t sub_1000F5528()
{
  sub_100002BAC();
  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  sub_100065020(&qword_1001BBE30, &qword_1001726E0);
  CheckedContinuation.resume(returning:)();

  sub_100001F00();

  return v1();
}

uint64_t sub_1000F55C0()
{
  sub_100002BAC();
  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
  *(v1 + 580) = v3;
  *(v1 + 184) = v4;
  *(v1 + 192) = v5;
  *(v1 + 168) = v6;
  *(v1 + 176) = v7;
  *(v1 + 160) = v8;
  v9 = type metadata accessor for ModelManagerError();
  *(v1 + 216) = v9;
  sub_100002F44(v9);
  *(v1 + 224) = v10;
  *(v1 + 232) = sub_100002C58();
  v11 = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  *(v1 + 240) = v11;
  sub_100002F44(v11);
  *(v1 + 248) = v12;
  *(v1 + 256) = sub_100002C58();
  v13 = sub_100065020(&qword_1001BBE18, &unk_1001726C0);
  *(v1 + 264) = v13;
  sub_100002F04(v13);
  *(v1 + 272) = sub_100002C58();
  v14 = sub_100065020(&qword_1001B9CD0, &qword_100170778);
  sub_100002F04(v14);
  *(v1 + 280) = sub_10000F0C0();
  *(v1 + 288) = swift_task_alloc();
  *(v1 + 296) = swift_task_alloc();
  v15 = type metadata accessor for InferenceProviderDescriptor();
  *(v1 + 304) = v15;
  sub_100002F44(v15);
  *(v1 + 312) = v16;
  *(v1 + 320) = sub_10000F0C0();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = swift_task_alloc();
  *(v1 + 352) = swift_task_alloc();
  *(v1 + 360) = swift_task_alloc();
  v17 = sub_100065020(&qword_1001B9C80, &unk_1001726D0);
  sub_100002F04(v17);
  *(v1 + 368) = sub_10000F0C0();
  *(v1 + 376) = swift_task_alloc();
  *(v1 + 384) = swift_task_alloc();
  *(v1 + 392) = swift_task_alloc();
  v18 = sub_100065020(&qword_1001B9C88, &qword_1001706E0);
  sub_100002F04(v18);
  *(v1 + 400) = sub_10000F0C0();
  *(v1 + 408) = swift_task_alloc();
  *(v1 + 416) = swift_task_alloc();
  v19 = sub_100002C10();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_1000F5850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100011AD8();
  sub_100012BA8();
  v27 = *(v26 + 216);
  v29 = *(v26 + 176);
  v28 = *(v26 + 184);
  *(v26 + 424) = type metadata accessor for InferenceProviderRequestResult();
  sub_100003978();
  sub_100009BFC(v30, v31, v32, v33);
  sub_100003978();
  sub_100009BFC(v34, v35, v36, v27);
  sub_1000F4054(v29, v28, 0);
  *(v26 + 432) = v37;
  *(v26 + 440) = v38;
  v48 = v37;
  v50 = v49;
  v51 = v38;
  v52 = *(v26 + 312);
  *(v26 + 448) = v49;
  v53 = *(v38 + 16);
  *(v26 + 568) = enum case for InferenceError.versionNotSupported(_:);
  *(v26 + 572) = enum case for ModelManagerError.inferenceError(_:);
  v54 = *(v26 + 208);
  *(v26 + 576) = enum case for ModelManagerError.unrecognizedInferenceProvider(_:);
  *(v26 + 456) = v53;
  *(v26 + 464) = 0;
  *(v26 + 472) = 0;

  if (v53)
  {
    if (*(v51 + 16))
    {
      v55 = *(v26 + 360);
      v56 = *(v26 + 304);
      v58 = *(v52 + 16);
      v57 = v52 + 16;
      v59 = (*(v57 + 64) + 32) & ~*(v57 + 64);
      *(v26 + 480) = v58;
      *(v26 + 488) = v57 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v58(v55, v51 + v59, v56);
      sub_100003370((v54 + 152), *(v54 + 176));
      swift_task_alloc();
      sub_100004B34();
      *(v26 + 496) = v60;
      *v60 = v61;
      sub_100002D78(v60);
      sub_100008228();

      return sub_1000253E8(v62, v63);
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_10001363C();
  sub_1000FAD20();
  sub_100003494(v54);
  if (v65)
  {
    v66 = *(v26 + 400);
    v67 = &qword_1001B9C88;
    v68 = &qword_1001706E0;
LABEL_20:
    sub_10000ECD8(v66, v67, v68);
LABEL_21:
    sub_100003614();
    sub_1000FAD20();
    sub_10000A2BC();
    if (!v65)
    {
      v102 = sub_100006544();
      v103(v102);
      sub_1000051EC();
      sub_1000FA4CC(v104, 255, v105, &protocol conformance descriptor for ModelManagerError);
      sub_10003DD94();
      sub_100007894();
      v106 = swift_allocError();
      v108 = sub_10000A904(v106, v107);
      v109(v108);
      v112 = v54;
      swift_willThrow();

      v110 = sub_100007228();
      v111(v110);
LABEL_2:
      sub_10000ECD8(v48, &qword_1001B9C80, &unk_1001726D0);
      sub_10000ECD8(v50, &qword_1001B9C88, &qword_1001706E0);
      sub_10001144C();

      sub_100001F00();
      sub_100008228();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v112, a23, a24, a25, a26);
    }

    sub_10000ECD8(*(v26 + 368), &qword_1001B9C80, &unk_1001726D0);
    if (qword_1001B8960 == -1)
    {
LABEL_24:
      v91 = type metadata accessor for Logger();
      sub_100002FD0(v91, qword_1001BBB58);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.fault.getter();
      if (sub_100006468(v93))
      {
        v94 = sub_100007648();
        sub_10000BF10(v94);
        sub_100009DDC(&_mh_execute_header, v95, v96, "For some reason, IP did not error but executeRequestWrapper returned nil");
        sub_10000706C();
      }

      sub_100012530();
      sub_1000051EC();
      sub_1000FA4CC(v97, 255, v98, &protocol conformance descriptor for ModelManagerError);
      v99 = sub_100008194();
      sub_10002AB60(v99, v100);
      sub_100007F60();
      v101();
      v112 = v92;
      swift_willThrow();

      goto LABEL_2;
    }

LABEL_28:
    sub_1000086EC(&qword_1001B8960);
    goto LABEL_24;
  }

  v69 = sub_100005710();
  v50 = v70;
  (*(v71 + 32))(v69);
  if (!v51)
  {
    v87 = sub_10001995C();
    v88(v87);
    goto LABEL_21;
  }

  sub_10000AA54();
  sub_1000FAD20();
  sub_10000A2BC();
  if (!v65)
  {
    v89 = sub_100009DC8();
    v90(v89);
    v67 = &qword_1001B9C80;
    v68 = &unk_1001726D0;
    v66 = v52;
    goto LABEL_20;
  }

  v72 = sub_100007AB0();
  sub_100019BD8(v72);

  sub_100003914();
  sub_10000ECD8(v73, v74, v75);
  sub_10000ECD8(v54, &qword_1001B9C88, &qword_1001706E0);
  sub_100003914();
  sub_10000ECD8(v76, v77, v78);

  sub_10000EEAC();
  sub_100008228();

  return v81(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1000F5EB0()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 504) = v0;

  if (v0)
  {
    v7 = *(v3 + 208);

    v8 = sub_1000F68A4;
    v9 = v7;
  }

  else
  {
    v9 = *(v3 + 208);
    v8 = sub_1000F5FDC;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1000F5FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_100011AD8();
  a33 = v35;
  a34 = v36;
  sub_100012BA8();
  a32 = v34;
  sub_1000FAD20();
  if (*(v34 + 120))
  {
    v157 = sub_100018428();
    v158 = v37 + *v37;
    v38 = swift_task_alloc();
    *(v34 + 512) = v38;
    *v38 = v34;
    v38[1] = sub_1000F6A08;
    sub_1000031B8(*(v34 + 168));
    sub_10000C750();
    sub_100008228();

    return v42(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v157, v158, a22, a23, a24, a25, a26);
  }

  sub_10000ECD8(v34 + 96, &qword_1001B9CB0, &qword_100171E70);
  if (qword_1001B8960 != -1)
  {
    sub_1000086EC(&qword_1001B8960);
  }

  v48 = *(v34 + 480);
  v156 = type metadata accessor for Logger();
  sub_10000641C(v156, qword_1001BBB58);
  v49 = sub_1000062B0();
  v48(v49);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  v52 = sub_100026838(v51);
  v53 = *(v34 + 320);
  if (v52)
  {
    v54 = sub_100007698();
    v55 = sub_1000031E0();
    a22 = v55;
    *v54 = 136315138;
    sub_100005D20();
    sub_1000FA4CC(v56, 255, v57, &protocol conformance descriptor for InferenceProviderDescriptor);
    sub_10003DD94();
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v61 = sub_100008004();
    v159 = v62;
    v62(v61);
    sub_100004A3C(v58, v60, &a22);
    sub_10000A08C();

    *(v54 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v50, v51, "Failed to acquire %s, falling back to next IP", v54, 0xCu);
    sub_100003324(v55);
    sub_100002F64();
    sub_100004B78();
  }

  else
  {

    v63 = sub_100008004();
    v159 = v64;
    v64(v63);
  }

  LODWORD(a20) = *(v34 + 576);
  v66 = *(v34 + 384);
  v65 = *(v34 + 392);
  v68 = *(v34 + 216);
  v67 = *(v34 + 224);
  v69 = InferenceProviderDescriptor.description.getter();
  v71 = v70;
  sub_10000ECD8(v34 + 16, &qword_1001B9CB0, &qword_100171E70);
  v72 = sub_100005E8C();
  v159(v72);
  sub_100003914();
  sub_10000ECD8(v73, v74, v75);
  *v66 = v69;
  v66[1] = v71;
  v77 = *(v67 + 104);
  v76 = v67 + 104;
  v77(v66, a20, v68);
  sub_1000039A8();
  sub_100009BFC(v78, v79, v80, v68);
  sub_1000FAA80();
  sub_100018D20();
  if (!v81)
  {
    sub_100011A04();
    if (!v87)
    {
      v88 = sub_10001281C();
      v89(v88);
      sub_1000402F4();
      swift_task_alloc();
      sub_100004B34();
      *(v34 + 496) = v90;
      *v90 = v91;
      sub_100002D78(v90);
      sub_100008228();

      return sub_1000253E8(v92, v93);
    }

    __break(1u);
    goto LABEL_37;
  }

  v82 = *(v34 + 464);
  v83 = *(v34 + 400);
  sub_1000FAD20();
  sub_100003494(v83);
  if (v81)
  {
    v84 = *(v34 + 400);
    v85 = &qword_1001B9C88;
    v86 = &qword_1001706E0;
LABEL_26:
    sub_10000ECD8(v84, v85, v86);
LABEL_27:
    v65 = *(v34 + 216);
    sub_1000FAD20();
    v121 = sub_10000205C();
    sub_10000323C(v121, v122, v65);
    if (!v81)
    {
      v133 = sub_100006544();
      v134(v133);
      sub_1000051EC();
      sub_1000FA4CC(v135, 255, v136, &protocol conformance descriptor for ModelManagerError);
      sub_10003DD94();
      sub_100007894();
      v137 = swift_allocError();
      v139 = sub_10000A904(v137, v138);
      v140(v139);
      v160 = v76;
      swift_willThrow();

      v141 = sub_100007228();
      v142(v141);
LABEL_33:
      sub_10000ECD8(v66, &qword_1001B9C80, &unk_1001726D0);
      sub_10000ECD8(v65, &qword_1001B9C88, &qword_1001706E0);
      v143 = sub_100003088();
      sub_10000F1A8(v143);

      sub_100001F00();
      sub_100008228();

      return v145(v144, v145, v146, v147, v148, v149, v150, v151, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v156, a20, v160, a22, a23, a24, a25, a26);
    }

    sub_10000ECD8(*(v34 + 368), &qword_1001B9C80, &unk_1001726D0);
    if (qword_1001B8960 == -1)
    {
LABEL_30:
      sub_100002FD0(v156, qword_1001BBB58);
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.fault.getter();
      if (sub_100006468(v124))
      {
        v125 = sub_100007648();
        sub_10000BF10(v125);
        sub_100009DDC(&_mh_execute_header, v126, v127, "For some reason, IP did not error but executeRequestWrapper returned nil");
        sub_10000706C();
      }

      sub_100012530();
      sub_1000051EC();
      sub_1000FA4CC(v128, 255, v129, &protocol conformance descriptor for ModelManagerError);
      v130 = sub_100008194();
      sub_10002AB60(v130, v131);
      sub_100007F60();
      v132();
      v160 = v123;
      swift_willThrow();

      goto LABEL_33;
    }

LABEL_37:
    sub_1000086EC(&qword_1001B8960);
    goto LABEL_30;
  }

  v95 = sub_100005710();
  v97 = v96;
  (*(v98 + 32))(v95);
  if (!v82)
  {
    v118 = *(v97 + 8);
    v76 = v97 + 8;
    v118(*(v34 + 160), *(v34 + 424));
    goto LABEL_27;
  }

  v99 = *(v34 + 216);
  sub_1000FAD20();
  v100 = sub_10000205C();
  sub_10000323C(v100, v101, v99);
  if (!v81)
  {
    v119 = *(v34 + 376);
    v120 = *(v97 + 8);
    v76 = v97 + 8;
    v120(*(v34 + 160), *(v34 + 424));
    v85 = &qword_1001B9C80;
    v86 = &unk_1001726D0;
    v84 = v119;
    goto LABEL_26;
  }

  sub_100007AB0();
  v152 = v103;
  v153 = v102;
  v154 = *(v34 + 352);
  v155 = *(v34 + 344);
  sub_10001144C();

  sub_100003914();
  sub_10000ECD8(v104, v105, v106);
  sub_10000ECD8(v97, &qword_1001B9C88, &qword_1001706E0);
  sub_100003914();
  sub_10000ECD8(v107, v108, v109);

  sub_10000EEAC();
  sub_100008228();

  return v112(v110, v111, v112, v113, v114, v115, v116, v117, v152, v153, v154, v155, a13, a14, a15, a16, a17, a18, v156, a20, v159, a22, a23, a24, a25, a26);
}

uint64_t sub_1000F68A4()
{
  sub_100013464();

  v2 = sub_100005EE8();
  v3(v2);
  sub_10000ECD8(v1, &qword_1001B9C80, &unk_1001726D0);
  sub_10000ECD8(v0, &qword_1001B9C88, &qword_1001706E0);
  sub_1000194D4();

  sub_100001F00();

  return v4();
}

uint64_t sub_1000F6A08()
{
  sub_100001ED0();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100004B40();
  *v6 = v5;
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v5 + 520) = v0;

  if (v0)
  {
    v9 = *(v5 + 208);

    v10 = sub_1000F87D0;
    v11 = v9;
  }

  else
  {
    v11 = *(v5 + 208);
    *(v5 + 581) = v3 & 1;
    v10 = sub_1000F6B40;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_1000F6B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (*a17)(uint64_t, uint64_t), void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_100011AD8();
  a33 = v35;
  a34 = v36;
  sub_100012BA8();
  a32 = v34;
  if (*(v34 + 581))
  {
    v37 = *(v34 + 440);
    v38 = *(v34 + 304);
    (*(v34 + 480))(*(v34 + 296), *(v34 + 360), v38);
    v39 = 1;
    sub_1000039A8();
    sub_100009BFC(v40, v41, v42, v38);
    if (*(v37 + 16))
    {
      sub_100020444(0, *(v34 + 440), *(v34 + 288));
      v39 = 0;
    }

    v43 = *(v34 + 304);
    v45 = *(v34 + 264);
    v44 = *(v34 + 272);
    sub_100009BFC(*(v34 + 288), v39, 1, v43);
    v46 = *(v45 + 48);
    sub_100019274();
    sub_1000FAD20();
    sub_1000FAD20();
    v47 = sub_10000205C();
    v49 = sub_10000C6C0(v47, v48, v43);
    v50 = *(v34 + 304);
    if (v49 == 1)
    {
      sub_100006570();
      sub_10000ECD8(v51, v52, v53);
      sub_100006570();
      sub_10000ECD8(v54, v55, v56);
      sub_10000323C(v44 + v46, 1, v50);
      if (!v57)
      {
        goto LABEL_15;
      }

      sub_10000ECD8(*(v34 + 272), &qword_1001B9CD0, &qword_100170778);
      v58 = 0;
    }

    else
    {
      sub_1000FAD20();
      sub_10000323C(v44 + v46, 1, v50);
      if (v57)
      {
        v81 = *(v34 + 304);
        v82 = *(v34 + 312);
        v83 = *(v34 + 280);
        sub_100006570();
        sub_10000ECD8(v84, v85, v86);
        sub_100006570();
        sub_10000ECD8(v87, v88, v89);
        (*(v82 + 8))(v83, v81);
LABEL_15:
        sub_10000ECD8(*(v34 + 272), &qword_1001BBE18, &unk_1001726C0);
        v58 = 1;
        goto LABEL_26;
      }

      v116 = *(v34 + 304);
      v117 = *(v34 + 312);
      v118 = *(v34 + 280);
      (*(v117 + 32))(*(v34 + 352), v44 + v46, v116);
      sub_100005D20();
      sub_1000FA4CC(v119, 255, v120, &protocol conformance descriptor for InferenceProviderDescriptor);
      sub_1000071D0();
      v121 = dispatch thunk of static Equatable.== infix(_:_:)();
      v122 = *(v117 + 8);
      v123 = sub_1000080D8();
      v122(v123);
      sub_1000FB130();
      sub_10000ECD8(v124, v125, v126);
      sub_1000FB130();
      sub_10000ECD8(v127, v128, v129);
      (v122)(v118, v116);
      sub_1000FB130();
      sub_10000ECD8(v130, v131, v132);
      v58 = v121 ^ 1;
    }

LABEL_26:
    *(v34 + 528) = sub_1000F4398(*(v34 + 176), *(v34 + 184), *(v34 + 432), v34 + 56, *(v34 + 168), *(v34 + 192), *(v34 + 580), v58 & 1);

    v133 = qword_1001B8960;

    if (v133 != -1)
    {
      sub_1000086EC(&qword_1001B8960);
    }

    v134 = *(v34 + 480);
    v135 = type metadata accessor for Logger();
    *(v34 + 536) = sub_10000641C(v135, qword_1001BBB58);
    sub_10002B0C0();
    (v134)();
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.info.getter();
    v138 = os_log_type_enabled(v136, v137);
    v139 = *(v34 + 392);
    v140 = *(v34 + 312);
    if (v138)
    {
      sub_100007698();
      a22 = sub_100003E34();
      *v134 = 136315138;
      sub_100005D20();
      sub_1000FA4CC(v141, 255, v142, &protocol conformance descriptor for InferenceProviderDescriptor);
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v226 = v139;
      v145 = v144;
      v225 = v137;
      v146 = *(v140 + 8);
      v147 = sub_100004CB0();
      v146(v147);
      v148 = sub_100004A3C(v143, v145, &a22);

      *(v134 + 4) = v148;
      sub_1000111AC(&_mh_execute_header, v149, v225, "Attemping to execute a request with inference provider %s");
      sub_100003A7C();
      sub_100012684();

      v150 = v226;
    }

    else
    {

      v146 = *(v140 + 8);
      v151 = sub_100004CB0();
      v146(v151);
      v150 = v139;
    }

    sub_10000ECD8(v150, &qword_1001B9C80, &unk_1001726D0);
    *(v34 + 544) = v146;
    v152 = *(v34 + 256);
    v153 = *(v34 + 240);
    v154 = *(v34 + 208);
    v155 = *(v34 + 200);
    sub_100003978();
    sub_100009BFC(v156, v157, v158, v159);
    RequestMetadata.sessionID.getter();
    RequestMetadata.id.getter();
    v160 = *(v153 + 24);
    type metadata accessor for RemoteInterfaceInformation();
    sub_100005680();
    (*(v161 + 16))(v152 + v160, v155);
    sub_100004B50(v154 + 240, v34 + 136);
    sub_10013FA3C();
    v162 = *(*(v154 + 240) + 16);
    sub_10013FACC(v162);
    v163 = *(v154 + 240);
    *(v163 + 16) = v162 + 1;
    sub_1000FA888();
    *(v154 + 240) = v163;
    swift_endAccess();
    swift_task_alloc();
    sub_100004B34();
    *(v34 + 552) = v164;
    *v164 = v165;
    v164[1] = sub_1000F78E0;
    sub_100008228();

    return sub_1000F4BD8(v166, v167);
  }

  v59 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
  if (qword_1001B8960 != -1)
  {
    sub_1000086EC(&qword_1001B8960);
  }

  v60 = *(v34 + 480);
  v61 = type metadata accessor for Logger();
  sub_10000641C(v61, qword_1001BBB58);
  v62 = sub_1000062B0();
  v60(v62);
  v63 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10000D58C();
  v65 = os_log_type_enabled(v63, v64);
  v66 = *(v34 + 392);
  v227 = *(v34 + 360);
  v67 = *(v34 + 328);
  v69 = *(v34 + 304);
  v68 = *(v34 + 312);
  if (v65)
  {
    v70 = sub_100007698();
    a20 = v61;
    a18 = sub_1000031E0();
    a22 = a18;
    *v70 = 136315138;
    sub_100005D20();
    sub_1000FA4CC(v71, 255, v72, &protocol conformance descriptor for InferenceProviderDescriptor);
    a19 = v66;
    v73 = dispatch thunk of CustomStringConvertible.description.getter();
    v75 = v74;
    a17 = *(v68 + 8);
    a17(v67, v69);
    v76 = sub_100004A3C(v73, v75, &a22);

    *(v70 + 4) = v76;
    sub_1000166A4(&_mh_execute_header, v77, v78, "Current IP %s does not support this version, falling back");
    sub_100003324(a18);
    sub_100002BB8(a18);
    v79 = v70;
    v59 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
    sub_100002BB8(v79);

    sub_10000ECD8(v34 + 16, &qword_1001B9CB0, &qword_100171E70);
    a17(v227, v69);
    v80 = a19;
  }

  else
  {

    v90 = *(v68 + 8);
    v90(v67, v69);
    sub_10000ECD8(v34 + 16, &qword_1001B9CB0, &qword_100171E70);
    v90(v227, v69);
    v80 = v66;
  }

  sub_10000ECD8(v80, &qword_1001B9C80, &unk_1001726D0);
  v91 = *(v34 + 572);
  v92 = *(v34 + 568);
  v93 = *(v34 + 392);
  v94 = *(v34 + 216);
  v95 = *(v34 + 224);
  type metadata accessor for InferenceError();
  sub_100005680();
  (*(v96 + 104))(v93, v92);
  v98 = *(v95 + 104);
  v97 = v95 + 104;
  v98(v93, v91, v94);
  sub_1000039A8();
  sub_100009BFC(v99, v100, v101, v94);
  sub_100003324((v34 + 56));
  sub_100018D20();
  if (!v57)
  {
    sub_100011A04();
    if (!v107)
    {
      v108 = sub_10001281C();
      v109(v108);
      sub_1000402F4();
      swift_task_alloc();
      sub_100004B34();
      *(v34 + 496) = v110;
      *v110 = v111;
      sub_100002D78(v110);
      sub_100008228();

      return sub_1000253E8(v112, v113);
    }

    __break(1u);
    goto LABEL_52;
  }

  v102 = *(v34 + 440);
  v103 = *(v34 + 448);

  sub_10001363C();
  sub_1000FAD20();
  sub_100003494(v93);
  if (v57)
  {
    v104 = *(v34 + 400);
    v105 = &qword_1001B9C88;
    v106 = &qword_1001706E0;
LABEL_41:
    sub_10000ECD8(v104, v105, v106);
LABEL_42:
    sub_100003614();
    sub_1000FAD20();
    sub_10000A2BC();
    if (!v57)
    {
      v202 = sub_100006544();
      v203(v202);
      sub_1000051EC();
      sub_1000FA4CC(v204, 255, v205, &protocol conformance descriptor for ModelManagerError);
      sub_10003DD94();
      sub_100007894();
      v206 = swift_allocError();
      v208 = sub_10000A904(v206, v207);
      v209(v208);
      v228 = v93;
      swift_willThrow();

      v210 = sub_100007228();
      v211(v210);
LABEL_48:
      sub_10000ECD8(v97, &qword_1001B9C80, &unk_1001726D0);
      sub_10000ECD8(v94, &qword_1001B9C88, &qword_1001706E0);
      v212 = sub_100003088();
      sub_10000F1A8(v212);

      sub_100001F00();
      sub_100008228();

      return v214(v213, v214, v215, v216, v217, v218, v219, v220, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v228, a22, a23, a24, a25, a26);
    }

    sub_10000ECD8(*(v34 + 368), &qword_1001B9C80, &unk_1001726D0);
    if (v59[300] == -1)
    {
LABEL_45:
      sub_100002FD0(v61, qword_1001BBB58);
      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.fault.getter();
      if (sub_100006468(v193))
      {
        v194 = sub_100007648();
        sub_10000BF10(v194);
        sub_100009DDC(&_mh_execute_header, v195, v196, "For some reason, IP did not error but executeRequestWrapper returned nil");
        sub_10000706C();
      }

      sub_100012530();
      sub_1000051EC();
      sub_1000FA4CC(v197, 255, v198, &protocol conformance descriptor for ModelManagerError);
      v199 = sub_100008194();
      sub_10002AB60(v199, v200);
      sub_100007F60();
      v201();
      v228 = v192;
      swift_willThrow();

      goto LABEL_48;
    }

LABEL_52:
    sub_1000086EC(&qword_1001B8960);
    goto LABEL_45;
  }

  v169 = sub_100005710();
  v94 = v170;
  (*(v171 + 32))(v169);
  if (!v102)
  {
    v188 = sub_10001995C();
    v189(v188);
    goto LABEL_42;
  }

  sub_10000AA54();
  sub_1000FAD20();
  sub_10000A2BC();
  if (!v57)
  {
    v190 = sub_100009DC8();
    v191(v190);
    v105 = &qword_1001B9C80;
    v106 = &unk_1001726D0;
    v104 = v103;
    goto LABEL_41;
  }

  sub_100007AB0();
  v221 = v173;
  v222 = v172;
  v223 = *(v34 + 352);
  v224 = *(v34 + 344);
  sub_10001144C();

  sub_100003914();
  sub_10000ECD8(v174, v175, v176);
  sub_10000ECD8(v93, &qword_1001B9C88, &qword_1001706E0);
  sub_100003914();
  sub_10000ECD8(v177, v178, v179);

  sub_10000EEAC();
  sub_100008228();

  return v182(v180, v181, v182, v183, v184, v185, v186, v187, v221, v222, v223, v224, a13, a14, a15, a16, a17, a18, a19, a20, v227, a22, a23, a24, a25, a26);
}

uint64_t sub_1000F78E0()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 560) = v0;

  if (v0)
  {
    v7 = *(v3 + 208);
    v8 = sub_1000F7FE4;
  }

  else
  {
    v9 = *(v3 + 208);

    v8 = sub_1000F79F0;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000F79F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100011AD8();
  sub_100012BA8();
  v97 = v26[68];
  v27 = v26[66];
  v28 = v26[53];
  v95 = v26[38];
  v96 = v26[45];
  v29 = v26[32];
  v93 = v26[55];
  v94 = v26[39] + 8;
  v30 = &qword_1001B9C88;
  sub_10000ECD8(v26[52], &qword_1001B9C88, &qword_1001706E0);
  sub_1000039A8();
  sub_100009BFC(v31, v32, v33, v28);
  sub_1000037BC();
  sub_1000FAA80();
  v34 = sub_1000060A4();
  sub_1000F8954(v34, v35);

  sub_100006330();
  sub_1000FA980(v29, v36);
  sub_10000ECD8((v26 + 2), &qword_1001B9CB0, &qword_100171E70);
  v97(v96, v95);
  sub_100003324(v26 + 7);
  v37 = v26[66];
  v38 = v26[53];
  v39 = v26[50];
  sub_1000135D0();
  sub_1000FAD20();
  sub_100003494(v39);
  if (v40)
  {
    v41 = v26[50];
    v42 = &qword_1001B9C88;
    v43 = &qword_1001706E0;
LABEL_11:
    sub_10000ECD8(v41, v42, v43);
    goto LABEL_12;
  }

  v44 = sub_100005710();
  v30 = v45;
  (*(v46 + 32))(v44);
  if (!v37)
  {
    v63 = sub_10001995C();
    v64(v63);
LABEL_12:
    sub_100003614();
    sub_1000FAD20();
    sub_10000A2BC();
    if (v40)
    {
      sub_10000ECD8(v26[46], &qword_1001B9C80, &unk_1001726D0);
      if (qword_1001B8960 != -1)
      {
        sub_1000086EC(&qword_1001B8960);
      }

      v67 = type metadata accessor for Logger();
      sub_100002FD0(v67, qword_1001BBB58);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.fault.getter();
      if (sub_100006468(v69))
      {
        v70 = sub_100007648();
        sub_10000BF10(v70);
        sub_100009DDC(&_mh_execute_header, v71, v72, "For some reason, IP did not error but executeRequestWrapper returned nil");
        sub_10000706C();
      }

      sub_100012530();
      sub_1000051EC();
      sub_1000FA4CC(v73, 255, v74, &protocol conformance descriptor for ModelManagerError);
      v75 = sub_100008194();
      sub_10002AB60(v75, v76);
      sub_100007F60();
      v77();
      v98 = v68;
      swift_willThrow();
    }

    else
    {
      v30 = v26[52];
      v27 = v26[49];
      v78 = v26[28];
      v79 = v26[29];
      v80 = v26[27];
      (*(v78 + 32))(v79, v26[46], v80);
      sub_1000051EC();
      sub_1000FA4CC(v81, 255, v82, &protocol conformance descriptor for ModelManagerError);
      sub_100007894();
      v83 = swift_allocError();
      (*(v78 + 16))(v84, v79, v80);
      v98 = v83;
      swift_willThrow();

      (*(v78 + 8))(v79, v80);
    }

    sub_10000ECD8(v27, &qword_1001B9C80, &unk_1001726D0);
    sub_10000ECD8(v30, &qword_1001B9C88, &qword_1001706E0);
    sub_10001144C();

    sub_100001F00();
    sub_100008228();

    return v86(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14, a15, a16, a17, v93, v94, v95, v96, v98, a23, a24, a25, a26);
  }

  sub_10000AA54();
  sub_1000FAD20();
  sub_10000A2BC();
  if (!v40)
  {
    v65 = sub_100009DC8();
    v66(v65);
    v42 = &qword_1001B9C80;
    v43 = &unk_1001726D0;
    v41 = v38;
    goto LABEL_11;
  }

  v47 = sub_100007AB0();
  sub_100019BD8(v47);

  sub_100003914();
  sub_10000ECD8(v48, v49, v50);
  sub_10000ECD8(v39, &qword_1001B9C88, &qword_1001706E0);
  sub_100003914();
  sub_10000ECD8(v51, v52, v53);

  sub_10000EEAC();
  sub_100008228();

  return v56(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, v93, v94, v95, v96, v97, a23, a24, a25, a26);
}

uint64_t sub_1000F7FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void (*a20)(uint64_t), uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34)
{
  sub_100011AD8();
  a33 = v35;
  a34 = v36;
  sub_100012BA8();
  a32 = v34;
  v37 = v34[60];
  v38 = v34[45];
  v39 = v34[42];
  v40 = v34[38];
  v41 = v34[32];
  sub_1000F8954(v34[26], v41);

  sub_100006330();
  sub_1000FA980(v41, v42);
  v37(v39, v38, v40);
  swift_errorRetain();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v43, v44))
  {
    a20 = v34[68];
    a21 = v34[70];
    a19 = v34[39] + 8;
    v45 = swift_slowAlloc();
    swift_slowAlloc();
    v46 = sub_100003E34();
    a22 = v46;
    *v45 = 136315394;
    sub_100005D20();
    sub_1000FA4CC(v47, 255, v48, &protocol conformance descriptor for InferenceProviderDescriptor);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    v52 = sub_100004CB0();
    a20(v52);
    v53 = sub_100004A3C(v49, v51, &a22);

    *(v45 + 4) = v53;
    *(v45 + 12) = 2112;
    swift_errorRetain();
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 14) = v54;
    *v40 = v54;
    _os_log_impl(&_mh_execute_header, v43, v44, "Request failed on %s with error: %@, falling back", v45, 0x16u);
    sub_10000ECD8(v40, &qword_1001B8F68, &qword_10016FB80);
    sub_100012684();
    sub_100003324(v46);
    sub_100004B78();
    sub_100002F64();
  }

  else
  {
    v55 = v34[68];

    v56 = sub_100007660();
    v55(v56);
  }

  v57 = v34[68];
  v58 = v34[27];
  ModelManagerError.init(wrapping:)();
  sub_10000ECD8((v34 + 2), &qword_1001B9CB0, &qword_100171E70);
  v59 = sub_100003754();
  v57(v59);
  v60 = &unk_1001726D0;
  v61 = sub_100007660();
  sub_10000ECD8(v61, v62, &unk_1001726D0);
  sub_1000039A8();
  sub_100009BFC(v63, v64, v65, v58);
  sub_1000062B0();
  sub_1000FAA80();
  sub_100003324(v34 + 7);
  v66 = v34[59] + 1;
  v34[58] = v34[66];
  v34[59] = v66;
  if (v66 == v34[57])
  {
    v67 = v34[55];
    v68 = v34[56];

    sub_10001363C();
    sub_1000FAD20();
    sub_100003494(&qword_1001B9C80);
    if (v69)
    {
      v70 = v34[50];
      v71 = &qword_1001B9C88;
      v72 = &qword_1001706E0;
LABEL_19:
      sub_10000ECD8(v70, v71, v72);
LABEL_20:
      sub_100003614();
      sub_1000FAD20();
      sub_10000A2BC();
      if (!v69)
      {
        v116 = sub_100006544();
        v117(v116);
        sub_1000051EC();
        sub_1000FA4CC(v118, 255, v119, &protocol conformance descriptor for ModelManagerError);
        sub_10003DD94();
        sub_100007894();
        v120 = swift_allocError();
        v122 = sub_10000A904(v120, v121);
        v123(v122);
        v139 = &qword_1001B9C80;
        swift_willThrow();

        v124 = sub_100007228();
        v125(v124);
LABEL_26:
        sub_10000ECD8(v58, &qword_1001B9C80, &unk_1001726D0);
        sub_10000ECD8(v60, &qword_1001B9C88, &qword_1001706E0);
        v126 = sub_100003088();
        sub_10000F1A8(v126);

        sub_100001F00();
        sub_100008228();

        return v128(v127, v128, v129, v130, v131, v132, v133, v134, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v139, a22, a23, a24, a25, a26);
      }

      sub_10000ECD8(v34[46], &qword_1001B9C80, &unk_1001726D0);
      if (qword_1001B8960 == -1)
      {
LABEL_23:
        v105 = type metadata accessor for Logger();
        sub_100002FD0(v105, qword_1001BBB58);
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.fault.getter();
        if (sub_100006468(v107))
        {
          v108 = sub_100007648();
          sub_10000BF10(v108);
          sub_100009DDC(&_mh_execute_header, v109, v110, "For some reason, IP did not error but executeRequestWrapper returned nil");
          sub_10000706C();
        }

        sub_100012530();
        sub_1000051EC();
        sub_1000FA4CC(v111, 255, v112, &protocol conformance descriptor for ModelManagerError);
        v113 = sub_100008194();
        sub_10002AB60(v113, v114);
        sub_100007F60();
        v115();
        v139 = v106;
        swift_willThrow();

        goto LABEL_26;
      }

LABEL_30:
      sub_1000086EC(&qword_1001B8960);
      goto LABEL_23;
    }

    v82 = sub_100005710();
    v60 = v83;
    (*(v84 + 32))(v82);
    if (!v67)
    {
      v101 = sub_10001995C();
      v102(v101);
      goto LABEL_20;
    }

    sub_10000AA54();
    sub_1000FAD20();
    sub_10000A2BC();
    if (!v69)
    {
      v103 = sub_100009DC8();
      v104(v103);
      v71 = &qword_1001B9C80;
      v72 = &unk_1001726D0;
      v70 = v68;
      goto LABEL_19;
    }

    sub_100007AB0();
    v135 = v86;
    v136 = v85;
    v137 = v34[44];
    v138 = v34[43];
    sub_10001144C();

    sub_100003914();
    sub_10000ECD8(v87, v88, v89);
    sub_10000ECD8(&qword_1001B9C80, &qword_1001B9C88, &qword_1001706E0);
    sub_100003914();
    sub_10000ECD8(v90, v91, v92);

    sub_10000EEAC();
    sub_100008228();

    return v95(v93, v94, v95, v96, v97, v98, v99, v100, v135, v136, v137, v138, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }

  else
  {
    sub_100011A04();
    if (v73)
    {
      __break(1u);
      goto LABEL_30;
    }

    v74 = sub_10001281C();
    v75(v74);
    sub_1000402F4();
    swift_task_alloc();
    sub_100004B34();
    v34[62] = v76;
    *v76 = v77;
    sub_100002D78(v76);
    sub_100008228();

    return sub_1000253E8(v78, v79);
  }
}

uint64_t sub_1000F87D0()
{
  sub_100013464();

  sub_10000ECD8(v1 + 16, &qword_1001B9CB0, &qword_100171E70);
  v3 = sub_100005EE8();
  v4(v3);
  sub_10000ECD8(v2, &qword_1001B9C80, &unk_1001726D0);
  sub_10000ECD8(v0, &qword_1001B9C88, &qword_1001706E0);
  sub_100003324((v1 + 56));
  sub_1000194D4();

  sub_100001F00();

  return v5();
}

void sub_1000F8954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v29 - v9;
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  swift_beginAccess();
  v13 = *(a1 + 240);

  v14 = sub_1000FA5C4(a2, v13);
  v16 = v15;

  if (v16)
  {
    if (qword_1001B8960 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000641C(v17, qword_1001BBB58);
    sub_1000FA888();
    sub_1000FA888();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31[0] = v30;
      *v20 = 136315394;
      sub_100065020(&qword_1001B94F0, &unk_100172060);
      sub_1000082D4(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060, &protocol conformance descriptor for UUIDIdentifier<A>);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_1000FA980(v10, type metadata accessor for RemoteManager.InternalRemoteRequestState);
      v24 = sub_100004A3C(v21, v23, v31);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      sub_100065020(&qword_1001B8F48, &qword_10016FB30);
      sub_1000082D4(&qword_1001B8F58, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_1000FA980(v7, type metadata accessor for RemoteManager.InternalRemoteRequestState);
      v28 = sub_100004A3C(v25, v27, v31);

      *(v20 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "Lost track of active request %s %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000FA980(v7, type metadata accessor for RemoteManager.InternalRemoteRequestState);
      sub_1000FA980(v10, type metadata accessor for RemoteManager.InternalRemoteRequestState);
    }
  }

  else
  {
    swift_beginAccess();
    sub_1000FA790(v14, v12);
    sub_1000FA980(v12, type metadata accessor for RemoteManager.InternalRemoteRequestState);
    swift_endAccess();
  }
}

uint64_t sub_1000F8D48()
{
  sub_100002BAC();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for RemoteManager.StreamBacking(0);
  v1[6] = v5;
  sub_100002F04(v5);
  v1[7] = sub_10000F0C0();
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for RequestKey();
  v1[9] = v6;
  sub_100002F44(v6);
  v1[10] = v7;
  v1[11] = sub_100002C58();
  v8 = type metadata accessor for XPCSession.InitializationOptions();
  sub_100002F04(v8);
  v1[12] = sub_100002C58();
  v9 = sub_100065020(&qword_1001BBDE0, &qword_100172670);
  sub_100002F04(v9);
  v1[13] = sub_100002C58();
  v10 = type metadata accessor for XPCEndpoint();
  v1[14] = v10;
  sub_100002F44(v10);
  v1[15] = v11;
  v1[16] = sub_10000F0C0();
  v1[17] = swift_task_alloc();
  v12 = sub_100002C10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000F8EC4()
{
  sub_100005EA4();
  v2 = v0[13];
  v1 = v0[14];
  InferenceProviderRequestResult.directInferenceProviderEndpoint.getter();
  sub_10000323C(v2, 1, v1);
  if (v3)
  {
    sub_10000ECD8(v0[13], &qword_1001BBDE0, &qword_100172670);
    if (qword_1001B8960 != -1)
    {
      sub_1000086EC(&qword_1001B8960);
    }

    v4 = type metadata accessor for Logger();
    sub_100002FD0(v4, qword_1001BBB58);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = sub_100007648();
      *v7 = 0;
      sub_10000A4A4();
      _os_log_impl(v8, v9, v10, v11, v7, 2u);
      sub_100002F64();
    }

    type metadata accessor for ModelManagerError();
    sub_1000051EC();
    sub_1000FA4CC(v12, 255, v13, &protocol conformance descriptor for ModelManagerError);
    sub_100007894();
    v14 = swift_allocError();
    sub_10002AB60(v14, v15);
    sub_100006098();
    (*(v16 + 104))();
    swift_willThrow();

    sub_100001F00();

    return v18();
  }

  else
  {
    (*(v0[15] + 32))(v0[17], v0[13], v0[14]);
    type metadata accessor for XPCSession();
    sub_10002B0C0();
    v17();
    static XPCSession.InitializationOptions.none.getter();
    v0[18] = XPCSession.__allocating_init(endpoint:targetQueue:options:cancellationHandler:)();
    type metadata accessor for InferenceProviderXPCSender();

    v20 = InferenceProviderXPCSender.__allocating_init(session:)();
    v21 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
    v0[19] = v20;
    v0[20] = v21;
    RequestMetadata.requestKey.getter();
    v22 = sub_100005204();
    v0[21] = v22;
    *v22 = v0;
    v22[1] = sub_1000F9228;
    v23 = sub_1000031B8(v0[11]);

    return v24(v23);
  }
}

uint64_t sub_1000F9228()
{
  sub_10001881C();
  sub_100003884();
  sub_100018E0C();
  v2 = *v1;
  sub_100002B9C();
  *v3 = v2;

  sub_10000CC7C();
  if (v0)
  {
  }

  v4 = sub_100003754();
  v5(v4);
  sub_10000CC50();
  sub_100007BB8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000F93AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 152);
  v5 = *(v3 + 64);
  v6 = *(v3 + 48);
  RequestMetadata.id.getter();
  InferenceProviderRequestResult.firstResponse.getter();
  *(v5 + v6[6]) = v4;
  *(v5 + v6[7]) = 0;
  v7 = (v5 + v6[8]);
  *v7 = sub_1000FA880;
  v7[1] = v4;
  v8 = sub_1000071D0();
  *(v3 + 176) = sub_100065020(v8, v9);
  sub_1000FA888();

  *(v3 + 184) = GreedyBufferingAsyncSequence.__allocating_init(backing:fillBuffer:onTermination:)();
  type metadata accessor for ClientData();
  sub_1000FA4CC(&qword_1001BBDF0, 255, type metadata accessor for RemoteManager.StreamBacking, &unk_10017280C);
  *(v3 + 192) = default argument 0 of GreedyBufferingAsyncSequence.startBuffering(fromBufferingTask:)() & 1;
  sub_100006570();
  sub_1000082D4(v10, v11, v12, v13);
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F959C, v15, v14);
}

uint64_t sub_1000F959C()
{
  sub_100002BAC();
  dispatch thunk of GreedyBufferingAsyncSequence.startBuffering(fromBufferingTask:)();
  sub_10000CC50();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1000F9604()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[14];
  v5 = v0[8];
  v6 = v0[2];
  v6[3] = v0[22];
  v6[4] = sub_1000082D4(&qword_1001BBE00, &qword_1001BBDE8, &qword_100172678, &protocol conformance descriptor for GreedyBufferingAsyncSequence<A, B>);

  *v6 = v1;
  sub_100003C08();
  sub_1000FA980(v5, v7);
  (*(v3 + 8))(v2, v4);

  sub_100001F00();

  return v8();
}

double sub_1000F9740(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  if (qword_1001B8960 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000641C(v5, qword_1001BBB58);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Invalidating direct InferenceProvider connection.", v8, 2u);
  }

  v9 = type metadata accessor for TaskPriority();
  sub_100009BFC(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;

  sub_1000652FC();

  return result;
}

uint64_t sub_1000F98E4()
{
  v3 = (&async function pointer to dispatch thunk of InferenceProviderXPCSender.invalidate() + async function pointer to dispatch thunk of InferenceProviderXPCSender.invalidate());
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;

  return v3();
}

uint64_t sub_1000F9988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = type metadata accessor for RequestKey();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_100065020(&qword_1001BBE08, &unk_100172690);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  sub_100065020(&qword_1001BA5F0, &qword_100171290);
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for ClientData();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for RemoteManager.StreamBacking(0);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  sub_100065020(&qword_1001BBDE8, &qword_100172678);
  sub_1000082D4(&qword_1001BBDF8, &qword_1001BBDE8, &qword_100172678, &protocol conformance descriptor for GreedyBufferingAsyncSequence<A, B>);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[23] = v8;
  v3[24] = v7;

  return _swift_task_switch(sub_1000F9BF8, v8, v7);
}

uint64_t sub_1000F9BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v11 = v10[22];
  v12 = v10[19];
  dispatch thunk of GreedyBufferingAsyncSequence.backing.getter();
  v13 = *(v11 + *(v12 + 28));
  sub_100003C08();
  sub_1000FA980(v11, v14);
  if (v13)
  {
    v16 = v10[19];
    v15 = v10[20];
    dispatch thunk of GreedyBufferingAsyncSequence.backing.getter();
    v10[25] = *(v15 + *(v16 + 24));

    sub_100003C08();
    sub_1000FA980(v15, v17);
    RequestMetadata.requestKey.getter();
    sub_100005204();
    sub_100004B34();
    v10[26] = v18;
    *v18 = v19;
    v18[1] = sub_1000F9EDC;
    sub_100006378();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  else
  {
    v29 = v10[21];
    v31 = v10[15];
    v30 = v10[16];
    v32 = dispatch thunk of GreedyBufferingAsyncSequence.backing.modify();
    *(v33 + *(v12 + 28)) = 1;
    v32(v10 + 2, 0);
    dispatch thunk of GreedyBufferingAsyncSequence.backing.getter();
    sub_1000FAD20();
    sub_100003C08();
    sub_1000FA980(v29, v34);
    sub_10000323C(v31, 1, v30);
    if (v35)
    {
      v36 = v10[6];
      sub_10000ECD8(v10[15], &qword_1001BA5F0, &qword_100171290);
      *v36 = 0;
      v37 = enum case for GreedyBufferResult.termination<A, B>(_:);
      sub_100065020(&qword_1001BBE10, &unk_1001726A0);
      sub_100005680();
      (*(v38 + 104))(v36, v37);
    }

    else
    {
      v39 = v10[6];
      v40 = *(v10[17] + 32);
      (v40)(v10[18], v10[15], v10[16]);
      sub_100019274();
      v40();
      v41 = enum case for GreedyBufferResult.single<A, B>(_:);
      sub_100065020(&qword_1001BBE10, &unk_1001726A0);
      sub_100005680();
      (*(v42 + 104))(v39, v41);
    }

    sub_1000188CC();

    sub_100001F00();
    sub_100006378();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10);
  }
}

uint64_t sub_1000F9EDC()
{
  sub_1000094B0();
  sub_10000636C();
  sub_100018E0C();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  v4 = sub_100005EE8();
  v5(v4);

  sub_10000CC7C();
  sub_100006378();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000FA06C()
{
  sub_10001881C();
  sub_100003884();
  GreedyBufferResult.erasingErrorType()();
  v0 = sub_100001F70();
  v1(v0);
  sub_1000188CC();

  sub_100001F00();
  sub_100007BB8();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000FA120()
{
  sub_10001881C();
  sub_100003884();
  v1 = *(v0 + 48);
  type metadata accessor for ModelManagerError();
  sub_1000051EC();
  sub_1000FA4CC(v2, 255, v3, &protocol conformance descriptor for ModelManagerError);
  v4 = sub_100008194();
  ModelManagerError.init(wrapping:)();
  *v1 = v4;
  v5 = enum case for GreedyBufferResult.termination<A, B>(_:);
  sub_100065020(&qword_1001BBE10, &unk_1001726A0);
  sub_100005680();
  (*(v6 + 104))(v1, v5);
  sub_1000188CC();

  sub_100001F00();
  sub_100007BB8();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

void *sub_1000FA248()
{
  sub_100003324(v0 + 14);
  sub_100003324(v0 + 19);

  sub_100003324(v0 + 25);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000FA2A0()
{
  sub_1000FA248();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1000FA338(uint64_t a1)
{
  sub_1000FA41C(319, &qword_1001BBD48, &type metadata accessor for Session, &protocol witness table for Session);
  if (v1 <= 0x3F)
  {
    sub_1000FA41C(319, &unk_1001BBD50, &type metadata accessor for RequestMetadata, &protocol witness table for RequestMetadata);
    if (v2 <= 0x3F)
    {
      type metadata accessor for RemoteInterfaceInformation();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000FA41C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = type metadata accessor for UUIDIdentifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000FA4CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000FA514()
{
  result = qword_1001BBDA0;
  if (!qword_1001BBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BBDA0);
  }

  return result;
}

uint64_t sub_1000FA588(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  sub_1000FB11C(*v2, v2[1]);
  return v3;
}

uint64_t sub_1000FA5C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_1000FA888();
      type metadata accessor for Session();
      if (static UUIDIdentifier.== infix(_:_:)() & 1) != 0 && (type metadata accessor for RequestMetadata(), (static UUIDIdentifier.== infix(_:_:)()))
      {
        v11 = static RemoteInterfaceInformation.== infix(_:_:)();
        sub_1000FA980(v6, type metadata accessor for RemoteManager.InternalRemoteRequestState);
        if (v11)
        {
          return v8;
        }
      }

      else
      {
        sub_1000FA980(v6, type metadata accessor for RemoteManager.InternalRemoteRequestState);
      }

      ++v8;
      v9 += v10;
    }

    while (v7 != v8);
  }

  return 0;
}

void sub_1000FA790(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000FAAD4(v5);
    v5 = v10;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(type metadata accessor for RemoteManager.InternalRemoteRequestState(0) - 8);
    v8 = *(v7 + 72);
    v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v8 * a1;
    sub_1000FAAE8(v9, a2);
    sub_100070944(v9 + v8, v6 - 1 - a1, v9);
    *(v5 + 16) = v6 - 1;
    *v2 = v5;
  }
}

uint64_t sub_1000FA888()
{
  sub_10000C1C0();
  v1(0);
  sub_100005680();
  v2 = sub_1000062B0();
  v3(v2);
  return v0;
}

uint64_t sub_1000FA8DC()
{
  sub_100001ED0();
  v3 = v2;
  v5 = v4;
  swift_task_alloc();
  sub_100004B34();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_10006F558;

  return sub_1000F9988(v5, v3, v0);
}

uint64_t sub_1000FA980(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002C00();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000FA9D8()
{
  sub_100001ED0();
  swift_task_alloc();
  sub_100004B34();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_10006FA64;
  sub_1000135D0();

  return sub_1000F98E4();
}

uint64_t sub_1000FAA80()
{
  sub_10000C1C0();
  sub_100065020(v1, v2);
  sub_100005680();
  v3 = sub_1000062B0();
  v4(v3);
  return v0;
}

uint64_t sub_1000FAAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FAB54()
{
  sub_1000094B0();
  sub_10000636C();
  v1 = sub_100065020(&qword_1001BBE30, &qword_1001726E0);
  sub_100002F04(v1);
  swift_task_alloc();
  sub_100004B34();
  *(v0 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_10006FA64;
  sub_1000135D0();
  sub_100006378();

  return sub_1000F50BC(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000FAC44()
{
  sub_100001ED0();
  v3 = v2;
  v4 = sub_100065020(&qword_1001BBE30, &qword_1001726E0);
  sub_100002F04(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10006FA64;

  return sub_1000F5468(v3, v0 + v6);
}

uint64_t sub_1000FAD20()
{
  sub_10000C1C0();
  sub_100065020(v1, v2);
  sub_100005680();
  v3 = sub_1000062B0();
  v4(v3);
  return v0;
}

void sub_1000FAD9C(uint64_t a1)
{
  sub_1000FA41C(319, &unk_1001BBD50, &type metadata accessor for RequestMetadata, &protocol witness table for RequestMetadata);
  if (v1 <= 0x3F)
  {
    sub_1000FAE7C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for InferenceProviderXPCSender();
      if (v3 <= 0x3F)
      {
        sub_1000FAED4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000FAE7C(uint64_t a1)
{
  if (!qword_1001BBEB8)
  {
    type metadata accessor for ClientData();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BBEB8);
    }
  }
}

void sub_1000FAED4(uint64_t a1)
{
  if (!qword_1001BBEC0)
  {
    sub_10006A614(&unk_1001BBEC8, "py");
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BBEC0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for RemoteManager.InternalRemoteRequestState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1000FB018()
{
  result = qword_1001BBF08;
  if (!qword_1001BBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BBF08);
  }

  return result;
}

unint64_t sub_1000FB070()
{
  result = qword_1001BBF10;
  if (!qword_1001BBF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BBF10);
  }

  return result;
}

unint64_t sub_1000FB0C8()
{
  result = qword_1001BBF18;
  if (!qword_1001BBF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BBF18);
  }

  return result;
}

uint64_t sub_1000FB11C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

double sub_1000FB13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v24 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100065020(&qword_1001BC098, &qword_100172948);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  (*(v12 + 16))(&v20 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v20;
  *(v16 + 24) = v17;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_100022A38;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000E6BC;
  aBlock[3] = &unk_1001B1868;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10000E784(&qword_1001B9CE8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100065020(&unk_1001BD3B0, &qword_100172950);
  sub_1000082D4(&qword_1001B9CF0, &unk_1001BD3B0, &qword_100172950, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v7, v5);
  (*(v8 + 8))(v10, v22);

  return result;
}

double sub_1000FB4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v24 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100065020(&qword_1001B90F8, &qword_10016FD70);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  (*(v12 + 16))(&v20 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v20;
  *(v16 + 24) = v17;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_10000D9DC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000E6BC;
  aBlock[3] = &unk_1001B18E0;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10000E784(&qword_1001B9CE8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100065020(&unk_1001BD3B0, &qword_100172950);
  sub_1000082D4(&qword_1001B9CF0, &unk_1001BD3B0, &qword_100172950, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v7, v5);
  (*(v8 + 8))(v10, v22);

  return result;
}

uint64_t sub_1000FB88C()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BBF20);
  sub_10000641C(v0, qword_1001BBF20);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void sub_1000FB8FC()
{
  v0 = [objc_allocWithZone(RBSProcessStateDescriptor) init];
  [v0 setValues:1];
  sub_1000FC998(&off_1001AFF70, v0);
  qword_1001BE8C0 = v0;
}

uint64_t sub_1000FB95C()
{
  v1 = v0;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002BDC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100002B8C();
  v7 = v6 - v5;
  v8 = type metadata accessor for OS_dispatch_queue_concurrent.Attributes();
  __chkstk_darwin(v8);
  sub_100002B8C();
  v9 = type metadata accessor for DispatchQoS();
  v10 = sub_100002F04(v9);
  __chkstk_darwin(v10);
  sub_100002B8C();
  swift_defaultActor_initialize();
  CountedSet.init(arrayLiteral:)();
  v18 = OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider_queue;
  sub_10000E2C0(0, &qword_1001BC148, OS_dispatch_queue_concurrent_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000E784(&qword_1001BC150, &type metadata accessor for OS_dispatch_queue_concurrent.Attributes, &protocol conformance descriptor for OS_dispatch_queue_concurrent.Attributes);
  sub_100065020(&qword_1001BC158, &qword_1001729D0);
  sub_1000082D4(&qword_1001BC160, &qword_1001BC158, &qword_1001729D0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v19);
  *(v0 + v18) = OS_dispatch_queue_concurrent.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for RunningBoardProvider(0);
  sub_10000870C();
  sub_10000E784(v11, v12, &unk_1001728F8);
  WorkQueue.init()();
  v13 = OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider____lazy_storage___processEventStream;
  v14 = sub_100065020(&qword_1001B9CB8, &qword_1001728F0);
  sub_100009BFC(v1 + v13, 1, 1, v14);
  v15 = [objc_allocWithZone(RBSProcessMonitor) init];
  *(v1 + 112) = v15;
  aBlock[4] = sub_1000FBDB8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D7E4;
  aBlock[3] = &unk_1001B1A98;
  v16 = _Block_copy(aBlock);

  [v15 updateConfiguration:v16];
  _Block_release(v16);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

id sub_1000FBD30(id a1)
{
  if (qword_1001B8970 != -1)
  {
    swift_once();
  }

  [a1 setStateDescriptor:qword_1001BE8C0];

  return [a1 setServiceClass:33];
}

uint64_t sub_1000FBDBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100065020(&qword_1001BC128, &qword_1001729B0);
  sub_100002BDC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v19[-v7];
  v9 = sub_100065020(&qword_1001BC130, &qword_1001729B8);
  v10 = sub_100002F04(v9);
  v11 = __chkstk_darwin(v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v19[-v14];
  v16 = OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider____lazy_storage___processEventStream;
  swift_beginAccess();
  sub_1000FCA04(v1 + v16, v15);
  v17 = sub_100065020(&qword_1001B9CB8, &qword_1001728F0);
  if (sub_10000C6C0(v15, 1, v17) != 1)
  {
    return (*(*(v17 - 8) + 32))(a1, v15, v17);
  }

  sub_10000ED30(v15, &qword_1001BC130, &qword_1001729B8);
  (*(v5 + 104))(v8, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(*(v17 - 8) + 16))(v13, a1, v17);
  sub_100009BFC(v13, 0, 1, v17);
  swift_beginAccess();
  sub_1000FCA7C(v13, v1 + v16);
  return swift_endAccess();
}

void sub_1000FC050(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BC138, &qword_1001729C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 112);
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000FCAEC;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1000FCC04;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D7E4;
  aBlock[3] = &unk_1001B1A20;
  v12 = _Block_copy(aBlock);

  [v8 updateConfiguration:v12];
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }
}

void sub_1000FC278(void *a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BC138, &qword_1001729C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a2, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_10001CD58;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001CCB8;
  aBlock[3] = &unk_1001B1A70;
  v10 = _Block_copy(aBlock);

  [a1 setUpdateHandler:v10];
  _Block_release(v10);
}

uint64_t sub_1000FC428()
{

  if (qword_1001B8968 != -1)
  {
    sub_100005224(&qword_1001B8968);
  }

  v1 = type metadata accessor for Logger();
  sub_100002FD0(v1, qword_1001BBF20);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 24);
  if (v4)
  {
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = sub_100003788();
    *v7 = 67109378;
    *(v7 + 4) = v6;
    *(v7 + 8) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 10) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get RBSProcessHandle for %d: %@. Interpreting as process terminated", v7, 0x12u);
    sub_10000ED30(v8, &qword_1001B8F68, &qword_10016FB80);
    sub_100002BB8(v8);
    sub_100002BB8(v7);
  }

  else
  {
  }

  sub_100001F7C();

  return v10(3);
}

uint64_t sub_1000FC5CC()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider__monitoredPids;
  sub_100065020(&qword_1001BC0B0, &qword_100172970);
  sub_1000055EC();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider__workQueue;
  sub_100065020(&qword_1001BC0A8, &qword_100172968);
  sub_1000055EC();
  (*(v4 + 8))(v0 + v3);
  sub_10000ED30(v0 + OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider____lazy_storage___processEventStream, &qword_1001BC130, &qword_1001729B8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000FC6AC()
{
  sub_1000FC5CC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for RunningBoardProvider(uint64_t a1)
{
  result = qword_1001BBF68;
  if (!qword_1001BBF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FC72C(uint64_t a1)
{
  sub_1000FC848();
  if (v1 <= 0x3F)
  {
    sub_1000FC8A0(319);
    if (v2 <= 0x3F)
    {
      sub_1000FC934(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000FC848()
{
  if (!qword_1001BBF78)
  {
    v0 = type metadata accessor for CountedSet();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BBF78);
    }
  }
}

void sub_1000FC8A0(uint64_t a1)
{
  if (!qword_1001BBF80)
  {
    type metadata accessor for RunningBoardProvider(255);
    sub_10000E784(&qword_1001BBF88, type metadata accessor for RunningBoardProvider, &unk_1001728F8);
    v1 = type metadata accessor for WorkQueue();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BBF80);
    }
  }
}

void sub_1000FC934(uint64_t a1)
{
  if (!qword_1001BBF90)
  {
    sub_10006A614(&qword_1001B9CB8, &qword_1001728F0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BBF90);
    }
  }
}

void sub_1000FC998(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setEndowmentNamespaces:isa];
}

uint64_t sub_1000FCA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BC130, &qword_1001729B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FCA7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BC130, &qword_1001729B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000FCAEC(void *a1)
{
  v3 = sub_100065020(&qword_1001BC138, &qword_1001729C0);
  sub_100002F04(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_1000FC278(a1, v5);
}

uint64_t sub_1000FCB64()
{
  sub_100065020(&qword_1001BC138, &qword_1001729C0);
  sub_1000055EC();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000FCC08()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BC168);
  sub_10000641C(v0, qword_1001BC168);
  return generalLogHandle.getter();
}

uint64_t sub_1000FCC88()
{
  v0 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  sub_100065A60(v0, qword_1001BE8E0);
  sub_10000641C(v0, qword_1001BE8E0);
  type metadata accessor for Assertion();
  return UUIDIdentifier.init()();
}

uint64_t sub_1000FCCF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000FCD18, 0, 0);
}

uint64_t sub_1000FCD18()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  sub_100003370(v1, v2);
  v8 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1000FCE60;
  v5 = v0[2];
  v6 = v0[3];

  return v8(0xD00000000000001CLL, 0x8000000100177440, v5, v6, v2, v3);
}

uint64_t sub_1000FCE60()
{
  sub_100002BAC();
  sub_100003960();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;

  return _swift_task_switch(sub_1000FCF5C, 0, 0);
}

void sub_1000FCF5C()
{
  v13 = v0;
  if ((*(v0 + 56) & 1) == 0)
  {
    if ((*(v0 + 48) & 0x8000000000000000) == 0)
    {
      __break(1u);
      return;
    }

    v1 = type metadata accessor for Logger();
    v2 = *(v1 - 8);
    v3 = swift_task_alloc();
    generalLogHandle.getter();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v11 = *(v0 + 48);
      v7 = *(v0 + 16);
      v6 = *(v0 + 24);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_100004A3C(v7, v6, &v12);
      *(v8 + 12) = 2048;
      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "Illegal trial factor %s: %lld", v8, 0x16u);
      sub_100003324(v9);
    }

    (*(v2 + 8))(v3, v1);
  }

  v10 = *(v0 + 8);

  v10(0, 1);
}

uint64_t sub_1000FD15C()
{
  sub_100002BAC();
  v2 = v1;
  v0[2] = v3;
  v0[3] = v1;
  type metadata accessor for RequestPriority();
  v0[4] = swift_task_alloc();
  type metadata accessor for AssetPolicy();
  v0[5] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1000FD260;

  return sub_1000FCCF4(0xD00000000000001BLL, 0x8000000100177400, v2);
}

uint64_t sub_1000FD260()
{
  v1 = *v0;
  v2 = *v0;
  sub_100003960();
  *v3 = v2;
  v4 = *v0;
  sub_100003960();
  *v5 = v4;
  *(v2 + 56) = v6;
  *(v2 + 80) = v7;

  v8 = swift_task_alloc();
  *(v2 + 64) = v8;
  *v8 = v4;
  v8[1] = sub_1000FD3C0;
  v9 = *(v1 + 24);

  return sub_1000FCCF4(0xD00000000000001BLL, 0x8000000100177420, v9);
}

uint64_t sub_1000FD3C0()
{
  sub_100002BAC();
  sub_100003960();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;
  *(v1 + 81) = v4;

  return _swift_task_switch(sub_1000FD4BC, 0, 0);
}

uint64_t sub_1000FD4BC(uint64_t a1)
{
  v2 = *(v1 + 16);
  default argument 0 of Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
  default argument 2 of Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
  Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
  v3 = type metadata accessor for Policy();
  sub_100009BFC(v2, 0, 1, v3);

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1000FD5F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001B8980 != -1)
  {
    swift_once();
  }

  v2 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v3 = sub_10000641C(v2, qword_1001BE8E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000FD6A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000FD748;

  return sub_1000FD15C();
}

uint64_t sub_1000FD748()
{
  sub_100002BAC();
  v1 = *v0;
  sub_100003960();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void *sub_1000FD8B4(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t *, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = *(a3(0) - 8);
  v10 = a4(&v12, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v5, a1);
  sub_100007F18(v12);
  if (v10 != v5)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

uint64_t sub_1000FD99C()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BC218);
  v1 = sub_10000641C(v0, qword_1001BC218);
  v2 = *(v0 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  generalLogHandle.getter();
  return (*(v2 + 32))(v1, v4, v0);
}

uint64_t sub_1000FDA80(int a1)
{
  v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v2 + 16) = 1024;
  bzero((v2 + 32), 0x400uLL);
  if (proc_pidpath(a1, (v2 + 32), 0x400u) >= 1)
  {
    return sub_1000FDB04(v2);
  }

  return 0;
}

uint64_t sub_1000FDB04(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
LABEL_6:
      v5 = static String._fromUTF8Repairing(_:)();

      return v5;
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FDB8C(uint64_t a1)
{
  *(v2 + 152) = v1;
  *(v2 + 192) = a1;
  return sub_10000396C(a1, v1);
}

uint64_t sub_1000FDBA8()
{
  v3 = *(v1 + 192);
  sub_100003370((*(v1 + 152) + 112), *(*(v1 + 152) + 136));
  sub_100021CF4(v3, v1 + 16);
  v4 = *(v1 + 32);
  if (v4 == 1)
  {
    if (qword_1001B8988 != -1)
    {
      sub_100005244(&qword_1001B8988);
    }

    v5 = type metadata accessor for Logger();
    sub_100002FD0(v5, qword_1001BC218);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (!sub_100002F80(v7))
    {
      goto LABEL_8;
    }

    v8 = sub_100005730();
    sub_10000A300(v8, 1.5047e-36);
    v11 = "Failed to check assertion allowed: failed to get process handle for %d";
    goto LABEL_6;
  }

  if (*(v1 + 16))
  {
    if (v4)
    {
      v16 = *(v1 + 24);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_58;
  }

  v4 = *(v1 + 48);
  if (v4)
  {
    v16 = *(v1 + 40);
LABEL_18:
    *(v1 + 160) = v4;
    *(v1 + 168) = v16;
    *(v1 + 176) = *(*(v1 + 152) + 152);

    sub_1000071A8();

    return _swift_task_switch(v17, v18, v19);
  }

  v17 = MobileGestalt_get_current_device();
  if (!v17)
  {
    __break(1u);
    return _swift_task_switch(v17, v18, v19);
  }

  v20 = v17;
  sub_1000FF14C(v1 + 16);
  v0 = MobileGestalt_copy_releaseType_obj();

  if (!v0)
  {
    goto LABEL_28;
  }

  v21 = 0x6C616E7265746E49;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == 0x6C616E7265746E49 && v24 == 0xE800000000000000)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
LABEL_28:
      if (qword_1001B8988 != -1)
      {
        sub_100005244(&qword_1001B8988);
      }

      v26 = type metadata accessor for Logger();
      sub_100002FD0(v26, qword_1001BC218);
      v6 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (!sub_100002F80(v27))
      {
        goto LABEL_8;
      }

      v8 = sub_100005730();
      sub_10000A300(v8, 1.5047e-36);
      v11 = "Not an internal build, assertion from process %d denied";
      goto LABEL_6;
    }
  }

  sub_1000FDA80(*(v1 + 192));
  if (v28)
  {
    if (sub_10001147C() || sub_10000A668() || (sub_100002CBC(), String.lowercased()(), v29._countAndFlagsBits = sub_100012B00(), v30 = String.hasSuffix(_:)(v29), , v30) || (v2 = 0xD000000000000010, *(v1 + 72) = v0, *(v1 + 80) = v21, *(v1 + 136) = 0xD000000000000010, *(v1 + 144) = 0x80000001001774A0, sub_1000E17B4(), (sub_100009C98(v1 + 136, &type metadata for String) & 1) != 0) || (sub_100007AC8("AppleInternal/Tests"), (sub_100009C98(v1 + 136, &type metadata for String) & 1) != 0))
    {
      if (qword_1001B8988 != -1)
      {
        sub_100005244(&qword_1001B8988);
      }

      v31 = type metadata accessor for Logger();
      sub_100002FD0(v31, qword_1001BC218);

      v32 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_100007DC8();
      if (!sub_100019A64())
      {
        goto LABEL_50;
      }

      goto LABEL_42;
    }

    *(v1 + 96) = &type metadata for ModelManager;
    *(v1 + 104) = sub_1000207F8();
    *(v1 + 72) = 0;
    v43 = isFeatureEnabled(_:)();
    sub_100003324((v1 + 72));
    if ((v43 & 1) == 0)
    {
      if (qword_1001B8988 != -1)
      {
        sub_100005244(&qword_1001B8988);
      }

      v45 = type metadata accessor for Logger();
      sub_100002FD0(v45, qword_1001BC218);

      v6 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      sub_100007DC8();
      if (!sub_100019A64())
      {

        goto LABEL_9;
      }

      swift_slowAlloc();
      sub_10000359C();
      sub_10000EF08(1.5047e-36);
      v46 = sub_100002CBC();
      sub_100004A3C(v46, v47, v48);
      sub_100005F2C();

      MEMORY[0xD00000000000001A] = v0;
      sub_100003AB0();
      _os_log_impl(v49, v50, v51, v52, v53, 0x12u);
      sub_100002C88();
      v12 = 0xD000000000000010;
      goto LABEL_7;
    }

    if (qword_1001B8988 == -1)
    {
LABEL_49:
      v44 = type metadata accessor for Logger();
      sub_100002FD0(v44, qword_1001BC218);

      v32 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_100007DC8();
      if (!sub_100019A64())
      {
LABEL_50:

        goto LABEL_51;
      }

LABEL_42:
      sub_100007698();
      sub_10000359C();
      *v2 = 136315138;
      v33 = sub_100002CBC();
      sub_100004A3C(v33, v34, v35);
      sub_100005F2C();

      *(v2 + 4) = v0;
      sub_100003AB0();
      _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
      sub_100002C88();
      sub_100002BB8(v2);

LABEL_51:
      v13 = 1;
      goto LABEL_10;
    }

LABEL_58:
    sub_100005244(&qword_1001B8988);
    goto LABEL_49;
  }

  if (qword_1001B8988 != -1)
  {
    sub_100005244(&qword_1001B8988);
  }

  v41 = type metadata accessor for Logger();
  sub_100002FD0(v41, qword_1001BC218);
  v6 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (!sub_100002F80(v42))
  {
    goto LABEL_8;
  }

  v8 = sub_100005730();
  sub_10000A300(v8, 1.5047e-36);
  v11 = "cannot get executable Path assertion from process %d denied";
LABEL_6:
  sub_100002DA4(&_mh_execute_header, v9, v10, v11);
  v12 = v8;
LABEL_7:
  sub_100002BB8(v12);
LABEL_8:

LABEL_9:
  v13 = 0;
LABEL_10:
  v14 = *(v1 + 8);

  return v14(v13);
}

uint64_t sub_1000FE1C8()
{
  sub_100002BAC();
  v1 = *(v0 + 176);
  swift_beginAccess();
  *(v0 + 184) = *(v1 + 304);

  sub_1000071A8();

  return _swift_task_switch(v2, v3, v4);
}

id sub_1000FE24C()
{
  v51 = v0;
  *(v0 + 72) = *(v0 + 168);
  v1 = *(v0 + 184);
  *(v0 + 80) = *(v0 + 160);
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 72;
  v3 = sub_100009A9C(sub_10001609C, v2, v1);

  if (v3)
  {
    sub_1000FF14C(v0 + 16);
    if (qword_1001B8988 != -1)
    {
      sub_100005244(&qword_1001B8988);
    }

    v4 = type metadata accessor for Logger();
    sub_100002FD0(v4, qword_1001BC218);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 160);
      v7 = *(v0 + 168);
      sub_100007698();
      sub_10000359C();
      sub_100003DF0();
      *v2 = 136315138;
      v9 = sub_100004A3C(v7, v8, &v50);

      *(v2 + 4) = v9;
      v10 = "%s allowed to hold assertion";
      v11 = v6;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v5, v11, v10, v2, 0xCu);
      sub_100002C88();
      sub_100002BB8(v2);

LABEL_45:
      v35 = 1;
      goto LABEL_46;
    }

LABEL_44:

    goto LABEL_45;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v13 = sub_100005F2C();
  sub_1000FF14C(v13);
  v14 = MobileGestalt_copy_releaseType_obj();

  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = 0x6C616E7265746E49;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v2 == 0x6C616E7265746E49 && v17 == 0xE800000000000000)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
LABEL_13:
      if (qword_1001B8988 != -1)
      {
        sub_100005244(&qword_1001B8988);
      }

      v19 = type metadata accessor for Logger();
      sub_100002FD0(v19, qword_1001BC218);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (!sub_100002F80(v21))
      {
        goto LABEL_37;
      }

      v22 = sub_100005730();
      sub_10000A300(v22, 1.5047e-36);
      v25 = "Not an internal build, assertion from process %d denied";
      goto LABEL_35;
    }
  }

  sub_1000FDA80(*(v0 + 192));
  if (v26)
  {
    if (sub_10001147C() || sub_10000A668() || (sub_100002CBC(), LOBYTE(v14) = String.lowercased()()._object, v27._countAndFlagsBits = sub_100012B00(), v2 = String.hasSuffix(_:)(v27), , (v2 & 1) != 0) || (v2 = 0xD000000000000010, *(v0 + 72) = v15, *(v0 + 80) = v17, *(v0 + 136) = 0xD000000000000010, *(v0 + 144) = 0x80000001001774A0, LOBYTE(v14) = sub_1000E17B4(), (sub_100009C98(v0 + 136, &type metadata for String) & 1) != 0) || (sub_100007AC8("AppleInternal/Tests"), (sub_100009C98(v0 + 136, &type metadata for String) & 1) != 0))
    {
      if (qword_1001B8988 != -1)
      {
        sub_100005244(&qword_1001B8988);
      }

      v28 = type metadata accessor for Logger();
      sub_100002FD0(v28, qword_1001BC218);

      v5 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_100007DC8();
      if (!sub_100019A64())
      {
        goto LABEL_44;
      }

      sub_100007698();
      sub_10000359C();
      sub_100003DF0();
      *v2 = 136315138;
      v29 = sub_100002CBC();
      sub_100004A3C(v29, v30, v31);
      sub_100005F2C();

      *(v2 + 4) = v15;
      v10 = "allowed executablePath %s";
    }

    else
    {
      *(v0 + 96) = &type metadata for ModelManager;
      *(v0 + 104) = sub_1000207F8();
      *(v0 + 72) = 0;
      LOBYTE(v14) = isFeatureEnabled(_:)();
      sub_100003324((v0 + 72));
      if ((v14 & 1) == 0)
      {
        if (qword_1001B8988 != -1)
        {
          sub_100005244(&qword_1001B8988);
        }

        v41 = type metadata accessor for Logger();
        sub_100002FD0(v41, qword_1001BC218);

        v20 = Logger.logObject.getter();
        static os_log_type_t.fault.getter();
        sub_100007DC8();
        if (!sub_100019A64())
        {

          goto LABEL_38;
        }

        swift_slowAlloc();
        sub_10000359C();
        sub_100003DF0();
        sub_10000EF08(1.5047e-36);
        v42 = sub_100002CBC();
        sub_100004A3C(v42, v43, v44);
        sub_100005F2C();

        MEMORY[0xD00000000000001A] = v15;
        sub_100003AB0();
        _os_log_impl(v45, v46, v47, v48, v49, 0x12u);
        sub_100002C88();
        v34 = 0xD000000000000010;
        goto LABEL_36;
      }

      if (qword_1001B8988 != -1)
      {
        sub_100005244(&qword_1001B8988);
      }

      v36 = type metadata accessor for Logger();
      sub_100002FD0(v36, qword_1001BC218);

      v5 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_100007DC8();
      if (!sub_100019A64())
      {
        goto LABEL_44;
      }

      sub_100007698();
      sub_10000359C();
      sub_100003DF0();
      MEMORY[0xD000000000000010] = 136315138;
      v37 = sub_100002CBC();
      sub_100004A3C(v37, v38, v39);
      sub_100005F2C();

      MEMORY[0xD000000000000014] = v15;
      v10 = "Allowlist Blocked: Allowing typically blocked executablePath %s";
    }

    v11 = v14;
    goto LABEL_30;
  }

  if (qword_1001B8988 != -1)
  {
    sub_100005244(&qword_1001B8988);
  }

  v32 = type metadata accessor for Logger();
  sub_100002FD0(v32, qword_1001BC218);
  v20 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (!sub_100002F80(v33))
  {
    goto LABEL_37;
  }

  v22 = sub_100005730();
  sub_10000A300(v22, 1.5047e-36);
  v25 = "cannot get executable Path assertion from process %d denied";
LABEL_35:
  sub_100002DA4(&_mh_execute_header, v23, v24, v25);
  v34 = v22;
LABEL_36:
  sub_100002BB8(v34);
LABEL_37:

LABEL_38:
  v35 = 0;
LABEL_46:
  v40 = *(v0 + 8);

  return v40(v35);
}

uint64_t sub_1000FE87C()
{
  sub_100002BAC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for Assertion.DaemonRep();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  sub_1000071A8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000FE938()
{
  sub_100002BAC();
  v1 = AuditToken.processIdentifier.getter();
  *(v0 + 88) = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1000FE9D8;

  return sub_1000FDB8C(v1);
}

uint64_t sub_1000FE9D8()
{
  sub_100002BAC();
  *(*v0 + 92) = v1;

  sub_1000071A8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000FEAE8()
{
  if (*(v0 + 92) == 1)
  {
    Assertion.DaemonRep.receivedFromPID(_:)();
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_1000FECE8;

    return sub_100073318();
  }

  else
  {
    if (qword_1001B8988 != -1)
    {
      sub_100005244(&qword_1001B8988);
    }

    v3 = type metadata accessor for Logger();
    sub_100002FD0(v3, qword_1001BC218);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (sub_100002F80(v5))
    {
      v6 = swift_slowAlloc();
      sub_10000A300(v6, 1.5047e-36);
      sub_100002DA4(&_mh_execute_header, v7, v8, "Process %d denied to hold assertion");
      sub_100002BB8(v6);
    }

    v9 = type metadata accessor for ModelManagerError();
    sub_1000FF0F4();
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for ModelManagerError.deniedAssertionBySystem(_:), v9);
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1000FECE8()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1000FEE90;
  }

  else
  {
    v4 = sub_1000FEE14;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000FEE14()
{
  sub_100002BAC();
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000FEE90()
{
  sub_100002BAC();
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000FEF20(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 152);
  *(v1 + 24) = v2;
  return sub_10000396C(a1, v2);
}

uint64_t sub_1000FEF3C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_10014053C(*(v1 + 16), 0);
    type metadata accessor for Assertion.DaemonRep();
    sub_100149788();
    v5 = v4;

    sub_100007F18(v8);
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  v6 = *(v0 + 8);

  return v6(v3);
}

uint64_t sub_1000FF074()
{
  sub_100003324((v0 + 112));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000FF0A4()
{
  sub_1000FF074();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_1000FF0F4()
{
  result = qword_1001B8F50;
  if (!qword_1001B8F50)
  {
    type metadata accessor for ModelManagerError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8F50);
  }

  return result;
}

uint64_t sub_1000FF14C(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001B9CF8, &qword_100172AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FF1B4()
{
  sub_100012B14();
  v2 = v1;
  v3 = sub_100065020(&qword_1001B9420, &qword_100170118);
  v4 = sub_100002F04(v3);
  __chkstk_darwin(v4);
  sub_10000A4B0();
  v5 = type metadata accessor for Policy();
  sub_100002BDC();
  __chkstk_darwin(v6);
  v7 = sub_100005D38();
  if (sub_10000C6C0(v7, v8, v5) == 1)
  {
    sub_10000ED30(v2, &qword_1001B9420, &qword_100170118);
    v9 = sub_10000EF1C();
    sub_10014D110(v9, v10, v11);

    v12 = sub_10000A920();
    return sub_10000ED30(v12, v13, v14);
  }

  else
  {
    v16 = sub_1000082A0();
    v17(v16);
    swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_100012854();
    sub_100117760(v18, v19, v20, v21);

    *v0 = v22;
  }

  return result;
}

uint64_t sub_1000FF310()
{
  sub_100012B14();
  if (*(v3 + 24))
  {
    sub_100004A04(v3, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v0;
    sub_1001179FC(v15, v2, v1);

    *v0 = v14;
  }

  else
  {
    sub_100006570();
    sub_10000ED30(v5, v6, v7);
    v8 = sub_10000EF1C();
    sub_10014D138(v8, v9, v10);

    sub_100006570();
    return sub_10000ED30(v11, v12, v13);
  }

  return result;
}

uint64_t sub_1000FF3CC()
{
  sub_100012B14();
  v2 = v1;
  v3 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  v4 = sub_100002F04(v3);
  __chkstk_darwin(v4);
  sub_10000A4B0();
  v5 = type metadata accessor for CustomAssetConfiguration();
  sub_100002BDC();
  __chkstk_darwin(v6);
  v7 = sub_100005D38();
  if (sub_10000C6C0(v7, v8, v5) == 1)
  {
    sub_10000ED30(v2, &qword_1001B9D00, &qword_100171E00);
    v9 = sub_10000EF1C();
    sub_10014D208(v9, v10, v11);

    v12 = sub_10000A920();
    return sub_10000ED30(v12, v13, v14);
  }

  else
  {
    v16 = sub_1000082A0();
    v17(v16);
    swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_100012854();
    sub_100117D10(v18, v19, v20, v21);

    *v0 = v22;
  }

  return result;
}

uint64_t sub_1000FF528(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100004A04(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_100117FB8(v8, a2);
    *v2 = v7;
    type metadata accessor for UUID();
    sub_1000055EC();
    return (*(v4 + 8))(a2);
  }

  else
  {
    sub_10014D450(v8);
    type metadata accessor for UUID();
    sub_1000055EC();
    result = (*(v6 + 8))(a2);
    if (v8[3])
    {
      return sub_100003324(v8);
    }
  }

  return result;
}

uint64_t sub_1000FF614()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BC310);
  sub_10000641C(v0, qword_1001BC310);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

double sub_1000FF684()
{
  sub_100065020(&qword_1001BC458, &qword_100172B98);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_10016FF40;
  *(v0 + 32) = &type metadata for AssetTransitionDelayTrial;
  *(v0 + 40) = &off_1001B1AF8;
  qword_1001BE8F8 = v0;
  return result;
}

uint64_t sub_1000FF700()
{
  sub_100001ED0();
  v1 = *(v0[2] + OBJC_IVAR____TtC13modelmanagerd12TrialManager_trials);
  v0[3] = v1;
  v2 = *(v1 + 16);
  v0[4] = v2;
  if (v2)
  {
    v0[5] = 0;
    sub_100007944(v1);
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v4 = sub_1000114BC(v3);

    return sub_1000FFFAC(v4, v5);
  }

  else
  {
    sub_100001F00();

    return v7();
  }
}

uint64_t sub_1000FF7CC()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000FF8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  v16 = v14[6];
  v15 = v14[7];
  v17 = v14[2];
  v18 = v17[18];
  sub_100003370(v17 + 14, v17[17]);
  (*(v15 + 16))(v16, v15);
  v14[9] = v19;
  v20 = swift_allocObject();
  v14[10] = v20;
  v20[2] = v17;
  v20[3] = v16;
  v20[4] = v15;
  v21 = *(v18 + 32);

  v33 = v21 + *v21;
  v22 = swift_task_alloc();
  v14[11] = v22;
  *v22 = v14;
  v22[1] = sub_1000FFA70;
  sub_100003540();

  return v29(v23, v24, v25, v26, v27, v28, v29, v30, a9, v33, v18 + 32, a12, a13, a14);
}

uint64_t sub_1000FFA70()
{
  sub_100001ED0();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100003DE0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000FFBA8()
{
  sub_100001ED0();
  v1 = v0[5] + 1;
  if (v1 == v0[4])
  {
    sub_100001F00();

    return v2();
  }

  else
  {
    v0[5] = v1;
    sub_100007944(v0[3] + 16 * v1);
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v5 = sub_1000114BC(v4);

    return sub_1000FFFAC(v5, v6);
  }
}

uint64_t sub_1000FFC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;

  return _swift_task_switch(sub_1000FFD00, 0, 0);
}

uint64_t sub_1000FFD00()
{
  sub_100002BAC();
  type metadata accessor for _OSActivity();
  v0[13] = swift_initStackObject();
  v0[14] = sub_10001B160("Trial Update", 12, 2);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1000FFDEC;
  v2 = sub_1000031B8(v0[11]);

  return sub_1000FFFAC(v2, v3);
}

uint64_t sub_1000FFDEC()
{
  sub_100002BAC();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  return _swift_task_switch(sub_1000FFF08, 0, 0);
}

uint64_t sub_1000FFF08()
{
  sub_100002BAC();
  v1 = *(v0 + 112);
  sub_100004B50(v1 + 24, v0 + 56);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  sub_100001F00();

  return v2();
}

uint64_t sub_1000FFFAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100002C10();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000FFFD8()
{
  sub_100001ED0();
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = *(v0 + 16);

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_100065020(&qword_1001BC440, &qword_100172B78);
  *v3 = v0;
  v3[1] = sub_1000C1BF8;

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v4, 0x726E456B63656863, 0xEF746E656D6C6C6FLL);
}

uint64_t sub_100100130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v4[8] = sub_100065020(&qword_1001BC448, &qword_100172B80);
  v4[9] = swift_task_alloc();
  sub_100065020(&qword_1001B9420, &qword_100170118);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for Policy();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001002A8, a2, 0);
}

uint64_t sub_1001002A8()
{
  sub_10000636C();
  sub_100003370((v0[5] + 112), *(v0[5] + 136));
  v1 = sub_100001F70();
  v2(v1);
  v0[19] = v3;
  sub_100004B94();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_100100400;
  v6 = sub_100001F70();

  return v8(v6);
}

uint64_t sub_100100400(char a1)
{
  sub_100001EF4();
  v4 = v3;
  sub_100004B40();
  *v5 = v4;
  v6 = *v1;
  sub_100002B9C();
  *v7 = v6;

  if (a1)
  {
    v8 = v4[5];
    sub_100004B94();
    v14 = (v9 + *v9);
    v10 = swift_task_alloc();
    v4[21] = v10;
    *v10 = v6;
    v10[1] = sub_100100638;
    v11 = v4[14];

    return v14(v11, v8 + 112);
  }

  else
  {
    v13 = swift_task_alloc();
    v4[25] = v13;
    *v13 = v6;
    v13[1] = sub_100101110;
    sub_1000031B8(v4[6]);

    return sub_100102044();
  }
}

uint64_t sub_100100638()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100100730()
{
  v2 = v0[14];
  v1 = v0[15];
  if (sub_10000C6C0(v2, 1, v1) == 1)
  {
    sub_10000ED30(v2, &qword_1001B9420, &qword_100170118);
    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v4 = sub_100100C18;
LABEL_14:
    v3[1] = v4;
    sub_1000031B8(v0[6]);

    return sub_100102044();
  }

  v5 = v0[13];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  v56 = *(v0[16] + 32);
  v56(v0[18], v2, v1);
  v9 = *(v6 + 8);
  v10 = (v9)(v7, v6);
  v11 = OBJC_IVAR____TtC13modelmanagerd12TrialManager_enrollments;
  sub_10000BF7C(v8 + OBJC_IVAR____TtC13modelmanagerd12TrialManager_enrollments);

  sub_100006570();
  sub_100072B60(v12, v13, v14, v15);

  sub_1000186C8();
  sub_10000ED30(v5, &qword_1001B9420, &qword_100170118);
  if (v10 != 1)
  {
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[11];
    v21 = v0[12];
    v52 = v0[9];
    v53 = v0[18];
    v54 = v0[8];
    v22 = v9();
    v24 = v23;
    v25 = *(v8 + v11);

    sub_100072B60(v22, v24, v25, v21);

    (*(v18 + 16))(v20, v53, v19);
    sub_100009BFC(v20, 0, 1, v19);
    v26 = *(v54 + 48);
    sub_100102B38(v21, v52);
    sub_100102B38(v20, v52 + v26);
    v27 = sub_10000C6C0(v52, 1, v19);
    v28 = v0[15];
    if (v27 == 1)
    {
      sub_100006570();
      sub_10000ED30(v29, v30, v31);
      sub_100006570();
      sub_10000ED30(v32, v33, v34);
      if (sub_10000C6C0(v52 + v26, 1, v28) == 1)
      {
        sub_10000ED30(v0[9], &qword_1001B9420, &qword_100170118);
        goto LABEL_4;
      }
    }

    else
    {
      sub_100102B38(v0[9], v0[10]);
      if (sub_10000C6C0(v52 + v26, 1, v28) != 1)
      {
        v45 = v0[16];
        v44 = v0[17];
        v46 = v0[15];
        v48 = v0[11];
        v47 = v0[12];
        v49 = v0[10];
        v55 = v0[9];
        v56(v44, v52 + v26, v46);
        sub_100102BA8(&qword_1001BC450, &type metadata accessor for Policy, &protocol conformance descriptor for Policy);
        v50 = dispatch thunk of static Equatable.== infix(_:_:)();
        v51 = *(v45 + 8);
        v51(v44, v46);
        sub_10000ED30(v48, &qword_1001B9420, &qword_100170118);
        sub_10000ED30(v47, &qword_1001B9420, &qword_100170118);
        v51(v49, v46);
        sub_10000ED30(v55, &qword_1001B9420, &qword_100170118);
        if (v50)
        {
          goto LABEL_4;
        }

LABEL_13:
        v3 = swift_task_alloc();
        v0[23] = v3;
        *v3 = v0;
        v4 = sub_100100DF0;
        goto LABEL_14;
      }

      v35 = v0[15];
      v36 = v0[16];
      v37 = v0[10];
      sub_100006570();
      sub_10000ED30(v38, v39, v40);
      sub_100006570();
      sub_10000ED30(v41, v42, v43);
      (*(v36 + 8))(v37, v35);
    }

    sub_10000ED30(v0[9], &qword_1001BC448, &qword_100172B80);
    goto LABEL_13;
  }

LABEL_4:
  v16 = swift_task_alloc();
  v0[24] = v16;
  *v16 = v0;
  sub_100008480(v16);
  sub_1000031B8(v0[6]);

  return sub_1001012E8();
}

uint64_t sub_100100C18()
{
  sub_10000636C();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_1000034B4();

  return v3();
}

uint64_t sub_100100DF0()
{
  sub_100001ED0();
  v1 = *v0;
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 192) = v5;
  *v5 = v4;
  sub_100008480(v5);
  sub_1000031B8(*(v1 + 48));

  return sub_1001012E8();
}

uint64_t sub_100100F48()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100101040()
{
  sub_10000636C();
  (*(v0[16] + 8))(v0[18], v0[15]);

  sub_100001F00();

  return v1();
}

uint64_t sub_100101110()
{
  sub_10000636C();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_1000034B4();

  return v3();
}

uint64_t sub_1001012E8()
{
  sub_100002BAC();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v5 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  sub_100002F04(v5);
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for Assertion.DaemonRep();
  sub_100004B94();
  v1[17] = v6;
  v1[18] = swift_task_alloc();
  v7 = sub_100065020(&qword_1001B9420, &qword_100170118);
  sub_100002F04(v7);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v8 = sub_100002C10();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100101410()
{
  v38 = v0;
  v1 = v0[20];
  v2 = v0[14];
  v3 = *(v0[12] + 8);
  v0[21] = v3;
  v4 = v3();
  v5 = OBJC_IVAR____TtC13modelmanagerd12TrialManager_enrollments;
  v0[22] = OBJC_IVAR____TtC13modelmanagerd12TrialManager_enrollments;
  sub_10000BF7C(v2 + v5);
  v6 = *(v2 + v5);

  v7 = sub_100001F70();
  sub_100072B60(v7, v8, v6, v9);

  v10 = type metadata accessor for Policy();
  v0[23] = v10;
  sub_1000186C8();
  sub_10000ED30(v1, &qword_1001B9420, &qword_100170118);
  if (v4 == 1)
  {
    v35 = v2;
    if (qword_1001B8990 != -1)
    {
      sub_1000030A4(&qword_1001B8990);
    }

    v11 = v3;
    v12 = type metadata accessor for Logger();
    v0[24] = sub_10000641C(v12, qword_1001BC310);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v36 = v3;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[11];
      v33 = v0[12];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37 = v17;
      *v16 = 136315138;
      v18 = (v11)(v15, v33);
      v20 = sub_100004A3C(v18, v19, &v37);

      *(v16 + 4) = v20;
      sub_100013710(&_mh_execute_header, v21, v22, "Enabling Trial %s");
      sub_100003324(v17);
      sub_100002BB8(v17);
      sub_100002BB8(v16);
    }

    v23 = v0[19];
    v25 = v0[13];
    v24 = v0[14];
    v34 = v0[12];
    v26 = sub_100007CC8();
    (v36)(v26);
    v32 = *(*(v10 - 8) + 16);
    v32(v23, v25, v10);
    sub_100012550();
    sub_100004B50(v35 + v5, (v0 + 5));
    sub_1000FF1B4();
    swift_endAccess();
    sub_100003370((v24 + 152), *(v24 + 176));
    v27 = sub_100007CC8();
    (v36)(v27, v34);
    v0[25] = v28;
    v32(v23, v25, v10);
    sub_100012550();
    v29 = swift_task_alloc();
    v0[26] = v29;
    *v29 = v0;
    sub_100018A38(v29);

    return sub_100072F44();
  }

  else
  {
    sub_100013DAC();

    sub_100001F00();

    return v31();
  }
}

uint64_t sub_1001017A0()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = *(v1 + 152);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_10000ED30(v2, &qword_1001B9420, &qword_100170118);
  v5 = sub_100003DE0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001018E8()
{
  v1 = v0[21];
  v2 = v0[14];
  v3 = sub_100005E98();
  v1(v3);
  v4 = sub_100005E98();
  v1(v4);
  v5 = sub_100005E98();
  v6(v5);
  Assertion.DaemonRep.init(policy:description:id:)();
  sub_100003370((v2 + 152), *(v2 + 176));
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = sub_100101A24;
  sub_1000031B8(v0[18]);

  return sub_100073318();
}

uint64_t sub_100101A24()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 224) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_100101BD0;
  }

  else
  {
    v6 = sub_100101B44;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100101B44()
{
  sub_100001ED0();
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_100013DAC();

  sub_100001F00();

  return v1();
}

uint64_t sub_100101BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  (*(v22[17] + 8))(v22[18], v22[16]);
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v42 = v22[21];
    v27 = v22[11];
    v28 = v22[12];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    a11 = v31;
    *v29 = 136315394;
    v32 = v42(v27, v28);
    v34 = sub_100004A3C(v32, v33, &a11);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2112;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 14) = v35;
    *v30 = v35;
    _os_log_impl(&_mh_execute_header, v25, v26, "Failed to acquire %s assertion: %@", v29, 0x16u);
    sub_10000ED30(v30, &qword_1001B8F68, &qword_10016FB80);
    sub_100002BB8(v30);
    sub_100003324(v31);
    sub_100002BB8(v31);
    sub_100002BB8(v29);
  }

  v36 = v22[21];
  sub_100003370((v22[14] + 152), *(v22[14] + 176));
  v37 = sub_100005E98();
  v36(v37);
  v22[29] = v38;
  sub_100007AE0();
  v39 = swift_task_alloc();
  v22[30] = v39;
  *v39 = v22;
  sub_100018A38(v39);
  sub_100003540();

  return sub_100072F44();
}

uint64_t sub_100101E08()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = *(v1 + 152);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_10000ED30(v2, &qword_1001B9420, &qword_100170118);
  v5 = sub_100003DE0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100101F50()
{
  sub_10000636C();
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 152);
  v4 = *(v0 + 112);
  (*(v0 + 168))();
  sub_100009BFC(v3, 1, 1, v1);
  sub_100004B50(v4 + v2, v0 + 64);
  sub_10000A920();
  sub_1000FF1B4();
  swift_endAccess();

  sub_100013DAC();

  sub_100001F00();

  return v5();
}

uint64_t sub_100102044()
{
  sub_100002BAC();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v1[11] = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  sub_100004B94();
  v1[12] = v4;
  v1[13] = swift_task_alloc();
  v5 = sub_100065020(&qword_1001B9420, &qword_100170118);
  sub_100002F04(v5);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100102144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[15];
  v26 = v22[10];
  v27 = *(v22[9] + 8);
  v22[16] = v27;
  v28 = v27();
  v29 = OBJC_IVAR____TtC13modelmanagerd12TrialManager_enrollments;
  sub_10000BF7C(v26 + OBJC_IVAR____TtC13modelmanagerd12TrialManager_enrollments);
  v30 = *(v26 + v29);

  v31 = sub_100001F70();
  sub_100072B60(v31, v32, v30, v33);

  v22[17] = type metadata accessor for Policy();
  sub_1000186C8();
  sub_10000ED30(v25, &qword_1001B9420, &qword_100170118);
  if (v28 == 1)
  {

    sub_100001F00();
    sub_100003540();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1001B8990 != -1)
    {
      sub_1000030A4(&qword_1001B8990);
    }

    v62 = v26;
    v43 = type metadata accessor for Logger();
    sub_10000641C(v43, qword_1001BC310);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v22[8];
      v47 = v22[9];
      v48 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      a11 = v61;
      *v48 = 136315138;
      v49 = (v27)(v46, v47);
      v51 = sub_100004A3C(v49, v50, &a11);

      *(v48 + 4) = v51;
      sub_100013710(&_mh_execute_header, v52, v53, "Disabling Trial %s");
      sub_100003324(v61);
      sub_100002BB8(v61);
      sub_100002BB8(v48);
    }

    v55 = v22[9];
    v54 = v22[10];
    v56 = sub_100007CC8();
    (v27)(v56, v55);
    sub_100007AE0();
    sub_100004B50(v62 + v29, (v22 + 5));
    sub_1000FF1B4();
    swift_endAccess();
    sub_100003370((v54 + 152), *(v54 + 176));
    v57 = sub_100007CC8();
    v58(v57, v55);
    v59 = swift_task_alloc();
    v22[18] = v59;
    *v59 = v22;
    v59[1] = sub_10010244C;
    sub_1000031B8(v22[13]);
    sub_100003540();

    return sub_100073748();
  }
}

uint64_t sub_10010244C()
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

uint64_t sub_10010259C()
{
  sub_10000636C();
  v1 = v0[16];
  sub_100003370((v0[10] + 152), *(v0[10] + 176));
  v2 = sub_100005E98();
  v1(v2);
  v0[19] = v3;
  sub_100007AE0();
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_100102690;

  return sub_100072F44();
}

uint64_t sub_100102690()
{
  v1 = *v0;
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;
  v4 = *(v1 + 112);
  v5 = *v0;
  *v3 = *v0;

  sub_10000ED30(v4, &qword_1001B9420, &qword_100170118);

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100102814()
{
  sub_100003324((v0 + 112));
  sub_100003324((v0 + 152));
  v1 = OBJC_IVAR____TtC13modelmanagerd12TrialManager_workQueue;
  sub_100065020(&qword_1001BC440, &qword_100172B78);
  sub_1000055EC();
  (*(v2 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001028AC()
{
  sub_100102814();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for TrialManager(uint64_t a1)
{
  result = qword_1001BC350;
  if (!qword_1001BC350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010292C(uint64_t a1)
{
  sub_1001029E4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001029E4(uint64_t a1)
{
  if (!qword_1001BC360)
  {
    type metadata accessor for TrialManager(255);
    sub_100102BA8(&qword_1001B8BE8, type metadata accessor for TrialManager, &unk_100172B40);
    v1 = type metadata accessor for WorkQueue();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BC360);
    }
  }
}

uint64_t sub_100102A78()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10006F558;
  sub_100006570();

  return sub_100100130(v4, v5, v6, v2);
}

uint64_t sub_100102B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001B9420, &qword_100170118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100102BA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100102BF0()
{
  sub_100001ED0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10006F558;

  return sub_1000FFC6C(v2, v3, v4);
}

__n128 sub_100102C94(uint64_t a1, uint64_t a2)
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

uint64_t sub_100102CA8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100102CE8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100102D48(uint64_t a1)
{
  v2 = type metadata accessor for ModelCatalogAsset(0);
  v3 = sub_100002F44(v2);
  v31 = v4;
  __chkstk_darwin(v3);
  sub_100008624();
  v30 = v5;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002045C(0, v6, 0);
  result = sub_10001E724();
  v10 = result;
  v11 = 0;
  v34 = a1 + 56;
  v27 = a1 + 64;
  v28 = v6;
  v29 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v10 < 1 << *(a1 + 32))
    {
      v12 = v10 >> 6;
      if ((*(v34 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_25;
      }

      v33 = v9;
      v32 = v8;
      sub_1001076CC(*(a1 + 48) + *(v31 + 72) * v10, v30, type metadata accessor for ModelCatalogAsset);
      v14 = *v30;
      v13 = v30[1];

      result = sub_10010772C(v30, type metadata accessor for ModelCatalogAsset);
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
      if (v33)
      {
        goto LABEL_29;
      }

      a1 = v29;
      v18 = 1 << *(v29 + 32);
      if (v10 >= v18)
      {
        goto LABEL_26;
      }

      v19 = *(v34 + 8 * v12);
      if ((v19 & (1 << v10)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v29 + 36) != v32)
      {
        goto LABEL_28;
      }

      v20 = v19 & (-2 << (v10 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v21 = v28;
      }

      else
      {
        v22 = v12 << 6;
        v23 = v12 + 1;
        v21 = v28;
        v24 = (v27 + 8 * v12);
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_100016E94(v10, v32, 0);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        result = sub_100016E94(v10, v32, 0);
      }

LABEL_19:
      if (++v11 == v21)
      {
        return _swiftEmptyArrayStorage;
      }

      v9 = 0;
      v8 = *(v29 + 36);
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

void *sub_100103028(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v4 = type metadata accessor for StateDump.AssetState();
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_33:

    return _swiftEmptyArrayStorage;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_33;
  }

LABEL_3:
  v52 = _swiftEmptyArrayStorage;
  sub_100070CF8();
  v9 = v52;
  result = sub_10003DDD4();
  v48 = result;
  v49 = v15;
  LOBYTE(v50) = v16 & 1;
  if ((v8 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v40 = v8;
    v41 = v44 + 32;
    if (a1 < 0)
    {
      v18 = a1;
    }

    else
    {
      v18 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v38 = a1 + 56;
    v39 = v18;
    v36 = v2;
    v37 = a1 + 64;
    v46 = a1;
    while (!__OFADD__(v17++, 1))
    {
      v20 = v48;
      v21 = v49;
      v22 = v50;
      sub_10003DE34(v48, v49, v50, a1, v11, v12, v13, v14, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47[0], v47[1], v47[2], v47[3], v48, v49, v50, v51, v52, v53, v54);

      sub_100105AD0();
      v52 = v9;
      v23 = v9[2];
      if (v23 >= v9[3] >> 1)
      {
        sub_100070CF8();
        v9 = v52;
      }

      v9[2] = v23 + 1;
      result = (*(v44 + 32))(v9 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v23, v7, v43);
      if (v42)
      {
        a1 = v46;
        if (!v22)
        {
          goto LABEL_40;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v28 = v40;
        sub_100065020(&qword_1001BB460, &qword_100171E78);
        v29 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v29(v47, 0);
      }

      else
      {
        a1 = v46;
        if (v22)
        {
          goto LABEL_41;
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        v24 = (1 << *(v46 + 32));
        if (v20 >= v24)
        {
          goto LABEL_36;
        }

        v25 = v20 >> 6;
        v26 = *(v38 + 8 * (v20 >> 6));
        if (((v26 >> v20) & 1) == 0)
        {
          goto LABEL_37;
        }

        if (*(v46 + 36) != v21)
        {
          goto LABEL_38;
        }

        v27 = v26 & (-2 << (v20 & 0x3F));
        if (v27)
        {
          v24 = (__clz(__rbit64(v27)) | v20 & 0x7FFFFFFFFFFFFFC0);
        }

        else
        {
          v30 = v25 << 6;
          v31 = v25 + 1;
          v32 = (v37 + 8 * v25);
          while (v31 < (v24 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              result = sub_100016E94(v20, v21, 0);
              v24 = (__clz(__rbit64(v33)) + v30);
              goto LABEL_28;
            }
          }

          result = sub_100016E94(v20, v21, 0);
LABEL_28:
          a1 = v46;
        }

        v35 = *(a1 + 36);
        v48 = v24;
        v49 = v35;
        LOBYTE(v50) = 0;
        v28 = v40;
      }

      if (v17 == v28)
      {
        sub_100016E94(v48, v49, v50);

        return v9;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void *sub_1001033F4(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v4 = type metadata accessor for StateDump.SessionState();
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_33:

    return _swiftEmptyArrayStorage;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_33;
  }

LABEL_3:
  v52 = _swiftEmptyArrayStorage;
  sub_100070D50();
  v9 = v52;
  result = sub_10003DDD4();
  v48 = result;
  v49 = v15;
  LOBYTE(v50) = v16 & 1;
  if ((v8 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v40 = v8;
    v41 = v44 + 32;
    if (a1 < 0)
    {
      v18 = a1;
    }

    else
    {
      v18 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v38 = a1 + 56;
    v39 = v18;
    v36 = v2;
    v37 = a1 + 64;
    v46 = a1;
    while (!__OFADD__(v17++, 1))
    {
      v20 = v48;
      v21 = v49;
      v22 = v50;
      sub_100149DB4(v48, v49, v50, a1, v11, v12, v13, v14, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47[0], v47[1], v47[2], v47[3], v48, v49, v50, v51, v52, v53, v54);

      sub_100105FD8();
      v52 = v9;
      v23 = v9[2];
      if (v23 >= v9[3] >> 1)
      {
        sub_100070D50();
        v9 = v52;
      }

      v9[2] = v23 + 1;
      result = (*(v44 + 32))(v9 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v23, v7, v43);
      if (v42)
      {
        a1 = v46;
        if (!v22)
        {
          goto LABEL_40;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v28 = v40;
        sub_100065020(&qword_1001BC4A0, &qword_100172C68);
        v29 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v29(v47, 0);
      }

      else
      {
        a1 = v46;
        if (v22)
        {
          goto LABEL_41;
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        v24 = (1 << *(v46 + 32));
        if (v20 >= v24)
        {
          goto LABEL_36;
        }

        v25 = v20 >> 6;
        v26 = *(v38 + 8 * (v20 >> 6));
        if (((v26 >> v20) & 1) == 0)
        {
          goto LABEL_37;
        }

        if (*(v46 + 36) != v21)
        {
          goto LABEL_38;
        }

        v27 = v26 & (-2 << (v20 & 0x3F));
        if (v27)
        {
          v24 = (__clz(__rbit64(v27)) | v20 & 0x7FFFFFFFFFFFFFC0);
        }

        else
        {
          v30 = v25 << 6;
          v31 = v25 + 1;
          v32 = (v37 + 8 * v25);
          while (v31 < (v24 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              result = sub_100016E94(v20, v21, 0);
              v24 = (__clz(__rbit64(v33)) + v30);
              goto LABEL_28;
            }
          }

          result = sub_100016E94(v20, v21, 0);
LABEL_28:
          a1 = v46;
        }

        v35 = *(a1 + 36);
        v48 = v24;
        v49 = v35;
        LOBYTE(v50) = 0;
        v28 = v40;
      }

      if (v17 == v28)
      {
        sub_100016E94(v48, v49, v50);

        return v9;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void *sub_1001037C0(uint64_t a1)
{
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v54 = v3;
  v55 = v4;
  sub_100004B1C();
  __chkstk_darwin(v5);
  v7 = &v46 - v6;
  v53 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v62 = _swiftEmptyArrayStorage;
    sub_100070A50(0, v8 & ~(v8 >> 63), 0);
    v56 = v62;
    result = sub_10003DDD4();
    v58 = result;
    v59 = v10;
    LOBYTE(v60) = v11 & 1;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v51 = v8;
      v52 = v55 + 32;
      if (a1 < 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v49 = a1 + 56;
      v50 = v13;
      v47 = v1;
      v48 = a1 + 64;
      while (!__OFADD__(v12++, 1))
      {
        v15 = v58;
        v16 = v59;
        v17 = v60;
        v18 = sub_100004CDC();
        sub_100149DF4(v18, v19, v17, a1, v20, v21, v22, v23, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57[0], v57[1], v57[2], v57[3], v58, v59, v60, v61, v62, v63, v64);
        RequestMetadata.id.getter();

        v24 = v56;
        v62 = v56;
        v26 = v56[2];
        v25 = v56[3];
        if (v26 >= v25 >> 1)
        {
          sub_100070A50(v25 > 1, v26 + 1, 1);
          v24 = v62;
        }

        v24[2] = v26 + 1;
        sub_10000657C();
        v56 = v27;
        result = (*(v29 + 32))(v27 + v28 + *(v29 + 72) * v26, v7);
        if (v53)
        {
          if (!v17)
          {
            goto LABEL_39;
          }

          sub_100004CDC();
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v34 = v51;
          sub_100065020(&qword_1001BC480, &qword_100172C58);
          v35 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v35(v57, 0);
        }

        else
        {
          if (v17)
          {
            goto LABEL_40;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          v30 = (1 << *(a1 + 32));
          if (v15 >= v30)
          {
            goto LABEL_35;
          }

          v31 = v15 >> 6;
          v32 = *(v49 + 8 * (v15 >> 6));
          if (((v32 >> v15) & 1) == 0)
          {
            goto LABEL_36;
          }

          if (*(a1 + 36) != v16)
          {
            goto LABEL_37;
          }

          v33 = v32 & (-2 << (v15 & 0x3F));
          if (v33)
          {
            v30 = (__clz(__rbit64(v33)) | v15 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v36 = v31 << 6;
            v37 = v31 + 1;
            v38 = (v48 + 8 * v31);
            while (v37 < (v30 + 63) >> 6)
            {
              v40 = *v38++;
              v39 = v40;
              v36 += 64;
              ++v37;
              if (v40)
              {
                v41 = sub_100004CDC();
                result = sub_100016E94(v41, v42, 0);
                v30 = (__clz(__rbit64(v39)) + v36);
                goto LABEL_30;
              }
            }

            v43 = sub_100004CDC();
            result = sub_100016E94(v43, v44, 0);
          }

LABEL_30:
          v45 = *(a1 + 36);
          v58 = v30;
          v59 = v45;
          LOBYTE(v60) = 0;
          v34 = v51;
        }

        if (v12 == v34)
        {
          sub_100016E94(v58, v59, v60);
          return v56;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  return result;
}

void *sub_100103B5C(uint64_t a1)
{
  v50 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v3 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v38 - v4;
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v38 = v1;
  v56 = _swiftEmptyArrayStorage;
  sub_100070A90();
  v6 = v56;
  v7 = sub_10001E724();
  v9 = v8;
  v10 = a1 + 56;
  v47 = v3;
  v44 = v3 + 8;
  v45 = v3 + 16;
  result = type metadata accessor for UUID();
  v12 = 0;
  v43 = result;
  v13 = *(result - 1);
  v48 = *(v13 + 64);
  v41 = v13 + 32;
  v42 = v13;
  v39 = a1 + 64;
  v40 = v5;
  v51 = a1;
  v46 = a1 + 56;
  while (1)
  {
    result = __chkstk_darwin(result);
    v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7 < 0 || v7 >= v15 << *(a1 + 32))
    {
      break;
    }

    v52 = v12;
    v19 = v7 >> 6;
    v20 = v15 << v7;
    if ((*(v10 + 8 * (v7 >> 6)) & (v15 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (*(a1 + 36) != v14)
    {
      goto LABEL_26;
    }

    v53 = v14;
    v54 = v16;
    v55 = v9;
    v21 = v6;
    v22 = v47;
    v23 = *(a1 + 48) + *(v47 + 72) * v7;
    v25 = v49;
    v24 = v50;
    (*(v47 + 16))(v49, v23, v50);
    swift_getKeyPath();
    swift_getAtKeyPath();

    v26 = *(v22 + 8);
    v6 = v21;
    v26(v25, v24);
    v56 = v21;
    v27 = v21[2];
    if (v27 >= v21[3] >> 1)
    {
      sub_100070A90();
      v6 = v56;
    }

    v6[2] = v27 + 1;
    result = (*(v42 + 32))(v6 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v27, v18, v43);
    v10 = v46;
    if (v55)
    {
      goto LABEL_30;
    }

    a1 = v51;
    v28 = 1 << *(v51 + 32);
    if (v7 >= v28)
    {
      goto LABEL_27;
    }

    v29 = *(v46 + 8 * v19);
    if ((v29 & v20) == 0)
    {
      goto LABEL_28;
    }

    if (*(v51 + 36) != v53)
    {
      goto LABEL_29;
    }

    v30 = v29 & (-2 << (v7 & 0x3F));
    if (v30)
    {
      v28 = __clz(__rbit64(v30)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v31 = v40;
      v32 = v52;
    }

    else
    {
      v33 = v19 << 6;
      v34 = v19 + 1;
      v31 = v40;
      v35 = (v39 + 8 * v19);
      v32 = v52;
      while (v34 < (v28 + 63) >> 6)
      {
        v37 = *v35++;
        v36 = v37;
        v33 += 64;
        ++v34;
        if (v37)
        {
          result = sub_100016E94(v7, v53, 0);
          v28 = __clz(__rbit64(v36)) + v33;
          goto LABEL_20;
        }
      }

      result = sub_100016E94(v7, v53, 0);
LABEL_20:
      a1 = v51;
    }

    v12 = v32 + 1;
    if (v12 == v31)
    {
      return v6;
    }

    v9 = 0;
    v7 = v28;
  }

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
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_100103F78(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_100103F98()
{
  sub_100002BAC();
  v1[9] = v2;
  v1[10] = v0;
  v3 = type metadata accessor for StateDump.InferenceProviderState();
  v1[11] = v3;
  sub_100002F44(v3);
  v1[12] = v4;
  v1[13] = sub_10000F0C0();
  v1[14] = swift_task_alloc();
  v5 = type metadata accessor for StateDump.ExecutionGroupsState();
  v1[15] = v5;
  sub_100002F44(v5);
  v1[16] = v6;
  v1[17] = sub_10000F0C0();
  v1[18] = swift_task_alloc();
  v7 = type metadata accessor for Policy();
  v1[19] = v7;
  sub_100002F44(v7);
  v1[20] = v8;
  v1[21] = sub_10000F0C0();
  v9 = swift_task_alloc();
  v10 = *(v0 + 16);
  v1[22] = v9;
  v1[23] = v10;
  v11 = sub_10000A30C();

  return _swift_task_switch(v11, v12, v13);
}