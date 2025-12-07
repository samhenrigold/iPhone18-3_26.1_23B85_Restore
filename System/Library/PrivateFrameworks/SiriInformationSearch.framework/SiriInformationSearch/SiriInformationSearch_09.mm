Swift::Bool __swiftcall UsoEntity_common_MediaItem.hasListPosition()()
{
  v0 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter();
  if (v0)
  {
  }

  return v0 != 0;
}

SiriInformationSearch::CommonAudio::Attribute_optional __swiftcall UsoEntity_common_MediaItem.getListPosition()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - v4;
  if (dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter())
  {
    dispatch thunk of UsoEntity_common_ListPosition.definedValue.getter();

    v6 = type metadata accessor for UsoEntity_common_ListPosition.DefinedValues();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      outlined init with copy of MediaUserStateCenter?(v5, v3, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
      v9 = (*(v7 + 88))(v3, v6);
      if (v9 == *MEMORY[0x277D5EC68])
      {
        v8.value = SiriInformationSearch_CommonAudio_Attribute_previous;
        goto LABEL_9;
      }

      if (v9 == *MEMORY[0x277D5EBF0])
      {
        v8.value = SiriInformationSearch_CommonAudio_Attribute_next;
        goto LABEL_9;
      }

      (*(v7 + 8))(v3, v6);
    }

    v8.value = SiriInformationSearch_CommonAudio_Attribute_unknownDefault;
LABEL_9:
    outlined destroy of MediaUserStateCenter?(v5, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
    return v8;
  }

  return 15;
}

unint64_t UsoEntity_common_MediaItem.findAll(options:with:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = a2;
  v6 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  if (a2(v3))
  {

    MEMORY[0x223DDF820](v7);
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v6 = v37;
  }

  if (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16))
  {
    v8 = dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter();
    if (v8)
    {
      v9 = v8;
      v10 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v8 >> 62)
      {
        goto LABEL_60;
      }

      for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v12 = 0;
        v32 = v9;
        v33 = v9 & 0xC000000000000001;
        v28 = v10;
        v31 = i;
        v26 = v5;
        v27 = a3;
        while (v33)
        {
          MEMORY[0x223DDFF80](v12, v9);
          v13 = __OFADD__(v12++, 1);
          if (v13)
          {
            goto LABEL_53;
          }

LABEL_19:
          dispatch thunk of CodeGenListEntry.entry.getter();
          if (!v36[0])
          {

            goto LABEL_12;
          }

          dispatch thunk of CodeGenListEntry.entry.getter();
          if (v36[0])
          {
            v14 = UsoEntity_common_MediaItem.findAll(options:with:)(a1, v5, a3);
          }

          else
          {
            v14 = MEMORY[0x277D84F90];
          }

          v15 = v14 >> 62;
          if (v14 >> 62)
          {
            v16 = __CocoaSet.count.getter();
          }

          else
          {
            v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v10 = v6 >> 62;
          if (v6 >> 62)
          {
            v17 = __CocoaSet.count.getter();
          }

          else
          {
            v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v35 = v16;
          v13 = __OFADD__(v17, v16);
          v9 = v17 + v16;
          if (v13)
          {
            goto LABEL_54;
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (!v10)
            {
              goto LABEL_35;
            }

LABEL_34:
            __CocoaSet.count.getter();
            goto LABEL_35;
          }

          if (v10)
          {
            goto LABEL_34;
          }

          v10 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v9 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v34 = v6;
            goto LABEL_36;
          }

LABEL_35:
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v10 = v34 & 0xFFFFFFFFFFFFFF8;
LABEL_36:
          v6 = *(v10 + 16);
          v18 = *(v10 + 24);
          if (v15)
          {
            v9 = __CocoaSet.count.getter();
            if (v9)
            {
LABEL_38:
              if (((v18 >> 1) - v6) < v35)
              {
                goto LABEL_56;
              }

              v6 = v10 + 8 * v6 + 32;
              v30 = v10;
              if (v15)
              {
                if (v9 < 1)
                {
                  goto LABEL_59;
                }

                lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_MediaItem] and conformance [A], &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMd, &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMR);
                for (j = 0; j != v9; ++j)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology26UsoEntity_common_MediaItemCGMd, &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMR);
                  v20 = specialized protocol witness for Collection.subscript.read in conformance [A](v36, j, v14);
                  v22 = *v21;

                  (v20)(v36, 0);
                  *(v6 + 8 * j) = v22;
                }

                v5 = v26;
                a3 = v27;
                v10 = v35;
              }

              else
              {
                type metadata accessor for UsoEntity_common_MediaItem();
                v10 = v35;
                swift_arrayInitWithCopy();
              }

              v6 = v34;
              i = v31;
              v9 = v32;
              if (v10 > 0)
              {
                v23 = *(v30 + 16);
                v13 = __OFADD__(v23, v10);
                v24 = v23 + v10;
                if (v13)
                {
                  goto LABEL_58;
                }

                *(v30 + 16) = v24;
              }

              goto LABEL_12;
            }
          }

          else
          {
            v9 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v9)
            {
              goto LABEL_38;
            }
          }

          v6 = v34;
          i = v31;
          v9 = v32;
          if (v35 > 0)
          {
            goto LABEL_55;
          }

LABEL_12:
          if (v12 == i)
          {
            goto LABEL_61;
          }
        }

        if (v12 >= *(v28 + 16))
        {
          goto LABEL_57;
        }

        v13 = __OFADD__(v12++, 1);
        if (!v13)
        {
          goto LABEL_19;
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        ;
      }

LABEL_61:
    }
  }

  return v6;
}

uint64_t specialized UsoEntity_common_MediaItem.findFirst(options:with:)(uint64_t a1, uint64_t a2)
{
  if (!UsoEntity_common_MediaItem.isResolvedReference()())
  {
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v4 = dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter();
      if (v4)
      {
        v5 = v4;
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v4 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
        {
          v8 = 0;
          while ((v5 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DDFF80](v8, v5);
            v9 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_22;
            }

LABEL_19:
            dispatch thunk of CodeGenListEntry.entry.getter();
            if (v11)
            {
              a2 = specialized UsoEntity_common_MediaItem.findFirst(options:with:)(a1, v11);

              if (a2)
              {

                return a2;
              }
            }

            else
            {
            }

            ++v8;
            if (v9 == i)
            {
              goto LABEL_25;
            }
          }

          if (v8 >= *(v6 + 16))
          {
            goto LABEL_23;
          }

          v9 = v8 + 1;
          if (!__OFADD__(v8, 1))
          {
            goto LABEL_19;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

LABEL_25:
      }
    }

    return 0;
  }

  return a2;
}

{
  return specialized UsoEntity_common_MediaItem.findFirst(options:with:)(a1, a2, closure #1 in closure #1 in AudioUsoIntent.noun.getter, specialized UsoEntity_common_MediaItem.findFirst(options:with:));
}

{
  if (dispatch thunk of UsoEntity_common_MediaItem.dateTime.getter())
  {
  }

  else
  {
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v4 = dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter();
      if (v4)
      {
        v5 = v4;
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v4 >> 62)
        {
          goto LABEL_25;
        }

        v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
LABEL_26:

          return 0;
        }

LABEL_10:
        v8 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DDFF80](v8, v5);
            v9 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v8 >= *(v6 + 16))
            {
              goto LABEL_24;
            }

            v9 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
LABEL_25:
              v7 = __CocoaSet.count.getter();
              if (!v7)
              {
                goto LABEL_26;
              }

              goto LABEL_10;
            }
          }

          dispatch thunk of CodeGenListEntry.entry.getter();
          if (v11)
          {
            a2 = specialized UsoEntity_common_MediaItem.findFirst(options:with:)(a1, v11);

            if (a2)
            {

              return a2;
            }
          }

          else
          {
          }

          ++v8;
          if (v9 == v7)
          {
            goto LABEL_26;
          }
        }
      }
    }

    return 0;
  }

  return a2;
}

{
  return specialized UsoEntity_common_MediaItem.findFirst(options:with:)(a1, a2, closure #1 in closure #1 in AudioUsoIntent.sort.getter, specialized UsoEntity_common_MediaItem.findFirst(options:with:));
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  if (!dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter())
  {
    v8 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
LABEL_5:
    outlined destroy of MediaUserStateCenter?(v6, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v9 = dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter();
      if (v9)
      {
        v10 = v9;
        v11 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v9 >> 62)
        {
          goto LABEL_26;
        }

        for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
        {
          v13 = 0;
          while ((v10 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DDFF80](v13, v10);
            v14 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_24;
            }

LABEL_21:
            dispatch thunk of CodeGenListEntry.entry.getter();
            if (v17)
            {
              a2 = specialized UsoEntity_common_MediaItem.findFirst(options:with:)(a1, v17);

              if (a2)
              {

                return a2;
              }
            }

            else
            {
            }

            ++v13;
            if (v14 == i)
            {
              goto LABEL_27;
            }
          }

          if (v13 >= *(v11 + 16))
          {
            goto LABEL_25;
          }

          v14 = v13 + 1;
          if (!__OFADD__(v13, 1))
          {
            goto LABEL_21;
          }

LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          ;
        }

LABEL_27:
      }
    }

    return 0;
  }

  dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();

  v7 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_5;
  }

  outlined destroy of MediaUserStateCenter?(v6, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);

  return a2;
}

uint64_t specialized UsoEntity_common_MediaItem.findFirst(options:with:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v5 = a2;
  if ((a3(a2) & 1) == 0)
  {
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v7 = dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter();
      if (v7)
      {
        v8 = v7;
        v5 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v7 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
        {
          v14 = v5;
          v10 = 0;
          while ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x223DDFF80](v10, v8);
            v12 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_22;
            }

LABEL_19:
            v5 = v11;
            dispatch thunk of CodeGenListEntry.entry.getter();
            if (v15)
            {
              v5 = a4(a1);

              if (v5)
              {

                return v5;
              }
            }

            else
            {
            }

            ++v10;
            if (v12 == i)
            {
              goto LABEL_25;
            }
          }

          if (v10 >= *(v14 + 16))
          {
            goto LABEL_23;
          }

          v11 = *(v8 + 8 * v10 + 32);

          v12 = v10 + 1;
          if (!__OFADD__(v10, 1))
          {
            goto LABEL_19;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

LABEL_25:
      }
    }

    return 0;
  }

  return v5;
}

uint64_t UsoEntity_common_MediaItem.findFirst(options:with:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  if ((a2(v3) & 1) == 0)
  {
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v7 = dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter();
      if (v7)
      {
        v8 = v7;
        v9 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v7 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
        {
          v14 = v9;
          v11 = 0;
          while ((v8 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DDFF80](v11, v8);
            v12 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_22;
            }

LABEL_19:
            dispatch thunk of CodeGenListEntry.entry.getter();
            v9 = v16;
            if (v16)
            {
              v4 = UsoEntity_common_MediaItem.findFirst(options:with:)(a1, a2, a3);

              if (v4)
              {

                return v4;
              }
            }

            else
            {
            }

            ++v11;
            if (v12 == i)
            {
              goto LABEL_25;
            }
          }

          if (v11 >= *(v14 + 16))
          {
            goto LABEL_23;
          }

          v12 = v11 + 1;
          if (!__OFADD__(v11, 1))
          {
            goto LABEL_19;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

LABEL_25:
      }
    }

    return 0;
  }

  return v4;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.hasMediaTypeOnly()()
{
  v0 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter();
  if (v0)
  {

    if (dispatch thunk of UsoEntity_common_MediaItem.associatedPerson.getter() || dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter() || dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter())
    {
      goto LABEL_5;
    }

    if (dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter())
    {

      goto LABEL_6;
    }

    if (dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter() || dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter())
    {
LABEL_5:

LABEL_6:
      LOBYTE(v0) = 0;
      return v0;
    }

    LOBYTE(v0) = 1;
  }

  return v0;
}

uint64_t Array<A>.identifiers(forNamespace:)(unint64_t a1, unint64_t a2)
{
  v56 = type metadata accessor for UsoIdentifier();
  v4 = *(v56 - 8);
  result = MEMORY[0x28223BE20](v56);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v54 = a1;
  if (v8)
  {
    do
    {
      v9 = 0;
      a1 = a2 & 0xC000000000000001;
      v53 = MEMORY[0x277D84F90];
      while (a1)
      {
        MEMORY[0x223DDFF80](v9, a2);
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_15;
        }

LABEL_7:
        v11 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53[2] + 1, 1, v53);
          v53 = result;
        }

        v13 = v53[2];
        v12 = v53[3];
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          v50 = v13 + 1;
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v53);
          v14 = v50;
          v53 = result;
        }

        v15 = v53;
        v53[2] = v14;
        v15[v13 + 4] = v11;
        ++v9;
        if (v10 == v8)
        {
          goto LABEL_19;
        }
      }

      if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v10 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        goto LABEL_7;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      result = __CocoaSet.count.getter();
      v8 = result;
      v54 = a1;
    }

    while (result);
  }

  v53 = MEMORY[0x277D84F90];
  v14 = *(MEMORY[0x277D84F90] + 16);
LABEL_19:
  if (v14)
  {
    v16 = 0;
    v51 = v53 + 4;
    v55 = v4 + 16;
    v48 = 0x80000002234D9670;
    v49 = 0x80000002234D9EA0;
    v46 = 0x80000002234D9630;
    v47 = 0x80000002234D9E80;
    v44 = 0x80000002234D9650;
    v45 = 0x80000002234D9E60;
    v42 = 0x80000002234D9610;
    v43 = 0x80000002234D9E30;
    v40 = 0x80000002234D9DC0;
    v41 = 0x80000002234D9E10;
    v38 = 0x80000002234D9D80;
    v39 = 0x80000002234D9DA0;
    v37 = 0x80000002234D9D60;
    v36 = 0x80000002234D9D40;
    v35 = 0x80000002234D9D10;
    v17 = (v4 + 8);
    v18 = MEMORY[0x277D84F90];
    v50 = v14;
    while (1)
    {
      v34 = v18;
      v19 = v54;
      while (1)
      {
        if (v16 >= v53[2])
        {
          goto LABEL_100;
        }

        v20 = v51[v16++];
        v21 = *(v20 + 16);
        if (v21)
        {
          break;
        }

LABEL_23:
        if (v16 == v14)
        {
          v18 = v34;
          goto LABEL_98;
        }
      }

      v52 = v16;
      v22 = v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

      v23 = 0;
LABEL_29:
      if (v23 >= *(v20 + 16))
      {
        break;
      }

      (*(v4 + 16))(v7, v22 + *(v4 + 72) * v23++, v56);
      v25 = UsoIdentifier.namespace.getter();
      v27 = 0xEF6E756F4E726579;
      v28 = 0x616C50616964656DLL;
      switch(v19)
      {
        case 1:
          v28 = 0xD000000000000012;
          v27 = v35;
          if (v26)
          {
            goto LABEL_79;
          }

          goto LABEL_85;
        case 2:
          v28 = 0x6E6547636973756DLL;
          v27 = 0xEA00000000006572;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 3:
          v27 = 0xEF646F6F4D726579;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 4:
          v28 = 0xD000000000000013;
          v27 = v36;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 5:
          v28 = 0xD000000000000014;
          v27 = v37;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 6:
          v28 = 0xD000000000000015;
          v27 = v38;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 7:
          v28 = 0xD000000000000014;
          v27 = v39;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 8:
          v28 = 0xD000000000000015;
          v27 = v40;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 9:
          v27 = 0xED0000656C746954;
          v28 = 0x7473696C79616C70;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 10:
          v28 = 0x5474736163646F70;
          goto LABEL_71;
        case 11:
          v27 = 0xEA00000000007265;
          v28 = 0x696669746E656469;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 12:
          v27 = 0xE400000000000000;
          v28 = 1701605234;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 13:
          v27 = 0xEB00000000644965;
          v28 = 0x6C646E7542707061;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 14:
          v28 = 0xD000000000000019;
          v27 = v41;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 15:
          v28 = 0xD000000000000010;
          v27 = v42;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 16:
          v28 = 0xD000000000000012;
          v27 = v43;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 17:
          v28 = 0x54776F6853707061;
LABEL_71:
          v27 = 0xEC000000656C7469;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 18:
          v27 = 0xEE006449656C7469;
          v28 = 0x54776F6853707061;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 19:
          v28 = 0xD000000000000011;
          v27 = v44;
          goto LABEL_78;
        case 20:
          v28 = 0xD000000000000013;
          v27 = v45;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 21:
          v28 = 0xD000000000000012;
          v27 = v46;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 22:
          v28 = 0xD000000000000014;
          v27 = v47;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 23:
          v28 = 0xD000000000000012;
          v27 = v48;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 24:
          v28 = 0xD000000000000014;
          v27 = v49;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 25:
          v27 = 0xE700000000000000;
          v28 = 0x64695F6D657469;
          if (!v26)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        default:
LABEL_78:
          if (!v26)
          {
            goto LABEL_85;
          }

LABEL_79:
          if (v25 == v28 && v26 == v27)
          {
          }

          else
          {
            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v19 = v54;

            if ((v29 & 1) == 0)
            {
              goto LABEL_86;
            }
          }

          if (!UsoIdentifier.value.getter() && v30 == 0xE000000000000000)
          {
LABEL_85:

LABEL_86:
            result = (*v17)(v7, v56);
            if (v21 == v23)
            {
LABEL_22:

              v14 = v50;
              v16 = v52;
              goto LABEL_23;
            }

            goto LABEL_29;
          }

          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          result = (*v17)(v7, v56);
          if (v24)
          {
            if (v21 == v23)
            {
              goto LABEL_22;
            }

            goto LABEL_29;
          }

          v18 = v34;
          result = swift_isUniquelyReferenced_nonNull_native();
          v57 = v18;
          if ((result & 1) == 0)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1);
            v18 = v57;
          }

          v14 = v50;
          v16 = v52;
          v32 = *(v18 + 16);
          v31 = *(v18 + 24);
          if (v32 >= v31 >> 1)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
            v14 = v50;
            v18 = v57;
          }

          *(v18 + 16) = v32 + 1;
          *(v18 + 8 * v32 + 32) = v20;
          if (v16 == v14)
          {
            goto LABEL_98;
          }

          break;
      }
    }

    __break(1u);
