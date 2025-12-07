void *XMLParserDelegate.Element.deinit()
{
  outlined destroy of weak XMLNode?(v0 + 16);

  return v0;
}

uint64_t XMLParserDelegate.Element.__deallocating_deinit()
{
  outlined destroy of weak XMLNode?(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for XMLNodePrivate.children.modify in conformance XMLParserDelegate.Element(uint64_t *a1))()
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
  *(v3 + 32) = (*(*v1 + 152))();
  return protocol witness for XMLNodePrivate.children.modify in conformance XMLParserDelegate.Element;
}

uint64_t XMLParserDelegate.Element.parent.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*XMLParserDelegate.StringNode.parent.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return XMLParserDelegate.StringNode.parent.modify;
}

void XMLParserDelegate.Element.parent.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t XMLParserDelegate.StringNode.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t XMLParserDelegate.Element.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t XMLParserDelegate.StringNode.stringValue.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void *XMLParserDelegate.StringNode.init(name:stringValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v9 = MEMORY[0x277D84F90];
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = v9;
  v4[7] = a3;
  v4[8] = a4;
  v4[9] = 0;
  return v4;
}

void *XMLParserDelegate.StringNode.deinit()
{
  outlined destroy of weak XMLNode?(v0 + 16);

  return v0;
}

uint64_t XMLParserDelegate.StringNode.__deallocating_deinit()
{
  outlined destroy of weak XMLNode?(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for XMLNodePrivate.children.modify in conformance XMLParserDelegate.StringNode(uint64_t *a1))()
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
  *(v3 + 32) = (*(*v1 + 160))();
  return protocol witness for XMLNodePrivate.children.modify in conformance XMLParserDelegate.StringNode;
}

void protocol witness for XMLNodePrivate.children.modify in conformance XMLParserDelegate.Element(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t _s11ShaderGraph17XMLParserDelegateC7ElementCAA7XMLNodeA2aFP4nameSSSgvgTW_0()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t protocol witness for XMLNode.stringValue.getter in conformance XMLParserDelegate.StringNode()
{
  v1 = *(v0 + 56);

  return v1;
}

id XMLParserDelegate.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_currentElement] = 0;
  v2 = &v0[OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_rootElement];
  *v2 = 0;
  *(v2 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id XMLParserDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized XMLParserDelegate.parser(_:didStartElement:namespaceURI:qualifiedName:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for XMLParserDelegate.Element();
  v7 = swift_allocObject();
  v7[3] = 0;
  swift_unknownObjectWeakInit();
  v7[5] = a2;
  v7[6] = 0;
  v7[7] = 0;
  v7[4] = a1;

  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_11ShaderGraph7XMLNode_ps5NeverOTg504_s11d26Graph17XMLParserDelegateC7b39C4name10attributesAESS_SDyS2SGSgtcfcAA7F25_pSS3key_SS5valuet_tXEfU_Tf1cn_n(a3);
  swift_beginAccess();
  v7[7] = v8;

  v9 = (v3 + OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_rootElement);
  swift_beginAccess();
  v10 = *v9;
  if (*v9)
  {
    v11 = v9[1];
  }

  else
  {

    v11 = &protocol witness table for XMLParserDelegate.Element;
    v10 = v7;
  }

  *v9 = v10;
  v9[1] = v11;
  v12 = *(v3 + OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_currentElement);
  if (v12)
  {
    v13 = *(*v12 + 208);

    v13(v7, &protocol witness table for XMLParserDelegate.Element);
  }

  XMLParserDelegate.beginElement(_:)(v7);
}

unint64_t lazy protocol witness table accessor for type XMLDocument.Options and conformance XMLDocument.Options()
{
  result = lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options;
  if (!lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options;
  if (!lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options;
  if (!lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options;
  if (!lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XMLDocument.Options and conformance XMLDocument.Options);
  }

  return result;
}

uint64_t sub_265DBB230@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_265DBB27C(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 120);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_265DBB2E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_265DBB32C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

uint64_t sub_265DBB380@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_265DBB3CC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 176);

  return v2(v3);
}

uint64_t sub_265DBB420@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_265DBB46C(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 128);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_265DBB4D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_265DBB51C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 152);

  return v2(v3);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for XMLDocument(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for XMLDocument(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t outlined consume of XMLDocument?(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != 2)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

int8x8_t *_UnsafeBitset._actualCount.getter(int8x8_t *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = result;
      result = 0;
      v3 = 8 * a2;
      while (1)
      {
        v4 = vcnt_s8(*v2);
        v4.i16[0] = vaddlv_u8(v4);
        v5 = __OFADD__(result, v4.u32[0]);
        result = (result + v4.u32[0]);
        if (v5)
        {
          break;
        }

        ++v2;
        v3 -= 8;
        if (!v3)
        {
          return result;
        }
      }

      __break(1u);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t static _UnsafeBitset.withTemporaryBitset<A>(capacity:run:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  v17 = *(a4 - 8);
  (*(v17 + 56))(&v21 - v15, 1, 1, a4, v14);
  v23 = a4;
  v24 = v16;
  v25 = a2;
  v26 = a3;
  v18 = v27;
  specialized static _UnsafeBitset._withTemporaryBitset(capacity:run:)(a1, partial apply for closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:run:));
  if (v18)
  {
    return (*(v10 + 8))(v16, v9);
  }

  v19 = v22;
  (*(v10 + 16))(v12, v16, v9);
  result = (*(v17 + 48))(v12, 1, a4);
  if (result != 1)
  {
    (*(v17 + 32))(v19, v12, a4);
    return (*(v10 + 8))(v16, v9);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:run:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, double), uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v16 - v13;
  result = a3(a1, v12);
  if (!v5)
  {
    (*(*(a5 - 8) + 56))(v14, 0, 1, a5);
    return (*(v11 + 40))(a2, v14, v10);
  }

  return result;
}

Swift::Bool __swiftcall _UnsafeBitset.insert(_:)(Swift::Int a1)
{
  v2 = (a1 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v3 = *(*v1 + v2);
  *(*v1 + v2) = v3 | (1 << a1);
  if ((v3 & (1 << a1)) == 0)
  {
    v4 = v1[2];
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
      return a1;
    }

    v1[2] = v6;
  }

  LOBYTE(a1) = (v3 & (1 << a1)) == 0;
  return a1;
}

Swift::Bool __swiftcall _UnsafeBitset.Word.insert(_:)(Swift::Int a1)
{
  v2 = 1 << a1;
  result = (*v1 & (1 << a1)) == 0;
  *v1 |= v2;
  return result;
}

Swift::Bool __swiftcall _UnsafeBitset.remove(_:)(Swift::Int a1)
{
  v2 = (a1 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v3 = *(*v1 + v2);
  *(*v1 + v2) = v3 & ~(1 << a1);
  if ((v3 & (1 << a1)) != 0)
  {
    v4 = v1[2];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v5)
    {
      __break(1u);
      return a1;
    }

    v1[2] = v6;
  }

  LOBYTE(a1) = (v3 & (1 << a1)) != 0;
  return a1;
}

Swift::Bool __swiftcall _UnsafeBitset.Word.remove(_:)(Swift::Int a1)
{
  v2 = 1 << a1;
  result = (*v1 & (1 << a1)) != 0;
  *v1 &= ~v2;
  return result;
}

Swift::Void __swiftcall _UnsafeBitset.clear()()
{
  v1 = *(v0 + 8);
  if (v1 >= 1)
  {
    if (*v0)
    {
      bzero(*v0, 8 * v1);
      *(v0 + 16) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall _UnsafeBitset.insertAll(upTo:)(Swift::Int upTo)
{
  if (upTo >= 1)
  {
    v2 = upTo >> 6;
    if (upTo >= 0x40)
    {
      v3 = *v1;
      v4 = upTo >> 6;
      while (1)
      {
        v5 = vcnt_s8(~*v3);
        v5.i16[0] = vaddlv_u8(v5);
        v6 = *(v1 + 16);
        if (__OFADD__(v6, v5.u32[0]))
        {
          break;
        }

        *(v1 + 16) = v6 + v5.u32[0];
        *v3++ = -1;
        if (!--v4)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_11;
    }

LABEL_6:
    v7 = upTo & 0x3F;
    if ((upTo & 0x3F) != 0)
    {
      v8 = *(*v1 + 8 * v2);
      v9 = -1 << v7;
      v10 = vcnt_s8((v8 & ~(-1 << v7)));
      v10.i16[0] = vaddlv_u8(v10);
      v11 = v7 - v10.u32[0];
      *(*v1 + 8 * v2) = v8 | ~v9;
      v12 = *(v1 + 16);
      v13 = __OFADD__(v12, v11);
      v14 = v12 + v11;
      if (v13)
      {
LABEL_11:
        __break(1u);
        return;
      }

      *(v1 + 16) = v14;
    }
  }
}

Swift::Int __swiftcall _UnsafeBitset.Word.insert(bitsBelow:)(Swift::Int bitsBelow)
{
  v2 = -1 << bitsBelow;
  v3 = vcnt_s8((*v1 & ~(-1 << bitsBelow)));
  v3.i16[0] = vaddlv_u8(v3);
  v4 = __OFSUB__(bitsBelow, v3.u32[0]);
  result = bitsBelow - v3.u32[0];
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *v1 |= ~v2;
  }

  return result;
}

Swift::Void __swiftcall _UnsafeBitset.removeAll(upTo:)(Swift::Int upTo)
{
  if (upTo >= 1)
  {
    v2 = upTo >> 6;
    if (upTo >= 0x40)
    {
      v3 = *v1;
      v4 = upTo >> 6;
      while (1)
      {
        v5 = vcnt_s8(*v3);
        v5.i16[0] = vaddlv_u8(v5);
        v6 = *(v1 + 16);
        if (__OFSUB__(v6, v5.u32[0]))
        {
          break;
        }

        *(v1 + 16) = v6 - v5.u32[0];
        *v3++ = 0;
        if (!--v4)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_11;
    }

LABEL_6:
    if ((upTo & 0x3F) != 0)
    {
      v7 = -1 << (upTo & 0x3F);
      v8 = *(*v1 + 8 * v2);
      v9 = vcnt_s8((v8 & ~v7));
      v9.i16[0] = vaddlv_u8(v9);
      *(*v1 + 8 * v2) = v8 & v7;
      v10 = *(v1 + 16);
      v11 = __OFSUB__(v10, v9.u32[0]);
      v12 = v10 - v9.u32[0];
      if (v11)
      {
LABEL_11:
        __break(1u);
        return;
      }

      *(v1 + 16) = v12;
    }
  }
}

Swift::Int __swiftcall _UnsafeBitset.Word.remove(bitsBelow:)(Swift::Int bitsBelow)
{
  v2 = -1 << bitsBelow;
  v3 = vcnt_s8((*v1 & ~(-1 << bitsBelow)));
  v3.i16[0] = vaddlv_u8(v3);
  result = v3.u32[0];
  *v1 &= v2;
  return result;
}

uint64_t **_UnsafeBitset.makeIterator()@<X0>(uint64_t **result@<X0>, uint64_t **a2@<X1>, uint64_t **a3@<X2>, uint64_t ***a4@<X8>)
{
  if (a2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *result;
  }

  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = 0;
  a4[4] = v4;
  return result;
}

Swift::Int_optional __swiftcall _UnsafeBitset.Iterator.next()()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = 0;
    v0[4] = (v1 - 1) & v1;
    v3 = __clz(__rbit64(v1)) | (v0[3] << 6);
  }

  else
  {
    v4 = v0[1];
    v5 = v0[3];
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6 >= v4)
      {
        v3 = 0;
        v2 = 1;
        goto LABEL_10;
      }

      v0[3] = v6;
      v7 = *(*v0 + 8 * v6);
      v0[4] = v7;
      ++v5;
      if (v7)
      {
        v2 = 0;
        v0[4] = (v7 - 1) & v7;
        v3 = __clz(__rbit64(v7)) | (v6 << 6);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

LABEL_10:
  result.value = v3;
  result.is_nil = v2;
  return result;
}

Swift::Int_optional __swiftcall _UnsafeBitset.Word.next()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = __clz(__rbit64(v1));
    *v0 = (v1 - 1) & v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v1 == 0;
  result.value = v2;
  result.is_nil = v3;
  return result;
}

Swift::Int protocol witness for IteratorProtocol.next() in conformance _UnsafeBitset.Iterator@<X0>(uint64_t a1@<X8>)
{
  v3 = _UnsafeBitset.Iterator.next()();
  *a1 = v3.value;
  *(a1 + 8) = v3.is_nil;
  return v3.value;
}

void protocol witness for Sequence.makeIterator() in conformance _UnsafeBitset(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 8) < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = v4;
}

uint64_t _UnsafeBitset.Word.underestimatedCount.getter(uint64_t a1)
{
  v1 = vcnt_s8(a1);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance _UnsafeBitset.Word()
{
  v1 = vcnt_s8(*v0);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

void protocol witness for IteratorProtocol.next() in conformance _UnsafeBitset.Word(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = __clz(__rbit64(v2));
    *v1 = (v2 - 1) & v2;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2 == 0;
}

uint64_t specialized static _UnsafeBitset._withTemporaryBitset(capacity:run:)(uint64_t a1, uint64_t (*a2)(void **))
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 63) >> 6;
  if ((a1 + 63) <= 0xBF)
  {
    v6[0] = 0;
    v6[1] = 0;
    v7 = v6;
    v8 = (a1 + 63) >> 6;
    v9 = 0;
    return a2(&v7);
  }

  else
  {
    v4 = swift_slowAlloc();
    bzero(v4, 8 * v3);
    v7 = v4;
    v8 = v3;
    v9 = 0;
    a2(&v7);
    return MEMORY[0x266773120](v4, -1, -1);
  }
}

unint64_t lazy protocol witness table accessor for type _UnsafeBitset.Iterator and conformance _UnsafeBitset.Iterator()
{
  result = lazy protocol witness table cache variable for type _UnsafeBitset.Iterator and conformance _UnsafeBitset.Iterator;
  if (!lazy protocol witness table cache variable for type _UnsafeBitset.Iterator and conformance _UnsafeBitset.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UnsafeBitset.Iterator and conformance _UnsafeBitset.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UnsafeBitset.Word and conformance _UnsafeBitset.Word()
{
  result = lazy protocol witness table cache variable for type _UnsafeBitset.Word and conformance _UnsafeBitset.Word;
  if (!lazy protocol witness table cache variable for type _UnsafeBitset.Word and conformance _UnsafeBitset.Word)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UnsafeBitset.Word and conformance _UnsafeBitset.Word);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _UnsafeBitset(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _UnsafeBitset(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for _UnsafeBitset.Iterator(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _UnsafeBitset.Iterator(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

void *_s11ShaderGraph13_UnsafeBitsetV014_withTemporaryD08capacity3runySi_yACzKXEtKFZ04_s11a8Graph13_cd8V013withf32D08capacity3runxSi_xACzKXEtKlFZyN12KXEfU_Sb_Tg5SbSgACxs5Error_pRi_zRi0_zlySbIsglrzo_Tf1ncn_nTf4ndnn_n(uint64_t a1, _BYTE *a2, void *(*a3)(char *__return_ptr, void **))
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = (a1 + 63) >> 6;
  if ((a1 + 63) < 0xC0)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = v10;
    v12 = (a1 + 63) >> 6;
    v13 = 0;
    result = a3(&v9, &v11);
    if (!v3)
    {
      *a2 = v9;
    }
  }

  else
  {
    v7 = swift_slowAlloc();
    bzero(v7, 8 * v6);
    v11 = v7;
    v12 = v6;
    v13 = 0;
    a3(v10, &v11);
    if (!v3)
    {
      *a2 = v10[0];
    }

    return MEMORY[0x266773120](v7, -1, -1);
  }

  return result;
}

uint64_t SGNode.BOOLValue.getter()
{
  v1 = (v0 + OBJC_IVAR___SGNode_data);
  if ((*(v0 + OBJC_IVAR___SGNode_data + 80) & 0xC0) == 0x80 && ((*(v0 + OBJC_IVAR___SGNode_data + 80) & 0x3F) == 0 ? (v2 = *v1 == 1) : (v2 = 0), v2))
  {
    return v1[2] & 1;
  }

  else
  {
    return 2;
  }
}

__n128 SGNode.constantStringValue.getter()
{
  v1 = v0 + OBJC_IVAR___SGNode_data;
  v2 = *(v0 + OBJC_IVAR___SGNode_data + 80);
  if ((v2 & 0xC0) == 0x80 && (v2 & 0x3F) == 6 && *v1 == 11)
  {
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    v10 = *(v1 + 24);
    v6 = *(v1 + 40);
    v7 = *(v1 + 56);
    v8 = *(v1 + 72);
    v12[0] = 11;
    v12[1] = v4;
    v12[2] = v5;
    v13 = v10;
    v14 = v6;
    v15 = v7;
    v16 = v8;
    v17 = 6;
    outlined init with copy of [Input](v12, v11, &_sSo10SGDataTypeV4type_11ShaderGraph0aB7StorageO7storagetMd, &_sSo10SGDataTypeV4type_11ShaderGraph0aB7StorageO7storagetMR);
    return v10;
  }

  return result;
}

__n128 SGNode.constantAssetValue.getter()
{
  v1 = v0 + OBJC_IVAR___SGNode_data;
  v2 = *(v0 + OBJC_IVAR___SGNode_data + 80);
  if ((v2 & 0xC0) == 0x80 && (v2 & 0x3F) == 6 && *v1 == 13)
  {
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    v10 = *(v1 + 24);
    v6 = *(v1 + 40);
    v7 = *(v1 + 56);
    v8 = *(v1 + 72);
    v12[0] = 13;
    v12[1] = v4;
    v12[2] = v5;
    v13 = v10;
    v14 = v6;
    v15 = v7;
    v16 = v8;
    v17 = 6;
    outlined init with copy of [Input](v12, v11, &_sSo10SGDataTypeV4type_11ShaderGraph0aB7StorageO7storagetMd, &_sSo10SGDataTypeV4type_11ShaderGraph0aB7StorageO7storagetMR);
    return v10;
  }

  return result;
}

unint64_t TopologicalSort.Path.sourceNode.getter(unint64_t result)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v5 = result;
  v6 = __CocoaSet.count.getter();
  result = v5;
  if (!v6)
  {
    return 0;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x266772030](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
LABEL_6:
    v2 = v1;
    v3 = *&v1[OBJC_IVAR___SGEdge_from];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    return Strong;
  }

  __break(1u);
  return result;
}

unint64_t TopologicalSort.Path.constantBoolValue.getter(unint64_t result)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 2;
  }

  v9 = result;
  v10 = __CocoaSet.count.getter();
  result = v9;
  if (!v10)
  {
    return 2;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x266772030](0, result);
LABEL_6:
    v2 = v1;
    v3 = *&v1[OBJC_IVAR___SGEdge_from];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v5 = &Strong[OBJC_IVAR___SGNode_data];
      v6 = Strong[OBJC_IVAR___SGNode_data + 80];
      if ((v6 & 0xC0) == 0x80 && *v5 == 1)
      {
        v7 = v5[2];
        v8 = v6 & 0x3F;

        if (!v8)
        {
          return v7 & 1;
        }
      }

      else
      {
      }
    }

    return 2;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t TopologicalSort.path(to:on:resolvingInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v59[0] = *v5;
  v6 = v59[0];
  v7 = *(v59[0] + 16);
  v8 = *a3;
  if (!v7)
  {
    goto LABEL_23;
  }

  v11 = 0;
  v12 = (v59[0] + 64);
  v46 = a3;
  v47 = *a3;
  while (1)
  {
    v13 = *(v12 - 4);
    if (v13 != v8)
    {
      goto LABEL_4;
    }

    v14 = *(v12 - 3);
    if (v14 != *(a3 + 8))
    {
      goto LABEL_4;
    }

    v15 = *(v12 - 2);
    v16 = *(a3 + 16);
    if (!v15)
    {
      break;
    }

    if (v16)
    {
      v49 = *(a3 + 16);
      type metadata accessor for SGNode();
      v48 = v8;
      v52 = v13;
      v50 = v14;
      v17 = v15;
      v18 = v49;
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        goto LABEL_12;
      }

      a3 = v46;
      v8 = v47;
    }

LABEL_4:
    ++v11;
    v12 += 40;
    if (v7 == v11)
    {
      goto LABEL_23;
    }
  }

  if (v16)
  {
    goto LABEL_4;
  }

  v20 = v8;
LABEL_12:
  v21 = MEMORY[0x266771450](a1, a2);
  v22 = [v47 inputNamed_];

  if (!v22)
  {

    v8 = v47;
LABEL_23:
    v40 = *(v54 + 16);
    v41 = v8;
    v39 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v23 = OBJC_IVAR___SGInput_edge;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    v8 = v47;
    goto LABEL_23;
  }

  v25 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v25 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v53 = v22;
  if (v7 < v25)
  {
LABEL_27:
    __break(1u);

    __break(1u);
    return result;
  }

  v26 = Strong;
  v27 = ~v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_265F20CD0;
  *(v28 + 32) = v26;
  v58 = v28;
  outlined init with copy of [Input](v59, v55, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
  v51 = v26;
  do
  {
    v29 = *(v12 - 3);
    v31 = *v12;
    v55[0] = *(v12 - 4);
    v30 = v55[0];
    v55[1] = v29;
    v56 = *(v12 - 1);
    v57 = v31;
    v32 = v56;
    v33 = v30;
    v34 = v29;
    specialized closure #2 in TopologicalSort.path(to:on:resolvingInput:)(&v58, v55, v6, a4, a5, v35, v36);

    v12 -= 40;
  }

  while (!__CFADD__(v27++, 1));
  v38 = v58;
  outlined destroy of [Input](v59, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
  v39 = specialized Sequence.reversed()(v38);

  v40 = *(v54 + 16);
LABEL_24:
  v42 = v40;
  return v39;
}

uint64_t inferLightingModel(from:in:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  if (v2 >> 62)
  {
LABEL_12:
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v13 = v3;
    *(v13 + 8) = v4;
    *(v13 + 16) = 10;

    return swift_willThrow();
  }

  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  v9 = specialized Surface.init(nodeDefID:)(v7, v8);
  result = 2;
  if (v9 <= 2)
  {
    if (v9)
    {
      v11 = v9 == 1;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)(0x616F637261656C63, 0xE900000000000074, a1, a2, v18);
      v12 = SGDataTypeGraph.TopologicalSort.Path.hasValue.getter();
      outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v18);
      if (v12)
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    return result;
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_265D7D000, v15, v16, "inferLightingModel called on geometry modifier node", v17, 2u);
    MEMORY[0x266773120](v17, -1, -1);
  }

  return 1;
}

uint64_t inferBlendMode(from:in:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  if (v2 >> 62 || ((v7 = *(v2 + 16), v8 = *(v2 + 24), , v9 = specialized Surface.init(nodeDefID:)(v7, v8), v9 != 3) ? (v10 = v9 == 5) : (v10 = 1), v10))
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v11 = v3;
    *(v11 + 8) = v4;
    *(v11 + 16) = 10;

    return swift_willThrow();
  }

  else
  {
    specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)(0x7974696361706FLL, 0xE700000000000000, a1, a2, v22);
    v13 = SGDataTypeGraph.TopologicalSort.Path.hasValue.getter();
    specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)(0xD000000000000010, 0x8000000265F2E2F0, a1, a2, v23);
    v14 = SGDataTypeGraph.TopologicalSort.Path.hasValue.getter();
    v15 = v14;
    v16 = *a2;
    v17 = *(*a2 + 16);
    if (v17)
    {
      v18 = (v16 + 48);
      while (1)
      {
        v20 = *v18;
        v18 += 11;
        v19 = v20;
        if (!(v20 >> 62))
        {
          v21 = *(v19 + 16) == static MaterialXNodeTokens.discardNodeID && *(v19 + 24) == off_280042378;
          if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }

        if (!--v17)
        {
          goto LABEL_18;
        }
      }

      outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v23);
      outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v22);
      return 0;
    }

    else
    {
LABEL_18:
      outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v23);
      outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v22);
      return v13 & ~v15 & 1;
    }
  }
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 80);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 8);
      v11 = *(v7 - 3);
      v10 = *(v7 - 2);
      v13 = *(v7 - 5);
      v12 = *(v7 - 4);
      v17[0] = *(v7 - 6);
      v17[1] = v13;
      v17[2] = v12;
      v17[3] = v11;
      v17[4] = v10;
      v18 = v9;
      v19 = v8;

      v14 = a1(v17);

      if (v3)
      {
        break;
      }

      v7 += 7;
      v15 = v6-- == 0;
    }

    while (((v14 | v15) & 1) == 0);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14 & 1;
}

