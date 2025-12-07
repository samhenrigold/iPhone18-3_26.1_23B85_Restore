uint64_t AnimationLibraryComponent.AnimationCollection.init(dictionary:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = 0;
  *&v18 = 0;
  *(&v18 + 1) = MEMORY[0x1E69E7CC8];
  v6 = result + 64;
  v5 = *(result + 64);
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v5) != 0)
  {
    do
    {
      v11 = v4;
LABEL_9:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = v12 | (v11 << 6);
      v14 = (*(v2 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(v2 + 56) + 8 * v13);

      AnimationLibraryDefinition.addResource(_:_:)(v15, v16, v17);
    }

    while (v9);
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      *a2 = v18;
      *(a2 + 16) = xmmword_1C18A4F10;
      *(a2 + 32) = 0;
      return result;
    }

    v9 = *(v6 + 8 * v11);
    ++v4;
    if (v9)
    {
      v4 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double AnimationLibraryComponent.init()@<D0>(uint64_t a1@<X8>)
{
  specialized AnimationLibraryDefinition.init(_:)(MEMORY[0x1E69E7CC0], v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void AnimationLibraryComponent.defaultKey.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of String??(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void (*AnimationLibraryComponent.defaultKey.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v4[3] = v7;
  v8 = v1[3];
  v4[4] = v8;
  *v4 = specialized AnimationLibraryDefinition.defaultResourceKey.getter(v5, v6, v7, v8);
  v4[1] = v9;
  return AnimationLibraryComponent.defaultKey.modify;
}

void AnimationLibraryComponent.defaultKey.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[2];
  if (a2)
  {

    outlined consume of String??(v6, v5);
    *(v7 + 16) = v4;
    *(v7 + 24) = v3;
  }

  else
  {
    outlined consume of String??((*a1)[3], v5);
    *(v7 + 16) = v4;
    *(v7 + 24) = v3;
  }

  free(v2);
}

void *static AnimationLibraryComponent.__fromCore(_:)@<X0>(uint64_t a2@<X8>)
{
  AnimationLibraryAsset = REAnimationLibraryComponentGetAnimationLibraryAsset();
  if (AnimationLibraryAsset)
  {
    v4 = AnimationLibraryAsset;
    type metadata accessor for AnimationLibraryResource();
    v5 = swift_allocObject();
    v5[4] = 0;
    v5[2] = v4;
    RERetain();
    EntryCount = REAnimationLibraryAssetGetEntryCount();
    result = _sSa9repeating5countSayxGx_SitcfC10RealityKit17AnimationResourceCSg_Tt1g5Tf4gn_n(0, EntryCount);
    v5[3] = result;
    v8 = xmmword_1C1887610;
    v9 = 0uLL;
  }

  else
  {
    result = specialized AnimationLibraryDefinition.init(_:)(MEMORY[0x1E69E7CC0], &v10);
    v5 = v10;
    v9 = v11;
    v8 = v12;
  }

  *a2 = v5;
  *(a2 + 8) = v9;
  *(a2 + 24) = v8;
  return result;
}

double AnimationLibraryComponent.animations.getter@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;

  outlined copy of String??(v4, v5);

  return result;
}

__n128 AnimationLibraryComponent.animations.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  outlined consume of String??(v4, v5);

  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  *(v1 + 32) = v3;
  return result;
}

uint64_t AnimationLibraryComponent.AnimationCollection.count.getter()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = v0[1];
    if (!v2)
    {
      return 0;
    }
  }

  return *(v2 + 16);
}

BOOL AnimationLibraryComponent.AnimationCollection.isEmpty.getter()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = v0[1];
    if (!v2)
    {
      return 1;
    }
  }

  return *(v2 + 16) == 0;
}