LABEL_100:
    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
LABEL_98:

    return v18;
  }

  return result;
}

unint64_t Array<A>.findAll(options:with:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, unint64_t a4)
{

  v8 = specialized Sequence.flatMap<A>(_:)(a4, a1, a2, a3);

  return v8;
}

uint64_t Array<A>.findFirst(options:with:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, unint64_t a4)
{
  v8 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 >> 62)
  {
LABEL_16:
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v9 != i; ++i)
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DDFF80](i, a4);
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (i >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    v11 = UsoEntity_common_MediaItem.findFirst(options:with:)(a1, a2, a3);

    if (v11)
    {
      return v11;
    }
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      __CocoaSet.count.getter();
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v2 = result;
  }

  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_UserEntity] and conformance [A], &_sSay12SiriOntology021UsoEntity_common_UserD0CGMd, &_sSay12SiriOntology021UsoEntity_common_UserD0CGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology021UsoEntity_common_UserD0CGMd, &_sSay12SiriOntology021UsoEntity_common_UserD0CGMR);
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
        type metadata accessor for UsoEntity_common_UserEntity();
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
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_uso_NoEntity] and conformance [A], &_sSay12SiriOntology016UsoEntity_uso_NoD0CGMd, &_sSay12SiriOntology016UsoEntity_uso_NoD0CGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology016UsoEntity_uso_NoD0CGMd, &_sSay12SiriOntology016UsoEntity_uso_NoD0CGMR);
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
        type metadata accessor for UsoEntity_uso_NoEntity();
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
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_EventTrigger] and conformance [A], &_sSay12SiriOntology29UsoEntity_common_EventTriggerCGMd, &_sSay12SiriOntology29UsoEntity_common_EventTriggerCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology29UsoEntity_common_EventTriggerCGMd, &_sSay12SiriOntology29UsoEntity_common_EventTriggerCGMR);
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
        type metadata accessor for UsoEntity_common_EventTrigger();
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
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_PhoneCall] and conformance [A], &_sSay12SiriOntology26UsoEntity_common_PhoneCallCGMd, &_sSay12SiriOntology26UsoEntity_common_PhoneCallCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology26UsoEntity_common_PhoneCallCGMd, &_sSay12SiriOntology26UsoEntity_common_PhoneCallCGMR);
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
        type metadata accessor for UsoEntity_common_PhoneCall();
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
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_App] and conformance [A], &_sSay12SiriOntology20UsoEntity_common_AppCGMd, &_sSay12SiriOntology20UsoEntity_common_AppCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology20UsoEntity_common_AppCGMd, &_sSay12SiriOntology20UsoEntity_common_AppCGMR);
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
        type metadata accessor for UsoEntity_common_App();
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
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_MediaItem] and conformance [A], &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMd, &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology26UsoEntity_common_MediaItemCGMd, &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMR);
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
        type metadata accessor for UsoEntity_common_MediaItem();
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
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [PommesResult] and conformance [A], &_sSay21SiriInformationSearch12PommesResultCGMd, &_sSay21SiriInformationSearch12PommesResultCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch12PommesResultCGMd, &_sSay21SiriInformationSearch12PommesResultCGMR);
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
        type metadata accessor for PommesResult();
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
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_RadioStation] and conformance [A], &_sSay12SiriOntology29UsoEntity_common_RadioStationCGMd, &_sSay12SiriOntology29UsoEntity_common_RadioStationCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology29UsoEntity_common_RadioStationCGMd, &_sSay12SiriOntology29UsoEntity_common_RadioStationCGMR);
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
        type metadata accessor for UsoEntity_common_RadioStation();
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
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [NSObject & SEMEntityFilter] and conformance [A], &_sSaySo8NSObject_So15SEMEntityFilterpGMd, &_sSaySo8NSObject_So15SEMEntityFilterpGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSObject_So15SEMEntityFilterpGMd, &_sSaySo8NSObject_So15SEMEntityFilterpGMR);
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObject_So15SEMEntityFilterpMd, _sSo8NSObject_So15SEMEntityFilterpMR);
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
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [Experience] and conformance [A], &_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
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
        type metadata accessor for Experience();
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
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [AudioItemCandidate] and conformance [A], &_sSay21SiriInformationSearch18AudioItemCandidateCGMd, &_sSay21SiriInformationSearch18AudioItemCandidateCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch18AudioItemCandidateCGMd, &_sSay21SiriInformationSearch18AudioItemCandidateCGMR);
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
        type metadata accessor for AudioItemCandidate(0);
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
    result = __CocoaSet.count.getter();
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
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [AudioResult] and conformance [A], &_sSay21SiriInformationSearch11AudioResultCGMd, &_sSay21SiriInformationSearch11AudioResultCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch11AudioResultCGMd, &_sSay21SiriInformationSearch11AudioResultCGMR);
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
        type metadata accessor for AudioResult(0);
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

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v27 = v4;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223DDFF80](v5, v26);
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v5 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_40;
        }
      }

      v8 = UsoEntity_common_MediaItem.findAll(options:with:)(a2, a3, a4);

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? __CocoaSet.count.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v6 >> 62;
      if (v6 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v34 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        __CocoaSet.count.getter();
        goto LABEL_19;
      }

      if (v11)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v15 >> 1) - v14) < v34)
          {
            goto LABEL_43;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_45;
            }

            lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_MediaItem] and conformance [A], &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMd, &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMR);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology26UsoEntity_common_MediaItemCGMd, &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMR);
              v19 = specialized protocol witness for Collection.subscript.read in conformance [A](v33, i, v8);
              v21 = *v20;

              (v19)(v33, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for UsoEntity_common_MediaItem();
            swift_arrayInitWithCopy();
          }

          v4 = v27;
          if (v34 >= 1)
          {
            v22 = *(v13 + 16);
            v7 = __OFADD__(v22, v34);
            v23 = v22 + v34;
            if (v7)
            {
              goto LABEL_44;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_24;
        }
      }

      if (v34 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v5 == v4)
      {
        return v6;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_13;
    }

LABEL_39:
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
LABEL_46:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t *static SearchToolEmptyDataProvider.make()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 80);
  type metadata accessor for AnyDataProvider(0, v5, a3, a4);
  v8 = type metadata accessor for SearchToolEmptyDataProvider(0, v5, v6, v7);
  v13 = swift_allocObject();
  WitnessTable = swift_getWitnessTable();
  v11 = specialized AnyDataProvider.__allocating_init<A>(provider:)(&v13, v8, WitnessTable, v10);

  return v11;
}

uint64_t dispatch thunk of SearchToolEmptyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 120);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

void *Emittable.eventWrapper(requestId:pommesCandidateId:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277D59F68]) init];
  if (v14)
  {
    v15 = v14;
    Emittable.makeComponentIdAndEmitRequestLink(for:with:)(0x15u, a1, a2, a4, a5, v13);
    v16 = closure #1 in Emittable.eventWrapper(requestId:pommesCandidateId:)(v13, a1, a2, a3);
    [v15 setEventMetadata_];

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.pommes);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2232BB000, v18, v19, "Unable to initialize POMMESSchemaPOMMESClientEvent", v20, 2u);
      MEMORY[0x223DE0F80](v20, -1, -1);
    }

    return 0;
  }

  return v15;
}

id Emittable.stream.getter(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() processInfo];
  v5 = NSProcessInfo.isRunningUnitTests.getter();

  if (v5)
  {
    v6 = *(a2 + 16);

    return v6(a1, a2);
  }

  else
  {
    v8 = [objc_opt_self() sharedStream];

    return v8;
  }
}

uint64_t Emittable.makeComponentIdAndEmitRequestLink(for:with:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v79 = a1;
  v82 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v74 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v74 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v80 = &v74 - v22;
  MEMORY[0x28223BE20](v21);
  v81 = &v74 - v23;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v33 = *(v14 + 32);
    v34 = v81;
    v78 = v14 + 32;
    v76 = v14;
    v77 = v33;
    v33(v81, v12, v13);
    v35 = (*(a5 + 24))(a4, a5);
    v36 = v80;
    v37 = v79;
    (*(*v35 + 88))(v79, v34);

    if (AFDeviceSupportsSAE())
    {
      v38 = 43;
    }

    else
    {
      v38 = 1;
    }

    v39 = v37;
    v40 = v36;
    v41 = specialized Emittable.buildRequestLinkEvent(sourceComponent:sourceUUID:targetComponent:targetUUID:)(v39, v36, v38);
    if (v41)
    {
      v42 = v41;
      [(*(a5 + 8))(a4 a5)];
      swift_unknownObjectRelease();
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.pommes);
      v44 = v76;
      (*(v76 + 16))(v20, v40, v13);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v83 = v75;
        *v47 = 136315394;
        v48 = SISchemaComponentName.description.getter();
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v83);

        *(v47 + 4) = v50;
        *(v47 + 12) = 2080;
        lazy protocol witness table accessor for type UUID and conformance UUID();
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v53 = v52;
        v54 = *(v44 + 8);
        v54(v20, v13);
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v83);
        v40 = v80;

        *(v47 + 14) = v55;
        _os_log_impl(&dword_2232BB000, v45, v46, "[SELF Logging] Logged request link event with component:%s, ID: %s", v47, 0x16u);
        v56 = v75;
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v56, -1, -1);
        MEMORY[0x223DE0F80](v47, -1, -1);

        v54(v81, v13);
        return v77(v82, v40, v13);
      }

      v73 = *(v44 + 8);
      v73(v20, v13);
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      __swift_project_value_buffer(v57, static Logger.pommes);
      v58 = v76;
      (*(v76 + 16))(v17, v40, v13);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = v13;
        v63 = swift_slowAlloc();
        v83 = v63;
        *v61 = 136315394;
        v64 = SISchemaComponentName.description.getter();
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v83);

        *(v61 + 4) = v66;
        *(v61 + 12) = 2080;
        lazy protocol witness table accessor for type UUID and conformance UUID();
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        v70 = *(v58 + 8);
        v70(v17, v62);
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v83);

        *(v61 + 14) = v71;
        _os_log_impl(&dword_2232BB000, v59, v60, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v61, 0x16u);
        swift_arrayDestroy();
        v72 = v63;
        v13 = v62;
        MEMORY[0x223DE0F80](v72, -1, -1);
        MEMORY[0x223DE0F80](v61, -1, -1);

        v70(v81, v62);
        v40 = v80;
        return v77(v82, v40, v13);
      }

      v73 = *(v58 + 8);
      v73(v17, v13);
    }

    v73(v81, v13);
    return v77(v82, v40, v13);
  }

  outlined destroy of MediaUserStateCenter?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_4:
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.pommes);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v83 = v28;
    *v27 = 136315138;
    if (a3)
    {
      v29 = a2;
    }

    else
    {
      v29 = 7104878;
    }

    if (a3)
    {
      v30 = a3;
    }

    else
    {
      v30 = 0xE300000000000000;
    }

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v83);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_2232BB000, v25, v26, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x223DE0F80](v28, -1, -1);
    MEMORY[0x223DE0F80](v27, -1, -1);
  }

  return UUID.init()();
}

id closure #1 in Emittable.eventWrapper(requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v71 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v69 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v70 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v73 = &v69 - v21;
  v22 = [objc_allocWithZone(MEMORY[0x277D59F70]) init];
  if (v22)
  {
    v23 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v72 = a3;
    v74 = a4;
    v24 = v23;
    v25 = v22;
    v26 = v9;
    v27 = v18;
    v28 = v17;
    v29 = v22;
    v30 = v11;
    v31 = v25;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v33 = [v24 initWithNSUUID_];

    [v31 setPommesId_];
    v11 = v30;
    v22 = v29;
    v17 = v28;
    v18 = v27;
    v9 = v26;

    a4 = v74;
    a3 = v72;
  }

  if (a3)
  {
    UUID.init(uuidString:)();
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v34 = v73;
      (*(v18 + 32))(v73, v16, v17);
      v35 = AFDeviceSupportsSAE();
      if (v22)
      {
        v36 = v35;
        v37 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v74 = a4;
        v38 = v37;
        v39 = v11;
        v40 = v22;
        v41 = UUID._bridgeToObjectiveC()().super.isa;
        v42 = [v38 initWithNSUUID_];

        v43 = &selRef_setSubRequestId_;
        if (!v36)
        {
          v43 = &selRef_setRequestId_;
        }

        [v40 *v43];

        v11 = v39;
        a4 = v74;
      }

      (*(v18 + 8))(v34, v17);
    }
  }

  outlined init with copy of PommesCandidateId?(a4, v11);
  v44 = type metadata accessor for PommesCandidateId();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v11, 1, v44) != 1)
  {
    outlined init with copy of PommesCandidateId?(v11, v9);
    v51 = (*(v45 + 88))(v9, v44);
    if (v51 != *MEMORY[0x277D56618])
    {
      if (v51 == *MEMORY[0x277D56620])
      {
        (*(v45 + 96))(v9, v44);
        v57 = *v9;
        v56 = v9[1];

        v58 = v71;
        UUID.init(uuidString:)();
        if ((*(v18 + 48))(v58, 1, v17) == 1)
        {

          outlined destroy of MediaUserStateCenter?(v58, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v59 = type metadata accessor for Logger();
          __swift_project_value_buffer(v59, static Logger.pommes);
          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v47, v48))
          {
            goto LABEL_17;
          }

          v49 = swift_slowAlloc();
          *v49 = 0;
          v50 = "Unable to create UUID from trpId";
          goto LABEL_16;
        }

        v61 = v70;
        (*(v18 + 32))(v70, v58, v17);
        if (v22)
        {
          v62 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v63 = v22;
          v64 = UUID._bridgeToObjectiveC()().super.isa;
          v65 = [v62 initWithNSUUID_];

          [v63 setTrpId_];
          v66 = v63;
          v67 = MEMORY[0x223DDF550](v57, v56);

          [v66 setResultCandidateId_];

          (*(v18 + 8))(v61, v17);
          goto LABEL_35;
        }

        (*(v18 + 8))(v61, v17);
LABEL_32:

        goto LABEL_35;
      }

      if (v51 != *MEMORY[0x277D56610])
      {
        (*(v45 + 8))(v9, v44);
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        __swift_project_value_buffer(v60, static Logger.pommes);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v47, v48))
        {
          goto LABEL_17;
        }

        v49 = swift_slowAlloc();
        *v49 = 0;
        v50 = "Unknown PommesCandidateId";
        goto LABEL_16;
      }
    }

    (*(v45 + 96))(v9, v44);
    v52 = v9[1];
    if (v22)
    {
      v53 = *v9;
      v54 = v22;
      v55 = MEMORY[0x223DDF550](v53, v52);

      [v54 setResultCandidateId_];

      goto LABEL_35;
    }

    goto LABEL_32;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.pommes);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v47, v48))
  {
    goto LABEL_17;
  }

  v49 = swift_slowAlloc();
  *v49 = 0;
  v50 = "PommesCandidateId is nil";
LABEL_16:
  _os_log_impl(&dword_2232BB000, v47, v48, v50, v49, 2u);
  MEMORY[0x223DE0F80](v49, -1, -1);
LABEL_17:

LABEL_35:
  outlined destroy of MediaUserStateCenter?(v11, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  return v22;
}

NSObject *specialized Emittable.buildRequestLinkEvent(sourceComponent:sourceUUID:targetComponent:targetUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (!v5)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.pommes);
    v6 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44 = v20;
      *v19 = 136315394;
      v21 = SISchemaComponentName.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v44);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = SISchemaComponentName.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v44);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_2232BB000, v6, v18, "Failed to create RequestLink event for source component: %s and target component: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v20, -1, -1);
      MEMORY[0x223DE0F80](v19, -1, -1);
    }

    goto LABEL_14;
  }

  v6 = v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v7)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.pommes);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      v32 = SISchemaComponentName.description.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v44);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_2232BB000, v28, v29, "Failed to create source link event for source component: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x223DE0F80](v31, -1, -1);
      MEMORY[0x223DE0F80](v30, -1, -1);
    }

LABEL_14:
    return 0;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v9)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.pommes);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136315138;
      v41 = SISchemaComponentName.description.getter();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v44);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2232BB000, v37, v38, "Failed to create target link event for target component: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x223DE0F80](v40, -1, -1);
      MEMORY[0x223DE0F80](v39, -1, -1);
    }

    return 0;
  }

  v10 = v9;
  [v8 setComponent_];
  v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = [v11 initWithNSUUID_];

  [v8 setUuid_];
  [v10 setComponent_];
  v14 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v15 = UUID._bridgeToObjectiveC()().super.isa;
  v16 = [v14 initWithNSUUID_];

  [v10 setUuid_];
  [v6 setSource:v8];
  [v6 setTarget:v10];

  return v6;
}

void *PommesSearchServiceDelegate.pommesSearchService.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___PommesSearchXPCServer____lazy_storage___pommesSearchService;
  if (*(v2 + OBJC_IVAR___PommesSearchXPCServer____lazy_storage___pommesSearchService))
  {
    v4 = *(v2 + OBJC_IVAR___PommesSearchXPCServer____lazy_storage___pommesSearchService);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v4 = static PommesSearchService.shared;
    *(v2 + v3) = static PommesSearchService.shared;
    swift_retain_n();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v4;
}

uint64_t (*PommesSearchServiceDelegate.pommesSearchService.modify(void **a1, uint64_t a2))(uint64_t *a1)
{
  a1[1] = v2;
  *a1 = PommesSearchServiceDelegate.pommesSearchService.getter(a1, a2);
  return PommesSearchServiceDelegate.pommesSearchService.modify;
}

id PommesSearchServiceDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *PommesSearchServiceDelegate.init()()
{
  *&v0[OBJC_IVAR___PommesSearchXPCServer____lazy_storage___pommesSearchService] = 0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pommes);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, v2, v3, "PommesSearchServiceDelegate init", v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }

  v5 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v6 = MEMORY[0x223DDF550](0xD000000000000028, 0x80000002234DCD20);
  v7 = [v5 initWithMachServiceName_];

  *&v0[OBJC_IVAR___PommesSearchXPCServer_listener] = v7;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for PommesSearchServiceDelegate();
  v8 = objc_msgSendSuper2(&v16, sel_init);
  v9 = OBJC_IVAR___PommesSearchXPCServer_listener;
  v10 = *&v8[OBJC_IVAR___PommesSearchXPCServer_listener];
  v11 = v8;
  [v10 setDelegate_];
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2232BB000, v12, v13, "PommesSearchService starts listening for new connection", v14, 2u);
    MEMORY[0x223DE0F80](v14, -1, -1);
  }

  [*&v8[v9] resume];
  return v11;
}

id PommesSearchServiceDelegate.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v4, "PommesSearchService stops listening for new connection", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  [*&v1[OBJC_IVAR___PommesSearchXPCServer_listener] invalidate];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PommesSearchServiceDelegate();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t specialized PommesSearchServiceDelegate.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  v4 = [a1 processIdentifier];
  v5 = [a1 serviceName];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.pommes);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v27 = v4;
  v26 = v7;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 67240450;
    *(v13 + 4) = v4;
    *(v13 + 8) = 2080;
    if (v9)
    {
      v15 = v7;
    }

    else
    {
      v15 = 7104878;
    }

    if (v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v28);

    *(v13 + 10) = v17;
    _os_log_impl(&dword_2232BB000, v11, v12, "Process [%{public}d] with service name %s is connecting to PommesSearchService", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x223DE0F80](v14, -1, -1);
    MEMORY[0x223DE0F80](v13, -1, -1);
  }

  v18 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  swift_unknownObjectRelease();
  [a1 resume];

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 67240450;
    *(v21 + 4) = v27;
    *(v21 + 8) = 2080;
    if (v9)
    {
      v23 = v26;
    }

    else
    {
      v23 = 7104878;
    }

    if (!v9)
    {
      v9 = 0xE300000000000000;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v9, &v28);

    *(v21 + 10) = v24;
    _os_log_impl(&dword_2232BB000, v19, v20, "Process [%{public}d] with service name %s is connected to PommesSearchService", v21, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x223DE0F80](v22, -1, -1);
    MEMORY[0x223DE0F80](v21, -1, -1);
  }

  else
  {
  }

  return 1;
}

SiriInformationSearch::UtteranceNormalizer __swiftcall UtteranceNormalizer.init(locale:)(Swift::String_optional locale)
{
  v2 = v1;
  if (locale.value._object)
  {
    countAndFlagsBits = locale.value._countAndFlagsBits;
    object = locale.value._object;
  }

  else
  {
    v5 = [objc_opt_self() sharedPreferences];
    v6 = [v5 languageCode];
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type String and conformance String();
      countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      object = v8;
    }

    else
    {

      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }
  }

  v9 = specialized static UtteranceNormalizer.getTriggerPhrases(locale:)(countAndFlagsBits, object);

  *v2 = countAndFlagsBits;
  v2[1] = object;
  v2[2] = v9;
  result.triggers._rawValue = v12;
  result.locale._object = v11;
  result.locale._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall UtteranceNormalizer.normalize(_:preserveCase:)(Swift::String _, Swift::Bool preserveCase)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = type metadata accessor for CharacterSet();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v11 = *v2;
  v12 = v2[1];
  v53 = v2[2];
  if (!preserveCase)
  {
    goto LABEL_8;
  }

  v54 = v11;
  v55 = v12;
  v58 = 28261;
  v59 = 0xE200000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  if ((BidirectionalCollection<>.starts<A>(with:)() & 1) == 0)
  {
    if (one-time initialization token for pommes == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

  for (i = 1; ; i = 0)
  {
    v54 = countAndFlagsBits;
    v55 = object;

    Locale.init(identifier:)();
    v18 = type metadata accessor for Locale();
    (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
    lazy protocol witness table accessor for type String and conformance String();
    v19 = StringProtocol.lowercased(with:)();
    v21 = v20;
    outlined destroy of Locale?(v10);
    v49 = countAndFlagsBits;
    v50 = object;
    v22 = (i ? object : v21);
    v51 = v22;
    v52 = v19;
    v23 = i ? countAndFlagsBits : v19;
    v45 = v23;

    v10 = *(v53 + 16);
    if (!v10)
    {
      break;
    }

    object = 0;
    v24 = (v53 + 40);
    while (object < *(v53 + 16))
    {
      v26 = *(v24 - 1);
      v25 = *v24;
      v54 = v52;
      v55 = v21;
      v58 = v26;
      v59 = v25;
      lazy protocol witness table accessor for type String and conformance String();
      countAndFlagsBits = lazy protocol witness table accessor for type String and conformance String();

      if (BidirectionalCollection<>.starts<A>(with:)())
      {

        v29 = String.count.getter();

        v30 = specialized Collection.dropFirst(_:)(v29, v45, v51);
        v32 = v31;
        v34 = v33;
        v36 = v35;

        v54 = v30;
        v55 = v32;
        v56 = v34;
        v57 = v36;
        v37 = v46;
        static CharacterSet.whitespacesAndNewlines.getter();
        lazy protocol witness table accessor for type Substring and conformance Substring();
        v38 = StringProtocol.trimmingCharacters(in:)();
        v40 = v39;
        (*(v47 + 8))(v37, v48);

        v54 = v38;
        v55 = v40;
        v28 = String.init<A>(_:)();
        v27 = v41;
        goto LABEL_22;
      }

      ++object;
      v24 += 2;
      if (v10 == object)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
LABEL_5:
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.pommes);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2232BB000, v15, v16, "Utterance normalization with case preserved is not supported for non-en locales, falling back to lower case", v17, 2u);
      MEMORY[0x223DE0F80](v17, -1, -1);
    }

LABEL_8:
    ;
  }

LABEL_20:

  v27 = v50;

  v28 = v49;
LABEL_22:
  v42 = v27;
  result._object = v42;
  result._countAndFlagsBits = v28;
  return result;
}

uint64_t UtteranceNormalizer.locale.getter()
{
  v1 = *v0;

  return v1;
}