{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

{
  return sub_265DBD404(a1, a2, a3) & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x266772030](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = __CocoaSet.count.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

{
  return sub_265DBD5A8(a1, a2, a3) & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t inferHasPremultipliedAlpha(from:in:)(uint64_t *a1, void *a2)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  if (v3 >> 62)
  {
    goto LABEL_10;
  }

  v8 = *(v3 + 16);
  v2 = *(v3 + 24);

  v9 = specialized Surface.init(nodeDefID:)(v8, v2);
  LOBYTE(v2) = 0;
  if (v9 <= 2u)
  {
    if (v9 < 2u)
    {
      specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)(0xD000000000000015, 0x8000000265F2E310, a1, a2, v16);
      if (v17 >> 62 == 2 && *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == 1 && !*((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x60))
      {
        v2 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v16);
        return v2 & 1;
      }

      outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v16);
      goto LABEL_16;
    }

    return v2 & 1;
  }

  if (v9 == 3)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_265D7D000, v12, v13, "inferHasPremultipliedAlpha called on geometry modifier node", v14, 2u);
      MEMORY[0x266773120](v14, -1, -1);
    }

LABEL_16:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  if (v9 != 4)
  {
LABEL_10:
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v10 = v4;
    *(v10 + 8) = v5;
    *(v10 + 16) = 10;

    swift_willThrow();
  }

  return v2 & 1;
}

uint64_t inferApplyPostProcessToneMap(from:in:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  if (v2 >> 62 || (v7 = *(v2 + 16), v8 = *(v2 + 24), , v9 = specialized Surface.init(nodeDefID:)(v7, v8), v9 == 5))
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v10 = v3;
    *(v10 + 8) = v4;
    *(v10 + 16) = 10;

    swift_willThrow();
  }

  else if (v9 == 1)
  {
    specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)(0xD000000000000017, 0x8000000265F2E330, a1, a2, v12);
    if (v13 >> 62 == 2 && *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == 1)
    {
      LOBYTE(v4) = (*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x60) != 0) | *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    }

    else
    {
      LOBYTE(v4) = 1;
    }

    outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v12);
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

Swift::Int LightSpillNodeFeatures.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LightSpillNodeFeatures()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LightSpillNodeFeatures(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v2);
  return Hasher._finalize()();
}

uint64_t inferHighestConnectedLightSpillNodeRequirements(in:)(uint64_t a1)
{
  v1 = *(*a1 + 16);
  if (v1)
  {
    v2 = 0;
    for (i = *a1 + 88; ; i += 88)
    {
      v4 = *(i - 40);
      if (!(v4 >> 62))
      {
        v15 = &v13;
        v6 = *(v4 + 16);
        v5 = *(v4 + 24);
        v13 = v6;
        v14 = v5;
        MEMORY[0x28223BE20](a1);
        v12 = v7;

        v8 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v11, &outlined read-only object #1 of inferHighestConnectedLightSpillNodeRequirements(in:));
        if (v8)
        {

          return 2;
        }

        v15 = &v13;
        v13 = v6;
        v14 = v5;
        MEMORY[0x28223BE20](v8);
        v12 = &v13;
        v9 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v11, &outlined read-only object #0 of inferHighestConnectedLightSpillNodeRequirements(in:));

        if (v9)
        {
          v2 = 1;
        }

        else
        {
          v2 = v2;
        }
      }

      if (!--v1)
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t inferShaderHasCustomUniform(from:shaderType:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + OBJC_IVAR___SGGraph_resultsNode) + OBJC_IVAR___SGNode_inputs);
  v73[0] = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_79;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    v6 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x266772030](v5, v3);
      }

      else
      {
        if (v5 >= *(v6 + 16))
        {
          goto LABEL_75;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = OBJC_IVAR___SGInput_type;
      swift_beginAccess();
      if (*&v8[v10] == a2)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v6 = v3 & 0xFFFFFFFFFFFFFF8;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v5;
      if (v9 == i)
      {
        v11 = v73[0];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_16:

  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    v12 = __CocoaSet.count.getter();
    if (v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v12 = *(v11 + 16);
    if (v12)
    {
LABEL_19:
      v13 = 0;
      v61 = (a1 + OBJC_IVAR___SGGraph_nodeMap);
      v14 = v11 & 0xC000000000000001;
      a2 = v11 + 32;
      v65 = OBJC_IVAR___SGGraph_argumentsNode;
      v64 = v11;
      v62 = v12;
      v63 = v11 & 0xC000000000000001;
      v66 = v11 + 32;
      do
      {
        if (v14)
        {
          v15 = MEMORY[0x266772030](v13, v11);
        }

        else
        {
          if (v13 >= *(v11 + 16))
          {
            goto LABEL_77;
          }

          v15 = *(a2 + 8 * v13);
        }

        v3 = v15;
        if (__OFADD__(v13++, 1))
        {
          goto LABEL_76;
        }

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v70 = v3;
          v71 = *(Strong + OBJC_IVAR___SGEdge_from);
          v18 = &v71[OBJC_IVAR___SGOutput_attachment];
          v19 = Strong;
          swift_beginAccess();
          v3 = v18[1];
          if (v3)
          {
            v69 = v19;
            v20 = *v18;
            v21 = HIBYTE(v3) & 0xF;
            if ((v3 & 0x2000000000000000) == 0)
            {
              v21 = *v18 & 0xFFFFFFFFFFFFLL;
            }

            if (v21)
            {
              v22 = v71;

              if (String.count.getter() < 1024)
              {
                swift_beginAccess();
                v24 = *v61;
                v23 = v61[1];
                v25 = v61[2];
                v26 = *(v23 + 16);
                if (*v61)
                {

                  v27 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v20, v3, v23 + 32, v26, (v24 + 16), v24 + 32);
                  v29 = v28;

                  if ((v29 & 1) == 0)
                  {
                    if ((v27 & 0x8000000000000000) != 0)
                    {
                      __break(1u);
LABEL_84:
                      __break(1u);
                      return result;
                    }

LABEL_35:
                    if (v27 >= *(v25 + 16))
                    {
                      goto LABEL_84;
                    }

                    v31 = *(v25 + 8 * v27 + 32);
                    swift_endAccess();
                    v32 = v31;

                    LOBYTE(v72[0]) = 0;
                    MEMORY[0x28223BE20](v33);
                    specialized SGGraph.depthFirstVisit(from:includeSubgraphs:inputPredicate:_:)(v32, 1, protocol witness for static Equatable.== infix(_:_:) in conformance MaterialXDataType.Kind.SetCodingKeys, 0, partial apply for closure #1 in closure #2 in inferShaderHasCustomUniform(from:shaderType:));
                    if (v68)
                    {

                      return v60 & 1;
                    }

                    if (v72[0])
                    {

LABEL_71:

                      v60 = 1;
                      return v60 & 1;
                    }

                    v68 = 0;
                    specialized SGGraph.connectedUpstreamSubgraph(rootedAt:)(v32);
                    v3 = v34;
                    a2 = v35;

                    v36 = *(a2 + 16);
                    v14 = v63;
                    if (v36)
                    {
                      v37 = 0;
                      while (v37 < *(a2 + 16))
                      {
                        v38 = (*(*(a2 + 8 * v37 + 32) + OBJC_IVAR___SGEdge_from) + OBJC_IVAR___SGOutput_attachment);
                        swift_beginAccess();
                        v39 = v38[1];
                        if (v39)
                        {
                          v40 = (*(a1 + v65) + OBJC_IVAR___SGNode_name);
                          v41 = *v40 == *v38 && v39 == v40[1];
                          if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            goto LABEL_71;
                          }
                        }

                        if (v36 == ++v37)
                        {
                          goto LABEL_68;
                        }
                      }

                      goto LABEL_78;
                    }

LABEL_68:

                    v11 = v64;
                    v12 = v62;
LABEL_67:
                    a2 = v66;
                    continue;
                  }
                }

                else if (v26)
                {
                  v27 = 0;
                  v58 = (v23 + 40);
                  do
                  {
                    result = *(v58 - 1);
                    if (result == v20 && v3 == *v58)
                    {
                      goto LABEL_35;
                    }

                    result = _stringCompareWithSmolCheck(_:_:expecting:)();
                    if (result)
                    {
                      goto LABEL_35;
                    }

                    ++v27;
                    v58 += 2;
                  }

                  while (v26 != v27);
                }

                swift_endAccess();

                v11 = v64;
                v12 = v62;
                v14 = v63;
LABEL_66:

                goto LABEL_67;
              }

              lazy protocol witness table accessor for type APIError and conformance APIError();
              v42 = swift_allocError();
              *v45 = xmmword_265F20CE0;
              *(v45 + 16) = 17;
            }

            else
            {
              lazy protocol witness table accessor for type APIError and conformance APIError();
              v42 = swift_allocError();
              *v43 = xmmword_265F20CE0;
              *(v43 + 16) = 16;
              v44 = v71;
            }

            swift_willThrow();
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v46 = type metadata accessor for Logger();
            __swift_project_value_buffer(v46, logger);
            v47 = static os_log_type_t.error.getter();
            v48 = v42;
            v49 = Logger.logObject.getter();

            v68 = 0;
            if (os_log_type_enabled(v49, v47))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v72[0] = v51;
              *v50 = 136315138;
              v74 = v42;
              v52 = v42;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
              v53 = String.init<A>(describing:)();
              v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v72);

              *(v50 + 4) = v55;
              v14 = v63;
              _os_log_impl(&dword_265D7D000, v49, v47, "%s", v50, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v51);
              v56 = v51;
              v11 = v64;
              MEMORY[0x266773120](v56, -1, -1);
              v57 = v50;
              v12 = v62;
              MEMORY[0x266773120](v57, -1, -1);
            }

            else
            {
            }

            goto LABEL_66;
          }
        }

        else
        {
        }
      }

      while (v13 != v12);
    }
  }

  v60 = 0;
  return v60 & 1;
}

