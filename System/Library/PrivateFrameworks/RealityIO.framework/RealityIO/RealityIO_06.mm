uint64_t closure #1 in RIOPxrVtValueRef.asTexCoord2dArray.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26670F670](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((RIOPxrVtValueGetDouble2() & 1) == 0)
      {
        __break(1u);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v11 >= v10 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v6);
      }

      *(v6 + 2) = v11 + 1;
      v12 = &v6[32 * v11];
      *(v12 + 6) = 0;
      *(v12 + 7) = 0;
      *(v12 + 2) = 0uLL;
      ++v5;
      if (v9 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_22:

  *a2 = v6;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asColor3dArray.getter@<X0>(uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v5 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v15 = a2;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      a2 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((RIOPxrVtValueGetDouble3() & 1) == 0)
      {
        __break(1u);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = v15(0, *(v8 + 16) + 1, 1, v8);
      }

      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        v8 = v15(v11 > 1, v12 + 1, 1, v8);
      }

      *(v8 + 16) = v12 + 1;
      v13 = v8 + 32 * v12;
      *(v13 + 32) = 0u;
      *(v13 + 48) = 0uLL;
      ++v7;
      if (a2 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_22:

  *a3 = v8;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asDouble3Array.getter@<X0>(uint64_t (*a2)(id, __int128 *)@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    *&v24 = 0;
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_24:
    v11 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v9 = __CocoaSet.count.getter();
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_5:
  v20 = a3;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  do
  {
    v23 = v11;
    v12 = v10;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x26670F670](v12, v8);
      }

      else
      {
        if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v13 = *(v8 + 8 * v12 + 32);
      }

      v14 = v13;
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v24 = 0u;
      v25 = 0u;
      a3 = a2(v13, &v24);

      if (a3)
      {
        break;
      }

      ++v12;
      if (v10 == v9)
      {
        v11 = v23;
        goto LABEL_25;
      }
    }

    v21 = v25;
    v22 = v24;
    v15 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = v20(0, *(v23 + 16) + 1, 1, v23);
    }

    a3 = *(v15 + 16);
    v16 = *(v15 + 24);
    v17 = v15;
    if (a3 >= v16 >> 1)
    {
      v17 = v20(v16 > 1, a3 + 1, 1, v15);
    }

    *(v17 + 16) = a3 + 1;
    v11 = v17;
    v18 = v17 + 32 * a3;
    *(v18 + 32) = v22;
    *(v18 + 48) = v21;
  }

  while (v10 != v9);
LABEL_25:

  *a4 = v11;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asColor4dArray.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26670F670](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((RIOPxrVtValueGetDouble4() & 1) == 0)
      {
        __break(1u);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v11 >= v10 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v6);
      }

      *(v6 + 2) = v11 + 1;
      v12 = &v6[32 * v11];
      *(v12 + 2) = 0u;
      *(v12 + 3) = 0u;
      ++v5;
      if (v9 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_22:

  *a2 = v6;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asQuatfArray.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v15 = a2;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Quatf = RIOPxrVtValueGetQuatf();

      if (Quatf)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    *&v7[16 * v13 + 32] = 0uLL;
  }

  while (v6 != v5);
LABEL_25:

  *v15 = v7;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asQuatdArray.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v16 = a2;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Quatd = RIOPxrVtValueGetQuatd();

      if (Quatd)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    v14 = &v7[32 * v13];
    *(v14 + 2) = 0u;
    *(v14 + 3) = 0u;
  }

  while (v6 != v5);
LABEL_25:

  *v16 = v7;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asMatrix2dArray.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v16 = a2;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Matrix2d = RIOPxrVtValueGetMatrix2d();

      if (Matrix2d)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    v14 = &v7[32 * v13];
    *(v14 + 2) = 0u;
    *(v14 + 3) = 0u;
  }

  while (v6 != v5);
LABEL_25:

  *v16 = v7;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asMatrix3dArray.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v16 = a2;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Matrix3d = RIOPxrVtValueGetMatrix3d();

      if (Matrix3d)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    v14 = &v7[96 * v13];
    *(v14 + 2) = 0u;
    *(v14 + 3) = 0u;
    *(v14 + 4) = 0u;
    *(v14 + 5) = 0u;
    *(v14 + 6) = 0u;
    *(v14 + 7) = 0u;
  }

  while (v6 != v5);
LABEL_25:

  *v16 = v7;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asMatrix4dArray.getter@<X0>(char **a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v16 = a2;
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_5:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26670F670](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Matrix4d = RIOPxrVtValueGetMatrix4d();

      if (Matrix4d)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    v14 = &v7[128 * v13];
    *(v14 + 4) = 0u;
    *(v14 + 5) = 0u;
    *(v14 + 2) = 0u;
    *(v14 + 3) = 0u;
    *(v14 + 8) = 0u;
    *(v14 + 9) = 0u;
    *(v14 + 6) = 0u;
    *(v14 + 7) = 0u;
  }

  while (v6 != v5);