char *specialized static UtteranceNormalizer.getTriggerPhrases(locale:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedPreferences];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x223DDF550](a1, a2);
    v7 = [v5 localizedTriggerPhraseForLanguageCode_];

    if (v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v15 = MEMORY[0x223DDF550](a1, a2);
    v16 = [v5 localizedCompactTriggerPhraseForLanguageCode_];

    if (v16)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v20 = 0;
    v27[0] = v9;
    v27[1] = v17;
    v27[2] = v19;
    v14 = MEMORY[0x277D84F90];
LABEL_14:
    v21 = &v27[2 * v20];
    while (++v20 != 3)
    {
      v22 = *v21;
      v21 += 2;
      if (v22)
      {
        v23 = String.lowercased()();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
        }

        v25 = *(v14 + 2);
        v24 = *(v14 + 3);
        if (v25 >= v24 >> 1)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v14);
        }

        *(v14 + 2) = v25 + 1;
        *&v14[16 * v25 + 32] = v23;
        goto LABEL_14;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayDestroy();
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2232BB000, v11, v12, "VTPreferences failed to initialize", v13, 2u);
      MEMORY[0x223DE0F80](v13, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v14;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t getEnumTagSinglePayload for UtteranceNormalizer(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for UtteranceNormalizer(uint64_t result, int a2, int a3)
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

uint64_t specialized Sequence.forEach(_:)(unint64_t a1, char *a2)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v50 - v8;
  if (a1 >> 62)
  {
    goto LABEL_159;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    do
    {
      v54 = v6;
      v55 = v9;
      v11 = 0;
      v59 = a1 & 0xFFFFFFFFFFFFFF8;
      v60 = a1 & 0xC000000000000001;
      v51 = a1;
      v58 = a1 + 32;
      v53 = *MEMORY[0x277D5EC68];
      v52 = *MEMORY[0x277D5EBF0];
      v56 = 0x80000002234D9AC0;
      v57 = v10;
      while (1)
      {
        if (v60)
        {
          v12 = MEMORY[0x223DDFF80](v11, v51);
          v13 = __OFADD__(v11++, 1);
          if (v13)
          {
            break;
          }

          goto LABEL_7;
        }

        if (v11 >= *(v59 + 16))
        {
          goto LABEL_158;
        }

        v12 = *(v58 + 8 * v11);

        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
          break;
        }

LABEL_7:
        if (UsoEntity_common_MediaItem.isFromArtist()())
        {
          v14 = *v62;
          Hasher.init(_seed:)();
          String.hash(into:)();
          v15 = Hasher._finalize()();
          v9 = v14 + 56;
          v16 = -1 << *(v14 + 32);
          v17 = v15 & ~v16;
          if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
          {
            a1 = ~v16;
            do
            {
              v6 = 0xE800000000000000;
              switch(*(*(v14 + 48) + v17))
              {
                case 1:
                case 3:
                case 5:
                case 6:
                case 0xC:
                case 0xE:
                  break;
                case 2:
                  v6 = 0xE90000000000006DLL;
                  break;
                case 4:
                  v6 = 0xE700000000000000;
                  break;
                case 7:
                  v6 = 0xEB00000000646564;
                  break;
                case 8:
                  v6 = 0xE900000000000079;
                  break;
                case 9:
                  v6 = v56;
                  break;
                case 0xA:
                  v6 = 0xE400000000000000;
                  break;
                case 0xB:
                  v6 = 0xE500000000000000;
                  break;
                case 0xD:
                  v6 = 0xEB00000000657461;
                  break;
                default:
                  goto LABEL_156;
              }

              v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v18)
              {
                goto LABEL_139;
              }

              v17 = (v17 + 1) & a1;
            }

            while (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
          }

          a1 = v62;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v61[0] = *a1;
          v6 = v61;
          v20 = 0;
LABEL_138:
          specialized _NativeSet.insertNew(_:at:isUnique:)(v20, v17, isUniquelyReferenced_nonNull_native);
          *a1 = v61[0];
LABEL_139:

          v10 = v57;
          if (v11 == v57)
          {
            return result;
          }
        }

        else
        {
          if (UsoEntity_common_MediaItem.isFromSong()())
          {
            v21 = *v62;
            Hasher.init(_seed:)();
            String.hash(into:)();
            v22 = Hasher._finalize()();
            v9 = v21 + 56;
            v23 = -1 << *(v21 + 32);
            v17 = v22 & ~v23;
            if ((*(v21 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
            {
              a1 = ~v23;
              do
              {
                v6 = 0xEA00000000007473;
                switch(*(*(v21 + 48) + v17))
                {
                  case 1:
                    goto LABEL_156;
                  case 2:
                    v6 = 0xE90000000000006DLL;
                    break;
                  case 3:
                    v6 = 0xE800000000000000;
                    break;
                  case 4:
                    v6 = 0xE700000000000000;
                    break;
                  case 5:
                    v6 = 0xE800000000000000;
                    break;
                  case 6:
                    v6 = 0xE800000000000000;
                    break;
                  case 7:
                    v6 = 0xEB00000000646564;
                    break;
                  case 8:
                    v6 = 0xE900000000000079;
                    break;
                  case 9:
                    v6 = v56;
                    break;
                  case 0xA:
                    v6 = 0xE400000000000000;
                    break;
                  case 0xB:
                    v6 = 0xE500000000000000;
                    break;
                  case 0xC:
                    v6 = 0xE800000000000000;
                    break;
                  case 0xD:
                    v6 = 0xEB00000000657461;
                    break;
                  case 0xE:
                    v6 = 0xE800000000000000;
                    break;
                  default:
                    break;
                }

                v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v24)
                {
                  goto LABEL_139;
                }

                v17 = (v17 + 1) & a1;
              }

              while (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
            }

            a1 = v62;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v61[0] = *a1;
            v6 = v61;
            v20 = 1;
            goto LABEL_138;
          }

          if (UsoEntity_common_MediaItem.isFromAlbum()())
          {
            v25 = *v62;
            Hasher.init(_seed:)();
            String.hash(into:)();
            v26 = Hasher._finalize()();
            v9 = v25 + 56;
            v27 = -1 << *(v25 + 32);
            v17 = v26 & ~v27;
            if ((*(v25 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
            {
              a1 = ~v27;
              do
              {
                v6 = 0xEA00000000007473;
                switch(*(*(v25 + 48) + v17))
                {
                  case 1:
                    v6 = 0xE800000000000000;
                    break;
                  case 2:
                    goto LABEL_156;
                  case 3:
                    v6 = 0xE800000000000000;
                    break;
                  case 4:
                    v6 = 0xE700000000000000;
                    break;
                  case 5:
                    v6 = 0xE800000000000000;
                    break;
                  case 6:
                    v6 = 0xE800000000000000;
                    break;
                  case 7:
                    v6 = 0xEB00000000646564;
                    break;
                  case 8:
                    v6 = 0xE900000000000079;
                    break;
                  case 9:
                    v6 = v56;
                    break;
                  case 0xA:
                    v6 = 0xE400000000000000;
                    break;
                  case 0xB:
                    v6 = 0xE500000000000000;
                    break;
                  case 0xC:
                    v6 = 0xE800000000000000;
                    break;
                  case 0xD:
                    v6 = 0xEB00000000657461;
                    break;
                  case 0xE:
                    v6 = 0xE800000000000000;
                    break;
                  default:
                    break;
                }

                v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v28)
                {
                  goto LABEL_139;
                }

                v17 = (v17 + 1) & a1;
              }

              while (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
            }

            a1 = v62;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v61[0] = *a1;
            v6 = v61;
            v20 = 2;
            goto LABEL_138;
          }

          if (UsoEntity_common_MediaItem.isRecommended()())
          {
            v29 = *v62;
            Hasher.init(_seed:)();
            String.hash(into:)();
            v30 = Hasher._finalize()();
            v9 = v29 + 56;
            v31 = -1 << *(v29 + 32);
            v17 = v30 & ~v31;
            if ((*(v29 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
            {
              a1 = ~v31;
              do
              {
                v6 = 0xEA00000000007473;
                switch(*(*(v29 + 48) + v17))
                {
                  case 1:
                    v6 = 0xE800000000000000;
                    break;
                  case 2:
                    v6 = 0xE90000000000006DLL;
                    break;
                  case 3:
                    v6 = 0xE800000000000000;
                    break;
                  case 4:
                    v6 = 0xE700000000000000;
                    break;
                  case 5:
                    v6 = 0xE800000000000000;
                    break;
                  case 6:
                    v6 = 0xE800000000000000;
                    break;
                  case 7:
                    goto LABEL_156;
                  case 8:
                    v6 = 0xE900000000000079;
                    break;
                  case 9:
                    v6 = v56;
                    break;
                  case 0xA:
                    v6 = 0xE400000000000000;
                    break;
                  case 0xB:
                    v6 = 0xE500000000000000;
                    break;
                  case 0xC:
                    v6 = 0xE800000000000000;
                    break;
                  case 0xD:
                    v6 = 0xEB00000000657461;
                    break;
                  case 0xE:
                    v6 = 0xE800000000000000;
                    break;
                  default:
                    break;
                }

                v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v32)
                {
                  goto LABEL_139;
                }

                v17 = (v17 + 1) & a1;
              }

              while (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
            }

            a1 = v62;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v61[0] = *a1;
            v6 = v61;
            v20 = 7;
            goto LABEL_138;
          }

          if (UsoEntity_common_MediaItem.isAffinity()())
          {
            v33 = *v62;
            Hasher.init(_seed:)();
            String.hash(into:)();
            v34 = Hasher._finalize()();
            v9 = v33 + 56;
            v35 = -1 << *(v33 + 32);
            v17 = v34 & ~v35;
            if ((*(v33 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
            {
              a1 = ~v35;
              do
              {
                v6 = 0xE800000000000000;
                switch(*(*(v33 + 48) + v17))
                {
                  case 1:
                  case 3:
                  case 5:
                  case 0xC:
                  case 0xE:
                    break;
                  case 2:
                    v6 = 0xE90000000000006DLL;
                    break;
                  case 4:
                    v6 = 0xE700000000000000;
                    break;
                  case 6:
                    goto LABEL_156;
                  case 7:
                    v6 = 0xEB00000000646564;
                    break;
                  case 8:
                    v6 = 0xE900000000000079;
                    break;
                  case 9:
                    v6 = v56;
                    break;
                  case 0xA:
                    v6 = 0xE400000000000000;
                    break;
                  case 0xB:
                    v6 = 0xE500000000000000;
                    break;
                  case 0xD:
                    v6 = 0xEB00000000657461;
                    break;
                  default:
                    v6 = 0xEA00000000007473;
                    break;
                }

                v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v36)
                {
                  goto LABEL_139;
                }

                v17 = (v17 + 1) & a1;
              }

              while (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
            }

            a1 = v62;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v61[0] = *a1;
            v6 = v61;
            v20 = 6;
            goto LABEL_138;
          }

          if (UsoEntity_common_MediaItem.isDiscover()())
          {
            v37 = *v62;
            Hasher.init(_seed:)();
            String.hash(into:)();
            v38 = Hasher._finalize()();
            a1 = v37 + 56;
            v39 = -1 << *(v37 + 32);
            v17 = v38 & ~v39;
            if ((*(v37 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
            {
              v9 = ~v39;
              do
              {
                v6 = 0xEA00000000007473;
                switch(*(*(v37 + 48) + v17))
                {
                  case 1:
                    v6 = 0xE800000000000000;
                    break;
                  case 2:
                    v6 = 0xE90000000000006DLL;
                    break;
                  case 3:
                    v6 = 0xE800000000000000;
                    break;
                  case 4:
                    v6 = 0xE700000000000000;
                    break;
                  case 5:
                    v6 = 0xE800000000000000;
                    break;
                  case 6:
                    v6 = 0xE800000000000000;
                    break;
                  case 7:
                    v6 = 0xEB00000000646564;
                    break;
                  case 8:
                    goto LABEL_156;
                  case 9:
                    v6 = v56;
                    break;
                  case 0xA:
                    v6 = 0xE400000000000000;
                    break;
                  case 0xB:
                    v6 = 0xE500000000000000;
                    break;
                  case 0xC:
                    v6 = 0xE800000000000000;
                    break;
                  case 0xD:
                    v6 = 0xEB00000000657461;
                    break;
                  case 0xE:
                    v6 = 0xE800000000000000;
                    break;
                  default:
                    break;
                }

                v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v40)
                {
                  goto LABEL_139;
                }

                v17 = (v17 + 1) & v9;
              }

              while (((*(a1 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
            }

            a1 = v62;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v61[0] = *a1;
            v6 = v61;
            v20 = 8;
            goto LABEL_138;
          }

          if (UsoEntity_common_MediaItem.isAddToUnspecifiedPlaylist()())
          {
            v41 = *v62;
            Hasher.init(_seed:)();
            String.hash(into:)();
            v42 = Hasher._finalize()();
            v9 = v41 + 56;
            v43 = -1 << *(v41 + 32);
            v17 = v42 & ~v43;
            if ((*(v41 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
            {
              a1 = ~v43;
              while (2)
              {
                v6 = 0xEA00000000007473;
                switch(*(*(v41 + 48) + v17))
                {
                  case 1:
                    v6 = 0xE800000000000000;
                    goto LABEL_135;
                  case 2:
                    v6 = 0xE90000000000006DLL;
                    goto LABEL_135;
                  case 3:
                    v6 = 0xE800000000000000;
                    goto LABEL_135;
                  case 4:
                    v6 = 0xE700000000000000;
                    goto LABEL_135;
                  case 5:
                    v6 = 0xE800000000000000;
                    goto LABEL_135;
                  case 6:
                    v6 = 0xE800000000000000;
                    goto LABEL_135;
                  case 7:
                    v6 = 0xEB00000000646564;
                    goto LABEL_135;
                  case 8:
                    v6 = 0xE900000000000079;
                    goto LABEL_135;
                  case 9:
LABEL_156:

                    goto LABEL_139;
                  case 0xA:
                    v6 = 0xE400000000000000;
                    goto LABEL_135;
                  case 0xB:
                    v6 = 0xE500000000000000;
                    goto LABEL_135;
                  case 0xC:
                    v6 = 0xE800000000000000;
                    goto LABEL_135;
                  case 0xD:
                    v6 = 0xEB00000000657461;
                    goto LABEL_135;
                  case 0xE:
                    v6 = 0xE800000000000000;
                    goto LABEL_135;
                  default:
LABEL_135:
                    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v44)
                    {
                      goto LABEL_139;
                    }

                    v17 = (v17 + 1) & a1;
                    if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
                    {
                      break;
                    }

                    continue;
                }

                break;
              }
            }

            a1 = v62;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v61[0] = *a1;
            v6 = v61;
            v20 = 9;
            goto LABEL_138;
          }

          v6 = v12;
          if (dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter())
          {

            v6 = v12;
            if (dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter())
            {
              v9 = v55;
              dispatch thunk of UsoEntity_common_ListPosition.definedValue.getter();

              v6 = type metadata accessor for UsoEntity_common_ListPosition.DefinedValues();
              a1 = *(v6 - 1);
              if ((*(a1 + 48))(v9, 1, v6) != 1)
              {
                v45 = v9;
                v9 = v54;
                outlined init with copy of MediaUserStateCenter?(v45, v54, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
                v46 = (*(a1 + 88))(v9, v6);
                if (v46 == v53)
                {
                  v47 = 12;
LABEL_149:
                  outlined destroy of MediaUserStateCenter?(v55, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
                  v48 = v47;
                  v6 = v62;
                  specialized Set._Variant.insert(_:)(v61, v48);
                  goto LABEL_150;
                }

                if (v46 == v52)
                {
                  v47 = 10;
                  goto LABEL_149;
                }

                v49 = *(a1 + 8);
                a1 += 8;
                v49(v54, v6);
                v9 = v55;
              }

              outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
            }
          }

LABEL_150:

          if (v11 == v10)
          {
            return result;
          }
        }
      }

      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      result = __CocoaSet.count.getter();
      v10 = result;
    }

    while (result);
  }

  return result;
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result, uint64_t *a2)
{
  v4 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DDFF80](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v9 = v7;
        closure #2 in closure #1 in AudioUsoIntent.modifiers.getter(&v9, a2);

        if (!v2)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = __CocoaSet.count.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t AudioUsoIntent.__allocating_init(userDialogAct:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JSONEncodingOptions();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v55 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v60 = a1;
  v18 = a1;
  v20 = v19;
  v22 = v21;
  outlined init with copy of MediaUserStateCenter?(v18, v10, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  if ((*(v20 + 48))(v10, 1, v22) != 1)
  {
    (*(v20 + 32))(v17, v10, v22);
    if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
    {
      v30 = (*(v2 + 1000))();
      outlined destroy of MediaUserStateCenter?(v60, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      (*(v20 + 8))(v17, v22);
      swift_beginAccess();
      result = v30;
      *(v30 + 138) = 0;
      return result;
    }

    if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
    {
      v31 = (*(v2 + 1000))();
      outlined destroy of MediaUserStateCenter?(v60, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      (*(v20 + 8))(v17, v22);
      swift_beginAccess();
      result = v31;
      *(v31 + 138) = 1;
      return result;
    }

    if (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
    {
      v32 = (*(v2 + 1000))();
      outlined destroy of MediaUserStateCenter?(v60, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      (*(v20 + 8))(v17, v22);
      swift_beginAccess();
      result = v32;
      *(v32 + 138) = 2;
      return result;
    }

    if ((Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter() & 1) == 0)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.pommes);
      (*(v20 + 16))(v14, v17, v22);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v57 = v36;
        v37 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v61[0] = v56;
        v55 = v37;
        *v37 = 136315138;
        JSONEncodingOptions.init()();
        _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, MEMORY[0x277D5DB80], MEMORY[0x277D5DB70]);
        v38 = v22;
        v42 = Message.jsonString(options:)();
        v44 = v43;
        (*(v58 + 8))(v7, v59);
        v45 = *(v20 + 8);
        v45(v14, v38);
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v61);

        v47 = v55;
        *(v55 + 1) = v46;
        _os_log_impl(&dword_2232BB000, v35, v57, "AudioUsoIntent#init unexpected userDialogAct %s", v47, 0xCu);
        v48 = v56;
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x223DE0F80](v48, -1, -1);
        MEMORY[0x223DE0F80](v47, -1, -1);

        outlined destroy of MediaUserStateCenter?(v60, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
        v45(v17, v38);
      }

      else
      {

        outlined destroy of MediaUserStateCenter?(v60, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
        v39 = *(v20 + 8);
        v39(v14, v22);
        v39(v17, v22);
      }

      return 0;
    }

    v33 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
    if (v33 >> 62)
    {
      v49 = v33;
      v50 = __CocoaSet.count.getter();
      v33 = v49;
      if (v50)
      {
        goto LABEL_22;
      }
    }

    else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      if ((v33 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x223DDFF80](0);
        goto LABEL_25;
      }

      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v40 = *(v33 + 32);

LABEL_25:

        v41 = (*(v2 + 1008))(v40);
        outlined destroy of MediaUserStateCenter?(v60, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
        (*(v20 + 8))(v17, v22);
        return v41;
      }

      __break(1u);
      goto LABEL_34;
    }

    if (one-time initialization token for pommes == -1)
    {
LABEL_28:
      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.pommes);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_2232BB000, v52, v53, "tasks extracted from the userDialogAct is empty", v54, 2u);
        MEMORY[0x223DE0F80](v54, -1, -1);
      }

      outlined destroy of MediaUserStateCenter?(v60, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      (*(v20 + 8))(v17, v22);
      return 0;
    }

LABEL_34:
    swift_once();
    goto LABEL_28;
  }

  v23 = outlined destroy of MediaUserStateCenter?(v10, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v24 = (*(v2 + 1000))(v23);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.pommes);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2232BB000, v26, v27, "AudioUsoIntent#init received nil userDialogAct", v28, 2u);
    MEMORY[0x223DE0F80](v28, -1, -1);
  }

  outlined destroy of MediaUserStateCenter?(v60, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  return v24;
}

unint64_t AudioUsoIntent.UsoNamespace.rawValue.getter(char a1)
{
  result = 0x616C50616964656DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x6E6547636973756DLL;
      break;
    case 4:
    case 20:
      result = 0xD000000000000013;
      break;
    case 5:
    case 7:
    case 22:
    case 24:
      result = 0xD000000000000014;
      break;
    case 6:
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x7473696C79616C70;
      break;
    case 10:
      result = 0x5474736163646F70;
      break;
    case 11:
      result = 0x696669746E656469;
      break;
    case 12:
      result = 1701605234;
      break;
    case 13:
      result = 0x6C646E7542707061;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x54776F6853707061;
      break;
    case 18:
      result = 0x54776F6853707061;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0xD000000000000012;
      break;
    case 23:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0x64695F6D657469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AudioUsoIntent.__allocating_init()()
{
  v0 = swift_allocObject();
  AudioUsoIntent.init()();
  return v0;
}

double AudioUsoIntent.init()()
{
  *(v0 + 128) = 0;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 136) = 529;
  *(v0 + 138) = 4;
  *(v0 + 144) = xmmword_2234D45D0;
  *(v0 + 160) = vdupq_n_s64(1uLL);
  *(v0 + 176) = 0;
  *(v0 + 184) = 7453;
  *(v0 + 192) = xmmword_2234D45D0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0;
  *(v0 + 280) = 4;
  *(v0 + 288) = 1;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  *(v0 + 344) = 1;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 2572;
  *(v0 + 392) = 0;
  *(v0 + 400) = 3;
  *(v0 + 416) = 0;
  *(v0 + 424) = 0;
  *(v0 + 408) = 0;
  *(v0 + 432) = 3;
  *(v0 + 440) = 0;
  *(v0 + 448) = 256;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  return result;
}

uint64_t AudioUsoIntent.__allocating_init(task:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AudioUsoIntent.init(task:)(a1);
  return v2;
}

uint64_t AudioUsoIntent.init(task:)(uint64_t a1)
{
  *(v1 + 16) = 0u;
  *(v1 + 136) = 529;
  *(v1 + 128) = 0;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 138) = 4;
  *(v1 + 144) = xmmword_2234D45D0;
  *(v1 + 160) = vdupq_n_s64(1uLL);
  *(v1 + 176) = 0;
  *(v1 + 184) = 7453;
  *(v1 + 192) = xmmword_2234D45D0;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0;
  *(v1 + 280) = 4;
  *(v1 + 288) = 1;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  *(v1 + 344) = 1;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 2572;
  *(v1 + 392) = 0;
  *(v1 + 400) = 3;
  *(v1 + 416) = 0;
  *(v1 + 424) = 0;
  *(v1 + 408) = 0;
  *(v1 + 432) = 3;
  *(v1 + 440) = 0;
  *(v1 + 448) = 256;
  *(v1 + 456) = 0;
  *(v1 + 464) = 0;
  if (a1)
  {
    *(v1 + 144) = a1;

    v2 = UsoTask.verbString.getter();
    v4 = specialized CommonAudio.Verb.init(rawValue:)(v2, v3);
    swift_beginAccess();
    *(v1 + 136) = v4;
    v5 = UsoTask.baseEntityAsString.getter();
    v7 = v6;
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    v9 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CommonAudio.UsoEntity.init(rawValue:), v8);

    if (v9 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    swift_beginAccess();
    *(v1 + 137) = v11;
    static UsoTask_CodegenConverter.convert(task:)();

    outlined init with copy of MediaUserStateCenter?(&v16, &v14, &_sypSgMd, &_sypSgMR);
    if (*(&v15 + 1))
    {
      type metadata accessor for UsoTask_play_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v16, &_sypSgMd, &_sypSgMR);
        *(v1 + 16) = v13;
LABEL_67:

        return v1;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v14, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v16, &v14, &_sypSgMd, &_sypSgMR);
    if (*(&v15 + 1))
    {
      type metadata accessor for UsoTask_play_uso_NoEntity();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v16, &_sypSgMd, &_sypSgMR);
        *(v1 + 24) = v13;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v14, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v16, &v14, &_sypSgMd, &_sypSgMR);
    if (*(&v15 + 1))
    {
      type metadata accessor for UsoTask_resume_uso_NoEntity();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v16, &_sypSgMd, &_sypSgMR);
        *(v1 + 32) = v13;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v14, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v16, &v14, &_sypSgMd, &_sypSgMR);
    if (*(&v15 + 1))
    {
      type metadata accessor for UsoTask_update_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v16, &_sypSgMd, &_sypSgMR);
        *(v1 + 40) = v13;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v14, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v16, &v14, &_sypSgMd, &_sypSgMR);
    if (*(&v15 + 1))
    {
      type metadata accessor for UsoTask_summarise_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v16, &_sypSgMd, &_sypSgMR);
        *(v1 + 48) = v13;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v14, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v16, &v14, &_sypSgMd, &_sypSgMR);
    if (*(&v15 + 1))
    {
      type metadata accessor for UsoTask_request_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v16, &_sypSgMd, &_sypSgMR);
        *(v1 + 56) = v13;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v14, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v16, &v14, &_sypSgMd, &_sypSgMR);
    if (*(&v15 + 1))
    {
      type metadata accessor for UsoTask_subscribe_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v16, &_sypSgMd, &_sypSgMR);
        *(v1 + 64) = v13;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v14, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v16, &v14, &_sypSgMd, &_sypSgMR);
    if (*(&v15 + 1))
    {
      type metadata accessor for UsoTask_follow_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v16, &_sypSgMd, &_sypSgMR);
        *(v1 + 72) = v13;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v14, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v16, &v14, &_sypSgMd, &_sypSgMR);
    if (*(&v15 + 1))
    {
      type metadata accessor for UsoTask_start_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v16, &_sypSgMd, &_sypSgMR);
        *(v1 + 80) = v13;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v14, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v16, &v14, &_sypSgMd, &_sypSgMR);
    if (*(&v15 + 1))
    {
      type metadata accessor for UsoTask_noVerb_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v16, &_sypSgMd, &_sypSgMR);
        *(v1 + 88) = v13;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v14, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v16, &v14, &_sypSgMd, &_sypSgMR);
    if (*(&v15 + 1))
    {
      type metadata accessor for UsoTask_noVerb_common_App();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v16, &_sypSgMd, &_sypSgMR);
        *(v1 + 96) = v13;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v14, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v16, &v14, &_sypSgMd, &_sypSgMR);
    if (*(&v15 + 1))
    {
      type metadata accessor for UsoTask_like_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v16, &_sypSgMd, &_sypSgMR);
        *(v1 + 104) = v13;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v14, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v16, &v14, &_sypSgMd, &_sypSgMR);
    if (*(&v15 + 1))
    {
      type metadata accessor for UsoTask_unlike_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v16, &_sypSgMd, &_sypSgMR);
        *(v1 + 112) = v13;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v14, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v16, &v14, &_sypSgMd, &_sypSgMR);
    if (*(&v15 + 1))
    {
      type metadata accessor for UsoTask_shuffle_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v16, &_sypSgMd, &_sypSgMR);
        *(v1 + 120) = v13;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v14, &_sypSgMd, &_sypSgMR);
    }

    v14 = v16;
    v15 = v17;
    if (!*(&v17 + 1))
    {
      outlined destroy of MediaUserStateCenter?(&v14, &_sypSgMd, &_sypSgMR);
      return v1;
    }

    type metadata accessor for UsoTask_repeat_common_MediaItem();
    if (swift_dynamicCast())
    {
      *(v1 + 128) = v13;
      goto LABEL_67;
    }
  }

  return v1;
}

uint64_t AudioUsoIntent.referenceMediaItem.getter()
{
  v1 = v0[19];
  v2 = v1;
  if (v1 == 1)
  {
    v2 = closure #1 in AudioUsoIntent.referenceMediaItem.getter(v0);
    v3 = v0[19];
    v0[19] = v2;

    _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v3);
  }

  _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOy_0(v1);
  return v2;
}

uint64_t closure #1 in AudioUsoIntent.referenceMediaItem.getter(void *a1)
{
  if (a1[2])
  {
    goto LABEL_2;
  }

  if (!a1[3] && !a1[4])
  {
    if (a1[5])
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
      goto LABEL_3;
    }

    if (!a1[6])
    {
      if (a1[7])
      {

        dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
        goto LABEL_3;
      }

      if (a1[8] || a1[9])
      {
        goto LABEL_15;
      }

      if (!a1[10])
      {
        if (a1[11])
        {

          dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
          goto LABEL_3;
        }

        if (a1[12])
        {
          return 0;
        }

        if (a1[13] || a1[14])
        {
LABEL_15:

          dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
          goto LABEL_3;
        }

        if (!a1[15] && !a1[16])
        {
          return 0;
        }
      }
    }

LABEL_2:

    dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();
LABEL_3:

    return v2;
  }

  return 0;
}

uint64_t AudioUsoIntent.userEntities.getter()
{
  v1 = v0[20];
  v2 = v1;
  if (v1 == 1)
  {
    v2 = closure #1 in AudioUsoIntent.userEntities.getter(v0);
    v3 = v0[20];
    v0[20] = v2;

    outlined consume of [CodeGenListEntry<UsoEntity_common_UserEntity>]??(v3);
  }

  outlined copy of [CodeGenListEntry<UsoEntity_common_UserEntity>]??(v1);
  return v2;
}

uint64_t closure #1 in AudioUsoIntent.userEntities.getter(void *a1)
{
  if (!a1[2] && !a1[3] && !a1[4])
  {
    if (a1[5])
    {

      v1 = dispatch thunk of Uso_VerbTemplate_ReferenceTarget.userEntities.getter();
      goto LABEL_5;
    }

    if (!a1[6])
    {
      if (a1[7])
      {

        v1 = dispatch thunk of Uso_VerbTemplate_ReferenceSelect.userEntities.getter();
        goto LABEL_5;
      }

      if (a1[8] || a1[9])
      {
LABEL_14:

        v1 = dispatch thunk of Uso_VerbTemplate_Reference.userEntities.getter();
        goto LABEL_5;
      }

      if (!a1[10])
      {
        if (a1[11] || a1[12])
        {

          v1 = dispatch thunk of Uso_VerbTemplate_NoVerb.userEntities.getter();
          goto LABEL_5;
        }

        if (a1[13] || a1[14])
        {
          goto LABEL_14;
        }

        if (!a1[15] && !a1[16])
        {
          return 0;
        }
      }
    }
  }

  v1 = dispatch thunk of Uso_VerbTemplate_ReferenceControl.userEntities.getter();
LABEL_5:
  v2 = v1;

  return v2;
}

uint64_t AudioUsoIntent.targetMediaItem.getter()
{
  v1 = *(v0 + 168);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = *(v0 + 40);
    if (v2)
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();

      v2 = v5;
      v3 = *(v0 + 168);
    }

    else
    {
      v3 = 1;
    }

    *(v0 + 168) = v2;

    _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v3);
  }

  _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOy_0(v1);
  return v2;
}