uint64_t inferShaderHasTimeVaryingFeatures(in:)(uint64_t a1)
{
  v1 = *(*a1 + 16);
  if (v1)
  {
    v2 = *a1 + 32;
    while (1)
    {
      v3 = *(v2 + 16);
      v23 = *v2;
      v24 = v3;
      v4 = *(v2 + 32);
      v5 = *(v2 + 48);
      v6 = *(v2 + 64);
      v28 = *(v2 + 80);
      v26 = v5;
      v27 = v6;
      v25 = v4;
      v7 = v24;
      if (!(v24 >> 62))
      {
        v9 = *(&v23 + 1);
        v8 = v23;
        v10 = *(&v24 + 1);
        v11 = *(&v25 + 1);
        v12 = v25;
        v36 = v26;
        v21 = v27;
        v22 = *(&v26 + 1);
        v19 = v28;
        v20 = *(&v27 + 1);
        if (*(v24 + 16) == 0x5F656D69745F444ELL && *(v24 + 24) == 0xED000074616F6C66)
        {
          break;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          break;
        }
      }

      v2 += 88;
      if (!--v1)
      {
        goto LABEL_10;
      }
    }

    outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v23, v35);
    if (v12)
    {
      *&v23 = v8;
      *(&v23 + 1) = v9;
      *&v24 = v7;
      *(&v24 + 1) = v10;
      *&v25 = v12;
      *(&v25 + 1) = v11;
      *&v26 = v36;
      *(&v26 + 1) = v22;
      *&v27 = v21;
      *(&v27 + 1) = v20;
      v28 = v19;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
      outlined destroy of [Input](&v23, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSg_AHtMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSg_AHtMR);
      return 1;
    }

    v18 = v19;
    v14 = v36;
    v16 = v21;
    v15 = v22;
    v17 = v20;
  }

  else
  {
LABEL_10:
    v8 = 0;
    v9 = 0;
    v7 = 0;
    v10 = 0;
    v11 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  *&v23 = v8;
  *(&v23 + 1) = v9;
  *&v24 = v7;
  *(&v24 + 1) = v10;
  *&v25 = 0;
  *(&v25 + 1) = v11;
  *&v26 = v14;
  *(&v26 + 1) = v15;
  *&v27 = v16;
  *(&v27 + 1) = v17;
  v28 = v18;
  outlined destroy of [Input](&v23, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
  return 0;
}

void *inferTextureAssignments(from:)(uint64_t KeyPath)
{
  result = SGGraph.topologicalSort()(v179);
  if (v1)
  {
    return result;
  }

  v6 = v179[0];
  v183 = v179[0];
  v7 = MEMORY[0x277D84F90];
  v143 = *(v179[0] + 16);
  if (!v143)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_85:
    v68 = 0;
    v69 = v9 + 48;
    v3 = *(v9 + 16);
    v2 = MEMORY[0x277D84F90];
LABEL_86:
    v70 = (v69 + 24 * v68);
    while (v3 != v68)
    {
      if (v68 >= *(v9 + 16))
      {
        goto LABEL_157;
      }

      KeyPath = *(v70 - 2);
      v71 = *(v70 - 1);
      v72 = *v70;
      if (KeyPath >> 62)
      {
        v169 = v69;
        v74 = v9;
        v73 = __CocoaSet.count.getter();
        v9 = v74;
        v69 = v169;
      }

      else
      {
        v73 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v68 = (v68 + 1);
      v70 += 3;
      if (v73 > 0)
      {
        v140 = v9;

        v75 = v71;
        v170 = v72;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2);
        }

        v79 = *(v2 + 16);
        v78 = *(v2 + 24);
        v9 = v140;
        if (v79 >= v78 >> 1)
        {
          v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v2);
          v9 = v140;
          v2 = v81;
        }

        *(v2 + 16) = v79 + 1;
        v80 = (v2 + 24 * v79);
        v80[4] = KeyPath;
        v80[5] = v75;
        v80[6] = v170;
        v69 = v77;
        goto LABEL_86;
      }
    }

    v82 = *(v2 + 16);
    if (!v82)
    {
      v171 = MEMORY[0x277D84F90];
LABEL_110:

      v93 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufC11ShaderGraph13TextureSourceO_SayAG05TypedF0VGTt1g504_s11d12Graph23inferf23Assignments4fromSayAA05h24D0VGAA7SGGraphC_tKFAA0D6G9OAEXEfU2_Tf1nc_nTf4g_n(v92);

      v94 = 1 << *(v93 + 32);
      v95 = -1;
      if (v94 < 64)
      {
        v95 = ~(-1 << v94);
      }

      v2 = v95 & v93[8];
      v3 = ((v94 + 63) >> 6);

      for (i = 0; v2; i = KeyPath)
      {
        KeyPath = i;
LABEL_117:
        v97 = (v93[6] + 24 * (__clz(__rbit64(v2)) | (KeyPath << 6)));
        v99 = *v97;
        v98 = v97[1];
        outlined copy of TextureSource(*v97, v98);

        specialized closure #5 in inferTextureAssignments(from:)(v100);
        v2 &= v2 - 1;
        outlined consume of TextureSource(v99, v98);
      }

      while (1)
      {
        KeyPath = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_161;
        }

        if (KeyPath >= v3)
        {

          _s11ShaderGraph17OrderedDictionaryV9_grouping2byACyxq_Gqd___x7ElementQy_KXEtKcSmR_STRd__AGQyd__AHRSlufCAA13TextureSourceO_SayAA05TypedH0VGANTt1g504_s11a12Graph23inferh23Assignments4fromSayAA05j24D0VGAA7SGGraphC_tKFAA0D6I9OAEXEfU4_Tf1nc_nTf4g_n(v171);
          v102 = v101;

          KeyPath = swift_getKeyPath();
          v103 = *(v102 + 16);

          if (!v103)
          {
            v2 = MEMORY[0x277D84F90];
LABEL_133:

            v114 = 0;
            v115 = *(v2 + 16);
            v116 = MEMORY[0x277D84F90];
LABEL_134:
            v117 = 32 * v114;
            while (v115 != v114)
            {
              if (v114 >= *(v2 + 16))
              {
                goto LABEL_162;
              }

              ++v114;
              v118 = v117 + 32;
              v119 = *(v2 + v117 + 48);
              v117 += 32;
              if ((v119 & 1) == 0)
              {
                v3 = *(v2 + v118);
                v120 = *(v2 + v118 + 8);
                KeyPath = *(v2 + v118 + 24);

                outlined copy of TextureSource(v3, v120);
                v121 = swift_isUniquelyReferenced_nonNull_native();
                *&v175 = v116;
                v172 = v120;
                if ((v121 & 1) == 0)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v116 + 16) + 1, 1);
                  v116 = v175;
                }

                v123 = *(v116 + 16);
                v122 = *(v116 + 24);
                if (v123 >= v122 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v123 + 1, 1);
                  v116 = v175;
                }

                *(v116 + 16) = v123 + 1;
                v124 = v116 + 32 * v123;
                *(v124 + 32) = v3;
                *(v124 + 40) = v172;
                *(v124 + 48) = 0;
                *(v124 + 56) = KeyPath;
                goto LABEL_134;
              }
            }

            v125 = 0;
            v126 = MEMORY[0x277D84F90];
            KeyPath = 1;
LABEL_144:
            v127 = 32 * v125;
            while (v115 != v125)
            {
              if (v125 >= *(v2 + 16))
              {
                goto LABEL_163;
              }

              ++v125;
              v128 = v127 + 32;
              v129 = *(v2 + v127 + 48);
              v127 += 32;
              if (v129)
              {
                v131 = *(v2 + v128);
                v130 = *(v2 + v128 + 8);
                v132 = *(v2 + v128 + 24);

                outlined copy of TextureSource(v131, v130);
                v133 = swift_isUniquelyReferenced_nonNull_native();
                *&v175 = v126;
                v173 = v132;
                v167 = v131;
                if ((v133 & 1) == 0)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v126 + 16) + 1, 1);
                  KeyPath = 1;
                  v126 = v175;
                }

                v135 = *(v126 + 16);
                v134 = *(v126 + 24);
                v3 = (v135 + 1);
                if (v135 >= v134 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v134 > 1), v135 + 1, 1);
                  KeyPath = 1;
                  v126 = v175;
                }

                *(v126 + 16) = v3;
                v136 = v126 + 32 * v135;
                *(v136 + 32) = v167;
                *(v136 + 40) = v130;
                *(v136 + 48) = 1;
                *(v136 + 56) = v173;
                goto LABEL_144;
              }
            }

            *&v175 = v116;
            specialized Array.append<A>(contentsOf:)(v126);
            outlined destroy of [Input](&v183, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
            v137 = v179[1];
            v138 = v181;

            v182 = v138;
            outlined destroy of [Input](&v182, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);
            return v175;
          }

          v104 = 0;
          v3 = (v102 + 32);
          v2 = MEMORY[0x277D84F90];
LABEL_121:
          v105 = v104;
          while (v105 < *(v102 + 16))
          {
            v104 = v105 + 1;
            v174[0] = v3[v105];

            swift_getAtKeyPath();

            v106 = *(&v176 + 1);
            if (*(&v176 + 1))
            {
              v160 = v175;
              v163 = v176;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2);
              }

              v108 = *(v2 + 16);
              v107 = *(v2 + 24);
              v109 = v108 + 1;
              if (v108 >= v107 >> 1)
              {
                v158 = v108 + 1;
                v111 = v2;
                v112 = *(v2 + 16);
                v113 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v108 + 1, 1, v111);
                v109 = v158;
                v108 = v112;
                v2 = v113;
              }

              *(v2 + 16) = v109;
              v110 = v2 + 32 * v108;
              *(v110 + 32) = v160;
              *(v110 + 48) = v163 & 1;
              *(v110 + 56) = v106;
              if (v103 - 1 != v105)
              {
                goto LABEL_121;
              }

              goto LABEL_133;
            }

            ++v105;
            if (v103 == v104)
            {
              goto LABEL_133;
            }
          }

          goto LABEL_165;
        }

        v2 = v93[KeyPath + 8];
        ++i;
        if (v2)
        {
          goto LABEL_117;
        }
      }
    }

    v83 = 0;
    v3 = (v2 + 48);
    v171 = MEMORY[0x277D84F90];
    while (v83 < *(v2 + 16))
    {
      v85 = *(v3 - 1);
      v86 = *v3;
      v174[0] = *(v3 - 2);
      v174[1] = v85;
      v174[2] = v86;

      v87 = v85;
      v88 = v86;
      closure #3 in inferTextureAssignments(from:)(v174, &v175);

      KeyPath = *(&v176 + 1);
      if (*(&v176 + 1))
      {
        v166 = v175;
        v89 = v176;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v171 + 2) + 1, 1, v171);
        }

        v91 = *(v171 + 2);
        v90 = *(v171 + 3);
        if (v91 >= v90 >> 1)
        {
          v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1, v171);
        }

        *(v171 + 2) = v91 + 1;
        v84 = &v171[32 * v91];
        *(v84 + 2) = v166;
        v84[48] = v89 & 1;
        *(v84 + 7) = KeyPath;
      }

      ++v83;
      v3 += 3;
      if (v82 == v83)
      {
        goto LABEL_110;
      }
    }

LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v8 = 0;
  v142 = v179[0] + 32;
  v144 = v179[0] + 64;
  v145 = v179[0] + 48;
  v9 = MEMORY[0x277D84F90];
  v151 = v179[0];
  while (1)
  {
    if (v8 >= v6[2])
    {
      goto LABEL_158;
    }

    v10 = (v142 + 40 * v8);
    KeyPath = *v10;
    v11 = *v10 + OBJC_IVAR___SGNode_data;
    v148 = v8;
    if (*(v11 + 80) > 0x3Fu || (*v11 == 0x746C757365725F5FLL ? (v12 = *(v11 + 8) == 0xE900000000000073) : (v12 = 0), v12))
    {
      v19 = v7;
      goto LABEL_72;
    }

    v139 = v9;
    v2 = v10[1];
    v168 = v10[2];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

LABEL_70:
    v19 = v7;
LABEL_71:
    v9 = v139;
LABEL_72:
    KeyPath = *(v19 + 16);
    v2 = *(v9 + 16);
    v60 = v2 + KeyPath;
    if (__OFADD__(v2, KeyPath))
    {
      goto LABEL_159;
    }

    v61 = v9;
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v61;
    if (!v62 || v60 > *(v61 + 24) >> 1)
    {
      if (v2 <= v60)
      {
        v64 = v2 + KeyPath;
      }

      else
      {
        v64 = v2;
      }

      v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v62, v64, 1, v61);
    }

    if (*(v19 + 16))
    {
      if ((*(v63 + 3) >> 1) - *(v63 + 2) < KeyPath)
      {
        goto LABEL_164;
      }

      v2 = v63;
      swift_arrayInitWithCopy();

      v9 = v2;
      if (KeyPath)
      {
        v65 = *(v2 + 16);
        v66 = __OFADD__(v65, KeyPath);
        v67 = v65 + KeyPath;
        if (v66)
        {
          goto LABEL_167;
        }

        *(v2 + 16) = v67;
      }
    }

    else
    {
      v2 = v63;

      v9 = v2;
      if (KeyPath)
      {
        goto LABEL_160;
      }
    }

    v8 = v148 + 1;
    if (v148 + 1 == v143)
    {
      goto LABEL_85;
    }
  }

  v13 = *(KeyPath + OBJC_IVAR___SGNode_inputs);
  *&v175 = v7;
  if (v13 >> 62)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v165 = KeyPath;
  v157 = v2;
  v155 = v168;
  if (!v14)
  {
    v2 = v7;
    KeyPath = v165;
    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

LABEL_30:
    if ((v2 & 0x4000000000000000) != 0)
    {
      goto LABEL_68;
    }

    v20 = *(v2 + 16);
    if (v20)
    {
      goto LABEL_32;
    }

LABEL_69:

    goto LABEL_70;
  }

  v15 = 0;
  v16 = v14;
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x266772030](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_156;
      }

      v17 = *(v13 + 8 * v15 + 32);
    }

    v3 = v17;
    v2 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    v18 = OBJC_IVAR___SGInput_type;
    swift_beginAccess();
    if (*(v3 + v18) == 13)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v16 = v14;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v15;
    KeyPath = v165;
  }

  while (v2 != v16);
  v2 = v175;
  v6 = v151;
  v7 = MEMORY[0x277D84F90];
  if ((v175 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_68:
  v20 = __CocoaSet.count.getter();
  if (!v20)
  {
    goto LABEL_69;
  }

LABEL_32:
  v174[0] = v7;
  KeyPath = v174;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v19 = v174[0];
    v149 = v20;
    v150 = v2 & 0xC000000000000001;
    v141 = v2 + 32;
    while (1)
    {
      v153 = v21;
      if (v150)
      {
        v22 = MEMORY[0x266772030]();
      }

      else
      {
        v22 = *(v141 + 8 * v21);
      }

      v2 = v165;
      v154 = v19;
      v23 = v6[2];
      v24 = v157;
      v152 = v22;
      if (!v23)
      {
        goto LABEL_62;
      }

      v25 = 0;
      v146 = *&v22[OBJC_IVAR___SGInput_name + 8];
      v147 = *&v22[OBJC_IVAR___SGInput_name];
      v26 = -1;
      v27 = v144;
      v3 = v145;
      v156 = v23;
      while (1)
      {
        v28 = *(v3 - 2);
        v29 = *(v3 - 1);
        if (v28 != v2 || v29 != v24)
        {
          goto LABEL_40;
        }

        v31 = *v3;
        if (!*v3)
        {
          break;
        }

        if (v168)
        {
          type metadata accessor for SGNode();
          v159 = v2;
          v32 = v155;
          v33 = v28;
          v161 = v29;
          v34 = v31;
          v35 = static NSObject.== infix(_:_:)();

          v2 = v165;
          if (v35)
          {
            goto LABEL_51;
          }

          v23 = v156;
          v24 = v157;
        }

LABEL_40:
        v3 += 5;
        ++v25;
        v27 += 40;
        --v26;
        if (v23 == v25)
        {
          goto LABEL_62;
        }
      }

      if (v168)
      {
        goto LABEL_40;
      }

      v36 = v2;
LABEL_51:
      v37 = MEMORY[0x266771450](v147, v146);
      v38 = [v2 inputNamed_];

      if (!v38)
      {
        goto LABEL_61;
      }

      KeyPath = OBJC_IVAR___SGInput_edge;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

LABEL_61:
LABEL_62:
        v55 = v2;
        v7 = MEMORY[0x277D84F90];
        v3 = MEMORY[0x277D84F90];
        v6 = v151;
        v19 = v154;
        goto LABEL_63;
      }

      v40 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_168;
      }

      if (v40 < 0)
      {
        goto LABEL_169;
      }

      if (v156 < v40)
      {
        goto LABEL_170;
      }

      v41 = Strong;
      v164 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_265F20CD0;
      *(v42 + 32) = v41;
      v178 = v42;
      outlined init with copy of [Input](&v183, &v175, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
      v162 = v41;
      v6 = v151;
      v19 = v154;
      do
      {
        v44 = *(v27 - 3);
        v45 = *v27;
        *&v175 = *(v27 - 4);
        v43 = v175;
        *(&v175 + 1) = v44;
        v176 = *(v27 - 1);
        v177 = v45;
        v46 = v176;
        v47 = v43;
        v48 = v44;
        specialized closure #2 in TopologicalSort.path(to:on:resolvingInput:)(&v178, &v175, v151, v49, v50, v51, v52);

        v27 -= 40;
      }

      while (!__CFADD__(v26++, 1));
      v54 = v178;
      outlined destroy of [Input](&v183, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
      v3 = specialized Sequence.reversed()(v54);

      v7 = MEMORY[0x277D84F90];
LABEL_63:
      v56 = v180;

      v174[0] = v19;
      v58 = *(v19 + 16);
      v57 = *(v19 + 24);
      if (v58 >= v57 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
        v19 = v174[0];
      }

      v21 = v153 + 1;
      *(v19 + 16) = v58 + 1;
      v59 = (v19 + 24 * v58);
      v59[4] = v3;
      v59[5] = v165;
      v59[6] = v56;
      if (v153 + 1 == v149)
      {

        goto LABEL_71;
      }
    }
  }

LABEL_171:
  __break(1u);

  __break(1u);
  return result;
}

void closure #3 in inferTextureAssignments(from:)(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[2];
  if (!(*a1 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_27:
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v29 = 0xD000000000000023;
    *(v29 + 8) = 0x8000000265F2E470;
    *(v29 + 16) = 20;
    swift_willThrow();
    return;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_27;
  }

LABEL_3:
  v8 = (v5 & 0xC000000000000001);
  v37 = a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x266772030](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v9 = *(v5 + 32);
  }

  v2 = v9;
  a2 = OBJC_IVAR___SGEdge_from;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v13 = 0xD000000000000023;
    *(v13 + 8) = 0x8000000265F2E3E0;
    *(v13 + 16) = 20;
    swift_willThrow();

    return;
  }

  v3 = Strong;
  v11 = v7 - 1;
  if (!__OFSUB__(v7, 1))
  {
    if (v8)
    {
      v12 = MEMORY[0x266772030](v11, v5);
      goto LABEL_14;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v5 + 8 * v11 + 32);
LABEL_14:
      v14 = v12;
      v15 = *&v12[OBJC_IVAR___SGEdge_to];

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();

      if (!v8)
      {
        lazy protocol witness table accessor for type APIError and conformance APIError();
        swift_allocError();
        *v21 = 0xD000000000000028;
        *(v21 + 8) = 0x8000000265F2E410;
        *(v21 + 16) = 20;
        swift_willThrow();

        return;
      }

      if (one-time initialization token for shared == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }

    __break(1u);
    return;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  swift_once();
LABEL_16:
  v16 = specialized SGNode.textureType(nodeDefStore:)(static NodeDefStore.shared);
  if (!v16)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v22 = 0xD000000000000026;
    *(v22 + 8) = 0x8000000265F2E440;
    *(v22 + 16) = 20;
    swift_willThrow();

    return;
  }

  v17 = v16;
  v18 = specialized TopologicalSort.Path.isMaterialUniform.getter(v5, v6);

  if (v18)
  {

    v3 = *(a2 + v2);
    v19 = *&v3[OBJC_IVAR___SGOutput_name];
    v20 = *&v3[OBJC_IVAR___SGOutput_name + 8];

LABEL_24:

    v27 = v37;
    *v37 = v19;
    v27[1] = v20;
    v27[2] = v18 & 1;
    v27[3] = v17;
    return;
  }

  v24 = *&v3[OBJC_IVAR___SGNode_data + 48];
  v23 = *&v3[OBJC_IVAR___SGNode_data + 64];
  v25 = *&v3[OBJC_IVAR___SGNode_data + 32];
  v36 = v3[OBJC_IVAR___SGNode_data + 80];
  v26 = *&v3[OBJC_IVAR___SGNode_data + 16];
  v31 = *&v3[OBJC_IVAR___SGNode_data];
  v32 = v26;
  v34 = v24;
  v35 = v23;
  v33 = v25;
  if (v36 == 134 && v31 == 13)
  {
    v20 = *(&v32 + 1);
    v19 = v32;
    outlined init with copy of NodeData(&v31, &v30);
    goto LABEL_24;
  }

  v28 = v37;
  *v37 = 0u;
  *(v28 + 1) = 0u;
}

