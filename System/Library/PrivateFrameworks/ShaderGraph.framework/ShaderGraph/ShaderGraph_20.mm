void SGNode.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph6SGNodeC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph6SGNodeC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGNode.CodingKeys and conformance SGNode.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
    type metadata accessor for SGError();
    v11 = v2;
    SGError.__allocating_init(_:)(v2);
    swift_willThrow();
  }

  else
  {
    v9 = *(v3 + OBJC_IVAR___SGNode_data + 48);
    v15 = *(v3 + OBJC_IVAR___SGNode_data + 32);
    v16 = v9;
    v17 = *(v3 + OBJC_IVAR___SGNode_data + 64);
    v18 = *(v3 + OBJC_IVAR___SGNode_data + 80);
    v10 = *(v3 + OBJC_IVAR___SGNode_data + 16);
    v13 = *(v3 + OBJC_IVAR___SGNode_data);
    v14 = v10;
    v12[15] = 3;
    lazy protocol witness table accessor for type NodeData and conformance NodeData();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
  }
}

id SGNode.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGNode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *protocol witness for Decodable.init(from:) in conformance SGNode@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SGNode.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

char *static SGNode.create(_:type:name:)(void *a1, uint64_t a2, Swift::String a3)
{
  return specialized static SGNode.create(_:type:name:)(a1, a2, a3);
}

{
  return specialized static SGNode.create(_:type:name:)(a1, a2, a3);
}

char *static SGNode.create(_:name:)(char a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v8._countAndFlagsBits = a2;
  v8._object = a3;
  v6 = specialized static SGNode.create(_:type:name:)(v5, 1, v8);

  return v6;
}

id @objc static SGNode.create(_:type:name:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a5)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = a3;
  v14 = a7(a3, a4, v10, v12);

  return v14;
}

char *static SGNode.createColor3(color:name:)(void *a1, Swift::String a2, char *a3)
{
  if (a2._object)
  {
    return specialized static SGNode.create(color:name:numComponents:)(a1, a2, a3);
  }

  lazy protocol witness table accessor for type APIError and conformance APIError();
  swift_allocError();
  *v4 = xmmword_265F20CE0;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

char *@objc static SGNode.createColor3(color:name:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char *a6)
{
  if (a4)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v12 = a3;
    v21._countAndFlagsBits = v9;
    v21._object = v11;
    v13 = specialized static SGNode.create(color:name:numComponents:)(a3, v21, a6);

    v18 = v13;
  }

  else
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v16 = swift_allocError();
    *v17 = xmmword_265F20CE0;
    *(v17 + 16) = 1;
    swift_willThrow();
    if (a5)
    {
      v14 = _convertErrorToNSError(_:)();

      v15 = v14;
      v18 = 0;
      *a5 = v14;
    }

    else
    {

      v18 = 0;
    }
  }

  return v18;
}

uint64_t SGNode.description.getter()
{
  v1 = v0;
  v8 = 60;
  v9 = 0xE100000000000000;
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v7, sel_description);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x266771550](v3, v5);

  MEMORY[0x266771550](0x223D656D616E203ALL, 0xE800000000000000);
  MEMORY[0x266771550](*&v1[OBJC_IVAR___SGNode_name], *&v1[OBJC_IVAR___SGNode_name + 8]);
  MEMORY[0x266771550](15906, 0xE200000000000000);
  return v8;
}

char *specialized static SGNode.create(nodeDefName:name:store:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5)
{
  if (!a2)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v12 = swift_allocError();
    v17 = xmmword_265F289D0;
LABEL_8:
    *v16 = v17;
    *(v16 + 16) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  if (!a4)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v12 = swift_allocError();
    v17 = xmmword_265F20CE0;
    goto LABEL_8;
  }

  v5 = a4;
  v8._countAndFlagsBits = 0x4E66654465646F6ELL;
  v8._object = 0xEB00000000656D61;
  validate(_:named:)(*&a1, v8);
  v12 = v11;
  if (!v11)
  {
    v13._countAndFlagsBits = a3;
    v13._object = v5;
    v14._countAndFlagsBits = 1701667182;
    v14._object = 0xE400000000000000;
    validate(_:named:)(v13, v14);
    if (v15)
    {
      v12 = v15;
    }

    else
    {
      specialized OrderedDictionary.subscript.getter(a1, a2, a5[5], a5[6], a5[7], v42);
      if (*(&v42[0] + 1))
      {
        v21 = *(&v43 + 1);
        v20 = v43;
        v44 = v42[0];
        v45 = v42[1];
        v46 = v43;
        v49 = 0;
        v50 = type metadata accessor for SGNode();
        v22 = objc_allocWithZone(v50);
        swift_unknownObjectWeakInit();
        v23 = &v22[OBJC_IVAR___SGNode_name];
        *v23 = a3;
        *(v23 + 1) = v5;

        *&v22[OBJC_IVAR___SGNode_inputs] = recreateInputs(from:nodeName:)(&v44, a3, v5);
        *&v22[OBJC_IVAR___SGNode_outputs] = recreateOutputs(from:nodeName:)(&v44, a3, v5);
        v24 = &v22[OBJC_IVAR___SGNode_data];
        v25 = v47;
        *(v24 + 2) = v46;
        *(v24 + 3) = v25;
        *(v24 + 4) = v48;
        v24[80] = v49;
        v26 = v45;
        *v24 = v44;
        *(v24 + 1) = v26;

        v39 = v21;
        v40 = v20;
        outlined copy of MaterialXAvailability(v20, v21);
        v41.receiver = v22;
        v41.super_class = v50;
        v27 = objc_msgSendSuper2(&v41, sel_init);
        v28 = *&v27[OBJC_IVAR___SGNode_inputs];
        if (v28 >> 62)
        {
          goto LABEL_40;
        }

        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        while (1)
        {
          v5 = v27;

          if (v29)
          {
            v30 = 0;
            v50 = (v28 & 0xC000000000000001);
            while (1)
            {
              if (v50)
              {
                v27 = MEMORY[0x266772030](v30, v28);
              }

              else
              {
                if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_37;
                }

                v27 = *(v28 + 8 * v30 + 32);
              }

              v31 = v27;
              v32 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                break;
              }

              swift_beginAccess();
              swift_unknownObjectWeakAssign();

              ++v30;
              if (v32 == v29)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
LABEL_37:
            __break(1u);
          }

          else
          {
LABEL_23:

            v33 = *&v5[OBJC_IVAR___SGNode_outputs];
            if (v33 >> 62)
            {
              v28 = __CocoaSet.count.getter();
            }

            else
            {
              v28 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (!v28)
            {
LABEL_34:

              outlined consume of MaterialXAvailability(v40, v39);

              return v5;
            }

            v34 = 0;
            v50 = (v33 & 0xC000000000000001);
            while (1)
            {
              if (v50)
              {
                v27 = MEMORY[0x266772030](v34, v33);
              }

              else
              {
                if (v34 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_39;
                }

                v27 = *(v33 + 8 * v34 + 32);
              }

              v35 = v27;
              v36 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                break;
              }

              swift_beginAccess();
              swift_unknownObjectWeakAssign();

              ++v34;
              if (v36 == v28)
              {
                goto LABEL_34;
              }
            }
          }

          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v38 = v27;
          v29 = __CocoaSet.count.getter();
          v27 = v38;
        }
      }

      lazy protocol witness table accessor for type APIError and conformance APIError();
      v12 = swift_allocError();
      *v37 = a1;
      *(v37 + 8) = a2;
      *(v37 + 16) = 0;
      swift_willThrow();
    }
  }

LABEL_9:
  type metadata accessor for SGError();
  v18 = v12;
  SGError.__allocating_init(_:)(v12);
  swift_willThrow();

  return v5;
}

unint64_t specialized SGNode.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGNode.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SGNode.CodingKeys and conformance SGNode.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGNode.CodingKeys and conformance SGNode.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeData and conformance NodeData()
{
  result = lazy protocol witness table cache variable for type NodeData and conformance NodeData;
  if (!lazy protocol witness table cache variable for type NodeData and conformance NodeData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeData and conformance NodeData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeData and conformance NodeData;
  if (!lazy protocol witness table cache variable for type NodeData and conformance NodeData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeData and conformance NodeData);
  }

  return result;
}

char *specialized static SGNode.create(graph:name:)(void *a1, Swift::String _)
{
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v7 = swift_allocError();
    v9 = xmmword_265F21A90;
LABEL_7:
    *v8 = v9;
    *(v8 + 16) = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  if (!_._object)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v7 = swift_allocError();
    v9 = xmmword_265F20CE0;
    goto LABEL_7;
  }

  countAndFlagsBits = _._countAndFlagsBits;
  *(&_ - 8) = _;
  object = _._object;
  _._object = 1701667182;
  v5 = 0xE400000000000000;
  validate(_:named:)(*(&_ - 8), *&_._object);
  if (!v6)
  {
    *&v32[0] = a1;
    v33 = 64;
    v13 = type metadata accessor for SGNode();
    v14 = objc_allocWithZone(v13);
    swift_unknownObjectWeakInit();
    v15 = &v14[OBJC_IVAR___SGNode_name];
    *v15 = countAndFlagsBits;
    v15[1] = object;

    *&v14[OBJC_IVAR___SGNode_inputs] = recreateInputs(from:nodeName:)(v32, countAndFlagsBits, object);
    *&v14[OBJC_IVAR___SGNode_outputs] = recreateOutputs(from:nodeName:)(v32, countAndFlagsBits, object);
    v16 = &v14[OBJC_IVAR___SGNode_data];
    v17 = v32[3];
    *(v16 + 2) = v32[2];
    *(v16 + 3) = v17;
    *(v16 + 4) = v32[4];
    v16[80] = v33;
    v18 = v32[1];
    *v16 = v32[0];
    *(v16 + 1) = v18;
    v31.receiver = v14;
    v31.super_class = v13;
    v19 = a1;
    v20 = objc_msgSendSuper2(&v31, sel_init);
    v21 = *&v20[OBJC_IVAR___SGNode_inputs];
    v34 = 0;
    if (v21 >> 62)
    {
      goto LABEL_37;
    }

    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v10 = v20;

      if (v22)
      {
        v23 = 0;
        while (1)
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x266772030](v23, v21);
          }

          else
          {
            if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_34;
            }

            v20 = *(v21 + 8 * v23 + 32);
          }

          v24 = v20;
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          swift_beginAccess();
          swift_unknownObjectWeakAssign();

          ++v23;
          if (v25 == v22)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
      }

      else
      {
LABEL_21:

        v21 = *&v10[OBJC_IVAR___SGNode_outputs];
        if (v21 >> 62)
        {
          v26 = __CocoaSet.count.getter();
        }

        else
        {
          v26 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v26)
        {
LABEL_32:

          return v10;
        }

        v27 = 0;
        while (1)
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x266772030](v27, v21);
          }

          else
          {
            if (v27 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v20 = *(v21 + 8 * v27 + 32);
          }

          v28 = v20;
          v29 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          swift_beginAccess();
          swift_unknownObjectWeakAssign();

          ++v27;
          if (v29 == v26)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      v30 = v20;
      v22 = __CocoaSet.count.getter();
      v20 = v30;
    }
  }

  v7 = v6;
LABEL_8:
  v10 = type metadata accessor for SGError();
  v11 = v7;
  SGError.__allocating_init(_:)(v7);
  swift_willThrow();

  return v10;
}

char *specialized static SGNode.create(_:type:name:)(void *a1, uint64_t a2, Swift::String _)
{
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v10 = swift_allocError();
    v13 = xmmword_265F289E0;
LABEL_7:
    *v12 = v13;
    *(v12 + 16) = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  if (!_._object)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v10 = swift_allocError();
    v13 = xmmword_265F20CE0;
    goto LABEL_7;
  }

  countAndFlagsBits = _._countAndFlagsBits;
  object = _._object;
  v8._countAndFlagsBits = 1701667182;
  v8._object = 0xE400000000000000;
  validate(_:named:)(_, v8);
  v10 = v9;
  if (!v9)
  {
    v11 = a1;
    specialized SGDataTypeStorage.init(type:scalar:)(v37, v11, a2);
    v17 = v38;

    *&v39 = a2;
    v40 = v37[0];
    v41 = v37[1];
    v42 = v37[2];
    v43 = v37[3];
    v44 = v17 & 0x1F | 0x80;
    v18 = type metadata accessor for SGNode();
    v19 = objc_allocWithZone(v18);
    swift_unknownObjectWeakInit();
    v20 = &v19[OBJC_IVAR___SGNode_name];
    *v20 = countAndFlagsBits;
    v20[1] = object;
    *&v19[OBJC_IVAR___SGNode_inputs] = MEMORY[0x277D84F90];
    outlined init with copy of SGDataTypeStorage(v37, v36);

    *&v19[OBJC_IVAR___SGNode_outputs] = recreateOutputs(from:nodeName:)(&v39, countAndFlagsBits, object);
    v21 = &v19[OBJC_IVAR___SGNode_data];
    v22 = v42;
    *(v21 + 2) = v41;
    *(v21 + 3) = v22;
    *(v21 + 4) = v43;
    v21[80] = v44;
    v23 = v40;
    *v21 = v39;
    *(v21 + 1) = v23;
    outlined init with copy of SGDataTypeStorage(v37, v36);
    v35.receiver = v19;
    v35.super_class = v18;
    v24 = objc_msgSendSuper2(&v35, sel_init);
    v25 = *&v24[OBJC_IVAR___SGNode_inputs];
    v45 = 0;
    if (v25 >> 62)
    {
      goto LABEL_37;
    }

    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v14 = v24;

      if (v26)
      {
        v27 = 0;
        while (1)
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x266772030](v27, v25);
          }

          else
          {
            if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_34;
            }

            v24 = *(v25 + 8 * v27 + 32);
          }

          v28 = v24;
          v29 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          swift_beginAccess();
          swift_unknownObjectWeakAssign();

          ++v27;
          if (v29 == v26)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
      }

      else
      {
LABEL_21:

        v25 = *&v14[OBJC_IVAR___SGNode_outputs];
        if (v25 >> 62)
        {
          v30 = __CocoaSet.count.getter();
        }

        else
        {
          v30 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v30)
        {
LABEL_32:

          outlined destroy of SGDataTypeStorage(v37);

          outlined destroy of SGDataTypeStorage(v37);
          return v14;
        }

        v31 = 0;
        while (1)
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x266772030](v31, v25);
          }

          else
          {
            if (v31 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v24 = *(v25 + 8 * v31 + 32);
          }

          v32 = v24;
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          swift_beginAccess();
          swift_unknownObjectWeakAssign();

          ++v31;
          if (v33 == v30)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      v34 = v24;
      v26 = __CocoaSet.count.getter();
      v24 = v34;
    }
  }

LABEL_8:
  v14 = type metadata accessor for SGError();
  v15 = v10;
  SGError.__allocating_init(_:)(v10);
  swift_willThrow();

  return v14;
}

{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v10 = swift_allocError();
    v12 = xmmword_265F289F0;
LABEL_7:
    *v11 = v12;
    *(v11 + 16) = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  if (!_._object)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v10 = swift_allocError();
    v12 = xmmword_265F20CE0;
    goto LABEL_7;
  }

  v8._countAndFlagsBits = 1701667182;
  v8._object = 0xE400000000000000;
  validate(_:named:)(_, v8);
  v10 = v9;
  if (!v9)
  {
    specialized SGDataTypeStorage.init(type:value:)(a2, a1, v40);
    v48 = 0;
    *&v42 = a2;
    v43 = v40[0];
    v44 = v40[1];
    v45 = v40[2];
    v46 = v40[3];
    v47 = v41 & 0x1F | 0x80;
    v20 = type metadata accessor for SGNode();
    v21 = objc_allocWithZone(v20);
    swift_unknownObjectWeakInit();
    v22 = &v21[OBJC_IVAR___SGNode_name];
    *v22 = countAndFlagsBits;
    v22[1] = object;
    *&v21[OBJC_IVAR___SGNode_inputs] = MEMORY[0x277D84F90];
    outlined init with copy of SGDataTypeStorage(v40, &v38);

    *&v21[OBJC_IVAR___SGNode_outputs] = recreateOutputs(from:nodeName:)(&v42, countAndFlagsBits, object);
    v23 = &v21[OBJC_IVAR___SGNode_data];
    v24 = v45;
    *(v23 + 2) = v44;
    *(v23 + 3) = v24;
    *(v23 + 4) = v46;
    v23[80] = v47;
    v25 = v43;
    *v23 = v42;
    *(v23 + 1) = v25;
    outlined init with copy of SGDataTypeStorage(v40, &v38);
    v37.receiver = v21;
    v37.super_class = v20;
    v26 = objc_msgSendSuper2(&v37, sel_init);
    v27 = *&v26[OBJC_IVAR___SGNode_inputs];
    if (v27 >> 62)
    {
      goto LABEL_40;
    }

    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v17 = v26;

      if (v28)
      {
        v29 = 0;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x266772030](v29, v27);
          }

          else
          {
            if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v26 = *(v27 + 8 * v29 + 32);
          }

          v30 = v26;
          v31 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          swift_beginAccess();
          swift_unknownObjectWeakAssign();

          ++v29;
          if (v31 == v28)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
      }

      else
      {
LABEL_24:

        v27 = *&v17[OBJC_IVAR___SGNode_outputs];
        if (v27 >> 62)
        {
          v32 = __CocoaSet.count.getter();
        }

        else
        {
          v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v32)
        {
LABEL_35:

          outlined destroy of SGDataTypeStorage(v40);

          outlined destroy of SGDataTypeStorage(v40);
          return v17;
        }

        v33 = 0;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x266772030](v33, v27);
          }

          else
          {
            if (v33 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v26 = *(v27 + 8 * v33 + 32);
          }

          v34 = v26;
          v35 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          swift_beginAccess();
          swift_unknownObjectWeakAssign();

          ++v33;
          if (v35 == v32)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v36 = v26;
      v28 = __CocoaSet.count.getter();
      v26 = v36;
    }
  }

LABEL_8:
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  MEMORY[0x266771550](0xD000000000000021, 0x8000000265F33620);
  if (object)
  {

    v13 = String.init<A>(describing:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE500000000000000;
    v13 = 0x3E6C696E3CLL;
  }

  MEMORY[0x266771550](v13, v15);

  MEMORY[0x266771550](2112034, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  v16 = v38;
  v17 = v39;
  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
  swift_allocError();
  *v18 = 25;
  *(v18 + 8) = v16;
  *(v18 + 16) = v17;
  swift_willThrow();

  return v17;
}

char *specialized static SGNode.create(value:type:name:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::String _)
{
  if (!a2)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v11 = swift_allocError();
    v13 = xmmword_265F289F0;
LABEL_7:
    *v12 = v13;
    v14 = 1;
LABEL_8:
    *(v12 + 16) = v14;
    swift_willThrow();
    goto LABEL_9;
  }

  if (!_._object)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v11 = swift_allocError();
    v13 = xmmword_265F20CE0;
    goto LABEL_7;
  }

  v44 = a2;
  countAndFlagsBits = _._countAndFlagsBits;
  object = _._object;
  v9._countAndFlagsBits = 1701667182;
  v9._object = 0xE400000000000000;
  validate(_:named:)(_, v9);
  if (!v10)
  {
    if ((a3 - 11) < 3)
    {
      *&v38 = a3;
      *&v39 = a1;
      *(&v39 + 1) = v44;
      v43 = -122;
      v17 = type metadata accessor for SGNode();
      v18 = objc_allocWithZone(v17);
      swift_unknownObjectWeakInit();
      v19 = &v18[OBJC_IVAR___SGNode_name];
      *v19 = countAndFlagsBits;
      v19[1] = object;
      *&v18[OBJC_IVAR___SGNode_inputs] = MEMORY[0x277D84F90];

      *&v18[OBJC_IVAR___SGNode_outputs] = recreateOutputs(from:nodeName:)(&v38, countAndFlagsBits, object);
      v20 = &v18[OBJC_IVAR___SGNode_data];
      v21 = v41;
      *(v20 + 2) = v40;
      *(v20 + 3) = v21;
      *(v20 + 4) = v42;
      v20[80] = v43;
      v22 = v39;
      *v20 = v38;
      *(v20 + 1) = v22;
      v37.receiver = v18;
      v37.super_class = v17;

      v23 = objc_msgSendSuper2(&v37, sel_init);
      v24 = *&v23[OBJC_IVAR___SGNode_inputs];
      if (v24 >> 62)
      {
        goto LABEL_40;
      }

      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (1)
      {
        v11 = v23;

        if (v25)
        {
          v26 = 0;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x266772030](v26, v24);
            }

            else
            {
              if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_37;
              }

              v23 = *(v24 + 8 * v26 + 32);
            }

            v27 = v23;
            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            swift_beginAccess();
            swift_unknownObjectWeakAssign();

            ++v26;
            if (v28 == v25)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
        }

        else
        {
LABEL_24:

          v24 = *&v11[OBJC_IVAR___SGNode_outputs];
          if (v24 >> 62)
          {
            v32 = __CocoaSet.count.getter();
          }

          else
          {
            v32 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v32)
          {
LABEL_35:

            return v11;
          }

          v33 = 0;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x266772030](v33, v24);
            }

            else
            {
              if (v33 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_39;
              }

              v23 = *(v24 + 8 * v33 + 32);
            }

            v34 = v23;
            v35 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            swift_beginAccess();
            swift_unknownObjectWeakAssign();

            ++v33;
            if (v35 == v32)
            {
              goto LABEL_35;
            }
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        v36 = v23;
        v25 = __CocoaSet.count.getter();
        v23 = v36;
      }
    }

    v29 = SGDataType.stringValue.getter();
    v31 = v30;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v11 = swift_allocError();
    *v12 = v29;
    *(v12 + 8) = v31;
    v14 = 4;
    goto LABEL_8;
  }

  v11 = v10;