uint64_t AudioUsoIntent.rootItems.getter()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.rootItems.getter();
    *(v0 + 176) = v1;
  }

  return v1;
}

uint64_t closure #1 in AudioUsoIntent.rootItems.getter()
{
  v0 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  if (AudioUsoIntent.referenceMediaItem.getter())
  {

    MEMORY[0x223DDF820](v1);
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v0 = v4;
  }

  if (AudioUsoIntent.targetMediaItem.getter())
  {

    MEMORY[0x223DDF820](v2);
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v4;
  }

  return v0;
}

uint64_t AudioUsoIntent.mediaType.getter()
{
  result = *(v0 + 184);
  if (result == 29)
  {
    result = closure #1 in AudioUsoIntent.mediaType.getter();
    *(v0 + 184) = result;
  }

  return result;
}

uint64_t closure #1 in AudioUsoIntent.mediaType.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - v4;
  if (AudioUsoIntent.referenceMediaItem.getter())
  {
    if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
    {
      dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
    }

    else
    {
      v6 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
      (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    }

LABEL_11:
    v7 = specialized static CommonAudio.MediaType.from(_:)(v5);

    outlined destroy of MediaUserStateCenter?(v5, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    return v7;
  }

  if (AudioUsoIntent.targetMediaItem.getter())
  {
    if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
    {
      dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
    }

    else
    {
      v8 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
      (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    }

    v5 = v3;
    goto LABEL_11;
  }

  return 28;
}

uint64_t AudioUsoIntent.targetMediaType.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  result = *(v0 + 185);
  if (result == 29)
  {
    if (AudioUsoIntent.targetMediaItem.getter())
    {
      if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
      {
        dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
      }

      else
      {
        v6 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
        (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
      }

      v7 = specialized static CommonAudio.MediaType.from(_:)(v4);

      outlined destroy of MediaUserStateCenter?(v4, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      result = v7;
    }

    else
    {
      result = 28;
    }

    *(v1 + 185) = result;
  }

  return result;
}

char *AudioUsoIntent.entities.getter()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, closure #1 in closure #1 in AudioUsoIntent.entities.getter);
    *(v0 + 192) = v1;
  }

  return v1;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.entities.getter()
{
  v0 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  if (v1)
  {
    v2 = v0;
    v3 = v1;

    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(dispatch thunk of CodeGenBase.usoIdentifiers.getter() + 16);

  result = 0;
  if (v5 && !v6)
  {
    if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
    {

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t AudioUsoIntent.resolvedReference.getter()
{
  v1 = *(v0 + 200);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = closure #1 in AudioUsoIntent.resolvedReference.getter();
    v3 = *(v0 + 200);
    *(v0 + 200) = v2;

    _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v3);
  }

  _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOy_0(v1);
  return v2;
}

uint64_t closure #1 in AudioUsoIntent.resolvedReference.getter()
{
  v0 = AudioUsoIntent.rootItems.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_16:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223DDFF80](v4, v1);
      if (__OFADD__(v4, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v6 = *(v1 + 8 * v4 + 32);

      if (__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }
    }

    v7 = specialized UsoEntity_common_MediaItem.findFirst(options:with:)(v5, v6);

    ++v4;
    if (v7)
    {
      goto LABEL_14;
    }
  }

  v7 = 0;
LABEL_14:

  return v7;
}

unint64_t AudioUsoIntent.disambiguationEntities.getter()
{
  if (*(v0 + 208))
  {
    v1 = *(v0 + 208);
  }

  else
  {
    v2 = AudioUsoIntent.rootItems.getter();
    v1 = specialized Sequence.flatMap<A>(_:)(v2, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.disambiguationEntities.getter, 0);

    *(v0 + 208) = v1;
  }

  return v1;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.disambiguationEntities.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v11 = result;
  v21 = *(result + 16);
  if (!v21)
  {
LABEL_20:

    return 0;
  }

  HIDWORD(v20) = v9;
  v12 = 0;
  v13 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v14 = (v1 + 8);
  while (1)
  {
    if (v12 >= *(v11 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v1 + 16))(v3, v13 + *(v1 + 72) * v12, v0);
    v15 = UsoIdentifier.namespace.getter();
    if (!v16)
    {
LABEL_8:
      result = (*v14)(v3, v0);
      goto LABEL_9;
    }

    if (v15 == 1701605234 && v16 == 0xE400000000000000)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if (UsoIdentifier.value.getter() == 0x6769626D61736964 && v18 == 0xEE006E6F69746175)
    {
      break;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v14)(v3, v0);
    if (v19)
    {
      goto LABEL_23;
    }

LABEL_9:
    if (v21 == ++v12)
    {
      goto LABEL_20;
    }
  }

  (*v14)(v3, v0);
LABEL_23:

  return (v20 & 0x100000000) == 0;
}

uint64_t AudioUsoIntent.apps.getter()
{
  if (*(v0 + 216))
  {
    v1 = *(v0 + 216);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.apps.getter(v0);
    *(v0 + 216) = v1;
  }

  return v1;
}

uint64_t closure #1 in AudioUsoIntent.apps.getter(uint64_t a1)
{
  if (*(a1 + 96) && (, dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter(), , v11))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_2234D0FE0;
    *(v1 + 32) = v11;
  }

  else
  {
    v2 = AudioUsoIntent.rootItems.getter();
    v3 = v2;
    v12 = MEMORY[0x277D84F90];
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_22:
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v1 = MEMORY[0x277D84F90];
    while (v5 != v6)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223DDFF80](v6, v3);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_21;
        }

        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v8 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

      ++v6;
      if (v8)
      {
        MEMORY[0x223DDF820](v9);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = v12;
        v6 = v7;
      }
    }
  }

  return v1;
}

char *AudioUsoIntent.artists.getter()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 224);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, closure #1 in closure #1 in AudioUsoIntent.artists.getter);
    *(v0 + 224) = v1;
  }

  return v1;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.artists.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v54);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v52 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v10);
  v56 = &v47 - v13;
  v14 = type metadata accessor for UsoIdentifier();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  v57 = v6;
  v55 = v12;
  if (v19)
  {
    v20 = v18;
    v21 = v19;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v20 & 0xFFFFFFFFFFFFLL;
    }

    v23 = v22 == 0;
  }

  else
  {
    v23 = 1;
  }

  v53 = a1;
  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v25 = result;
  v26 = *(result + 16);
  if (!v26)
  {

    v36 = v56;
    v35 = v57;
    if (!v23)
    {
LABEL_23:
      LODWORD(v60) = 1;
      goto LABEL_30;
    }

    return 0;
  }

  v49 = v23;
  v50 = v3;
  v51 = v2;
  v27 = 0;
  v60 = result + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v58 = 0x80000002234D9630;
  v59 = 0x80000002234D9670;
  v28 = (v15 + 8);
  while (1)
  {
    if (v27 >= *(v25 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v15 + 16))(v17, v60 + *(v15 + 72) * v27, v14);
    v29 = UsoIdentifier.namespace.getter();
    if (v30)
    {
      if (v29 == 0xD000000000000012 && v30 == v59)
      {

LABEL_25:

        (*v28)(v17, v14);
        goto LABEL_28;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        goto LABEL_25;
      }
    }

    v32 = UsoIdentifier.namespace.getter();
    if (!v33)
    {
      result = (*v28)(v17, v14);
      goto LABEL_9;
    }

    if (v32 == 0xD000000000000012 && v33 == v58)
    {
      break;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v28)(v17, v14);
    if (v34)
    {
      goto LABEL_27;
    }

LABEL_9:
    if (v26 == ++v27)
    {

      v3 = v50;
      v2 = v51;
      v36 = v56;
      v35 = v57;
      if (v49)
      {
        return 0;
      }

      goto LABEL_23;
    }
  }

  (*v28)(v17, v14);
LABEL_27:

LABEL_28:
  v3 = v50;
  v2 = v51;
  v36 = v56;
  v35 = v57;
  if (v49)
  {
    return 0;
  }

  LODWORD(v60) = 0;
LABEL_30:
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v36, 1, 1, v2);
  }

  v37 = v55;
  (*(v3 + 104))(v55, *MEMORY[0x277D5EDC0], v2);
  (*(v3 + 56))(v37, 0, 1, v2);
  v38 = *(v54 + 48);
  outlined init with copy of MediaUserStateCenter?(v36, v35, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v37, v35 + v38, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v39 = v3;
  v40 = *(v3 + 48);
  if (v40(v35, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v37, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v36, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v40(v35 + v38, 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v35, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v60;
    }

LABEL_38:
    outlined destroy of MediaUserStateCenter?(v35, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    return 0;
  }

  v41 = v52;
  outlined init with copy of MediaUserStateCenter?(v35, v52, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v40(v35 + v38, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v37, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v36, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v39 + 8))(v41, v2);
    goto LABEL_38;
  }

  v42 = v39;
  v43 = v48;
  (*(v39 + 32))(v48, v35 + v38, v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
  v44 = v41;
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  v46 = *(v42 + 8);
  v46(v43, v2);
  outlined destroy of MediaUserStateCenter?(v37, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v36, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v46(v44, v2);
  outlined destroy of MediaUserStateCenter?(v35, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  result = v60;
  if ((v45 & 1) == 0)
  {
    return 0;
  }

  return result;
}

char *AudioUsoIntent.albums.getter()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 232);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, closure #1 in closure #1 in AudioUsoIntent.albums.getter);
    *(v0 + 232) = v1;
  }

  return v1;
}

void *AudioUsoIntent.appPlaylistTitles.getter()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 240);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.appPlaylistTitles.getter();
    *(v0 + 240) = v1;
  }

  return v1;
}

void *closure #1 in AudioUsoIntent.appPlaylistTitles.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v75 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v61 = &v53 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v53 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v63 = &v53 - v16;
  MEMORY[0x28223BE20](v15);
  v62 = &v53 - v17;
  v18 = AudioUsoIntent.rootItems.getter();
  v19 = specialized Sequence.flatMap<A>(_:)(v18, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.appPlaylistTitles.getter, 0);

  if (v19 >> 62)
  {
    goto LABEL_56;
  }

  v64 = v19 & 0xFFFFFFFFFFFFFF8;
  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v53 = v19;
  if (v20)
  {
    v21 = 0;
    v59 = v19 + 32;
    v60 = v19 & 0xC000000000000001;
    v74 = 0x80000002234D9E30;
    v76 = v1 + 16;
    v22 = (v1 + 8);
    v65 = (v1 + 32);
    v70 = (v1 + 48);
    v71 = (v1 + 56);
    v54 = MEMORY[0x277D84F90];
    v73 = 0x80000002234D9610;
    v57 = v11;
    v56 = v14;
    v58 = v20;
    while (1)
    {
      if (v60)
      {
        v24 = MEMORY[0x223DDFF80](v21, v53);
        v25 = __OFADD__(v21, 1);
        v26 = v21 + 1;
        if (v25)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v21 >= *(v64 + 16))
        {
          goto LABEL_55;
        }

        v25 = __OFADD__(v21, 1);
        v26 = v21 + 1;
        if (v25)
        {
          goto LABEL_54;
        }
      }

      v69 = v26;
      v72 = v24;
      v27 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v28 = v27;
      v19 = *(v27 + 16);
      if (v19)
      {
        v14 = 0;
        v11 = (v27 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
        while (v14 < *(v28 + 16))
        {
          (*(v1 + 16))(v7, &v11[*(v1 + 72) * v14], v0);
          v30 = UsoIdentifier.namespace.getter();
          if (v31)
          {
            if (v30 == 0xD000000000000012 && v31 == v74)
            {

LABEL_19:

              v32 = v62;
              (*v65)(v62, v7, v0);
              v33 = 0;
              v34 = v63;
              goto LABEL_21;
            }

            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v29)
            {
              goto LABEL_19;
            }
          }

          ++v14;
          (*v22)(v7, v0);
          if (v19 == v14)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v64 = v19 & 0xFFFFFFFFFFFFFF8;
        v20 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

LABEL_20:

      v33 = 1;
      v32 = v62;
      v34 = v63;
LABEL_21:
      v35 = *v71;
      (*v71)(v32, v33, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v32, v34, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v36 = *v70;
      v37 = (*v70)(v34, 1, v0);
      v66 = v36;
      v67 = v35;
      if (v37 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v32, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v55 = 0;
        v68 = 0;
      }

      else
      {
        v38 = v61;
        (*v65)(v61, v34, v0);
        v55 = UsoIdentifier.value.getter();
        v68 = v39;
        (*v22)(v38, v0);
        outlined destroy of MediaUserStateCenter?(v32, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      }

      v40 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v41 = v40;
      v19 = *(v40 + 16);
      if (v19)
      {
        v14 = 0;
        v11 = (v40 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
        while (v14 < *(v41 + 16))
        {
          (*(v1 + 16))(v75, &v11[*(v1 + 72) * v14], v0);
          v43 = UsoIdentifier.namespace.getter();
          if (v44)
          {
            if (v43 == 0xD000000000000010 && v44 == v73)
            {

LABEL_33:

              v14 = v56;
              (*v65)(v56, v75, v0);
              v45 = 0;
              v11 = v57;
              goto LABEL_35;
            }

            v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v42)
            {
              goto LABEL_33;
            }
          }

          ++v14;
          (*v22)(v75, v0);
          if (v19 == v14)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_53;
      }

LABEL_34:

      v45 = 1;
      v11 = v57;
      v14 = v56;
LABEL_35:
      v67(v14, v45, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v14, v11, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      if (v66(v11, 1, v0) == 1)
      {

        outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v68)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v19 = v61;
        (*v65)(v61, v11, v0);
        v67 = UsoIdentifier.value.getter();
        v47 = v46;

        (*v22)(v19, v0);
        outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v68)
        {
          if (v47)
          {
            v48 = v68;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
            }

            v19 = v54[2];
            v49 = v54[3];
            if (v19 >= v49 >> 1)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v19 + 1, 1, v54);
            }

            v50 = v54;
            v54[2] = v19 + 1;
            v51 = &v50[4 * v19];
            v51[4] = v67;
            v51[5] = v47;
            v51[6] = v55;
            v51[7] = v48;
          }

          else
          {
LABEL_40:
          }

          v23 = v58;
          goto LABEL_6;
        }
      }

      v23 = v58;

LABEL_6:
      v21 = v69;
      if (v69 == v23)
      {
        goto LABEL_51;
      }
    }
  }

  v54 = MEMORY[0x277D84F90];
LABEL_51:

  return v54;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.appPlaylistTitles.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = type metadata accessor for UsoIdentifier();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  v20 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  v50 = v13;
  v51 = v15;
  v49 = v5;
  if (v21)
  {
    v22 = v20;
    v23 = v21;

    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v22 & 0xFFFFFFFFFFFFLL;
    }

    v25 = v24 == 0;
  }

  else
  {
    v25 = 1;
  }

  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v27 = result;
  v54 = *(result + 16);
  if (!v54)
  {

    v34 = v51;
    if (!v25)
    {
LABEL_19:
      LODWORD(v54) = 0;
      goto LABEL_23;
    }

    return 0;
  }

  v44 = v25;
  v45 = v3;
  v46 = v7;
  v47 = v2;
  v28 = 0;
  v29 = result + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v53 = 0x80000002234D9610;
  v30 = (v17 + 8);
  while (1)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v17 + 16))(v19, v29 + *(v17 + 72) * v28, v16);
    v31 = UsoIdentifier.namespace.getter();
    if (!v32)
    {
      result = (*v30)(v19, v16);
      goto LABEL_9;
    }

    if (v31 == 0xD000000000000010 && v32 == v53)
    {
      break;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v30)(v19, v16);
    if (v33)
    {
      goto LABEL_21;
    }

LABEL_9:
    if (v54 == ++v28)
    {

      v7 = v46;
      v2 = v47;
      v3 = v45;
      v34 = v51;
      if (v44)
      {
        return 0;
      }

      goto LABEL_19;
    }
  }

  (*v30)(v19, v16);
LABEL_21:

  v7 = v46;
  v2 = v47;
  v3 = v45;
  v34 = v51;
  if (v44)
  {
    return 0;
  }

  LODWORD(v54) = 1;