LABEL_25:

  *v16 = v7;
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asTokenArray.getter@<X0>(uint64_t (*a2)(void)@<X2>, void (*a3)(_BOOL8, unint64_t, uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    a2(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    v9 = v8;
    if (!(v8 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_13:

      v12 = MEMORY[0x277D84F90];
LABEL_19:
      *a4 = v12;
      return result;
    }
  }

  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = (a3)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = v8;
    if ((v9 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v10; ++i)
      {
        v14 = MEMORY[0x26670F670](i, v9);
        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          v23 = v14;
          a3(v15 > 1, v16 + 1, 1);
          v14 = v23;
        }

        *(v12 + 16) = v16 + 1;
        *(v12 + 8 * v16 + 32) = v14;
      }
    }

    else
    {
      v24 = a3;
      v17 = 32;
      do
      {
        v19 = *(v8 + 16);
        v18 = *(v8 + 24);
        v20 = *(v9 + v17);
        if (v19 >= v18 >> 1)
        {
          v21 = v18 > 1;
          v22 = v20;
          v24(v21, v19 + 1, 1);
          v20 = v22;
        }

        *(v8 + 16) = v19 + 1;
        *(v8 + 8 * v19 + 32) = v20;
        v17 += 8;
        --v10;
      }

      while (v10);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t RIOPxrVtValueRef.asDictionary.getter()
{
  v0 = RIOPxrVtValueCopyDictionary();
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for RIOPxrTfTokenRef(0);
      type metadata accessor for RIOPxrVtValueRef(0);
      lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  return 0;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = a1[5];
  v8 = *a3;
  v9 = a1[4];
  v10 = v7;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, v6 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for RIOPxrTfTokenRef(0);
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  specialized _NativeDictionary.copy()();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v10;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x26670F080](0xD00000000000001BLL, 0x8000000261994A30);
    type metadata accessor for RIOPxrTfTokenRef(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26670F080](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 7);
    v25 = 1;
    while (v25 < a1[2])
    {
      v26 = *v6;
      v27 = *a3;
      v9 = *(v6 - 1);
      v10 = v26;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, 1);
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v34[6] + 8 * v28) = v9;
      *(v34[7] + 8 * v28) = v10;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void specialized static Int.getValue3Opt(from:time:)(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  v5 = 0uLL;
  if (v4)
  {
    v6 = v4;
    Int3 = RIOPxrVtValueGetInt3();

    v8 = Int3 == 0;
    v5 = 0uLL;
  }

  else
  {
    v8 = 1;
  }

  *a2 = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8;
}

void specialized static Int.getValue4Opt(from:time:)(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  v5 = 0uLL;
  if (v4)
  {
    v6 = v4;
    Int4 = RIOPxrVtValueGetInt4();

    if (Int4)
    {
      v8 = 0;
      v5 = 0uLL;
      *&v9 = 0;
      *(&v9 + 1) = 0 >> 96;
      v10 = v9;
    }

    else
    {
      v8 = 1;
      v10 = 0uLL;
      v5 = 0uLL;
    }
  }

  else
  {
    v8 = 1;
    v10 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = v10;
  *(a2 + 32) = v8;
}

uint64_t specialized static Int.getValue2Opt(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    RIOPxrVtValueGetInt2();
  }

  return 0;
}

void *specialized static Frame4D.getValueArrayOpt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    v4 = RIOPxrVtValueCopyMatrix4dArray();
    if (v4)
    {
      v54 = v4;
      v5 = v4;
      closure #1 in RIOPxrVtValueRef.asMatrix4dArray.getter(&v53);

      v6 = v53;
      v7 = *(v53 + 2);
      if (v7)
      {
        v54 = MEMORY[0x277D84F90];
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
        v8 = 0;
        v9 = v54;
        do
        {
          v10 = 0;
          v11 = &v6[128 * v8 + 32];
          v13 = *v11;
          v12 = *(v11 + 1);
          v15 = *(v11 + 2);
          v14 = *(v11 + 3);
          v17 = *(v11 + 4);
          v16 = *(v11 + 5);
          v19 = *(v11 + 6);
          v18 = *(v11 + 7);
          v20 = 0uLL;
          v21 = 0uLL;
          v22 = 0uLL;
          v23 = 0uLL;
          v24 = 0uLL;
          v25 = 0uLL;
          v26 = 0uLL;
          v27 = 0uLL;
          do
          {
            v29 = v10 >> 2;
            v30 = v17;
            v31 = v16;
            if (v10 >> 2 != 2)
            {
              v30 = v15;
              v31 = v14;
              if (v29 != 1)
              {
                v30 = v13;
                v31 = v12;
                if (v29)
                {
                  v30 = v19;
                  v31 = v18;
                  if ((v10 & 0x7FFFFFFFFFFFFFFCLL) != 0xC)
                  {
                    __break(1u);
                    return result;
                  }
                }
              }
            }

            v52[0] = v30;
            v52[1] = v31;
            v28 = *(v52 + (v10 & 3));
            v44 = v20;
            v45 = v21;
            v46 = v22;
            v47 = v23;
            v48 = v24;
            v49 = v25;
            v50 = v26;
            v51 = v27;
            *(&v44 + (v10 & 0xF)) = v28;
            v26 = v50;
            v27 = v51;
            v24 = v48;
            v25 = v49;
            v22 = v46;
            v23 = v47;
            ++v10;
            v20 = v44;
            v21 = v45;
          }

          while (v10 != 16);
          v54 = v9;
          v33 = *(v9 + 16);
          v32 = *(v9 + 24);
          if (v33 >= v32 >> 1)
          {
            v42 = v50;
            v43 = v51;
            v40 = v48;
            v41 = v49;
            v38 = v46;
            v39 = v47;
            v36 = v45;
            v37 = v44;
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
            v21 = v36;
            v20 = v37;
            v22 = v38;
            v23 = v39;
            v24 = v40;
            v25 = v41;
            v26 = v42;
            v27 = v43;
            v9 = v54;
          }

          ++v8;
          *(v9 + 16) = v33 + 1;
          v34 = (v9 + (v33 << 7));
          v34[2] = v20;
          v34[3] = v21;
          v34[4] = v22;
          v34[5] = v23;
          v34[6] = v24;
          v34[7] = v25;
          v34[8] = v26;
          v34[9] = v27;
        }

        while (v8 != v7);
        v35 = v9;

        return v35;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *specialized static simd_float2x2.getValueArrayOpt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    v4 = RIOPxrVtValueCopyMatrix2dArray();
    if (v4)
    {
      v21 = v4;
      v5 = v4;
      closure #1 in RIOPxrVtValueRef.asMatrix2dArray.getter(&v20);

      v6 = v20;
      v7 = *(v20 + 2);
      if (v7)
      {
        v21 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
        v8 = v21;
        v9 = *(v21 + 16);
        v10 = 16 * v9;
        v11 = (v6 + 48);
        do
        {
          v12 = v11[-1];
          v13 = *v11;
          v21 = v8;
          v14 = *(v8 + 24);
          v15 = v9 + 1;
          if (v9 >= v14 >> 1)
          {
            v18 = v13;
            v19 = v12;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v9 + 1, 1);
            v13 = v18;
            v12 = v19;
            v8 = v21;
          }

          *(v8 + 16) = v15;
          v16 = (v8 + v10);
          v16[4] = vcvt_f32_f64(v12);
          v16[5] = vcvt_f32_f64(v13);
          v10 += 16;
          v11 += 2;
          v9 = v15;
          --v7;
        }

        while (v7);
        v17 = v8;

        return v17;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *specialized static simd_float3x3.getValueArrayOpt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    v4 = RIOPxrVtValueCopyMatrix3dArray();
    if (v4)
    {
      v35 = v4;
      v5 = v4;
      closure #1 in RIOPxrVtValueRef.asMatrix3dArray.getter(&v34);

      v6 = v34;
      v7 = *(v34 + 2);
      if (v7)
      {
        v35 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
        v8 = v35;
        v9 = *(v35 + 16);
        v10 = 48 * v9;
        v11 = (v6 + 64);
        do
        {
          v12 = v11[-2];
          v13 = v11[-1];
          v15 = *v11;
          v14 = v11[1];
          v17 = v11[2];
          v16 = v11[3];
          v35 = v8;
          v18 = *(v8 + 24);
          v19 = v9 + 1;
          if (v9 >= v18 >> 1)
          {
            v32 = v17;
            v33 = v16.f64[0];
            v30 = v15;
            v31 = v14.f64[0];
            v28 = v12;
            v29 = v13.f64[0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v9 + 1, 1);
            v12 = v28;
            v13.f64[0] = v29;
            v15 = v30;
            v14.f64[0] = v31;
            v17 = v32;
            v16.f64[0] = v33;
            v8 = v35;
          }

          *&v20 = vcvt_f32_f64(v12);
          *&v21 = v13.f64[0];
          *(&v20 + 1) = v21;
          *&v22 = vcvt_f32_f64(v15);
          *&v23 = v14.f64[0];
          *(&v22 + 1) = v23;
          *&v24 = vcvt_f32_f64(v17);
          *&v25 = v16.f64[0];
          *(&v24 + 1) = v25;
          *(v8 + 16) = v19;
          v26 = (v8 + v10);
          v26[2] = v20;
          v26[3] = v22;
          v26[4] = v24;
          v10 += 48;
          v11 += 6;
          v9 = v19;
          --v7;
        }

        while (v7);
        v27 = v8;

        return v27;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *specialized static simd_float4x4.getValueArrayOpt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    v4 = RIOPxrVtValueCopyMatrix4dArray();
    if (v4)
    {
      v33 = v4;
      v5 = v4;
      closure #1 in RIOPxrVtValueRef.asMatrix4dArray.getter(&v32);

      v6 = v32;
      v7 = *(v32 + 2);
      if (v7)
      {
        v33 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
        v8 = v33;
        v9 = *(v33 + 16);
        v10 = (v9 << 6) + 80;
        v11 = (v6 + 64);
        do
        {
          v12 = v11[-2];
          v13 = v11[-1];
          v15 = *v11;
          v14 = v11[1];
          v17 = v11[2];
          v16 = v11[3];
          v19 = v11[4];
          v18 = v11[5];
          v33 = v8;
          v20 = *(v8 + 24);
          v21 = v9 + 1;
          if (v9 >= v20 >> 1)
          {
            v31 = v18;
            v29 = v14;
            v30 = v16;
            v27 = v13;
            v28 = v19;
            v25 = v15;
            v26 = v17;
            v24 = v12;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v9 + 1, 1);
            v12 = v24;
            v15 = v25;
            v17 = v26;
            v13 = v27;
            v19 = v28;
            v14 = v29;
            v16 = v30;
            v18 = v31;
            v8 = v33;
          }

          *(v8 + 16) = v21;
          v22 = (v8 + v10);
          v22[-3] = vcvt_hight_f32_f64(vcvt_f32_f64(v12), v13);
          v22[-2] = vcvt_hight_f32_f64(vcvt_f32_f64(v15), v14);
          v22[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v17), v16);
          *v22 = vcvt_hight_f32_f64(vcvt_f32_f64(v19), v18);
          v10 += 64;
          v11 += 8;
          v9 = v21;
          --v7;
        }

        while (v7);
        v23 = v8;

        return v23;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *specialized static Int8.getValueArrayOpt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    v4 = RIOPxrVtValueCopyInt32Array();
    if (v4)
    {
      v15 = v4;
      v5 = v4;
      closure #1 in RIOPxrVtValueRef.asInt32Array.getter(MEMORY[0x277D00E90], specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v14);

      v6 = v14;
      v7 = *(v14 + 16);
      if (v7)
      {
        v15 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
        v8 = v15;
        v9 = *(v15 + 16);
        v10 = 32;
        do
        {
          v11 = *(v6 + v10);
          v15 = v8;
          v12 = *(v8 + 24);
          if (v9 >= v12 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v9 + 1, 1);
            v8 = v15;
          }

          *(v8 + 16) = v9 + 1;
          *(v8 + v9 + 32) = v11;
          v10 += 4;
          ++v9;
          --v7;
        }

        while (v7);
        v13 = v8;

        return v13;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *specialized static Int.getValue2ArrayOpt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    v4 = RIOPxrVtValueCopyInt2Array();
    if (v4)
    {
      v16 = v4;
      v5 = v4;
      closure #1 in RIOPxrVtValueRef.asInt2Array.getter(&v15);

      v6 = v15;
      v7 = *(v15 + 2);
      if (v7)
      {
        v16 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
        v8 = v16;
        v9 = *(v16 + 16);
        v10 = 32;
        do
        {
          v11 = *&v6[v10];
          v16 = v8;
          v12 = *(v8 + 24);
          if (v9 >= v12 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v9 + 1, 1);
            v8 = v16;
          }

          *&v13 = v11;
          *(&v13 + 1) = SHIDWORD(v11);
          *(v8 + 16) = v9 + 1;
          *(v8 + 16 * v9 + 32) = v13;
          v10 += 8;
          ++v9;
          --v7;
        }

        while (v7);
        v14 = v8;

        return v14;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *specialized static Int.getValue3ArrayOpt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    v4 = RIOPxrVtValueCopyInt3Array();
    if (v4)
    {
      v18 = v4;
      v5 = v4;
      closure #1 in RIOPxrVtValueRef.asInt3Array.getter(MEMORY[0x277D00E88], specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v17);

      v6 = v17;
      v7 = *(v17 + 16);
      if (v7)
      {
        v18 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
        v8 = v18;
        v9 = *(v18 + 16) + 1;
        v10 = 32;
        do
        {
          v11 = *(v6 + v10);
          v18 = v8;
          v12 = *(v8 + 24);
          if (v9 - 1 >= v12 >> 1)
          {
            v16 = v11;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v9, 1);
            v11 = v16;
            v8 = v18;
          }

          *&v13 = v11;
          *(&v13 + 1) = SDWORD1(v11);
          *(v8 + 16) = v9;
          v14 = (v8 + 32 * v9);
          *v14 = v13;
          v14[1] = SDWORD2(v11);
          ++v9;
          v10 += 16;
          --v7;
        }

        while (v7);
        v15 = v8;

        return v15;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *specialized static Int.getValue4ArrayOpt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    v4 = RIOPxrVtValueCopyInt4Array();
    if (v4)
    {
      v19 = v4;
      v5 = v4;
      closure #1 in RIOPxrVtValueRef.asInt3Array.getter(MEMORY[0x277D00E98], specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v18);

      v6 = v18;
      v7 = *(v18 + 16);
      if (v7)
      {
        v19 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
        v8 = v19;
        v9 = *(v19 + 16) + 1;
        v10 = 32;
        do
        {
          v11 = *(v6 + v10);
          v19 = v8;
          v12 = *(v8 + 24);
          if (v9 - 1 >= v12 >> 1)
          {
            v17 = v11;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v9, 1);
            v11 = v17;
            v8 = v19;
          }

          *&v13 = v11;
          *(&v13 + 1) = SDWORD1(v11);
          v14 = v13;
          *&v13 = SDWORD2(v11);
          *(&v13 + 1) = SHIDWORD(v11);
          *(v8 + 16) = v9;
          v15 = (v8 + 32 * v9);
          *v15 = v14;
          v15[1] = v13;
          ++v9;
          v10 += 16;
          --v7;
        }

        while (v7);
        v16 = v8;

        return v16;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *specialized static Int16.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(id, void *), uint64_t (*a4)(BOOL, uint64_t, uint64_t, uint64_t), void (*a5)(BOOL, unint64_t, uint64_t), double a6)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v11 = result;
    v12 = a2();
    if (v12)
    {
      v23 = v12;
      v13 = v12;
      closure #1 in RIOPxrVtValueRef.asInt32Array.getter(a3, a4, &v22);

      v14 = v22;
      v15 = *(v22 + 16);
      if (v15)
      {
        v23 = MEMORY[0x277D84F90];
        a5(0, v15, 0);
        v16 = v23;
        v17 = *(v23 + 16);
        v18 = 32;
        do
        {
          v19 = *(v14 + v18);
          v23 = v16;
          v20 = *(v16 + 24);
          if (v17 >= v20 >> 1)
          {
            a5(v20 > 1, v17 + 1, 1);
            v16 = v23;
          }

          *(v16 + 16) = v17 + 1;
          *(v16 + 2 * v17 + 32) = v19;
          v18 += 4;
          ++v17;
          --v15;
        }

        while (v15);
        v21 = v16;

        return v21;
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *specialized static simd_float2x2.getValueOpt(from:time:)(uint64_t a1, double a2)
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v3 = result;
    Matrix2d = RIOPxrVtValueGetMatrix2d();

    if (Matrix2d)
    {
      return vcvt_f32_f64(0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void specialized static simd_float3x3.getValueOpt(from:time:)(uint64_t a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Matrix3d = RIOPxrVtValueGetMatrix3d();

    if (Matrix3d)
    {
      v7 = 0;
      *&v8 = vcvt_f32_f64(0);
      *(&v8 + 2) = 0.0;
      HIDWORD(v8) = 0;
      *&v9 = v8;
      *(&v9 + 2) = 0.0;
      HIDWORD(v9) = 0;
      *&v10 = v8;
      *(&v10 + 2) = 0.0;
      HIDWORD(v10) = 0;
    }

    else
    {
      v7 = 1;
      v9 = 0uLL;
      v10 = 0uLL;
      v8 = 0uLL;
    }
  }

  else
  {
    v8 = 0uLL;
    v7 = 1;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  *(a2 + 48) = v7;
}

void specialized static simd_float4x4.getValueOpt(from:time:)(float32x4_t *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Matrix4d = RIOPxrVtValueGetMatrix4d();

    if (Matrix4d)
    {
      v7 = 0;
      v8 = vcvt_hight_f32_f64(vcvt_f32_f64(0), 0);
      v9 = v8;
      v10 = v8;
      v11 = v8;
    }

    else
    {
      v7 = 1;
      v9 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
      v8 = 0uLL;
    }
  }

  else
  {
    v7 = 1;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  *a2 = v8;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v11;
  a2[4].i8[0] = v7;
}

uint64_t specialized static Half.vtValue(from:)(uint64_t result)
{
  v1 = *(*result + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 3)
  {
    return RIOPxrVtValueCreateWithHalf3();
  }

LABEL_7:
  __break(1u);
  return result;
}

__n128 **specialized static Half.vtValue(from:)(__n128 **result)
{
  v1 = (*result)[1].n128_u64[0];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1 == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 != 3)
  {
    return RIOPxrVtValueCreateWithHalf4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t specialized static ToolsFoundations.Token.vtValue(from:)(uint64_t a1, void (*a2)(void), uint64_t (*a3)(Class))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      v9 = v8;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v5;
    }

    while (v5);
  }

  a2(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = a3(isa);

  return v11;
}

uint64_t specialized static Half.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      v3 += 4;
      RIOPxrVtValueCreateWithHalf();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithHalfArray();

  return v5;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    while (1)
    {
      v5 = *(*v4 + 16);
      if (!v5)
      {
        break;
      }

      if (v5 == 1)
      {
        goto LABEL_8;
      }

      RIOPxrVtValueCreateWithHalf2();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v4 += 8;
      if (!--v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);
  }

  else
  {
LABEL_6:
    type metadata accessor for RIOPxrVtValueRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = RIOPxrVtValueCreateWithHalf2Array();

    return v7;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    while (1)
    {
      v5 = *(*v4 + 16);
      if (!v5)
      {
        break;
      }

      if (v5 == 1)
      {
        goto LABEL_9;
      }

      if (v5 < 3)
      {
        goto LABEL_10;
      }

      RIOPxrVtValueCreateWithHalf3();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v4 += 8;
      if (!--v1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_7:
    type metadata accessor for RIOPxrVtValueRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = RIOPxrVtValueCreateWithHalf3Array();

    return v7;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    while (1)
    {
      v5 = *(*v4 + 16);
      if (!v5)
      {
        break;
      }

      if (v5 == 1)
      {
        goto LABEL_10;
      }

      if (v5 < 3)
      {
        goto LABEL_11;
      }

      if (v5 == 3)
      {
        goto LABEL_12;
      }

      RIOPxrVtValueCreateWithHalf4();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v4 += 8;
      if (!--v1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:
    type metadata accessor for RIOPxrVtValueRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = RIOPxrVtValueCreateWithHalf4Array();

    return v7;
  }

  return result;
}

uint64_t specialized static Frame4D.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      v3 += 128;
      RIOPxrVtValueCreateWithMatrix4d();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithMatrix4dArray();

  return v5;
}

uint64_t specialized static Bool.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      ++v3;
      RIOPxrVtValueCreateWithBool();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithBoolArray();

  return v5;
}

uint64_t specialized static Double.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      v3 += 8;
      RIOPxrVtValueCreateWithDouble();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithDoubleArray();

  return v5;
}

uint64_t specialized static Float.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      v3 += 4;
      RIOPxrVtValueCreateWithFloat();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithFloatArray();

  return v5;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      v3 += 8;
      RIOPxrVtValueCreateWithFloat2();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithFloat2Array();

  return v5;
}

uint64_t specialized static Int.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    while (1)
    {
      v5 = *v3++;
      result = v5;
      if (v5 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (result > 0x7FFFFFFF)
      {
        goto LABEL_8;
      }

      RIOPxrVtValueCreateWithInt32();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!--v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);
  }

  else
  {
LABEL_6:
    type metadata accessor for RIOPxrVtValueRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = RIOPxrVtValueCreateWithInt32Array();

    return v7;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      vld2_f32(v3);
      v3 += 4;
      RIOPxrVtValueCreateWithInt2();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithInt2Array();

  return v5;
}

{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    do
    {
      vld2q_f32(v3);
      v3 += 8;
      RIOPxrVtValueCreateWithInt4();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithInt4Array();

  return v5;
}

uint64_t specialized static simd_quatd.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      v3 += 32;
      RIOPxrVtValueCreateWithQuatd();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithQuatdArray();

  return v5;
}

uint64_t specialized static simd_quatf.vtValue(from:)(__n128 *a1)
{
  v1 = a1[1].n128_u64[0];
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 2;
    do
    {
      ++v3;
      RIOPxrVtValueCreateWithQuatf();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithQuatfArray();

  return v5;
}

uint64_t specialized static simd_float2x2.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 40;
    do
    {
      RIOPxrVtValueCreateWithMatrix2f();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithMatrix2dArray();

  return v5;
}

uint64_t specialized static simd_float3x3.vtValue(from:)(__n128 *a1)
{
  v1 = a1[1].n128_u64[0];
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 4;
    do
    {
      RIOPxrVtValueCreateWithMatrix3f();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 3;
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithMatrix3dArray();

  return v5;
}

uint64_t specialized static simd_float4x4.vtValue(from:)(__n128 *a1)
{
  v1 = a1[1].n128_u64[0];
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 5;
    do
    {
      RIOPxrVtValueCreateWithMatrix4f();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithMatrix4dArray();

  return v5;
}

uint64_t specialized static simd_double2x2.vtValue(from:)(__n128 *a1)
{
  v1 = a1[1].n128_u64[0];
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 3;
    do
    {
      RIOPxrVtValueCreateWithMatrix2d();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithMatrix2dArray();

  return v5;
}

uint64_t specialized static simd_double3x3.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 96;
    do
    {
      v3 += 96;
      RIOPxrVtValueCreateWithMatrix3d();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithMatrix3dArray();

  return v5;
}

uint64_t specialized static simd_double4x4.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      RIOPxrVtValueCreateWithMatrix4d();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 128;
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithMatrix4dArray();

  return v5;
}

unint64_t specialized static UInt.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    while (1)
    {
      v5 = *v3++;
      result = v5;
      if (HIDWORD(v5))
      {
        break;
      }

      RIOPxrVtValueCreateWithUInt32();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    type metadata accessor for RIOPxrVtValueRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = RIOPxrVtValueCreateWithUInt32Array();

    return v7;
  }

  return result;
}

uint64_t specialized static Int8.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      ++v3;
      RIOPxrVtValueCreateWithInt32();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithInt32Array();

  return v5;
}

uint64_t specialized static Int16.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      v3 += 2;
      RIOPxrVtValueCreateWithInt32();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithInt32Array();

  return v5;
}

uint64_t specialized static Int64.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      v3 += 8;
      RIOPxrVtValueCreateWithInt64();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithInt64Array();

  return v5;
}

uint64_t specialized static Double.vtValue(from:)(__n128 *a1)
{
  v1 = a1[1].n128_u64[0];
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 2;
    do
    {
      ++v3;
      RIOPxrVtValueCreateWithDouble2();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithDouble2Array();

  return v5;
}

uint64_t specialized static Int32.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      v3 += 8;
      RIOPxrVtValueCreateWithInt2();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithInt2Array();

  return v5;
}

uint64_t specialized static Float.vtValue(from:)(__n128 *a1)
{
  v1 = a1[1].n128_u64[0];
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 2;
    do
    {
      ++v3;
      RIOPxrVtValueCreateWithFloat3();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithFloat3Array();

  return v5;
}

{
  v1 = a1[1].n128_u64[0];
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 2;
    do
    {
      ++v3;
      RIOPxrVtValueCreateWithFloat4();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithFloat4Array();

  return v5;
}

uint64_t specialized static Int.vtValue(from:)(int32x4_t *a1)
{
  v1 = a1[1].i64[0];
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 2;
    do
    {
      v3 += 2;
      RIOPxrVtValueCreateWithInt3();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithInt3Array();

  return v5;
}

uint64_t specialized static Double.vtValue(from:)(uint64_t a1, uint64_t (*a2)(Class), uint64_t (*a3)(_OWORD *))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = (a1 + 32);
    do
    {
      v8 = *v7;
      v9 = v7[1];
      v7 += 2;
      v13[0] = v8;
      v13[1] = v9;
      a3(v13);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v4;
    }

    while (v4);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = a2(isa);

  return v11;
}

uint64_t specialized static Int32.vtValue(from:)(__n128 *a1, uint64_t (*a2)(Class), uint64_t (*a3)(uint64_t, __n128))
{
  v4 = a1[1].n128_u64[0];
  if (v4)
  {
    v7 = specialized ContiguousArray.reserveCapacity(_:)();
    v8 = a1 + 2;
    do
    {
      v9 = *v8++;
      a3(v7, v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = specialized ContiguousArray._endMutation()();
      --v4;
    }

    while (v4);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = a2(isa);

  return v11;
}

uint64_t specialized static UInt8.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      ++v3;
      RIOPxrVtValueCreateWithUInt8();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithUInt8Array();

  return v5;
}

uint64_t specialized static UInt16.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      v3 += 2;
      RIOPxrVtValueCreateWithUInt32();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithUInt32Array();

  return v5;
}

uint64_t specialized static Int32.vtValue(from:)(uint64_t a1, uint64_t (*a2)(Class), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      a3(v8);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v4;
    }

    while (v4);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = a2(isa);

  return v10;
}

uint64_t specialized static UInt64.vtValue(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      v3 += 8;
      RIOPxrVtValueCreateWithUInt64();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }

  type metadata accessor for RIOPxrVtValueRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithUInt64Array();

  return v5;
}

double specialized static Int.getValue3(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2 && (v3 = v2, Int3 = RIOPxrVtValueGetInt3(), v3, (Int3 & 1) != 0))
  {
    return 0.0;
  }

  else
  {
    return 0.0;
  }
}

double specialized static Int.getValue4(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2 && (v3 = v2, Int4 = RIOPxrVtValueGetInt4(), v3, (Int4 & 1) != 0))
  {
    return 0.0;
  }

  else
  {
    return 0.0;
  }
}

double specialized static Int.getValue2(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  result = 0.0;
  if (v2)
  {
    v4 = v2;
    RIOPxrVtValueGetInt2();

    return 0.0;
  }

  return result;
}

double specialized static simd_float2x2.getValue(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  v3 = 0.0;
  if (v2)
  {
    v4 = v2;
    Matrix2d = RIOPxrVtValueGetMatrix2d();

    if (Matrix2d)
    {
      return COERCE_DOUBLE(vcvt_f32_f64(0));
    }
  }

  return v3;
}

void specialized static simd_float3x3.getValue(from:time:)(_OWORD *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    Matrix3d = RIOPxrVtValueGetMatrix3d();

    if (Matrix3d)
    {
      *&v7 = vcvt_f32_f64(0);
      *(&v7 + 2) = 0.0;
      HIDWORD(v7) = 0;
      *&v8 = v7;
      *(&v8 + 2) = 0.0;
      HIDWORD(v8) = 0;
      *&v9 = v7;
      *(&v9 + 2) = 0.0;
      HIDWORD(v9) = 0;
    }

    else
    {
      v8 = 0uLL;
      v9 = 0uLL;
      v7 = 0uLL;
    }
  }

  else
  {
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
}

double specialized static simd_float4x4.getValue(from:time:)(uint64_t a1, double a2)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  v3 = 0uLL;
  if (v2)
  {
    v4 = v2;
    Matrix4d = RIOPxrVtValueGetMatrix4d();

    if (Matrix4d)
    {
      *&v3 = vcvt_hight_f32_f64(vcvt_f32_f64(0), 0).u64[0];
    }

    else
    {
      *&v3 = 0;
    }
  }

  return *&v3;
}

unint64_t lazy protocol witness table accessor for type Half and conformance Half()
{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half and conformance Half;
  if (!lazy protocol witness table cache variable for type Half and conformance Half)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half and conformance Half);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

uint64_t RIOPxrVtValueRef.asPoint3h.getter@<X0>(uint64_t *a1@<X8>)
{

  return RIOPxrVtValueRef.asNormal3h.getter(a1);
}

uint64_t RIOPxrVtValueRef.asVector3h.getter@<X0>(uint64_t *a1@<X8>)
{

  return RIOPxrVtValueRef.asNormal3h.getter(a1);
}

uint64_t RIOPxrVtValueRef.asColor3h.getter@<X0>(uint64_t *a1@<X8>)
{

  return RIOPxrVtValueRef.asTexCoord3h.getter(a1);
}

double RIOPxrVtValueRef.asPoint3f.getter@<D0>(int8x16_t *a1@<X8>)
{

  return RIOPxrVtValueRef.asNormal3f.getter(a1);
}

double RIOPxrVtValueRef.asColor3f.getter@<D0>(int8x16_t *a1@<X8>)
{

  return RIOPxrVtValueRef.asNormal3f.getter(a1);
}

double RIOPxrVtValueRef.asVector3f.getter@<D0>(int8x16_t *a1@<X8>)
{

  return RIOPxrVtValueRef.asNormal3f.getter(a1);
}

double RIOPxrVtValueRef.asTexCoord3f.getter@<D0>(int8x16_t *a1@<X8>)
{

  return RIOPxrVtValueRef.asNormal3f.getter(a1);
}

double RIOPxrVtValueRef.asPoint3d.getter@<D0>(int8x16_t *a1@<X8>)
{

  return RIOPxrVtValueRef.asNormal3d.getter(a1);
}

double RIOPxrVtValueRef.asColor3d.getter@<D0>(int8x16_t *a1@<X8>)
{

  return RIOPxrVtValueRef.asNormal3d.getter(a1);
}

double RIOPxrVtValueRef.asVector3d.getter@<D0>(int8x16_t *a1@<X8>)
{

  return RIOPxrVtValueRef.asNormal3d.getter(a1);
}

double RIOPxrVtValueRef.asTexCoord3d.getter@<D0>(int8x16_t *a1@<X8>)
{

  return RIOPxrVtValueRef.asNormal3d.getter(a1);
}

void closure #1 in static TriggerBuilder.generateTapTriggerSpecifications(inputs:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = type metadata accessor for __RKEntityTriggerSpecification();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 16))(v11, a2, v12);
  (*(v8 + 104))(v11, *MEMORY[0x277CDAFF0], v7);
  v13 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
    *a3 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    *a3 = v13;
  }

  v13[2] = v16 + 1;
  (*(v8 + 32))(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v11, v7);
  v17 = RIOBuilderInputsGetImportSession();
  if (v17)
  {
    v18 = v17;
    SwiftObject = RIOImportSessionGetSwiftObject();

    if (SwiftObject)
    {
      v20 = swift_allocObject();
      v20[2] = a1;
      v20[3] = closure #1 in closure #1 in static TriggerBuilder.generateTapTriggerSpecifications(inputs:);
      v20[4] = 0;
      v21 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;

      swift_beginAccess();
      v22 = *(SwiftObject + v21);
      aBlock[4] = partial apply for closure #1 in Inputs.performBlockLaterWithEntity(_:_:);
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_11;
      v23 = _Block_copy(aBlock);

      v24 = v22;

      RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue();
      _Block_release(v23);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void closure #1 in closure #1 in static TriggerBuilder.generateTapTriggerSpecifications(inputs:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18CollisionComponentVSgMd, &_s10RealityKit18CollisionComponentVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Entity.ComponentSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Entity.components.getter();
  v9 = type metadata accessor for CollisionComponent();
  Entity.ComponentSet.subscript.getter();
  (*(v5 + 8))(v8, v4);
  v10 = (*(*(v9 - 8) + 48))(v3, 1, v9);
  outlined destroy of CollisionComponent?(v3);
  if (v10 == 1)
  {
    Entity.generateCollisionShapes(recursive:)(1);
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of CollisionComponent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18CollisionComponentVSgMd, &_s10RealityKit18CollisionComponentVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for anchoringComponent()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.anchoringComponent = result;
  return result;
}

uint64_t closure #1 in AnchoringComponentBuilder.run(inputs:)(uint64_t a1, _BYTE *a2, float a3)
{
  v146 = *MEMORY[0x277D85DE8];
  v134 = Inputs.prim.getter();
  v3 = RIOPxrUsdObjectCopyName();
  v4 = RIOPxrTfTokenCopyString();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = Prim.children.getter();
  v9 = v8;
  v133 = v7;
  v131 = v5;
  if (v8 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v11 = 0;
    while ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x26670F670](v11, v9);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v14 = v12;
      v15 = RIOPxrUsdObjectCopyName();
      if (one-time initialization token for descriptorName != -1)
      {
        swift_once();
      }

      v16 = static AnchoringComponentBuilder.descriptorName;
      type metadata accessor for RIOPxrTfTokenRef(0);
      lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
      v17 = v16;
      v18 = static _CFObject.== infix(_:_:)();

      if (v18)
      {

        v19 = v14;
        goto LABEL_20;
      }

      ++v11;
      if (v13 == i)
      {
        goto LABEL_19;
      }
    }

    if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v13 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  v19 = 0;
LABEL_20:
  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_44;
  }

  v20 = RIOPxrUsdPrimCopyAttribute();
  v21 = RIOPxrUsdAttributeCopyValue();
  if (!v21)
  {

LABEL_45:
    AnchoringComponentBuilder.clear(inputs:)();

LABEL_46:
  }

  v22 = v21;
  v23 = RIOPxrVtValueCopyToken();

  if (!v23)
  {
    goto LABEL_44;
  }

  v24 = v19;
  v25 = RIOPxrTfTokenCopyString();
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (v26 == 0xD000000000000014 && 0x80000002619965C0 == v28)
  {

    v29 = v24;
    goto LABEL_30;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v29 = v24;
  if ((v30 & 1) == 0)
  {
LABEL_44:

    goto LABEL_45;
  }

LABEL_30:
  if (!Prim.parent.getter())
  {
    goto LABEL_33;
  }

  if ((RIOPxrUsdPrimEvaluateEntityOnExport() & 1) == 0)
  {
    if (one-time initialization token for anchoringComponent != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.anchoringComponent;
    v37 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_26198A8E0;
    v39 = RIOPxrUsdObjectCopyPath();
    v40 = RIOPxrSdfPathCopyString();
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = MEMORY[0x277D837D0];
    *(v38 + 56) = MEMORY[0x277D837D0];
    v45 = lazy protocol witness table accessor for type String and conformance String();
    *(v38 + 64) = v45;
    *(v38 + 32) = v41;
    *(v38 + 40) = v43;

    *(v38 + 96) = v44;
    *(v38 + 104) = v45;
    *(v38 + 72) = v131;
    *(v38 + 80) = v133;
    os_log(_:dso:log:type:_:)("Prim is not an entity: %{public}s for %{public}s.", 53, 2, &dword_26187B000, v36, v37, v38);

    goto LABEL_46;
  }

LABEL_33:
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(&v137, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (!*(&v138 + 1))
  {
    outlined destroy of Any?(&v137);
    goto LABEL_53;
  }

  type metadata accessor for EntityProxy(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_53:
    if (one-time initialization token for anchoringComponent != -1)
    {
      swift_once();
    }

    v46 = static OS_os_log.anchoringComponent;
    v47 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_2619891C0;
    *(v48 + 56) = MEMORY[0x277D837D0];
    *(v48 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v48 + 32) = v131;
    *(v48 + 40) = v133;
    os_log(_:dso:log:type:_:)("Input is not an entity %{public}s.", 36, 2, &dword_26187B000, v46, v47, v48);
  }

  if ((RIOPxrUsdPrimIsActive() & 1) == 0)
  {
    AnchoringComponentBuilder.clear(inputs:)();
  }

  if (one-time initialization token for typePropertyName != -1)
  {
    swift_once();
  }

  *&v137 = static AnchoringComponentBuilder.typePropertyName;
  v31 = static AnchoringComponentBuilder.typePropertyName;
  v32 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v137, v29);

  if (!v32 || (v33 = RIOPxrVtValueCopyToken(), v32, !v33))
  {
    if (String.count.getter() < 1)
    {
      v34 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v34 = RIOPxrTfTokenCreateWithCString();
    }

    v33 = v34;
  }

  __AssetRef.__as<A>(_:)();
  REAnchoringComponentGetComponentType();
  v49 = REEntityGetOrAddComponentByClass();
  swift_beginAccess();
  v50 = objc_getAssociatedObject(a2, &static BuilderAssociatedKeys.CoreReference);
  result = swift_endAccess();
  if (v50)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v145, &v137);
    type metadata accessor for RIOBuilderRef(0);
    swift_dynamicCast();
    RIOBuilderAddComponent();

    if (one-time initialization token for isRequiredPropertyName != -1)
    {
      swift_once();
    }

    v51 = static AnchoringComponentBuilder.isRequiredPropertyName;
    *&v137 = static AnchoringComponentBuilder.isRequiredPropertyName;

    v52 = v51;
    v53 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v137, v134);

    if (v53)
    {
      LOBYTE(v137) = 0;
      Bool = RIOPxrVtValueGetBool();

      if (Bool)
      {
        REAnchoringComponentSetIsRequired();
      }
    }

    if (one-time initialization token for scaleFactorPropertyName != -1)
    {
      swift_once();
    }

    *&v137 = static AnchoringComponentBuilder.scaleFactorPropertyName;
    v55 = static AnchoringComponentBuilder.scaleFactorPropertyName;
    v56 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v137, v134);

    if (v56)
    {
      LODWORD(v137) = 0;
      Float = RIOPxrVtValueGetFloat();

      if (Float)
      {
        REAnchoringComponentSetScaleFactor();
      }
    }

    v58 = v33;
    if (String.count.getter() < 1)
    {
      v59 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v59 = RIOPxrTfTokenCreateWithCString();
    }

    v60 = v59;
    type metadata accessor for RIOPxrTfTokenRef(0);
    lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
    v61 = static _CFObject.== infix(_:_:)();

    if (v61)
    {
      goto LABEL_75;
    }

    if (String.count.getter() < 1)
    {
      v62 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v62 = RIOPxrTfTokenCreateWithCString();
    }

    v63 = v62;
    v64 = static _CFObject.== infix(_:_:)();

    if (v64)
    {

      if (one-time initialization token for transformPropertyName != -1)
      {
        swift_once();
      }

      *&v137 = static AnchoringComponentBuilder.transformPropertyName;
      v65 = static AnchoringComponentBuilder.transformPropertyName;
      v66 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v137, v24);

      if (v66)
      {
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        RIOPxrVtValueGetMatrix4d();
      }

      REAnchoringComponentSetDescriptorType();
      REAnchoringComponentSetDescriptorTransform();
      goto LABEL_176;
    }

    if (String.count.getter() < 1)
    {
      v67 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v67 = RIOPxrTfTokenCreateWithCString();
    }

    v68 = v67;
    v69 = static _CFObject.== infix(_:_:)();

    if (v69)
    {

      if (one-time initialization token for alignmentPropertyName != -1)
      {
        swift_once();
      }

      *&v137 = static AnchoringComponentBuilder.alignmentPropertyName;
      v70 = static AnchoringComponentBuilder.alignmentPropertyName;
      v71 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v137, v24);

      if (!v71 || (v72 = RIOPxrVtValueCopyToken(), v71, !v72))
      {
        if (String.count.getter() < 1)
        {
          v73 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v73 = RIOPxrTfTokenCreateWithCString();
        }

        v72 = v73;
      }

      v81 = v72;
      if (String.count.getter() < 1)
      {
        v82 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v82 = RIOPxrTfTokenCreateWithCString();
      }

      v83 = v82;
      v84 = static _CFObject.== infix(_:_:)();

      if (v84)
      {
      }

      else
      {
        if (String.count.getter() < 1)
        {
          v85 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v85 = RIOPxrTfTokenCreateWithCString();
        }

        v99 = v85;
        static _CFObject.== infix(_:_:)();
      }

      if (one-time initialization token for classificationPropertyName != -1)
      {
        swift_once();
      }

      *&v137 = static AnchoringComponentBuilder.classificationPropertyName;
      v100 = static AnchoringComponentBuilder.classificationPropertyName;
      v101 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v137, v24);

      if (!v101 || (v102 = RIOPxrVtValueCopyToken(), v101, !v102))
      {
        if (String.count.getter() < 1)
        {
          v103 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v103 = RIOPxrTfTokenCreateWithCString();
        }

        v102 = v103;
      }

      v104 = v102;
      if (String.count.getter() < 1)
      {
        v105 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v105 = RIOPxrTfTokenCreateWithCString();
      }

      v106 = v105;
      v107 = static _CFObject.== infix(_:_:)();

      if (v107 & 1) != 0 || (String.count.getter() < 1 ? (v108 = RIOPxrTfTokenEmpty()) : (v108 = RIOPxrTfTokenCreateWithCString()), (v109 = v108, v110 = static _CFObject.== infix(_:_:)(), v109, (v110) || (String.count.getter() < 1 ? (v111 = RIOPxrTfTokenEmpty()) : (v111 = RIOPxrTfTokenCreateWithCString()), (v114 = v111, v115 = static _CFObject.== infix(_:_:)(), v114, (v115) || (String.count.getter() < 1 ? (v116 = RIOPxrTfTokenEmpty()) : (v116 = RIOPxrTfTokenCreateWithCString()), v117 = v116, v118 = static _CFObject.== infix(_:_:)(), v117, (v118))))
      {
      }

      else
      {
        if (String.count.getter() < 1)
        {
          v119 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v119 = RIOPxrTfTokenCreateWithCString();
        }

        v126 = v119;
        static _CFObject.== infix(_:_:)();
      }

      if (one-time initialization token for boundsPropertyName != -1)
      {
        swift_once();
      }

      *&v137 = static AnchoringComponentBuilder.boundsPropertyName;
      v127 = static AnchoringComponentBuilder.boundsPropertyName;
      v128 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v137, v24);

      if (v128)
      {
        *&v137 = 0;
        RIOPxrVtValueGetFloat2();
      }

      REAnchoringComponentSetDescriptorType();
      REAnchoringComponentSetDescriptorAlignment();
      REAnchoringComponentSetDescriptorClassification();
      REAnchoringComponentSetDescriptorBounds();

      goto LABEL_176;
    }

    if (String.count.getter() < 1)
    {
      v74 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v74 = RIOPxrTfTokenCreateWithCString();
    }

    v75 = v74;
    v76 = static _CFObject.== infix(_:_:)();

    if ((v76 & 1) == 0)
    {
      if (String.count.getter() < 1)
      {
        v80 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v80 = RIOPxrTfTokenCreateWithCString();
      }

      v96 = v80;
      v97 = static _CFObject.== infix(_:_:)();

      if ((v97 & 1) == 0)
      {
        if (String.count.getter() < 1)
        {
          v98 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v98 = RIOPxrTfTokenCreateWithCString();
        }

        v112 = v98;
        v113 = static _CFObject.== infix(_:_:)();

        if ((v113 & 1) == 0)
        {
          goto LABEL_177;
        }

        goto LABEL_76;
      }

LABEL_75:

LABEL_76:
      REAnchoringComponentSetDescriptorType();
LABEL_176:
      MEMORY[0x26670FF10](v49);
LABEL_177:

      a2[17] = 1;
      return result;
    }

    if (one-time initialization token for resourcePathPropertyName != -1)
    {
      swift_once();
    }

    *&v137 = static AnchoringComponentBuilder.resourcePathPropertyName;
    v77 = static AnchoringComponentBuilder.resourcePathPropertyName;
    v78 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v137, v24);

    if (v78)
    {
      v79 = RIOPxrVtValueCopyAssetPath();
    }

    else
    {
      v79 = 0;
    }

    if (one-time initialization token for physicalWidthPropertyName != -1)
    {
      swift_once();
    }

    *&v137 = static AnchoringComponentBuilder.physicalWidthPropertyName;
    v86 = static AnchoringComponentBuilder.physicalWidthPropertyName;
    v87 = specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(&v137, v24);

    if (v87)
    {
      LODWORD(v137) = 0;
      RIOPxrVtValueGetFloat();
    }

    REAnchoringComponentSetDescriptorType();
    if (!v79)
    {
      goto LABEL_176;
    }

    v88 = v79;
    v89 = RIOPxrSdfAssetPathResolvedPathCopyString();
    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;

    String.utf8CString.getter();
    v93 = RIOPxrArAssetCreate();

    if (!v93)
    {

      goto LABEL_176;
    }

    CFDataNoCopy = RIOPxrArAssetCreateCFDataNoCopy();
    if (!CFDataNoCopy)
    {
      goto LABEL_125;
    }

    v95 = CFDataNoCopy;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_176;
    }

    v137 = xmmword_26198E2C0;
    static Data._conditionallyBridgeFromObjectiveC(_:result:)();

    if (*(&v137 + 1) >> 60 == 15)
    {
LABEL_125:

      goto LABEL_176;
    }

    v135 = v93;
    v120 = v137;
    v130 = specialized static CGImageRef.image(with:)(v137, *(&v137 + 1));
    if (!v130)
    {

      outlined consume of Data?(v120, *(&v120 + 1));
      goto LABEL_179;
    }

    type metadata accessor for __USDARReferenceProvidingPlugin();
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.assetService.getter();

    static __USDARReferenceProvidingPlugin.instance(for:)();
    __swift_destroy_boxed_opaque_existential_0(&v137);
    *&v137 = v90;
    *(&v137 + 1) = v92;
    *&v145 = 91;
    *(&v145 + 1) = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v121 = StringProtocol.components<A>(separatedBy:)();

    if (v121[2])
    {
      v122 = v121[4];
      v123 = v121[5];

      *&v137 = v122;
      *(&v137 + 1) = v123;
      *&v145 = 47;
      *(&v145 + 1) = 0xE100000000000000;
      v124 = StringProtocol.components<A>(separatedBy:)();

      if (!*(v124 + 16))
      {

        outlined consume of Data?(v120, *(&v120 + 1));

        v129 = v130;
        goto LABEL_181;
      }

      dispatch thunk of __USDARReferenceProvidingPlugin.createSchemePrefix(with:)();

      v125 = RIOPxrSdfAssetPathAssetPathCopyString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      String.utf8CString.getter();

      REAnchoringComponentSetDescriptorResourceGroup();

      String.utf8CString.getter();

      REAnchoringComponentSetDescriptorResourceName();

      outlined consume of Data?(v120, *(&v120 + 1));
LABEL_179:
      v129 = v135;
LABEL_181:

      goto LABEL_176;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void AnchoringComponentBuilder.clear(inputs:)()
{
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(&v1, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (v2)
  {
    type metadata accessor for EntityProxy(0);
    if (swift_dynamicCast())
    {
      if (*(v0 + 17) == 1)
      {
        __AssetRef.__as<A>(_:)();
        REAnchoringComponentGetComponentType();
        REEntityRemoveComponentByClass();

        *(v0 + 17) = 0;
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of Any?(&v1);
  }
}

uint64_t AnchoringComponentBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Builder.run(inputs:) in conformance AnchoringComponentBuilder(uint64_t a1)
{
  v2 = *v1;
  v7[2] = a1;
  v8 = v1;
  v9 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in AnchoringComponentBuilder.run(inputs:);
  *(v3 + 24) = v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_12;
  v4 = _Block_copy(aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized AnchoringComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for realityKitComponentTypeName != -1)
  {
    swift_once();
  }

  v8 = static AnchoringComponentBuilder.realityKitComponentTypeName;
  v0 = static AnchoringComponentBuilder.realityKitComponentTypeName;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v8 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  v4 = v8;
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v5 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v4, 0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_26198A640;
  *(v6 + 32) = v5;
  v8 = v3;

  specialized Sequence.forEach(_:)(v6);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v8;
}

uint64_t specialized AnchoringComponentBuilder.inputDescriptors()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A8E0;
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v1 = static EntityBuilder.OutputName;
  v2 = one-time initialization token for OutputIdentifier;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = static EntityBuilder.OutputIdentifier;
  v3 = *algn_27FEC8E68;
  *(inited + 32) = v1;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 80) = 112;

  if (String.count.getter() < 1)
  {
    v5 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v5 = RIOPxrTfTokenCreateWithCString();
  }

  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002619966F0;
  *(inited + 104) = 0xD000000000000020;
  *(inited + 112) = 0x8000000261994710;
  *(inited + 120) = v5;
  *(inited + 128) = 1;
  *(inited + 136) = 32;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO15InputDescriptorO_Tt0g5Tf4g_n(inited);
  v7 = v6;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v7;
}

uint64_t specialized AnchoringComponentBuilder.getAttribute(named:fromPrim:)(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (RIOPxrUsdPrimHasAttribute())
  {
    v2 = RIOPxrUsdPrimCopyAttribute();
    type metadata accessor for AnyAttribute();
    v3 = swift_allocObject();
    v3[2] = v2;
    EmptyValue = RIOPxrUsdAttributeCopyValue();
    if (!EmptyValue)
    {
      EmptyValue = RIOPxrVtValueCreateEmptyValue();
    }

    v5 = EmptyValue;
    outlined consume of Result<AnyAttribute, Object.Error>(v3, 0);
    return v5;
  }

  else
  {
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(0);
    return 0;
  }
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t SceneDescriptionFoundations.NamespaceEdit.description.getter()
{
  v0 = RIOPxrSdfNamespaceEditCopyCurrentPath();
  v1 = RIOPxrSdfPathCopyString();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = v2;
  MEMORY[0x26670F080](540945696, 0xE400000000000000);
  v3 = RIOPxrSdfNamespaceEditCopyNewPath();
  v4 = RIOPxrSdfPathCopyString();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x26670F080](v5, v7);

  MEMORY[0x26670F080](8236, 0xE200000000000000);
  RIOPxrSdfNamespaceEditGetIndex();
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26670F080](v8);

  return v10;
}

unint64_t SceneDescriptionFoundations.NamespaceEdit.debugDescription.getter()
{
  _StringGuts.grow(_:)(19);

  v0 = SceneDescriptionFoundations.NamespaceEdit.description.getter();
  MEMORY[0x26670F080](v0);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t SceneDescriptionFoundations.NamespaceEdit.currentPath.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfNamespaceEditCopyCurrentPath();
  *a1 = result;
  return result;
}

uint64_t SceneDescriptionFoundations.NamespaceEdit.newPath.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfNamespaceEditCopyNewPath();
  *a1 = result;
  return result;
}

uint64_t SceneDescriptionFoundations.NamespaceEdit.init()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfNamespaceEditCreateEmpty();
  *a1 = result;
  return result;
}

void SceneDescriptionFoundations.NamespaceEdit.init(currentPath:newPath:index:)(void **a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = RIOPxrSdfNamespaceEditCreateFromPaths();

  *a3 = v6;
}

uint64_t static SceneDescriptionFoundations.NamespaceEdit.remove(from:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfNamespaceEditCreateRemove();
  *a2 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.NamespaceEdit.rename(from:with:)@<X0>(uint64_t *a3@<X8>)
{
  result = RIOPxrSdfNamespaceEditCreateRename();
  *a3 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.NamespaceEdit.reorder(from:at:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrSdfNamespaceEditCreateReorder();
  *a2 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.NamespaceEdit.reparent(from:to:at:)@<X0>(uint64_t *a3@<X8>)
{
  result = RIOPxrSdfNamespaceEditCreateReparent();
  *a3 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.NamespaceEdit.reparentAndRename(from:to:with:at:)@<X0>(uint64_t *a4@<X8>)
{
  result = RIOPxrSdfNamespaceEditCreateReparentAndRename();
  *a4 = result;
  return result;
}

uint64_t SceneDescriptionFoundations.Layer.__allocating_init(tag:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  if (a2)
  {
    String.utf8CString.getter();
  }

  Anonymous = RIOPxrSdfLayerCreateAnonymous();
  swift_unknownObjectRelease();
  *(v3 + 16) = Anonymous;
  return v3;
}

uint64_t SceneDescriptionFoundations.Layer.init(tag:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    String.utf8CString.getter();
  }

  Anonymous = RIOPxrSdfLayerCreateAnonymous();
  swift_unknownObjectRelease();
  *(v2 + 16) = Anonymous;
  return v2;
}

uint64_t SceneDescriptionFoundations.Layer.init(relativeTo:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = 0;
  }

  String.utf8CString.getter();

  RelativeToLayer = RIOPxrSdfLayerCreateOrFindRelativeToLayer();

  if (RelativeToLayer)
  {
    *(v3 + 16) = RelativeToLayer;
  }

  else
  {
    type metadata accessor for SceneDescriptionFoundations.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t SceneDescriptionFoundations.Layer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SceneDescriptionFoundations.Layer()
{
  v0 = RIOPxrSdfLayerCopyIdentifier();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SceneDescriptionFoundations.Layer()
{
  v0 = RIOPxrSdfLayerCopyIdentifier();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  MEMORY[0x26670F080](v1, v3);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return 0x203A726579614C3CLL;
}

uint64_t SceneDescriptionFoundations.Layer.debugDescription.getter()
{
  v0 = RIOPxrSdfLayerCopyIdentifier();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  MEMORY[0x26670F080](v1, v3);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return 0x203A726579614C3CLL;
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.identifier()()
{
  v0 = SceneDescriptionFoundations.Layer.description.getter(MEMORY[0x277D00918]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t SceneDescriptionFoundations.Layer.defaultPrim.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfLayerCopyDefaultPrim();
  *a1 = result;
  return result;
}

uint64_t key path setter for SceneDescriptionFoundations.Layer.defaultPrim : SceneDescriptionFoundations.Layer(void *a1, uint64_t *a2)
{
  if (RIOPxrTfTokenIsEmpty())
  {

    return RIOPxrSdfLayerClearDefaultPrim();
  }

  else
  {

    return RIOPxrSdfLayerSetDefaultPrim();
  }
}

void SceneDescriptionFoundations.Layer.defaultPrim.setter(id *a1)
{
  v1 = *a1;
  if (RIOPxrTfTokenIsEmpty())
  {

    RIOPxrSdfLayerClearDefaultPrim();
  }

  else
  {
    RIOPxrSdfLayerSetDefaultPrim();
  }
}

void (*SceneDescriptionFoundations.Layer.defaultPrim.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrSdfLayerCopyDefaultPrim();
  return SceneDescriptionFoundations.Layer.defaultPrim.modify;
}

void SceneDescriptionFoundations.Layer.defaultPrim.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    if (RIOPxrTfTokenIsEmpty())
    {

      RIOPxrSdfLayerClearDefaultPrim();
    }

    else
    {
      RIOPxrSdfLayerSetDefaultPrim();
    }

LABEL_10:

    return;
  }

  v3 = v2;
  if (!RIOPxrTfTokenIsEmpty())
  {
    RIOPxrSdfLayerSetDefaultPrim();
    goto LABEL_10;
  }

  RIOPxrSdfLayerClearDefaultPrim();
}

uint64_t SceneDescriptionFoundations.Layer.autoPlay.getter()
{
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  v1 = v0;
  v2 = RIOPxrSdfLayerGetMetadata();

  if (v2 && (Bool = RIOPxrVtValueGetBool(), v2, (Bool & 1) != 0))
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

void key path setter for SceneDescriptionFoundations.Layer.autoPlay : SceneDescriptionFoundations.Layer(unsigned __int8 *a1, uint64_t a2)
{
  if (String.count.getter() < 1)
  {
    v2 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v2 = RIOPxrTfTokenCreateWithCString();
  }

  v3 = v2;
  v4 = RIOPxrVtValueCreateWithBool();
  RIOPxrSdfLayerSetMetadata();
}

void SceneDescriptionFoundations.Layer.autoPlay.setter(char a1)
{
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  v2 = v1;
  v3 = RIOPxrVtValueCreateWithBool();
  RIOPxrSdfLayerSetMetadata();
}

void (*SceneDescriptionFoundations.Layer.autoPlay.modify(uint64_t a1))(unsigned __int8 *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = SceneDescriptionFoundations.Layer.autoPlay.getter() & 1;
  return SceneDescriptionFoundations.Layer.autoPlay.modify;
}

void SceneDescriptionFoundations.Layer.autoPlay.modify(unsigned __int8 *a1, char a2)
{
  v3 = String.count.getter();
  if (a2)
  {
    if (v3 < 1)
    {
      goto LABEL_6;
    }

LABEL_5:
    v4 = RIOPxrTfTokenCreateWithCString();
    goto LABEL_7;
  }

  if (v3 >= 1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v4 = RIOPxrTfTokenEmpty();
LABEL_7:
  v6 = v4;
  v5 = RIOPxrVtValueCreateWithBool();
  RIOPxrSdfLayerSetMetadata();
}

uint64_t SceneDescriptionFoundations.Layer.export(to:comment:fileFormatArguments:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, NSURL *a4@<X8>)
{
  URL._bridgeToObjectiveC()(a4);
  v7 = v6;
  if (!a3)
  {
    v8.super.isa = 0;
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
LABEL_3:
    String.utf8CString.getter();
  }

LABEL_5:
  v9 = RIOPxrSdfLayerExportWithURL();

  swift_unknownObjectRelease();
  return v9;
}

Swift::Bool __swiftcall SceneDescriptionFoundations.Layer.export(to:comment:fileFormatArguments:)(Swift::String to, Swift::String_optional comment, Swift::OpaquePointer_optional fileFormatArguments)
{
  object = comment.value._object;
  if (fileFormatArguments.value._rawValue)
  {
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  String.utf8CString.getter();
  if (object)
  {
    String.utf8CString.getter();
  }

  v5 = RIOPxrSdfLayerExportWithFilePath();

  swift_unknownObjectRelease();
  return v5;
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.toString()()
{
  v0 = RIOPxrSdfLayerCopyExportString();
  if (v0)
  {
    v1 = v0;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.comment()()
{
  v0 = SceneDescriptionFoundations.Layer.description.getter(MEMORY[0x277D008F8]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t SceneDescriptionFoundations.Layer.setComment(to:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = String.utf8CString.getter();
  a3(v5, v6 + 32);
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.displayName()()
{
  v0 = SceneDescriptionFoundations.Layer.description.getter(MEMORY[0x277D00900]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.assetName()()
{
  v0 = SceneDescriptionFoundations.Layer.description.getter(MEMORY[0x277D008F0]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.fileExtension()()
{
  v0 = SceneDescriptionFoundations.Layer.description.getter(MEMORY[0x277D00910]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.repositoryPath()()
{
  v0 = SceneDescriptionFoundations.Layer.description.getter(MEMORY[0x277D00930]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t static SceneDescriptionFoundations.Layer.createIdentifier(with:options:)(uint64_t a1, uint64_t a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  String.utf8CString.getter();
  Identifier = RIOPxrSdfLayerCreateIdentifier();

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.absolutePath(relativeTo:)(Swift::String relativeTo)
{
  String.utf8CString.getter();
  v1 = RIOPxrSdfLayerCopyAbsolutePath();

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall SceneDescriptionFoundations.Layer.realPath()()
{
  v0 = SceneDescriptionFoundations.Layer.description.getter(MEMORY[0x277D00928]);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t SceneDescriptionFoundations.Layer.description.getter(uint64_t (*a1)(void))
{
  v2 = a1(*(v1 + 16));
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void SceneDescriptionFoundations.Layer.subscript.getter(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = RIOPxrSdfLayerCopyCustomLayerDataValue();
  if (v5)
  {
    v7 = v5;
    RIOPxrVtValueRef.mapUSDValue<A>()(a2, a3);
  }

  else
  {
    v6 = *(*(a2 - 8) + 56);

    v6(a3, 1, 1, a2);
  }
}

void key path getter for SceneDescriptionFoundations.Layer.subscript<A>(customLayerDataKey:) : <A>SceneDescriptionFoundations.LayerA(id *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *a1;
  SceneDescriptionFoundations.Layer.subscript.getter(v4, a3);
}

uint64_t key path setter for SceneDescriptionFoundations.Layer.subscript<A>(customLayerDataKey:) : <A>SceneDescriptionFoundations.LayerA(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for Optional();
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v17 - v11;
  v13 = *a3;
  (*(v14 + 16))(&v17 - v11, a1, v10);
  v18 = v13;
  v15 = v13;
  return SceneDescriptionFoundations.Layer.subscript.setter(v12, &v18, v6, v7);
}

uint64_t SceneDescriptionFoundations.Layer.subscript.setter(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v11.n128_f32[0] = MEMORY[0x28223BE20](v8, v10);
  v13 = &v23 - v12;
  v14 = *(a3 - 8);
  v16 = MEMORY[0x28223BE20](v15, v11);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  (*(v9 + 16))(v13, a1, v8, v16);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    v20 = *(v9 + 8);
    v20(v13, v8);
    RIOPxrSdfLayerClearCustomLayerData();

    return (v20)(a1, v8);
  }

  else
  {
    (*(v14 + 32))(v18, v13, a3);
    v22 = (*(a4 + 8))(a3, a4);
    RIOPxrSdfLayerSetCustomLayerData();

    (*(v9 + 8))(a1, v8);
    return (*(v14 + 8))(v18, a3);
  }
}

void (*SceneDescriptionFoundations.Layer.subscript.modify(void *a1, void **a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Optional();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v17 = *a2;
  v11[6] = v15;
  v11[7] = v17;
  v18 = v17;
  SceneDescriptionFoundations.Layer.subscript.getter(a3, v16);

  return SceneDescriptionFoundations.Layer.subscript.modify;
}

void SceneDescriptionFoundations.Layer.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[5];
  if (a2)
  {
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[1];
    v9 = *v2;
    (*(v7 + 16))((*a1)[5], v3, v6);
    v12 = v4;
    SceneDescriptionFoundations.Layer.subscript.setter(v5, &v12, v9, v8);
    (*(v7 + 8))(v3, v6);
  }

  else
  {
    v10 = v2[1];
    v11 = *v2;
    v12 = (*a1)[7];
    SceneDescriptionFoundations.Layer.subscript.setter(v3, &v12, v11, v10);
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t SceneDescriptionFoundations.Layer.subLayerPaths()()
{
  v0 = RIOPxrSdfLayerCopySubLayerPaths();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return MEMORY[0x277D84F90];
}

Swift::Void __swiftcall SceneDescriptionFoundations.Layer.setSubLayerPaths(paths:)(Swift::OpaquePointer paths)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  RIOPxrSdfLayerSetSubLayerPathsWithStrings();
}

uint64_t SceneDescriptionFoundations.Layer.canApplyEdits(with:)(uint64_t a1, uint64_t (*a2)(uint64_t, Class))
{
  v4 = *(v2 + 16);
  v5 = *(a1 + 16);
  if (v5)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      v9 = v8;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v5;
    }

    while (v5);
  }

  type metadata accessor for RIOPxrSdfNamespaceEditRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = a2(v4, isa);

  return v11;
}

unint64_t one-time initialization function for replicationMessagePublishers()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo17RIOPxrSdfLayerRefa_9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static SceneDescriptionFoundations.Layer.replicationMessagePublishers = result;
  return result;
}

uint64_t @objc closure #1 in SceneDescriptionFoundations.Layer.ReplicationMessagePublisher.init(layerBase:)(_BYTE *a1, unint64_t a2, uint64_t a3)
{

  v7 = specialized Data.init(bytes:count:)(a1, a2);
  v8 = v5;
  PassthroughSubject.send(_:)();

  return outlined consume of Data._Representation(v7, v8);
}

uint64_t SceneDescriptionFoundations.Layer.ReplicationMessagePublisher.deinit()
{
  RIOPxrSdfLayerReplicationStopSending();

  return v0;
}

uint64_t SceneDescriptionFoundations.Layer.ReplicationMessagePublisher.__deallocating_deinit()
{
  RIOPxrSdfLayerReplicationStopSending();

  return swift_deallocClassInstance();
}

uint64_t SceneDescriptionFoundations.Layer.ReplicationMessagePublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = MEMORY[0x28223BE20](a1, a4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  PassthroughSubject.receive<A>(subscriber:)();
}

uint64_t SceneDescriptionFoundations.Layer.replicationMessagePublisher.getter()
{
  if (one-time initialization token for replicationMessagePublishers != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = specialized Dictionary.subscript.getter(v1, static SceneDescriptionFoundations.Layer.replicationMessagePublishers);
  if (v2)
  {
    v3 = v2;
LABEL_13:
    swift_endAccess();
    return v3;
  }

  swift_endAccess();
  type metadata accessor for SceneDescriptionFoundations.Layer.ReplicationMessagePublisher();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4DataVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4DataVs5NeverOGMR);
  swift_allocObject();
  *(v3 + 16) = PassthroughSubject.init()();
  *(v3 + 24) = v1;
  v4 = v1;
  RIOPxrSdfLayerReplicationStartSending();
  swift_beginAccess();
  if ((static SceneDescriptionFoundations.Layer.replicationMessagePublishers & 0xC000000000000001) == 0)
  {

    goto LABEL_12;
  }

  if (static SceneDescriptionFoundations.Layer.replicationMessagePublishers < 0)
  {
    v5 = static SceneDescriptionFoundations.Layer.replicationMessagePublishers;
  }

  else
  {
    v5 = static SceneDescriptionFoundations.Layer.replicationMessagePublishers & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaSet.count.getter();
  if (!__OFADD__(result, 1))
  {
    static SceneDescriptionFoundations.Layer.replicationMessagePublishers = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo17RIOPxrSdfLayerRefa_9RealityIO27SceneDescriptionFoundationsO0G0C27ReplicationMessagePublisherCTt1g5(v5, result + 1);
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = static SceneDescriptionFoundations.Layer.replicationMessagePublishers;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v4, isUniquelyReferenced_nonNull_native);
    static SceneDescriptionFoundations.Layer.replicationMessagePublishers = v8;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t SceneDescriptionFoundations.Layer.exportToUSDZ(at:firstLayerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    URL.deletingPathExtension()();
    v11 = URL.lastPathComponent.getter();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    v20[0] = v11;
    v20[1] = v13;

    MEMORY[0x26670F080](0x636473752ELL, 0xE500000000000000);
  }

  v14 = RIOPxrSdfLayerCopyIdentifier();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.utf8CString.getter();

  v15 = RIOPxrSdfAssetPathCreateFromCString();

  URL.path.getter();
  v16 = String.utf8CString.getter();

  v17 = String.utf8CString.getter();

  v18 = a4(v15, v16 + 32, v17 + 32);

  return v18;
}

uint64_t SceneDescriptionFoundations.Layer.modifyAssetPaths(modifyFunction:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in SceneDescriptionFoundations.Layer.modifyAssetPaths(modifyFunction:);
  *(v5 + 24) = v4;
  v8[4] = partial apply for thunk for @callee_guaranteed (@guaranteed CFStringRef) -> (@unowned Unmanaged<CFStringRef>);
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef) -> (@unowned Unmanaged<CFStringRef>);
  v8[3] = &block_descriptor_13;
  v6 = _Block_copy(v8);

  RIOPxrUsdUtilsModifyAssetPaths();
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in SceneDescriptionFoundations.Layer.modifyAssetPaths(modifyFunction:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = a2(v3);
  v6 = v5;

  v7 = MEMORY[0x26670EFB0](v4, v6);

  return v7;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef) -> (@unowned Unmanaged<CFStringRef>)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

uint64_t SceneDescriptionFoundations.Layer.colorConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfLayerCopyColorConfiguration();
  *a1 = result;
  return result;
}

void SceneDescriptionFoundations.Layer.colorConfiguration.setter(id *a1)
{
  v1 = *a1;
  RIOPxrSdfLayerSetColorConfiguration();
}

void (*SceneDescriptionFoundations.Layer.colorConfiguration.modify(uint64_t *a1))(id *a1)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrSdfLayerCopyColorConfiguration();
  return SceneDescriptionFoundations.Layer.colorConfiguration.modify;
}

void SceneDescriptionFoundations.Layer.colorConfiguration.modify(id *a1)
{
  v1 = *a1;
  RIOPxrSdfLayerSetColorConfiguration();
}

uint64_t SceneDescriptionFoundations.Layer.colorManagementSystem.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfLayerCopyColorManagementSystem();
  *a1 = result;
  return result;
}

void SceneDescriptionFoundations.Layer.colorManagementSystem.setter(id *a1)
{
  v1 = *a1;
  RIOPxrSdfLayerSetColorManagementSystem();
}

void (*SceneDescriptionFoundations.Layer.colorManagementSystem.modify(uint64_t *a1))(id *a1)
{
  a1[1] = *(v1 + 16);
  *a1 = RIOPxrSdfLayerCopyColorManagementSystem();
  return SceneDescriptionFoundations.Layer.colorManagementSystem.modify;
}

void SceneDescriptionFoundations.Layer.colorManagementSystem.modify(id *a1)
{
  v1 = *a1;
  RIOPxrSdfLayerSetColorManagementSystem();
}

uint64_t SceneDescriptionFoundations.Layer.documentation.getter()
{
  v0 = RIOPxrSdfLayerCopyDocumentation();

  return String.init(_:)(v0)._countAndFlagsBits;
}

uint64_t (*SceneDescriptionFoundations.Layer.documentation.modify(Swift::String *a1))()
{
  a1[1]._countAndFlagsBits = *(v1 + 16);
  v3 = RIOPxrSdfLayerCopyDocumentation();
  *a1 = String.init(_:)(v3);
  return SceneDescriptionFoundations.Layer.documentation.modify;
}

uint64_t (*SceneDescriptionFoundations.Layer.startTimeCode.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrSdfLayerGetStartTimeCode();
  *a1 = v3;
  return SceneDescriptionFoundations.Layer.startTimeCode.modify;
}

uint64_t (*SceneDescriptionFoundations.Layer.endTimeCode.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrSdfLayerGetEndTimeCode();
  *a1 = v3;
  return SceneDescriptionFoundations.Layer.endTimeCode.modify;
}

uint64_t (*SceneDescriptionFoundations.Layer.timeCodesPerSecond.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrSdfLayerGetTimeCodesPerSecond();
  *a1 = v3;
  return SceneDescriptionFoundations.Layer.timeCodesPerSecond.modify;
}

uint64_t (*SceneDescriptionFoundations.Layer.framesPerSecond.modify(void *a1))(uint64_t a1)
{
  a1[1] = *(v1 + 16);
  RIOPxrSdfLayerGetFramesPerSecond();
  *a1 = v3;
  return SceneDescriptionFoundations.Layer.framesPerSecond.modify;
}

uint64_t (*SceneDescriptionFoundations.Layer.framePrecision.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = RIOPxrSdfLayerGetFramePrecision();
  return SceneDescriptionFoundations.Layer.framePrecision.modify;
}

uint64_t SceneDescriptionFoundations.Layer.owner.getter()
{
  v0 = RIOPxrSdfLayerCopyOwner();

  return String.init(_:)(v0)._countAndFlagsBits;
}

uint64_t (*SceneDescriptionFoundations.Layer.owner.modify(Swift::String *a1))()
{
  a1[1]._countAndFlagsBits = *(v1 + 16);
  v3 = RIOPxrSdfLayerCopyOwner();
  *a1 = String.init(_:)(v3);
  return SceneDescriptionFoundations.Layer.owner.modify;
}

uint64_t SceneDescriptionFoundations.Layer.sessionOwner.getter()
{
  v0 = RIOPxrSdfLayerCopySessionOwner();

  return String.init(_:)(v0)._countAndFlagsBits;
}

uint64_t key path setter for SceneDescriptionFoundations.Layer.documentation : SceneDescriptionFoundations.Layer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v6 = *(*a2 + 16);
  v7 = String.utf8CString.getter();
  a5(v6, v7 + 32);
}

uint64_t SceneDescriptionFoundations.Layer.documentation.setter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = String.utf8CString.getter();

  a3(v5, v6 + 32);
}

uint64_t (*SceneDescriptionFoundations.Layer.sessionOwner.modify(Swift::String *a1))()
{
  a1[1]._countAndFlagsBits = *(v1 + 16);
  v3 = RIOPxrSdfLayerCopySessionOwner();
  *a1 = String.init(_:)(v3);
  return SceneDescriptionFoundations.Layer.sessionOwner.modify;
}

uint64_t SceneDescriptionFoundations.Layer.documentation.modify(void *a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = String.utf8CString.getter();
  v7 = v6;
  v8 = a1[2];
  if (a2)
  {
    a3(v8, v6 + 32);
  }

  else
  {

    a3(v8, v7 + 32);
  }
}

uint64_t (*SceneDescriptionFoundations.Layer.hasOwnedSubLayers.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = RIOPxrSdfLayerGetHasOwnedSubLayers();
  return SceneDescriptionFoundations.Layer.hasOwnedSubLayers.modify;
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo17RIOPxrSdfLayerRefa_9RealityIO27SceneDescriptionFoundationsO0G0C27ReplicationMessagePublisherCTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo17RIOPxrSdfLayerRefa9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCGMd, &_ss18_DictionaryStorageCySo17RIOPxrSdfLayerRefa9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCGMR);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaDictionary.makeIterator()();
    if (__CocoaDictionary.Iterator.next()())
    {
      type metadata accessor for RIOPxrSdfLayerRef(0);
      do
      {
        swift_dynamicCast();
        type metadata accessor for SceneDescriptionFoundations.Layer.ReplicationMessagePublisher();
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v9 + 1, 1);
        }

        v2 = v16;
        Hasher.init(_seed:)();
        lazy protocol witness table accessor for type RIOPxrSdfLayerRef and conformance RIOPxrSdfLayerRef();
        _CFObject.hash(into:)();
        result = Hasher._finalize()();
        v4 = v16 + 64;
        v5 = -1 << *(v16 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v16 + 64 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v16 + 64 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v16 + 48) + 8 * v8) = v15;
        *(*(v16 + 56) + 8 * v8) = v14;
        ++*(v16 + 16);
      }

      while (__CocoaDictionary.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v14 = v10[2];
  v15 = (v11 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v11;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(v13);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1, v13);
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) == (v28 & 1))
    {
      v12 = v27;
      v19 = *v5;
      if (v17)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v5;
  if (v17)
  {
LABEL_8:
    v20 = v19[7];
    v21 = type metadata accessor for UUID();
    v22 = *(v21 - 8);
    v23 = *(v22 + 40);
    v24 = v21;
    v25 = v20 + *(v22 + 72) * v12;

    return v23(v25, a1, v24);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v19, v13);
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v7[2];
  v12 = (v8 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v8;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(v10);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1, v10);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v9 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = type metadata accessor for __RKEntityInteractionSpecification();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v9;

    return v20(v22, a1, v21);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v16, v10);

  return a2;
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for RIOPxrSdfLayerRef(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, uint64_t a3)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a7 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = result;
      specialized _NativeDictionary.copy()();
      result = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 32 * result);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;
    return result;
  }

  v27[(result >> 6) + 8] |= 1 << result;
  v29 = (v27[6] + 16 * result);
  *v29 = a5;
  v29[1] = a6;
  v30 = (v27[7] + 32 * result);
  *v30 = a1;
  v30[1] = a2;
  v30[2] = a3;
  v30[3] = a4;
  v31 = v27[2];
  v21 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27[2] = v32;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v11 = *v5;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      a5(v17, a3 & 1);
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      a4();
      v12 = v20;
    }
  }

  v22 = *v8;
  if (v18)
  {
    *(v22[7] + 8 * v12) = a1;
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  *(v22[6] + 8 * v12) = a2;
  *(v22[7] + 8 * v12) = a1;
  v24 = v22[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v25;

  return a2;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, float a6)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v8 = a4[7];
  v9 = type metadata accessor for __RKEntityInteractionSpecification();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a3, v9);
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
LABEL_8:
      RIOPxrSdfLayerReplicationReceive();
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t keypath_get_19Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, Swift::String *a3@<X8>)
{
  v4 = a2(*(*a1 + 16));
  v6 = String.init(_:)(v4);
  result = v6._countAndFlagsBits;
  *a3 = v6;
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x26670D730]();
  if (v7)
  {
    RIOPxrSdfLayerReplicationReceive();
  }
}

unint64_t lazy protocol witness table accessor for type RIOPxrSdfLayerRef and conformance RIOPxrSdfLayerRef()
{
  result = lazy protocol witness table cache variable for type RIOPxrSdfLayerRef and conformance RIOPxrSdfLayerRef;
  if (!lazy protocol witness table cache variable for type RIOPxrSdfLayerRef and conformance RIOPxrSdfLayerRef)
  {
    type metadata accessor for RIOPxrSdfLayerRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RIOPxrSdfLayerRef and conformance RIOPxrSdfLayerRef);
  }

  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t specialized Data.init(bytes:count:)(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t ImportSession.getExtraAssetForTag(tag:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v4 = *(v2 + v3);
  String.utf8CString.getter();
  v5 = v4;
  ExtraAssetWithTag = RIOImportSessionGetExtraAssetWithTag();

  return ExtraAssetWithTag;
}

Swift::Bool __swiftcall ImportSession.setExtraAssetForTag(tag:assetRef:)(Swift::String tag, Swift::OpaquePointer assetRef)
{
  v3 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v4 = *(v2 + v3);
  String.utf8CString.getter();
  v5 = v4;
  v6 = RIOImportSessionSetExtraAssetWithTag();

  return v6;
}

Swift::Void __swiftcall ImportSession.removeExtraAssetForTag(tag:)(Swift::String tag)
{
  v2 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v3 = *(v1 + v2);
  String.utf8CString.getter();
  v4 = v3;
  RIOImportSessionRemoveExtraAssetWithTag();
}

uint64_t ImportSession.entity(at:)(uint64_t *a1, float a2)
{
  v2 = type metadata accessor for __EntityRef();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  EntityAtPrimPath = RIOImportSessionGetEntityAtPrimPath();
  if (EntityAtPrimPath)
  {
    type metadata accessor for Entity();
    v10[3] = MEMORY[0x277D841D8];
    v10[0] = EntityAtPrimPath;
    static __AssetRef.__fromCore(_:)();
    __swift_destroy_boxed_opaque_existential_0(v10);
    EntityAtPrimPath = static Entity.__fromCore(_:)();
    (*(v3 + 8))(v6, v2);
  }

  return EntityAtPrimPath;
}

void ImportSession.registerAudioAsset(path:tag:asset:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v7 = RIOPxrSdfAssetPathAssetPathCopyString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.utf8CString.getter();

  String.utf8CString.getter();
  RIOImportSessionRegisterAudioAsset();
}

uint64_t ImportSession.getCompatibilityFaultsByPrimPath(for:)(uint64_t a1)
{
  v39 = type metadata accessor for ImportSession.EvaluationFault(0);
  MEMORY[0x28223BE20](v39, v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  *&v55 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v5);
  v50 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v8 = *(v7 - 8);
  v10.n128_f32[0] = MEMORY[0x28223BE20](v7, v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v10);
  v48 = &v37 - v14;
  v15 = swift_allocObject();
  v53 = v15;
  *(v15 + 16) = MEMORY[0x277D84F98];
  v37 = v15 + 16;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  v19 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  v54 = a1;

  v42 = v1;
  v41 = v19;
  result = swift_beginAccess();
  v21 = 0;
  v22 = (v16 + 63) >> 6;
  v47 = v8 + 32;
  v46 = (v55 + 8);
  v40 = v57;
  v49 = v8;
  v45 = (v8 + 8);
  v44 = v8 + 16;
  v43 = v7;
  while (v18)
  {
LABEL_11:
    v26 = v48;
    v25 = v49;
    v27 = *(v54 + 48) + *(v49 + 72) * (__clz(__rbit64(v18)) | (v21 << 6));
    v52 = *(v49 + 16);
    v52(v48, v27, v7);
    (*(v25 + 32))(v12, v26, v7);
    v28 = v50;
    __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
    __REAssetBundle.ExportOptions.PlatformOS.rawValue.getter();
    (*v46)(v28, v51);
    LODWORD(v28) = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
    v29 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter() >> 32;
    __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
    *&v30 = __PAIR64__(v29, v28);
    *(&v30 + 1) = v31;
    v55 = v30;
    String.utf8CString.getter();

    VersionFromDeploymentTarget = RERealityFileWriterGetVersionFromDeploymentTarget();

    if (VersionFromDeploymentTarget)
    {
      v33 = *(v42 + v41);
      v57[2] = partial apply for closure #1 in ImportSession.getCompatibilityFaultsByPrimPath(for:);
      v57[3] = v53;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v57[0] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned RIOImportSessionFaultType, @unowned UnsafePointer<Int8>) -> ();
      v57[1] = &block_descriptor_14;
      v34 = _Block_copy(aBlock);
      v35 = v33;

      RIOImportSessionGatherFaultRecords();
      _Block_release(v34);

      v7 = v43;
    }

    else
    {
      v23 = v38;
      v7 = v43;
      v52(v38, v12, v43);
      swift_storeEnumTagMultiPayload();
      addFault #1 (_:_:) in ImportSession.getCompatibilityFaultsByPrimPath(for:)(47, 0xE100000000000000, v23, v53);
      outlined destroy of ImportSession.EvaluationFault(v23);
    }

    v18 &= v18 - 1;
    result = (*v45)(v12, v7);
  }

  while (1)
  {
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      swift_beginAccess();
      v36 = *(v53 + 16);

      return v36;
    }

    v18 = *(a1 + 56 + 8 * v24);
    ++v21;
    if (v18)
    {
      v21 = v24;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImportSession.getAllExtraAssetTags()()
{
  swift_beginAccess();
  v0 = RIOImportSessionCopyExtraAssetTags();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return MEMORY[0x277D84F90];
}

char *ImportSession.__allocating_init<A>(contentsOf:pipelineVersion:threading:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v9, v12);
  v15 = ImportSession.__allocating_init<A>(contentsOf:serviceLocator:pipelineVersion:threading:entityType:)(v14, 0, a2, a3, a4);
  (*(v10 + 8))(a1, v9);
  return v15;
}

uint64_t key path setter for ImportSession.deploymentTarget : ImportSession(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a1, &v11 - v6, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  swift_beginAccess();
  outlined assign with take of __REAssetBundle.ExportOptions.DeploymentTarget?(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t ImportSession.deploymentTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  swift_beginAccess();
  return outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v1 + v3, a1, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
}

uint64_t ImportSession.deploymentTarget.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  swift_beginAccess();
  outlined assign with take of __REAssetBundle.ExportOptions.DeploymentTarget?(a1, v1 + v3);
  return swift_endAccess();
}

void ImportSession.register(builderGenerator:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  aBlock[4] = partial apply for closure #1 in ImportSession.register(builderGenerator:);
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  aBlock[3] = &block_descriptor_9;
  v9 = _Block_copy(aBlock);
  v10 = v6;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v9);
}

uint64_t closure #1 in ImportSession.register(builderGenerator:)(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    type metadata accessor for Prim();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = a1;
    v9 = a3(v7);
    if (v9)
    {
      v11 = v9;
      v12 = v10;
      ObjectType = swift_getObjectType();
      Builder.generateCore(primRef:)(v8, ObjectType, v12);
      Builder.generateOutputs()();

      v14 = RIOPxrUsdObjectCopyPath();
      v15 = OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath;
      swift_beginAccess();
      if (*(*(v6 + v15) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v14), (v16 & 1) != 0))
      {

        swift_endAccess();
      }

      else
      {

        swift_endAccess();
        v17 = RIOPxrUsdObjectCopyPath();
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *(v6 + v15);
        *(v6 + v15) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(MEMORY[0x277D84F90], v17, isUniquelyReferenced_nonNull_native);

        *(v6 + v15) = v35;
        swift_endAccess();
      }

      v19 = RIOPxrUsdObjectCopyPath();

      swift_beginAccess();
      v21 = specialized Dictionary.subscript.modify(v34, v19);
      v22 = *v20;
      if (*v20)
      {
        v23 = v20;
        swift_unknownObjectRetain();
        v24 = swift_isUniquelyReferenced_nonNull_native();
        *v23 = v22;
        if ((v24 & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
          *v23 = v22;
        }

        v25 = v22[2];
        v26 = v22[3];
        v27 = v25 + 1;
        if (v25 >= v26 >> 1)
        {
          v33 = v25 + 1;
          v30 = v22;
          v31 = v22[2];
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v25 + 1, 1, v30);
          v25 = v31;
          v27 = v33;
          v22 = v32;
          *v23 = v32;
        }

        v22[2] = v27;
        v28 = &v22[2 * v25];
        v28[4] = v11;
        v28[5] = v12;
        (v21)(v34, 0);
      }

      else
      {
        (v21)(v34, 0);
      }

      swift_endAccess();

      v29 = Builder.core.getter(ObjectType, v12);
      swift_unknownObjectRelease();

      return v29;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id ImportSession.core.getter()
{
  v1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t ImportSession.sceneUpdatePassCompletion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
  swift_beginAccess();
  v2 = *v1;
  sub_26187DB8C(*v1, v1[1]);
  return v2;
}

uint64_t key path getter for ImportSession.sceneUpdatePassCompletion : ImportSession@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26187DB8C(v4, v5);
}

uint64_t key path setter for ImportSession.sceneUpdatePassCompletion : ImportSession(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26187DB8C(v3, v4);
  sub_26187DB8C(v6, v5);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  ImportSession.sceneUpdatePassCompletion.didset();
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v5);
}

uint64_t ImportSession.sceneUpdatePassCompletion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_26187DB8C(a1, a2);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
  ImportSession.sceneUpdatePassCompletion.didset();
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(a1, a2);
}

uint64_t ImportSession.sceneUpdatePassCompletion.didset()
{
  v1 = (v0 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = v1[1];
    v4 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v5 = *(v0 + v4);
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v3;
    v10[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed () -> ();
    v10[3] = &block_descriptor_273;
    v7 = _Block_copy(v10);
    sub_26187DB8C(v2, v3);
    sub_26187DB8C(v2, v3);
    v8 = v5;

    RIOImportSessionSetSceneUpdatePassCompletion();
    _Block_release(v7);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v2, v3);
  }

  else
  {
    swift_beginAccess();
    return RIOImportSessionSetSceneUpdatePassCompletion();
  }
}

uint64_t (*ImportSession.sceneUpdatePassCompletion.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ImportSession.sceneUpdatePassCompletion.modify;
}

uint64_t ImportSession.sceneUpdatePassCompletion.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return ImportSession.sceneUpdatePassCompletion.didset();
  }

  return result;
}

char *ImportSession.__allocating_init(pipelineVersion:)(uint64_t a1)
{
  v1 = type metadata accessor for __EngineRef();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v2 + 8))(v5, v1);
  v6 = RIOImportSessionCreateWithEngine();
  v7 = type metadata accessor for Entity();
  type metadata accessor for ImportSession(0);
  swift_allocObject();
  return specialized ImportSession.init<A>(core:entityType:)(v6, v7, v8);
}

char *ImportSession.__allocating_init(serviceLocator:pipelineVersion:)(uint64_t a1, uint64_t a2)
{
  getEngine(_:)(a1);
  v2 = RIOImportSessionCreateWithEngine();
  v3 = type metadata accessor for Entity();
  type metadata accessor for ImportSession(0);
  swift_allocObject();
  v5 = specialized ImportSession.init<A>(core:entityType:)(v2, v3, v4);

  return v5;
}

uint64_t getEngine(_:)(uint64_t a1)
{
  v2 = type metadata accessor for __EngineRef();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
  }

  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v3 + 8))(v6, v2);
  return v8[1];
}

Swift::Int ImportSession.LoadError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](v1);
  return Hasher._finalize()();
}