LABEL_9:
  type metadata accessor for SGError();
  v15 = v11;
  SGError.__allocating_init(_:)(v11);
  swift_willThrow();

  return v11;
}

char *specialized static SGNode.create(color:name:numComponents:)(void *a1, Swift::String _, char *a3)
{
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v9 = swift_allocError();
    *v24 = xmmword_265F28A00;
    *(v24 + 16) = 1;
    swift_willThrow();
    goto LABEL_16;
  }

  v3 = a3;
  countAndFlagsBits = _._countAndFlagsBits;
  *(&_ - 8) = _;
  object = _._object;
  _._object = 1701667182;
  v7 = 0xE400000000000000;
  validate(_:named:)(*(&_ - 8), *&_._object);
  v9 = v8;
  if (v8)
  {
LABEL_16:
    type metadata accessor for SGError();
    v25 = v9;
    SGError.__allocating_init(_:)(v9);
    swift_willThrow();

    return v3;
  }

  v64 = 0;
  if (v3 == 3)
  {
    *&v52 = 55;
    *&v53 = a1;
    v57 = -106;
    v10 = type metadata accessor for SGNode();
    v11 = objc_allocWithZone(v10);
    swift_unknownObjectWeakInit();
    v12 = &v11[OBJC_IVAR___SGNode_name];
    *v12 = countAndFlagsBits;
    v12[1] = object;
    *&v11[OBJC_IVAR___SGNode_inputs] = MEMORY[0x277D84F90];
    v13 = a1;

    *&v11[OBJC_IVAR___SGNode_outputs] = recreateOutputs(from:nodeName:)(&v52, countAndFlagsBits, object);
    v14 = &v11[OBJC_IVAR___SGNode_data];
    v15 = v55;
    *(v14 + 2) = v54;
    *(v14 + 3) = v15;
    *(v14 + 4) = v56;
    v14[80] = v57;
    v16 = v53;
    *v14 = v52;
    *(v14 + 1) = v16;
    v50.receiver = v11;
    v50.super_class = v10;
    v17 = v13;
    v18 = objc_msgSendSuper2(&v50, sel_init);
    v19 = *&v18[OBJC_IVAR___SGNode_inputs];
    if (v19 >> 62)
    {
      goto LABEL_60;
    }

    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v3 = v18;

      if (v20)
      {
        v21 = 0;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x266772030](v21, v19);
          }

          else
          {
            if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_54;
            }

            v18 = *(v19 + 8 * v21 + 32);
          }

          v22 = v18;
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          swift_beginAccess();
          swift_unknownObjectWeakAssign();

          ++v21;
          if (v23 == v20)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
      }

      else
      {
LABEL_28:

        v19 = *&v3[OBJC_IVAR___SGNode_outputs];
        if (v19 >> 62)
        {
          v39 = __CocoaSet.count.getter();
        }

        else
        {
          v39 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v39)
        {
          goto LABEL_50;
        }

        v40 = 0;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x266772030](v40, v19);
          }

          else
          {
            if (v40 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v18 = *(v19 + 8 * v40 + 32);
          }

          v41 = v18;
          v42 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          swift_beginAccess();
          swift_unknownObjectWeakAssign();

          ++v40;
          if (v42 == v39)
          {
            goto LABEL_50;
          }
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v48 = v18;
      v20 = __CocoaSet.count.getter();
      v18 = v48;
    }
  }

  *&v58 = 56;
  *&v59 = a1;
  v63 = -105;
  v26 = type metadata accessor for SGNode();
  v27 = objc_allocWithZone(v26);
  swift_unknownObjectWeakInit();
  v28 = &v27[OBJC_IVAR___SGNode_name];
  *v28 = countAndFlagsBits;
  v28[1] = object;
  *&v27[OBJC_IVAR___SGNode_inputs] = MEMORY[0x277D84F90];
  v29 = a1;

  *&v27[OBJC_IVAR___SGNode_outputs] = recreateOutputs(from:nodeName:)(&v58, countAndFlagsBits, object);
  v30 = &v27[OBJC_IVAR___SGNode_data];
  v31 = v61;
  *(v30 + 2) = v60;
  *(v30 + 3) = v31;
  *(v30 + 4) = v62;
  v30[80] = v63;
  v32 = v59;
  *v30 = v58;
  *(v30 + 1) = v32;
  v51.receiver = v27;
  v51.super_class = v26;
  v33 = v29;
  v34 = objc_msgSendSuper2(&v51, sel_init);
  v19 = *&v34[OBJC_IVAR___SGNode_inputs];
  if (v19 >> 62)
  {
    v49 = v34;
    v35 = __CocoaSet.count.getter();
    v34 = v49;
  }

  else
  {
    v35 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v34;

  if (v35)
  {
    v36 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x266772030](v36, v19);
      }

      else
      {
        if (v36 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v18 = *(v19 + 8 * v36 + 32);
      }

      v37 = v18;
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_53;
      }

      swift_beginAccess();
      swift_unknownObjectWeakAssign();

      ++v36;
    }

    while (v38 != v35);
  }

  v19 = *&v3[OBJC_IVAR___SGNode_outputs];
  if (v19 >> 62)
  {
    v43 = __CocoaSet.count.getter();
  }

  else
  {
    v43 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v43)
  {
    v44 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x266772030](v44, v19);
      }

      else
      {
        if (v44 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v18 = *(v19 + 8 * v44 + 32);
      }

      v45 = v18;
      v46 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_57;
      }

      swift_beginAccess();
      swift_unknownObjectWeakAssign();

      ++v44;
    }

    while (v46 != v43);
  }

LABEL_50:

  return v3;
}

uint64_t dispatch thunk of SGNode.__allocating_init(name:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 120);
  v5 = *(a3 + 80);
  v6 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v6;
  v7 = *(a3 + 48);
  v9[2] = *(a3 + 32);
  v9[3] = v7;
  v9[4] = *(a3 + 64);
  v10 = v5;
  return v4(a1, a2, v9);
}

uint64_t static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(uint64_t a1, int64_t a2, char a3, int64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = dispatch thunk of Collection.count.getter();
  v15 = specialized static _HashTable.scale(forCapacity:)(v14);
  result = 0;
  if (a3)
  {
    v17 = 0;
  }

  else
  {
    v17 = a2;
  }

  if (v15 <= v17)
  {
    v15 = v17;
  }

  if (v15 <= a4)
  {
    v15 = a4;
  }

  if (v15 >= 5)
  {
    v18 = specialized _HashTable.init(scale:reservedScale:)(v15, a4);
    _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(a1, (v18 + 16), v18 + 32, a5, a6, a7);
    return v18;
  }

  return result;
}

uint64_t static _HashTable.create<A>(untilFirstDuplicateIn:scale:reservedScale:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = a8;
  v63 = a3;
  LODWORD(v58) = a4;
  v55 = a1;
  v57 = a7;
  v11 = *(*(a7 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v44 - v13;
  v44 = swift_getAssociatedTypeWitness();
  v50 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v59 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v20);
  v47 = &v44 - v21;
  v22 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v22 - 8);
  v46 = &v44 - v23;
  v24 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v24);
  v54 = (&v44 - v25);
  v53 = *(swift_getAssociatedConformanceWitness() + 8);
  v61 = swift_getAssociatedTypeWitness();
  v45 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v44 - v26;
  v27 = dispatch thunk of Collection.count.getter();
  v28 = specialized static _HashTable.scale(forCapacity:)(v27);
  v29 = v63;
  if (v58)
  {
    v29 = 0;
  }

  if (v28 > v29)
  {
    v29 = v28;
  }

  if (v29 <= a5)
  {
    v30 = a5;
  }

  else
  {
    v30 = v29;
  }

  if (v30 > 4)
  {
    v31 = specialized _HashTable.init(scale:reservedScale:)(v30, a5);
    v32 = *(TupleTypeMetadata2 + 48);
    _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(&v14[v32], a2, (v31 + 16), v31 + 32, a6, v57, v62);
    (*(v19 + 32))(v55, &v14[v32], AssociatedTypeWitness);
    return v31;
  }

  if (dispatch thunk of Collection.count.getter() > 1)
  {
    v34 = v44;
    v65 = static Array._allocateUninitialized(_:)();
    v35 = dispatch thunk of Collection.count.getter();
    v63 = type metadata accessor for Array();
    Array.reserveCapacity(_:)(v35);
    v57 = a2;
    v58 = a6;
    TupleTypeMetadata2 = v11;
    dispatch thunk of Collection.indices.getter();
    dispatch thunk of Sequence.makeIterator()();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v37 = v46;
    v53 = AssociatedConformanceWitness;
    dispatch thunk of IteratorProtocol.next()();
    v38 = v19;
    v51 = *(v19 + 48);
    v52 = v19 + 48;
    v39 = v51(v37, 1, AssociatedTypeWitness);
    v40 = v47;
    if (v39 != 1)
    {
      v54 = *(v38 + 32);
      v41 = (v50 + 2);
      v49 = v38 + 32;
      ++v50;
      v48 = (v38 + 8);
      while (1)
      {
        v54(v40, v37, AssociatedTypeWitness);
        v42 = dispatch thunk of Collection.subscript.read();
        v43 = *v41;
        (*v41)(v18);
        v42(v64, 0);
        v64[0] = v65;
        swift_getWitnessTable();
        if (Sequence<>.contains(_:)())
        {
          break;
        }

        (v43)(v59, v18, v34);
        Array.append(_:)();
        (*v50)(v18, v34);
        (*v48)(v40, AssociatedTypeWitness);
        dispatch thunk of IteratorProtocol.next()();
        if (v51(v37, 1, AssociatedTypeWitness) == 1)
        {
          goto LABEL_16;
        }
      }

      (*v50)(v18, v34);
      (*(v45 + 8))(v60, v61);

      v54(v55, v40, AssociatedTypeWitness);
      return 0;
    }

LABEL_16:
    (*(v45 + 8))(v60, v61);
  }

  dispatch thunk of Collection.endIndex.getter();
  return 0;
}

uint64_t _HashTable._storage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void *_HashTable.copy()(void *result)
{
  v1 = result[2];
  v2 = (v1 & 0x3F) << v1;
  v3 = __OFADD__(v2, 64);
  v4 = v2 + 64;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v7 = v4 - 1;
    v6 = v4 < 1;
    v8 = v4 + 62;
    if (!v6)
    {
      v8 = v7;
    }

    v9 = v8 >> 6;
    type metadata accessor for _HashTable.Storage(0);
    v10 = swift_allocObject();
    v11 = v5[3];
    v10[2] = v1;
    v10[3] = v11;
    memcpy(v10 + 4, v5 + 4, 8 * v9);
    return v10;
  }

  return result;
}

__n128 _HashTable.header.getter@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  swift_beginAccess();
  result = a1[1];
  *a2 = result;
  return result;
}

__n128 _HashTable.header.setter(__n128 *a1, __n128 *a2)
{
  swift_beginAccess();
  result = *a1;
  a2[1] = *a1;
  return result;
}

void _HashTable.capacity.getter(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16) & 0x3FLL;
  if (v2 >= 5)
  {
    v3 = (1 << v2) * 0.75;
    if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v3 > -9.22337204e18)
    {
      if (v3 < 9.22337204e18)
      {
        return;
      }

LABEL_8:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_8;
  }
}

uint64_t _HashTable.minimumCapacity.getter(uint64_t a1)
{
  swift_beginAccess();
  result = 0;
  v3 = *(a1 + 16) & 0x3FLL;
  if (v3 >= 5 && v3 != (*(a1 + 24) & 0x3FLL))
  {
    v5 = vcvtd_n_f64_s64(1 << v3, 2uLL);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        return v5;
      }

LABEL_12:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t specialized _HashTable.init(scale:reservedScale:)(uint64_t result, uint64_t a2)
{
  v2 = (result << result) + 63;
  if (__OFADD__(result << result, 63))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = (result << result) + 126;
  if (v2 >= 0)
  {
    v5 = (result << result) + 63;
  }

  v6 = v5 >> 6;
  type metadata accessor for _HashTable.Storage(0);
  v7 = 8 * v6;
  result = swift_allocObject();
  *(result + 16) = v4 | (result << 6);
  *(result + 24) = a2;
  if (v2 < -63)
  {
    goto LABEL_9;
  }

  if ((v2 + 63) >= 0x7F)
  {
    v8 = result;
    bzero((result + 32), v7);
    return v8;
  }

  return result;
}

uint64_t type metadata accessor for _HashTable.Storage(uint64_t a1)
{
  result = type metadata singleton initialization cache for _HashTable.Storage;
  if (!type metadata singleton initialization cache for _HashTable.Storage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_265ED5E40@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = v3[1];
  *a2 = result;
  return result;
}

void sub_265ED5E88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
}

uint64_t MetalShaderProgram.createLiteralValue(type:value:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 48);
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    *(v2 + 48) = v3 + 1;
    type metadata accessor for MetalLiteralValueNode();
    v6 = swift_allocObject();
    *(v6 + 112) = *(a2 + 64);
    v7 = MEMORY[0x277D84F90];
    *(v6 + 113) = 0;
    *(v6 + 24) = v7;
    *(v6 + 32) = v5;
    v8 = *(a2 + 48);
    *(v6 + 80) = *(a2 + 32);
    *(v6 + 96) = v8;
    v9 = *(a2 + 16);
    *(v6 + 48) = *a2;
    *(v6 + 64) = v9;
    *(v6 + 16) = v3;

    outlined init with copy of SGDataTypeStorage(a2, &v11);
    v10 = specialized MetalShaderProgram.add<A>(_:)(v6);

    return v10;
  }

  return result;
}

uint64_t MetalShaderProgram.createCallFunction(resultType:functionName:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    *(v3 + 48) = v4 + 1;
    type metadata accessor for MetalFunctionCallNode();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D84F90];
    *(v8 + 56) = 0;
    *(v8 + 32) = v7;
    *(v8 + 40) = a2;
    *(v8 + 48) = a3;
    *(v8 + 16) = v4;
    *(v8 + 24) = v9;

    v10 = specialized MetalShaderProgram.add<A>(_:)(v8);

    return v10;
  }

  return result;
}

uint64_t MetalShaderProgram.createRESurfaceShaderFunctionNode(named:paramsInput:uniformsInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(v8 + 48);
  if (__OFADD__(v16, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

  v9 = a7;
  v10 = a6;
  v14 = a5;
  v15 = a4;
  v12 = a2;
  v13 = a1;
  v22 = a3;
  v23 = a8;
  *(v8 + 48) = v16 + 1;
  type metadata accessor for RESurfaceShaderFunctionNode();
  v11 = swift_allocObject();
  v17 = one-time initialization token for void;

  if (v17 != -1)
  {
LABEL_5:
    swift_once();
  }

  v18 = static MetalDataType.void;
  v19 = MEMORY[0x277D84F90];
  v11[2] = v13;
  v11[3] = v12;
  v11[4] = v22;
  v11[5] = v15;
  v11[6] = v14;
  v11[7] = v10;
  v11[8] = v9;
  v11[9] = v23;
  v11[12] = v19;
  v11[13] = v13;
  v11[14] = v12;
  v11[10] = v18;
  v11[11] = v16;
  swift_bridgeObjectRetain_n();

  outlined copy of (name: String, type: MetalDataType)?(v10, v9);
  v20 = specialized MetalShaderProgram.add<A>(_:)(v11);

  return v20;
}

uint64_t MetalShaderProgram.createGetArgument(resultType:argumentName:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    *(v3 + 48) = v4 + 1;
    type metadata accessor for MetalFunctionParameterNode();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D84F90];
    v8[4] = v7;
    v8[5] = a2;
    v8[6] = a3;
    v8[2] = v4;
    v8[3] = v9;

    v10 = specialized MetalShaderProgram.add<A>(_:)(v8);

    return v10;
  }

  return result;
}

uint64_t MetalShaderProgram.createPassthrough(valueType:)(uint64_t result)
{
  v2 = *(v1 + 48);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    *(v1 + 48) = v2 + 1;
    type metadata accessor for MetalPassthroughNode();
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D84F90];
    *(v4 + 24) = v3;
    *(v4 + 32) = v5;
    *(v4 + 40) = 0;
    *(v4 + 16) = v2;

    v6 = specialized MetalShaderProgram.add<A>(_:)(v4);

    return v6;
  }

  return result;
}

void *MetalShaderProgram.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_AC05MetaleF0_pTt0g5Tf4g_n(v1);
  v0[4] = v1;
  v0[5] = v1;
  v0[6] = 1;
  return v0;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of MetalFunctionNode(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    outlined destroy of [Input](a1, &_s11ShaderGraph17MetalFunctionNode_pSgMd, &_s11ShaderGraph17MetalFunctionNode_pSgMR);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      outlined init with take of MetalFunctionNode((*(v11 + 56) + 40 * v9), v14);
      specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return outlined destroy of [Input](v14, &_s11ShaderGraph17MetalFunctionNode_pSgMd, &_s11ShaderGraph17MetalFunctionNode_pSgMR);
  }

  return result;
}

void MetalShaderProgram.terminalNodes()()
{
  v1 = *(*v0 + 120);
  v2 = v1();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      outlined init with copy of MetalFunctionNode(v4, v55);
      v6 = v56;
      v7 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      v8 = (*(v7 + 48))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      v9 = *(v8 + 16);
      v10 = *(v5 + 2);
      v11 = v10 + v9;
      if (__OFADD__(v10, v9))
      {
        goto LABEL_46;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v11 <= *(v5 + 3) >> 1)
      {
        if (*(v8 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v10 <= v11)
        {
          v13 = v10 + v9;
        }

        else
        {
          v13 = v10;
        }

        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13, 1, v5);
        if (*(v8 + 16))
        {
LABEL_14:
          v14 = *(v5 + 2);
          if ((*(v5 + 3) >> 1) - v14 < v9)
          {
            goto LABEL_48;
          }

          memcpy(&v5[8 * v14 + 32], (v8 + 32), 8 * v9);

          if (v9)
          {
            v15 = *(v5 + 2);
            v16 = __OFADD__(v15, v9);
            v17 = v15 + v9;
            if (v16)
            {
              goto LABEL_49;
            }

            *(v5 + 2) = v17;
          }

          goto LABEL_4;
        }
      }

      if (v9)
      {
        goto LABEL_47;
      }

LABEL_4:
      v4 += 40;
      if (!--v3)
      {

        goto LABEL_20;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_20:
  v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph14FunctionNodeIDV_SayAFGTt0g5Tf4g_n(v5);

  v20 = (v1)(v19);
  v21 = *(v20 + 16);
  if (v21)
  {
    *&v53 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
    v22 = v53;
    v23 = v20 + 32;
    do
    {
      outlined init with copy of MetalFunctionNode(v23, v55);
      v24 = v56;
      v25 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      v26 = (*(v25 + 24))(v24, v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      *&v53 = v22;
      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v22 = v53;
      }

      *(v22 + 16) = v28 + 1;
      *(v22 + 8 * v28 + 32) = v26;
      v23 += 40;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v29 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph14FunctionNodeIDV_SayAFGTt0g5Tf4g_n(v22);

  if (*(v18 + 16) <= *(v29 + 16) >> 3)
  {
    v55[0] = v29;
    specialized Set._subtract<A>(_:)(v18);

    v30 = v55[0];
  }

  else
  {
    v30 = specialized _NativeSet.subtracting<A>(_:)(v18, v29);
  }

  v31 = v30 + 56;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 56);
  v35 = (v32 + 63) >> 6;

  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  v50 = v30;
  if (v34)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v35)
    {

      return;
    }

    v34 = *(v31 + 8 * v38);
    ++v36;
    if (v34)
    {
      v36 = v38;
      do
      {
LABEL_37:
        v39 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        (*(*v52 + 272))(&v53, *(*(v30 + 48) + ((v36 << 9) | (8 * v39))));
        outlined init with take of MetalFunctionNode(&v53, v55);
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v54 = v37;
        if ((v40 & 1) == 0)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
          v54 = v37;
        }

        v42 = v37[2];
        v41 = v37[3];
        if (v42 >= v41 >> 1)
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v37);
          v54 = v51;
        }

        else
        {
          v51 = v37;
        }

        v43 = v56;
        v44 = v57;
        v45 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
        v46 = MEMORY[0x28223BE20](v45);
        v48 = &v50 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v49 + 16))(v48, v46);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v42, v48, &v54, v43, v44);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        v30 = v50;
        v37 = v51;
      }

      while (v34);
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