LABEL_23:
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v34, 1, 1, v2);
  }

  v35 = v50;
  (*(v3 + 104))(v50, *MEMORY[0x277D5EE18], v2);
  (*(v3 + 56))(v35, 0, 1, v2);
  v36 = *(v49 + 48);
  outlined init with copy of MediaUserStateCenter?(v34, v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v35, &v7[v36], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v37 = *(v3 + 48);
  if (v37(v7, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v35, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v37(&v7[v36], 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v54;
    }

LABEL_31:
    outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    return 0;
  }

  v38 = v48;
  outlined init with copy of MediaUserStateCenter?(v7, v48, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v37(&v7[v36], 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v50, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v3 + 8))(v38, v2);
    goto LABEL_31;
  }

  v39 = v43;
  (*(v3 + 32))(v43, &v7[v36], v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
  v40 = v38;
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v3 + 8);
  v42(v39, v2);
  outlined destroy of MediaUserStateCenter?(v50, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v42(v40, v2);
  outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  result = v54;
  if ((v41 & 1) == 0)
  {
    return 0;
  }

  return result;
}

void *AudioUsoIntent.appShowTitles.getter()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 248);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.appShowTitles.getter();
    *(v0 + 248) = v1;
  }

  return v1;
}

void *closure #1 in AudioUsoIntent.appShowTitles.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v74 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v62 = &v54 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v54 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v64 = &v54 - v16;
  MEMORY[0x28223BE20](v15);
  v63 = &v54 - v17;
  v18 = AudioUsoIntent.rootItems.getter();
  v19 = specialized Sequence.flatMap<A>(_:)(v18, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.appShowTitles.getter, 0);

  if (v19 >> 62)
  {
    goto LABEL_55;
  }

  v65 = v19 & 0xFFFFFFFFFFFFFF8;
  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v54 = v19;
  if (v20)
  {
    v21 = 0;
    v60 = v19 + 32;
    v61 = v19 & 0xC000000000000001;
    v75 = v1 + 16;
    v19 = v1 + 8;
    v66 = (v1 + 32);
    v71 = (v1 + 48);
    v72 = (v1 + 56);
    v55 = MEMORY[0x277D84F90];
    v57 = v14;
    v58 = v11;
    v59 = v20;
    while (1)
    {
      if (v61)
      {
        v73 = MEMORY[0x223DDFF80](v21, v54);
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v21 >= *(v65 + 16))
        {
          goto LABEL_54;
        }

        v73 = *(v60 + 8 * v21);

        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_53;
        }
      }

      v70 = v23;
      v24 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v25 = v24;
      v14 = *(v24 + 16);
      if (v14)
      {
        v11 = 0;
        v26 = v24 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
        while (v11 < *(v25 + 16))
        {
          (*(v1 + 16))(v7, v26 + *(v1 + 72) * v11, v0);
          v28 = UsoIdentifier.namespace.getter();
          if (v29)
          {
            if (v28 == 0x54776F6853707061 && v29 == 0xEE006449656C7469)
            {

LABEL_17:

              v30 = v63;
              (*v66)(v63, v7, v0);
              v31 = 0;
              v32 = v64;
              goto LABEL_19;
            }

            v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v27)
            {
              goto LABEL_17;
            }
          }

          ++v11;
          (*v19)(v7, v0);
          if (v14 == v11)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        v65 = v19 & 0xFFFFFFFFFFFFFF8;
        v20 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

LABEL_18:

      v31 = 1;
      v30 = v63;
      v32 = v64;
LABEL_19:
      v33 = *v72;
      (*v72)(v30, v31, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v30, v32, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v67 = *v71;
      v34 = v67(v32, 1, v0);
      v68 = v33;
      if (v34 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v30, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v56 = 0;
        v69 = 0;
      }

      else
      {
        v35 = v62;
        (*v66)(v62, v32, v0);
        v56 = UsoIdentifier.value.getter();
        v69 = v36;
        (*v19)(v35, v0);
        outlined destroy of MediaUserStateCenter?(v30, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      }

      v37 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v38 = v37;
      v14 = *(v37 + 16);
      if (v14)
      {
        v11 = 0;
        v39 = v37 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
        while (v11 < *(v38 + 16))
        {
          (*(v1 + 16))(v74, v39 + *(v1 + 72) * v11, v0);
          v41 = UsoIdentifier.namespace.getter();
          if (v42)
          {
            if (v41 == 0x54776F6853707061 && v42 == 0xEC000000656C7469)
            {

LABEL_31:

              v14 = v57;
              (*v66)(v57, v74, v0);
              v43 = 0;
              v11 = v58;
              goto LABEL_33;
            }

            v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v40)
            {
              goto LABEL_31;
            }
          }

          ++v11;
          (*v19)(v74, v0);
          if (v14 == v11)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_52;
      }

LABEL_32:

      v43 = 1;
      v14 = v57;
      v11 = v58;
LABEL_33:
      v68(v14, v43, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v14, v11, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      if (v67(v11, 1, v0) == 1)
      {

        outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v21 = v70;
      }

      else
      {
        v44 = v62;
        (*v66)(v62, v11, v0);
        v68 = UsoIdentifier.value.getter();
        v46 = v45;

        (*v19)(v44, v0);
        outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v69)
        {
          v21 = v70;
          if (v46)
          {
            v47 = v69;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
            }

            v49 = v55[2];
            v48 = v55[3];
            if (v49 >= v48 >> 1)
            {
              v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v55);
            }

            v50 = v55;
            v55[2] = v49 + 1;
            v51 = &v50[4 * v49];
            v51[4] = v68;
            v51[5] = v46;
            v51[6] = v56;
            v51[7] = v47;
            v52 = v59;
            v21 = v70;
            goto LABEL_44;
          }
        }

        else
        {
          v21 = v70;
        }
      }

      v52 = v59;
LABEL_44:
      if (v21 == v52)
      {
        goto LABEL_50;
      }
    }
  }

  v55 = MEMORY[0x277D84F90];
LABEL_50:

  return v55;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.appShowTitles.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v50);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v49 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = type metadata accessor for UsoIdentifier();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  v19 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  v51 = v12;
  v52 = v14;
  if (v20)
  {
    v21 = v19;
    v22 = v20;

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v21 & 0xFFFFFFFFFFFFLL;
    }

    v24 = v23 == 0;
  }

  else
  {
    v24 = 1;
  }

  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v26 = result;
  v54 = *(result + 16);
  if (!v54)
  {

    v33 = v52;
    if (!v24)
    {
LABEL_19:
      LODWORD(v54) = 0;
      goto LABEL_23;
    }

    return 0;
  }

  v45 = v24;
  v46 = v3;
  v47 = v6;
  v48 = v2;
  v27 = 0;
  v28 = result + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = (v16 + 8);
  while (1)
  {
    if (v27 >= *(v26 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v16 + 16))(v18, v28 + *(v16 + 72) * v27, v15);
    v30 = UsoIdentifier.namespace.getter();
    if (!v31)
    {
      result = (*v29)(v18, v15);
      goto LABEL_9;
    }

    if (v30 == 0x54776F6853707061 && v31 == 0xEC000000656C7469)
    {
      break;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v29)(v18, v15);
    if (v32)
    {
      goto LABEL_21;
    }

LABEL_9:
    if (v54 == ++v27)
    {

      v6 = v47;
      v2 = v48;
      v3 = v46;
      v33 = v52;
      if (v45)
      {
        return 0;
      }

      goto LABEL_19;
    }
  }

  (*v29)(v18, v15);
LABEL_21:

  v6 = v47;
  v2 = v48;
  v3 = v46;
  v33 = v52;
  if (v45)
  {
    return 0;
  }

  LODWORD(v54) = 1;
LABEL_23:
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v33, 1, 1, v2);
  }

  v34 = v51;
  (*(v3 + 104))(v51, *MEMORY[0x277D5ED88], v2);
  (*(v3 + 56))(v34, 0, 1, v2);
  v35 = *(v50 + 48);
  outlined init with copy of MediaUserStateCenter?(v33, v6, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v34, &v6[v35], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v36 = *(v3 + 48);
  if (v36(v6, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v33, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v36(&v6[v35], 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v6, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v54;
    }

LABEL_31:
    outlined destroy of MediaUserStateCenter?(v6, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    return 0;
  }

  v37 = v49;
  outlined init with copy of MediaUserStateCenter?(v6, v49, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v36(&v6[v35], 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v51, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v33, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v3 + 8))(v37, v2);
    goto LABEL_31;
  }

  v38 = &v6[v35];
  v39 = v44;
  (*(v3 + 32))(v44, v38, v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
  v40 = v37;
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v3 + 8);
  v42(v39, v2);
  outlined destroy of MediaUserStateCenter?(v51, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v33, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v42(v40, v2);
  outlined destroy of MediaUserStateCenter?(v6, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  result = v54;
  if ((v41 & 1) == 0)
  {
    return 0;
  }

  return result;
}

void *AudioUsoIntent.appAudiobookTitles.getter()
{
  if (*(v0 + 256))
  {
    v1 = *(v0 + 256);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.appAudiobookTitles.getter();
    *(v0 + 256) = v1;
  }

  return v1;
}

void *closure #1 in AudioUsoIntent.appAudiobookTitles.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v75 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v61 = &v53 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v53 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v63 = &v53 - v16;
  MEMORY[0x28223BE20](v15);
  v62 = &v53 - v17;
  v18 = AudioUsoIntent.rootItems.getter();
  v19 = specialized Sequence.flatMap<A>(_:)(v18, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.appAudiobookTitles.getter, 0);

  if (v19 >> 62)
  {
    goto LABEL_56;
  }

  v64 = v19 & 0xFFFFFFFFFFFFFF8;
  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v53 = v19;
  if (v20)
  {
    v21 = 0;
    v59 = v19 + 32;
    v60 = v19 & 0xC000000000000001;
    v74 = 0x80000002234D9E60;
    v76 = v1 + 16;
    v22 = (v1 + 8);
    v65 = (v1 + 32);
    v70 = (v1 + 48);
    v71 = (v1 + 56);
    v54 = MEMORY[0x277D84F90];
    v73 = 0x80000002234D9650;
    v57 = v11;
    v56 = v14;
    v58 = v20;
    while (1)
    {
      if (v60)
      {
        v24 = MEMORY[0x223DDFF80](v21, v53);
        v25 = __OFADD__(v21, 1);
        v26 = v21 + 1;
        if (v25)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v21 >= *(v64 + 16))
        {
          goto LABEL_55;
        }

        v25 = __OFADD__(v21, 1);
        v26 = v21 + 1;
        if (v25)
        {
          goto LABEL_54;
        }
      }

      v69 = v26;
      v72 = v24;
      v27 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v28 = v27;
      v19 = *(v27 + 16);
      if (v19)
      {
        v14 = 0;
        v11 = (v27 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
        while (v14 < *(v28 + 16))
        {
          (*(v1 + 16))(v7, &v11[*(v1 + 72) * v14], v0);
          v30 = UsoIdentifier.namespace.getter();
          if (v31)
          {
            if (v30 == 0xD000000000000013 && v31 == v74)
            {

LABEL_19:

              v32 = v62;
              (*v65)(v62, v7, v0);
              v33 = 0;
              v34 = v63;
              goto LABEL_21;
            }

            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v29)
            {
              goto LABEL_19;
            }
          }

          ++v14;
          (*v22)(v7, v0);
          if (v19 == v14)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v64 = v19 & 0xFFFFFFFFFFFFFF8;
        v20 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

LABEL_20:

      v33 = 1;
      v32 = v62;
      v34 = v63;
LABEL_21:
      v35 = *v71;
      (*v71)(v32, v33, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v32, v34, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v36 = *v70;
      v37 = (*v70)(v34, 1, v0);
      v66 = v36;
      v67 = v35;
      if (v37 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v32, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v55 = 0;
        v68 = 0;
      }

      else
      {
        v38 = v61;
        (*v65)(v61, v34, v0);
        v55 = UsoIdentifier.value.getter();
        v68 = v39;
        (*v22)(v38, v0);
        outlined destroy of MediaUserStateCenter?(v32, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      }

      v40 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v41 = v40;
      v19 = *(v40 + 16);
      if (v19)
      {
        v14 = 0;
        v11 = (v40 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
        while (v14 < *(v41 + 16))
        {
          (*(v1 + 16))(v75, &v11[*(v1 + 72) * v14], v0);
          v43 = UsoIdentifier.namespace.getter();
          if (v44)
          {
            if (v43 == 0xD000000000000011 && v44 == v73)
            {

LABEL_33:

              v14 = v56;
              (*v65)(v56, v75, v0);
              v45 = 0;
              v11 = v57;
              goto LABEL_35;
            }

            v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v42)
            {
              goto LABEL_33;
            }
          }

          ++v14;
          (*v22)(v75, v0);
          if (v19 == v14)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_53;
      }

LABEL_34:

      v45 = 1;
      v11 = v57;
      v14 = v56;
LABEL_35:
      v67(v14, v45, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v14, v11, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      if (v66(v11, 1, v0) == 1)
      {

        outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v68)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v19 = v61;
        (*v65)(v61, v11, v0);
        v67 = UsoIdentifier.value.getter();
        v47 = v46;

        (*v22)(v19, v0);
        outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v68)
        {
          if (v47)
          {
            v48 = v68;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
            }

            v19 = v54[2];
            v49 = v54[3];
            if (v19 >= v49 >> 1)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v19 + 1, 1, v54);
            }

            v50 = v54;
            v54[2] = v19 + 1;
            v51 = &v50[4 * v19];
            v51[4] = v67;
            v51[5] = v47;
            v51[6] = v55;
            v51[7] = v48;
          }

          else
          {
LABEL_40:
          }

          v23 = v58;
          goto LABEL_6;
        }
      }

      v23 = v58;

LABEL_6:
      v21 = v69;
      if (v69 == v23)
      {
        goto LABEL_51;
      }
    }
  }

  v54 = MEMORY[0x277D84F90];
LABEL_51:

  return v54;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.appAudiobookTitles.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = type metadata accessor for UsoIdentifier();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  v20 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  v50 = v13;
  v51 = v15;
  v49 = v5;
  if (v21)
  {
    v22 = v20;
    v23 = v21;

    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v22 & 0xFFFFFFFFFFFFLL;
    }

    v25 = v24 == 0;
  }

  else
  {
    v25 = 1;
  }

  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v27 = result;
  v54 = *(result + 16);
  if (!v54)
  {

    v34 = v51;
    if (!v25)
    {
LABEL_19:
      LODWORD(v54) = 0;
      goto LABEL_23;
    }

    return 0;
  }

  v44 = v25;
  v45 = v3;
  v46 = v7;
  v47 = v2;
  v28 = 0;
  v29 = result + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v53 = 0x80000002234D9650;
  v30 = (v17 + 8);
  while (1)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v17 + 16))(v19, v29 + *(v17 + 72) * v28, v16);
    v31 = UsoIdentifier.namespace.getter();
    if (!v32)
    {
      result = (*v30)(v19, v16);
      goto LABEL_9;
    }

    if (v31 == 0xD000000000000011 && v32 == v53)
    {
      break;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v30)(v19, v16);
    if (v33)
    {
      goto LABEL_21;
    }

LABEL_9:
    if (v54 == ++v28)
    {

      v7 = v46;
      v2 = v47;
      v3 = v45;
      v34 = v51;
      if (v44)
      {
        return 0;
      }

      goto LABEL_19;
    }
  }

  (*v30)(v19, v16);
LABEL_21:

  v7 = v46;
  v2 = v47;
  v3 = v45;
  v34 = v51;
  if (v44)
  {
    return 0;
  }

  LODWORD(v54) = 1;