unsigned int *ImportSession.__allocating_init<A>(from:pipelineVersion:threading:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v9, v12);
  v15 = ImportSession.__allocating_init<A>(from:serviceLocator:pipelineVersion:threading:entityType:)(v14, 0, a2, a3, a4);
  (*(v10 + 8))(a1, v9);
  return v15;
}

unsigned int *ImportSession.__allocating_init<A>(from:serviceLocator:pipelineVersion:threading:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  getEngine(_:)(a2);
  if (specialized static USDImportService.canLoad(url:)(a1))
  {
    v19 = a5;
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    v5 = RIOImportSessionCreateWithURLWithErrorReporting();

    if (v5)
    {
      swift_allocObject();
      v11 = v5;
      v5 = ImportSession.init<A>(core:entityType:)(v5, v19, v12);

      v13 = type metadata accessor for URL();
      (*(*(v13 - 8) + 8))(a1, v13);
    }

    else
    {
      lazy protocol witness table accessor for type ImportSession.LoadError and conformance ImportSession.LoadError();
      swift_allocError();
      *v16 = 1;
      swift_willThrow();

      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 8))(a1, v17);
    }
  }

  else
  {
    lazy protocol witness table accessor for type ImportSession.LoadError and conformance ImportSession.LoadError();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();

    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v5;
}