uint64_t *key path getter for Collection.first : [TypedTexture]@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if (*(*result + 16))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = *(v3 + 56);
    outlined copy of TextureSource(v4, v5);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t inferHasBackgroundBlur(in:)(uint64_t a1)
{
  v1 = *(*a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = *a1 + 32;
  v17 = *(*a1 + 16);
  while (1)
  {
    v4 = *(v3 + 88 * v2 + 16);
    if (v4 >> 62)
    {
      goto LABEL_5;
    }

    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    v7 = one-time initialization token for realityKitBackgroundBlurNodes;
    swift_retain_n();

    if (v7 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = static MaterialXHardcodedNames.realityKitBackgroundBlurNodes;
    if (*(static MaterialXHardcodedNames.realityKitBackgroundBlurNodes + 16))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v2 == v1)
    {
      return 0;
    }
  }

  Hasher.init(_seed:)();

  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_18:

    v3 = v16;
    v1 = v17;
    goto LABEL_4;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = (*(v8 + 48) + 16 * v11);
    v14 = *v13 == v6 && v13[1] == v5;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  return 1;
}

uint64_t checkConstantInputs(in:)(uint64_t result)
{
  v2 = v1;
  v86 = result;
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return result;
  }

  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  v7 = *(*result + 16);
  v115 = v3 + 32;
  v92 = v4;
  while (1)
  {
    --v7;
    v8 = (v5 + 88 * v7);
    v9 = v8[1];
    v108 = *v8;
    v109 = v9;
    v10 = v8[2];
    v11 = v8[3];
    v12 = v8[4];
    v113 = *(v8 + 10);
    v111 = v11;
    v112 = v12;
    v110 = v10;
    v114 = *(v8 + 24);
    if (v109 >> 62)
    {
      goto LABEL_4;
    }

    v82 = v7;
    v13 = *(v109 + 32);
    v93 = v108;
    v94 = v109;
    v95 = v114;
    v14 = *(*(v109 + 32) + 16);
    MEMORY[0x28223BE20](result);
    v81[2] = v15;
    outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v108, &v99);

    result = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Graph.Node.inputs.getter, v81, 0, v14);
    v83 = v2;
    v16 = *(v13 + 16);
    if (!v16)
    {
      goto LABEL_30;
    }

    v17 = 0;
    v90 = result;
    v91 = v13;
    while (2)
    {
      v85 = v6;
      v18 = 3 * v17;
      v19 = 32 * v17++;
      v20 = 16 * v18;
      while (1)
      {
        v21 = v17 - 1;
        if (v17 - 1 >= v16)
        {
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v22 = *(result + 16);
        if (v21 == v22)
        {

          v6 = v85;
          goto LABEL_31;
        }

        if (v21 >= v22)
        {
          goto LABEL_64;
        }

        v23 = *(v13 + v19 + 32);
        v24 = *(v13 + v19 + 40);
        v25 = *(v13 + v19 + 48);
        v26 = *(v13 + v19 + 56);
        v27 = *(result + v20 + 32);
        v28 = *(result + v20 + 40);
        v29 = *(result + v20 + 48);
        v30 = *(result + v20 + 56);
        v31 = *(result + v20 + 64);
        v32 = *(result + v20 + 72);
        *&v99 = v23;
        *(&v99 + 1) = v24;
        *&v100 = v25;
        BYTE8(v100) = v26;
        *(&v87 + 1) = v28;
        v88 = v27;
        *&v101 = v27;
        *(&v101 + 1) = v28;
        *&v102[0] = v29;
        *(&v102[0] + 1) = v30;
        *&v102[1] = v31;
        BYTE8(v102[1]) = v32;
        v89 = v23;
        if (v23 == v29 && v24 == v30)
        {
          if (v25 != v31)
          {
            v84 = v89;
            goto LABEL_58;
          }
        }

        else
        {
          LODWORD(v87) = v26;
          v33 = v32;
          v34 = v31;
          v84 = v29;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v31 = v34;
            v32 = v33;
            LOBYTE(v26) = v87;
LABEL_58:
            *&v93 = 0;
            *(&v93 + 1) = 0xE000000000000000;
            v78 = v31;

            _StringGuts.grow(_:)(23);
            v105[0] = v93;
            MEMORY[0x266771550](0xD000000000000012, 0x8000000265F2E350);
            *&v93 = v89;
            *(&v93 + 1) = v24;
            v94 = v25;
            LOBYTE(v95) = v26;
            _print_unlocked<A, B>(_:_:)();
            MEMORY[0x266771550](32, 0xE100000000000000);
            *&v93 = v88;
            *(&v93 + 1) = *(&v87 + 1);
            v94 = v84;
            *&v95 = v30;
            *(&v95 + 1) = v78;
            v96 = v32;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GMR);
            _print_unlocked<A, B>(_:_:)();
            v79 = v105[0];
            lazy protocol witness table accessor for type APIError and conformance APIError();
            swift_allocError();
            *v80 = v79;
            *(v80 + 16) = 7;
            swift_willThrow();

            outlined destroy of [Input](&v99, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMd, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMR);

            return outlined destroy of SGDataTypeGraph.TopologicalSort.Element(&v108);
          }

          v31 = v34;
          v64 = v25 == v34;
          v32 = v33;
          LOBYTE(v26) = v87;
          if (!v64)
          {
            goto LABEL_58;
          }
        }

        if (v26)
        {
          break;
        }

        outlined destroy of [Input](&v99, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMd, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMR);
        result = v90;
        v13 = v91;
        v16 = *(v91 + 16);
        v20 += 48;
        v19 += 32;
        v64 = v17++ == v16;
        if (v64)
        {
          v6 = v85;
          goto LABEL_30;
        }
      }

      v6 = v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v6;
      v13 = v91;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
        v6 = v97;
      }

      v37 = *(v6 + 16);
      v36 = *(v6 + 24);
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v6 = v97;
      }

      *(v6 + 16) = v37 + 1;
      v38 = (v6 + 80 * v37);
      v38[2] = v99;
      v39 = v100;
      v40 = v101;
      v41 = v102[0];
      *(v38 + 89) = *(v102 + 9);
      v38[4] = v40;
      v38[5] = v41;
      v38[3] = v39;
      v16 = *(v13 + 16);
      result = v90;
      if (v16 != v17)
      {
        continue;
      }

      break;
    }

LABEL_30:

LABEL_31:

    v88 = *(v6 + 16);
    if (v88)
    {
      break;
    }

LABEL_3:

    result = outlined destroy of SGDataTypeGraph.TopologicalSort.Element(&v108);
    v7 = v82;
    v2 = v83;
    v5 = v115;
    v6 = MEMORY[0x277D84F90];
LABEL_4:
    if (!v7)
    {
      return result;
    }
  }

  v42 = 0;
  v89 = v6 + 32;
  v85 = v6;
  while (v42 < *(v6 + 16))
  {
    v43 = (v89 + 80 * v42);
    v44 = v43[1];
    v45 = v43[2];
    v46 = *(v43 + 57);
    v106[0] = v43[3];
    *(v106 + 9) = v46;
    v47 = *v43;
    v105[1] = v44;
    v105[2] = v45;
    v105[0] = v47;
    v48 = v106[0];
    outlined init with copy of [Input](v105, &v99, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMd, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMR);
    v87 = v48;
    result = specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)(v48, *(&v48 + 1), &v108, v86, v107);
    v49 = v107[0];
    v50 = *(v107[0] + 2);
    if (v50)
    {
      v90 = v42;
      v51 = 0;
      v52 = v107[0] + 32;
      v53 = v115;
      v54 = v92;
      while (v51 < *(v49 + 2))
      {
        v55 = *(v52 + 3);
        v56 = *(v52 + 4);
        v57 = *(v52 + 12);
        v103 = *(v52 + 5);
        v58 = *(v52 + 1);
        v59 = *(v52 + 2);
        v99 = *v52;
        v100 = v58;
        v104 = v57;
        v102[0] = v55;
        v102[1] = v56;
        v101 = v59;
        if (*(&v103 + 1) >= v54)
        {
          goto LABEL_62;
        }

        v60 = (v53 + 88 * *(&v103 + 1));
        v61 = v60[2];
        if (!(v61 >> 62))
        {
          v62 = *(v61 + 16);
          v63 = *(v61 + 24);
          v64 = v62 == 0x656D756772615F5FLL && v63 == 0xEB0000000073746ELL;
          if (!v64)
          {
            v65 = v60[4];
            v91 = v60[3];
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((result & 1) == 0 && (v62 != 0x746C757365725F5FLL || v63 != 0xE900000000000073))
            {
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              if ((result & 1) == 0)
              {
                if (v104 >= v92)
                {
                  goto LABEL_66;
                }

                v67 = *(&v102[0] + 1);
                v68 = *&v102[1];
                v69 = v115 + 88 * v104;
                v70 = *(v69 + 24);
                v71 = *(v69 + 32);
                v97 = 0;
                v98 = 0xE000000000000000;

                outlined init with copy of SGDataTypeGraph.TopologicalSort.Path.PathEdge(&v99, &v93);

                _StringGuts.grow(_:)(33);

                *&v93 = v67;
                *(&v93 + 1) = v68;
                MEMORY[0x266771550](544108320, 0xE400000000000000);

                MEMORY[0x266771550](v70, v71);

                MEMORY[0x266771550](0xD000000000000016, 0x8000000265F2E370);

                MEMORY[0x266771550](v91, v65);

                MEMORY[0x266771550](46, 0xE100000000000000);
                v72 = v93;
                lazy protocol witness table accessor for type APIError and conformance APIError();
                swift_allocError();
                *v73 = v72;
                *(v73 + 16) = 19;
                swift_willThrow();

                outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v107);
                outlined destroy of SGDataTypeGraph.TopologicalSort.Path.PathEdge(&v99);
                goto LABEL_56;
              }
            }

            v53 = v115;
            v54 = v92;
          }
        }

        ++v51;
        v52 += 104;
        if (v50 == v51)
        {
          v6 = v85;
          v42 = v90;
          if (v107[14] >> 62 == 2)
          {
            goto LABEL_34;
          }

          v99 = v87;

          MEMORY[0x266771550](544108320, 0xE400000000000000);
          v74 = v107[4];
          v75 = v107[5];

          MEMORY[0x266771550](v74, v75);

          v76 = v99;
          lazy protocol witness table accessor for type APIError and conformance APIError();
          swift_allocError();
          *v77 = v76;
          *(v77 + 16) = 19;
          swift_willThrow();
          outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v107);
LABEL_56:

          outlined destroy of [Input](v105, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMd, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMR);
          return outlined destroy of SGDataTypeGraph.TopologicalSort.Element(&v108);
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_34:
    ++v42;
    outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v107);
    result = outlined destroy of [Input](v105, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMd, &_s11ShaderGraph17BuiltInDefinitionV9InputSpecV_AA0B0V0F0VyAA010SGDataTypeB0V11PersonalityV_GtMR);
    if (v42 == v88)
    {
      goto LABEL_3;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

char *TopologicalSort.Path.debugString.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 >> 62)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    v23 = BidirectionalCollection<>.joined(separator:)();

    return v23;
  }

  v24 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        MEMORY[0x266772030](v8, a1);
        v9 = SGEdge.debugDescription.getter();
        v11 = v10;
        swift_unknownObjectRelease();
        v13 = *(v24 + 16);
        v12 = *(v24 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        ++v8;
        *(v24 + 16) = v13 + 1;
        v14 = v24 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
      }

      while (v6 != v8);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v17 = SGEdge.debugDescription.getter();
        v19 = v18;

        v21 = *(v24 + 16);
        v20 = *(v24 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        }

        *(v24 + 16) = v21 + 1;
        v22 = v24 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        ++v15;
        --v6;
      }

      while (v6);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266772030](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266772030](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266772030](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266772030](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266772030](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266772030](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.read in conformance [A]specialized (void *a1)
{
  return swift_unknownObjectRelease();
}

{
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, void *a2)
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

unint64_t specialized TopologicalSort.Path.isMaterialUniform.getter(unint64_t result, uint64_t a2)
{
  if (result >> 62)
  {
    v10 = result;
    v11 = __CocoaSet.count.getter();
    result = v10;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x266772030](0, result);
LABEL_6:
    v4 = v3;
    v5 = *&v3[OBJC_IVAR___SGEdge_from];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v7 = *(a2 + OBJC_IVAR___SGGraph_argumentsNode);
      type metadata accessor for SGNode();
      v8 = v7;
      v9 = static NSObject.== infix(_:_:)();

      return v9 & 1;
    }

LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t specialized TopologicalSort.Path.hasValue.getter(unint64_t a1, void *a2)
{
  result = swift_getObjectType();
  if (a1 >> 62)
  {
    v21 = result;
    v22 = __CocoaSet.count.getter();
    result = v21;
    if (!v22)
    {
      goto LABEL_26;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x266772030](0, a1);
LABEL_6:
    v6 = v5;
    v7 = *&v5[OBJC_IVAR___SGEdge_from];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v9 = &Strong[OBJC_IVAR___SGNode_data];
      v10 = Strong[OBJC_IVAR___SGNode_data + 80] >> 6;
      if (v10)
      {
        v11 = v10 != 1;
      }

      else
      {
        v13 = *v9;
        v12 = *(v9 + 1);
        v14 = *(v9 + 4);
        v15 = *(v9 + 5);
        v16 = *v9 == 0x656D756772615F5FLL && v12 == 0xEB0000000073746ELL;
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          outlined copy of MaterialXAvailability(v14, v15);

          outlined consume of MaterialXAvailability(v14, v15);
          swift_beginAccess();
          v17 = swift_unknownObjectWeakLoadStrong();
          if (v17)
          {
            v18 = v17;
            v19 = a2;
            v11 = static NSObject.== infix(_:_:)();
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          if (v13 == 0x746C757365725F5FLL && v12 == 0xE900000000000073)
          {
            v11 = 0;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
          }

          outlined copy of MaterialXAvailability(v14, v15);

          outlined consume of MaterialXAvailability(v14, v15);
        }
      }

      return v11 & 1;
    }

LABEL_26:
    v11 = 0;
    return v11 & 1;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(a1 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void specialized closure #2 in TopologicalSort.path(to:on:resolvingInput:)(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a2;
  v9 = *(a2 + 24);
  LOBYTE(v10) = *(a2 + 32);
  v11 = *a1;
  if (*a1 >> 62)
  {
    v48 = a1;
    v49 = a3;
    v50 = __CocoaSet.count.getter();
    a3 = v49;
    v12 = v50;
    a1 = v48;
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return;
    }
  }

  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
LABEL_72:
    __break(1u);
  }

  else
  {
    v68 = a1;
    if ((v11 & 0xC000000000000001) == 0)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = a3;
        v16 = *(v11 + 8 * v14 + 32);
        goto LABEL_8;
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }
  }

  v15 = a3;
  v16 = MEMORY[0x266772030](v14, v11);
LABEL_8:
  v17 = v16;
  v71 = OBJC_IVAR___SGEdge_from;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_33:

    return;
  }

  v19 = Strong;
  if (Strong != v8)
  {
LABEL_10:

    return;
  }

  v20 = Strong + OBJC_IVAR___SGNode_data;
  LOBYTE(v7) = *(Strong + OBJC_IVAR___SGNode_data + 80);
  if ((v7 & 0xC0) != 0x40)
  {
    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    if (!v32)
    {
      goto LABEL_10;
    }

    v33 = v32;
    v34 = *(v32 + OBJC_IVAR___SGGraph_argumentsNode);

    type metadata accessor for SGNode();
    v11 = v19;
    v35 = static NSObject.== infix(_:_:)();

    if ((v35 & 1) == 0)
    {

      return;
    }

    if (v10)
    {

      goto LABEL_33;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < v15[2])
    {
      v67 = v11;
      v70 = v17;
      v38 = &v15[5 * v9];
      v34 = v38[4];
      v19 = v38[5];
      v11 = v38[6];
      v69 = *&v34[OBJC_IVAR___SGNode_inputs];
      if (!(v69 >> 62))
      {
        v8 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_46:
        v66 = v34;
        v65 = v19;
        v64 = v11;

        if (!v8)
        {
LABEL_62:

          return;
        }

        v7 = 0;
        while (1)
        {
          if ((v69 & 0xC000000000000001) != 0)
          {
            v39 = MEMORY[0x266772030](v7, v69);
          }

          else
          {
            if (v7 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_77;
            }

            v39 = *(v69 + 8 * v7 + 32);
          }

          v40 = v39;
          v41 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_76;
          }

          v42 = OBJC_IVAR___SGInput_type;
          swift_beginAccess();
          v43 = *&v40[v42];
          v11 = *&v70[v71];
          v44 = OBJC_IVAR___SGOutput_type;
          swift_beginAccess();
          if (v43 == *(v11 + v44))
          {
            v45 = *&v40[OBJC_IVAR___SGInput_name] == *(v11 + OBJC_IVAR___SGOutput_name) && *&v40[OBJC_IVAR___SGInput_name + 8] == *(v11 + OBJC_IVAR___SGOutput_name + 8);
            if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              swift_beginAccess();
              v46 = swift_unknownObjectWeakLoadStrong();
              if (v46)
              {
                v47 = v46;
                MEMORY[0x266771770]();
                if (*((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              }

              else
              {
              }

              return;
            }
          }

          ++v7;
          if (v41 == v8)
          {
            goto LABEL_62;
          }
        }
      }

LABEL_81:
      v8 = __CocoaSet.count.getter();
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_81;
  }

  v70 = v17;
  v21 = *v20;
  a2 = *(v20 + 8);
  a3 = *(v20 + 16);
  a4 = *(v20 + 24);
  a5 = *(v20 + 32);
  a6 = *(v20 + 40);
  a7 = *(v20 + 48);
  v22 = *(v20 + 56);
  v23 = *(v20 + 64);
  v11 = *(v20 + 72);
  v8 = *(*(*v20 + OBJC_IVAR___SGGraph_resultsNode) + OBJC_IVAR___SGNode_inputs);
  v64 = v19;
  v65 = v23;
  v66 = *v20;
  v67 = v22;
  if (!(v8 >> 62))
  {
    v24 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_14;
  }

LABEL_78:
  v51 = a7;
  v52 = a6;
  v53 = a5;
  v9 = a4;
  v10 = a3;
  v54 = a2;
  v55 = __CocoaSet.count.getter();
  a2 = v54;
  a3 = v10;
  a4 = v9;
  a5 = v53;
  a6 = v52;
  LODWORD(a7) = v51;
  LODWORD(v22) = v67;
  v24 = v55;
  v23 = v65;
  v21 = v66;
LABEL_14:
  v57 = v7;
  v56 = v11;
  v58 = a2;
  v59 = a3;
  v60 = a4;
  v61 = a5;
  v62 = a6;
  v63 = a7;
  outlined copy of NodeData(v21, a2, a3, a4, a5, a6, a7, v22, v23, v11, v7);

  if (v24)
  {
    v25 = 0;
    v69 = v8 & 0xC000000000000001;
    while (1)
    {
      if (v69)
      {
        v26 = MEMORY[0x266772030](v25, v8);
      }

      else
      {
        v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25 >= v14)
        {
          goto LABEL_71;
        }

        v26 = *(v8 + 8 * v25 + 32);
      }

      v9 = v26;
      v11 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v27 = v24;
      v28 = OBJC_IVAR___SGInput_type;
      swift_beginAccess();
      v10 = *(v9 + v28);
      v29 = *&v70[v71];
      v30 = OBJC_IVAR___SGOutput_type;
      swift_beginAccess();
      if (v10 == *(v29 + v30))
      {
        v31 = *(v9 + OBJC_IVAR___SGInput_name) == *(v29 + OBJC_IVAR___SGOutput_name) && *(v9 + OBJC_IVAR___SGInput_name + 8) == *(v29 + OBJC_IVAR___SGOutput_name + 8);
        if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      ++v25;
      v24 = v27;
      if (v11 == v27)
      {
        goto LABEL_35;
      }
    }

    swift_beginAccess();
    v36 = swift_unknownObjectWeakLoadStrong();
    if (!v36)
    {
      outlined consume of NodeData(v66, v58, v59, v60, v61, v62, v63, v67, v65, v56, v57);

      goto LABEL_36;
    }

    v37 = v36;
    MEMORY[0x266771770]();
    if (*((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    outlined consume of NodeData(v66, v58, v59, v60, v61, v62, v63, v67, v65, v56, v57);
  }

  else
  {
LABEL_35:

    outlined consume of NodeData(v66, v58, v59, v60, v61, v62, v63, v67, v65, v56, v57);
LABEL_36:
  }
}

void specialized closure #2 in TopologicalSort.path(to:on:resolvingInput:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = a1;
  v9 = *a2;
  v10 = *(a2 + 24);
  LODWORD(v11) = *(a2 + 32);
  v12 = *a1;
  if (*a1 >> 62)
  {
    v58 = a3;
    v59 = a4;
    v60 = a5;
    v13 = __CocoaSet.count.getter();
    a5 = v60;
    a4 = v59;
    a3 = v58;
    v8 = a1;
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return;
    }
  }

  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
LABEL_79:
    __break(1u);
  }

  else
  {
    v80 = v8;
    if ((v12 & 0xC000000000000001) == 0)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v15 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v16 = a4;
        v17 = a3;
        v18 = *(v12 + 8 * v15 + 32);
        goto LABEL_8;
      }

      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }
  }

  v16 = a4;
  v17 = a3;
  v18 = MEMORY[0x266772030]();
