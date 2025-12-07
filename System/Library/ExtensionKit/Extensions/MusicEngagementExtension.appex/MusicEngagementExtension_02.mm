uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *specialized Array.append<A>(contentsOf:)(void *result)
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC7Command_pMd, &_s9MusicCore6PlayerC7Command_pMR);
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata accessor for URL);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata accessor for URLQueryItem);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *specialized Sequence._copyContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v13 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v13;
    return v6;
  }

  if (!a3)
  {
    v13 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 16 * v6 + 24);
      while (v6 + v9 <= *(a4 + 16))
      {
        v12 = *v11;
        *v8 = *(v11 - 1);
        v8[1] = v12;
        if (!(v10 + v9))
        {

          v13 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 2;
        v8 += 2;
        v13 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v13 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [Whitetail.Binding] and conformance [A], &_sSay14MusicUtilities9WhitetailO7BindingCGMd, &_sSay14MusicUtilities9WhitetailO7BindingCGMR, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14MusicUtilities9WhitetailO7BindingCGMd, &_sSay14MusicUtilities9WhitetailO7BindingCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for Whitetail.Binding();
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [BagProvider.Observer] and conformance [A], &_sSay9MusicCore11BagProviderC8ObserverCGMd, &_sSay9MusicCore11BagProviderC8ObserverCGMR, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore11BagProviderC8ObserverCGMd, &_sSay9MusicCore11BagProviderC8ObserverCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for BagProvider.Observer();
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [NSError] and conformance [A], &_sSaySo7NSErrorCGMd, &_sSaySo7NSErrorCGMR, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7NSErrorCGMd, &_sSaySo7NSErrorCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for NSError();
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [MRGroupSessionParticipant] and conformance [A], &_sSaySo25MRGroupSessionParticipant_pGMd, &_sSaySo25MRGroupSessionParticipant_pGMR, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25MRGroupSessionParticipant_pGMd, &_sSaySo25MRGroupSessionParticipant_pGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25MRGroupSessionParticipant_pMd, &_sSo25MRGroupSessionParticipant_pMR);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [UIBarButtonItem] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15UIBarButtonItemCGMd, &_sSaySo15UIBarButtonItemCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for UIAction(0, &_sSo15UIBarButtonItemCML_0, UIBarButtonItem_ptr);
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

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [MenuType] and conformance [A](&lazy protocol witness table cache variable for type [SyncedLyricsLineView.Line] and conformance [A], &_sSay7LyricsX06SyncedA8LineViewC0C0CGMd, &_sSay7LyricsX06SyncedA8LineViewC0C0CGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7LyricsX06SyncedA8LineViewC0C0CGMd, &_sSay7LyricsX06SyncedA8LineViewC0C0CGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
        type metadata accessor for SyncedLyricsLineView.Line();
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

uint64_t specialized static ActionMenu.Element.__derived_enum_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    v10 = *a1;
    v2 = *(a1 + 3);
    v11 = *(a1 + 1);
    v12 = v2;
    v13 = *(a1 + 5);
    if ((*a2 & 0x8000000000000000) == 0)
    {
      v6 = *a2;
      v7 = *(a2 + 1);
      v8 = *(a2 + 3);
      v9 = *(a2 + 5);
      v3 = static ActionMenu.Item.== infix(_:_:)(&v10, &v6);
      return v3 & 1;
    }

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  if ((*a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  if (*((*a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) == *((*a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) && *((*a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18) == *((*a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18))
  {
    v3 = 1;
    return v3 & 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t partial apply for closure #3 in static ActionMenu.ElementBuilder.buildExpression<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = *(type metadata accessor for Action(0, v6, v7, a4) - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #3 in static ActionMenu.ElementBuilder.buildExpression<A, B>(_:)(v4 + v10, v6, v7, v8);
}

char *specialized static ActionBuilder.buildBlock(_:)(char *result)
{
  v1 = *(result + 2);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = result + 32;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 2);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static ActionMenu.ElementBuilder.buildExpression<A, B>(_:)@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 4);
  v6 = *(type metadata accessor for Action(0, v4, *(v2 + 3), a1) - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  a2[3] = v4;
  a2[4] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v9 = *(*(v4 - 8) + 16);

  return v9(boxed_opaque_existential_1, &v2[v7], v4);
}

uint64_t objectdestroyTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for Action(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 40) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = *(type metadata accessor for Action(0, v6, v7, a4) - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(v4 + v10, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type ActionMenu.Element and conformance ActionMenu.Element()
{
  result = lazy protocol witness table cache variable for type ActionMenu.Element and conformance ActionMenu.Element;
  if (!lazy protocol witness table cache variable for type ActionMenu.Element and conformance ActionMenu.Element)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionMenu.Element and conformance ActionMenu.Element);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionMenu.Element(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 56))
  {
    return (*a1 + 15);
  }

  v3 = (((*a1 >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*a1 >> 60) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ActionMenu.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 1) & 7) - 8 * a2) << 60;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
    }
  }

  return result;
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for Action(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_21Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(type metadata accessor for Action(0, v5, *(v4 + 40), a4) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(*(v5 - 8) + 8))(v4 + v7, v5);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #3 in static ActionMenu.ElementBuilder.buildExpression<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for Action(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #3 in static ActionMenu.ElementBuilder.buildExpression<A, B>(_:)(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t Actions.MetricsReportingContext.actionContext.getter()
{
  v1 = *v0;
  outlined copy of MetricsEvent.Click.ActionContext?(*v0, *(v0 + 8));
  return v1;
}

uint64_t outlined copy of MetricsEvent.Click.ActionContext?(uint64_t a1, unint64_t a2)
{
  if (a2 != 12)
  {
    return outlined copy of MetricsEvent.Click.ActionContext(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of MetricsEvent.Click.ActionContext(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t Actions.MetricsReportingContext.actionContext.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of MetricsEvent.Click.ActionContext?(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t outlined consume of MetricsEvent.Click.ActionContext?(uint64_t a1, unint64_t a2)
{
  if (a2 != 12)
  {
    return outlined consume of MetricsEvent.Click.ActionContext(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of MetricsEvent.Click.ActionContext(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t type metadata accessor for Actions.MetricsReportingContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for Actions.MetricsReportingContext;
  if (!type metadata singleton initialization cache for Actions.MetricsReportingContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Actions.MetricsReportingContext.page.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Actions.MetricsReportingContext(0) + 20);

  return outlined assign with take of MetricsEvent.Page?(a1, v3);
}

uint64_t outlined assign with take of MetricsEvent.Page?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Actions.MetricsReportingContext.pageContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for Actions.MetricsReportingContext(0) + 24));

  return v1;
}

uint64_t Actions.MetricsReportingContext.pageContext.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Actions.MetricsReportingContext(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Actions.MetricsReportingContext.locations.getter()
{
  type metadata accessor for Actions.MetricsReportingContext(0);
}

uint64_t Actions.MetricsReportingContext.locations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Actions.MetricsReportingContext(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Actions.MetricsReportingContext.impressions.getter()
{
  type metadata accessor for Actions.MetricsReportingContext(0);
}

uint64_t Actions.MetricsReportingContext.impressions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Actions.MetricsReportingContext(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Actions.MetricsReportingContext.sharedListeningContext.setter(char a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Actions.MetricsReportingContext(0);
  v8 = v3 + *(result + 36);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  return result;
}

uint64_t Actions.MetricsReportingContext.init(actionContext:page:pageContext:locations:impressions:sharedListeningContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = type metadata accessor for Actions.MetricsReportingContext(0);
  v17 = v16[5];
  v18 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[7];
  v20 = &a9[v16[6]];
  v21 = v16[8];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = outlined assign with take of MetricsEvent.Page?(a3, &a9[v17]);
  *v20 = a4;
  *(v20 + 1) = a5;
  *&a9[v19] = a6;
  *&a9[v21] = a7;
  v23 = &a9[v16[9]];
  *v23 = a8;
  *(v23 + 1) = a10;
  *(v23 + 2) = a11;
  return result;
}

uint64_t static Actions.reportClickEvent(targetIdentifier:targetType:actionType:actionURL:actionDetails:reportingContext:)(unsigned int (*a1)(uint64_t, uint64_t, int *), uint64_t a2, int a3, int a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, uint64_t *a10)
{
  v86 = a7;
  v87 = a8;
  v85 = a6;
  LODWORD(v88) = a4;
  LODWORD(v77) = a3;
  v83 = a2;
  v71 = a1;
  v84 = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  __chkstk_darwin();
  v81 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v79 = &v71 - v12;
  __chkstk_darwin();
  v76 = &v71 - v13;
  __chkstk_darwin();
  v75 = &v71 - v14;
  __chkstk_darwin();
  v74 = &v71 - v15;
  __chkstk_darwin();
  v72 = &v71 - v16;
  __chkstk_darwin();
  v18 = (&v71 - v17);
  __chkstk_darwin();
  v20 = &v71 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v73 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v71 - v22;
  v24 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v71 - v27;
  outlined init with copy of TaskPriority?(a5, v23, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v28 = type metadata accessor for Actions.MetricsReportingContext(0);
  v29 = *(a10 + v28[7]);
  v31 = *a10;
  v30 = a10[1];
  outlined init with copy of TaskPriority?(a10 + v28[5], v20, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v78 = v28;
  v32 = v28[8];
  v82 = a10;
  v33 = *(a10 + v32);
  v26[v24[19]] = 0;
  v34 = &v26[v24[20]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = v83;
  *v26 = v71;
  *(v26 + 1) = v35;
  v26[16] = v77;
  v26[17] = v88;
  outlined init with take of URL?(v23, &v26[v24[7]], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *&v26[v24[8]] = v29;
  v36 = &v26[v24[9]];
  *v36 = v31;
  v36[1] = v30;
  v37 = &v26[v24[10]];
  v38 = v86;
  *v37 = v85;
  *(v37 + 1) = v38;
  *(v37 + 2) = v87;
  *(v37 + 12) = v84;
  v77 = v20;
  outlined init with copy of TaskPriority?(v20, v18, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v39 = type metadata accessor for MetricsEvent.Page(0);
  v40 = *(v39 - 1);
  v71 = *(v40 + 48);
  v88 = v40 + 48;
  if (v71(v18, 1, v39) == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v31, v30);

    outlined copy of MetricsEvent.Click.ActionDetails?(v85, v86, v87, v84);
    outlined destroy of TaskPriority?(v18, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v41 = v33;
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v44 = v33;
    v42 = *v18;
    v43 = v18[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v31, v30);

    outlined copy of MetricsEvent.Click.ActionDetails?(v85, v86, v87, v84);

    outlined destroy of MetricsEvent.Click(v18, type metadata accessor for MetricsEvent.Page);
    v41 = v44;
  }

  v45 = &v26[v24[12]];
  *v45 = v42;
  *(v45 + 1) = v43;
  v46 = v77;
  v47 = v72;
  outlined init with copy of TaskPriority?(v77, v72, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v48 = v71;
  v49 = v71(v47, 1, v39);
  v50 = v76;
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(v47, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v51 = *(v47 + 16);
    v52 = *(v47 + 24);

    outlined destroy of MetricsEvent.Click(v47, type metadata accessor for MetricsEvent.Page);
  }

  v53 = &v26[v24[13]];
  *v53 = v51;
  *(v53 + 1) = v52;
  v54 = v74;
  v55 = v75;
  outlined init with copy of TaskPriority?(v46, v74, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v48(v54, 1, v39) == 1)
  {
    outlined destroy of TaskPriority?(v54, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v56 = type metadata accessor for URL();
    v57 = v73;
    (*(*(v56 - 8) + 56))(v73, 1, 1, v56);
  }

  else
  {
    v58 = v73;
    outlined init with copy of TaskPriority?(v54 + v39[6], v73, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v59 = v54;
    v57 = v58;
    outlined destroy of MetricsEvent.Click(v59, type metadata accessor for MetricsEvent.Page);
  }

  v60 = v79;
  outlined init with take of URL?(v57, &v26[v24[14]], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v46, v55, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v48(v55, 1, v39) == 1)
  {
    outlined destroy of TaskPriority?(v55, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v61 = 0;
  }

  else
  {
    v61 = *(v55 + v39[7]);

    outlined destroy of MetricsEvent.Click(v55, type metadata accessor for MetricsEvent.Page);
  }

  *&v26[v24[15]] = v61;
  outlined init with copy of TaskPriority?(v46, v50, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v48(v50, 1, v39) == 1)
  {
    outlined destroy of TaskPriority?(v50, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v62 = 1;
  }

  else
  {
    v62 = *(v50 + v39[9]);
    outlined destroy of MetricsEvent.Click(v50, type metadata accessor for MetricsEvent.Page);
  }

  v26[v24[16]] = v62;
  outlined init with copy of TaskPriority?(v46, v60, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v48(v60, 1, v39) == 1)
  {
    outlined destroy of TaskPriority?(v60, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v63 = 0;
    v64 = 0;
  }

  else
  {
    v65 = (v60 + v39[8]);
    v63 = *v65;
    v64 = v65[1];

    outlined destroy of MetricsEvent.Click(v60, type metadata accessor for MetricsEvent.Page);
  }

  v66 = &v26[v24[18]];
  *v66 = v63;
  *(v66 + 1) = v64;
  v67 = v81;
  outlined init with take of URL?(v46, v81, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v48(v67, 1, v39) == 1)
  {
    outlined destroy of TaskPriority?(v67, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v68 = 2;
  }

  else
  {
    v68 = *(v67 + v39[11]);
    outlined destroy of MetricsEvent.Click(v67, type metadata accessor for MetricsEvent.Page);
  }

  v26[v24[17]] = v68;
  *&v26[v24[11]] = v41;
  v69 = v80;
  outlined init with take of MetricsEvent.Click(v26, v80);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v82 + v78[6]), *(v82 + v78[6] + 8), *(v82 + v78[9]), *(v82 + v78[9] + 8), *(v82 + v78[9] + 16));
  return outlined destroy of MetricsEvent.Click(v69, type metadata accessor for MetricsEvent.Click);
}

id outlined copy of MetricsEvent.Click.ActionDetails?(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE1(a4) != 255)
  {
    return outlined copy of MetricsEvent.Click.ActionDetails(a1, a2, a3, a4, SBYTE1(a4));
  }

  return a1;
}

id outlined copy of MetricsEvent.Click.ActionDetails(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3 || a5 == 2)
  {
  }

  if (a5 == 1)
  {
    return outlined copy of MetricsEvent.Click.ActionDetails.SearchSource(result, a2, a3);
  }

  return result;
}

id outlined copy of MetricsEvent.Click.ActionDetails.SearchSource(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;

    return v3;
  }

  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of MetricsEvent.Click(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsEvent.Click(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MetricsEvent.Click.ActionDetails.Key.DestinationType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MetricsEvent.Click.ActionDetails.Key.DestinationType.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t MetricsEvent.Click.ActionDetails.Key.DestinationType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7473696C79616C70;
  }

  else
  {
    return 0x7972617262696CLL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MetricsEvent.Click.ActionDetails.Key.DestinationType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7473696C79616C70;
  }

  else
  {
    v3 = 0x7972617262696CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7473696C79616C70;
  }

  else
  {
    v5 = 0x7972617262696CLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricsEvent.Click.ActionDetails.Key.DestinationType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MetricsEvent.Click.ActionDetails.Key.DestinationType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricsEvent.Click.ActionDetails.Key.DestinationType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MetricsEvent.Click.ActionDetails.Key.DestinationType@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MetricsEvent.Click.ActionDetails.Key.DestinationType.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MetricsEvent.Click.ActionDetails.Key.DestinationType(uint64_t *a1@<X8>)
{
  v2 = 0x7972617262696CLL;
  if (*v1)
  {
    v2 = 0x7473696C79616C70;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

BOOL MetricsEvent.Click.ActionDetails.Key.PlayType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MetricsEvent.Click.ActionDetails.Key.PlayType.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricsEvent.Click.ActionDetails.Key.PlayType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricsEvent.Click.ActionDetails.Key.PlayType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MetricsEvent.Click.ActionDetails.Key.PlayType@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance MetricsEvent.Click.ActionDetails.Key.PlayType, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t MetricsEvent.Click.ActionDetails.Key.NavigationType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6D75626C41;
  v2 = 0x7473696C79616C50;
  if (a1 != 2)
  {
    v2 = 0x434174726F706552;
  }

  if (a1)
  {
    v1 = 0x747369747241;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricsEvent.Click.ActionDetails.Key.NavigationType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MetricsEvent.Click.ActionDetails.Key.NavigationType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricsEvent.Click.ActionDetails.Key.NavigationType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MetricsEvent.Click.ActionDetails.Key.NavigationType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MetricsEvent.Click.ActionDetails.Key.NavigationType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MetricsEvent.Click.ActionDetails.Key.NavigationType(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6D75626C41;
  v4 = 0xE800000000000000;
  v5 = 0x7473696C79616C50;
  if (*v1 != 2)
  {
    v5 = 0x434174726F706552;
    v4 = 0xEE006E7265636E6FLL;
  }

  if (*v1)
  {
    v3 = 0x747369747241;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void *MetricsEvent.Click.ActionDetails.init(_:)(uint64_t a1)
{
  v1 = specialized MetricsEvent.Click.ActionDetails.init(_:)(a1);

  return v1;
}

uint64_t MusicItem.metricsContentType.getter(uint64_t a1, uint64_t a2)
{
  v4 = __chkstk_darwin();
  (*(v6 + 16))(v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16MetricsProviding_pMd, &_s9MusicCore16MetricsProviding_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ActionPerforming(v22, v24);
    v7 = v25;
    v8 = v26;
    __swift_project_boxed_opaque_existential_0Tm(v24, v25);
    v9 = (*(v8 + 8))(v7, v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    return v9;
  }

  else
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    outlined destroy of TaskPriority?(v22, &_s9MusicCore16MetricsProviding_pSgMd, &_s9MusicCore16MetricsProviding_pSgMR);
    v24[0] = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    v13 = v12;
    specialized Collection.prefix(_:)(1, v11, v12);
    v14 = Substring.lowercased()();

    v15 = specialized Collection.dropFirst(_:)(1uLL, v11, v13);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22[0] = v14;
    v24[0] = v15;
    v24[1] = v17;
    v24[2] = v19;
    v25 = v21;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    return *&v22[0];
  }
}

uint64_t MusicItem.metricsTargetIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  __chkstk_darwin();
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v8 = *(v4 + 16);
  v8(v18 - v9, v2, a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16MetricsProviding_pMd, &_s9MusicCore16MetricsProviding_pMR);
  if (!swift_dynamicCast())
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    outlined destroy of TaskPriority?(v18, &_s9MusicCore16MetricsProviding_pSgMd, &_s9MusicCore16MetricsProviding_pSgMR);
    (v8)(v6, v2, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18CatalogIDProviding_pMd, &_s9MusicCore18CatalogIDProviding_pMR);
    if (swift_dynamicCast())
    {
      v13 = *(&v21 + 1);
      v14 = v22;
      __swift_project_boxed_opaque_existential_0Tm(&v20, *(&v21 + 1));
      v12 = (*(v14 + 8))(v13, v14);
      if (v15)
      {
        goto LABEL_5;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v20);
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      outlined destroy of TaskPriority?(&v20, &_s9MusicCore18CatalogIDProviding_pSgMd, &_s9MusicCore18CatalogIDProviding_pSgMR);
    }

    return 0x497972617262694CLL;
  }

  outlined init with take of ActionPerforming(v18, &v20);
  v10 = *(&v21 + 1);
  v11 = v22;
  __swift_project_boxed_opaque_existential_0Tm(&v20, *(&v21 + 1));
  v12 = (*(v11 + 16))(v10, v11);
LABEL_5:
  v16 = v12;
  __swift_destroy_boxed_opaque_existential_0Tm(&v20);
  return v16;
}

uint64_t Playlist.Entry.metricsContentType.getter()
{
  v0 = type metadata accessor for UploadedVideo();
  v89 = *(v0 - 8);
  v90 = v0;
  __chkstk_darwin();
  v88 = &v88 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for UploadedAudio();
  v92 = *(v2 - 8);
  v93 = v2;
  __chkstk_darwin();
  v91 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TVEpisode();
  v95 = *(v4 - 8);
  v96 = v4;
  __chkstk_darwin();
  v94 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicMovie();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicVideo();
  v99 = *(v10 - 8);
  __chkstk_darwin();
  v98 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Song();
  v97 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Playlist.Entry.InternalItem();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.Entry.internalItem.getter();
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v16 + 96))(v18, v15);
    (*(v7 + 32))(v9, v18, v6);
    v100 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A5MovieVmMd, &_s16MusicKitInternal0A5MovieVmMR);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    specialized Collection.prefix(_:)(1, v20, v21);
    v23 = Substring.lowercased()();

    v24 = specialized Collection.dropFirst(_:)(1uLL, v20, v22);
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v104 = v23;
    v100 = v24;
    v101 = v26;
    v102 = v28;
    v103 = v30;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v104._countAndFlagsBits;
    (*(v7 + 8))(v9, v6);
  }

  else if (v19 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v16 + 96))(v18, v15);
    v33 = v98;
    v32 = v99;
    (*(v99 + 32))(v98, v18, v10);
    v100 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A5VideoVmMd, &_s8MusicKit0A5VideoVmMR);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    specialized Collection.prefix(_:)(1, v34, v35);
    v37 = Substring.lowercased()();

    v38 = specialized Collection.dropFirst(_:)(1uLL, v34, v36);
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v104 = v37;
    v100 = v38;
    v101 = v40;
    v102 = v42;
    v103 = v44;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v104._countAndFlagsBits;
    (*(v32 + 8))(v33, v10);
  }

  else if (v19 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v16 + 96))(v18, v15);
    v45 = v97;
    (*(v97 + 32))(v14, v18, v12);
    v100 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVmMd, &_s8MusicKit4SongVmMR);
    v46 = String.init<A>(describing:)();
    v48 = v47;
    specialized Collection.prefix(_:)(1, v46, v47);
    v49 = Substring.lowercased()();

    v50 = specialized Collection.dropFirst(_:)(1uLL, v46, v48);
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v104 = v49;
    v100 = v50;
    v101 = v52;
    v102 = v54;
    v103 = v56;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v104._countAndFlagsBits;
    (*(v45 + 8))(v14, v12);
  }

  else if (v19 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v16 + 96))(v18, v15);
    v58 = v94;
    v57 = v95;
    v59 = v96;
    (*(v95 + 32))(v94, v18, v96);
    v100 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal9TVEpisodeVmMd, &_s16MusicKitInternal9TVEpisodeVmMR);
    v60 = String.init<A>(describing:)();
    v62 = v61;
    specialized Collection.prefix(_:)(1, v60, v61);
    v63 = Substring.lowercased()();

    v64 = specialized Collection.dropFirst(_:)(1uLL, v60, v62);
    v66 = v65;
    v68 = v67;
    v70 = v69;

    v104 = v63;
    v100 = v64;
    v101 = v66;
    v102 = v68;
    v103 = v70;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v104._countAndFlagsBits;
    (*(v57 + 8))(v58, v59);
  }

  else
  {
    if (v19 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
    {
      (*(v16 + 96))(v18, v15);
      v72 = v91;
      v71 = v92;
      v73 = v93;
      (*(v92 + 32))(v91, v18, v93);
      v100 = v73;
      v74 = &_s16MusicKitInternal13UploadedAudioVmMd;
      v75 = &_s16MusicKitInternal13UploadedAudioVmMR;
    }

    else
    {
      if (v19 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        (*(v16 + 8))(v18, v15);
        return 1735290739;
      }

      (*(v16 + 96))(v18, v15);
      v72 = v88;
      v71 = v89;
      v73 = v90;
      (*(v89 + 32))(v88, v18, v90);
      v100 = v73;
      v74 = &_s16MusicKitInternal13UploadedVideoVmMd;
      v75 = &_s16MusicKitInternal13UploadedVideoVmMR;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
    v76 = String.init<A>(describing:)();
    v78 = v77;
    specialized Collection.prefix(_:)(1, v76, v77);
    v79 = Substring.lowercased()();

    v80 = specialized Collection.dropFirst(_:)(1uLL, v76, v78);
    v82 = v81;
    v84 = v83;
    v86 = v85;

    v104 = v79;
    v100 = v80;
    v101 = v82;
    v102 = v84;
    v103 = v86;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v104._countAndFlagsBits;
    (*(v71 + 8))(v72, v73);
  }

  return countAndFlagsBits;
}

uint64_t Playlist.Entry.metricsTargetIdentifier.getter()
{
  v0 = type metadata accessor for UploadedVideo();
  v38 = *(v0 - 8);
  v39 = v0;
  __chkstk_darwin();
  v37 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for UploadedAudio();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin();
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TVEpisode();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin();
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicMovie();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicVideo();
  v47 = *(v10 - 8);
  v48 = v10;
  __chkstk_darwin();
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Song();
  v46 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Playlist.Entry.InternalItem();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.Entry.internalItem.getter();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v17 + 96))(v19, v16);
    (*(v7 + 32))(v9, v19, v6);
    v21 = MusicMovie.catalogID.getter();
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    if (!v23)
    {
      return 0x497972617262694CLL;
    }

    return v21;
  }

  if (v20 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v17 + 96))(v19, v16);
    v25 = v47;
    v24 = v48;
    (*(v47 + 32))(v12, v19, v48);
    v21 = MusicVideo.catalogID.getter();
    v27 = v26;
    (*(v25 + 8))(v12, v24);
  }

  else
  {
    if (v20 == enum case for Playlist.Entry.InternalItem.song(_:))
    {
      (*(v17 + 96))(v19, v16);
      v28 = v46;
      (*(v46 + 32))(v15, v19, v13);
      v21 = Song.catalogID.getter();
      v30 = v29;
      (*(v28 + 8))(v15, v13);
      if (!v30)
      {
        return 0x497972617262694CLL;
      }

      return v21;
    }

    if (v20 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
    {
      (*(v17 + 96))(v19, v16);
      v32 = v43;
      v31 = v44;
      v33 = v45;
      (*(v44 + 32))(v43, v19, v45);
      v34 = TVEpisode.catalogID.getter();
    }

    else if (v20 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
    {
      (*(v17 + 96))(v19, v16);
      v32 = v40;
      v31 = v41;
      v33 = v42;
      (*(v41 + 32))(v40, v19, v42);
      v34 = UploadedAudio.catalogID.getter();
    }

    else
    {
      if (v20 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        (*(v17 + 8))(v19, v16);
        return 0x497972617262694CLL;
      }

      (*(v17 + 96))(v19, v16);
      v32 = v37;
      v31 = v38;
      v33 = v39;
      (*(v38 + 32))(v37, v19, v39);
      v34 = UploadedVideo.catalogID.getter();
    }

    v21 = v34;
    v27 = v35;
    (*(v31 + 8))(v32, v33);
  }

  if (v27)
  {
    return v21;
  }

  return 0x497972617262694CLL;
}

uint64_t Track.metricsContentType.getter()
{
  v1 = type metadata accessor for MusicVideo();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Song();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Track();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v0, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == enum case for Track.song(_:))
  {
    (*(v10 + 96))(v13, v9);
    (*(v6 + 32))(v8, v13, v5);
    v40 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVmMd, &_s8MusicKit4SongVmMR);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    specialized Collection.prefix(_:)(1, v15, v16);
    v18 = Substring.lowercased()();

    v19 = specialized Collection.dropFirst(_:)(1uLL, v15, v17);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v44 = v18;
    v40 = v19;
    v41 = v21;
    v42 = v23;
    v43 = v25;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v44._countAndFlagsBits;
    (*(v6 + 8))(v8, v5);
  }

  else if (v14 == enum case for Track.musicVideo(_:))
  {
    (*(v10 + 96))(v13, v9);
    (*(v2 + 32))(v4, v13, v1);
    v40 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A5VideoVmMd, &_s8MusicKit0A5VideoVmMR);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    specialized Collection.prefix(_:)(1, v27, v28);
    v30 = Substring.lowercased()();

    v31 = specialized Collection.dropFirst(_:)(1uLL, v27, v29);
    v33 = v32;
    v35 = v34;
    v36 = v2;
    v38 = v37;

    v44 = v30;
    v40 = v31;
    v41 = v33;
    v42 = v35;
    v43 = v38;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v44._countAndFlagsBits;
    (*(v36 + 8))(v4, v1);
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    return 1735290739;
  }

  return countAndFlagsBits;
}

uint64_t Track.metricsTargetIdentifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MusicVideo();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Track();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin();
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for Track.song(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    v16 = Song.catalogID.getter();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    if (!v18)
    {
      return 0x497972617262694CLL;
    }

    return v16;
  }

  if (v15 == enum case for Track.musicVideo(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v3 + 32))(v5, v14, v2);
    v16 = MusicVideo.catalogID.getter();
    v20 = v19;
    (*(v3 + 8))(v5, v2);
    if (v20)
    {
      return v16;
    }
  }

  else
  {
    (*(v11 + 8))(v14, v10);
  }

  return 0x497972617262694CLL;
}

uint64_t MusicPin.metricsContentType.getter()
{
  v0 = type metadata accessor for Song();
  v88 = *(v0 - 8);
  v89 = v0;
  __chkstk_darwin();
  v87 = &v86 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Playlist();
  v91 = *(v2 - 8);
  v92 = v2;
  __chkstk_darwin();
  v90 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MusicVideo();
  v94 = *(v4 - 8);
  v95 = v4;
  __chkstk_darwin();
  v93 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Artist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Album();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicPin.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.item.getter();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MusicPin.Item.album(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v96 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVmMd, &_s8MusicKit5AlbumVmMR);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    specialized Collection.prefix(_:)(1, v19, v20);
    v22 = Substring.lowercased()();

    v23 = specialized Collection.dropFirst(_:)(1uLL, v19, v21);
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v100 = v22;
    v96 = v23;
    v97 = v25;
    v98 = v27;
    v99 = v29;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v100._countAndFlagsBits;
    (*(v11 + 8))(v13, v10);
  }

  else if (v18 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v31 = v7;
    (*(v7 + 32))(v9, v17, v6);
    v96 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit6ArtistVmMd, &_s8MusicKit6ArtistVmMR);
    v32 = String.init<A>(describing:)();
    v34 = v33;
    specialized Collection.prefix(_:)(1, v32, v33);
    v35 = Substring.lowercased()();

    v36 = specialized Collection.dropFirst(_:)(1uLL, v32, v34);
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v100 = v35;
    v96 = v36;
    v97 = v38;
    v98 = v40;
    v99 = v42;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v100._countAndFlagsBits;
    (*(v31 + 8))(v9, v6);
  }

  else if (v18 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v15 + 96))(v17, v14);
    v43 = v93;
    v44 = v94;
    v45 = v95;
    (*(v94 + 32))(v93, v17, v95);
    v96 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A5VideoVmMd, &_s8MusicKit0A5VideoVmMR);
    v46 = String.init<A>(describing:)();
    v48 = v47;
    specialized Collection.prefix(_:)(1, v46, v47);
    v49 = Substring.lowercased()();

    v50 = specialized Collection.dropFirst(_:)(1uLL, v46, v48);
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v100 = v49;
    v96 = v50;
    v97 = v52;
    v98 = v54;
    v99 = v56;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v100._countAndFlagsBits;
    (*(v44 + 8))(v43, v45);
  }

  else if (v18 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v58 = v90;
    v57 = v91;
    v59 = v92;
    (*(v91 + 32))(v90, v17, v92);
    v96 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVmMd, &_s8MusicKit8PlaylistVmMR);
    v60 = String.init<A>(describing:)();
    v62 = v61;
    specialized Collection.prefix(_:)(1, v60, v61);
    v63 = Substring.lowercased()();

    v64 = specialized Collection.dropFirst(_:)(1uLL, v60, v62);
    v66 = v65;
    v68 = v67;
    v70 = v69;

    v100 = v63;
    v96 = v64;
    v97 = v66;
    v98 = v68;
    v99 = v70;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v100._countAndFlagsBits;
    (*(v57 + 8))(v58, v59);
  }

  else if (v18 == enum case for MusicPin.Item.song(_:))
  {
    (*(v15 + 96))(v17, v14);
    v72 = v87;
    v71 = v88;
    v73 = v89;
    (*(v88 + 32))(v87, v17, v89);
    v96 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVmMd, &_s8MusicKit4SongVmMR);
    v74 = String.init<A>(describing:)();
    v76 = v75;
    specialized Collection.prefix(_:)(1, v74, v75);
    v77 = Substring.lowercased()();

    v78 = specialized Collection.dropFirst(_:)(1uLL, v74, v76);
    v80 = v79;
    v82 = v81;
    v84 = v83;

    v100 = v77;
    v96 = v78;
    v97 = v80;
    v98 = v82;
    v99 = v84;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v100._countAndFlagsBits;
    (*(v71 + 8))(v72, v73);
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    return 0;
  }

  return countAndFlagsBits;
}

uint64_t MusicPin.metricsTargetIdentifier.getter()
{
  v0 = type metadata accessor for Song();
  v37 = *(v0 - 8);
  v38 = v0;
  __chkstk_darwin();
  v36 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Playlist();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin();
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MusicVideo();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin();
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Artist();
  v44 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Album();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicPin.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.item.getter();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MusicPin.Item.album(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v19 = Album.catalogID.getter();
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    if (!v21)
    {
      return 0x507972617262694CLL;
    }

    return v19;
  }

  if (v18 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v22 = v44;
    (*(v44 + 32))(v9, v17, v7);
    v19 = Artist.catalogID.getter();
    v24 = v23;
    (*(v22 + 8))(v9, v7);
    if (!v24)
    {
      return 0x507972617262694CLL;
    }

    return v19;
  }

  if (v18 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v15 + 96))(v17, v14);
    v26 = v42;
    v25 = v43;
    (*(v42 + 32))(v6, v17, v43);
    v19 = MusicVideo.catalogID.getter();
    v28 = v27;
    (*(v26 + 8))(v6, v25);
  }

  else
  {
    if (v18 == enum case for MusicPin.Item.playlist(_:))
    {
      (*(v15 + 96))(v17, v14);
      v30 = v39;
      v29 = v40;
      v31 = v41;
      (*(v40 + 32))(v39, v17, v41);
      v32 = Playlist.catalogID.getter();
    }

    else
    {
      if (v18 != enum case for MusicPin.Item.song(_:))
      {
        (*(v15 + 8))(v17, v14);
        return 0x507972617262694CLL;
      }

      (*(v15 + 96))(v17, v14);
      v30 = v36;
      v29 = v37;
      v31 = v38;
      (*(v37 + 32))(v36, v17, v38);
      v32 = Song.catalogID.getter();
    }

    v19 = v32;
    v28 = v33;
    (*(v29 + 8))(v30, v31);
  }

  if (v28)
  {
    return v19;
  }

  return 0x507972617262694CLL;
}

