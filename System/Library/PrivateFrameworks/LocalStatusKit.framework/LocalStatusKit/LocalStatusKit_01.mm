uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v68 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v67 = v65 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v72 = v65 - v14;
  MEMORY[0x28223BE20](v13);
  v71 = v65 - v15;
  v75 = type metadata accessor for LSKDestinationDevice(0);
  v16 = MEMORY[0x28223BE20](v75);
  v73 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v70 = v65 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v74 = v65 - v21;
  result = MEMORY[0x28223BE20](v20);
  v24 = v65 - v23;
  v26 = *(v25 + 72);
  if (!v26)
  {
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_88;
  }

  v27 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_89;
  }

  v28 = (a2 - a1) / v26;
  v78 = a1;
  v77 = a4;
  if (v28 >= v27 / v26)
  {
    v30 = v27 / v26 * v26;
    if (a4 < a2 || a2 + v30 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v30;
    if (v30 >= 1)
    {
      v65[1] = v68 + 8;
      v65[2] = v67 + 8;
      v46 = -v26;
      v47 = a4 + v30;
      v66 = a4;
      v74 = -v26;
      do
      {
        v65[0] = v45;
        v48 = a2 + v46;
        v71 = a2;
        v72 = a2 + v46;
        while (1)
        {
          if (a2 <= a1)
          {
            v78 = a2;
            v76 = v65[0];
            goto LABEL_86;
          }

          v49 = a3;
          v69 = v45;
          v50 = v47 + v46;
          v51 = v70;
          outlined init with copy of LSKDestinationDevice(v47 + v46, v70, type metadata accessor for LSKDestinationDevice);
          outlined init with copy of LSKDestinationDevice(v48, v73, type metadata accessor for LSKDestinationDevice);
          v52 = v51 + *(v75 + 28);
          v53 = v67;
          outlined init with copy of LSKDestinationDevice(v52, v67, type metadata accessor for LSKDestinationDevice.Delivery);
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
          v55 = *(*(v54 - 8) + 48);
          v56 = v55(v53, 3, v54);
          if (v56 > 1)
          {
            v58 = v56 == 2 ? 3 : 0;
          }

          else if (v56)
          {
            v58 = 2;
          }

          else
          {

            v57 = type metadata accessor for Date();
            (*(*(v57 - 8) + 8))(v67, v57);
            v58 = 1;
          }

          v59 = v68;
          outlined init with copy of LSKDestinationDevice(v73 + *(v75 + 28), v68, type metadata accessor for LSKDestinationDevice.Delivery);
          v60 = v55(v59, 3, v54);
          if (v60 > 1)
          {
            v63 = v74;
            v62 = v60 == 2 ? 3 : 0;
            v64 = v66;
          }

          else
          {
            if (v60)
            {
              v62 = 2;
            }

            else
            {

              v61 = type metadata accessor for Date();
              (*(*(v61 - 8) + 8))(v68, v61);
              v62 = 1;
            }

            v64 = v66;
            v63 = v74;
          }

          a3 = v49 + v63;
          outlined destroy of LSKDestinationDevice(v73, type metadata accessor for LSKDestinationDevice);
          outlined destroy of LSKDestinationDevice(v70, type metadata accessor for LSKDestinationDevice);
          if (v58 < v62)
          {
            break;
          }

          v45 = v50;
          v48 = v72;
          if (v49 < v47 || a3 >= v47)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = v50;
          v46 = v74;
          a2 = v71;
          if (v50 <= v64)
          {
            goto LABEL_84;
          }
        }

        a2 = v72;
        if (v49 < v71 || a3 >= v71)
        {
          swift_arrayInitWithTakeFrontToBack();
          v45 = v69;
        }

        else
        {
          v45 = v69;
          if (v49 != v71)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v46 = v74;
      }

      while (v47 > v64);
    }

LABEL_84:
    v78 = a2;
    v76 = v45;
  }

  else
  {
    v29 = v28 * v26;
    if (a4 < a1 || a1 + v29 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v73 = a4 + v29;
    v76 = a4 + v29;
    if (v29 >= 1 && a2 < a3)
    {
      v67 = v72 + 8;
      v68 = v71 + 8;
      v69 = a3;
      v70 = v26;
      do
      {
        outlined init with copy of LSKDestinationDevice(a2, v24, type metadata accessor for LSKDestinationDevice);
        v32 = a4;
        outlined init with copy of LSKDestinationDevice(a4, v74, type metadata accessor for LSKDestinationDevice);
        v33 = v71;
        outlined init with copy of LSKDestinationDevice(&v24[*(v75 + 28)], v71, type metadata accessor for LSKDestinationDevice.Delivery);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
        v35 = *(*(v34 - 8) + 48);
        v36 = v35(v33, 3, v34);
        v37 = a2;
        if (v36 > 1)
        {
          if (v36 == 2)
          {
            v39 = 3;
          }

          else
          {
            v39 = 0;
          }
        }

        else if (v36)
        {
          v39 = 2;
        }

        else
        {

          v38 = type metadata accessor for Date();
          (*(*(v38 - 8) + 8))(v71, v38);
          v39 = 1;
        }

        v40 = v72;
        outlined init with copy of LSKDestinationDevice(v74 + *(v75 + 28), v72, type metadata accessor for LSKDestinationDevice.Delivery);
        v41 = v35(v40, 3, v34);
        if (v41 > 1)
        {
          v42 = v70;
          if (v41 == 2)
          {
            v44 = 3;
          }

          else
          {
            v44 = 0;
          }
        }

        else
        {
          v42 = v70;
          if (v41)
          {
            v44 = 2;
          }

          else
          {

            v43 = type metadata accessor for Date();
            (*(*(v43 - 8) + 8))(v72, v43);
            v44 = 1;
          }
        }

        outlined destroy of LSKDestinationDevice(v74, type metadata accessor for LSKDestinationDevice);
        outlined destroy of LSKDestinationDevice(v24, type metadata accessor for LSKDestinationDevice);
        if (v39 >= v44)
        {
          a4 += v42;
          a2 = v37;
          if (a1 < v32 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77 = v32 + v42;
        }

        else
        {
          a2 = v37 + v42;
          if (a1 < v37 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v42;
        v78 = a1;
      }

      while (a4 < v73 && a2 < v69);
    }
  }

LABEL_86:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v78, &v77, &v76);
  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
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

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for LSKDestinationDevice(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
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

void type metadata completion function for LSKPublishedStatus(void *a1)
{
  type metadata accessor for LSKKey(319, a1[2], a1[3], a1[4]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      type metadata accessor for [LSKDestinationDevice](319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for LSKPublishedStatus(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 24) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 16);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for LSKPublishedStatus(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 24) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 24) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    a1[2] = a2 - 1;
  }
}

void type metadata accessor for [LSKDestinationDevice](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [LSKDestinationDevice])
  {
    type metadata accessor for LSKDestinationDevice(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [LSKDestinationDevice]);
    }
  }
}

uint64_t LSKPublishedStatusSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  *(v14 + 5) = a5;
  result = (*(v12 + 32))(&v14[v13], a1, a4);
  *a6 = partial apply for closure #1 in LSKPublishedStatusSequence.init<A>(_:);
  a6[1] = v14;
  return result;
}

void *closure #1 in LSKPublishedStatusSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v15 = swift_allocBox();
  (*(v12 + 16))(v14, a1, a4);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  result[6] = v15;
  *a6 = &async function pointer to partial apply for closure #1 in closure #1 in LSKPublishedStatusSequence.init<A>(_:);
  a6[1] = result;
  return result;
}

uint64_t LSKPublishedStatusSequence.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](LSKObservationsSequence.AsyncIterator.next(), 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance LSKPublishedStatusSequence<A, B>.AsyncIterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in LSKLocalStatusClient.status<A>(for:);

  return LSKPublishedStatusSequence.AsyncIterator.next()(a1);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance LSKPublishedStatusSequence<A, B>()
{
  LSKPublishedStatusSequence.makeAsyncIterator()();
}

uint64_t type metadata instantiation function for LSKPublishedStatusSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for LSKPublishedStatusSequence.AsyncIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t partial apply for closure #1 in closure #1 in LSKPublishedStatusSequence.init<A>(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LSKLocalStatusClient.status<A>(for:);

  return closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:)(a1, v8, v4, v5, v6, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LSKStatusOptions.DeviceType.CodingKeys()
{
  v1 = 6513005;
  if (*v0 != 1)
  {
    v1 = 30324;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 825242478;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKStatusOptions.DeviceType.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized LSKStatusOptions.DeviceType.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKStatusOptions.DeviceType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKStatusOptions.DeviceType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKStatusOptions.DeviceType.MacCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKStatusOptions.DeviceType.MacCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKStatusOptions.DeviceType.N301CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKStatusOptions.DeviceType.N301CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKStatusOptions.DeviceType.TvCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKStatusOptions.DeviceType.TvCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LSKStatusOptions.DeviceType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO12TvCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO12TvCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO13MacCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO13MacCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO14N301CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO14N301CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys();
      v9 = v21;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys();
      v9 = v24;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys);
  }

  return result;
}