LABEL_23:
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v34, 1, 1, v2);
  }

  v35 = v50;
  (*(v3 + 104))(v50, *MEMORY[0x277D5ED28], v2);
  (*(v3 + 56))(v35, 0, 1, v2);
  v36 = *(v49 + 48);
  outlined init with copy of MediaUserStateCenter?(v34, v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v35, &v7[v36], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v37 = *(v3 + 48);
  if (v37(v7, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v35, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v37(&v7[v36], 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v54;
    }

LABEL_31:
    outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    return 0;
  }

  v38 = v48;
  outlined init with copy of MediaUserStateCenter?(v7, v48, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v37(&v7[v36], 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v50, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v3 + 8))(v38, v2);
    goto LABEL_31;
  }

  v39 = v43;
  (*(v3 + 32))(v43, &v7[v36], v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
  v40 = v38;
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v3 + 8);
  v42(v39, v2);
  outlined destroy of MediaUserStateCenter?(v50, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v42(v40, v2);
  outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  result = v54;
  if ((v41 & 1) == 0)
  {
    return 0;
  }

  return result;
}

void *AudioUsoIntent.appMusicArtistNames.getter()
{
  if (*(v0 + 264))
  {
    v1 = *(v0 + 264);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.appMusicArtistNames.getter();
    *(v0 + 264) = v1;
  }

  return v1;
}

void *closure #1 in AudioUsoIntent.appMusicArtistNames.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v75 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v61 = &v53 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v53 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v63 = &v53 - v16;
  MEMORY[0x28223BE20](v15);
  v62 = &v53 - v17;
  v18 = AudioUsoIntent.rootItems.getter();
  v19 = specialized Sequence.flatMap<A>(_:)(v18, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.appMusicArtistNames.getter, 0);

  if (v19 >> 62)
  {
    goto LABEL_56;
  }

  v64 = v19 & 0xFFFFFFFFFFFFFF8;
  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v53 = v19;
  if (v20)
  {
    v21 = 0;
    v59 = v19 + 32;
    v60 = v19 & 0xC000000000000001;
    v74 = 0x80000002234D9E80;
    v76 = v1 + 16;
    v22 = (v1 + 8);
    v65 = (v1 + 32);
    v70 = (v1 + 48);
    v71 = (v1 + 56);
    v54 = MEMORY[0x277D84F90];
    v73 = 0x80000002234D9630;
    v57 = v11;
    v56 = v14;
    v58 = v20;
    while (1)
    {
      if (v60)
      {
        v24 = MEMORY[0x223DDFF80](v21, v53);
        v25 = __OFADD__(v21, 1);
        v26 = v21 + 1;
        if (v25)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v21 >= *(v64 + 16))
        {
          goto LABEL_55;
        }

        v25 = __OFADD__(v21, 1);
        v26 = v21 + 1;
        if (v25)
        {
          goto LABEL_54;
        }
      }

      v69 = v26;
      v72 = v24;
      v27 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v28 = v27;
      v19 = *(v27 + 16);
      if (v19)
      {
        v14 = 0;
        v11 = (v27 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
        while (v14 < *(v28 + 16))
        {
          (*(v1 + 16))(v7, &v11[*(v1 + 72) * v14], v0);
          v30 = UsoIdentifier.namespace.getter();
          if (v31)
          {
            if (v30 == 0xD000000000000014 && v31 == v74)
            {

LABEL_19:

              v32 = v62;
              (*v65)(v62, v7, v0);
              v33 = 0;
              v34 = v63;
              goto LABEL_21;
            }

            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v29)
            {
              goto LABEL_19;
            }
          }

          ++v14;
          (*v22)(v7, v0);
          if (v19 == v14)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v64 = v19 & 0xFFFFFFFFFFFFFF8;
        v20 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

LABEL_20:

      v33 = 1;
      v32 = v62;
      v34 = v63;
LABEL_21:
      v35 = *v71;
      (*v71)(v32, v33, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v32, v34, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v36 = *v70;
      v37 = (*v70)(v34, 1, v0);
      v66 = v36;
      v67 = v35;
      if (v37 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v32, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v55 = 0;
        v68 = 0;
      }

      else
      {
        v38 = v61;
        (*v65)(v61, v34, v0);
        v55 = UsoIdentifier.value.getter();
        v68 = v39;
        (*v22)(v38, v0);
        outlined destroy of MediaUserStateCenter?(v32, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      }

      v40 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v41 = v40;
      v19 = *(v40 + 16);
      if (v19)
      {
        v14 = 0;
        v11 = (v40 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
        while (v14 < *(v41 + 16))
        {
          (*(v1 + 16))(v75, &v11[*(v1 + 72) * v14], v0);
          v43 = UsoIdentifier.namespace.getter();
          if (v44)
          {
            if (v43 == 0xD000000000000012 && v44 == v73)
            {

LABEL_33:

              v14 = v56;
              (*v65)(v56, v75, v0);
              v45 = 0;
              v11 = v57;
              goto LABEL_35;
            }

            v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v42)
            {
              goto LABEL_33;
            }
          }

          ++v14;
          (*v22)(v75, v0);
          if (v19 == v14)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_53;
      }

LABEL_34:

      v45 = 1;
      v11 = v57;
      v14 = v56;
LABEL_35:
      v67(v14, v45, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v14, v11, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      if (v66(v11, 1, v0) == 1)
      {

        outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v68)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v19 = v61;
        (*v65)(v61, v11, v0);
        v67 = UsoIdentifier.value.getter();
        v47 = v46;

        (*v22)(v19, v0);
        outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v68)
        {
          if (v47)
          {
            v48 = v68;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
            }

            v19 = v54[2];
            v49 = v54[3];
            if (v19 >= v49 >> 1)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v19 + 1, 1, v54);
            }

            v50 = v54;
            v54[2] = v19 + 1;
            v51 = &v50[4 * v19];
            v51[4] = v67;
            v51[5] = v47;
            v51[6] = v55;
            v51[7] = v48;
          }

          else
          {
LABEL_40:
          }

          v23 = v58;
          goto LABEL_6;
        }
      }

      v23 = v58;

LABEL_6:
      v21 = v69;
      if (v69 == v23)
      {
        goto LABEL_51;
      }
    }
  }

  v54 = MEMORY[0x277D84F90];
LABEL_51:

  return v54;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.appMusicArtistNames.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = type metadata accessor for UsoIdentifier();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  v20 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  v50 = v13;
  v51 = v15;
  v49 = v5;
  if (v21)
  {
    v22 = v20;
    v23 = v21;

    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v22 & 0xFFFFFFFFFFFFLL;
    }

    v25 = v24 == 0;
  }

  else
  {
    v25 = 1;
  }

  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v27 = result;
  v54 = *(result + 16);
  if (!v54)
  {

    v34 = v51;
    if (!v25)
    {
LABEL_19:
      LODWORD(v54) = 0;
      goto LABEL_23;
    }

    return 0;
  }

  v44 = v25;
  v45 = v3;
  v46 = v7;
  v47 = v2;
  v28 = 0;
  v29 = result + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v53 = 0x80000002234D9630;
  v30 = (v17 + 8);
  while (1)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v17 + 16))(v19, v29 + *(v17 + 72) * v28, v16);
    v31 = UsoIdentifier.namespace.getter();
    if (!v32)
    {
      result = (*v30)(v19, v16);
      goto LABEL_9;
    }

    if (v31 == 0xD000000000000012 && v32 == v53)
    {
      break;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v30)(v19, v16);
    if (v33)
    {
      goto LABEL_21;
    }

LABEL_9:
    if (v54 == ++v28)
    {

      v7 = v46;
      v2 = v47;
      v3 = v45;
      v34 = v51;
      if (v44)
      {
        return 0;
      }

      goto LABEL_19;
    }
  }

  (*v30)(v19, v16);
LABEL_21:

  v7 = v46;
  v2 = v47;
  v3 = v45;
  v34 = v51;
  if (v44)
  {
    return 0;
  }

  LODWORD(v54) = 1;
LABEL_23:
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v34, 1, 1, v2);
  }

  v35 = v50;
  (*(v3 + 104))(v50, *MEMORY[0x277D5EDC0], v2);
  (*(v3 + 56))(v35, 0, 1, v2);
  v36 = *(v49 + 48);
  outlined init with copy of MediaUserStateCenter?(v34, v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v35, &v7[v36], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v37 = *(v3 + 48);
  if (v37(v7, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v35, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v37(&v7[v36], 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v54;
    }

LABEL_31:
    outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    return 0;
  }

  v38 = v48;
  outlined init with copy of MediaUserStateCenter?(v7, v48, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v37(&v7[v36], 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v50, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v3 + 8))(v38, v2);
    goto LABEL_31;
  }

  v39 = v43;
  (*(v3 + 32))(v43, &v7[v36], v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
  v40 = v38;
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v3 + 8);
  v42(v39, v2);
  outlined destroy of MediaUserStateCenter?(v50, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v42(v40, v2);
  outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  result = v54;
  if ((v41 & 1) == 0)
  {
    return 0;
  }

  return result;
}

void *AudioUsoIntent.appAudiobookAuthors.getter()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 272);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.appAudiobookAuthors.getter();
    *(v0 + 272) = v1;
  }

  return v1;
}

void *closure #1 in AudioUsoIntent.appAudiobookAuthors.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v75 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v61 = &v53 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v53 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v63 = &v53 - v16;
  MEMORY[0x28223BE20](v15);
  v62 = &v53 - v17;
  v18 = AudioUsoIntent.rootItems.getter();
  v19 = specialized Sequence.flatMap<A>(_:)(v18, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.appAudiobookAuthors.getter, 0);

  if (v19 >> 62)
  {
    goto LABEL_56;
  }

  v64 = v19 & 0xFFFFFFFFFFFFFF8;
  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v53 = v19;
  if (v20)
  {
    v21 = 0;
    v59 = v19 + 32;
    v60 = v19 & 0xC000000000000001;
    v74 = 0x80000002234D9EA0;
    v76 = v1 + 16;
    v22 = (v1 + 8);
    v65 = (v1 + 32);
    v70 = (v1 + 48);
    v71 = (v1 + 56);
    v54 = MEMORY[0x277D84F90];
    v73 = 0x80000002234D9670;
    v57 = v11;
    v56 = v14;
    v58 = v20;
    while (1)
    {
      if (v60)
      {
        v24 = MEMORY[0x223DDFF80](v21, v53);
        v25 = __OFADD__(v21, 1);
        v26 = v21 + 1;
        if (v25)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v21 >= *(v64 + 16))
        {
          goto LABEL_55;
        }

        v25 = __OFADD__(v21, 1);
        v26 = v21 + 1;
        if (v25)
        {
          goto LABEL_54;
        }
      }

      v69 = v26;
      v72 = v24;
      v27 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v28 = v27;
      v19 = *(v27 + 16);
      if (v19)
      {
        v14 = 0;
        v11 = (v27 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
        while (v14 < *(v28 + 16))
        {
          (*(v1 + 16))(v7, &v11[*(v1 + 72) * v14], v0);
          v30 = UsoIdentifier.namespace.getter();
          if (v31)
          {
            if (v30 == 0xD000000000000014 && v31 == v74)
            {

LABEL_19:

              v32 = v62;
              (*v65)(v62, v7, v0);
              v33 = 0;
              v34 = v63;
              goto LABEL_21;
            }

            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v29)
            {
              goto LABEL_19;
            }
          }

          ++v14;
          (*v22)(v7, v0);
          if (v19 == v14)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v64 = v19 & 0xFFFFFFFFFFFFFF8;
        v20 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

LABEL_20:

      v33 = 1;
      v32 = v62;
      v34 = v63;
LABEL_21:
      v35 = *v71;
      (*v71)(v32, v33, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v32, v34, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v36 = *v70;
      v37 = (*v70)(v34, 1, v0);
      v66 = v36;
      v67 = v35;
      if (v37 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v32, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v55 = 0;
        v68 = 0;
      }

      else
      {
        v38 = v61;
        (*v65)(v61, v34, v0);
        v55 = UsoIdentifier.value.getter();
        v68 = v39;
        (*v22)(v38, v0);
        outlined destroy of MediaUserStateCenter?(v32, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      }

      v40 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v41 = v40;
      v19 = *(v40 + 16);
      if (v19)
      {
        v14 = 0;
        v11 = (v40 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
        while (v14 < *(v41 + 16))
        {
          (*(v1 + 16))(v75, &v11[*(v1 + 72) * v14], v0);
          v43 = UsoIdentifier.namespace.getter();
          if (v44)
          {
            if (v43 == 0xD000000000000012 && v44 == v73)
            {

LABEL_33:

              v14 = v56;
              (*v65)(v56, v75, v0);
              v45 = 0;
              v11 = v57;
              goto LABEL_35;
            }

            v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v42)
            {
              goto LABEL_33;
            }
          }

          ++v14;
          (*v22)(v75, v0);
          if (v19 == v14)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_53;
      }

LABEL_34:

      v45 = 1;
      v11 = v57;
      v14 = v56;
LABEL_35:
      v67(v14, v45, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v14, v11, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      if (v66(v11, 1, v0) == 1)
      {

        outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v68)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v19 = v61;
        (*v65)(v61, v11, v0);
        v67 = UsoIdentifier.value.getter();
        v47 = v46;

        (*v22)(v19, v0);
        outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v68)
        {
          if (v47)
          {
            v48 = v68;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
            }

            v19 = v54[2];
            v49 = v54[3];
            if (v19 >= v49 >> 1)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v19 + 1, 1, v54);
            }

            v50 = v54;
            v54[2] = v19 + 1;
            v51 = &v50[4 * v19];
            v51[4] = v67;
            v51[5] = v47;
            v51[6] = v55;
            v51[7] = v48;
          }

          else
          {
LABEL_40:
          }

          v23 = v58;
          goto LABEL_6;
        }
      }

      v23 = v58;

LABEL_6:
      v21 = v69;
      if (v69 == v23)
      {
        goto LABEL_51;
      }
    }
  }

  v54 = MEMORY[0x277D84F90];
LABEL_51:

  return v54;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.appAudiobookAuthors.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = type metadata accessor for UsoIdentifier();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  v20 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  v50 = v13;
  v51 = v15;
  v49 = v5;
  if (v21)
  {
    v22 = v20;
    v23 = v21;

    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v22 & 0xFFFFFFFFFFFFLL;
    }

    v25 = v24 == 0;
  }

  else
  {
    v25 = 1;
  }

  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v27 = result;
  v54 = *(result + 16);
  if (!v54)
  {

    v34 = v51;
    if (!v25)
    {
LABEL_19:
      LODWORD(v54) = 0;
      goto LABEL_23;
    }

    return 0;
  }

  v44 = v25;
  v45 = v3;
  v46 = v7;
  v47 = v2;
  v28 = 0;
  v29 = result + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v53 = 0x80000002234D9670;
  v30 = (v17 + 8);
  while (1)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v17 + 16))(v19, v29 + *(v17 + 72) * v28, v16);
    v31 = UsoIdentifier.namespace.getter();
    if (!v32)
    {
      result = (*v30)(v19, v16);
      goto LABEL_9;
    }

    if (v31 == 0xD000000000000012 && v32 == v53)
    {
      break;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v30)(v19, v16);
    if (v33)
    {
      goto LABEL_21;
    }

LABEL_9:
    if (v54 == ++v28)
    {

      v7 = v46;
      v2 = v47;
      v3 = v45;
      v34 = v51;
      if (v44)
      {
        return 0;
      }

      goto LABEL_19;
    }
  }

  (*v30)(v19, v16);
LABEL_21:

  v7 = v46;
  v2 = v47;
  v3 = v45;
  v34 = v51;
  if (v44)
  {
    return 0;
  }

  LODWORD(v54) = 1;