uint64_t outlined destroy of MetricsEvent.Click(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t specialized MetricsEvent.Click.ActionDetails.Key.NavigationType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MetricsEvent.Click.ActionDetails.Key.NavigationType.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void *specialized MetricsEvent.Click.ActionDetails.init(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  for (i = (a1 + 48); ; i += 24)
  {
    v4 = *(i - 2);
    v5 = *(i - 1);
    v6 = *i;
    v38 = v4;
    if (v6 <= 1)
    {
      if (*i)
      {
        lazy protocol witness table accessor for type String and conformance String();
        v17 = StringProtocol.capitalized.getter();
        v36 = v18;
        v37 = v17;

        v14 = 0xE500000000000000;
        v13 = 0x6F54646461;
      }

      else
      {
        outlined copy of MetricsEvent.Click.ActionDetails.Key(v4, v5, 0);

        v14 = 0xE400000000000000;
        v36 = v5;
        v37 = v4;
        v13 = 1684957547;
      }
    }

    else if (v6 == 2)
    {
      lazy protocol witness table accessor for type String and conformance String();
      v15 = StringProtocol.capitalized.getter();
      v36 = v16;
      v37 = v15;

      v14 = 0xEA00000000006D6FLL;
      v13 = 0x72466574656C6564;
    }

    else if (v6 == 3)
    {
      v7 = 0x7473696C79616C50;
      if (v4 != 2)
      {
        v7 = 0x434174726F706552;
      }

      v8 = 0xE800000000000000;
      if (v4 != 2)
      {
        v8 = 0xEE006E7265636E6FLL;
      }

      v9 = 0x6D75626C41;
      if (v4)
      {
        v9 = 0x747369747241;
      }

      v10 = 0xE500000000000000;
      if (v4)
      {
        v10 = 0xE600000000000000;
      }

      v11 = v4 <= 1u ? v9 : v7;
      v37 = v11;
      v12 = v4 <= 1u ? v10 : v8;
      v36 = v12;
      v13 = 0x657461676976616ELL;
      v14 = 0xEA00000000006F54;
    }

    else
    {
      v14 = 0xE800000000000000;
      v37 = 0x7453657461657263;
      v36 = 0xED00006E6F697461;
      v13 = 0x6570795479616C70;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v13, v14);
    v22 = _swiftEmptyDictionarySingleton[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (_swiftEmptyDictionarySingleton[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v5;
        v28 = v38;
        if (v20)
        {
          goto LABEL_3;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v29 = v5;
        v28 = v38;
        if (v25)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
      v26 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v13, v14);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_42;
      }

      v21 = v26;
      v29 = v5;
      v28 = v38;
      if (v25)
      {
LABEL_3:

        v3 = (_swiftEmptyDictionarySingleton[7] + 16 * v21);
        *v3 = v37;
        v3[1] = v36;

        outlined consume of MetricsEvent.Click.ActionDetails.Key(v28, v29, v6);
        goto LABEL_4;
      }
    }

    _swiftEmptyDictionarySingleton[(v21 >> 6) + 8] |= 1 << v21;
    v30 = (_swiftEmptyDictionarySingleton[6] + 16 * v21);
    *v30 = v13;
    v30[1] = v14;
    v31 = (_swiftEmptyDictionarySingleton[7] + 16 * v21);
    *v31 = v37;
    v31[1] = v36;
    outlined consume of MetricsEvent.Click.ActionDetails.Key(v28, v29, v6);
    v32 = _swiftEmptyDictionarySingleton[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_41;
    }

    _swiftEmptyDictionarySingleton[2] = v34;
LABEL_4:
    if (!--v1)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricsEvent.Click.ActionDetails.Key.DestinationType and conformance MetricsEvent.Click.ActionDetails.Key.DestinationType()
{
  result = lazy protocol witness table cache variable for type MetricsEvent.Click.ActionDetails.Key.DestinationType and conformance MetricsEvent.Click.ActionDetails.Key.DestinationType;
  if (!lazy protocol witness table cache variable for type MetricsEvent.Click.ActionDetails.Key.DestinationType and conformance MetricsEvent.Click.ActionDetails.Key.DestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricsEvent.Click.ActionDetails.Key.DestinationType and conformance MetricsEvent.Click.ActionDetails.Key.DestinationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricsEvent.Click.ActionDetails.Key.PlayType and conformance MetricsEvent.Click.ActionDetails.Key.PlayType()
{
  result = lazy protocol witness table cache variable for type MetricsEvent.Click.ActionDetails.Key.PlayType and conformance MetricsEvent.Click.ActionDetails.Key.PlayType;
  if (!lazy protocol witness table cache variable for type MetricsEvent.Click.ActionDetails.Key.PlayType and conformance MetricsEvent.Click.ActionDetails.Key.PlayType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricsEvent.Click.ActionDetails.Key.PlayType and conformance MetricsEvent.Click.ActionDetails.Key.PlayType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricsEvent.Click.ActionDetails.Key.NavigationType and conformance MetricsEvent.Click.ActionDetails.Key.NavigationType()
{
  result = lazy protocol witness table cache variable for type MetricsEvent.Click.ActionDetails.Key.NavigationType and conformance MetricsEvent.Click.ActionDetails.Key.NavigationType;
  if (!lazy protocol witness table cache variable for type MetricsEvent.Click.ActionDetails.Key.NavigationType and conformance MetricsEvent.Click.ActionDetails.Key.NavigationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricsEvent.Click.ActionDetails.Key.NavigationType and conformance MetricsEvent.Click.ActionDetails.Key.NavigationType);
  }

  return result;
}

uint64_t sub_100029308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1000293F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
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
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void type metadata completion function for Actions.MetricsReportingContext(uint64_t a1)
{
  type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for MetricsEvent.Click.ActionContext?, &type metadata for MetricsEvent.Click.ActionContext);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MetricsEvent.Page?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for String?, &type metadata for String);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [[String : Any]]?(319, &lazy cache variable for type metadata for [[String : Any]]?, &_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [[String : Any]]?(319, &lazy cache variable for type metadata for [[AnyHashable : Any]]?, &_sSaySDys11AnyHashableVypGGMd, &_sSaySDys11AnyHashableVypGGMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for (sharedActivity: Bool, participantsCount: Int, maxParticipantsCount: Int)();
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

void type metadata accessor for MetricsEvent.Page?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MetricsEvent.Page?)
  {
    type metadata accessor for MetricsEvent.Page(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for MetricsEvent.Page?);
    }
  }
}

void type metadata accessor for MetricsEvent.Click.ActionContext?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for [[String : Any]]?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for (sharedActivity: Bool, participantsCount: Int, maxParticipantsCount: Int)()
{
  if (!lazy cache variable for type metadata for (sharedActivity: Bool, participantsCount: Int, maxParticipantsCount: Int))
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (sharedActivity: Bool, participantsCount: Int, maxParticipantsCount: Int));
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t getEnumTagSinglePayload for MetricsEvent.Click.ActionDetails.Key(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsEvent.Click.ActionDetails.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t destructiveInjectEnumTag for MetricsEvent.Click.ActionDetails.Key(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t outlined consume of MetricsEvent.Click.ActionDetails.Key(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t outlined copy of MetricsEvent.Click.ActionDetails.Key(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t View.actionContextMenu(title:menu:excluding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a4;
  v39 = a1;
  v40 = a2;
  v45 = a7;
  v46 = *(a5 - 8);
  __chkstk_darwin();
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVAA15ModifiedContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA30_EnvironmentKeyWritingModifierVyAK9ExcludingCSgGGAA05EmptyK0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA15ModifiedContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA30_EnvironmentKeyWritingModifierVyAK9ExcludingCSgGGAA05EmptyK0VGMR);
  v15 = lazy protocol witness table accessor for type Section<Text, ModifiedContent<ActionMenuView, _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?>>, EmptyView> and conformance <> Section<A, B, C>();
  v51 = a5;
  v52 = v14;
  v53 = a6;
  v54 = v15;
  v48 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v37 - v20;
  v21 = type metadata accessor for _ConditionalContent();
  v43 = *(v21 - 8);
  v44 = v21;
  v22 = __chkstk_darwin();
  v47 = &v37 - v23;
  if (a3)
  {
    v46 = v14;
    __chkstk_darwin();
    *(&v37 - 8) = a5;
    *(&v37 - 7) = a6;
    *(&v37 - 6) = OpaqueTypeConformance2;
    *(&v37 - 5) = a3;
    v24 = v40;
    *(&v37 - 4) = v39;
    *(&v37 - 3) = v24;
    *(&v37 - 2) = v41;

    v25 = v48;
    View.contextMenu<A>(menuItems:)();
    v51 = a5;
    v52 = v46;
    v53 = a6;
    v54 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = *(v17 + 16);
    v27 = v38;
    v26(v38, v19, OpaqueTypeMetadata2);
    v28 = *(v17 + 8);
    v28(v19, OpaqueTypeMetadata2);
    v26(v19, v27, OpaqueTypeMetadata2);
    v14 = v46;
    static ViewBuilder.buildEither<A, B>(first:)(v19, OpaqueTypeMetadata2, a5, OpaqueTypeConformance2, a6);

    v28(v19, OpaqueTypeMetadata2);
    v28(v27, OpaqueTypeMetadata2);
  }

  else
  {
    v29 = v46;
    v30 = *(v46 + 16);
    v30(v13, OpaqueTypeConformance2, a5, v22);
    (v30)(v11, v13, a5);
    v51 = a5;
    v52 = v14;
    v53 = a6;
    v54 = v48;
    v31 = swift_getOpaqueTypeConformance2();
    static ViewBuilder.buildEither<A, B>(second:)(v11, OpaqueTypeMetadata2, a5, v31, a6);
    v32 = *(v29 + 8);
    v32(v11, a5);
    v32(v13, a5);
  }

  v51 = a5;
  v52 = v14;
  v53 = a6;
  v54 = v48;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = a6;
  v33 = v44;
  swift_getWitnessTable();
  v34 = v43;
  v35 = v47;
  (*(v43 + 16))(v45, v47, v33);
  return (*(v34 + 8))(v35, v33);
}

unint64_t lazy protocol witness table accessor for type Section<Text, ModifiedContent<ActionMenuView, _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?>>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<Text, ModifiedContent<ActionMenuView, _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?>>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<Text, ModifiedContent<ActionMenuView, _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?>>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVAA15ModifiedContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA30_EnvironmentKeyWritingModifierVyAK9ExcludingCSgGGAA05EmptyK0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA15ModifiedContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA30_EnvironmentKeyWritingModifierVyAK9ExcludingCSgGGAA05EmptyK0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ActionMenuView, _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<Text, ModifiedContent<ActionMenuView, _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?>>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ActionMenuView, _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ActionMenuView, _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ActionMenuView, _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA30_EnvironmentKeyWritingModifierVyAG9ExcludingCSgGGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA30_EnvironmentKeyWritingModifierVyAG9ExcludingCSgGGMR);
    lazy protocol witness table accessor for type ActionMenuView and conformance ActionMenuView(&lazy protocol witness table cache variable for type ActionMenuView and conformance ActionMenuView, type metadata accessor for ActionMenuView, &protocol conformance descriptor for ActionMenuView);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLV9ExcludingCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLV9ExcludingCSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ActionMenuView, _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for ActionMenuView(uint64_t a1)
{
  result = type metadata singleton initialization cache for ActionMenuView;
  if (!type metadata singleton initialization cache for ActionMenuView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t View.menuItems(for:title:excluding:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA30_EnvironmentKeyWritingModifierVyAG9ExcludingCSgGGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA30_EnvironmentKeyWritingModifierVyAG9ExcludingCSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ActionMenuView, _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  return Section<>.init<A>(_:content:)();
}

uint64_t static ViewBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ConditionalContent.Storage();
  v7 = __chkstk_darwin();
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ConditionalContent.Storage();
  v7 = __chkstk_darwin();
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v68 = a7;
  v69 = a8;
  v66 = a5;
  v67 = a6;
  v65 = a4;
  v64 = a2;
  v63 = a1;
  v73 = a9;
  v62 = *(a10 - 8);
  __chkstk_darwin();
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVAA15ModifiedContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA30_EnvironmentKeyWritingModifierVyAK9ExcludingCSgGGAA05EmptyK0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA15ModifiedContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA30_EnvironmentKeyWritingModifierVyAK9ExcludingCSgGGAA05EmptyK0VGMR);
  v19 = lazy protocol witness table accessor for type Section<Text, ModifiedContent<ActionMenuView, _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?>>, EmptyView> and conformance <> Section<A, B, C>();
  v81 = a10;
  v82 = v18;
  v76 = v18;
  v77 = a11;
  v83 = a11;
  v84 = a12;
  v78 = a12;
  v75 = v19;
  v85 = v19;
  v86 = a13;
  v72 = a13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v23 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = v59 - v24;
  v26 = type metadata accessor for _ConditionalContent();
  v71 = *(v26 - 8);
  v27 = __chkstk_darwin();
  v70 = v59 - v28;
  if (a3)
  {
    v59[2] = v59;
    __chkstk_darwin();
    v62 = v26;
    v59[1] = &v59[-12];
    v29 = v77;
    v30 = v78;
    v59[-10] = a10;
    v59[-9] = v29;
    v60 = v21;
    v61 = v25;
    v31 = v72;
    v59[-8] = v30;
    v59[-7] = v31;
    v59[-6] = v74;
    v59[-5] = a3;
    v32 = OpaqueTypeMetadata2;
    v59[3] = v33;
    __chkstk_darwin();
    v59[-6] = a10;
    v59[-5] = v29;
    v34 = swift_allocObject();
    v35 = v69;
    *(v34 + 16) = v68;
    *(v34 + 24) = v35;

    v58 = v31;
    v36 = v75;
    v56 = v30;
    v57 = v75;
    v55 = v29;
    v37 = v76;
    View.contextMenu<A, B>(menuItems:preview:previewAction:)();

    v81 = a10;
    v82 = v37;
    v83 = v29;
    v84 = v30;
    v85 = v36;
    v86 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v60;
    v40 = *(v60 + 16);
    v41 = v61;
    v40(v61, v23, v32);
    v42 = *(v39 + 8);
    v42(v23, v32);
    v40(v23, v41, v32);
    v43 = v70;
    v44 = OpaqueTypeConformance2;
    v26 = v62;
    static ViewBuilder.buildEither<A, B>(first:)(v23, v32, a10, v44, v78);

    v42(v23, v32);
    v42(v41, v32);
  }

  else
  {
    v45 = v62;
    v46 = *(v62 + 16);
    v46(v17, v74, a10, v27);
    (v46)(v15, v17, a10);
    v81 = a10;
    v82 = v76;
    v47 = v78;
    v83 = v77;
    v84 = v78;
    v31 = v72;
    v85 = v75;
    v86 = v72;
    v48 = swift_getOpaqueTypeConformance2();
    v49 = v70;
    static ViewBuilder.buildEither<A, B>(second:)(v15, OpaqueTypeMetadata2, a10, v48, v47);
    v50 = *(v45 + 8);
    v51 = v15;
    v43 = v49;
    v50(v51, a10);
    v50(v17, a10);
  }

  v81 = a10;
  v82 = v76;
  v52 = v78;
  v83 = v77;
  v84 = v78;
  v85 = v75;
  v86 = v31;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = v52;
  swift_getWitnessTable();
  v53 = v71;
  (*(v71 + 16))(v73, v43, v26);
  return (*(v53 + 8))(v43, v26);
}

uint64_t closure #2 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:)@<X0>(uint64_t a3@<X3>, char *a4@<X8>)
{
  v6 = *(a3 - 8);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin();
  v11 = &v16 - v10;
  v12(v9);
  v13 = *(v6 + 16);
  v13(v11, v8, a3);
  v14 = *(v6 + 8);
  v14(v8, a3);
  v13(a4, v11, a3);
  return (v14)(v11, a3);
}

uint64_t sub_10002AA28()
{

  return swift_deallocObject();
}

uint64_t closure #1 in View.menuItems(for:title:excluding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  type metadata accessor for ActionMenuView.Excluding();
  lazy protocol witness table accessor for type ActionMenuView and conformance ActionMenuView(&lazy protocol witness table cache variable for type ActionMenuView.Excluding and conformance ActionMenuView.Excluding, type metadata accessor for ActionMenuView.Excluding, &protocol conformance descriptor for ActionMenuView.Excluding);

  *(a3 + 32) = EnvironmentObject.init()();
  *(a3 + 40) = v5;
  v6 = *(type metadata accessor for ActionMenuView(0) + 32);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  swift_storeEnumTagMultiPayload();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;

  v8 = static ObservableObject.environmentStore.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA30_EnvironmentKeyWritingModifierVyAG9ExcludingCSgGGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA30_EnvironmentKeyWritingModifierVyAG9ExcludingCSgGGMR);
  v10 = (a3 + *(result + 36));
  *v10 = v8;
  v10[1] = v7;
  return result;
}

uint64_t ActionMenu.menuButton<A>(title:excluding:label:onPresentationChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v47 = a6;
  v43 = a5;
  v48 = a4;
  v49 = a3;
  v40 = a2;
  v42 = a1;
  v53 = a9;
  v11 = type metadata accessor for MenuOrder();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin();
  v50 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextV9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA05EmptyI0VGMd, &_s7SwiftUI7SectionVyAA4TextV9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA05EmptyI0VGMR);
  v41 = v13;
  v14 = lazy protocol witness table accessor for type Section<Text, ActionMenuView, EmptyView> and conformance <> Section<A, B, C>();
  v59 = a8;
  v60 = v13;
  v61 = a10;
  v62 = v14;
  v15 = type metadata accessor for Menu();
  v46 = *(v15 - 8);
  __chkstk_darwin();
  v17 = v35 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLV9ExcludingCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLV9ExcludingCSgGMR);
  v38 = v15;
  v18 = type metadata accessor for ModifiedContent();
  v36 = v18;
  v45 = *(v18 - 8);
  __chkstk_darwin();
  v39 = v35 - v19;
  WitnessTable = swift_getWitnessTable();
  v35[1] = WitnessTable;
  v21 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLV9ExcludingCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLV9ExcludingCSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v57 = WitnessTable;
  v58 = v21;
  v37 = swift_getWitnessTable();
  v59 = v18;
  v60 = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v25 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = v35 - v26;
  v54 = v42;
  v55 = v40;
  v56 = v44;

  Menu.init(onPresentationChanged:content:label:)();
  type metadata accessor for ActionMenuView.Excluding();
  *(swift_allocObject() + 16) = v49;
  lazy protocol witness table accessor for type ActionMenuView and conformance ActionMenuView(&lazy protocol witness table cache variable for type ActionMenuView.Excluding and conformance ActionMenuView.Excluding, type metadata accessor for ActionMenuView.Excluding, &protocol conformance descriptor for ActionMenuView.Excluding);

  v28 = v39;
  v29 = v38;
  View.environmentObject<A>(_:)();

  (*(v46 + 8))(v17, v29);
  v30 = v50;
  static MenuOrder.fixed.getter();
  v31 = v36;
  View.menuOrder(_:)();
  (*(v51 + 8))(v30, v52);
  (*(v45 + 8))(v28, v31);
  v32 = *(v23 + 16);
  v32(v27, v25, OpaqueTypeMetadata2);
  v33 = *(v23 + 8);
  v33(v25, OpaqueTypeMetadata2);
  v32(v53, v27, OpaqueTypeMetadata2);
  return (v33)(v27, OpaqueTypeMetadata2);
}

unint64_t lazy protocol witness table accessor for type Section<Text, ActionMenuView, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<Text, ActionMenuView, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<Text, ActionMenuView, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextV9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA05EmptyI0VGMd, &_s7SwiftUI7SectionVyAA4TextV9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA05EmptyI0VGMR);
    lazy protocol witness table accessor for type ActionMenuView and conformance ActionMenuView(&lazy protocol witness table cache variable for type ActionMenuView and conformance ActionMenuView, type metadata accessor for ActionMenuView, &protocol conformance descriptor for ActionMenuView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<Text, ActionMenuView, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

uint64_t closure #1 in ActionMenu.menuButton<A>(title:excluding:label:onPresentationChanged:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  type metadata accessor for ActionMenuView(0);
  lazy protocol witness table accessor for type ActionMenuView and conformance ActionMenuView(&lazy protocol witness table cache variable for type ActionMenuView and conformance ActionMenuView, type metadata accessor for ActionMenuView, &protocol conformance descriptor for ActionMenuView);
  lazy protocol witness table accessor for type String and conformance String();

  return Section<>.init<A>(_:content:)();
}

uint64_t closure #1 in closure #1 in ActionMenu.menuButton<A>(title:excluding:label:onPresentationChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  type metadata accessor for ActionMenuView.Excluding();
  lazy protocol witness table accessor for type ActionMenuView and conformance ActionMenuView(&lazy protocol witness table cache variable for type ActionMenuView.Excluding and conformance ActionMenuView.Excluding, type metadata accessor for ActionMenuView.Excluding, &protocol conformance descriptor for ActionMenuView.Excluding);

  *(a2 + 32) = EnvironmentObject.init()();
  *(a2 + 40) = v3;
  v4 = *(type metadata accessor for ActionMenuView(0) + 32);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WeakValuesDictionary.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ActionMenuView.Excluding@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActionMenuView.Excluding();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t ActionMenuView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4MenuVyAA19_ConditionalContentVyAA5LabelVyAA4TextVAA5ImageVGAIGAA08ModifiedE0VyAA7ForEachVySay9MusicCore06ActionC0C7ElementOGSSAEyAR0nC4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemP0VAZGGAA011_AppearanceN8ModifierVGGMd, &_s7SwiftUI4MenuVyAA19_ConditionalContentVyAA5LabelVyAA4TextVAA5ImageVGAIGAA08ModifiedE0VyAA7ForEachVySay9MusicCore06ActionC0C7ElementOGSSAEyAR0nC4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemP0VAZGGAA011_AppearanceN8ModifierVGGMR);
  v85 = *(v3 - 8);
  __chkstk_darwin();
  v84 = v70 - v4;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyACyAA0G0PAAE17controlGroupStyleyQrqd__AA07ControliJ0Rd__lFQOyAA0kI0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAR0qrG033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemG0VAZGGAA011_AppearanceQ8ModifierVGG_AA0rkiJ0VQo_A5_G_AA7DividerVSgtGAA0R0VyACyAA5LabelVyAA4TextVAA5ImageVGA20_GA5_G_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyACyAA0G0PAAE17controlGroupStyleyQrqd__AA07ControliJ0Rd__lFQOyAA0kI0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAR0qrG033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemG0VAZGGAA011_AppearanceQ8ModifierVGG_AA0rkiJ0VQo_A5_G_AA7DividerVSgtGAA0R0VyACyAA5LabelVyAA4TextVAA5ImageVGA20_GA5_G_GMR);
  __chkstk_darwin();
  v98 = v70 - v5;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA0D0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedF0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAEyAP0pqD033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemD0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA0D0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedF0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAEyAP0pqD033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemD0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGMR);
  __chkstk_darwin();
  v92 = v70 - v6;
  v7 = type metadata accessor for Divider();
  v88 = *(v7 - 8);
  v89 = v7;
  __chkstk_darwin();
  v77 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
  __chkstk_darwin();
  v90 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = v70 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAP0pqF033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemF0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAP0pqF033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemF0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3__GMR);
  __chkstk_darwin();
  v86 = v70 - v11;
  v83 = type metadata accessor for MenuControlGroupStyle();
  v75 = *(v83 - 8);
  __chkstk_darwin();
  v73 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ControlGroupVyAA15ModifiedContentVyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA012_ConditionalF0VyAH0kL4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemO0VARGGAA011_AppearanceK8ModifierVGGMd, &_s7SwiftUI12ControlGroupVyAA15ModifiedContentVyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA012_ConditionalF0VyAH0kL4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemO0VARGGAA011_AppearanceK8ModifierVGGMR);
  v72 = *(v80 - 8);
  __chkstk_darwin();
  v71 = v70 - v13;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE17controlGroupStyleyQrqd__AA07ControleF0Rd__lFQOyAA0gE0VyAA15ModifiedContentVyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA012_ConditionalI0VyAL0noC033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemC0VAVGGAA011_AppearanceN8ModifierVGG_AA0ogeF0VQo_Md, &_s7SwiftUI4ViewPAAE17controlGroupStyleyQrqd__AA07ControleF0Rd__lFQOyAA0gE0VyAA15ModifiedContentVyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA012_ConditionalI0VyAL0noC033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemC0VAVGGAA011_AppearanceN8ModifierVGG_AA0ogeF0VQo_MR);
  v76 = *(v82 - 8);
  __chkstk_darwin();
  v74 = v70 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17controlGroupStyleyQrqd__AA07ControlgH0Rd__lFQOyAA0iG0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAN0opE033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemE0VAVGGAA011_AppearanceO8ModifierVGG_AA0pigH0VQo_A1_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17controlGroupStyleyQrqd__AA07ControlgH0Rd__lFQOyAA0iG0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAN0opE033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemE0VAVGGAA011_AppearanceO8ModifierVGG_AA0pigH0VQo_A1_GMR);
  __chkstk_darwin();
  v87 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = v70 - v16;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyACyAA0F0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAP0pqF033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemF0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGAA0Q0VyACyAA5LabelVyAA4TextVAA5ImageVGA18_GA3_GGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyACyAA0F0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAP0pqF033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemF0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGAA0Q0VyACyAA5LabelVyAA4TextVAA5ImageVGA18_GA3_GGMR);
  __chkstk_darwin();
  v95 = v70 - v17;
  v18 = *(type metadata accessor for ActionMenuView(0) - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v20 = v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA012_ConditionalD0VyAF0iJ4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemM0VAPGGAA011_AppearanceI8ModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA012_ConditionalD0VyAF0iJ4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemM0VAPGGAA011_AppearanceI8ModifierVGMR);
  __chkstk_darwin();
  v99 = v70 - v21;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewVACyAA05TupleG0VyACyAA0G0PAAE17controlGroupStyleyQrqd__AA07ControljK0Rd__lFQOyAA0lJ0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAT0rsG033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemG0VA0_GGAA011_AppearanceR8ModifierVGG_AA0sljK0VQo_A7_G_AA7DividerVSgtGAA0S0VyACyAA5LabelVyAA4TextVAA5ImageVGA22_GA7_GG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewVACyAA05TupleG0VyACyAA0G0PAAE17controlGroupStyleyQrqd__AA07ControljK0Rd__lFQOyAA0lJ0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAT0rsG033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemG0VA0_GGAA011_AppearanceR8ModifierVGG_AA0sljK0VQo_A7_G_AA7DividerVSgtGAA0S0VyACyAA5LabelVyAA4TextVAA5ImageVGA22_GA7_GG_GMR);
  __chkstk_darwin();
  v102 = v70 - v22;
  if (!v1[4])
  {
    type metadata accessor for ActionMenuView.Excluding();
    lazy protocol witness table accessor for type ActionMenuView and conformance ActionMenuView(&lazy protocol witness table cache variable for type ActionMenuView.Excluding and conformance ActionMenuView.Excluding, type metadata accessor for ActionMenuView.Excluding, &protocol conformance descriptor for ActionMenuView.Excluding);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v23 = v1;
  v24 = *v1;

  v26 = ActionMenu.elements(excluding:includeUnsupported:)(v25, 0);
  v100 = v27;
  v29 = v28;

  if (!*(v26 + 2))
  {

    (v100)(v42);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(_ConditionalContent<<<opaque return type of View.controlGroupStyle<A>(_:)>>.0, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>, Divider?)>, Menu<_ConditionalContent<Label<Text, Image>, Text>, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  v78 = v3;
  v79 = a1;
  v104 = v26;
  swift_getKeyPath();
  outlined init with copy of ActionMenuView(v23, v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v31 = (v19 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  outlined init with take of ActionMenuView(v20, v32 + v30);
  *(v32 + v31) = v26;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore10ActionMenuC7ElementOGMd, &_sSay9MusicCore10ActionMenuC7ElementOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemI0VAGGMd, &_s7SwiftUI19_ConditionalContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemI0VAGGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [ActionMenu.Element] and conformance [A], &_sSay9MusicCore10ActionMenuC7ElementOGMd, &_sSay9MusicCore10ActionMenuC7ElementOGMR, &protocol conformance descriptor for [A]);
  lazy protocol witness table accessor for type _ConditionalContent<ActionMenuView.ItemView, ActionMenuView> and conformance <> _ConditionalContent<A, B>();
  v33 = v99;
  ForEach<>.init(_:id:content:)();
  v34 = swift_allocObject();
  *(v34 + 16) = v100;
  *(v34 + 24) = v29;
  v35 = (v33 + *(v93 + 36));
  *v35 = partial apply for closure #2 in ActionMenuView.body.getter;
  v35[1] = v34;
  v35[2] = 0;
  v35[3] = 0;
  v36 = *(v24 + 32);

  v37 = v29;
  if ((MenuType.style.getter(v36) & 1) == 0)
  {
    v100 = v23;
    v44 = *(v26 + 2);
    v45 = *(v24 + 32);

    if (MenuType.rawValue.getter(v45) == 0x7463416B63697571 && v46 == 0xEB000000006E6F69)
    {

      if (v44 <= 1)
      {
LABEL_13:
        outlined init with copy of TaskPriority?(v33, v86, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA012_ConditionalD0VyAF0iJ4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemM0VAPGGAA011_AppearanceI8ModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA012_ConditionalD0VyAF0iJ4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemM0VAPGGAA011_AppearanceI8ModifierVGMR);
        swift_storeEnumTagMultiPayload();
        v57 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ControlGroup<ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>> and conformance ControlGroup<A>, &_s7SwiftUI12ControlGroupVyAA15ModifiedContentVyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA012_ConditionalF0VyAH0kL4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemO0VARGGAA011_AppearanceK8ModifierVGGMd, &_s7SwiftUI12ControlGroupVyAA15ModifiedContentVyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA012_ConditionalF0VyAH0kL4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemO0VARGGAA011_AppearanceK8ModifierVGGMR, &protocol conformance descriptor for ControlGroup<A>);
        v58 = lazy protocol witness table accessor for type ActionMenuView and conformance ActionMenuView(&lazy protocol witness table cache variable for type MenuControlGroupStyle and conformance MenuControlGroupStyle, &type metadata accessor for MenuControlGroupStyle, &protocol conformance descriptor for MenuControlGroupStyle);
        v104 = v80;
        v105 = v83;
        v106 = v57;
        v107 = v58;
        swift_getOpaqueTypeConformance2();
        lazy protocol witness table accessor for type ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
        _ConditionalContent<>.init(storage:)();
        goto LABEL_14;
      }
    }

    else
    {
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v47 & 1) == 0 || v44 < 2)
      {
        goto LABEL_13;
      }
    }

    __chkstk_darwin();
    v85 = lazy protocol witness table accessor for type ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    v48 = v71;
    ControlGroup.init(content:)();
    v49 = v73;
    MenuControlGroupStyle.init()();
    v50 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ControlGroup<ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>> and conformance ControlGroup<A>, &_s7SwiftUI12ControlGroupVyAA15ModifiedContentVyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA012_ConditionalF0VyAH0kL4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemO0VARGGAA011_AppearanceK8ModifierVGGMd, &_s7SwiftUI12ControlGroupVyAA15ModifiedContentVyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA012_ConditionalF0VyAH0kL4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemO0VARGGAA011_AppearanceK8ModifierVGGMR, &protocol conformance descriptor for ControlGroup<A>);
    v51 = lazy protocol witness table accessor for type ActionMenuView and conformance ActionMenuView(&lazy protocol witness table cache variable for type MenuControlGroupStyle and conformance MenuControlGroupStyle, &type metadata accessor for MenuControlGroupStyle, &protocol conformance descriptor for MenuControlGroupStyle);
    v52 = v74;
    v53 = v80;
    v54 = v83;
    View.controlGroupStyle<A>(_:)();
    (*(v75 + 8))(v49, v54);
    (*(v72 + 8))(v48, v53);
    v55 = v76;
    v56 = v82;
    (*(v76 + 16))(v86, v52, v82);
    swift_storeEnumTagMultiPayload();
    v104 = v53;
    v105 = v54;
    v106 = v50;
    v107 = v51;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v55 + 8))(v52, v56);