void AnimationLibraryComponent.AnimationCollection.startIndex.getter(uint64_t a1@<X8>)
{
  if (*v1)
  {

    v3 = AnimationLibraryResource.keyedResources.getter();
    v4 = _HashTable.startBucket.getter();
  }

  else
  {
    if (v1[1])
    {
      v3 = v1[1];
    }

    else
    {
      v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v4 = _HashTable.startBucket.getter();
  }

  v5 = *(v3 + 36);

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
}

void AnimationLibraryComponent.AnimationCollection.endIndex.getter(uint64_t a1@<X8>)
{
  if (*v1)
  {

    v3 = AnimationLibraryResource.keyedResources.getter();

    v4 = *(v3 + 32);
    v5 = *(v3 + 9);
  }

  else
  {
    if (v1[1])
    {
      v6 = v1[1];
    }

    else
    {
      v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v4 = *(v6 + 32);
    v5 = *(v6 + 36);
  }

  *a1 = 1 << v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
}

void AnimationLibraryComponent.AnimationCollection.makeIterator()(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  if (v3)
  {
    goto LABEL_4;
  }

  if (*v1)
  {
    v3 = AnimationLibraryResource.keyedResources.getter();
LABEL_4:

    goto LABEL_5;
  }

  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_5:
  outlined consume of String??(v4, v5);

  v6 = -1 << *(v3 + 32);
  v7 = ~v6;
  v8 = *(v3 + 64);
  v9 = -v6;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  *a1 = v3;
  a1[1] = v3 + 64;
  a1[2] = v7;
  a1[3] = 0;
  a1[4] = v10 & v8;
}

uint64_t (*AnimationLibraryComponent.AnimationCollection.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = AnimationLibraryComponent.AnimationCollection.subscript.getter(a2, a3);
  return AnimationLibraryComponent.AnimationCollection.subscript.modify;
}

double AnimationLibraryComponent.AnimationCollection.subscript.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v10 = *v2;
  v9 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v13 = v2[4];
  *(a2 + 48) = v10;
  *(a2 + 56) = v9;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;

  outlined copy of String??(v11, v12);

  outlined copy of [A : B].Index._Variant<A, B>(v3, v4, v5);

  return outlined copy of [A : B].Index._Variant<A, B>(v6, v7, v8);
}

void AnimationLibraryComponent.AnimationCollection.index(after:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  if (v2[1])
  {
    v7 = v2[1];
  }

  else
  {
    if (*v2)
    {
      v8 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v7 = v8;
  }

  v9 = specialized _NativeDictionary.index(after:)(v4, v5, v6, v7);
  v11 = v10;
  v13 = v12;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
}

uint64_t AnimationLibraryComponent.AnimationCollection.formIndex(after:)(uint64_t a1)
{
  if (v1[1])
  {
    v3 = v1[1];
  }

  else
  {
    if (*v1)
    {
      v4 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v3 = v4;
  }

  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);

  v8 = specialized _NativeDictionary.index(after:)(v5, v6, v7, v3);
  v10 = v9;
  v12 = v11;

  result = outlined consume of [String : AudioResource].Index._Variant(v5, v6, v7);
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  return result;
}

void *AnimationLibraryComponent.AnimationCollection.subscript.getter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v1[1])
  {
    v5 = v1[1];
  }

  else
  {
    if (*v1)
    {
      v6 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v5 = v6;
  }

  v7 = specialized Dictionary.subscript.getter(&v9, v2, v3, v4, v5);

  return v7;
}

uint64_t AnimationLibraryComponent.AnimationCollection.Iterator.next()(__n128 a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v5;
  if (v6)
  {
LABEL_9:
    v12 = (v6 - 1) & v6;
    v16 = *(*(v2 + 48) + 16 * (__clz(__rbit64(v6)) | (v7 << 6)));

    v13 = v7;
    v14 = v12;
    v10 = v13;
LABEL_10:
    outlined copy of [A : B].Iterator._Variant<A, B>();
    outlined consume of [String : AnimationResource].Iterator._Variant();
    *v1 = v2;
    v1[1] = v3;
    v1[2] = v4;
    v1[3] = v10;
    v1[4] = v14;
    return v16;
  }

  else
  {
    v8 = (v4 + 64) >> 6;
    if (v8 <= v5 + 1)
    {
      v9 = v5 + 1;
    }

    else
    {
      v9 = (v4 + 64) >> 6;
    }

    v10 = v9 - 1;
    v11 = v1[3];
    while (1)
    {
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v7 >= v8)
      {
        v14 = 0;
        v16 = 0;
        goto LABEL_10;
      }

      v6 = *(v3 + 8 * v7);
      ++v11;
      if (v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance AnimationLibraryComponent.AnimationCollection.Iterator@<X0>(uint64_t *a1@<X8>, __n128 a2@<Q0>)
{
  result = AnimationLibraryComponent.AnimationCollection.Iterator.next()(a2);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

BOOL static AnimationLibraryComponent.AnimationCollection.Index.< infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result < *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL static AnimationLibraryComponent.AnimationCollection.Index.== infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result == *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AnimationLibraryComponent.AnimationCollection.Index.hash(into:)(uint64_t a1)
{
  type metadata accessor for AnimationResource();

  return Dictionary.Index.hash(into:)();
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance AnimationLibraryComponent.AnimationCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result < *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance AnimationLibraryComponent.AnimationCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0 && (*(result + 16) & 1) == 0)
  {
    if (*(a2 + 8) == *(result + 8))
    {
      return *a2 >= *result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance AnimationLibraryComponent.AnimationCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result >= *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance AnimationLibraryComponent.AnimationCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0 && (*(result + 16) & 1) == 0)
  {
    if (*(a2 + 8) == *(result + 8))
    {
      return *a2 < *result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnimationLibraryComponent.AnimationCollection.Index(uint64_t a1)
{
  type metadata accessor for AnimationResource();

  return Dictionary.Index.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnimationLibraryComponent.AnimationCollection.Index()
{
  Hasher.init(_seed:)();
  type metadata accessor for AnimationResource();
  Dictionary.Index.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AnimationLibraryComponent.AnimationCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result == *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance AnimationLibraryComponent.AnimationCollection@<X0>(uint64_t (*a1)(void, void)@<X2>, uint64_t a2@<X8>)
{
  result = a1(*v2, v2[1]);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance AnimationLibraryComponent.AnimationCollection(void *a1, uint64_t a2))(uint64_t a1)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v2[1])
  {
    v7 = v2[1];
  }

  else
  {
    if (*v2)
    {
      v8 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v7 = v8;
  }

  v9 = specialized Dictionary.subscript.getter(a1 + 2, v4, v5, v6, v7);
  v11 = v10;

  *a1 = v9;
  a1[1] = v11;
  return protocol witness for Collection.subscript.read in conformance AnimationLibraryComponent.AnimationCollection;
}

uint64_t protocol witness for Collection.subscript.read in conformance AnimationLibraryComponent.AnimationCollection(uint64_t a1)
{
}

double protocol witness for Collection.subscript.getter in conformance AnimationLibraryComponent.AnimationCollection@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v10 = *v2;
  v9 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v13 = v2[4];
  *(a2 + 48) = v10;
  *(a2 + 56) = v9;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;

  outlined copy of String??(v11, v12);

  outlined copy of [A : B].Index._Variant<A, B>(v3, v4, v5);

  return outlined copy of [A : B].Index._Variant<A, B>(v6, v7, v8);
}

uint64_t protocol witness for Collection.indices.getter in conformance AnimationLibraryComponent.AnimationCollection@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;

  outlined copy of String??(v5, v6);

  *(a1 + 40) = specialized AnimationLibraryDefinition.startIndex.getter(v3, v4);
  *(a1 + 48) = v8;
  *(a1 + 56) = v9 & 1;
  result = specialized AnimationLibraryDefinition.endIndex.getter(v3, v4);
  *(a1 + 64) = result;
  *(a1 + 72) = v11;
  *(a1 + 80) = v12 & 1;
  return result;
}

BOOL protocol witness for Collection.isEmpty.getter in conformance AnimationLibraryComponent.AnimationCollection()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = v0[1];
    if (!v2)
    {
      return 1;
    }
  }

  return *(v2 + 16) == 0;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AnimationLibraryComponent.AnimationCollection(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v2 != *(a2 + 32))
  {
    goto LABEL_11;
  }

  if (*result >= *(a2 + 24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a2 + 32) != v2)
  {
    goto LABEL_11;
  }

  if (*(a2 + 24) < *result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((*(a2 + 40) | *(result + 40)))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a2 + 32) != *(result + 32))
  {
    goto LABEL_11;
  }

  if (*(a2 + 24) < *(result + 24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

void protocol witness for Collection.index(after:) in conformance AnimationLibraryComponent.AnimationCollection(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  if (v2[1])
  {
    v7 = v2[1];
  }

  else
  {
    if (*v2)
    {
      v8 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v7 = v8;
  }

  v9 = specialized _NativeDictionary.index(after:)(v4, v5, v6, v7);
  v11 = v10;
  v13 = v12;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance AnimationLibraryComponent.AnimationCollection(uint64_t a1)
{
  if (v1[1])
  {
    v3 = v1[1];
  }

  else
  {
    if (*v1)
    {
      v4 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v3 = v4;
  }

  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);

  v8 = specialized _NativeDictionary.index(after:)(v5, v6, v7, v3);
  v10 = v9;
  v12 = v11;

  result = outlined consume of [String : AudioResource].Index._Variant(v5, v6, v7);
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance AnimationLibraryComponent.AnimationCollection()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = v0[1];
    if (!v2)
    {
      return 0;
    }
  }

  return *(v2 + 16);
}

void *protocol witness for static Component.__fromCore(_:) in conformance AnimationLibraryComponent@<X0>(uint64_t a2@<X8>)
{
  AnimationLibraryAsset = REAnimationLibraryComponentGetAnimationLibraryAsset();
  if (AnimationLibraryAsset)
  {
    v4 = AnimationLibraryAsset;
    type metadata accessor for AnimationLibraryResource();
    v5 = swift_allocObject();
    v5[4] = 0;
    v5[2] = v4;
    RERetain();
    EntryCount = REAnimationLibraryAssetGetEntryCount();
    result = _sSa9repeating5countSayxGx_SitcfC10RealityKit17AnimationResourceCSg_Tt1g5Tf4gn_n(0, EntryCount);
    v5[3] = result;
    v8 = xmmword_1C1887610;
    v9 = 0uLL;
  }

  else
  {
    result = specialized AnimationLibraryDefinition.init(_:)(MEMORY[0x1E69E7CC0], &v10);
    v5 = v10;
    v9 = v11;
    v8 = v12;
  }

  *a2 = v5;
  *(a2 + 8) = v9;
  *(a2 + 24) = v8;
  return result;
}

double protocol witness for ExpressibleByDictionaryLiteral.init(dictionaryLiteral:) in conformance AnimationLibraryComponent@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized AnimationLibraryDefinition.init(_:)(a1, v6);
  v3 = v7;

  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

double _Proto_AnimationLibraryComponent_v1.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC8];
  *a1 = 0;
  *(a1 + 8) = v1;
  result = 0.0;
  *(a1 + 16) = xmmword_1C18A4F10;
  *(a1 + 32) = 0;
  return result;
}

uint64_t (*_Proto_AnimationLibraryComponent_v1.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = AnimationLibraryComponent.AnimationCollection.subscript.getter(a2, a3);
  return _Proto_AnimationLibraryComponent_v1.subscript.modify;
}

void _Proto_AnimationLibraryComponent_v1.addToLibrary(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 48);
    do
    {
      v3 = *(v2 - 2);
      v4 = *(v2 - 1);
      v5 = *v2;
      v2 += 3;

      AnimationLibraryDefinition.addResource(_:_:)(v3, v4, v5);

      --v1;
    }

    while (v1);
  }
}

unint64_t AnimationLibraryComponent.unkeyedResources.getter()
{
  result = specialized AnimationLibraryDefinition.unkeyedResources.getter(*v0, v0[1], v0[4]);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return result;
    }

    goto LABEL_3;
  }

  v2 = result;
  v3 = __CocoaSet.count.getter();
  result = v2;
  if (!v3)
  {
LABEL_3:

    return 0;
  }

  return result;
}

double static _Proto_AnimationLibraryComponent_v1.__fromCore(_:)@<D0>(uint64_t a2@<X8>)
{
  AnimationLibraryAsset = REAnimationLibraryComponentGetAnimationLibraryAsset();
  if (AnimationLibraryAsset)
  {
    v4 = AnimationLibraryAsset;
    type metadata accessor for AnimationLibraryResource();
    v5 = swift_allocObject();
    v5[4] = 0;
    v5[2] = v4;
    RERetain();
    EntryCount = REAnimationLibraryAssetGetEntryCount();
    v7 = _sSa9repeating5countSayxGx_SitcfC10RealityKit17AnimationResourceCSg_Tt1g5Tf4gn_n(0, EntryCount);
    v8 = 0;
    v5[3] = v7;
  }

  else
  {
    v5 = 0;
    v8 = MEMORY[0x1E69E7CC8];
  }

  *a2 = v5;
  *(a2 + 8) = v8;
  result = 0.0;
  *(a2 + 16) = xmmword_1C18A4F10;
  *(a2 + 32) = 0;
  return result;
}

void *AnimationLibraryComponent.__toCore(_:)(void *result)
{
  if (v1[1])
  {
    v2 = 0;
  }

  else
  {
    v2 = v1[3] == 1;
  }

  if (v2 && v1[4] == 0)
  {
    if (!*v1)
    {
      return v4;
    }
  }

  else
  {
    v4 = AnimationLibraryDefinition.createAsset()();
    if (!v4)
    {
      return v4;
    }
  }

  return REAnimationLibraryComponentAssignAnimationLibraryAsset();
}

double protocol witness for static Component.__fromCore(_:) in conformance _Proto_AnimationLibraryComponent_v1@<D0>(uint64_t a2@<X8>)
{
  AnimationLibraryAsset = REAnimationLibraryComponentGetAnimationLibraryAsset();
  if (AnimationLibraryAsset)
  {
    v4 = AnimationLibraryAsset;
    type metadata accessor for AnimationLibraryResource();
    v5 = swift_allocObject();
    v5[4] = 0;
    v5[2] = v4;
    RERetain();
    EntryCount = REAnimationLibraryAssetGetEntryCount();
    v7 = _sSa9repeating5countSayxGx_SitcfC10RealityKit17AnimationResourceCSg_Tt1g5Tf4gn_n(0, EntryCount);
    v8 = 0;
    v5[3] = v7;
  }

  else
  {
    v5 = 0;
    v8 = MEMORY[0x1E69E7CC8];
  }

  *a2 = v5;
  *(a2 + 8) = v8;
  result = 0.0;
  *(a2 + 16) = xmmword_1C18A4F10;
  *(a2 + 32) = 0;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AnimationLibraryComponent.AnimationCollection(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *), void (*a4)(_OWORD *))
{
  v6 = *(v4 + 16);
  v9[0] = *v4;
  v9[1] = v6;
  v10 = *(v4 + 32);
  v7 = (a3)(v9, a2);
  a4(v9);
  return v7;
}

uint64_t AnimationLibraryComponent.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v27[0] = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v27 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v31 = v10;
  v32 = v9;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C1887600;
  *(v14 + 32) = 0x73656D616ELL;
  *(v14 + 40) = 0xE500000000000000;
  v27[1] = v10;
  v27[2] = v9;
  v27[3] = v11;
  v27[4] = v12;
  v27[5] = v13;

  outlined copy of String??(v11, v12);

  outlined copy of String??(v11, v12);

  AnimationLibraryComponent.AnimationCollection.makeIterator()(v28);
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    result = v28[0];
    v17 = v30;
    if (!v30)
    {
      break;
    }

    v18 = v29;
LABEL_8:
    v20 = (*(v28[0] + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v17)))));
    v22 = *v20;
    v21 = v20[1];
    v29 = v18;
    v30 = (v17 - 1) & v17;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v24 = *(v15 + 2);
    v23 = *(v15 + 3);
    if (v24 >= v23 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v15);
    }

    *(v15 + 2) = v24 + 1;
    v25 = &v15[16 * v24];
    *(v25 + 4) = v22;
    *(v25 + 5) = v21;
  }

  v19 = v29;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= ((v28[2] + 64) >> 6))
    {
      outlined consume of [String : AnimationResource].Iterator._Variant();
      *(v14 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      *(v14 + 48) = v15;
      v26 = type metadata accessor for Mirror.DisplayStyle();
      (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
      (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
      return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
    }

    v17 = *(v28[1] + 8 * v18);
    ++v19;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

double _Proto_AnimationLibraryComponent_v1.makeIterator()@<D0>(uint64_t *a1@<X8>)
{
  if (v1[1])
  {
    v3 = v1[1];
  }

  else if (*v1)
  {
    v3 = AnimationLibraryResource.keyedResources.getter();
  }

  else
  {
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v4 = -1 << *(v3 + 32);
  v5 = *(v3 + 64);
  v6 = ~v4;
  v7 = -v4;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  *a1 = v3;
  a1[1] = v3 + 64;
  a1[2] = v6;
  a1[3] = 0;
  a1[4] = v8 & v5;

  return result;
}

double protocol witness for Sequence.makeIterator() in conformance _Proto_AnimationLibraryComponent_v1@<D0>(void (*a1)(_OWORD *__return_ptr)@<X2>, uint64_t a2@<X8>)
{
  a1(v8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);

  outlined consume of String??(v4, v5);

  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v9;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AnimationLibraryComponent()
{
  v1 = *(v0 + 16);
  v5[0] = *v0;
  v5[1] = v1;
  v6 = *(v0 + 32);
  specialized _copySequenceToContiguousArray<A>(_:)(v5);
  v3 = v2;
  outlined destroy of AnimationLibraryComponent(v5);
  return v3;
}

void AnimationLibraryComponent.animationResource(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2[1];
  if (v4)
  {
    if (*(v4 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
      if (v5)
      {
      }
    }
  }

  else if (*v3)
  {
    String.utf8CString.getter();
    EntryIndexFromKey = REAnimationLibraryAssetGetEntryIndexFromKey();

    if (EntryIndexFromKey)
    {
      AnimationLibraryResource.resource(_:)(*EntryIndexFromKey);
    }
  }
}

uint64_t key path setter for AnimationLibraryComponent.AnimationCollection.subscript(_:) : AnimationLibraryComponent.AnimationCollection(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  if (*a1)
  {

    AnimationLibraryDefinition.addResource(_:_:)(v3, v4, v5);
  }

  else
  {
    AnimationLibraryDefinition.removeResource(_:)(*a3, a3[1]);
  }
}

void AnimationLibraryComponent.AnimationCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    AnimationLibraryDefinition.addResource(_:_:)(a2, a3, a1);
  }

  else
  {
    AnimationLibraryDefinition.removeResource(_:)(a2, a3);
  }
}

uint64_t (*AnimationLibraryComponent.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = AnimationLibraryComponent.AnimationCollection.subscript.getter(a2, a3);
  return _Proto_AnimationLibraryComponent_v1.subscript.modify;
}

uint64_t AnimationLibraryComponent.AnimationCollection.subscript.modify(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = a1[1];
  if (a2)
  {
    if (v3)
    {

      AnimationLibraryDefinition.addResource(_:_:)(v4, v2, v3);
    }

    else
    {
      AnimationLibraryDefinition.removeResource(_:)(a1[1], v2);
    }
  }

  else
  {
    if (v3)
    {

      AnimationLibraryDefinition.addResource(_:_:)(v4, v2, v3);
    }

    AnimationLibraryDefinition.removeResource(_:)(a1[1], v2);
  }
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10RealityKit17AnimationResourceCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_SS_10i5Kit17kL4CTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n04_s17i12Foundation26k39LibraryDefinitionV9removeAllyy0A3Kit0C8L27CFSbSS3key_AG5valuet_tXEfU_AJTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary.index(after:)(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return _HashTable.occupiedBucket(after:)();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.index(after:)(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    result = __CocoaDictionary.Index.age.getter();
    if (result == *(a4 + 36))
    {
      __CocoaDictionary.Index.key.getter();
      type metadata accessor for __REAsset();
      swift_dynamicCast();
      specialized __RawDictionaryStorage.find<A>(_:)();
      v6 = v5;

      if (v6)
      {
        __CocoaDictionary.Index.dictionary.getter();
        v7 = __CocoaDictionary.index(after:)();
        swift_unknownObjectRelease();
        return v7;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  return _HashTable.occupiedBucket(after:)();
}

uint64_t specialized AnimationLibraryDefinition.endIndex.getter(uint64_t a1, unint64_t a2)
{
  if (a1)
  {

    v2 = AnimationLibraryResource.keyedResources.getter();

    v3 = *(v2 + 32);
  }

  else
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v3 = *(v4 + 32);
  }

  return 1 << v3;
}

uint64_t specialized AnimationLibraryDefinition.startIndex.getter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {

    AnimationLibraryResource.keyedResources.getter();
    v2 = _HashTable.startBucket.getter();
  }

  else
  {
    if (!a2)
    {
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v2 = _HashTable.startBucket.getter();
  }

  return v2;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC10RealityKit17AnimationResourceCSg_Tt1g5Tf4gn_n(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17AnimationResourceCSgMd, &_s10RealityKit17AnimationResourceCSgMR);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t specialized AnimationLibraryDefinition.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for AnimationResource();
  result = MEMORY[0x1C68F3120](v4, MEMORY[0x1E69E6158], v5, MEMORY[0x1E69E6168]);
  v12 = result;
  v7 = xmmword_1C18A4F10;
  if (v4)
  {
    v8 = (a1 + 48);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v8 += 3;

      AnimationLibraryDefinition.addResource(_:_:)(v9, v10, v11);

      --v4;
    }

    while (v4);
    result = v12;
    v7 = xmmword_1C18A4F10;
  }

  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 16) = v7;
  *(a2 + 32) = 0;
  return result;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v12 = a1;
    v13 = a2;
    v14 = __CocoaSet.count.getter();
    a2 = v13;
    v3 = v14;
    a1 = v12;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = *(MEMORY[0x1C68F41F0](v4, a1) + 16);
      v10 = *(v8 + 16);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v10)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(*(a1 + 8 * v4 + 32) + 16) == *(a2 + 16))
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = __CocoaSet.count.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x1C68F41F0](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5Tf4gn_n(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC17RealityFoundation22MeshInstancesComponentV4PartVSg_Tt1B5Tf4gn_n(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22MeshInstancesComponentV4PartVSgMd, &_s17RealityFoundation22MeshInstancesComponentV4PartVSgMR);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    v7 = *(v3 + 16);
    v6 = *(v3 + 32);
    v8 = *v3;
    *(v4 + 80) = *(v3 + 48);
    *(v4 + 48) = v7;
    *(v4 + 64) = v6;
    *(v4 + 32) = v8;
    v9 = a2 - 1;
    if (a2 != 1)
    {
      v10 = v4 + 96;
      do
      {
        outlined init with copy of [String : String](v3, v14, &_s17RealityFoundation22MeshInstancesComponentV4PartVSgMd, &_s17RealityFoundation22MeshInstancesComponentV4PartVSgMR);
        v11 = *v3;
        v12 = *(v3 + 16);
        v13 = *(v3 + 32);
        *(v10 + 48) = *(v3 + 48);
        *(v10 + 16) = v12;
        *(v10 + 32) = v13;
        *v10 = v11;
        v10 += 64;
        --v9;
      }

      while (v9);
    }

    outlined init with copy of [String : String](v3, v14, &_s17RealityFoundation22MeshInstancesComponentV4PartVSgMd, &_s17RealityFoundation22MeshInstancesComponentV4PartVSgMR);
    return v5;
  }

  return result;
}

uint64_t specialized AnimationLibraryDefinition.unkeyedResources.getter(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    if (a1)
    {
      v7 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v6 = v7;
  }

  v8 = *(v6 + 16);
  swift_bridgeObjectRetain_n();

  if (v8)
  {
    if (!v4)
    {
      if (a1)
      {
        v6 = a1;
        v9 = AnimationLibraryResource.keyedResources.getter();
      }

      else
      {
        v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      }

      v4 = v9;
    }

    v32[0] = MEMORY[0x1E69E7CD0];
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    while (v13)
    {
      v16 = v15;
LABEL_25:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v6 = v32;
      specialized Set._Variant.insert(_:)(&v33, *(*(*(v4 + 56) + ((v16 << 9) | (8 * v17))) + 16));
    }

    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        v4 = v32[0];
        if (a3)
        {
          v6 = a3;
        }

        else if (a1)
        {
          v6 = AnimationLibraryResource.resourceArray.getter();
        }

        else
        {
          v6 = MEMORY[0x1E69E7CC0];
        }

        v33 = MEMORY[0x1E69E7CC0];
        if (!(v6 >> 62))
        {
          v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_34:

          if (!v18)
          {
            a3 = MEMORY[0x1E69E7CC0];
            goto LABEL_53;
          }

          v19 = 0;
          v20 = v6 & 0xC000000000000001;
          v21 = v6 & 0xFFFFFFFFFFFFFF8;
          v31 = v6;
          v22 = v6 + 32;
          v23 = v4 + 56;
          while (1)
          {
            if (v20)
            {
              v24 = MEMORY[0x1C68F41F0](v19, v31);
              v25 = __OFADD__(v19++, 1);
              if (v25)
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (v19 >= *(v21 + 16))
              {
                goto LABEL_57;
              }

              v24 = *(v22 + 8 * v19);

              v25 = __OFADD__(v19++, 1);
              if (v25)
              {
LABEL_50:
                __break(1u);
LABEL_51:
                a3 = v33;
LABEL_53:

                return a3;
              }
            }

            if (*(v4 + 16) && (v26 = *(v24 + 16), Hasher.init(_seed:)(), MEMORY[0x1C68F4C10](v26), v6 = v32, v27 = Hasher._finalize()(), v28 = -1 << *(v4 + 32), v29 = v27 & ~v28, ((*(v23 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
            {
              v30 = ~v28;
              while (*(*(v4 + 48) + 8 * v29) != v26)
              {
                v29 = (v29 + 1) & v30;
                if (((*(v23 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
                {
                  goto LABEL_36;
                }
              }

              if (v19 == v18)
              {
                goto LABEL_51;
              }
            }

            else
            {
LABEL_36:
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v6 = &v33;
              specialized ContiguousArray._endMutation()();
              if (v19 == v18)
              {
                goto LABEL_51;
              }
            }
          }
        }

LABEL_58:
        v18 = __CocoaSet.count.getter();
        goto LABEL_34;
      }

      v13 = *(v4 + 64 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (a3)
  {

    return a3;
  }

  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  return AnimationLibraryResource.resourceArray.getter();
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v12) + 16) != *(a4 + 16))
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v5, a3);
      }
    }
  }

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
      return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10RealityKit17AnimationResourceCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_SS_10i5Kit17kL4CTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n04_s17i12Foundation26k39LibraryDefinitionV9removeAllyy0A3Kit0C8L27CFSbSS3key_AG5valuet_tXEfU_AJTf1nnc_n(v13, v8, a1, a2);
      MEMORY[0x1C6902A30](v13, -1, -1);

      return v11;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  bzero(v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = specialized closure #1 in _NativeDictionary.filter(_:)((v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  return v11;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = specialized Collection.firstIndex(where:)(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == __CocoaSet.count.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = *(MEMORY[0x1C68F41F0](v11, v7) + 16);
    v17 = *(a2 + 16);
    swift_unknownObjectRelease();
    if (v16 != v17)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x1C68F41F0](v10, v7);
        v14 = MEMORY[0x1C68F41F0](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (*(v14 + 16) != *(a2 + 16))
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return __CocoaSet.count.getter();
}

{
  v7 = *a1;
  v8 = specialized Collection.firstIndex(where:)(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == __CocoaSet.count.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = MEMORY[0x1C68F41F0](v11, v7);
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x1C68F41F0](v10, v7);
        v14 = MEMORY[0x1C68F41F0](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return __CocoaSet.count.getter();
}

uint64_t specialized AnimationLibraryDefinition.defaultResourceKey.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (a4 == 1)
  {
    if (!a1)
    {
      return 0;
    }

    v6 = a3;
    v7 = a1;
    if (!REAnimationLibraryAssetGetDefaultEntryKey())
    {
      return 0;
    }

    v8 = String.init(cString:)();
    v10 = v9;
    a1 = v7;
    a3 = v6;
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = a3;
    v10 = a4;
    if (!a2)
    {
LABEL_6:
      if (a1)
      {
        v11 = a3;
        String.utf8CString.getter();
        outlined copy of String??(v11, a4);
        EntryIndexFromKey = REAnimationLibraryAssetGetEntryIndexFromKey();

        if (EntryIndexFromKey)
        {
          AnimationLibraryResource.resource(_:)(*EntryIndexFromKey);

          return v8;
        }
      }

      else
      {
        outlined copy of String??(a3, a4);
      }

      goto LABEL_15;
    }
  }

  v13 = *(a2 + 16);
  outlined copy of String??(a3, a4);
  if (!v13 || (specialized __RawDictionaryStorage.find<A>(_:)(v8, v10), (v14 & 1) == 0))
  {
LABEL_15:

    return 0;
  }

  return v8;
}

unint64_t lazy protocol witness table accessor for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index()
{
  result = lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index;
  if (!lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationLibraryComponent.AnimationCollection.Index, &type metadata for AnimationLibraryComponent.AnimationCollection.Index, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index;
  if (!lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationLibraryComponent.AnimationCollection.Index, &type metadata for AnimationLibraryComponent.AnimationCollection.Index, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index;
  if (!lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationLibraryComponent.AnimationCollection.Index, &type metadata for AnimationLibraryComponent.AnimationCollection.Index, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationLibraryComponent.AnimationCollection and conformance AnimationLibraryComponent.AnimationCollection()
{
  result = lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection and conformance AnimationLibraryComponent.AnimationCollection;
  if (!lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection and conformance AnimationLibraryComponent.AnimationCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationLibraryComponent.AnimationCollection, &type metadata for AnimationLibraryComponent.AnimationCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection and conformance AnimationLibraryComponent.AnimationCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationLibraryComponent.AnimationCollection.Iterator and conformance AnimationLibraryComponent.AnimationCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Iterator and conformance AnimationLibraryComponent.AnimationCollection.Iterator;
  if (!lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Iterator and conformance AnimationLibraryComponent.AnimationCollection.Iterator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationLibraryComponent.AnimationCollection.Iterator, &type metadata for AnimationLibraryComponent.AnimationCollection.Iterator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Iterator and conformance AnimationLibraryComponent.AnimationCollection.Iterator);
  }

  return result;
}

uint64_t keypath_get_2Tm@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_SSSgSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for AnimationLibraryComponent.AnimationCollection.Iterator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 40))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AnimationLibraryComponent.AnimationCollection.Iterator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimationLibraryComponent(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AnimationLibraryComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __RERelease(_:)(uint64_t result)
{
  if (result)
  {
    return RERelease();
  }

  return result;
}

uint64_t __RERetain(_:)(uint64_t result)
{
  if (result)
  {
    return RERetain();
  }

  return result;
}

uint64_t specialized static StateMachineParametersCreator.createBoundParameters(from:)(uint64_t a1)
{
  v38 = type metadata accessor for Logger();
  v1 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  result = REStateMachineComponentGetBoundParameterCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (result)
    {
      v10 = 0;
      v37 = "Scope";
      v35 = v6;
      v36 = (v1 + 8);
      v32 = "hineParameterType";
      v33 = v3;
      v31 = "hineParameter type";
      v11 = MEMORY[0x1E69E7CC0];
      *&v8 = 136315138;
      v34 = v8;
      while (1)
      {
        BoundParameterTypeAtIndex = REStateMachineComponentGetBoundParameterTypeAtIndex();
        REStateMachineComponentGetBoundParameterNameAtIndex();
        v13 = String.init(cString:)();
        v15 = v14;
        REStateMachineComponentGetBoundParameterBindTargetAtIndex();
        v16 = String.init(cString:)();
        static InternalBindPath.targetFromPath(_:)(v16, v17, v40);

        v18 = v40[0];
        v19 = v40[1];
        v20 = v41;
        if (BoundParameterTypeAtIndex <= 1)
        {
          if (BoundParameterTypeAtIndex)
          {
            if (BoundParameterTypeAtIndex == 1)
            {
              v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineParameterVySiGMd, &_s17RealityFoundation21StateMachineParameterVySiGMR);
              v43 = &protocol witness table for StateMachineParameter<A>;
              v21 = swift_allocObject();
              v40[0] = v21;
              *(v21 + 32) = 0;
              *(v21 + 40) = 0;
              *(v21 + 48) = -1;
              *(v21 + 56) = 0;
              *(v21 + 64) = 1;
LABEL_19:
              *(v21 + 16) = v13;
              *(v21 + 24) = v15;
              outlined consume of BindTarget?(0, 0, 0xFFu);
              *(v21 + 32) = v18;
              *(v21 + 40) = v19;
              *(v21 + 48) = v20;
              outlined init with copy of __REAssetService(v40, v39);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
              }

              v29 = v11[2];
              v28 = v11[3];
              if (v29 >= v28 >> 1)
              {
                v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v11);
              }

              v11[2] = v29 + 1;
              outlined init with take of ForceEffectBase(v39, &v11[5 * v29 + 4]);
              __swift_destroy_boxed_opaque_existential_1(v40);
              goto LABEL_6;
            }

LABEL_24:

            outlined consume of BindTarget(v18, v19, v20);
            v22 = v33;
            Logger.init(subsystem:category:)();
            v23 = Logger.logObject.getter();
            v24 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v23, v24))
            {
              goto LABEL_5;
            }

            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v40[0] = v26;
            *v25 = v34;
            v27 = v31;
            goto LABEL_4;
          }
        }

        else
        {
          if (BoundParameterTypeAtIndex == 2)
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineParameterVySfGMd, &_s17RealityFoundation21StateMachineParameterVySfGMR);
            v43 = &protocol witness table for StateMachineParameter<A>;
            v21 = swift_allocObject();
            v40[0] = v21;
            *(v21 + 32) = 0;
            *(v21 + 40) = 0;
            *(v21 + 48) = -1;
            *(v21 + 52) = 0;
            *(v21 + 56) = 1;
            goto LABEL_19;
          }

          if (BoundParameterTypeAtIndex == 3)
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineParameterVySbGMd, &_s17RealityFoundation21StateMachineParameterVySbGMR);
            v43 = &protocol witness table for StateMachineParameter<A>;
            v21 = swift_allocObject();
            v40[0] = v21;
            *(v21 + 32) = 0;
            *(v21 + 40) = 0;
            *(v21 + 48) = 767;
            goto LABEL_19;
          }

          if (BoundParameterTypeAtIndex != 4)
          {
            goto LABEL_24;
          }
        }

        outlined consume of BindTarget(v18, v19, v20);
        v22 = v35;
        Logger.init(subsystem:category:)();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v23, v24))
        {
          goto LABEL_5;
        }

        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v40[0] = v26;
        *v25 = v34;
        v27 = v32;
LABEL_4:
        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, v27 | 0x8000000000000000, v40);
        _os_log_impl(&dword_1C1358000, v23, v24, "%s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x1C6902A30](v26, -1, -1);
        MEMORY[0x1C6902A30](v25, -1, -1);
LABEL_5:

        (*v36)(v22, v38);
LABEL_6:
        if (v9 == ++v10)
        {
          return v11;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void specialized static StateMachineParametersCreator.syncUp(parameters:with:)(uint64_t *a1, uint64_t a2)
{
  v40 = *(a2 + 24);
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_50;
      }

      outlined init with copy of __REAssetService(v5, &v56);
      v7 = v57;
      v8 = v58;
      __swift_project_boxed_opaque_existential_1(&v56, v57);
      (*(v8 + 16))(&v52, v7, v8);
      if (v53 == 255)
      {
        __swift_destroy_boxed_opaque_existential_1(&v56);
      }

      else
      {
        outlined consume of BindTarget?(v52, *(&v52 + 1), v53);
        outlined init with take of ForceEffectBase(&v56, &v52);
        *&v49 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1);
          v6 = v49;
        }

        v10 = v6[2];
        v9 = v6[3];
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v6 = v49;
        }

        v6[2] = v10 + 1;
        outlined init with take of ForceEffectBase(&v52, &v6[5 * v10 + 4]);
      }

      ++v4;
      v5 += 40;
    }

    while (v3 != v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v6;
  v11 = v40;
  v12 = *(v40 + 16);
  if (!v12)
  {
    return;
  }

  v13 = 0;
  v14 = v40 + 32;
  v38 = *(v40 + 16);
  while (1)
  {
    if (v13 >= *(v11 + 16))
    {
      goto LABEL_52;
    }

    v15 = *(v14 + 72 * v13 + 64);
    v42 = *(v15 + 16);
    if (v42)
    {
      break;
    }

LABEL_46:
    if (++v13 == v12)
    {
      return;
    }
  }

  v39 = v13;
  v43 = v15 + 32;

  v16 = 0;
  v41 = v15;
  while (1)
  {
    if (v16 >= *(v15 + 16))
    {
      goto LABEL_51;
    }

    outlined init with copy of __REAssetService(v43 + 40 * v16, &v56);
    v17 = v57;
    v18 = v58;
    __swift_project_boxed_opaque_existential_1(&v56, v57);
    v19 = (*(v18 + 8))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(&v56);
    v48 = *(v19 + 16);
    if (v48)
    {
      break;
    }

LABEL_19:
    if (++v16 == v42)
    {

      v13 = v39;
      v11 = v40;
      v14 = v40 + 32;
      v12 = v38;
      goto LABEL_46;
    }
  }

  v44 = v16;
  v20 = 0;
  v46 = v19;
  v47 = v19 + 32;
  while (1)
  {
    if (v20 >= *(v19 + 16))
    {
      goto LABEL_49;
    }

    outlined init with copy of __REAssetService(v47 + 40 * v20, &v52);
    v21 = v6[2];
    if (v21)
    {
      break;
    }

LABEL_40:
    outlined init with copy of __REAssetService(&v52, &v49);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    }

    v37 = v6[2];
    v36 = v6[3];
    if (v37 >= v36 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v6);
    }

    v19 = v46;
    v6[2] = v37 + 1;
    outlined init with take of ForceEffectBase(&v49, &v6[5 * v37 + 4]);
    *a1 = v6;