void MetalShaderProgram.topologicalSort(from:)(void *a1)
{
  v5 = MEMORY[0x277D84FA0];
  v4 = MEMORY[0x277D84FA0];
  v2 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D84F90];
  MetalShaderProgram._dfsHelper(node:visited:onStack:preOrder:postOrder:)(a1, &v5, &v4, &v3, &v2);
  if (v1)
  {
  }
}

uint64_t MetalShaderProgram.createFunctionDefinitionNode(argumentTypes:resultType:functionName:specifier:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = *(v6 + 48);
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    *(v6 + 48) = v7 + 1;
    type metadata accessor for MetalFunctionDefinitionNode();
    v14 = swift_allocObject();
    v15 = v14;
    v16 = MEMORY[0x277D84F90];
    v14[4] = a2;
    v14[5] = a3;
    if (a6)
    {
      v17 = a5;
    }

    else
    {
      v17 = 0;
    }

    v18 = 0xE000000000000000;
    if (a6)
    {
      v18 = a6;
    }

    v14[6] = a4;
    v14[7] = v17;
    v14[8] = v18;
    v14[9] = v13;
    v14[2] = v7;
    v14[3] = v16;

    v19 = specialized MetalShaderProgram.add<A>(_:)(v15);

    return v19;
  }

  return result;
}

void defaultCreateMetalInvocation(in:for:functionDefinitionName:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = (*(*a1 + 112))();
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v11 = (*(v10 + 48))(v9, v10);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v24 = a4;
    v25 = v8;
    v29 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v14 = 0;
    v15 = v29;
    v27 = *(**(v7 + 16) + 272);
    while (v14 < *(v11 + 16))
    {
      v27(v28, *(v11 + 8 * v14 + 32));
      if (v4)
      {

        goto LABEL_13;
      }

      v16 = v7;
      v29 = v15;
      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v15 = v29;
      }

      ++v14;
      *(v15 + 2) = v18 + 1;
      outlined init with take of MetalFunctionNode(v28, &v15[40 * v18 + 32]);
      v7 = v16;
      if (v12 == v14)
      {

        a4 = v24;
        v8 = v25;
        v13 = MEMORY[0x277D84F90];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
LABEL_11:
    v29 = v13;

    specialized Sequence.compactMap<A>(_:)(v15, v8, v7, &v29);
    v20 = v19;

    if (v4)
    {

LABEL_13:
    }

    else
    {

      *&v28[0] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v21 = BidirectionalCollection<>.joined(separator:)();
      v23 = v22;

      *&v28[0] = a3;
      *(&v28[0] + 1) = a4;

      MEMORY[0x266771550](40, 0xE100000000000000);
      MEMORY[0x266771550](v21, v23);

      MEMORY[0x266771550](15145, 0xE200000000000000);
    }
  }
}

uint64_t closure #1 in implicit closure #1 in closure #2 in defaultCreateMetalInvocation(in:for:functionDefinitionName:)(void *a1, uint64_t a2, uint64_t a3, char **a4)
{
  outlined init with copy of MetalFunctionNode(a1, &v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph18HasMetalInvocation_pMd, &_s11ShaderGraph18HasMetalInvocation_pMR);
  swift_dynamicCast();
  v9 = v47;
  v10 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  v11 = (*(v10 + 8))(a2, v9, v10);
  v13 = v12;
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  if (!v4)
  {
    v52 = a4;
    outlined init with copy of MetalFunctionNode(a1, &v49);
    type metadata accessor for MetalLiteralValueNode();
    if (swift_dynamicCast() || (outlined init with copy of MetalFunctionNode(a1, &v49), type metadata accessor for MetalFunctionParameterNode(), swift_dynamicCast()))
    {
    }

    else
    {
      v45 = (*(*a3 + 304))(a1);
      v18 = v17;
      specialized Array.append<A>(contentsOf:)(v15);
      v19 = a1[3];
      v20 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v19);
      v21 = (*(v20 + 16))(v19, v20);
      if (one-time initialization token for void != -1)
      {
        swift_once();
      }

      v22 = (*(*v21 + 128))(static MetalDataType.void);

      if (v22)
      {
        *&v49 = v11;
        *(&v49 + 1) = v13;
        MEMORY[0x266771550](59, 0xE100000000000000);
        v23 = v49;
        v24 = v52;
        v25 = *v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v24 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
          *v24 = v25;
        }

        v11 = v45;
        v28 = *(v25 + 2);
        v27 = *(v25 + 3);
        if (v28 >= v27 >> 1)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
          *v52 = v25;
        }

        *(v25 + 2) = v28 + 1;
        *&v25[16 * v28 + 32] = v23;
      }

      else
      {
        v29 = a1[3];
        v30 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v29);
        v31 = (*(v30 + 16))(v29, v30);
        v33 = *(v31 + 24);
        v32 = *(v31 + 32);

        *&v49 = v33;
        *(&v49 + 1) = v32;
        MEMORY[0x266771550](32, 0xE100000000000000);
        MEMORY[0x266771550](v45, v18);
        MEMORY[0x266771550](2112800, 0xE300000000000000);
        MEMORY[0x266771550](v11, v13);

        MEMORY[0x266771550](59, 0xE100000000000000);
        v35 = *(&v49 + 1);
        v34 = v49;
        outlined init with copy of MetalFunctionNode(a1, v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph26MetalConstExprFunctionNode_pMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pMR);
        if (swift_dynamicCast())
        {
          v36 = *(&v50 + 1);
          v37 = v51;
          __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
          v38 = (*(v37 + 16))(v36, v37);
          __swift_destroy_boxed_opaque_existential_1Tm(&v49);
          if (v38)
          {
            *&v49 = 0x70786574736E6F63;
            *(&v49 + 1) = 0xEA00000000002072;
            MEMORY[0x266771550](v34, v35);

            v35 = *(&v49 + 1);
            v34 = v49;
          }
        }

        else
        {
          v51 = 0;
          v49 = 0u;
          v50 = 0u;
          outlined destroy of [Input](&v49, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMd, &_s11ShaderGraph26MetalConstExprFunctionNode_pSgMR);
        }

        v39 = v52;
        v40 = *v52;
        v41 = swift_isUniquelyReferenced_nonNull_native();
        *v39 = v40;
        if ((v41 & 1) == 0)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
          *v39 = v40;
        }

        v43 = *(v40 + 2);
        v42 = *(v40 + 3);
        if (v43 >= v42 >> 1)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v40);
          *v39 = v40;
        }

        *(v40 + 2) = v43 + 1;
        v44 = &v40[16 * v43];
        *(v44 + 4) = v34;
        *(v44 + 5) = v35;
        return v45;
      }
    }
  }

  return v11;
}

uint64_t MetalFunctionNodeBase.metalFunctionTemplate.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MetalFunctionNodeBase.debugLabel.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

double MetalFunctionNodeBase.debugLabel.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  return result;
}

uint64_t MetalFunctionNodeBase.resultType.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t MetalFunctionNodeBase.functionDefinitionName.getter()
{
  (*(*v0 + 120))();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](25705, 0xE200000000000000);

  return 0x6E6F6974636E7566;
}

void *MetalFunctionNodeBase.__allocating_init(id:resultType:template:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  result[6] = 0;
  result[7] = 0;
  result[8] = a2;
  result[4] = a4;
  result[5] = v9;
  result[2] = a1;
  result[3] = a3;
  return result;
}

void *MetalFunctionNodeBase.init(id:resultType:template:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = 0;
  v4[5] = MEMORY[0x277D84F90];
  v4[6] = 0;
  v4[8] = a2;
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return v4;
}

Swift::Void __swiftcall MetalFunctionNodeBase.setInputs(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v14;
    v5 = a1._rawValue + 32;
    do
    {
      outlined init with copy of MetalFunctionNode(v5, v11);
      v6 = v12;
      v7 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v8 = (*(v7 + 24))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      v14 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 8 * v10 + 32) = v8;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  (*(*v1 + 152))(v3);
}

uint64_t MetalFunctionNodeBase.generateMetalSource(in:)(void **a1)
{
  v3 = v2;
  v4 = v1;
  v59 = ((*a1)[14])();
  v58 = v1;
  v6 = (*(*v1 + 144))();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v60 = *(v6 + 16);
    while (v9 < *(v7 + 16))
    {
      (*(*a1[2] + 272))(&v61, *(v7 + 8 * v9 + 32));
      if (v3)
      {
      }

      v12 = v63;
      v13 = v64;
      __swift_project_boxed_opaque_existential_1(&v61, v63);
      v14 = (*(v13 + 16))(v12, v13);
      if (one-time initialization token for void != -1)
      {
        swift_once();
      }

      v4 = static MetalDataType.void;
      v15 = *(*v14 + 128);

      v17 = v15(v16);

      if ((v17 & 1) == 0)
      {
        v18 = v63;
        v19 = v64;
        __swift_project_boxed_opaque_existential_1(&v61, v63);
        v20 = (*(v19 + 16))(v18, v19);
        v4 = (*(*v20 + 240))(v20);
        v22 = v21;

        MEMORY[0x266771550](9248, 0xE200000000000000);
        v65 = v9;
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v23);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
        }

        v25 = *(v10 + 2);
        v24 = *(v10 + 3);
        if (v25 >= v24 >> 1)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v10);
        }

        *(v10 + 2) = v25 + 1;
        v11 = &v10[16 * v25];
        *(v11 + 4) = v4;
        *(v11 + 5) = v22;
        v8 = v60;
      }

      ++v9;
      __swift_destroy_boxed_opaque_existential_1Tm(&v61);
      if (v8 == v9)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
LABEL_15:

    v61 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v26 = BidirectionalCollection<>.joined(separator:)();
    v28 = v27;

    v30 = (*(*v58 + 168))(v29);
    if (v31)
    {
      v61 = 2109231;
      v62 = 0xE300000000000000;
      MEMORY[0x266771550](v30);

      v32 = v61;
      v33 = v62;
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v35 = *(v10 + 2);
      v34 = *(v10 + 3);
      if (v35 >= v34 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v10);
      }

      *(v10 + 2) = v35 + 1;
      v36 = &v10[16 * v35];
      *(v36 + 4) = v32;
      *(v36 + 5) = v33;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v61 = 0x20656E696C6E69;
    v62 = 0xE700000000000000;
    v38 = (*(*v58 + 192))(v37);
    v39 = *(v38 + 24);
    v40 = *(v38 + 32);

    MEMORY[0x266771550](v39, v40);

    v41 = MEMORY[0x266771550](32, 0xE100000000000000);
    v42 = (*(*v58 + 216))(v41);
    MEMORY[0x266771550](v42);

    MEMORY[0x266771550](40, 0xE100000000000000);
    MEMORY[0x266771550](v26, v28);

    MEMORY[0x266771550](0x202020200A7B2029, 0xE800000000000000);
    MEMORY[0x266771550](v58[3], v58[4]);
    MEMORY[0x266771550](32010, 0xE200000000000000);
    v4 = v61;
    v9 = v62;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_22;
    }
  }

  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
LABEL_22:
  v44 = *(v10 + 2);
  v43 = *(v10 + 3);
  if (v44 >= v43 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v10);
  }

  *(v10 + 2) = v44 + 1;
  v45 = &v10[16 * v44];
  *(v45 + 4) = v4;
  *(v45 + 5) = v9;
  v61 = v10;
  v46 = BidirectionalCollection<>.joined(separator:)();
  v48 = v47;

  v49 = (*(*v59 + 352))(&v61);
  v51 = v50;
  v52 = *v50;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v51 = v52;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
    *v51 = v52;
  }

  v55 = *(v52 + 2);
  v54 = *(v52 + 3);
  if (v55 >= v54 >> 1)
  {
    v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v52);
    *v51 = v52;
  }

  *(v52 + 2) = v55 + 1;
  v56 = &v52[16 * v55];
  *(v56 + 4) = v46;
  *(v56 + 5) = v48;
  v49(&v61, 0);
}

uint64_t MetalFunctionNodeBase.createMetalInvocation(in:)(uint64_t a1)
{
  v3 = v2;
  v12[3] = type metadata accessor for MetalFunctionNodeBase();
  v12[4] = &protocol witness table for MetalFunctionNodeBase;
  v12[0] = v1;
  v5 = *(*v1 + 216);

  v7 = v5(v6);
  defaultCreateMetalInvocation(in:for:functionDefinitionName:)(a1, v12, v7, v8);
  if (v3)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v11 = v9;

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    return v11;
  }
}

void *MetalFunctionNodeBase.deinit()
{

  return v0;
}

uint64_t MetalFunctionNodeBase.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance MetalFunctionNodeBase(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 136))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 160))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t protocol witness for HasMetalInvocation.createMetalInvocation(in:) in conformance MetalFunctionNodeBase()
{
  result = (*(**v0 + 248))();
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t MetalLiteralValueNode.resultType.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

__n128 MetalLiteralValueNode.value.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v10 = *(v1 + 80);
  v11 = v3;
  v12 = *(v1 + 112);
  v4 = *(v1 + 64);
  v8 = *(v1 + 48);
  v9 = v4;
  outlined init with copy of SGDataTypeStorage(&v8, &v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

__n128 MetalLiteralValueNode.value.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = *(v1 + 104);
  v11 = *(v1 + 112);
  v12 = *(a1 + 48);
  *(v1 + 80) = *(a1 + 32);
  *(v1 + 96) = v12;
  *(v1 + 112) = *(a1 + 64);
  v13 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v13;
  outlined consume of SGDataTypeStorage(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  return result;
}

__n128 MetalLiteralValueNode.__allocating_init(id:resultType:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  *(v6 + 113) = 0;
  *(v6 + 24) = v7;
  *(v6 + 32) = a2;
  v8 = *(a3 + 48);
  *(v6 + 80) = *(a3 + 32);
  *(v6 + 96) = v8;
  *(v6 + 112) = *(a3 + 64);
  result = *(a3 + 16);
  *(v6 + 48) = *a3;
  *(v6 + 64) = result;
  *(v6 + 16) = a1;
  return result;
}

uint64_t MetalLiteralValueNode.init(id:resultType:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  *(v3 + 113) = 0;
  *(v3 + 24) = v4;
  *(v3 + 32) = a2;
  v5 = *(a3 + 48);
  *(v3 + 80) = *(a3 + 32);
  *(v3 + 96) = v5;
  *(v3 + 112) = *(a3 + 64);
  v6 = *(a3 + 16);
  *(v3 + 48) = *a3;
  *(v3 + 64) = v6;
  *(v3 + 16) = a1;
  return v3;
}

Swift::Void __swiftcall MetalLiteralValueNode.setInputs(_:)(Swift::OpaquePointer a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, logger);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7475706E49746573, 0xED0000293A5F2873, &v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x266773120](v4, -1, -1);
    MEMORY[0x266773120](v3, -1, -1);
  }
}

uint64_t MetalLiteralValueNode.debugLabel.getter()
{
  v1 = (*(*v0 + 120))();
  v8 = 25705;
  v9 = 0xE200000000000000;
  v10 = v1;
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v2);

  v3 = MEMORY[0x266771550](95, 0xE100000000000000);
  (*(*v0 + 192))(&v8, v3);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  v8 = 25705;
  v9 = 0xE200000000000000;

  MEMORY[0x266771550](v4, v6);

  MEMORY[0x266771550](0x61726574696C6E5CLL, 0xE90000000000006CLL);

  return v8;
}

uint64_t MetalLiteralValueNode.deinit()
{

  outlined consume of SGDataTypeStorage(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  return v0;
}

uint64_t MetalLiteralValueNode.__deallocating_deinit()
{

  outlined consume of SGDataTypeStorage(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance MetalLiteralValueNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 136))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance MetalLiteralValueNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 160))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalConstExprFunctionNode.isConstExpr.modify in conformance MetalLiteralValueNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 232))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t MetalFunctionCallNode.functionName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MetalFunctionCallNode.__allocating_init(id:resultType:functionName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(result + 56) = 0;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(result + 16) = a1;
  *(result + 24) = v9;
  return result;
}

uint64_t MetalFunctionCallNode.init(id:resultType:functionName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = 0;
  v5 = MEMORY[0x277D84F90];
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = v5;
  return v4;
}

Swift::Void __swiftcall MetalFunctionCallNode.setInputs(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v14;
    v5 = a1._rawValue + 32;
    do
    {
      outlined init with copy of MetalFunctionNode(v5, v11);
      v6 = v12;
      v7 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v8 = (*(v7 + 24))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      v14 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 8 * v10 + 32) = v8;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  (*(*v1 + 152))(v3);
}

uint64_t MetalFunctionCallNode.createMetalInvocation(in:)(uint64_t a1)
{
  v3 = v2;
  v10[3] = type metadata accessor for MetalFunctionCallNode();
  v10[4] = &protocol witness table for MetalFunctionCallNode;
  v10[0] = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);

  defaultCreateMetalInvocation(in:for:functionDefinitionName:)(a1, v10, v5, v6);
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  v9 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v9;
}

uint64_t MetalFunctionCallNode.debugLabel.getter()
{
  (*(*v0 + 120))();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](95, 0xE100000000000000);
  v3 = v0[5];
  v4 = v0[6];

  MEMORY[0x266771550](0x6974636E75666E5CLL, 0xEA00000000006E6FLL);

  MEMORY[0x266771550](v3, v4);

  return 25705;
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance MetalFunctionCallNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 136))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionCallNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 160))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t protocol witness for HasMetalInvocation.createMetalInvocation(in:) in conformance MetalFunctionCallNode()
{
  result = (*(**v0 + 232))();
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t (*protocol witness for MetalConstExprFunctionNode.isConstExpr.modify in conformance MetalFunctionCallNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 208))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t MetalFunctionParameterNode.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

double MetalFunctionParameterNode.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  return result;
}

void *MetalFunctionParameterNode.__allocating_init(id:resultType:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  result[4] = a2;
  result[5] = a3;
  result[6] = a4;
  result[2] = a1;
  result[3] = v9;
  return result;
}

void *MetalFunctionParameterNode.init(id:resultType:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D84F90];
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t MetalFunctionParameterNode.debugLabel.getter()
{
  (*(*v0 + 112))();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  v2 = MEMORY[0x266771550](95, 0xE100000000000000);
  v3 = (*(*v0 + 160))(v2);
  v5 = v4;

  MEMORY[0x266771550](v3, v5);

  return 25705;
}

void *MetalFunctionCallNode.deinit()
{

  return v0;
}

uint64_t MetalFunctionCallNode.__deallocating_deinit(uint64_t a1)
{

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance MetalFunctionParameterNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 128))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionParameterNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 152))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t protocol witness for HasMetalInvocation.createMetalInvocation(in:) in conformance MetalFunctionParameterNode()
{
  result = (*(**v0 + 200))();
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t MetalFunctionDefinitionNode.specifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

double MetalFunctionDefinitionNode.specifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  return result;
}

double MetalFunctionDefinitionNode.argumentTypes.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;

  return result;
}