char *ImportSession.__allocating_init<A>(contentsOf:serviceLocator:pipelineVersion:threading:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  getEngine(_:)(a2);
  if (specialized static USDImportService.canLoad(url:)(a1))
  {
    URL._bridgeToObjectiveC()(v7);
    v9 = v8;
    v10 = RIOImportSessionCreateWithURL();

    swift_allocObject();
    v12 = ImportSession.init<A>(core:entityType:)(v10, a5, v11);

    v13 = type metadata accessor for URL();
    v14 = *(*(v13 - 8) + 8);

    v14(a1, v13);
    if (v12)
    {
    }
  }

  else
  {
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 8))(a1, v15);

    return 0;
  }

  return v12;
}

char *ImportSession.__allocating_init<A>(contentsOf:pipelineVersion:threading:entityType:isolationMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a1, v11, v14);
  v17 = ImportSession.__allocating_init<A>(contentsOf:serviceLocator:pipelineVersion:threading:entityType:isolationMode:)(v16, 0, a2, a3, a4, v6);
  (*(v12 + 8))(a1, v11);
  return v17;
}

char *ImportSession.__allocating_init<A>(contentsOf:serviceLocator:pipelineVersion:threading:entityType:isolationMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  getEngine(_:)(a2);
  if (specialized static USDImportService.canLoad(url:)(a1))
  {
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    if (a6)
    {
      SingleUseImporterWithURL = RIOImportSessionCreateSingleUseImporterWithURL();
    }

    else
    {
      SingleUseImporterWithURL = RIOImportSessionCreateWithURL();
    }

    v15 = SingleUseImporterWithURL;

    swift_allocObject();
    v17 = ImportSession.init<A>(core:entityType:)(v15, a5, v16);

    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 8))(a1, v18);
    return v17;
  }

  else
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 8))(a1, v13);

    return 0;
  }
}