LABEL_24:
    ++v20;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    if (v20 == v48)
    {

      v15 = v41;
      v16 = v44;
      goto LABEL_19;
    }
  }

  v22 = 0;
  v23 = (v6 + 4);
  while (v22 < v6[2])
  {
    outlined init with copy of __REAssetService(v23, &v49);
    v24 = v50;
    v25 = v51;
    __swift_project_boxed_opaque_existential_1(&v49, v50);
    v26 = (*(v25 + 8))(v24, v25);
    v28 = v27;
    v29 = v54;
    v30 = v55;
    __swift_project_boxed_opaque_existential_1(&v52, v54);
    if (v26 == (*(v30 + 8))(v29, v30) && v28 == v31)
    {
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v49);
        goto LABEL_29;
      }
    }

    __swift_project_boxed_opaque_existential_1(&v49, v50);
    DynamicType = swift_getDynamicType();
    __swift_project_boxed_opaque_existential_1(&v52, v54);
    v35 = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(&v49);
    if (DynamicType == v35)
    {
      v19 = v46;
      goto LABEL_24;
    }

LABEL_29:
    ++v22;
    v23 += 40;
    if (v21 == v22)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t specialized static StateMachineParametersCreator.updateInCoreComponent(coreComponent:from:)(uint64_t a1, uint64_t a2)
{
  v32 = type metadata accessor for Logger();
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = REStateMachineComponentRemoveAllBoundParameters();
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = a2 + 32;
    v30 = (v3 + 8);
    v31 = "Scope";
    v29 = "ourceCache";
    *&v7 = 136315138;
    v28 = v7;
    v10 = v5;
    do
    {
      outlined init with copy of __REAssetService(v9, v41);
      v16 = v42;
      v17 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      (*(v17 + 16))(v33, v16, v17);
      v18 = v34;
      if (v34 != 255)
      {
        v20 = v33[0];
        v19 = v33[1];
        specialized static InternalBindPath.pathFromTarget(_:_:)(v33, 1);
        outlined consume of BindTarget?(v20, v19, v18);
        outlined init with copy of __REAssetService(v41, v37);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation29StateMachineParameterProtocol_pMd, &_s17RealityFoundation29StateMachineParameterProtocol_pMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineParameterVySiGMd, &_s17RealityFoundation21StateMachineParameterVySiGMR);
        if (swift_dynamicCast() || (outlined init with copy of __REAssetService(v41, v37), __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineParameterVySfGMd, &_s17RealityFoundation21StateMachineParameterVySfGMR), swift_dynamicCast()))
        {
          v11 = v34;
          v12 = v35;
          v13 = v36;

          outlined consume of BindTarget?(v11, v12, v13);
        }

        else
        {
          outlined init with copy of __REAssetService(v41, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineParameterVySbGMd, &_s17RealityFoundation21StateMachineParameterVySbGMR);
          if ((swift_dynamicCast() & 1) == 0)
          {

            Logger.init(subsystem:category:)();
            v24 = Logger.logObject.getter();
            v25 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v24, v25))
            {
              v26 = swift_slowAlloc();
              v27 = swift_slowAlloc();
              v33[0] = v27;
              *v26 = v28;
              *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, v29 | 0x8000000000000000, v33);
              _os_log_impl(&dword_1C1358000, v24, v25, "%s", v26, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v27);
              MEMORY[0x1C6902A30](v27, -1, -1);
              MEMORY[0x1C6902A30](v26, -1, -1);
            }

            (*v30)(v5, v32);
            goto LABEL_5;
          }

          v21 = v38;
          v22 = v39;
          v23 = v40;

          outlined consume of BindTarget?(v21, v22, v23);
        }

        v14 = v42;
        v15 = v43;
        __swift_project_boxed_opaque_existential_1(v41, v42);
        (*(v15 + 8))(v14, v15);
        String.utf8CString.getter();

        String.utf8CString.getter();

        REStateMachineComponentAddBoundParameter();

        v5 = v10;
      }

LABEL_5:
      result = __swift_destroy_boxed_opaque_existential_1(v41);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t objectdestroyTm_4(uint64_t a1)
{

  v3 = *(v1 + 48);
  if (v3 != 255)
  {
    outlined consume of BindTarget(*(v1 + 32), *(v1 + 40), v3);
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t static VideoComponent.__fromCore(_:)@<X0>(uint64_t *a2@<X8>)
{
  VideoAsset = REVideoComponentGetVideoAsset();
  type metadata accessor for __VideoResource();
  v21[0] = VideoAsset;
  v4 = static __VideoResource.__fromCore(_:)(v21);

  MaterialAsset = REVideoComponentGetMaterialAsset();
  v6 = REMaterialParameterBlockValueCreate();
  v7 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(MaterialAsset);
  if (v7)
  {
    v8 = v7;
    v21[3] = &type metadata for AnyMaterial;
    v21[4] = &protocol witness table for AnyMaterial;
    v9 = swift_allocObject();
    v21[0] = v9;
    v10 = MEMORY[0x1E69E7CC0];
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    *(v9 + 48) = v6;
    *a2 = v4;
    outlined init with copy of __REAssetService(v21, (a2 + 1));
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #0 of static VideoComponent.__fromCore(_:));

    v11 = v6;
    __swift_destroy_boxed_opaque_existential_1(v21);
    Entity = REComponentGetEntity();
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v13 = swift_dynamicCastClassUnconditional();
      goto LABEL_4;
    }

    if ((REEntityIsBeingDestroyed() & 1) == 0)
    {
      specialized static Entity.entityInfoType(_:)(Entity);
      if (v15)
      {
        v16 = (*(v15 + 232))();
        v17 = *(v16 + 16);

        MEMORY[0x1C68F9740](v17, 0);
        *(v16 + 16) = Entity;
        MEMORY[0x1C68F9740](Entity, v16);

        v14 = v16;
        goto LABEL_8;
      }

      v13 = makeEntity(for:)(Entity);
LABEL_4:
      v14 = v13;
LABEL_8:
      __VideoResource.addEntity(_:)(v14);
      LOBYTE(v21[0]) = 2 * (REVideoComponentGetDesiredViewingMode() != 1);
      __VideoResource.preferredViewingMode.setter(v21);

      REVideoComponentGetFadeThreshold();
      v19 = v18;

      a2[6] = v19;
      return result;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance VideoComponent(void *a1)
{
  REVideoComponentSetVideoAsset();
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  (*(v3 + 8))(v2, v3);
  swift_beginAccess();

  REVideoComponentSetMaterialAsset();
  REVideoComponentSetFadeThreshold();
  REVideoComponentAddRealityKitDefaultAttachmentsOnAllMaterials();
  return RENetworkMarkComponentDirty();
}

uint64_t _Proto_SkeletonDefinition_v1.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16))
  {

    v7 = MEMORY[0x1E69E7CC0];
    v5 = 0xE500000000000000;
    v3 = 0x7974706D65;
LABEL_26:
    *a2 = v3;
    a2[1] = v5;
    a2[2] = v7;
    return result;
  }

  if (RESkeletonAssetGetName())
  {
    v3 = String.init(cString:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  result = RESkeletonAssetGetJointCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v8 = result;
    if (result)
    {
      v29 = v3;
      v30 = a2;
      v31 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v9 = 0;
      v7 = v31;
      do
      {
        if (RESkeletonAssetGetJointName())
        {
          v10 = String.init(cString:)();
          v12 = v11;
        }

        else
        {
          v10 = 0;
          v12 = 0xE000000000000000;
        }

        JointParentIndex = RESkeletonAssetGetJointParentIndex();
        v14 = JointParentIndex;
        if (JointParentIndex)
        {
          v15 = *JointParentIndex;
        }

        else
        {
          v15 = 0;
        }

        JointLocalRestTransform = RESkeletonAssetGetJointLocalRestTransform();
        if (JointLocalRestTransform)
        {
          v18 = *JointLocalRestTransform;
          v17 = JointLocalRestTransform[1];
          v19 = JointLocalRestTransform[2];
          if (one-time initialization token for identity != -1)
          {
            v25 = JointLocalRestTransform[2];
            v27 = JointLocalRestTransform[1];
            v23 = *JointLocalRestTransform;
            swift_once();
            v18 = v23;
            v19 = v25;
            v17 = v27;
          }
        }

        else
        {
          if (one-time initialization token for identity != -1)
          {
            swift_once();
          }

          v17 = static simd_quatf.identity;
          v19 = 0uLL;
          v18 = xmmword_1C1887620;
        }

        v21 = *(v31 + 16);
        v20 = *(v31 + 24);
        if (v21 >= v20 >> 1)
        {
          v26 = v19;
          v28 = v17;
          v24 = v18;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v18 = v24;
          v19 = v26;
          v17 = v28;
        }

        ++v9;
        *(v31 + 16) = v21 + 1;
        v22 = v31 + 80 * v21;
        *(v22 + 32) = v10;
        *(v22 + 40) = v12;
        *(v22 + 48) = v15;
        *(v22 + 56) = v14 == 0;
        *(v22 + 64) = v18;
        *(v22 + 80) = v17;
        *(v22 + 96) = v19;
      }

      while (v8 != v9);

      a2 = v30;
      v3 = v29;
    }

    else
    {

      v7 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

void _Proto_SkeletonDefinition_v1.Joint.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t _Proto_SkeletonDefinition_v1.Joint.parentIndex.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void _Proto_SkeletonDefinition_v1.Joint.localTransform.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
}

uint64_t _Proto_SkeletonDefinition_v1.Joint.id.getter()
{
  v1 = *v0;

  return v1;
}

void _Proto_SkeletonDefinition_v1.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

RealityFoundation::_Proto_SkeletonDefinition_v1 __swiftcall _Proto_SkeletonDefinition_v1.init(named:withJoints:)(Swift::String named, Swift::OpaquePointer withJoints)
{
  *v2 = named;
  *(v2 + 16) = withJoints;
  result.name = named;
  result.joints = withJoints;
  return result;
}

Swift::Bool __swiftcall _Proto_SkeletonDefinition_v1.equivalent(to:compareEnrolment:)(RealityFoundation::_Proto_SkeletonDefinition_v1 to, Swift::Bool compareEnrolment)
{
  v3 = *(to.name._countAndFlagsBits + 16);
  v4 = *(v2 + 16);
  v5 = v4[1].u64[0];
  if (v5 != v3[1].i64[0])
  {
    v18 = 0;
LABEL_33:
    LOBYTE(v7) = v18;
    return v7;
  }

  object = to.name._object;

  if (!v5)
  {
LABEL_21:
    if (object)
    {
      v19 = 0;
      v20 = v4[1].u64[0];
      v21 = v3 + 6;
      v22 = v4 + 6;
      while (v20 != v19)
      {
        if (v19 >= v20)
        {
          goto LABEL_36;
        }

        v23 = v3[1].u64[0];
        if (v19 == v23)
        {
          break;
        }

        if (v19++ >= v23)
        {
          goto LABEL_37;
        }

        v18 = 0;
        v24 = vmovn_s32(vceqq_f32(*v22, *v21));
        if (v24.i8[0] & 1) != 0 && (v24.i8[2])
        {
          v21 += 5;
          v22 += 5;
          if (v24.i8[4])
          {
            continue;
          }
        }

        goto LABEL_32;
      }
    }

    v18 = 1;
LABEL_32:

    goto LABEL_33;
  }

  v8 = 0;
  v9 = &v4[3].i8[8];
  v10 = &v3[3].u8[8];
  while (v8 < v5)
  {
    v12 = v3[1].u64[0];
    if (v8 == v12)
    {
      goto LABEL_21;
    }

    if (v8 >= v12)
    {
      goto LABEL_35;
    }

    v7 = *(v9 - 3);
    v13 = *(v9 - 1);
    v14 = *v9;
    v15 = *(v10 - 1);
    v16 = *v10;
    if (v7 != *(v10 - 3) || *(v9 - 2) != *(v10 - 2))
    {
      LOBYTE(v7) = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((v7 & 1) == 0)
      {
LABEL_19:
        v18 = 0;
        goto LABEL_32;
      }
    }

    if (v14)
    {
      if (!v16)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v13 == v15)
      {
        v11 = v16;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        goto LABEL_19;
      }
    }

    ++v8;
    v5 = v4[1].u64[0];
    v9 += 80;
    v10 += 80;
    if (v8 == v5)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return v7;
}

BOOL static _Proto_SkeletonDefinition_v1.== infix(_:_:)(RealityFoundation::_Proto_SkeletonDefinition_v1 a1, Swift::Bool a2)
{
  v2 = *a1.name._object;
  v6 = *a1.name._countAndFlagsBits;
  v7 = *(a1.name._countAndFlagsBits + 8);
  v4 = v2;
  v5 = *(a1.name._object + 8);
  a1.name._countAndFlagsBits = &v4;
  a1.name._object = 1;
  return _Proto_SkeletonDefinition_v1.equivalent(to:compareEnrolment:)(a1, a2);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _Proto_SkeletonDefinition_v1(RealityFoundation::_Proto_SkeletonDefinition_v1 a1, Swift::Bool a2)
{
  v2 = *a1.name._object;
  v6 = *a1.name._countAndFlagsBits;
  v7 = *(a1.name._countAndFlagsBits + 8);
  v4 = v2;
  v5 = *(a1.name._object + 8);
  a1.name._countAndFlagsBits = &v4;
  a1.name._object = 1;
  return _Proto_SkeletonDefinition_v1.equivalent(to:compareEnrolment:)(a1, a2);
}

uint64_t _Proto_SkeletonDefinition_v1.id.getter()
{
  v1 = *v0;

  return v1;
}

void _Proto_SkeletonDefinition_v1.subTreeIndices(under:inclusive:)(unint64_t a1, int a2)
{
  v5 = *(v2 + 16);
  v6 = _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5Tf4gn_n(MEMORY[0x1E69E7CC0], *(v5 + 16));
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v5 + 56;
    v10 = v7 - 1;
LABEL_3:
    v11 = (v9 + 80 * v8);
    v12 = v8;
    while (v12 < *(v5 + 16))
    {
      v8 = v12 + 1;
      if ((*v11 & 1) == 0)
      {
        v13 = *(v11 - 1);

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }
        }

        if (v13 >= v6[2])
        {
          goto LABEL_40;
        }

        v28 = v10;
        v29 = v9;
        v14 = v6 + 4;
        v15 = v6[v13 + 4];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v6[v13 + 4] = v15;
        v30 = a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
          v14[v13] = v15;
        }

        v18 = *(v15 + 2);
        v17 = *(v15 + 3);
        if (v18 >= v17 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
          v14[v13] = v15;
        }

        v9 = v29;
        *(v15 + 2) = v18 + 1;
        *&v15[8 * v18 + 32] = v12;

        v10 = v28;
        a2 = v30;
        if (v28 != v12)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }

      v11 += 80;
      ++v12;
      if (v7 == v8)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_38;
  }

LABEL_19:
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C1887600;
    *(v19 + 32) = a1;
    v20 = 1;
LABEL_24:
    v21 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v22 = *(v19 + 32);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      if (!v23 || (v20 - 1) > *(v19 + 24) >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23, v20, 1, v19);
      }

      v24 = *(v19 + 16);
      memmove((v19 + 32), (v19 + 40), 8 * v24 - 8);
      *(v19 + 16) = v24 - 1;
      v31 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      }

      v26 = *(v21 + 2);
      v25 = *(v21 + 3);
      if (v26 >= v25 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v21);
      }

      *(v21 + 2) = v26 + 1;
      *&v21[8 * v26 + 32] = v22;
      if ((v22 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v22 >= v6[2])
      {
        goto LABEL_37;
      }

      specialized Array.append<A>(contentsOf:)(v27);
      v19 = v31;
      v20 = *(v31 + 16);
      if (!v20)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v6[2] > a1)
  {
    v19 = v6[a1 + 4];
    v20 = *(v19 + 16);

    if (!v20)
    {
LABEL_35:

      return;
    }

    goto LABEL_24;
  }