LABEL_14:
    v60 = v88;
    v59 = v89;
    v61 = *(v100 + 8) == 1;
    v62 = v91;
    v70[1] = v37;
    if (v61)
    {
      v63 = v77;
      Divider.init()();
      (*(v60 + 32))(v62, v63, v59);
      v64 = 0;
    }

    else
    {
      v64 = 1;
    }

    (*(v60 + 56))(v62, v64, 1, v59);
    v65 = v94;
    v66 = v87;
    outlined init with copy of TaskPriority?(v94, v87, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17controlGroupStyleyQrqd__AA07ControlgH0Rd__lFQOyAA0iG0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAN0opE033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemE0VAVGGAA011_AppearanceO8ModifierVGG_AA0pigH0VQo_A1_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17controlGroupStyleyQrqd__AA07ControlgH0Rd__lFQOyAA0iG0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAN0opE033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemE0VAVGGAA011_AppearanceO8ModifierVGG_AA0pigH0VQo_A1_GMR);
    v67 = v90;
    outlined init with copy of TaskPriority?(v62, v90, &_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
    v68 = v92;
    outlined init with copy of TaskPriority?(v66, v92, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17controlGroupStyleyQrqd__AA07ControlgH0Rd__lFQOyAA0iG0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAN0opE033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemE0VAVGGAA011_AppearanceO8ModifierVGG_AA0pigH0VQo_A1_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17controlGroupStyleyQrqd__AA07ControlgH0Rd__lFQOyAA0iG0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAN0opE033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemE0VAVGGAA011_AppearanceO8ModifierVGG_AA0pigH0VQo_A1_GMR);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17controlGroupStyleyQrqd__AA07ControlgH0Rd__lFQOyAA0iG0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAN0opE033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemE0VAVGGAA011_AppearanceO8ModifierVGG_AA0pigH0VQo_A1_G_AA7DividerVSgtMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17controlGroupStyleyQrqd__AA07ControlgH0Rd__lFQOyAA0iG0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAN0opE033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemE0VAVGGAA011_AppearanceO8ModifierVGG_AA0pigH0VQo_A1_G_AA7DividerVSgtMR);
    outlined init with copy of TaskPriority?(v67, v68 + *(v69 + 48), &_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
    outlined destroy of TaskPriority?(v67, &_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
    outlined destroy of TaskPriority?(v66, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17controlGroupStyleyQrqd__AA07ControlgH0Rd__lFQOyAA0iG0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAN0opE033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemE0VAVGGAA011_AppearanceO8ModifierVGG_AA0pigH0VQo_A1_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17controlGroupStyleyQrqd__AA07ControlgH0Rd__lFQOyAA0iG0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAN0opE033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemE0VAVGGAA011_AppearanceO8ModifierVGG_AA0pigH0VQo_A1_GMR);
    outlined init with copy of TaskPriority?(v68, v98, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA0D0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedF0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAEyAP0pqD033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemD0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA0D0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedF0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAEyAP0pqD033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemD0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(_ConditionalContent<<<opaque return type of View.controlGroupStyle<A>(_:)>>.0, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>, Divider?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA0D0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedF0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAEyAP0pqD033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemD0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA0D0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedF0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAEyAP0pqD033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemD0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGMR, &protocol conformance descriptor for TupleView<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Menu<_ConditionalContent<Label<Text, Image>, Text>, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA19_ConditionalContentVyAA5LabelVyAA4TextVAA5ImageVGAIGAA08ModifiedE0VyAA7ForEachVySay9MusicCore06ActionC0C7ElementOGSSAEyAR0nC4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemP0VAZGGAA011_AppearanceN8ModifierVGGMd, &_s7SwiftUI4MenuVyAA19_ConditionalContentVyAA5LabelVyAA4TextVAA5ImageVGAIGAA08ModifiedE0VyAA7ForEachVySay9MusicCore06ActionC0C7ElementOGSSAEyAR0nC4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemP0VAZGGAA011_AppearanceN8ModifierVGGMR, &protocol conformance descriptor for Menu<A, B>);
    v41 = v95;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of TaskPriority?(v68, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA0D0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedF0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAEyAP0pqD033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemD0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA0D0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedF0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAEyAP0pqD033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemD0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGMR);
    outlined destroy of TaskPriority?(v62, &_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
    outlined destroy of TaskPriority?(v65, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17controlGroupStyleyQrqd__AA07ControlgH0Rd__lFQOyAA0iG0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAN0opE033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemE0VAVGGAA011_AppearanceO8ModifierVGG_AA0pigH0VQo_A1_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE17controlGroupStyleyQrqd__AA07ControlgH0Rd__lFQOyAA0iG0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAN0opE033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemE0VAVGGAA011_AppearanceO8ModifierVGG_AA0pigH0VQo_A1_GMR);
    v33 = v99;
    goto LABEL_18;
  }

  __chkstk_darwin();
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA5LabelVyAA4TextVAA5ImageVGAGGMd, &_s7SwiftUI19_ConditionalContentVyAA5LabelVyAA4TextVAA5ImageVGAGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<Label<Text, Image>, Text> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  v38 = v84;
  Menu.init(content:label:)();
  v39 = v85;
  v40 = v78;
  (*(v85 + 16))(v98, v38, v78);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(_ConditionalContent<<<opaque return type of View.controlGroupStyle<A>(_:)>>.0, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>, Divider?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA0D0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedF0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAEyAP0pqD033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemD0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA0D0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedF0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAEyAP0pqD033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemD0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGMR, &protocol conformance descriptor for TupleView<A>);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Menu<_ConditionalContent<Label<Text, Image>, Text>, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA19_ConditionalContentVyAA5LabelVyAA4TextVAA5ImageVGAIGAA08ModifiedE0VyAA7ForEachVySay9MusicCore06ActionC0C7ElementOGSSAEyAR0nC4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemP0VAZGGAA011_AppearanceN8ModifierVGGMd, &_s7SwiftUI4MenuVyAA19_ConditionalContentVyAA5LabelVyAA4TextVAA5ImageVGAIGAA08ModifiedE0VyAA7ForEachVySay9MusicCore06ActionC0C7ElementOGSSAEyAR0nC4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemP0VAZGGAA011_AppearanceN8ModifierVGGMR, &protocol conformance descriptor for Menu<A, B>);
  v41 = v95;
  _ConditionalContent<>.init(storage:)();
  (*(v39 + 8))(v38, v40);
LABEL_18:
  outlined init with copy of TaskPriority?(v41, v102, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyACyAA0F0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAP0pqF033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemF0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGAA0Q0VyACyAA5LabelVyAA4TextVAA5ImageVGA18_GA3_GGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyACyAA0F0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAP0pqF033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemF0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGAA0Q0VyACyAA5LabelVyAA4TextVAA5ImageVGA18_GA3_GGMR);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<TupleView<(_ConditionalContent<<<opaque return type of View.controlGroupStyle<A>(_:)>>.0, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>, Divider?)>, Menu<_ConditionalContent<Label<Text, Image>, Text>, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();

  outlined destroy of TaskPriority?(v41, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyACyAA0F0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAP0pqF033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemF0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGAA0Q0VyACyAA5LabelVyAA4TextVAA5ImageVGA18_GA3_GGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyACyAA0F0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAP0pqF033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemF0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGAA0Q0VyACyAA5LabelVyAA4TextVAA5ImageVGA18_GA3_GGMR);
  return outlined destroy of TaskPriority?(v33, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA012_ConditionalD0VyAF0iJ4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemM0VAPGGAA011_AppearanceI8ModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA012_ConditionalD0VyAF0iJ4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemM0VAPGGAA011_AppearanceI8ModifierVGMR);
}

uint64_t key path getter for ActionMenu.Element.id : ActionMenu.Element@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v4 = ActionType.rawValue.getter(v3);
    result = v5;
  }

  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t closure #1 in ActionMenuView.body.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v65 = type metadata accessor for ActionMenuView(0);
  __chkstk_darwin();
  v8 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemJ0VAI_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemJ0VAI_GMR);
  __chkstk_darwin();
  v10 = &v56[-v9];
  v11 = type metadata accessor for DynamicTypeSize();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1[1];
  v66 = *a1;
  v67 = v15;
  v16 = a1[3];
  v18 = a1[4];
  v17 = a1[5];
  v68 = a1[2];
  v69 = v18;
  v61 = v16;
  v62 = v17;
  v70 = a1[6];
  if (MenuType.rawValue.getter(*(*a2 + 32)) == 0x7463416B63697571 && v19 == 0xEB000000006E6F69)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (*(a3 + 16) >= 2uLL)
  {
    specialized Environment.wrappedValue.getter(v14);
    v22 = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v12 + 8))(v14, v11);
    v23 = v22 ^ 1;
    v24 = v66;
    if ((v66 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v25 = a2[2];
    v26 = a2[3];
    *v8 = v24 & 0x7FFFFFFFFFFFFFFFLL;
    v8[8] = 1;
    *(v8 + 2) = v25;
    *(v8 + 3) = v26;
    outlined copy of ActionMenu.Element(v24, v67, v68, v61, v69, v62, v70);
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v25, v26);
    type metadata accessor for ActionMenuView.Excluding();
    lazy protocol witness table accessor for type ActionMenuView and conformance ActionMenuView(&lazy protocol witness table cache variable for type ActionMenuView.Excluding and conformance ActionMenuView.Excluding, type metadata accessor for ActionMenuView.Excluding, &protocol conformance descriptor for ActionMenuView.Excluding);
    *(v8 + 4) = EnvironmentObject.init()();
    *(v8 + 5) = v27;
    v28 = *(v65 + 32);
    *&v8[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
    swift_storeEnumTagMultiPayload();
    outlined init with copy of ActionMenuView(v8, v10);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ActionMenuView.ItemView and conformance ActionMenuView.ItemView();
    lazy protocol witness table accessor for type ActionMenuView and conformance ActionMenuView(&lazy protocol witness table cache variable for type ActionMenuView and conformance ActionMenuView, type metadata accessor for ActionMenuView, &protocol conformance descriptor for ActionMenuView);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ActionMenuView(v8);
  }

LABEL_11:
  v23 = 0;
  v24 = v66;
  if (v66 < 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v59 = (v23 & 1) != 0 && *(a3 + 16) > 2uLL;
  v30 = a2[2];
  v31 = a2[3];
  v60 = v30;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v30, v31);

  v67(v89, v32);
  v33 = v90;
  v34 = v91;
  __swift_project_boxed_opaque_existential_0Tm(v89, v90);
  v87 = (*(v34 + 8))(v33, v34);
  v88[0] = v35;
  v36 = v90;
  v37 = v91;
  __swift_project_boxed_opaque_existential_0Tm(v89, v90);
  v38 = (*(v37 + 24))(v36, v37);
  v39 = 0;
  v88[1] = v38;
  v88[2] = v40;
  v41 = _swiftEmptyArrayStorage;
LABEL_16:
  v42 = &v88[2 * v39];
  while (++v39 != 3)
  {
    v43 = v42 + 2;
    v44 = *v42;
    v42 += 2;
    if (v44)
    {
      v58 = v10;
      v57 = v23;
      v45 = *(v43 - 3);

      v46 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
      }

      v48 = *(v41 + 2);
      v47 = *(v41 + 3);
      if (v48 >= v47 >> 1)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v41);
      }

      *(v41 + 2) = v48 + 1;
      v49 = &v41[16 * v48];
      *(v49 + 4) = v45;
      *(v49 + 5) = v44;
      v31 = v46;
      v23 = v57;
      v10 = v58;
      goto LABEL_16;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  swift_arrayDestroy();
  v78[0] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, &protocol conformance descriptor for [A]);
  v50 = BidirectionalCollection<>.joined(separator:)();
  v52 = v51;

  __swift_destroy_boxed_opaque_existential_0Tm(v89);
  LOBYTE(v72) = v66;
  *(&v72 + 1) = v94[0];
  DWORD1(v72) = *(v94 + 3);
  *(&v72 + 1) = v67;
  *&v73 = v68;
  *(&v73 + 1) = v61;
  *&v74 = v69;
  *(&v74 + 1) = v62;
  *&v75 = v70;
  BYTE8(v75) = v59;
  BYTE9(v75) = v23 & 1;
  *(&v75 + 10) = v92;
  HIWORD(v75) = v93;
  *&v76 = v60;
  *(&v76 + 1) = v31;
  *&v77 = v50;
  *(&v77 + 1) = v52;
  LOBYTE(v78[0]) = v66;
  HIDWORD(v78[0]) = *(v94 + 3);
  *(v78 + 1) = v94[0];
  v78[1] = v67;
  v78[2] = v68;
  v78[3] = v61;
  v78[4] = v69;
  v78[5] = v62;
  v78[6] = v70;
  v79 = v59;
  v80 = v23 & 1;
  v81 = v92;
  v82 = v93;
  v83 = v60;
  v84 = v31;
  v85 = v50;
  v86 = v52;
  outlined init with copy of ActionMenuView.ItemView(&v72, &v71);
  outlined destroy of ActionMenuView.ItemView(v78);
  v53 = v75;
  v10[2] = v74;
  v10[3] = v53;
  v54 = v77;
  v10[4] = v76;
  v10[5] = v54;
  v55 = v73;
  *v10 = v72;
  v10[1] = v55;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ActionMenuView.ItemView and conformance ActionMenuView.ItemView();
  lazy protocol witness table accessor for type ActionMenuView and conformance ActionMenuView(&lazy protocol witness table cache variable for type ActionMenuView and conformance ActionMenuView, type metadata accessor for ActionMenuView, &protocol conformance descriptor for ActionMenuView);
  return _ConditionalContent<>.init(storage:)();
}