LABEL_8:
  v82 = OBJC_IVAR___SGEdge_from;
  v19 = v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v83 = v19;
  if (Strong != v9)
  {
    v21 = Strong;

    return;
  }

  v22 = Strong + OBJC_IVAR___SGNode_data;
  v23 = *(Strong + OBJC_IVAR___SGNode_data + 80);
  if ((v23 & 0xC0) != 0x40)
  {
    v34 = Strong;
    swift_beginAccess();
    v35 = swift_unknownObjectWeakLoadStrong();
    if (!v35 || (v36 = v35, v37 = *(v35 + OBJC_IVAR___SGGraph_argumentsNode), v36, type metadata accessor for SGNode(), v12 = v34, v38 = static NSObject.== infix(_:_:)(), v37, v79 = v12, v12, (v38 & 1) == 0))
    {
      v40 = v16(v34);
      if (v40)
      {
        v41 = v40;
        swift_beginAccess();
        v42 = swift_unknownObjectWeakLoadStrong();
        if (v42)
        {
          v43 = v42;
          MEMORY[0x266771770]();
          if (*((*v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          return;
        }
      }

      return;
    }

    if (v11)
    {
      v39 = v12;
LABEL_46:

      return;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < v17[2])
    {
      v46 = &v17[5 * v10];
      v34 = v46[4];
      v16 = v46[5];
      v12 = v46[6];
      v81 = *&v34[OBJC_IVAR___SGNode_inputs];
      if (!(v81 >> 62))
      {
        v9 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_53:
        v78 = v34;
        v77 = v16;
        v76 = v12;

        if (!v9)
        {
LABEL_69:

          return;
        }

        v47 = 0;
        while (1)
        {
          if ((v81 & 0xC000000000000001) != 0)
          {
            v48 = MEMORY[0x266772030](v47, v81);
          }

          else
          {
            if (v47 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_84;
            }

            v48 = *(v81 + 8 * v47 + 32);
          }

          v49 = v48;
          v50 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_83;
          }

          v51 = OBJC_IVAR___SGInput_type;
          swift_beginAccess();
          v52 = *&v49[v51];
          v12 = *&v83[v82];
          v53 = OBJC_IVAR___SGOutput_type;
          swift_beginAccess();
          if (v52 == *(v12 + v53))
          {
            v54 = *&v49[OBJC_IVAR___SGInput_name] == *(v12 + OBJC_IVAR___SGOutput_name) && *&v49[OBJC_IVAR___SGInput_name + 8] == *(v12 + OBJC_IVAR___SGOutput_name + 8);
            if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              swift_beginAccess();
              v55 = swift_unknownObjectWeakLoadStrong();
              if (v55)
              {
                v56 = v55;
                MEMORY[0x266771770]();
                if (*((*v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              }

              else
              {
              }

              return;
            }
          }

          ++v47;
          if (v50 == v9)
          {
            goto LABEL_69;
          }
        }
      }

LABEL_88:
      v9 = __CocoaSet.count.getter();
      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_88;
  }

  v7 = *v22;
  a2 = *(v22 + 8);
  a3 = *(v22 + 16);
  a4 = *(v22 + 24);
  a5 = *(v22 + 32);
  a6 = *(v22 + 40);
  a7 = *(v22 + 48);
  v24 = *(v22 + 56);
  v12 = *(v22 + 64);
  v25 = *(v22 + 72);
  v9 = *(*(*v22 + OBJC_IVAR___SGGraph_resultsNode) + OBJC_IVAR___SGNode_inputs);
  v76 = Strong;
  v77 = v25;
  LODWORD(v79) = v24;
  LOBYTE(v78) = *(Strong + OBJC_IVAR___SGNode_data + 80);
  if (v9 >> 62)
  {
LABEL_85:
    v61 = a7;
    v62 = a6;
    v63 = a5;
    v64 = a4;
    v65 = a3;
    v66 = a2;
    v10 = v7;
    v67 = __CocoaSet.count.getter();
    v25 = v77;
    v23 = v78;
    v7 = v10;
    a2 = v66;
    a3 = v65;
    a4 = v64;
    a5 = v63;
    a6 = v62;
    LODWORD(a7) = v61;
    LODWORD(v24) = v79;
    v26 = v67;
    goto LABEL_16;
  }

  v26 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
  v68 = v12;
  v69 = v7;
  v70 = a2;
  v71 = a3;
  v72 = a4;
  v73 = a5;
  v74 = a6;
  v75 = a7;
  outlined copy of NodeData(v7, a2, a3, a4, a5, a6, a7, v24, v12, v25, v23);

  if (v26)
  {
    v11 = 0;
    v81 = v9 & 0xC000000000000001;
    while (1)
    {
      if (v81)
      {
        v27 = MEMORY[0x266772030](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_78;
        }

        v27 = *(v9 + 8 * v11 + 32);
      }

      v28 = v27;
      v29 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v30 = OBJC_IVAR___SGInput_type;
      swift_beginAccess();
      v31 = *&v28[v30];
      v32 = *&v83[v82];
      v10 = OBJC_IVAR___SGOutput_type;
      swift_beginAccess();
      if (v31 == *(v32 + v10))
      {
        v33 = *&v28[OBJC_IVAR___SGInput_name] == *(v32 + OBJC_IVAR___SGOutput_name) && *&v28[OBJC_IVAR___SGInput_name + 8] == *(v32 + OBJC_IVAR___SGOutput_name + 8);
        if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      ++v11;
      if (v29 == v26)
      {
        goto LABEL_40;
      }
    }

    swift_beginAccess();
    v44 = swift_unknownObjectWeakLoadStrong();
    if (!v44)
    {
      outlined consume of NodeData(v69, v70, v71, v72, v73, v74, v75, v79, v68, v77, v78);

      goto LABEL_41;
    }

    v45 = v44;
    MEMORY[0x266771770]();
    if (*((*v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    outlined consume of NodeData(v69, v70, v71, v72, v73, v74, v75, v79, v68, v77, v78);
    v39 = v76;
    goto LABEL_46;
  }

LABEL_40:

  outlined consume of NodeData(v69, v70, v71, v72, v73, v74, v75, v79, v68, v77, v78);
LABEL_41:
}

void specialized conditionallyInsertDiscardNode(from:in:)(char *a1, unint64_t a2, char *a3, void *a4, void *a5)
{
  v6 = &a1[OBJC_IVAR___SGNode_data];
  if (a1[OBJC_IVAR___SGNode_data + 80] > 0x3Fu)
  {
    v26 = &a1[OBJC_IVAR___SGNode_name];
LABEL_19:
    v28 = *v26;
    v27 = *(v26 + 1);
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v29 = v28;
    *(v29 + 8) = v27;
    *(v29 + 16) = 10;
    swift_willThrow();

    return;
  }

  v7 = v5;
  v10 = *v6;
  v11 = v6[1];

  v12 = specialized Surface.init(nodeDefID:)(v10, v11);
  if (v12 > 2)
  {
    if (v12 == 4)
    {
      return;
    }

    v26 = &a1[OBJC_IVAR___SGNode_name];
    goto LABEL_19;
  }

  v13 = a4[2];
  v14 = a1;
  if (!v13)
  {
LABEL_34:
    v52 = v14;
    v50 = MEMORY[0x277D84F90];
    v51 = v14;
LABEL_35:
    v53 = a5;
    v54 = specialized TopologicalSort.Path.hasValue.getter(v50, v53);

    if ((v54 & 1) == 0)
    {
      return;
    }

    v55 = v51;
    v56 = specialized SGGraph.edgeConnected(toInputNamed:on:)(0x7974696361706FLL, 0xE700000000000000, v51);
    if (!v56)
    {
      return;
    }

    v57 = v56;
    v58 = specialized SGGraph.edgeConnected(toInputNamed:on:)(0xD000000000000010, 0x8000000265F2E2F0, v55);
    if (!v58)
    {

      return;
    }

    v83 = a2;
    a2 = *(v55 + OBJC_IVAR___SGNode_inputs);
    v86 = v58;
    a3 = v57;
    if (a2 >> 62)
    {
      v42 = __CocoaSet.count.getter();
      if (v42)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v42 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42)
      {
LABEL_40:
        v59 = 0;
        a4 = (a2 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v60 = MEMORY[0x266772030](v59, a2);
          }

          else
          {
            if (v59 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_66;
            }

            v60 = *(a2 + 8 * v59 + 32);
          }

          v32 = v60;
          v61 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          v62 = *&v60[OBJC_IVAR___SGInput_name] == 0x7974696361706FLL && *&v60[OBJC_IVAR___SGInput_name + 8] == 0xE700000000000000;
          if (v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v59;
          if (v61 == v42)
          {
            goto LABEL_78;
          }
        }

        v64 = static MaterialXNodeTokens.discardNodeID;
        v63 = off_280042378;
        v65 = one-time initialization token for shared;

        if (v65 != -1)
        {
          swift_once();
        }

        v66 = specialized static SGNode.create(nodeDefName:name:store:)(v64, v63, 0xD000000000000019, 0x8000000265F2E4A0, static BuiltInDefinitionStore.shared);
        a4 = v86;
        v67 = v57;
        if (v7)
        {

          return;
        }

        v68 = v66;

        v69 = v83;
        SGGraph.remove(edge:)(a3);
        SGGraph.remove(edge:)(v86);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        inited = swift_initStackObject();
        *(inited + 1) = xmmword_265F20CD0;
        *(inited + 4) = v68;
        v42 = inited + 32;
        a2 = v68;
        v93.value._rawValue = inited;
        SGGraph.insert(_:)(v93);
        v7 = v70;
        if (v70)
        {

          swift_setDeallocating();
          swift_arrayDestroy();
          return;
        }

        swift_setDeallocating();
        swift_arrayDestroy();
        v71 = *(a2 + OBJC_IVAR___SGNode_outputs);
        if ((v71 & 0xC000000000000001) == 0)
        {
          if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v72 = *(v71 + 32);
            goto LABEL_63;
          }

          __break(1u);
          goto LABEL_84;
        }

LABEL_82:
        v72 = MEMORY[0x266772030](0);
LABEL_63:
        v59 = v72;
        v42 = v32;
        SGGraph.connect(_:to:)(v59, v32);
        if (v7)
        {

LABEL_76:
          return;
        }

LABEL_67:
        v67 = a4;

        v68 = &OBJC_IVAR___SGEdge_from;
        inited = a3;
        v69 = *&a3[OBJC_IVAR___SGEdge_from];
        a4 = OBJC_IVAR___SGNode_inputs;
        v73 = *(a2 + OBJC_IVAR___SGNode_inputs);
        if ((v73 & 0xC000000000000001) == 0)
        {
          if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_86;
          }

          v74 = *(v73 + 32);
LABEL_70:
          v75 = v74;
          SGGraph.connect(_:to:)(v69, v74);

          if (v7)
          {

            goto LABEL_76;
          }

          v69 = *(v67 + *v68);
          v76 = *(a4 + a2);
          if ((v76 & 0xC000000000000001) == 0)
          {
            if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
            {
              __break(1u);
              goto LABEL_88;
            }

            v77 = *(v76 + 40);
            goto LABEL_75;
          }

LABEL_86:
          v77 = MEMORY[0x266772030](1);
LABEL_75:
          v78 = v77;
          SGGraph.connect(_:to:)(v69, v77);

          goto LABEL_76;
        }

LABEL_84:
        v74 = MEMORY[0x266772030](0);
        goto LABEL_70;
      }
    }

LABEL_78:
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v79 = xmmword_265F20CF0;
    *(v79 + 16) = 24;
    swift_willThrow();

    return;
  }

  v15 = 0;
  v16 = a4 + 8;
  v81 = a4[2];
  v82 = a2;
  while (1)
  {
    v18 = *(v16 - 4);
    v17 = *(v16 - 3);
    if (v18 != v14 || v17 != a2)
    {
      goto LABEL_6;
    }

    v20 = *(v16 - 2);
    if (!v20)
    {
      break;
    }

    if (a3)
    {
      type metadata accessor for SGNode();
      v21 = v14;
      v84 = v18;
      v22 = v17;
      v23 = v20;
      v24 = a3;
      v25 = static NSObject.== infix(_:_:)();

      if (v25)
      {
        goto LABEL_22;
      }

      v13 = v81;
      a2 = v82;
      v14 = a1;
    }

LABEL_6:
    ++v15;
    v16 += 40;
    if (v13 == v15)
    {
      goto LABEL_34;
    }
  }

  if (a3)
  {
    goto LABEL_6;
  }

  v30 = v14;
LABEL_22:
  v31 = MEMORY[0x266771450](0xD000000000000010, 0x8000000265F2E2F0);
  v32 = a1;
  v33 = [a1 inputNamed_];

  if (!v33)
  {

    a2 = v82;
    v14 = a1;
    goto LABEL_34;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a2 = v82;
  if (!Strong)
  {

    v14 = a1;
    goto LABEL_34;
  }

  v35 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    goto LABEL_80;
  }

  if (v35 < 0)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v81 < v35)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v36 = Strong;
  v37 = ~v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_265F20CD0;
  *(v38 + 32) = v36;
  v92 = v38;

  v88 = v36;
  while (1)
  {
    v40 = *(v16 - 3);
    v41 = *v16;
    v89[0] = *(v16 - 4);
    v39 = v89[0];
    v89[1] = v40;
    v90 = *(v16 - 1);
    v91 = v41;
    v42 = v90;
    a2 = v39;
    inited = v40;
    specialized closure #2 in TopologicalSort.path(to:on:resolvingInput:)(&v92, v89, a4, v44, v45, v46, v47);
    if (v7)
    {
      break;
    }

    v16 -= 40;
    if (__CFADD__(v37++, 1))
    {
      v49 = v92;

      v50 = specialized Sequence.reversed()(v49);

      a2 = v82;
      v51 = a1;
      goto LABEL_35;
    }
  }

LABEL_88:

  __break(1u);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

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

{
  return _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(*a1, **(v1 + 16)) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1, type metadata accessor for SGNode) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1, type metadata accessor for SGEdge) & 1;
}

uint64_t partial apply for closure #1 in closure #2 in inferShaderHasCustomUniform(from:shaderType:)(uint64_t result)
{
  v2 = *(result + OBJC_IVAR___SGNode_data + 80);
  if ((v2 & 0xC0) == 0x80 && (v2 & 0x3F) == 6 && *(result + OBJC_IVAR___SGNode_data) == 13)
  {
    **(v1 + 16) = 1;
  }

  return result;
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufC11ShaderGraph13TextureSourceO_SayAG05TypedF0VGTt1g504_s11d12Graph23inferf23Assignments4fromSayAA05h24D0VGAA7SGGraphC_tKFAA0D6G9OAEXEfU2_Tf1nc_nTf4g_n(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 56); ; i += 4)
  {
    v6 = *(i - 3);
    v5 = *(i - 2);
    v7 = *(i - 8);
    v8 = *i;
    outlined copy of TextureSource(v6, v5);
    outlined copy of TextureSource(v6, v5);

    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5, v7);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, 1);
      v1 = v32;
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {
      v30 = v8;
      outlined consume of TextureSource(v6, v5);
      v17 = v1[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      v31 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v23;
        *(v17 + 8 * v10) = v23;
      }

      *(v18 + 2) = v22;
      v4 = &v18[32 * v21];
      *(v4 + 4) = v6;
      *(v4 + 5) = v5;
      v4[48] = v7;
      *(v4 + 7) = v30;
      v2 = v31;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph12TypedTextureVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph12TypedTextureVGMR);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_265F1F670;
      *(v24 + 32) = v6;
      *(v24 + 40) = v5;
      *(v24 + 48) = v7;
      *(v24 + 56) = v8;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v25 = v1[6] + 24 * v10;
      *v25 = v6;
      *(v25 + 8) = v5;
      *(v25 + 16) = v7;
      *(v1[7] + 8 * v10) = v24;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
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

uint64_t specialized closure #5 in inferTextureAssignments(from:)(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 56;
  v17 = result + 56;
  v18 = MEMORY[0x277D84F90];
LABEL_2:
  v4 = v3 + 32 * v1;
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v19 = v1 + 1;
    v6 = *(v4 - 24);
    v5 = *(v4 - 16);

    outlined copy of TextureSource(v6, v5);
    v7 = MetalDataType.textureBaseTypeName()();
    outlined consume of TextureSource(v6, v5);

    ++v1;
    v4 += 32;
    if (v7.value._object)
    {
      v8 = v18;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
        v8 = result;
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      if (v10 >= v9 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v10 + 1;
      v18 = v8;
      *(v8 + 16 * v10 + 32) = v7;
      v1 = v19;
      v3 = v17;
      goto LABEL_2;
    }
  }

  v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();

  v12 = *(v11 + 16);

  if (v12 <= 1)
  {
  }

  _StringGuts.grow(_:)(66);
  MEMORY[0x266771550](0xD000000000000040, 0x8000000265F2E390);
  v13 = MEMORY[0x2667717B0](v18, MEMORY[0x277D837D0]);
  v15 = v14;

  MEMORY[0x266771550](v13, v15);

  lazy protocol witness table accessor for type APIError and conformance APIError();
  swift_allocError();
  *v16 = 0;
  *(v16 + 8) = 0xE000000000000000;
  *(v16 + 16) = 20;
  return swift_willThrow();
}

uint64_t specialized inferContainsPrereleaseNodes(in:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v3 = *v2 + OBJC_IVAR___SGNode_data;
      v5 = *(v3 + 48);
      v4 = *(v3 + 64);
      v6 = *(v3 + 80);
      v12 = *(v3 + 32);
      v7 = *(v3 + 16);
      v11[0] = *v3;
      v11[1] = v7;
      v15 = v6;
      v13 = v5;
      v14 = v4;
      if (!(v6 >> 6))
      {
        v8 = v12;
        outlined init with copy of NodeData(v11, &v10);
        outlined copy of MaterialXAvailability(v8, *(&v8 + 1));

        outlined consume of MaterialXAvailability(v8, *(&v8 + 1));
        if (*(&v8 + 1) == 3)
        {
          return 1;
        }

        outlined consume of MaterialXAvailability(v8, *(&v8 + 1));
      }

      v2 += 5;
      --v1;
    }

    while (v1);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type LightSpillNodeFeatures and conformance LightSpillNodeFeatures()
{
  result = lazy protocol witness table cache variable for type LightSpillNodeFeatures and conformance LightSpillNodeFeatures;
  if (!lazy protocol witness table cache variable for type LightSpillNodeFeatures and conformance LightSpillNodeFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LightSpillNodeFeatures and conformance LightSpillNodeFeatures);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TopologicalSort.Path(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for TopologicalSort.Path(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for LightSpillNodeFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LightSpillNodeFeatures(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined copy of MaterialXAvailability(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

uint64_t outlined consume of MaterialXAvailability(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

id outlined copy of NodeData(id result, uint64_t a2, void *a3, id a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v11 = a11 >> 6;
  if (v11 > 1)
  {
    if (v11 == 2)
    {

      return outlined copy of SGDataTypeStorage(a3, a4, a5, a6, a7, a8, a9, a10, a11 & 0x3F);
    }
  }

  else if (v11)
  {

    return result;
  }

  else
  {

    return outlined copy of MaterialXAvailability(a5, a6);
  }

  return result;
}

void outlined consume of NodeData(void *a1, uint64_t a2, void *a3, id a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v11 = a11 >> 6;
  if (v11 > 1)
  {
    if (v11 == 2)
    {

      outlined consume of SGDataTypeStorage(a3, a4, a5, a6, a7, a8, a9, a10, a11 & 0x3F);
    }
  }

  else if (v11)
  {
  }

  else
  {

    outlined consume of MaterialXAvailability(a5, a6);
  }
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0(a1) & 1;
}

void *SGREMaterialCompilationOptions.workingColorSpace.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace);
  v2 = v1;
  return v1;
}

uint64_t SGREMaterialCompilationOptions.enableFailedCompileMaterial.getter()
{
  v1 = OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SGREMaterialCompilationOptions.enableFailedCompileMaterial.setter(char a1)
{
  v3 = OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SGREMaterialCompilationOptions.useTier1Fallback(with:)(void *a1)
{
  if (![a1 argumentBuffersSupport] || (*(v1 + OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport) & 1) != 0)
  {
    return 1;
  }

  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DebugConfig.tier1SupportOverrideEnabled;
}

id SGREMaterialCompilationOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGREMaterialCompilationOptions.init()()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial] = 1;
  v0[OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport] = 0;
  *&v0[OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id SGREMaterialCompilationOptions.__allocating_init(workingColorSpace:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial] = 1;
  v3[OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport] = 0;
  *&v3[OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SGREMaterialCompilationOptions.init(workingColorSpace:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial] = 1;
  v1[OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport] = 0;
  *&v1[OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SGREMaterialCompilationOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MaterialCodingContainer.CodingKeys()
{
  v1 = 0x6870617267;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MaterialCodingContainer.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MaterialCodingContainer.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MaterialCodingContainer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MaterialCodingContainer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MaterialCodingContainer.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph014MaterialCodingC0V0G4Keys33_FB24F524ED90C88077173969366007F0LLOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph014MaterialCodingC0V0G4Keys33_FB24F524ED90C88077173969366007F0LLOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = v12;
    v13 = 1;
    type metadata accessor for SGGraph();
    lazy protocol witness table accessor for type SGGraph and conformance SGGraph(&lazy protocol witness table cache variable for type SGGraph and conformance SGGraph, type metadata accessor for SGGraph, &protocol conformance descriptor for SGGraph);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = a4;
    v13 = 2;
    type metadata accessor for SGMaterialConfiguration();
    lazy protocol witness table accessor for type SGGraph and conformance SGGraph(&lazy protocol witness table cache variable for type SGMaterialConfiguration and conformance SGMaterialConfiguration, type metadata accessor for SGMaterialConfiguration, &protocol conformance descriptor for SGMaterialConfiguration);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

void protocol witness for Decodable.init(from:) in conformance MaterialCodingContainer(uint64_t *a1@<X8>, void *a2@<X0>)
{
  specialized MaterialCodingContainer.init(from:)(a2);
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
  }
}

void specialized MaterialCodingContainer.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph014MaterialCodingC0V0G4Keys33_FB24F524ED90C88077173969366007F0LLOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph014MaterialCodingC0V0G4Keys33_FB24F524ED90C88077173969366007F0LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v11) = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    if (v7 == 1)
    {
      type metadata accessor for SGGraph();
      HIBYTE(v10) = 1;
      lazy protocol witness table accessor for type SGGraph and conformance SGGraph(&lazy protocol witness table cache variable for type SGGraph and conformance SGGraph, type metadata accessor for SGGraph, &protocol conformance descriptor for SGGraph);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      type metadata accessor for SGMaterialConfiguration();
      HIBYTE(v10) = 2;
      lazy protocol witness table accessor for type SGGraph and conformance SGGraph(&lazy protocol witness table cache variable for type SGMaterialConfiguration and conformance SGMaterialConfiguration, type metadata accessor for SGMaterialConfiguration, &protocol conformance descriptor for SGMaterialConfiguration);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v4 + 8))(v6, v3);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      return;
    }

    v8 = v7;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v9 = v8;
    *(v9 + 8) = 1;
    *(v9 + 16) = 12;
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t lazy protocol witness table accessor for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialCodingContainer.CodingKeys and conformance MaterialCodingContainer.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialCodingContainer(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MaterialCodingContainer(uint64_t result, int a2, int a3)
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

uint64_t specialized MaterialCodingContainer.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6870617267 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000265F2E600 == a2)
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

uint64_t lazy protocol witness table accessor for type SGGraph and conformance SGGraph(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall OrderedSet.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  if (a1 != a2)
  {
    v4 = v3;
    v5 = v2;
    v8 = *(v2 + 16);
    type metadata accessor for ContiguousArray();
    swift_getWitnessTable();
    MutableCollection.swapAt(_:_:)();
    if (*v3)
    {
      OrderedSet._ensureUnique()();
      v9 = *v3;
      if (*v4)
      {
        v10 = *(v5 + 24);

        closure #1 in OrderedSet.swapAt(_:_:)((v9 + 16), v9 + 32, v4, a1, a2, v8, v10);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t closure #1 in OrderedSet.swapAt(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a2;
  v10 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v27 = v16;
  ContiguousArray.subscript.getter();
  v26 = a5;
  ContiguousArray.subscript.getter();
  v17 = dispatch thunk of Hashable._rawHashValue(seed:)();
  result = *a1;
  v19 = 1 << *a1;
  v20 = v19 - 1;
  if (__OFSUB__(v19, 1))
  {
    __break(1u);
  }

  else
  {
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = 1 << *a1;
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (!v22)
    {
      _HashTable.UnsafeHandle.swapBucketValues(for:withCurrentValue:and:withCurrentValue:)(v20 & v17, v26, v23 & result, v27, a1, v28);
      v24 = *(v10 + 8);
      v24(v12, a6);
      return (v24)(v15, a6);
    }
  }

  __break(1u);
  return result;
}

uint64_t _HashTable.UnsafeHandle.swapBucketValues<A>(for:withCurrentValue:and:withCurrentValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
  result = *a5;
  v14 = 1 << *a5;
  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = 1 << *a5;
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return _HashTable.UnsafeHandle.swapBucketValues(for:withCurrentValue:and:withCurrentValue:)(v15 & v12, a2, v18 & result, a4, a5, a6);
}

void OrderedSet._partition(by:callback:)(uint64_t (*a1)(char *), uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (*v5)
  {
    OrderedSet._ensureUnique()();
    v11 = *v5;
    if (*v5)
    {
      v12 = *(a5 + 24);

      closure #1 in OrderedSet._partition(by:callback:)((v11 + 16), v11 + 32, a1, a2, a3, a4, &v13, v12);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for ContiguousArray();
    swift_getWitnessTable();
    swift_getWitnessTable();
    MutableCollection<>.partition(by:)();
  }
}

void *closure #1 in OrderedSet._partition(by:callback:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t, uint64_t)@<X5>, uint64_t a6@<X6>, void *a8@<X8>, uint64_t a9)
{
  type metadata accessor for ContiguousArray();
  result = ContiguousArray.withContiguousMutableStorageIfAvailable<A>(_:)();
  if (!v9)
  {
    if (v20 == 1)
    {
      WitnessTable = swift_getWitnessTable();
      v15 = swift_getWitnessTable();
      return MutableCollection<>._partition(with:by:callback:)(a1, a2, a3, a4, a5, a6, WitnessTable, a8, v15, a9);
    }

    else
    {
      *a8 = v19;
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in OrderedSet._partition(by:callback:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(char *)@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t, uint64_t)@<X5>, uint64_t a6@<X6>, void *a8@<X8>, uint64_t a9)
{
  type metadata accessor for UnsafeMutableBufferPointer();
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  result = MutableCollection<>._partition(with:by:callback:)(a1, a2, a3, a4, a5, a6, WitnessTable, &v20, v15, a9);
  if (!v19)
  {
    *a8 = v20;
  }

  return result;
}

uint64_t MutableCollection<>._partition(with:by:callback:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v13 = v11;
  v76 = a6;
  v75 = a5;
  v92 = a3;
  v93 = a4;
  v74 = a2;
  v78 = a1;
  v83 = a9;
  v79 = a8;
  v14 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v81 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v82 = &v67 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v67 - v19;
  MEMORY[0x28223BE20](v21);
  v86 = &v67 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v85 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v77 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v67 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v67 - v29;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v89 = v14;
  v31 = *(swift_getAssociatedConformanceWitness() + 8);
  v97 = v30;
  v95 = v23;
  v91 = v31;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
LABEL_2:
    v32 = v85;
LABEL_16:
    v64 = v95;
    (*(v32 + 8))(v27, v95);
    return (*(v32 + 32))(v83, v97, v64);
  }

  else
  {
    v72 = v20;
    v33 = (v90 + 2);
    v71 = a11;
    v80 = a10;
    ++v90;
    v73 = (v85 + 8);
    v34 = v89;
    v35 = v86;
    v88 = v33;
    v84 = v27;
    while (1)
    {
      v36 = v34;
      v37 = dispatch thunk of Collection.subscript.read();
      v38 = AssociatedTypeWitness;
      v87 = *v33;
      (v87)(v35);
      v37(v96, 0);
      v39 = v92(v35);
      if (v12)
      {
        (*v90)(v35, v38);
        v65 = *v73;
        v66 = v95;
        (*v73)(v84, v95);
        return v65(v97, v66);
      }

      v40 = v39;
      v41 = *v90;
      (*v90)(v35, v38);
      if (v40)
      {
        break;
      }

      v34 = v36;
      v27 = v84;
LABEL_13:
      dispatch thunk of Collection.formIndex(after:)();
      v63 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = v86;
      v33 = v88;
      if (v63)
      {
        goto LABEL_2;
      }
    }

    v42 = v72;
    v27 = v84;
    do
    {
      dispatch thunk of BidirectionalCollection.formIndex(before:)();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v32 = v85;
        goto LABEL_16;
      }

      v43 = v13;
      v44 = dispatch thunk of Collection.subscript.read();
      v45 = AssociatedTypeWitness;
      (v87)(v42);
      (v44)(v96, 0);
      LOBYTE(v44) = v92(v42);
      v41(v42, v45);
      v13 = v43;
    }

    while ((v44 & 1) != 0);
    v69 = v41;
    dispatch thunk of MutableCollection.swapAt(_:_:)();
    v46 = v77;
    dispatch thunk of Collection.startIndex.getter();
    v68 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
    v70 = *v73;
    v70(v46, v95);
    dispatch thunk of Collection.startIndex.getter();
    v67 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
    v70(v46, v95);
    v47 = dispatch thunk of Collection.subscript.read();
    v48 = v87;
    (v87)(v82);
    v47(v96, 0);
    v49 = dispatch thunk of Collection.subscript.read();
    v48(v81);
    v49(v96, 0);
    v50 = v78;
    v87 = dispatch thunk of Hashable._rawHashValue(seed:)();
    result = *v50;
    v52 = 1 << *v50;
    v53 = v52 - 1;
    if (__OFSUB__(v52, 1))
    {
      __break(1u);
    }

    else
    {
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v54 = 1 << *v50;
      v55 = __OFSUB__(v54, 1);
      v56 = v54 - 1;
      if (!v55)
      {
        v57 = result;
        v58 = v53 & v87;
        v59 = v67;
        v60 = v68;
        _HashTable.UnsafeHandle.swapBucketValues(for:withCurrentValue:and:withCurrentValue:)(v58, v67, v56 & v57, v68, v50, v74);
        v61 = AssociatedTypeWitness;
        v62 = v69;
        v69(v81, AssociatedTypeWitness);
        v62(v82, v61);
        v75(v60, v59);
        v34 = v89;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _HashTable.UnsafeHandle.swapBucketValues(for:withCurrentValue:and:withCurrentValue:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = _HashTable.UnsafeHandle._startIterator(bucket:)(a1, a5, a6);
  for (i = v11; i; v11 = i)
  {
    v12 = -1 << *a5;
    v13 = (v12 ^ ~v11) + (a5[1] >> 6);
    if (v13 >= ~v12)
    {
      v14 = ~v12;
    }

    else
    {
      v14 = 0;
    }

    if (v13 - v14 == a2)
    {
      break;
    }

    _HashTable.BucketIterator.advance()();
  }

  _HashTable.BucketIterator.currentValue.setter(a4, 0);
  v15 = _HashTable.UnsafeHandle._startIterator(bucket:)(a3, a5, a6);
  for (j = v15; j; v15 = j)
  {
    v16 = -1 << *a5;
    v17 = (v16 ^ ~v15) + (a5[1] >> 6);
    if (v17 >= ~v16)
    {
      v18 = ~v16;
    }

    else
    {
      v18 = 0;
    }

    if (v17 - v18 == a4)
    {
      break;
    }

    _HashTable.BucketIterator.advance()();
  }

  return _HashTable.BucketIterator.currentValue.setter(a2, 0);
}

void OrderedSet.sort(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  MutableCollection<>.sort(by:)();
  type metadata accessor for OrderedSet(0, v4, *(a3 + 24), v5);
  OrderedSet._regenerateExistingHashTable()();
}

void OrderedSet<>.sort()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  MutableCollection<>.sort()();
  type metadata accessor for OrderedSet(0, v3, *(a1 + 24), v4);

  OrderedSet._regenerateExistingHashTable()();
}

void OrderedSet.shuffle<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  MutableCollection<>.shuffle<A>(using:)();

  OrderedSet._regenerateExistingHashTable()();
}

Swift::Void __swiftcall OrderedSet.reverse()()
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  MutableCollection<>.reverse()();

  OrderedSet._regenerateHashTable()();
}

void OrderedSet._halfStablePartition<A>(values:by:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = (v6 + 1);
  v14 = *(a5 + 16);
  if (ContiguousArray.count.getter() == a2)
  {
    v27 = v6;
    v35 = 0;
    type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v15 = *(*v30 + 16);
    v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
    v17 = *v30 + v16;
    v33 = v17;
    v34 = v15;
    v18 = v14;
    v19 = *(a5 + 24);
    v28 = v15;
    v29 = v18;
    closure #1 in OrderedSet._halfStablePartition<A>(values:by:)(&v33, &v35, a3, a4, a1, a2, v18, a6, v19, &v32);
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(&v33, v17, v28, v30, v29);
    }

    else
    {
      v25 = v16;
      v26 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(&v33, v17, v28, v30, v29);
      v20 = v35;
      if (v20 >= ContiguousArray.count.getter())
      {
        ContiguousArray.count.getter();
      }

      else
      {
        OrderedSet._ensureUnique()();
        v21 = *v27;
        *v27 = 0;
        ContiguousArray._makeMutableAndUnique()();
        v22 = v27[1];
        v23 = *(v22 + 16);
        v24 = v22 + v25;
        v33 = v22 + v25;
        v34 = v23;
        closure #2 in OrderedSet._halfStablePartition<A>(values:by:)(&v33, &v35, a3, a4, v26, a2, v21, v29, a6, v19, &v31);
        _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(&v33, v24, v23, v30, v29);
        *v27 = v21;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in OrderedSet._halfStablePartition<A>(values:by:)(uint64_t a1, uint64_t *a2, uint64_t (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v43 = a3;
  v44 = a5;
  v42 = a8;
  MEMORY[0x28223BE20](a1);
  v39 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v12;
  v16.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v38 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v18;
  v20 = *v19;
  v37 = v18[1];
  if (v20 < v37)
  {
    v22 = *(v14 + 16);
    v21 = v14 + 16;
    v34 = *(v21 + 56);
    v35 = v22;
    v36 = v15;
    v32 = v15 + 8;
    v33 = v15 + 16;
    v31 = (v21 - 8);
    v30[0] = a10;
    v30[1] = v21;
    while (1)
    {
      v23 = v41;
      v24 = v38;
      v35(v38, *v40 + v34 * v20, v41, v16);
      v25 = v36;
      v26 = v39;
      v27 = v42;
      (*(v36 + 16))(v39, v44 + *(v36 + 72) * v20, v42);
      v28 = v45;
      v29 = v43(v24, v26);
      (*(v25 + 8))(v26, v27);
      (*v31)(v24, v23);
      v45 = v28;
      if (v28)
      {
        *v30[0] = v45;
        return;
      }

      if (v29)
      {
        return;
      }

      v20 = *a2 + 1;
      if (__OFADD__(*a2, 1))
      {
        break;
      }

      *a2 = v20;
      if (v20 >= v37)
      {
        return;
      }
    }

    __break(1u);
  }
}

void closure #2 in OrderedSet._halfStablePartition<A>(values:by:)(void *a1, Swift::Int *a2, uint64_t (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v45 = a6;
  v60 = a5;
  v55 = a3;
  v13 = a1;
  v57 = *(a9 - 8);
  MEMORY[0x28223BE20](a1);
  v54 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(v15 - 8);
  v20.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v53 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v22;
  v24 = *v22 + 1;
  if (__OFADD__(*v22, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v42 = v18;
  v25 = v13[1];
  if (v25 >= v24)
  {
    if (v24 == v25)
    {
LABEL_16:
      *v42 = v23;
      return;
    }

    v59 = v19;
    v41 = a11;
    v43 = a10;
    v44 = v17;
    v51 = v57 + 16;
    v52 = v56 + 16;
    v49 = v56 + 8;
    v50 = v57 + 8;
    v47 = a2;
    v48 = v13;
    v46 = v25;
    while (v24 < v25)
    {
      v28 = v56;
      v29 = *(v56 + 72);
      v58 = *v13;
      v30 = v53;
      (*(v56 + 16))(v53, v58 + v29 * v24, a8, v20);
      v31 = v57;
      v32 = *(v57 + 72);
      v33 = v59;
      v61 = v24;
      v34 = v54;
      (*(v57 + 16))(v54, v60 + v32 * v24, v59);
      v35 = v62;
      v36 = a8;
      v37 = v55(v30, v34);
      (*(v31 + 8))(v34, v33);
      v38 = v36;
      (*(v28 + 8))(v30, v36);
      v62 = v35;
      if (v35)
      {
        *v41 = v62;
        return;
      }

      if (v37)
      {
        a8 = v36;
        v26 = v47;
        v13 = v48;
        v27 = v61;
        v25 = v46;
      }

      else
      {
        v25 = v46;
        v26 = v47;
        v27 = v61;
        a8 = v38;
        UnsafeMutableBufferPointer.swapAt(_:_:)(*v47, v61);
        v39 = v59;
        UnsafeMutableBufferPointer.swapAt(_:_:)(*v26, v27);
        v13 = v48;
        if (v44)
        {
          v40 = v62;
          closure #1 in closure #2 in OrderedSet._halfStablePartition<A>(values:by:)((v44 + 16), v44 + 32, v48, v26, v27, a8, v39, v43);
          v62 = v40;
        }

        if (__OFADD__(*v26, 1))
        {
          goto LABEL_18;
        }

        ++*v26;
      }

      v24 = v27 + 1;
      if (v25 == v24)
      {
        v23 = *v26;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
}

uint64_t closure #1 in closure #2 in OrderedSet._halfStablePartition<A>(values:by:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a2;
  v38 = a8;
  v37 = a1;
  v10 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  v18 = *v17;
  v20 = *(v19 + 72);
  v34 = *v21;
  v22 = *(v10 + 16);
  v22(&v33 - v15, v18 + v20 * v34, v23, v14);
  v35 = a5;
  (v22)(v12, v18 + v20 * a5, a6);
  v24 = v37;
  v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
  result = *v24;
  v27 = 1 << *v24;
  v28 = v27 - 1;
  if (__OFSUB__(v27, 1))
  {
    __break(1u);
  }

  else
  {
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v29 = 1 << *v24;
    v30 = __OFSUB__(v29, 1);
    v31 = v29 - 1;
    if (!v30)
    {
      _HashTable.UnsafeHandle.swapBucketValues(for:withCurrentValue:and:withCurrentValue:)(v28 & v25, v35, v31 & result, v34, v24, v36);
      v32 = *(v10 + 8);
      v32(v12, a6);
      return (v32)(v16, a6);
    }
  }

  __break(1u);
  return result;
}

uint64_t OrderedSet._partition<A>(values:by:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  OrderedSet._ensureUnique()();
  v10 = *v6;
  *v6 = 0;
  v11 = *(a5 + 16);
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v12 = v6[1];
  v13 = *(v12 + 16);
  v14 = v12 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80));
  v20[0] = v14;
  v20[1] = v13;
  closure #1 in OrderedSet._partition<A>(values:by:)(v20, a1, a2, a3, v10, a6, &v21, *(a5 + 24), &v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v20, v14, v13, (v6 + 1), v11);
  if (!v18)
  {
    v11 = v21;
  }

  *v6 = v10;

  return v11;
}

void closure #1 in OrderedSet._partition<A>(values:by:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(char *, char *)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, Swift::Int *a7@<X8>, uint64_t a8, void *a9)
{
  v10 = v9;
  v77 = a4;
  v78 = a2;
  v80 = a6;
  v15 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v63 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = &v54 - v18;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v21);
  v62 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v66 = &v54 - v24;
  v25 = *(a1 + 8);
  v64 = *v26;
  v61 = v25;
  v28 = v27;
  v68 = UnsafeMutableBufferPointer.endIndex.getter();
  v29 = 0;
  if (v68)
  {
    v59 = a9;
    v55 = a8;
    v31 = *(v20 + 16);
    v30 = v20 + 16;
    v32 = *(v30 + 56);
    v75 = v15 + 16;
    v76 = v31;
    v73 = (v30 - 8);
    v74 = v15 + 8;
    v33 = v28;
    v60 = a7;
    v79 = v28;
    v58 = a5;
    v57 = a3;
    v56 = a1;
    v65 = v15;
    v71 = v32;
    v72 = v30;
LABEL_3:
    v34 = v64 + v32 * v29;
    v35 = v29;
    v36 = v80;
    while (1)
    {
      v37 = v66;
      v38 = v33;
      v76(v66, v34, v33);
      v39 = v65;
      v40 = *(v65 + 72);
      v81 = v35;
      v70 = v40;
      v41 = v67;
      v69 = *(v65 + 16);
      v69(v67, v78 + v40 * v35, v36);
      v42 = v77(v37, v41);
      v43 = *(v39 + 8);
      v43(v41, v36);
      v44 = *v73;
      (*v73)(v37, v38);
      if (v10)
      {
        *v59 = v10;
        return;
      }

      if (v42)
      {
        break;
      }

      if (__OFADD__(v81, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      v35 = v81 + 1;
      v34 += v71;
      v33 = v79;
      v36 = v80;
      if (v81 + 1 == v68)
      {
        v29 = v68;
        a7 = v60;
        goto LABEL_20;
      }
    }

    v45 = v81;
    v83 = v81;
    v46 = v68;
    while (!__OFSUB__(v46--, 1))
    {
      if (v45 == v46)
      {
        a7 = v60;
        v29 = v81;
        goto LABEL_20;
      }

      v48 = v62;
      v76(v62, v64 + v46 * v71, v79);
      v49 = v63;
      v69(v63, v78 + v46 * v70, v80);
      v50 = v77(v48, v49);
      v43(v49, v80);
      v44(v48, v79);
      v45 = v81;
      if ((v50 & 1) == 0)
      {
        v82[0] = v46;
        v51 = v79;
        UnsafeMutableBufferPointer.swapAt(_:_:)(v81, v46);
        v68 = v46;
        v52 = v46;
        v53 = v80;
        UnsafeMutableBufferPointer.swapAt(_:_:)(v45, v52);
        a7 = v60;
        if (v58)
        {
          closure #1 in closure #1 in OrderedSet._partition<A>(values:by:)((v58 + 16), v58 + 32, v56, &v83, v82, v51, v53, v55);
        }

        v10 = 0;
        v32 = v71;
        v29 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          goto LABEL_23;
        }

        v83 = v81 + 1;
        v33 = v79;
        if (v29 != v68)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:
    *a7 = v29;
  }
}

uint64_t closure #1 in closure #1 in OrderedSet._partition<A>(values:by:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a5;
  v35 = a8;
  v33 = a2;
  v10 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v18 = *v17;
  v20 = *(v19 + 72);
  v32 = *v21;
  v22 = *(v10 + 16);
  v22(&v32 - v15, v18 + v20 * v32, v23, v14);
  v34 = *v34;
  (v22)(v12, v18 + v34 * v20, a6);
  v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
  result = *a1;
  v26 = 1 << *a1;
  v27 = v26 - 1;
  if (__OFSUB__(v26, 1))
  {
    __break(1u);
  }

  else
  {
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v28 = 1 << *a1;
    v29 = __OFSUB__(v28, 1);
    v30 = v28 - 1;
    if (!v29)
    {
      _HashTable.UnsafeHandle.swapBucketValues(for:withCurrentValue:and:withCurrentValue:)(v27 & v24, v34, v30 & result, v32, a1, v33);
      v31 = *(v10 + 8);
      v31(v12, a6);
      return (v31)(v16, a6);
    }
  }

  __break(1u);
  return result;
}

void _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1)
  {
    if (*a1 == a2)
    {
      if (a1[1] == a3)
      {
        type metadata accessor for ContiguousArray();
        destructiveProjectEnumData for NodePersonality.ShaderType();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t SGEdge.debugDescription.getter()
{
  v1 = v0;
  v2 = 0x676E697373694DLL;
  v3 = *(v0 + OBJC_IVAR___SGEdge_from);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR___SGNode_name);
    v5 = *(Strong + OBJC_IVAR___SGNode_name + 8);
    v7 = Strong;
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x676E697373694DLL;
  }

  MEMORY[0x266771550](v6, v5);

  MEMORY[0x266771550](58, 0xE100000000000000);
  v8 = *(v3 + OBJC_IVAR___SGOutput_name);
  v9 = *(v3 + OBJC_IVAR___SGOutput_name + 8);

  MEMORY[0x266771550](v8, v9);

  MEMORY[0x266771550](0x209286E220, 0xA500000000000000);
  v10 = *(v1 + OBJC_IVAR___SGEdge_to);
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v2 = *(v11 + OBJC_IVAR___SGNode_name);
    v12 = *(v11 + OBJC_IVAR___SGNode_name + 8);
    v13 = v11;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  MEMORY[0x266771550](v2, v12);

  MEMORY[0x266771550](58, 0xE100000000000000);
  v14 = *(v10 + OBJC_IVAR___SGInput_name);
  v15 = *(v10 + OBJC_IVAR___SGInput_name + 8);

  MEMORY[0x266771550](v14, v15);

  return 0;
}

id SGEdge.__allocating_init(from:to:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___SGEdge_from] = a1;
  *&v5[OBJC_IVAR___SGEdge_to] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id SGEdge.init(from:to:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___SGEdge_from] = a1;
  *&v2[OBJC_IVAR___SGEdge_to] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

ShaderGraph::SGEdge::CodingKeys_optional __swiftcall SGEdge.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGEdge.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = ShaderGraph_SGEdge_CodingKeys_to;
  }

  else
  {
    v4.value = ShaderGraph_SGEdge_CodingKeys_unknownDefault;
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

ShaderGraph::SGEdge::CodingKeys_optional __swiftcall SGEdge.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGEdge.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = ShaderGraph_SGEdge_CodingKeys_to;
  }

  else
  {
    v4.value = ShaderGraph_SGEdge_CodingKeys_unknownDefault;
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

uint64_t SGEdge.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 28532;
  }

  else
  {
    return 1836020326;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SGEdge.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 28532;
  }

  else
  {
    v3 = 1836020326;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 28532;
  }

  else
  {
    v5 = 1836020326;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGEdge.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SGEdge.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGEdge.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SGEdge.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGEdge.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance SGEdge.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 1836020326;
  if (*v1)
  {
    v2 = 28532;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SGEdge.CodingKeys()
{
  if (*v0)
  {
    return 28532;
  }

  else
  {
    return 1836020326;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SGEdge.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGEdge.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SGEdge.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SGEdge.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *SGEdge.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph6SGEdgeC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph6SGEdgeC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &ObjectType - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for SGError();
    v10 = v2;
    SGError.__allocating_init(_:)(v2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for SGOutput();
    v15 = 0;
    lazy protocol witness table accessor for type SGOutput and conformance SGOutput(&lazy protocol witness table cache variable for type SGOutput and conformance SGOutput, v9, type metadata accessor for SGOutput, &protocol conformance descriptor for SGOutput);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + OBJC_IVAR___SGEdge_from) = v16;
    type metadata accessor for SGInput();
    v15 = 1;
    lazy protocol witness table accessor for type SGOutput and conformance SGOutput(&lazy protocol witness table cache variable for type SGInput and conformance SGInput, v12, type metadata accessor for SGInput, &protocol conformance descriptor for SGInput);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *(v1 + OBJC_IVAR___SGEdge_to) = v16;
    v14.receiver = v1;
    v14.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys);
  }

  return result;
}

void SGEdge.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph6SGEdgeC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph6SGEdgeC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGEdge.CodingKeys and conformance SGEdge.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *(v3 + OBJC_IVAR___SGEdge_from);
  HIBYTE(v12) = 0;
  type metadata accessor for SGOutput();
  lazy protocol witness table accessor for type SGOutput and conformance SGOutput(&lazy protocol witness table cache variable for type SGOutput and conformance SGOutput, v9, type metadata accessor for SGOutput, &protocol conformance descriptor for SGOutput);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
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
    v13 = *(v3 + OBJC_IVAR___SGEdge_to);
    HIBYTE(v12) = 1;
    type metadata accessor for SGInput();
    lazy protocol witness table accessor for type SGOutput and conformance SGOutput(&lazy protocol witness table cache variable for type SGInput and conformance SGInput, v10, type metadata accessor for SGInput, &protocol conformance descriptor for SGInput);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
  }
}

id SGEdge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static IOAttachment.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance IOAttachment(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t IOAttachment.description.getter(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x6863617474616E75;
  }

  MEMORY[0x266771550](a1);
  MEMORY[0x266771550](41, 0xE100000000000000);
  return 0x6465686361747461;
}

uint64_t SGInput.type.getter()
{
  v1 = OBJC_IVAR___SGInput_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SGInput.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SGInput_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SGInput.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGInput_name);

  return v1;
}

uint64_t (*SGInput.edge.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SGInput_edge;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SGInput.edge.modify;
}

uint64_t (*SGInput.node.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SGInput_node;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SGInput.node.modify;
}

uint64_t SGInput.description.getter()
{
  _StringGuts.grow(_:)(25);
  MEMORY[0x266771550](0x287475706E494753, 0xE900000000000022);
  MEMORY[0x266771550](*(v0 + OBJC_IVAR___SGInput_name), *(v0 + OBJC_IVAR___SGInput_name + 8));
  MEMORY[0x266771550](2108450, 0xE300000000000000);
  swift_beginAccess();
  v1 = SGDataType.stringValue.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](8236, 0xE200000000000000);
  swift_beginAccess();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](8236, 0xE200000000000000);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v3 = 0xE800000000000000;
    v4 = 0x6567646520736168;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x65676465206F6ELL;
  }

  MEMORY[0x266771550](v4, v3);

  MEMORY[0x266771550](41, 0xE100000000000000);
  return 0;
}

id SGInput.__allocating_init(name:type:attachment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v11[OBJC_IVAR___SGInput_name];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v11[OBJC_IVAR___SGInput_type] = a3;
  v13 = &v11[OBJC_IVAR___SGInput_attachment];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id SGInput.init(name:type:attachment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v5[OBJC_IVAR___SGInput_name];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v5[OBJC_IVAR___SGInput_type] = a3;
  v13 = &v5[OBJC_IVAR___SGInput_attachment];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

ShaderGraph::SGInput::CodingKeys_optional __swiftcall SGInput.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGInput.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t SGInput.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0x656D686361747461;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SGInput.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SGInput.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void _s11ShaderGraph8SGOutputC10CodingKeysOSYAASY8rawValue03RawG0QzvgTW_0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701667182;
  if (v2 != 1)
  {
    v5 = 0x656D686361747461;
    v4 = 0xEA0000000000746ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t _s11ShaderGraph8SGOutputC10CodingKeysOs0D3KeyAAsAFP11stringValueSSvgTW_0()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x656D686361747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SGInput.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SGInput.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SGInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGInput.CodingKeys and conformance SGInput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SGInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGInput.CodingKeys and conformance SGInput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *SGInput.init(from:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph7SGInputC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph7SGInputC10CodingKeysOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v28 = OBJC_IVAR___SGInput_edge;
  swift_unknownObjectWeakInit();
  v27 = OBJC_IVAR___SGInput_node;
  swift_unknownObjectWeakInit();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGInput.CodingKeys and conformance SGInput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v11 = 0;
  }

  else
  {
    LOBYTE(v32) = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    v16 = &v4[OBJC_IVAR___SGInput_name];
    *v16 = v10;
    v16[1] = v14;
    v17 = v10;

    v18._countAndFlagsBits = v17;
    v18._object = v15;
    v19._countAndFlagsBits = 1701667182;
    v19._object = 0xE400000000000000;
    validate(_:named:)(v18, v19);
    v3 = v20;
    v21 = v7;
    if (!v20)
    {

      type metadata accessor for SGDataType(0);
      v31 = 0;
      lazy protocol witness table accessor for type SGOutput and conformance SGOutput(&lazy protocol witness table cache variable for type SGDataType and conformance SGDataType, 255, type metadata accessor for SGDataType, &protocol conformance descriptor for SGDataType);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      *&v4[OBJC_IVAR___SGInput_type] = v32;
      LOBYTE(v32) = 2;
      v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v24 = v23;
      v25 = v22;
      (*(v21 + 8))(v9, v6);
      v26 = &v4[OBJC_IVAR___SGInput_attachment];
      if (v24)
      {
        *v26 = v25;
        v26[1] = v24;
      }

      else
      {
        *v26 = 0;
        v26[1] = 0;
      }

      v30.receiver = v4;
      v30.super_class = ObjectType;
      v4 = objc_msgSendSuper2(&v30, sel_init);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      return v4;
    }

    (*(v7 + 8))(v9, v6);

    v11 = 1;
  }

  type metadata accessor for SGError();
  v12 = v3;
  SGError.__allocating_init(_:)(v3);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (v11)
  {
  }

  MEMORY[0x2667731C0](&v4[v28]);
  MEMORY[0x2667731C0](&v4[v27]);
  swift_deallocPartialClassInstance();
  return v4;
}

void SGInput.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph7SGInputC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph7SGInputC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGInput.CodingKeys and conformance SGInput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
    type metadata accessor for SGError();
    v10 = v2;
    SGError.__allocating_init(_:)(v2);
    swift_willThrow();
  }

  else
  {
    v9 = OBJC_IVAR___SGInput_type;
    swift_beginAccess();
    v12[1] = *(v3 + v9);
    v13 = 0;
    type metadata accessor for SGDataType(0);
    lazy protocol witness table accessor for type SGOutput and conformance SGOutput(&lazy protocol witness table cache variable for type SGDataType and conformance SGDataType, 255, type metadata accessor for SGDataType, &protocol conformance descriptor for SGDataType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v3 + OBJC_IVAR___SGInput_attachment;
    swift_beginAccess();
    if (*(v11 + 8))
    {
      v13 = 2;

      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t key path getter for WeakBox.value : <A>WeakBox<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for WeakBox(0, *(a2 + a3 - 8), a3, a5);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t WeakBox.value.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*WeakBox.value.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return WeakBox.value.modify;
}

uint64_t WeakBox.value.modify(void *a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t WeakBox.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

BOOL static WeakBox<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!v4)
    {
      return 1;
    }

    goto LABEL_7;
  }

  if (!v4)
  {
LABEL_7:
    swift_unknownObjectRelease();
    return 0;
  }

  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (v5 & 1) != 0;
}

uint64_t WeakBox<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakLoadStrong();
  type metadata accessor for Optional();
  Optional<A>.hash(into:)();
  return swift_unknownObjectRelease();
}

Swift::Int WeakBox<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  WeakBox<>.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> WeakBox<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  WeakBox<>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

uint64_t SGOutput.type.getter()
{
  v1 = OBJC_IVAR___SGOutput_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SGOutput.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SGOutput_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id @objc SGInput.name.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = MEMORY[0x266771450](v4, v5);

  return v6;
}

uint64_t SGOutput.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGOutput_name);

  return v1;
}

uint64_t SGInput.attachment.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t SGInput.attachment.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t SGOutput._edges.getter()
{
  v1 = (v0 + OBJC_IVAR___SGOutput__edges);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SGOutput._edges.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SGOutput__edges);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SGOutput.edges.getter()
{
  v1 = v0 + OBJC_IVAR___SGOutput__edges;
  swift_beginAccess();
  v2 = *(v1 + 8);
  v3 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  if (!v4)
  {
    return v3;
  }

  v5 = v2 + 32;

  v7 = 0;
  while (v7 < *(v2 + 16))
  {
    outlined init with copy of [Input](v5, v9, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
    Strong = swift_unknownObjectWeakLoadStrong();
    result = outlined destroy of [Input](v9, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
    if (Strong)
    {
      MEMORY[0x266771770](result);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v10;
    }

    ++v7;
    v5 += 8;
    if (v4 == v7)
    {

      return v3;
    }
  }

  __break(1u);
  return result;
}

void SGInput.edge.setter(void *a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t (*SGOutput.node.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SGOutput_node;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SGInput.node.modify;
}

void SGInput.edge.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id @objc static SGInput.create(name:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5(v7, v9, a4);

  return v10;
}

id @objc SGEdge.debugDescription.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x266771450](v5, v7);

  return v8;
}

uint64_t SGOutput.description.getter()
{
  _StringGuts.grow(_:)(26);
  MEMORY[0x266771550](0x74757074754F4753, 0xEA00000000002228);
  MEMORY[0x266771550](*(v0 + OBJC_IVAR___SGOutput_name), *(v0 + OBJC_IVAR___SGOutput_name + 8));
  MEMORY[0x266771550](2108450, 0xE300000000000000);
  swift_beginAccess();
  v1 = SGDataType.stringValue.getter();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](8236, 0xE200000000000000);
  swift_beginAccess();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](8236, 0xE200000000000000);
  v2 = v0 + OBJC_IVAR___SGOutput__edges;
  swift_beginAccess();
  if (*(*(v2 + 8) + 16))
  {
    v3 = 0x6567646520736168;
  }

  else
  {
    v3 = 0x7365676465206F6ELL;
  }

  if (*(*(v2 + 8) + 16))
  {
    v4 = 0xE900000000000073;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  MEMORY[0x266771550](v3, v4);

  MEMORY[0x266771550](41, 0xE100000000000000);
  return 0;
}

id SGOutput.__allocating_init(name:type:attachment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___SGOutput_attachment];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v11[OBJC_IVAR___SGOutput__edges];
  v14 = MEMORY[0x277D84F90];
  *v13 = 0;
  *(v13 + 1) = v14;
  swift_unknownObjectWeakInit();
  v15 = &v11[OBJC_IVAR___SGOutput_name];
  *v15 = a1;
  *(v15 + 1) = a2;
  *&v11[OBJC_IVAR___SGOutput_type] = a3;
  swift_beginAccess();
  *v12 = a4;
  *(v12 + 1) = a5;

  v17.receiver = v11;
  v17.super_class = v5;
  return objc_msgSendSuper2(&v17, sel_init);
}

id SGOutput.init(name:type:attachment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR___SGOutput_attachment];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v5[OBJC_IVAR___SGOutput__edges];
  v14 = MEMORY[0x277D84F90];
  *v13 = 0;
  *(v13 + 1) = v14;
  swift_unknownObjectWeakInit();
  v15 = &v5[OBJC_IVAR___SGOutput_name];
  *v15 = a1;
  *(v15 + 1) = a2;
  *&v5[OBJC_IVAR___SGOutput_type] = a3;
  swift_beginAccess();
  *v12 = a4;
  *(v12 + 1) = a5;

  v17.receiver = v5;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

ShaderGraph::SGOutput::CodingKeys_optional __swiftcall SGOutput.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGOutput.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SGInput.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701667182;
  if (v2 != 1)
  {
    v5 = 0x656D686361747461;
    v4 = 0xEA0000000000746ELL;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701869940;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1701667182;
  if (*a2 != 1)
  {
    v8 = 0x656D686361747461;
    v3 = 0xEA0000000000746ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGInput.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SGInput.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGInput.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SGOutput.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SGOutput.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SGOutput.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SGOutput.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SGOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SGOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *SGOutput.init(from:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph8SGOutputC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph8SGOutputC10CodingKeysOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = &v4[OBJC_IVAR___SGOutput_attachment];
  *v10 = 0;
  *(v10 + 1) = 0;
  v34 = v10;
  v11 = &v4[OBJC_IVAR___SGOutput__edges];
  v12 = MEMORY[0x277D84F90];
  *v11 = 0;
  *(v11 + 1) = v12;
  v32 = OBJC_IVAR___SGOutput_node;
  swift_unknownObjectWeakInit();
  v13 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v15 = 0;
  }

  else
  {
    LOBYTE(v37) = 1;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v18;
    v20 = &v4[OBJC_IVAR___SGOutput_name];
    *v20 = v14;
    v20[1] = v18;
    v21 = v14;

    v22._countAndFlagsBits = v21;
    v22._object = v19;
    v23._countAndFlagsBits = 1701667182;
    v23._object = 0xE400000000000000;
    validate(_:named:)(v22, v23);
    v3 = v24;
    if (!v24)
    {

      type metadata accessor for SGDataType(0);
      v38 = 0;
      lazy protocol witness table accessor for type SGOutput and conformance SGOutput(&lazy protocol witness table cache variable for type SGDataType and conformance SGDataType, 255, type metadata accessor for SGDataType, &protocol conformance descriptor for SGDataType);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      *&v4[OBJC_IVAR___SGOutput_type] = v37;
      LOBYTE(v37) = 2;
      v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v27 = v26;
      v28 = v25;
      (*(v7 + 8))(v9, v6);
      if (v27)
      {
        v29 = v34;
        swift_beginAccess();
        *v29 = v28;
        v29[1] = v27;
      }

      else
      {
        v30 = v34;
        swift_beginAccess();
        *v30 = 0;
        v30[1] = 0;
      }

      v36.receiver = v4;
      v36.super_class = ObjectType;
      v4 = objc_msgSendSuper2(&v36, sel_init);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      return v4;
    }

    (*(v7 + 8))(v9, v6);

    v15 = 1;
  }

  type metadata accessor for SGError();
  v16 = v3;
  SGError.__allocating_init(_:)(v3);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  if (v15)
  {
  }

  MEMORY[0x2667731C0](&v4[v32]);
  swift_deallocPartialClassInstance();
  return v4;
}

void SGOutput.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph8SGOutputC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph8SGOutputC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
    type metadata accessor for SGError();
    v10 = v2;
    SGError.__allocating_init(_:)(v2);
    swift_willThrow();
  }

  else
  {
    v9 = OBJC_IVAR___SGOutput_type;
    swift_beginAccess();
    v12[1] = *(v3 + v9);
    v13 = 0;
    type metadata accessor for SGDataType(0);
    lazy protocol witness table accessor for type SGOutput and conformance SGOutput(&lazy protocol witness table cache variable for type SGDataType and conformance SGDataType, 255, type metadata accessor for SGDataType, &protocol conformance descriptor for SGDataType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v3 + OBJC_IVAR___SGOutput_attachment;
    swift_beginAccess();
    if (*(v11 + 8))
    {
      v13 = 2;

      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t SGInput.isEqual(_:)(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  swift_getObjectType();
  outlined init with copy of [Input](a1, v22, &_sypSgMd, &_sypSgMR);
  if (!v23)
  {
    outlined destroy of [Input](v22, &_sypSgMd, &_sypSgMR);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    LOBYTE(v19) = 0;
    return v19 & 1;
  }

  if (v21 != v4)
  {
    v9 = &v4[*a2];
    v10 = &v21[*a2];
    v11 = *v9 == *v10 && *(v9 + 1) == *(v10 + 1);
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v12 = *a3, swift_beginAccess(), v13 = *&v4[v12], v14 = *a3, swift_beginAccess(), v13 == *&v21[v14]))
    {
      v15 = &v4[*a4];
      swift_beginAccess();
      v16 = *v15;
      v17 = *(v15 + 1);
      v18 = &v21[*a4];
      swift_beginAccess();
      v19 = *(v18 + 1);
      if (v17)
      {
        if (v19)
        {
          if (v16 == *v18 && v17 == v19)
          {
            goto LABEL_14;
          }

          LOBYTE(v19) = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        return v19 & 1;
      }

      if (!v19)
      {
        LOBYTE(v19) = 1;
        return v19 & 1;
      }
    }

    else
    {
    }

    goto LABEL_17;
  }

LABEL_14:

  LOBYTE(v19) = 1;
  return v19 & 1;
}

uint64_t @objc SGInput.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  outlined destroy of [Input](v10, &_sypSgMd, &_sypSgMR);
  return v8 & 1;
}

id SGEdge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SGEdge@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = objc_allocWithZone(v3);
  result = a2(a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

id specialized static SGInput.create(name:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6._countAndFlagsBits = 1701667182;
    v6._object = 0xE400000000000000;
    validate(_:named:)(*&a1, v6);
    v8 = v7;
    if (!v7)
    {
      v9 = type metadata accessor for SGInput();
      v10 = objc_allocWithZone(v9);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v11 = &v10[OBJC_IVAR___SGInput_name];
      *v11 = a1;
      *(v11 + 1) = a2;
      *&v10[OBJC_IVAR___SGInput_type] = a3;
      v12 = &v10[OBJC_IVAR___SGInput_attachment];
      *v12 = 0;
      *(v12 + 1) = 0;
      v25.receiver = v10;
      v25.super_class = v9;

      return objc_msgSendSuper2(&v25, sel_init);
    }
  }

  else
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v8 = swift_allocError();
    *v14 = xmmword_265F20CE0;
    *(v14 + 16) = 1;
    swift_willThrow();
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  v16 = static os_log_type_t.error.getter();
  v17 = v8;
  v18 = Logger.logObject.getter();

  if (os_log_type_enabled(v18, v16))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v8;
    v27 = v20;
    *v19 = 136315138;
    v21 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_265D7D000, v18, v16, "%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266773120](v20, -1, -1);
    MEMORY[0x266773120](v19, -1, -1);
  }

  else
  {
  }

  return 0;
}

unint64_t specialized SGInput.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGInput.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SGInput.CodingKeys and conformance SGInput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGInput.CodingKeys and conformance SGInput.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SGOutput and conformance SGOutput(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id specialized static SGOutput.create(name:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6._countAndFlagsBits = 1701667182;
    v6._object = 0xE400000000000000;
    validate(_:named:)(*&a1, v6);
    v8 = v7;
    if (!v7)
    {
      v9 = type metadata accessor for SGOutput();
      v10 = objc_allocWithZone(v9);
      v11 = &v10[OBJC_IVAR___SGOutput_attachment];
      *v11 = 0;
      *(v11 + 1) = 0;
      v12 = &v10[OBJC_IVAR___SGOutput__edges];
      v13 = MEMORY[0x277D84F90];
      *v12 = 0;
      *(v12 + 1) = v13;
      swift_unknownObjectWeakInit();
      v14 = &v10[OBJC_IVAR___SGOutput_name];
      *v14 = a1;
      *(v14 + 1) = a2;
      *&v10[OBJC_IVAR___SGOutput_type] = a3;
      swift_beginAccess();
      *v11 = 0;
      *(v11 + 1) = 0;

      v27.receiver = v10;
      v27.super_class = v9;
      return objc_msgSendSuper2(&v27, sel_init);
    }
  }

  else
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v8 = swift_allocError();
    *v16 = xmmword_265F20CE0;
    *(v16 + 16) = 1;
    swift_willThrow();
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, logger);
  v18 = static os_log_type_t.error.getter();
  v19 = v8;
  v20 = Logger.logObject.getter();

  if (os_log_type_enabled(v20, v18))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28[0] = v22;
    *v21 = 136315138;
    v28[3] = v8;
    v23 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v28);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_265D7D000, v20, v18, "%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x266773120](v22, -1, -1);
    MEMORY[0x266773120](v21, -1, -1);
  }

  else
  {
  }

  return 0;
}

unint64_t specialized SGOutput.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGOutput.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGOutput.CodingKeys and conformance SGOutput.CodingKeys);
  }

  return result;
}

uint64_t sub_265DCBC0C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IOAttachment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IOAttachment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for IOAttachment(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for IOAttachment(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t type metadata instantiation function for WeakBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for WeakBox(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WeakBox(uint64_t result, int a2, int a3)
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

uint64_t OrderedDictionary.Values._base.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return a1;
}

uint64_t OrderedDictionary.Values._base.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t OrderedDictionary.Values.elements.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ContiguousArray();

  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t OrderedDictionary.Values.withUnsafeBufferPointer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a8;
  v14[5] = a9;
  v14[6] = a1;
  v14[7] = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<B>) -> (@out A1, @error @owned Error), v14, a5, a7, a8, v12, MEMORY[0x277D84950], &v15);
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<B>) -> (@out A1, @error @owned Error)(uint64_t a1, uint64_t a2, void *a3)
{
  return partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<B>) -> (@out A1, @error @owned Error)(a1, a2, a3);
}