LABEL_42:
  __break(1u);
}

uint64_t _Proto_SkeletonDefinition_v1.adjustParenting(_:)(uint64_t a1)
{
  v2 = a1;
  v34 = *(v1 + 16);
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v39 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v5 = 0;
    v6 = v39;
    v37 = v2;
    v7 = (v2 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v39 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);

      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v6 = v39;
      }

      *(v6 + 16) = v11 + 1;
      v12 = (v6 + 24 * v11);
      v12[5] = v8;
      v12[6] = v5;
      v12[4] = v9;
      v7 += 10;
      ++v5;
    }

    while (v3 != v5);
    v2 = v37;
    v4 = MEMORY[0x1E69E7CC0];
  }

  else if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    v13 = MEMORY[0x1E69E7CC8];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v13 = static _DictionaryStorage.allocate(capacity:)();
LABEL_9:
  v39 = v13;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v14, 1, &v39);

  v15 = v39;
  if (!v3)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v39 = v4;
  v33 = v15;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v16 = v33;
  v17 = v39;
  for (i = v2 + 48; ; i += 80)
  {
    v20 = *(i - 16);
    v19 = *(i - 8);
    v21 = *i;
    v36 = *(i + 32);
    v38 = *(i + 16);
    v35 = *(i + 48);
    if (*(i + 8))
    {

      goto LABEL_20;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v21 >= *(v34 + 16))
    {
      goto LABEL_29;
    }

    if (!*(v16 + 16))
    {

LABEL_19:
      v21 = 0;
LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    v22 = (v34 + 32 + 80 * v21);
    v23 = *v22;
    v24 = v22[1];

    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      goto LABEL_19;
    }

    v28 = 0;
    v21 = *(*(v16 + 56) + 8 * v25);
LABEL_21:
    v39 = v17;
    v30 = *(v17 + 16);
    v29 = *(v17 + 24);
    if (v30 >= v29 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
      v16 = v33;
      v17 = v39;
    }

    *(v17 + 16) = v30 + 1;
    v31 = v17 + 80 * v30;
    *(v31 + 32) = v20;
    *(v31 + 40) = v19;
    *(v31 + 48) = v21;
    *(v31 + 56) = v28;
    *(v31 + 64) = v38;
    *(v31 + 80) = v36;
    *(v31 + 96) = v35;
    if (!--v3)
    {

      return v17;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

RealityFoundation::_Proto_SkeletonDefinition_v1 __swiftcall _Proto_SkeletonDefinition_v1.subTree(fromRoot:named:)(Swift::String fromRoot, Swift::String_optional named)
{
  object = fromRoot._object;
  countAndFlagsBits = fromRoot._countAndFlagsBits;
  v36 = v2;
  v6 = *v3;
  v7 = v3[2];
  v8 = named.value._object;
  if (!named.value._object)
  {

    named.value._countAndFlagsBits = v6;
    v8 = v9;
  }

  v34 = v8;
  v35 = named.value._countAndFlagsBits;

  v10 = MEMORY[0x1C68F3410](countAndFlagsBits, object);
  v13 = *(v7 + 16);
  if (v13)
  {
    v14 = 0;
    v39 = v7 + 32;
    v15 = (v7 + 40);
    while (1)
    {
      if (v14 >= *(v7 + 16))
      {
        goto LABEL_27;
      }

      if (*(v15 - 1) == countAndFlagsBits && *v15 == object)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v17._countAndFlagsBits = 47;
      v17._object = 0xE100000000000000;
      v18 = String.hasSuffix(_:)(v17);

      if (v18)
      {
        break;
      }

      ++v14;
      v15 += 10;
      if (v13 == v14)
      {
        goto LABEL_13;
      }
    }

    _Proto_SkeletonDefinition_v1.subTreeIndices(under:inclusive:)(v14, 1);
    v21 = *(v20 + 16);
    if (v21)
    {
      v43 = MEMORY[0x1E69E7CC0];
      v22 = v20;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v10 = v22;
      v23 = 32;
      v24 = v43;
      v37 = v22;
      v38 = v7;
      while (1)
      {
        v25 = *(v10 + v23);
        if ((v25 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v25 >= *(v7 + 16))
        {
          goto LABEL_26;
        }

        v26 = (v39 + 80 * v25);
        v27 = *v26;
        v28 = v26[1];
        v29 = v26[2];
        v30 = *(v26 + 24);
        v41 = *(v26 + 3);
        v42 = *(v26 + 2);
        v40 = *(v26 + 4);
        v31 = *(v43 + 16);
        v32 = *(v43 + 24);

        if (v31 >= v32 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v31 + 1, 1);
        }

        *(v43 + 16) = v31 + 1;
        v33 = v43 + 80 * v31;
        *(v33 + 32) = v27;
        *(v33 + 40) = v28;
        *(v33 + 48) = v29;
        *(v33 + 56) = v30;
        *(v33 + 64) = v42;
        *(v33 + 80) = v41;
        *(v33 + 96) = v40;
        v23 += 8;
        --v21;
        v10 = v37;
        v7 = v38;
        if (!v21)
        {

          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v24 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v19 = _Proto_SkeletonDefinition_v1.adjustParenting(_:)(v24);
  }

  else
  {
LABEL_13:

    v19 = MEMORY[0x1E69E7CC0];
  }

  *v36 = v35;
  v36[1] = v34;
  v36[2] = v19;
LABEL_28:
  result.joints._rawValue = v12;
  result.name._object = v11;
  result.name._countAndFlagsBits = v10;
  return result;
}

RealityFoundation::_Proto_SkeletonDefinition_v1 __swiftcall _Proto_SkeletonDefinition_v1.removingChildren(of:named:)(Swift::String of, Swift::String_optional named)
{
  object = of._object;
  countAndFlagsBits = of._countAndFlagsBits;
  v61 = v2;
  v62 = v3[1];
  v63 = *v3;
  v6 = v3[2];
  v7 = named.value._object;
  if (!named.value._object)
  {

    named.value._countAndFlagsBits = v63;
    v7 = v8;
  }

  v59 = v7;
  v60 = named.value._countAndFlagsBits;
  v66._countAndFlagsBits = 47;
  v66._object = 0xE100000000000000;

  MEMORY[0x1C68F3410](countAndFlagsBits, object);
  v9 = *(v6 + 16);

  if (v9)
  {
    v13 = 0;
    v14 = (v6 + 40);
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (*(v14 - 1) == countAndFlagsBits && *v14 == object)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v16 = String.hasSuffix(_:)(v66);

      if (v16)
      {
        break;
      }

      ++v13;
      v14 += 10;
      if (v9 == v13)
      {
        goto LABEL_39;
      }
    }

    v66._countAndFlagsBits = v63;
    v66._object = v62;
    *&v67 = v6;
    _Proto_SkeletonDefinition_v1.subTreeIndices(under:inclusive:)(v13, 0);
    v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v17);

    v19 = 0;
    v20 = v18 + 56;
    v21 = MEMORY[0x1E69E7CC0];
    do
    {
      v22 = v19;
      while (1)
      {
        if (v22 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        v23 = v6 + 32 + 80 * v22;
        v19 = v22 + 1;
        v25 = *(v23 + 48);
        v24 = *(v23 + 64);
        v26 = *(v23 + 32);
        v27 = *(v23 + 24);
        v29 = *(v23 + 8);
        v28 = *(v23 + 16);
        v30 = *v23;
        LOBYTE(v65) = v27;
        v66._countAndFlagsBits = v22;
        *&v67 = v30;
        *(&v67 + 1) = v29;
        *&v68 = v28;
        BYTE8(v68) = v27;
        v69 = v26;
        v70 = v25;
        v71 = v24;
        if (!*(v18 + 16))
        {
          break;
        }

        v31 = MEMORY[0x1C68F4BF0](*(v18 + 40), v22);
        v32 = -1 << *(v18 + 32);
        v33 = v31 & ~v32;
        if (((*(v20 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          break;
        }

        v34 = ~v32;
        while (*(*(v18 + 48) + 8 * v33) != v22)
        {
          v33 = (v33 + 1) & v34;
          if (((*(v20 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        isUniquelyReferenced_nonNull_native = outlined destroy of (offset: Int, element: _Proto_SkeletonDefinition_v1.Joint)(&v66);
        ++v22;
        if (v19 == v9)
        {
          goto LABEL_30;
        }
      }

LABEL_25:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64[0] = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1);
        v21 = v64[0];
      }

      v36 = *(v21 + 16);
      v35 = *(v21 + 24);
      if (v36 >= v35 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        v21 = v64[0];
      }

      *(v21 + 16) = v36 + 1;
      v37 = v21 + 96 * v36;
      v38 = v67;
      *(v37 + 32) = v66;
      *(v37 + 48) = v38;
      v39 = v68;
      v40 = v69;
      v41 = v71;
      *(v37 + 96) = v70;
      *(v37 + 112) = v41;
      *(v37 + 64) = v39;
      *(v37 + 80) = v40;
    }

    while (v19 != v9);
LABEL_30:

    v42 = *(v21 + 16);
    if (v42)
    {
      v65 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
      v43 = v65;
      v44 = v42 - 1;
      for (i = 32; ; i += 96)
      {
        v46 = *(v21 + i + 16);
        v66 = *(v21 + i);
        v67 = v46;
        v47 = *(v21 + i + 32);
        v48 = *(v21 + i + 48);
        v49 = *(v21 + i + 80);
        v70 = *(v21 + i + 64);
        v71 = v49;
        v68 = v47;
        v69 = v48;
        outlined init with copy of (offset: Int, element: _Proto_SkeletonDefinition_v1.Joint)(&v66, v64);
        v65 = v43;
        v51 = *(v43 + 16);
        v50 = *(v43 + 24);
        if (v51 >= v50 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
          v43 = v65;
        }

        v52 = v67;
        v53 = v68;
        v54 = BYTE8(v68);
        v55 = v69;
        v56 = v70;
        v57 = v71;
        *(v43 + 16) = v51 + 1;
        v58 = v43 + 80 * v51;
        *(v58 + 32) = v52;
        *(v58 + 48) = v53;
        *(v58 + 56) = v54;
        *(v58 + 64) = v55;
        *(v58 + 80) = v56;
        *(v58 + 96) = v57;
        if (!v44)
        {
          break;
        }

        --v44;
      }
    }

    else
    {

      v43 = MEMORY[0x1E69E7CC0];
    }

    v66._countAndFlagsBits = v63;
    v66._object = v62;
    *&v67 = v6;
    v6 = _Proto_SkeletonDefinition_v1.adjustParenting(_:)(v43);
  }

LABEL_39:

  *v61 = v60;
  v61[1] = v59;
  v61[2] = v6;
LABEL_42:
  result.joints._rawValue = v12;
  result.name._object = v11;
  result.name._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t outlined destroy of (offset: Int, element: _Proto_SkeletonDefinition_v1.Joint)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointV7elementtMd, &_sSi6offset_17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointV7elementtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of (offset: Int, element: _Proto_SkeletonDefinition_v1.Joint)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointV7elementtMd, &_sSi6offset_17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointV7elementtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for _Proto_SkeletonDefinition_v1.Joint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for _Proto_SkeletonDefinition_v1.Joint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __RKTimerTrigger.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t __RKTimerTrigger.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  return result;
}

uint64_t specialized HasTransform.scale.setter(__n128 a1)
{
  v2 = v1;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v10);
  if ((v15 & 1) == 0)
  {
    v3 = v11;
    v4 = v12;
    v5 = v13;
    v6 = v14;
    goto LABEL_5;
  }

  if (one-time initialization token for identity != -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v4 = *(&xmmword_1EBEB2BB0 + 1);
    v3 = xmmword_1EBEB2BB0;
    v6 = *(&xmmword_1EBEB2BC0 + 1);
    v5 = xmmword_1EBEB2BC0;
LABEL_5:
    v16 = a1;
    v17 = v3;
    v18 = v4;
    v19 = v5;
    v20 = v6;
    v21 = 0;

    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(&v16);
    v7 = *(v2 + 16);

    if (v7 == *(v2 + 16))
    {
      break;
    }

    __break(1u);
LABEL_7:
    swift_once();
  }

  return result;
}

uint64_t specialized HasTransform.orientation.setter(__n128 a1)
{
  v2 = v1;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v10);
  if ((v11 & 1) == 0)
  {
    v3 = v10[0];
    v4 = v10[1];
    v5 = v10[4];
    v6 = v10[5];
    goto LABEL_5;
  }

  if (one-time initialization token for identity != -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v4 = *(&static Transform.identity + 1);
    v3 = static Transform.identity;
    v6 = *(&xmmword_1EBEB2BC0 + 1);
    v5 = xmmword_1EBEB2BC0;
LABEL_5:
    v12[0] = v3;
    v12[1] = v4;
    v13 = a1;
    v14 = v5;
    v15 = v6;
    v16 = 0;

    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(v12);
    v7 = *(v2 + 16);

    if (v7 == *(v2 + 16))
    {
      break;
    }

    __break(1u);
LABEL_7:
    swift_once();
  }

  return result;
}

uint64_t Entity.access<A>(keyPath:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v12 - v6;
  ObservationRegistrar = REEntityGetOrCreateObservationRegistrar();
  outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v7);
  outlined init with copy of ObservationRegistrar?(v7, v4);
  v9 = type metadata accessor for ObservationRegistrar();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    outlined destroy of ObservationRegistrar?(v7);
    return outlined destroy of ObservationRegistrar?(v4);
  }

  else
  {
    v12[1] = v1;
    lazy protocol witness table accessor for type Entity and conformance Entity();
    ObservationRegistrar.access<A, B>(_:keyPath:)();
    outlined destroy of ObservationRegistrar?(v7);
    return (*(v10 + 8))(v4, v9);
  }
}

Swift::Int HashableMetatype.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HashableMetatype<A>()
{
  Hasher.init(_seed:)();
  HashableMetatype.hash(into:)();
  return Hasher._finalize()();
}

uint64_t (*Entity.observable.modify(void *a1))()
{
  *a1 = v1;

  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t Entity.Observable.name.getter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  REEntityGetName();

  return String.init(cString:)();
}

uint64_t (*Entity.Observable.name.modify(uint64_t *a1))()
{
  a1[2] = *v1;
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  REEntityGetName();
  *a1 = String.init(cString:)();
  a1[1] = v4;
  return Entity.Observable.name.modify;
}

uint64_t Entity.Observable.isEnabled.getter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  return REEntityGetSelfEnabled();
}

uint64_t key path getter for Entity.Observable.isEnabled : Entity.Observable@<X0>(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  result = REEntityGetSelfEnabled();
  *a2 = result;
  return result;
}

uint64_t Entity.Observable.isEnabled.setter(char a1)
{
  MEMORY[0x1C68F9730](*(*v1 + 16), a1 & 1);

  return RENetworkMarkEntityMetadataDirty();
}

uint64_t key path getter for Entity.isEnabled : Entity@<X0>(_BYTE *a2@<X8>)
{
  result = REEntityGetSelfEnabled();
  *a2 = result;
  return result;
}

uint64_t key path setter for Entity.isEnabled : Entity(unsigned __int8 *a1, uint64_t *a2)
{
  MEMORY[0x1C68F9730](*(*a2 + 16), *a1);

  return RENetworkMarkEntityMetadataDirty();
}

uint64_t (*Entity.Observable.isEnabled.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = *v1;
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  *(a1 + 8) = REEntityGetSelfEnabled();
  return Entity.Observable.isEnabled.modify;
}

uint64_t Entity.Observable.isEnabled.modify(unsigned __int8 *a1)
{
  MEMORY[0x1C68F9730](*(*a1 + 16), a1[8]);

  return RENetworkMarkEntityMetadataDirty();
}

double Entity.Observable.children.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  *a2 = a1;

  return result;
}

uint64_t key path setter for Entity.components : Entity(uint64_t result, uint64_t a2)
{
  if (*(*result + 16) != *(*a2 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t (*Entity.Observable.children.modify(void *a1))()
{
  v3 = *v1;
  a1[1] = v3;
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  *a1 = v3;

  return Entity.Observable.children.modify;
}

double Entity.Observable.transform.getter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v3);
  if ((v4 & 1) == 0)
  {
    return v3[0];
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&static Transform.identity;
}

uint64_t (*Entity.Observable.transform.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xF0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = *v1;
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v4 + 128);
  if (*(v4 + 176))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v6 = static Transform.identity;
    v7 = xmmword_1EBEB2BB0;
    v8 = xmmword_1EBEB2BC0;
  }

  else
  {
    v6 = *(v4 + 128);
    v7 = *(v4 + 144);
    v8 = *(v4 + 160);
  }

  *(v4 + 192) = v6;
  *(v4 + 208) = v7;
  *(v4 + 224) = v8;
  return Entity.Observable.transform.modify;
}

double Entity.Observable.position.getter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v3);
  if ((v5 & 1) == 0)
  {
    return v4;
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&xmmword_1EBEB2BC0;
}

void (*Entity.Observable.position.modify(uint64_t *a1))(__n128 **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = *v1;
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v4);
  if (*(v4 + 48))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v6 = xmmword_1EBEB2BC0;
  }

  else
  {
    v6 = *(v4 + 32);
  }

  *(v4 + 64) = v6;
  return Entity.Observable.position.modify;
}

double Entity.Observable.scale.getter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v3);
  if ((v4 & 1) == 0)
  {
    return v3[0];
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&static Transform.identity;
}

void (*Entity.Observable.scale.modify(uint64_t *a1))(__n128 **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = *v1;
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v4);
  if (*(v4 + 48))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v6 = static Transform.identity;
  }

  else
  {
    v6 = *v4;
  }

  *(v4 + 64) = v6;
  return Entity.Observable.scale.modify;
}

double Entity.Observable.orientation.getter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v3);
  if ((v5 & 1) == 0)
  {
    return v4;
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&xmmword_1EBEB2BB0;
}

void (*Entity.Observable.orientation.modify(uint64_t *a1))(__n128 **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = *v1;
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v4);
  if (*(v4 + 48))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v6 = xmmword_1EBEB2BB0;
  }

  else
  {
    v6 = *(v4 + 16);
  }

  *(v4 + 64) = v6;
  return Entity.Observable.orientation.modify;
}