uint64_t closure #5 in ActionMenuView.body.getter(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA5LabelVyAA4TextVAA5ImageVGAI_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA5LabelVyAA4TextVAA5ImageVGAI_GMR);
  __chkstk_darwin();
  v7 = v16 - v6;
  v8 = *a1;
  if (MenuType.image.getter(*(*a1 + 32)))
  {
    __chkstk_darwin();
    v16[-2] = a1;
    __chkstk_darwin();
    v16[-2] = v9;
    v10 = v9;
    Label.init(title:icon:)();
    (*(v3 + 16))(v7, v5, v2);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR, &protocol conformance descriptor for Label<A, B>);
    _ConditionalContent<>.init(storage:)();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v16[0] = MenuType.title.getter(*(v8 + 32));
    v16[1] = v12;
    lazy protocol witness table accessor for type String and conformance String();
    *v7 = Text.init<A>(_:)();
    *(v7 + 1) = v13;
    v7[16] = v14 & 1;
    *(v7 + 3) = v15;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR, &protocol conformance descriptor for Label<A, B>);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t closure #1 in closure #5 in ActionMenuView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MenuType.title.getter(*(*a1 + 32));
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t ActionMenuView.ItemView.body.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  v2 = __chkstk_darwin();
  v4 = &v15[-v3 - 8];
  (*(v0 + 8))(v16, v2);
  v5 = v17;
  v6 = v18;
  __swift_project_boxed_opaque_existential_0Tm(v16, v17);
  if ((*(v6 + 48))(v5, v6))
  {
    static ButtonRole.destructive.getter();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for ButtonRole();
  (*(*(v8 - 8) + 56))(v4, v7, 1, v8);
  v9 = swift_allocObject();
  v10 = v1[3];
  v9[3] = v1[2];
  v9[4] = v10;
  v11 = v1[5];
  v9[5] = v1[4];
  v9[6] = v11;
  v12 = v1[1];
  v9[1] = *v1;
  v9[2] = v12;
  __chkstk_darwin();
  *(&v14 - 2) = v1;
  *(&v14 - 1) = v16;
  outlined init with copy of ActionMenuView.ItemView(v1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA15ModifiedContentVyAA0C5GroupVyAA9TupleViewVyAA4TextV_AKtGGAA31AccessibilityAttachmentModifierVGAA5ImageVSgGMd, &_s7SwiftUI5LabelVyAA15ModifiedContentVyAA0C5GroupVyAA9TupleViewVyAA4TextV_AKtGGAA31AccessibilityAttachmentModifierVGAA5ImageVSgGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Label<ModifiedContent<LabelGroup<TupleView<(Text, Text)>>, AccessibilityAttachmentModifier>, Image?> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA15ModifiedContentVyAA0C5GroupVyAA9TupleViewVyAA4TextV_AKtGGAA31AccessibilityAttachmentModifierVGAA5ImageVSgGMd, &_s7SwiftUI5LabelVyAA15ModifiedContentVyAA0C5GroupVyAA9TupleViewVyAA4TextV_AKtGGAA31AccessibilityAttachmentModifierVGAA5ImageVSgGMR, &protocol conformance descriptor for Label<A, B>);
  Button.init(role:action:label:)();
  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

uint64_t ActionMenuItemStyle.buttonRole.getter@<X0>(char a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    static ButtonRole.destructive.getter();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for ButtonRole();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_10002D2B4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVAA15ModifiedContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA30_EnvironmentKeyWritingModifierVyAK9ExcludingCSgGGAA05EmptyK0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA15ModifiedContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA30_EnvironmentKeyWritingModifierVyAK9ExcludingCSgGGAA05EmptyK0VGMR);
  lazy protocol witness table accessor for type Section<Text, ModifiedContent<ActionMenuView, _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?>>, EmptyView> and conformance <> Section<A, B, C>();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_10002D38C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVAA15ModifiedContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA30_EnvironmentKeyWritingModifierVyAK9ExcludingCSgGGAA05EmptyK0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA15ModifiedContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA30_EnvironmentKeyWritingModifierVyAK9ExcludingCSgGGAA05EmptyK0VGMR);
  lazy protocol witness table accessor for type Section<Text, ModifiedContent<ActionMenuView, _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?>>, EmptyView> and conformance <> Section<A, B, C>();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_10002D478(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextV9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA05EmptyI0VGMd, &_s7SwiftUI7SectionVyAA4TextV9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLVAA05EmptyI0VGMR);
  lazy protocol witness table accessor for type Section<Text, ActionMenuView, EmptyView> and conformance <> Section<A, B, C>();
  type metadata accessor for Menu();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLV9ExcludingCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLV9ExcludingCSgGMR);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ActionMenuView.Excluding?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLV9ExcludingCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLV9ExcludingCSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002D5B0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd, &_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_10002D680(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd, &_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for ActionMenuView(uint64_t a1)
{
  type metadata accessor for ActionMenu();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (())?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for EnvironmentObject<ActionMenuView.Excluding>(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Environment<DynamicTypeSize>(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (())?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (())?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (())?);
    }
  }
}