Swift::Int LSKStatusOptions.DeviceType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](v1);
  return Hasher._finalize()();
}

uint64_t LSKStatusOptions.DeviceType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO12TvCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO12TvCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO13MacCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO13MacCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO14N301CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO14N301CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys();
  v15 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = KeyedDecodingContainer.allKeys.getter();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = specialized Collection<>.popFirst()();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v24 = &type metadata for LSKStatusOptions.DeviceType;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys();
          v26 = v17;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKStatusOptions.Scope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F636341656D6173 && a2 == 0xEB00000000746E75)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKStatusOptions.Scope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKStatusOptions.Scope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKStatusOptions.Scope.SameAccountCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKStatusOptions.Scope.SameAccountCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LSKStatusOptions.Scope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO21SameAccountCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO21SameAccountCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys);
  }

  return result;
}

Swift::Int LSKStatusOptions.Scope.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](0);
  return Hasher._finalize()();
}

uint64_t LSKStatusOptions.Scope.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO21SameAccountCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO21SameAccountCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = KeyedDecodingContainer.allKeys.getter();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if (specialized Collection<>.popFirst()() || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = type metadata accessor for DecodingError();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v16 = &type metadata for LSKStatusOptions.Scope;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  lazy protocol witness table accessor for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance LSKStatusOptions.Scope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO21SameAccountCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO21SameAccountCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t static LSKStatusOptions.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LSKStatusOptions.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x65706F6373;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKStatusOptions.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65706F6373 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002561672A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKStatusOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKStatusOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LSKStatusOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  lazy protocol witness table accessor for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[1] = v8;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14LocalStatusKit16LSKStatusOptionsV10DeviceTypeOGMd, &_sSay14LocalStatusKit16LSKStatusOptionsV10DeviceTypeOGMR);
    lazy protocol witness table accessor for type [LSKStatusOptions.DeviceType] and conformance <A> [A](&lazy protocol witness table cache variable for type [LSKStatusOptions.DeviceType] and conformance <A> [A], lazy protocol witness table accessor for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType, MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType);
  }

  return result;
}