double Entity.Observable.components.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return result;
}

uint64_t (*Entity.Observable.components.modify(void *a1))()
{
  *a1 = *v1;

  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t (*Entity.Observable.Components.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  Entity.Observable.Components.subscript.getter(v15, a3, a4);
  return Entity.Observable.Components.subscript.modify;
}

uint64_t Entity.Observable.Components.subscript.getter@<X0>(ValueMetadata *a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{

  Entity.ComponentSet.subscript.getter(a2, a3, x8_0);
}

{

  Entity.ComponentSet.subscript.getter(a2, a3, x8_0);
}

uint64_t Entity.Observable.Components.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  specialized Entity.Observable.Components.subscript.setter(a1, a3, a4);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

{
  specialized Entity.Observable.Components.subscript.setter(a1, a2, a3, a4);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*Entity.Observable.Components.subscript.modify(void *a1, void *a2, ValueMetadata *a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v11 = type metadata accessor for Optional();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v10[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v10[6] = v14;
  Entity.Observable.Components.subscript.getter(a3, a4, v14);
  return Entity.Observable.Components.subscript.modify;
}

double Entity.proto_observable.getter@<D0>(void *a1@<X8>)
{
  *a1 = v1;

  return result;
}

uint64_t (*Entity.proto_observable.modify(void *a1))()
{
  *a1 = v1;

  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t Entity.Proto_Observable.name.getter()
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  REEntityGetName();

  return String.init(cString:)();
}

uint64_t key path getter for Entity.Observable.name : Entity.Observable@<X0>(uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  REEntityGetName();
  result = String.init(cString:)();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t (*Entity.Proto_Observable.name.modify(uint64_t *a1))()
{
  a1[2] = *v1;
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  REEntityGetName();
  *a1 = String.init(cString:)();
  a1[1] = v4;
  return Entity.Proto_Observable.name.modify;
}

void Entity.Observable.name.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    Entity.name.setter(v3, v2);
  }

  else
  {
    Entity.name.setter(*a1, v2);
  }
}

double Entity.Proto_Observable.children.getter@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  *a1 = v3;

  return result;
}

double key path getter for Entity.Observable.children : Entity.Observable@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  *a2 = v3;

  return result;
}

uint64_t Entity.Observable.children.setter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*a1 + 16);

  if (v3 != *(v2 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t (*Entity.Proto_Observable.children.modify(void *a1))()
{
  v3 = *v1;
  a1[1] = v3;
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  *a1 = v3;

  return Entity.Proto_Observable.children.modify;
}

uint64_t Entity.Observable.children.modify(uint64_t *a1, char a2)
{
  result = *a1;
  v4 = a1[1];
  v5 = *(result + 16);
  if ((a2 & 1) == 0)
  {

    if (v5 == *(v4 + 16))
    {
      return result;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  if (v5 != *(v4 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }
}

double Entity.Proto_Observable.transform.getter()
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v2);
  if ((v3 & 1) == 0)
  {
    return v2[0];
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&static Transform.identity;
}

uint64_t key path getter for Entity.Observable.transform : Entity.Observable@<X0>(__int128 *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  result = _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v8);
  if (v9)
  {
    if (one-time initialization token for identity != -1)
    {
      result = swift_once();
    }

    v5 = static Transform.identity;
    v6 = xmmword_1EBEB2BB0;
    v7 = xmmword_1EBEB2BC0;
  }

  else
  {
    v5 = v8[0];
    v6 = v8[1];
    v7 = v8[2];
  }

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t key path setter for Entity.Observable.transform : Entity.Observable(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *a2;
  v8[0] = *a1;
  v8[1] = v2;
  v9 = v4;
  v10 = v3;
  v11 = 0;

  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(v8);
  v6 = *(v5 + 16);

  if (v6 != *(v5 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t Entity.Observable.transform.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v4 = *v3;
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = 0;

  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(v7);
  v5 = *(v4 + 16);

  if (v5 != *(v4 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t (*Entity.Proto_Observable.transform.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xF0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = *v1;
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v4 + 128);
  if (*(v4 + 176))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v6 = static Transform.identity;
    v7 = xmmword_1EBEB2BB0;
    v8 = xmmword_1EBEB2BC0;
  }

  else
  {
    v6 = *(v4 + 128);
    v7 = *(v4 + 144);
    v8 = *(v4 + 160);
  }

  *(v4 + 192) = v6;
  *(v4 + 208) = v7;
  *(v4 + 224) = v8;
  return Entity.Proto_Observable.transform.modify;
}

void Entity.Observable.transform.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 192);
  v5 = *(*a1 + 200);
  v4 = *(*a1 + 208);
  v7 = *(*a1 + 216);
  v6 = *(*a1 + 224);
  v8 = *(*a1 + 232);
  v9 = *(*a1 + 56);
  if (a2)
  {
    *v2 = v3;
    v2[1] = v5;
    v2[2] = v4;
    v2[3] = v7;
    v2[4] = v6;
    v2[5] = v8;
    *(v2 + 48) = 0;

    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(v2);
    v10 = *(v9 + 16);

    v8 = *(v9 + 16);
    if (v10 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v2[8] = v3;
  v2[9] = v5;
  v2[10] = v4;
  v2[11] = v7;
  v2[12] = v6;
  v2[13] = v8;
  *(v2 + 112) = 0;

  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5((v2 + 8));
  v11 = *(v9 + 16);

  if (v11 != *(v9 + 16))
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

double Entity.Proto_Observable.position.getter()
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v2);
  if ((v4 & 1) == 0)
  {
    return v3;
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&xmmword_1EBEB2BC0;
}

uint64_t key path getter for Entity.Observable.position : Entity.Observable@<X0>(__int128 *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  result = _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v6);
  if (v8)
  {
    if (one-time initialization token for identity != -1)
    {
      result = swift_once();
    }

    v5 = xmmword_1EBEB2BC0;
  }

  else
  {
    v5 = v7;
  }

  *a2 = v5;
  return result;
}

uint64_t (*Entity.Proto_Observable.position.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = *v1;
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v4);
  if (*(v4 + 48))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v6 = xmmword_1EBEB2BC0;
  }

  else
  {
    v6 = *(v4 + 32);
  }

  *(v4 + 64) = v6;
  return Entity.Proto_Observable.position.modify;
}

double Entity.Proto_Observable.scale.getter()
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v2);
  if ((v3 & 1) == 0)
  {
    return v2[0];
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&static Transform.identity;
}

uint64_t key path getter for Entity.Observable.scale : Entity.Observable@<X0>(__int128 *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  result = _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v6);
  if (v7)
  {
    if (one-time initialization token for identity != -1)
    {
      result = swift_once();
    }

    v5 = static Transform.identity;
  }

  else
  {
    v5 = v6[0];
  }

  *a2 = v5;
  return result;
}

uint64_t (*Entity.Proto_Observable.scale.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = *v1;
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v4);
  if (*(v4 + 48))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v6 = static Transform.identity;
  }

  else
  {
    v6 = *v4;
  }

  *(v4 + 64) = v6;
  return Entity.Proto_Observable.scale.modify;
}

double Entity.Proto_Observable.orientation.getter()
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v2);
  if ((v4 & 1) == 0)
  {
    return v3;
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&xmmword_1EBEB2BB0;
}

uint64_t key path getter for Entity.Observable.orientation : Entity.Observable@<X0>(__int128 *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  result = _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v6);
  if (v8)
  {
    if (one-time initialization token for identity != -1)
    {
      result = swift_once();
    }

    v5 = xmmword_1EBEB2BB0;
  }

  else
  {
    v5 = v7;
  }

  *a2 = v5;
  return result;
}

uint64_t (*Entity.Proto_Observable.orientation.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = *v1;
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v4);
  if (*(v4 + 48))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v6 = xmmword_1EBEB2BB0;
  }

  else
  {
    v6 = *(v4 + 16);
  }

  *(v4 + 64) = v6;
  return Entity.Proto_Observable.orientation.modify;
}

void Entity.Observable.position.modify(__n128 **a1, uint64_t a2, void (*a3)(__n128))
{
  v3 = *a1;
  a3((*a1)[4]);

  free(v3);
}

double Entity.Proto_Observable.components.getter@<D0>(void *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t (*Entity.Proto_Observable.components.modify(void *a1))()
{
  *a1 = *v1;

  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t (*Entity.Proto_Observable.Components.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  Entity.Observable.Components.subscript.getter(v15, a3, a4);
  return Entity.Proto_Observable.Components.subscript.modify;
}

BOOL key path index equality operator for <A>(HashableMetatype<A>)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = v2;
  return static HashableMetatype.== infix(_:_:)(&v5, &v4);
}

uint64_t Entity.withMutation<A, B>(keyPath:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v20 - v11;
  ObservationRegistrar = REEntityGetObservationRegistrar();
  if (ObservationRegistrar)
  {
    outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v12);
    v14 = type metadata accessor for ObservationRegistrar();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) != 1)
    {
      v20[3] = v5;
      lazy protocol witness table accessor for type Entity and conformance Entity();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();
      v16 = (*(v15 + 8))(v12, v14);
      goto LABEL_6;
    }
  }

  else
  {
    v17 = type metadata accessor for ObservationRegistrar();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  }

  v16 = outlined destroy of ObservationRegistrar?(v12);
LABEL_6:
  v18 = v20[1];
  a2(v16);
  if (!v18)
  {
    (*(*(a3 - 8) + 56))(a4, 0, 1, a3);
  }

  return $defer #1 <A, B>() in Entity.withMutation<A, B>(keyPath:_:)(v5, a1);
}

uint64_t $defer #1 <A, B>() in Entity.withMutation<A, B>(keyPath:_:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v11 - v4;
  ObservationRegistrar = REEntityGetObservationRegistrar();
  if (ObservationRegistrar)
  {
    outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v5);
    v7 = type metadata accessor for ObservationRegistrar();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v5, 1, v7) != 1)
    {
      v11[1] = a1;
      lazy protocol witness table accessor for type Entity and conformance Entity();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
      return (*(v8 + 8))(v5, v7);
    }
  }

  else
  {
    v10 = type metadata accessor for ObservationRegistrar();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  }

  return outlined destroy of ObservationRegistrar?(v5);
}

uint64_t Entity.withMutation<A, B>(componentType:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v22 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v21 - v13;
  ObservationRegistrar = REEntityGetObservationRegistrar();
  if (ObservationRegistrar)
  {
    outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v14);
    v16 = type metadata accessor for ObservationRegistrar();
    if ((*(*(v16 - 8) + 48))(v14, 1, v16) != 1)
    {
      outlined destroy of ObservationRegistrar?(v14);
      v21[0] = a3;
      v21[1] = a5;
      v21[2] = a1;
      KeyPath = swift_getKeyPath();
      Entity.withMutation<A, B>(keyPath:_:)(KeyPath, a2, v22, a6);
    }
  }

  else
  {
    v19 = type metadata accessor for ObservationRegistrar();
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  }

  v20 = outlined destroy of ObservationRegistrar?(v14);
  result = (a2)(v20);
  if (!v6)
  {
    return (*(*(v22 - 8) + 56))(a6, 0, 1);
  }

  return result;
}

uint64_t specialized Entity.Observable.Components.subscript.setter(uint64_t a1, uint64_t a2, char *a3)
{
  v7 = *v3;
  v10 = *v3;

  specialized Entity.ComponentSet.subscript.setter(a1, a2, a2, a3);
  v8 = *(v10 + 16);

  if (v8 != *(v7 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Entity.Observable.Components.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = *v4;
  v11 = *v4;

  specialized Entity.ComponentSet.subscript.setter(a1, a3, a3, a4);
  v9 = *(v11 + 16);

  if (v9 != *(v8 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t keypath_get_11Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v5 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  v6 = *a1;
  v8[0] = *a2;
  v8[1] = v6;
  return a4(v8, v5, v4);
}

uint64_t keypath_set_21Tm(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Entity.name.setter(v1, v2);
}

uint64_t type metadata instantiation function for HashableMetatype(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t outlined destroy of ObservationRegistrar?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ObservationRegistrar?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *specialized static EmphasizeAnimations.createEmphasizeFloatAnimation(style:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 375, 0, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 404, 0, MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 318, 0, MEMORY[0x1E69E7CC0]);
  }

  specialized static EmphasizeAnimations.makeTransforms(_:_:)(v1, &v3);

  return v3;
}

uint64_t static QueryPredicateProtocol.everything.getter@<X0>(uint64_t (**x8_0)()@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for QueryPredicates.Constant(0, AssociatedTypeWitness, v5, v6);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Constant<A>, v7);
  return QueryPredicateProtocol.eraseToQueryPredicate()(v7, WitnessTable, x8_0);
}

uint64_t QueryPredicate.performNativeEntityQuery(for:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v1 + 56);

  v5 = v2(a1);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v2, v4);
  return v5;
}

uint64_t QueryPredicate.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = implicit closure #1 in QueryPredicate.init<A>(_:)(v13, v14, v15, v16);
  v19 = v18;
  v20 = implicit closure #3 in QueryPredicate.init<A>(_:)(a1, a2, a3, a4);
  v22 = v21;
  (*(v10 + 16))(v12, a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19QueryInternalizable_pMd, &_s17RealityFoundation19QueryInternalizable_pMR);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(a1, a3);
    outlined init with take of ForceEffectBase(v29, v31);
    outlined init with copy of __REAssetService(v31, v29);
    v23 = swift_allocObject();
    outlined init with take of ForceEffectBase(v29, v23 + 16);
    outlined init with take of ForceEffectBase(v31, v29);
    v24 = swift_allocObject();
    result = outlined init with take of ForceEffectBase(v29, v24 + 16);
    v26 = partial apply for implicit closure #8 in implicit closure #7 in QueryPredicate.init<A>(_:);
    v27 = partial apply for implicit closure #6 in implicit closure #5 in QueryPredicate.init<A>(_:);
  }

  else
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    outlined destroy of BodyTrackingComponent?(v29, &_s17RealityFoundation19QueryInternalizable_pSgMd, &_s17RealityFoundation19QueryInternalizable_pSgMR);
    v27 = makeCustomPredicate<A>(predicate:)(a1, a3, a4);
    v23 = v28;
    result = (*(v10 + 8))(a1, a3);
    v26 = 0;
    v24 = 0;
  }

  *a5 = v17;
  a5[1] = v19;
  a5[2] = v27;
  a5[3] = v23;
  a5[4] = v20;
  a5[5] = v22;
  a5[6] = v26;
  a5[7] = v24;
  return result;
}

uint64_t (*implicit closure #1 in QueryPredicate.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return partial apply for implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:);
}

uint64_t (*implicit closure #3 in QueryPredicate.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return partial apply for implicit closure #4 in implicit closure #3 in QueryPredicate.init<A>(_:);
}

uint64_t implicit closure #6 in implicit closure #5 in QueryPredicate.init<A>(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t implicit closure #8 in implicit closure #7 in QueryPredicate.init<A>(_:)(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t (*makeCustomPredicate<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Entity();
  if (swift_dynamicCastMetatype())
  {
    (*(v6 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
    v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    v12 = (v11 + v10);
    v13 = partial apply for closure #1 in makeCustomPredicate<A>(predicate:);
LABEL_8:
    v19 = v13;
    (*(v6 + 32))(v12, v8, a2);
    return v19;
  }

  v14 = swift_conformsToProtocol2();
  if (v14)
  {
    v15 = AssociatedTypeWitness == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = v14;
    (*(v6 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
    v17 = (*(v6 + 80) + 48) & ~*(v6 + 80);
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a3;
    v18[4] = AssociatedTypeWitness;
    v18[5] = v16;
    v12 = v18 + v17;
    v13 = partial apply for closure #2 in makeCustomPredicate<A>(predicate:);
    goto LABEL_8;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicate<A>@<X0>(_BYTE *a1@<X8>)
{
  result = QueryPredicate.evaluate(value:)();
  *a1 = result & 1;
  return result;
}

uint64_t QueryPredicateProtocol.eraseToQueryPredicate()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return QueryPredicate.init<A>(_:)(v9, AssociatedTypeWitness, a1, a2, a3);
}

uint64_t instantiation function for generic protocol witness table for QueryPredicate<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(protocol conformance descriptor for QueryPredicate<A>, a2);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata instantiation function for QueryPredicate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.Constant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.Constant<A>@<X0>(_BYTE *a2@<X8>)
{
  result = specialized QueryPredicates.Constant.evaluate(value:)(*v2);
  *a2 = result & 1;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.Constant<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Constant<A>, a2);
  *(a1 + 8) = result;
  return result;
}

uint64_t thunk #1 (_:) in createEntityPredicate(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v12[3] = MEMORY[0x1E69E6B70];
  v12[0] = a1;
  outlined init with copy of Any(v12, v11);
  swift_dynamicCast();
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v3 = swift_dynamicCastClassUnconditional();
    goto LABEL_3;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(v10);
    if (v6)
    {
      v7 = (*(v6 + 232))();
      v8 = *(v7 + 16);

      MEMORY[0x1C68F9740](v8, 0);
      *(v7 + 16) = v10;
      MEMORY[0x1C68F9740](v10, v7);

      v4 = v7;
      goto LABEL_7;
    }

    v3 = makeEntity(for:)(v10);
LABEL_3:
    v4 = v3;
LABEL_7:
    v9 = a2(v4);

    return v9 & 1;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in makeCustomPredicate<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = implicit closure #1 in closure #1 in makeCustomPredicate<A>(predicate:)(a1, a2, a3);
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v5;
  v8[5] = v7;
  v16 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.QueryEvaluable.Value) -> (@unowned Bool);
  v17 = v8;
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb10RealityKit6EntityCcMd, &_sSb10RealityKit6EntityCcMR);
  swift_dynamicCast();
  v9 = swift_allocObject();
  *(v9 + 16) = v15;
  v10 = swift_allocObject();
  *(v10 + 16) = _s10RealityKit6EntityCSbIegnr_ACSbIeggd_TRTA_0;
  *(v10 + 24) = v9;
  v14[4] = partial apply for thunk #1 (_:) in createEntityPredicate(_:);
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
  v14[3] = &block_descriptor_32;
  v11 = _Block_copy(v14);

  CustomEntityPredicate = REQueryCreateCustomEntityPredicate();

  _Block_release(v11);
  return CustomEntityPredicate;
}

uint64_t (*implicit closure #1 in closure #1 in makeCustomPredicate<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in closure #1 in makeCustomPredicate<A>(predicate:);
}

uint64_t closure #2 in makeCustomPredicate<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v13, v14, v11);
  v15 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  *(v16 + 4) = a1;
  *(v16 + 5) = a2;
  (*(v9 + 32))(&v16[v15], v12, a4);
  aBlock[4] = partial apply for thunk #1 <A>(_:) in closure #2 in makeCustomPredicate<A>(predicate:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_35;
  v17 = _Block_copy(aBlock);

  CustomComponentPredicate = REQueryCreateCustomComponentPredicate();
  _Block_release(v17);
  return CustomComponentPredicate;
}