LABEL_23:
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v34, 1, 1, v2);
  }

  v35 = v50;
  (*(v3 + 104))(v50, *MEMORY[0x277D5EDC0], v2);
  (*(v3 + 56))(v35, 0, 1, v2);
  v36 = *(v49 + 48);
  outlined init with copy of MediaUserStateCenter?(v34, v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v35, &v7[v36], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v37 = *(v3 + 48);
  if (v37(v7, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v35, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v37(&v7[v36], 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v54;
    }

LABEL_31:
    outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    return 0;
  }

  v38 = v48;
  outlined init with copy of MediaUserStateCenter?(v7, v48, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v37(&v7[v36], 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v50, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v3 + 8))(v38, v2);
    goto LABEL_31;
  }

  v39 = v43;
  (*(v3 + 32))(v43, &v7[v36], v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
  v40 = v38;
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v3 + 8);
  v42(v39, v2);
  outlined destroy of MediaUserStateCenter?(v50, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v42(v40, v2);
  outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  result = v54;
  if ((v41 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t AudioUsoIntent.noun.getter()
{
  result = *(v0 + 280);
  if (result == 4)
  {
    result = closure #1 in AudioUsoIntent.noun.getter(v0);
    *(v0 + 280) = result;
  }

  return result;
}

uint64_t closure #1 in AudioUsoIntent.noun.getter(uint64_t a1)
{
  v41 = type metadata accessor for UsoIdentifier();
  v2 = *(v41 - 8);
  MEMORY[0x28223BE20](v41 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v5 = AudioUsoIntent.rootItems.getter();
  v6 = v5;
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_48:
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (v8 != v9)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x223DDFF80](v9, v6);
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v11 = *(v6 + 8 * v9 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v12 = specialized UsoEntity_common_MediaItem.findFirst(options:with:)(v10, v11);

    ++v9;
    if (v12)
    {
      goto LABEL_42;
    }
  }

  v14 = specialized Sequence.flatMap<A>(_:)(v13, v10, closure #1 in closure #1 in AudioUsoIntent.decade.getter, 0);

  v15 = v14;
  v43 = v10;
  if (!(v14 >> 62))
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v41;
    if (v16)
    {
      goto LABEL_15;
    }

LABEL_50:
    v31 = MEMORY[0x277D84F90];

    if (v31 < 0)
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

  v16 = __CocoaSet.count.getter();
  v15 = v14;
  v17 = v41;
  if (!v16)
  {
    goto LABEL_50;
  }

LABEL_15:
  v7 = 0;
  v37 = v15 & 0xFFFFFFFFFFFFFF8;
  v38 = v15 & 0xC000000000000001;
  v34 = v15;
  v35 = v16;
  v36 = v15 + 32;
  v42 = v2 + 16;
  v6 = v2 + 8;
  while (1)
  {
LABEL_17:
    if (v38)
    {
      v18 = MEMORY[0x223DDFF80](v7, v34);
      v19 = __OFADD__(v7++, 1);
      if (v19)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v7 >= *(v37 + 16))
      {
        goto LABEL_47;
      }

      v18 = *(v36 + 8 * v7);

      v19 = __OFADD__(v7++, 1);
      if (v19)
      {
LABEL_41:
        __break(1u);
LABEL_42:

        return 0;
      }
    }

    v20 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    v21 = v20;
    v22 = *(v20 + 16);
    if (v22)
    {
      break;
    }

    if (v7 == v16)
    {
      goto LABEL_43;
    }
  }

  v39 = v18;
  v40 = v7;
  v23 = 0;
  v7 = v20 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  while (1)
  {
    if (v23 >= *(v21 + 16))
    {
      __break(1u);
      goto LABEL_46;
    }

    (*(v2 + 16))(v4, v7 + *(v2 + 72) * v23, v17);
    v24 = UsoIdentifier.namespace.getter();
    if (!v25)
    {
LABEL_22:
      (*v6)(v4, v17);
      goto LABEL_23;
    }

    if (v24 == 0x616C50616964656DLL && v25 == 0xEF6E756F4E726579)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    UsoIdentifier.value.getter();
    v27 = String.lowercased()();

    v28 = String.lowercased()();
    if (v27._countAndFlagsBits == v28._countAndFlagsBits && v27._object == v28._object)
    {
      break;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v17 = v41;
    (*v6)(v4, v41);
    if (v29)
    {
      goto LABEL_36;
    }

LABEL_23:
    if (v22 == ++v23)
    {

      goto LABEL_37;
    }
  }

  v17 = v41;
  (*v6)(v4, v41);
LABEL_36:

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
LABEL_37:
  v16 = v35;
  v7 = v40;
  if (v40 != v35)
  {
    goto LABEL_17;
  }

LABEL_43:
  v31 = v43;

  if (v31 < 0)
  {
LABEL_57:
    v32 = __CocoaSet.count.getter();
    goto LABEL_53;
  }

LABEL_51:
  if ((v31 & 0x4000000000000000) != 0)
  {
    goto LABEL_57;
  }

  v32 = *(v31 + 16);
LABEL_53:

  if (v32)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.noun.getter()
{
  v0 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v1 + 56))(v14, 1, 1, v0);
  }

  (*(v1 + 104))(v12, *MEMORY[0x277D5EE00], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v15 = *(v3 + 48);
  outlined init with copy of MediaUserStateCenter?(v14, v5, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v12, &v5[v15], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v16 = *(v1 + 48);
  if (v16(v5, 1, v0) != 1)
  {
    outlined init with copy of MediaUserStateCenter?(v5, v9, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v16(&v5[v15], 1, v0) != 1)
    {
      v18 = v22;
      (*(v1 + 32))(v22, &v5[v15], v0);
      _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v1 + 8);
      v19(v18, v0);
      outlined destroy of MediaUserStateCenter?(v12, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v19(v9, v0);
      outlined destroy of MediaUserStateCenter?(v5, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v17 & 1;
    }

    outlined destroy of MediaUserStateCenter?(v12, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v1 + 8))(v9, v0);
    goto LABEL_9;
  }

  outlined destroy of MediaUserStateCenter?(v12, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v16(&v5[v15], 1, v0) != 1)
  {
LABEL_9:
    outlined destroy of MediaUserStateCenter?(v5, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    v17 = 0;
    return v17 & 1;
  }

  outlined destroy of MediaUserStateCenter?(v5, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v17 = 1;
  return v17 & 1;
}

uint64_t AudioUsoIntent.dateTime.getter()
{
  v1 = *(v0 + 288);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = closure #1 in AudioUsoIntent.dateTime.getter();
    v3 = *(v0 + 288);
    *(v0 + 288) = v2;

    _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v3);
  }

  _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOy_0(v1);
  return v2;
}

uint64_t closure #1 in AudioUsoIntent.dateTime.getter()
{
  v0 = AudioUsoIntent.rootItems.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_15:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223DDFF80](v4, v1);
      if (__OFADD__(v4, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v6 = *(v1 + 8 * v4 + 32);

      if (__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }
    }

    v7 = specialized UsoEntity_common_MediaItem.findFirst(options:with:)(v5, v6);

    ++v4;
    if (v7)
    {

      v8 = dispatch thunk of UsoEntity_common_MediaItem.dateTime.getter();

      return v8;
    }
  }

  return 0;
}

uint64_t AudioUsoIntent.attributes.getter()
{
  if (*(v0 + 296))
  {
    v1 = *(v0 + 296);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.attributes.getter(v0);
    *(v0 + 296) = v1;
  }

  return v1;
}

uint64_t closure #1 in AudioUsoIntent.attributes.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v32 = MEMORY[0x277D84FA0];
  v16 = AudioUsoIntent.rootItems.getter();
  v17 = specialized Sequence.flatMap<A>(_:)(v16, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.attributes.getter, 0);

  specialized Sequence.forEach(_:)(v17, &v32);

  v30 = a1;
  if (*(a1 + 40) && (, dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter(), , v31[0]) && (v18 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter(), , v18))
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v15, 1, 1, v2);
  }

  (*(v3 + 104))(v13, *MEMORY[0x277D5EDE0], v2);
  (*(v3 + 56))(v13, 0, 1, v2);
  v19 = *(v5 + 48);
  outlined init with copy of MediaUserStateCenter?(v15, v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v13, &v7[v19], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v20 = *(v3 + 48);
  if (v20(v7, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v13, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v15, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v20(&v7[v19], 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
LABEL_13:
      specialized Set._Variant.insert(_:)(v31, 3);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v21 = v29;
  outlined init with copy of MediaUserStateCenter?(v7, v29, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v20(&v7[v19], 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v13, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v15, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v3 + 8))(v21, v2);
LABEL_11:
    outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    goto LABEL_14;
  }

  v22 = v28;
  (*(v3 + 32))(v28, &v7[v19], v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
  v23 = v21;
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v3 + 8);
  v25(v22, v2);
  outlined destroy of MediaUserStateCenter?(v13, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v15, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v25(v23, v2);
  outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v24)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (*(v30 + 56))
  {

    dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();

    if (v31[0])
    {
      dispatch thunk of UsoEntity_common_MediaItem.name.getter();
      if (v26)
      {

        specialized Set._Variant.insert(_:)(v31, 11);
      }

      if (dispatch thunk of UsoEntity_common_MediaItem.dateTime.getter())
      {

        specialized Set._Variant.insert(_:)(v31, 13);
      }

      if (dispatch thunk of UsoEntity_common_MediaItem.totalDuration.getter())
      {

        specialized Set._Variant.insert(_:)(v31, 14);
      }
    }
  }

  return v32;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.attributes.getter()
{
  if (!UsoEntity_common_MediaItem.isFromArtist()() && !UsoEntity_common_MediaItem.isFromSong()() && !UsoEntity_common_MediaItem.isFromAlbum()() && !UsoEntity_common_MediaItem.isRecommended()() && !UsoEntity_common_MediaItem.isAffinity()() && !UsoEntity_common_MediaItem.isDiscover()() && !UsoEntity_common_MediaItem.isAddToUnspecifiedPlaylist()())
  {
    result = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter();
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

char *AudioUsoIntent.musicTitles.getter()
{
  if (*(v0 + 304))
  {
    v1 = *(v0 + 304);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, closure #1 in closure #1 in AudioUsoIntent.musicTitles.getter);
    *(v0 + 304) = v1;
  }

  return v1;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.albums.getter(uint64_t a1, unsigned int *a2)
{
  v29 = a2;
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  if (v18)
  {
    v19 = v17;
    v20 = v18;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
      {
        dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
      }

      else
      {
        (*(v3 + 56))(v16, 1, 1, v2);
      }

      (*(v3 + 104))(v14, *v29, v2);
      (*(v3 + 56))(v14, 0, 1, v2);
      v23 = *(v5 + 48);
      outlined init with copy of MediaUserStateCenter?(v16, v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined init with copy of MediaUserStateCenter?(v14, &v7[v23], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v24 = *(v3 + 48);
      if (v24(v7, 1, v2) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v16, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        if (v24(&v7[v23], 1, v2) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          v22 = 1;
          return v22 & 1;
        }
      }

      else
      {
        outlined init with copy of MediaUserStateCenter?(v7, v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        if (v24(&v7[v23], 1, v2) != 1)
        {
          v25 = v28;
          (*(v3 + 32))(v28, &v7[v23], v2);
          _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
          v22 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *(v3 + 8);
          v26(v25, v2);
          outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v16, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          v26(v11, v2);
          outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          return v22 & 1;
        }

        outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v16, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        (*(v3 + 8))(v11, v2);
      }

      outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
      v22 = 0;
      return v22 & 1;
    }
  }

  v22 = 0;
  return v22 & 1;
}

char *AudioUsoIntent.playlistTitles.getter()
{
  if (*(v0 + 312))
  {
    v1 = *(v0 + 312);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.playlistTitles.getter(v0);
    *(v0 + 312) = v1;
  }

  return v1;
}

char *closure #1 in AudioUsoIntent.playlistTitles.getter(uint64_t a1)
{
  v1 = (*(*a1 + 1544))();
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_20:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DDFF80](v5, v2);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_19;
      }

      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    v8 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
    v10 = v9;

    ++v5;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      v13 = &v6[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
      v5 = v7;
    }
  }

  return v6;
}

unint64_t AudioUsoIntent.playlistMediaItems.getter()
{
  if (*(v0 + 320))
  {
    v1 = *(v0 + 320);
  }

  else
  {
    v2 = AudioUsoIntent.rootItems.getter();
    v1 = specialized Sequence.flatMap<A>(_:)(v2, MEMORY[0x277D84F90], specialized closure #1 in closure #1 in AudioUsoIntent.playlistMediaItems.getter, 0);

    *(v0 + 320) = v1;
  }

  return v1;
}

char *AudioUsoIntent.applePlaylistTitles.getter()
{
  if (*(v0 + 328))
  {
    v1 = *(v0 + 328);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, specialized closure #1 in closure #1 in AudioUsoIntent.applePlaylistTitles.getter);
    *(v0 + 328) = v1;
  }

  return v1;
}

uint64_t AudioUsoIntent.appName.getter()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = v1;
  if (v2 == 1)
  {
    v3 = closure #1 in AudioUsoIntent.appName.getter();
    v4 = *(v0 + 336);
    v5 = *(v0 + 344);
    *(v0 + 336) = v3;
    *(v0 + 344) = v6;

    outlined consume of String??(v4, v5);
  }

  outlined copy of String??(v1, v2);
  return v3;
}

uint64_t closure #1 in AudioUsoIntent.appName.getter()
{
  if (AudioUsoIntent.referenceMediaItem.getter() || (result = AudioUsoIntent.targetMediaItem.getter()) != 0)
  {
    if (dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter())
    {
      v1 = dispatch thunk of UsoEntity_common_App.name.getter();

      return v1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

char *AudioUsoIntent.showTitles.getter()
{
  if (*(v0 + 352))
  {
    v1 = *(v0 + 352);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, closure #1 in closure #1 in AudioUsoIntent.showTitles.getter);
    *(v0 + 352) = v1;
  }

  return v1;
}

char *AudioUsoIntent.podcastTitles.getter()
{
  if (*(v0 + 360))
  {
    v1 = *(v0 + 360);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, specialized closure #1 in closure #1 in AudioUsoIntent.podcastTitles.getter);
    *(v0 + 360) = v1;
  }

  return v1;
}

char *AudioUsoIntent.applePodcastTitles.getter()
{
  if (*(v0 + 368))
  {
    v1 = *(v0 + 368);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, specialized closure #1 in closure #1 in AudioUsoIntent.applePodcastTitles.getter);
    *(v0 + 368) = v1;
  }

  return v1;
}

char *AudioUsoIntent.radioStationNames.getter()
{
  if (*(v0 + 376))
  {
    v1 = *(v0 + 376);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, closure #1 in closure #1 in AudioUsoIntent.radioStationNames.getter);
    *(v0 + 376) = v1;
  }

  return v1;
}

uint64_t AudioUsoIntent.decade.getter()
{
  result = *(v0 + 384);
  if (result == 12)
  {
    result = closure #1 in AudioUsoIntent.decade.getter();
    *(v0 + 384) = result;
  }

  return result;
}

uint64_t closure #1 in AudioUsoIntent.decade.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - v8;
  v10 = AudioUsoIntent.rootItems.getter();
  v11 = MEMORY[0x277D84F90];
  v12 = specialized Sequence.flatMap<A>(_:)(v10, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.decade.getter, 0);

  v13 = Array<A>.identifiers(forNamespace:)(1uLL, v12);

  v58 = *(v13 + 16);
  if (v58)
  {
    v16 = 0;
    v57 = v13 + 32;
    v64 = 0x80000002234D9D10;
    v65 = v1 + 16;
    v17 = (v1 + 8);
    v51 = (v1 + 32);
    v54 = (v1 + 48);
    v55 = (v1 + 56);
    v50 = MEMORY[0x277D84F90];
    *&v15 = 136315138;
    v52 = v15;
    v59 = v7;
    v60 = v9;
    v56 = v13;
    while (1)
    {
      if (v16 >= *(v13 + 16))
      {
LABEL_42:
        __break(1u);
        return result;
      }

      v18 = *(v57 + 8 * v16);
      v19 = *(v18 + 16);
      if (v19)
      {
        v63 = v16;
        v20 = v18 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

        v21 = 0;
        while (v21 < *(v18 + 16))
        {
          (*(v1 + 16))(v3, v20 + *(v1 + 72) * v21, v0);
          v23 = UsoIdentifier.namespace.getter();
          if (v24)
          {
            if (v23 == 0xD000000000000012 && v24 == v64)
            {

LABEL_13:
              v9 = v60;
              (*v51)(v60, v3, v0);
              v25 = 0;
              v7 = v59;
LABEL_16:
              v16 = v63;
              goto LABEL_17;
            }

            v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v22)
            {
              goto LABEL_13;
            }
          }

          ++v21;
          result = (*v17)(v3, v0);
          if (v19 == v21)
          {
            v25 = 1;
            v7 = v59;
            v9 = v60;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_42;
      }

      v25 = 1;
LABEL_17:
      ++v16;
      (*v55)(v9, v25, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v9, v7, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      if ((*v54)(v7, 1, v0) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v7, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v61 = 0;
        v26 = 0;
      }

      else
      {
        v61 = UsoIdentifier.value.getter();
        v26 = v27;
        (*v17)(v7, v0);
        if (one-time initialization token for mappingDecade != -1)
        {
          swift_once();
        }

        v28 = static CommonAudio.Decade.mappingDecade;
        if (*(static CommonAudio.Decade.mappingDecade + 16))
        {
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(v61, v26);
          if (v30)
          {
            v63 = v16;
            v45 = *(*(v28 + 56) + v29);

            v9 = v60;
            outlined destroy of MediaUserStateCenter?(v60, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
              v50 = result;
            }

            v47 = *(v50 + 2);
            v46 = *(v50 + 3);
            if (v47 >= v46 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v50);
              v50 = result;
            }

            v48 = v50;
            *(v50 + 2) = v47 + 1;
            v48[v47 + 32] = v45;
            v44 = v58;
            v16 = v63;
            goto LABEL_29;
          }
        }
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.pommes);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();

      v62 = v32;
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v63 = v16;
        v35 = v34;
        v53 = swift_slowAlloc();
        v67 = v26;
        v68[0] = v53;
        *v35 = v52;
        v66 = v61;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v36 = String.init<A>(describing:)();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v68);

        *(v35 + 4) = v38;
        v9 = v60;
        v39 = v33;
        v40 = v62;
        _os_log_impl(&dword_2232BB000, v62, v39, "CommonAudio#Decade#from received unregistered decade: %s", v35, 0xCu);
        v41 = v53;
        __swift_destroy_boxed_opaque_existential_1(v53);
        v42 = v41;
        v7 = v59;
        MEMORY[0x223DE0F80](v42, -1, -1);
        v43 = v35;
        v16 = v63;
        MEMORY[0x223DE0F80](v43, -1, -1);
      }

      else
      {

        v7 = v59;
        v9 = v60;
      }

      result = outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v44 = v58;
LABEL_29:
      v13 = v56;
      if (v16 == v44)
      {
        goto LABEL_37;
      }
    }
  }

  v50 = v11;
LABEL_37:

  if (*(v50 + 2))
  {
    v49 = v50[32];
  }

  else
  {
    v49 = 11;
  }

  return v49;
}

uint64_t AudioUsoIntent.sort.getter()
{
  result = *(v0 + 385);
  if (result == 10)
  {
    result = closure #1 in AudioUsoIntent.sort.getter();
    *(v0 + 385) = result;
  }

  return result;
}

uint64_t closure #1 in AudioUsoIntent.sort.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - v5;
  v7 = AudioUsoIntent.rootItems.getter();
  v8 = v7;
  v9 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
    v7 = __CocoaSet.count.getter();
    v10 = v7;
  }

  else
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v10 == v11)
    {
      goto LABEL_44;
    }

    if ((v8 & 0xC000000000000001) == 0)
    {
      if (v11 < *(v9 + 16))
      {
        v13 = *(v8 + 8 * v11 + 32);

        if (__OFADD__(v11, 1))
        {
          break;
        }

        goto LABEL_8;
      }

      __break(1u);
LABEL_30:
      if (v7 == *MEMORY[0x277D5EE70])
      {
        v17 = 1;
        goto LABEL_47;
      }

      if (v7 != *MEMORY[0x277D5EE78])
      {
        if (v7 == *MEMORY[0x277D5EE98])
        {
          v17 = 5;
        }

        else if (v7 == *MEMORY[0x277D5EE80])
        {
          v17 = 2;
        }

        else if (v7 == *MEMORY[0x277D5EEA8])
        {
          v17 = 7;
        }

        else
        {
          if (v7 != *MEMORY[0x277D5EEB0])
          {
            (*(v0 + 8))(v4, v8);
            goto LABEL_46;
          }

          v17 = 6;
        }

LABEL_47:
        outlined destroy of MediaUserStateCenter?(v6, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
        return v17;
      }

LABEL_28:
      v17 = 0;
      goto LABEL_47;
    }

    v13 = MEMORY[0x223DDFF80](v11, v8);
    if (__OFADD__(v11, 1))
    {
      break;
    }

LABEL_8:
    v0 = specialized UsoEntity_common_MediaItem.findFirst(options:with:)(v12, v13);

    ++v11;
    if (v0)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:

  v14 = dispatch thunk of CodeGenGlobalArgs.usoSearchQualifier.getter();

  if (!v14 || (v15 = dispatch thunk of UsoEntity_common_SearchQualifier.sortDirections.getter(), , !v15))
  {
LABEL_24:

    goto LABEL_45;
  }

  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_17;
    }

LABEL_43:

LABEL_44:

LABEL_45:
    v18 = type metadata accessor for UsoEntity_common_SortDirection.DefinedValues();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
LABEL_46:
    v17 = 9;
    goto LABEL_47;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_43;
  }

LABEL_17:
  if ((v15 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DDFF80](0, v15);
LABEL_20:

    dispatch thunk of CodeGenListEntry.entry.getter();

    if (v19[1])
    {
      dispatch thunk of UsoEntity_common_SortDirection.definedValue.getter();

      v8 = type metadata accessor for UsoEntity_common_SortDirection.DefinedValues();
      v0 = *(v8 - 8);
      if ((*(v0 + 48))(v6, 1, v8) == 1)
      {
        goto LABEL_46;
      }

      outlined init with copy of MediaUserStateCenter?(v6, v4, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
      LODWORD(v7) = (*(v0 + 88))(v4, v8);
      if (v7 == *MEMORY[0x277D5EE90])
      {
        v17 = 4;
        goto LABEL_47;
      }

      if (v7 == *MEMORY[0x277D5EE88])
      {
        v17 = 3;
        goto LABEL_47;
      }

      if (v7 == *MEMORY[0x277D5EEA0])
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_20;
  }

  __break(1u);
  return result;
}