void type metadata accessor for EnvironmentObject<ActionMenuView.Excluding>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EnvironmentObject<ActionMenuView.Excluding>)
  {
    type metadata accessor for ActionMenuView.Excluding();
    lazy protocol witness table accessor for type ActionMenuView and conformance ActionMenuView(&lazy protocol witness table cache variable for type ActionMenuView.Excluding and conformance ActionMenuView.Excluding, type metadata accessor for ActionMenuView.Excluding, &protocol conformance descriptor for ActionMenuView.Excluding);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EnvironmentObject<ActionMenuView.Excluding>);
    }
  }
}

void type metadata accessor for Environment<DynamicTypeSize>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<DynamicTypeSize>)
  {
    type metadata accessor for DynamicTypeSize();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<DynamicTypeSize>);
    }
  }
}

uint64_t closure #1 in ActionMenuView.ItemView.body.getter(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v3 = &v11[-v2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  outlined init with copy of ActionMenuView.ItemView(a1, v11);
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  v7 = a1[3];
  *(v6 + 64) = a1[2];
  *(v6 + 80) = v7;
  v8 = a1[5];
  *(v6 + 96) = a1[4];
  *(v6 + 112) = v8;
  v9 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v9;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in closure #1 in ActionMenuView.ItemView.body.getter, v6);
}

uint64_t closure #1 in closure #1 in ActionMenuView.ItemView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = closure #1 in closure #1 in ActionMenuView.ItemView.body.getter;

  return v8();
}

uint64_t closure #1 in closure #1 in ActionMenuView.ItemView.body.getter()
{
  *(*v1 + 48) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = closure #1 in closure #1 in ActionMenuView.ItemView.body.getter;
  }

  else
  {
    v4 = closure #1 in closure #1 in ActionMenuView.ItemView.body.getter;
  }

  return _swift_task_switch(v4, v3, v2);
}

{
  v1 = *(v0 + 16);

  v3 = *(v1 + 64);
  if (v3)
  {
    v3(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in ActionMenuView.ItemView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10LabelGroupVyAA9TupleViewVyAA4TextV_AItGGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA10LabelGroupVyAA9TupleViewVyAA4TextV_AItGGAA31AccessibilityAttachmentModifierVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageVSgMd, &_s7SwiftUI5ImageVSgMR);
  lazy protocol witness table accessor for type ModifiedContent<LabelGroup<TupleView<(Text, Text)>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Image? and conformance <A> A?();
  return Label.init(title:icon:)();
}

uint64_t closure #1 in closure #2 in ActionMenuView.ItemView.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10LabelGroupVyAA9TupleViewVyAA4TextV_AGtGGMd, &_s7SwiftUI10LabelGroupVyAA9TupleViewVyAA4TextV_AGtGGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9[-v6];
  v10 = a1;
  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA4TextV_AEtGMd, &_s7SwiftUI9TupleViewVyAA4TextV_AEtGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(Text, Text)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA4TextV_AEtGMd, &_s7SwiftUI9TupleViewVyAA4TextV_AEtGMR, &protocol conformance descriptor for TupleView<A>);
  LabelGroup.init(content:)();
  v12 = *(a1 + 80);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type LabelGroup<TupleView<(Text, Text)>> and conformance LabelGroup<A>, &_s7SwiftUI10LabelGroupVyAA9TupleViewVyAA4TextV_AGtGGMd, &_s7SwiftUI10LabelGroupVyAA9TupleViewVyAA4TextV_AGtGGMR, &protocol conformance descriptor for LabelGroup<A>);
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t closure #1 in closure #1 in closure #2 in ActionMenuView.ItemView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_0Tm(a2, v6);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  (*(v7 + 16))(v6, v7);
  if (!v8)
  {
    v6 = a2[3];
    v7 = a2[4];
    __swift_project_boxed_opaque_existential_0Tm(a2, v6);
LABEL_4:
    (*(v7 + 8))(v6, v7);
  }

  lazy protocol witness table accessor for type String and conformance String();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_0Tm(a2, v17);
  (*(v16 + 24))(v17, v16);
  v18 = Text.init<A>(_:)();
  v20 = v19;
  LOBYTE(v16) = v21 & 1;
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  *(a3 + 48) = v21 & 1;
  *(a3 + 56) = v22;
  outlined copy of Text.Storage(v9, v11, v13 & 1);

  outlined copy of Text.Storage(v18, v20, v16);

  outlined consume of Text.Storage(v18, v20, v16);

  outlined consume of Text.Storage(v9, v11, v13 & 1);
}

uint64_t (*closure #2 in closure #2 in ActionMenuView.ItemView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>))(uint64_t)
{
  v5 = *(a1 + 57);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_0Tm(a2, v6);
  if (v5)
  {
    v8 = (*(v7 + 40))(v6, v7);
    if (v8)
    {
      v12 = v8;
      v13 = v9;
      v14 = v10;
      v15 = v11;
      goto LABEL_6;
    }

    v6 = a2[3];
    v7 = a2[4];
    __swift_project_boxed_opaque_existential_0Tm(a2, v6);
  }

  result = (*(v7 + 32))(v6, v7);
  v12 = result;
  v13 = v17;
  v14 = v18;
  v15 = v19;
  if (!result)
  {
    v21 = 0;
    goto LABEL_8;
  }

LABEL_6:

  v21 = v12(v20);
  outlined consume of ActionMenuItemImage?(v12, v13, v14, v15);

LABEL_8:
  *a3 = v21;
  return result;
}

uint64_t key path setter for EnvironmentValues.dynamicTypeSize : EnvironmentValues(uint64_t a1)
{
  type metadata accessor for DynamicTypeSize();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t outlined init with copy of ActionMenuView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E4E4()
{
  v1 = type metadata accessor for ActionMenuView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  if (*(v0 + v2 + 16))
  {
  }

  v3 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DynamicTypeSize();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t outlined init with take of ActionMenuView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ActionMenuView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionMenuView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in ActionMenuView.body.getter(a1, (v2 + v6), v7, a2);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ActionMenuView.ItemView, ActionMenuView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ActionMenuView.ItemView, ActionMenuView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ActionMenuView.ItemView, ActionMenuView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemI0VAGGMd, &_s7SwiftUI19_ConditionalContentVy9MusicCore14ActionMenuView33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemI0VAGGMR);
    lazy protocol witness table accessor for type ActionMenuView.ItemView and conformance ActionMenuView.ItemView();
    lazy protocol witness table accessor for type ActionMenuView and conformance ActionMenuView(&lazy protocol witness table cache variable for type ActionMenuView and conformance ActionMenuView, type metadata accessor for ActionMenuView, &protocol conformance descriptor for ActionMenuView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ActionMenuView.ItemView, ActionMenuView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionMenuView.ItemView and conformance ActionMenuView.ItemView()
{
  result = lazy protocol witness table cache variable for type ActionMenuView.ItemView and conformance ActionMenuView.ItemView;
  if (!lazy protocol witness table cache variable for type ActionMenuView.ItemView and conformance ActionMenuView.ItemView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionMenuView.ItemView and conformance ActionMenuView.ItemView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Label<Text, Image>, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Label<Text, Image>, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Label<Text, Image>, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA5LabelVyAA4TextVAA5ImageVGAGGMd, &_s7SwiftUI19_ConditionalContentVyAA5LabelVyAA4TextVAA5ImageVGAGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Label<Text, Image>, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA012_ConditionalD0VyAF0iJ4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemM0VAPGGAA011_AppearanceI8ModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA012_ConditionalD0VyAF0iJ4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemM0VAPGGAA011_AppearanceI8ModifierVGMR);
    lazy protocol witness table accessor for type ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA19_ConditionalContentVyAD0gH4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemL0VANGGMd, &_s7SwiftUI7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAA19_ConditionalContentVyAD0gH4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemL0VANGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ActionMenuView.ItemView, ActionMenuView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(_ConditionalContent<<<opaque return type of View.controlGroupStyle<A>(_:)>>.0, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>, Divider?)>, Menu<_ConditionalContent<Label<Text, Image>, Text>, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(_ConditionalContent<<<opaque return type of View.controlGroupStyle<A>(_:)>>.0, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>, Divider?)>, Menu<_ConditionalContent<Label<Text, Image>, Text>, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(_ConditionalContent<<<opaque return type of View.controlGroupStyle<A>(_:)>>.0, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>, Divider?)>, Menu<_ConditionalContent<Label<Text, Image>, Text>, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyACyAA0F0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAP0pqF033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemF0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGAA0Q0VyACyAA5LabelVyAA4TextVAA5ImageVGA18_GA3_GGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyACyAA0F0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAP0pqF033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemF0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGAA0Q0VyACyAA5LabelVyAA4TextVAA5ImageVGA18_GA3_GGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(_ConditionalContent<<<opaque return type of View.controlGroupStyle<A>(_:)>>.0, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>, Divider?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA0D0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedF0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAEyAP0pqD033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemD0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA0D0PAAE17controlGroupStyleyQrqd__AA07ControlhI0Rd__lFQOyAA0jH0VyAA08ModifiedF0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSAEyAP0pqD033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemD0VAXGGAA011_AppearanceP8ModifierVGG_AA0qjhI0VQo_A3_G_AA7DividerVSgtGMR, &protocol conformance descriptor for TupleView<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Menu<_ConditionalContent<Label<Text, Image>, Text>, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA19_ConditionalContentVyAA5LabelVyAA4TextVAA5ImageVGAIGAA08ModifiedE0VyAA7ForEachVySay9MusicCore06ActionC0C7ElementOGSSAEyAR0nC4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemP0VAZGGAA011_AppearanceN8ModifierVGGMd, &_s7SwiftUI4MenuVyAA19_ConditionalContentVyAA5LabelVyAA4TextVAA5ImageVGAIGAA08ModifiedE0VyAA7ForEachVySay9MusicCore06ActionC0C7ElementOGSSAEyAR0nC4View33_054BD8B1497E7BB2DD0274679428CFDELLV04ItemP0VAZGGAA011_AppearanceN8ModifierVGGMR, &protocol conformance descriptor for Menu<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(_ConditionalContent<<<opaque return type of View.controlGroupStyle<A>(_:)>>.0, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>, Divider?)>, Menu<_ConditionalContent<Label<Text, Image>, Text>, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  __chkstk_darwin();
  v9 = &v14 - v8;
  outlined init with copy of TaskPriority?(v2, &v14 - v8, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DynamicTypeSize();
    return (*(*(v10 - 8) + 32))(a1, v9, v10);
  }

  else
  {
    v12 = static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMR, &type metadata accessor for LayoutDirection, a1);
}

{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewV5StyleVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewV5StyleVSg_GMR);
  __chkstk_darwin();
  v9 = &v13 - v8;
  outlined init with copy of TaskPriority?(v2, &v13 - v8, &_s7SwiftUI11EnvironmentV7ContentOy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewV5StyleVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewV5StyleVSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of URL?(v9, a1, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMR);
  }

  v11 = static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR, &type metadata accessor for ColorSchemeContrast, a1);
}

{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR, &type metadata accessor for DismissAction, a1);
}

{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR, &type metadata accessor for ColorScheme, a1);
}

uint64_t partial apply for closure #2 in closure #5 in ActionMenuView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = Image.init(uiImage:)();
  *a1 = result;
  return result;
}

uint64_t outlined copy of ActionMenu.Element(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }
}