uint64_t thunk #1 <A>(_:) in closure #2 in makeCustomPredicate<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v16[-v13];
  closure #1 in thunk #1 <A>(_:) in closure #2 in makeCustomPredicate<A>(predicate:)(a2, a3, a1, v18);
  outlined init with copy of Component?(v18, &v16[8]);
  if (*&v16[32])
  {
    outlined init with take of ForceEffectBase(&v16[8], v17);
    outlined init with copy of __REAssetService(v17, &v16[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
    swift_dynamicCast();
    (*(v10 + 24))(&v16[7], v14, a5, v10);
    __swift_destroy_boxed_opaque_existential_1(v17);
    outlined destroy of BodyTrackingComponent?(v18, &_s10RealityKit9Component_pSgMd, &_s10RealityKit9Component_pSgMR);
    (*(v12 + 8))(v14, AssociatedTypeWitness);
    return v16[7];
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v18, &_s10RealityKit9Component_pSgMd, &_s10RealityKit9Component_pSgMR);
    outlined destroy of BodyTrackingComponent?(&v16[8], &_s10RealityKit9Component_pSgMd, &_s10RealityKit9Component_pSgMR);
    return 0;
  }
}

uint64_t closure #1 in thunk #1 <A>(_:) in closure #2 in makeCustomPredicate<A>(predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  (*(a2 + 80))(v17);
  if (LODWORD(v17[0]) != 36)
  {
    v17[0] = a3;
    v10 = *(a2 + 64);
    a4[3] = a1;
    a4[4] = a2;
    __swift_allocate_boxed_opaque_existential_1(a4);
    return v10(v17, a1, a2);
  }

  Entity = REComponentGetEntity();
  v17[3] = MEMORY[0x1E69E6B70];
  v17[0] = Entity;
  outlined init with copy of Any(v17, v16);
  swift_dynamicCast();
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v9 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
      __break(1u);
      return result;
    }

    specialized static Entity.entityInfoType(_:)(v15);
    if (v12)
    {
      v13 = (*(v12 + 232))();
      v14 = *(v13 + 16);

      MEMORY[0x1C68F9740](v14, 0);
      *(v13 + 16) = v15;
      MEMORY[0x1C68F9740](v15, v13);

      v9 = v13;
    }

    else
    {
      v9 = makeEntity(for:)(v15);
    }
  }

  v17[0] = v9;
  Entity.ComponentSet.existentialBox(for:)(a1, a2, a4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.QueryEvaluable.Value) -> (@unowned Bool)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result & 1;
  return result;
}

double block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with copy of Component?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pSgMd, &_s10RealityKit9Component_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for implicit closure #6 in implicit closure #5 in QueryPredicate.init<A>(_:)()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t partial apply for implicit closure #8 in implicit closure #7 in QueryPredicate.init<A>(_:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t objectdestroy_43Tm()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t AudioFileResource.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AudioFileResource.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v7[0] = *(v1 + 40);
  v7[1] = v2;
  v8[0] = *(v1 + 72);
  v3 = v8[0];
  *(v8 + 13) = *(v1 + 85);
  v4 = *(v8 + 13);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 45) = v4;
  return outlined init with copy of AudioFileResource.Configuration(v7, &v6);
}

uint64_t AudioFileResource.init(fromCore:)(uint64_t a1)
{
  v3 = REAssetCopyDescription();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *&v20[0] = 47;
  *(&v20[0] + 1) = 0xE100000000000000;
  v19[2] = v20;
  v7 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, _sSlsSQ7ElementRpzrlE5split9separator9maxSplits25omittingEmptySubsequencesSay11SubSequenceQzGAB_SiSbtFSbABXEfU_SS_TG5TA_0, v19, v4, v6, v20);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 32 * v8);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    swift_bridgeObjectRetain_n();

    v14 = MEMORY[0x1C68F3380](v10, v11, v12, v13);
    v16 = v15;
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v14 = 0;
    v16 = 0xE000000000000000;
  }

  *(v1 + 24) = v14;
  *(v1 + 32) = v16;
  if ((REAssetHandleIsLoaded() & 1) == 0)
  {
    REAssetHandleLoadNow();
  }

  AudioFileResource.Configuration.init(from:)(v20);
  v17 = v20[1];
  *(v1 + 40) = v20[0];
  *(v1 + 56) = v17;
  *(v1 + 72) = v21[0];
  *(v1 + 85) = *(v21 + 13);
  return AudioResource.init(fromCore:)(a1);
}

uint64_t AudioFileResource.init(assetRef:url:name:configuration:legacyInputMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, char *a6)
{
  v7 = v6;
  v12 = a5[1];
  v76 = *a5;
  v77 = v12;
  v78[0] = a5[2];
  *(v78 + 13) = *(a5 + 45);
  v13 = *a6;
  if (!REAudioFileAssetIsCompletelyLoaded())
  {
    v17 = 0;
    v16 = 0;
    if (a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  AudioFileResource.Configuration.init(from:)(&v70);
  v73 = v70;
  v74 = v71;
  v75[0] = v72[0];
  *(v75 + 13) = *(v72 + 13);
  InputMode = REAudioFileAssetGetInputMode();
  v70 = v76;
  v71 = v77;
  v72[0] = v78[0];
  *(v72 + 13) = *(v78 + 13);
  v68[0] = v73;
  v68[1] = v74;
  v69[0] = v75[0];
  *(v69 + 13) = *(v75 + 13);
  v15 = specialized static AudioFileResource.Configuration.== infix(_:_:)(&v70, v68);
  outlined destroy of AudioFileResource.Configuration(&v73);
  if (v15 && InputMode == (0x20001u >> (8 * v13)))
  {
    v16 = 0;
    v17 = 1;
    if (a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v66 = a2;
  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.audio);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1C1358000, v34, v35, "[API/RealityKit] AudioFileResource initialized with different CreateOptions. Cloning the internal asset.", v36, 2u);
    MEMORY[0x1C6902A30](v36, -1, -1);
  }

  v37 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v37 + 120, &v70);
  v38 = *(&v71 + 1);
  v39 = *&v72[0];
  __swift_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
  (*(v39 + 32))(v38, v39);
  __swift_destroy_boxed_opaque_existential_1(&v70);
  v70 = v76;
  v71 = v77;
  v72[0] = v78[0];
  *(v72 + 13) = *(v78 + 13);
  type metadata accessor for REAudioFileAssetConfigurationWrapper();
  swift_initStackObject();
  outlined init with copy of AudioFileResource.Configuration(&v76, v68);
  REAudioFileAssetConfigurationWrapper.init(configuration:)(&v70);
  REAudioFileAssetConfigurationSetInputMode();
  v16 = REAudioFileAssetCloneWithConfiguration();

  v17 = 0;
  if (v16)
  {
    a1 = v16;
  }

  a2 = v66;
  if (!a4)
  {
LABEL_7:
    a3 = URL.lastPathComponent.getter();
    a4 = v18;
  }

LABEL_8:
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  v19 = v77;
  *(v7 + 40) = v76;
  *(v7 + 56) = v19;
  *(v7 + 72) = v78[0];
  *(v7 + 85) = *(v78 + 13);
  outlined init with copy of AudioFileResource.Configuration(&v76, &v73);
  v20 = AudioResource.init(fromCore:)(a1);
  if (v16)
  {
    RERelease();
  }

  if (v17)
  {
    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 8))(a2, v21);
    outlined destroy of AudioFileResource.Configuration(&v76);
  }

  else
  {
    if ((REAssetHandleIsLoaded() & 1) != 0 || (REAssetHandleLoadNow(), !REAssetHandleLoadFailed()))
    {
      v40 = 0xE900000000000067;
      v41 = 0x6E696D6165727473;
      if (v76)
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined destroy of AudioFileResource.Configuration(&v76);
        if ((v42 & 1) == 0)
        {
          v41 = 0x6564616F6C657270;
          v40 = 0xE900000000000064;
        }
      }

      else
      {

        outlined destroy of AudioFileResource.Configuration(&v76);
      }

      v67 = a2;
      if (one-time initialization token for audio != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.audio);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *&v73 = v47;
        *v46 = 136315906;
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v40, &v73);

        *(v46 + 4) = v48;
        *(v46 + 12) = 2080;
        v49 = *(v20 + 24);
        v50 = *(v20 + 32);

        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v73);

        *(v46 + 14) = v51;
        *(v46 + 22) = 2048;
        *(v46 + 24) = REAudioFileAssetGetAudioAssetID();
        *(v46 + 32) = 2048;
        *(v46 + 34) = REAssetGetAssetId();
        _os_log_impl(&dword_1C1358000, v44, v45, "[API/RealityKit] Loading %s AudioFileResource %s with audioAssetID: %llu and REAssetID: %llu", v46, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1C6902A30](v47, -1, -1);
        MEMORY[0x1C6902A30](v46, -1, -1);
      }

      else
      {
      }

      v52 = REAudioFileGetAVAudioFormat();
      if (v52)
      {
        v53 = v52;
        AVAudioFormat.validateAudioFormatSupportsMultiChannel()();
        if (v54)
        {
          v55 = type metadata accessor for URL();
          (*(*(v55 - 8) + 8))(v67, v55);

          return v20;
        }

        v57 = [objc_opt_self() defaultManager];
        v58 = URL.path.getter();
        v59 = MEMORY[0x1C68F3280](v58);

        v60 = [v57 isReadableFileAtPath_];

        if (v60)
        {
          v61 = type metadata accessor for URL();
          (*(*(v61 - 8) + 8))(v67, v61);

          return v20;
        }

        v62 = URL.path(percentEncoded:)(1);
        lazy protocol witness table accessor for type AudioFileResource.Error and conformance AudioFileResource.Error();
        swift_allocError();
        *v63 = v62;
        *(v63 + 16) = 1;
        swift_willThrow();
      }

      else
      {
        lazy protocol witness table accessor for type AVAudioFormat.ValidationError and conformance AVAudioFormat.ValidationError();
        swift_allocError();
        *v56 = 1;
        swift_willThrow();
      }

      v64 = type metadata accessor for URL();
      (*(*(v64 - 8) + 8))(v67, v64);
      return v20;
    }

    outlined destroy of AudioFileResource.Configuration(&v76);
    v22 = REAssetCopyDescription();
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    FailedMessage = REAssetHandleCopyLoadFailedMessage();
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *&v73 = v23;
    *(&v73 + 1) = v25;

    MEMORY[0x1C68F3410](8250, 0xE200000000000000);

    MEMORY[0x1C68F3410](v27, v29);

    v30 = v73;
    lazy protocol witness table accessor for type AudioResource.CoreREError and conformance AudioResource.CoreREError();
    swift_allocError();
    *v31 = v30;
    swift_willThrow();

    v32 = type metadata accessor for URL();
    (*(*(v32 - 8) + 8))(a2, v32);
  }

  return v20;
}

uint64_t key path setter for AudioFileResource.loadingStrategy : AudioFileResource(_BYTE *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  if (*a1)
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v3 = 1;
  }

  return MEMORY[0x1EEDFA838](v2, v3 & 1, v4);
}

uint64_t AudioFileResource.loadingStrategy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = REAudioFileAssetGetStreaming();
  *a1 = result ^ 1;
  return result;
}

uint64_t AudioFileResource.loadingStrategy.setter(_BYTE *a1)
{
  v2 = *(v1 + 16);
  if (*a1)
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v3 = 1;
  }

  return MEMORY[0x1EEDFA838](v2, v3 & 1, v4);
}

uint64_t (*AudioFileResource.loadingStrategy.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = REAudioFileAssetGetStreaming() ^ 1;
  return AudioFileResource.loadingStrategy.modify;
}

uint64_t AudioFileResource.loadingStrategy.modify(uint64_t *a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v2 = 1;
  }

  v3 = *a1;

  return MEMORY[0x1EEDFA838](v3, v2 & 1, v4);
}

uint64_t (*AudioFileResource.shouldLoop.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = REAudioFileAssetGetLoopCount() == -1;
  return AudioFileResource.shouldLoop.modify;
}

double AudioFileResource.__ivar_destroyer()
{

  return result;
}

void *AudioFileResource.deinit()
{
  v1 = v0;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.audio);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = REAssetGetAssetId();

    _os_log_impl(&dword_1C1358000, v3, v4, "[API/RealityKit] AudioResource.deinit() for REAssetID: %llu", v5, 0xCu);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  else
  {
  }

  REAssetSetSwiftObject();
  RERelease();

  return v1;
}

uint64_t AudioFileResource.__deallocating_deinit()
{
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.audio);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = REAssetGetAssetId();

    _os_log_impl(&dword_1C1358000, v1, v2, "[API/RealityKit] AudioResource.deinit() for REAssetID: %llu", v3, 0xCu);
    MEMORY[0x1C6902A30](v3, -1, -1);
  }

  else
  {
  }

  REAssetSetSwiftObject();
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t vtable thunk for AudioResource.__allocating_init(fromCore:) dispatching to AudioFileResource.__allocating_init(fromCore:)(uint64_t a1)
{
  type metadata accessor for AudioFileResource();
  swift_allocObject();
  return AudioFileResource.init(fromCore:)(a1);
}

Swift::Int AudioFileResource.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v0 + 16));
  return Hasher._finalize()();
}

uint64_t AudioFileResource.duration.getter()
{
  REAudioFileAssetGetLengthInSeconds();

  return static Duration.seconds(_:)();
}

uint64_t AudioFileResource.init(named:in:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v5 + 96) = a3;
  *(v5 + 104) = v4;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v5 + 112) = swift_task_alloc();
  v7 = type metadata accessor for URL();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  v8 = a4[1];
  *(v5 + 16) = *a4;
  *(v5 + 32) = v8;
  *(v5 + 48) = a4[2];
  *(v5 + 61) = *(a4 + 45);
  type metadata accessor for MainActor();
  *(v5 + 152) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 160) = v10;
  *(v5 + 168) = v9;

  return MEMORY[0x1EEE6DFA0](AudioFileResource.init(named:in:configuration:), v10, v9);
}

uint64_t AudioFileResource.init(named:in:configuration:)()
{
  v43 = v0;
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    v2 = [objc_opt_self() mainBundle];
    v1 = 0;
  }

  *(v0 + 176) = v1;
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = v1;
  static AudioFileResource.url(forAssetNamed:in:)(v7, v6, v2, v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v9 = *(v0 + 112);
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    outlined destroy of AudioFileResource.Configuration(v0 + 16);

    outlined destroy of URL?(v9);
    lazy protocol witness table accessor for type AudioFileResource.Error and conformance AudioFileResource.Error();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = v10;
    *(v12 + 16) = 0;
    swift_willThrow();

    v33 = *(v0 + 8);

    return v33();
  }

  v14 = *(v0 + 80);
  v13 = *(v0 + 88);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 112), *(v0 + 120));
  v15 = URL.pathExtension.getter();
  v17 = v16;
  v18 = MEMORY[0x1C68F3280](v14, v13);
  v19 = [v18 pathExtension];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (v15 == v20 && v17 == v22)
  {

LABEL_10:
    v24 = *(v0 + 88);

    v25 = *(v0 + 80);
    goto LABEL_12;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_10;
  }

  v26 = *(v0 + 88);
  *&v40[0] = *(v0 + 80);
  *(&v40[0] + 1) = v26;

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  v27 = URL.pathExtension.getter();
  v29 = v28;

  MEMORY[0x1C68F3410](v27, v29);

  v24 = *(&v40[0] + 1);
  v25 = *&v40[0];
LABEL_12:
  v30 = *(v0 + 96);
  v31 = *(v0 + 32);
  v40[0] = *(v0 + 16);
  v40[1] = v31;
  v41[0] = *(v0 + 48);
  *(v41 + 13) = *(v0 + 61);
  v42[0] = 1;
  v32 = static AudioFileResource.makeAssetRef(bundle:name:configuration:inputMode:)(v30, v25, v24, v40, v42);
  *(v0 + 184) = v32;
  v35 = v32;

  v36 = URL.absoluteString.getter();
  v38 = v37;
  *(v0 + 192) = v37;
  v39 = swift_task_alloc();
  *(v0 + 200) = v39;
  *v39 = v0;
  v39[1] = AudioFileResource.init(named:in:configuration:);

  return specialized static AudioResource.loadAssetWithSharedAssetService(asset:debugAssetName:)(v35, v36, v38);
}

{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    outlined destroy of AudioFileResource.Configuration(v2 + 16);

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = AudioFileResource.init(named:in:configuration:);
  }

  else
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = AudioFileResource.init(named:in:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{
  v23 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);

  (*(v5 + 16))(v4, v3, v6);
  v9 = *(v0 + 32);
  v20[0] = *(v0 + 16);
  v20[1] = v9;
  v21[0] = *(v0 + 48);
  *(v21 + 13) = *(v0 + 61);
  v22[0] = 1;
  type metadata accessor for AudioFileResource();
  swift_allocObject();
  v10 = AudioFileResource.init(assetRef:url:name:configuration:legacyInputMode:)(v2, v4, v8, v7, v20, v22);
  v11 = *(v0 + 176);
  v12 = *(v0 + 144);
  if (v1)
  {
    v13 = *(v0 + 120);
    v14 = *(v0 + 128);
    RERelease();

    (*(v14 + 8))(v12, v13);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 128);
    v18 = *(v0 + 120);
    RERelease();

    (*(v17 + 8))(v12, v18);

    v19 = *(v0 + 8);

    return v19(v10);
  }
}

{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];

  RERelease();

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t AudioFileResource.init(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x1EEE6DFA0](AudioFileResource.init(named:from:in:), v8, v7);
}

uint64_t AudioFileResource.init(named:from:in:)()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v8 = v0[4];
  v9 = v0[5];

  MEMORY[0x1C68F3410](58, 0xE100000000000000);

  MEMORY[0x1C68F3410](v3, v2);

  v0[11] = v9;
  static LoadableResource.getAssetRefFromRealityFileInBundle(named:in:)(v8, v9, v1);
  v5 = *(v4 + 16);
  v0[12] = v5;
  RERetain();

  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = AudioFileResource.init(named:from:in:);

  return specialized static AudioResource.loadAssetWithSharedAssetService(asset:debugAssetName:)(v5, v8, v9);
}