void *MetalFunctionDefinitionNode.__allocating_init(id:argumentTypes:resultType:functionName:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  result = swift_allocObject();
  v15 = MEMORY[0x277D84F90];
  result[4] = a3;
  result[5] = a4;
  if (a7)
  {
    v16 = a6;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0xE000000000000000;
  if (a7)
  {
    v17 = a7;
  }

  result[6] = a5;
  result[7] = v16;
  result[8] = v17;
  result[9] = a2;
  result[2] = a1;
  result[3] = v15;
  return result;
}

void *MetalFunctionDefinitionNode.init(id:argumentTypes:resultType:functionName:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = MEMORY[0x277D84F90];
  v7[4] = a3;
  v7[5] = a4;
  if (a7)
  {
    v9 = a6;
  }

  else
  {
    v9 = 0;
  }

  v7[6] = a5;
  v7[7] = v9;
  v10 = 0xE000000000000000;
  if (a7)
  {
    v10 = a7;
  }

  v7[8] = v10;
  v7[9] = a2;
  v7[2] = a1;
  v7[3] = v8;
  return v7;
}

uint64_t MetalFunctionDefinitionNode.debugLabel.getter()
{
  (*(*v0 + 128))();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](95, 0xE100000000000000);
  _StringGuts.grow(_:)(23);

  MEMORY[0x266771550](v0[5], v0[6]);

  MEMORY[0x266771550](0xD000000000000015, 0x8000000265F33690);

  return 25705;
}

Swift::Void __swiftcall MetalFunctionDefinitionNode.setInputs(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v14;
    v5 = a1._rawValue + 32;
    do
    {
      outlined init with copy of MetalFunctionNode(v5, v11);
      v6 = v12;
      v7 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v8 = (*(v7 + 24))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      v14 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 8 * v10 + 32) = v8;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  (*(*v1 + 160))(v3);
}

void MetalFunctionDefinitionNode.functionDeclarationString()()
{
  v1 = (*(*v0 + 224))();
  v2 = v1;
  v26 = *(v1 + 16);
  if (v26)
  {
    v3 = 0;
    v27 = MEMORY[0x277D84F90];
    v4 = (v1 + 48);
    while (v3 < *(v2 + 16))
    {
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);
      v8 = *v4;
      v9 = one-time initialization token for void;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = *(*v8 + 128);

      v12 = v10(v11);

      if ((v12 & 1) == 0)
      {
        v28 = (*(*v8 + 240))(v13);
        v29 = v14;
        MEMORY[0x266771550](32, 0xE100000000000000);
        MEMORY[0x266771550](v7, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
        }

        v16 = *(v27 + 2);
        v15 = *(v27 + 3);
        if (v16 >= v15 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v27);
        }

        *(v27 + 2) = v16 + 1;
        v5 = &v27[16 * v16];
        *(v5 + 4) = v28;
        *(v5 + 5) = v29;
      }

      ++v3;

      v4 += 3;
      if (v26 == v3)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v17 = BidirectionalCollection<>.joined(separator:)();
    v19 = v18;

    (*(*v25 + 200))(v20);
    v21 = MEMORY[0x266771550](32, 0xE100000000000000);
    v22 = (*(*v25 + 176))(v21);
    v23 = *(v22 + 24);
    v24 = *(v22 + 32);

    MEMORY[0x266771550](v23, v24);

    MEMORY[0x266771550](32, 0xE100000000000000);
    MEMORY[0x266771550](v25[5], v25[6]);
    MEMORY[0x266771550](40, 0xE100000000000000);
    MEMORY[0x266771550](v17, v19);

    MEMORY[0x266771550](41, 0xE100000000000000);
  }
}

Swift::String __swiftcall MetalFunctionDefinitionNode.forwardDeclaration()()
{
  MetalFunctionDefinitionNode.functionDeclarationString()();
  v5 = v0;
  v6 = v1;

  MEMORY[0x266771550](59, 0xE100000000000000);

  v2 = v5;
  v3 = v6;
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

void *closure #1 in MetalFunctionDefinitionNode.generateMetalSource(in:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a2;
  v8 = *(a2 + 16);
  v9 = (*(*a3 + 152))();
  if (!*(v9 + 16))
  {
    __break(1u);
    goto LABEL_38;
  }

  v10 = *(v9 + 32);

  result = (*(*v8 + 272))(v73, v10);
  if (v3)
  {
    return result;
  }

  v76 = 0;
  outlined init with copy of MetalFunctionNode(v73, &v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph18HasMetalInvocation_pMd, &_s11ShaderGraph18HasMetalInvocation_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v67 = 0;
    memset(v66, 0, sizeof(v66));
    outlined destroy of [Input](v66, &_s11ShaderGraph18HasMetalInvocation_pSgMd, &_s11ShaderGraph18HasMetalInvocation_pSgMR);
    v8 = 0;
    v6 = 0xE000000000000000;
    v4 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  outlined init with take of MetalFunctionNode(v66, &v69);
  v12 = v71;
  v13 = v72;
  __swift_project_boxed_opaque_existential_1(&v69, v71);
  v14 = v76;
  v15 = (*(v13 + 8))(v6, v12, v13);
  v76 = v14;
  if (!v14)
  {
    v8 = v15;
    v6 = v16;
    v4 = v17;

    __swift_destroy_boxed_opaque_existential_1Tm(&v69);
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v4;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_9:
      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[16 * v21];
      *(v22 + 4) = v8;
      *(v22 + 5) = v6;

      v24 = (*(*a3 + 256))(v23);
      if (v25)
      {
        v65 = v6;
        v26 = a1;
        v27 = v8;
        v69 = 2109231;
        v70 = 0xE300000000000000;
        MEMORY[0x266771550](v24);

        v29 = v69;
        v28 = v70;
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
        v32 = *(v30 + 2);
        v31 = *(v30 + 3);
        if (v32 >= v31 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v30);
        }

        *(v30 + 2) = v32 + 1;
        v33 = &v30[16 * v32];
        *(v33 + 4) = v29;
        *(v33 + 5) = v28;
        v8 = v27;
        a1 = v26;
        v6 = v65;
      }

      else
      {
        v30 = MEMORY[0x277D84F90];
      }

      MetalFunctionDefinitionNode.functionDeclarationString()();
      v69 = v34;
      v70 = v35;

      MEMORY[0x266771550](31520, 0xE200000000000000);

      v36 = v69;
      v37 = v70;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      }

      v39 = *(v30 + 2);
      v38 = *(v30 + 3);
      if (v39 >= v38 >> 1)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v30);
      }

      *(v30 + 2) = v39 + 1;
      v40 = &v30[16 * v39];
      *(v40 + 4) = v36;
      *(v40 + 5) = v37;
      v68 = v30;
      specialized Array.append<A>(contentsOf:)(v4);
      v41 = v74;
      v42 = v75;
      __swift_project_boxed_opaque_existential_1(v73, v74);
      v43 = (*(v42 + 16))(v41, v42);
      if (one-time initialization token for void != -1)
      {
        swift_once();
      }

      v44 = *(*v43 + 128);

      v46 = v44(v45);

      if ((v46 & 1) == 0)
      {
        v69 = 0x206E7275746572;
        v70 = 0xE700000000000000;
        MEMORY[0x266771550](v8, v6);

        MEMORY[0x266771550](59, 0xE100000000000000);
        v8 = v69;
        v6 = v70;
      }

      v47 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
      }

      v49 = *(v47 + 2);
      v48 = *(v47 + 3);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v47);
      }

      *(v47 + 2) = v50;
      v51 = &v47[16 * v49];
      *(v51 + 4) = v8;
      *(v51 + 5) = v6;
      v52 = *(v47 + 3);
      if (v50 >= v52 >> 1)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v49 + 2, 1, v47);
      }

      *(v47 + 2) = v49 + 2;
      v53 = &v47[16 * v50];
      *(v53 + 4) = 125;
      *(v53 + 5) = 0xE100000000000000;
      v69 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v54 = BidirectionalCollection<>.joined(separator:)();
      v56 = v55;

      v57 = (*(*a1 + 352))(&v69);
      v59 = v58;
      v60 = *v58;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *v59 = v60;
      if ((v61 & 1) == 0)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 2) + 1, 1, v60);
        *v59 = v60;
      }

      v63 = *(v60 + 2);
      v62 = *(v60 + 3);
      if (v63 >= v62 >> 1)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v60);
        *v59 = v60;
      }

      *(v60 + 2) = v63 + 1;
      v64 = &v60[16 * v63];
      *(v64 + 4) = v54;
      *(v64 + 5) = v56;
      v57(&v69, 0);
      return __swift_destroy_boxed_opaque_existential_1Tm(v73);
    }

LABEL_38:
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    goto LABEL_9;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v69);
  return __swift_destroy_boxed_opaque_existential_1Tm(v73);
}

void *MetalFunctionDefinitionNode.deinit()
{

  return v0;
}

uint64_t MetalFunctionDefinitionNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance MetalFunctionDefinitionNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 144))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionDefinitionNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 168))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t MetalStructGetterOffsetNode.__allocating_init(id:inputType:resultType:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(result + 16) = a1;
  *(result + 24) = v9;
  return result;
}

uint64_t MetalStructGetterOffsetNode.init(id:inputType:resultType:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = MEMORY[0x277D84F90];
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = v5;
  return v4;
}

uint64_t MetalStructGetterOffsetNode.debugLabel.getter()
{
  (*(*v0 + 120))();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  v2 = MEMORY[0x266771550](95, 0xE100000000000000);
  v3 = (*(*v0 + 168))(v2);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);

  MEMORY[0x266771550](0x657366666F204020, 0xEA00000000002074);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v6);

  MEMORY[0x266771550](v5, v4);

  return 25705;
}

Swift::Void __swiftcall MetalStructGetterOffsetNode.setInputs(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v14;
    v5 = a1._rawValue + 32;
    do
    {
      outlined init with copy of MetalFunctionNode(v5, v11);
      v6 = v12;
      v7 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v8 = (*(v7 + 24))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      v14 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 8 * v10 + 32) = v8;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  (*(*v1 + 152))(v3);
}

uint64_t *MetalStructGetterOffsetNode.createMetalInvocation(in:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = (*(*v1 + 144))();
  v7 = *(v6 + 16);
  if (v7)
  {
    v46 = v1;
    v51 = MEMORY[0x277D84F90];
    v8 = &v51;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v9 = 0;
    v10 = v51;
    v45 = a1;
    v11 = *(a1 + 16);
    v54 = (*v11 + 272);
    v47 = *v54;
    do
    {
      if (v9 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v8 = v11;
      v47(v53, *(v6 + 8 * v9 + 32));
      if (v2)
      {

        return v8;
      }

      a1 = 0;
      v51 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        v8 = &v51;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v10 = v51;
      }

      v9 = (v9 + 1);
      *(v10 + 16) = v13 + 1;
      outlined init with take of MetalFunctionNode(v53, v10 + 40 * v13 + 32);
      v2 = 0;
    }

    while (v7 != v9);
    v3 = 0;

    a1 = v45;
    v4 = v46;
    if (!*(v10 + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = outlined init with copy of MetalFunctionNode(v10 + 32, v53);
  (*(*v4 + 168))(v14);
  type metadata accessor for MetalDataType.Pointer();
  if (swift_dynamicCastClass())
  {

    outlined init with copy of MetalFunctionNode(v53, &v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph18HasMetalInvocation_pMd, &_s11ShaderGraph18HasMetalInvocation_pMR);
    swift_dynamicCast();
    v15 = v49;
    v16 = v50;
    v8 = __swift_project_boxed_opaque_existential_1(v48, v49);
    v17 = (*(v16 + 8))(a1, v15, v16);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      return v8;
    }

LABEL_16:
    v9 = v18;
    v10 = v17;
    v54 = v19;
    v20 = __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v7 = *(*v4 + 192);
    a1 = v4;
    v8 = (v7)(v20);
    if (one-time initialization token for color3 != -1)
    {
LABEL_28:
      swift_once();
    }

    v21 = *(*v8 + 128);

    v23 = v21(v22);

    if (v23)
    {
      v51 = 0;
      v52 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      v25 = v7();
      v26 = *(v25 + 24);
      v27 = *(v25 + 32);

      v51 = v26;
      v52 = v27;
      v28 = "(*(constant float3*)(";
    }

    else
    {
      v29 = (v7)(v24);
      if (one-time initialization token for color4 != -1)
      {
        swift_once();
      }

      v30 = *(*v29 + 128);

      v32 = v30(v31);

      if ((v32 & 1) == 0)
      {
        v51 = 0;
        v52 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);

        v51 = 0x6174736E6F63282ALL;
        v52 = 0xEB0000000020746ELL;
        v40 = (v7)(v39);
        v41 = *(v40 + 24);
        v42 = *(v40 + 32);

        MEMORY[0x266771550](v41, v42);

        MEMORY[0x266771550](2631978, 0xE300000000000000);
        MEMORY[0x266771550](v10, v9);

        MEMORY[0x266771550](2108192, 0xE300000000000000);
        LODWORD(v48[0]) = *(a1 + 48);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v43);

        v37 = 41;
        v38 = 0xE100000000000000;
        goto LABEL_25;
      }

      v51 = 0;
      v52 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      v33 = v7();
      v34 = *(v33 + 24);
      v35 = *(v33 + 32);

      v51 = v34;
      v52 = v35;
      v28 = "(*(constant float4*)(";
    }

    MEMORY[0x266771550](0xD000000000000015, (v28 - 32) | 0x8000000000000000);
    MEMORY[0x266771550](v10, v9);

    MEMORY[0x266771550](2108192, 0xE300000000000000);
    LODWORD(v48[0]) = *(a1 + 48);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v36);

    v37 = 10537;
    v38 = 0xE200000000000000;
LABEL_25:
    MEMORY[0x266771550](v37, v38);
    v8 = v51;
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    return v8;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *MetalStructGetterOffsetNode.deinit()
{

  return v0;
}

uint64_t MetalStructGetterOffsetNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance MetalStructGetterOffsetNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 136))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance MetalStructGetterOffsetNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 160))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t protocol witness for HasMetalInvocation.createMetalInvocation(in:) in conformance MetalStructGetterOffsetNode()
{
  result = (*(**v0 + 240))();
  if (v1)
  {
    return v3;
  }

  return result;
}

double MetalLiteralValueNode.inputs.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  return result;
}

uint64_t MetalStructGetterNode.fieldName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *MetalStructGetterNode.__allocating_init(id:inputType:resultType:fieldName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  result[4] = a2;
  result[5] = a3;
  result[6] = a4;
  result[7] = a5;
  result[2] = a1;
  result[3] = v11;
  return result;
}

void *MetalStructGetterNode.init(id:inputType:resultType:fieldName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x277D84F90];
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = a5;
  v5[2] = a1;
  v5[3] = v6;
  return v5;
}

uint64_t MetalStructGetterNode.debugLabel.getter()
{
  (*(*v0 + 120))();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  v2 = MEMORY[0x266771550](95, 0xE100000000000000);
  v3 = (*(*v0 + 168))(v2);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);

  MEMORY[0x266771550](46, 0xE100000000000000);
  MEMORY[0x266771550](v0[6], v0[7]);

  MEMORY[0x266771550](v5, v4);

  return 25705;
}

Swift::Void __swiftcall MetalStructGetterNode.setInputs(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v14;
    v5 = a1._rawValue + 32;
    do
    {
      outlined init with copy of MetalFunctionNode(v5, v11);
      v6 = v12;
      v7 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v8 = (*(v7 + 24))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      v14 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 8 * v10 + 32) = v8;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  (*(*v1 + 152))(v3);
}

void *MetalStructGetterNode.createMetalInvocation(in:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = (*(*v1 + 144))();
  v7 = *(v6 + 16);
  if (v7)
  {
    v38 = v1;
    v43 = MEMORY[0x277D84F90];
    v8 = &v43;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v9 = 0;
    v10 = v43;
    v37 = a1;
    v11 = a1[2];
    v46 = (*v11 + 272);
    v39 = *v46;
    do
    {
      if (v9 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v8 = v11;
      (v39)(v45, *(v6 + 8 * v9 + 32));
      if (v2)
      {

        return v8;
      }

      a1 = 0;
      v43 = v10;
      v13 = v10[2];
      v12 = v10[3];
      if (v13 >= v12 >> 1)
      {
        v8 = &v43;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v10 = v43;
      }

      ++v9;
      v10[2] = v13 + 1;
      outlined init with take of MetalFunctionNode(v45, &v10[5 * v13 + 4]);
      v2 = 0;
    }

    while (v7 != v9);
    v3 = 0;

    a1 = v37;
    v4 = v38;
    if (!v10[2])
    {
      goto LABEL_14;
    }
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  outlined init with copy of MetalFunctionNode((v10 + 4), v45);

  (*(*v4 + 168))(v14);
  type metadata accessor for MetalDataType.Reference();
  if (swift_dynamicCastClass())
  {

    v6 = 0xE100000000000000;
    v15 = 46;
    goto LABEL_21;
  }

LABEL_15:
  type metadata accessor for MetalDataType.Pointer();
  v16 = swift_dynamicCastClass();

  if (v16)
  {
    v15 = 15917;
  }

  else
  {
    v15 = 46;
  }

  if (v16)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

LABEL_21:
  outlined init with copy of MetalFunctionNode(v45, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph18HasMetalInvocation_pMd, &_s11ShaderGraph18HasMetalInvocation_pMR);
  swift_dynamicCast();
  v17 = v41;
  v18 = v42;
  v8 = __swift_project_boxed_opaque_existential_1(v40, v41);
  v19 = (*(v18 + 8))(a1, v17, v18);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  else
  {
    v9 = v20;
    v37 = v15;
    v39 = v19;
    v46 = v21;
    v22 = __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v10 = *(*v4 + 192);
    a1 = v4;
    v8 = (v10)(v22);
    if (one-time initialization token for color3 != -1)
    {
LABEL_33:
      swift_once();
    }

    v23 = *(*v8 + 128);

    v25 = v23(v24);

    if (v25)
    {
      goto LABEL_28;
    }

    v27 = (v10)(v26);
    if (one-time initialization token for color4 != -1)
    {
      swift_once();
    }

    v28 = *(*v27 + 128);

    v30 = v28(v29);

    if (v30)
    {
LABEL_28:
      v31 = (v10)(v26);
      v32 = *(v31 + 24);
      v33 = *(v31 + 32);

      v43 = v32;
      v44 = v33;
      MEMORY[0x266771550](40, 0xE100000000000000);
      MEMORY[0x266771550](v39, v9);

      MEMORY[0x266771550](v37, v6);

      MEMORY[0x266771550](a1[6], a1[7]);
      v34 = 41;
      v35 = 0xE100000000000000;
    }

    else
    {
      v43 = v39;
      v44 = v9;
      MEMORY[0x266771550](v37, v6);

      v34 = a1[6];
      v35 = a1[7];
    }

    MEMORY[0x266771550](v34, v35);
    v8 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  return v8;
}

void *MetalStructGetterNode.deinit()
{

  return v0;
}

uint64_t MetalStructGetterNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance MetalStructGetterNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 136))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance MetalStructGetterNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 160))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t protocol witness for HasMetalInvocation.createMetalInvocation(in:) in conformance MetalStructGetterNode()
{
  result = (*(**v0 + 240))();
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t MetalPassthroughNode.__allocating_init(id:resultType:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  *(result + 24) = a2;
  *(result + 32) = v5;
  *(result + 40) = 0;
  *(result + 16) = a1;
  return result;
}

uint64_t MetalPassthroughNode.init(id:resultType:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84F90];
  *(v2 + 24) = a2;
  *(v2 + 32) = v3;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t MetalPassthroughNode.debugLabel.getter()
{
  (*(*v0 + 112))();
  HIDWORD(v6[1]) = -335544320;
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](95, 0xE100000000000000);
  strcpy(v6, "passthrough(");
  v2 = v0[3];
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);

  MEMORY[0x266771550](v3, v4);

  MEMORY[0x266771550](41, 0xE100000000000000);

  MEMORY[0x266771550](v6[0], v6[1]);

  return 25705;
}

uint64_t MetalPassthroughNode.deinit()
{

  return v0;
}

uint64_t MetalPassthroughNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for MetalFunctionNode.id.modify in conformance MetalPassthroughNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 128))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalFunctionNode.inputs.modify in conformance MetalPassthroughNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 152))();
  return protocol witness for MetalFunctionNode.inputs.modify in conformance MetalFunctionNodeBase;
}

uint64_t (*protocol witness for MetalConstExprFunctionNode.isConstExpr.modify in conformance MetalPassthroughNode(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 176))();
  return protocol witness for XMLNodePrivate.children.modify in conformance XMLParserDelegate.StringNode;
}