uint64_t outlined copy of (@escaping @callee_guaranteed () -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined destroy of ActionMenuView(uint64_t a1)
{
  v2 = type metadata accessor for ActionMenuView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for ActionMenuView.ItemView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for ActionMenuView.ItemView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmptyView, _ConditionalContent<TupleView<(_ConditionalContent<<<opaque return type of View.controlGroupStyle<A>(_:)>>.0, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>, Divider?)>, Menu<_ConditionalContent<Label<Text, Image>, Text>, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, _ConditionalContent<TupleView<(_ConditionalContent<<<opaque return type of View.controlGroupStyle<A>(_:)>>.0, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>, Divider?)>, Menu<_ConditionalContent<Label<Text, Image>, Text>, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, _ConditionalContent<TupleView<(_ConditionalContent<<<opaque return type of View.controlGroupStyle<A>(_:)>>.0, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>, Divider?)>, Menu<_ConditionalContent<Label<Text, Image>, Text>, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewVACyAA05TupleF0VyACyAA0F0PAAE17controlGroupStyleyQrqd__AA07ControliJ0Rd__lFQOyAA0kI0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAR0qrF033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemF0VAZGGAA011_AppearanceQ8ModifierVGG_AA0rkiJ0VQo_A5_G_AA7DividerVSgtGAA0R0VyACyAA5LabelVyAA4TextVAA5ImageVGA20_GA5_GGGMd, &_s7SwiftUI19_ConditionalContentVyAA9EmptyViewVACyAA05TupleF0VyACyAA0F0PAAE17controlGroupStyleyQrqd__AA07ControliJ0Rd__lFQOyAA0kI0VyAA08ModifiedD0VyAA7ForEachVySay9MusicCore10ActionMenuC7ElementOGSSACyAR0qrF033_054BD8B1497E7BB2DD0274679428CFDELLV04ItemF0VAZGGAA011_AppearanceQ8ModifierVGG_AA0rkiJ0VQo_A5_G_AA7DividerVSgtGAA0R0VyACyAA5LabelVyAA4TextVAA5ImageVGA20_GA5_GGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(_ConditionalContent<<<opaque return type of View.controlGroupStyle<A>(_:)>>.0, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>, Divider?)>, Menu<_ConditionalContent<Label<Text, Image>, Text>, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, _ConditionalContent<TupleView<(_ConditionalContent<<<opaque return type of View.controlGroupStyle<A>(_:)>>.0, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>, Divider?)>, Menu<_ConditionalContent<Label<Text, Image>, Text>, ModifiedContent<ForEach<[ActionMenu.Element], String, _ConditionalContent<ActionMenuView.ItemView, ActionMenuView>>, _AppearanceActionModifier>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t sub_10002F044()
{

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabelGroup<TupleView<(Text, Text)>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabelGroup<TupleView<(Text, Text)>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabelGroup<TupleView<(Text, Text)>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA10LabelGroupVyAA9TupleViewVyAA4TextV_AItGGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA10LabelGroupVyAA9TupleViewVyAA4TextV_AItGGAA31AccessibilityAttachmentModifierVGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type LabelGroup<TupleView<(Text, Text)>> and conformance LabelGroup<A>, &_s7SwiftUI10LabelGroupVyAA9TupleViewVyAA4TextV_AGtGGMd, &_s7SwiftUI10LabelGroupVyAA9TupleViewVyAA4TextV_AGtGGMR, &protocol conformance descriptor for LabelGroup<A>);
    lazy protocol witness table accessor for type ActionMenuView and conformance ActionMenuView(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabelGroup<TupleView<(Text, Text)>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ActionMenuView and conformance ActionMenuView(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type Image? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Image? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Image? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5ImageVSgMd, &_s7SwiftUI5ImageVSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image? and conformance <A> A?);
  }

  return result;
}

uint64_t outlined consume of ActionMenuItemImage?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10002F2DC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in ActionMenuView.ItemView.body.getter(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in ActionMenuView.ItemView.body.getter(a1, v4, v5, v1 + 32);
}

UIMenu_optional __swiftcall ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v4 = ActionMenuBuilder.menu(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v6 = v5;
  preferredElementSize = _swiftEmptyArrayStorage;
  v8 = ActionMenu.elements(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);

  v9 = *(v8 + 2);
  if (v9)
  {
    v36 = v6;
    v38 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = 32;
    v11 = v9;
    do
    {
      v12 = *&v8[v10];
      v13 = *&v8[v10 + 16];
      v14 = *&v8[v10 + 32];
      v40 = *&v8[v10 + 48];
      v39[1] = v13;
      v39[2] = v14;
      v39[0] = v12;
      outlined init with copy of ActionMenu.Element(v39, &title._object);
      v15._rawValue = excluding._rawValue;
      ActionMenu.Element.menuElement(for:with:excluding:includeUnsupported:)(v4, v9, v15, includeUnsupported);
      outlined destroy of ActionMenu.Element(v39);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += 56;
      --v11;
    }

    while (v11);

    v16 = v38;
    v6 = v36;
    preferredElementSize = _swiftEmptyArrayStorage;
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  v17 = 0;
  title._object = _swiftEmptyArrayStorage;
  v18 = v16[2];
  while (v18 != v17)
  {
    if (v17 >= v16[2])
    {
      __break(1u);
LABEL_28:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_29;
      }

LABEL_15:
      v22 = *(v4 + 32);
      title._countAndFlagsBits = MenuType.title.getter(*(v4 + 32));
      v24 = v23;
      v25 = MenuType.image.getter(v22);
      v26 = (MenuType.style.getter(v22) & 1) == 0;
      if (v17)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v27 = *((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (MenuType.rawValue.getter(v22) == 0x7463416B63697571 && v28 == 0xEB000000006E6F69)
      {

        if (v27 <= 1)
        {
          goto LABEL_25;
        }

LABEL_24:
        v30 = 1;
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) != 0 && v27 >= 2)
        {
          goto LABEL_24;
        }

LABEL_25:
        v30 = 2;
      }

      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIMenu, UIMenu_ptr);
      v31._countAndFlagsBits = title._countAndFlagsBits;
      v31._object = v24;
      v42.value.super.isa = v25;
      v42.is_nil = 0;
      v32.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v31, 0, v42, v26, v30, preferredElementSize, v35).super.super.isa;

      goto LABEL_30;
    }

    v19 = v16[v17++ + 4];
    if (v19)
    {
      v20 = v19;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((title._object & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((title._object & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      preferredElementSize = title._object;
    }
  }

  v6(v21);
  v17 = preferredElementSize >> 62;
  if (preferredElementSize >> 62)
  {
    goto LABEL_28;
  }

  if (*((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_29:

  v32.super.super.isa = 0;
LABEL_30:
  isa = v32.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v33;
  return result;
}

id ActionMenu.Element.menuElement(for:with:excluding:includeUnsupported:)(uint64_t a1, uint64_t a2, Swift::OpaquePointer excluding, char a4)
{
  v6 = *v4;
  if (*v4 < 0)
  {
    v14 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = ActionMenu.uiMenu(excluding:includeUnsupported:)(excluding, a4 & 1);
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      _StringGuts.grow(_:)(20);

      v92 = 0xD000000000000012;
      v93 = 0x80000001004C5860;
      String.append(_:)(v14[1]);
      if (one-time initialization token for prefix != -1)
      {
        swift_once();
      }

      v92 = static AccessibilityIdentifier.prefix;
      v93 = *algn_100608508;

      v18._countAndFlagsBits = 46;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);

      v19._countAndFlagsBits = 0xD000000000000012;
      v19._object = 0x80000001004C5860;
      String.append(_:)(v19);

      v20 = String._bridgeToObjectiveC()();

      [v17 setAccessibilityIdentifier:v20];
    }

    return v16;
  }

  v85 = v4[5];
  v86 = v4[6];
  v10 = v4[3];
  v9 = v4[4];
  v83 = v4[1];
  v84 = v4[2];
  v83(&v92, a1, a2, excluding._rawValue);
  v12 = MenuType.rawValue.getter(*(a1 + 32)) == 0x7463416B63697571 && v11 == 0xEB000000006E6F69;
  v90 = v6;
  if (v12)
  {

    if (a4)
    {
LABEL_16:
      v23 = 0;
LABEL_17:
      v24 = v94;
      v25 = v95;
      __swift_project_boxed_opaque_existential_0Tm(&v92, v94);
      v26 = (*(v25 + 32))(v24, v25);
      v88 = v27;
      v29 = v28;
      v89 = v30;
      goto LABEL_18;
    }
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13 & 1) == 0 || (a4)
    {
      goto LABEL_16;
    }
  }

  if (a2 < 2)
  {
    goto LABEL_16;
  }

  v21 = [objc_opt_self() currentTraitCollection];
  v22 = [v21 preferredContentSizeCategory];

  LOBYTE(v21) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v21)
  {
    goto LABEL_16;
  }

  v41 = v94;
  v42 = v95;
  __swift_project_boxed_opaque_existential_0Tm(&v92, v94);
  v43 = (*(v42 + 40))(v41, v42);
  v89 = v46;
  if (!v43)
  {
    v23 = 1;
    goto LABEL_17;
  }

  v26 = v43;
  v29 = v45;
  v88 = v44;
  v23 = 1;
LABEL_18:
  v31 = v10();
  if (v32 == 1)
  {
    v33 = 0;
  }

  else
  {
    outlined consume of ActionCondition.Result(v31, v32);
    v33 = 1;
  }

  v34 = v94;
  v35 = v95;
  __swift_project_boxed_opaque_existential_0Tm(&v92, v94);
  v36 = (*(v35 + 48))(v34, v35);
  v37 = v33 | 2;
  if ((v36 & 1) == 0)
  {
    v37 = v33;
  }

  v82 = v37;
  if (a2 <= 2)
  {
    v23 = 0;
  }

  v38 = v94;
  v39 = v95;
  __swift_project_boxed_opaque_existential_0Tm(&v92, v94);
  if (v23 != 1)
  {
    goto LABEL_31;
  }

  (*(v39 + 16))(v38, v39);
  if (!v40)
  {
    v38 = v94;
    v39 = v95;
    __swift_project_boxed_opaque_existential_0Tm(&v92, v94);
LABEL_31:
    (*(v39 + 8))(v38, v39);
  }

  v47 = v10;
  v48 = v94;
  v49 = v95;
  __swift_project_boxed_opaque_existential_0Tm(&v92, v94);
  (*(v49 + 24))(v48, v49);
  v87 = v29;
  v50 = v9;
  if (v26)
  {

    v29(v51);
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIAction, UIAction_ptr);
  v52 = v94;
  v53 = v95;
  __swift_project_boxed_opaque_existential_0Tm(&v92, v94);
  v54 = (*(v53 + 56))(v52, v53);
  v55 = swift_allocObject();
  v55[2] = v90;
  v55[3] = v83;
  v55[4] = v84;
  v55[5] = v47;
  v55[6] = v50;
  v55[7] = v85;
  v55[8] = v86;

  v81 = v55;
  v80 = v54;
  v56 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v57 = v94;
  v58 = v95;
  __swift_project_boxed_opaque_existential_0Tm(&v92, v94);
  v59 = *(v58 + 8);
  v16 = v56;
  v59(v57, v58);
  v91[0] = v60;
  v61 = v94;
  v62 = v95;
  __swift_project_boxed_opaque_existential_0Tm(&v92, v94);
  v63 = (*(v62 + 24))(v61, v62);
  v64 = 0;
  v91[1] = v63;
  v91[2] = v65;
  v66 = _swiftEmptyArrayStorage;
LABEL_35:
  v67 = &v91[2 * v64];
  while (++v64 != 3)
  {
    v68 = v67 + 2;
    v69 = *v67;
    v67 += 2;
    if (v69)
    {
      v70 = *(v68 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 2) + 1, 1, v66);
      }

      v72 = *(v66 + 2);
      v71 = *(v66 + 3);
      if (v72 >= v71 >> 1)
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v66);
      }

      *(v66 + 2) = v72 + 1;
      v73 = &v66[16 * v72];
      *(v73 + 4) = v70;
      *(v73 + 5) = v69;
      goto LABEL_35;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();

  v74 = String._bridgeToObjectiveC()();

  [v16 setAccessibilityLabel:{v74, 0, v82, v80, partial apply for closure #1 in ActionMenu.Element.menuElement(for:with:excluding:includeUnsupported:), v81}];

  _StringGuts.grow(_:)(20);

  v75._countAndFlagsBits = ActionType.rawValue.getter(v90);
  String.append(_:)(v75);

  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v76._countAndFlagsBits = 46;
  v76._object = 0xE100000000000000;
  String.append(_:)(v76);

  v77._countAndFlagsBits = 0xD000000000000012;
  v77._object = 0x80000001004C5860;
  String.append(_:)(v77);

  v78 = String._bridgeToObjectiveC()();

  [v16 setAccessibilityIdentifier:v78];
  outlined consume of ActionMenuItemImage?(v26, v88, v87, v89);

  __swift_destroy_boxed_opaque_existential_0Tm(&v92);
  return v16;
}

UIMenu_optional __swiftcall ActionMenu.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v3 = v2;
  v7 = ActionMenu.elements(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v8 = v6;
  v9 = *(v7 + 2);
  preferredElementSize = _swiftEmptyArrayStorage;
  if (v9)
  {
    v40 = v6;
    v43 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = 32;
    v12 = v9;
    do
    {
      v13 = *&v7[v11];
      v14 = *&v7[v11 + 16];
      v15 = *&v7[v11 + 32];
      v45 = *&v7[v11 + 48];
      v44[1] = v14;
      v44[2] = v15;
      v44[0] = v13;
      outlined init with copy of ActionMenu.Element(v44, v42);
      v16._rawValue = excluding._rawValue;
      ActionMenu.Element.menuElement(for:with:excluding:includeUnsupported:)(v2, v9, v16, includeUnsupported);
      outlined destroy of ActionMenu.Element(v44);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 += 56;
      --v12;
    }

    while (v12);

    v17 = v43;
    v8 = v40;
    preferredElementSize = _swiftEmptyArrayStorage;
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  v18 = 0;
  v42[0] = _swiftEmptyArrayStorage;
  v19 = v17[2];
  while (v19 != v18)
  {
    if (v18 >= v17[2])
    {
      __break(1u);
LABEL_28:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_29;
      }

LABEL_15:
      v23 = *(v2 + 32);
      v24 = MenuType.title.getter(*(v2 + 32));
      v26 = v25;
      v28 = *(v3 + 40);
      v27 = *(v3 + 48);

      v29 = MenuType.image.getter(v23);
      v30 = (MenuType.style.getter(v23) & 1) == 0;
      if (!includeUnsupported)
      {
        if (v18)
        {
          v41 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v41 = *((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (MenuType.rawValue.getter(v23) == 0x7463416B63697571 && v31 == 0xEB000000006E6F69)
        {

          goto LABEL_23;
        }

        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v32)
        {
LABEL_23:
          if (v41 > 1)
          {
            v33 = 1;
LABEL_26:
            type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIMenu, UIMenu_ptr);
            v34._countAndFlagsBits = v24;
            v34._object = v26;
            v35.value._countAndFlagsBits = v28;
            v35.value._object = v27;
            v47.value.super.isa = v29;
            v47.is_nil = 0;
            v36.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v34, v35, v47, v30, v33, preferredElementSize, v39).super.super.isa;

            goto LABEL_30;
          }
        }
      }

      v33 = 2;
      goto LABEL_26;
    }

    v20 = v17[v18++ + 4];
    if (v20)
    {
      v21 = v20;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      preferredElementSize = v42[0];
    }
  }

  v8(v22);
  v18 = preferredElementSize >> 62;
  if (preferredElementSize >> 62)
  {
    goto LABEL_28;
  }

  if (*((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_29:

  v36.super.super.isa = 0;
LABEL_30:
  isa = v36.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v37;
  return result;
}

uint64_t closure #1 in ActionMenu.Element.menuElement(for:with:excluding:includeUnsupported:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = *(a2 + 16);
  *(v7 + 32) = *a2;
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a2 + 32);
  *(v7 + 80) = *(a2 + 48);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #1 in ActionMenu.Element.menuElement(for:with:excluding:includeUnsupported:), v7);
}

uint64_t closure #1 in closure #1 in ActionMenu.Element.menuElement(for:with:excluding:includeUnsupported:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = closure #1 in closure #1 in ActionMenu.Element.menuElement(for:with:excluding:includeUnsupported:);

  return v8();
}

uint64_t closure #1 in closure #1 in ActionMenu.Element.menuElement(for:with:excluding:includeUnsupported:)()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = closure #1 in closure #1 in ActionMenu.Element.menuElement(for:with:excluding:includeUnsupported:);
  }

  else
  {
    v4 = implicit closure #4 in implicit closure #3 in AnyAction.init(_:identifier:);
  }

  return _swift_task_switch(v4, v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100030840()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t sub_1000308F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in ActionMenu.Element.menuElement(for:with:excluding:includeUnsupported:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in ActionMenu.Element.menuElement(for:with:excluding:includeUnsupported:)(a1, v4, v5, v1 + 32);
}

uint64_t static ActionMenu.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t ActionMenuBuilder.menu(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v146 = type metadata accessor for UUID();
  v6 = *(v146 - 8);
  __chkstk_darwin();
  v145 = v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = 0;
  v149 = 0xE000000000000000;
  v8._countAndFlagsBits = 8254;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = v2[1];
  v150[0] = *v2;
  v150[1] = v9;
  v150[2] = v2[2];
  _print_unlocked<A, B>(_:_:)();
  v10 = v148;
  v11 = v149;
  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v16 = swift_allocObject();
    *(v12 + 16) = v15;
    v17 = v12 + 16 * v14;
    *(v17 + 32) = v10;
    *(v17 + 40) = v11;
    v16[2] = v12;
    v18 = (v16 + 2);
    v19 = (*(v3 + 32))();

    v20 = specialized Sequence.compactMap<A>(_:)(v19, v16 + 2, a1, a2 & 1);

    if (!*(v20 + 16))
    {
      if (!*(*v18 + 16))
      {
        __break(1u);
        goto LABEL_100;
      }

      specialized Array.replaceSubrange<A>(_:with:)(1, 1, 0xD00000000000001CLL, 0x80000001004C5880);
    }

    v127 = v16;
    *&v150[0] = v20;
    v126 = v20;

    specialized MutableCollection<>.sort(by:)(v150);
    v125[1] = 0;
    v14 = 0x654D6E6F69746341;
    v130 = *&v150[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore8MenuTypeO_AC06ActionF0CtGMd, &_ss23_ContiguousArrayStorageCy9MusicCore8MenuTypeO_AC06ActionF0CtGMR);
    inited = swift_initStackObject();
    v140 = xmmword_1004F2400;
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = 0;
    v11 = inited + 32;
    v22 = *(v3 + 16);
    v16 = *(v3 + 24);

    v10 = v145;
    UUID.init()();
    v15 = UUID.uuidString.getter();
    v24 = v23;
    v25 = v6[1];
    v144 = v6 + 1;
    v142 = v25;
    v25(v10, v146);
    v141 = type metadata accessor for ActionMenu();
    v26 = swift_allocObject();
    *(v26 + 88) = 0;
    *(v26 + 96) = 0;
    *(v26 + 16) = v15;
    *(v26 + 24) = v24;
    *(v26 + 32) = 0;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    strcpy(v150, "ActionMenu: ");
    BYTE13(v150[0]) = 0;
    HIWORD(v150[0]) = -5120;

    v12 = v150;
    v143 = v22;
    v27._countAndFlagsBits = v22;
    v27._object = v16;
    String.append(_:)(v27);

    v28 = *(&v150[0] + 1);
    *(v26 + 56) = *&v150[0];
    *(v26 + 64) = v28;
    *(v26 + 80) = _swiftEmptyArrayStorage;
    *(v26 + 72) = 1;
    *(inited + 40) = v26;
    v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MusicCore8MenuTypeO_AC06ActionE0CTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    a1 = v130;
    outlined destroy of (MenuType, ActionMenu)(inited + 32);
    v129 = *(a1 + 16);
    if (!v129)
    {
      break;
    }

    v3 = 0;
    v128 = a1 + 32;
    a2 = 56;
    while (1)
    {
      v13 = *(a1 + 16);
      if (v3 >= v13)
      {
        break;
      }

      v29 = (v128 + 56 * v3);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[2];
      v11 = v29[3];
      v10 = v29[4];
      v33 = v29[5];
      v14 = v29[6];
      if (*v29 < 0)
      {
        v34 = *((v30 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        if ((v34 - 1) >= 0xA)
        {
          if (!*((v30 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
          {
            goto LABEL_9;
          }

          if (v34 == 11)
          {
            v12 = 4;
          }

          else
          {
            v12 = 6;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = byte_1004F743A[v30];
      }

      v15 = v6[2];
      v137 = v30;
      v138 = v31;
      v139 = v32;
      v35 = v33;
      outlined copy of ActionMenu.Element(v30, v31, v32, v11, v10, v33, v14);
      v36 = v35;
      v136 = v14;
      if (!v15 || (v15 = v12, v37 = specialized __RawDictionaryStorage.find<A>(_:)(v12), v36 = v35, (v38 & 1) == 0))
      {
        v133 = v3;
        v135 = v10;
        v134 = v12;
        if ((v12 - 1) >= 0xA)
        {
          if (v12)
          {
            v44 = v36;
            v45 = v11;
            v47 = 0;
            if (v12 == 11)
            {
              v46 = 4;
            }

            else
            {
              v46 = 6;
            }

            goto LABEL_24;
          }

          outlined consume of ActionMenu.Element(v137, v138, v139, v11, v10, v36, v14);
          goto LABEL_8;
        }

        v44 = v36;
        v45 = v11;
        v46 = 0;
        v47 = 1;
LABEL_24:
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC7ElementOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC7ElementOGMR);
        v49 = swift_allocObject();
        *(v49 + 16) = v140;
        v50 = v138;
        *(v49 + 32) = v137;
        *(v49 + 40) = v50;
        *(v49 + 48) = v139;
        *(v49 + 56) = v45;
        v51 = v135;
        *(v49 + 64) = v135;
        *(v49 + 72) = v44;
        v52 = v136;
        *(v49 + 80) = v136;

        v131 = v45;
        v53 = v45;
        v14 = v52;
        v132 = v44;
        outlined copy of ActionMenu.Element(v137, v138, v139, v53, v51, v44, v52);
        v54 = v145;
        UUID.init()();
        v55 = UUID.uuidString.getter();
        v57 = v56;
        v142(v54, v146);
        v58 = swift_allocObject();
        *(v58 + 88) = 0;
        *(v58 + 96) = 0;
        *(v58 + 16) = v55;
        *(v58 + 24) = v57;
        v59 = v134;
        *(v58 + 32) = v134;
        *(v58 + 40) = 0;
        *(v58 + 48) = 0;
        strcpy(v150, "ActionMenu: ");
        BYTE13(v150[0]) = 0;
        HIWORD(v150[0]) = -5120;
        v60._countAndFlagsBits = v143;
        v60._object = v16;
        String.append(_:)(v60);

        v61 = *(&v150[0] + 1);
        *(v58 + 56) = *&v150[0];
        *(v58 + 64) = v61;
        *(v58 + 80) = v49;
        *(v58 + 72) = 1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v150[0] = v6;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v59, isUniquelyReferenced_nonNull_native);
        v6 = *&v150[0];
        if (*(*&v150[0] + 16))
        {
          v63 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
          if (v64)
          {
LABEL_40:
            v12 = *(v6[7] + 8 * v63);

            swift_beginAccess();
            v15 = *(v12 + 80);
            v85 = swift_isUniquelyReferenced_nonNull_native();
            *(v12 + 80) = v15;
            a1 = v130;
            v11 = v131;
            if ((v85 & 1) == 0)
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
              *(v12 + 80) = v15;
            }

            v10 = *(v15 + 16);
            v86 = *(v15 + 24);
            if (v10 >= v86 >> 1)
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v10 + 1, 1, v15);
            }

            *(v15 + 16) = v10 + 1;
            a2 = 56;
            v87 = v15 + 56 * v10;
            *(v87 + 32) = v58 | 0x8000000000000000;
            *(v87 + 40) = 0u;
            *(v87 + 56) = 0u;
            *(v87 + 72) = 0u;
            *(v12 + 80) = v15;
            swift_endAccess();

            outlined consume of ActionMenu.Element(v137, v138, v139, v11, v135, v132, v14);

            v3 = v133;
            goto LABEL_9;
          }
        }

        while (2)
        {
          while (2)
          {
            v65 = swift_allocObject();
            *(v65 + 16) = v140;
            *(v65 + 32) = v58 | 0x8000000000000000;
            *(v65 + 40) = 0u;
            *(v65 + 56) = 0u;
            *(v65 + 72) = 0u;

            v66 = v145;
            UUID.init()();
            v67 = UUID.uuidString.getter();
            v69 = v68;
            v142(v66, v146);
            v58 = swift_allocObject();
            *(v58 + 88) = 0;
            *(v58 + 96) = 0;
            *(v58 + 16) = v67;
            *(v58 + 24) = v69;
            *(v58 + 32) = v46;
            *(v58 + 40) = 0;
            *(v58 + 48) = 0;
            strcpy(v150, "ActionMenu: ");
            BYTE13(v150[0]) = 0;
            HIWORD(v150[0]) = -5120;
            v70._countAndFlagsBits = v143;
            v70._object = v16;
            String.append(_:)(v70);

            v71 = *(&v150[0] + 1);
            *(v58 + 56) = *&v150[0];
            *(v58 + 64) = v71;
            *(v58 + 80) = v65;
            *(v58 + 72) = 1;

            v72 = swift_isUniquelyReferenced_nonNull_native();
            *&v150[0] = v6;
            v73 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
            v75 = v6[2];
            v76 = (v74 & 1) == 0;
            v77 = __OFADD__(v75, v76);
            v78 = v75 + v76;
            if (v77)
            {
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              if (v6[2])
              {
                v94 = specialized __RawDictionaryStorage.find<A>(_:)(0);
                if (v95)
                {
                  v11 = *(v6[7] + 8 * v94);
                  v96 = *(v48 + 80);

                  v97 = v145;
                  UUID.init()();
                  v98 = UUID.uuidString.getter();
                  v100 = v99;
                  v142(v97, v146);
                  v101 = swift_allocObject();
                  *(v101 + 88) = 0;
                  *(v101 + 96) = 0;
                  *(v101 + 16) = v98;
                  *(v101 + 24) = v100;
                  *(v101 + 32) = 6;
                  *(v101 + 40) = 0;
                  *(v101 + 48) = 0;
                  strcpy(v150, "ActionMenu: ");
                  BYTE13(v150[0]) = 0;
                  HIWORD(v150[0]) = -5120;

                  v102._countAndFlagsBits = v143;
                  v102._object = v16;
                  String.append(_:)(v102);

                  v103 = *(&v150[0] + 1);
                  *(v101 + 56) = *&v150[0];
                  *(v101 + 64) = v103;
                  *(v101 + 80) = v96;
                  *(v101 + 72) = 1;
                  v20 = v101 | 0x8000000000000000;
                  swift_beginAccess();
                  v18 = *(v11 + 80);
                  v104 = swift_isUniquelyReferenced_nonNull_native();
                  *(v11 + 80) = v18;
                  if (v104)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_101;
                }

                goto LABEL_68;
              }

              goto LABEL_93;
            }

            v79 = v74;
            if (v6[3] < v78)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v78, v72);
              v73 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
              if ((v79 & 1) != (v80 & 1))
              {
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);

                __break(1u);
                JUMPOUT(0x100031BFCLL);
              }

              goto LABEL_31;
            }

            if (v72)
            {
LABEL_31:
              v6 = *&v150[0];
              if (v79)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v81 = v73;
              specialized _NativeDictionary.copy()();
              v73 = v81;
              v6 = *&v150[0];
              if (v79)
              {
LABEL_32:
                *(v6[7] + 8 * v73) = v58;

                if (v47)
                {
                  continue;
                }

LABEL_37:
                if (v6[2])
                {
                  v63 = specialized __RawDictionaryStorage.find<A>(_:)(0);
                  if (v84)
                  {
                    v14 = v136;
                    goto LABEL_40;
                  }
                }

                continue;
              }
            }

            break;
          }

          v6[(v73 >> 6) + 8] |= 1 << v73;
          *(v6[6] + v73) = v46;
          *(v6[7] + 8 * v73) = v58;
          v82 = v6[2];
          v77 = __OFADD__(v82, 1);
          v83 = v82 + 1;
          if (v77)
          {
            goto LABEL_60;
          }

          v6[2] = v83;
          if ((v47 & 1) == 0)
          {
            goto LABEL_37;
          }

          continue;
        }
      }

      v14 = v11;
      v12 = *(v6[7] + 8 * v37);
      swift_beginAccess();
      v15 = *(v12 + 80);

      v39 = swift_isUniquelyReferenced_nonNull_native();
      *(v12 + 80) = v15;
      v11 = v10;
      if ((v39 & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
        *(v12 + 80) = v15;
      }

      v10 = *(v15 + 16);
      v40 = *(v15 + 24);
      v41 = v139;
      v42 = v138;
      if (v10 >= v40 >> 1)
      {
        v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v10 + 1, 1, v15);
        v42 = v138;
        v41 = v139;
        v15 = v88;
      }

      *(v15 + 16) = v10 + 1;
      a2 = 56;
      v43 = (v15 + 56 * v10);
      v43[4] = v137;
      v43[5] = v42;
      v43[6] = v41;
      v43[7] = v14;
      v43[8] = v11;
      v43[9] = v35;
      v43[10] = v136;
      *(v12 + 80) = v15;
      swift_endAccess();

LABEL_8:
      a1 = v130;
LABEL_9:
      if (++v3 == v129)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_88:
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v15, 1, v12);
  }

LABEL_53:

  if (!v6[2])
  {
    goto LABEL_97;
  }

  v89 = specialized __RawDictionaryStorage.find<A>(_:)(12);
  if (v90)
  {
    v48 = *(v6[7] + 8 * v89);
    swift_beginAccess();
    if (*(*(v48 + 80) + 16) <= 2uLL)
    {
      v91 = v6[2];

      if (v91)
      {
        specialized __RawDictionaryStorage.find<A>(_:)(6);
        if ((v92 & 1) == 0)
        {
          goto LABEL_61;
        }

        swift_beginAccess();

        specialized Array.append<A>(contentsOf:)(v93);
        swift_endAccess();
        while (1)
        {

LABEL_68:
          if (!v6[2])
          {
            break;
          }

          v108 = specialized __RawDictionaryStorage.find<A>(_:)(6);
          if ((v109 & 1) == 0)
          {
            break;
          }

          v18 = *(v6[7] + 8 * v108);
          swift_beginAccess();
          v110 = *(v18 + 10);
          v20 = *(v110 + 16);
          if (!v20)
          {
            break;
          }

          v11 = 0;
          v111 = 32;
          while (v11 < *(v110 + 16))
          {
            v113 = *(v110 + v111);
            if (v113 < 0)
            {
              v18 = 0xE800000000000000;
              switch(*((v113 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
              {
                case 1:
                  v18 = 0xEB000000006E6F69;
                  goto LABEL_73;
                case 2:
                  v18 = 0xE300000000000000;
                  goto LABEL_73;
                case 3:
                  v18 = 0xE700000000000000;
                  goto LABEL_73;
                case 6:
                  v18 = 0xEA00000000006E6FLL;
                  goto LABEL_73;
                case 7:
                  v18 = 0xE500000000000000;
                  goto LABEL_73;
                case 8:
                  v18 = 0xE900000000000067;
                  goto LABEL_73;
                case 9:
                  v18 = 0xE90000000000006ELL;
                  goto LABEL_73;
                case 0xA:
                  v18 = 0xEB00000000657669;
                  goto LABEL_73;
                case 0xB:
                  v18 = 0xEC00000074726F53;
                  goto LABEL_73;
                case 0xC:

                  goto LABEL_90;
                default:
LABEL_73:
                  v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v112 & 1) == 0)
                  {
                    goto LABEL_74;
                  }

LABEL_90:

                  if (v6[2])
                  {
                    specialized __RawDictionaryStorage.find<A>(_:)(6);
                    if (v114)
                    {
                      swift_beginAccess();

                      specialized Array.remove(at:)(v11, v150);
                      swift_endAccess();
                      outlined destroy of ActionMenu.Element(v150);
                    }
                  }

                  break;
              }

              goto LABEL_93;
            }

LABEL_74:
            ++v11;
            v111 += 56;
            if (v20 == v11)
            {

              goto LABEL_94;
            }
          }

LABEL_100:
          __break(1u);
LABEL_101:
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
          *(v11 + 80) = v18;
LABEL_64:
          v106 = *(v18 + 2);
          v105 = *(v18 + 3);
          if (v106 >= v105 >> 1)
          {
            v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1, v18);
          }

          *(v18 + 2) = v106 + 1;
          v107 = &v18[56 * v106];
          *(v107 + 4) = v20;
          *(v107 + 40) = 0u;
          *(v107 + 56) = 0u;
          *(v107 + 72) = 0u;
          *(v11 + 80) = v18;
          swift_endAccess();
        }
      }

LABEL_93:
    }
  }

LABEL_94:
  if (v6[2] && (v115 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v116 & 1) != 0))
  {
    v117 = *(v6[7] + 8 * v115);
  }

  else
  {
LABEL_97:
    v118 = v145;
    UUID.init()();
    v119 = UUID.uuidString.getter();
    v121 = v120;
    v142(v118, v146);
    v117 = swift_allocObject();
    *(v117 + 88) = 0;
    *(v117 + 96) = 0;
    *(v117 + 16) = v119;
    *(v117 + 24) = v121;
    *(v117 + 32) = 0;
    *(v117 + 40) = 0;
    *(v117 + 48) = 0;
    strcpy(v147, "ActionMenu: ");
    BYTE5(v147[1]) = 0;
    HIWORD(v147[1]) = -5120;
    v122._countAndFlagsBits = v143;
    v122._object = v16;
    String.append(_:)(v122);

    v123 = v147[1];
    *(v117 + 56) = v147[0];
    *(v117 + 64) = v123;
    *(v117 + 80) = v126;
    *(v117 + 72) = 1;
  }

  return v117;
}