char *ImportSession.__allocating_init<A>(named:in:serviceLocator:pipelineVersion:threading:entityType:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v31 = a7;
  v30 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v29[-v15];
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v20.n128_f32[0] = MEMORY[0x28223BE20](v17, v19);
  v22 = &v29[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v20);
  v25 = &v29[-v24];
  type metadata accessor for USDImportService();
  static USDImportService.urlForUSD(named:in:)(a1, a2, a3, v16);

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {

    outlined destroy of Any?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return 0;
  }

  else
  {
    (*(v18 + 32))(v25, v16, v17);
    (*(v18 + 16))(v22, v25, v17);
    v26 = ImportSession.__allocating_init<A>(contentsOf:serviceLocator:pipelineVersion:threading:entityType:)(v22, a4, a5, v30, v31);

    v27 = *(v18 + 8);

    v27(v25, v17);
    if (v26)
    {
    }
  }

  return v26;
}

unsigned int *ImportSession.__allocating_init<A>(withName:in:serviceLocator:pipelineVersion:threading:entityType:)(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v33 = a8;
  v32 = a7;
  v30 = a5;
  v31 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v19.n128_f32[0] = MEMORY[0x28223BE20](v16, v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v19);
  v24 = &v30 - v23;
  type metadata accessor for USDImportService();
  static USDImportService.urlForUSD(named:in:)(a1, a2, a3, v15);

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of Any?(v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type ImportSession.LoadError and conformance ImportSession.LoadError();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();
  }

  else
  {
    (*(v17 + 32))(v24, v15, v16);
    (*(v17 + 16))(v21, v24, v16);
    v26 = v34;
    v27 = ImportSession.__allocating_init<A>(from:serviceLocator:pipelineVersion:threading:entityType:)(v21, a4, v30, v31, v32);
    v28 = (v17 + 8);
    if (v26)
    {
      (*v28)(v24, v16);
    }

    else
    {
      a4 = v27;

      (*v28)(v24, v16);
    }
  }

  return a4;
}