uint64_t LSKStatusOptions.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x259C5BAD0](0);
  result = MEMORY[0x259C5BAD0](*(v1 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x259C5BAD0](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

Swift::Int LSKStatusOptions.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](0);
  MEMORY[0x259C5BAD0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x259C5BAD0](v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

uint64_t LSKStatusOptions.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = 0;
    lazy protocol witness table accessor for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14LocalStatusKit16LSKStatusOptionsV10DeviceTypeOGMd, &_sSay14LocalStatusKit16LSKStatusOptionsV10DeviceTypeOGMR);
    v11 = 1;
    lazy protocol witness table accessor for type [LSKStatusOptions.DeviceType] and conformance <A> [A](&lazy protocol witness table cache variable for type [LSKStatusOptions.DeviceType] and conformance <A> [A], lazy protocol witness table accessor for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType, MEMORY[0x277D83978]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LSKStatusOptions()
{
  Hasher.init(_seed:)();
  LSKStatusOptions.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LSKStatusOptions(uint64_t a1)
{
  Hasher.init(_seed:)();
  LSKStatusOptions.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type [LSKStatusOptions.DeviceType] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14LocalStatusKit16LSKStatusOptionsV10DeviceTypeOGMd, &_sSay14LocalStatusKit16LSKStatusOptionsV10DeviceTypeOGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LSKStatusOptions.DeviceType.stringRepresentation.getter()
{
  v1 = 6513005;
  if (*v0 != 1)
  {
    v1 = 30324;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 825242478;
  }
}

unint64_t lazy protocol witness table accessor for type [LSKStatusOptions.DeviceType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [LSKStatusOptions.DeviceType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [LSKStatusOptions.DeviceType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14LocalStatusKit16LSKStatusOptionsV10DeviceTypeOGMd, &_sSay14LocalStatusKit16LSKStatusOptionsV10DeviceTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [LSKStatusOptions.DeviceType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LSKStatusOptions(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LSKStatusOptions(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized LSKStatusOptions.DeviceType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 825242478 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6513005 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t LSKTargetDeviceFlags.idsDeviceTypes.getter()
{
  v1 = *v0;
  v4 = MEMORY[0x277D84FA0];
  if ((v1 & 0x10) == 0)
  {
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    specialized Set._Variant.insert(_:)(&v3, 9);
    if ((v1 & 0x20) == 0)
    {
      return v4;
    }

    goto LABEL_4;
  }

  specialized Set._Variant.insert(_:)(&v3, 1);
  if ((v1 & 0x40) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v1 & 0x20) != 0)
  {
LABEL_4:
    specialized Set._Variant.insert(_:)(&v3, 5);
  }

  return v4;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance LSKTargetDeviceFlags(void *a1, uint64_t *a2)
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

void *protocol witness for SetAlgebra.remove(_:) in conformance LSKTargetDeviceFlags@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance LSKTargetDeviceFlags@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags()
{
  result = lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags;
  if (!lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags;
  if (!lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags;
  if (!lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags;
  if (!lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LSKTargetDeviceFlags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LSKTargetDeviceFlags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13IDSDeviceTypeVGMd, &_ss11_SetStorageCySo13IDSDeviceTypeVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x259C5BAD0](v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](a1);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for IDSDeviceType();
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13IDSDeviceTypeVGMd, &_ss11_SetStorageCySo13IDSDeviceTypeVGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13IDSDeviceTypeVGMd, &_ss11_SetStorageCySo13IDSDeviceTypeVGMR);
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x259C5BAD0](v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x2821FC138]();
}

{
  return MEMORY[0x2821FC178]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x2821FC1B8]();
}

{
  return MEMORY[0x2821FC1F8]();
}

uint64_t AsyncSequence.map<A>(_:)()
{
  return MEMORY[0x282200528]();
}

{
  return MEMORY[0x282200530]();
}