{
  result = (*(v3 + 48))(a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12.n128_f64[0] = MEMORY[0x28223BE20](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)), *(v16 + 16), v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a6);
  }

  return result;
}

void OrderedDictionary.Values.withUnsafeMutableBufferPointer<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a4;
  v6 = *(a3 + 24);
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v7 = *(v4 + 16);
  v8 = *(v7 + 16);
  v10[0] = v7 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  v9 = v10[0];
  v10[1] = v8;
  a1(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v10, v9, v8, v4 + 16, v6);
}

__n128 protocol witness for Sequence.makeIterator() in conformance OrderedDictionary<A, B>.Values@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance OrderedDictionary<A, B>.Values(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance OrderedDictionary<A, B>.Values(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = specialized Collection._copyToContiguousArray()(v1, a1, WitnessTable);

  return v4;
}

uint64_t protocol witness for Sequence.withContiguousStorageIfAvailable<A>(_:) in conformance OrderedDictionary<A, B>.Values@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v14[7] = a2;
  v9 = *(v5 + 16);
  v10 = a4[3];
  v14[2] = a4[2];
  v14[3] = v10;
  v11 = a4[4];
  v14[4] = a3;
  v14[5] = v11;
  v14[6] = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  result = _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<B>) -> (@out A1, @error @owned Error)partial apply, v14, v9, v10, a3, v12, MEMORY[0x277D84950], &v15);
  if (!v6)
  {
    return (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
  }

  return result;
}