{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = AudioFileResource.init(named:from:in:);
  }

  else
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = AudioFileResource.init(named:from:in:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{
  v18 = v0;

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.audio);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315906;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v17);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2048;
    *(v8 + 14) = REAudioFileAssetGetAudioAssetID();
    *(v8 + 22) = 2048;
    *(v8 + 24) = REAssetGetAssetId();
    *(v8 + 32) = 2080;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v17);

    *(v8 + 34) = v11;
    _os_log_impl(&dword_1C1358000, v2, v3, "[API/RealityKit] Loading AudioFileResource %s with audioAssetID: %llu and REAssetID: %llu from scene: %s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1C6902A30](v9, -1, -1);
    MEMORY[0x1C6902A30](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[12];
  v13 = v0[6];
  type metadata accessor for AudioFileResource();
  swift_allocObject();
  v14 = AudioFileResource.init(fromCore:)(v12);
  RERelease();

  v15 = v0[1];

  return v15(v14);
}

{

  RERelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AudioFileResource.init(contentsOf:withName:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = a3;
  *(v4 + 80) = a1;
  v6 = type metadata accessor for URL();
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  *(v4 + 48) = a4[2];
  *(v4 + 61) = *(a4 + 45);
  type metadata accessor for MainActor();
  *(v4 + 128) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 136) = v9;
  *(v4 + 144) = v8;

  return MEMORY[0x1EEE6DFA0](AudioFileResource.init(contentsOf:withName:configuration:), v9, v8);
}

uint64_t AudioFileResource.init(contentsOf:withName:configuration:)()
{
  v15 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v12[0] = *(v0 + 16);
  v12[1] = v4;
  *v13 = *(v0 + 48);
  *&v13[13] = *(v0 + 61);
  v14[0] = 1;
  v5 = specialized static AudioFileResource.makeAssetRef(from:withName:configuration:inputMode:)(v3, v1, v2, v12, v14);
  *(v0 + 152) = v5;
  v6 = v5;
  v7 = URL.absoluteString.getter();
  v9 = v8;
  *(v0 + 160) = v8;
  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  *v10 = v0;
  v10[1] = AudioFileResource.init(contentsOf:withName:configuration:);

  return specialized static AudioResource.loadAssetWithSharedAssetService(asset:debugAssetName:)(v6, v7, v9);
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    outlined destroy of AudioFileResource.Configuration(v2 + 16);

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = AudioFileResource.init(contentsOf:withName:configuration:);
  }

  else
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = AudioFileResource.init(contentsOf:withName:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{
  v26 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);

  (*(v3 + 16))(v1, v5, v2);
  if (v4)
  {
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);
  }

  else
  {
    v6 = URL.lastPathComponent.getter();
    v7 = v8;
  }

  v9 = *(v0 + 176);
  v10 = *(v0 + 152);
  v11 = *(v0 + 120);
  v12 = *(v0 + 32);
  v23[0] = *(v0 + 16);
  v23[1] = v12;
  *v24 = *(v0 + 48);
  *&v24[13] = *(v0 + 61);
  v25[0] = 1;
  type metadata accessor for AudioFileResource();
  swift_allocObject();
  v13 = AudioFileResource.init(assetRef:url:name:configuration:legacyInputMode:)(v10, v11, v6, v7, v23, v25);
  if (v9)
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 112);
    v16 = *(v0 + 80);
    RERelease();
    (*(v15 + 8))(v16, v14);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 112);
    v20 = *(v0 + 104);
    v21 = *(v0 + 80);
    RERelease();
    (*(v19 + 8))(v21, v20);

    v22 = *(v0 + 8);

    return v22(v13);
  }
}

{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];

  RERelease();
  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t AudioFileResource.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20[-v7 - 8];
  v21 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C1897FD0;
  *(v9 + 32) = 1701667182;
  *(v9 + 40) = 0xE400000000000000;
  v10 = *(v1 + 32);
  v11 = MEMORY[0x1E69E6158];
  *(v9 + 48) = *(v1 + 24);
  *(v9 + 56) = v10;
  *(v9 + 72) = v11;
  strcpy((v9 + 80), "configuration");
  *(v9 + 94) = -4864;
  v12 = *(v1 + 56);
  v22[0] = *(v1 + 40);
  v22[1] = v12;
  v23[0] = *(v1 + 72);
  *(v23 + 13) = *(v1 + 85);
  *(v9 + 120) = &type metadata for AudioFileResource.Configuration;
  v13 = swift_allocObject();
  *(v9 + 96) = v13;
  v14 = *(v1 + 56);
  v13[1] = *(v1 + 40);
  v13[2] = v14;
  v13[3] = *(v1 + 72);
  *(v13 + 61) = *(v1 + 85);
  *(v9 + 128) = 0x6E6F697461727564;
  *(v9 + 136) = 0xE800000000000000;

  outlined init with copy of AudioFileResource.Configuration(v22, v20);
  REAudioFileAssetGetLengthInSeconds();
  v15 = static Duration.seconds(_:)();
  *(v9 + 168) = MEMORY[0x1E69E7B30];
  *(v9 + 144) = v15;
  *(v9 + 152) = v16;
  v17 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  type metadata accessor for AudioFileResource();
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

unint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t _sSlsSQ7ElementRpzrlE5split9separator9maxSplits25omittingEmptySubsequencesSay11SubSequenceQzGAB_SiSbtFSbABXEfU_SS_TG5TA_0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized static AudioFileResource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  AudioFileResource.CreateOptions.init(from:)(v8);
  AudioFileResource.CreateOptions.init(from:)(v10);
  v6[0] = v8[0];
  v6[1] = v8[1];
  v6[2] = v8[2];
  v7 = v9;
  v4[0] = v10[0];
  v4[1] = v10[1];
  v4[2] = v10[2];
  v5 = v11;
  v2 = specialized static AudioFileResource.CreateOptions.== infix(_:_:)(v6, v4);
  outlined destroy of AudioFileResource.CreateOptions(v10);
  outlined destroy of AudioFileResource.CreateOptions(v8);
  if (v2)
  {
    return REAudioFileAssetIsEqual();
  }

  else
  {
    return 0;
  }
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AudioFileResource and conformance AudioResource()
{
  result = lazy protocol witness table cache variable for type AudioFileResource and conformance AudioResource;
  if (!lazy protocol witness table cache variable for type AudioFileResource and conformance AudioResource)
  {
    v3 = type metadata accessor for AudioFileResource();
    result = swift_getWitnessTable(protocol conformance descriptor for AudioResource, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioFileResource and conformance AudioResource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AVAudioFormat.ValidationError and conformance AVAudioFormat.ValidationError()
{
  result = lazy protocol witness table cache variable for type AVAudioFormat.ValidationError and conformance AVAudioFormat.ValidationError;
  if (!lazy protocol witness table cache variable for type AVAudioFormat.ValidationError and conformance AVAudioFormat.ValidationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AVAudioFormat.ValidationError, &type metadata for AVAudioFormat.ValidationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AVAudioFormat.ValidationError and conformance AVAudioFormat.ValidationError);
  }

  return result;
}

uint64_t RKChangeSceneActionBasicTechnique.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC17RealityFoundation33RKChangeSceneActionBasicTechnique_targetSceneIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RKChangeSceneActionBasicTechnique(uint64_t a1)
{
  result = type metadata singleton initialization cache for RKChangeSceneActionBasicTechnique;
  if (!type metadata singleton initialization cache for RKChangeSceneActionBasicTechnique)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for RKChangeSceneActionBasicTechnique(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

Swift::Int LowLevelMesh.VertexSemantic.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

_BYTE *LowLevelMesh.Attribute.init(semantic:format:layoutIndex:offset:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a4;
  *(a5 + 24) = a3;
  return result;
}

RealityFoundation::LowLevelMesh::Layout __swiftcall LowLevelMesh.Layout.init(bufferIndex:bufferOffset:bufferStride:)(Swift::Int bufferIndex, Swift::Int bufferOffset, Swift::Int bufferStride)
{
  *v3 = bufferIndex;
  v3[1] = bufferOffset;
  v3[2] = bufferStride;
  result.bufferStride = bufferStride;
  result.bufferOffset = bufferOffset;
  result.bufferIndex = bufferIndex;
  return result;
}

void LowLevelMesh.Descriptor.init(vertexCapacity:vertexAttributes:vertexLayouts:indexCapacity:indexType:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a5;
  v7 = a4;
  v9 = a2;
  v10 = a1;
  v12 = *(a3 + 16);
  if (v12)
  {
    v35 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v15 = v35;
    v16 = (a3 + 32);
    v17 = v35[2];
    do
    {
      v19 = *v16;
      v16 += 3;
      v18 = v19;
      v36 = v15;
      v20 = v15[3];
      v21 = v17 + 1;
      if (v17 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v17 + 1, 1);
        v15 = v36;
      }

      v15[2] = v21;
      v15[v17++ + 4] = v18;
      --v12;
    }

    while (v12);
    v6 = a5;
    v7 = a4;
    v10 = a1;
    v9 = a2;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
    v21 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v21)
    {
      v22 = 0;
      goto LABEL_20;
    }
  }

  v22 = v15[4];
  v23 = v21 - 1;
  if (v21 != 1)
  {
    if (v21 >= 5)
    {
      v24 = v23 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v25 = vdupq_n_s64(v22);
      v26 = (v15 + 7);
      v27 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      v28 = v25;
      do
      {
        v25 = vbslq_s8(vcgtq_s64(v25, v26[-1]), v25, v26[-1]);
        v28 = vbslq_s8(vcgtq_s64(v28, *v26), v28, *v26);
        v26 += 2;
        v27 -= 4;
      }

      while (v27);
      v29 = vbslq_s8(vcgtq_s64(v25, v28), v25, v28);
      v30 = vextq_s8(v29, v29, 8uLL).u64[0];
      v22 = vbsl_s8(vcgtd_s64(v29.i64[0], v30), *v29.i8, v30);
      if (v23 == (v23 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v24 = 1;
    }

    v31 = v21 - v24;
    v32 = 8 * v24 + 32;
    do
    {
      if (v22 <= *(v15 + v32))
      {
        v22 = *(v15 + v32);
      }

      v32 += 8;
      --v31;
    }

    while (v31);
  }

LABEL_20:

  if (__OFADD__(v22, 1))
  {
    __break(1u);
  }

  else
  {
    *a6 = v22 + 1;
    a6[1] = v10;
    a6[2] = v9;
    a6[3] = a3;
    a6[4] = v7;
    a6[5] = v6;
  }
}

int64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

void LowLevelMesh.Descriptor.vertexLayouts.setter(uint64_t a1)
{

  *(v1 + 24) = a1;

  LowLevelMesh.Descriptor.vertexLayouts.didset();
}

void LowLevelMesh.Descriptor.vertexLayouts.didset()
{
  v1 = v0;
  v2 = v0[3];
  v3 = *(v2 + 16);
  if (!v3)
  {
    v15 = 0;
LABEL_18:
    *v1 = v15;
    return;
  }

  v28 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = 0;
  v5 = v28;
  v6 = (v2 + 32);
  v7 = v28[2];
  do
  {
    v9 = *v6;
    v6 += 3;
    v8 = v9;
    v29 = v5;
    v10 = v5[3];
    if (v7 + v4 >= v10 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + v4 + 1, 1);
      v5 = v29;
    }

    v11 = v4 + 1;
    v5[2] = v7 + v4 + 1;
    v5[v7 + 4 + v4] = v8;
    v4 = v11;
  }

  while (v3 != v11);
  v12 = v5[4];
  if (v7 + v11 != 1)
  {
    v13 = v3 + v7;
    if ((v3 + v7) >= 5)
    {
      v16 = v13 - 1;
      v17 = (v13 - 1) & 0xFFFFFFFFFFFFFFFCLL;
      v14 = v17 | 1;
      v18 = vdupq_n_s64(v12);
      v19 = (v5 + 7);
      v20 = v17;
      v21 = v18;
      do
      {
        v18 = vbslq_s8(vcgtq_s64(v18, v19[-1]), v18, v19[-1]);
        v21 = vbslq_s8(vcgtq_s64(v21, *v19), v21, *v19);
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      v22 = vbslq_s8(vcgtq_s64(v18, v21), v18, v21);
      v23 = vextq_s8(v22, v22, 8uLL).u64[0];
      v12 = vbsl_s8(vcgtd_s64(v22.i64[0], v23), *v22.i8, v23);
      if (v16 == v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 1;
    }

    v24 = v7 - v14 + v11;
    v25 = &v5[v14 + 4];
    do
    {
      v27 = *v25++;
      v26 = v27;
      if (v12 <= v27)
      {
        v12 = v26;
      }

      --v24;
    }

    while (v24);
  }

LABEL_17:

  v15 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_18;
  }

  __break(1u);
}

void LowLevelMesh.Descriptor.vertexLayouts.modify(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    LowLevelMesh.Descriptor.vertexLayouts.didset();
  }
}

unint64_t LowLevelMesh.Part.init(indexOffset:indexCount:topology:materialIndex:bounds:)@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>)
{
  a5->n128_u64[0] = result;
  a5->n128_u64[1] = a2;
  a5[1].n128_u64[0] = a3;
  a5[1].n128_u64[1] = a4;
  a5[2] = a6;
  a5[3] = a7;
  return result;
}

double LowLevelMesh.descriptor.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = *(v1 + 56);

  return result;
}

void (*LowLevelMesh.parts.modify(void *a1))(id *a1)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = v2;
  return destroy for CustomMaterial.ResourceStorage;
}

id LowLevelMesh.parts.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t LowLevelMesh.__allocating_init(descriptor:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  LowLevelMesh.init(descriptor:)(a1);
  return v2;
}