char *ImportSession.__allocating_init<A>(stage:serviceLocator:pipelineVersion:threading:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  getEngine(_:)(a2);
  v6 = RIOImportSessionCreateWithStage();
  swift_allocObject();
  v8 = ImportSession.init<A>(core:entityType:)(v6, a5, v7);

  return v8;
}

char *ImportSession.__allocating_init<A>(stage:serviceLocator:pipelineVersion:threading:entityType:isolationMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  getEngine(_:)(a2);
  if (a6)
  {
    SingleUseImporterWithStage = RIOImportSessionCreateSingleUseImporterWithStage();
  }

  else
  {
    SingleUseImporterWithStage = RIOImportSessionCreateWithStage();
  }

  v9 = SingleUseImporterWithStage;
  swift_allocObject();
  v11 = ImportSession.init<A>(core:entityType:)(v9, a5, v10);

  if (v11)
  {
  }

  return v11;
}

char *ImportSession.init<A>(core:entityType:)(void *a1, uint64_t a2, float a3)
{
  v4 = v3;
  v37[1] = a2;
  v6 = type metadata accessor for __EntityRef();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  v12 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable;
  type metadata accessor for SafeSceneUUIDTable();
  v14 = swift_allocObject();
  *(v14 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v4[v13] = v14;
  *(v14 + 24) = v15;
  v16 = &v4[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v4[OBJC_IVAR____TtC9RealityIO13ImportSession_swiftBuildersByPrimPath] = MEMORY[0x277D84F98];
  if (a1)
  {
    v17 = &unk_27FEC8000;
    *&v4[OBJC_IVAR____TtC9RealityIO13ImportSession_core] = a1;
    v18 = a1;
    EngineRef = RIOImportSessionGetEngineRef();
    if (EngineRef && (*(v4 + 4) = EngineRef, (v20 = RIOImportSessionGetStage()) != 0))
    {
      v21 = v20;
      v37[0] = v7;
      type metadata accessor for Stage();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v4 + 2) = v22;
      v23 = v21;
      RootEntity = RIOImportSessionGetRootEntity();
      if (RootEntity)
      {
        v25 = RootEntity;
        type metadata accessor for AnchorEntity();
        v26 = swift_dynamicCastMetatype();
        REAnchorComponentGetComponentType();
        REEntityRemoveComponentByClass();
        REAnchoringComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          if (!v26)
          {
            REAnchoringComponentGetComponentType();
            REEntityRemoveComponentByClass();
          }
        }

        else if (v26)
        {
          REAnchoringComponentGetComponentType();
          REEntityAddComponentByClass();
        }

        type metadata accessor for ModelEntity();
        if (swift_dynamicCastMetatype())
        {
          v41 = MEMORY[0x277D841D8];
          aBlock = v25;
          static __AssetRef.__fromCore(_:)();
          __swift_destroy_boxed_opaque_existential_0(&aBlock);
          swift_allocObject();
          v28 = MEMORY[0x26670D9A0](v10);
        }

        else
        {
          type metadata accessor for BodyTrackedEntity();
          if (swift_dynamicCastMetatype())
          {
            v41 = MEMORY[0x277D841D8];
            aBlock = v25;
            static __AssetRef.__fromCore(_:)();
            __swift_destroy_boxed_opaque_existential_0(&aBlock);
            swift_allocObject();
            v28 = MEMORY[0x26670DC40](v10);
          }

          else
          {
            if (!swift_dynamicCastMetatype())
            {
              type metadata accessor for Entity();
              v41 = MEMORY[0x277D841D8];
              aBlock = v25;
              static __AssetRef.__fromCore(_:)();
              __swift_destroy_boxed_opaque_existential_0(&aBlock);
              v29 = static Entity.__fromCore(_:)();
              (*(v37[0] + 8))(v10, v6);
              *(v4 + 3) = v29;
              goto LABEL_23;
            }

            v41 = MEMORY[0x277D841D8];
            aBlock = v25;
            static __AssetRef.__fromCore(_:)();
            __swift_destroy_boxed_opaque_existential_0(&aBlock);
            swift_allocObject();
            v28 = MEMORY[0x26670DA30](v10);
          }
        }

        v29 = v28;
        *(v4 + 3) = v28;
LABEL_23:
        type metadata accessor for BehaviorsCommitter();
        v30 = swift_allocObject();
        v30[3] = MEMORY[0x277D84F98];

        v30[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v30[2] = v29;
        *&v4[OBJC_IVAR____TtC9RealityIO13ImportSession_behaviorsCommitter] = v30;
        v31 = swift_allocObject();
        swift_weakInit();
        v42 = partial apply for closure #1 in ImportSession.init<A>(core:entityType:);
        v43 = v31;
        aBlock = MEMORY[0x277D85DD0];
        v39 = 1107296256;
        v40 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafePointer<Int8>, @unowned OpaquePointer) -> ();
        v41 = &block_descriptor_13_0;
        v32 = _Block_copy(&aBlock);

        v33 = *(v4 + 3);
        v34 = swift_allocObject();
        swift_weakInit();
        swift_unownedRetainStrong();
        swift_unownedRetain();

        v35 = swift_allocObject();
        *(v35 + 16) = v33;
        *(v35 + 24) = v34;
        v42 = partial apply for closure #2 in ImportSession.init<A>(core:entityType:);
        v43 = v35;
        aBlock = MEMORY[0x277D85DD0];
        v39 = 1107296256;
        v40 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned Int, @unowned Int) -> ();
        v41 = &block_descriptor_20;
        v36 = _Block_copy(&aBlock);

        RIOImportSessionSetRegistrationForScenes();
        _Block_release(v36);
        _Block_release(v32);
        RIOImportSessionSetSwiftObject();
        ImportSession.registerDefaultSwiftBuilders()();

        return v4;
      }

      v17 = &unk_27FEC8000;
    }

    else
    {
    }

    outlined destroy of Any?(&v4[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  }

  else
  {
    outlined destroy of Any?(&v4[OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget], &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  }

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*&v4[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion], *&v4[OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion + 8]);

  type metadata accessor for ImportSession(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t closure #1 in ImportSession.init<A>(core:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v163 = a3;
  v164 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v7.n128_f32[0] = MEMORY[0x28223BE20](v5, v6);
  v150 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v7);
  v148 = &v142 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13.n128_f32[0] = MEMORY[0x28223BE20](v11 - 8, v12);
  v146 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f32[0] = MEMORY[0x28223BE20](v15, v13);
  v157 = &v142 - v17;
  v19.n128_f32[0] = MEMORY[0x28223BE20](v18, v16);
  v158 = &v142 - v20;
  v22.n128_f32[0] = MEMORY[0x28223BE20](v21, v19);
  v147 = &v142 - v23;
  v25.n128_f32[0] = MEMORY[0x28223BE20](v24, v22);
  v167 = &v142 - v26;
  v28.n128_f32[0] = MEMORY[0x28223BE20](v27, v25);
  v144 = &v142 - v29;
  v31.n128_f32[0] = MEMORY[0x28223BE20](v30, v28);
  v155 = (&v142 - v32);
  v34.n128_f32[0] = MEMORY[0x28223BE20](v33, v31);
  v156 = &v142 - v35;
  v37.n128_f32[0] = MEMORY[0x28223BE20](v36, v34);
  v165 = &v142 - v38;
  v40.n128_f32[0] = MEMORY[0x28223BE20](v39, v37);
  v42 = &v142 - v41;
  MEMORY[0x28223BE20](v43, v40);
  v45 = &v142 - v44;
  v46 = type metadata accessor for UUID();
  v169 = *(v46 - 8);
  v48.n128_f32[0] = MEMORY[0x28223BE20](v46, v47);
  v149 = &v142 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51.n128_f32[0] = MEMORY[0x28223BE20](v50, v48);
  v168 = &v142 - v52;
  v54.n128_f32[0] = MEMORY[0x28223BE20](v53, v51);
  v145 = &v142 - v55;
  v57.n128_f32[0] = MEMORY[0x28223BE20](v56, v54);
  v59 = &v142 - v58;
  MEMORY[0x28223BE20](v60, v57);
  v166 = &v142 - v61;
  v62 = type metadata accessor for __SceneRef();
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v64);
  v66 = &v142 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v153 = v5;
    v68 = result;
    type metadata accessor for Scene();
    v172 = MEMORY[0x277D841D8];
    v170 = a1;
    static __AssetRef.__fromCore(_:)();
    __swift_destroy_boxed_opaque_existential_0(&v170);
    v69 = static Scene.__fromCore(_:)();
    (*(v63 + 8))(v66, v62);
    v70 = String.init(cString:)();
    v72 = v71;
    v154 = v68;
    v143 = OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable;
    v73 = *(v68 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable);

    v164 = v69;
    Scene.__sceneIdentifier.getter();
    [*(v73 + 16) lock];
    v170 = 10867;
    v171 = 0xE200000000000000;
    v160 = v70;
    v161 = v72;
    MEMORY[0x26670F080](v70, v72);
    v74 = v170;
    v75 = v171;
    swift_beginAccess();
    v76 = *(v73 + 24);
    if (*(v76 + 16) && (v77 = specialized __RawDictionaryStorage.find<A>(_:)(v74, v75), (v78 & 1) != 0))
    {
      v79 = v169;
      v80 = *(v169 + 16);
      v81 = (v169 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v82 = v166;
      v80(v166, *(v76 + 56) + *(v169 + 72) * v77, v46);
      swift_endAccess();
    }

    else
    {
      v162 = v74;
      swift_endAccess();
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v45, v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v79 = v169;
      v83 = *(v169 + 48);
      if (v83(v42, 1, v46) == 1)
      {
        UUID.init()();
        if (v83(v42, 1, v46) != 1)
        {
          outlined destroy of Any?(v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }
      }

      else
      {
        (*(v79 + 32))(v59, v42, v46);
      }

      v84 = *(v79 + 16);
      v81 = (v79 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v85 = v165;
      v84(v165, v59, v46);
      (*(v79 + 56))(v85, 0, 1, v46);
      swift_beginAccess();
      v86 = v85;
      v80 = v84;
      specialized Dictionary.subscript.setter(v86, v162, v75);
      swift_endAccess();
      v82 = v166;
      (*(v79 + 32))(v166, v59, v46);
    }

    v159 = v81;
    [*(v73 + 16) unlock];
    outlined destroy of Any?(v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v87 = v156;
    Scene.__sceneIdentifier.getter();
    v88 = v87;
    v89 = v155;
    v80(v155, v82, v46);
    v152 = *(v79 + 56);
    v162 = v79 + 56;
    v152(v89, 0, 1, v46);
    v90 = *(v153 + 48);
    v91 = v148;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v88, v148, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v89, v91 + v90, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v92 = v79;
    v95 = *(v79 + 48);
    v94 = v79 + 48;
    v93 = v95;
    v96 = v95(v91, 1, v46);
    v151 = v95;
    if (v96 == 1)
    {
      outlined destroy of Any?(v89, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of Any?(v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v97 = v93(v91 + v90, 1, v46);
      v98 = v149;
      v99 = v94;
      if (v97 == 1)
      {
        outlined destroy of Any?(v91, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v100 = v158;
        v101 = v168;
        v102 = v152;
LABEL_17:
        type metadata accessor for Entity();
        v105 = static Entity.fromCore(_:ignoringEntityInfo:)();
        v106 = *(v154 + v143);

        v156 = v105;
        Entity.__interactionIdentifier.getter();
        [*(v106 + 16) lock];
        swift_beginAccess();
        v107 = *(v106 + 24);
        v108 = *(v107 + 16);
        v155 = v80;
        v142 = v99;
        if (v108 && (v109 = specialized __RawDictionaryStorage.find<A>(_:)(v160, v161), (v110 & 1) != 0))
        {
          v80(v101, *(v107 + 56) + *(v169 + 72) * v109, v46);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v111 = v147;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v167, v147, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v112 = v151;
          if (v151(v111, 1, v46) == 1)
          {
            UUID.init()();
            if (v112(v111, 1, v46) != 1)
            {
              outlined destroy of Any?(v111, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            }
          }

          else
          {
            (*(v169 + 32))(v98, v111, v46);
          }

          v113 = v165;
          v80(v165, v98, v46);
          v102(v113, 0, 1, v46);
          swift_beginAccess();
          v114 = v98;
          v115 = v161;

          specialized Dictionary.subscript.setter(v113, v160, v115);
          swift_endAccess();
          v101 = v168;
          v116 = v114;
          v80 = v155;
          (*(v169 + 32))(v168, v116, v46);
        }

        [*(v106 + 16) unlock];
        outlined destroy of Any?(v167, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

        Entity.__interactionIdentifier.getter();
        v117 = v157;
        v80(v157, v101, v46);
        v118 = v152;
        v152(v117, 0, 1, v46);
        v119 = *(v153 + 48);
        v120 = v150;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v100, v150, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v117, v120 + v119, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v121 = v151;
        v122 = v118;
        if (v151(v120, 1, v46) == 1)
        {
          v123 = v121;
          outlined destroy of Any?(v117, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          outlined destroy of Any?(v100, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v124 = v46;
          v125 = v123(v120 + v119, 1, v46);
          v126 = v166;
          if (v125 == 1)
          {
            outlined destroy of Any?(v120, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v127 = v168;
LABEL_32:
            String.utf8CString.getter();

            v130 = RIOPxrSdfPathCreateFromCString();

            swift_beginAccess();
            specialized Dictionary._Variant.updateValue(_:forKey:)(v163, v130);
            swift_endAccess();

            v131 = *(v169 + 8);
            v131(v127, v46);
            return (v131)(v126, v46);
          }
        }

        else
        {
          v128 = v146;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v120, v146, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          if (v121(v120 + v119, 1, v46) != 1)
          {
            v138 = v169;
            v139 = v145;
            (*(v169 + 32))(v145, v120 + v119, v46);
            _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
            v140 = dispatch thunk of static Equatable.== infix(_:_:)();
            v141 = *(v138 + 8);
            v141(v139, v46);
            outlined destroy of Any?(v157, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            outlined destroy of Any?(v158, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v141(v128, v46);
            outlined destroy of Any?(v120, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v127 = v168;
            v126 = v166;
            if (v140)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

          outlined destroy of Any?(v157, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          outlined destroy of Any?(v158, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v124 = v46;
          (*(v169 + 8))(v128, v46);
          v126 = v166;
        }

        outlined destroy of Any?(v120, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
        v127 = v168;
        v46 = v124;
LABEL_31:
        v129 = v165;
        v155(v165, v127, v46);
        v122(v129, 0, 1, v46);
        Entity.__interactionIdentifier.setter();
        goto LABEL_32;
      }
    }

    else
    {
      v103 = v144;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v91, v144, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v99 = v94;
      if (v93(v91 + v90, 1, v46) != 1)
      {
        v132 = v92;
        v133 = v91 + v90;
        v134 = v145;
        (*(v92 + 32))(v145, v133, v46);
        _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v135 = dispatch thunk of static Equatable.== infix(_:_:)();
        v136 = v103;
        v137 = *(v132 + 8);
        v137(v134, v46);
        outlined destroy of Any?(v155, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of Any?(v156, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v137(v136, v46);
        outlined destroy of Any?(v91, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v100 = v158;
        v98 = v149;
        v101 = v168;
        v102 = v152;
        if (v135)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      outlined destroy of Any?(v155, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of Any?(v156, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v92 + 8))(v103, v46);
      v98 = v149;
    }

    outlined destroy of Any?(v91, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v100 = v158;
    v101 = v168;
    v102 = v152;
LABEL_16:
    v104 = v165;
    v80(v165, v166, v46);
    v102(v104, 0, 1, v46);
    Scene.__sceneIdentifier.setter();
    goto LABEL_17;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafePointer<Int8>, @unowned OpaquePointer) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

void closure #2 in ImportSession.init<A>(core:entityType:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v89 = type metadata accessor for __SceneImportOperation.__ImportedScene();
  v80 = *(v89 - 8);
  v15.n128_f32[0] = MEMORY[0x28223BE20](v89, v14);
  v88 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v15);
  v87 = v64 - v18;
  v78 = type metadata accessor for __AssetRef();
  v19 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v20);
  v77 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v86 = v64 - v24;
  v79 = type metadata accessor for UUID();
  v25 = *(v79 - 8);
  v27.n128_f32[0] = MEMORY[0x28223BE20](v79, v26);
  v76 = v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v27);
  v85 = v64 - v30;
  v84 = type metadata accessor for __SceneRef();
  MEMORY[0x28223BE20](v84, v31);
  v83 = v64 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && a3)
  {
    if (a4 < 0)
    {
      __break(1u);
    }

    else
    {
      v64[1] = a6;
      v64[0] = a1;
      v65 = a7;
      v67 = a5;
      v66 = a2;
      if (a4)
      {
        v82 = (v32 + 8);
        v81 = (v25 + 48);
        v74 = (v25 + 32);
        v73 = (v19 + 8);
        v72 = (v25 + 16);
        v71 = (v80 + 16);
        v70 = v80 + 8;
        v69 = (v25 + 8);
        v90 = MEMORY[0x277D84F90];
        v34 = MEMORY[0x277D841D8];
        v68 = v80 + 32;
        v35 = a2;
        v36 = a3;
        v37 = v79;
        v75 = a3;
        do
        {
          v39 = *v35++;
          v38 = v39;
          if (v39)
          {
            v40 = *v36;
            if (*v36)
            {
              v91 = v35;
              type metadata accessor for Scene();
              v93 = v34;
              aBlock[0] = v38;
              v41 = v83;
              static __AssetRef.__fromCore(_:)();
              __swift_destroy_boxed_opaque_existential_0(aBlock);
              static Scene.__fromCore(_:)();
              (*v82)(v41, v84);
              v42 = v86;
              Scene.__sceneIdentifier.getter();
              if ((*v81)(v42, 1, v37) == 1)
              {

                outlined destroy of Any?(v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              }

              else
              {
                v43 = v42;
                v44 = v85;
                (*v74)(v85, v43, v37);
                type metadata accessor for __REAsset();
                v93 = v34;
                aBlock[0] = v40;
                v45 = v77;
                static __AssetRef.__fromCore(_:)();
                __swift_destroy_boxed_opaque_existential_0(aBlock);
                static __REAsset.__fromHandle(_:)();
                (*v73)(v45, v78);
                (*v72)(v76, v44, v37);
                dispatch thunk of Scene.name.getter();

                v46 = v87;
                __SceneImportOperation.__ImportedScene.init(sceneIdentifier:sceneName:sceneAsset:sceneActive:)();
                (*v71)(v88, v46, v89);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90[2] + 1, 1, v90);
                }

                v48 = v90[2];
                v47 = v90[3];
                if (v48 >= v47 >> 1)
                {
                  v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v90);
                }

                v49 = v80;
                v50 = v89;
                (*(v80 + 8))(v87, v89);
                v37 = v79;
                (*v69)(v85, v79);
                v51 = v90;
                v90[2] = v48 + 1;
                (*(v49 + 32))(v51 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48, v88, v50);
                a3 = v75;
                v34 = MEMORY[0x277D841D8];
              }

              v35 = v91;
            }
          }

          --a5;
          ++v36;
          --a4;
        }

        while (a4);
      }

      else
      {
        v90 = MEMORY[0x277D84F90];
      }

      v52 = a3[v67];
      if (v52 && v66[v67] && (RESceneGetName(), v53 = String.init(cString:)(), v55 = v54, type metadata accessor for __SceneResourceCache(), swift_unownedRetainStrong(), static __SceneResourceCache.attachImportedScenesForSceneChangeToEntity(importedScenes:entity:)(), , , v56 = v65, swift_beginAccess(), (Strong = swift_weakLoadStrong()) != 0))
      {
        v58 = Strong;
        v59 = swift_allocObject();
        v59[2] = v53;
        v59[3] = v55;
        v59[4] = v52;
        v59[5] = v56;
        v59[6] = v64[0];
        v60 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
        swift_beginAccess();
        v61 = *(v58 + v60);
        v94 = partial apply for closure #1 in closure #2 in ImportSession.init<A>(core:entityType:);
        v95 = v59;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        v93 = &block_descriptor_267;
        v62 = _Block_copy(aBlock);

        v63 = v61;

        RIOImportSessionPerformSceneChangeSetupBlockOnEngineQueue();
        _Block_release(v62);
      }

      else
      {
      }
    }
  }
}

uint64_t closure #1 in closure #2 in ImportSession.init<A>(core:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  String.utf8CString.getter();
  v5 = RESceneCreate();

  if (v5)
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.assetService.getter();

    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    dispatch thunk of __REAssetService.__handle.getter();
    __swift_destroy_boxed_opaque_existential_0(v12);
    RESceneLoadFromAsset();
    RESceneGetEntitiesArray();
    if (v7 >= 1)
    {
      type metadata accessor for Entity();
      static Entity.fromCore(_:ignoringEntityInfo:)();
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v8 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      v9 = result;
      swift_beginAccess();
      v10 = *(v9 + v8);

      RIOImportSessionOverridePrimPathToEntityForSceneAssetEntities();

      REEntityInsertChild();
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      Entity.setLoadContext(fileName:)(v11);
    }

    return RERelease();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned UnsafeMutablePointer<OpaquePointer?>?, @unowned Int, @unowned Int) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 32);

  v11(a2, a3, a4, a5, a6);
}

void ImportSession.registerDefaultSwiftBuilders()()
{
  v1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = closure #1 in ImportSession.registerDefaultSwiftBuilders();
  v4[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_116;
  v5 = _Block_copy(&aBlock);
  v6 = v2;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v5);

  v7 = *(v0 + v1);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = closure #2 in ImportSession.registerDefaultSwiftBuilders();
  v9[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_124;
  v10 = _Block_copy(&aBlock);
  v11 = v7;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v10);

  v12 = *(v0 + v1);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = closure #3 in ImportSession.registerDefaultSwiftBuilders();
  v14[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_132;
  v15 = _Block_copy(&aBlock);
  v16 = v12;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v15);

  v17 = *(v0 + v1);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = closure #4 in ImportSession.registerDefaultSwiftBuilders();
  v19[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_140;
  v20 = _Block_copy(&aBlock);
  v21 = v17;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v20);

  v22 = swift_allocObject();
  swift_weakInit();
  v23 = *(v0 + v1);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = partial apply for closure #5 in ImportSession.registerDefaultSwiftBuilders();
  v25[4] = v22;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_149;
  v26 = _Block_copy(&aBlock);
  swift_retain_n();
  v27 = v23;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v26);

  v28 = *(v0 + v1);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = closure #6 in ImportSession.registerDefaultSwiftBuilders();
  v30[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_157;
  v31 = _Block_copy(&aBlock);
  v32 = v28;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v31);

  v33 = *(v0 + v1);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = closure #7 in ImportSession.registerDefaultSwiftBuilders();
  v35[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_165;
  v36 = _Block_copy(&aBlock);
  v37 = v33;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v36);

  v38 = *(v0 + v1);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = closure #8 in ImportSession.registerDefaultSwiftBuilders();
  v40[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_173;
  v41 = _Block_copy(&aBlock);
  v42 = v38;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v41);

  v43 = *(v0 + v1);
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = closure #9 in ImportSession.registerDefaultSwiftBuilders();
  v45[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_181;
  v46 = _Block_copy(&aBlock);
  v47 = v43;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v46);

  v48 = *(v0 + v1);
  v49 = swift_allocObject();
  swift_weakInit();
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = closure #10 in ImportSession.registerDefaultSwiftBuilders();
  v50[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v50;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_189;
  v51 = _Block_copy(&aBlock);
  v52 = v48;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v51);

  v53 = *(v0 + v1);
  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = closure #11 in ImportSession.registerDefaultSwiftBuilders();
  v55[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v55;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_197;
  v56 = _Block_copy(&aBlock);
  v57 = v53;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v56);

  v58 = *(v0 + v1);
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = swift_allocObject();
  v60[2] = v59;
  v60[3] = closure #12 in ImportSession.registerDefaultSwiftBuilders();
  v60[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v60;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_205;
  v61 = _Block_copy(&aBlock);
  v62 = v58;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v61);

  v63 = *(v0 + v1);
  v64 = swift_allocObject();
  swift_weakInit();
  v65 = swift_allocObject();
  v65[2] = v64;
  v65[3] = closure #13 in ImportSession.registerDefaultSwiftBuilders();
  v65[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v65;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_213;
  v66 = _Block_copy(&aBlock);
  v67 = v63;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v66);

  v68 = *(v0 + v1);
  v69 = swift_allocObject();
  swift_weakInit();
  v70 = swift_allocObject();
  v70[2] = v69;
  v70[3] = closure #14 in ImportSession.registerDefaultSwiftBuilders();
  v70[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v70;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_221;
  v71 = _Block_copy(&aBlock);
  v72 = v68;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v71);

  v73 = *(v0 + v1);
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = swift_allocObject();
  v75[2] = v74;
  v75[3] = closure #15 in ImportSession.registerDefaultSwiftBuilders();
  v75[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v75;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_229;
  v76 = _Block_copy(&aBlock);
  v77 = v73;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v76);

  v78 = *(v0 + v1);
  v79 = swift_allocObject();
  swift_weakInit();
  v80 = swift_allocObject();
  v80[2] = v79;
  v80[3] = closure #16 in ImportSession.registerDefaultSwiftBuilders();
  v80[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v80;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_237;
  v81 = _Block_copy(&aBlock);
  v82 = v78;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v81);

  v83 = *(v0 + v1);
  v84 = swift_allocObject();
  swift_weakInit();
  v85 = swift_allocObject();
  v85[2] = v84;
  v85[3] = closure #17 in ImportSession.registerDefaultSwiftBuilders();
  v85[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v85;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_245;
  v86 = _Block_copy(&aBlock);
  v87 = v83;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v86);

  v88 = *(v0 + v1);
  v89 = swift_allocObject();
  swift_weakInit();
  v90 = swift_allocObject();
  v90[2] = v89;
  v90[3] = closure #18 in ImportSession.registerDefaultSwiftBuilders();
  v90[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v90;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_253;
  v91 = _Block_copy(&aBlock);
  v92 = v88;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v91);

  v93 = *(v0 + v1);
  v94 = swift_allocObject();
  swift_weakInit();
  v95 = swift_allocObject();
  v95[2] = v94;
  v95[3] = closure #19 in ImportSession.registerDefaultSwiftBuilders();
  v95[4] = 0;
  v102 = closure #1 in ImportSession.register(builderGenerator:)partial apply;
  v103 = v95;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = thunk for @escaping @callee_guaranteed (@guaranteed RIOPxrUsdObjectRef) -> (@unowned Unmanaged<RIOBuilderRef>?);
  v101 = &block_descriptor_261;
  v96 = _Block_copy(&aBlock);
  v97 = v93;

  RIOImportSessionRegisterBuilderGenerator();
  _Block_release(v96);
}

uint64_t ImportSession.setLoadSubdsAsSubds(loadAsSubd:)(char a1, uint64_t (*a2)(void, void))
{
  v5 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  return a2(*(v2 + v5), a1 & 1);
}

void ImportSession.setOriginalUrl(url:)()
{
  v1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v2 = *(v0 + v1);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  RIOImportSessionSetOriginalUrl();
}

uint64_t ImportSession.deinit()
{

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion), *(v0 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion + 8));

  return v0;
}

uint64_t ImportSession.__deallocating_deinit()
{
  ImportSession.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for TimelineBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #2 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for TimelineTrackAndActionBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #3 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for TriggerBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #4 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for ActionBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #5 in ImportSession.registerDefaultSwiftBuilders()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC9RealityIO13ImportSession_behaviorsCommitter);

    type metadata accessor for BehaviorBuilder();
    result = swift_allocObject();
    *(result + 16) = 2;
    *(result + 24) = v3;
  }

  return result;
}

uint64_t closure #6 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for PhysicsComponentBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #7 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for ReferenceImageBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

double closure #8 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for AudioFileBuilder();
  v0 = swift_allocObject();
  *(v0 + 16) = 2;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  return result;
}

uint64_t closure #9 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for AudioFileGroupBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t closure #10 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for AudioMixGroupBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  *(result + 24) = 0;
  *(result + 32) = 1;
  return result;
}

uint64_t closure #11 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for ImageBasedLightReceiverBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #12 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for ImageBasedLightBuilder();
  result = swift_allocObject();
  *(result + 16) = 3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 2;
  return result;
}

uint64_t closure #13 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for VirtualEnvironmentProbeComponentBuilder();
  swift_allocObject();
  return VirtualEnvironmentProbeComponentBuilder.init()();
}

uint64_t closure #14 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for ModelSortGroupBuilder(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 2;
  v1 = OBJC_IVAR____TtC9RealityIO21ModelSortGroupBuilder_meshSortingGroup;
  v2 = type metadata accessor for ModelSortGroup();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t closure #15 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for ModelSortGroupComponentBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #16 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for AnchoringComponentBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t closure #17 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for SpotLightComponentBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #18 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for DirectionalLightComponentBuilder();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

uint64_t closure #19 in ImportSession.registerDefaultSwiftBuilders()()
{
  type metadata accessor for CustomComponentBuilder();
  swift_allocObject();
  return CustomComponentBuilder.init()();
}

void ImportSession.reloadAsset(assetURL:)()
{
  v1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v2 = *(v0 + v1);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = RIOImportSessionReloadAsset();

  if ((v6 & 1) == 0)
  {
    lazy protocol witness table accessor for type ImportSession.LoadError and conformance ImportSession.LoadError();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
  }
}

void ImportSession.performBlockAfterAssetLoadOnEngineQueue(block:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v6 = *(v2 + v5);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_23;
  v7 = _Block_copy(aBlock);
  v8 = v6;

  RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue();
  _Block_release(v7);
}

uint64_t ImportSession.activeSceneCount.getter()
{
  swift_beginAccess();
  result = RIOImportSessionGetSceneCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = 0;
    v2 = result;
    if (result)
    {
      v3 = 0;
      while (1)
      {
        if (RIOImportSessionIsSceneActive())
        {
          if (__OFADD__(v1++, 1))
          {
            break;
          }
        }

        if (v2 == ++v3)
        {
          return v1;
        }
      }

      __break(1u);
    }

    return v1;
  }

  return result;
}

uint64_t (*ImportSession.entityTaggingEditMode.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = RIOPxrUsdStageGetEntityTaggingEditMode();
  return ImportSession.entityTaggingEditMode.modify;
}

uint64_t (*ImportSession.includeUnusedMaterials.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = RIOPxrUsdStageGetIncludeUnusedMaterials();
  return ImportSession.includeUnusedMaterials.modify;
}

uint64_t ImportSession.requestUpdateSynchronouslyOnEngineQueue()(uint64_t (*a1)(void))
{
  v3 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  return a1(*(v1 + v3));
}

uint64_t ImportSession.dumpDiagnostics(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v6 = *(v3 + v5);
  String.utf8CString.getter();
  v7 = v6;
  v8 = a3();

  return v8;
}

uint64_t ImportSession.getStatistics()()
{
  swift_beginAccess();
  result = RIOImportSessionCopyStatistics();
  if (result)
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static ImportSession.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RIOImportSessionRef(0);
  v4 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v7 = *(a2 + v6);
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type RIOImportSessionRef and conformance RIOImportSessionRef, type metadata accessor for RIOImportSessionRef, &protocol conformance descriptor for RIOImportSessionRef);
  v8 = v5;
  v9 = v7;
  LOBYTE(a2) = static _CFObject.== infix(_:_:)();

  return a2 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ImportSession(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for RIOImportSessionRef(0);
  v4 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v7 = *(v3 + v6);
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type RIOImportSessionRef and conformance RIOImportSessionRef, type metadata accessor for RIOImportSessionRef, &protocol conformance descriptor for RIOImportSessionRef);
  v8 = v5;
  v9 = v7;
  LOBYTE(v6) = static _CFObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t ImportSession.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO13ImportSessionCmMd, &_s9RealityIO13ImportSessionCmMR);
  v0 = String.init<A>(describing:)();
  v1 = RIOPxrUsdStageCopyUSDA();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x26670F080](v2, v4);

  MEMORY[0x26670F080](8236, 0xE200000000000000);

  MEMORY[0x26670F080](0x203A656761747328, 0xE800000000000000);

  _StringGuts.grow(_:)(29);

  v5 = dispatch thunk of Entity.name.getter();
  MEMORY[0x26670F080](v5);

  MEMORY[0x26670F080](10537, 0xE200000000000000);

  MEMORY[0x26670F080](0xD000000000000019, 0x8000000261996860);

  return v0;
}

void *ImportSession.prim(of:)(float a1)
{
  v1 = type metadata accessor for __EntityRef();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Entity.__coreEntity.getter();
  __AssetRef.__as<A>(_:)();
  (*(v2 + 8))(v5, v1);
  result = MEMORY[0x266710BD0](v10[1]);
  if (result)
  {
    v7 = result;
    v8 = RIOPxrTfTokenEmpty();
    PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

    type metadata accessor for Prim();
    result = swift_allocObject();
    result[2] = PrimIfNeeded;
  }

  return result;
}

uint64_t ImportSession.primPath(of:)(float a1)
{
  v1 = type metadata accessor for __EntityRef();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Entity.__coreEntity.getter();
  __AssetRef.__as<A>(_:)();
  (*(v2 + 8))(v5, v1);
  v6 = MEMORY[0x266710BD0](v11[1]);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = RIOPxrSdfPathCopyString();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

uint64_t static ImportSession.allComponents.getter()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F98];
  v1 = (v0 + 16);
  v5[4] = partial apply for closure #1 in static ImportSession.allComponents.getter;
  v5[5] = v0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
  v5[3] = &block_descriptor_30_0;
  v2 = _Block_copy(v5);

  REGlobalTypeRegistryWithReadLock();
  _Block_release(v2);
  swift_beginAccess();
  v3 = *v1;

  return v3;
}

uint64_t closure #1 in static ImportSession.allComponents.getter(uint64_t a1, uint64_t a2)
{
  result = RETypeRegistryGetTypeInfoByTypeName();
  if (result)
  {
    result = RETypeInfoGetSubClassCount();
    if (result < 0)
    {
      goto LABEL_24;
    }

    if (result)
    {
      v4 = 0;
      v5 = result - 1;
      while (1)
      {
        RETypeInfoGetSubClass();
        result = REComponentClassFromTypeInfo();
        if (result)
        {
          v6 = result;
          result = RETypeInfoGetName();
          if (result)
          {
            String.init(cString:)();
            ID = RETypeInfoGetID();
            v9 = v8;
            lazy protocol witness table accessor for type String and conformance String();
            v10 = StringProtocol.contains<A>(_:)();

            if ((v10 & 1) == 0)
            {
              swift_beginAccess();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v12 = *(a2 + 16);
              *(a2 + 16) = 0x8000000000000000;
              v13 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
              v15 = v12[2];
              v16 = (v14 & 1) == 0;
              v17 = __OFADD__(v15, v16);
              v18 = v15 + v16;
              if (v17)
              {
                __break(1u);
LABEL_23:
                __break(1u);
LABEL_24:
                __break(1u);
              }

              v19 = v14;
              if (v12[3] >= v18)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v25 = v13;
                  specialized _NativeDictionary.copy()();
                  v13 = v25;
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
                v13 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
                if ((v19 & 1) != (v20 & 1))
                {
                  type metadata accessor for REComponentClassPtr(0);
                  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return result;
                }
              }

              if (v19)
              {
                v21 = (v12[7] + 16 * v13);
                *v21 = ID;
                v21[1] = v9;
              }

              else
              {
                v12[(v13 >> 6) + 8] |= 1 << v13;
                *(v12[6] + 8 * v13) = v6;
                v22 = (v12[7] + 16 * v13);
                *v22 = ID;
                v22[1] = v9;
                v23 = v12[2];
                v17 = __OFADD__(v23, 1);
                v24 = v23 + 1;
                if (v17)
                {
                  goto LABEL_23;
                }

                v12[2] = v24;
              }

              *(a2 + 16) = v12;
              result = swift_endAccess();
            }
          }
        }

        if (v5 == v4)
        {
          return result;
        }

        ++v4;
      }
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t one-time initialization function for realityKitComponentClasses()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19REComponentClassPtraGMd, &_ss23_ContiguousArrayStorageCySo19REComponentClassPtraGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26198E4A0;
  *(v0 + 32) = REAnchoringComponentGetComponentType();
  *(v0 + 40) = REBallSocketJointComponentGetComponentType();
  *(v0 + 48) = REBodyTrackingComponentGetComponentType();
  *(v0 + 56) = REColliderComponentGetComponentType();
  *(v0 + 64) = REDebugMeshComponentGetComponentType();
  *(v0 + 72) = REDirectionalLightComponentGetComponentType();
  *(v0 + 80) = REHingeJointComponentGetComponentType();
  *(v0 + 88) = REMeshComponentGetComponentType();
  *(v0 + 96) = REMeshSortingComponentGetComponentType();
  *(v0 + 104) = REPerspectiveCameraComponentGetComponentType();
  *(v0 + 112) = RERigidBodyComponentGetComponentType();
  *(v0 + 120) = REMotionStateComponentGetComponentType();
  *(v0 + 128) = REPinComponentGetComponentType();
  *(v0 + 136) = REPointLightComponentGetComponentType();
  *(v0 + 144) = RESceneUnderstandingComponentGetComponentType();
  *(v0 + 152) = RESpotLightComponentGetComponentType();
  *(v0 + 160) = RENetworkComponentGetComponentType();
  *(v0 + 168) = RETransformComponentGetComponentType();
  *(v0 + 176) = REImageBasedLightComponentGetComponentType();
  *(v0 + 184) = REImageBasedLightReceiverComponentGetComponentType();
  result = REVirtualEnvironmentProbeComponentGetComponentType();
  *(v0 + 192) = result;
  static ImportSession.realityKitComponentClasses = v0;
  return result;
}

uint64_t static ImportSession.realityKitComponentClasses.getter()
{
  if (one-time initialization token for realityKitComponentClasses != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static ImportSession.realityKitComponentClasses.setter(void *a1)
{
  if (one-time initialization token for realityKitComponentClasses != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ImportSession.realityKitComponentClasses = a1;
}

uint64_t (*static ImportSession.realityKitComponentClasses.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for realityKitComponentClasses != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return CompileSession.includeUnusedMaterials.modify;
}

void *static ImportSession.realityKitComponents.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F98];
  v7 = (v6 + 16);
  aBlock[4] = a1;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
  aBlock[3] = a2;
  v8 = _Block_copy(aBlock);

  REGlobalTypeRegistryWithReadLock();
  _Block_release(v8);
  swift_beginAccess();
  v9 = *v7;

  v11 = specialized _NativeDictionary.filter(_:)(v9, a3, a3, v10);

  return v11;
}

uint64_t static ImportSession.getRealityKitComponentName(componentClass:)()
{
  REComponentClassGetName();

  return String.init(cString:)();
}

uint64_t static ImportSession.getSwiftRealityKitComponentName(reComponentName:)(uint64_t a1, uint64_t a2)
{
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #7 of static ImportSession.getSwiftRealityKitComponentName(reComponentName:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  swift_arrayDestroy();
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  return v7;
}

void *ImportSession.TextureOperatorContainer.keys.getter()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs13OpaquePointerVGMd, &_ss18_DictionaryStorageCySSs13OpaquePointerVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 8;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = *(*(*(v1 + 56) + 8 * v13) + 16);
      if (!v14)
      {
        break;
      }

      v15 = *(*(v1 + 48) + 16 * v13);
      result = *(*(v1 + 48) + 16 * v13 + 8);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v16 = (v3[6] + 16 * v13);
      *v16 = v15;
      v16[1] = result;
      *(v3[7] + 8 * v13) = v14;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_16;
      }

      v3[2] = v19;

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(v1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *ImportSession.TextureOperatorContainer.makeIterator()()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs13OpaquePointerVGMd, &_ss18_DictionaryStorageCySSs13OpaquePointerVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 8;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = *(*(*(v1 + 56) + 8 * v13) + 16);
      if (!v14)
      {
        break;
      }

      v15 = *(*(v1 + 48) + 16 * v13);
      result = *(*(v1 + 48) + 16 * v13 + 8);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v16 = (v3[6] + 16 * v13);
      *v16 = v15;
      v16[1] = result;
      *(v3[7] + 8 * v13) = v14;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
LABEL_19:
        __break(1u);
        break;
      }

      v3[2] = v19;

      if (!v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v4 >= v8)
      {
        break;
      }

      v12 = *(v1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    v20 = -1 << *(v3 + 32);
    v21 = ~v20;
    v22 = -v20;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & v3[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCySD0A0VySSs13OpaquePointerV_GGMd, &_ss12_IteratorBoxCySD0A0VySSs13OpaquePointerV_GGMR);
    result = swift_allocObject();
    result[2] = v3;
    result[3] = v9;
    result[4] = v21;
    result[5] = 0;
    result[6] = v24;
  }

  return result;
}

uint64_t ImportSession.TextureOperatorContainer.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v5 & 1) != 0))
  {
    return *(*(*(v3 + 56) + 8 * v4) + 16);
  }

  else
  {
    return 0;
  }
}