uint64_t MetalShaderProgram.createGetField(inputType:resultType:fieldName:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    *(v4 + 48) = v5 + 1;
    type metadata accessor for MetalStructGetterNode();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D84F90];
    v10[4] = v9;
    v10[5] = a2;
    v10[6] = a3;
    v10[7] = a4;
    v10[2] = v5;
    v10[3] = v11;

    v12 = specialized MetalShaderProgram.add<A>(_:)(v10);

    return v12;
  }

  return result;
}

uint64_t MetalShaderProgram.createStructGetterNode(inputType:resultType:offset:)(uint64_t result, uint64_t a2, int a3)
{
  v4 = *(v3 + 48);
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    *(v3 + 48) = v4 + 1;
    type metadata accessor for MetalStructGetterOffsetNode();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D84F90];
    *(v8 + 32) = v7;
    *(v8 + 40) = a2;
    *(v8 + 48) = a3;
    *(v8 + 16) = v4;
    *(v8 + 24) = v9;

    v10 = specialized MetalShaderProgram.add<A>(_:)(v8);

    return v10;
  }

  return result;
}

double key path setter for MetalShaderProgram.nodes : MetalShaderProgram(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

double key path setter for MetalShaderProgram.nodeMap : MetalShaderProgram(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;

  return result;
}

uint64_t MetalFunctionCallNode.resultType.setter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  return a2(v5);
}

uint64_t MetalFunctionNodeBase.inputs.setter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 40) = a1;
  return a2(v5);
}

void MetalShaderProgram.importPaths.getter()
{
  v1 = (*(*v0 + 120))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of MetalFunctionNode(v3, &v37);
      outlined init with take of MetalFunctionNode(&v37, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        v40 = v4;
      }

      v7 = v4[2];
      v6 = v4[3];
      if (v7 >= v6 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
        v40 = v4;
      }

      v8 = v35;
      v9 = v36;
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v11 = MEMORY[0x28223BE20](v10);
      v13 = &v34[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v13, v11);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v7, v13, &v40, v8, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      v3 += 40;
      --v2;
    }

    while (v2);

    v15 = v4[2];
    if (v15)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
    v15 = *(MEMORY[0x277D84F90] + 16);
    if (v15)
    {
LABEL_9:
      v16 = (v4 + 4);
      v17 = MEMORY[0x277D84F90];
      do
      {
        outlined init with copy of MetalFunctionNode(v16, &v37);
        v18 = v38;
        v19 = v39;
        __swift_project_boxed_opaque_existential_1(&v37, v38);
        v20 = (*(v19 + 8))(v18, v19);
        __swift_destroy_boxed_opaque_existential_1Tm(&v37);
        v21 = *(v20 + 16);
        v22 = *(v17 + 2);
        v23 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          return;
        }

        v24 = swift_isUniquelyReferenced_nonNull_native();
        if (v24 && v23 <= *(v17 + 3) >> 1)
        {
          if (*(v20 + 16))
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v22 <= v23)
          {
            v25 = v22 + v21;
          }

          else
          {
            v25 = v22;
          }

          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24, v25, 1, v17);
          if (*(v20 + 16))
          {
LABEL_21:
            if ((*(v17 + 3) >> 1) - *(v17 + 2) < v21)
            {
              goto LABEL_34;
            }

            swift_arrayInitWithCopy();

            if (v21)
            {
              v26 = *(v17 + 2);
              v27 = __OFADD__(v26, v21);
              v28 = v26 + v21;
              if (v27)
              {
                goto LABEL_35;
              }

              *(v17 + 2) = v28;
            }

            goto LABEL_11;
          }
        }

        if (v21)
        {
          goto LABEL_33;
        }

LABEL_11:
        v16 += 40;
        --v15;
      }

      while (v15);
    }
  }

  v29 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();

  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v29 + 16), 0);
    v32 = specialized Sequence._copySequenceContents(initializing:)(&v37, v31 + 4, v30, v29);
    outlined consume of [String : GeomPropDef].Iterator._Variant(v37);
    if (v32 == v30)
    {
      return;
    }

    __break(1u);
  }
}

void *MetalShaderProgram.init()()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_AC05MetaleF0_pTt0g5Tf4g_n(v1);
  v0[4] = v1;
  v0[5] = v1;
  v0[6] = 1;
  return v0;
}

void MetalShaderProgram.generateMetalSource(in:)(uint64_t a1)
{
  v22 = a1;
  v3 = (*(*v1 + 120))();
  v4 = *(v3 + 16);
  if (!v4)
  {

    v6 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);
    if (!v9)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    outlined init with copy of MetalFunctionNode(v5, &v19);
    outlined init with take of MetalFunctionNode(&v19, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph20MetalSourceGenerator_pMd, &_s11ShaderGraph20MetalSourceGenerator_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
LABEL_4:
      outlined destroy of [Input](&v15, &_s11ShaderGraph20MetalSourceGenerator_pSgMd, &_s11ShaderGraph20MetalSourceGenerator_pSgMR);
      goto LABEL_5;
    }

    if (!*(&v16 + 1))
    {
      goto LABEL_4;
    }

    outlined init with take of MetalFunctionNode(&v15, v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    }

    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
    }

    v6[2] = v8 + 1;
    outlined init with take of MetalFunctionNode(v18, &v6[5 * v8 + 4]);
LABEL_5:
    v5 += 40;
    --v4;
  }

  while (v4);

  v9 = v6[2];
  if (!v9)
  {
LABEL_20:

    return;
  }

LABEL_16:
  v10 = 0;
  v11 = (v6 + 4);
  v12 = v22;
  while (v10 < v6[2])
  {
    outlined init with copy of MetalFunctionNode(v11, &v19);
    v13 = v20;
    v14 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    (*(v14 + 8))(v12, v13, v14);
    if (v2)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v19);
      return;
    }

    ++v10;
    __swift_destroy_boxed_opaque_existential_1Tm(&v19);
    v11 += 40;
    if (v9 == v10)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

void MetalShaderProgram.node(withIdentifier:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(*v2 + 144))();
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) != 0))
  {
    outlined init with copy of MetalFunctionNode(*(v5 + 56) + 40 * v6, a2);
  }

  else
  {

    lazy protocol witness table accessor for type MetalFunctionGraphError and conformance MetalFunctionGraphError();
    swift_allocError();
    *v8 = 1;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 4;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = MEMORY[0x277D84F90];
    swift_willThrow();
  }
}

void MetalShaderProgram.filtered(by:)(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v4 = v2;
  v7 = *(*v2 + 120);
  v8 = v7();
  v9 = specialized _ArrayProtocol.filter(_:)(a1, a2, v8);
  if (v3)
  {
    return;
  }

  v10 = v9;
  swift_beginAccess();
  *(v4 + 16) = v10;

  swift_beginAccess();
  if (*(*(v4 + 24) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34[0] = *(v4 + 24);
    *(v4 + 24) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy11ShaderGraph14FunctionNodeIDVAC05MetaleF0_pGMd, &_ss17_NativeDictionaryVy11ShaderGraph14FunctionNodeIDVAC05MetaleF0_pGMR);
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v4 + 24) = *&v34[0];
  }

  v12 = swift_endAccess();
  v13 = (v7)(v12);
  v14 = *(v13 + 16);
  if (!v14)
  {
LABEL_18:

    return;
  }

  v15 = v13 + 32;
  while (1)
  {
    outlined init with copy of MetalFunctionNode(v15, v35);
    v17 = v36;
    v18 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v19 = (*(v18 + 24))(v17, v18);
    swift_beginAccess();
    outlined init with copy of MetalFunctionNode(v35, v34);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v4 + 24);
    v21 = v38;
    *(v4 + 24) = 0x8000000000000000;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
    v24 = v21[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (v21[3] < v27)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, v20);
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_22;
      }

LABEL_13:
      v30 = v38;
      if (v28)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (v20)
    {
      goto LABEL_13;
    }

    v33 = v22;
    specialized _NativeDictionary.copy()();
    v22 = v33;
    v30 = v38;
    if (v28)
    {
LABEL_6:
      v16 = (v30[7] + 40 * v22);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      outlined init with take of MetalFunctionNode(v34, v16);
      goto LABEL_7;
    }

LABEL_14:
    v30[(v22 >> 6) + 8] |= 1 << v22;
    *(v30[6] + 8 * v22) = v19;
    outlined init with take of MetalFunctionNode(v34, v30[7] + 40 * v22);
    v31 = v30[2];
    v26 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v26)
    {
      goto LABEL_21;
    }

    v30[2] = v32;
LABEL_7:
    *(v4 + 24) = v30;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v15 += 40;
    if (!--v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *MetalShaderProgram.deinit()
{

  return v0;
}

uint64_t MetalShaderProgram.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void MetalShaderProgram.allNodesUpstream(of:)(void *a1)
{
  v5 = MEMORY[0x277D84FA0];
  v4 = MEMORY[0x277D84FA0];
  v2 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D84F90];
  MetalShaderProgram._dfsHelper(node:visited:onStack:preOrder:postOrder:)(a1, &v5, &v4, &v3, &v2);

  if (v1)
  {
  }
}

void MetalShaderProgram._dfsHelper(node:visited:onStack:preOrder:postOrder:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v7 = v6;
  v8 = v5;
  v71 = a5;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 24))(v13, v14);
  v75 = a3;
  specialized Set._Variant.insert(_:)(v72, v15);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 24))(v16, v17);
  specialized Set._Variant.insert(_:)(v72, v18);
  v68 = a1;
  outlined init with copy of MetalFunctionNode(a1, v72);
  v19 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = a4;
  *a4 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_30:
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
    *v70 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
    *v70 = v19;
  }

  v24 = v73;
  v23 = v74;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28, v26);
  v30 = v22;
  v31 = v70;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v30, v28, v70, v24, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  *v31 = v19;
  v32 = v68[3];
  v33 = v68[4];
  v19 = __swift_project_boxed_opaque_existential_1(v68, v32);
  v34 = (*(v33 + 48))(v32, v33);
  v35 = v34;
  v36 = *(v34 + 16);
  if (!v36)
  {
LABEL_22:

    outlined init with copy of MetalFunctionNode(v68, v72);
    v49 = v71;
    v50 = *v71;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *v49 = v50;
    if ((v51 & 1) == 0)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50);
      *v71 = v50;
    }

    v53 = v50[2];
    v52 = v50[3];
    if (v53 >= v52 >> 1)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v50);
      *v71 = v50;
    }

    v54 = v73;
    v55 = v74;
    v56 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
    v57 = MEMORY[0x28223BE20](v56);
    v59 = &v67 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v60 + 16))(v59, v57);
    v61 = v53;
    v62 = v71;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v61, v59, v71, v54, v55);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    *v62 = v50;
    v63 = v68[3];
    v64 = v68[4];
    __swift_project_boxed_opaque_existential_1(v68, v63);
    v65 = (*(v64 + 24))(v63, v64);
    specialized Set._Variant.remove(_:)(v65);
    return;
  }

  v37 = 0;
  v69 = v34 + 32;
  while (1)
  {
    if (v37 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v38 = *(v69 + 8 * v37);
    v39 = *a2;
    if (*(*a2 + 16))
    {
      Hasher.init(_seed:)();
      v19 = v72;
      MEMORY[0x266772770](v38);
      v40 = Hasher._finalize()();
      v41 = -1 << *(v39 + 32);
      v42 = v40 & ~v41;
      if ((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        break;
      }
    }

LABEL_12:
    (*(*v8 + 272))(v72, v38);
    if (v7)
    {

      return;
    }

    v19 = v8;
    MetalShaderProgram._dfsHelper(node:visited:onStack:preOrder:postOrder:)(v72, a2, v75, v70, v71);
    v7 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
LABEL_14:
    if (++v37 == v36)
    {
      goto LABEL_22;
    }
  }

  v43 = ~v41;
  while (*(*(v39 + 48) + 8 * v42) != v38)
  {
    v42 = (v42 + 1) & v43;
    if (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v44 = *v75;
  if (!*(*v75 + 16))
  {
    goto LABEL_14;
  }

  Hasher.init(_seed:)();
  v19 = v72;
  MEMORY[0x266772770](v38);
  v45 = Hasher._finalize()();
  v46 = -1 << *(v44 + 32);
  v47 = v45 & ~v46;
  if (((*(v44 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
  {
    goto LABEL_14;
  }

  v48 = ~v46;
  while (*(*(v44 + 48) + 8 * v47) != v38)
  {
    v47 = (v47 + 1) & v48;
    if (((*(v44 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  lazy protocol witness table accessor for type MetalFunctionGraphError and conformance MetalFunctionGraphError();
  swift_allocError();
  *v66 = 0u;
  *(v66 + 16) = 0u;
  *(v66 + 32) = 4;
  *(v66 + 40) = 0;
  *(v66 + 48) = 0;
  *(v66 + 56) = MEMORY[0x277D84F90];
  swift_willThrow();
}

void MetalShaderProgram.parameterNodes(connectedTo:)(void *a1)
{
  MetalShaderProgram.allNodesUpstream(of:)(a1);
  if (!v1)
  {
    v3 = v2;
    v4 = *(v2 + 16);
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v6 = 0;
      v7 = v2 + 32;
      while (v6 < *(v3 + 16))
      {
        outlined init with copy of MetalFunctionNode(v7, v15);
        outlined init with copy of MetalFunctionNode(v15, v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
        type metadata accessor for MetalFunctionParameterNode();
        if (swift_dynamicCast())
        {

          outlined init with take of MetalFunctionNode(v15, v14);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v16 = v5;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
            v5 = v16;
          }

          v10 = *(v5 + 16);
          v9 = *(v5 + 24);
          if (v10 >= v9 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
            v5 = v16;
          }

          *(v5 + 16) = v10 + 1;
          outlined init with take of MetalFunctionNode(v14, v5 + 40 * v10 + 32);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v15);
        }

        ++v6;
        v7 += 40;
        if (v4 == v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:

      v16 = MEMORY[0x277D84F90];
      v11 = *(v5 + 16);
      if (v11)
      {
        v12 = v5 + 32;
        do
        {
          outlined init with copy of MetalFunctionNode(v12, v15);
          outlined init with take of MetalFunctionNode(v15, v14);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
          type metadata accessor for MetalFunctionParameterNode();
          if ((swift_dynamicCast() & 1) != 0 && v13)
          {
            MEMORY[0x266771770]();
            if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          v12 += 40;
          --v11;
        }

        while (v11);
      }

      else
      {
      }
    }
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of MetalFunctionNode(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 56 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = *(a2 + 48);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 152 * result;
  v7 = *(a4 + 80);
  *(v6 + 64) = *(a4 + 64);
  *(v6 + 80) = v7;
  v8 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v8;
  *(v6 + 144) = *(a4 + 144);
  v9 = *(a4 + 128);
  *(v6 + 112) = *(a4 + 112);
  *(v6 + 128) = v9;
  *(v6 + 96) = *(a4 + 96);
  v10 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v10;
  v11 = a5[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v13;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 48 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v4[2] = a3[2];
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 80 * result);
  v5 = a2[3];
  v4[2] = a2[2];
  v4[3] = v5;
  v4[4] = a2[4];
  v6 = a2[1];
  *v4 = *a2;
  v4[1] = v6;
  v7 = (a4[7] + 48 * result);
  v8 = a3[1];
  *v7 = *a3;
  v7[1] = v8;
  *(v7 + 25) = *(a3 + 25);
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 80 * result);
  v6 = a2[3];
  v5[2] = a2[2];
  v5[3] = v6;
  v5[4] = a2[4];
  v7 = a2[1];
  *v5 = *a2;
  v5[1] = v7;
  v8 = (a5[7] + 16 * result);
  *v8 = a3;
  v8[1] = a4;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of MetalFunctionNode(&v12, v10 + 40 * a1 + 32);
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = 0;
    v7 = a1 + 32;
    v8 = MEMORY[0x277D84F90];
    v22 = a1 + 32;
    do
    {
      v23 = v8;
      v9 = (v7 + 40 * v6);
      for (i = v6; ; ++i)
      {
        if (i >= v4)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_22;
        }

        v11 = (*(*a2 + 296))(v9);
        if (!v12)
        {
          v11 = closure #1 in implicit closure #1 in closure #2 in defaultCreateMetalInvocation(in:for:functionDefinitionName:)(v9, a3, a2, a4);
          if (v26)
          {

            return;
          }
        }

        v13 = v12;
        v27 = v11;
        v15 = v9[3];
        v14 = v9[4];
        __swift_project_boxed_opaque_existential_1(v9, v15);
        v16 = (*(v14 + 16))(v15, v14);
        if (one-time initialization token for void != -1)
        {
          swift_once();
        }

        v17 = (*(*v16 + 128))(static MetalDataType.void);

        if ((v17 & 1) == 0)
        {
          break;
        }

        v9 += 5;
        if (v6 == v4)
        {
          return;
        }
      }

      v8 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
      }

      v7 = v22;
      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      v20 = v27;
      if (v19 >= v18 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
        v20 = v27;
      }

      *(v8 + 2) = v19 + 1;
      v21 = &v8[16 * v19];
      *(v21 + 4) = v20;
      *(v21 + 5) = v13;
    }

    while (v6 != v4);
  }
}

unint64_t lazy protocol witness table accessor for type MetalFunctionGraphError and conformance MetalFunctionGraphError()
{
  result = lazy protocol witness table cache variable for type MetalFunctionGraphError and conformance MetalFunctionGraphError;
  if (!lazy protocol witness table cache variable for type MetalFunctionGraphError and conformance MetalFunctionGraphError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetalFunctionGraphError and conformance MetalFunctionGraphError);
  }

  return result;
}

uint64_t sub_265EDFABC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_265EDFB50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_265EDFB9C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 152);

  return v2(v3);
}

uint64_t sub_265EDFBF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_265EDFC3C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 176);

  return v4(v2, v3);
}

uint64_t sub_265EDFCA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_265EDFCF0(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 200);

  return v2(v3);
}

uint64_t sub_265EDFD44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_265EDFDD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_265EDFE24(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 152);

  return v2(v3);
}

uint64_t sub_265EDFE78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_265EDFEC4(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 176);

  return v2(v3);
}

__n128 sub_265EDFF18@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 192))(v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_265EDFF84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(**a2 + 200);
  outlined init with copy of SGDataTypeStorage(v7, &v6);
  return v4(v7);
}

uint64_t sub_265EE0000@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_265EE0098@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE012C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0178(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 152);

  return v2(v3);
}

uint64_t sub_265EE01CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0218(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 176);

  return v2(v3);
}

uint64_t sub_265EE026C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_265EE0304@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0398@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE03E4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

uint64_t sub_265EE0438@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_265EE0484(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 168);

  return v4(v2, v3);
}

uint64_t sub_265EE04EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0580@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE05CC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 160);

  return v2(v3);
}

uint64_t sub_265EE0620@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE066C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 184);

  return v2(v3);
}

uint64_t sub_265EE06C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_265EE070C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 208);

  return v4(v2, v3);
}

uint64_t sub_265EE0774@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE07C0(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 232);

  return v2(v3);
}

uint64_t sub_265EE0814@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE08A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE08F4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 152);

  return v2(v3);
}

uint64_t sub_265EE0948@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0994(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 176);

  return v2(v3);
}

uint64_t sub_265EE09E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0A34(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 200);

  return v2(v3);
}

uint64_t sub_265EE0A88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0B1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0B68(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 152);

  return v2(v3);
}

uint64_t sub_265EE0BBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0C08(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 176);

  return v2(v3);
}

uint64_t sub_265EE0C5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0CA8(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 200);

  return v2(v3);
}

uint64_t sub_265EE0CFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0D90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0DDC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

uint64_t sub_265EE0E30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_265EE0EC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0F18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0F68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE0FB4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 176);

  return v2(v3);
}

uint64_t sub_265EE1008@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_265EE1054(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 200);

  return v2(v3);
}

uint64_t dispatch thunk of MetalLiteralValueNode.value.setter(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(*v1 + 200);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v5;
  v8 = v2;
  return v3(v7);
}

uint64_t dispatch thunk of MetalLiteralValueNode.__allocating_init(id:resultType:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 64);
  v5 = *(v3 + 240);
  v6 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v6;
  v7 = *(a3 + 48);
  v9[2] = *(a3 + 32);
  v9[3] = v7;
  v10 = v4;
  return v5(a1, a2, v9);
}