uint64_t ActionMenuBuilder.init(id:debugDescription:actionBuilder:)@<X0>(Swift::String a1@<0:X2, 8:X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  strcpy(v16, "ActionMenu: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (a1._object)
  {
    object = a1._object;
  }

  else
  {

    a1._countAndFlagsBits = a2;
    object = a3;
  }

  v12._countAndFlagsBits = a1._countAndFlagsBits;
  v12._object = object;
  String.append(_:)(v12);

  v14 = v16[0];
  v15 = v16[1];
  *a6 = a2;
  a6[1] = a3;
  a6[2] = v14;
  a6[3] = v15;
  a6[4] = a4;
  a6[5] = a5;
  return result;
}

double closure #1 in ActionMenuBuilder.menu(excluding:includeUnsupported:)@<D0>(void *a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[6];
  v57 = a1[5];
  if (((1 << v6) & 0xF8FFFFD7FFE7FLL) == 0)
  {
    v56 = a1[1];
    v40 = a3;
    if (((1 << v6) & 0x700000000180) != 0)
    {
      v41 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
      v42 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v41);
    }

    else
    {
      v48 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
      v42 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v48);
    }

    a3 = v40;
    v7 = v56;
    if ((v42 & 1) == 0)
    {
      if (one-time initialization token for isInternalInstall != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall != 1)
      {
        goto LABEL_40;
      }

      _StringGuts.grow(_:)(29);

      v49._countAndFlagsBits = ActionType.rawValue.getter(v6);
      String.append(_:)(v49);

      v50._object = 0x80000001004C5980;
      v50._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v50);
      v16 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        *a2 = v16;
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      v20 = v19 + 1;
      if (v19 < v18 >> 1)
      {
        goto LABEL_39;
      }

LABEL_6:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
      *a2 = v16;
      goto LABEL_39;
    }
  }

  if (!specialized Sequence<>.contains(_:)(v6, a3))
  {
    v54 = a2;
    v55 = v7;
    v53 = v8;
    v21 = v9();
    if (v22 == 1)
    {
      v23._countAndFlagsBits = ActionType.rawValue.getter(v6);
      String.append(_:)(v23);

      v24 = *a2;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v24;
      if ((v25 & 1) == 0)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        *a2 = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
        *a2 = v24;
      }

      *(v24 + 2) = v27 + 1;
      v28 = &v24[16 * v27];
      *(v28 + 4) = 0x20939CE22020;
      *(v28 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v55;
      a5[2] = v53;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v57;
      a5[6] = v11;
    }

    else
    {
      v29 = v21;
      v30 = v22;
      if ((a4 & 1) == 0)
      {
        v43._countAndFlagsBits = ActionType.rawValue.getter(v6);
        String.append(_:)(v43);

        v44._countAndFlagsBits = 2108704;
        v44._object = 0xE300000000000000;
        String.append(_:)(v44);
        if (!v30)
        {
          outlined consume of ActionCondition.Result(v29, 0);
          v30 = 0xE700000000000000;
          v29 = 0x6E776F6E6B6E75;
        }

        v45._countAndFlagsBits = v29;
        v45._object = v30;
        String.append(_:)(v45);

        v16 = *v54;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *v54 = v16;
        if ((v46 & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          *v54 = v16;
        }

        v19 = *(v16 + 2);
        v47 = *(v16 + 3);
        v20 = v19 + 1;
        if (v19 >= v47 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v19 + 1, 1, v16);
          *v54 = v16;
        }

        goto LABEL_39;
      }

      _StringGuts.grow(_:)(44);

      v31._countAndFlagsBits = ActionType.rawValue.getter(v6);
      String.append(_:)(v31);

      v32._countAndFlagsBits = 0xD000000000000022;
      v32._object = 0x80000001004C5950;
      String.append(_:)(v32);
      if (!v30)
      {
        outlined consume of ActionCondition.Result(v29, 0);
        v30 = 0xE700000000000000;
        v29 = 0x6E776F6E6B6E75;
      }

      v33._countAndFlagsBits = v29;
      v33._object = v30;
      String.append(_:)(v33);

      v34 = *v54;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      *v54 = v34;
      if ((v35 & 1) == 0)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
        *v54 = v34;
      }

      v37 = *(v34 + 2);
      v36 = *(v34 + 3);
      if (v37 >= v36 >> 1)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v34);
        *v54 = v34;
      }

      *(v34 + 2) = v37 + 1;
      v38 = &v34[16 * v37];
      *(v38 + 4) = 0x20939CE22020;
      *(v38 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v55;
      a5[2] = v8;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v57;
      a5[6] = v11;
    }

    return result;
  }

  _StringGuts.grow(_:)(17);

  v14._countAndFlagsBits = ActionType.rawValue.getter(v6);
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x756C637865202D20;
  v15._object = 0xEB00000000646564;
  String.append(_:)(v15);
  v16 = *a2;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v16;
  if ((v17 & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    *a2 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  v20 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    goto LABEL_6;
  }

LABEL_39:
  *(v16 + 2) = v20;
  v52 = &v16[16 * v19];
  *(v52 + 4) = 544743456;
  *(v52 + 5) = 0xE400000000000000;
LABEL_40:
  *a5 = 0xF000000000000000;
  result = 0.0;
  *(a5 + 1) = 0u;
  *(a5 + 3) = 0u;
  *(a5 + 5) = 0u;
  return result;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v17 = swift_allocObject();
  *(v17 + 88) = 0;
  *(v17 + 96) = 0;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v21, "ActionMenu: ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v18._countAndFlagsBits = a6;
  v18._object = a2;
  String.append(_:)(v18);

  v19 = v21[1];
  *(v17 + 56) = v21[0];
  *(v17 + 64) = v19;
  *(v17 + 80) = a8;
  *(v17 + 72) = a9 & 1;
  return v17;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 48);
    v13 = *(v9 + 16);
    v12 = *(v9 + 32);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v12;
    *(a2 + 48) = v11;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    outlined init with take of CloudLibrary.StatusObserver.InternalObserver(&v5[2 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for NSUserDefaults._Observer.HandlerAssociation(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = outlined init with take of NSUserDefaults._Observer.HandlerAssociation(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
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

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
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
    result = memmove((v3 + 16 * a1 + 32), (v3 + 16 * a1 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(v5 + a1 + 32);
    memmove((v5 + a1 + 32), (v5 + a1 + 33), v7 - 1 - a1);
    *(v5 + 16) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance ActionMenuBuilder@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, Swift::String a6, uint64_t a7, char a8)
{
  v9 = v8;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  strcpy(v16, "ActionMenu: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (a6._object)
  {
    object = a6._object;
  }

  else
  {
    object = a2;

    a6._countAndFlagsBits = a1;
  }

  v13._countAndFlagsBits = a6._countAndFlagsBits;
  v13._object = object;
  String.append(_:)(v13);

  v14 = v16[1];
  *(v9 + 56) = v16[0];
  *(v9 + 64) = v14;
  *(v9 + 80) = a7;
  *(v9 + 72) = a8 & 1;
  return v9;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v22, "ActionMenu: ");
  BYTE5(v22[1]) = 0;
  HIWORD(v22[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v18._countAndFlagsBits = a6;
  v18._object = a2;
  String.append(_:)(v18);

  v19 = v22[1];
  *(v17 + 56) = v22[0];
  *(v17 + 64) = v19;
  *(v17 + 72) = a8 & 1;
  *(v17 + 96) = a10;
  *(v17 + 80) = _swiftEmptyArrayStorage;
  *(v17 + 88) = a9;
  return v17;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, Swift::String a6, char a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  strcpy(v19, "ActionMenu: ");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  if (a6._object)
  {
    object = a6._object;
  }

  else
  {
    object = a2;

    a6._countAndFlagsBits = a1;
  }

  v14._countAndFlagsBits = a6._countAndFlagsBits;
  v14._object = object;
  String.append(_:)(v14);

  v15 = v19[1];
  *(v10 + 56) = v19[0];
  *(v10 + 64) = v15;
  *(v10 + 72) = a7 & 1;
  v16 = *(v10 + 88);
  v17 = *(v10 + 96);
  *(v10 + 88) = a8;
  *(v10 + 96) = a9;

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v16, v17);

  *(v10 + 80) = _swiftEmptyArrayStorage;
  return v10;
}

uint64_t MetricsEvent.Dialog.message.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MetricsEvent.Dialog.messageCode.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

char *ActionMenu.elements(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v52 = 0;
  v53 = 0xE000000000000000;
  v4._countAndFlagsBits = 8254;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v61 = v2;
  type metadata accessor for ActionMenu();
  _print_unlocked<A, B>(_:_:)();
  v5 = 0;
  v6 = 0xE000000000000000;
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v10 = (v9 + 1);
  if (v9 >= v8 >> 1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v11 = swift_allocObject();
    *(v7 + 2) = v10;
    v12 = &v7[16 * v9];
    *(v12 + 4) = v5;
    *(v12 + 5) = v6;
    *(v11 + 16) = v7;
    v48 = (v11 + 16);
    v13 = *(v3 + 88);
    if (v13)
    {
      v14 = *(v3 + 96);

      v16 = v13(v15);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v13, v14);
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
    }

    swift_beginAccess();
    v44 = v3;
    v52 = v16;

    specialized Array.append<A>(contentsOf:)(v17);
    v9 = v52;
    v60 = &_swiftEmptySetSingleton;
    v18 = *(v52 + 2);

    v47 = v18;
    if (!v18)
    {
      break;
    }

    v19 = 0;
    v5 = 0;
    v7 = (v9 + 40);
    v10 = _swiftEmptyArrayStorage;
    v46 = v9;
    while (1)
    {
      v8 = *(v9 + 16);
      if (v19 >= v8)
      {
        break;
      }

      v51 = v19;
      v21 = *(v7 - 1);
      v20 = *v7;
      v6 = *(v7 + 1);
      v3 = *(v7 + 2);
      v22 = *(v7 + 3);
      v23 = *(v7 + 4);
      v24 = *(v7 + 5);
      v52 = v21;
      v53 = v20;
      v54 = v6;
      v55 = v3;
      v56 = v22;
      v57 = v23;
      v58 = v24;
      outlined copy of ActionMenu.Element(v21, v20, v6, v3, v22, v23, v24);
      if (closure #1 in ActionMenu.elements(excluding:includeUnsupported:)(&v52, v48, a1, a2 & 1, &v60))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v10;
        v45 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1);
          v10 = v59;
        }

        v26 = v6;
        v27 = v20;
        v28 = v3;
        v29 = v22;
        v30 = v23;
        v31 = v24;
        v32 = v21;
        v34 = *(v10 + 2);
        v33 = *(v10 + 3);
        v35 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
          v35 = v34 + 1;
          v32 = v21;
          v31 = v24;
          v30 = v23;
          v29 = v22;
          v28 = v3;
          v27 = v20;
          v26 = v6;
          v10 = v59;
        }

        *(v10 + 2) = v35;
        v36 = &v10[56 * v34];
        *(v36 + 4) = v32;
        *(v36 + 5) = v27;
        *(v36 + 6) = v26;
        *(v36 + 7) = v28;
        *(v36 + 8) = v29;
        *(v36 + 9) = v30;
        *(v36 + 10) = v31;
        v5 = v45;
      }

      else
      {
        outlined consume of ActionMenu.Element(v21, v20, v6, v3, v22, v23, v24);
      }

      v19 = v51 + 1;
      v7 += 56;
      v9 = v46;
      if (v47 == v51 + 1)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v10, 1, v7);
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_17:
  v37 = v10;

  if (a2)
  {
    v39 = v10;
    v40 = v48;
    v41 = specialized _ArrayProtocol.filter(_:)(v39, v48, &v60);

    v37 = v41;
    v42 = v44;
    if (*(v37 + 2))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v42 = v44;
    v40 = v48;
    if (*(v37 + 2))
    {
      goto LABEL_23;
    }
  }

  if (!*(*v40 + 2))
  {
    __break(1u);
    return result;
  }

  specialized Array.replaceSubrange<A>(_:with:)(1, 1, 0xD00000000000001CLL, 0x80000001004C5880);
LABEL_23:
  if (*(v42 + 72) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew()(v37);
    }

    v43 = *(v37 + 2);
    v52 = v37 + 32;
    v53 = v43;
    specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(&v52, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  }

  return v37;
}

uint64_t closure #1 in ActionMenu.elements(excluding:includeUnsupported:)(uint64_t *a1, char **a2, uint64_t a3, char a4, uint64_t *a5)
{
  v5 = *a1;
  if (*a1 < 0)
  {
    return 1;
  }

  v6 = a1[3];
  if (((1 << v5) & 0xF8FFFFD7FFE7FLL) != 0)
  {
LABEL_3:
    v10 = specialized Sequence<>.contains(_:)(v5, a3);
    if (v10)
    {
      _StringGuts.grow(_:)(17);

      v11._countAndFlagsBits = ActionType.rawValue.getter(v5);
      String.append(_:)(v11);

      v12 = 0x756C637865202D20;
      v13 = 0xEB00000000646564;
      goto LABEL_5;
    }

    v22 = v6(v10);
    if (v23 == 1)
    {
      if (a4)
      {
        v24 = ActionType.mutuallyExclusiveActions.getter(v5);
        if (!v24)
        {
          v24 = &_swiftEmptySetSingleton;
        }

        specialized Set.formUnion<A>(_:)(v24);
        specialized Set._Variant.remove(_:)(v5);
      }

      v25._countAndFlagsBits = ActionType.rawValue.getter(v5);
      String.append(_:)(v25);

      v14 = 0x20939CE22020;
      v15 = 0xA600000000000000;
      v16 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        *a2 = v16;
      }

      v19 = *(v16 + 2);
      v27 = *(v16 + 3);
      v20 = v19 + 1;
      if (v19 < v27 >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v28 = v23;
      v29 = v22;
      if (a4 & 1) == 0 || (v30 = *a5, , v31 = specialized Set.contains(_:)(v5, v30), , (v31))
      {
        v32._countAndFlagsBits = ActionType.rawValue.getter(v5);
        String.append(_:)(v32);

        v33._countAndFlagsBits = 2108704;
        v33._object = 0xE300000000000000;
        String.append(_:)(v33);
        if (v28)
        {
          v34 = v29;
        }

        else
        {
          outlined consume of ActionCondition.Result(v29, 0);
          v28 = 0xE700000000000000;
          v34 = 0x6E776F6E6B6E75;
        }

        v38 = v28;
        String.append(_:)(*&v34);

        v14 = 544743456;
        v15 = 0xE400000000000000;
        v16 = *a2;
        v39 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v16;
        if ((v39 & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          *a2 = v16;
        }

        v19 = *(v16 + 2);
        v18 = *(v16 + 3);
        v20 = v19 + 1;
        if (v19 < v18 >> 1)
        {
          result = 0;
          goto LABEL_31;
        }

LABEL_47:
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v20, 1, v16);
        result = 0;
        goto LABEL_48;
      }

      v41 = ActionType.mutuallyExclusiveActions.getter(v5);
      if (!v41)
      {
        v41 = &_swiftEmptySetSingleton;
      }

      specialized Set.formUnion<A>(_:)(v41);
      _StringGuts.grow(_:)(44);

      v42._countAndFlagsBits = ActionType.rawValue.getter(v5);
      String.append(_:)(v42);

      v43._countAndFlagsBits = 0xD000000000000022;
      v43._object = 0x80000001004C5950;
      String.append(_:)(v43);
      if (v28)
      {
        v44 = v29;
      }

      else
      {
        outlined consume of ActionCondition.Result(v29, 0);
        v28 = 0xE700000000000000;
        v44 = 0x6E776F6E6B6E75;
      }

      v48 = v28;
      String.append(_:)(*&v44);

      v14 = 0x20939CE22020;
      v15 = 0xA600000000000000;
      v16 = *a2;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v16;
      if ((v49 & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        *a2 = v16;
      }

      v19 = *(v16 + 2);
      v27 = *(v16 + 3);
      v20 = v19 + 1;
      if (v19 < v27 >> 1)
      {
LABEL_18:
        result = 1;
        goto LABEL_31;
      }
    }

    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v20, 1, v16);
    result = 1;
LABEL_48:
    *a2 = v16;
    goto LABEL_31;
  }

  v35 = a3;
  if (((1 << v5) & 0x700000000180) != 0)
  {
    v36 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
    v37 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v36);
    a3 = v35;
    if (v37)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v45 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
    v46 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v45);
    a3 = v35;
    if (v46)
    {
      goto LABEL_3;
    }
  }

  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    _StringGuts.grow(_:)(29);

    v47._countAndFlagsBits = ActionType.rawValue.getter(v5);
    String.append(_:)(v47);

    v13 = 0x80000001004C5980;
    v12 = 0xD000000000000017;
LABEL_5:
    String.append(_:)(*&v12);
    v14 = 544743456;
    v15 = 0xE400000000000000;
    v16 = *a2;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v16;
    if ((v17 & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      *a2 = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    v20 = v19 + 1;
    if (v19 < v18 >> 1)
    {
      result = 0;
LABEL_31:
      *(v16 + 2) = v20;
      v40 = &v16[16 * v19];
      *(v40 + 4) = v14;
      *(v40 + 5) = v15;
      return result;
    }

    goto LABEL_47;
  }

  return 0;
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = specialized Set._Variant.insert(_:)(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t closure #3 in ActionMenuBuilder.menu(excluding:includeUnsupported:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);

  if (!v7)
  {
  }

  v10 = 0;
  v24 = (v3 + 16);
  v11 = (v3 + 8);
  v12 = (v6 + 40);
  *&v9 = 136446210;
  v21 = v9;
  v22 = v11;
  v23 = v7;
  while (v10 < *(v6 + 16))
  {
    v13 = *v12;
    v25 = *(v12 - 1);
    if (one-time initialization token for actionMenu != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v2, static Logger.actionMenu);
    (*v24)(v5, v14, v2);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = v2;
      v19 = v6;
      v20 = swift_slowAlloc();
      v26 = v20;
      *v17 = v21;
      *(v17 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v25, v13, &v26);
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v6 = v19;
      v2 = v18;
      v7 = v23;

      v11 = v22;
    }

    result = (*v11)(v5, v2);
    ++v10;
    v12 += 2;
    if (v7 == v10)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t ActionMenu.append(_:)(__int128 *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 80) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + 80) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  v7 = &v3[56 * v6];
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  *(v7 + 10) = *(a1 + 6);
  *(v7 + 3) = v9;
  *(v7 + 4) = v10;
  *(v7 + 2) = v8;
  *(v1 + 80) = v3;
  swift_endAccess();
  return outlined init with copy of ActionMenu.Element(a1, v12);
}

Swift::Void __swiftcall ActionMenu.append(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v1);
  swift_endAccess();
}

void *ActionMenu.deinit()
{

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 88), *(v0 + 96));
  return v0;
}