void ImportSession.TextureOperatorContainer.setDownsample(factor:for:in:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  if (*(v5 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      v9 = v8 + 56;
      v10 = 1 << *(v8 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(v8 + 56);
      v13 = (v10 + 63) >> 6;

      v14 = 0;
      while (v12)
      {
LABEL_13:
        String.utf8CString.getter();
        v19 = RIOPxrSdfPathCreateFromCString();

        v20 = RIOPxrTfTokenEmpty();
        PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

        if (String.count.getter() < 1)
        {
          v22 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v22 = RIOPxrTfTokenCreateWithCString();
        }

        v23 = v22;
        if (!RIOPxrUsdPrimHasAttribute())
        {

          lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
          swift_willThrowTypedImpl();
          swift_allocError();
          *v28 = 0;

          return;
        }

        v24 = RIOPxrUsdPrimCopyAttribute();

        type metadata accessor for AnyAttribute();
        v25 = swift_allocObject();
        v25[2] = v24;

        if (String.count.getter() <= 0)
        {
          v26 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v26 = RIOPxrTfTokenCreateWithCString();
        }

        v27 = v26;
        v29 = PrimIfNeeded;
        if (String.count.getter() < 1)
        {
          v15 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v15 = RIOPxrTfTokenCreateWithCString();
        }

        v16 = v15;
        v12 &= v12 - 1;
        v17 = RIOPxrVtValueCreateWithInt32();
        RIOPxrUsdObjectMetadataSetValue();

        outlined consume of Result<AnyAttribute, Object.Error>(v25, 0);
        outlined consume of Result<AnyAttribute, Object.Error>(v25, 0);
      }

      while (1)
      {
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v18 >= v13)
        {

          return;
        }

        v12 = *(v9 + 8 * v18);
        ++v14;
        if (v12)
        {
          v14 = v18;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}