uint64_t static OrderedDictionary<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((static OrderedSet.== infix(_:_:)(a1, a2, a4, a5, a7, a9) & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x2821FD370](a3, a6, a8, a10);
}

uint64_t _HashTable.Header.bias.setter(uint64_t result)
{
  v2 = 1 << *v1;
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = (v4 & (result >> 63)) + result;
    if (v5 < v4)
    {
      v4 = 0;
    }

    v1[1] = v1[1] & 0x3FLL | ((v5 - v4) << 6);
  }

  return result;
}

uint64_t _HashTable.Header.init(scale:reservedScale:seed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = result | (a3 << 6);
  a4[1] = a2;
  return result;
}

uint64_t _HashTable.Header.capacity.getter()
{
  v1 = *v0 & 0x3FLL;
  if (v1 < 5)
  {
    return 15;
  }

  v3 = (1 << v1) * 0.75;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t (*_HashTable.Header.reservedScale.modify(uint64_t *a1))()
{
  v2 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2 & 0x3F;
  return _HashTable.Header.reservedScale.modify;
}

uint64_t (*_HashTable.Header.bias.modify(uint64_t *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 8) >> 6;
  a1[1] = v1;
  return _HashTable.UnsafeHandle.bias.modify;
}

uint64_t RandomAccessCollection._offset(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v9 - v5;
  dispatch thunk of Collection.startIndex.getter();
  v7 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return v7;
}

uint64_t RandomAccessCollection.subscript.getter@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v18[-v10];
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v12 = *(v6 + 8);
  v12(v8, AssociatedTypeWitness);
  v13 = dispatch thunk of Collection.subscript.read();
  v15 = v14;
  v16 = swift_getAssociatedTypeWitness();
  (*(*(v16 - 8) + 16))(a4, v15, v16);
  v13(v18, 0);
  return (v12)(v11, AssociatedTypeWitness);
}

uint64_t RandomAccessCollection._index(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v8 - v5;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

unint64_t MaterialXError.description.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = _s11ShaderGraph14MaterialXErrorOWOg(__dst);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v9 = destructiveProjectEnumData for MaterialXError(__dst);
      v10 = v9[7];
      v40 = v9[6];
      v41 = v10;
      v11 = v9[9];
      v42 = v9[8];
      v43 = v11;
      v12 = v9[3];
      v36 = v9[2];
      v37 = v12;
      v13 = v9[5];
      v38 = v9[4];
      v39 = v13;
      v14 = v9[1];
      v34 = *v9;
      v35 = v14;
      v15 = v9[17];
      v30 = v9[16];
      v31 = v15;
      v16 = v9[19];
      v32 = v9[18];
      v33 = v16;
      v17 = v9[13];
      v26 = v9[12];
      v27 = v17;
      v18 = v9[15];
      v28 = v9[14];
      v29 = v18;
      v19 = v9[11];
      v24 = v9[10];
      v25 = v19;
      _StringGuts.grow(_:)(46);

      v20 = NodeDef.Availability.description.getter();
      MEMORY[0x266771550](v20);

      MEMORY[0x266771550](0x202E737620, 0xE500000000000000);
      v21 = NodeDef.Availability.description.getter();
      MEMORY[0x266771550](v21);

      return 0xD000000000000025;
    }

    else if (v1 == 4)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000030;
    }
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = destructiveProjectEnumData for MaterialXError(__dst);
        v3 = *v2;
        v4 = v2[1];
        *&v34 = 0;
        *(&v34 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(47);

        v5 = 0x8000000265F33A30;
        v6 = 0xD00000000000002CLL;
      }

      else
      {
        v22 = destructiveProjectEnumData for MaterialXError(__dst);
        v3 = *v22;
        v4 = v22[1];
        *&v34 = 0;
        *(&v34 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(32);

        v5 = 0x8000000265F33A10;
        v6 = 0xD00000000000001DLL;
      }
    }

    else
    {
      v8 = destructiveProjectEnumData for MaterialXError(__dst);
      v3 = *v8;
      v4 = v8[1];
      *&v34 = 0;
      *(&v34 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(36);

      v5 = 0x8000000265F33A60;
      v6 = 0xD000000000000021;
    }

    *&v34 = v6;
    *(&v34 + 1) = v5;
    MEMORY[0x266771550](v3, v4);
    MEMORY[0x266771550](34, 0xE100000000000000);
    return v34;
  }
}

unint64_t _s11ShaderGraph14MaterialXErrorOWOg(uint64_t a1)
{
  v1 = *(a1 + 280);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

unint64_t get_enum_tag_for_layout_string_11ShaderGraph14MaterialXErrorO(uint64_t a1)
{
  v1 = *(a1 + 280);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t getEnumTagSinglePayload for MaterialXError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120) >> 17;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for MaterialXError(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 312) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 320) = 1;
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
      result = 0.0;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 112) = 0;
      *(a1 + 120) = -a2 << 17;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 272) = 0u;
      *(a1 + 288) = 0u;
      *(a1 + 304) = 0u;
      return result;
    }

    *(a1 + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MaterialXError(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    v2 = *(result + 160) & 7;
    v3 = *(result + 280) & 0x1FFFFLL | (a2 << 61);
    *(result + 120) &= 0x1FFFFuLL;
    *(result + 160) = v2;
    *(result + 280) = v3;
  }

  else
  {
    *result = (a2 - 4);
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0u;
    *(result + 184) = 0u;
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 232) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0x8000000000000000;
    *(result + 288) = 0u;
    *(result + 304) = 0u;
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E65676E61746962;
  v5 = 0xE900000000000074;
  v6 = 0xE800000000000000;
  v7 = 0x64726F6F63786574;
  if (a1 != 4)
  {
    v7 = 0x6F6C6F636D6F6567;
    v6 = 0xE900000000000072;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6C616D726F6ELL;
  if (a1 != 1)
  {
    v9 = 0x746E65676E6174;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E6F697469736F70;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000074;
      if (v10 != 0x6E65676E61746962)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x64726F6F63786574)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000072;
      if (v10 != 0x6F6C6F636D6F6567)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6C616D726F6ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x746E65676E6174)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x6E6F697469736F70)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS11ShaderGraph11GeomPropDefV_G_AH19NodeDefinitionStoreV0gH0Vs5NeverOTg504_s11e7Graph19jkl10VACycfcAC8gh7VAA0fG3I6Vcfu0_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v33 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v33;
    v3 = a1 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = a1;
    if (v4 < 0 || (v6 = v4, v4 >= 1 << *(a1 + 32)))
    {
LABEL_23:
      __break(1u);
    }

    else
    {
      v7 = *(a1 + 36);
      v8 = 1;
      v29 = v1;
      v36 = a1 + 64;
      while (1)
      {
        v9 = v6 >> 6;
        if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          break;
        }

        v10 = (*(v5 + 56) + (v6 << 6));
        v12 = v10[1];
        v11 = v10[2];
        v13 = *v10;
        *(v35 + 9) = *(v10 + 41);
        v34[1] = v12;
        v35[0] = v11;
        v34[0] = v13;
        outlined init with copy of GeomPropDef(v34, v30);
        NodeDefinitionStore.GeomProp.init(geomPropDef:)(v34, v31);
        v33 = v2;
        v15 = *(v2 + 16);
        v14 = *(v2 + 24);
        if (v15 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
          v2 = v33;
        }

        *(v2 + 16) = v15 + 1;
        v16 = (v2 + (v15 << 6));
        v17 = v31[0];
        v18 = v31[1];
        v19 = v32[0];
        *(v16 + 74) = *(v32 + 10);
        v16[3] = v18;
        v16[4] = v19;
        v16[2] = v17;
        v20 = 1 << *(v5 + 32);
        if (v6 >= v20)
        {
          goto LABEL_25;
        }

        v3 = v36;
        v21 = *(v36 + 8 * v9);
        if ((v21 & (1 << v6)) == 0)
        {
          goto LABEL_26;
        }

        if (v7 != *(v5 + 36))
        {
          goto LABEL_27;
        }

        v22 = v21 & (-2 << (v6 & 0x3F));
        if (v22)
        {
          v6 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = v9 << 6;
          v24 = v9 + 1;
          v25 = (a1 + 72 + 8 * v9);
          while (v24 < (v20 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              outlined consume of [String : String].Index._Variant(v6, v7, 0);
              v5 = a1;
              v6 = __clz(__rbit64(v26)) + v23;
              goto LABEL_18;
            }
          }

          outlined consume of [String : String].Index._Variant(v6, v7, 0);
          v5 = a1;
          v6 = v20;
        }

LABEL_18:
        if (v8 == v29)
        {
          return;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          v7 = *(v5 + 36);
          ++v8;
          if (v6 < 1 << *(v5 + 32))
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
    return result;
  }

  v3 = *(v0[1] + 16 * v1);
  v0[2] = v1 + 1;

  return v3;
}

uint64_t NodeDefinitionStore.MaterialXDataType.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  a4[1] = result;
  a4[2] = a2;
  return result;
}

uint64_t NodeDefinitionStore.MaterialXDataType.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

uint64_t static NodeDefinitionStore.MaterialXDataType.Kind.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (!v3)
  {
    if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v3, v4);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NodeDefinitionStore.MaterialXDataType.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO13SetCodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO13SetCodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMR);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO15NamedCodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO15NamedCodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMR);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO10CodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO10CodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMR);
  v9 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v11 = &v17 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v12)
  {
    v25 = 1;
    lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys();
    v13 = v22;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    v14 = v21;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v20 + 8))(v5, v14);
    return (*(v9 + 8))(v11, v13);
  }

  else
  {
    v24 = 0;
    lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys();
    v16 = v22;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v18 + 8))(v8, v19);
    return (*(v9 + 8))(v11, v16);
  }
}

unint64_t lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys()
{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys()
{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys);
  }

  return result;
}

uint64_t NodeDefinitionStore.MaterialXDataType.Kind.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO13SetCodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO13SetCodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMR);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO15NamedCodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO15NamedCodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMR);
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO10CodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph19NodeDefinitionStoreV17MaterialXDataTypeV4KindO10CodingKeys33_785755DCBB751B66EA13FAB4974E6C40LLOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.CodingKeys();
  v13 = v27;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v14 = v9;
    v15 = v26;
    v16 = KeyedDecodingContainer.allKeys.getter();
    if (*(v16 + 16) == 1)
    {
      v27 = v16;
      if (*(v16 + 32))
      {
        v31 = 1;
        lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.SetCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
        v21 = v23;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v25 + 8))(v4, v21);
        (*(v14 + 8))(v11, v8);
        swift_unknownObjectRelease();
        *v15 = v29;
      }

      else
      {
        v30 = 0;
        lazy protocol witness table accessor for type NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys and conformance NodeDefinitionStore.MaterialXDataType.Kind.NamedCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v24 + 8))(v7, v5);
        (*(v14 + 8))(v11, v8);
        swift_unknownObjectRelease();
        *v15 = 0;
      }
    }

    else
    {
      v17 = type metadata accessor for DecodingError();
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v19 = &type metadata for NodeDefinitionStore.MaterialXDataType.Kind;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
      swift_willThrow();
      (*(v14 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NodeDefinitionStore.MaterialXDataType.Kind(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (!v3)
  {
    if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v3, v4);
}

uint64_t NodeDefinitionStore.MaterialXDataType.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t NodeDefinitionStore.MaterialXDataType.description.getter()
{
  if (*v0)
  {
    v1 = 0x7465733A786C746DLL;
  }

  else
  {
    v1 = 0x6D616E3A786C746DLL;
  }

  v3 = v1;
  MEMORY[0x266771550](v0[1], v0[2]);
  MEMORY[0x266771550](41, 0xE100000000000000);
  return v3;
}

uint64_t NodeDefinitionStore.Input.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NodeDefinitionStore.Output.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
}

uint64_t NodeDefinitionStore.Output.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v9 = *(v1 + 80);
  v10 = v2;
  v11 = *(v1 + 112);
  v3 = v11;
  v4 = *(v1 + 64);
  v8[0] = *(v1 + 48);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return outlined init with copy of [Input](v8, &v7, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
}

uint64_t NodeDefinitionStore.Input.defaultGeomProp.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

__n128 NodeDefinitionStore.Output.init(name:type:defaultValue:defaultGeomProp:isUniform:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *(a3 + 16);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = *a3;
  *(a8 + 32) = v8;
  v9 = *(a4 + 48);
  *(a8 + 80) = *(a4 + 32);
  *(a8 + 96) = v9;
  *(a8 + 112) = *(a4 + 64);
  result = *(a4 + 16);
  *(a8 + 48) = *a4;
  *(a8 + 64) = result;
  *(a8 + 120) = a5;
  *(a8 + 128) = a6;
  *(a8 + 136) = a7;
  return result;
}

uint64_t NodeDefinitionStore.Node.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NodeDefinitionStore.Node.nodeName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NodeDefinitionStore.Node.inherit.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NodeDefinitionStore.Node.nodeGroup.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t NodeDefinitionStore.Node.version.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t NodeDefinitionStore.Node.uiName.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t NodeDefinitionStore.Node.availability.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t NodeDefinitionStore.Node.availabilityMessage.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t NodeDefinitionStore.Node.init(nodeDef:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v82 = a1[1];
  v83[0] = v2;
  v76 = v2;
  v77 = v82;
  v3 = *(a1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = MEMORY[0x277D84F90];
    outlined init with copy of String(v83, &v65);
    outlined init with copy of String(&v82, &v65);
    v81 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    if (!*(v3 + 16))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v6 = 0;
    v7 = v81;
    v8 = (v3 + 32);
    while (1)
    {
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      *(v75 + 9) = *(v8 + 41);
      v74 = v10;
      v75[0] = v11;
      v73 = v9;
      v12 = v8[1];
      v62 = *v8;
      v63 = v12;
      v64[0] = v8[2];
      *(v64 + 9) = *(v8 + 41);
      outlined init with copy of NodeDef.IOSpec(&v73, &v55);
      closure #1 in NodeDefinitionStore.Node.init(nodeDef:)(&v62, a1, "could not generate type storage for input %s with default value %s for node %s in NodeDefinitionStore. Skipping this node.", &v65);
      v52 = v62;
      v53 = v63;
      v54[0] = v64[0];
      *(v54 + 9) = *(v64 + 9);
      outlined destroy of NodeDef.IOSpec(&v52);
      *v57 = v67;
      *&v57[16] = v68;
      *(v61 + 9) = *(v72 + 9);
      v60 = v71;
      v61[0] = v72[0];
      v58 = v69;
      v59 = v70;
      v55 = v65;
      v56 = v66;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      v81 = v7;
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v7 = v81;
      }

      *(v7 + 16) = v14 + 1;
      v15 = (v7 + 144 * v14);
      v15[2] = v55;
      v16 = v56;
      v17 = *v57;
      v18 = v58;
      v15[5] = *&v57[16];
      v15[6] = v18;
      v15[3] = v16;
      v15[4] = v17;
      v19 = v59;
      v20 = v60;
      v21 = v61[0];
      *(v15 + 153) = *(v61 + 9);
      v15[8] = v20;
      v15[9] = v21;
      v15[7] = v19;
      if (v4 - 1 == v6)
      {
        break;
      }

      v8 += 4;
      if (++v6 >= *(v3 + 16))
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    outlined init with copy of String(v83, &v65);
    outlined init with copy of String(&v82, &v65);
    v7 = MEMORY[0x277D84F90];
  }

  v22 = *(a1 + 17);
  v23 = *(v22 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v81 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    if (*(v22 + 16))
    {
      v25 = 0;
      v24 = v81;
      v26 = (v22 + 32);
      do
      {
        v27 = *v26;
        v28 = v26[1];
        v29 = v26[2];
        *(v75 + 9) = *(v26 + 41);
        v74 = v28;
        v75[0] = v29;
        v73 = v27;
        v30 = v26[1];
        v62 = *v26;
        v63 = v30;
        v64[0] = v26[2];
        *(v64 + 9) = *(v26 + 41);
        outlined init with copy of NodeDef.IOSpec(&v73, &v55);
        closure #1 in NodeDefinitionStore.Node.init(nodeDef:)(&v62, a1, "could not generate type storage for output %s with default value %s for node %s in NodeDefinitionStore. Skipping this node.", &v65);
        v52 = v62;
        v53 = v63;
        v54[0] = v64[0];
        *(v54 + 9) = *(v64 + 9);
        outlined destroy of NodeDef.IOSpec(&v52);
        *v57 = v67;
        *&v57[16] = v68;
        *(v61 + 9) = *(v72 + 9);
        v60 = v71;
        v61[0] = v72[0];
        v58 = v69;
        v59 = v70;
        v55 = v65;
        v56 = v66;
        v32 = *(v24 + 16);
        v31 = *(v24 + 24);
        v81 = v24;
        if (v32 >= v31 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
          v24 = v81;
        }

        *(v24 + 16) = v32 + 1;
        v33 = (v24 + 144 * v32);
        v33[2] = v55;
        v34 = v56;
        v35 = *v57;
        v36 = v58;
        v33[5] = *&v57[16];
        v33[6] = v36;
        v33[3] = v34;
        v33[4] = v35;
        v37 = v59;
        v38 = v60;
        v39 = v61[0];
        *(v33 + 153) = *(v61 + 9);
        v33[8] = v38;
        v33[9] = v39;
        v33[7] = v37;
        if (v23 - 1 == v25)
        {
          goto LABEL_19;
        }

        v26 += 4;
      }

      while (++v25 < *(v22 + 16));
    }

LABEL_28:
    __break(1u);
    v55 = v62;
    v56 = v63;
    *v57 = v64[0];
    *&v57[9] = *(v64 + 9);
    outlined destroy of NodeDef.IOSpec(&v55);

    __break(1u);
    v55 = v62;
    v56 = v63;
    *v57 = v64[0];
    *&v57[9] = *(v64 + 9);
    outlined destroy of NodeDef.IOSpec(&v55);

    __break(1u);
    return result;
  }

LABEL_19:
  v40 = *(a1 + 15);
  switch(v40)
  {
    case 1:
      v49 = 0;
      v40 = 0;
      v41 = 0xE900000000000064;
      v42 = 0x6574726F70707573;
      break;
    case 2:
      v49 = 0;
      v40 = 0;
      v41 = 0xEB00000000646574;
      v42 = 0x726F707075736E75;
      break;
    case 3:
      v49 = 0;
      v40 = 0;
      v41 = 0xEA00000000006573;
      v42 = 0x61656C6572657270;
      break;
    default:
      v49 = *(a1 + 14);

      v42 = 0x7461636572706564;
      v41 = 0xEA00000000006465;
      break;
  }

  v43 = a1[3];
  v65 = a1[2];
  v55 = v43;
  v78 = v65;
  v79 = v43;
  v80 = v43;
  v44 = *(a1 + 80);
  v81 = *(a1 + 11);
  v45 = v81;
  v73 = a1[6];
  v62 = v73;
  outlined init with copy of [Input](&v55, &v52, &_sSSSgMd, &_sSSSgMR);
  outlined init with copy of [Input](&v55, &v52, &_sSSSgMd, &_sSSSgMR);
  outlined init with copy of [Input](&v65, &v52, &_sSSSgMd, &_sSSSgMR);
  outlined init with copy of [Input](&v81, &v52, &_sSaySSGMd, &_sSaySSGMR);
  outlined init with copy of [Input](&v73, &v52, &_sSSSgMd, &_sSSSgMR);
  result = outlined destroy of NodeDef(a1);
  v47 = v79;
  *(a2 + 32) = v78;
  *(a2 + 48) = v47;
  *(a2 + 64) = v80;
  v48 = v77;
  *a2 = v76;
  *(a2 + 16) = v48;
  *(a2 + 80) = v44;
  *(a2 + 88) = v45;
  *(a2 + 96) = v62;
  *(a2 + 112) = v7;
  *(a2 + 120) = v24;
  *(a2 + 128) = v42;
  *(a2 + 136) = v41;
  *(a2 + 144) = v49;
  *(a2 + 152) = v40;
  return result;
}

uint64_t closure #1 in NodeDefinitionStore.Node.init(nodeDef:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, const char *a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v36 = *(a1 + 40);
  v10 = *(a1 + 48);
  v33 = *(a1 + 56);
  if (!v9)
  {
LABEL_12:
    *v30 = 0u;
    *formata = 0u;
    v18 = -1;
    v27 = 0u;
    v29 = 0u;
    goto LABEL_13;
  }

  v25 = v7;
  v12 = *(a1 + 24);

  if (MaterialXDataType.asMetalDataType.getter())
  {

    NodeDefinitionStore.TypeStorage.init(materialXValue:type:)(v12, v9, v8, v34);
    if (v4)
    {
      v28 = v12;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, logger);

      swift_bridgeObjectRetain_n();

      outlined init with copy of NodeDef(a2, v34);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      swift_bridgeObjectRelease_n();

      outlined destroy of NodeDef(a2);
      v7 = v25;
      if (os_log_type_enabled(v14, v15))
      {
        log = v14;
        v16 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v34[0] = v26;
        *v16 = 136315650;

        v23 = v15;
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v6, v34);

        *(v16 + 4) = v17;
        *(v16 + 12) = 2080;
        *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v9, v34);
        *(v16 + 22) = 2080;
        *(v16 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*a2, a2[1], v34);
        _os_log_impl(&dword_265D7D000, log, v23, a3, v16, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266773120](v26, -1, -1);
        MEMORY[0x266773120](v16, -1, -1);
      }

      else
      {
      }

      goto LABEL_12;
    }

    *v30 = v34[1];
    *formata = v34[0];
    v27 = v34[3];
    v29 = v34[2];
    v18 = v35;
  }

  else
  {

    *v30 = 0u;
    *formata = 0u;
    v18 = -1;
    v27 = 0u;
    v29 = 0u;
  }

  v7 = v25;