void LowLevelMesh.init(descriptor:)(uint64_t *a1)
{
  v2 = v1;
  v59 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v4 = a1[3];
  v51 = *a1;
  v52 = a1[2];
  v5 = a1[4];
  v6 = a1[5];
  v7 = DRMeshDescriptorCreate();
  v49 = v5;
  DRMeshDescriptorSetIndexCapacity();
  v48 = v6;
  DRMeshDescriptorSetIndexType();
  v50 = v3;
  DRMeshDescriptorSetVertexCapacity();
  v8 = *(v4 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = v2;
    v55[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v55[0];
    v11 = (v4 + 32);
    v12 = *(v55[0] + 16);
    do
    {
      v14 = *v11;
      v11 += 3;
      v13 = v14;
      v55[0] = v9;
      v15 = v9[3];
      v16 = v12 + 1;
      if (v12 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v12 + 1, 1);
        v9 = v55[0];
      }

      v9[2] = v16;
      v9[v12++ + 4] = v13;
      --v8;
    }

    while (v8);
    v2 = v10;
  }

  else
  {
    v16 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v16)
    {
      v18 = 0;
      v17 = v52;
      goto LABEL_20;
    }
  }

  v17 = v52;
  v18 = v9[4];
  v19 = v16 - 1;
  if (v16 != 1)
  {
    if (v16 < 5)
    {
      v20 = 1;
      goto LABEL_14;
    }

    v20 = v19 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v21 = vdupq_n_s64(v18);
    v22 = (v9 + 7);
    v23 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = v21;
    do
    {
      v21 = vbslq_s8(vcgtq_s64(v21, v22[-1]), v21, v22[-1]);
      v24 = vbslq_s8(vcgtq_s64(v24, *v22), v24, *v22);
      v22 += 2;
      v23 -= 4;
    }

    while (v23);
    v25 = vbslq_s8(vcgtq_s64(v21, v24), v21, v24);
    v26 = vextq_s8(v25, v25, 8uLL).u64[0];
    v18 = vbsl_s8(vcgtd_s64(v25.i64[0], v26), *v25.i8, v26);
    if (v19 != (v19 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_14:
      v27 = v16 - v20;
      v28 = 8 * v20 + 32;
      do
      {
        if (v18 <= *(v9 + v28))
        {
          v18 = *(v9 + v28);
        }

        v28 += 8;
        --v27;
      }

      while (v27);
    }
  }

LABEL_20:

  if (__OFADD__(v18, 1))
  {
    goto LABEL_40;
  }

  DRMeshDescriptorSetVertexBufferCount();
  DRMeshDescriptorSetVertexAttributeCount();
  DRMeshDescriptorSetVertexLayoutCount();
  v29 = *(v17 + 16);
  if (!v29)
  {
    goto LABEL_26;
  }

  v30 = 0;
  v31 = (v17 + 56);
  do
  {
    if (((*v31 | *(v31 - 1)) & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    v32 = v31 + 4;
    v33 = v30 + 1;
    DRMeshDescriptorSetVertexAttributeFormat();
    v31 = v32;
    v30 = v33;
  }

  while (v29 != v33);

LABEL_26:
  v34 = *(v4 + 16);
  if (v34)
  {

    v35 = 0;
    v36 = (v4 + 48);
    do
    {
      if (((*(v36 - 1) | *(v36 - 2) | *v36) & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      v36 += 3;
      v37 = v35 + 1;
      DRMeshDescriptorSetVertexLayout();
      v35 = v37;
    }

    while (v34 != v37);
  }

  v58 = 0;
  v38 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v39 = MEMORY[0x1C68FE220](*(v38 + 16));
  if (v39)
  {
    v40 = v39;
    Mesh = DRContextCreateMesh();

    goto LABEL_36;
  }

  v44 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __RenderService?(v44 + 40, &v53);
  if (v54)
  {
    outlined init with take of ForceEffectBase(&v53, v55);
    v45 = v56;
    v46 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    (*(v46 + 24))(v45, v46);
    __swift_destroy_boxed_opaque_existential_1(v55);
    v47 = RERenderManagerGetRenderDevice();
    Mesh = DRMeshCreateUnmanaged();
    swift_unknownObjectRelease();
    v17 = v52;
    if (v58)
    {
      v42 = v58;

      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
      swift_allocError();
      *v43 = v42;
      swift_willThrow();

      type metadata accessor for LowLevelMesh();
      swift_deallocPartialClassInstance();
      return;
    }

LABEL_36:
    v2[3] = v51;
    v2[4] = v50;
    v2[5] = v17;
    v2[6] = v4;
    v2[7] = v49;
    v2[8] = v48;
    if (Mesh)
    {

      v2[2] = Mesh;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *LowLevelMesh.init(from:)(void *a1)
{
  v2 = v1;
  v1[2] = a1;
  v3 = a1;
  v4 = DRMeshCopyDescriptor();
  VertexBufferCount = DRMeshDescriptorGetVertexBufferCount();
  VertexCapacity = DRMeshDescriptorGetVertexCapacity();
  v7 = DRMeshDescriptor_t.vertexAttributes.getter();
  v8 = DRMeshDescriptor_t.vertexLayouts.getter();
  IndexCapacity = DRMeshDescriptorGetIndexCapacity();
  IndexType = DRMeshDescriptorGetIndexType();

  v2[3] = VertexBufferCount;
  v2[4] = VertexCapacity;
  v2[5] = v7;
  v2[6] = v8;
  v2[7] = IndexCapacity;
  v2[8] = IndexType;
  return v2;
}

id LowLevelMesh.read(bufferIndex:using:)(uint64_t a1, uint64_t a2)
{
  VerticesUsing = DRMeshReadVerticesUsing();

  return VerticesUsing;
}

id LowLevelMesh.replace(bufferIndex:using:)(uint64_t a1, uint64_t a2)
{
  v2 = DRMeshReplaceVerticesUsing();

  return v2;
}

id LowLevelMesh.readIndices(using:)(uint64_t a1)
{
  IndicesUsing = DRMeshReadIndicesUsing();

  return IndicesUsing;
}

id LowLevelMesh.replaceIndices(using:)(uint64_t a1)
{
  v1 = DRMeshReplaceIndicesUsing();

  return v1;
}

uint64_t LowLevelMesh.withUnsafeBytes(bufferIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in LowLevelMesh.withUnsafeBytes(bufferIndex:_:);
  *(v8 + 24) = v7;
  v13[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafeRawPointer, @unowned Int) -> ();
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned Int) -> ();
  v13[3] = &block_descriptor_33;
  v9 = _Block_copy(v13);
  v10 = v6;

  DRMeshReadVertices();

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t LowLevelMesh.withUnsafeMutableBytes(bufferIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in LowLevelMesh.withUnsafeMutableBytes(bufferIndex:_:);
  *(v8 + 24) = v7;
  v13[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
  v13[3] = &block_descriptor_18_2;
  v9 = _Block_copy(v13);
  v10 = v6;

  DRMeshUpdateVertices();

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t LowLevelMesh.replaceUnsafeMutableBytes(bufferIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in LowLevelMesh.replaceUnsafeMutableBytes(bufferIndex:_:);
  *(v8 + 24) = v7;
  v13[4] = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ()partial apply;
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
  v13[3] = &block_descriptor_28_1;
  v9 = _Block_copy(v13);
  v10 = v6;

  DRMeshReplaceVertices();

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t LowLevelMesh.withUnsafeIndices(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in LowLevelMesh.withUnsafeIndices(_:);
  *(v7 + 24) = v6;
  v11[4] = thunk for @callee_guaranteed (@unowned UnsafeRawPointer, @unowned Int) -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned Int) -> ();
  v11[3] = &block_descriptor_38;
  v8 = _Block_copy(v11);
  v9 = v5;

  DRMeshReadIndices();

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t LowLevelMesh.withUnsafeMutableIndices(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in LowLevelMesh.replaceUnsafeMutableBytes(bufferIndex:_:);
  *(v7 + 24) = v6;
  v11[4] = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
  v11[3] = &block_descriptor_48;
  v8 = _Block_copy(v11);
  v9 = v5;

  DRMeshUpdateIndices();

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t LowLevelMesh.replaceUnsafeMutableIndices(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in LowLevelMesh.replaceUnsafeMutableBytes(bufferIndex:_:);
  *(v7 + 24) = v6;
  v11[4] = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
  v11[3] = &block_descriptor_58_0;
  v8 = _Block_copy(v11);
  v9 = v5;

  DRMeshReplaceIndices();

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t LowLevelMesh.deinit()
{

  return v0;
}

uint64_t LowLevelMesh.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int __swiftcall LowLevelMesh.PartsCollection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

__n128 LowLevelMesh.PartsCollection.subscript.getter@<Q0>(_OWORD *a2@<X8>)
{
  DRMeshGetPartAt();
  result = xmmword_1C189A7F0;
  *a2 = 0uLL;
  a2[1] = xmmword_1C18AB200;
  a2[2] = xmmword_1C189A7F0;
  a2[3] = xmmword_1C189A800;
  return result;
}

__n128 key path getter for LowLevelMesh.PartsCollection.subscript(_:) : LowLevelMesh.PartsCollection@<Q0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v8 = *a1;
  LowLevelMesh.PartsCollection.subscript.getter(v7);
  result = v7[2];
  v5 = v7[3];
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  *(a3 + 32) = result;
  *(a3 + 48) = v5;
  return result;
}

__n128 *key path setter for LowLevelMesh.PartsCollection.subscript(_:) : LowLevelMesh.PartsCollection(__n128 *result, void *a2, void *a3)
{
  if (((result->n128_u64[1] | result->n128_u64[0] | result[1].n128_u64[1]) & 0x8000000000000000) == 0)
  {
    return DRMeshSetPartAt();
  }

  __break(1u);
  return result;
}

__n128 *LowLevelMesh.PartsCollection.subscript.setter(__n128 *result, uint64_t a2)
{
  if (((result->n128_u64[1] | result->n128_u64[0] | result[1].n128_u64[1]) & 0x8000000000000000) == 0)
  {
    return DRMeshSetPartAt();
  }

  __break(1u);
  return result;
}

void (*LowLevelMesh.PartsCollection.subscript.modify(uint64_t *a1, uint64_t a2))(__n128 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x90uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 128) = a2;
  v7 = *v2;
  *(v6 + 72) = 0;
  *(v6 + 64) = 0;
  *(v6 + 80) = xmmword_1C18AB200;
  *(v6 + 96) = xmmword_1C189A7F0;
  *(v6 + 136) = v7;
  *(v6 + 112) = xmmword_1C189A800;
  DRMeshGetPartAt();
  v8 = *(v6 + 96);
  v9 = *(v6 + 112);
  v10 = *(v6 + 80);
  *v6 = *(v6 + 64);
  *(v6 + 16) = v10;
  *(v6 + 32) = v8;
  *(v6 + 48) = v9;
  return LowLevelMesh.PartsCollection.subscript.modify;
}

void LowLevelMesh.PartsCollection.subscript.modify(__n128 **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)->n128_u64[1] | (*a1)->n128_u64[0] | (*a1)[1].n128_u64[1];
  if (a2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

LABEL_5:
  DRMeshSetPartAt();

  free(v2);
}

__n128 *protocol witness for MutableCollection.subscript.setter in conformance LowLevelMesh.PartsCollection(__n128 *result, void *a2)
{
  if (((result->n128_u64[1] | result->n128_u64[0] | result[1].n128_u64[1]) & 0x8000000000000000) == 0)
  {
    return DRMeshSetPartAt();
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance LowLevelMesh.PartsCollection(uint64_t **a1, uint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = LowLevelMesh.PartsCollection.subscript.modify(v4, *a2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

void protocol witness for MutableCollection.subscript.setter in conformance LowLevelMesh.PartsCollection(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[2];
  specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v2, *a2, a2[1], *a1, a1[1], v3);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance LowLevelMesh.PartsCollection(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for MutableCollection.partition(by:) in conformance LowLevelMesh.PartsCollection@<X0>(uint64_t *a1@<X8>, uint64_t (*a2)(__int128 *)@<X0>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = DRMeshGetPartCount();
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = DRMeshGetPartCount();
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v8 = a3 - a1;
  if (a2 >= 1)
  {
    if (v8 < 0 || v8 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v8 <= 0 && v8 > a2)
  {
    return 0;
  }

LABEL_12:
  v10 = __OFADD__(a1, a2);
  v9 = a1 + a2;
  if (v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = DRMeshGetPartCount();
  if ((v9 & 0x8000000000000000) == 0 && result >= v9)
  {
    return v9;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance LowLevelMesh.PartsCollection@<X0>(uint64_t *a1@<X8>)
{
  result = DRMeshGetPartCount();
  *a1 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance LowLevelMesh.PartsCollection(void *a1, uint64_t *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  LowLevelMesh.PartsCollection.subscript.getter(v3);
  return protocol witness for Collection.subscript.read in conformance LowLevelMesh.PartsCollection;
}

uint64_t protocol witness for Collection.subscript.getter in conformance LowLevelMesh.PartsCollection@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *v2;
  result = DRMeshGetPartCount();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  a2[1] = v4;
  a2[2] = v7;
  *a2 = v5;

  return v7;
}

uint64_t protocol witness for Collection.indices.getter in conformance LowLevelMesh.PartsCollection@<X0>(void *a1@<X8>)
{
  result = DRMeshGetPartCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance LowLevelMesh.PartsCollection@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = DRMeshGetPartCount();
    if ((v3 & 0x8000000000000000) == 0 && v3 < result)
    {
      *a2 = v3;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance LowLevelMesh.PartsCollection(uint64_t *result)
{
  v1 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    result = DRMeshGetPartCount();
    if ((v1 & 0x8000000000000000) == 0 && v1 < result)
    {
      *v2 = v1;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance LowLevelMesh.PartsCollection@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = DRMeshGetPartCount();
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      *a3 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance LowLevelMesh.PartsCollection@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance LowLevelMesh.PartsCollection(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = DRMeshGetPartCount();
  if (v2 < 0 || result < v2)
  {
    __break(1u);
  }

  else
  {
    result = DRMeshGetPartCount();
    if ((v3 & 0x8000000000000000) == 0 && result >= v3)
    {
      return v3 - v2;
    }
  }

  __break(1u);
  return result;
}

void protocol witness for Sequence._copyToContiguousArray() in conformance LowLevelMesh.PartsCollection()
{
  v1 = *v0;
  PartCount = DRMeshGetPartCount();
  if (PartCount)
  {
    v3 = PartCount;
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation12LowLevelMeshC4PartV_Tt1g5(PartCount, 0);
    v5 = v1;
    v6 = specialized Sequence._copySequenceContents(initializing:)(v7, v4 + 2, v3, v5);

    if (v6 == v3)
    {
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t LowLevelMesh.PartsCollection.append(_:)(__n128 *a1)
{
  v1 = a1->n128_u64[0];
  v2 = a1->n128_u64[1];
  v3 = a1[1].n128_u64[1];
  result = DRMeshGetPartCount();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  DRMeshSetPartCount();
  result = DRMeshGetPartCount();
  if (__OFSUB__(result, 1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (((v2 | v1 | v3) & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return DRMeshSetPartAt();
}

uint64_t LowLevelMesh.PartsCollection.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EnumeratedSequence();
  MEMORY[0x1EEE9AC00](v5);
  v6 = type metadata accessor for EnumeratedSequence.Iterator();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  PartCount = DRMeshGetPartCount();
  v10 = dispatch thunk of Sequence.underestimatedCount.getter();
  result = DRMeshGetPartCount();
  if (!__OFADD__(result, v10))
  {
    DRMeshSetPartCount();
    MEMORY[0x1C68F3540](a2, a3);
    EnumeratedSequence.makeIterator()();
    result = EnumeratedSequence.Iterator.next()();
    if (v29)
    {
      return (*(v20 + 8))(v8, v6);
    }

    v12 = v23;
    v13 = v24;
    v14 = v25;
    v15 = v26;
    v16 = v27;
    v17 = v28;
    while (1)
    {
      v18 = PartCount + v12;
      if (__OFADD__(PartCount, v12))
      {
        break;
      }

      v21 = v17;
      v22 = v16;
      result = DRMeshGetPartCount();
      if (v18 < result)
      {
        if ((v14 | v13 | v15) < 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = DRMeshGetPartCount();
        if (__OFADD__(result, 1))
        {
          goto LABEL_15;
        }

        DRMeshSetPartCount();
        result = DRMeshGetPartCount();
        if (__OFSUB__(result, 1))
        {
          goto LABEL_16;
        }

        if ((v14 | v13 | v15) < 0)
        {
          __break(1u);
          break;
        }
      }

      DRMeshSetPartAt();
      result = EnumeratedSequence.Iterator.next()();
      v12 = v23;
      v13 = v24;
      v14 = v25;
      v15 = v26;
      v16 = v27;
      v17 = v28;
      if (v29)
      {
        return (*(v20 + 8))(v8, v6);
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t LowLevelMesh.PartsCollection.replaceAll<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DRMeshSetPartCount();

  return LowLevelMesh.PartsCollection.append<A>(contentsOf:)(a1, a2, a3);
}

uint64_t MeshResource.replace(with:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 32))(v4, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (*(v2 + 16))
  {
    return REMeshAssetReplaceAllWithDirectMesh();
  }

  __break(1u);
  return result;
}

uint64_t MeshResource.lowLevelMesh.getter()
{
  result = *(v0 + 16);
  if (result)
  {
    v2 = REMeshAssetGetDirectMesh();
    if (!v2)
    {
      return 0;
    }

    v3 = v2;
    type metadata accessor for LowLevelMesh();
    v4 = swift_allocObject();
    LowLevelMesh.init(from:)(v3);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DRMeshDescriptor_t.vertexAttributes.getter()
{
  VertexAttributeCount = DRMeshDescriptorGetVertexAttributeCount();
  if (VertexAttributeCount < 0)
  {
    __break(1u);
  }

  v1 = VertexAttributeCount;
  v2 = MEMORY[0x1E69E7CC0];
  if (VertexAttributeCount)
  {
    v8 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, VertexAttributeCount, 0);
    v3 = 0;
    v2 = v8;
    do
    {
      DRMeshDescriptorGetVertexAttributeFormat();
      v5 = *(v8 + 16);
      v4 = *(v8 + 24);
      if (v5 >= v4 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
      }

      *(v8 + 16) = v5 + 1;
      v6 = v8 + 32 * v5;
      *(v6 + 32) = 13;
      ++v3;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
    }

    while (v1 != v3);
  }

  return v2;
}

uint64_t DRMeshDescriptor_t.vertexLayouts.getter()
{
  VertexLayoutCount = DRMeshDescriptorGetVertexLayoutCount();
  if (VertexLayoutCount < 0)
  {
    __break(1u);
  }

  v1 = VertexLayoutCount;
  v2 = MEMORY[0x1E69E7CC0];
  if (VertexLayoutCount)
  {
    v8 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, VertexLayoutCount, 0);
    v3 = 0;
    v2 = v8;
    do
    {
      DRMeshDescriptorGetVertexLayout();
      v5 = *(v8 + 16);
      v4 = *(v8 + 24);
      if (v5 >= v4 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
      }

      ++v3;
      *(v8 + 16) = v5 + 1;
      v6 = (v8 + 24 * v5);
      v6[4] = 0;
      v6[5] = 0;
      v6[6] = 0;
    }

    while (v1 != v3);
  }

  return v2;
}

double block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type LowLevelMesh.VertexSemantic and conformance LowLevelMesh.VertexSemantic()
{
  result = lazy protocol witness table cache variable for type LowLevelMesh.VertexSemantic and conformance LowLevelMesh.VertexSemantic;
  if (!lazy protocol witness table cache variable for type LowLevelMesh.VertexSemantic and conformance LowLevelMesh.VertexSemantic)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LowLevelMesh.VertexSemantic, &type metadata for LowLevelMesh.VertexSemantic, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LowLevelMesh.VertexSemantic and conformance LowLevelMesh.VertexSemantic);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection()
{
  result = lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection;
  if (!lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LowLevelMesh.PartsCollection, &type metadata for LowLevelMesh.PartsCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection;
  if (!lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LowLevelMesh.PartsCollection, &type metadata for LowLevelMesh.PartsCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection;
  if (!lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LowLevelMesh.PartsCollection, &type metadata for LowLevelMesh.PartsCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection;
  if (!lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LowLevelMesh.PartsCollection, &type metadata for LowLevelMesh.PartsCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection;
  if (!lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LowLevelMesh.PartsCollection, &type metadata for LowLevelMesh.PartsCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    v6 = lazy protocol witness table accessor for type Int and conformance Int();
    v7[0] = MEMORY[0x1E69E6570];
    v7[1] = v6;
    result = swift_getWitnessTable(a2, v5, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<LowLevelMesh.PartsCollection> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy17RealityFoundation12LowLevelMeshC15PartsCollectionVGMd, &_ss5SliceVy17RealityFoundation12LowLevelMeshC15PartsCollectionVGMR);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LowLevelMesh.Attribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && a1[32])
  {
    return (*a1 + 243);
  }

  v3 = *a1;
  v4 = v3 >= 0xE;
  v5 = v3 - 14;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LowLevelMesh.Attribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 243;
    *(result + 8) = 0;
    if (a3 >= 0xF3)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 13;
    }
  }

  return result;
}

char *specialized static EmphasizeAnimations.createEmphasizeBlinkAnimation(style:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 168, 0, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 226, 0, MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 133, 0, MEMORY[0x1E69E7CC0]);
  }

  specialized static EmphasizeAnimations.makeTransforms(_:_:)(v1, &v3);

  return v3;
}

uint64_t VirtualEnvironmentProbeComponent.Probe.environment.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t VirtualEnvironmentProbeComponent.Probe.init(environment:intensityExponent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

double VirtualEnvironmentProbeComponent.source.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of VirtualEnvironmentProbeComponent.Source(v2, v3, v4);
}

__n128 VirtualEnvironmentProbeComponent.source.setter(uint64_t a1)
{
  outlined consume of VirtualEnvironmentProbeComponent.Source(*v1, *(v1 + 8), *(v1 + 16));
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  return result;
}

__n128 VirtualEnvironmentProbeComponent.init(source:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void static VirtualEnvironmentProbeComponent.__fromCore(_:)(uint64_t a2@<X8>)
{
  ResourceCount = REVirtualEnvironmentProbeComponentGetResourceCount();
  if (ResourceCount != 1)
  {
    v4 = ResourceCount;
    if (!ResourceCount)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = xmmword_1C18C0FC0;
      return;
    }

    if (ResourceCount < 0)
    {
      __break(1u);
    }

    else
    {
      v9 = 0;
      v10 = MEMORY[0x1E69E7CC0];
      v11 = MEMORY[0x1E69E7CC0];
      do
      {
        Resource = REVirtualEnvironmentProbeComponentGetResource();
        SkyboxTexture = REIBLAssetGetSkyboxTexture();
        type metadata accessor for EnvironmentResource();
        v14 = swift_allocObject();
        *(v14 + 24) = 0;
        *(v14 + 16) = Resource;
        swift_beginAccess();
        *(v14 + 24) = SkyboxTexture;
        RERetain();
        REAssetSetSwiftObject();
        if (SkyboxTexture)
        {
          RERetain();
          REAssetSetSwiftObject();
        }

        REVirtualEnvironmentProbeComponentGetIntensityExponent();
        v16 = v15;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
        }

        v18 = *(v10 + 2);
        v17 = *(v10 + 3);
        if (v18 >= v17 >> 1)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v10);
        }

        *(v10 + 2) = v18 + 1;
        v19 = &v10[16 * v18];
        *(v19 + 4) = v14;
        *(v19 + 10) = v16;
        REVirtualEnvironmentProbeComponentGetRelativeWeight();
        v21 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        }

        v23 = *(v11 + 2);
        v22 = *(v11 + 3);
        if (v23 >= v22 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v11);
        }

        ++v9;

        *(v11 + 2) = v23 + 1;
        *&v11[4 * v23 + 32] = v21;
      }

      while (v4 != v9);
      if (v23)
      {
        v24 = *(v11 + 9);
        v25 = *(v11 + 8) + v24;
        v26 = *(v10 + 2);
        if (v25 <= 0.0)
        {
          if (v26)
          {
            if (v26 != 1)
            {
              v32 = *(v10 + 10);
              v33 = *(v10 + 4);
              v34 = *(v10 + 6);
              v35 = *(v10 + 14);

              *a2 = v33;
              *(a2 + 8) = v32;
              *(a2 + 16) = v34 | 0x4000000000000000;
              *(a2 + 24) = v35;
              return;
            }

            goto LABEL_33;
          }

          goto LABEL_31;
        }

        if (v26)
        {
          if (v26 != 1)
          {
            v27 = *(v10 + 10);
            v28 = *(v10 + 4);
            v29 = *(v10 + 6);
            v30 = *(v10 + 14);
            *&v31 = v24 / v25;

            *a2 = v28;
            *(a2 + 8) = v27;
            *(a2 + 16) = v29 | 0x4000000000000000;
            *(a2 + 24) = v30 | (v31 << 32);
            return;
          }

          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = REVirtualEnvironmentProbeComponentGetResource();
  v6 = REIBLAssetGetSkyboxTexture();
  type metadata accessor for EnvironmentResource();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v5;
  swift_beginAccess();
  *(v7 + 24) = v6;
  RERetain();
  REAssetSetSwiftObject();
  if (v6)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  REVirtualEnvironmentProbeComponentGetIntensityExponent();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
}