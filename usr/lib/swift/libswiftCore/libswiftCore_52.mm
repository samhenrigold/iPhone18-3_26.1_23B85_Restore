uint64_t Collection.distance<A>(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a5 + 152))(a1, a2, a3, a5);
  v8 = *(a6 + 88);
  v11 = lazy protocol witness table accessor for type Int and conformance Int(v13, v9, v10);
  return v8(&v13, &type metadata for Int, v11, a4, a6);
}

Swift::UnsafeMutableRawPointer __swiftcall UnsafeMutablePointer.deinitialize()()
{
  v2._rawValue = v0;
  (*(*(v1 - 8) + 8))();
  return v2;
}

uint64_t UnsafeMutablePointer.initialize<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, Class *a4, uint64_t a5)
{
  v30 = a2;
  v33 = a3;
  v8 = type metadata accessor for Optional(0, a3, a3, a4);
  v31 = *(v8 - 8);
  v32 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v30 - v11;
  v13 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a5 + 8);
  swift_getAssociatedTypeWitness(0, v17, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v30 - v22;
  v24 = (*(a5 + 112))(a4, a5);
  if (v24 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v25 = v24;
  (*(v13 + 16))(v16, a1, a4);
  v26 = (*(v17 + 64))(v23, v30, v25, a4, v17);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v17, a4, v19, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  (*(AssociatedConformanceWitness + 16))(v19, AssociatedConformanceWitness);
  v28 = (*(*(v33 - 8) + 48))(v12, 1);
  (*(v31 + 8))(v12, v32);
  if (v28 != 1 || v26 != v25)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v20 + 8))(v23, v19);
}

unint64_t UnsafeRawPointer.summary.getter(Swift::UInt64 a1)
{
  v1 = 0xD000000000000013;
  if (!a1)
  {
    return 0xD000000000000015;
  }

  v3 = _StringGuts.init(_initialCapacity:)(22);
  v13 = v4;
  v53 = v3;
  v54 = v4;
  v14 = 0x8000000180671B20;
  v15 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v15 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 || (v3 & ~v4 & 0x2000000000000000) != 0)
  {
    if (("UnsafeMutableRawPointer(nil)" & 0x2000000000000000 & v4) != 0 && (v16 = specialized _SmallString.init(_:appending:)(v3, v4, 0xD000000000000013, 0x8000000180671B20), (v18 & 1) == 0))
    {
      v1 = v16;
      v21 = v17;
      v13;
      v53 = v1;
      v54 = v21;
      v14 = v21;
    }

    else
    {
      if (("UnsafeMutableRawPointer(nil)" & 0x2000000000000000) != 0)
      {
        v19 = ("UnsafeMutableRawPointer(nil)" >> 56) & 0xF;
      }

      else
      {
        v19 = 19;
      }

      _StringGuts.append(_:)(0xD000000000000013, 0x8000000180671B20, 0, v19, v5, v6, v7, v8, v9, v10, v11, v12);
      v1 = v53;
      v14 = v54;
    }
  }

  else
  {
    v4;
    v53 = 0xD000000000000013;
    v54 = 0x8000000180671B20;
  }

  v31 = _uint64ToString(_:radix:uppercase:)(a1, 16, 1);
  countAndFlagsBits = v31._countAndFlagsBits;
  object = v31._object;
  v33 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v33 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33 && (v1 & ~v14 & 0x2000000000000000) == 0)
  {
    v14;
    v43 = v31._countAndFlagsBits;
    v53 = v31._countAndFlagsBits;
    goto LABEL_25;
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    if ((v31._object & 0x2000000000000000) != 0)
    {
      v47 = specialized _SmallString.init(_:appending:)(v1, v14, v31._countAndFlagsBits, v31._object);
      if ((v49 & 1) == 0)
      {
        v51 = v48;
        v52 = v47;
        v14;
        v31._object;
        v53 = v52;
        object = v51;
        v43 = v52;
        goto LABEL_25;
      }

      v34 = (v31._object >> 56) & 0xF;
      countAndFlagsBits = v31._countAndFlagsBits;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ((v31._object & 0x2000000000000000) == 0)
  {
LABEL_23:
    v34 = v31._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_24;
  }

  v34 = (v31._object >> 56) & 0xF;
LABEL_24:
  _StringGuts.append(_:)(countAndFlagsBits, v31._object, 0, v34, v23, v24, v25, v26, v27, v28, v29, v30);
  v31._object;
  v43 = v53;
  object = v54;
LABEL_25:
  v44 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v44 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (v44 || (v43 & ~object & 0x2000000000000000) != 0)
  {
    if ((object & 0x2000000000000000) != 0 && (v45 = specialized _SmallString.init(_:appending:)(v43, object, 0x29uLL, 0xE100000000000000), (v46 & 1) == 0))
    {
      v50 = v45;
      object;
      return v50;
    }

    else
    {
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v35, v36, v37, v38, v39, v40, v41, v42);
      return v53;
    }
  }

  else
  {
    object;
    return 41;
  }
}

unint64_t UnsafeRawPointer.customPlaygroundQuickLook.getter@<X0>(Swift::UInt64 a1@<X0>, uint64_t a2@<X8>)
{
  result = UnsafeRawPointer.summary.getter(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 32) = 0;
  return result;
}

unint64_t protocol witness for _CustomPlaygroundQuickLookable.customPlaygroundQuickLook.getter in conformance UnsafeRawPointer@<X0>(uint64_t a1@<X8>)
{
  result = UnsafeRawPointer.summary.getter(*v1);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  return result;
}

unint64_t UnsafeMutableRawPointer.summary.getter(Swift::UInt64 a1)
{
  v1 = 0xD00000000000001ALL;
  if (!a1)
  {
    return 0xD00000000000001CLL;
  }

  v3 = _StringGuts.init(_initialCapacity:)(29);
  v13 = v4;
  v53 = v3;
  v54 = v4;
  v14 = 0x8000000180671AE0;
  v15 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v15 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 || (v3 & ~v4 & 0x2000000000000000) != 0)
  {
    if (("UnsafePointer(nil)" & 0x2000000000000000 & v4) != 0 && (v16 = specialized _SmallString.init(_:appending:)(v3, v4, 0xD00000000000001ALL, 0x8000000180671AE0), (v18 & 1) == 0))
    {
      v1 = v16;
      v21 = v17;
      v13;
      v53 = v1;
      v54 = v21;
      v14 = v21;
    }

    else
    {
      if (("UnsafePointer(nil)" & 0x2000000000000000) != 0)
      {
        v19 = ("UnsafePointer(nil)" >> 56) & 0xF;
      }

      else
      {
        v19 = 26;
      }

      _StringGuts.append(_:)(0xD00000000000001ALL, 0x8000000180671AE0, 0, v19, v5, v6, v7, v8, v9, v10, v11, v12);
      v1 = v53;
      v14 = v54;
    }
  }

  else
  {
    v4;
    v53 = 0xD00000000000001ALL;
    v54 = 0x8000000180671AE0;
  }

  v31 = _uint64ToString(_:radix:uppercase:)(a1, 16, 1);
  countAndFlagsBits = v31._countAndFlagsBits;
  object = v31._object;
  v33 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v33 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33 && (v1 & ~v14 & 0x2000000000000000) == 0)
  {
    v14;
    v43 = v31._countAndFlagsBits;
    v53 = v31._countAndFlagsBits;
    goto LABEL_25;
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    if ((v31._object & 0x2000000000000000) != 0)
    {
      v47 = specialized _SmallString.init(_:appending:)(v1, v14, v31._countAndFlagsBits, v31._object);
      if ((v49 & 1) == 0)
      {
        v51 = v48;
        v52 = v47;
        v14;
        v31._object;
        v53 = v52;
        object = v51;
        v43 = v52;
        goto LABEL_25;
      }

      v34 = (v31._object >> 56) & 0xF;
      countAndFlagsBits = v31._countAndFlagsBits;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ((v31._object & 0x2000000000000000) == 0)
  {
LABEL_23:
    v34 = v31._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_24;
  }

  v34 = (v31._object >> 56) & 0xF;
LABEL_24:
  _StringGuts.append(_:)(countAndFlagsBits, v31._object, 0, v34, v23, v24, v25, v26, v27, v28, v29, v30);
  v31._object;
  v43 = v53;
  object = v54;
LABEL_25:
  v44 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v44 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (v44 || (v43 & ~object & 0x2000000000000000) != 0)
  {
    if ((object & 0x2000000000000000) != 0 && (v45 = specialized _SmallString.init(_:appending:)(v43, object, 0x29uLL, 0xE100000000000000), (v46 & 1) == 0))
    {
      v50 = v45;
      object;
      return v50;
    }

    else
    {
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v35, v36, v37, v38, v39, v40, v41, v42);
      return v53;
    }
  }

  else
  {
    object;
    return 41;
  }
}

unint64_t UnsafeMutableRawPointer.customPlaygroundQuickLook.getter@<X0>(Swift::UInt64 a1@<X0>, uint64_t a2@<X8>)
{
  result = UnsafeMutableRawPointer.summary.getter(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 32) = 0;
  return result;
}

unint64_t protocol witness for _CustomPlaygroundQuickLookable.customPlaygroundQuickLook.getter in conformance UnsafeMutableRawPointer@<X0>(uint64_t a1@<X8>)
{
  result = UnsafeMutableRawPointer.summary.getter(*v1);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  return result;
}

void UnsafePointer.customPlaygroundQuickLook.getter(Swift::UInt64 a1@<X0>, uint64_t a2@<X8>)
{
  countAndFlagsBits = 0xD000000000000010;
  if (!a1)
  {
    v22 = 0x8000000180671AC0;
    v23 = 0xD000000000000012;
    goto LABEL_37;
  }

  v5 = _StringGuts.init(_initialCapacity:)(19);
  v15 = v6;
  v56._countAndFlagsBits = v5;
  v56._object = v6;
  object = 0x8000000180671AA0;
  v17 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v17 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v17 || (v5 & ~v6 & 0x2000000000000000) != 0)
  {
    if (("UnsafeMutablePointer(nil)" & 0x2000000000000000 & v6) != 0 && (v18 = specialized _SmallString.init(_:appending:)(v5, v6, 0xD000000000000010, 0x8000000180671AA0), (v20 & 1) == 0))
    {
      countAndFlagsBits = v18;
      v24 = v19;
      v15;
      v56._countAndFlagsBits = countAndFlagsBits;
      v56._object = v24;
      object = v24;
    }

    else
    {
      if (("UnsafeMutablePointer(nil)" & 0x2000000000000000) != 0)
      {
        v21 = ("UnsafeMutablePointer(nil)" >> 56) & 0xF;
      }

      else
      {
        v21 = 16;
      }

      _StringGuts.append(_:)(0xD000000000000010, 0x8000000180671AA0, 0, v21, v7, v8, v9, v10, v11, v12, v13, v14);
      object = v56._object;
      countAndFlagsBits = v56._countAndFlagsBits;
    }
  }

  else
  {
    v6;
    v56._countAndFlagsBits = 0xD000000000000010;
    v56._object = 0x8000000180671AA0;
  }

  v34 = _uint64ToString(_:radix:uppercase:)(a1, 16, 1);
  v25 = v34._countAndFlagsBits;
  v35 = v34._object;
  v36 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v36 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v36 && (countAndFlagsBits & ~object & 0x2000000000000000) == 0)
  {
    object;
    v46 = v34._countAndFlagsBits;
    v56 = v34;
    goto LABEL_25;
  }

  if ((object & 0x2000000000000000) != 0)
  {
    if ((v34._object & 0x2000000000000000) != 0)
    {
      v51 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, object, v34._countAndFlagsBits, v34._object);
      if ((v53 & 1) == 0)
      {
        v54 = v52;
        v55 = v51;
        v34._object;
        object;
        v56._countAndFlagsBits = v55;
        v56._object = v54;
        v35 = v54;
        v46 = v55;
        goto LABEL_25;
      }

      v37 = (v34._object >> 56) & 0xF;
      v25 = v34._countAndFlagsBits;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ((v34._object & 0x2000000000000000) == 0)
  {
LABEL_23:
    v37 = v34._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_24;
  }

  v37 = (v34._object >> 56) & 0xF;
LABEL_24:
  _StringGuts.append(_:)(v25, v34._object, 0, v37, v26, v27, v28, v29, v30, v31, v32, v33);
  v34._object;
  v35 = v56._object;
  v46 = v56._countAndFlagsBits;
LABEL_25:
  v47 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v47 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v47 || (v46 & ~v35 & 0x2000000000000000) != 0)
  {
    if ((v35 & 0x2000000000000000) != 0 && (v48 = specialized _SmallString.init(_:appending:)(v46, v35, 0x29uLL, 0xE100000000000000), (v50 & 1) == 0))
    {
      v23 = v48;
      v22 = v49;
      v35;
    }

    else
    {
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v38, v39, v40, v41, v42, v43, v44, v45);
      v22 = v56._object;
      v23 = v56._countAndFlagsBits;
    }
  }

  else
  {
    v35;
    v22 = 0xE100000000000000;
    v23 = 41;
  }

LABEL_37:
  *a2 = v23;
  *(a2 + 8) = v22;
  *(a2 + 32) = 0;
}

void UnsafeMutablePointer.customPlaygroundQuickLook.getter(Swift::UInt64 a1@<X0>, uint64_t a2@<X8>)
{
  countAndFlagsBits = 0xD000000000000017;
  if (!a1)
  {
    v22 = 0x8000000180671A80;
    v23 = 0xD000000000000019;
    goto LABEL_37;
  }

  v5 = _StringGuts.init(_initialCapacity:)(26);
  v15 = v6;
  v56._countAndFlagsBits = v5;
  v56._object = v6;
  object = 0x8000000180671A60;
  v17 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v17 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v17 || (v5 & ~v6 & 0x2000000000000000) != 0)
  {
    if (("Swift/Diffing.swift" & 0x2000000000000000 & v6) != 0 && (v18 = specialized _SmallString.init(_:appending:)(v5, v6, 0xD000000000000017, 0x8000000180671A60), (v20 & 1) == 0))
    {
      countAndFlagsBits = v18;
      v24 = v19;
      v15;
      v56._countAndFlagsBits = countAndFlagsBits;
      v56._object = v24;
      object = v24;
    }

    else
    {
      if (("Swift/Diffing.swift" & 0x2000000000000000) != 0)
      {
        v21 = ("Swift/Diffing.swift" >> 56) & 0xF;
      }

      else
      {
        v21 = 23;
      }

      _StringGuts.append(_:)(0xD000000000000017, 0x8000000180671A60, 0, v21, v7, v8, v9, v10, v11, v12, v13, v14);
      object = v56._object;
      countAndFlagsBits = v56._countAndFlagsBits;
    }
  }

  else
  {
    v6;
    v56._countAndFlagsBits = 0xD000000000000017;
    v56._object = 0x8000000180671A60;
  }

  v34 = _uint64ToString(_:radix:uppercase:)(a1, 16, 1);
  v25 = v34._countAndFlagsBits;
  v35 = v34._object;
  v36 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v36 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v36 && (countAndFlagsBits & ~object & 0x2000000000000000) == 0)
  {
    object;
    v46 = v34._countAndFlagsBits;
    v56 = v34;
    goto LABEL_25;
  }

  if ((object & 0x2000000000000000) != 0)
  {
    if ((v34._object & 0x2000000000000000) != 0)
    {
      v51 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, object, v34._countAndFlagsBits, v34._object);
      if ((v53 & 1) == 0)
      {
        v54 = v52;
        v55 = v51;
        v34._object;
        object;
        v56._countAndFlagsBits = v55;
        v56._object = v54;
        v35 = v54;
        v46 = v55;
        goto LABEL_25;
      }

      v37 = (v34._object >> 56) & 0xF;
      v25 = v34._countAndFlagsBits;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ((v34._object & 0x2000000000000000) == 0)
  {
LABEL_23:
    v37 = v34._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_24;
  }

  v37 = (v34._object >> 56) & 0xF;
LABEL_24:
  _StringGuts.append(_:)(v25, v34._object, 0, v37, v26, v27, v28, v29, v30, v31, v32, v33);
  v34._object;
  v35 = v56._object;
  v46 = v56._countAndFlagsBits;
LABEL_25:
  v47 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v47 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v47 || (v46 & ~v35 & 0x2000000000000000) != 0)
  {
    if ((v35 & 0x2000000000000000) != 0 && (v48 = specialized _SmallString.init(_:appending:)(v46, v35, 0x29uLL, 0xE100000000000000), (v50 & 1) == 0))
    {
      v23 = v48;
      v22 = v49;
      v35;
    }

    else
    {
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v38, v39, v40, v41, v42, v43, v44, v45);
      v22 = v56._object;
      v23 = v56._countAndFlagsBits;
    }
  }

  else
  {
    v35;
    v22 = 0xE100000000000000;
    v23 = 41;
  }

LABEL_37:
  *a2 = v23;
  *(a2 + 8) = v22;
  *(a2 + 32) = 0;
}

void *static UnsafeMutableRawPointer.allocate(bytes:alignedTo:)(swift *a1, uint64_t a2)
{
  if (a2 <= 16)
  {
    v2 = -1;
  }

  else
  {
    v2 = a2 - 1;
  }

  return swift_slowAlloc(a1, v2);
}

uint64_t UnsafeMutableRawPointer.initializeMemory<A>(as:at:count:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 - 8) + 72);
  if ((a2 * v6) >> 64 == (a2 * v6) >> 63)
  {
    return UnsafeMutableRawPointer.initializeMemory<A>(as:repeating:count:)(result, a4, a3, a5 + a2 * v6, a6);
  }

  __break(1u);
  return result;
}