LABEL_13:
  v19 = *(v8 + 24);
  v20 = *(v8 + 32);

  *a4 = v7;
  *(a4 + 8) = v6;
  *(a4 + 16) = v19;
  *(a4 + 24) = v20;
  *(a4 + 32) = v21;
  *(a4 + 48) = *formata;
  *(a4 + 64) = *v30;
  *(a4 + 80) = v29;
  *(a4 + 96) = v27;
  *(a4 + 112) = v18;
  *(a4 + 120) = v36;
  *(a4 + 128) = v10;
  *(a4 + 136) = v33;
}

ShaderGraph::NodeDefinitionStore::BuiltinGeomProp_optional __swiftcall NodeDefinitionStore.BuiltinGeomProp.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NodeDefinitionStore.BuiltinGeomProp.init(rawValue:), v3);

  v7 = 6;
  if (v5 < 6)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t NodeDefinitionStore.BuiltinGeomProp.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E6F697469736F70;
  v3 = 0x6E65676E61746962;
  v4 = 0x64726F6F63786574;
  if (v1 != 4)
  {
    v4 = 0x6F6C6F636D6F6567;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C616D726F6ELL;
  if (v1 != 1)
  {
    v5 = 0x746E65676E6174;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

ShaderGraph::NodeDefinitionStore::Space_optional __swiftcall NodeDefinitionStore.Space.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NodeDefinitionStore.Space.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t NodeDefinitionStore.Space.rawValue.getter()
{
  v1 = 0x7463656A626FLL;
  if (*v0 != 1)
  {
    v1 = 0x646C726F77;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C65646F6DLL;
  }
}

uint64_t NodeDefinitionStore.GeomProp.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NodeDefinitionStore.GeomProp.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
}

uint64_t NodeDefinitionStore.GeomProp.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return outlined copy of GeomPropDef.GeomProp(v2, v3, v4);
}

double NodeDefinitionStore.GeomProp.init(geomPropDef:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *a1;
  v14 = v17;
  v4 = *(a1 + 2);
  v5 = v4[3];
  v6 = v4[4];
  v7 = v4[5];

  v15 = *(a1 + 24);
  v16 = *(a1 + 40);
  v8 = v16;
  v9 = v15;
  if (v16)
  {
    v10 = *(&v15 + 1);
    outlined init with copy of String(&v17, v13);

    outlined init with copy of GeomPropDef.GeomProp(&v15, v13);
    outlined destroy of GeomPropDef(a1);
  }

  else
  {
    outlined init with copy of String(&v17, v13);

    outlined destroy of GeomPropDef(a1);
    v10 = 0;
    v9 = v9;
  }

  v13[0] = v8 & 1;
  v11 = *(a1 + 41);
  result = *&v14;
  *a2 = v14;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
  *(a2 + 56) = v8 & 1;
  *(a2 + 57) = v11;
  return result;
}

void __swiftcall NodeDefinitionStore.init()(ShaderGraph::NodeDefinitionStore *__return_ptr retstr)
{
  if (one-time initialization token for shared != -1)
  {
LABEL_64:
    swift_once();
  }

  v1 = static NodeDefStore.shared;
  v2 = static NodeDefStore.shared + 64;
  v3 = 1 << *(static NodeDefStore.shared + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(static NodeDefStore.shared + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v5)
  {
LABEL_11:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(v1 + 56) + 152 * (v10 | (v7 << 6));
    v12 = *(v11 + 16);
    v146 = *v11;
    v147 = v12;
    v13 = *(v11 + 80);
    v15 = *(v11 + 32);
    v14 = *(v11 + 48);
    v149 = *(v11 + 64);
    v150 = v13;
    *v148 = v15;
    *&v148[16] = v14;
    v16 = *(v11 + 96);
    v17 = *(v11 + 112);
    v18 = *(v11 + 128);
    *&v154 = *(v11 + 144);
    v152 = v17;
    v153 = v18;
    v151 = v16;
    if (!*&v148[24] || *&v148[16] != __PAIR128__(0x8000000265F33A90, 0xD000000000000013) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      outlined init with copy of NodeDef(&v146, &v137);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v156[0] = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
        v8 = *&v156[0];
      }

      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v22 = v21 + 1;
        v8 = *&v156[0];
      }

      *(v8 + 16) = v22;
      v23 = v8 + 152 * v21;
      v24 = v147;
      *(v23 + 32) = v146;
      *(v23 + 48) = v24;
      v25 = *v148;
      v26 = *&v148[16];
      v27 = v150;
      *(v23 + 96) = v149;
      *(v23 + 112) = v27;
      *(v23 + 64) = v25;
      *(v23 + 80) = v26;
      v28 = v151;
      v29 = v152;
      v30 = v153;
      *(v23 + 176) = v154;
      *(v23 + 144) = v29;
      *(v23 + 160) = v30;
      *(v23 + 128) = v28;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_11;
    }
  }

  v31 = *(v8 + 16);
  if (v31)
  {
    v155 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v32 = v155;
    v33 = v31 - 1;
    for (i = 32; ; i += 152)
    {
      v35 = *(v8 + i + 16);
      v156[0] = *(v8 + i);
      v156[1] = v35;
      v36 = *(v8 + i + 32);
      v37 = *(v8 + i + 48);
      v38 = *(v8 + i + 80);
      v156[4] = *(v8 + i + 64);
      v156[5] = v38;
      v156[2] = v36;
      v156[3] = v37;
      v39 = *(v8 + i + 96);
      v40 = *(v8 + i + 112);
      v41 = *(v8 + i + 128);
      v157 = *(v8 + i + 144);
      v156[7] = v40;
      v156[8] = v41;
      v156[6] = v39;
      outlined init with copy of NodeDef(v156, &v137);
      NodeDefinitionStore.Node.init(nodeDef:)(v156, &v146);
      v155 = v32;
      v43 = v32[2];
      v42 = v32[3];
      if (v43 >= v42 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
        v32 = v155;
      }

      v32[2] = v43 + 1;
      v44 = &v32[20 * v43];
      v45 = v147;
      v44[2] = v146;
      v44[3] = v45;
      v46 = *v148;
      v47 = *&v148[16];
      v48 = v150;
      v44[6] = v149;
      v44[7] = v48;
      v44[4] = v46;
      v44[5] = v47;
      v49 = v151;
      v50 = v152;
      v51 = v154;
      v44[10] = v153;
      v44[11] = v51;
      v44[8] = v49;
      v44[9] = v50;
      if (!v33)
      {
        break;
      }

      --v33;
    }
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS11ShaderGraph11GeomPropDefV_G_AH19NodeDefinitionStoreV0gH0Vs5NeverOTg504_s11e7Graph19jkl10VACycfcAC8gh7VAA0fG3I6Vcfu0_Tf1cn_n(v52);
  v54 = v53;

  v55 = v32[2];
  if (v55)
  {
    v56 = (v32 + 4);
    v135 = v54;

    v57 = v55 - 1;
    v58 = MEMORY[0x277D84F98];
    while (1)
    {
      v59 = v56[1];
      v146 = *v56;
      v147 = v59;
      v60 = v56[2];
      v61 = v56[3];
      v62 = v56[5];
      v149 = v56[4];
      v150 = v62;
      *v148 = v60;
      *&v148[16] = v61;
      v63 = v56[6];
      v64 = v56[7];
      v65 = v56[9];
      v153 = v56[8];
      v154 = v65;
      v151 = v63;
      v152 = v64;
      v66 = v146;
      outlined init with copy of NodeDefinitionStore.Node(&v146, &v137);

      v67 = swift_isUniquelyReferenced_nonNull_native();
      v155 = v58;
      v68 = specialized __RawDictionaryStorage.find<A>(_:)(v66, *(&v66 + 1));
      v70 = v58[2];
      v71 = (v69 & 1) == 0;
      v72 = __OFADD__(v70, v71);
      v73 = v70 + v71;
      if (v72)
      {
        goto LABEL_60;
      }

      v74 = v69;
      if (v58[3] < v73)
      {
        break;
      }

      if (v67)
      {
        goto LABEL_34;
      }

      v92 = v68;
      specialized _NativeDictionary.copy()();
      v68 = v92;
      if (v74)
      {
LABEL_35:
        v76 = v68;

        v58 = v155;
        v77 = (v155[7] + 160 * v76);
        v78 = v77[1];
        v137 = *v77;
        v138 = v78;
        v79 = v77[5];
        v81 = v77[2];
        v80 = v77[3];
        v140 = v77[4];
        v141 = v79;
        *v139 = v81;
        *&v139[16] = v80;
        v82 = v77[9];
        v84 = v77[6];
        v83 = v77[7];
        v144 = v77[8];
        v145 = v82;
        v142 = v84;
        v143 = v83;
        v85 = v147;
        *v77 = v146;
        v77[1] = v85;
        v86 = *v148;
        v87 = *&v148[16];
        v88 = v150;
        v77[4] = v149;
        v77[5] = v88;
        v77[2] = v86;
        v77[3] = v87;
        v89 = v151;
        v90 = v152;
        v91 = v154;
        v77[8] = v153;
        v77[9] = v91;
        v77[6] = v89;
        v77[7] = v90;
        outlined destroy of NodeDefinitionStore.Node(&v137);
        if (!v57)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

LABEL_38:
      v58 = v155;
      v155[(v68 >> 6) + 8] |= 1 << v68;
      *(v58[6] + 16 * v68) = v66;
      v93 = (v58[7] + 160 * v68);
      v95 = v153;
      v94 = v154;
      v96 = v152;
      v93[6] = v151;
      v93[7] = v96;
      v93[8] = v95;
      v93[9] = v94;
      v98 = v149;
      v97 = v150;
      v99 = *&v148[16];
      v93[2] = *v148;
      v93[3] = v99;
      v93[4] = v98;
      v93[5] = v97;
      v100 = v147;
      *v93 = v146;
      v93[1] = v100;
      v101 = v58[2];
      v72 = __OFADD__(v101, 1);
      v102 = v101 + 1;
      if (v72)
      {
        goto LABEL_62;
      }

      v58[2] = v102;
      if (!v57)
      {
LABEL_41:
        v54 = v135;
        v103 = v135[2];
        if (v103)
        {
          goto LABEL_42;
        }

        goto LABEL_57;
      }

LABEL_40:
      --v57;
      v56 += 10;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v73, v67);
    v68 = specialized __RawDictionaryStorage.find<A>(_:)(v66, *(&v66 + 1));
    if ((v74 & 1) != (v75 & 1))
    {
LABEL_65:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

LABEL_34:
    if (v74)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v58 = MEMORY[0x277D84F98];
  v103 = v54[2];
  if (v103)
  {
LABEL_42:
    v104 = v103 - 1;
    v105 = MEMORY[0x277D84F98];
    for (j = 4; ; j += 8)
    {
      v108 = *&v54[j + 2];
      v107 = *&v54[j + 4];
      v109 = *&v54[j];
      *&v148[10] = *(&v54[j + 5] + 2);
      v147 = v108;
      *v148 = v107;
      v146 = v109;
      v110 = v109;
      outlined init with copy of NodeDefinitionStore.GeomProp(&v146, &v137);

      v111 = swift_isUniquelyReferenced_nonNull_native();
      v155 = v105;
      v112 = specialized __RawDictionaryStorage.find<A>(_:)(v110, *(&v110 + 1));
      v114 = v105[2];
      v115 = (v113 & 1) == 0;
      v72 = __OFADD__(v114, v115);
      v116 = v114 + v115;
      if (v72)
      {
        goto LABEL_61;
      }

      v117 = v113;
      if (v105[3] < v116)
      {
        break;
      }

      if (v111)
      {
        goto LABEL_48;
      }

      v127 = v112;
      specialized _NativeDictionary.copy()();
      v112 = v127;
      if (v117)
      {
LABEL_49:
        v119 = v112;

        v105 = v155;
        v120 = (v155[7] + (v119 << 6));
        v122 = v120[1];
        v121 = v120[2];
        v123 = *v120;
        *&v139[10] = *(v120 + 42);
        v138 = v122;
        *v139 = v121;
        v137 = v123;
        v124 = v146;
        v125 = v147;
        v126 = *v148;
        *(v120 + 42) = *&v148[10];
        v120[1] = v125;
        v120[2] = v126;
        *v120 = v124;
        outlined destroy of NodeDefinitionStore.GeomProp(&v137);
        if (!v104)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

LABEL_52:
      v105 = v155;
      v155[(v112 >> 6) + 8] |= 1 << v112;
      *(v105[6] + 16 * v112) = v110;
      v128 = (v105[7] + (v112 << 6));
      v129 = *&v148[10];
      v131 = v147;
      v130 = *v148;
      *v128 = v146;
      v128[1] = v131;
      v128[2] = v130;
      *(v128 + 42) = v129;
      v132 = v105[2];
      v72 = __OFADD__(v132, 1);
      v133 = v132 + 1;
      if (v72)
      {
        goto LABEL_63;
      }

      v105[2] = v133;
      if (!v104)
      {
LABEL_55:

        goto LABEL_58;
      }

LABEL_54:
      --v104;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v116, v111);
    v112 = specialized __RawDictionaryStorage.find<A>(_:)(v110, *(&v110 + 1));
    if ((v117 & 1) != (v118 & 1))
    {
      goto LABEL_65;
    }

LABEL_48:
    if (v117)
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

LABEL_57:

  v105 = MEMORY[0x277D84F98];
LABEL_58:
  v134 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say11ShaderGraph19NodeDefinitionStoreV0F0VGTt1g504_s11d7Graph19fgH21VACycfcSSAC0C0VXEfU2_Tf1nc_nTf4g_n(v32);

  retstr->nodes._rawValue = v32;
  retstr->geomProps._rawValue = v54;
  retstr->nodesLookupId._rawValue = v58;
  retstr->geomPropsLookupId._rawValue = v105;
  retstr->nodesLookupName._rawValue = v134;
}

uint64_t Array.toDictionary<A>(with:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a1;
  v31 = a2;
  v10 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v13);
  v29 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v18 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a5;
  v33 = a6;
  v19 = Dictionary.init()();
  v36 = v19;
  if (MEMORY[0x266771880](a3, a4))
  {
    v20 = 0;
    v34 = (v15 + 16);
    v28 = (v15 + 56);
    v26 = v16;
    v27 = (v15 + 8);
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v22 = *(v15 + 16);
        v22(v18, (a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v20), a4);
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v26 != 8)
        {
          __break(1u);
          return result;
        }

        v35 = result;
        v22 = *v34;
        (*v34)(v18, &v35, a4);
        swift_unknownObjectRelease();
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_10:
          __break(1u);
          return v36;
        }
      }

      v30(v18);
      v22(v12, v18, a4);
      (*v28)(v12, 0, 1, a4);
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      (*v27)(v18, a4);
      ++v20;
      if (v23 == MEMORY[0x266771880](a3, a4))
      {
        return v36;
      }
    }
  }

  return v19;
}

void __swiftcall NodeDefinitionStore.getNodeDefinition(id:)(ShaderGraph::NodeDefinitionStore::Node_optional *__return_ptr retstr, Swift::String id)
{
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(id._countAndFlagsBits, id._object), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 160 * v5;
    v8 = *(v7 + 16);
    v21 = *v7;
    v22 = v8;
    v9 = *(v7 + 80);
    v11 = *(v7 + 32);
    v10 = *(v7 + 48);
    v25 = *(v7 + 64);
    v26 = v9;
    v23 = v11;
    v24 = v10;
    v12 = *(v7 + 96);
    v13 = *(v7 + 112);
    v14 = *(v7 + 144);
    v29 = *(v7 + 128);
    v30 = v14;
    v27 = v12;
    v28 = v13;
    memmove(retstr, v7, 0xA0uLL);
    destructiveProjectEnumData for NodePersonality.ShaderType();
    outlined init with copy of NodeDefinitionStore.Node(&v21, &v20);
  }

  else
  {
    _s11ShaderGraph19NodeDefinitionStoreV0C0VSgWOi0_(&v21);
    v15 = v28;
    retstr->value.uiName = v27;
    *&retstr->value.inputs._rawValue = v15;
    v16 = v30;
    retstr->value.availability = v29;
    retstr->value.availabilityMessage = v16;
    v17 = v24;
    retstr->value.inherit = v23;
    retstr->value.nodeGroup = v17;
    v18 = v26;
    retstr->value.version = v25;
    *&retstr->value.isDefaultVersion.value = v18;
    v19 = v22;
    retstr->value.name = v21;
    retstr->value.nodeName = v19;
  }
}

Swift::OpaquePointer_optional __swiftcall NodeDefinitionStore.getNodeDefinition(name:)(Swift::String name)
{
  if (*(*(v1 + 32) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(name._countAndFlagsBits, name._object), (name._object & 1) != 0))
  {
  }

  else
  {
    name._countAndFlagsBits = 0;
  }

  return *&name._countAndFlagsBits;
}