uint64_t OrderedDictionary.Values.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a8;
  v15[6] = a1;
  v15[7] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  result = _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<B>) -> (@out A1, @error @owned Error)partial apply, v15, a3, a5, a6, v13, MEMORY[0x277D84950], &v16);
  if (!v8)
  {
    return (*(*(a6 - 8) + 56))(a7, 0, 1, a6);
  }

  return result;
}

Swift::Int __swiftcall OrderedDictionary.Values.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall OrderedDictionary.Values.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall OrderedDictionary.Values.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Void __swiftcall OrderedDictionary.Values.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

Swift::Int __swiftcall OrderedDictionary.Values.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall OrderedDictionary.Values.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = limitedBy - _;
  if (__OFSUB__(limitedBy, _))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (offsetBy < 1)
  {
    if (v3 > 0 || v3 <= offsetBy)
    {
LABEL_9:
      v4 = __OFADD__(_, offsetBy);
      _ += offsetBy;
      if (!v4)
      {
        LOBYTE(offsetBy) = 0;
        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v3 < 0 || v3 >= offsetBy)
  {
    goto LABEL_9;
  }

  _ = 0;
  LOBYTE(offsetBy) = 1;
LABEL_13:
  result.is_nil = offsetBy;
  result.value = _;
  return result;
}

Swift::Int __swiftcall OrderedDictionary.Values.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance OrderedDictionary<A, B>.Values@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}