char *UnsafeMutableRawPointer.initializeMemory<A>(as:from:)(uint64_t a1, uint64_t a2, char *a3, Class *a4, uint64_t a5)
{
  v37 = a3;
  v42 = a2;
  v6 = *(a5 + 8);
  swift_getAssociatedTypeWitness(0, v6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v39 = &v35 - v11;
  v14 = type metadata accessor for Optional(0, v8, v12, v13);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v35 - v17;
  v19 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v16, v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v24 = v23;
  v36 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v35 - v26;
  (*(v19 + 16))(v22, v42, a4);
  (*(v6 + 32))(a4, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a4, v24, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v29 = *(AssociatedConformanceWitness + 16);
  v41 = v27;
  v42 = v24;
  v38 = AssociatedConformanceWitness;
  v29(v24);
  v40 = v9;
  v30 = *(v9 + 48);
  if (v30(v18, 1, v8) != 1)
  {
    v31 = *(v40 + 32);
    v32 = v37;
    do
    {
      v33 = v39;
      v31(v39, v18, v8);
      v31(v32, v33, v8);
      v32 += *(v40 + 72);
      (v29)(v42, v38);
    }

    while (v30(v18, 1, v8) != 1);
  }

  (*(v36 + 8))(v41, v42);
  return v37;
}

void *static UnsafeMutableRawBufferPointer.allocate(count:)(swift *a1)
{
  result = swift_slowAlloc(a1, 0xFFFFFFFFFFFFFFFFLL);
  if ((a1 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

void *static UnsafeMutableRawBufferPointer.allocate(byteCount:alignment:)(swift *a1, uint64_t a2)
{
  if (a2 <= 16)
  {
    v3 = -1;
  }

  else
  {
    v3 = a2 - 1;
  }

  result = swift_slowAlloc(a1, v3);
  if ((a1 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Void __swiftcall UnsafeMutableRawBufferPointer.copyMemory(from:)(Swift::UnsafeRawBufferPointer from)
{
  if (from._position.value._rawValue)
  {
    v4 = from._end.value._rawValue - from._position.value._rawValue;
  }

  else
  {
    v4 = 0;
  }

  if (!v1)
  {
    if (v4 < 1)
    {
      return;
    }

LABEL_12:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v2 - v1 < v4)
  {
    goto LABEL_12;
  }

  if (from._position.value._rawValue)
  {

    memmove(v1, from._position.value._rawValue, from._end.value._rawValue - from._position.value._rawValue);
  }
}

__objc2_class **Collection.flatMap(_:)(uint64_t (*a1)(char *), uint64_t a2, Class *a3, uint64_t a4)
{
  v55 = a1;
  v56 = a2;
  v57 = *(a4 + 8);
  v5 = v57;
  swift_getAssociatedTypeWitness(0, v57, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v48 = v47 - v11;
  v14 = type metadata accessor for Optional(0, v8, v12, v13);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = v47 - v17;
  v19 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v16, v20);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v5;
  v24 = a3;
  swift_getAssociatedTypeWitness(0, v23, v25, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v27 = v26;
  v47[0] = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = (v47 - v29);
  (*(v19 + 16))(v22, v58, v24);
  v31 = v57;
  (v57[4])(v24);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v31, v24, v27, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v33 = *(AssociatedConformanceWitness + 16);
  v57 = v30;
  v58 = v27;
  v53 = AssociatedConformanceWitness + 16;
  v54 = AssociatedConformanceWitness;
  v52 = v33;
  (v33)(v27);
  v50 = *(v9 + 48);
  v51 = v9 + 48;
  if (v50(v18, 1, v8) == 1)
  {
    v34 = &_swiftEmptyArrayStorage;
LABEL_3:
    (*(v47[0] + 8))(v57, v58);
  }

  else
  {
    v36 = *(v9 + 32);
    v35 = v9 + 32;
    v49 = v36;
    v37 = (v35 - 24);
    v34 = &_swiftEmptyArrayStorage;
    v47[1] = v35;
    v38 = v48;
    v36(v48, v18, v8);
    while (1)
    {
      v40 = v55(v38);
      if (v4)
      {
        break;
      }

      v42 = v40;
      v43 = v41;
      (*v37)(v38, v8);
      if (v43)
      {
        if (!swift_isUniquelyReferenced_nonNull_native(v34))
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v34[2]->isa + 1, 1, v34);
        }

        v45 = v34[2];
        v44 = v34[3];
        if (v45 >= v44 >> 1)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v34);
        }

        v34[2] = (v45 + 1);
        v39 = &v34[2 * v45];
        v39[4] = v42;
        v39[5] = v43;
        v38 = v48;
      }

      v52(v58, v54);
      if (v50(v18, 1, v8) == 1)
      {
        goto LABEL_3;
      }

      v49(v38, v18, v8);
    }

    (*v37)(v38, v8);
    (*(v47[0] + 8))(v57, v58);
    v34;
  }

  return v34;
}

uint64_t _PlaygroundQuickLook.init(reflecting:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Any(a1, v50);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss30_CustomPlaygroundQuickLookable_pMd, _ss30_CustomPlaygroundQuickLookable_pMR);
  if (swift_dynamicCast(&v47, v50, qword_1EEEAC6F8, v4, 6uLL, v5, v6, v7, v45) & 1) != 0 || (v49 = 0, v47 = 0u, v48 = 0u, outlined destroy of _HasContiguousBytes?(&v47, &_ss30_CustomPlaygroundQuickLookable_pSgMd, _ss30_CustomPlaygroundQuickLookable_pSgMR), outlined init with copy of Any(a1, v50), v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss38__DefaultCustomPlaygroundQuickLookable_pMd, _ss38__DefaultCustomPlaygroundQuickLookable_pMR), (swift_dynamicCast(&v47, v50, qword_1EEEAC6F8, v8, 6uLL, v9, v10, v11, v46)))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    _ss9CodingKey_pWOb_0(&v47, &v51);
    v12 = *(&v52 + 1);
    v13 = v53;
    __swift_project_boxed_opaque_existential_0Tm(&v51, *(&v52 + 1));
    (*(v13 + 8))(v12, v13);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v51);
  }

  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  outlined destroy of _HasContiguousBytes?(&v47, &_ss38__DefaultCustomPlaygroundQuickLookable_pSgMd, _ss38__DefaultCustomPlaygroundQuickLookable_pSgMR);
  v15 = swift_reflectionMirror_quickLookObject(a1, qword_1EEEAC6F8);
  if (!v15)
  {
    v51 = 0u;
    v52 = 0u;
    LOBYTE(v53) = -1;
    goto LABEL_12;
  }

  v16 = v15;
  swift_unknownObjectRetain_n(v15, 2);
  v17 = specialized String.withCString<A>(_:)(0x7265626D754E534EuLL, 0xE800000000000000, v16);
  0xE800000000000000;
  swift_unknownObjectRelease(v16);
  if (v17)
  {
    v18 = *[swift_unknownObjectRetain(v16) objCType];
    if ((v18 & 0x80) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    switch(v18)
    {
      case 'Q':
        v35 = [v16 unsignedLongLongValue];
        swift_unknownObjectRelease(v16);
        *&v51 = v35;
        v21 = 2;
        break;
      case 'f':
        [v16 floatValue];
        v34 = v33;
        swift_unknownObjectRelease(v16);
        LODWORD(v51) = v34;
        v21 = 3;
        break;
      case 'd':
        [v16 doubleValue];
        v20 = v19;
        swift_unknownObjectRelease(v16);
        *&v51 = v20;
        v21 = 4;
        break;
      default:
        v36 = [v16 longLongValue];
        swift_unknownObjectRelease(v16);
        *&v51 = v36;
        v21 = 1;
        break;
    }

    LOBYTE(v53) = v21;
LABEL_27:
    swift_unknownObjectRelease(v16);
    goto LABEL_28;
  }

  swift_unknownObjectRetain(v16);
  v23 = specialized String.withCString<A>(_:)(0xD000000000000012, 0x800000018066E750 | 0x8000000000000000, v16);
  0x800000018066E750 | 0x8000000000000000;
  swift_unknownObjectRelease(v16);
  if ((v23 & 1) == 0)
  {
    swift_unknownObjectRetain(v16);
    v25 = specialized String.withCString<A>(_:)(0x6567616D49534EuLL, 0xE700000000000000, v16);
    0xE700000000000000;
    swift_unknownObjectRelease(v16);
    if (v25 & 1) != 0 || (swift_unknownObjectRetain(v16), v26 = specialized String.withCString<A>(_:)(0x6567616D494955uLL, 0xE700000000000000, v16), 0xE700000000000000, swift_unknownObjectRelease(v16), (v26) || (v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NSImageView", 0xBuLL, 1), swift_unknownObjectRetain(v16), v28 = specialized String.withCString<A>(_:)(v27._countAndFlagsBits, v27._object, v16), v27._object, swift_unknownObjectRelease(v16), (v28) || (v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UIImageView", 0xBuLL, 1), swift_unknownObjectRetain(v16), v30 = specialized String.withCString<A>(_:)(v29._countAndFlagsBits, v29._object, v16), v29._object, swift_unknownObjectRelease(v16), (v30) || (swift_unknownObjectRetain(v16), v31 = specialized String.withCString<A>(_:)(0x6567616D494943uLL, 0xE700000000000000, v16), 0xE700000000000000, swift_unknownObjectRelease(v16), (v31) || (swift_unknownObjectRetain(v16), v32 = specialized String.withCString<A>(_:)(0xD000000000000010, 0x800000018066E780 | 0x8000000000000000, v16), 0x800000018066E780 | 0x8000000000000000, swift_unknownObjectRelease(v16), (v32))
    {
      *(&v52 + 1) = swift_getObjectType(v16);
      *&v51 = v16;
      v24 = 5;
      goto LABEL_22;
    }

    swift_unknownObjectRetain(v16);
    v38 = specialized String.withCString<A>(_:)(0x726F6C6F43534EuLL, 0xE700000000000000, v16);
    0xE700000000000000;
    swift_unknownObjectRelease(v16);
    if (v38 & 1) != 0 || (swift_unknownObjectRetain(v16), v39 = specialized String.withCString<A>(_:)(0x726F6C6F434955uLL, 0xE700000000000000, v16), 0xE700000000000000, swift_unknownObjectRelease(v16), (v39))
    {
      *(&v52 + 1) = swift_getObjectType(v16);
      *&v51 = v16;
      v24 = 7;
      goto LABEL_22;
    }

    v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NSBezierPath", 0xCuLL, 1);
    swift_unknownObjectRetain(v16);
    v41 = specialized String.withCString<A>(_:)(v40._countAndFlagsBits, v40._object, v16);
    v40._object;
    swift_unknownObjectRelease(v16);
    if (v41 & 1) != 0 || (v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UIBezierPath", 0xCuLL, 1), swift_unknownObjectRetain(v16), v43 = specialized String.withCString<A>(_:)(v42._countAndFlagsBits, v42._object, v16), v42._object, swift_unknownObjectRelease(v16), (v43))
    {
      *(&v52 + 1) = swift_getObjectType(v16);
      *&v51 = v16;
      v24 = 8;
      goto LABEL_22;
    }

    swift_unknownObjectRetain(v16);
    v44 = specialized String.withCString<A>(_:)(0x676E69727453534EuLL, 0xE800000000000000, v16);
    0xE800000000000000;
    swift_unknownObjectRelease(v16);
    if (v44)
    {
      v47 = 0uLL;
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v16, &type metadata for String, &v47);
      if (!*(&v47 + 1))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v51 = v47;
      LOBYTE(v53) = 0;
      goto LABEL_27;
    }

    v51 = 0u;
    v52 = 0u;
    LOBYTE(v53) = -1;
    swift_unknownObjectRelease_n(v16, 2);
LABEL_12:
    outlined destroy of _PlaygroundQuickLook?(&v51);
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    _debugPrint_unlocked<A, B>(_:_:)(a1, &v51, qword_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v22 = *(&v51 + 1);
    *a2 = v51;
    *(a2 + 8) = v22;
    *(a2 + 32) = 0;
    return result;
  }

  *(&v52 + 1) = swift_getObjectType(v16);
  *&v51 = v16;
  v24 = 9;
LABEL_22:
  LOBYTE(v53) = v24;
LABEL_28:
  swift_unknownObjectRelease(v16);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v37 = v52;
  *a2 = v51;
  *(a2 + 16) = v37;
  *(a2 + 32) = v53;
  return result;
}

uint64_t _SwiftStdlibVersion.description.getter(unsigned int a1)
{
  v3 = _StringGuts.init(_initialCapacity:)(8);
  v5 = v3;
  v6 = v4;
  v269._countAndFlagsBits = v3;
  v269._object = v4;
  v7 = HIBYTE(v4) & 0xF;
  v8 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v267 = a1;
  if (!v9 && (v3 & ~v4 & 0x2000000000000000) == 0)
  {
    v269._countAndFlagsBits = 0;
    v269._object = 0xE000000000000000;
    object = v4;
LABEL_57:
    object;
    goto LABEL_58;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    v4;
    0xE000000000000000;
    v17 = 0xA000000000000000;
    if (!(v6 & 0x80808080808080 | v5 & 0x8080808080808080))
    {
      v17 = 0xE000000000000000;
    }

    v269._countAndFlagsBits = v5;
    v269._object = (v17 & 0xFF00000000000000 | (v7 << 56) | v6 & 0xFFFFFFFFFFFFFFLL);
    goto LABEL_58;
  }

  0xE000000000000000;
  v11 = v8;
  if ((v6 & 0x1000000000000000) != 0)
  {
    v11 = String.UTF8View._foreignCount()();
    if ((v5 & 0x2000000000000000) == 0)
    {
LABEL_19:
      if (v11 > 15)
      {
        v19 = (_StringGuts.nativeUnusedCapacity.getter(v5, v6) & 0x8000000000000000) != 0;
        v16 = v20 | v19;
        if ((v5 & 0x2000000000000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_21;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
    goto LABEL_19;
  }

  if (!swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_19;
  }

  v12 = _StringGuts.nativeUnusedCapacity.getter(v5, v6);
  if (v13)
  {
    goto LABEL_321;
  }

  if (v11 <= 15 && (v12 & 0x8000000000000000) != 0)
  {
LABEL_24:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v22 = _StringGuts._foreignConvertedToSmall()(v5, v6);
      v23 = v238;
    }

    else
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v21 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v21 = _StringObject.sharedUTF8.getter(v5, v6);
        v8 = v241;
      }

      closure #1 in _StringGuts._convertedToSmall()(v21, v8, &v268, v10);
      v23 = *(&v268 + 1);
      v22 = v268;
    }

    v24 = 0xE000000000000000;
    0xE000000000000000;
    v25._rawBits = 1;
    v26._rawBits = 1;
    v27._rawBits = _StringGuts.validateScalarRange(_:)(v25, v26, 0, 0xE000000000000000)._rawBits;
    if (v27._rawBits < 0x10000)
    {
      v27._rawBits |= 3;
    }

    if (v27._rawBits >> 16 || v28._rawBits >= 0x10000)
    {
      v30 = specialized static String._copying(_:)(v27._rawBits, v28, 0, 0xE000000000000000);
      v24 = v35;
      0xE000000000000000;
    }

    else
    {
      v30 = 0;
    }

    if ((v24 & 0x2000000000000000) != 0)
    {
      v24;
    }

    else if ((v24 & 0x1000000000000000) != 0)
    {
      v30 = _StringGuts._foreignConvertedToSmall()(v30, v24);
      v261 = v260;
      v24;
      v24 = v261;
    }

    else
    {
      if ((v30 & 0x1000000000000000) != 0)
      {
        v239 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v240 = v30 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v239 = _StringObject.sharedUTF8.getter(v30, v24);
      }

      closure #1 in _StringGuts._convertedToSmall()(v239, v240, &v268, v29);
      v24;
      v24 = *(&v268 + 1);
      v30 = v268;
    }

    v36 = HIBYTE(v23) & 0xF;
    v37 = HIBYTE(v24) & 0xF;
    v38 = v37 + v36;
    if (v37 + v36 > 0xF)
    {
      goto LABEL_321;
    }

    v1 = 0xE000000000000000;
    0xE000000000000000;
    if (v37)
    {
      v39 = 0;
      v40 = 0;
      v41 = 8 * v36;
      do
      {
        v42 = v24 >> (v39 & 0x38);
        if (v40 < 8)
        {
          v42 = v30 >> v39;
        }

        v43 = (v42 << (v41 & 0x38)) | ((-255 << (v41 & 0x38)) - 1) & v23;
        v44 = (v42 << v41) | ((-255 << v41) - 1) & v22;
        if (v36 <= 7)
        {
          v22 = v44;
        }

        else
        {
          v23 = v43;
        }

        ++v36;
        v41 += 8;
        v39 += 8;
        ++v40;
      }

      while (8 * v37 != v39);
    }

    0xE000000000000000;
    v45 = 0xA000000000000000;
    if (!(v22 & 0x8080808080808080 | v23 & 0x80808080808080))
    {
      v45 = 0xE000000000000000;
    }

    object = v269._object;
    v269._countAndFlagsBits = v22;
    v269._object = (v45 & 0xFF00000000000000 | (v38 << 56) | v23 & 0xFFFFFFFFFFFFFFLL);
    goto LABEL_57;
  }

  v14 = (_StringGuts.nativeUnusedCapacity.getter(v5, v6) & 0x8000000000000000) != 0;
  v16 = v15 | v14;
LABEL_21:
  if (swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (v16)
  {
LABEL_34:
    v31 = _StringGuts.nativeCapacity.getter(v5, v6);
    if (v32)
    {
      v33 = 0;
    }

    else
    {
      v33 = v31;
    }

    if (v33 + 0x4000000000000000 < 0)
    {
      __break(1u);
      goto LABEL_321;
    }

    v34 = 2 * v33;
    if (v34 > v11)
    {
      v11 = v34;
    }
  }

  _StringGuts.grow(_:)(v11);
LABEL_41:
  v268 = 0uLL;
  closure #1 in _StringGuts.append(_:)(&v268, 0, &v269, 1);
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
LABEL_58:
  v46 = _uint64ToString(_:radix:uppercase:)(HIWORD(a1), 10, 0);
  countAndFlagsBits = v46._countAndFlagsBits;
  v48 = v46._object;
  v49 = v269._countAndFlagsBits;
  v50 = v269._object;
  v51 = (v269._object >> 56) & 0xF;
  v52 = v269._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v269._object & 0x2000000000000000) != 0)
  {
    v52 = (v269._object >> 56) & 0xF;
  }

  if (!v52 && (v269._countAndFlagsBits & ~v269._object & 0x2000000000000000) == 0)
  {
    v269 = v46;
    v50;
    goto LABEL_122;
  }

  v53 = (v46._object & 0x2000000000000000) == 0;
  v54 = (v46._object >> 56) & 0xF;
  if ((v269._object & 0x2000000000000000) == 0)
  {
    v55 = v46._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v1 = (v46._object >> 56) & 0xF;
    if ((v46._object & 0x2000000000000000) != 0)
    {
LABEL_68:
      if ((v46._object & 0x1000000000000000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_97;
    }

LABEL_67:
    v1 = v55;
    goto LABEL_68;
  }

  if ((v46._object & 0x2000000000000000) == 0)
  {
    v55 = v46._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v53 = 1;
    goto LABEL_67;
  }

  v73 = v51 + v54;
  if (v51 + v54 >= 0x10)
  {
    v53 = 0;
    v55 = v46._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v1 = (v46._object >> 56) & 0xF;
    if ((v46._object & 0x1000000000000000) == 0)
    {
LABEL_69:
      v46._object;
      v57 = v1;
      if ((v50 & 0x1000000000000000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_100;
    }

LABEL_97:
    swift_bridgeObjectRetain_n(v46._object, 2);
    v74._rawBits = 1;
    v75._rawBits = (v1 << 16) | 1;
    v76._rawBits = _StringGuts.validateScalarRange(_:)(v74, v75, v46._countAndFlagsBits, v46._object)._rawBits;
    if (v76._rawBits < 0x10000)
    {
      v76._rawBits |= 3;
    }

    v57 = String.UTF8View.distance(from:to:)(v76, v77);
    v46._object;
    v49 = v269._countAndFlagsBits;
    v50 = v269._object;
    if ((v269._object & 0x1000000000000000) == 0)
    {
LABEL_70:
      if ((v50 & 0x2000000000000000) != 0)
      {
        goto LABEL_74;
      }

      v58 = (v49 & 0xFFFFFFFFFFFFLL) + v57;
      if (!__OFADD__(v49 & 0xFFFFFFFFFFFFLL, v57))
      {
        goto LABEL_75;
      }

      goto LABEL_73;
    }

LABEL_100:
    v78 = String.UTF8View._foreignCount()();
    v58 = v78 + v57;
    if (!__OFADD__(v78, v57))
    {
LABEL_75:
      if ((v49 & ~v50 & 0x2000000000000000) == 0 || (isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v50 & 0xFFFFFFFFFFFFFFFLL), v49 = v269._countAndFlagsBits, v50 = v269._object, !isUniquelyReferenced_nonNull_native))
      {
        if (v58 > 15)
        {
          goto LABEL_81;
        }

        goto LABEL_87;
      }

      v61 = _StringGuts.nativeUnusedCapacity.getter(v269._countAndFlagsBits, v269._object);
      if ((v62 & 1) == 0)
      {
        if (v58 > 15 || (v50 & 0x2000000000000000) == 0 && v61 >= v57)
        {
LABEL_81:
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v58, v57);
          if ((v46._object & 0x1000000000000000) != 0)
          {
            _StringGuts._foreignAppendInPlace(_:)(v46._countAndFlagsBits, v46._object, 0, v1);
            swift_bridgeObjectRelease_n(v46._object, 2);
            LOWORD(a1) = v267;
            goto LABEL_122;
          }

          LOWORD(a1) = v267;
          if (v53)
          {
            if ((v46._countAndFlagsBits & 0x1000000000000000) != 0)
            {
              v63 = (v46._object & 0xFFFFFFFFFFFFFFFLL) + 32;
              v64 = v55;
            }

            else
            {
              v250 = _StringObject.sharedUTF8.getter(v46._countAndFlagsBits, v46._object);
              if (v251 < v55)
              {
LABEL_319:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v63 = v250;
              v64 = v251;
              LOWORD(a1) = v267;
            }

            v65 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v55, v63, v64);
            v67 = v46._countAndFlagsBits >> 63;
          }

          else
          {
            v67 = (v46._object >> 62) & 1;
            *&v268 = v46._countAndFlagsBits;
            *(&v268 + 1) = v46._object & 0xFFFFFFFFFFFFFFLL;
            v65 = &v268;
            v66 = (v46._object >> 56) & 0xF;
          }

          closure #1 in _StringGuts.append(_:)(v65, v66, &v269, v67);
          swift_bridgeObjectRelease_n(v46._object, 2);
          goto LABEL_122;
        }

LABEL_87:
        if ((v50 & 0x2000000000000000) != 0)
        {
          LOWORD(a1) = v267;
          goto LABEL_89;
        }

        goto LABEL_276;
      }

LABEL_321:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    do
    {
LABEL_73:
      __break(1u);
LABEL_74:
      v59 = HIBYTE(v50) & 0xF;
      v58 = v59 + v57;
    }

    while (__OFADD__(v59, v57));
    goto LABEL_75;
  }

  if (v54)
  {
    v86 = 0;
    v87 = 0;
    v88 = 8 * v51;
    do
    {
      v89 = v46._object >> (v86 & 0x38);
      if (v87 < 8)
      {
        v89 = v46._countAndFlagsBits >> v86;
      }

      v90 = (v89 << (v88 & 0x38)) | ((-255 << (v88 & 0x38)) - 1) & v50;
      v91 = (v89 << v88) | ((-255 << v88) - 1) & v49;
      if (v51 <= 7)
      {
        v49 = v91;
      }

      else
      {
        v50 = v90;
      }

      ++v51;
      v88 += 8;
      v86 += 8;
      ++v87;
    }

    while (8 * v54 != v86);
  }

  v46._object;
  v92 = 0xA000000000000000;
  if (!(v49 & 0x8080808080808080 | v50 & 0x80808080808080))
  {
    v92 = 0xE000000000000000;
  }

  v93 = (v92 & 0xFF00000000000000 | (v73 << 56) | v50 & 0xFFFFFFFFFFFFFFLL);
  v269._object;
  v269._countAndFlagsBits = v49;
  v269._object = v93;
  while (1)
  {
LABEL_122:
    v48 = v269._countAndFlagsBits;
    v49 = v269._object;
    v94 = (v269._object >> 56) & 0xF;
    if ((v269._object & 0x2000000000000000) != 0)
    {
      v95 = (v269._object >> 56) & 0xF;
    }

    else
    {
      v95 = v269._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v95 && (v269._countAndFlagsBits & ~v269._object & 0x2000000000000000) == 0)
    {
      v269._countAndFlagsBits = 46;
      v269._object = 0xE100000000000000;
      v122 = v49;
LABEL_153:
      v122;
      goto LABEL_154;
    }

    if ((v269._object & 0x2000000000000000) == 0 || v94 == 15)
    {
      0xE100000000000000;
      if ((v49 & 0x1000000000000000) == 0)
      {
        v104 = __OFADD__(v95, 1);
        v105 = v95 + 1;
        if (v104)
        {
          goto LABEL_272;
        }

        goto LABEL_137;
      }

      v228 = String.UTF8View._foreignCount()();
      v105 = v228 + 1;
      if (!__OFADD__(v228, 1))
      {
LABEL_137:
        if ((v48 & ~v49 & 0x2000000000000000) != 0 && (v106 = swift_isUniquelyReferenced_nonNull_native(v49 & 0xFFFFFFFFFFFFFFFLL), v48 = v269._countAndFlagsBits, v49 = v269._object, v106))
        {
          v107 = _StringGuts.nativeUnusedCapacity.getter(v269._countAndFlagsBits, v269._object);
          if (v108)
          {
            goto LABEL_321;
          }

          if (v105 > 15 || (v49 & 0x2000000000000000) == 0 && v107 > 0)
          {
LABEL_143:
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v105, 1);
            v268 = xmmword_18071DF60;
            closure #1 in _StringGuts.append(_:)(&v268, 1uLL, &v269, 1);
            swift_bridgeObjectRelease_n(0xE100000000000000, 2);
            goto LABEL_154;
          }
        }

        else if (v105 > 15)
        {
          goto LABEL_143;
        }

        if ((v49 & 0x2000000000000000) == 0)
        {
          if ((v49 & 0x1000000000000000) != 0)
          {
            v48 = _StringGuts._foreignConvertedToSmall()(v48, v49);
            v49 = v262;
          }

          else
          {
            if ((v48 & 0x1000000000000000) != 0)
            {
              v242 = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v243 = v48 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v242 = _StringObject.sharedUTF8.getter(v48, v49);
            }

            closure #1 in _StringGuts._convertedToSmall()(v242, v243, &v268, v103);
            v49 = *(&v268 + 1);
            v48 = v268;
          }

          LOWORD(a1) = v267;
        }

        0xE100000000000000;
        v109._rawBits = 1;
        v110._rawBits = 65537;
        v111._rawBits = _StringGuts.validateScalarRange(_:)(v109, v110, 0x2EuLL, 0xE100000000000000)._rawBits;
        if (v111._rawBits < 0x10000)
        {
          v111._rawBits |= 3;
        }

        v113 = Substring.description.getter(v111._rawBits, v112, 0x2EuLL, 0xE100000000000000);
        v115 = v114;
        0xE100000000000000;
        if ((v115 & 0x2000000000000000) != 0)
        {
          v115;
        }

        else if ((v115 & 0x1000000000000000) != 0)
        {
          v113 = _StringGuts._foreignConvertedToSmall()(v113, v115);
          v1 = v263;
          v115;
          v115 = v1;
          LOWORD(a1) = v267;
        }

        else
        {
          if ((v113 & 0x1000000000000000) != 0)
          {
            v244 = ((v115 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v245 = v113 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v244 = _StringObject.sharedUTF8.getter(v113, v115);
          }

          closure #1 in _StringGuts._convertedToSmall()(v244, v245, &v268, v116);
          v115;
          v115 = *(&v268 + 1);
          v113 = v268;
          LOWORD(a1) = v267;
        }

        v117 = specialized _SmallString.init(_:appending:)(v48, v49, v113, v115);
        if (v119)
        {
          goto LABEL_321;
        }

        v120 = v117;
        v121 = v118;
        swift_bridgeObjectRelease_n(0xE100000000000000, 2);
        v122 = v269._object;
        v269._countAndFlagsBits = v120;
        v269._object = v121;
        goto LABEL_153;
      }

LABEL_272:
      __break(1u);
LABEL_273:
      v229 = String.UTF8View._foreignCount()();
      countAndFlagsBits = v229 + 1;
      if (__OFADD__(v229, 1))
      {
        goto LABEL_275;
      }

LABEL_229:
      if ((v48 & ~v49 & 0x2000000000000000) != 0 && (v178 = swift_isUniquelyReferenced_nonNull_native(v49 & 0xFFFFFFFFFFFFFFFLL), v48 = v269._countAndFlagsBits, v49 = v269._object, v178))
      {
        v179 = _StringGuts.nativeUnusedCapacity.getter(v269._countAndFlagsBits, v269._object);
        if (v180)
        {
          goto LABEL_321;
        }

        if (countAndFlagsBits > 15 || (v49 & 0x2000000000000000) == 0 && v179 > 0)
        {
LABEL_235:
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(countAndFlagsBits, 1);
          v268 = xmmword_18071DF60;
          closure #1 in _StringGuts.append(_:)(&v268, 1uLL, &v269, 1);
          swift_bridgeObjectRelease_n(0xE100000000000000, 2);
          goto LABEL_246;
        }
      }

      else if (countAndFlagsBits > 15)
      {
        goto LABEL_235;
      }

      if ((v49 & 0x2000000000000000) == 0)
      {
        if ((v49 & 0x1000000000000000) != 0)
        {
          v48 = _StringGuts._foreignConvertedToSmall()(v48, v49);
          v49 = v264;
        }

        else
        {
          if ((v48 & 0x1000000000000000) != 0)
          {
            v246 = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v247 = v48 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v246 = _StringObject.sharedUTF8.getter(v48, v49);
          }

          closure #1 in _StringGuts._convertedToSmall()(v246, v247, &v268, v56);
          v49 = *(&v268 + 1);
          v48 = v268;
        }

        LOBYTE(a1) = v267;
      }

      0xE100000000000000;
      v181._rawBits = 1;
      v182._rawBits = 65537;
      v183._rawBits = _StringGuts.validateScalarRange(_:)(v181, v182, 0x2EuLL, 0xE100000000000000)._rawBits;
      if (v183._rawBits < 0x10000)
      {
        v183._rawBits |= 3;
      }

      v185 = Substring.description.getter(v183._rawBits, v184, 0x2EuLL, 0xE100000000000000);
      v187 = v186;
      0xE100000000000000;
      if ((v187 & 0x2000000000000000) != 0)
      {
        v187;
      }

      else if ((v187 & 0x1000000000000000) != 0)
      {
        v185 = _StringGuts._foreignConvertedToSmall()(v185, v187);
        v266 = v265;
        v187;
        v187 = v266;
        LOBYTE(a1) = v267;
      }

      else
      {
        if ((v185 & 0x1000000000000000) != 0)
        {
          v248 = ((v187 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v249 = v185 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v248 = _StringObject.sharedUTF8.getter(v185, v187);
        }

        closure #1 in _StringGuts._convertedToSmall()(v248, v249, &v268, v188);
        v187;
        v187 = *(&v268 + 1);
        v185 = v268;
        LOBYTE(a1) = v267;
      }

      v189 = specialized _SmallString.init(_:appending:)(v48, v49, v185, v187);
      if ((v191 & 1) == 0)
      {
        v192 = v189;
        v193 = v190;
        swift_bridgeObjectRelease_n(0xE100000000000000, 2);
        v194 = v269._object;
        v269._countAndFlagsBits = v192;
        v269._object = v193;
        goto LABEL_245;
      }

      goto LABEL_321;
    }

    v96 = 8 * ((v269._object >> 56) & 7);
    v97 = (-255 << v96) - 1;
    v98 = 46 << v96;
    v99 = v97 & v269._object | v98;
    v100 = v97 & v269._countAndFlagsBits | v98;
    if (v94 < 8)
    {
      v48 = v100;
    }

    else
    {
      v49 = v99;
    }

    0xE100000000000000;
    v101 = 0xA000000000000000;
    if (!(v48 & 0x8080808080808080 | v49 & 0x80808080808080))
    {
      v101 = 0xE000000000000000;
    }

    v102 = ((v101 & 0xFF00000000000000 | (v94 << 56) | v49 & 0xFFFFFFFFFFFFFFLL) + 0x100000000000000);
    v269._object;
    v269._countAndFlagsBits = v48;
    v269._object = v102;
LABEL_154:
    v123 = _uint64ToString(_:radix:uppercase:)(BYTE1(a1), 10, 0);
    v124 = v269._countAndFlagsBits;
    v50 = v269._object;
    v125 = (v269._object >> 56) & 0xF;
    v126 = v269._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v269._object & 0x2000000000000000) != 0)
    {
      v126 = (v269._object >> 56) & 0xF;
    }

    if (!v126 && (v269._countAndFlagsBits & ~v269._object & 0x2000000000000000) == 0)
    {
      v269 = v123;
      v50;
      goto LABEL_214;
    }

    v127 = (v123._object & 0x2000000000000000) == 0;
    v128 = (v123._object >> 56) & 0xF;
    if ((v269._object & 0x2000000000000000) == 0)
    {
      v129 = v123._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v1 = (v123._object >> 56) & 0xF;
      if ((v123._object & 0x2000000000000000) != 0)
      {
LABEL_164:
        if ((v123._object & 0x1000000000000000) == 0)
        {
          goto LABEL_165;
        }

        goto LABEL_194;
      }

LABEL_163:
      v1 = v129;
      goto LABEL_164;
    }

    if ((v123._object & 0x2000000000000000) == 0)
    {
      v129 = v123._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v127 = 1;
      goto LABEL_163;
    }

    v155 = v125 + v128;
    if (v125 + v128 < 0x10)
    {
      if (v128)
      {
        v161 = 0;
        v162 = 0;
        v163 = 8 * v125;
        do
        {
          v164 = v123._object >> (v161 & 0x38);
          if (v162 < 8)
          {
            v164 = v123._countAndFlagsBits >> v161;
          }

          v165 = (v164 << (v163 & 0x38)) | ((-255 << (v163 & 0x38)) - 1) & v50;
          v166 = (v164 << v163) | ((-255 << v163) - 1) & v124;
          if (v125 <= 7)
          {
            v124 = v166;
          }

          else
          {
            v50 = v165;
          }

          ++v125;
          v163 += 8;
          v161 += 8;
          ++v162;
        }

        while (8 * v128 != v161);
      }

      v123._object;
      v167 = 0xA000000000000000;
      if (!(v124 & 0x8080808080808080 | v50 & 0x80808080808080))
      {
        v167 = 0xE000000000000000;
      }

      v168 = (v167 & 0xFF00000000000000 | (v155 << 56) | v50 & 0xFFFFFFFFFFFFFFLL);
      v269._object;
      v269._countAndFlagsBits = v124;
      v269._object = v168;
      goto LABEL_214;
    }

    v127 = 0;
    v129 = v123._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v1 = (v123._object >> 56) & 0xF;
    if ((v123._object & 0x1000000000000000) == 0)
    {
LABEL_165:
      v123._object;
      v131 = v1;
      if ((v50 & 0x1000000000000000) != 0)
      {
        goto LABEL_197;
      }

      goto LABEL_166;
    }

LABEL_194:
    swift_bridgeObjectRetain_n(v123._object, 2);
    v156._rawBits = 1;
    v157._rawBits = (v1 << 16) | 1;
    v158._rawBits = _StringGuts.validateScalarRange(_:)(v156, v157, v123._countAndFlagsBits, v123._object)._rawBits;
    if (v158._rawBits < 0x10000)
    {
      v158._rawBits |= 3;
    }

    v131 = String.UTF8View.distance(from:to:)(v158, v159);
    v123._object;
    v124 = v269._countAndFlagsBits;
    v50 = v269._object;
    if ((v269._object & 0x1000000000000000) != 0)
    {
LABEL_197:
      v160 = String.UTF8View._foreignCount()();
      v132 = v160 + v131;
      if (!__OFADD__(v160, v131))
      {
        goto LABEL_171;
      }

      goto LABEL_169;
    }

LABEL_166:
    if ((v50 & 0x2000000000000000) == 0)
    {
      v132 = (v124 & 0xFFFFFFFFFFFFLL) + v131;
      if (!__OFADD__(v124 & 0xFFFFFFFFFFFFLL, v131))
      {
        goto LABEL_171;
      }

      goto LABEL_169;
    }

    while (1)
    {
      v133 = HIBYTE(v50) & 0xF;
      v132 = v133 + v131;
      if (!__OFADD__(v133, v131))
      {
        break;
      }

LABEL_169:
      __break(1u);
    }

LABEL_171:
    if ((v124 & ~v50 & 0x2000000000000000) != 0 && (v134 = swift_isUniquelyReferenced_nonNull_native(v50 & 0xFFFFFFFFFFFFFFFLL), v124 = v269._countAndFlagsBits, v50 = v269._object, v134))
    {
      v135 = _StringGuts.nativeUnusedCapacity.getter(v269._countAndFlagsBits, v269._object);
      if (v136)
      {
        goto LABEL_321;
      }

      if (v132 > 15 || (v50 & 0x2000000000000000) == 0 && v135 >= v131)
      {
LABEL_177:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v132, v131);
        if ((v123._object & 0x1000000000000000) != 0)
        {
          _StringGuts._foreignAppendInPlace(_:)(v123._countAndFlagsBits, v123._object, 0, v1);
          swift_bridgeObjectRelease_n(v123._object, 2);
          LOBYTE(a1) = v267;
        }

        else
        {
          LOBYTE(a1) = v267;
          if (v127)
          {
            if ((v123._countAndFlagsBits & 0x1000000000000000) != 0)
            {
              v137 = (v123._object & 0xFFFFFFFFFFFFFFFLL) + 32;
              v138 = v129;
            }

            else
            {
              v252 = _StringObject.sharedUTF8.getter(v123._countAndFlagsBits, v123._object);
              if (v253 < v129)
              {
                goto LABEL_319;
              }

              v137 = v252;
              v138 = v253;
              LOBYTE(a1) = v267;
            }

            v139 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v129, v137, v138);
            v141 = v123._countAndFlagsBits >> 63;
          }

          else
          {
            v141 = (v123._object >> 62) & 1;
            *&v268 = v123._countAndFlagsBits;
            *(&v268 + 1) = v123._object & 0xFFFFFFFFFFFFFFLL;
            v139 = &v268;
            v140 = (v123._object >> 56) & 0xF;
          }

          closure #1 in _StringGuts.append(_:)(v139, v140, &v269, v141);
          swift_bridgeObjectRelease_n(v123._object, 2);
        }

        goto LABEL_214;
      }
    }

    else if (v132 > 15)
    {
      goto LABEL_177;
    }

    if ((v50 & 0x2000000000000000) != 0)
    {
      LOBYTE(a1) = v267;
    }

    else
    {
      LOBYTE(a1) = v267;
      if ((v50 & 0x1000000000000000) != 0)
      {
        v124 = _StringGuts._foreignConvertedToSmall()(v124, v50);
        v50 = v257;
      }

      else
      {
        if ((v124 & 0x1000000000000000) != 0)
        {
          v234 = ((v50 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v235 = v124 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v234 = _StringObject.sharedUTF8.getter(v124, v50);
        }

        closure #1 in _StringGuts._convertedToSmall()(v234, v235, &v268, v130);
        v50 = *(&v268 + 1);
        v124 = v268;
      }
    }

    v123._object;
    v142._rawBits = 1;
    v143._rawBits = (v1 << 16) | 1;
    v144._rawBits = _StringGuts.validateScalarRange(_:)(v142, v143, v123._countAndFlagsBits, v123._object)._rawBits;
    if (v144._rawBits < 0x10000)
    {
      v144._rawBits |= 3;
    }

    v1 = Substring.description.getter(v144._rawBits, v145, v123._countAndFlagsBits, v123._object);
    v147 = v146;
    v123._object;
    if ((v147 & 0x2000000000000000) != 0)
    {
      v147;
    }

    else if ((v147 & 0x1000000000000000) != 0)
    {
      v1 = _StringGuts._foreignConvertedToSmall()(v1, v147);
      v259 = v258;
      v147;
      v147 = v259;
    }

    else
    {
      if ((v1 & 0x1000000000000000) != 0)
      {
        v236 = ((v147 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v237 = v1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v236 = _StringObject.sharedUTF8.getter(v1, v147);
      }

      closure #1 in _StringGuts._convertedToSmall()(v236, v237, &v268, v148);
      v147;
      v147 = *(&v268 + 1);
      v1 = v268;
    }

    v149 = specialized _SmallString.init(_:appending:)(v124, v50, v1, v147);
    if (v151)
    {
      goto LABEL_321;
    }

    v152 = v149;
    v153 = v150;
    swift_bridgeObjectRelease_n(v123._object, 2);
    v154 = v269._object;
    v269._countAndFlagsBits = v152;
    v269._object = v153;
    v154;
LABEL_214:
    v48 = v269._countAndFlagsBits;
    v49 = v269._object;
    v169 = (v269._object >> 56) & 0xF;
    v170 = (v269._object & 0x2000000000000000) != 0 ? (v269._object >> 56) & 0xF : v269._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if (!v170 && (v269._countAndFlagsBits & ~v269._object & 0x2000000000000000) == 0)
    {
      break;
    }

    if ((v269._object & 0x2000000000000000) != 0 && v169 != 15)
    {
      v171 = 8 * ((v269._object >> 56) & 7);
      v172 = (-255 << v171) - 1;
      v173 = 46 << v171;
      v174 = v172 & v269._object | v173;
      v175 = v172 & v269._countAndFlagsBits | v173;
      if (v169 < 8)
      {
        v48 = v175;
      }

      else
      {
        v49 = v174;
      }

      0xE100000000000000;
      v176 = 0xA000000000000000;
      if (!(v48 & 0x8080808080808080 | v49 & 0x80808080808080))
      {
        v176 = 0xE000000000000000;
      }

      v177 = ((v176 & 0xFF00000000000000 | (v169 << 56) | v49 & 0xFFFFFFFFFFFFFFLL) + 0x100000000000000);
      v269._object;
      v269._countAndFlagsBits = v48;
      v269._object = v177;
      goto LABEL_246;
    }

    0xE100000000000000;
    if ((v49 & 0x1000000000000000) != 0)
    {
      goto LABEL_273;
    }

    v104 = __OFADD__(v170, 1);
    countAndFlagsBits = v170 + 1;
    if (!v104)
    {
      goto LABEL_229;
    }

LABEL_275:
    __break(1u);
LABEL_276:
    LOWORD(a1) = v267;
    if ((v50 & 0x1000000000000000) != 0)
    {
      v49 = _StringGuts._foreignConvertedToSmall()(v49, v50);
      v50 = v254;
    }

    else
    {
      if ((v49 & 0x1000000000000000) != 0)
      {
        v230 = ((v50 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v231 = v49 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v230 = _StringObject.sharedUTF8.getter(v49, v50);
      }

      closure #1 in _StringGuts._convertedToSmall()(v230, v231, &v268, v56);
      v50 = *(&v268 + 1);
      v49 = v268;
    }

LABEL_89:
    v48;
    v68._rawBits = 1;
    v69._rawBits = (v1 << 16) | 1;
    v70._rawBits = _StringGuts.validateScalarRange(_:)(v68, v69, countAndFlagsBits, v48)._rawBits;
    if (v70._rawBits < 0x10000)
    {
      v70._rawBits |= 3;
    }

    if (v70._rawBits >> 16 || v71._rawBits >> 16 != v1)
    {
      countAndFlagsBits = specialized static String._copying(_:)(v70._rawBits, v71, countAndFlagsBits, v48);
      v1 = v79;
      v48;
    }

    else
    {
      v1 = v48;
    }

    if ((v1 & 0x2000000000000000) != 0)
    {
      v1;
    }

    else if ((v1 & 0x1000000000000000) != 0)
    {
      countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, v1);
      v256 = v255;
      v1;
      v1 = v256;
    }

    else
    {
      if ((countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v232 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v233 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v232 = _StringObject.sharedUTF8.getter(countAndFlagsBits, v1);
      }

      closure #1 in _StringGuts._convertedToSmall()(v232, v233, &v268, v72);
      v1;
      v1 = *(&v268 + 1);
      countAndFlagsBits = v268;
    }

    v80 = specialized _SmallString.init(_:appending:)(v49, v50, countAndFlagsBits, v1);
    if (v82)
    {
      goto LABEL_321;
    }

    v83 = v80;
    v84 = v81;
    swift_bridgeObjectRelease_n(v48, 2);
    v85 = v269._object;
    v269._countAndFlagsBits = v83;
    v269._object = v84;
    v85;
  }

  v269._countAndFlagsBits = 46;
  v269._object = 0xE100000000000000;
  v194 = v49;
LABEL_245:
  v194;
LABEL_246:
  v195 = _uint64ToString(_:radix:uppercase:)(a1, 10, 0);
  v196 = v269._object;
  v197 = (v269._object >> 56) & 0xF;
  if ((v269._object & 0x2000000000000000) == 0)
  {
    v197 = v269._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v197 && (v269._countAndFlagsBits & ~v269._object & 0x2000000000000000) == 0)
  {
    v269 = v195;
    v196;
    goto LABEL_258;
  }

  if ((v269._object & 0x2000000000000000) != 0)
  {
    if ((v195._object & 0x2000000000000000) != 0)
    {
      v199 = specialized _SmallString.init(_:appending:)(v269._countAndFlagsBits, v269._object, v195._countAndFlagsBits, v195._object);
      if (v201)
      {
        goto LABEL_256;
      }

      v226 = v199;
      v227 = v200;
      v195._object;
      v269._object;
      v269._countAndFlagsBits = v226;
      v269._object = v227;
      goto LABEL_258;
    }

LABEL_254:
    v198 = v195._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_257;
  }

  if ((v195._object & 0x2000000000000000) == 0)
  {
    goto LABEL_254;
  }

LABEL_256:
  v198 = (v195._object >> 56) & 0xF;
LABEL_257:
  v195._object;
  _StringGuts.append(_:)(v195._countAndFlagsBits, v195._object, 0, v198, v202, v203, v204, v205, v206, v207, v208, v209);
  swift_bridgeObjectRelease_n(v195._object, 2);
LABEL_258:
  v210 = v269._object;
  v211 = (v269._object >> 56) & 0xF;
  if ((v269._object & 0x2000000000000000) == 0)
  {
    v211 = v269._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v211 || (v269._countAndFlagsBits & ~v269._object & 0x2000000000000000) != 0)
  {
    if ((v269._object & 0x2000000000000000) != 0 && (v212 = specialized _SmallString.init(_:appending:)(v269._countAndFlagsBits, v269._object, 0, 0xE000000000000000), (v214 & 1) == 0))
    {
      v223 = v212;
      v224 = v213;
      0xE000000000000000;
      v269._object;
      v269._countAndFlagsBits = v223;
      v269._object = v224;
    }

    else
    {
      0xE000000000000000;
      _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v215, v216, v217, v218, v219, v220, v221, v222);
      swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    }
  }

  else
  {
    v269._countAndFlagsBits = 0;
    v269._object = 0xE000000000000000;
    v210;
  }

  return v269._countAndFlagsBits;
}

void CollectionDifference.init<A>(_:)(uint64_t a1@<X0>, char *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (static CollectionDifference._validateChanges<A>(_:)(a1, a2, a3, a4))
  {
    CollectionDifference.init<A>(_validatedChanges:)(a1, a2, a3, a4, &v11);
    v10 = v11;
  }

  else
  {
    (*(*(a3 - 1) + 1))(a1, a3);
    v10 = 0uLL;
  }

  *a5 = v10;
}

uint64_t static CollectionDifference._validateChanges<A>(_:)(uint64_t a1, char *a2, Class *a3, uint64_t a4)
{
  v124 = a2;
  v7 = type metadata accessor for CollectionDifference.Change(0, a2, a3, a4);
  v122 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v116 = (&v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v117 = &v100 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v123 = (&v100 - v16);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v118 = (&v100 - v19);
  MEMORY[0x1EEE9AC00](v18, v20);
  v119 = &v100 - v21;
  v24 = type metadata accessor for Optional(0, v7, v22, v23);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v28 = &v100 - v27;
  v29 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v26, v30);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v33, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v35 = v34;
  v113 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v100 - v37;
  if ((*(a4 + 104))(a3, a4))
  {
    v39 = 1;
    return v39 & 1;
  }

  v127 = &_swiftEmptySetSingleton;
  v128 = &_swiftEmptySetSingleton;
  (*(v29 + 16))(v32, a1, a3);
  (*(v33 + 32))(a3, v33);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v33, a3, v35, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v41 = *(AssociatedConformanceWitness + 16);
  v110 = AssociatedConformanceWitness + 16;
  v111 = AssociatedConformanceWitness;
  v109 = v41;
  (v41)(v35);
  v42 = v122;
  v43 = *(v122 + 48);
  v44 = v7;
  v108 = v122 + 48;
  v107 = v43;
  v45 = v43(v28, 1, v7);
  v46 = v42;
  v47 = v35;
  v48 = v38;
  if (v45 == 1)
  {
    v115 = &_swiftEmptyDictionarySingleton;
    v112 = &_swiftEmptyDictionarySingleton;
LABEL_5:
    (*(v113 + 8))(v48, v47);
    v127;
    v128;
    v49 = v112;
    v50 = v115;
    v39 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSi_SiTt1g5(v112, v115);
    v50;
    v49;
    return v39 & 1;
  }

  v52 = *(v46 + 32);
  v51 = v46 + 32;
  v114 = v52;
  v104 = (v51 - 16);
  v103 = v124 - 8;
  v101 = (v51 - 24);
  v112 = &_swiftEmptyDictionarySingleton;
  v115 = &_swiftEmptyDictionarySingleton;
  v122 = v51;
  v106 = v35;
  v105 = v38;
  v102 = v28;
  while (1)
  {
    v53 = v119;
    v114(v119, v28, v44);
    v54 = *v104;
    v55 = v118;
    (*v104)(v118, v53, v44);
    v125 = *v55;
    v56 = v124;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v124, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v58 = *(v56 - 1);
    v59 = *(v58 + 8);
    v60 = v55 + *(v57 + 48);
    v120 = v58 + 8;
    v121 = v59;
    v59(v60, v56);
    if (v125 < 0)
    {
LABEL_39:
      (*v101)(v53, v44);
      (*(v113 + 8))(v105, v106);
      v127;
      v99 = v128;
      v115;
      v112;
      v97 = v99;
      goto LABEL_37;
    }

    v61 = v123;
    v54(v123, v53, v44);
    LODWORD(v61) = swift_getEnumCaseMultiPayload(v61, v44);
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v56, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v63 = *(v62 + 48);
    if (v61 == 1)
    {
      v64 = v127;
      v65 = v124;
      v66 = v125;
      if (v127[2])
      {
        v67 = specialized static Hasher._hash(seed:_:)(v127[5], v125);
        v68 = -1 << *(v64 + 32);
        v69 = v67 & ~v68;
        if ((*(v64 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
        {
          v70 = ~v68;
          while (*(*(v64 + 48) + 8 * v69) != v66)
          {
            v69 = (v69 + 1) & v70;
            if (((*(v64 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          (*v101)(v53, v44);
          (*(v113 + 8))(v105, v106);
          v64;
          v95 = v128;
          goto LABEL_35;
        }
      }

LABEL_16:
      v71 = v54;
    }

    else
    {
      v72 = v128;
      v65 = v124;
      v66 = v125;
      if (v128[2])
      {
        v73 = specialized static Hasher._hash(seed:_:)(v128[5], v125);
        v74 = -1 << *(v72 + 32);
        v75 = v73 & ~v74;
        if ((*(v72 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
        {
          v76 = ~v74;
          while (*(*(v72 + 48) + 8 * v75) != v66)
          {
            v75 = (v75 + 1) & v76;
            if (((*(v72 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          (*v101)(v53, v44);
          (*(v113 + 8))(v105, v106);
          v94 = v127;
          v72;
          v95 = v94;
LABEL_35:
          v95;
          v121(v123 + v63, v65);
          v96 = v115;
LABEL_36:
          v96;
          v97 = v112;
          goto LABEL_37;
        }
      }

LABEL_22:
      v71 = v54;
    }

    specialized Set._Variant.insert(_:)(&v126, v66);
    v77 = v121;
    v121(v123 + v63, v65);
    v78 = v117;
    v71(v117, v53, v44);
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v65, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v80 = &v78[*(v79 + 64)];
    v81 = *v80;
    v82 = v80[8];
    v77(&v78[*(v79 + 48)], v65);
    if (v82 != 1)
    {
      break;
    }

    (*v101)(v53, v44);
LABEL_8:
    v28 = v102;
    v48 = v105;
    v47 = v106;
    v109(v106, v111);
    if (v107(v28, 1, v44) == 1)
    {
      goto LABEL_5;
    }
  }

  if (v81 < 0)
  {
    goto LABEL_39;
  }

  v83 = v116;
  v114(v116, v53, v44);
  LODWORD(v83) = swift_getEnumCaseMultiPayload(v83, v44);
  swift_getTupleTypeMetadata3(0, &type metadata for Int, v65, byte_1EEEBE0E0, "offset element associatedWith ", 0);
  v85 = *(v84 + 48);
  if (v83 != 1)
  {
    v90 = v115;
    v91 = v125;
    if (v115[2])
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v81);
      v90 = v115;
      if (v92)
      {
        (*(v113 + 8))(v105, v106);
        v127;
        v128;
        v121(v116 + v85, v65);
        v96 = v90;
        goto LABEL_36;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v90);
    v126 = v90;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v91, v81, isUniquelyReferenced_nonNull_native, specialized __RawDictionaryStorage.find<A>(_:), canonical specialized generic type metadata accessor for _DictionaryStorage<Int, Int>, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), &type metadata for Int);
    v115 = v126;
    goto LABEL_32;
  }

  v86 = v112;
  v87 = v125;
  if (!v112[2] || (specialized __RawDictionaryStorage.find<A>(_:)(v125), v86 = v112, (v88 & 1) == 0))
  {
    v89 = swift_isUniquelyReferenced_nonNull_native(v86);
    v126 = v86;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v81, v87, v89, specialized __RawDictionaryStorage.find<A>(_:), canonical specialized generic type metadata accessor for _DictionaryStorage<Int, Int>, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), &type metadata for Int);
    v112 = v126;
LABEL_32:
    v121(v116 + v85, v65);
    goto LABEL_8;
  }

  (*(v113 + 8))(v105, v106);
  v127;
  v128;
  v121(v116 + v85, v65);
  v115;
  v97 = v86;
LABEL_37:
  v97;
  v39 = 0;
  return v39 & 1;
}

void CollectionDifference.init<A>(_validatedChanges:)(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __objc2_class ***a5@<X8>)
{
  v10 = type metadata accessor for CollectionDifference.Change(0, a2, a3, a4);
  v11 = *(v10 - 1);
  v76 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = (&v74 - v14);
  MEMORY[0x1EEE9AC00](v13, v16);
  v83 = a2;
  v84 = a3;
  v85 = a4;
  v77 = v18;
  v78 = a1;
  (*(v18 + 16))(&v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v86 = (*(*(a4 + 8) + 56))(a3);
  v21 = type metadata accessor for ContiguousArray(0, v10, v19, v20);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v21, v22);
  v25 = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, v21, v24);
  MutableCollection<>.sort(by:)(partial apply for closure #1 in CollectionDifference.init<A>(_validatedChanges:), v82, v21, WitnessTable, v25);
  v26 = v86;
  v79 = a3;
  if (Array._getCount()())
  {
    v27 = Array._getCount()();
    if (v27 < 0)
    {
LABEL_36:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v28 = v27;
    if (v27)
    {
      v75 = a5;
      v29 = 0;
      v80 = (v11 + 16);
      v81 = v26 & 0xC000000000000001;
      do
      {
        if (__OFADD__(v29, v28))
        {
          __break(1u);
          goto LABEL_38;
        }

        v31 = v81 == 0;
        v32 = v29 + v28;
        v33 = (v29 + v28) / 2;
        v34 = v31 | ~_swift_isClassOrObjCExistentialType(v10, v10);
        Array._checkSubscript(_:wasNativeTypeChecked:)(v33, v34 & 1);
        if (v34)
        {
          (*(v11 + 16))(v15, v26 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v33, v10);
        }

        else
        {
          v35 = _ArrayBuffer._getElementSlowPath(_:)(v32 / 2, v26, v10);
          if (v76 != 8)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v86 = v35;
          v36 = v35;
          (*v80)(v15, &v86, v10);
          swift_unknownObjectRelease(v36);
        }

        if (swift_getEnumCaseMultiPayload(v15, v10) == 1)
        {
          if (v28 <= v33)
          {
            goto LABEL_36;
          }

          v29 = v33 + 1;
        }

        else
        {
          v28 = v32 / 2;
          if (v33 < v29)
          {
            goto LABEL_36;
          }
        }

        swift_getTupleTypeMetadata3(0, &type metadata for Int, a2, byte_1EEEBE0E0, "offset element associatedWith ", 0);
        (*(*(a2 - 1) + 8))(v15 + *(v30 + 48), a2);
      }

      while (v29 != v28);
      a5 = v75;
      if (v28 < 0)
      {
LABEL_38:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }
  }

  else
  {
    v28 = 0;
  }

  Array._checkIndex(_:)(0);
  Array._checkIndex(_:)(v28);
  v40 = _ArrayBuffer.subscript.getter(0, v28, v26, v10);
  v41 = v38;
  v42 = v39;
  if ((v39 & 1) == 0)
  {
    goto LABEL_19;
  }

  v47 = a5;
  v48 = v37;
  v49 = type metadata accessor for __ContiguousArrayStorageBase();
  v50 = swift_unknownObjectRetain_n(v40, 2);
  v51 = swift_dynamicCastClass(v50, v49);
  if (!v51)
  {
    swift_unknownObjectRelease(v40);
    v51 = &_swiftEmptyArrayStorage;
  }

  v52 = *(v51 + 2);
  v53 = v51;
  if (__OFSUB__(v42 >> 1, v41))
  {
    __break(1u);
    goto LABEL_40;
  }

  v53 = v40;
  if (v52 != (v42 >> 1) - v41)
  {
LABEL_40:
    swift_unknownObjectRelease(v53);
    v37 = v48;
    a5 = v47;
LABEL_19:
    v86 = v40;
    v87 = v37;
    v88 = v41;
    v89 = v42;
    v43 = type metadata accessor for ArraySlice(0, v10, v38, v39);
    v45 = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v43, v44);
    v46 = _copyCollectionToContiguousArray<A>(_:)(&v86, v43, v45);
    swift_unknownObjectRelease(v40);
    goto LABEL_26;
  }

  v46 = swift_dynamicCastClass(v40, v49);
  swift_unknownObjectRelease(v40);
  a5 = v47;
  if (!v46)
  {
    swift_unknownObjectRelease(v40);
    v46 = &_swiftEmptyArrayStorage;
  }

LABEL_26:
  v54 = Array._getCount()();
  if (v54 < v28)
  {
    goto LABEL_38;
  }

  v55 = v54;
  (*(v77 + 8))(v78, v79);
  Array._checkIndex(_:)(v55);
  v56 = _ArrayBuffer.subscript.getter(v28, v55, v26, v10);
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v26;
  if ((v62 & 1) == 0)
  {
    goto LABEL_28;
  }

  v69 = type metadata accessor for __ContiguousArrayStorageBase();
  v70 = swift_unknownObjectRetain_n(v56, 3);
  v71 = swift_dynamicCastClass(v70, v69);
  if (!v71)
  {
    swift_unknownObjectRelease(v56);
    v71 = &_swiftEmptyArrayStorage;
  }

  v72 = *(v71 + 2);
  v73 = v71;
  if (__OFSUB__(v62 >> 1, v60))
  {
    __break(1u);
    goto LABEL_42;
  }

  v73 = v56;
  if (v72 != (v62 >> 1) - v60)
  {
LABEL_42:
    swift_unknownObjectRelease_n(v73, 2);
LABEL_28:
    v86 = v56;
    v87 = v58;
    v88 = v60;
    v89 = v62;
    v65 = type metadata accessor for ArraySlice(0, v10, v63, v64);
    v67 = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, v65, v66);
    v68 = _copyCollectionToContiguousArray<A>(_:)(&v86, v65, v67);
    swift_unknownObjectRelease(v56);
    goto LABEL_35;
  }

  v68 = swift_dynamicCastClass(v56, v69);
  swift_unknownObjectRelease_n(v56, 2);
  if (!v68)
  {
    swift_unknownObjectRelease(v56);
    v68 = &_swiftEmptyArrayStorage;
  }

LABEL_35:
  *a5 = v68;
  a5[1] = v46;
}

BOOL closure #1 in CollectionDifference.init<A>(_validatedChanges:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v52 = a2;
  v6 = type metadata accessor for CollectionDifference.Change(0, a3, a3, a4);
  v7 = *(v6 - 1);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v47 = &v47 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v47 - v19;
  swift_getTupleTypeMetadata2(0, v6, v6, 0, 0);
  v22 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = (&v47 - v25);
  v48 = v24;
  v49 = a1;
  v27 = (&v47 + *(v24 + 48) - v25);
  v50 = v7;
  v28 = *(v7 + 16);
  v29 = a1;
  v30 = v52;
  v28(&v47 - v25, v29, v6);
  v28(v27, v30, v6);
  if (swift_getEnumCaseMultiPayload(v26, v6) != 1)
  {
    v28(v17, v26, v6);
    swift_getTupleTypeMetadata3(0, &type metadata for Int, a3, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v37 = *(v36 + 48);
    v33 = &v17[v37];
    if (swift_getEnumCaseMultiPayload(v27, v6) == 1)
    {
      v38 = *(*(a3 - 1) + 8);
      v38(v27 + v37, a3);
      v38(v33, a3);
      v35 = 0;
      v22 = v50;
      goto LABEL_7;
    }

LABEL_6:
    v39 = *(*(a3 - 1) + 8);
    v39(v33, a3);
    v40 = v47;
    v28(v47, v49, v6);
    v41 = *v40;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, a3, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v39(&v40[*(v42 + 48)], a3);
    v43 = v51;
    v28(v51, v52, v6);
    v44 = *v43;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, a3, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v39(&v43[*(v45 + 48)], a3);
    v35 = v41 < v44;
    v6 = v48;
    goto LABEL_7;
  }

  v28(v20, v26, v6);
  swift_getTupleTypeMetadata3(0, &type metadata for Int, a3, byte_1EEEBE0E0, "offset element associatedWith ", 0);
  v32 = *(v31 + 48);
  v33 = &v20[v32];
  if (swift_getEnumCaseMultiPayload(v27, v6) == 1)
  {
    goto LABEL_6;
  }

  v34 = *(*(a3 - 1) + 8);
  v34(v27 + v32, a3);
  v34(v33, a3);
  v35 = 1;
  v22 = v50;
LABEL_7:
  (*(v22 + 8))(v26, v6);
  return v35;
}

void CollectionDifference.inverse()(uint64_t a1@<X0>, uint64_t a2@<X1>, __objc2_class ***a3@<X8>)
{
  v6 = *(a1 + 16);
  v86 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v85 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CollectionDifference.Change(0, v6, v8, v9);
  v11 = *(v10 - 1);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v84 = (&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v66 - v17;
  v71 = v19;
  MEMORY[0x1EEE9AC00](v16, v20);
  v83 = (&v66 - v21);
  v22 = *v3;
  v23 = v3[1];
  v89[0] = *v3;
  v89[1] = v23;
  v24 = Array._getCount()();
  v25 = Array._getCount()();
  v28 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v28)
  {
    v88 = &_swiftEmptyArrayStorage;
    v82 = type metadata accessor for ContiguousArray(0, v10, v26, v27);
    ContiguousArray.reserveCapacity(_:)(v28);
    if ((v28 & 0x8000000000000000) == 0)
    {
      v81 = v18;
      v68 = a1;
      v67 = a3;
      v29 = 0;
      v69 = v22 & 0xC000000000000001;
      v30 = (v11 + 16);
      v70 = v23 & 0xC000000000000001;
      v80 = (v11 + 32);
      v86 += 4;
      v31 = -1;
      while (1)
      {
        if (v28 == v29)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v76 = v28;
        v32 = Array._getCount()();
        v33 = v29 - v32;
        v78 = v22;
        v79 = v11;
        v77 = v23;
        v74 = v31;
        v75 = v30;
        if (v29 >= v32)
        {
          v36 = v81;
          if (__OFSUB__(v29, v32))
          {
            __break(1u);
            goto LABEL_27;
          }

          v38 = v69 == 0;
          v39 = v38 | ~_swift_isClassOrObjCExistentialType(v10, v10);
          Array._checkSubscript(_:wasNativeTypeChecked:)(v33, v39 & 1);
          if ((v39 & 1) == 0)
          {
            v55 = v33;
            v56 = v22;
            goto LABEL_17;
          }

          v37 = v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        }

        else
        {
          v33 = v32 + v31;
          v34 = v70 == 0;
          v35 = v34 | ~_swift_isClassOrObjCExistentialType(v10, v10);
          Array._checkSubscript(_:wasNativeTypeChecked:)(v33, v35 & 1);
          v36 = v81;
          if ((v35 & 1) == 0)
          {
            v55 = v33;
            v56 = v23;
LABEL_17:
            v57 = _ArrayBuffer._getElementSlowPath(_:)(v55, v56, v10);
            if (v71 != 8)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v87 = v57;
            v58 = v57;
            (*v30)(v36, &v87, v10);
            swift_unknownObjectRelease(v58);
            goto LABEL_13;
          }

          v37 = v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        }

        (*(v11 + 16))(v36, v37 + *(v11 + 72) * v33, v10);
LABEL_13:
        ++v29;
        v40 = v84;
        (*v80)(v84, v36, v10);
        v73 = swift_getEnumCaseMultiPayload(v40, v10) != 1;
        v72 = *v40;
        swift_getTupleTypeMetadata3(0, &type metadata for Int, v6, byte_1EEEBE0E0, "offset element associatedWith ", 0);
        v42 = v41;
        v43 = v40 + *(v41 + 64);
        v44 = *v43;
        v45 = v43[8];
        v46 = *v86;
        v47 = v40 + *(v41 + 48);
        v48 = v85;
        (*v86)(v85, v47, v6);
        v49 = *(v42 + 48);
        v50 = v83;
        v51 = v83 + *(v42 + 64);
        *v83 = v72;
        v46(&v50[v49], v48, v6);
        *v51 = v44;
        v51[8] = v45;
        swift_storeEnumTagMultiPayload(v50, v10, v73);
        ContiguousArray.append(_:)(v50, v82);
        v30 = v75;
        v31 = v74 - 1;
        v28 = v76;
        v23 = v77;
        v22 = v78;
        v11 = v79;
        if (v76 == v29)
        {
          v63 = CollectionDifference.endIndex.getter(v68, v52, v53, v54);
          if (v28 == v63)
          {
            v59 = v88;
            a3 = v67;
            goto LABEL_21;
          }

LABEL_27:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }
    }

LABEL_25:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _swift_isClassOrObjCExistentialType(v10, v10);
  v59 = &_swiftEmptyArrayStorage;
LABEL_21:
  v89[0] = v59;
  v60 = type metadata accessor for Array(0, v10, v64, v65);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v60, v61);
  CollectionDifference.init<A>(_validatedChanges:)(v89, v6, v60, WitnessTable, a3);
}

Swift::Int CollectionDifference.endIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CollectionDifference.Change(0, *(a1 + 16), a3, a4);
  v4 = Array._getCount()();
  v5 = Array._getCount()();
  v6 = __OFADD__(v4, v5);
  result = v4 + v5;
  if (v6)
  {
    __break(1u);
  }

  return result;
}

void CollectionDifference.subscript.getter(Swift::Int a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = *v5;
  v9 = v5[1];
  v10 = type metadata accessor for CollectionDifference.Change(0, *(a3 + 16), a4, a5);
  v11 = Array._getCount()();
  if (v11 > a1)
  {
    v8 = v11 - (a1 + 1);
    if (!__OFSUB__(v11, a1 + 1))
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v10, v10);
      v13 = ((v9 & 0xC000000000000001) == 0) | ~isClassOrObjCExistentialType;
      Array._checkSubscript(_:wasNativeTypeChecked:)(v8, (v9 & 0xC000000000000001) == 0 || (isClassOrObjCExistentialType & 1) == 0);
      if (v13)
      {
        v14 = *(v10 - 1);
        v15 = *(v14 + 16);
        v16 = v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v8;
LABEL_8:

        v15(a2, v16, v10);
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    v20 = v8;
    v21 = v9;
    goto LABEL_15;
  }

  v9 = a1 - v11;
  if (__OFSUB__(a1, v11))
  {
    goto LABEL_12;
  }

  v17 = _swift_isClassOrObjCExistentialType(v10, v10);
  v18 = ((v8 & 0xC000000000000001) == 0) | ~v17;
  Array._checkSubscript(_:wasNativeTypeChecked:)(v9, (v8 & 0xC000000000000001) == 0 || (v17 & 1) == 0);
  if (v18)
  {
    v19 = *(v10 - 1);
    v15 = *(v19 + 16);
    v16 = v8 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v9;
    goto LABEL_8;
  }

  v20 = v9;
  v21 = v8;
LABEL_15:
  v22 = _ArrayBuffer._getElementSlowPath(_:)(v20, v21, v10);
  v23 = *(v10 - 1);
  if (*(v23 + 64) != 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v25 = v22;
  v24 = v22;
  (*(v23 + 16))(a2, &v25, v10);
  swift_unknownObjectRelease(v24);
}

uint64_t CollectionDifference.index(before:)(uint64_t a1)
{
  v1 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void *CollectionDifference.formIndex(_:offsetBy:)(void *result, uint64_t a2)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result += a2;
  }

  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance CollectionDifference<A>@<X0>(uint64_t *a1@<X8>)
{
  result = protocol witness for Error._getEmbeddedNSError() in conformance EncodingError();
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Collection.endIndex.getter in conformance CollectionDifference<A>@<X0>(Swift::Int *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = CollectionDifference.endIndex.getter(a2, a3, a4, a5);
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CollectionDifference<A>(uint64_t **a1, Swift::Int *a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc(0x28, 0xB5BAuLL);
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = CollectionDifference.subscript.read(v6, *a2, a3, v7);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t (*CollectionDifference.subscript.read(uint64_t *a1, Swift::Int a2, uint64_t a3, uint64_t a4))()
{
  v7 = type metadata accessor for CollectionDifference.Change(0, *(a3 + 16), a3, a4);
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  v9 = *(v8 + 64);
  if (swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc(v9, 0x577FuLL);
  }

  else
  {
    v10 = malloc(v9);
  }

  a1[2] = v10;
  CollectionDifference.subscript.getter(a2, v10, a3, v11, v12);
  return _ArrayBuffer.subscript.read;
}

Swift::Int protocol witness for Collection.index(after:) in conformance CollectionDifference<A>@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = Int.Words.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for Collection.formIndex(after:) in conformance CollectionDifference<A>(Swift::Int *a1)
{
  result = Int.Words.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance CollectionDifference<A>@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = protocol witness for Error._getEmbeddedNSError() in conformance EncodingError();
  *(a1 + 16) = result;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance CollectionDifference<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionDifference<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance CollectionDifference<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionDifference<A>, a1, a3);
  v6 = specialized Collection._copyToContiguousArray()(v3, a1, WitnessTable);
  v7 = *v3;
  v3[1];
  v7;
  return v6;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CollectionDifference<A>.Index(uint64_t a1)
{
  specialized Hasher.init(_seed:)(a1, v3);
  CollectionDifference.Index.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t static CollectionDifference.Change<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v73 = a4;
  v6 = *(a3 - 1);
  v76 = a2;
  v77 = v6;
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v71 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v72 = &v66 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v69 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v70 = &v66 - v16;
  v19 = type metadata accessor for CollectionDifference.Change(0, v17, v17, v18);
  v20 = *(v19 - 1);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = (&v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = (&v66 - v26);
  swift_getTupleTypeMetadata2(0, v19, v19, 0, 0);
  v29 = v28;
  v74 = *(v28 - 1);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = (&v66 - v32);
  v34 = (&v66 + *(v31 + 48) - v32);
  v75 = v20;
  v35 = *(v20 + 2);
  v35(&v66 - v32, a1, v19);
  v35(v34, v76, v19);
  if (swift_getEnumCaseMultiPayload(v33, v19) == 1)
  {
    v35(v24, v33, v19);
    swift_getTupleTypeMetadata3(0, &type metadata for Int, a3, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v37 = *(v36 + 48);
    v38 = v24 + v37;
    v39 = *(v36 + 64);
    v40 = *(v24 + v39);
    LODWORD(v76) = *(v24 + v39 + 8);
    if (swift_getEnumCaseMultiPayload(v34, v19) == 1)
    {
      v74 = *v24;
      v70 = *v34;
      v67 = *(v34 + v39);
      v68 = v40;
      LODWORD(v69) = *(v34 + v39 + 8);
      v41 = v77;
      v42 = *(v77 + 32);
      v43 = v72;
      v42(v72, v38, a3);
      v44 = v34 + v37;
      v45 = v71;
      v42(v71, v44, a3);
      if (v74 == v70)
      {
        v46 = (*(v73 + 8))(v43, v45, a3);
        v47 = *(v41 + 8);
        v47(v45, a3);
        v47(v43, a3);
        v48 = v75;
        if (v46)
        {
          if (v76)
          {
            if (v69)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v64 = v69;
            if (v68 != v67)
            {
              v64 = 1;
            }

            if ((v64 & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

LABEL_14:
        v53 = 0;
        goto LABEL_18;
      }

      v61 = *(v41 + 8);
      v61(v45, a3);
      v62 = v43;
      goto LABEL_17;
    }
  }

  else
  {
    v35(v27, v33, v19);
    swift_getTupleTypeMetadata3(0, &type metadata for Int, a3, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v50 = *(v49 + 48);
    v38 = v27 + v50;
    v51 = *(v49 + 64);
    v52 = *(v27 + v51);
    LODWORD(v76) = *(v27 + v51 + 8);
    if (swift_getEnumCaseMultiPayload(v34, v19) != 1)
    {
      v74 = *v27;
      v72 = *v34;
      v67 = *(v34 + v51);
      v68 = v52;
      LODWORD(v71) = *(v34 + v51 + 8);
      v54 = v77;
      v55 = *(v77 + 32);
      v56 = v70;
      v55(v70, v38, a3);
      v57 = v34 + v50;
      v58 = v69;
      v55(v69, v57, a3);
      if (v74 == v72)
      {
        v59 = (*(v73 + 8))(v56, v58, a3);
        v60 = *(v54 + 8);
        v60(v58, a3);
        v60(v56, a3);
        v48 = v75;
        if (v59)
        {
          if (v76)
          {
            if (v71)
            {
LABEL_26:
              v53 = 1;
              goto LABEL_18;
            }
          }

          else
          {
            v65 = v71;
            if (v68 != v67)
            {
              v65 = 1;
            }

            if ((v65 & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        goto LABEL_14;
      }

      v61 = *(v54 + 8);
      v61(v58, a3);
      v62 = v56;
LABEL_17:
      v61(v62, a3);
      v53 = 0;
      v48 = v75;
      goto LABEL_18;
    }
  }

  (*(v77 + 8))(v38, a3);
  v53 = 0;
  v48 = v74;
  v19 = v29;
LABEL_18:
  (*(v48 + 1))(v33, v19);
  return v53;
}

uint64_t static CollectionDifference<A>.== infix(_:_:)(unint64_t *a1, unint64_t *a2, char *a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = type metadata accessor for CollectionDifference.Change(0, a3, a3, a4);
  v77 = *(v8 - 1);
  v9 = *(v77 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v74 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v75 = &v65 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v65 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v65 - v20;
  v23 = *a1;
  v22 = a1[1];
  v24 = *a2;
  v76 = a2[1];
  v25 = Array._getCount()();
  if (v25 != Array._getCount()())
  {
    goto LABEL_36;
  }

  v73 = v22;
  if (v25)
  {
    v26 = _ArrayBuffer.identity.getter(v23, v8);
    if (v26 != _ArrayBuffer.identity.getter(v24, v8))
    {
      if ((v25 & 0x8000000000000000) == 0)
      {
        v27 = 0;
        v28 = v23 & 0xC000000000000001;
        v72 = (v77 + 16);
        v69 = (v77 + 8);
        v70 = v24 & 0xC000000000000001;
        while (v25 != v27)
        {
          v71 = v5;
          v67 = v28;
          v29 = (v28 == 0) | ~_swift_isClassOrObjCExistentialType(v8, v8);
          Array._checkSubscript(_:wasNativeTypeChecked:)(v27, v29 & 1);
          if (v29)
          {
            v30 = v23 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v27;
            v68 = *(v77 + 16);
            v68(v21, v30, v8);
          }

          else
          {
            v35 = _ArrayBuffer._getElementSlowPath(_:)(v27, v23, v8);
            if (v9 != 8)
            {
              goto LABEL_41;
            }

            v78 = v35;
            v36 = v35;
            v68 = *v72;
            v68(v21, &v78, v8);
            swift_unknownObjectRelease(v36);
          }

          v31 = v70 == 0;
          v32 = v31 | ~_swift_isClassOrObjCExistentialType(v8, v8);
          Array._checkSubscript(_:wasNativeTypeChecked:)(v27, v32 & 1);
          v65 = v24;
          v66 = v23;
          if (v32)
          {
            v68(v18, (v24 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v27), v8);
          }

          else
          {
            v37 = _ArrayBuffer._getElementSlowPath(_:)(v27, v24, v8);
            if (v9 != 8)
            {
LABEL_41:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v78 = v37;
            v38 = v37;
            v68(v18, &v78, v8);
            swift_unknownObjectRelease(v38);
          }

          v33 = v4;
          LODWORD(v68) = static CollectionDifference.Change<A>.== infix(_:_:)(v21, v18, v71, v4);
          v34 = *v69;
          (*v69)();
          (v34)(v21, v8);
          if ((v68 & 1) == 0)
          {
            goto LABEL_36;
          }

          ++v27;
          v4 = v33;
          v5 = v71;
          v23 = v66;
          v28 = v67;
          v24 = v65;
          if (v25 == v27)
          {
            goto LABEL_18;
          }
        }

LABEL_38:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_40;
    }
  }

LABEL_18:
  v39 = v73;
  v40 = Array._getCount()();
  v41 = v76;
  if (v40 == Array._getCount()())
  {
    if (v40)
    {
      v42 = _ArrayBuffer.identity.getter(v39, v8);
      if (v42 != _ArrayBuffer.identity.getter(v41, v8))
      {
        if ((v40 & 0x8000000000000000) == 0)
        {
          v43 = 0;
          v44 = v39 & 0xC000000000000001;
          v71 = (v41 & 0xC000000000000001);
          v72 = (v77 + 16);
          v45 = (v77 + 8);
          while (v40)
          {
            v46 = v5;
            v47 = v4;
            v70 = v44;
            v48 = (v44 == 0) | ~_swift_isClassOrObjCExistentialType(v8, v8);
            v49 = v73;
            Array._checkSubscript(_:wasNativeTypeChecked:)(v43, v48 & 1);
            if (v48)
            {
              v50 = v49 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v43;
              v51 = *(v77 + 16);
              v51(v75, v50, v8);
            }

            else
            {
              v60 = _ArrayBuffer._getElementSlowPath(_:)(v43, v49, v8);
              if (v9 != 8)
              {
                goto LABEL_41;
              }

              v61 = v60;
              v78 = v60;
              v51 = *v72;
              (*v72)(v75, &v78, v8);
              swift_unknownObjectRelease(v61);
              v41 = v76;
            }

            v52 = v71 == 0;
            v53 = v52 | ~_swift_isClassOrObjCExistentialType(v8, v8);
            Array._checkSubscript(_:wasNativeTypeChecked:)(v43, v53 & 1);
            if (v53)
            {
              v54 = v74;
              v51(v74, (v41 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v43), v8);
            }

            else
            {
              v62 = _ArrayBuffer._getElementSlowPath(_:)(v43, v41, v8);
              if (v9 != 8)
              {
                goto LABEL_41;
              }

              v63 = v62;
              v78 = v62;
              v54 = v74;
              v51(v74, &v78, v8);
              swift_unknownObjectRelease(v63);
            }

            v55 = v75;
            v56 = static CollectionDifference.Change<A>.== infix(_:_:)(v75, v54, v46, v47);
            v57 = v54;
            v58 = *v45;
            (*v45)(v57, v8);
            v58(v55, v8);
            if (v56)
            {
              ++v43;
              v59 = v40-- == 1;
              v4 = v47;
              v5 = v46;
              v41 = v76;
              v44 = v70;
              if (!v59)
              {
                continue;
              }
            }

            return v56 & 1;
          }

          goto LABEL_38;
        }

LABEL_40:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v56 = 1;
  }

  else
  {
LABEL_36:
    v56 = 0;
  }

  return v56 & 1;
}

void CollectionDifference.Change<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 1);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v19, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v17, a2);
  v29 = *v17;
  swift_getTupleTypeMetadata3(0, &type metadata for Int, v6, byte_1EEEBE0E0, "offset element associatedWith ", 0);
  v22 = *(v21 + 48);
  v23 = v17 + *(v21 + 64);
  v28 = *v23;
  v30 = v23[8];
  v24 = *(v7 + 32);
  v25 = (v7 + 8);
  v26 = v17 + v22;
  if (EnumCaseMultiPayload == 1)
  {
    v24(v10, v26, v6);
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v29);
    (*(a3 + 24))(a1, v6, a3);
    (*v25)(v10, v6);
  }

  else
  {
    v24(v14, v26, v6);
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v29);
    (*(a3 + 24))(a1, v6, a3);
    (*v25)(v14, v6);
  }

  if (v30)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v28);
  }
}

Swift::Int DiscontiguousSlice<>.hashValue.getter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
{
  v7 = 0u;
  v8 = 0u;
  v4 = 0;
  v5 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v6 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  a3(&v4, a1, a2);
  return Hasher._finalize()();
}

void CollectionDifference<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a3;
  v5 = *(a2 + 16);
  v69 = *(v5 - 1);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v73 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v72 = &v67 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v75 = &v67 - v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v74 = &v67 - v15;
  v18 = type metadata accessor for CollectionDifference.Change(0, v5, v16, v17);
  v19 = *(v18 - 1);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = (&v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v84 = &v67 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = (&v67 - v29);
  v68 = v31;
  MEMORY[0x1EEE9AC00](v28, v32);
  v34 = &v67 - v33;
  v35 = *v3;
  v85 = v3[1];
  v36 = Array._getCount()();
  Hasher._combine(_:)(v36);
  v82 = v35;
  v37 = Array._getCount()();
  v87 = v23;
  v83 = v37;
  if (v37)
  {
    if (v83 < 1)
    {
      __break(1u);
      goto LABEL_36;
    }

    v38 = 0;
    v70 = v19;
    v71 = v82 & 0xC000000000000001;
    v79 = (v19 + 32);
    v80 = (v19 + 16);
    v77 = v88 + 24;
    v78 = (v69 + 32);
    v76 = (v69 + 8);
    v81 = v34;
    do
    {
      if (_swift_isClassOrObjCExistentialType(v18, v18) && v71)
      {
        v49 = _ArrayBuffer._getElementSlowPath(_:)(v38, v82, v18);
        if (v68 != 8)
        {
          goto LABEL_37;
        }

        v89[0] = v49;
        v50 = v49;
        (*v80)(v34, v89, v18);
        swift_unknownObjectRelease(v50);
      }

      else
      {
        (*(v19 + 16))(v34, v82 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v38, v18);
      }

      (*v79)(v30, v34, v18);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v30, v18);
      v40 = *v30;
      swift_getTupleTypeMetadata3(0, &type metadata for Int, v5, byte_1EEEBE0E0, "offset element associatedWith ", 0);
      v42 = *(v41 + 48);
      v43 = v30 + *(v41 + 64);
      v86 = *v43;
      v44 = v43[8];
      v45 = *v78;
      v46 = v30 + v42;
      if (EnumCaseMultiPayload == 1)
      {
        v47 = v75;
        v45(v75, v46, v5);
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v40);
        (*(v88 + 24))(a1, v5);
        (*v76)(v47, v5);
        if (v44)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v86);
        }

        v23 = v87;
        v19 = v70;
      }

      else
      {
        v48 = v74;
        v45(v74, v46, v5);
        Hasher._combine(_:)(0);
        Hasher._combine(_:)(v40);
        (*(v88 + 24))(a1, v5);
        (*v76)(v48, v5);
        if (v44)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v86);
        }

        v23 = v87;
      }

      ++v38;
      v34 = v81;
    }

    while (v83 != v38);
  }

  v51 = Array._getCount()();
  Hasher._combine(_:)(v51);
  v52 = Array._getCount()();
  v53 = v84;
  v86 = v52;
  if (!v52)
  {
    return;
  }

  if (v86 < 1)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v54 = 0;
  v82 = v19 + 32;
  v83 = v19 + 16;
  v80 = (v88 + 24);
  v81 = (v69 + 32);
  v78 = (v85 & 0xC000000000000001);
  v79 = (v69 + 8);
  do
  {
    if (_swift_isClassOrObjCExistentialType(v18, v18) && v78)
    {
      v65 = _ArrayBuffer._getElementSlowPath(_:)(v54, v85, v18);
      if (v68 != 8)
      {
        goto LABEL_37;
      }

      v89[0] = v65;
      v66 = v65;
      (*v83)(v53, v89, v18);
      swift_unknownObjectRelease(v66);
    }

    else
    {
      (*(v19 + 16))(v53, v85 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v54, v18);
    }

    (*v82)(v23, v53, v18);
    v55 = swift_getEnumCaseMultiPayload(v23, v18);
    v56 = *v23;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v5, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v58 = v23 + *(v57 + 64);
    v59 = *v58;
    v60 = v58[8];
    v61 = *v81;
    v62 = v23 + *(v57 + 48);
    if (v55 == 1)
    {
      v63 = v73;
      v61(v73, v62, v5);
      v64 = 1;
    }

    else
    {
      v63 = v72;
      v61(v72, v62, v5);
      v64 = 0;
    }

    Hasher._combine(_:)(v64);
    Hasher._combine(_:)(v56);
    (*(v88 + 24))(a1, v5);
    (*v79)(v63, v5);
    if (v60)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v59);
    }

    v23 = v87;
    v53 = v84;
    ++v54;
  }

  while (v86 != v54);
}

Swift::Int CollectionDifference<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v9 = *v2;
  v7 = 0u;
  v8 = 0u;
  v4 = 0;
  v5 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v6 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  CollectionDifference<A>.hash(into:)(&v4, a1, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> CollectionDifference<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  specialized Hasher.init(_seed:)(a1, v6);
  CollectionDifference<A>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

void CollectionDifference<A>.inferringMoves()(uint64_t a1@<X0>, __objc2_class **a2@<X1>, __objc2_class ***a3@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(v7 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v113 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v112 = &v93 - v12;
  v15 = type metadata accessor for CollectionDifference.Change(0, v7, v13, v14);
  v118 = *(v15 - 1);
  v16 = *(v118 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v111 = (&v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v117 = &v93 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v110 = &v93 - v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v115 = (&v93 - v26);
  v27 = *v3;
  v28 = v3[1];
  v116 = closure #1 in CollectionDifference<A>.inferringMoves()(*v3, v28, v7, a2);
  v109 = a2;
  v29 = closure #2 in CollectionDifference<A>.inferringMoves()(v27, v28, v7, a2);
  v122[0] = v27;
  v122[1] = v28;
  v30 = Array._getCount()();
  v31 = Array._getCount()();
  if (__OFADD__(v30, v31))
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v30 + v31)
  {
    v121 = &_swiftEmptyArrayStorage;
    v119 = v30 + v31;
    v107 = type metadata accessor for ContiguousArray(0, v15, v32, v33);
    ContiguousArray.reserveCapacity(_:)(v119);
    v34 = v119;
    if ((v119 & 0x8000000000000000) == 0)
    {
      v102 = v29;
      v95 = a1;
      v94 = a3;
      v35 = 0;
      v100 = v27 & 0xC000000000000001;
      v101 = v28 & 0xC000000000000001;
      v114 = (v118 + 32);
      v108 = (v8 + 32);
      v99 = (v118 + 8);
      v104 = (v8 + 8);
      v105 = (v118 + 16);
      v36 = -1;
      v106 = (v118 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      while (1)
      {
        if (v34 == v35)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v37 = Array._getCount()();
        v38 = v35 - v37;
        if (v35 >= v37)
        {
          if (__OFSUB__(v35, v37))
          {
            __break(1u);
            goto LABEL_44;
          }

          v43 = v100 == 0;
          v44 = v43 | ~_swift_isClassOrObjCExistentialType(v15, v15);
          Array._checkSubscript(_:wasNativeTypeChecked:)(v38, v44 & 1);
          if (v44)
          {
            v41 = v118;
            v42 = v27 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
            goto LABEL_12;
          }

          v80 = v38;
          v81 = v27;
        }

        else
        {
          v39 = v101 == 0;
          v38 = v37 + v36;
          v40 = v39 | ~_swift_isClassOrObjCExistentialType(v15, v15);
          Array._checkSubscript(_:wasNativeTypeChecked:)(v38, v40 & 1);
          if (v40)
          {
            v41 = v118;
            v42 = v28 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
LABEL_12:
            v45 = v42 + *(v41 + 72) * v38;
            v46 = *(v41 + 16);
            v47 = v110;
            v46(v110, v45, v15);
            goto LABEL_13;
          }

          v80 = v38;
          v81 = v28;
        }

        v82 = _ArrayBuffer._getElementSlowPath(_:)(v80, v81, v15);
        if (v16 != 8)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v120 = v82;
        v46 = *v105;
        v83 = v82;
        v84 = v110;
        (*v105)(v110, &v120, v15);
        v85 = v83;
        v47 = v84;
        swift_unknownObjectRelease(v85);
LABEL_13:
        v48 = v117;
        v103 = *v114;
        v103(v117, v47, v15);
        v49 = v111;
        v46(v111, v48, v15);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v49, v15);
        v98 = *v49;
        swift_getTupleTypeMetadata3(0, &type metadata for Int, v7, byte_1EEEBE0E0, "offset element associatedWith ", 0);
        v96 = v51;
        v52 = *(v51 + 48);
        v53 = *v108;
        v97 = *v108;
        v54 = v49 + v52;
        if (EnumCaseMultiPayload == 1)
        {
          v55 = v112;
          v53(v112, v54, v7);
          v56 = v116;
          if (!*(v116 + 16) || (__RawDictionaryStorage.find<A>(_:)(v55, v7, v109), v55 = v112, (v57 & 1) == 0))
          {
            (*v104)(v55, v7);
            goto LABEL_27;
          }

          v58 = v112;
          v59 = v115;
          if (!*(v102 + 16))
          {
            goto LABEL_28;
          }

          v60 = __RawDictionaryStorage.find<A>(_:)(v112, v7, v109);
          v58 = v112;
          if ((v61 & 1) == 0)
          {
            goto LABEL_28;
          }

          (*v99)(v117, v15);
          v62 = *(v102 + 56) + 16 * v60;
          v103 = *v62;
          v63 = *(v62 + 8);
          v64 = *(v96 + 48);
          v65 = v115 + *(v96 + 64);
          *v115 = v98;
          v97(v115 + v64, v112, v7);
          *v65 = v103;
          v65[8] = v63;
          v59 = v115;
          v66 = v115;
          v67 = v15;
          v68 = 1;
        }

        else
        {
          v69 = v113;
          v53(v113, v54, v7);
          v56 = v116;
          if (!*(v102 + 16) || (__RawDictionaryStorage.find<A>(_:)(v69, v7, v109), v69 = v113, (v70 & 1) == 0))
          {
            (*v104)(v69, v7);
LABEL_27:
            v59 = v115;
LABEL_29:
            v103(v59, v117, v15);
            goto LABEL_30;
          }

          v58 = v113;
          v59 = v115;
          if (!*(v56 + 16) || (v71 = __RawDictionaryStorage.find<A>(_:)(v113, v7, v109), v58 = v113, (v72 & 1) == 0))
          {
LABEL_28:
            (*v104)(v58, v7);
            goto LABEL_29;
          }

          (*v99)(v117, v15);
          v73 = *(v56 + 56) + 16 * v71;
          v103 = *v73;
          v74 = *(v73 + 8);
          v75 = *(v96 + 48);
          v76 = v115 + *(v96 + 64);
          *v115 = v98;
          v97(v115 + v75, v113, v7);
          *v76 = v103;
          v76[8] = v74;
          v59 = v115;
          v66 = v115;
          v67 = v15;
          v68 = 0;
        }

        swift_storeEnumTagMultiPayload(v66, v67, v68);
LABEL_30:
        ++v35;
        ContiguousArray.append(_:)(v59, v107);
        --v36;
        v34 = v119;
        if (v119 == v35)
        {
          v92 = v119;
          if (v92 == CollectionDifference.endIndex.getter(v95, v77, v78, v79))
          {
            v102;
            v56;
            v88 = v121;
            a3 = v94;
            goto LABEL_38;
          }

LABEL_44:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v29;
  v116;
  _swift_isClassOrObjCExistentialType(v15, v15);
  v88 = &_swiftEmptyArrayStorage;
LABEL_38:
  v122[0] = v88;
  v89 = type metadata accessor for Array(0, v15, v86, v87);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v89, v90);
  CollectionDifference.init<A>(_validatedChanges:)(v122, v7, v89, WitnessTable, a3);
}

uint64_t closure #1 in CollectionDifference<A>.inferringMoves()(uint64_t a1, unint64_t a2, Class *a3, __objc2_class **a4)
{
  v5 = a3;
  v6 = a2;
  v106 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v124 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CollectionDifference.Change(0, v8, v8, v9);
  v115 = *(v10 - 1);
  v11 = *(v115 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v109 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v114 = &v104 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v123 = &v104 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v104 - v21;
  v23 = Array._getCount()();
  v24 = Array._getCount()();
  if (v24 >= v23)
  {
    v24 = v23;
  }

  if (v24)
  {
    v25 = specialized static _DictionaryStorage.allocate(capacity:)(v24, v5, a4);
  }

  else
  {
    v25 = &_swiftEmptyDictionarySingleton;
  }

  v26 = Array._getCount()();
  v113 = v26;
  if (v26)
  {
    v104 = v11;
    v28 = 0;
    v112 = v6 & 0xC000000000000001;
    v122 = (v115 + 16);
    v119 = (v106 + 32);
    v120 = (v115 + 32);
    v105 = (v115 + 8);
    v116 = v5;
    v117 = (v106 + 8);
    v110 = v22;
    v111 = a4;
    v108 = v6;
    while (1)
    {
      v31 = v112 == 0;
      v32 = v31 | ~_swift_isClassOrObjCExistentialType(v10, v10);
      Array._checkSubscript(_:wasNativeTypeChecked:)(v28, v32 & 1);
      if (v32)
      {
        v33 = *(v115 + 16);
        v33(v22, (v6 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v28), v10);
        v34 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v85 = _ArrayBuffer._getElementSlowPath(_:)(v28, v6, v10);
        if (v104 != 8)
        {
          LODWORD(v102) = 0;
          v101 = 96;
          LOBYTE(v100) = 2;
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v125 = v85;
        v33 = *v122;
        v86 = v85;
        (*v122)(v22, &v125, v10);
        swift_unknownObjectRelease(v86);
        v34 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v116);
        }
      }

      v121 = v34;
      v35 = *v120;
      v36 = a4;
      v37 = v123;
      (*v120)(v123, v22, v10);
      v38 = v114;
      v39 = v37;
      v40 = v36;
      v33(v114, v39, v10);
      swift_getTupleTypeMetadata3(0, &type metadata for Int, v5, byte_1EEEBE0E0, "offset element associatedWith ", 0);
      v42 = &v38[*(v41 + 48)];
      v118 = *v119;
      v118(v124, v42, v5);
      if (!v25[2])
      {
        break;
      }

      __RawDictionaryStorage.find<A>(_:)(v124, v5, v36);
      if ((v43 & 1) == 0)
      {
        break;
      }

      (*v105)(v123, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v25);
      v125 = v25;
      v45 = __RawDictionaryStorage.find<A>(_:)(v124, v5, v36);
      v47 = v25[2];
      v48 = (v46 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        goto LABEL_45;
      }

      v50 = v46;
      if (v25[3] >= v49)
      {
        v57 = v45;
        if (isUniquelyReferenced_nonNull_native)
        {
          a4 = v111;
          if (v46)
          {
            goto LABEL_31;
          }
        }

        else
        {
          a4 = v111;
          v89 = type metadata accessor for _NativeDictionary(0, v5, byte_1EEEBE0E0, v111);
          specialized _NativeDictionary.copy()(v89, v90);
          if (v50)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v51 = v5;
        v52 = v111;
        v53 = type metadata accessor for _NativeDictionary(0, v51, byte_1EEEBE0E0, v111);
        v54 = v49;
        a4 = v52;
        v5 = v116;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v54, isUniquelyReferenced_nonNull_native, v53);
        v55 = __RawDictionaryStorage.find<A>(_:)(v124, v5, a4);
        if ((v50 & 1) != (v56 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v5);
        }

        v57 = v55;
        if (v50)
        {
LABEL_31:
          v26 = (*v117)(v124, v5);
          v25 = v125;
          v84 = v125[7] + 16 * v57;
          *v84 = 0;
          *(v84 + 8) = 1;
          goto LABEL_10;
        }
      }

      v25 = v125;
      v125[(v57 >> 6) + 8] = (v125[(v57 >> 6) + 8] | (1 << v57));
      v26 = (v118)(v25[6] + *(v106 + 72) * v57, v124, v5);
      v91 = v25[7] + 16 * v57;
      *v91 = 0;
      *(v91 + 8) = 1;
      v92 = v25[2];
      v82 = __OFADD__(v92, 1);
      v93 = (&v92->isa + 1);
      if (v82)
      {
        goto LABEL_46;
      }

      v25[2] = v93;
LABEL_10:
      v22 = v110;
      ++v28;
      if (v121 == v113)
      {
        goto LABEL_41;
      }
    }

    v58 = v109;
    v35(v109, v123, v10);
    v59 = *v58;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v5, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v61 = v5;
    v62 = *v117;
    (*v117)(v58 + *(v60 + 48), v61);
    v63 = swift_isUniquelyReferenced_nonNull_native(v25);
    v125 = v25;
    v64 = __RawDictionaryStorage.find<A>(_:)(v124, v61, v40);
    v66 = v25[2];
    v67 = (v65 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_43;
    }

    v69 = v65;
    if (v25[3] < v68)
    {
      v107 = v28;
      v70 = v59;
      v71 = v10;
      v72 = v124;
      v73 = v116;
      v74 = v111;
      v75 = type metadata accessor for _NativeDictionary(0, v116, byte_1EEEBE0E0, v111);
      v76 = v68;
      a4 = v74;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v76, v63, v75);
      v77 = __RawDictionaryStorage.find<A>(_:)(v72, v73, v74);
      if ((v69 & 1) != (v78 & 1))
      {
        goto LABEL_47;
      }

      v79 = v77;
      v10 = v71;
      v59 = v70;
      v28 = v107;
      if ((v69 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_8:
      v29 = v116;
      v26 = v62(v124, v116);
      v5 = v29;
      v25 = v125;
      v30 = v125[7] + 16 * v79;
      *v30 = v59;
      *(v30 + 8) = 0;
LABEL_9:
      v6 = v108;
      goto LABEL_10;
    }

    v79 = v64;
    if (v63)
    {
      a4 = v111;
      if (v65)
      {
        goto LABEL_8;
      }
    }

    else
    {
      a4 = v111;
      v87 = type metadata accessor for _NativeDictionary(0, v116, byte_1EEEBE0E0, v111);
      specialized _NativeDictionary.copy()(v87, v88);
      if (v69)
      {
        goto LABEL_8;
      }
    }

LABEL_27:
    v25 = v125;
    v125[(v79 >> 6) + 8] = (v125[(v79 >> 6) + 8] | (1 << v79));
    v5 = v116;
    v26 = (v118)(v25[6] + *(v106 + 72) * v79, v124, v116);
    v80 = v25[7] + 16 * v79;
    *v80 = v59;
    *(v80 + 8) = 0;
    v81 = v25[2];
    v82 = __OFADD__(v81, 1);
    v83 = (&v81->isa + 1);
    if (v82)
    {
      goto LABEL_44;
    }

    v25[2] = v83;
    goto LABEL_9;
  }

LABEL_41:
  v94 = MEMORY[0x1EEE9AC00](v26, v27);
  MEMORY[0x1EEE9AC00](v94, v95);
  v100 = v5;
  v101 = a4;
  v102 = partial apply for closure #1 in closure #1 in CollectionDifference<A>.inferringMoves();
  v103 = v96;
  v25;
  _ss17_NativeDictionaryV6filteryAByxq_GSbx3key_q_5valuet_tKXEKFxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyxSiSgIsgnndzo_AByxAHGAIsAG_pSHRzAHRs_r0_lIetMggozo_Tp5(thunk for @callee_guaranteed (@in_guaranteed A, @unowned Int?) -> (@unowned Bool)partial apply, &v104 - 6, v25, v5, a4);
  v98 = v97;
  swift_bridgeObjectRelease_n(v25, 2);
  return v98;
}

uint64_t closure #2 in CollectionDifference<A>.inferringMoves()(unint64_t a1, uint64_t a2, Class *a3, __objc2_class **a4)
{
  v5 = a3;
  v6 = a1;
  v106 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v124 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CollectionDifference.Change(0, v8, v8, v9);
  v115 = *(v10 - 1);
  v11 = *(v115 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v109 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v114 = &v104 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v123 = &v104 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v104 - v21;
  v23 = Array._getCount()();
  v24 = Array._getCount()();
  if (v24 >= v23)
  {
    v24 = v23;
  }

  if (v24)
  {
    v25 = specialized static _DictionaryStorage.allocate(capacity:)(v24, v5, a4);
  }

  else
  {
    v25 = &_swiftEmptyDictionarySingleton;
  }

  v26 = Array._getCount()();
  v113 = v26;
  if (v26)
  {
    v104 = v11;
    v28 = 0;
    v112 = v6 & 0xC000000000000001;
    v122 = (v115 + 16);
    v119 = (v106 + 32);
    v120 = (v115 + 32);
    v105 = (v115 + 8);
    v116 = v5;
    v117 = (v106 + 8);
    v110 = v22;
    v111 = a4;
    v108 = v6;
    while (1)
    {
      v31 = v112 == 0;
      v32 = v31 | ~_swift_isClassOrObjCExistentialType(v10, v10);
      Array._checkSubscript(_:wasNativeTypeChecked:)(v28, v32 & 1);
      if (v32)
      {
        v33 = *(v115 + 16);
        v33(v22, (v6 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v28), v10);
        v34 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v85 = _ArrayBuffer._getElementSlowPath(_:)(v28, v6, v10);
        if (v104 != 8)
        {
          LODWORD(v102) = 0;
          v101 = 96;
          LOBYTE(v100) = 2;
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v125 = v85;
        v33 = *v122;
        v86 = v85;
        (*v122)(v22, &v125, v10);
        swift_unknownObjectRelease(v86);
        v34 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v116);
        }
      }

      v121 = v34;
      v35 = *v120;
      v36 = a4;
      v37 = v123;
      (*v120)(v123, v22, v10);
      v38 = v114;
      v39 = v37;
      v40 = v36;
      v33(v114, v39, v10);
      swift_getTupleTypeMetadata3(0, &type metadata for Int, v5, byte_1EEEBE0E0, "offset element associatedWith ", 0);
      v42 = &v38[*(v41 + 48)];
      v118 = *v119;
      v118(v124, v42, v5);
      if (!v25[2])
      {
        break;
      }

      __RawDictionaryStorage.find<A>(_:)(v124, v5, v36);
      if ((v43 & 1) == 0)
      {
        break;
      }

      (*v105)(v123, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v25);
      v125 = v25;
      v45 = __RawDictionaryStorage.find<A>(_:)(v124, v5, v36);
      v47 = v25[2];
      v48 = (v46 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        goto LABEL_45;
      }

      v50 = v46;
      if (v25[3] >= v49)
      {
        v57 = v45;
        if (isUniquelyReferenced_nonNull_native)
        {
          a4 = v111;
          if (v46)
          {
            goto LABEL_31;
          }
        }

        else
        {
          a4 = v111;
          v89 = type metadata accessor for _NativeDictionary(0, v5, byte_1EEEBE0E0, v111);
          specialized _NativeDictionary.copy()(v89, v90);
          if (v50)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v51 = v5;
        v52 = v111;
        v53 = type metadata accessor for _NativeDictionary(0, v51, byte_1EEEBE0E0, v111);
        v54 = v49;
        a4 = v52;
        v5 = v116;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v54, isUniquelyReferenced_nonNull_native, v53);
        v55 = __RawDictionaryStorage.find<A>(_:)(v124, v5, a4);
        if ((v50 & 1) != (v56 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v5);
        }

        v57 = v55;
        if (v50)
        {
LABEL_31:
          v26 = (*v117)(v124, v5);
          v25 = v125;
          v84 = v125[7] + 16 * v57;
          *v84 = 0;
          *(v84 + 8) = 1;
          goto LABEL_10;
        }
      }

      v25 = v125;
      v125[(v57 >> 6) + 8] = (v125[(v57 >> 6) + 8] | (1 << v57));
      v26 = (v118)(v25[6] + *(v106 + 72) * v57, v124, v5);
      v91 = v25[7] + 16 * v57;
      *v91 = 0;
      *(v91 + 8) = 1;
      v92 = v25[2];
      v82 = __OFADD__(v92, 1);
      v93 = (&v92->isa + 1);
      if (v82)
      {
        goto LABEL_46;
      }

      v25[2] = v93;
LABEL_10:
      v22 = v110;
      ++v28;
      if (v121 == v113)
      {
        goto LABEL_41;
      }
    }

    v58 = v109;
    v35(v109, v123, v10);
    v59 = *v58;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v5, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v61 = v5;
    v62 = *v117;
    (*v117)(v58 + *(v60 + 48), v61);
    v63 = swift_isUniquelyReferenced_nonNull_native(v25);
    v125 = v25;
    v64 = __RawDictionaryStorage.find<A>(_:)(v124, v61, v40);
    v66 = v25[2];
    v67 = (v65 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_43;
    }

    v69 = v65;
    if (v25[3] < v68)
    {
      v107 = v28;
      v70 = v59;
      v71 = v10;
      v72 = v124;
      v73 = v116;
      v74 = v111;
      v75 = type metadata accessor for _NativeDictionary(0, v116, byte_1EEEBE0E0, v111);
      v76 = v68;
      a4 = v74;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v76, v63, v75);
      v77 = __RawDictionaryStorage.find<A>(_:)(v72, v73, v74);
      if ((v69 & 1) != (v78 & 1))
      {
        goto LABEL_47;
      }

      v79 = v77;
      v10 = v71;
      v59 = v70;
      v28 = v107;
      if ((v69 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_8:
      v29 = v116;
      v26 = v62(v124, v116);
      v5 = v29;
      v25 = v125;
      v30 = v125[7] + 16 * v79;
      *v30 = v59;
      *(v30 + 8) = 0;
LABEL_9:
      v6 = v108;
      goto LABEL_10;
    }

    v79 = v64;
    if (v63)
    {
      a4 = v111;
      if (v65)
      {
        goto LABEL_8;
      }
    }

    else
    {
      a4 = v111;
      v87 = type metadata accessor for _NativeDictionary(0, v116, byte_1EEEBE0E0, v111);
      specialized _NativeDictionary.copy()(v87, v88);
      if (v69)
      {
        goto LABEL_8;
      }
    }

LABEL_27:
    v25 = v125;
    v125[(v79 >> 6) + 8] = (v125[(v79 >> 6) + 8] | (1 << v79));
    v5 = v116;
    v26 = (v118)(v25[6] + *(v106 + 72) * v79, v124, v116);
    v80 = v25[7] + 16 * v79;
    *v80 = v59;
    *(v80 + 8) = 0;
    v81 = v25[2];
    v82 = __OFADD__(v81, 1);
    v83 = (&v81->isa + 1);
    if (v82)
    {
      goto LABEL_44;
    }

    v25[2] = v83;
    goto LABEL_9;
  }

LABEL_41:
  v94 = MEMORY[0x1EEE9AC00](v26, v27);
  MEMORY[0x1EEE9AC00](v94, v95);
  v100 = v5;
  v101 = a4;
  v102 = partial apply for closure #1 in closure #2 in CollectionDifference<A>.inferringMoves();
  v103 = v96;
  v25;
  _ss17_NativeDictionaryV6filteryAByxq_GSbx3key_q_5valuet_tKXEKFxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyxSiSgIsgnndzo_AByxAHGAIsAG_pSHRzAHRs_r0_lIetMggozo_Tp5(partial apply for thunk for @callee_guaranteed (@in_guaranteed A, @unowned Int?) -> (@unowned Bool), &v104 - 6, v25, v5, a4);
  v98 = v97;
  swift_bridgeObjectRelease_n(v25, 2);
  return v98;
}

unint64_t CollectionDifference.Change<A>._CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CollectionDifference.Change<A>._CodingKeys.init(rawValue:), v2);
  object;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t CollectionDifference.Change<A>._CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x74657366666FLL;
  v2 = 0xD000000000000010;
  if (a1 != 2)
  {
    v2 = 0x65766F6D65527369;
  }

  if (a1)
  {
    v1 = 0x746E656D656C65;
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

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CollectionDifference<A>.Change<A>._CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CollectionDifference.Change<A>._CodingKeys.init(stringValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CollectionDifference<A>.Change<A>._CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = CollectionDifference.Change<A>._CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CollectionDifference<A>.Change<A>._CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = CollectionDifference.Change<A>._CodingKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t CollectionDifference.Change<A>.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a5;
  v43 = *(a2 - 1);
  v44 = v5;
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CollectionDifference.Change(0, v12, v13, v14);
  v41 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v38 - v17);
  v19 = a1[3];
  v20 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v19);
  v21 = type metadata accessor for CollectionDifference.Change<A>._CodingKeys(0, a2, a3, a4);
  v22 = v44;
  (*(v20 + 24))(&v46, v21, v21, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys, v19, v20);
  if (!v22)
  {
    v39 = v15;
    v40 = v18;
    v44 = v11;
    v23 = v43;
    v24 = v46;
    LOBYTE(v46) = 0;
    v38 = (*(*v24 + 152))(&v46, v21, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys);
    LOBYTE(v46) = 1;
    v25 = *(*v24 + 248);
    v26 = a2;
    v25(a2, &v46, a2, v21, a3, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys);
    v48 = 2;
    v27 = lazy protocol witness table accessor for type Int? and conformance <A> A?();
    (v25)(&v46, byte_1EEEBE0E0, &v48, byte_1EEEBE0E0, v21, v27, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys);
    v28 = v46;
    v29 = v47;
    LOBYTE(v46) = 3;
    v31 = (*(*v24 + 120))(&v46, v21, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys);
    v24;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v26, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v33 = *(v32 + 48);
    v34 = v29;
    v35 = v40;
    v36 = v40 + *(v32 + 64);
    *v40 = v38;
    (*(v23 + 32))(v35 + v33, v44, v26);
    *v36 = v28;
    v36[8] = v34;
    v37 = v39;
    swift_storeEnumTagMultiPayload(v35, v39, v31 & 1);
    (*(v41 + 32))(v42, v35, v37);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v45);
}

uint64_t CollectionDifference.Change<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a3;
  v7 = *(a2 + 16);
  v64 = *(v7 - 1);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v10);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v55 = &v53 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v58 = &v53 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = (&v53 - v22);
  v24 = v21[3];
  v25 = v21[4];
  __swift_project_boxed_opaque_existential_0Tm(v21, v24);
  v57 = a4;
  v26 = type metadata accessor for CollectionDifference.Change<A>._CodingKeys(0, v7, v62, a4);
  (*(v25 + 24))(&v68, v26, v26, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys, v24, v25);
  v27 = *(v11 + 16);
  v59 = v4;
  v61 = v27;
  v62 = v11 + 16;
  (v27)(v23, v4, a2);
  v28 = a2;
  v29 = v7;
  v30 = v64;
  v31 = swift_getEnumCaseMultiPayload(v23, v28) == 1;
  swift_getTupleTypeMetadata3(0, &type metadata for Int, v7, byte_1EEEBE0E0, "offset element associatedWith ", 0);
  v33 = v23 + *(v32 + 48);
  v60 = *(v30 + 8);
  v60(v33, v7);
  LOBYTE(v65) = 3;
  v34 = v68;
  v35 = v31;
  v36 = v26;
  v37 = v63;
  (*(*v68 + 104))(v35, &v65, v26, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys);
  if (!v37)
  {
    v38 = v58;
    v39 = v59;
    v61(v58);
    v40 = *v38;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v29, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v60(v38 + *(v41 + 48), v29);
    LOBYTE(v65) = 0;
    (*(*v34 + 136))(v40, &v65, v36, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys);
    v42 = v55;
    (v61)(v55, v39, v28);
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v29, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v44 = &v42[*(v43 + 48)];
    v45 = v56;
    (*(v64 + 32))(v56, v44, v29);
    LOBYTE(v65) = 1;
    v64 = *(*v34 + 232);
    (v64)(v45, &v65, v29, v36, v57, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys);
    v60(v45, v29);
    v46 = v54;
    (v61)(v54, v39, v28);
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v29, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v48 = &v46[*(v47 + 64)];
    v49 = *v48;
    v50 = v48[8];
    v60(&v46[*(v47 + 48)], v29);
    v67 = 2;
    v65 = v49;
    v66 = v50;
    v51 = lazy protocol witness table accessor for type Int? and conformance <A> A?();
    (v64)(&v65, &v67, byte_1EEEBE0E0, v36, v51, &protocol witness table for CollectionDifference<A>.Change<A>._CodingKeys);
  }

  return v68;
}

uint64_t CollectionDifference<A>._CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CollectionDifference<A>._CodingKeys.init(rawValue:), v2);
  object;
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

uint64_t CollectionDifference<A>._CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x736C61766F6D6572;
  }

  else
  {
    return 0x6F69747265736E69;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CollectionDifference<A><A>._CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CollectionDifference<A>._CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CollectionDifference<A><A>._CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = CollectionDifference<A>._CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CollectionDifference<A><A>._CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = CollectionDifference<A>._CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t CollectionDifference<A>.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, unsigned __int16 *a3@<X2>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  v107 = a5;
  v111 = type metadata accessor for CollectionDifference.Change(0, a2, a3, a4);
  v108 = *(v111 - 1);
  v10 = MEMORY[0x1EEE9AC00](v111, v9);
  v106 = (&v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v98 - v14;
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v98 - v18;
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v98 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v112 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v24);
  v109 = a3;
  v110 = a4;
  v25 = type metadata accessor for CollectionDifference<A>._CodingKeys(0, a2, a3, a4);
  v26 = v113;
  (*(v23 + 24))(&v114, v25, v25, &protocol witness table for CollectionDifference<A><A>._CodingKeys, v24, v23);
  if (v26)
  {
    goto LABEL_3;
  }

  v104 = v22;
  v105 = v19;
  v103 = v15;
  v113 = a2;
  v29 = v114;
  LOBYTE(v114) = 1;
  v30 = v111;
  v31 = type metadata accessor for Array(0, v111, v27, v28);
  v32 = *(*v29 + 248);
  v119[0] = v109;
  v119[1] = v110;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <A> CollectionDifference<A>.Change, v30, v119);
  v33 = swift_getWitnessTable(protocol conformance descriptor for <A> [A], v31, &WitnessTable);
  v32(&v120, v31, &v114, v31, v25, v33, &protocol witness table for CollectionDifference<A><A>._CodingKeys);
  v110 = Array._getCount()();
  LOBYTE(v117) = 0;
  v32(&v114, v31, &v117, v31, v25, v33, &protocol witness table for CollectionDifference<A><A>._CodingKeys);
  v29;
  v117 = v114;
  v37 = swift_getWitnessTable(protocol conformance descriptor for [A], v31, v34);
  Array.append<A>(contentsOf:)(&v117, v31, v31, v37);
  v39 = swift_getWitnessTable(protocol conformance descriptor for [A], v31, v38);
  v40 = v110;
  v109 = v31;
  specialized MutableCollection.subscript.getter(v110, v31, v39);
  v41 = v114;
  v42 = v115;
  v43 = v116 >> 1;
  v44 = v105;
  if (v115 != v116 >> 1)
  {
    v54 = v108 + 16;
    v102 = v108 + 32;
    v55 = *(&v114 + 1);
    v56 = v113 - 8;
    if (v115 <= v43)
    {
      v57 = v116 >> 1;
    }

    else
    {
      v57 = v115;
    }

    while (1)
    {
      if (v57 == v42)
      {
LABEL_23:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v98 = v57;
      v101 = v56;
      v100 = v39;
      v110 = v41;
      v58 = v40;
      v59 = v108;
      v60 = *(v108 + 72);
      v99 = v55;
      v61 = v44;
      v62 = v104;
      v63 = v54;
      (*(v108 + 16))(v104, v55 + v60 * v42, v30);
      v64 = v62;
      v44 = v61;
      (*(v59 + 32))(v61, v64, v30);
      if (swift_getEnumCaseMultiPayload(v61, v30) != 1)
      {
        break;
      }

      ++v42;
      v65 = v30;
      v66 = v113;
      swift_getTupleTypeMetadata3(0, &type metadata for Int, v113, byte_1EEEBE0E0, "offset element associatedWith ", 0);
      v56 = v101;
      v68 = *(*(v66 - 1) + 8);
      v69 = v66;
      v30 = v65;
      v68(v44 + *(v67 + 48), v69);
      v40 = v58;
      v41 = v110;
      v39 = v100;
      v54 = v63;
      v55 = v99;
      v57 = v98;
      if (v43 == v42)
      {
        goto LABEL_6;
      }
    }

    swift_unknownObjectRelease(v110);
    v89 = v113;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v113, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    (*(*(v89 - 1) + 8))(v61 + *(v90 + 48), v89);
    goto LABEL_26;
  }

LABEL_6:
  swift_unknownObjectRelease(v41);
  v45 = v109;
  specialized MutableCollection.subscript.getter(v40, v109, v39);
  v46 = v114;
  v47 = v115;
  v48 = v116 >> 1;
  v49 = v107;
  if (v115 != v116 >> 1)
  {
    v70 = (v108 + 16);
    v71 = v108 + 32;
    v72 = *(&v114 + 1);
    v73 = v113 - 8;
    if (v115 <= v48)
    {
      v74 = v116 >> 1;
    }

    else
    {
      v74 = v115;
    }

    while (1)
    {
      if (v74 == v47)
      {
        goto LABEL_23;
      }

      v102 = v74;
      v110 = v46;
      v104 = v72;
      v105 = v73;
      v75 = v108;
      v76 = &v72[*(v108 + 72) * v47];
      v77 = *(v108 + 16);
      v78 = v71;
      v79 = v103;
      v80 = v111;
      v101 = v70;
      v77(v103, v76, v111);
      v81 = *(v75 + 32);
      v82 = v106;
      v83 = v79;
      v71 = v78;
      v81(v106, v83, v80);
      if (swift_getEnumCaseMultiPayload(v82, v80) == 1)
      {
        break;
      }

      ++v47;
      v84 = v82;
      v85 = v113;
      swift_getTupleTypeMetadata3(0, &type metadata for Int, v113, byte_1EEEBE0E0, "offset element associatedWith ", 0);
      v73 = v105;
      v87 = *(*(v85 - 1) + 8);
      v88 = v85;
      v49 = v107;
      v87(v84 + *(v86 + 48), v88);
      v45 = v109;
      v46 = v110;
      v70 = v101;
      v72 = v104;
      v74 = v102;
      if (v48 == v47)
      {
        goto LABEL_7;
      }
    }

    swift_unknownObjectRelease(v110);
    v91 = v113;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v113, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    (*(*(v91 - 1) + 8))(v82 + *(v92 + 48), v91);
    goto LABEL_26;
  }

LABEL_7:
  swift_unknownObjectRelease(v46);
  v50 = v120;
  *&v114 = v120;
  v52 = swift_getWitnessTable(protocol conformance descriptor for [A], v45, v51);
  v53 = v113;
  if ((static CollectionDifference._validateChanges<A>(_:)(&v114, v113, v45, v52) & 1) == 0)
  {
LABEL_26:
    v120;
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v94 = v93;
    v95 = v112;
    v96 = v112[3];
    v97 = v112[4];
    __swift_project_boxed_opaque_existential_0Tm(v112, v96);
    *v94 = (*(v97 + 8))(v96, v97);
    *(v94 + 8) = 0xD00000000000002ELL;
    *(v94 + 16) = 0x800000018066E7D0;
    *(v94 + 24) = 0;
    *(v94 + 72) = 3;
    swift_willThrow();
    v35 = v95;
    return __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  v117 = v50;
  CollectionDifference.init<A>(_validatedChanges:)(&v117, v53, v45, v52, &v114);
  *v49 = v114;
LABEL_3:
  v35 = v112;
  return __swift_destroy_boxed_opaque_existential_1Tm(v35);
}

uint64_t CollectionDifference<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v24 = v4[1];
  v10 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v10);
  v11 = *(a2 + 16);
  v12 = type metadata accessor for CollectionDifference<A>._CodingKeys(0, v11, a3, a4);
  v13 = *(v9 + 24);
  v8;
  v13(&v31, v12, v12, &protocol witness table for CollectionDifference<A><A>._CodingKeys, v10, v9);
  v30 = v8;
  v14 = v8;
  v29 = 0;
  v15 = *(*v31 + 232);
  v18 = type metadata accessor for CollectionDifference.Change(255, v11, v16, v17);
  v21 = type metadata accessor for Array(0, v18, v19, v20);
  v28[0] = a3;
  v28[1] = a4;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <A> CollectionDifference<A>.Change, v18, v28);
  v22 = swift_getWitnessTable(protocol conformance descriptor for <A> [A], v21, &WitnessTable);
  v15(&v30, &v29, v21, v12, v22, &protocol witness table for CollectionDifference<A><A>._CodingKeys);
  v14;
  if (!v26)
  {
    v30 = v24;
    v29 = 1;
    v24;
    v15(&v30, &v29, v21, v12, v22, &protocol witness table for CollectionDifference<A><A>._CodingKeys);
    v24;
  }

  return v31;
}

uint64_t CollectionOfOne.Iterator._elements.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for Optional(0, *(a1 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4, v6);
}

uint64_t CollectionOfOne.Iterator._elements.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional(0, *(a2 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

uint64_t CollectionOfOne.Iterator.init(_elements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v8 = type metadata accessor for Optional(0, a2, v6, v7);
  v9 = *(*(v8 - 8) + 40);

  return v9(a3, a1, v8);
}

uint64_t CollectionOfOne.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for Optional(0, v6, a3, a4);
  (*(*(v7 - 8) + 32))(a2, v4, v7);
  v8 = *(*(v6 - 8) + 56);

  return v8(v4, 1, 1, v6);
}

Swift::Int __swiftcall CollectionOfOne.index(after:)(Swift::Int after)
{
  if (after)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 1;
}

Swift::Int __swiftcall CollectionOfOne.index(before:)(Swift::Int before)
{
  if (before != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

uint64_t CollectionOfOne.makeIterator()@<X0>(uint64_t a1@<X0>, char *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for Optional(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  v12 = *(v6 - 8);
  (*(v12 + 32))(&v15 - v10, v4, v6);
  v13 = *(v12 + 56);
  v13(v11, 0, 1, v6);
  v13(a2, 1, 1, v6);
  return (*(v8 + 40))(a2, v11, v7);
}

uint64_t CollectionOfOne.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(*(*(a2 + 16) - 8) + 16);

  return v4(a3, v3);
}

uint64_t key path getter for CollectionOfOne.subscript(_:) : <A>CollectionOfOne<A>A@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = CollectionOfOne.subscript.read(v7, *a1);
  (*(*(v4 - 8) + 16))(a3);
  return (v5)(v7, 0);
}

void (*CollectionOfOne.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

uint64_t key path setter for CollectionOfOne.subscript(_:) : <A>CollectionOfOne<A>A(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = CollectionOfOne.subscript.modify(v9, *a3);
  (*(*(v5 - 8) + 24))(v7, a1, v5);
  return (v6)(v9, 0);
}

{
  v6 = type metadata accessor for CollectionOfOne(255, *(a3 + a4 - 8), a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, v6, v7);
  v10 = type metadata accessor for Slice(0, v6, WitnessTable, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v18 - v12;
  v15 = *a3;
  v14 = a3[1];
  (*(v16 + 16))(&v18 - v12, a1);
  return CollectionOfOne.subscript.setter(v13, v15, v14, v6);
}

void (*CollectionOfOne.subscript.modify(uint64_t a1, uint64_t a2))()
{
  if (a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

uint64_t CollectionOfOne.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(*(*(a3 + 16) - 8) + 40);

  return v4(v3, a1);
}

uint64_t CollectionOfOne.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 *a3@<X2>, char *a4@<X8>)
{
  if (a1 < 0 || a2 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a3, a3);
  v11 = type metadata accessor for Slice(0, a3, WitnessTable, v10);
  result = (*(*(a3 - 1) + 16))(&a4[*(v11 + 40)], v4, a3);
  *a4 = a1;
  *(a4 + 1) = a2;
  return result;
}

uint64_t key path getter for CollectionOfOne.subscript(_:) : <A>CollectionOfOne<A>A@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = type metadata accessor for CollectionOfOne(0, *(a1 + a2 - 8), a2, a4);
  return CollectionOfOne.subscript.getter(v5, v6, v7, a3);
}

uint64_t CollectionOfOne.subscript.setter(char *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  v5 = v4;
  v21[0] = a2;
  v21[1] = a3;
  v20 = xmmword_180672710;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a4, a3);
  specialized Collection._failEarlyRangeCheck(_:bounds:)(v21, &v20, a4, WitnessTable);
  v11 = *(a1 + 1);
  v21[0] = *a1;
  *&v20 = v11;
  v13 = type metadata accessor for Slice(0, a4, WitnessTable, v12);
  v14 = *(v13 + 40);
  v16 = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a4, v15);
  v17 = RandomAccessCollection<>.distance(from:to:)(v21, &v20, a4, v16, &protocol witness table for Int);
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 - a2 != v17)
  {
    goto LABEL_8;
  }

  if (v17 != 1)
  {
    return (*(*(v13 - 8) + 8))(a1, v13);
  }

  v18 = *(a4 - 1);
  (*(v18 + 8))(v5, a4);
  return (*(v18 + 32))(v5, &a1[v14], a4);
}

void (*CollectionOfOne.subscript.modify(void *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(0x40, 0x1991uLL);
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v11 = v9;
  *a1 = v9;
  v9[2] = a4;
  v9[3] = v4;
  *v9 = a2;
  v9[1] = a3;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a4, v10);
  v14 = type metadata accessor for Slice(0, a4, WitnessTable, v13);
  v11[4] = v14;
  v15 = *(v14 - 8);
  v11[5] = v15;
  v16 = *(v15 + 64);
  if (swift_coroFrameAlloc)
  {
    v11[6] = swift_coroFrameAlloc(v16, 0x1991uLL);
    v17 = swift_coroFrameAlloc(v16, 0x1991uLL);
    v11[7] = v17;
    if (a2 < 0)
    {
LABEL_10:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    v11[6] = malloc(v16);
    v17 = malloc(v16);
    v11[7] = v17;
    if (a2 < 0)
    {
      goto LABEL_10;
    }
  }

  if (a3 >= 2)
  {
    goto LABEL_10;
  }

  v18 = v17;
  (*(*(a4 - 1) + 16))(v17 + *(v14 + 40), v4, a4);
  *v18 = a2;
  v18[1] = a3;
  return CollectionOfOne.subscript.modify;
}

void CollectionOfOne.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    v7 = *(v2 + 16);
    v9 = *v2;
    v8 = *(v2 + 8);
    (*(v6 + 16))((*a1)[6], v4, v5);
    CollectionOfOne.subscript.setter(v3, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CollectionOfOne.subscript.setter((*a1)[7], *v2, *(v2 + 8), *(v2 + 16));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance CollectionOfOne<A>(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(*(*(a3 + 16) - 8) + 40);

  return v4(v3, a1);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance CollectionOfOne<A>(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x28, 0xE285uLL);
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = CollectionOfOne.subscript.modify(v4, *a2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArraySlice<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance [A](void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance CollectionOfOne<A>(void *a1, uint64_t *a2, unsigned __int16 *a3))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0xC49uLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v9 = v7;
  *a1 = v7;
  *v7 = v3;
  v7[1] = a3;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a3, v8);
  v12 = type metadata accessor for Slice(0, a3, WitnessTable, v11);
  v9[2] = v12;
  v13 = *(v12 - 8);
  v9[3] = v13;
  v14 = *(v13 + 64);
  if (swift_coroFrameAlloc)
  {
    v9[4] = swift_coroFrameAlloc(v14, 0xC49uLL);
    v15 = swift_coroFrameAlloc(v14, 0xC49uLL);
  }

  else
  {
    v9[4] = malloc(v14);
    v15 = malloc(v14);
  }

  v16 = *a2;
  v17 = a2[1];
  v9[5] = v15;
  v9[6] = v16;
  v9[7] = v17;
  if (v16 < 0 || v17 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v18 = v15;
  (*(*(a3 - 1) + 16))(v15 + *(v12 + 40), v3, a3);
  *v18 = v16;
  v18[1] = v17;
  return protocol witness for MutableCollection.subscript.modify in conformance CollectionOfOne<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance CollectionOfOne<A>(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    v9 = *(v2 + 8);
    (*(v8 + 16))((*a1)[4], v6, v7);
    CollectionOfOne.subscript.setter(v5, v3, v4, v9);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    CollectionOfOne.subscript.setter((*a1)[5], v3, v4, *(v2 + 8));
  }

  free(v6);
  free(v5);

  free(v2);
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance CollectionOfOne<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = 0;
  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance CollectionOfOne<A>(void *result)
{
  if (*result != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = 0;
  return result;
}

uint64_t _ss15CollectionOfOneVyxGSlsSl5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a3, a3);

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int, a4);
}

uint64_t _ss15CollectionOfOneVyxGSlsSl5index_8offsetBy07limitedF05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int16 *a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a4, a3);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t _ss15CollectionOfOneVyxGSlsSl8distance4from2toSi5IndexQz_AHtFTW_0(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a3, a3);

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CollectionOfOne<A>(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x28, 0x8E5DuLL);
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = CollectionOfOne.subscript.read(v4, *a2);
  return protocol witness for Collection.subscript.read in conformance _ArrayBuffer<A>;
}

uint64_t protocol witness for Collection.indices.getter in conformance CollectionOfOne<A>@<X0>(unsigned __int16 *a1@<X0>, char *a2@<X8>, uint64_t a3@<X2>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a1, a3);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int, a2);
}

void *protocol witness for Collection.index(after:) in conformance CollectionOfOne<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = 1;
  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance CollectionOfOne<A>(void *result)
{
  if (*result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = 1;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance CollectionOfOne<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a1, a3);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance DefaultIndices<A>(unsigned __int16 *a1, uint64_t a2, int *a3)
{
  WitnessTable = swift_getWitnessTable(a3, a1, a3);
  v6 = specialized Collection._copyToContiguousArray()(v3, a1, WitnessTable);
  (*(*(a1 - 1) + 8))(v3, a1);
  return v6;
}

uint64_t CollectionOfOne.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _StringGuts.init(_initialCapacity:)(19);
  v9 = v7;
  v10 = v8;
  v165 = v7;
  v166 = v8;
  v11 = 0x800000018066E850 | 0x8000000000000000;
  v12 = HIBYTE(v8) & 0xF;
  v13 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v14 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 && (v7 & ~v8 & 0x2000000000000000) == 0)
  {
    v8;
    v165 = 0xD000000000000010;
    v166 = 0x800000018066E850 | 0x8000000000000000;
    goto LABEL_87;
  }

  v161 = v6;
  v162 = v2;
  v163 = v4;
  v15 = 0x800000018066E850 & 0x2000000000000000;
  v16 = (0x800000018066E850 >> 56) & 0xF;
  if ((0x800000018066E850 & 0x2000000000000000 & v8) != 0)
  {
    v17 = v12 + v16;
    if (v12 + v16 <= 0xF)
    {
      if (v16)
      {
        v39 = 0;
        v40 = 0;
        v41 = 8 * v12;
        v42 = 8 * v16;
        v43 = v8;
        v4 = v163;
        do
        {
          v44 = v11 >> (v39 & 0x38);
          if (v40 < 8)
          {
            v44 = 0xD000000000000010 >> v39;
          }

          v45 = (v44 << (v41 & 0x38)) | ((-255 << (v41 & 0x38)) - 1) & v43;
          v46 = (v44 << v41) | ((-255 << v41) - 1) & v9;
          if (v12 <= 7)
          {
            v9 = v46;
          }

          else
          {
            v43 = v45;
          }

          ++v12;
          v41 += 8;
          v39 += 8;
          ++v40;
        }

        while (v42 != v39);
      }

      else
      {
        v43 = v8;
        v4 = v163;
      }

      v8;
      0x800000018066E850 | 0x8000000000000000;
      v66 = 0xA000000000000000;
      if (!(v9 & 0x8080808080808080 | v43 & 0x80808080808080))
      {
        v66 = 0xE000000000000000;
      }

      v165 = v9;
      v166 = v66 & 0xFF00000000000000 | (v17 << 56) | v43 & 0xFFFFFFFFFFFFFFLL;
      goto LABEL_86;
    }
  }

  if (v15)
  {
    v18 = (0x800000018066E850 >> 56) & 0xF;
  }

  else
  {
    v18 = 16;
  }

  if ((0x800000018066E850 & 0x1000000000000000) == 0)
  {
    0x800000018066E850 | 0x8000000000000000;
    v20 = v18;
    if ((v10 & 0x1000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_222:
    v141 = String.UTF8View._foreignCount()();
    v22 = v141 + v20;
    if (!__OFADD__(v141, v20))
    {
      goto LABEL_14;
    }

LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  swift_bridgeObjectRetain_n(0x800000018066E850 | 0x8000000000000000, 2);
  v137._rawBits = 1;
  v138._rawBits = (v18 << 16) | 1;
  v139._rawBits = _StringGuts.validateScalarRange(_:)(v137, v138, 0xD000000000000010, 0x800000018066E850 | 0x8000000000000000)._rawBits;
  if (v139._rawBits < 0x10000)
  {
    v139._rawBits |= 3;
  }

  v20 = String.UTF8View.distance(from:to:)(v139, v140);
  0x800000018066E850 | 0x8000000000000000;
  if ((v10 & 0x1000000000000000) != 0)
  {
    goto LABEL_222;
  }

LABEL_13:
  v21 = __OFADD__(v14, v20);
  v22 = v14 + v20;
  if (v21)
  {
    goto LABEL_224;
  }

LABEL_14:
  v160 = v3;
  v23 = v9 & ~v10;
  if ((v23 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
  {
    v24 = _StringGuts.nativeUnusedCapacity.getter(v9, v10);
    if (v25)
    {
      goto LABEL_247;
    }

    if (v22 > 15)
    {
      goto LABEL_25;
    }

    if ((v10 & 0x2000000000000000) == 0)
    {
      if (v24 < v20)
      {
        goto LABEL_20;
      }

LABEL_25:
      v28 = v23 & 0x2000000000000000;
      v29 = _StringGuts.nativeUnusedCapacity.getter(v9, v10);
      if ((v30 & 1) != 0 || v29 < v20)
      {
        if (v28)
        {
          swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL);
        }

        v31 = _StringGuts.nativeCapacity.getter(v9, v10);
        if (v33)
        {
          v34 = 0;
        }

        else
        {
          v34 = v31;
        }

        if (v34 + 0x4000000000000000 < 0)
        {
          __break(1u);
          goto LABEL_238;
        }

        v35 = 2 * v34;
        if (v35 > v22)
        {
          v22 = v35;
        }
      }

      else if (v28)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL);
        v3 = v160;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v3 = v160;
LABEL_36:
      _StringGuts.grow(_:)(v22);
LABEL_37:
      if ((0x800000018066E850 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(0xD000000000000010, 0x800000018066E850 | 0x8000000000000000, 0, v18);
      }

      else
      {
        if (v15)
        {
          v36 = (0x800000018066E850 >> 62) & 1;
          *&v164 = 0xD000000000000010;
          *(&v164 + 1) = 0x800000018066E850 & 0xFFFFFFFFFFFFF0;
          v37 = &v164;
          v38 = (0x800000018066E850 >> 56) & 0xF;
        }

        else
        {
          v37 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, 16, (0x800000018066E850 & 0xFFFFFFFFFFFFFF0) + 32, 16);
          LOBYTE(v36) = 1;
        }

        closure #1 in _StringGuts.append(_:)(v37, v38, &v165, v36);
      }

      swift_bridgeObjectRelease_n(0x800000018066E850 | 0x8000000000000000, 2);
      goto LABEL_85;
    }
  }

  else
  {
    if (v22 > 15)
    {
      goto LABEL_25;
    }

    if ((v10 & 0x2000000000000000) == 0)
    {
LABEL_20:
      if ((v10 & 0x1000000000000000) != 0)
      {
        v9 = _StringGuts._foreignConvertedToSmall()(v9, v10);
        v27 = v135;
      }

      else
      {
        if ((v9 & 0x1000000000000000) != 0)
        {
          v26 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v26 = _StringObject.sharedUTF8.getter(v9, v10);
          v13 = v152;
        }

        closure #1 in _StringGuts._convertedToSmall()(v26, v13, &v164, v19);
        v27 = *(&v164 + 1);
        v9 = v164;
      }

      goto LABEL_51;
    }
  }

  v27 = v10;
LABEL_51:
  v47 = 0xD000000000000010;
  0x800000018066E850 | 0x8000000000000000;
  v48._rawBits = 1;
  v49._rawBits = (v18 << 16) | 1;
  v50._rawBits = _StringGuts.validateScalarRange(_:)(v48, v49, 0xD000000000000010, 0x800000018066E850 | 0x8000000000000000)._rawBits;
  if (v50._rawBits < 0x10000)
  {
    v50._rawBits |= 3;
  }

  if (v50._rawBits >> 16 || v51._rawBits >> 16 != v18)
  {
    v47 = specialized static String._copying(_:)(v50._rawBits, v51, 0xD000000000000010, 0x800000018066E850 | 0x8000000000000000);
    v53 = v54;
    0x800000018066E850 | 0x8000000000000000;
  }

  else
  {
    v53 = 0x800000018066E850 | 0x8000000000000000;
  }

  if ((v53 & 0x2000000000000000) == 0)
  {
    goto LABEL_233;
  }

  v53;
  while (1)
  {
    v55 = HIBYTE(v27) & 0xF;
    v56 = HIBYTE(v53) & 0xF;
    v57 = v56 + v55;
    if (v56 + v55 > 0xF)
    {
      goto LABEL_247;
    }

    v11;
    if (v56)
    {
      v58 = 0;
      v59 = 0;
      v60 = 8 * v55;
      v61 = 8 * v56;
      v3 = v160;
      do
      {
        v62 = v53 >> (v58 & 0x38);
        if (v59 < 8)
        {
          v62 = v47 >> v58;
        }

        v63 = (v62 << (v60 & 0x38)) | ((-255 << (v60 & 0x38)) - 1) & v27;
        v64 = (v62 << v60) | ((-255 << v60) - 1) & v9;
        if (v55 <= 7)
        {
          v9 = v64;
        }

        else
        {
          v27 = v63;
        }

        ++v55;
        v60 += 8;
        v58 += 8;
        ++v59;
      }

      while (v61 != v58);
    }

    else
    {
      v3 = v160;
    }

    v10;
    v11;
    v65 = 0xA000000000000000;
    if (!(v9 & 0x8080808080808080 | v27 & 0x80808080808080))
    {
      v65 = 0xE000000000000000;
    }

    v165 = v9;
    v166 = v65 & 0xFF00000000000000 | (v57 << 56) | v27 & 0xFFFFFFFFFFFFFFLL;
LABEL_85:
    v4 = v163;
LABEL_86:
    v6 = v161;
    v2 = v162;
LABEL_87:
    (*(v4 + 16))(v6, v2, v3);
    *&v164 = 0;
    *(&v164 + 1) = 0xE000000000000000;
    _debugPrint_unlocked<A, B>(_:_:)(v6, &v164, v3, &type metadata for String, &protocol witness table for String);
    (*(v4 + 8))(v6, v3);
    v15 = *(&v164 + 1);
    v10 = v164;
    v68 = v165;
    v18 = v166;
    v69 = HIBYTE(v166) & 0xF;
    v27 = v165 & 0xFFFFFFFFFFFFLL;
    if ((v166 & 0x2000000000000000) != 0)
    {
      v70 = HIBYTE(v166) & 0xF;
    }

    else
    {
      v70 = v165 & 0xFFFFFFFFFFFFLL;
    }

    if (!v70 && (v165 & ~v166 & 0x2000000000000000) == 0)
    {
      v166;
      v165 = v10;
      v166 = v15;
      goto LABEL_180;
    }

    v9 = HIBYTE(*(&v164 + 1)) & 0xFLL;
    if ((v166 & 0x2000000000000000) == 0)
    {
      LODWORD(v163) = (*(&v164 + 1) & 0x2000000000000000) == 0;
      v71 = v164 & 0xFFFFFFFFFFFFLL;
      v11 = HIBYTE(*(&v164 + 1)) & 0xFLL;
      if ((*(&v164 + 1) & 0x2000000000000000) != 0)
      {
LABEL_98:
        v162 = v71;
        if ((*(&v164 + 1) & 0x1000000000000000) == 0)
        {
          goto LABEL_99;
        }

        goto LABEL_137;
      }

LABEL_97:
      v11 = v71;
      goto LABEL_98;
    }

    if ((*(&v164 + 1) & 0x2000000000000000) == 0)
    {
      v71 = v164 & 0xFFFFFFFFFFFFLL;
      LODWORD(v163) = 1;
      goto LABEL_97;
    }

    v95 = v69 + v9;
    if (v69 + v9 < 0x10)
    {
      if (v9)
      {
        v113 = 0;
        v114 = 0;
        v115 = 8 * v69;
        v116 = 8 * v9;
        v9 = v166;
        do
        {
          v117 = *(&v164 + 1) >> (v113 & 0x38);
          if (v114 < 8)
          {
            v117 = v164 >> v113;
          }

          v118 = (v117 << (v115 & 0x38)) | ((-255 << (v115 & 0x38)) - 1) & v9;
          v119 = (v117 << v115) | ((-255 << v115) - 1) & v68;
          if (v69 <= 7)
          {
            v68 = v119;
          }

          else
          {
            v9 = v118;
          }

          ++v69;
          v115 += 8;
          v113 += 8;
          ++v114;
        }

        while (v116 != v113);
      }

      else
      {
        v9 = v166;
      }

      v166;
      v15;
      v120 = 0xA000000000000000;
      if (!(v68 & 0x8080808080808080 | v9 & 0x80808080808080))
      {
        v120 = 0xE000000000000000;
      }

      v112 = v120 | (v95 << 56);
      goto LABEL_179;
    }

    LODWORD(v163) = 0;
    v11 = HIBYTE(*(&v164 + 1)) & 0xFLL;
    v162 = v164 & 0xFFFFFFFFFFFFLL;
    if ((*(&v164 + 1) & 0x1000000000000000) == 0)
    {
LABEL_99:
      *(&v164 + 1);
      v73 = v11;
      if ((v18 & 0x1000000000000000) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_140;
    }

LABEL_137:
    swift_bridgeObjectRetain_n(*(&v164 + 1), 2);
    v96._rawBits = 1;
    v97._rawBits = (v11 << 16) | 1;
    v98._rawBits = _StringGuts.validateScalarRange(_:)(v96, v97, v10, v15)._rawBits;
    if (v98._rawBits < 0x10000)
    {
      v98._rawBits |= 3;
    }

    v73 = String.UTF8View.distance(from:to:)(v98, v99);
    v15;
    if ((v18 & 0x1000000000000000) == 0)
    {
LABEL_100:
      v21 = __OFADD__(v70, v73);
      v47 = v70 + v73;
      if (v21)
      {
        goto LABEL_142;
      }

      goto LABEL_101;
    }

LABEL_140:
    v100 = String.UTF8View._foreignCount()();
    v47 = v100 + v73;
    if (__OFADD__(v100, v73))
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

LABEL_101:
    v74 = v68 & ~v18;
    if ((v74 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v18 & 0xFFFFFFFFFFFFFFFLL))
    {
      break;
    }

    v75 = _StringGuts.nativeUnusedCapacity.getter(v68, v18);
    if (v76)
    {
      goto LABEL_247;
    }

    if (v47 <= 15)
    {
      if ((v18 & 0x2000000000000000) != 0)
      {
        goto LABEL_129;
      }

      if (v75 < v73)
      {
        goto LABEL_107;
      }
    }

LABEL_112:
    v53 = v74 & 0x2000000000000000;
    v78 = _StringGuts.nativeUnusedCapacity.getter(v68, v18);
    if ((v79 & 1) == 0 && v78 >= v73)
    {
      if (!v53 || !swift_isUniquelyReferenced_nonNull_native(v18 & 0xFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_122;
      }

      goto LABEL_123;
    }

    if (v53)
    {
      swift_isUniquelyReferenced_nonNull_native(v18 & 0xFFFFFFFFFFFFFFFLL);
    }

    v80 = _StringGuts.nativeCapacity.getter(v68, v18);
    if (v81)
    {
      v82 = 0;
    }

    else
    {
      v82 = v80;
    }

    if (v82 + 0x4000000000000000 >= 0)
    {
      v83 = 2 * v82;
      if (v83 > v47)
      {
        v47 = v83;
      }

LABEL_122:
      _StringGuts.grow(_:)(v47);
LABEL_123:
      if ((v15 & 0x1000000000000000) == 0)
      {
        if (v163)
        {
          if ((v10 & 0x1000000000000000) != 0)
          {
            v84 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v85 = v162;
            v86 = v162;
          }

          else
          {
            v149 = _StringObject.sharedUTF8.getter(v10, v15);
            if (v150 < v162)
            {
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v84 = v149;
            v86 = v150;
            v85 = v162;
          }

          v87 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v85, v84, v86);
          v89 = v10 >> 63;
        }

        else
        {
          v89 = (v15 >> 62) & 1;
          *&v164 = v10;
          *(&v164 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
          v87 = &v164;
          v88 = HIBYTE(v15) & 0xF;
        }

        closure #1 in _StringGuts.append(_:)(v87, v88, &v165, v89);
        goto LABEL_174;
      }

LABEL_143:
      _StringGuts._foreignAppendInPlace(_:)(v10, v15, 0, v11);
LABEL_174:
      swift_bridgeObjectRelease_n(v15, 2);
      goto LABEL_180;
    }

    __break(1u);
LABEL_233:
    if ((v53 & 0x1000000000000000) != 0)
    {
      v47 = _StringGuts._foreignConvertedToSmall()(v47, v53);
      v157 = v156;
      v53;
      v53 = v157;
    }

    else
    {
      if ((v47 & 0x1000000000000000) != 0)
      {
        v145 = ((v53 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v146 = v47 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v145 = _StringObject.sharedUTF8.getter(v47, v53);
      }

      closure #1 in _StringGuts._convertedToSmall()(v145, v146, &v164, v52);
      v53;
      v53 = *(&v164 + 1);
      v47 = v164;
    }
  }

  if (v47 > 15)
  {
    goto LABEL_112;
  }

  if ((v18 & 0x2000000000000000) != 0)
  {
LABEL_129:
    v9 = v18;
  }

  else
  {
LABEL_107:
    if ((v18 & 0x1000000000000000) != 0)
    {
      v68 = _StringGuts._foreignConvertedToSmall()(v68, v18);
      v9 = v134;
    }

    else
    {
      if ((v68 & 0x1000000000000000) != 0)
      {
        v77 = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v77 = _StringObject.sharedUTF8.getter(v68, v18);
        v27 = v151;
      }

      closure #1 in _StringGuts._convertedToSmall()(v77, v27, &v164, v72);
      v9 = *(&v164 + 1);
      v68 = v164;
    }
  }

  v15;
  v90._rawBits = 1;
  v91._rawBits = (v11 << 16) | 1;
  v92._rawBits = _StringGuts.validateScalarRange(_:)(v90, v91, v10, v15)._rawBits;
  if (v92._rawBits < 0x10000)
  {
    v92._rawBits |= 3;
  }

  if (v92._rawBits >> 16 || v93._rawBits >> 16 != v11)
  {
    v10 = specialized static String._copying(_:)(v92._rawBits, v93, v10, v15);
    v11 = v101;
    v15;
  }

  else
  {
    v11 = v15;
  }

  if ((v11 & 0x2000000000000000) == 0)
  {
    goto LABEL_228;
  }

  v11;
  while (1)
  {
    v102 = HIBYTE(v9) & 0xF;
    v103 = HIBYTE(v11) & 0xF;
    v104 = v103 + v102;
    if (v103 + v102 > 0xF)
    {
      goto LABEL_247;
    }

    v15;
    if (v103)
    {
      v105 = 0;
      v106 = 0;
      v107 = 8 * v102;
      do
      {
        v108 = v11 >> (v105 & 0x38);
        if (v106 < 8)
        {
          v108 = v10 >> v105;
        }

        v109 = (v108 << (v107 & 0x38)) | ((-255 << (v107 & 0x38)) - 1) & v9;
        v110 = (v108 << v107) | ((-255 << v107) - 1) & v68;
        if (v102 <= 7)
        {
          v68 = v110;
        }

        else
        {
          v9 = v109;
        }

        ++v102;
        v107 += 8;
        v105 += 8;
        ++v106;
      }

      while (8 * v103 != v105);
    }

    v18;
    v15;
    v111 = 0xA000000000000000;
    if (!(v68 & 0x8080808080808080 | v9 & 0x80808080808080))
    {
      v111 = 0xE000000000000000;
    }

    v112 = v111 | (v104 << 56);
LABEL_179:
    v165 = v68;
    v166 = v112 & 0xFF00000000000000 | v9 & 0xFFFFFFFFFFFFFFLL;
LABEL_180:
    v18 = v165;
    v15 = v166;
    v11 = HIBYTE(v166) & 0xF;
    v10 = v165 & 0xFFFFFFFFFFFFLL;
    if ((v166 & 0x2000000000000000) != 0)
    {
      v121 = HIBYTE(v166) & 0xF;
    }

    else
    {
      v121 = v165 & 0xFFFFFFFFFFFFLL;
    }

    if (!v121 && (v165 & ~v166 & 0x2000000000000000) == 0)
    {
      v166;
      return 41;
    }

    if ((v166 & 0x2000000000000000) != 0 && v11 != 15)
    {
      break;
    }

    0xE100000000000000;
    if ((v15 & 0x1000000000000000) != 0)
    {
LABEL_225:
      v142 = String.UTF8View._foreignCount()();
      v68 = v142 + 1;
      if (!__OFADD__(v142, 1))
      {
LABEL_192:
        if ((v18 & ~v15 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v15 & 0xFFFFFFFFFFFFFFFLL))
        {
          v123 = _StringGuts.nativeUnusedCapacity.getter(v18, v15);
          if (v124)
          {
            goto LABEL_247;
          }

          if (v68 > 15)
          {
            goto LABEL_203;
          }

          if ((v15 & 0x2000000000000000) == 0)
          {
            if (v123 < 1)
            {
LABEL_198:
              if ((v15 & 0x1000000000000000) != 0)
              {
                v18 = _StringGuts._foreignConvertedToSmall()(v18, v15);
                v10 = v136;
              }

              else
              {
                if ((v18 & 0x1000000000000000) != 0)
                {
                  v125 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v125 = _StringObject.sharedUTF8.getter(v18, v15);
                  v10 = v153;
                }

                closure #1 in _StringGuts._convertedToSmall()(v125, v10, &v164, v94);
                v10 = *(&v164 + 1);
                v18 = v164;
              }

LABEL_206:
              v28 = 0xE100000000000000;
              0xE100000000000000;
              v11 = 41;
              v126._rawBits = 1;
              v127._rawBits = 65537;
              v128._rawBits = _StringGuts.validateScalarRange(_:)(v126, v127, 0x29uLL, 0xE100000000000000)._rawBits;
              if (v128._rawBits < 0x10000)
              {
                v128._rawBits |= 3;
              }

              if (v128._rawBits >> 16 || (v129._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
              {
                v11 = specialized static String._copying(_:)(v128._rawBits, v129, 0x29uLL, 0xE100000000000000);
                v28 = v130;
                0xE100000000000000;
              }

              if ((v28 & 0x2000000000000000) != 0)
              {
                v28;
LABEL_213:
                v131 = specialized _SmallString.init(_:appending:)(v18, v10, v11, v28);
                if ((v132 & 1) == 0)
                {
                  v133 = v131;
                  v15;
                  swift_bridgeObjectRelease_n(0xE100000000000000, 2);
                  return v133;
                }

LABEL_247:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

LABEL_238:
              if ((v28 & 0x1000000000000000) != 0)
              {
                v11 = _StringGuts._foreignConvertedToSmall()(v11, v28);
                v159 = v158;
                v28;
                v28 = v159;
              }

              else
              {
                if ((v11 & 0x1000000000000000) != 0)
                {
                  v147 = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v148 = v11 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v147 = _StringObject.sharedUTF8.getter(v11, v28);
                }

                closure #1 in _StringGuts._convertedToSmall()(v147, v148, &v164, v32);
                v28;
                v28 = *(&v164 + 1);
                v11 = v164;
              }

              goto LABEL_213;
            }

LABEL_203:
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v68, 1);
            v164 = xmmword_18071DC90;
            closure #1 in _StringGuts.append(_:)(&v164, 1uLL, &v165, 1);
            swift_bridgeObjectRelease_n(0xE100000000000000, 2);
            return v165;
          }
        }

        else
        {
          if (v68 > 15)
          {
            goto LABEL_203;
          }

          if ((v15 & 0x2000000000000000) == 0)
          {
            goto LABEL_198;
          }
        }

        v10 = v15;
        goto LABEL_206;
      }
    }

    else
    {
      v21 = __OFADD__(v121, 1);
      v68 = v121 + 1;
      if (!v21)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
LABEL_228:
    if ((v11 & 0x1000000000000000) != 0)
    {
      v10 = _StringGuts._foreignConvertedToSmall()(v10, v11);
      v155 = v154;
      v11;
      v11 = v155;
    }

    else
    {
      if ((v10 & 0x1000000000000000) != 0)
      {
        v143 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v144 = v10 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v143 = _StringObject.sharedUTF8.getter(v10, v11);
      }

      closure #1 in _StringGuts._convertedToSmall()(v143, v144, &v164, v94);
      v11;
      v11 = *(&v164 + 1);
      v10 = v164;
    }
  }

  if (v11 < 8)
  {
    v18 = ((-255 << (8 * (HIBYTE(v166) & 7u))) - 1) & v165 | (41 << (8 * (HIBYTE(v166) & 7u)));
  }

  v166;
  0xE100000000000000;
  return v18;
}

uint64_t CollectionOfOne.customMirror.getter@<X0>(swift *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a1 - 1);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v33 = &v34[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34[-1] - v11;
  (*(v7 + 16))(&v34[-1] - v11, v4, a1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, _ss23_ContiguousArrayStorageCySS_yptGMR);
  v14 = swift_allocObject(v13, 0x50, 7uLL);
  *(v14 + 1) = xmmword_18071DB30;
  v14[4] = 0x746E656D656C65;
  v14[5] = 0xE700000000000000;
  v15 = *(a1 + 2);
  v14[9] = v15;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v14 + 6);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0Tm, v4, v15);
  v34[0] = 0;
  v34[1] = 0;
  v17 = static Mirror._superclassIterator<A>(_:_:)(v12, v34, a1);
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
  v21 = swift_allocObject(v20, 0x48, 7uLL);
  v21[6] = v14;
  v21[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
  v21[8] = 0;
  v22 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v23 = swift_allocObject(v22, 0x18, 7uLL);
  v23[2] = 0;
  v24 = v14[2];
  v25 = swift_allocObject(v22, 0x18, 7uLL);
  v25[2] = v24;
  v21[2] = v23;
  v21[3] = &protocol witness table for _IndexBox<A>;
  v21[4] = v25;
  v21[5] = &protocol witness table for _IndexBox<A>;
  v26 = v33;
  (*(v7 + 32))(v33, v12, a1);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v34, v26, a1, v27, 6uLL, v28, v29, v30, v33);
  v32 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  *a3 = a1;
  *(a3 + 8) = v21;
  *(a3 + 16) = 9;
  *(a3 + 24) = v17;
  *(a3 + 32) = v19;
  *(a3 + 40) = v32;
  return result;
}

Swift::Int CollectionDifference._fastEnumeratedApply(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v98 = *(a2 + 16);
  v8 = type metadata accessor for CollectionDifference.Change(0, v98, a3, a4);
  v9 = *(v8 - 1);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = (&v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v82 = &v76 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v81 = &v76 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v84 = &v76 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v83 = &v76 - v25;
  v77 = v26;
  MEMORY[0x1EEE9AC00](v24, v27);
  v91 = &v76 - v28;
  v30 = *v6;
  v29 = v6[1];
  v93 = Array._getCount()();
  result = Array._getCount()();
  v92 = result;
  v32 = 0;
  v33 = 0;
  v90 = v30 & 0xC000000000000001;
  v87 = v29 & 0xC000000000000001;
  v88 = v29;
  v96 = (v9 + 32);
  v97 = (v9 + 16);
  v94 = v98 - 8;
  v95 = v30;
  v79 = v13;
  v80 = a1;
  v78 = v9;
  while (1)
  {
    if (v33 >= v93)
    {
      if (v32 >= v92)
      {
        return result;
      }

      v39 = v30;
      v62 = v90 == 0;
      v63 = v62 | ~_swift_isClassOrObjCExistentialType(v8, v8);
      Array._checkSubscript(_:wasNativeTypeChecked:)(v32, v63 & 1);
      if (v63)
      {
        v64 = v39 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32;
LABEL_20:
        v65 = v91;
        (*(v9 + 16))(v91, v64, v8);
        goto LABEL_24;
      }

      v67 = v32;
      goto LABEL_33;
    }

    v37 = v87 == 0;
    v38 = !_swift_isClassOrObjCExistentialType(v8, v8) || v37;
    v39 = v88;
    Array._checkSubscript(_:wasNativeTypeChecked:)(v33, v38);
    if (v32 >= v92)
    {
      if (v38)
      {
        v64 = v39 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v33;
        goto LABEL_20;
      }

      v67 = v33;
LABEL_33:
      v70 = _ArrayBuffer._getElementSlowPath(_:)(v67, v39, v8);
      if (v77 != 8)
      {
        goto LABEL_48;
      }

      v99 = v70;
      v65 = v91;
      v71 = v70;
      (*v97)(v91, &v99, v8);
      goto LABEL_41;
    }

    if (v38)
    {
      v40 = v39 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v33;
      v41 = v83;
      v89 = *(v9 + 16);
      v89(v83, v40, v8);
    }

    else
    {
      v68 = _ArrayBuffer._getElementSlowPath(_:)(v33, v39, v8);
      if (v77 != 8)
      {
        goto LABEL_48;
      }

      v99 = v68;
      v41 = v83;
      v69 = v68;
      v89 = *v97;
      v89(v83, &v99, v8);
      swift_unknownObjectRelease(v69);
    }

    v42 = v90 == 0;
    v43 = v84;
    v85 = *v96;
    v85(v84, v41, v8);
    v86 = *v43;
    v44 = v98;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v98, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v46 = (*(v44 - 1) + 8);
    v47 = v43 + *(v45 + 48);
    v48 = *v46;
    (*v46)(v47, v44);
    v49 = v42 | ~_swift_isClassOrObjCExistentialType(v8, v8);
    v50 = v95;
    Array._checkSubscript(_:wasNativeTypeChecked:)(v32, v49 & 1);
    if (v49)
    {
      v51 = v81;
      v89(v81, (v50 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32), v8);
    }

    else
    {
      v72 = _ArrayBuffer._getElementSlowPath(_:)(v32, v50, v8);
      if (v77 != 8)
      {
        goto LABEL_48;
      }

      v99 = v72;
      v51 = v81;
      v73 = v72;
      v89(v81, &v99, v8);
      swift_unknownObjectRelease(v73);
    }

    v52 = v82;
    v85(v82, v51, v8);
    v53 = *v52;
    v54 = v98;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v98, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    v48(&v52[*(v55 + 48)], v54);
    v56 = v86 - v33;
    if (__OFSUB__(v86, v33))
    {
      goto LABEL_46;
    }

    v34 = __OFSUB__(v53, v32);
    v57 = v53 - v32;
    if (v34)
    {
      goto LABEL_47;
    }

    v58 = !_swift_isClassOrObjCExistentialType(v8, v8);
    if (v57 >= v56)
    {
      v60 = v88;
      v66 = v58 || v87 == 0;
      Array._checkSubscript(_:wasNativeTypeChecked:)(v33, v58 || v87 == 0);
      v13 = v79;
      v9 = v78;
      if (v66)
      {
        v61 = v60 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v33;
        goto LABEL_23;
      }

      v74 = v33;
    }

    else
    {
      v59 = v58 || v90 == 0;
      v60 = v95;
      Array._checkSubscript(_:wasNativeTypeChecked:)(v32, v58 || v90 == 0);
      v13 = v79;
      v9 = v78;
      if (v59)
      {
        v61 = v60 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v32;
LABEL_23:
        v65 = v91;
        v89(v91, v61, v8);
        goto LABEL_24;
      }

      v74 = v32;
    }

    v75 = _ArrayBuffer._getElementSlowPath(_:)(v74, v60, v8);
    if (v77 != 8)
    {
      goto LABEL_48;
    }

    v99 = v75;
    v65 = v91;
    v71 = v75;
    v89(v91, &v99, v8);
LABEL_41:
    swift_unknownObjectRelease(v71);
LABEL_24:
    partial apply for closure #1 in RangeReplaceableCollection.applying(_:)(v65);
    if (v5)
    {
      return (*(v9 + 8))(v65, v8);
    }

    (*v96)(v13, v65, v8);
    if (swift_getEnumCaseMultiPayload(v13, v8) == 1)
    {
      v34 = __OFADD__(v33++, 1);
      v30 = v95;
      if (v34)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v34 = __OFADD__(v32++, 1);
      v30 = v95;
      if (v34)
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v35 = v98;
    swift_getTupleTypeMetadata3(0, &type metadata for Int, v98, byte_1EEEBE0E0, "offset element associatedWith ", 0);
    result = (*(*(v35 - 1) + 8))(v13 + *(v36 + 48), v35);
  }
}

uint64_t RangeReplaceableCollection.applying(_:)@<X0>(_OWORD *a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v109 = a4;
  v110 = a1;
  v8 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v8, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v10 = v9;
  swift_getTupleTypeMetadata2(0, v10, v10, "lower upper ", 0);
  v101 = v11;
  v99 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v100 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v96 = &v86 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a2, v10, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v98 = type metadata accessor for Range(0, v10, AssociatedConformanceWitness, v18);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v19);
  v94 = &v86 - v20;
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v95 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v93 = &v86 - v23;
  v107 = AssociatedConformanceWitness;
  v106 = type metadata accessor for PartialRangeFrom(0, v10, AssociatedConformanceWitness, v24);
  v105 = *(v106 - 8);
  v26 = MEMORY[0x1EEE9AC00](v106, v25);
  v104 = &v86 - v27;
  v111 = *(v10 - 1);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v103 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v102 = &v86 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v37 = &v86 - v36;
  v39 = MEMORY[0x1EEE9AC00](v35, v38);
  v41 = &v86 - v40;
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v45 = &v86 - v44;
  v108 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v43, v46);
  v48 = &v86 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 24))(a2, a3);
  v123 = 0;
  v124 = 0;
  v122 = 0;
  (*(v8 + 64))(a2, v8);
  v121 = *v110;
  v113 = a2;
  v114 = a3;
  v115 = &v122;
  v116 = v48;
  v110 = v48;
  v117 = v5;
  v118 = v45;
  v119 = &v124;
  v120 = &v123;
  swift_getAssociatedTypeWitness(255, *(v8 + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v52 = type metadata accessor for CollectionDifference(0, v49, v50, v51);
  CollectionDifference._fastEnumeratedApply(_:)(v112, v52, v53, v54);
  v89 = a3;
  v55 = *(v8 + 72);
  v91 = v5;
  v92 = v8;
  v90 = v55;
  v55(a2, v8);
  LOBYTE(AssociatedConformanceWitness) = (*(v107 + 16))(v45, v41, v10);
  v56 = v111 + 1;
  v57 = v111[1];
  v57(v41, v10);
  v58 = v45;
  if (AssociatedConformanceWitness)
  {
    v87 = v57;
    v86 = v56;
    v59 = v111[2];
    v88 = v58;
    v59(v37);
    if (((*(*(v107 + 8) + 8))(v37, v37, v10) & 1) == 0 || (v60 = v111[4], v61 = v104, v111 += 4, v60(v104, v37, v10), v62 = v102, (v59)(v102, v61, v10), v63 = v103, v90(a2, v92), ((*(v107 + 24))(v62, v63, v10) & 1) == 0))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(v105 + 8))(v61, v106);
    v64 = v96;
    v60(v96, v62, v10);
    v65 = v101;
    v60(&v64[*(v101 + 48)], v63, v10);
    v66 = v99;
    v67 = v100;
    (*(v99 + 16))(v100, v64, v65);
    v68 = *(v65 + 48);
    v69 = v94;
    v60(v94, v67, v10);
    v70 = &v67[v68];
    v71 = v87;
    v87(v70, v10);
    (*(v66 + 32))(v67, v64, v65);
    v72 = *(v65 + 48);
    v73 = v98;
    v60(&v69[*(v98 + 36)], &v67[v72], v10);
    v71(v67, v10);
    v74 = v71;
    v75 = v92;
    v76 = v93;
    (*(v92 + 11))(v69, a2, v92);
    (*(v97 + 8))(v69, v73);
    v77 = v89;
    v78 = *(v89 + 72);
    v79 = v95;
    v80 = swift_getAssociatedConformanceWitness(v75, a2, v95, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
    v81 = v77;
    v57 = v74;
    v78(v76, v79, *(v80 + 8), a2, v81);
    v58 = v88;
  }

  v57(v58, v10);
  v83 = v108;
  v82 = v109;
  v84 = v110;
  (*(v108 + 16))(v109, v110, a2);
  (*(v83 + 56))(v82, 0, 1, a2);
  return (*(v83 + 8))(v84, a2);
}

uint64_t append #1 <A>(into:contentsOf:from:count:) in RangeReplaceableCollection.applying(_:)(uint64_t a1, uint64_t a2, uint64_t a3, Class *a4, Class *a5, uint64_t a6)
{
  v77 = a6;
  v85 = a4;
  v84 = a3;
  v76 = a1;
  v8 = *(a6 + 8);
  swift_getAssociatedTypeWitness(0, v8, a5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v73 = &v65 - v11;
  swift_getAssociatedTypeWitness(255, v8, a5, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v13 = v12;
  swift_getTupleTypeMetadata2(0, v13, v13, "lower upper ", 0);
  v71 = v14;
  v69 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v70 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v66 = &v65 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a5, v13, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v21 = type metadata accessor for Range(0, v13, AssociatedConformanceWitness, v20);
  v67 = *(v21 - 8);
  v68 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v65 = &v65 - v23;
  v26 = type metadata accessor for Optional(0, v13, v24, v25);
  v79 = *(v26 - 8);
  v80 = v26;
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v65 - v29;
  v31 = *(v13 - 1);
  v33 = MEMORY[0x1EEE9AC00](v28, v32);
  v81 = &v65 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v65 - v37;
  MEMORY[0x1EEE9AC00](v36, v39);
  v40 = *(v31 + 16);
  v83 = &v65 - v41;
  v42 = v84;
  v78 = v40;
  v40();
  (*(v8 + 72))(a5, v8);
  v43 = *(v8 + 144);
  v44 = v85;
  v72 = a2;
  v85 = a5;
  v75 = v8;
  v43(v42, v44, v38, a5, v8);
  v45 = v42;
  v46 = *(v31 + 8);
  v46(v45, v13);
  if ((*(v31 + 48))(v30, 1, v13) == 1)
  {
    (*(v79 + 8))(v30, v80);
    (*(v31 + 32))(v45, v38, v13);
    v46(v83, v13);
    swift_allocError(qword_1EEEBEBC8, &protocol witness table for _ApplicationError, 0, 0);
    return swift_willThrow();
  }

  else
  {
    v46(v38, v13);
    v48 = *(v31 + 32);
    v48(v45, v30, v13);
    v49 = v81;
    (v78)(v81, v45, v13);
    v50 = v83;
    if (((*(AssociatedConformanceWitness + 24))(v83, v49, v13) & 1) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v51 = v66;
    v48(v66, v50, v13);
    v52 = v71;
    v48(&v51[*(v71 + 48)], v49, v13);
    v54 = v69;
    v53 = v70;
    (*(v69 + 16))(v70, v51, v52);
    v55 = *(v52 + 48);
    v83 = (v31 + 8);
    v84 = v55;
    v80 = v48;
    v56 = v65;
    v48(v65, v53, v13);
    v46(&v53[v84], v13);
    (*(v54 + 32))(v53, v51, v52);
    v57 = v68;
    v80(&v56[*(v68 + 36)], &v53[*(v52 + 48)], v13);
    v46(v53, v13);
    v58 = v75;
    v59 = v73;
    v60 = v85;
    (*(v75 + 11))(v56, v85, v75);
    (*(v67 + 8))(v56, v57);
    v61 = v77;
    v62 = *(v77 + 72);
    v63 = v74;
    v64 = swift_getAssociatedConformanceWitness(v58, v60, v74, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
    return v62(v59, v63, *(v64 + 8), v60, v61);
  }
}

void closure #1 in RangeReplaceableCollection.applying(_:)(uint64_t a1, void *a2, Class *a3, uint64_t a4, uint64_t a5, void (*a6)(void (**)(uint64_t, char *), char *, char *), char *a7, Class *a8, char *a9)
{
  v73 = a7;
  v72 = a6;
  v79 = a5;
  v75 = a3;
  v76 = a9;
  v77 = a4;
  v12 = *(a9 + 1);
  swift_getAssociatedTypeWitness(0, v12[1], a8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v14 = v13;
  v15 = *(v13 - 1);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v67 = (v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v66 - v20;
  v78 = a8;
  swift_getAssociatedTypeWitness(0, v12, a8, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v23 = v22;
  v70 = *(v22 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v68 = v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v69 = v66 - v28;
  v31 = type metadata accessor for CollectionDifference.Change(0, v14, v29, v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = (v66 - v33);
  (*(v35 + 16))(v66 - v33, a1, v31);
  LODWORD(a1) = swift_getEnumCaseMultiPayload(v34, v31);
  v36 = *v34;
  swift_getTupleTypeMetadata3(0, &type metadata for Int, v14, byte_1EEEBE0E0, "offset element associatedWith ", 0);
  v38 = v34 + *(v37 + 48);
  if (a1 != 1)
  {
    v71 = a2;
    v51 = *(v15 + 32);
    v51(v21, v38, v14);
    v52 = v36 + *v72;
    if (!__OFADD__(v36, *v72))
    {
      v53 = __OFSUB__(v52, *v73);
      v54 = v52 - *v73;
      if (!v53)
      {
        v55 = *v71;
        v56 = v54 - *v71;
        if (!__OFSUB__(v54, *v71))
        {
          v72 = v51;
          v57 = v76;
          v58 = v78;
          v59 = v74;
          append #1 <A>(into:contentsOf:from:count:) in RangeReplaceableCollection.applying(_:)(v75, v77, v79, (v54 - v55), v78, v76);
          if (v59)
          {
            v50 = v21;
            goto LABEL_12;
          }

          v60 = v67;
          v72(v67, v21, v14);
          (*(v57 + 64))(v60, v58, v57);
          if (!__OFADD__(*v71, v56))
          {
            *v71 += v56;
            if (!__OFADD__(*v73, 1))
            {
              ++*v73;
              return;
            }

            goto LABEL_26;
          }

LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v39 = (v36 - *a2);
  if (__OFSUB__(v36, *a2))
  {
    __break(1u);
    goto LABEL_22;
  }

  v73 = v34 + *(v37 + 48);
  v67 = v12;
  v40 = v78;
  v41 = v79;
  v42 = v74;
  append #1 <A>(into:contentsOf:from:count:) in RangeReplaceableCollection.applying(_:)(v75, v77, v79, v39, v78, v76);
  if (v42)
  {
LABEL_6:
    v50 = v73;
LABEL_12:
    (*(v15 + 8))(v50, v14);
    return;
  }

  v75 = v39;
  v76 = v14;
  v66[1] = 0;
  v71 = a2;
  v43 = v69;
  v44 = v70;
  v74 = *(v70 + 16);
  v74(v69, v41, v23);
  v45 = v67;
  v46 = v68;
  v67[9](v40, v67);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v45, v40, v23, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v48 = (*(*(AssociatedConformanceWitness + 8) + 8))(v43, v46, v23);
  v49 = *(v44 + 8);
  v49(v46, v23);
  v49(v43, v23);
  if (v48)
  {
    swift_allocError(qword_1EEEBEBC8, &protocol witness table for _ApplicationError, 0, 0);
    swift_willThrow();
    v14 = v76;
    goto LABEL_6;
  }

  v61 = v75 + 1;
  if (__OFADD__(v75, 1))
  {
    goto LABEL_27;
  }

  v53 = __OFADD__(*v71, v61);
  v62 = &v61[*v71];
  v63 = v79;
  if (v53)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *v71 = v62;
  v64 = v68;
  v74(v68, v63, v23);
  v65 = v69;
  v67[23](v64, v78);
  v49(v64, v23);
  (*(v70 + 40))(v63, v65, v23);
  if (__OFADD__(*v72, 1))
  {
LABEL_29:
    __break(1u);
    return;
  }

  ++*v72;
  (*(v15 + 8))(v73, v76);
}

uint64_t BidirectionalCollection.difference<A>(from:by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, Class *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v17[2] = a5;
  v17[3] = a4;
  v17[4] = a7;
  v17[5] = a6;
  v17[7] = a2;
  v17[8] = a3;
  swift_getAssociatedTypeWitness(255, *(*(a6 + 8) + 8), a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v15 = type metadata accessor for CollectionDifference(0, v12, v13, v14);
  return _withContiguousStorage #1 <A, B><A1, B1>(for:_:) in _myers<A, B>(from:to:using:)(a1, partial apply for closure #1 in _myers<A, B>(from:to:using:), v17, a5, v15, *(a7 + 8), a8);
}

uint64_t BidirectionalCollection<>.difference<A>(from:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  swift_getAssociatedTypeWitness(0, *(*(a4 + 8) + 8), a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = v15;
  v20[2] = a3;
  v20[3] = a2;
  v20[4] = a5;
  v20[5] = a4;
  v21 = v7;
  v22 = partial apply for implicit closure #1 in BidirectionalCollection<>.difference<A>(from:);
  v23 = &v24;
  v18 = type metadata accessor for CollectionDifference(0, v15, v16, v17);
  return _withContiguousStorage #1 <A, B><A1, B1>(for:_:) in _myers<A, B>(from:to:using:)(a1, closure #1 in _myers<A, B>(from:to:using:)partial apply, v20, a3, v18, *(a5 + 8), a7);
}

__objc2_class **_descent #1 <A, B>(from:to:) in _myers<A, B>(from:to:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, Class *a7, uint64_t a8)
{
  v62 = a5;
  v63 = a6;
  v61 = a3;
  v65 = a1;
  swift_getAssociatedTypeWitness(0, *(*(a8 + 8) + 8), a7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v11 = v10;
  v66 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v49 - v18;
  v68 = a2;
  v50 = a2 + v17;
  if (__OFADD__(a2, v17))
  {
    goto LABEL_67;
  }

  v67 = v17;
  BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5 = _sSa28_allocateBufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5(2);
  BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5[2] = 2;
  BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5[4] = 0;
  BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5[5] = 0;
  if (!swift_isUniquelyReferenced_nonNull_native(BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5))
  {
    goto LABEL_68;
  }

  if (!BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5[2])
  {
LABEL_69:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_4:
  BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5[4] = 0;
  if (v50 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v69 = 0;
  v20 = 0;
  v21 = 0;
  v64 = v66 + 16;
  v52 = &_swiftEmptyArrayStorage;
  v22 = (v66 + 8);
  v49 = xmmword_18071DF70;
  while (1)
  {
    v55 = v21;
    v59 = BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5;
    swift_bridgeObjectRetain_n(BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5, 2);
    if (!swift_isUniquelyReferenced_nonNull_native(v52))
    {
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v52[2]->isa + 1, 1, v52, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<_V>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._copyContents(subRange:initializing:));
    }

    v24 = v52[2];
    v23 = v52[3];
    if (v24 >= v23 >> 1)
    {
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v52, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<_V>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._copyContents(subRange:initializing:));
    }

    v25 = v52;
    v52[2] = (v24 + 1);
    v25[v24 + 4] = v59;
    if (__OFADD__(v55, 1))
    {
      goto LABEL_65;
    }

    v51 = v55 + 1;
    v26 = v55;
    BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5Tm(0, v55 + 1);
    v70 = -v26;
    v71 = v26;
    v72 = v49;
    v73 = 0;
    v57 = -v26;
    v74 = -v26;
    v75 = 0;
    if (!swift_isUniquelyReferenced_nonNull_native(BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5))
    {
      BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5 = specialized _ArrayBuffer._consumeAndCreateNew()(BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5);
    }

    v27 = specialized StrideThroughIterator.next()();
    if ((v28 & 1) == 0)
    {
      break;
    }

LABEL_14:
    swift_bridgeObjectRelease_n(v59, 2);
    if (v20 < v68 || v69 < v67)
    {
      v21 = v51;
      if (v55 != v50)
      {
        continue;
      }
    }

    BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5;
    return v52;
  }

  v29 = v27;
  v58 = v59 + 32;
  v30 = v55 - 1;
  v31 = __OFSUB__(0, 1 - v55);
  v54 = v57 > 0x7FFFFFFFFFFFFFFELL && v31;
  if (v57 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v30 = v57;
  }

  v53 = v30;
  while (1)
  {
    v60 = BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5;
    if (v29 == v57)
    {
      if (v54)
      {
        goto LABEL_63;
      }

      v32 = v53;
      sub_1802E86D0(v53, 1, v59);
      v33 = *(v58 + 8 * v32);
    }

    else
    {
      if (v29 - 1 < 1)
      {
        v34 = 1 - v29;
        if (__OFSUB__(0, v29 - 1))
        {
          goto LABEL_64;
        }
      }

      else
      {
        v34 = v29 - 2;
      }

      v35 = v29;
      sub_1802E86D0(v34, 1, v59);
      v36 = *(v58 + 8 * v34);
      if (v35 == v55)
      {
        v33 = v36 + 1;
        v29 = v35;
      }

      else
      {
        v37 = v35;
        if (v35 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v37 = -(v35 + 1);
          if (__OFSUB__(0, v35 + 1))
          {
            goto LABEL_66;
          }
        }

        sub_1802E86D0(v37, 1, v59);
        if (v36 >= *(v58 + 8 * v37))
        {
          v33 = v36 + 1;
        }

        else
        {
          v33 = *(v58 + 8 * v37);
        }

        v29 = v35;
      }
    }

    v38 = v33 - v29 < v67;
    v39 = v33 < v68;
    v69 = v33 - v29;
    if (v33 < v68 && v33 - v29 < v67)
    {
      v56 = v29;
      v41 = -v29;
      v20 = v33;
      while (1)
      {
        if (v33 < 0 || (v42 = *(v66 + 72), v43 = *(v66 + 16), v43(v19, v65 + v42 * v20, v11), v69 < 0))
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v43(v15, v61 + v42 * (v41 + v20), v11);
        v44 = v62(v19, v15);
        v45 = *v22;
        (*v22)(v15, v11);
        v45(v19, v11);
        if ((v44 & 1) == 0)
        {
          break;
        }

        v38 = ++v20 + v41 < v67;
        v39 = v20 < v68;
        if (v20 >= v68 || v20 + v41 >= v67)
        {
          v29 = v56;
          v69 = v20 - v56;
          goto LABEL_51;
        }
      }

      v29 = v56;
      v69 = v20 - v56;
      v39 = 1;
      v38 = 1;
    }

    else
    {
      v20 = v33;
    }

LABEL_51:
    v46 = v29 - 1;
    BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5 = v60;
    if (v29 < 1)
    {
      v46 = -v29;
      if (__OFSUB__(0, v29))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5 = specialized _ArrayBuffer._consumeAndCreateNew()(BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5);
        if (!BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5[2])
        {
          goto LABEL_69;
        }

        goto LABEL_4;
      }
    }

    if (!swift_isUniquelyReferenced_nonNull_native(v60))
    {
      BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5 = specialized _ArrayBuffer._consumeAndCreateNew()(BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5);
    }

    ContiguousArray._checkSubscript_mutating(_:)(v46);
    BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5[v46 + 4] = v20;
    if (!v39 && !v38)
    {
      break;
    }

    v29 = specialized StrideThroughIterator.next()();
    if (v47)
    {
      goto LABEL_14;
    }
  }

  BufferUninitialized15minimumCapacitys06_ArrayB0VyxGSi_tFZSi_Tt0g5;
  swift_bridgeObjectRelease_n(v59, 2);
  return v52;
}

void _formChanges #1 <A, B>(from:to:using:) in _myers<A, B>(from:to:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class *a6, uint64_t a7)
{
  v49 = a2;
  v50 = a4;
  v47 = a1;
  v48 = a3;
  swift_getAssociatedTypeWitness(255, *(*(a7 + 8) + 8), a6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v9 = v8;
  v12 = type metadata accessor for CollectionDifference.Change(0, v8, v10, v11);
  v13 = MEMORY[0x1EEE9AC00](v12, v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v46 - v17;
  v52 = v19;
  v53 = &_swiftEmptyArrayStorage;
  v20 = *(a5 + 16);
  v23 = type metadata accessor for Array(0, v19, v21, v22);
  Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v20, 0);
  if (v20 < 2)
  {
    return;
  }

  v51 = v9 - 8;
  v24 = v20 + 1;
  v25 = 1 - v20;
  v26 = (a5 + 8 * v20 + 24);
  v28 = v49;
  v27 = v50;
  while (1)
  {
    v32 = *v26;
    v33 = v28 - v27;
    if (v25 == v28 - v27)
    {
      goto LABEL_6;
    }

    v34 = v33 - 1;
    if (v24 - 2 != v33)
    {
      if (v34 < 1)
      {
        v35 = 1 - v33;
        if (__OFSUB__(0, v34))
        {
          goto LABEL_43;
        }

        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v35 = v33 - 2;
      }

      v36 = *(v32 + 16);
      if (v35 >= v36)
      {
        goto LABEL_39;
      }

      v37 = *(v32 + 32 + 8 * v35);
      if (v33 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v38 = -(v33 + 1);
        if (__OFSUB__(0, v33 + 1))
        {
          goto LABEL_42;
        }

        if ((v38 & 0x8000000000000000) != 0)
        {
LABEL_39:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else
      {
        v38 = v28 - v27;
      }

      if (v38 >= v36)
      {
        goto LABEL_39;
      }

      if (v37 < *(v32 + 32 + 8 * v38))
      {
LABEL_6:
        v34 = v33 + 1;
      }
    }

    v39 = v34 - 1;
    if (v34 < 1)
    {
      break;
    }

LABEL_22:
    if (v39 >= *(v32 + 16))
    {
      goto LABEL_39;
    }

    v40 = *(v32 + 8 * v39 + 32);
    v41 = v40 - v34;
    v42 = v27 - 1 + v34 - v40;
    if (v42 >= v28 + ~v40)
    {
      v42 = v28 + ~v40;
    }

    if (v40 < v28 && v41 < v27)
    {
      v27 = v27 - 1 - v42;
    }

    if (v27 == v41)
    {
      *v15 = v40;
      if (v40 < 0 || v40 >= v49)
      {
        goto LABEL_40;
      }

      swift_getTupleTypeMetadata3(0, &type metadata for Int, v9, byte_1EEEBE0E0, "offset element associatedWith ", 0);
      v45 = &v15[*(v44 + 64)];
      (*(*(v9 - 1) + 16))(&v15[*(v44 + 48)], v47 + *(*(v9 - 1) + 72) * v40, v9);
      *v45 = 0;
      v45[8] = 1;
      swift_storeEnumTagMultiPayload(v15, v52, 1u);
      v31 = v15;
    }

    else
    {
      *v18 = v41;
      if (v41 < 0 || v41 >= v50)
      {
LABEL_40:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      swift_getTupleTypeMetadata3(0, &type metadata for Int, v9, byte_1EEEBE0E0, "offset element associatedWith ", 0);
      v30 = &v18[*(v29 + 64)];
      (*(*(v9 - 1) + 16))(&v18[*(v29 + 48)], v48 + *(*(v9 - 1) + 72) * v41, v9);
      *v30 = 0;
      v30[8] = 1;
      swift_storeEnumTagMultiPayload(v18, v52, 0);
      v31 = v18;
    }

    Array.append(_:)(v31, v23);
    --v24;
    ++v25;
    --v26;
    v27 = v41;
    v28 = v40;
    if (v24 <= 2)
    {
      return;
    }
  }

  v39 = -v34;
  if (!__OFSUB__(0, v34))
  {
    if ((v39 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t _withContiguousStorage #1 <A, B><A1, B1>(for:_:) in _myers<A, B>(from:to:using:)@<X0>(uint64_t a1@<X0>, void (*a2)(unint64_t, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a7;
  v42 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v45 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Optional(0, v16, v14, v15);
  v43 = *(v41 - 8);
  v18 = MEMORY[0x1EEE9AC00](v41, v17);
  v20 = &v37 - v19;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a6 + 8);
  v25 = a2;
  v26 = v47;
  result = (*(v24 + 72))(a2, a3, a5, a4, v24);
  if (!v26)
  {
    v38 = a4;
    v39 = a3;
    v28 = a1;
    v30 = v45;
    v29 = v46;
    v40 = v25;
    v47 = 0;
    v31 = v43;
    v32 = v44;
    if ((*(v44 + 48))(v20, 1, a5) == 1)
    {
      (*(v31 + 8))(v20, v41);
      v33 = v38;
      (*(v42 + 16))(v30, v28, v38);
      v34 = (*(v24 + 56))(v33, v24);
      swift_getAssociatedTypeWitness(0, v24, v33, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
      v40(v34 + ((*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80)), *(v34 + 16));
      return v34;
    }

    else
    {
      v36 = *(v32 + 32);
      v36(v23, v20, a5);
      return (v36)(v29, v23, a5);
    }
  }

  return result;
}

void closure #1 in _myers<A, B>(from:to:using:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, Class *a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v49 = a7;
  v32 = *(a5 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v14;
  v40 = v15;
  v41 = v16;
  v42 = v17;
  v33 = v11;
  v34 = v18;
  v43 = v11;
  v44 = v18;
  v35 = v19;
  v36 = v20;
  v45 = v19;
  v46 = v20;
  v21 = *(*(v17 + 8) + 8);
  v22 = *(v21 + 72);
  swift_getAssociatedTypeWitness(255, *(*(v16 + 8) + 8), v14, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v24 = v23;
  v27 = type metadata accessor for CollectionDifference(0, v23, v25, v26);
  v28 = v37;
  v22(&v47, partial apply for closure #1 in closure #1 in _myers<A, B>(from:to:using:), v38, v27, a5, v21);
  if (v28)
  {
    v28;
    __break(1u);
  }

  else
  {
    v29 = v48;
    if (v47)
    {
      v30 = v49;
      *v49 = v47;
      *(v30 + 1) = v29;
    }

    else
    {
      outlined consume of CollectionDifference<A.Element>?<A, B>(0, v48);
      (*(v32 + 16))(v13, a3, a5);
      v31 = (*(v21 + 56))(a5, v21);
      closure #1 in closure #1 in _myers<A, B>(from:to:using:)(v31 + ((*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80)), *(v31 + 16), v33, v34, v35, v36, a4, a6, v49);
      v31;
    }
  }
}

double closure #1 in closure #1 in _myers<A, B>(from:to:using:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *, char *)@<X4>, uint64_t a6@<X5>, Class *a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v16 = _descent #1 <A, B>(from:to:) in _myers<A, B>(from:to:using:)(a3, a4, a1, a2, a5, a6, a7, a8);
  _formChanges #1 <A, B>(from:to:using:) in _myers<A, B>(from:to:using:)(a3, a4, a1, a2, v16, a7, a8);
  v18 = v17;
  v16;
  v31 = v18;
  swift_getAssociatedTypeWitness(0, *(*(a8 + 8) + 8), a7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v20 = v19;
  v23 = type metadata accessor for CollectionDifference.Change(255, v19, v21, v22);
  v26 = type metadata accessor for Array(0, v23, v24, v25);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A], v26, v27);
  if ((static CollectionDifference._validateChanges<A>(_:)(&v31, v20, v26, WitnessTable) & 1) == 0)
  {
    v18;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  CollectionDifference.init<A>(_validatedChanges:)(&v31, v20, v26, WitnessTable, &v30);
  result = *&v30;
  *a9 = v30;
  return result;
}

Swift::Duration __swiftcall Duration.init(secondsComponent:attosecondsComponent:)(Swift::Int64 secondsComponent, Swift::Int64 attosecondsComponent)
{
  v2 = specialized static _Int128.+ infix(_:_:)(1000000000000000000 * secondsComponent, ((secondsComponent >> 63) & 0xF21F494C589C0000) + ((secondsComponent * 0xDE0B6B3A7640000uLL) >> 64), attosecondsComponent, attosecondsComponent >> 63);
  result._high = v3;
  result._low = v2;
  return result;
}

unint64_t static Duration.seconds<A>(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v49 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v49, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v47[-v10];
  v52 = *(a2 - 1);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v50 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v47[-v17];
  v53 = 64;
  v19 = *(a3 + 240);
  v22 = lazy protocol witness table accessor for type Int and conformance Int(v16, v20, v21);
  v51 = a1;
  v19(a1, &v53, &type metadata for Int, v22, a2, a3);
  v23 = *(a3 + 64);
  v24 = v23(a2, a3);
  v25 = *(a3 + 128);
  if ((v24 & 1) != 0 && v25(a2, a3) >= 65)
  {
    if (v23(a2, a3))
    {
      v26 = v25(a2, a3);
      if (v26 < 64)
      {
LABEL_13:
        (*(a3 + 120))(a2, a3);
        goto LABEL_14;
      }
    }

    else
    {
      v48 = v23(a2, a3);
      v26 = v25(a2, a3);
      if ((v48 & 1) == 0)
      {
        if (v26 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v26 <= 64)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v49, a2, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v7, AssociatedConformanceWitness);
        v34 = v50;
        (v49[3])(v11, a2);
        v35 = (*(*(*(a3 + 32) + 8) + 16))(v18, v34, a2);
        v32 = *(v52 + 8);
        v32(v50, a2);
        if (v35)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v53 = 0x8000000000000000;
    v49 = *(a3 + 96);
    v29 = lazy protocol witness table accessor for type Int64 and conformance Int64(v26, v27, v28);
    v30 = v50;
    (v49)(&v53, &type metadata for Int64, v29, a2, a3);
    v31 = (*(*(*(a3 + 32) + 8) + 16))(v18, v30, a2);
    v32 = *(v52 + 8);
    v32(v50, a2);
    if (v31)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  if (v25(a2, a3) > 64 || v25(a2, a3) == 64 && (v23(a2, a3) & 1) == 0)
  {
    v36 = v23(a2, a3);
    v37 = v25(a2, a3);
    if (v36)
    {
      if (v37 >= 65)
      {
        goto LABEL_17;
      }
    }

    else if (v37 >= 64)
    {
LABEL_17:
      v53 = 0x7FFFFFFFFFFFFFFFLL;
      v40 = *(a3 + 96);
      v41 = lazy protocol witness table accessor for type Int64 and conformance Int64(v37, v38, v39);
      v42 = v50;
      v40(&v53, &type metadata for Int64, v41, a2, a3);
      v43 = (*(*(*(a3 + 32) + 8) + 16))(v42, v18, a2);
      v32 = *(v52 + 8);
      v32(v42, a2);
      if ((v43 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      v32(v18, a2);
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/Duration.swift", 0x14uLL, 2, 0x8FuLL, 0);
    }

    (*(a3 + 120))(a2, a3);
  }

LABEL_24:
  v44 = *(a3 + 120);
  v45 = v44(a2, a3);
  (*(v52 + 8))(v18, a2);
  result = v44(a2, a3);
  if ((v45 * 1000000000000000000) >> 64 == (1000000000000000000 * v45) >> 63)
  {
    if (!__OFADD__(1000000000000000000 * v45, (result * 0xDE0B6B3A7640000uLL) >> 64))
    {
      result *= 1000000000000000000;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::UInt64 Duration.components.getter()
{
  v5 = _Int128.dividedBy1e18()();
  v0 = (v5.quotient.low & 0x8000000000000000) == 0;
  if (v5.quotient.high != -1)
  {
    v0 = v5.quotient.high < -1;
  }

  if (v0)
  {
    goto LABEL_13;
  }

  v1 = (v5.quotient.low & 0x8000000000000000) != 0;
  if (v5.quotient.high)
  {
    v1 = v5.quotient.high > 0;
  }

  if (v1)
  {
    goto LABEL_13;
  }

  v2 = (v5.remainder.low & 0x8000000000000000) == 0;
  if (v5.remainder.high != -1)
  {
    v2 = v5.remainder.high < -1;
  }

  if (v2)
  {
    goto LABEL_13;
  }

  v3 = (v5.remainder.low & 0x8000000000000000) != 0;
  if (v5.remainder.high)
  {
    v3 = v5.remainder.high > 0;
  }

  if (v3)
  {
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v5.quotient.low;
}

Swift::tuple_quotient__Int128_remainder__Int128 __swiftcall _Int128.dividedBy1e18()()
{
  v2 = v1;
  v3 = v0;
  v4.low = 0x73AFF322E62439FDLL;
  v4.high = 0x9392EE8E921D5D0;
  *(&v5 - 1) = _Int128.multipliedFullWidth(by:)(v4);
  v7 = __PAIR128__(v5, v6) >> 55;
  v8 = v7 + (v2 >> 63);
  if (__CFADD__(v7, v2 >> 63))
  {
    v9 = (v5 >> 55) + 1;
  }

  else
  {
    v9 = v5 >> 55;
  }

  v10.low = v7 + (v2 >> 63);
  v10.high = v9;
  v13 = __PAIR128__(v2, v3) - _Int128.multipliedReportingOverflow(by:)(v10);
  v12 = *(&v13 + 1);
  v11 = v13;
  v14 = v8;
  v15 = v9;
  result.remainder.high = v12;
  result.remainder.low = v11;
  result.quotient.high = v15;
  result.quotient.low = v14;
  return result;
}

double Double.init<A>(_:)(uint64_t a1, Class *a2, uint64_t (**a3)(void, void))
{
  if ((a3)[16](a2, a3) <= 64)
  {
    v7 = (a3)[8](a2, a3);
    v8 = (a3)[15](a2, a3);
    (*(*(a2 - 1) + 1))(a1, a2);
    if (v7)
    {
      return v8;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    specialized static BinaryFloatingPoint<>._convert<A>(from:)(&v9, a1, a2, a3);
    (*(*(a2 - 1) + 1))(a1, a2);
    return v9;
  }
}

unint64_t static Duration.milliseconds<A>(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v49 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v49, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v47[-v10];
  v52 = *(a2 - 1);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v50 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v47[-v17];
  v53 = 64;
  v19 = *(a3 + 240);
  v22 = lazy protocol witness table accessor for type Int and conformance Int(v16, v20, v21);
  v51 = a1;
  v19(a1, &v53, &type metadata for Int, v22, a2, a3);
  v23 = *(a3 + 64);
  v24 = v23(a2, a3);
  v25 = *(a3 + 128);
  if ((v24 & 1) != 0 && v25(a2, a3) >= 65)
  {
    if (v23(a2, a3))
    {
      v26 = v25(a2, a3);
      if (v26 < 64)
      {
LABEL_13:
        (*(a3 + 120))(a2, a3);
        goto LABEL_14;
      }
    }

    else
    {
      v48 = v23(a2, a3);
      v26 = v25(a2, a3);
      if ((v48 & 1) == 0)
      {
        if (v26 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v26 <= 64)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v49, a2, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v7, AssociatedConformanceWitness);
        v34 = v50;
        (v49[3])(v11, a2);
        v35 = (*(*(*(a3 + 32) + 8) + 16))(v18, v34, a2);
        v32 = *(v52 + 8);
        v32(v50, a2);
        if (v35)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v53 = 0x8000000000000000;
    v49 = *(a3 + 96);
    v29 = lazy protocol witness table accessor for type Int64 and conformance Int64(v26, v27, v28);
    v30 = v50;
    (v49)(&v53, &type metadata for Int64, v29, a2, a3);
    v31 = (*(*(*(a3 + 32) + 8) + 16))(v18, v30, a2);
    v32 = *(v52 + 8);
    v32(v50, a2);
    if (v31)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  if (v25(a2, a3) > 64 || v25(a2, a3) == 64 && (v23(a2, a3) & 1) == 0)
  {
    v36 = v23(a2, a3);
    v37 = v25(a2, a3);
    if (v36)
    {
      if (v37 >= 65)
      {
        goto LABEL_17;
      }
    }

    else if (v37 >= 64)
    {
LABEL_17:
      v53 = 0x7FFFFFFFFFFFFFFFLL;
      v40 = *(a3 + 96);
      v41 = lazy protocol witness table accessor for type Int64 and conformance Int64(v37, v38, v39);
      v42 = v50;
      v40(&v53, &type metadata for Int64, v41, a2, a3);
      v43 = (*(*(*(a3 + 32) + 8) + 16))(v42, v18, a2);
      v32 = *(v52 + 8);
      v32(v42, a2);
      if ((v43 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      v32(v18, a2);
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/Duration.swift", 0x14uLL, 2, 0xBDuLL, 0);
    }

    (*(a3 + 120))(a2, a3);
  }

LABEL_24:
  v44 = *(a3 + 120);
  v45 = v44(a2, a3);
  (*(v52 + 8))(v18, a2);
  result = v44(a2, a3);
  if ((v45 * 1000000000000000) >> 64 == (1000000000000000 * v45) >> 63)
  {
    if (!__OFADD__(1000000000000000 * v45, (result * 0x38D7EA4C68000uLL) >> 64))
    {
      result *= 1000000000000000;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t static Duration.microseconds<A>(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v49 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v49, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v47[-v10];
  v52 = *(a2 - 1);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v50 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v47[-v17];
  v53 = 64;
  v19 = *(a3 + 240);
  v22 = lazy protocol witness table accessor for type Int and conformance Int(v16, v20, v21);
  v51 = a1;
  v19(a1, &v53, &type metadata for Int, v22, a2, a3);
  v23 = *(a3 + 64);
  v24 = v23(a2, a3);
  v25 = *(a3 + 128);
  if ((v24 & 1) != 0 && v25(a2, a3) >= 65)
  {
    if (v23(a2, a3))
    {
      v26 = v25(a2, a3);
      if (v26 < 64)
      {
LABEL_13:
        (*(a3 + 120))(a2, a3);
        goto LABEL_14;
      }
    }

    else
    {
      v48 = v23(a2, a3);
      v26 = v25(a2, a3);
      if ((v48 & 1) == 0)
      {
        if (v26 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v26 <= 64)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v49, a2, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v7, AssociatedConformanceWitness);
        v34 = v50;
        (v49[3])(v11, a2);
        v35 = (*(*(*(a3 + 32) + 8) + 16))(v18, v34, a2);
        v32 = *(v52 + 8);
        v32(v50, a2);
        if (v35)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v53 = 0x8000000000000000;
    v49 = *(a3 + 96);
    v29 = lazy protocol witness table accessor for type Int64 and conformance Int64(v26, v27, v28);
    v30 = v50;
    (v49)(&v53, &type metadata for Int64, v29, a2, a3);
    v31 = (*(*(*(a3 + 32) + 8) + 16))(v18, v30, a2);
    v32 = *(v52 + 8);
    v32(v50, a2);
    if (v31)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  if (v25(a2, a3) > 64 || v25(a2, a3) == 64 && (v23(a2, a3) & 1) == 0)
  {
    v36 = v23(a2, a3);
    v37 = v25(a2, a3);
    if (v36)
    {
      if (v37 >= 65)
      {
        goto LABEL_17;
      }
    }

    else if (v37 >= 64)
    {
LABEL_17:
      v53 = 0x7FFFFFFFFFFFFFFFLL;
      v40 = *(a3 + 96);
      v41 = lazy protocol witness table accessor for type Int64 and conformance Int64(v37, v38, v39);
      v42 = v50;
      v40(&v53, &type metadata for Int64, v41, a2, a3);
      v43 = (*(*(*(a3 + 32) + 8) + 16))(v42, v18, a2);
      v32 = *(v52 + 8);
      v32(v42, a2);
      if ((v43 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      v32(v18, a2);
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/Duration.swift", 0x14uLL, 2, 0xDAuLL, 0);
    }

    (*(a3 + 120))(a2, a3);
  }

LABEL_24:
  v44 = *(a3 + 120);
  v45 = v44(a2, a3);
  (*(v52 + 8))(v18, a2);
  result = v44(a2, a3);
  if ((v45 * 1000000000000) >> 64 == (1000000000000 * v45) >> 63)
  {
    if (!__OFADD__(1000000000000 * v45, (result * 0xE8D4A51000uLL) >> 64))
    {
      result *= 1000000000000;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t static Duration.nanoseconds<A>(_:)(uint64_t a1, Class *a2, uint64_t a3)
{
  v49 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v49, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v47[-v10];
  v52 = *(a2 - 1);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v50 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v47[-v17];
  v53 = 64;
  v19 = *(a3 + 240);
  v22 = lazy protocol witness table accessor for type Int and conformance Int(v16, v20, v21);
  v51 = a1;
  v19(a1, &v53, &type metadata for Int, v22, a2, a3);
  v23 = *(a3 + 64);
  v24 = v23(a2, a3);
  v25 = *(a3 + 128);
  if ((v24 & 1) != 0 && v25(a2, a3) >= 65)
  {
    if (v23(a2, a3))
    {
      v26 = v25(a2, a3);
      if (v26 < 64)
      {
LABEL_13:
        (*(a3 + 120))(a2, a3);
        goto LABEL_14;
      }
    }

    else
    {
      v48 = v23(a2, a3);
      v26 = v25(a2, a3);
      if ((v48 & 1) == 0)
      {
        if (v26 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v26 <= 64)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v49, a2, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v7, AssociatedConformanceWitness);
        v34 = v50;
        (v49[3])(v11, a2);
        v35 = (*(*(*(a3 + 32) + 8) + 16))(v18, v34, a2);
        v32 = *(v52 + 8);
        v32(v50, a2);
        if (v35)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v53 = 0x8000000000000000;
    v49 = *(a3 + 96);
    v29 = lazy protocol witness table accessor for type Int64 and conformance Int64(v26, v27, v28);
    v30 = v50;
    (v49)(&v53, &type metadata for Int64, v29, a2, a3);
    v31 = (*(*(*(a3 + 32) + 8) + 16))(v18, v30, a2);
    v32 = *(v52 + 8);
    v32(v50, a2);
    if (v31)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  if (v25(a2, a3) > 64 || v25(a2, a3) == 64 && (v23(a2, a3) & 1) == 0)
  {
    v36 = v23(a2, a3);
    v37 = v25(a2, a3);
    if (v36)
    {
      if (v37 >= 65)
      {
        goto LABEL_17;
      }
    }

    else if (v37 >= 64)
    {
LABEL_17:
      v53 = 0x7FFFFFFFFFFFFFFFLL;
      v40 = *(a3 + 96);
      v41 = lazy protocol witness table accessor for type Int64 and conformance Int64(v37, v38, v39);
      v42 = v50;
      v40(&v53, &type metadata for Int64, v41, a2, a3);
      v43 = (*(*(*(a3 + 32) + 8) + 16))(v42, v18, a2);
      v32 = *(v52 + 8);
      v32(v42, a2);
      if ((v43 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      v32(v18, a2);
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/Duration.swift", 0x14uLL, 2, 0xF7uLL, 0);
    }

    (*(a3 + 120))(a2, a3);
  }

LABEL_24:
  v44 = *(a3 + 120);
  v45 = v44(a2, a3);
  (*(v52 + 8))(v18, a2);
  result = v44(a2, a3);
  if ((v45 * 1000000000) >> 64 == (1000000000 * v45) >> 63)
  {
    if (!__OFADD__(1000000000 * v45, (result * 0x3B9ACA00uLL) >> 64))
    {
      result *= 1000000000;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Duration.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 32))(v13, v6, v7);
  v8 = v14;
  v9 = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  (*(v9 + 96))(a3, v8, v9);
  if (!v3)
  {
    v10 = v14;
    v11 = v15;
    __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    (*(v11 + 144))(a2, v10, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Duration(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 32))(v12, v5, v6);
  v7 = v13;
  v8 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(v8 + 96))(v4, v7, v8);
  if (!v2)
  {
    v9 = v13;
    v10 = v14;
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    (*(v10 + 144))(v3, v9, v10);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Duration@<X0>(uint64_t *a1@<X8>, uint64_t *a2@<X0>)
{
  result = specialized Duration.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

Swift::Int Duration.hashValue.getter(Swift::UInt a1, Swift::UInt a2)
{
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Duration()
{
  v1 = *v0;
  v2 = v0[1];
  specialized Hasher.init(_seed:)(0, v4);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Duration()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Duration(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  specialized Hasher.init(_seed:)(a1, v5);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

BOOL static Duration.< infix(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 == a4)
  {
    return a1 < a3;
  }

  else
  {
    return a2 < a4;
  }
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance Duration(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return *a1 < *a2;
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance Duration(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 >= v2;
  if (v4)
  {
    return *a2 >= *a1;
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance Duration(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 >= v3;
  if (v4)
  {
    return *a1 >= *a2;
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance Duration(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    return *a2 < *a1;
  }

  else
  {
    return v5;
  }
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Duration@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void, void, void)@<X4>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a1[1], *a2, a2[1]);
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t static Duration./= infix(_:_:)(uint64_t *a1, double a2)
{
  result = specialized static Duration./ infix(_:_:)(*a1, a1[1], a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t _ss8DurationV1doiyA2B_xtSzRzlFZSi_Tt1g5(uint64_t a1, uint64_t a2, Swift::_Int128 dividingBy)
{
  if ((dividingBy.low & 0x8000000000000000) != 0)
  {
    if (dividingBy.low == -1 && a2 == 0x8000000000000000 && !a1)
    {
LABEL_10:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else if (!dividingBy.low)
  {
    goto LABEL_10;
  }

  low = dividingBy.low;

  v4 = dividingBy.low >> 63;
  return _Int128.quotientAndRemainder(dividingBy:)(*&low);
}

double static Duration./ infix(_:_:)(int64_t a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  _sSBss17FixedWidthInteger14RawSignificandRpzrlE8_convert4fromx5value_Sb5exacttqd___tSzRd__lFZSd_s7_Int128VTt1g5(&v8, a1, a2);
  v6 = v8;
  _sSBss17FixedWidthInteger14RawSignificandRpzrlE8_convert4fromx5value_Sb5exacttqd___tSzRd__lFZSd_s7_Int128VTt1g5(&v8, a3, a4);
  return v6 / v8;
}

uint64_t static Duration.* infix(_:_:)(int64_t a1, uint64_t a2, double a3)
{
  _sSBss17FixedWidthInteger14RawSignificandRpzrlE8_convert4fromx5value_Sb5exacttqd___tSzRd__lFZSd_s7_Int128VTt1g5(&v95, a1, a2);
  v4.n128_f64[0] = v95 * a3;
  _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs7_Int128V_SdTt1g5(&v95, v4);
  if (v97)
  {
    *&v6 = COERCE_DOUBLE(_StringGuts.init(_initialCapacity:)(80));
    v8 = v7;
    v95 = *&v6;
    v96 = v7;
    TypeName = swift_getTypeName(&type metadata for Double, 0);
    if (v10 < 0)
    {
      goto LABEL_64;
    }

    v11 = TypeName;
    v12 = v10;
    v13 = validateUTF8(_:)(TypeName, v10);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v17 = repairUTF8(_:firstKnownBrokenRange:)(v11, v12, v14, v15);
    }

    else
    {
      v17 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v11, v12, v13 & 1, v16);
    }

    v27 = v17;
    v28 = v18;
    v29 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v29 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (!v29 && (v6 & ~v8 & 0x2000000000000000) == 0)
    {
      v8;
      v95 = *&v27;
      v96 = v28;
      goto LABEL_20;
    }

    if ((v8 & 0x2000000000000000) != 0)
    {
      if ((v18 & 0x2000000000000000) != 0)
      {
        v39 = specialized _SmallString.init(_:appending:)(v6, v8, v17, v18);
        if ((v41 & 1) == 0)
        {
          v91 = *&v39;
          v92 = v40;
          v8;
          v28;
          v95 = v91;
          v96 = v92;
          v28 = v92;
          *&v27 = v91;
LABEL_20:
          v42 = HIBYTE(v28) & 0xF;
          if ((v28 & 0x2000000000000000) == 0)
          {
            v42 = v27 & 0xFFFFFFFFFFFFLL;
          }

          if (v42 || (v27 & ~v28 & 0x2000000000000000) != 0)
          {
            if ((0x800000018066D440 & 0x2000000000000000 & v28) != 0 && (v43 = specialized _SmallString.init(_:appending:)(v27, v28, 0xD00000000000001ELL, 0x800000018066D440 | 0x8000000000000000), (v45 & 1) == 0))
            {
              v47 = *&v43;
              v48 = v44;
              v28;
              0x800000018066D440 | 0x8000000000000000;
              v95 = v47;
              v96 = v48;
            }

            else
            {
              if ((0x800000018066D440 & 0x2000000000000000) != 0)
              {
                v46 = (0x800000018066D440 >> 56) & 0xF;
              }

              else
              {
                v46 = 30;
              }

              _StringGuts.append(_:)(0xD00000000000001ELL, 0x800000018066D440 | 0x8000000000000000, 0, v46, v30, v31, v32, v33, v34, v35, v36, v37);
              0x800000018066D440 | 0x8000000000000000;
            }
          }

          else
          {
            v28;
            v95 = -2.31584178e77;
            v96 = 0x800000018066D440 | 0x8000000000000000;
          }

          v49 = swift_getTypeName(&type metadata for _Int128, 0);
          if ((v50 & 0x8000000000000000) == 0)
          {
            v51 = v49;
            v52 = v50;
            v53 = validateUTF8(_:)(v49, v50);
            if ((v53 & 0x8000000000000000) != 0)
            {
              v57 = repairUTF8(_:firstKnownBrokenRange:)(v51, v52, v54, v55);
            }

            else
            {
              v57 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v51, v52, v53 & 1, v56);
            }

            v67 = v57;
            v68 = v58;
            v69 = v96;
            v70 = HIBYTE(v96) & 0xF;
            if ((v96 & 0x2000000000000000) == 0)
            {
              v70 = *&v95 & 0xFFFFFFFFFFFFLL;
            }

            if (!v70 && (*&v95 & ~v96 & 0x2000000000000000) == 0)
            {
              v96;
              v95 = *&v67;
              v96 = v68;
              goto LABEL_49;
            }

            if ((v96 & 0x2000000000000000) != 0)
            {
              if ((v58 & 0x2000000000000000) != 0)
              {
                v80 = specialized _SmallString.init(_:appending:)(*&v95, v96, v57, v58);
                if ((v82 & 1) == 0)
                {
                  v93 = *&v80;
                  v94 = v81;
                  v69;
                  v68;
                  v95 = v93;
                  v96 = v94;
                  v68 = v94;
                  *&v67 = v93;
LABEL_49:
                  v83 = 0x800000018066D460 | 0x8000000000000000;
                  v84 = HIBYTE(v68) & 0xF;
                  if ((v68 & 0x2000000000000000) == 0)
                  {
                    v84 = v67 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v84 || (v67 & ~v68 & 0x2000000000000000) != 0)
                  {
                    if ((0x800000018066D460 & 0x2000000000000000 & v68) != 0 && (v86 = specialized _SmallString.init(_:appending:)(v67, v68, 0xD00000000000002ELL, 0x800000018066D460 | 0x8000000000000000), (v88 & 1) == 0))
                    {
                      v85 = v86;
                      v90 = v87;
                      v68;
                      0x800000018066D460 | 0x8000000000000000;
                      v83 = v90;
                    }

                    else
                    {
                      if ((0x800000018066D460 & 0x2000000000000000) != 0)
                      {
                        v89 = (0x800000018066D460 >> 56) & 0xF;
                      }

                      else
                      {
                        v89 = 46;
                      }

                      _StringGuts.append(_:)(0xD00000000000002ELL, 0x800000018066D460 | 0x8000000000000000, 0, v89, v71, v72, v73, v74, v75, v76, v77, v78);
                      0x800000018066D460 | 0x8000000000000000;
                      v85 = *&v95;
                      v83 = v96;
                    }
                  }

                  else
                  {
                    v68;
                    v85 = 0xD00000000000002ELL;
                  }

                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v85, v83, "Swift/Integers.swift", 0x14uLL, 2, 0xAB4uLL, 0);
                }

                goto LABEL_47;
              }
            }

            else if ((v58 & 0x2000000000000000) != 0)
            {
LABEL_47:
              v79 = HIBYTE(v68) & 0xF;
              goto LABEL_48;
            }

            v79 = v57 & 0xFFFFFFFFFFFFLL;
LABEL_48:
            _StringGuts.append(_:)(v67, v68, 0, v79, v59, v60, v61, v62, v63, v64, v65, v66);
            v68;
            *&v67 = v95;
            v68 = v96;
            goto LABEL_49;
          }

LABEL_64:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        goto LABEL_18;
      }
    }

    else if ((v18 & 0x2000000000000000) != 0)
    {
LABEL_18:
      v38 = HIBYTE(v28) & 0xF;
      goto LABEL_19;
    }

    v38 = v17 & 0xFFFFFFFFFFFFLL;
LABEL_19:
    _StringGuts.append(_:)(v27, v28, 0, v38, v19, v20, v21, v22, v23, v24, v25, v26);
    v28;
    *&v27 = v95;
    v28 = v96;
    goto LABEL_20;
  }

  return *&v95;
}

uint64_t static Duration./ infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, Class *a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a4 - 1);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v27 - v16;
  v18 = *(v11 + 16);
  v18(&v27 - v16, v19, v20);
  v18(v14, v17, a4);
  v21 = _Int128.init<A>(exactly:)(v14, a4, a5);
  if (v23)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000028, 0x800000018066E8B0, "Swift/LegacyInt128.swift", 0x18uLL, 2, 0x278uLL, 0);
  }

  v24 = v21;
  v25 = v22;
  (*(v11 + 8))(v17, a4);
  return a6(a1, a2, v24, v25);
}

uint64_t static Duration./= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, Class *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v27 = a5;
  v8 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v26 - v14;
  v16 = *v13;
  v17 = v13[1];
  v18 = *(v8 + 16);
  v18(&v26 - v14);
  (v18)(v11, v15, a3);
  v19 = _Int128.init<A>(exactly:)(v11, a3, a4);
  if (v21)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000028, 0x800000018066E8B0, "Swift/LegacyInt128.swift", 0x18uLL, 2, 0x278uLL, 0);
  }

  v22 = v19;
  v23 = v20;
  (*(v8 + 8))(v15, a3);
  result = v27(v16, v17, v22, v23);
  *a1 = result;
  a1[1] = v25;
  return result;
}

unint64_t Duration.description.getter(int64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  _sSBss17FixedWidthInteger14RawSignificandRpzrlE8_convert4fromx5value_Sb5exacttqd___tSzRd__lFZSd_s7_Int128VTt1g5(v18, a1, a2);
  if ((~COERCE__INT64(*v18 / 1.0e18) & 0x7FF0000000000000) != 0 || (COERCE_UNSIGNED_INT64(*v18 / 1.0e18) & 0xFFFFFFFFFFFFFLL) == 0)
  {
    _float64ToString(_:debug:)(v18, *v18 / 1.0e18);
    __src[0] = v18[0];
    __src[1] = v18[1];
    v3 = v19;
    if ((v19 & 0x8000000000000000) != 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v19)
    {
      if (v19 <= 0xF)
      {
        v8 = v19 - 8;
        v9 = 8;
        if (v19 < 8)
        {
          v9 = v19;
        }

        v10 = v9 - 1;
        if (v19 < v9 - 1)
        {
          v10 = v19;
        }

        if (v9 == v10)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v7 = LOBYTE(__src[0]);
        if (v19 != 1)
        {
          v7 = LOBYTE(__src[0]) | (BYTE1(__src[0]) << 8);
          if (v19 != 2)
          {
            v7 |= BYTE2(__src[0]) << 16;
            if (v19 != 3)
            {
              v7 |= BYTE3(__src[0]) << 24;
              if (v19 != 4)
              {
                v7 |= BYTE4(__src[0]) << 32;
                if (v19 != 5)
                {
                  v7 |= BYTE5(__src[0]) << 40;
                  if (v19 != 6)
                  {
                    v7 |= BYTE6(__src[0]) << 48;
                    if (v19 != 7)
                    {
                      v7 |= BYTE7(__src[0]) << 56;
                    }
                  }
                }
              }
            }
          }
        }

        if (v19 < 9)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0;
          v12 = 0;
          v13 = __src + 8;
          do
          {
            v14 = *v13++;
            v11 |= v14 << v12;
            v12 += 8;
            --v8;
          }

          while (v8);
        }

        v15 = 0xA000000000000000;
        if (((v11 | v7) & 0x8080808080808080) == 0)
        {
          v15 = 0xE000000000000000;
        }

        v6 = v15 | (v19 << 56) | v11;
      }

      else
      {
        v4 = v19 | 0xF000000000000000;
        v6 = _allocateStringStorage(codeUnitCapacity:)(v19);
        *(v6 + 16) = v5;
        *(v6 + 24) = v4;
        if (v5 < 0)
        {
          *__StringStorage._breadcrumbsAddress.getter() = 0;
          v4 = *(v6 + 24);
        }

        *(v6 + 32 + (v4 & 0xFFFFFFFFFFFFLL)) = 0;
        specialized UnsafeMutablePointer.initialize(from:count:)(__src, v3, (v6 + 32));
        v7 = *(v6 + 24);
      }
    }

    else
    {
      v7 = 0;
      v6 = 0xE000000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v7 = 7233902;
  }

  v16 = specialized static String.+ infix(_:_:)(v7, v6, 0x73646E6F63657320uLL, 0xE800000000000000);
  v6;
  0xE800000000000000;
  return v16;
}