double NodeDefinitionStore.getGeomProp(id:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v5 = *(v3 + 24);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + (v6 << 6));
    v9 = *(v8 + 42);
    v10 = v8[2];
    v11 = *v8;
    v15[1] = v8[1];
    v16[0] = v10;
    v15[0] = v11;
    *(v16 + 10) = v9;
    v12 = v8[1];
    *a3 = *v8;
    a3[1] = v12;
    a3[2] = v8[2];
    *(a3 + 42) = *(v8 + 42);
    outlined init with copy of NodeDefinitionStore.GeomProp(v15, &v14);
  }

  else
  {
    result = 0.0;
    *(a3 + 42) = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t specialized static NodeDefinitionStore.TypeStorage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v56 = *(a1 + 32);
  v57 = v2;
  v4 = *(a1 + 16);
  v55[0] = *a1;
  v55[1] = v4;
  v5 = *(a2 + 48);
  v6 = *(a2 + 16);
  v61 = *(a2 + 32);
  v62 = v5;
  v7 = *(a2 + 16);
  v59 = *a2;
  v60 = v7;
  v8 = *(a1 + 48);
  v64[2] = v56;
  v64[3] = v8;
  v64[0] = *a1;
  v64[1] = v3;
  v9 = *(a2 + 48);
  v68 = v61;
  v69 = v9;
  v58 = *(a1 + 64);
  v63 = *(a2 + 64);
  v65 = *(a1 + 64);
  v70 = *(a2 + 64);
  v66 = v59;
  v67 = v6;
  v71 = v55[0];
  v10 = *v4.f32;
  switch(v58)
  {
    case 1:
      if (v63 != 1)
      {
        goto LABEL_90;
      }

      v19 = v59.u8[0];
      v20 = v71.u8[0];
      goto LABEL_35;
    case 2:
      if (v63 != 2)
      {
        goto LABEL_90;
      }

      goto LABEL_29;
    case 3:
      if (v63 != 3)
      {
        goto LABEL_90;
      }

LABEL_29:
      v19 = v59.i32[0];
      v20 = v71.i32[0];
      goto LABEL_35;
    case 4:
      if (v63 != 4)
      {
        goto LABEL_90;
      }

      v19 = v59.u16[0];
      v20 = v71.u16[0];
LABEL_35:
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v12 = v20 == v19;
      return v12 & 1;
    case 5:
      if (v63 != 5)
      {
        goto LABEL_90;
      }

      v28 = v71.f32[0];
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v12 = v28 == v59.f32[0];
      return v12 & 1;
    case 6:
      if (v63 != 6)
      {

        goto LABEL_90;
      }

      if (*&v71 == *&v59)
      {
        outlined init with copy of NodeDefinitionStore.TypeStorage(&v59, v54);
        outlined init with copy of NodeDefinitionStore.TypeStorage(v55, v54);
        outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
        v12 = 1;
        return v12 & 1;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined init with copy of NodeDefinitionStore.TypeStorage(&v59, v54);
      outlined init with copy of NodeDefinitionStore.TypeStorage(v55, v54);
      goto LABEL_94;
    case 7:
      if (v63 != 7)
      {
        goto LABEL_90;
      }

      v24 = *v71.f32;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v15 = vceq_f32(v24, *v59.f32);
      if (v15.i8[0])
      {
        goto LABEL_74;
      }

      goto LABEL_91;
    case 8:
      if (v63 != 8)
      {
        goto LABEL_90;
      }

      v52 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v16 = vceqq_f32(v52, v59);
      goto LABEL_77;
    case 9:
      if (v63 != 9)
      {
        goto LABEL_90;
      }

      v45 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v12 = 0;
      v23 = vceqq_f32(v45, v59);
      goto LABEL_24;
    case 10:
      if (v63 != 10)
      {
        goto LABEL_90;
      }

      v10.i16[2] = v71.i16[1];
      v10.i16[0] = v71.i16[0];
      v51 = v10;
      v10.i16[2] = v59.i16[1];
      v10.i16[0] = v59.i16[0];
      v42 = v10;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v15 = vceq_s32(vand_s8(v51, 0xFFFF0000FFFFLL), vand_s8(v42, 0xFFFF0000FFFFLL));
      if (v15.i8[0])
      {
        goto LABEL_74;
      }

      goto LABEL_91;
    case 11:
      if (v63 != 11)
      {
        goto LABEL_90;
      }

      v17 = *v71.f32;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v18 = vceq_s16(v17, *v59.f32);
      goto LABEL_78;
    case 12:
      if (v63 != 12)
      {
        goto LABEL_90;
      }

      v21 = *v71.f32;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v12 = 0;
      v22 = vceq_s16(v21, *v59.f32);
      if ((v22.i8[0] & 1) == 0)
      {
        return v12 & 1;
      }

      goto LABEL_25;
    case 13:
      if (v63 != 13)
      {
        goto LABEL_90;
      }

      v32 = *v71.f32;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v15 = vceq_s32(v32, *v59.f32);
      if ((v15.i8[0] & 1) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_74;
    case 14:
      if (v63 != 14)
      {
        goto LABEL_90;
      }

      v44 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v16 = vceqq_s32(v44, v59);
LABEL_77:
      v18 = vmovn_s32(v16);
LABEL_78:
      if ((v18.i16[0] & v18.i16[1] & 1) == 0)
      {
        goto LABEL_91;
      }

      v12 = v18.i8[4];
      return v12 & 1;
    case 15:
      if (v63 != 15)
      {
        goto LABEL_90;
      }

      v46 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v12 = 0;
      v23 = vceqq_s32(v46, v59);
LABEL_24:
      v22 = vmovn_s32(v23);
      if ((v22.i8[0] & 1) == 0)
      {
        return v12 & 1;
      }

LABEL_25:
      if (v22.i8[2] & 1) != 0 && (v22.i8[4])
      {
        goto LABEL_27;
      }

      return v12 & 1;
    case 16:
      if (v63 != 16)
      {
        goto LABEL_90;
      }

      v13 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v12 = 0;
      v14 = vceq_f32(*v13.f32, *v59.f32);
      if (v14.i8[0] & 1) != 0 && (v14.i8[4])
      {
        v15 = vceq_f32(*&v13.u32[2], *&v59.u32[2]);
        if (v15.i8[0])
        {
LABEL_74:
          v12 = v15.i8[4];
        }
      }

      return v12 & 1;
    case 17:
      if (v63 != 17)
      {
        goto LABEL_90;
      }

      v47 = v4;
      v39 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v25 = vmovn_s32(vceqq_f32(v39, v59));
      if ((v25.i8[0] & 1) == 0)
      {
        goto LABEL_91;
      }

      v12 = 0;
      if ((v25.i8[2] & 1) == 0 || (v25.i8[4] & 1) == 0 || (vmovn_s32(vceqq_f32(v47, v60)).u8[0] & 1) == 0)
      {
        return v12 & 1;
      }

      if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(vextq_s8(v47, v47, 0xCuLL), v56, 8uLL), vextq_s8(vextq_s8(v60, v60, 0xCuLL), v61, 8uLL)))) & 1) == 0)
      {
        goto LABEL_91;
      }

      v12 = vmovn_s32(vceqq_f32(*&v56, *&v61)).i8[4];
      return v12 & 1;
    case 18:
      if (v63 != 18)
      {
        goto LABEL_90;
      }

      v50 = v4;
      v40 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v33 = vmovn_s32(vceqq_f32(v40, v59)).u32[0];
      if ((v33 & HIWORD(v33) & 1) == 0 || (vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(v40, v50, 8uLL), vextq_s8(v59, v60, 8uLL)))) & 1) == 0 || (vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(v50, v56, 8uLL), vextq_s8(v60, v61, 8uLL)))) & 1) == 0)
      {
        goto LABEL_91;
      }

      v12 = 0;
      if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(v56, v57, 8uLL), vextq_s8(v61, v62, 8uLL)))) & 1) == 0)
      {
        return v12 & 1;
      }

      v22 = vmovn_s32(vceqq_f32(v57, v62));
      if ((v22.i8[4] & 1) == 0)
      {
        return v12 & 1;
      }

      goto LABEL_27;
    case 19:
      if (v63 != 19)
      {
        goto LABEL_90;
      }

      v10.i16[2] = v71.i16[3];
      v10.i16[0] = v71.i16[2];
      v41 = v10;
      v10.i16[2] = v59.i16[3];
      v10.i16[0] = v59.i16[2];
      v38 = v10;
      v34.i32[0] = v59.u16[0];
      v34.i32[1] = v59.u16[1];
      v53 = v34;
      v34.i32[0] = v71.u16[0];
      v34.i32[1] = v71.u16[1];
      v43 = v34;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v12 = 0;
      v35 = vceq_s32(v43, v53);
      if (v35.i8[0] & 1) != 0 && (v35.i8[4] & 1) != 0 && (vceq_s32(vand_s8(v41, 0xFFFF0000FFFFLL), vand_s8(v38, 0xFFFF0000FFFFLL)).u32[0])
      {
        v12 = vceq_s32(vand_s8(v41, 0xFFFF0000FFFFLL), vand_s8(v38, 0xFFFF0000FFFFLL)).i8[4];
      }

      return v12 & 1;
    case 20:
      if (v63 != 20)
      {
        goto LABEL_90;
      }

      v48 = *v4.f32;
      v26 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v27 = vceq_s16(*v26.f32, *v59.f32);
      if ((v27.i8[0] & 1) == 0)
      {
        goto LABEL_91;
      }

      v12 = 0;
      if ((v27.i8[2] & 1) == 0 || (v27.i8[4] & 1) == 0 || (vceq_s16(*&v26.u32[2], *&v59.u32[2]).u8[0] & 1) == 0)
      {
        return v12 & 1;
      }

      if ((vminv_u16(vceq_s16(vext_s8(vext_s8(*&v26.u32[2], *&v26.u32[2], 6uLL), v48, 4uLL), vext_s8(vext_s8(*&v59.u32[2], *&v59.u32[2], 6uLL), *v60.f32, 4uLL))) & 1) == 0)
      {
        goto LABEL_91;
      }

      v12 = vceq_s16(v48, *&v60).i8[4];
      return v12 & 1;
    case 21:
      if (v63 != 21)
      {
        goto LABEL_90;
      }

      v49 = v4;
      v29 = v71;
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v30 = vceq_s16(*v29.f32, *v59.f32).u32[0];
      if ((v30 & HIWORD(v30) & 1) == 0 || (vminv_u16(vceq_s16(vext_s8(*v29.f32, *&v29.u32[2], 4uLL), vext_s8(*v59.f32, *&v59.u32[2], 4uLL))) & 1) == 0 || (vminv_u16(vceq_s16(vext_s8(*&v29.u32[2], *v49.i8, 4uLL), vext_s8(*&v59.u32[2], *v60.f32, 4uLL))) & 1) == 0)
      {
        goto LABEL_91;
      }

      v12 = 0;
      v31 = vextq_s8(v49, v49, 8uLL).u64[0];
      if ((vminv_u16(vceq_s16(vext_s8(*v49.i8, v31, 4uLL), vext_s8(*v60.f32, *&v60.u32[2], 4uLL))) & 1) == 0)
      {
        return v12 & 1;
      }

      v22 = vceq_s16(*&v60.u32[2], v31);
      if ((v22.i8[4] & 1) == 0)
      {
        return v12 & 1;
      }

LABEL_27:
      v12 = v22.i8[6];
      return v12 & 1;
    case 22:
      if (v63 == 22)
      {
        goto LABEL_81;
      }

      goto LABEL_88;
    case 23:
      if (v63 == 23)
      {
LABEL_81:
        type metadata accessor for CGColorRef(0);
        outlined init with copy of NodeDefinitionStore.TypeStorage(&v59, v54);
        outlined init with copy of NodeDefinitionStore.TypeStorage(v55, v54);
        lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
        v12 = static _CFObject.== infix(_:_:)();
LABEL_94:
        outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      }

      else
      {
LABEL_88:
        v36 = *&v55[0];
LABEL_90:
        outlined init with copy of NodeDefinitionStore.TypeStorage(&v59, v54);
        outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
LABEL_91:
        v12 = 0;
      }

      return v12 & 1;
    default:
      if (v63)
      {
        goto LABEL_90;
      }

      v11 = v71.i8[0];
      outlined destroy of [Input](v64, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageO_AEtMR);
      v12 = v11 ^ v59.i8[0] ^ 1;
      return v12 & 1;
  }
}

uint64_t specialized static NodeDefinitionStore.Input.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 6);
  v66[2] = *(a1 + 5);
  v66[3] = v9;
  v67 = *(a1 + 112);
  v10 = *(a1 + 4);
  v66[0] = *(a1 + 3);
  v66[1] = v10;
  v37 = a1[15];
  v40 = a1[16];
  v11 = *(a1 + 136);
  v12 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v14 = a2[3];
  v16 = a2[4];
  v69 = *(a2 + 112);
  v17 = *(a2 + 6);
  v68[2] = *(a2 + 5);
  v68[3] = v17;
  v18 = *(a2 + 4);
  v68[0] = *(a2 + 3);
  v68[1] = v18;
  v20 = a2[15];
  v19 = a2[16];
  v38 = *(a2 + 136);
  v39 = v11;
  if ((v4 != v12 || v5 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v7 != v14 || v8 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {

      return 0;
    }

    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v6, v15) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    if (v15)
    {
      return 0;
    }
  }

  v21 = v67;
  v22 = *(a2 + 4);
  *&v65[15] = *(a2 + 3);
  *&v65[31] = v22;
  v23 = *(a2 + 6);
  *&v65[47] = *(a2 + 5);
  *&v65[63] = v23;
  v24 = v69;
  if (v67 == 255)
  {
    if (v69 != 255)
    {
      outlined init with copy of [Input](v66, &v55, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
      outlined init with copy of [Input](v68, &v55, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
      goto LABEL_27;
    }

    v27 = *(a1 + 4);
    v55 = *(a1 + 3);
    v56 = v27;
    v28 = *(a1 + 6);
    v57 = *(a1 + 5);
    v58 = v28;
    v59 = -1;
    outlined init with copy of [Input](v66, &v50, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
    outlined init with copy of [Input](v68, &v50, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
    outlined destroy of [Input](&v55, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
LABEL_20:
    if (v40)
    {
      if (!v19 || (v37 != v20 || v40 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v19)
    {
      return 0;
    }

    return v39 ^ v38 ^ 1u;
  }

  v25 = *(a1 + 4);
  v55 = *(a1 + 3);
  v56 = v25;
  v26 = *(a1 + 6);
  v57 = *(a1 + 5);
  v58 = v26;
  v59 = v67;
  v54 = v67;
  v52 = v57;
  v53 = v26;
  v50 = v55;
  v51 = v25;
  if (v69 == 255)
  {
    v47 = v57;
    v48 = v58;
    v49 = v59;
    v45 = v55;
    v46 = v56;
    outlined init with copy of [Input](v66, v43, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
    outlined init with copy of [Input](v68, v43, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
    outlined init with copy of [Input](&v55, v43, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
    outlined destroy of NodeDefinitionStore.TypeStorage(&v45);
LABEL_27:
    v34 = *(a1 + 4);
    v55 = *(a1 + 3);
    v56 = v34;
    v35 = *(a1 + 6);
    v57 = *(a1 + 5);
    v58 = v35;
    v59 = v21;
    v61 = *&v65[16];
    v62 = *&v65[32];
    *v63 = *&v65[48];
    *&v63[15] = *&v65[63];
    v60 = *v65;
    v64 = v24;
    outlined destroy of [Input](&v55, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSg_AFtMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSg_AFtMR);
    return 0;
  }

  v29 = *(a2 + 4);
  v45 = *(a2 + 3);
  v46 = v29;
  v30 = *(a2 + 6);
  v47 = *(a2 + 5);
  v48 = v30;
  v49 = v69;
  outlined init with copy of [Input](v66, v43, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
  outlined init with copy of [Input](v68, v43, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
  outlined init with copy of [Input](&v55, v43, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
  v31 = specialized static NodeDefinitionStore.TypeStorage.== infix(_:_:)(&v50, &v45);
  v41[2] = v47;
  v41[3] = v48;
  v42 = v49;
  v41[0] = v45;
  v41[1] = v46;
  outlined destroy of NodeDefinitionStore.TypeStorage(v41);
  v43[2] = v52;
  v43[3] = v53;
  v44 = v54;
  v43[0] = v50;
  v43[1] = v51;
  outlined destroy of NodeDefinitionStore.TypeStorage(v43);
  v32 = *(a1 + 4);
  v45 = *(a1 + 3);
  v46 = v32;
  v33 = *(a1 + 6);
  v47 = *(a1 + 5);
  v48 = v33;
  v49 = v21;
  outlined destroy of [Input](&v45, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMd, &_s11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSgMR);
  if (v31)
  {
    goto LABEL_20;
  }

  return 0;
}

BOOL specialized static NodeDefinitionStore.Node.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v36 = a1[6];
  v6 = a1[7];
  v32 = a1[8];
  v38 = a1[9];
  v34 = *(a1 + 80);
  v30 = a1[11];
  v24 = a1[12];
  v28 = a1[13];
  v26 = a1[14];
  v22 = a1[15];
  v20 = a1[16];
  v19 = a1[17];
  v14 = a1[18];
  v16 = a1[19];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 56);
  v35 = *(a2 + 48);
  v31 = *(a2 + 64);
  v37 = *(a2 + 72);
  v33 = *(a2 + 80);
  v29 = *(a2 + 88);
  v23 = *(a2 + 96);
  v27 = *(a2 + 104);
  v25 = *(a2 + 112);
  v21 = *(a2 + 120);
  v17 = *(a2 + 136);
  v18 = *(a2 + 128);
  v13 = *(a2 + 144);
  v15 = *(a2 + 152);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v7 || v3 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v10 || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v36 != v35 || v6 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v38)
  {
    if (!v37 || (v32 != v31 || v38 != v37) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  if (v34 == 2)
  {
    if (v33 != 2)
    {
      return 0;
    }

LABEL_33:
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v30, v29))
    {
      if (v28)
      {
        if (!v27 || (v24 != v23 || v28 != v27) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v27)
      {
        return 0;
      }

      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph19NodeDefinitionStoreV5InputV_Tt1g5(v26, v25) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph19NodeDefinitionStoreV6OutputV_Tt1g5(v22, v21) & 1) == 0 || (v20 != v18 || v19 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if (v16)
      {
        return v15 && (v14 == v13 && v16 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
      }

      if (!v15)
      {
        return 1;
      }
    }

    return 0;
  }

  result = 0;
  if (v33 != 2 && ((v33 ^ v34) & 1) == 0)
  {
    goto LABEL_33;
  }

  return result;
}

uint64_t specialized static NodeDefinitionStore.GeomPropValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      v10 = specialized == infix<A>(_:_:)(*a1, *a2);
      outlined consume of NodeDefinitionStore.GeomPropValue(v3, v2, 0);
      v11 = v6;
      v12 = v5;
      v13 = 0;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if ((*(a2 + 16) & 1) == 0)
  {

LABEL_12:
    outlined copy of GeomPropDef.GeomProp(v6, v5, v7);
    outlined consume of NodeDefinitionStore.GeomPropValue(v3, v2, v4);
    outlined consume of NodeDefinitionStore.GeomPropValue(v6, v5, v7);
    return 0;
  }

  v8 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of GeomPropDef.GeomProp(v6, v5, 1);
    outlined copy of GeomPropDef.GeomProp(v3, v2, 1);
    outlined consume of NodeDefinitionStore.GeomPropValue(v3, v2, 1);
    v11 = v6;
    v12 = v5;
    v13 = 1;
LABEL_10:
    outlined consume of NodeDefinitionStore.GeomPropValue(v11, v12, v13);
    return v10 & 1;
  }

  outlined copy of GeomPropDef.GeomProp(v8, v2, 1);
  outlined copy of GeomPropDef.GeomProp(v3, v2, 1);
  outlined consume of NodeDefinitionStore.GeomPropValue(v3, v2, 1);
  outlined consume of NodeDefinitionStore.GeomPropValue(v3, v2, 1);
  return 1;
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say11ShaderGraph19NodeDefinitionStoreV0F0VGTt1g504_s11d7Graph19fgH21VACycfcSSAC0C0VXEfU2_Tf1nc_nTf4g_n(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v55 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 10)
  {
    v12 = i[7];
    v51 = i[6];
    v52 = v12;
    v13 = i[9];
    v53 = i[8];
    v54 = v13;
    v14 = i[3];
    v47 = i[2];
    v48 = v14;
    v15 = i[5];
    v49 = i[4];
    v50 = v15;
    v16 = i[1];
    v45 = *i;
    v46 = v16;
    v17 = v16;
    outlined init with copy of NodeDefinitionStore.Node(&v45, v44);

    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, *(&v17 + 1));
    v20 = v1[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (v1[3] < v22)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, 1);
      v1 = v55;
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v17, *(&v17 + 1));
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_19;
      }

      v19 = v24;
    }

    if (v23)
    {

      v26 = v1[7];
      v27 = *(v26 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 8 * v19) = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
        *(v26 + 8 * v19) = v27;
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      if (v30 >= v29 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v27);
        *(v26 + 8 * v19) = v27;
      }

      *(v27 + 2) = v30 + 1;
      v4 = &v27[160 * v30];
      v5 = v46;
      *(v4 + 2) = v45;
      *(v4 + 3) = v5;
      v6 = v47;
      v7 = v48;
      v8 = v50;
      *(v4 + 6) = v49;
      *(v4 + 7) = v8;
      *(v4 + 4) = v6;
      *(v4 + 5) = v7;
      v9 = v51;
      v10 = v52;
      v11 = v54;
      *(v4 + 10) = v53;
      *(v4 + 11) = v11;
      *(v4 + 8) = v9;
      *(v4 + 9) = v10;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph19NodeDefinitionStoreV0F0VGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph19NodeDefinitionStoreV0F0VGMR);
      v31 = swift_allocObject();
      v32 = v51;
      v33 = v53;
      v34 = v54;
      v31[9] = v52;
      v31[10] = v33;
      v31[11] = v34;
      v35 = v47;
      v36 = v49;
      v37 = v50;
      v31[5] = v48;
      v31[6] = v36;
      v31[7] = v37;
      v31[8] = v32;
      v38 = v45;
      v39 = v46;
      v31[1] = xmmword_265F1F670;
      v31[2] = v38;
      v31[3] = v39;
      v31[4] = v35;
      v1[(v19 >> 6) + 8] |= 1 << v19;
      *(v1[6] + 16 * v19) = v17;
      *(v1[7] + 8 * v19) = v31;
      v40 = v1[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_18;
      }

      v1[2] = v42;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}