uint64_t ActionMenu.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Identifiable.id.getter in conformance ActionMenu@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ActionMenu()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t ActionMenu.Item.menuItemConfiguring.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ActionMenu.Item.execute.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t (*ActionMenuItemImage.init(systemName:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  return partial apply for closure #1 in ActionMenuItemImage.init(systemName:);
}

uint64_t closure #1 in ActionMenuItemImage.init(systemName:)(uint64_t a1, uint64_t a2)
{

  return Image.init(systemName:)();
}

uint64_t (*ActionMenuItemImage.init(uiImage:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return partial apply for closure #1 in ActionMenuItemImage.init(uiImage:);
}

uint64_t specialized closure #1 in ActionMenuItemImage.init(uiImage:)()
{
  return specialized closure #1 in ActionMenuItemImage.init(uiImage:)();
}

{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    return Image.init(uiImage:)();
  }

  else
  {
    return 0;
  }
}

{
  return specialized closure #1 in ActionMenuItemImage.init(uiImage:)();
}

{
  return specialized closure #1 in ActionMenuItemImage.init(uiImage:)();
}

{
  return specialized closure #1 in ActionMenuItemImage.init(uiImage:)();
}

{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  if (v1)
  {
    return Image.init(uiImage:)();
  }

  else
  {
    return 0;
  }
}

uint64_t closure #1 in ActionMenuItemImage.init(internalSystemName:)(uint64_t a1, uint64_t a2)
{

  return Image.init(_internalSystemName:)();
}

id closure #2 in ActionMenuItemImage.init(systemName:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() *a3];

  return v5;
}

Swift::Int LaunchURL.Resolver.PerformOption.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ActionMenu(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t one-time initialization function for actionMenu()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.actionMenu);
  __swift_project_value_buffer(v0, static Logger.actionMenu);
  return Logger.init(subsystem:category:)();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  Hasher.init(_seed:)();
  MenuType.rawValue.getter(a1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for UIView, UIView_ptr);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for MPCPlayerPath, MPCPlayerPath_ptr);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  Hasher.init(_seed:)();
  PlaylistCovers.Cover.Representation.hash(into:)(v4);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = static Hasher._hash(seed:_:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x6C6576654C706F74;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x7463416B63697571;
          v7 = 0xEB000000006E6F69;
          break;
        case 2:
          v7 = 0xE300000000000000;
          v8 = 7368564;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x7972617262696CLL;
          break;
        case 4:
          v8 = 0x7473696C79616C70;
          break;
        case 5:
          v8 = 0x6B63616279616C70;
          break;
        case 6:
          v8 = 0x697461676976616ELL;
          v7 = 0xEA00000000006E6FLL;
          break;
        case 7:
          v7 = 0xE500000000000000;
          v8 = 0x6574736174;
          break;
        case 8:
          v8 = 0x6E6974726F706572;
          v7 = 0xE900000000000067;
          break;
        case 9:
          v7 = 0xE90000000000006ELL;
          v8 = 0x6F697463416E6970;
          break;
        case 0xA:
          v8 = 0x7463757274736564;
          v7 = 0xEB00000000657669;
          break;
        case 0xB:
          v8 = 0x7473696C79616C70;
          v7 = 0xEC00000074726F53;
          break;
        case 0xC:
          v7 = 0xE400000000000000;
          v8 = 1867804519;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x6C6576654C706F74;
      switch(a1)
      {
        case 1:
          v9 = 0xEB000000006E6F69;
          if (v8 == 0x7463416B63697571)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 2:
          v9 = 0xE300000000000000;
          if (v8 != 7368564)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 3:
          v9 = 0xE700000000000000;
          if (v8 != 0x7972617262696CLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 4:
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 5:
          if (v8 != 0x6B63616279616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 6:
          v9 = 0xEA00000000006E6FLL;
          if (v8 != 0x697461676976616ELL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 7:
          v9 = 0xE500000000000000;
          if (v8 != 0x6574736174)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 8:
          v9 = 0xE900000000000067;
          if (v8 != 0x6E6974726F706572)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 9:
          v9 = 0xE90000000000006ELL;
          if (v8 != 0x6F697463416E6970)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 10:
          v10 = 0x7463757274736564;
          v9 = 0xEB00000000657669;
          goto LABEL_38;
        case 11:
          v9 = 0xEC00000074726F53;
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 12:
          v9 = 0xE400000000000000;
          if (v8 != 1867804519)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        default:
LABEL_38:
          if (v8 != v10)
          {
            goto LABEL_40;
          }

LABEL_39:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_40:
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = *(*(v2 + 48) + v4);
      v6 = v5 == 1 ? 0xD000000000000014 : 0xD000000000000015;
      v7 = v5 == 1 ? "cannedHeightAnimation" : "cannedWidthAnimation";
      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000015;
      v9 = *(*(v2 + 48) + v4) ? v7 : "ntroller1XCroppedImage";
      if (a1)
      {
        v10 = a1 == 1 ? 0xD000000000000014 : 0xD000000000000015;
        v11 = a1 == 1 ? "cannedHeightAnimation" : "cannedWidthAnimation";
      }

      else
      {
        v10 = 0xD000000000000015;
        v11 = "ntroller1XCroppedImage";
      }

      if (v8 == v10 && (v9 | 0x8000000000000000) == (v11 | 0x8000000000000000))
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      outlined destroy of AnyHashable(v8);
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

{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(v2 + 48) + 56 * v4;
      v8 = *(v6 + 16);
      v7 = *(v6 + 32);
      v9 = *v6;
      v14 = *(v6 + 48);
      v13[1] = v8;
      v13[2] = v7;
      v13[0] = v9;
      outlined init with copy of PlaylistCovers.Cover.Representation(v13, v12);
      v10 = static PlaylistCovers.Cover.Representation.== infix(_:_:)();
      outlined destroy of PlaylistCovers.Cover.Representation(v13);
      if (v10)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    type metadata accessor for UIAction(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MusicCore18DeviceCapabilitiesO17DiskUsageCategoryOs5Int64VGMd, &_ss18_DictionaryStorageCy9MusicCore18DeviceCapabilitiesO17DiskUsageCategoryOs5Int64VGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
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
      *(*(v7 + 48) + v15) = v20;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySSypGGMd, &_ss18_DictionaryStorageCySSSDySSypGGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo30MPCPlayerRequestTracklistRangeaSiADSH9MusicCoreyHCg_GMd, &_ss18_DictionaryStorageCySo30MPCPlayerRequestTracklistRangeaSiADSH9MusicCoreyHCg_GMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
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
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v22;
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
        goto LABEL_33;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo13MPCPlayerPathCSo24OS_dispatch_source_timer_pGMd, &_ss18_DictionaryStorageCySo13MPCPlayerPathCSo24OS_dispatch_source_timer_pGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MusicCore14PlaylistCoversO10ExpressionOAE5CoverV14RepresentationVGMd, &_ss18_DictionaryStorageCy9MusicCore14PlaylistCoversO10ExpressionOAE5CoverV14RepresentationVGMR);
  v46 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v43 = v3;
    v44 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v45 = v5;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_15:
      v21 = v17 | (v8 << 6);
      v49 = *(*(v5 + 48) + v21);
      v22 = *(v5 + 56) + 56 * v21;
      v48 = *v22;
      v24 = *(v22 + 8);
      v23 = *(v22 + 16);
      v26 = *(v22 + 24);
      v25 = *(v22 + 32);
      v27 = *(v22 + 40);
      v28 = *(v22 + 48);
      if ((v46 & 1) == 0)
      {
        v29 = v24;
        v30 = v23;
        v31 = v26;
        v32 = v25;
        v33 = v27;
        v34 = v28;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v49 + 1);
      result = Hasher._finalize()();
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v13 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v15 = v28;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v13 + 8 * v37);
          if (v41 != -1)
          {
            v14 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v36) & ~*(v13 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v15 = v28;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v49;
      v16 = *(v7 + 56) + 56 * v14;
      *v16 = v48;
      *(v16 + 8) = v24;
      *(v16 + 16) = v23;
      *(v16 + 24) = v26;
      *(v16 + 32) = v25;
      *(v16 + 40) = v27;
      *(v16 + 48) = v15;
      ++*(v7 + 16);
      v5 = v45;
      v11 = v47;
    }

    v18 = v8;
    result = v44;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v20 = v44[v8];
      ++v18;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v46)
    {
      v42 = 1 << *(v5 + 32);
      if (v42 >= 64)
      {
        bzero(v44, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v44 = -1 << v42;
      }

      *(v5 + 16) = 0;
    }

    v3 = v43;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v45 = type metadata accessor for SocialProfile();
  v5 = *(v45 - 8);
  __chkstk_darwin();
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS16MusicKitInternal13SocialProfileVGMd, &_ss18_DictionaryStorageCySS16MusicKitInternal13SocialProfileVGMR);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MusicCore8MenuTypeOAC06ActionE0CGMd, &_ss18_DictionaryStorageCy9MusicCore8MenuTypeOAC06ActionE0CGMR);
  v32 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_33:

    goto LABEL_34;
  }

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
  v14 = v6 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v23 = v20 | (v8 << 6);
    v24 = *(*(v5 + 48) + v23);
    v25 = *(*(v5 + 56) + 8 * v23);
    if ((v32 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();

    v15 = Hasher._finalize()();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v27 && (v26 & 1) != 0)
        {
          goto LABEL_36;
        }

        v28 = v18 == v27;
        if (v18 == v27)
        {
          v18 = 0;
        }

        v26 |= v28;
        v29 = *(v14 + 8 * v18);
      }

      while (v29 == -1);
      v19 = __clz(__rbit64(~v29)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v7 + 48) + v19) = v24;
    *(*(v7 + 56) + 8 * v19) = v25;
    ++*(v7 + 16);
  }

  v21 = v8;
  while (1)
  {
    v8 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      JUMPOUT(0x100035384);
    }

    if (v8 >= v13)
    {
      break;
    }

    v22 = v9[v8];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v12 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  if (v32)
  {
    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  v3 = v2;
LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        outlined init with take of Any((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        outlined init with copy of AnyHashable(v23, &v36);
        outlined init with copy of Any(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = outlined init with take of Any(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo22UIViewPropertyAnimatorCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo22UIViewPropertyAnimatorCGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      }

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo6UIViewCypGMd, &_ss18_DictionaryStorageCySo6UIViewCypGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        outlined init with take of Any(v21, v32);
      }

      else
      {
        outlined init with copy of Any(v21, v32);
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = outlined init with take of Any(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
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

{
  v3 = v2;
  v4 = a2;
  v41 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  __chkstk_darwin();
  v46 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MusicCore24PushNotificationObserverC17RegisteredHandlerVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MusicCore24PushNotificationObserverC17RegisteredHandlerVGMR);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v37 = v2;
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
    v38 = (v7 + 16);
    v39 = v7;
    v43 = (v7 + 32);
    v18 = result + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v44 = *(v7 + 72);
      v25 = v24 + v44 * v23;
      if (v42)
      {
        (*v43)(v45, v25, v6);
        v26 = *(v9 + 56);
        v27 = *(v41 + 72);
        outlined init with take of PushNotificationObserver.RegisteredHandler(v26 + v27 * v23, v46);
      }

      else
      {
        (*v38)(v45, v25, v6);
        v28 = *(v9 + 56);
        v27 = *(v41 + 72);
        outlined init with copy of PushNotificationObserver.RegisteredHandler(v28 + v27 * v23, v46);
      }

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v43)((*(v11 + 48) + v44 * v19), v45, v6);
      result = outlined init with take of PushNotificationObserver.RegisteredHandler(v46, *(v11 + 56) + v27 * v19);
      ++*(v11 + 16);
      v7 = v39;
      v9 = v40;
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

    if ((v42 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd_0, &_ss18_DictionaryStorageCySSypGMR_0);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
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

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

{
  v3 = v2;
  v4 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GMd, &_sScS12ContinuationVySaySfG_GMR);
  v5 = *(v52 - 8);
  __chkstk_darwin();
  v51 = &v40 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVScS12ContinuationVySaySfG_GGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVScS12ContinuationVySaySfG_GGMR);
  v47 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}