unint64_t ContactNLv3Constants.canonicalName.getter()
{
  _StringGuts.grow(_:)(20);

  ContactNLv3Constants.rawValue.getter();
  v1 = v0;
  v3 = v2;

  specialized Collection.prefix(_:)(1, v1, v3);
  v4 = Substring.uppercased()();

  specialized Collection.dropFirst(_:)(1uLL, v1, v3);
  lazy protocol witness table accessor for type Substring and conformance Substring();

  String.append<A>(contentsOf:)();

  MEMORY[0x26D5E2570](v4._countAndFlagsBits, v4._object);

  return 0xD000000000000012;
}

void ContactNLv3Intent.NLContactVerbValue.rawValue.getter()
{
  switch(*v0)
  {
    case 6:
      OUTLINED_FUNCTION_21_11();
      break;
    default:
      return;
  }
}

uint64_t ContactNLv3Intent.requestedContactAttribute.getter()
{
  if (ContactNLv3Intent.hasFullNameAttribute.getter())
  {
    return 9;
  }

  if (OUTLINED_FUNCTION_51_2(41))
  {
    return 7;
  }

  if (ContactNLv3Intent.containsAttribute(_:)())
  {
    return 6;
  }

  if (ContactNLv3Intent.containsAttribute(_:)())
  {
    return 8;
  }

  if (ContactNLv3Intent.hasAddressAttribute.getter())
  {
    return 3;
  }

  if (ContactNLv3Intent.containsAttribute(_:)())
  {
    return 4;
  }

  if (ContactNLv3Intent.containsAttribute(_:)())
  {
    return 5;
  }

  ContactNLv3Intent.containsAttribute(_:)();
  if ((v1 & 1) != 0 || ContactNLv3Intent.containsContactType(_:)(&outlined read-only object #0 of one-time initialization function for emailAttributes))
  {
    return 1;
  }

  ContactNLv3Intent.containsAttribute(_:)();
  if (v2)
  {
    return 2;
  }

  if (ContactNLv3Intent.containsContactType(_:)(&outlined read-only object #0 of one-time initialization function for phoneAttributes))
  {
    return 2;
  }

  return 0;
}

uint64_t ContactNLv3Intent.requestedContactAttributeLabel.getter()
{
  if (one-time initialization token for contactType != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    type metadata accessor for ContactNLv3Intent(0);
    OUTLINED_FUNCTION_0_34();
    _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v0, v1, &protocol conformance descriptor for ContactNLv3Intent);
    OUTLINED_FUNCTION_2_18();
    IntentNodeTraversable.value<A>(forNode:)();
    if (!v12)
    {
      goto LABEL_17;
    }

    if (v11 != 0x656E6F6870 || v12 != 0xE500000000000000)
    {
      OUTLINED_FUNCTION_53_3();
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v11 == 0x6C69616D65 && v12 == 0xE500000000000000;
      v5 = v4;
      if ((v3 & 1) == 0 && !v5)
      {
        OUTLINED_FUNCTION_53_3();
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return OUTLINED_FUNCTION_53_3();
        }
      }
    }

LABEL_17:
    if (one-time initialization token for contactAttributes != -1)
    {
      OUTLINED_FUNCTION_8_11(&one-time initialization token for contactAttributes);
    }

    OUTLINED_FUNCTION_2_18();
    v6 = IntentNodeTraversable.values<A>(forNode:)();
    v7 = 0;
    v8 = *(v6 + 16);
    while (1)
    {
      if (v8 == v7)
      {

        return OUTLINED_FUNCTION_53_3();
      }

      if (v7 >= *(v6 + 16))
      {
        break;
      }

      v9 = *(v6 + v7++ + 32);
      if (!specialized Sequence<>.contains(_:)(v9, &outlined read-only object #0 of one-time initialization function for nonHandleLabelAttributes))
      {

        ContactNLv3Intent.NLContactAttributesValue.rawValue.getter();
        return OUTLINED_FUNCTION_53_3();
      }
    }

    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_7_7(&one-time initialization token for contactType);
  }
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    ContactNLv3Intent.NLContactAttributesValue.rawValue.getter();
    v7 = v6;
    v9 = v8;
    ContactNLv3Intent.NLContactAttributesValue.rawValue.getter();
    if (v7 == v11 && v9 == v10)
    {

      return v4 != 0;
    }

    OUTLINED_FUNCTION_61_1();
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v3;
  }

  while ((v13 & 1) == 0);
  return v4 != 0;
}

Swift::Int_optional __swiftcall ContactNLv3Intent.arrayIndexForReference(arrayLength:)(Swift::Int arrayLength)
{
  if (one-time initialization token for contactReference != -1)
  {
    OUTLINED_FUNCTION_4_22(&one-time initialization token for contactReference);
  }

  type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v2, v3, &protocol conformance descriptor for ContactNLv3Intent);
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_25_8();
  IntentNodeTraversable.value<A>(forNode:)();
  v4 = v6;
  v5 = 0;
  switch(v6)
  {
    case 0u:
      break;
    case 1u:
      v5 = 0;
      v4 = 1;
      break;
    case 2u:
      v5 = 0;
      v4 = 2;
      break;
    case 3u:
      v5 = 0;
      v4 = 3;
      break;
    case 4u:
      v5 = 0;
      v4 = 4;
      break;
    case 5u:
      v5 = 0;
      v4 = 5;
      break;
    case 6u:
      v5 = 0;
      v4 = 6;
      break;
    case 7u:
      v5 = 0;
      v4 = 7;
      break;
    case 8u:
      v5 = 0;
      v4 = 8;
      break;
    case 9u:
      v5 = 0;
      v4 = 9;
      break;
    case 0xAu:
      v5 = 0;
      v4 = 10;
      break;
    case 0xBu:
      v5 = 0;
      v4 = 11;
      break;
    case 0xCu:
      v5 = 0;
      v4 = 12;
      break;
    case 0xDu:
      v5 = 0;
      v4 = 13;
      break;
    case 0xEu:
      v5 = 0;
      v4 = 14;
      break;
    case 0xFu:
      v5 = 0;
      v4 = 15;
      break;
    case 0x10u:
      v5 = 0;
      v4 = 16;
      break;
    case 0x11u:
      v5 = 0;
      v4 = 17;
      break;
    case 0x12u:
      v5 = 0;
      v4 = 18;
      break;
    case 0x13u:
      v5 = 0;
      v4 = 19;
      break;
    case 0x14u:
      v5 = 0;
      v4 = 20;
      break;
    case 0x15u:
      goto LABEL_14;
    case 0x16u:
      v5 = 0;
      v4 = 22;
      break;
    case 0x17u:
      v5 = 0;
      v4 = 23;
      break;
    case 0x18u:
      v5 = 0;
      v4 = 24;
      break;
    case 0x19u:
      goto LABEL_35;
    case 0x1Du:
      v4 = arrayLength - 2;
      if (!__OFSUB__(arrayLength, 2))
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_35:
      v4 = arrayLength - 1;
      if (__OFSUB__(arrayLength, 1))
      {
        __break(1u);
      }

      else
      {
LABEL_36:
        v5 = 0;
      }

      break;
    case 0x1Eu:
      v4 = arrayLength - 3;
      if (!__OFSUB__(arrayLength, 3))
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_14:
      v5 = 0;
      v4 = 21;
      break;
    default:
      v4 = 0;
      v5 = 1;
      break;
  }

  result.value = v4;
  result.is_nil = v5;
  return result;
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = *v6++;
    v12 = v9;
    v10 = a1(&v12, a2);
    if (v3)
    {
      break;
    }
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

{
  return sub_26686CE4C(a1, a2, a3);
}

SiriContactsIntents::ContactNLv3Constants_optional __swiftcall ContactNLv3Constants.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_46_4();
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v4 = 0;
  v5 = 6;
  switch(v2)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v4 = 1;
      goto LABEL_18;
    case 2:
      v4 = 2;
      goto LABEL_18;
    case 3:
      v4 = 3;
      goto LABEL_18;
    case 4:
      v4 = 4;
      goto LABEL_18;
    case 5:
      v4 = 5;
LABEL_18:
      v5 = v4;
      break;
    case 6:
      break;
    case 7:
      v5 = 7;
      break;
    case 8:
      v5 = 8;
      break;
    case 9:
      v5 = 9;
      break;
    case 10:
      v5 = 10;
      break;
    case 11:
      v5 = 11;
      break;
    case 12:
      v5 = 12;
      break;
    case 13:
      v5 = 13;
      break;
    case 14:
      v5 = 14;
      break;
    case 15:
      v5 = 15;
      break;
    case 16:
      v5 = 16;
      break;
    case 17:
      v5 = 17;
      break;
    case 18:
      v5 = 18;
      break;
    case 19:
      v5 = 19;
      break;
    case 20:
      v5 = 20;
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    case 23:
      v5 = 23;
      break;
    default:
      v5 = 24;
      break;
  }

  *v1 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ContactNLv3Constants(uint64_t *a1@<X8>)
{
  ContactNLv3Constants.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t one-time initialization function for personNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266966D90;
  v1 = type metadata accessor for PersonOntologyNode();
  swift_allocObject();
  v2 = PersonOntologyNode.init(name:multicardinal:)();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v1;
  *(v0 + 64) = v3;
  *(v0 + 32) = v2;
  type metadata accessor for NonTerminalOntologyNode();
  swift_allocObject();
  result = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  static ContactNLv3Intent.personNode = result;
  return result;
}

uint64_t one-time initialization function for contactReference()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV23NLContactReferenceValueOGMd, &_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV23NLContactReferenceValueOGMR);
  OUTLINED_FUNCTION_2_6(v0);
  OUTLINED_FUNCTION_62_0();
  result = OUTLINED_FUNCTION_67_1(16, v1);
  static ContactNLv3Intent.contactReference = result;
  return result;
}

uint64_t one-time initialization function for contactAttributes()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV24NLContactAttributesValueOGMd, &_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV24NLContactAttributesValueOGMR);
  OUTLINED_FUNCTION_2_6(v0);
  OUTLINED_FUNCTION_62_0();
  result = OUTLINED_FUNCTION_67_1(17, v1);
  static ContactNLv3Intent.contactAttributes = result;
  return result;
}

uint64_t one-time initialization function for contactVerb()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV18NLContactVerbValueOGMd, &_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV18NLContactVerbValueOGMR);
  OUTLINED_FUNCTION_2_6(v0);
  OUTLINED_FUNCTION_30_7();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static ContactNLv3Intent.contactVerb = result;
  return result;
}

uint64_t one-time initialization function for contactNoun()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV18NLContactNounValueOGMd, &_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV18NLContactNounValueOGMR);
  OUTLINED_FUNCTION_2_6(v0);
  OUTLINED_FUNCTION_30_7();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static ContactNLv3Intent.contactNoun = result;
  return result;
}

uint64_t one-time initialization function for contactConfirmation()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV26NLContactConfirmationValueOGMd, &_s12SiriOntology08TerminalB4NodeCy0A15ContactsIntents17ContactNLv3IntentV26NLContactConfirmationValueOGMR);
  OUTLINED_FUNCTION_2_6(v0);
  OUTLINED_FUNCTION_62_0();
  result = OUTLINED_FUNCTION_67_1(19, v1);
  static ContactNLv3Intent.contactConfirmation = result;
  return result;
}

uint64_t one-time initialization function for contactAgeDate()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCyAA0C7ElementV13DateTimeValueVGMd, &_s12SiriOntology08TerminalB4NodeCyAA0C7ElementV13DateTimeValueVGMR);
  OUTLINED_FUNCTION_2_6(v0);
  OUTLINED_FUNCTION_30_7();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static ContactNLv3Intent.contactAgeDate = result;
  return result;
}

uint64_t one-time initialization function for contactId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  OUTLINED_FUNCTION_2_6(v5);
  result = TerminalOntologyNode.init(name:multicardinal:)();
  *a4 = result;
  return result;
}

uint64_t one-time initialization function for removeRelationship()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  OUTLINED_FUNCTION_2_6(v0);
  OUTLINED_FUNCTION_62_0();
  result = OUTLINED_FUNCTION_67_1(18, v1);
  static ContactNLv3Intent.removeRelationship = result;
  return result;
}

uint64_t ContactNLv3Intent.intent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContactNLv3Intent(0) + 20);
  type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_10_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ContactNLv3Intent.intent.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContactNLv3Intent(0) + 20);
  type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_10_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t ContactNLv3Intent.NLContactAttributesValue.attributeTypeAndLabel()(uint64_t a1, uint64_t a2)
{
  result = 2;
  switch(*v2)
  {
    case 0:
      return 2;
    case 1:
      return 2;
    case 2:
    case 3:
    case 4:
    case 0xC:
    case 0xE:
    case 0x10:
      return 2;
    case 5:
    case 6:
    case 7:
    case 8:
      ContactNLv3Intent.NLContactAttributesValue.rawValue.getter();
      return 2;
    case 9:
      OUTLINED_FUNCTION_64_0();
      return 2;
    case 0xA:
      return result;
    case 0xB:
      OUTLINED_FUNCTION_33_4();
      return 2;
    case 0x1E:
      return 1;
    case 0x1F:
      return 1;
    case 0x20:
      return 1;
    case 0x21:
      OUTLINED_FUNCTION_64_0();
      return 1;
    case 0x22:
      OUTLINED_FUNCTION_33_4();
      return 1;
    case 0x23:
      return 3;
    case 0x24:
      return 3;
    case 0x25:
      OUTLINED_FUNCTION_33_4();
      goto LABEL_10;
    case 0x26:
    case 0x30:
LABEL_10:
      result = 3;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void ContactNLv3Intent.NLContactAttributesValue.rawValue.getter()
{
  switch(*v0)
  {
    case 9:
    case 0xE:
      OUTLINED_FUNCTION_57_2();
      break;
    case 0x11:
    case 0x12:
      OUTLINED_FUNCTION_21_11();
      break;
    case 0x1E:
      OUTLINED_FUNCTION_54_2(28005);
      break;
    case 0x32:
      OUTLINED_FUNCTION_42_5(0x6F63u);
      break;
    case 0x33:
      OUTLINED_FUNCTION_43_5(0x6962u);
      break;
    case 0x34:
      OUTLINED_FUNCTION_56_3(0x6761u);
      break;
    case 0x35:
      OUTLINED_FUNCTION_41_6(0x6E61u);
      break;
    default:
      return;
  }
}

SiriContactsIntents::ContactNLv3Intent::NLContactAttributesValue_optional __swiftcall ContactNLv3Intent.NLContactAttributesValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_46_4();
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v4 = 0;
  v5 = 52;
  switch(v2)
  {
    case 0:
      goto LABEL_69;
    case 1:
      v4 = 1;
      goto LABEL_69;
    case 2:
      v4 = 2;
      goto LABEL_69;
    case 3:
      v4 = 3;
      goto LABEL_69;
    case 4:
      v4 = 4;
      goto LABEL_69;
    case 5:
      v4 = 5;
      goto LABEL_69;
    case 6:
      v4 = 6;
      goto LABEL_69;
    case 7:
      v4 = 7;
      goto LABEL_69;
    case 8:
      v4 = 8;
      goto LABEL_69;
    case 9:
      v4 = 9;
      goto LABEL_69;
    case 10:
      v4 = 10;
      goto LABEL_69;
    case 11:
      v4 = 11;
      goto LABEL_69;
    case 12:
      v4 = 12;
      goto LABEL_69;
    case 13:
      v4 = 13;
      goto LABEL_69;
    case 14:
      v4 = 14;
      goto LABEL_69;
    case 15:
      v4 = 15;
      goto LABEL_69;
    case 16:
      v4 = 16;
      goto LABEL_69;
    case 17:
      v4 = 17;
      goto LABEL_69;
    case 18:
      v4 = 18;
      goto LABEL_69;
    case 19:
      v4 = 19;
      goto LABEL_69;
    case 20:
      v4 = 20;
      goto LABEL_69;
    case 21:
      v4 = 21;
      goto LABEL_69;
    case 22:
      v4 = 22;
      goto LABEL_69;
    case 23:
      v4 = 23;
      goto LABEL_69;
    case 24:
      v4 = 24;
      goto LABEL_69;
    case 25:
      v4 = 25;
      goto LABEL_69;
    case 26:
      v4 = 26;
      goto LABEL_69;
    case 27:
      v4 = 27;
      goto LABEL_69;
    case 28:
      v4 = 28;
      goto LABEL_69;
    case 29:
      v4 = 29;
      goto LABEL_69;
    case 30:
      v4 = 30;
      goto LABEL_69;
    case 31:
      v4 = 31;
      goto LABEL_69;
    case 32:
      v4 = 32;
      goto LABEL_69;
    case 33:
      v4 = 33;
      goto LABEL_69;
    case 34:
      v4 = 34;
      goto LABEL_69;
    case 35:
      v4 = 35;
      goto LABEL_69;
    case 36:
      v4 = 36;
      goto LABEL_69;
    case 37:
      v4 = 37;
      goto LABEL_69;
    case 38:
      v4 = 38;
      goto LABEL_69;
    case 39:
      v4 = 39;
      goto LABEL_69;
    case 40:
      v4 = 40;
      goto LABEL_69;
    case 41:
      v4 = 41;
      goto LABEL_69;
    case 42:
      v4 = 42;
      goto LABEL_69;
    case 43:
      v4 = 43;
      goto LABEL_69;
    case 44:
      v4 = 44;
      goto LABEL_69;
    case 45:
      v4 = 45;
      goto LABEL_69;
    case 46:
      v4 = 46;
      goto LABEL_69;
    case 47:
      v4 = 47;
      goto LABEL_69;
    case 48:
      v4 = 48;
      goto LABEL_69;
    case 49:
      v4 = 49;
      goto LABEL_69;
    case 50:
      v4 = 50;
      goto LABEL_69;
    case 51:
      v4 = 51;
LABEL_69:
      v5 = v4;
      break;
    case 52:
      break;
    case 53:
      v5 = 53;
      break;
    case 54:
      v5 = 54;
      break;
    case 55:
      v5 = 55;
      break;
    case 56:
      v5 = 56;
      break;
    case 57:
      v5 = 57;
      break;
    case 58:
      v5 = 58;
      break;
    case 59:
      v5 = 59;
      break;
    case 60:
      v5 = 60;
      break;
    case 61:
      v5 = 61;
      break;
    case 62:
      v5 = 62;
      break;
    case 63:
      v5 = 63;
      break;
    case 64:
      v5 = 64;
      break;
    case 65:
      v5 = 65;
      break;
    case 66:
      v5 = 66;
      break;
    case 67:
      v5 = 67;
      break;
    case 68:
      v5 = 68;
      break;
    case 69:
      v5 = 69;
      break;
    default:
      v5 = 70;
      break;
  }

  *v1 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ContactNLv3Intent.NLContactAttributesValue(uint64_t *a1@<X8>)
{
  ContactNLv3Intent.NLContactAttributesValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

SiriContactsIntents::ContactNLv3Intent::NLContactVerbValue_optional __swiftcall ContactNLv3Intent.NLContactVerbValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_11();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  result.value = OUTLINED_FUNCTION_69_1();
  v4 = 17;
  if (v2 < 0x11)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ContactNLv3Intent.NLContactVerbValue(unint64_t *a1@<X8>)
{
  ContactNLv3Intent.NLContactVerbValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

SiriContactsIntents::ContactNLv3Intent::NLContactNounValue_optional __swiftcall ContactNLv3Intent.NLContactNounValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_11();
  v4._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactNLv3Intent.NLContactNounValue.init(rawValue:), v4);
  result.value = OUTLINED_FUNCTION_69_1();
  if (v3 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v3)
  {
    v6 = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t ContactNLv3Intent.NLContactNounValue.rawValue.getter()
{
  if (*v0)
  {
    return 0x656C706F6570;
  }

  else
  {
    return 0x746361746E6F63;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactNLv3Intent.NLContactNounValue@<X0>(uint64_t *a1@<X8>)
{
  result = ContactNLv3Intent.NLContactNounValue.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ContactNLv3Intent.NLContactConfirmationValue.rawValue.getter()
{
  result = 7562617;
  switch(*v0)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 0x206D7269666E6F63;
      break;
    case 4:
      result = 0x63207463656A6572;
      break;
    default:
      return result;
  }

  return result;
}

SiriContactsIntents::ContactNLv3Intent::NLContactConfirmationValue_optional __swiftcall ContactNLv3Intent.NLContactConfirmationValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_11();
  v4._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactNLv3Intent.NLContactConfirmationValue.init(rawValue:), v4);
  result.value = OUTLINED_FUNCTION_69_1();
  v6 = 5;
  if (v3 < 5)
  {
    v6 = v3;
  }

  *v2 = v6;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactNLv3Intent.NLContactConfirmationValue@<X0>(uint64_t *a1@<X8>)
{
  result = ContactNLv3Intent.NLContactConfirmationValue.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriContactsIntents::ContactNLv3Intent::NLContactAttribute_optional __swiftcall ContactNLv3Intent.NLContactAttribute.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_11();
  v4._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactNLv3Intent.NLContactAttribute.init(rawValue:), v4);
  result.value = OUTLINED_FUNCTION_69_1();
  v6 = 9;
  if (v3 < 9)
  {
    v6 = v3;
  }

  *v2 = v6;
  return result;
}

uint64_t ContactNLv3Intent.NLContactAttribute.rawValue.getter()
{
  result = 0x73736572646441;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_56_3(0x6741u);
      break;
    case 2:
      result = OUTLINED_FUNCTION_41_6(0x6E41u);
      break;
    case 3:
      result = OUTLINED_FUNCTION_43_5(0x6942u);
      break;
    case 4:
      result = 1685217603;
      break;
    case 5:
      result = OUTLINED_FUNCTION_42_5(0x6F43u);
      break;
    case 6:
      result = OUTLINED_FUNCTION_54_2(27973);
      break;
    case 7:
      result = 1701667150;
      break;
    case 8:
      result = 0x656E6F6850;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactNLv3Intent.NLContactAttribute@<X0>(uint64_t *a1@<X8>)
{
  result = ContactNLv3Intent.NLContactAttribute.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriContactsIntents::ContactNLv3Intent::NLContactReferenceValue_optional __swiftcall ContactNLv3Intent.NLContactReferenceValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_46_4();
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v4 = 0;
  v5 = 20;
  switch(v2)
  {
    case 0:
      goto LABEL_34;
    case 1:
      v4 = 1;
      goto LABEL_34;
    case 2:
      v4 = 2;
      goto LABEL_34;
    case 3:
      v4 = 3;
      goto LABEL_34;
    case 4:
      v4 = 4;
      goto LABEL_34;
    case 5:
      v4 = 5;
      goto LABEL_34;
    case 6:
      v4 = 6;
      goto LABEL_34;
    case 7:
      v4 = 7;
      goto LABEL_34;
    case 8:
      v4 = 8;
      goto LABEL_34;
    case 9:
      v4 = 9;
      goto LABEL_34;
    case 10:
      v4 = 10;
      goto LABEL_34;
    case 11:
      v4 = 11;
      goto LABEL_34;
    case 12:
      v4 = 12;
      goto LABEL_34;
    case 13:
      v4 = 13;
      goto LABEL_34;
    case 14:
      v4 = 14;
      goto LABEL_34;
    case 15:
      v4 = 15;
      goto LABEL_34;
    case 16:
      v4 = 16;
      goto LABEL_34;
    case 17:
      v4 = 17;
      goto LABEL_34;
    case 18:
      v4 = 18;
      goto LABEL_34;
    case 19:
      v4 = 19;
LABEL_34:
      v5 = v4;
      break;
    case 20:
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    case 23:
      v5 = 23;
      break;
    case 24:
      v5 = 24;
      break;
    case 25:
      v5 = 25;
      break;
    case 26:
      v5 = 26;
      break;
    case 27:
      v5 = 27;
      break;
    case 28:
      v5 = 28;
      break;
    case 29:
      v5 = 29;
      break;
    case 30:
      v5 = 30;
      break;
    case 31:
      v5 = 31;
      break;
    case 32:
      v5 = 32;
      break;
    case 33:
      v5 = 33;
      break;
    case 34:
      v5 = 34;
      break;
    case 35:
      v5 = 35;
      break;
    case 36:
      v5 = 36;
      break;
    case 37:
      v5 = 37;
      break;
    default:
      v5 = 38;
      break;
  }

  *v1 = v5;
  return result;
}

uint64_t ContactNLv3Intent.NLContactReferenceValue.rawValue.getter()
{
  result = 0x7473726966;
  switch(*v0)
  {
    case 1:
      return 0x646E6F636573;
    case 2:
      return 0x6472696874;
    case 3:
      v6 = 1920298854;
      return v6 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 4:
      v4 = 1952868710;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 5:
      v4 = 1954048371;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 6:
      v3 = 0x746E65766573;
      return v3 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 7:
      v6 = 1751607653;
      return v6 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 8:
      return 0x68746E696ELL;
    case 9:
      v4 = 1953391988;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 0xA:
      return 0x68746E6576656C65;
    case 0xB:
      v3 = 0x74666C657774;
      return v3 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 0xC:
      v5 = 1919510644;
      return v5 | 0x6E65657400000000;
    case 0xD:
      v5 = 1920298854;
      return v5 | 0x6E65657400000000;
    case 0xE:
      v2 = 1952868710;
      return v2 | 0x746E656500000000;
    case 0xF:
      v2 = 1954048371;
      return v2 | 0x746E656500000000;
    case 0x10:
      return 0x6565746E65766573;
    case 0x11:
      v5 = 1751607653;
      return v5 | 0x6E65657400000000;
    case 0x12:
      v5 = 1701734766;
      return v5 | 0x6E65657400000000;
    case 0x13:
      return 0x746569746E657774;
    case 0x14:
    case 0x17:
    case 0x18:
      return 0x662079746E657774;
    case 0x15:
      return 0x732079746E657774;
    case 0x16:
      v7 = 0x79746E657774;
      goto LABEL_41;
    case 0x19:
      return 1953718636;
    case 0x1A:
      return 0x656C6464696DLL;
    case 0x1B:
      return 1954047342;
    case 0x1C:
      return 0x73756F6976657270;
    case 0x1D:
      v7 = 0x646E6F636573;
LABEL_41:
      result = v7 & 0xFFFFFFFFFFFFLL | 0x7420000000000000;
      break;
    case 0x1E:
      result = 0x6F74206472696874;
      break;
    case 0x1F:
      result = 6647407;
      break;
    case 0x20:
      result = 2037277037;
      break;
    case 0x21:
      result = 25960;
      break;
    case 0x22:
      result = OUTLINED_FUNCTION_56_3(0x6873u);
      break;
    case 0x23:
      result = 31085;
      break;
    case 0x24:
      result = 7958113;
      break;
    case 0x25:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactNLv3Intent.NLContactReferenceValue@<X0>(uint64_t *a1@<X8>)
{
  result = ContactNLv3Intent.NLContactReferenceValue.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance ContactNLv3Intent.NLContactAttributesValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v8 = a4();
  v9 = a5();
  a6();
  v10 = OUTLINED_FUNCTION_53_3();

  return MEMORY[0x2821C21F8](v10, v11, v8, v9, v12);
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for TerminalElement();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for TerminalElement();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

BOOL ContactNLv3Intent.containsAttribute(_:)()
{
  if (one-time initialization token for contactAttributes != -1)
  {
LABEL_14:
    OUTLINED_FUNCTION_8_11(&one-time initialization token for contactAttributes);
  }

  type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v0, v1, &protocol conformance descriptor for ContactNLv3Intent);
  OUTLINED_FUNCTION_22_0();
  v2 = IntentNodeTraversable.values<A>(forNode:)();
  v3 = 0;
  v4 = *(v2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    if (v3 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    ContactNLv3Intent.NLContactAttributesValue.rawValue.getter();
    v7 = v6;
    v9 = v8;
    ContactNLv3Intent.NLContactAttributesValue.rawValue.getter();
    if (v7 == v11 && v9 == v10)
    {

      break;
    }

    ++v3;
    OUTLINED_FUNCTION_61_1();
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((v13 & 1) == 0);

  return v4 != v5;
}

uint64_t ContactNLv3Intent.isForgetNickname.getter()
{
  if (one-time initialization token for contactVerb != -1)
  {
    OUTLINED_FUNCTION_3_10(&one-time initialization token for contactVerb);
  }

  type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v0, v1, &protocol conformance descriptor for ContactNLv3Intent);
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_22_0();
  IntentNodeTraversable.value<A>(forNode:)();
  if (v4 == 17)
  {
    v2 = 0;
  }

  else
  {
    v2 = specialized == infix<A>(_:_:)(v4, 15);
  }

  return v2 & 1;
}

uint64_t ContactNLv3Intent.hasNameAttribute.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContactNLv3Intent(0) + 24));
  ContactNLv3Intent.containsAttribute(_:)();
  if (v2)
  {
    return 1;
  }

  if (one-time initialization token for contactVerb != -1)
  {
    OUTLINED_FUNCTION_3_10(&one-time initialization token for contactVerb);
  }

  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v4, v5, &protocol conformance descriptor for ContactNLv3Intent);
  OUTLINED_FUNCTION_61_1();
  IntentNodeTraversable.value<A>(forNode:)();
  if (LOBYTE(v11[0]) == 17)
  {
    return 0;
  }

  OUTLINED_FUNCTION_61_1();
  result = IntentNodeTraversable.value<A>(forNode:)();
  if (v13 != 17)
  {
    v12 = v13;
    ContactNLv3Intent.NLContactVerbValue.rawValue.getter();
    v11[0] = v7;
    v11[1] = v8;
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_50_4();
    *(v9 - 16) = v11;
    v3 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v10, v1);

    return v3;
  }

  __break(1u);
  return result;
}

void ContactNLv3Intent.containsAttribute(_:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  if (one-time initialization token for contactAttributes != -1)
  {
LABEL_8:
    OUTLINED_FUNCTION_8_11(&one-time initialization token for contactAttributes);
  }

  type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v2, v3, &protocol conformance descriptor for ContactNLv3Intent);
  OUTLINED_FUNCTION_25_8();
  v4 = IntentNodeTraversable.values<A>(forNode:)();
  v5 = 0;
  v6 = *(v4 + 16);
  do
  {
    v7 = v5;
    if (v6 == v5)
    {
      break;
    }

    if (v5 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    ++v5;
    v14 = *(v4 + v7 + 32);
    ContactNLv3Intent.NLContactAttributesValue.rawValue.getter();
    v13[0] = v8;
    v13[1] = v9;
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_50_4();
    *(v10 - 16) = v13;
    v12 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v11, v1);
  }

  while (!v12);

  OUTLINED_FUNCTION_14();
}

BOOL ContactNLv3Intent.hasFullNameAttribute.getter()
{
  if (ContactNLv3Intent.containsAttribute(_:)())
  {
    return 1;
  }

  else
  {
    if (one-time initialization token for contactVerb != -1)
    {
      OUTLINED_FUNCTION_3_10(&one-time initialization token for contactVerb);
    }

    type metadata accessor for ContactNLv3Intent(0);
    OUTLINED_FUNCTION_0_34();
    _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v1, v2, &protocol conformance descriptor for ContactNLv3Intent);
    OUTLINED_FUNCTION_22_0();
    IntentNodeTraversable.value<A>(forNode:)();
    if (v5 == 17)
    {
      return 0;
    }

    OUTLINED_FUNCTION_22_0();
    IntentNodeTraversable.value<A>(forNode:)();
    return v4 != 17 && (specialized == infix<A>(_:_:)(v4, 14) & 1) != 0 && !ContactNLv3Intent.containsAttribute(_:)();
  }
}

Swift::Bool __swiftcall ContactNLv3Intent.containsContactType(_:)(Swift::OpaquePointer a1)
{
  if (one-time initialization token for contactType != -1)
  {
    OUTLINED_FUNCTION_7_7(&one-time initialization token for contactType);
  }

  type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v2, v3, &protocol conformance descriptor for ContactNLv3Intent);
  OUTLINED_FUNCTION_25_8();
  v4 = IntentNodeTraversable.value<A>(forNode:)();
  if (v9[1])
  {
    MEMORY[0x28223BE20](v4);
    OUTLINED_FUNCTION_50_4();
    *(v5 - 16) = v9;
    v7 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v6, a1._rawValue);
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t ContactNLv3Intent.confirmationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for contactConfirmation != -1)
  {
    OUTLINED_FUNCTION_10_20(&one-time initialization token for contactConfirmation);
  }

  type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v2, v3, &protocol conformance descriptor for ContactNLv3Intent);
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_25_8();
  IntentNodeTraversable.value<A>(forNode:)();
  if (((1 << v12) & 0x16) != 0)
  {
    v4 = MEMORY[0x277D5BED0];
  }

  else
  {
    if (((1 << v12) & 9) == 0)
    {
      type metadata accessor for ConfirmationResponse();
      v8 = OUTLINED_FUNCTION_36_5();
      return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
    }

    v4 = MEMORY[0x277D5BED8];
  }

  v5 = *v4;
  v6 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_10_1();
  (*(v7 + 104))(a1, v5, v6);
  v8 = a1;
  v9 = 0;
  v10 = v6;
  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

void ContactNLv3Intent.isRejection.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_1_0();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR) - 8;
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v34 = OUTLINED_FUNCTION_18_0(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_4();
  v37 = v35 - v36;
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &a9 - v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_27_8();
  ContactNLv3Intent.confirmationResponse.getter(v42);
  (*(v25 + 104))(v41, *MEMORY[0x277D5BED0], v23);
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v23);
  v43 = *(v29 + 56);
  outlined init with copy of ConfirmationResponse?(v20, v32);
  outlined init with copy of ConfirmationResponse?(v41, &v32[v43]);
  OUTLINED_FUNCTION_57(v32, 1, v23);
  if (!v44)
  {
    outlined init with copy of ConfirmationResponse?(v32, v37);
    OUTLINED_FUNCTION_57(&v32[v43], 1, v23);
    if (!v44)
    {
      (*(v25 + 32))(v28, &v32[v43], v23);
      _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type ConfirmationResponse and conformance ConfirmationResponse, MEMORY[0x277D5BEE0], MEMORY[0x277D5BEE8]);
      OUTLINED_FUNCTION_53_3();
      dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *(v25 + 8);
      v45(v28, v23);
      outlined destroy of Result<TemplatingResult, Error>(v41, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      outlined destroy of Result<TemplatingResult, Error>(v20, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      v45(v37, v23);
      v46 = OUTLINED_FUNCTION_25_8();
      outlined destroy of Result<TemplatingResult, Error>(v46, v47, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_68_2(v41);
    OUTLINED_FUNCTION_68_2(v20);
    (*(v25 + 8))(v37, v23);
LABEL_9:
    outlined destroy of Result<TemplatingResult, Error>(v32, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_68_2(v41);
  OUTLINED_FUNCTION_68_2(v20);
  OUTLINED_FUNCTION_57(&v32[v43], 1, v23);
  if (!v44)
  {
    goto LABEL_9;
  }

  outlined destroy of Result<TemplatingResult, Error>(v32, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
LABEL_10:
  OUTLINED_FUNCTION_14();
}

uint64_t ContactNLv3Intent.isContactDomain.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_18_0(v0);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - v2;
  type metadata accessor for ContactNLv3Intent(0);
  NLIntent.domainNode.getter();
  v4 = type metadata accessor for NonTerminalIntentNode();
  v5 = OUTLINED_FUNCTION_36_5();
  OUTLINED_FUNCTION_57(v5, v6, v4);
  if (v12)
  {
    outlined destroy of Result<TemplatingResult, Error>(v3, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    v7 = 0;
  }

  else
  {
    v8 = NonTerminalIntentNode.ontologyNodeName.getter();
    v10 = v9;
    OUTLINED_FUNCTION_52();
    (*(v11 + 8))(v3, v4);
    v12 = v8 == 0x746361746E6F63 && v10 == 0xE700000000000000;
    if (v12)
    {

      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v7 & 1;
}

BOOL ContactNLv3Intent.isCancel.getter()
{
  if (one-time initialization token for contactConfirmation != -1)
  {
    OUTLINED_FUNCTION_10_20(&one-time initialization token for contactConfirmation);
  }

  type metadata accessor for ContactNLv3Intent(0);
  OUTLINED_FUNCTION_0_34();
  _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(v0, v1, &protocol conformance descriptor for ContactNLv3Intent);
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_22_0();
  IntentNodeTraversable.value<A>(forNode:)();
  return v3 - 1 < 2;
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance ContactNLv3Intent(uint64_t a1)
{
  v2 = _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type ContactNLv3Intent and conformance ContactNLv3Intent, type metadata accessor for ContactNLv3Intent, &protocol conformance descriptor for ContactNLv3Intent);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance ContactNLv3Intent(uint64_t a1)
{
  v2 = _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type ContactNLv3Intent and conformance ContactNLv3Intent, type metadata accessor for ContactNLv3Intent, &protocol conformance descriptor for ContactNLv3Intent);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactNLv3Intent(uint64_t a1)
{
  v2 = _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type ContactNLv3Intent and conformance ContactNLv3Intent, type metadata accessor for ContactNLv3Intent, &protocol conformance descriptor for ContactNLv3Intent);

  return MEMORY[0x2821C0C70](a1, v2);
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_7_12();
  if (v4)
  {
    OUTLINED_FUNCTION_9_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_38_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_14();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_52_3(v2, v5, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMR);
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for DisplayHint();
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_37_6();
  if (v1)
  {
    OUTLINED_FUNCTION_18_9(MEMORY[0x277D5BAF8], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }
}

{
  OUTLINED_FUNCTION_7_12();
  if (v4)
  {
    OUTLINED_FUNCTION_9_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_38_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_14();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_52_3(v2, v5, &_ss23_ContiguousArrayStorageCy11SiriKitFlow13SemanticValueVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow13SemanticValueVGMR);
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_37_6();
  if (v1)
  {
    OUTLINED_FUNCTION_18_9(MEMORY[0x277D5BCB0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }
}

{
  OUTLINED_FUNCTION_7_12();
  if (v4)
  {
    OUTLINED_FUNCTION_9_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_38_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_14();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_52_3(v2, v5, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR);
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for RREntity();
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_37_6();
  if (v1)
  {
    OUTLINED_FUNCTION_18_9(MEMORY[0x277D5FEB0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }
}

{
  OUTLINED_FUNCTION_7_12();
  if (v4)
  {
    OUTLINED_FUNCTION_9_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_38_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_14();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_52_3(v2, v5, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_37_6();
  if (v1)
  {
    OUTLINED_FUNCTION_18_9(MEMORY[0x277D5DB80], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }
}

{
  OUTLINED_FUNCTION_7_12();
  if (v4)
  {
    OUTLINED_FUNCTION_9_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_38_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_14();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_52_3(v2, v5, &_ss23_ContiguousArrayStorageCy18SiriContactsCommon31GetContactAttributeSnippetModelV07DisplayI0VGMd, &_ss23_ContiguousArrayStorageCy18SiriContactsCommon31GetContactAttributeSnippetModelV07DisplayI0VGMR);
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for GetContactAttributeSnippetModel.DisplayAttribute();
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_37_6();
  if (v1)
  {
    OUTLINED_FUNCTION_18_9(MEMORY[0x277D55A90], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }
}

{
  OUTLINED_FUNCTION_7_12();
  if (v4)
  {
    OUTLINED_FUNCTION_9_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_38_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_14();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_52_3(v2, v5, &_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMR);
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for TemplatingSection();
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_37_6();
  if (v1)
  {
    OUTLINED_FUNCTION_18_9(MEMORY[0x277D5BDD8], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }
}

{
  OUTLINED_FUNCTION_7_12();
  if (v4)
  {
    OUTLINED_FUNCTION_9_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_38_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_14();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_52_3(v2, v5, &_ss23_ContiguousArrayStorageCy13SiriInference13ContactHandleVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference13ContactHandleVGMR);
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for ContactHandle();
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_37_6();
  if (v1)
  {
    OUTLINED_FUNCTION_18_9(MEMORY[0x277D56040], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }
}

{
  OUTLINED_FUNCTION_7_12();
  if (v4)
  {
    OUTLINED_FUNCTION_9_16();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_38_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_14();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_52_3(v2, v5, &_ss23_ContiguousArrayStorageCy13SiriInference7ContactVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference7ContactVGMR);
  OUTLINED_FUNCTION_29_7();
  type metadata accessor for Contact();
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_37_6();
  if (v1)
  {
    OUTLINED_FUNCTION_18_9(MEMORY[0x277D56178], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_10();
  }
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t result, uint64_t a2, char a3, char *a4)
{
  v7 = result;
  if (a3)
  {
    OUTLINED_FUNCTION_49_3();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48_3();
    }
  }

  OUTLINED_FUNCTION_47_4();
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v4;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v7)
  {
    if (v11 != a4 || &v14[16 * v4] <= v13)
    {
      memmove(v13, v14, 16 * v4);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  v7 = result;
  if (a3)
  {
    OUTLINED_FUNCTION_49_3();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48_3();
    }
  }

  OUTLINED_FUNCTION_47_4();
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v4;
    *(v13 + 3) = 2 * v14 - 64;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v13 != a4 || &v16[v4] <= v15)
    {
      memmove(v15, v16, v4);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v4);
  }
}

uint64_t type metadata accessor for ContactNLv3Intent(uint64_t a1)
{
  result = type metadata singleton initialization cache for ContactNLv3Intent;
  if (!type metadata singleton initialization cache for ContactNLv3Intent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4);
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t result, uint64_t a2, char a3, void *a4)
{
  v7 = result;
  if (a3)
  {
    OUTLINED_FUNCTION_49_3();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48_3();
    }
  }

  OUTLINED_FUNCTION_47_4();
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v4;
    v11[3] = 2 * ((v12 - 32) / 32);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v11 != a4 || &a4[4 * v4 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_43();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    OUTLINED_FUNCTION_43();
    swift_arrayInitWithCopy();
  }
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11SiriKitFlow11DisplayHintV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_29_7();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if ((result - v11) != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D5E4F0]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D5BCB0]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D5DD60]);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D56178]);
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)()
{
  OUTLINED_FUNCTION_63_1();
  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR), OUTLINED_FUNCTION_10_1(), v1 + *(v4 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      v5 = OUTLINED_FUNCTION_15_11();

      MEMORY[0x2821FE820](v5);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
    v6 = OUTLINED_FUNCTION_15_11();

    MEMORY[0x2821FE828](v6);
  }
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_20_8(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_20_8(a3, result);
  }

  return result;
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_63_1();
  if (v8 && (a4(0), OUTLINED_FUNCTION_10_1(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = OUTLINED_FUNCTION_15_11();

      MEMORY[0x2821FE820](v10);
    }
  }

  else
  {
    a4(0);
    v11 = OUTLINED_FUNCTION_15_11();

    MEMORY[0x2821FE828](v11);
  }
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t outlined init with copy of ConfirmationResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ContactNLv3Constants and conformance ContactNLv3Constants()
{
  result = lazy protocol witness table cache variable for type ContactNLv3Constants and conformance ContactNLv3Constants;
  if (!lazy protocol witness table cache variable for type ContactNLv3Constants and conformance ContactNLv3Constants)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Constants and conformance ContactNLv3Constants);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue()
{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttributesValue and conformance ContactNLv3Intent.NLContactAttributesValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue()
{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactVerbValue and conformance ContactNLv3Intent.NLContactVerbValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue()
{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactNounValue and conformance ContactNLv3Intent.NLContactNounValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue()
{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactConfirmationValue and conformance ContactNLv3Intent.NLContactConfirmationValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactNLv3Intent.NLContactAttribute and conformance ContactNLv3Intent.NLContactAttribute()
{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttribute and conformance ContactNLv3Intent.NLContactAttribute;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttribute and conformance ContactNLv3Intent.NLContactAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactAttribute and conformance ContactNLv3Intent.NLContactAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue()
{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue;
  if (!lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactNLv3Intent.NLContactReferenceValue and conformance ContactNLv3Intent.NLContactReferenceValue);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactNLv3Constants(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactNLv3Constants(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

void type metadata completion function for ContactNLv3Intent(uint64_t a1)
{
  type metadata accessor for DomainOntologyNode();
  if (v1 <= 0x3F)
  {
    type metadata accessor for NLIntent();
    if (v2 <= 0x3F)
    {
      type metadata accessor for [String]();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}

uint64_t getEnumTagSinglePayload for ContactNLv3Intent.NLContactAttributesValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xBB)
  {
    if (a2 + 69 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 69) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 70;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x46;
  v5 = v6 - 70;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactNLv3Intent.NLContactAttributesValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 69 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 69) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xBB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xBA)
  {
    v6 = ((a2 - 187) >> 8) + 1;
    *result = a2 + 69;
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
          *result = a2 + 69;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactNLv3Intent.NLContactVerbValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactNLv3Intent.NLContactVerbValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactNLv3Intent.NLContactNounValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactNLv3Intent.NLContactConfirmationValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactNLv3Intent.NLContactConfirmationValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactNLv3Intent.NLContactAttribute(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactNLv3Intent.NLContactReferenceValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDB)
  {
    if (a2 + 37 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 37) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 38;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v5 = v6 - 38;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactNLv3Intent.NLContactReferenceValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
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

uint64_t _s19SiriContactsIntents17ContactNLv3IntentVAC0A8Ontology0F15NodeTraversableAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_4_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_10()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_18_9(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v2 + a2, v4, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_35_6(uint64_t a1)
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_51_2@<W0>(char a1@<W8>)
{
  *(v1 - 1) = a1;

  return ContactNLv3Intent.containsAttribute(_:)();
}

void *OUTLINED_FUNCTION_52_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11SiriKitFlow11DisplayHintV_Tt1g5Tm(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_55_4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return lazy protocol witness table accessor for type BasicDisambiguationItemContainer<String> and conformance BasicDisambiguationItemContainer<A>(a1, v4, v5, a4);
}

uint64_t OUTLINED_FUNCTION_67_1(uint64_t a1, uint64_t a2)
{

  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t OUTLINED_FUNCTION_68_2(uint64_t a1)
{

  return outlined destroy of Result<TemplatingResult, Error>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_69_1()
{
}

uint64_t PluginPrewarmProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  PluginPrewarmProvider.init()();
  return v0;
}

void *PluginPrewarmProvider.init()()
{
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_8();
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.userInteractive.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_ss23_ContiguousArrayStorageCySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  *(swift_allocObject() + 16) = xmmword_266966D90;
  static OS_dispatch_queue.Attributes.concurrent.getter();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v6, *MEMORY[0x277D85260], v11);
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v9;
  return v0;
}

Swift::Void __swiftcall PluginPrewarmProvider.prewarm(refId:)(Swift::String refId)
{
  v2 = v1;
  object = refId._object;
  countAndFlagsBits = refId._countAndFlagsBits;
  v5 = *(v1 + 32);
  if (v5 && (*(v2 + 24) == refId._countAndFlagsBits ? (v6 = v5 == refId._object) : (v6 = 0), v6 || (OUTLINED_FUNCTION_47_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriContacts);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v9 = 136315138;
      v10 = OUTLINED_FUNCTION_47_0();
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v12);
      _os_log_impl(&dword_26686A000, oslog, v8, "[PluginPrewarmProvider] refId: %s already prewarmed", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }
  }

  else
  {
    *(v2 + 24) = countAndFlagsBits;
    *(v2 + 32) = object;

    v13 = one-time initialization token for siriContacts;

    if (v13 != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriContacts);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v17 = 136315138;
      v18 = OUTLINED_FUNCTION_47_0();
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v20);
      _os_log_impl(&dword_26686A000, v15, v16, "[PluginPrewarmProvider] for refId: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    PluginPrewarmProvider.prewarm()();
  }
}

uint64_t PluginPrewarmProvider.prewarm()()
{
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_0();
  v17 = v3;
  v18 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v23 = closure #1 in PluginPrewarmProvider.prewarm();
  v24 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v22 = &block_descriptor_0;
  v8 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_3_15();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v9 = OUTLINED_FUNCTION_5_25();
  MEMORY[0x26D5E2760](v9);
  _Block_release(v8);
  v10 = *(v1 + 8);
  v11 = OUTLINED_FUNCTION_47_0();
  v10(v11);
  v12 = *(v18 + 8);
  v12(v7, v17);
  v23 = closure #2 in PluginPrewarmProvider.prewarm();
  v24 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v22 = &block_descriptor_7;
  v13 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_3_15();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = OUTLINED_FUNCTION_5_25();
  MEMORY[0x26D5E2760](v14);
  _Block_release(v13);
  v15 = OUTLINED_FUNCTION_47_0();
  v10(v15);
  return (v12)(v7, v17);
}

uint64_t closure #1 in PluginPrewarmProvider.prewarm()()
{
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriContacts);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26686A000, v1, v2, "[PluginPrewarmProvider] ContactResolver.refreshSharedCache()", v3, 2u);
    MEMORY[0x26D5E3300](v3, -1, -1);
  }

  type metadata accessor for ContactResolver();
  return static ContactResolver.refreshSharedCache()();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t closure #2 in PluginPrewarmProvider.prewarm()()
{
  v28[1] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v0);
  v2 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v3 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v4 = static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v4, &dword_26686A000, v3, "PrewarmVision", 13, 2, v2, "enableTelemetry=YES", 19, 2, MEMORY[0x277D84F90]);
  v5 = &v2[*(v0 + 20)];
  *v5 = "PrewarmVision";
  *(v5 + 1) = 13;
  v5[16] = 2;
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriContacts);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26686A000, v7, v8, "[PluginPrewarmProvider] prewarmVision", v9, 2u);
    MEMORY[0x26D5E3300](v9, -1, -1);
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CE2D00]) init];
  [v10 setRevision_];
  v11 = [objc_opt_self() globalSession];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_266966A40;
  *(v12 + 32) = v10;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for VNRequest, 0x277CE2DF0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v28[0] = 0;
  v14 = [v11 prepareForPerformingRequests:isa error:v28];

  if (v14)
  {
    v15 = v28[0];
  }

  else
  {
    v16 = v28[0];
    v17 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v18 = v17;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_26686A000, v19, v20, "[PluginPrewarmProvider] prewarmVision encountered error: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x26D5E3300](v22, -1, -1);
      MEMORY[0x26D5E3300](v21, -1, -1);
    }

    else
    {
    }
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return outlined destroy of Signpost.OpenSignpost(v2);
}

uint64_t PluginPrewarmProvider.__deallocating_deinit()
{
  PluginPrewarmProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GenericViews.buildConfirmationViewForMacAndCarPlay(contactAttributeType:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  v17 = xmmword_266966A40;
  *(v6 + 16) = xmmword_266966A40;
  v7 = swift_allocObject();
  *(v7 + 16) = v17;
  *(v7 + 32) = static ContactsDirectInvocations.confirm()();
  v8 = GenericViews.getConfirmText(forAttribute:)(a1);
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v17;
  *(v11 + 32) = static ContactsDirectInvocations.deny()();
  ContactsLabelCATs.cancel()();
  v12 = Result<>.firstPrint.getter();
  v14 = v13;
  outlined destroy of Result<TemplatingResult, Error>(v5);
  if (!v14)
  {
    v12 = static String.EMPTY.getter();
    v14 = v15;
  }

  type metadata accessor for SAUIConfirmationView();
  *(v6 + 32) = SAUIConfirmationView.init(confirmCommands:confirmText:denyCommands:denyText:)(v7, v8, v10, v11, v12, v14);
  return v6;
}

uint64_t GenericViews.getConfirmText(forAttribute:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  if (a1 == 6)
  {
    ContactsLabelCATs.save()();
    v8 = Result<>.firstPrint.getter();
    v10 = v12;
    v11 = v5;
  }

  else
  {
    if (a1 != 10)
    {
      return static String.EMPTY.getter();
    }

    ContactsLabelCATs.yes()();
    v8 = Result<>.firstPrint.getter();
    v10 = v9;
    v11 = v7;
  }

  outlined destroy of Result<TemplatingResult, Error>(v11);
  if (!v10)
  {
    return static String.EMPTY.getter();
  }

  return v8;
}

unint64_t type metadata accessor for SAUIConfirmationView()
{
  result = lazy cache variable for type metadata for SAUIConfirmationView;
  if (!lazy cache variable for type metadata for SAUIConfirmationView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAUIConfirmationView);
  }

  return result;
}

uint64_t DialogLocationAddress.init(postalAddress:localeString:)(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for CATOption();
  MEMORY[0x28223BE20](v6 - 8);
  if (a1)
  {
    v7 = type metadata accessor for DialogLocationAddress.Builder();
    OUTLINED_FUNCTION_2_6(v7);
    v8 = a1;
    DialogLocationAddress.Builder.init()();
    type metadata accessor for ContactsLabelCATs(0);
    static CATOption.defaultMode.getter();
    v9 = CATWrapper.__allocating_init(options:globals:)();
    v10 = outlined bridged method (pb) of @objc PostalAddress.handleLabel.getter(v8);
    if (v11)
    {
      v10 = String.sanitizeCNLabel.getter();
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v16 = LabelMapper.localizedLabel(handleLabel:localeString:type:)(v10, v13, a2, a3, 3, v9);

    dispatch thunk of DialogLocationAddress.Builder.withName(print:speak:)();

    outlined bridged method (pb) of @objc PostalAddress.country.getter(v8);
    Optional<A>.emptyToNil.getter();
    OUTLINED_FUNCTION_1_29();
    if (v16)
    {
      OUTLINED_FUNCTION_0_35();
      dispatch thunk of DialogLocationAddress.Builder.withCountry(print:speak:)();
      OUTLINED_FUNCTION_2_32();
    }

    outlined bridged method (pb) of @objc PostalAddress.isoCountryCode.getter(v8);
    Optional<A>.emptyToNil.getter();
    OUTLINED_FUNCTION_1_29();
    if (v16)
    {
      OUTLINED_FUNCTION_0_35();
      dispatch thunk of DialogLocationAddress.Builder.withCountryCode(print:speak:)();
      OUTLINED_FUNCTION_2_32();
    }

    outlined bridged method (pb) of @objc PostalAddress.state.getter(v8);
    Optional<A>.emptyToNil.getter();
    v18 = v17;

    if (v18)
    {
      OUTLINED_FUNCTION_3_16();
      dispatch thunk of DialogLocationAddress.Builder.withAdministrativeArea(print:speak:)();
      OUTLINED_FUNCTION_3_16();
      dispatch thunk of DialogLocationAddress.Builder.withAdministrativeAreaCode(print:speak:)();
    }

    outlined bridged method (pb) of @objc PostalAddress.subAdministrativeArea.getter(v8);
    Optional<A>.emptyToNil.getter();
    OUTLINED_FUNCTION_1_29();
    if (v18)
    {
      OUTLINED_FUNCTION_0_35();
      dispatch thunk of DialogLocationAddress.Builder.withSubAdministrativeArea(print:speak:)();
      OUTLINED_FUNCTION_2_32();
    }

    outlined bridged method (pb) of @objc PostalAddress.city.getter(v8);
    Optional<A>.emptyToNil.getter();
    OUTLINED_FUNCTION_1_29();
    if (v18)
    {
      OUTLINED_FUNCTION_0_35();
      dispatch thunk of DialogLocationAddress.Builder.withLocality(print:speak:)();
      OUTLINED_FUNCTION_2_32();
    }

    outlined bridged method (pb) of @objc PostalAddress.postalCode.getter(v8);
    Optional<A>.emptyToNil.getter();
    OUTLINED_FUNCTION_1_29();
    if (v18)
    {
      OUTLINED_FUNCTION_0_35();
      dispatch thunk of DialogLocationAddress.Builder.withPostCode(print:speak:)();
      OUTLINED_FUNCTION_2_32();
    }

    outlined bridged method (pb) of @objc PostalAddress.street.getter(v8);
    Optional<A>.emptyToNil.getter();
    OUTLINED_FUNCTION_1_29();
    if (v18)
    {
      OUTLINED_FUNCTION_0_35();
      dispatch thunk of DialogLocationAddress.Builder.withThoroughfare(print:speak:)();
      OUTLINED_FUNCTION_2_32();
    }

    v19 = dispatch thunk of DialogLocationAddress.__allocating_init(builder:)();

    return v19;
  }

  else
  {

    v14 = type metadata accessor for DialogLocationAddress.Builder();
    OUTLINED_FUNCTION_2_6(v14);
    DialogLocationAddress.Builder.init()();

    return dispatch thunk of DialogLocationAddress.__allocating_init(builder:)();
  }
}

uint64_t DialogLocation.init(locationAddress:)(uint64_t a1)
{
  v1 = type metadata accessor for DialogLocation.Builder();
  OUTLINED_FUNCTION_2_6(v1);
  DialogLocation.Builder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_266966A40;
  v3 = type metadata accessor for DialogLocationValue.Builder();
  OUTLINED_FUNCTION_2_6(v3);
  DialogLocationValue.Builder.init()();

  dispatch thunk of DialogLocationValue.Builder.withAddress(_:)();

  v4 = dispatch thunk of DialogLocationValue.Builder.build()();

  *(v2 + 32) = v4;
  dispatch thunk of DialogLocation.Builder.withValues(_:)();

  v5 = dispatch thunk of DialogLocation.__allocating_init(builder:)();

  return v5;
}

uint64_t OUTLINED_FUNCTION_1_29()
{
}

uint64_t OUTLINED_FUNCTION_2_32()
{
}

id GetContactIntentHandler.__allocating_init(contactService:contactResolver:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v8 = a1[3];
  v7 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = specialized GetContactIntentHandler.init(contactService:contactResolver:)(v11, v17, v6, v8, v13, v7, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v19;
}

uint64_t GetContactIntentHandler.resolveSiriMatches(for:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = type metadata accessor for Signpost.OpenSignpost(0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](GetContactIntentHandler.resolveSiriMatches(for:), 0, 0);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  v5 = static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_3_17(v5);
  v6 = v1 + *(v2 + 20);
  *v6 = "ResolveSiriMatchesGetContact";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = specialized BaseIntentHandler.resolveSiriMatches(for:)(v3);
  v8 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_3_17(v8);
  outlined destroy of Signpost.OpenSignpost(v1);

  v9 = v0[1];

  return v9(v7);
}

uint64_t @objc closure #1 in GetContactIntentHandler.resolveSiriMatches(for:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in GetContactIntentHandler.resolveSiriMatches(for:);

  return GetContactIntentHandler.resolveSiriMatches(for:)();
}

uint64_t @objc closure #1 in GetContactIntentHandler.resolveSiriMatches(for:)()
{
  OUTLINED_FUNCTION_41();
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  type metadata accessor for GetContactSiriMatchesResolutionResult();
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v7 = *(v4 + 8);

  return v7();
}

uint64_t GetContactIntentHandler.confirm(intent:)()
{
  return MEMORY[0x2822009F8](GetContactIntentHandler.confirm(intent:), 0, 0);
}

{
  OUTLINED_FUNCTION_4();
  objc_allocWithZone(type metadata accessor for GetContactIntentResponse());
  v1 = GetContactIntentResponse.init(code:userActivity:)(4, 0);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t @objc closure #1 in GetContactIntentHandler.confirm(intent:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in GetContactIntentHandler.confirm(intent:);

  return GetContactIntentHandler.confirm(intent:)();
}

uint64_t GetContactIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v0[3] = type metadata accessor for Signpost.OpenSignpost(0);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](GetContactIntentHandler.handle(intent:), 0, 0);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v2 = v0[3];
    v1 = v0[4];
    static Signpost.contactsLog;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v3 = v1 + *(v2 + 20);
    *v3 = "HandleGetContact";
    *(v3 + 8) = 16;
    *(v3 + 16) = 2;
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v4 = v0[2];
    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriContacts);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[2];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v9;
      *v11 = v9;
      v12 = v9;
      _os_log_impl(&dword_26686A000, v7, v8, "[GetContactIntent] Handling intent: %@", v10, 0xCu);
      outlined destroy of NSObject?(v11);
      MEMORY[0x26D5E3300](v11, -1, -1);
      MEMORY[0x26D5E3300](v10, -1, -1);
    }

    v13 = v0[2];

    Contact = outlined bridged method (pb) of @objc GetContactIntent.siriMatches.getter(v13);
    if (!Contact)
    {
      break;
    }

    v15 = Contact;
    v16 = specialized Array._getCount()();
    v17 = 0;
    v35 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v16 == v17)
      {

        v30 = v35;
        goto LABEL_22;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D5E29D0](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = outlined bridged method (pb) of @objc INObject.identifier.getter(v18);
      v23 = v22;

      ++v17;
      if (v23)
      {
        v24 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 16) + 1, 1, v35);
          v24 = v28;
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        v35 = v24;
        if (v26 >= v25 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1, v24);
          v35 = v29;
        }

        *(v35 + 16) = v26 + 1;
        v27 = v35 + 16 * v26;
        *(v27 + 32) = v21;
        *(v27 + 40) = v23;
        v17 = v20;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_30_2(&one-time initialization token for contactsLog);
  }

  v30 = 0;
LABEL_22:
  v31 = v0[4];
  type metadata accessor for GetContactIntentResponse();
  v32 = GetContactIntentResponse.__allocating_init(contactIdentifiers:code:)(v30, 4);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v31);

  v33 = v0[1];

  return v33(v32);
}

uint64_t @objc GetContactIntentHandler.resolveSiriMatches(for:)(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return _runTaskForBridgedAsyncMethod(_:)(a6, v10);
}

uint64_t @objc closure #1 in GetContactIntentHandler.handle(intent:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in GetContactIntentHandler.handle(intent:);

  return GetContactIntentHandler.handle(intent:)();
}

uint64_t @objc closure #1 in GetContactIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_0();
  *v7 = v6;

  (v3)[2](v3, v2);
  _Block_release(v3);

  v8 = *(v6 + 8);

  return v8();
}

id GetContactIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetContactIntentHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GetContactIntentHandler(uint64_t a1)
{
  result = type metadata singleton initialization cache for GetContactIntentHandler;
  if (!type metadata singleton initialization cache for GetContactIntentHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for @objc closure #1 in GetContactIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_41();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_0_36(v1);

  return v3(v2);
}

uint64_t partial apply for @objc closure #1 in GetContactIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_41();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_0_36(v1);

  return v3(v2);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in GetContactIntentHandler.resolveSiriMatches(for:)()
{
  OUTLINED_FUNCTION_41();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_0_36(v1);

  return v3(v2);
}

{
  OUTLINED_FUNCTION_4();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

id specialized GetContactIntentHandler.init(contactService:contactResolver:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v28 = a7;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v27 - v16;
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v27 - v23;
  (*(v19 + 32))(&v27 - v23);
  (*(v11 + 32))(v17, a2, a5);
  (*(v19 + 16))(v22, v24, a4);
  (*(v11 + 16))(v14, v17, a5);
  v25 = specialized BaseIntentHandler.init(contactService:contactResolver:)(v22, v14, a3, a4, a5, v27, v28);
  (*(v11 + 8))(v17, a5);
  (*(v19 + 8))(v24, a4);
  return v25;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_3_17(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t ContactsAgeInfo.Builder.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = 0;
  return result;
}

uint64_t ContactsAgeInfo.Builder.withAge(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
}

uint64_t ContactsAgeInfo.Builder.withPastAge(_:)(uint64_t a1)
{
  *(v1 + 40) = a1;
}

uint64_t ContactsAgeInfo.Builder.withFutureAge(_:)(uint64_t a1)
{
  *(v1 + 48) = a1;
}

uint64_t ContactsAgeInfo.Builder.withRequestedDate(_:)(uint64_t a1)
{
  *(v1 + 56) = a1;
}

uint64_t ContactsAgeInfo.Builder.deinit()
{

  return v0;
}

uint64_t ContactsAgeInfo.Builder.__deallocating_deinit()
{
  ContactsAgeInfo.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t ContactsAgeInfo.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = *(a1 + 16);
  v2 = *(a1 + 32);
  *(v1 + 32) = *(a1 + 24);
  *(v1 + 40) = v2;
  *(v1 + 48) = *(a1 + 40);
  *(v1 + 56) = *(a1 + 48);
  v3 = *(a1 + 56);

  *(v1 + 64) = v3;
  return v1;
}

double ContactsAgeInfo.getProperty(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 6645601 && a2 == 0xE300000000000000;
  if (!v5 && (OUTLINED_FUNCTION_5_26(6645601, 0xE300000000000000) & 1) == 0)
  {
    v11 = a1 == 0xD000000000000013 && 0x800000026696E8A0 == a2;
    if (v11 || (OUTLINED_FUNCTION_5_26(0xD000000000000013, 0x800000026696E8A0) & 1) != 0)
    {
      if ((*(v3 + 40) & 1) == 0)
      {
        result = *(v3 + 32);
        *(a3 + 24) = MEMORY[0x277D839F8];
        *a3 = result;
        return result;
      }
    }

    else
    {
      v12 = a1 == 0x65674174736170 && a2 == 0xE700000000000000;
      if (v12 || (OUTLINED_FUNCTION_5_26(0x65674174736170, 0xE700000000000000) & 1) != 0)
      {
        v8 = *(v3 + 48);
        if (v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v13 = a1 == 0x6741657275747566 && a2 == 0xE900000000000065;
        if (v13 || (OUTLINED_FUNCTION_5_26(0x6741657275747566, 0xE900000000000065) & 1) != 0)
        {
          v8 = *(v3 + 56);
          if (v8)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v14 = OUTLINED_FUNCTION_6_22();
          v16 = a1 == v14 && a2 == v15;
          if (v16 || (OUTLINED_FUNCTION_5_26(v14, v15) & 1) != 0)
          {
            v8 = *(v3 + 64);
            if (v8)
            {
              v9 = type metadata accessor for DialogCalendar();
              goto LABEL_8;
            }
          }
        }
      }
    }

LABEL_17:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = *(v3 + 24);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_7:
  v9 = type metadata accessor for DialogDuration();
LABEL_8:
  *(a3 + 24) = v9;
  *a3 = v8;

  return result;
}

SiriContactsIntents::ContactsAgeInfo::CodingKeys_optional __swiftcall ContactsAgeInfo.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactsAgeInfo.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t ContactsAgeInfo.CodingKeys.stringValue.getter(char a1)
{
  result = 6645601;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x65674174736170;
      break;
    case 3:
      result = 0x6741657275747566;
      break;
    case 4:
      result = OUTLINED_FUNCTION_6_22();
      break;
    default:
      return result;
  }

  return result;
}

SiriContactsIntents::ContactsAgeInfo::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ContactsAgeInfo.CodingKeys@<W0>(Swift::String *a1@<X0>, SiriContactsIntents::ContactsAgeInfo::CodingKeys_optional *a2@<X8>)
{
  result.value = ContactsAgeInfo.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactsAgeInfo.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ContactsAgeInfo.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

SiriContactsIntents::ContactsAgeInfo::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance ContactsAgeInfo.CodingKeys@<W0>(uint64_t a1@<X0>, SiriContactsIntents::ContactsAgeInfo::CodingKeys_optional *a2@<X8>)
{
  result.value = ContactsAgeInfo.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsAgeInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsAgeInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactsAgeInfo.deinit()
{

  return v0;
}

uint64_t ContactsAgeInfo.__deallocating_deinit()
{
  ContactsAgeInfo.deinit();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t ContactsAgeInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriContactsIntents0E7AgeInfoC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy19SiriContactsIntents0E7AgeInfoC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v3[3];
  HIBYTE(v16) = 0;
  type metadata accessor for DialogDuration();
  OUTLINED_FUNCTION_4_23();
  lazy protocol witness table accessor for type ContactsAgeInfo and conformance ContactsAgeInfo(v11, 255, v12, MEMORY[0x277D55BB8]);
  OUTLINED_FUNCTION_1_30();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v3[6];
    HIBYTE(v16) = 2;
    OUTLINED_FUNCTION_1_30();
    v17 = v3[7];
    HIBYTE(v16) = 3;
    OUTLINED_FUNCTION_1_30();
    v17 = v3[8];
    HIBYTE(v16) = 4;
    type metadata accessor for DialogCalendar();
    OUTLINED_FUNCTION_3_18();
    lazy protocol witness table accessor for type ContactsAgeInfo and conformance ContactsAgeInfo(v13, 255, v14, MEMORY[0x277D55B98]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t ContactsAgeInfo.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ContactsAgeInfo.init(from:)(a1);
  return v2;
}

uint64_t ContactsAgeInfo.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriContactsIntents0E7AgeInfoC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy19SiriContactsIntents0E7AgeInfoC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v4);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for ContactsAgeInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for DialogDuration();
    OUTLINED_FUNCTION_4_23();
    lazy protocol witness table accessor for type ContactsAgeInfo and conformance ContactsAgeInfo(v5, 255, v6, MEMORY[0x277D55BC0]);
    OUTLINED_FUNCTION_0_37();
    *(v1 + 24) = v13;
    LOBYTE(v13) = 1;
    *(v1 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 40) = v8 & 1;
    OUTLINED_FUNCTION_0_37();
    *(v1 + 48) = v13;
    OUTLINED_FUNCTION_0_37();
    *(v1 + 56) = v13;
    type metadata accessor for DialogCalendar();
    OUTLINED_FUNCTION_3_18();
    lazy protocol witness table accessor for type ContactsAgeInfo and conformance ContactsAgeInfo(v9, 255, v10, MEMORY[0x277D55BA0]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = OUTLINED_FUNCTION_2_33();
    v12(v11);
    *(v1 + 64) = v13;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ContactsAgeInfo@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContactsAgeInfo.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsAgeInfo.CodingKeys and conformance ContactsAgeInfo.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContactsAgeInfo and conformance ContactsAgeInfo(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

_BYTE *storeEnumTagSinglePayload for ContactsAgeInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_37()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_1_30()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_5_26(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[55] = v2;
  v1[56] = v0;
  v1[54] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v1[57] = OUTLINED_FUNCTION_10_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  v1[58] = OUTLINED_FUNCTION_10_0();
  v6 = type metadata accessor for TemplatingResult();
  v1[59] = v6;
  OUTLINED_FUNCTION_1_1(v6);
  v1[60] = v7;
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents25GetContactAttributeIntentCGMR);
  v1[66] = v8;
  OUTLINED_FUNCTION_1_1(v8);
  v1[67] = v9;
  v1[68] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v81 = v0;
  v1 = ParameterResolutionRecord.result.getter();
  v2 = [v1 unsupportedReason];

  LOBYTE(v3) = SiriKitContactUnsupportedReason.init(rawValue:)(v2);
  v4 = v3;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v5 = OUTLINED_FUNCTION_62_1();
  __swift_project_value_buffer(v5, static Logger.siriContacts);
  v6 = OUTLINED_FUNCTION_58_2();
  v7(v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_74_1();
    v78 = swift_slowAlloc();
    v80 = v78;
    *v4 = 136315650;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026696F160, &v80);
    OUTLINED_FUNCTION_65_2(v11);
    *(v0 + 680) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMd, &_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMR);
    v13 = Optional.debugDescription.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v80);

    v15 = OUTLINED_FUNCTION_64_1();
    v16 = OUTLINED_FUNCTION_36_6();
    v17(v16);
    *(v4 + 24) = v15;
    *v10 = v15;
    OUTLINED_FUNCTION_80_0(&dword_26686A000, v18, v19, "#ContactsUnsupportedValueStrategyAsync<%s> Processing unsupported reason: %s in intentResolutionResult: %@");
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_79_1(v20, v21, v22, v23, v24, v25, v26, v27, v77, v78);
    OUTLINED_FUNCTION_6();
    LOBYTE(v4) = v79;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v28 = OUTLINED_FUNCTION_36_6();
    v29(v28);
  }

  if (specialized ContactsStrategy.isSmartEnabled.getter())
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v31))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v32, v33, "#ContactsUnsupportedValueStrategy makeIntentHandledResponse SMART enabled but not yet implemented for the intent");
      OUTLINED_FUNCTION_6();
    }
  }

  switch(v4)
  {
    case 0:
      OUTLINED_FUNCTION_49_4();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 592) = v34;
      *v34 = v35;
      v34[1] = specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.unsupportedAuthFailed()();
      break;
    case 1:
      v63 = *(v0 + 448);
      v64 = *(v63 + 104);
      outlined init with copy of DeviceState(v63 + 16, v0 + 352);
      *(v0 + 681) = *(v63 + 112);

      v65 = ParameterResolutionRecord.intent.getter();
      v66 = [v65 isMe];

      if (v66)
      {
        [v66 BOOLValue];
      }

      v70 = *(v0 + 432);
      v71 = type metadata accessor for AceOutput();
      v72 = MEMORY[0x277D5C1D8];
      v70[3] = v71;
      v70[4] = v72;
      *(v0 + 608) = __swift_allocate_boxed_opaque_existential_1(v70);
      outlined init with copy of DeviceState(v0 + 352, v0 + 104);
      *(v0 + 176) = &type metadata for InstalledAppsProvider;
      *(v0 + 184) = &protocol witness table for InstalledAppsProvider;
      *(v0 + 144) = v64;
      specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
      *(v0 + 616) = v73;
      outlined destroy of MissingMeCardViewBuilder(v0 + 104);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 624) = v74;
      *v74 = v75;
      OUTLINED_FUNCTION_61_2(v74);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:)();
      break;
    case 2:
      v41 = *(v0 + 432);
      *(v0 + 552) = ParameterResolutionRecord.intent.getter();
      v42 = type metadata accessor for AceOutput();
      v43 = MEMORY[0x277D5C1D8];
      v41[3] = v42;
      v41[4] = v43;
      __swift_allocate_boxed_opaque_existential_1(v41);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 560) = v44;
      *v44 = v45;
      OUTLINED_FUNCTION_25_2(v44);
      OUTLINED_FUNCTION_10_9();

      result = specialized ContactsUnsupportedValueStrategy.noContactsFound(intent:)(v46, v47);
      break;
    case 3:
      v49 = ParameterResolutionRecord.intent.getter();
      *(v0 + 640) = v49;
      ObjectType = swift_getObjectType();
      dynamic_cast_existential_1_unconditional(v49, ObjectType, &protocol descriptor for SiriKitGetEntityIntent);
      v52 = v51;
      v53 = swift_getObjectType();
      v54 = (*(v52 + 40))(v53, v52);
      if (!v55)
      {
        v54 = static String.EMPTY.getter();
      }

      OUTLINED_FUNCTION_75_0(v54, v55);
      type metadata accessor for SpeakableString();
      OUTLINED_FUNCTION_67_2();
      OUTLINED_FUNCTION_50();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 648) = v60;
      *v60 = v61;
      OUTLINED_FUNCTION_59_4(v60);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.unsupportedCompanyNotFound(requestedCompany:)();
      break;
    case 4:
      OUTLINED_FUNCTION_49_4();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 576) = v38;
      *v38 = v39;
      v38[1] = specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.unsupportedRelationshipNotFound()();
      break;
    default:
      OUTLINED_FUNCTION_49_4();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 664) = v67;
      *v67 = v68;
      v67[1] = specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.unsupportedAction()();
      break;
  }

  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 584) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 600) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 632) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 656) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 672) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  v83 = v0;
  v1 = ParameterResolutionRecord.result.getter();
  v2 = [v1 unsupportedReason];

  LOBYTE(v3) = SiriKitContactUnsupportedReason.init(rawValue:)(v2);
  v4 = v3;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v5 = OUTLINED_FUNCTION_62_1();
  __swift_project_value_buffer(v5, static Logger.siriContacts);
  v6 = OUTLINED_FUNCTION_58_2();
  v7(v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_74_1();
    v80 = swift_slowAlloc();
    v82 = v80;
    *v4 = 136315650;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266970710, &v82);
    OUTLINED_FUNCTION_65_2(v11);
    *(v0 + 704) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMd, &_s19SiriContactsIntents0A27KitContactUnsupportedReasonOSgMR);
    v13 = Optional.debugDescription.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v82);

    v15 = OUTLINED_FUNCTION_64_1();
    v16 = OUTLINED_FUNCTION_36_6();
    v17(v16);
    *(v4 + 24) = v15;
    *v10 = v15;
    OUTLINED_FUNCTION_80_0(&dword_26686A000, v18, v19, "#ContactsUnsupportedValueStrategyAsync<%s> Processing unsupported reason: %s in intentResolutionResult: %@");
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_79_1(v20, v21, v22, v23, v24, v25, v26, v27, v79, v80);
    OUTLINED_FUNCTION_6();
    LOBYTE(v4) = v81;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v28 = OUTLINED_FUNCTION_36_6();
    v29(v28);
  }

  if (specialized ContactsStrategy.isSmartEnabled.getter())
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v31))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v32, v33, "#ContactsUnsupportedValueStrategy makeIntentHandledResponse SMART enabled but not yet implemented for the intent");
      OUTLINED_FUNCTION_6();
    }
  }

  switch(v4)
  {
    case 0:
      OUTLINED_FUNCTION_49_4();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 600) = v34;
      *v34 = v35;
      v34[1] = specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.unsupportedAuthFailed()();
      break;
    case 1:
      v60 = *(v0 + 448);
      v61 = *(v60 + 104);
      outlined init with copy of DeviceState(v60 + 16, v0 + 352);
      *(v0 + 705) = *(v60 + 112);

      type metadata accessor for NSNumber();
      isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
      [(objc_class *)isa BOOLValue];

      v63 = type metadata accessor for AceOutput();
      *(v0 + 616) = OUTLINED_FUNCTION_82_1(v63, MEMORY[0x277D5C1D8]);
      outlined init with copy of DeviceState(v0 + 352, v0 + 104);
      *(v0 + 176) = &type metadata for InstalledAppsProvider;
      *(v0 + 184) = &protocol witness table for InstalledAppsProvider;
      *(v0 + 144) = v61;
      specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
      *(v0 + 624) = v64;
      outlined destroy of MissingMeCardViewBuilder(v0 + 104);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 632) = v65;
      *v65 = v66;
      OUTLINED_FUNCTION_61_2(v65);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:)();
      break;
    case 2:
      v41 = *(v0 + 432);
      *(v0 + 552) = ParameterResolutionRecord.intent.getter();
      v42 = type metadata accessor for AceOutput();
      v43 = MEMORY[0x277D5C1D8];
      v41[3] = v42;
      v41[4] = v43;
      __swift_allocate_boxed_opaque_existential_1(v41);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 560) = v44;
      *v44 = v45;
      OUTLINED_FUNCTION_25_2(v44);
      goto LABEL_31;
    case 3:
      v46 = ParameterResolutionRecord.intent.getter();
      *(v0 + 576) = v46;
      ObjectType = swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v46, ObjectType, &protocol descriptor for SiriKitGetEntityIntent))
      {
        v49 = v48;
        v50 = swift_getObjectType();
        v51 = (*(v49 + 40))(v50, v49);
        if (!v52)
        {
          v51 = static String.EMPTY.getter();
        }

        OUTLINED_FUNCTION_75_0(v51, v52);
        type metadata accessor for SpeakableString();
        OUTLINED_FUNCTION_67_2();
        OUTLINED_FUNCTION_50();
        __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
        swift_task_alloc();
        OUTLINED_FUNCTION_36_0();
        *(v0 + 672) = v57;
        *v57 = v58;
        OUTLINED_FUNCTION_59_4(v57);
        OUTLINED_FUNCTION_10_9();

        result = ContactsCommonCATs.unsupportedCompanyNotFound(requestedCompany:)();
      }

      else
      {
        v71 = *(v0 + 432);

        *(v0 + 648) = ParameterResolutionRecord.intent.getter();
        v72 = type metadata accessor for AceOutput();
        v73 = MEMORY[0x277D5C1D8];
        v71[3] = v72;
        v71[4] = v73;
        __swift_allocate_boxed_opaque_existential_1(v71);
        swift_task_alloc();
        OUTLINED_FUNCTION_36_0();
        *(v0 + 656) = v74;
        *v74 = v75;
        OUTLINED_FUNCTION_25_2(v74);
LABEL_31:
        OUTLINED_FUNCTION_10_9();

        result = specialized ContactsUnsupportedValueStrategy.noContactsFound(intent:)(v76, v77);
      }

      break;
    case 4:
      OUTLINED_FUNCTION_49_4();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 584) = v38;
      *v38 = v39;
      v38[1] = specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.unsupportedRelationshipNotFound()();
      break;
    default:
      OUTLINED_FUNCTION_49_4();
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 688) = v68;
      *v68 = v69;
      v68[1] = specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      OUTLINED_FUNCTION_10_9();

      result = ContactsCommonCATs.unsupportedAction()();
      break;
  }

  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 592) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 608) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 640) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 680) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 696) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  OUTLINED_FUNCTION_5_3();
  *v14 = v13;
  v15 = *v11;
  OUTLINED_FUNCTION_0();
  *v16 = v15;
  *(v13 + 568) = v10;

  if (v10)
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_6();

    return MEMORY[0x2822009F8](v17, v18, v19);
  }

  else
  {

    OUTLINED_FUNCTION_35_7();

    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_8_6();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 432);
  __swift_destroy_boxed_opaque_existential_0Tm((v10 + 352));
  __swift_deallocate_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 432);

  __swift_deallocate_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  OUTLINED_FUNCTION_5_3();
  *v14 = v13;
  v15 = *v11;
  OUTLINED_FUNCTION_0();
  *v16 = v15;
  *(v13 + 568) = v10;

  if (v10)
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_6();

    return MEMORY[0x2822009F8](v17, v18, v19);
  }

  else
  {

    OUTLINED_FUNCTION_35_7();

    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_8_6();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 432);
  __swift_destroy_boxed_opaque_existential_0Tm((v10 + 352));
  __swift_deallocate_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  OUTLINED_FUNCTION_5_3();
  *v14 = v13;
  v15 = *v11;
  OUTLINED_FUNCTION_0();
  *v16 = v15;
  *(v13 + 664) = v10;

  if (v10)
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_6();

    return MEMORY[0x2822009F8](v17, v18, v19);
  }

  else
  {

    OUTLINED_FUNCTION_35_7();

    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_8_6();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 432);

  __swift_deallocate_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_0();
  v15 = *(v14 + 512);
  v16 = *(v14 + 480);
  v36 = *(v14 + 472);
  v17 = *(v14 + 464);
  v18 = *(v14 + 448);
  v19 = *(v14 + 432);
  outlined init with copy of DeviceState(v18 + 16, v14 + 16);
  v20 = *(v18 + 104);
  *(v14 + 88) = &type metadata for InstalledAppsProvider;
  *(v14 + 96) = &protocol witness table for InstalledAppsProvider;
  *(v14 + 56) = v20;

  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  outlined destroy of ErrorViewBuilder(v14 + 16);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  v25 = type metadata accessor for AceOutput();
  *(v14 + 248) = 0u;
  *(v14 + 264) = 0;
  *(v14 + 232) = 0u;
  v26 = MEMORY[0x277D5C1D8];
  v19[3] = v25;
  v19[4] = v26;
  __swift_allocate_boxed_opaque_existential_1(v19);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v14 + 232, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v17, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v16 + 8))(v15, v36);
  OUTLINED_FUNCTION_10_21();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_13_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v14 + 232, a10, v36, a12, a13, a14);
}

uint64_t specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_39();
  v13 = *(v12 + 464);
  v14 = *(v12 + 432);
  v15 = type metadata accessor for NLContextUpdate();
  v16 = OUTLINED_FUNCTION_13_6(v15);
  *(v12 + 208) = 0u;
  *(v12 + 224) = 0;
  *(v12 + 192) = 0u;
  v17 = MEMORY[0x277D5C1D8];
  v14[3] = v16;
  v14[4] = v17;
  __swift_allocate_boxed_opaque_existential_1(v14);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v12 + 192, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v13, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v18 = OUTLINED_FUNCTION_18_5();
  v19(v18);
  OUTLINED_FUNCTION_10_21();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_28_4();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v12 + 192, a10, a11, a12);
}

uint64_t specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v3[55] = a2;
  v3[56] = v2;
  v3[54] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[58] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[59] = v4;
  v3[60] = *(v4 - 8);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMR);
  v3[66] = v5;
  v3[67] = *(v5 - 8);
  v3[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized ContactsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:), 0, 0);
}

uint64_t specialized ContactsUnsupportedValueStrategy.noContactsFound(intent:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized ContactsUnsupportedValueStrategy.noContactsFound(intent:), 0, 0);
}

{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized ContactsUnsupportedValueStrategy.noContactsFound(intent:), 0, 0);
}

uint64_t specialized ContactsUnsupportedValueStrategy.noContactsFound(intent:)()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  ContactAttribute = GetContactAttributeIntent.requestedName.getter();
  if (v2)
  {
    v3 = *(v0 + 104);
    String.sanitizeHomophones.getter(ContactAttribute, v2);

    OUTLINED_FUNCTION_52_4();
    v4 = type metadata accessor for Locale();
    OUTLINED_FUNCTION_26_4(v4);
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.capitalized(with:)();
    OUTLINED_FUNCTION_70_1();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v3, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  }

  else
  {
    static String.EMPTY.getter();
    OUTLINED_FUNCTION_70_1();
  }

  OUTLINED_FUNCTION_54_3();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_26_4(v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 144) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_60_3(v6);
  OUTLINED_FUNCTION_34();

  return ContactsCommonCATs.unsupportedContactNotFound(requestedContact:)();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 152) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{

  OUTLINED_FUNCTION_3();

  return v0();
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v1 = ModifyContactAttributeIntent.requestedName.getter();
  if (v2)
  {
    v3 = *(v0 + 104);
    String.sanitizeHomophones.getter(v1, v2);

    OUTLINED_FUNCTION_52_4();
    v4 = type metadata accessor for Locale();
    OUTLINED_FUNCTION_26_4(v4);
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.capitalized(with:)();
    OUTLINED_FUNCTION_70_1();
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v3, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  }

  else
  {
    static String.EMPTY.getter();
    OUTLINED_FUNCTION_70_1();
  }

  OUTLINED_FUNCTION_54_3();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_26_4(v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 144) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_60_3(v6);
  OUTLINED_FUNCTION_34();

  return ContactsCommonCATs.unsupportedContactNotFound(requestedContact:)();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 152) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t specialized ContactsUnsupportedValueStrategy.noContactsFound(intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_0();
  v15 = *(v14 + 96);
  v31 = *(v14 + 104);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  *(v14 + 48) = 0;
  *(v14 + 32) = 0u;
  *(v14 + 16) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v14 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v15, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v20 = OUTLINED_FUNCTION_43();
  v21(v20);

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_13_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v14 + 16, a10, v31, a12, a13, a14);
}

uint64_t ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[61] = v2;
  v1[62] = v0;
  v1[60] = v3;
  v4 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v4);
  v1[63] = OUTLINED_FUNCTION_10_0();
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[64] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[65] = v6;
  v1[66] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for ContactsSnippetPluginModel();
  v1[67] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[68] = v8;
  v1[69] = OUTLINED_FUNCTION_10_0();
  v9 = type metadata accessor for ContactsSnippetFlowState();
  v1[70] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v1[71] = v10;
  v1[72] = OUTLINED_FUNCTION_10_0();
  v11 = type metadata accessor for ModifyContactAttributeSnippetModel.ContactAttributeToModify();
  v1[73] = v11;
  OUTLINED_FUNCTION_1_1(v11);
  v1[74] = v12;
  v1[75] = OUTLINED_FUNCTION_10_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
  OUTLINED_FUNCTION_18_0(v13);
  v1[76] = OUTLINED_FUNCTION_10_0();
  v14 = type metadata accessor for ModifyContactAttributeSnippetModel();
  v1[77] = v14;
  OUTLINED_FUNCTION_1_1(v14);
  v1[78] = v15;
  v1[79] = OUTLINED_FUNCTION_10_0();
  v16 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v16);
  v1[80] = OUTLINED_FUNCTION_10_0();
  v17 = type metadata accessor for SpeakableString();
  v1[81] = v17;
  OUTLINED_FUNCTION_1_1(v17);
  v1[82] = v18;
  v1[83] = OUTLINED_FUNCTION_10_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v19);
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v20 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_18_0(v20);
  v1[91] = OUTLINED_FUNCTION_10_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v21);
  v1[92] = OUTLINED_FUNCTION_10_0();
  v22 = type metadata accessor for TemplatingResult();
  v1[93] = v22;
  OUTLINED_FUNCTION_1_1(v22);
  v1[94] = v23;
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v24 = type metadata accessor for ParameterIdentifier();
  v1[100] = v24;
  OUTLINED_FUNCTION_1_1(v24);
  v1[101] = v25;
  v1[102] = OUTLINED_FUNCTION_10_0();
  v26 = type metadata accessor for Signpost.OpenSignpost(0);
  v1[103] = v26;
  OUTLINED_FUNCTION_18_0(v26);
  v1[104] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 832);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 808);
  v112 = *(v0 + 800);
  v5 = static Signpost.contactsLog;
  *(v0 + 840) = static Signpost.contactsLog;
  v5;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_25_9();
  os_signpost(_:dso:log:name:signpostID:)();
  v6 = v1 + *(v2 + 20);
  *v6 = "MakeModifyContactAttributeUnsupportedValueOutput";
  *(v6 + 8) = 48;
  *(v6 + 16) = 2;
  *(v0 + 848) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v7 = ParameterIdentifier.name.getter();
  v9 = v8;
  (*(v4 + 8))(v3, v112);

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  value = ModifyContactAttributeSlots.init(rawValue:)(v10).value;
  if (value == 2)
  {

    v54 = ParameterResolutionRecord.result.getter();
    v55 = [v54 unsupportedReason];

    v56 = ModifyContactAttributeModifyRelationshipUnsupportedReason.init(rawValue:)(v55);
    v57 = v56;
    v59 = v58;
    if ((v58 & 1) == 0)
    {
      if (v56 == 2)
      {
        v92 = *(v0 + 728);
        v93 = *(v0 + 496);
        v94 = ParameterResolutionRecord.intent.getter();
        v95 = _s19SiriContactsIntents39ModifyContactAttributeStrategyProvidingPAAE010getRelatedE06intent14contactServiceSo9CNContactCAA0deF6IntentC_AA0eM8Protocol_ptFAA0def16UnsupportedValueG0C_Tt1g5(v94, v93 + 56);
        *(v0 + 1080) = v95;

        type metadata accessor for DialogPerson();
        __swift_project_boxed_opaque_existential_1((v93 + 16), *(v93 + 40));
        v96 = v95;
        dispatch thunk of DeviceState.siriLocale.getter();
        *(v0 + 1088) = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v96, 1, v92, 0);
        swift_task_alloc();
        OUTLINED_FUNCTION_36_0();
        *(v0 + 1096) = v97;
        *v97 = v98;
        v97[1] = ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
        OUTLINED_FUNCTION_19_8();

        return ModifyContactAttributeCATs.relationshipNotFound(contact:)(v99, v100);
      }

      if (v56 == 1)
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_36_0();
        *(v0 + 1064) = v60;
        *v60 = v61;
        v60[1] = ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
        OUTLINED_FUNCTION_19_8();

        return ModifyContactAttributeCATs.relationshipExists()();
      }
    }

    type metadata accessor for ContactsError(0);
    OUTLINED_FUNCTION_4_15();
    v68 = _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_1(v66, v67, &protocol conformance descriptor for ContactsError);
    OUTLINED_FUNCTION_7_1(v68);
    v70 = v69;
    *(v0 + 448) = v57;
    *(v0 + 456) = v59 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents022ModifyContactAttributeD29RelationshipUnsupportedReasonOSgMd, &_s19SiriContactsIntents022ModifyContactAttributeD29RelationshipUnsupportedReasonOSgMR);
LABEL_24:
    *v70 = Optional.debugDescription.getter();
    v70[1] = v75;
    swift_storeEnumTagMultiPayload();
    goto LABEL_25;
  }

  if (value != 3)
  {
    if (value == 4)
    {

      v12 = ParameterResolutionRecord.result.getter();
      v13 = [v12 unsupportedReason];

      if (SiriKitContactUnsupportedReason.init(rawValue:)(v13).value != SiriContactsIntents_SiriKitContactUnsupportedReason_missingMeCard)
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_36_0();
        *(v0 + 888) = v79;
        *v79 = v80;
        v79[1] = ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
        OUTLINED_FUNCTION_19_8();

        __asm { BR              X2 }
      }

      v14 = *(v0 + 496);
      v15 = *(v0 + 480);
      v16 = *(v14 + 104);
      *(v0 + 457) = *(v14 + 112);
      v17 = type metadata accessor for AceOutput();
      v18 = MEMORY[0x277D5C1D8];
      v15[3] = v17;
      v15[4] = v18;
      *(v0 + 856) = __swift_allocate_boxed_opaque_existential_1(v15);

      outlined init with copy of DeviceState(v14 + 16, v0 + 200);
      *(v0 + 272) = &type metadata for InstalledAppsProvider;
      *(v0 + 280) = &protocol witness table for InstalledAppsProvider;
      *(v0 + 240) = v16;
      specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
      *(v0 + 864) = v19;
      outlined destroy of MissingMeCardViewBuilder(v0 + 200);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 872) = v20;
      *v20 = v21;
      v20[1] = ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
      goto LABEL_32;
    }

    type metadata accessor for ContactsError(0);
    OUTLINED_FUNCTION_4_15();
    _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_1(v63, v64, &protocol conformance descriptor for ContactsError);
    swift_allocError();
    *v65 = v7;
    v65[1] = v9;
    swift_storeEnumTagMultiPayload();
LABEL_25:
    swift_willThrow();
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_25_9();
    os_signpost(_:dso:log:name:signpostID:)();
    v76 = *(v0 + 832);
    OUTLINED_FUNCTION_11_14();
    OUTLINED_FUNCTION_0_38();
    outlined destroy of Signpost.OpenSignpost(v76);

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_19_8();

    __asm { BRAA            X1, X16 }
  }

  v22 = ParameterResolutionRecord.result.getter();
  v23 = [v22 unsupportedReason];

  v24 = ModifyContactAttributeModifyNickNameUnsupportedReason.init(rawValue:)(v23);
  v25 = v24;
  v27 = v26;
  *(v0 + 904) = v24;
  if ((v26 & 1) != 0 || (v24 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    type metadata accessor for ContactsError(0);
    OUTLINED_FUNCTION_4_15();
    v73 = _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_1(v71, v72, &protocol conformance descriptor for ContactsError);
    OUTLINED_FUNCTION_7_1(v73);
    v70 = v74;
    *(v0 + 464) = v25;
    *(v0 + 472) = v27 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents022ModifyContactAttributeD25NickNameUnsupportedReasonOSgMd, &_s19SiriContactsIntents022ModifyContactAttributeD25NickNameUnsupportedReasonOSgMR);
    goto LABEL_24;
  }

  v28 = *(v0 + 496);
  v29 = v28[10];
  v30 = v28[11];
  __swift_project_boxed_opaque_existential_1(v28 + 7, v29);
  v31 = (*(v30 + 24))(v29, v30);
  *(v0 + 912) = v31;
  if (!v31)
  {
    v83 = *(v0 + 496);
    v84 = *(v0 + 480);
    type metadata accessor for ContactsLabelCATs(0);
    static CATOption.defaultMode.getter();
    v85 = CATWrapper.__allocating_init(options:globals:)();
    *(v0 + 1024) = v85;
    *(v0 + 458) = *(v83 + 112);
    v86 = type metadata accessor for AceOutput();
    v87 = MEMORY[0x277D5C1D8];
    v84[3] = v86;
    v84[4] = v87;
    *(v0 + 1032) = __swift_allocate_boxed_opaque_existential_1(v84);
    outlined init with copy of DeviceState(v83 + 16, v0 + 112);
    *(v0 + 184) = &type metadata for InstalledAppsProvider;
    *(v0 + 192) = &protocol witness table for InstalledAppsProvider;
    *(v0 + 152) = v85;

    specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
    *(v0 + 1040) = v88;
    outlined destroy of MissingMeCardViewBuilder(v0 + 112);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    *(v0 + 1048) = v89;
    *v89 = v90;
    v89[1] = ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
LABEL_32:
    OUTLINED_FUNCTION_19_8();

    return ContactsCommonCATs.missingMeCard(deviceState:contactAttributeType:isMe:)();
  }

  v32 = v31;
  v33 = *(v0 + 728);
  v34 = *(v0 + 496);
  type metadata accessor for DialogPerson();
  __swift_project_boxed_opaque_existential_1(v34 + 2, v34[5]);
  v35 = v32;
  dispatch thunk of DeviceState.siriLocale.getter();
  v36 = v34[15];
  v37 = v36;
  *(v0 + 920) = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v35, 0, v33, v36);
  DialogPerson.nickname.getter();
  dispatch thunk of DialogPerson.fullName.getter();
  v38 = ParameterResolutionRecord.intent.getter();
  v39 = [v38 modifyOperation];

  ModifyOperation.stringify.getter(v39);
  SpeakableString.init(print:speak:)();
  v40 = specialized ContactsStrategy.isSmartEnabled.getter();
  v41 = *(v0 + 664);
  v42 = *(v0 + 656);
  v43 = *(v0 + 648);
  if (v40)
  {
    v44 = *(v0 + 696);
    type metadata accessor for ModifyContactAttributeCATsModern(0);
    static CATOption.defaultMode.getter();
    *(v0 + 928) = CATWrapperSimple.__allocating_init(options:globals:)();
    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v43);
    (*(v42 + 16))(v44, v41, v43);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v43);
    v51 = swift_task_alloc();
    *(v0 + 936) = v51;
    *v51 = v0;
    v51[1] = ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    OUTLINED_FUNCTION_19_8();

    return ModifyContactAttributeCATsModern.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:)();
  }

  else
  {
    v102 = *(v0 + 672);
    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v43);
    (*(v42 + 16))(v102, v41, v43);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v43);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    *(v0 + 1008) = v109;
    *v109 = v110;
    OUTLINED_FUNCTION_21_12(v109);
    OUTLINED_FUNCTION_19_8();

    return ModifyContactAttributeCATs.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:)();
  }
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 880) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 896) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_6();
  *v6 = v5;
  *(v8 + 944) = v7;
  *(v8 + 952) = v0;

  v9 = *(v2 + 704);
  v10 = *(v2 + 696);

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  v1 = v0[113];
  v2 = v0[62];
  v0[120] = ParameterResolutionRecord.intent.getter();
  outlined init with copy of DeviceState(v2 + 56, (v0 + 41));
  if (v1 != 1)
  {
    goto LABEL_4;
  }

  v3 = v0[86];
  v4 = v0[81];
  outlined init with copy of SpeakableString?(v0[90], v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v0[86], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_4:
    v5 = static String.EMPTY.getter();
    v7 = v6;
    goto LABEL_6;
  }

  v5 = SpeakableString.print.getter();
  v7 = v8;
  v9 = OUTLINED_FUNCTION_43();
  v10(v9);
LABEL_6:
  v11 = v0[75];
  v12 = v0[74];
  v13 = v0[72];
  v14 = v0[71];
  v15 = v0[70];
  *v11 = v5;
  v11[1] = v7;
  (*(v12 + 104))();
  (*(v14 + 104))(v13, *MEMORY[0x277D55970], v15);
  type metadata accessor for ContactsLabelCATsModern(0);
  static CATOption.defaultMode.getter();
  v0[121] = CATWrapperSimple.__allocating_init(options:globals:)();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  v0[122] = v16;
  *v16 = v17;
  v16[1] = ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  OUTLINED_FUNCTION_8_6();

  return static ModifyContactAttributeSnippetModel.from(intent:intentResponse:contactService:attributeToModify:flowState:labelCATs:)();
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v5 = v4[120];
  v6 = v4[75];
  v7 = v4[74];
  v8 = v4[73];
  v9 = v4[72];
  v10 = v4[71];
  v11 = v4[70];
  v12 = *v0;
  OUTLINED_FUNCTION_0();
  *v13 = v12;

  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v6, v8);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 328));
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_22_3();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 368));
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1016) = v0;

  v5 = *(v2 + 680);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(*(v2 + 672), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 1056) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 1072) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 1104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_34_5();
  v29 = *(v28 + 792);
  v30 = *(v28 + 752);
  v31 = *(v28 + 744);
  v32 = *(v28 + 736);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  *(v28 + 440) = 0;
  *(v28 + 408) = 0u;
  *(v28 + 424) = 0u;
  OUTLINED_FUNCTION_48_4();
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v28 + 408, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v32, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v30 + 8))(v29, v31);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_25_9();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_0_38();
  OUTLINED_FUNCTION_2_34();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_10_18();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, v28 + 408, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

{
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_42_6();
  __swift_deallocate_boxed_opaque_existential_1(*(v28 + 480));
  v29 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_15_12(v29);
  OUTLINED_FUNCTION_1_31(*(v28 + 880));

  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_10_18();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

{
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_42_6();
  v28 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_15_12(v28);
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_0_38();
  OUTLINED_FUNCTION_2_34();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_10_18();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

{
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_29_8();
  v29 = v28[118];
  v30 = v28[114];
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_69_2();
  v57 = v31;
  v58 = v32;
  v33 = v28[82];
  v55 = v28[79];
  v56 = v28[81];
  v34 = v28[78];
  v35 = v28[77];
  v36 = v28[68];
  v59 = v28[67];
  v60 = v28[69];
  v37 = v28[66];
  v38 = v28[65];
  v39 = v28[64];

  (*(v38 + 8))(v37, v39);
  (*(v34 + 8))(v55, v35);
  (*(v33 + 8))(v57, v56);
  OUTLINED_FUNCTION_2_18();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v40, v41, v42);
  OUTLINED_FUNCTION_2_18();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v43, v44, v45);
  (*(v36 + 8))(v60, v59);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_25_9();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_0_38();
  OUTLINED_FUNCTION_2_34();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_10_18();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, v55, v56, v57, v58, v59, v60, a23, a24, a25, a26, a27, a28);
}

{
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_29_8();
  v29 = v28[114];
  OUTLINED_FUNCTION_34_5();
  v30 = v28[98];
  v31 = v28[94];
  v52 = v28[93];
  OUTLINED_FUNCTION_69_2();
  v54 = v32;
  v55 = v33;
  v34 = v28[82];
  v53 = v28[81];
  v35 = v28[62];
  v36 = v28[60];
  outlined init with copy of DeviceState(v35 + 16, (v28 + 7));
  v37 = *(v35 + 104);
  v28[5] = &type metadata for InstalledAppsProvider;
  v28[6] = &protocol witness table for InstalledAppsProvider;
  v28[12] = v29;
  v28[13] = v37;
  v38 = v29;

  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  v40 = v39;
  outlined destroy of ModifyNicknameUnsupportedViewBuilder((v28 + 2));
  v41 = type metadata accessor for AceOutput();
  v42 = MEMORY[0x277D5C1D8];
  v36[3] = v41;
  v36[4] = v42;
  __swift_allocate_boxed_opaque_existential_1(v36);
  ModifyContactAttributeUnsupportedValueStrategy.completionViewOutput(templateResult:views:)(v30, v40);

  (*(v31 + 8))(v30, v52);
  (*(v34 + 8))(v54, v53);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v55, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(a23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_25_9();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_0_38();
  OUTLINED_FUNCTION_2_34();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_10_18();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v52, v53, v54, v55, a23, a24, a25, a26, a27, a28);
}

{
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_34_5();
  v29 = *(v28 + 776);
  v30 = *(v28 + 752);
  v45 = *(v28 + 744);
  v31 = *(v28 + 736);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  *(v28 + 320) = 0;
  *(v28 + 288) = 0u;
  *(v28 + 304) = 0u;
  OUTLINED_FUNCTION_48_4();
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v28 + 288, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v31, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v30 + 8))(v29, v45);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_25_9();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_0_38();
  OUTLINED_FUNCTION_2_34();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_10_18();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, v28 + 288, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v45, a24, a25, a26, a27, a28);
}

{
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_42_6();
  v29 = *(v28 + 480);

  __swift_deallocate_boxed_opaque_existential_1(v29);
  v30 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_15_12(v30);
  OUTLINED_FUNCTION_1_31(*(v28 + 1056));

  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_10_18();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

{
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_29_8();
  v30 = *(v28 + 768);
  v31 = OUTLINED_FUNCTION_78_1();
  v32 = MEMORY[0x277D5C1D8];
  v29[3] = v31;
  v29[4] = v32;
  __swift_allocate_boxed_opaque_existential_1(v29);
  ModifyContactAttributeUnsupportedValueStrategy.completionViewOutput(templateResult:views:)(v30, MEMORY[0x277D84F90]);
  v33 = OUTLINED_FUNCTION_43();
  v34(v33);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_25_9();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_0_38();
  OUTLINED_FUNCTION_2_34();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_10_18();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

{
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_29_8();
  v30 = *(v28 + 1080);
  v31 = *(v28 + 760);
  v32 = OUTLINED_FUNCTION_78_1();
  v33 = MEMORY[0x277D5C1D8];
  v29[3] = v32;
  v29[4] = v33;
  __swift_allocate_boxed_opaque_existential_1(v29);
  ModifyContactAttributeUnsupportedValueStrategy.completionViewOutput(templateResult:views:)(v31, MEMORY[0x277D84F90]);

  v34 = OUTLINED_FUNCTION_43();
  v35(v34);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_25_9();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_11_14();
  OUTLINED_FUNCTION_0_38();
  OUTLINED_FUNCTION_2_34();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_10_18();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

{
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_42_6();
  v29 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_15_12(v29);
  OUTLINED_FUNCTION_1_31(*(v28 + 896));

  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_10_18();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

{
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_41_7();

  (*(v33 + 8))(v30, v31);
  v34 = OUTLINED_FUNCTION_43();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v34, v35, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v28, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v36 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_15_12(v36);
  OUTLINED_FUNCTION_1_31(*(v29 + 952));

  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_10_18();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

{
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_41_7();

  (*(v33 + 8))(v30, v31);
  v34 = OUTLINED_FUNCTION_43();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v34, v35, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v28, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v36 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_15_12(v36);
  OUTLINED_FUNCTION_1_31(*(v29 + 1016));

  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_10_18();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

{
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_42_6();
  v29 = static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_15_12(v29);
  OUTLINED_FUNCTION_1_31(*(v28 + 1072));

  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_10_18();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

{
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_29_8();

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_25_9();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_1_31(*(v28 + 1104));

  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_10_18();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_0();
  v15 = *(v14 + 616);
  v16 = *(v14 + 608);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMd, &_s18SiriContactsCommon34ModifyContactAttributeSnippetModelVSgMR);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriContacts);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_15_0(v19))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_23_1(&dword_26686A000, v20, v21, "#ModifyContactAttributeUnsupportedValueStrategy makeUnsupportedValueOutput could not generate snippet model, falling back to legacy");
      OUTLINED_FUNCTION_6();
    }

    v22 = *(v14 + 672);
    v23 = *(v14 + 664);
    v24 = *(v14 + 656);
    v25 = *(v14 + 648);
    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
    (*(v24 + 16))(v22, v23, v25);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v25);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    *(v14 + 1008) = v32;
    *v32 = v33;
    OUTLINED_FUNCTION_21_12(v32);
    OUTLINED_FUNCTION_13_0();

    return ModifyContactAttributeCATs.intentHandledModifyNickname(updatedNickname:existingNickname:contactName:modifyOperation:)();
  }

  else
  {
    v57 = *(v14 + 912);
    v59 = *(v14 + 944);
    v36 = *(v14 + 632);
    v37 = *(v14 + 624);
    v38 = *(v14 + 552);
    v39 = *(v14 + 544);
    v40 = *(v14 + 536);
    v56 = *(v14 + 528);
    v41 = *(v14 + 496);
    (*(v37 + 32))(v36, v16, v15);
    (*(v37 + 16))(v38, v36, v15);
    (*(v39 + 104))(v38, *MEMORY[0x277D559F8], v40);
    static DialogPhase.completion.getter();
    v42 = swift_task_alloc();
    v42[2] = v41;
    v42[3] = v57;
    v42[4] = v38;
    OutputGenerationManifest.init(dialogPhase:_:)();

    type metadata accessor for ResponseFactory();
    swift_allocObject();
    *(v14 + 984) = ResponseFactory.init()();
    *(v14 + 392) = v40;
    *(v14 + 400) = _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_1(&lazy protocol witness table cache variable for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel, MEMORY[0x277D55A00], MEMORY[0x277D559E0]);
    __swift_allocate_boxed_opaque_existential_1((v14 + 368));
    OUTLINED_FUNCTION_2_18();
    v43();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v44 = swift_allocObject();
    *(v14 + 992) = v44;
    *(v44 + 16) = xmmword_266966A40;
    *(v44 + 32) = v59;
    v58 = *MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38];
    v45 = v59;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    *(v14 + 1000) = v46;
    *v46 = v47;
    v46[1] = ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    OUTLINED_FUNCTION_13_0();

    return v52(v48, v49, v50, v51, v52, v53, v54, v55, v56, v58, v59, a12, a13, a14);
  }
}

uint64_t closure #1 in ModifyContactAttributeUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  static ContactsContextProvider.handleGetContact(contact:needsSDA:)(a3, 0, v6);
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  OutputGenerationManifest.nlContextUpdate.setter();
  ContactsSnippetPluginModel.responseViewID.getter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t ModifyContactAttributeUnsupportedValueStrategy.completionViewOutput(templateResult:views:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3 = OUTLINED_FUNCTION_18_0(v2);
  MEMORY[0x28223BE20](v3);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v12, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  OUTLINED_FUNCTION_2_18();
  return outlined destroy of UsoEntity_common_Person.DefinedValues?(v8, v9, v10);
}

uint64_t type metadata accessor for ModifyContactAttributeUnsupportedValueStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for ModifyContactAttributeUnsupportedValueStrategy;
  if (!type metadata singleton initialization cache for ModifyContactAttributeUnsupportedValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s19SiriContactsIntents0B5ErrorOACs0D0AAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_31@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v4 = v1[104];
  v5 = v1[63];
  *(v2 - 96) = v1[66];
  *(v2 - 88) = v5;

  return outlined destroy of Signpost.OpenSignpost(v4);
}

uint64_t OUTLINED_FUNCTION_2_34()
{
  v4 = v0[66];
  *(v2 - 96) = v0[69];
  *(v2 - 88) = v4;
  *(v2 - 80) = v0[63];

  return outlined destroy of Signpost.OpenSignpost(v1);
}

uint64_t OUTLINED_FUNCTION_5_27()
{
}

uint64_t OUTLINED_FUNCTION_10_21()
{
}

uint64_t OUTLINED_FUNCTION_15_12(uint64_t a1)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_22_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

void OUTLINED_FUNCTION_34_5()
{
  v2 = *(v0 + 832);
  *(v1 - 88) = *(v0 + 840);
  *(v1 - 80) = v2;
}

uint64_t OUTLINED_FUNCTION_35_7()
{
}

uint64_t OUTLINED_FUNCTION_41_7()
{
}

uint64_t OUTLINED_FUNCTION_44_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t OUTLINED_FUNCTION_50_5()
{

  return type metadata accessor for NLContextUpdate();
}

uint64_t OUTLINED_FUNCTION_52_4()
{
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));

  return dispatch thunk of DeviceState.siriLocale.getter();
}

uint64_t OUTLINED_FUNCTION_54_3()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_62_1()
{

  return type metadata accessor for Logger();
}

uint64_t OUTLINED_FUNCTION_64_1()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 2112;

  return ParameterResolutionRecord.result.getter();
}

uint64_t OUTLINED_FUNCTION_65_2(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

double OUTLINED_FUNCTION_68_3()
{
  *(v1 + 424) = 0;
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_75_0(uint64_t a1, uint64_t a2)
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_77_1()
{

  return type metadata accessor for NLContextUpdate();
}

uint64_t OUTLINED_FUNCTION_78_1()
{

  return type metadata accessor for AceOutput();
}

uint64_t OUTLINED_FUNCTION_79_1(void x0_0, void x1_0, void x2_0, void a4, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_80_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t *OUTLINED_FUNCTION_82_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1(v2);
}

uint64_t DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v103 = a4;
  v107 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_0();
  v109 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_16();
  v102 = v8;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_6();
  v99 = v10;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_6();
  v97 = v12;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  v108 = (&v94 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = OUTLINED_FUNCTION_18_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_16();
  v94 = v17;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_6();
  v101 = v19;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_6();
  v98 = v21;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_6();
  v95 = v23;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  v26 = &v94 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine11PhonemeDataVSgMd, &_s16SiriDialogEngine11PhonemeDataVSgMR);
  v28 = OUTLINED_FUNCTION_18_0(v27);
  MEMORY[0x28223BE20](v28);
  v30 = &v94 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v32 = OUTLINED_FUNCTION_18_0(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_16();
  v100 = v33;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_6();
  v96 = v35;
  OUTLINED_FUNCTION_16();
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v94 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v94 - v40;
  type metadata accessor for DialogPerson.Builder();
  swift_allocObject();
  v110 = DialogPerson.Builder.init()();
  dispatch thunk of DialogPerson.Builder.withUseConversationalName(_:)();

  static PhonemeDataParser.parse(from:)();
  v42 = type metadata accessor for PhonemeData();
  OUTLINED_FUNCTION_57(v30, 1, v42);
  v105 = a3;
  if (v43)
  {
    outlined destroy of ResponseMode?(v30, &_s16SiriDialogEngine11PhonemeDataVSgMd, &_s16SiriDialogEngine11PhonemeDataVSgMR);
    v44 = type metadata accessor for PersonNameComponents();
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v44);
  }

  else
  {
    PhonemeData.asNameComponents(locale:)();
    OUTLINED_FUNCTION_52();
    (*(v45 + 8))(v30, v42);
  }

  v46 = [a1 givenName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v104 = a1;
  CNContact.givenNamePronunciationString.getter();
  v48 = v47;
  v106 = v41;
  outlined init with copy of PersonNameComponents?(v41, v39);
  v49 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_57(v39, 1, v49);
  if (v43)
  {
    outlined destroy of ResponseMode?(v39, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    v51 = 0;
  }

  else
  {
    PersonNameComponents.givenName.getter();
    Optional<A>.emptyToNil.getter();
    v51 = v50;

    OUTLINED_FUNCTION_52();
    (*(v52 + 8))(v39, v49);
  }

  v53 = Optional<A>.isNilOrEmpty.getter();
  v54 = v107;
  if (v53 & 1) != 0 && (Optional<A>.isNilOrEmpty.getter())
  {

    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_4_19();
    SpeakableString.init(print:speak:)();
    v55 = v106;
  }

  else
  {
    if (v51)
    {
    }

    v55 = v106;
    OUTLINED_FUNCTION_12_12();
    SpeakableString.init(print:speak:)();
  }

  v108 = *(v109 + 32);
  v109 += 32;
  v108(v26, v48, v54);
  OUTLINED_FUNCTION_1_32();
  dispatch thunk of DialogPerson.Builder.withGivenName(_:)();

  outlined destroy of ResponseMode?(v26, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v56 = v104;
  v57 = [v104 middleName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = [v56 phoneticMiddleName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v59 = OUTLINED_FUNCTION_9_17();
  v60 = v96;
  if (v59 & 1) != 0 && (Optional<A>.isNilOrEmpty.getter())
  {

    v61 = v97;
    OUTLINED_FUNCTION_3_19();
  }

  else
  {
    v61 = v97;
  }

  SpeakableString.init(print:speak:)();
  v62 = v95;
  v108(v95, v61, v54);
  OUTLINED_FUNCTION_1_32();
  dispatch thunk of DialogPerson.Builder.withMiddleName(_:)();

  outlined destroy of ResponseMode?(v62, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v63 = [v56 nickname];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  outlined init with copy of PersonNameComponents?(v55, v60);
  OUTLINED_FUNCTION_57(v60, 1, v49);
  if (v43)
  {
    outlined destroy of ResponseMode?(v60, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  }

  else
  {
    PersonNameComponents.nickname.getter();
    Optional<A>.emptyToNil.getter();

    OUTLINED_FUNCTION_52();
    (*(v64 + 8))(v60, v49);
  }

  if (Optional<A>.isNilOrEmpty.getter() & 1) != 0 && (OUTLINED_FUNCTION_9_17())
  {

    v65 = v99;
    OUTLINED_FUNCTION_3_19();
  }

  else
  {
    v65 = v99;
  }

  SpeakableString.init(print:speak:)();
  v66 = v98;
  v108(v98, v65, v54);
  OUTLINED_FUNCTION_1_32();
  dispatch thunk of DialogPerson.Builder.withNickname(_:)();

  outlined destroy of ResponseMode?(v66, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v67 = [v56 familyName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  CNContact.familyNamePronunciationString.getter();
  v68 = v100;
  outlined init with copy of PersonNameComponents?(v55, v100);
  OUTLINED_FUNCTION_57(v68, 1, v49);
  if (v43)
  {
    outlined destroy of ResponseMode?(v68, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    v70 = 0;
  }

  else
  {
    PersonNameComponents.familyName.getter();
    Optional<A>.emptyToNil.getter();
    v70 = v69;

    OUTLINED_FUNCTION_52();
    (*(v71 + 8))(v68, v49);
  }

  v72 = v105;
  if (Optional<A>.isNilOrEmpty.getter() & 1) != 0 && (Optional<A>.isNilOrEmpty.getter())
  {

    v73 = v102;
    OUTLINED_FUNCTION_3_19();
  }

  else
  {
    if (v70)
    {
    }

    v73 = v102;
  }

  SpeakableString.init(print:speak:)();
  v74 = v101;
  v75 = v107;
  v108(v101, v73, v107);
  OUTLINED_FUNCTION_1_32();
  dispatch thunk of DialogPerson.Builder.withFamilyName(_:)();

  outlined destroy of ResponseMode?(v74, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v76 = [v56 organizationName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v77 = [v56 phoneticOrganizationName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of DialogPerson.Builder.withCompany(print:speak:)();

  v78 = [v56 termsOfAddress];
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSTermOfAddress, 0x277CCACB8);
  v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array._getCount()())
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v79 & 0xC000000000000001) != 0)
    {
      v80 = MEMORY[0x26D5E29D0](0, v79);
    }

    else
    {
      v80 = *(v79 + 32);
    }

    v81 = v80;

    v82 = outlined bridged method (pb) of @objc NSTermOfAddress.pronouns.getter(v81);
    if (!v82)
    {

      goto LABEL_44;
    }

    v83 = v82;
    if (specialized Array._getCount()())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      if ((v83 & 0xC000000000000001) != 0)
      {
        v84 = MEMORY[0x26D5E29D0](0, v83);
      }

      else
      {
        v84 = *(v83 + 32);
      }

      v85 = v84;

      v86 = [v85 pronoun];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      type metadata accessor for DialogPronoun.Builder();
      swift_allocObject();
      DialogPronoun.Builder.init()();
      v87 = v94;
      OUTLINED_FUNCTION_4_19();
      SpeakableString.init(print:speak:)();
      OUTLINED_FUNCTION_50();
      __swift_storeEnumTagSinglePayload(v88, v89, v90, v75);
      dispatch thunk of DialogPronoun.Builder.withInitialPronoun(_:)();

      outlined destroy of ResponseMode?(v87, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      dispatch thunk of DialogPronoun.Builder.build()();
      dispatch thunk of DialogPerson.Builder.withPronoun(_:)();

      goto LABEL_44;
    }
  }

LABEL_44:

  v91 = dispatch thunk of DialogPerson.__allocating_init(builder:)();
  if (v103)
  {
    dispatch thunk of DialogPerson.mockGlobals.setter();
  }

  type metadata accessor for Locale();
  OUTLINED_FUNCTION_52();
  (*(v92 + 8))(v72);
  outlined destroy of ResponseMode?(v106, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  return v91;
}

uint64_t outlined init with copy of PersonNameComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v105 = a3;
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_0();
  v107 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_16();
  v98 = v9;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_6();
  v99 = v11;
  OUTLINED_FUNCTION_16();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v92 - v14;
  MEMORY[0x28223BE20](v13);
  v103 = &v92 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = OUTLINED_FUNCTION_18_0(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_16();
  v97 = v19;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_6();
  v101 = v21;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_6();
  v102 = v23;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  v26 = &v92 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine11PhonemeDataVSgMd, &_s16SiriDialogEngine11PhonemeDataVSgMR);
  v28 = OUTLINED_FUNCTION_18_0(v27);
  MEMORY[0x28223BE20](v28);
  v30 = &v92 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v32 = OUTLINED_FUNCTION_18_0(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_16();
  v96 = v33;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_6();
  v100 = v35;
  OUTLINED_FUNCTION_16();
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v92 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v92 - v40;
  type metadata accessor for DialogPerson.Builder();
  swift_allocObject();
  v108 = DialogPerson.Builder.init()();
  dispatch thunk of DialogPerson.Builder.withUseConversationalName(_:)();

  static PhonemeDataParser.parse(from:)();
  v42 = type metadata accessor for PhonemeData();
  OUTLINED_FUNCTION_57(v30, 1, v42);
  if (v43)
  {
    outlined destroy of ResponseMode?(v30, &_s16SiriDialogEngine11PhonemeDataVSgMd, &_s16SiriDialogEngine11PhonemeDataVSgMR);
    v44 = type metadata accessor for PersonNameComponents();
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v44);
  }

  else
  {
    PhonemeData.asNameComponents(locale:)();
    OUTLINED_FUNCTION_52();
    (*(v45 + 8))(v30, v42);
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_firstName);
  v106 = v41;
  v104 = v6;
  if (v46)
  {

    result = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_firstName);
    if (!v48)
    {
      __break(1u);
      goto LABEL_47;
    }

    v94 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_firstNamePhonetic);
    v95 = v49;
    outlined init with copy of PersonNameComponents?(v41, v39);
    v50 = type metadata accessor for PersonNameComponents();
    OUTLINED_FUNCTION_57(v39, 1, v50);
    if (v43)
    {
      outlined destroy of ResponseMode?(v39, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      v51 = 0;
    }

    else
    {
      v51 = v39;
      PersonNameComponents.givenName.getter();
      v93 = a1;
      a4 = v15;
      v15 = v52;
      Optional<A>.emptyToNil.getter();
      OUTLINED_FUNCTION_13_12();
      a1 = v93;

      OUTLINED_FUNCTION_52();
      (*(v53 + 8))(v39, v50);
    }

    v54 = Optional<A>.isNilOrEmpty.getter();
    v6 = v104;
    v55 = v103;
    if (v54 & 1) != 0 && (Optional<A>.isNilOrEmpty.getter())
    {

      OUTLINED_FUNCTION_4_19();
    }

    else if (v51)
    {
    }

    SpeakableString.init(print:speak:)();
    (*(v107 + 32))(v26, v55, v6);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v6);
    dispatch thunk of DialogPerson.Builder.withGivenName(_:)();

    outlined destroy of ResponseMode?(v26, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v41 = v106;
  }

  outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_middleName);
  if (!v59)
  {
    goto LABEL_20;
  }

  result = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_middleName);
  if (!v60)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (OUTLINED_FUNCTION_9_17())
  {
    OUTLINED_FUNCTION_9_17();
  }

  OUTLINED_FUNCTION_4_19();
  SpeakableString.init(print:speak:)();
  v61 = v102;
  (*(v107 + 32))(v102, v15, v6);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v6);
  dispatch thunk of DialogPerson.Builder.withMiddleName(_:)();

  outlined destroy of ResponseMode?(v61, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_20:
  outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_nickName);
  if (!v65)
  {
    goto LABEL_29;
  }

  result = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_nickName);
  if (!v66)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v67 = v100;
  outlined init with copy of PersonNameComponents?(v41, v100);
  v68 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_57(v67, 1, v68);
  if (v43)
  {
    outlined destroy of ResponseMode?(v67, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  }

  else
  {
    PersonNameComponents.nickname.getter();
    Optional<A>.emptyToNil.getter();

    OUTLINED_FUNCTION_52();
    (*(v69 + 8))(v67, v68);
  }

  v70 = v99;
  if (Optional<A>.isNilOrEmpty.getter() & 1) != 0 && (OUTLINED_FUNCTION_9_17())
  {

    OUTLINED_FUNCTION_3_19();
  }

  SpeakableString.init(print:speak:)();
  v41 = v106;
  v71 = v101;
  (*(v107 + 32))(v101, v70, v6);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v6);
  dispatch thunk of DialogPerson.Builder.withNickname(_:)();

  outlined destroy of ResponseMode?(v71, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_29:
  outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_lastName);
  if (!v75)
  {
    goto LABEL_40;
  }

  result = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_lastName);
  if (!v76)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v77 = result;
  v103 = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_lastNamePhonetic);
  v78 = v96;
  outlined init with copy of PersonNameComponents?(v106, v96);
  v79 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_57(v78, 1, v79);
  if (v43)
  {
    outlined destroy of ResponseMode?(v78, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    v80 = 0;
  }

  else
  {
    v80 = v78;
    PersonNameComponents.familyName.getter();
    a4 = v77;
    Optional<A>.emptyToNil.getter();
    OUTLINED_FUNCTION_13_12();

    OUTLINED_FUNCTION_52();
    (*(v81 + 8))(v78, v79);
  }

  v82 = v104;
  v84 = v97;
  v83 = v98;
  if (Optional<A>.isNilOrEmpty.getter() & 1) != 0 && (Optional<A>.isNilOrEmpty.getter())
  {

    OUTLINED_FUNCTION_3_19();
  }

  else if (v80)
  {
  }

  SpeakableString.init(print:speak:)();
  v41 = v106;
  (*(v107 + 32))(v84, v83, v82);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v82);
  dispatch thunk of DialogPerson.Builder.withFamilyName(_:)();

  outlined destroy of ResponseMode?(v84, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_40:
  outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_company);
  if (v88)
  {

    result = outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_company);
    if (v89)
    {
      outlined bridged method (pb) of @objc PostalAddress.street.getter(a1, &selRef_companyPhonetic);
      dispatch thunk of DialogPerson.Builder.withCompany(print:speak:)();

      goto LABEL_43;
    }

LABEL_50:
    __break(1u);
    return result;
  }

LABEL_43:

  v90 = dispatch thunk of DialogPerson.__allocating_init(builder:)();
  if (a4)
  {
    dispatch thunk of DialogPerson.mockGlobals.setter();
  }

  type metadata accessor for Locale();
  OUTLINED_FUNCTION_52();
  (*(v91 + 8))(v105);
  outlined destroy of ResponseMode?(v41, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  return v90;
}

uint64_t outlined bridged method (pb) of @objc NSTermOfAddress.pronouns.getter(void *a1)
{
  v1 = [a1 pronouns];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for NSMorphologyPronoun, 0x277CCAB38);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t OUTLINED_FUNCTION_9_17()
{

  return Optional<A>.isNilOrEmpty.getter();
}

uint64_t String.convertToContactAttributeLabel.getter(uint64_t a1, void *a2)
{

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  ContactNLv3Intent.NLContactAttributesValue.init(rawValue:)(v4);
  result = 0x786166656D6F68;
  switch(v6)
  {
    case 0:
    case 18:
    case 32:
    case 35:
    case 49:
      OUTLINED_FUNCTION_14_15();
      goto LABEL_6;
    case 1:
    case 17:
    case 31:
    case 36:
      OUTLINED_FUNCTION_11_15();
      goto LABEL_6;
    case 2:
    case 3:
    case 4:
    case 12:
    case 14:
    case 15:
    case 16:
    case 38:
      goto LABEL_6;
    case 5:
      return result;
    case 6:
      return 0x7861666B726F77;
    case 7:
    case 9:
    case 33:
      OUTLINED_FUNCTION_4_24();
      goto LABEL_6;
    case 11:
    case 34:
    case 37:
      OUTLINED_FUNCTION_2_35();
LABEL_6:
      result = String.lowercased()()._countAndFlagsBits;
      break;
    default:

      result = a1;
      break;
  }

  return result;
}

uint64_t String.mapToNLAttributeValue(forType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 6645601;
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_9_18();
      if (a2 != v7 || a3 != 0xE400000000000000)
      {
        v9 = OUTLINED_FUNCTION_11_15();
        if ((OUTLINED_FUNCTION_0_39(v9) & 1) == 0)
        {
          OUTLINED_FUNCTION_17_9();
          if (a2 != 6645601 || a3 != 0xE800000000000000)
          {
            v11 = OUTLINED_FUNCTION_16_11();
            v13 = OUTLINED_FUNCTION_5_26(v11, v12);
            v14 = a2 == v3 && a3 == 0xE400000000000000;
            v15 = v14;
            if ((v13 & 1) == 0 && !v15)
            {
              v16 = OUTLINED_FUNCTION_14_15();
              if ((OUTLINED_FUNCTION_0_39(v16) & 1) == 0)
              {
                OUTLINED_FUNCTION_5_28();
                v6 = 0x6520000000656761;
                v17 = OUTLINED_FUNCTION_2_35();
                v18 = a2 == v17 && a3 == 0xE600000000000000;
                if (!v18 && (OUTLINED_FUNCTION_5_26(v17, 0xE600000000000000) & 1) == 0)
                {
                  v19 = OUTLINED_FUNCTION_4_24();
                  v20 = a2 == v19 && a3 == 0xE500000000000000;
                  if (v20 || (OUTLINED_FUNCTION_5_26(v19, 0xE500000000000000) & 1) != 0)
                  {
                    OUTLINED_FUNCTION_8_15();
                    return 0x6D65000000656761;
                  }

                  else
                  {
                    return 0x6C69616D65;
                  }
                }
              }
            }
          }
        }
      }

      return v6;
    case 2:
      OUTLINED_FUNCTION_15_13();
      if (a2 != v21 || a3 != 0xE400000000000000)
      {
        v23 = OUTLINED_FUNCTION_14_15();
        if ((OUTLINED_FUNCTION_0_39(v23) & 1) == 0)
        {
          OUTLINED_FUNCTION_12_13();
          if (a2 != v24 || a3 != 0xE400000000000000)
          {
            v26 = OUTLINED_FUNCTION_11_15();
            if ((OUTLINED_FUNCTION_0_39(v26) & 1) == 0)
            {
              v36 = OUTLINED_FUNCTION_6_23();
              v37 = a2 == v36 && a3 == 0xE600000000000000;
              if (!v37 && (OUTLINED_FUNCTION_5_26(v36, 0xE600000000000000) & 1) == 0)
              {
                v6 = 0x656E6F687069;
                v38 = a2 == 0x656E6F687069 && a3 == 0xE600000000000000;
                if (!v38 && (OUTLINED_FUNCTION_5_26(0x656E6F687069, 0xE600000000000000) & 1) == 0)
                {
                  OUTLINED_FUNCTION_13_13();
                  v40 = a2 == v39 && a3 == 0xE300000000000000;
                  if (!v40 && (OUTLINED_FUNCTION_5_26(7496035, 0xE300000000000000) & 1) == 0)
                  {
                    OUTLINED_FUNCTION_5_28();
                    v6 = 0x7020656E6F687069;
                    v41 = OUTLINED_FUNCTION_2_35();
                    v42 = a2 == v41 && a3 == 0xE600000000000000;
                    if (!v42 && (OUTLINED_FUNCTION_5_26(v41, 0xE600000000000000) & 1) == 0)
                    {
                      OUTLINED_FUNCTION_10_22();
                      v44 = a2 == v43 && a3 == 0xE400000000000000;
                      if (!v44 && (OUTLINED_FUNCTION_0_39(1852399981) & 1) == 0)
                      {
                        v6 = 0x7265676170;
                        v45 = a2 == 0x7265676170 && a3 == 0xE500000000000000;
                        if (!v45 && (OUTLINED_FUNCTION_5_26(0x7265676170, 0xE500000000000000) & 1) == 0)
                        {
                          v46 = OUTLINED_FUNCTION_4_24();
                          v47 = a2 == v46 && a3 == 0xE500000000000000;
                          if (v47 || (OUTLINED_FUNCTION_5_26(v46, 0xE500000000000000) & 1) != 0)
                          {
                            OUTLINED_FUNCTION_8_15();
                            return 0x6870007265676170;
                          }

                          else
                          {
                            return 0x656E6F6870;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      return v6;
    case 3:
      v6 = 0x72646461206D7967;
      v27 = a2 == 7174503 && a3 == 0xE300000000000000;
      if (!v27 && (OUTLINED_FUNCTION_5_26(7174503, 0xE300000000000000) & 1) == 0)
      {
        v6 = 0x64646120656D6F68;
        if (a2 != 1701670760 || a3 != 0xE400000000000000)
        {
          v29 = OUTLINED_FUNCTION_14_15();
          if ((OUTLINED_FUNCTION_0_39(v29) & 1) == 0)
          {
            v6 = 0x646461206B726F77;
            if (a2 != 1802661751 || a3 != 0xE400000000000000)
            {
              v31 = OUTLINED_FUNCTION_11_15();
              if ((OUTLINED_FUNCTION_0_39(v31) & 1) == 0)
              {
                OUTLINED_FUNCTION_5_28();
                v6 = 0x612061206B726F77;
                v32 = OUTLINED_FUNCTION_2_35();
                v33 = a2 == v32 && a3 == 0xE600000000000000;
                if (!v33 && (OUTLINED_FUNCTION_5_26(v32, 0xE600000000000000) & 1) == 0)
                {
                  return 0x73736572646461;
                }
              }
            }
          }
        }
      }

      return v6;
    case 4:
      return v6;
    case 5:
      return 0x7961646874726962;
    case 6:
      v34 = 1801677166;
      goto LABEL_68;
    case 7:
      return 0x616E207473726966;
    case 8:
      v34 = 1953718636;
      goto LABEL_68;
    case 9:
      v34 = 1819047270;
LABEL_68:
      v6 = v34 | 0x6D616E2000000000;
      break;
    default:

      v6 = a2;
      break;
  }

  return v6;
}

uint64_t String.mapToNLContactTypeValue(forType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    OUTLINED_FUNCTION_15_13();
    if (a2 != v21 || a3 != 0xE400000000000000)
    {
      v23 = OUTLINED_FUNCTION_14_15();
      if ((OUTLINED_FUNCTION_3_20(v23, 0xE400000000000000) & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        if (a2 != v24 || a3 != 0xE400000000000000)
        {
          v26 = OUTLINED_FUNCTION_11_15();
          if ((OUTLINED_FUNCTION_3_20(v26, 0xE400000000000000) & 1) == 0)
          {
            v28 = OUTLINED_FUNCTION_6_23();
            v29 = a2 == v28 && a3 == 0xE600000000000000;
            if (!v29 && (OUTLINED_FUNCTION_3_20(v28, 0xE600000000000000) & 1) == 0)
            {
              v3 = 0x656E6F687069;
              v30 = a2 == 0x656E6F687069 && a3 == 0xE600000000000000;
              if (!v30 && (OUTLINED_FUNCTION_3_20(0x656E6F687069, 0xE600000000000000) & 1) == 0)
              {
                OUTLINED_FUNCTION_13_13();
                v32 = a2 == v31 && a3 == 0xE300000000000000;
                if (!v32 && (OUTLINED_FUNCTION_3_20(7496035, 0xE300000000000000) & 1) == 0)
                {
                  OUTLINED_FUNCTION_5_28();
                  v3 = 0x7020656E6F687069;
                  v33 = OUTLINED_FUNCTION_2_35();
                  v34 = a2 == v33 && a3 == 0xE600000000000000;
                  if (!v34 && (OUTLINED_FUNCTION_3_20(v33, 0xE600000000000000) & 1) == 0)
                  {
                    OUTLINED_FUNCTION_10_22();
                    v36 = a2 == v35 && a3 == 0xE400000000000000;
                    if (!v36 && (OUTLINED_FUNCTION_3_20(1852399981, 0xE400000000000000) & 1) == 0)
                    {
                      v3 = 0x7265676170;
                      v37 = a2 == 0x7265676170 && a3 == 0xE500000000000000;
                      if (!v37 && (OUTLINED_FUNCTION_3_20(0x7265676170, 0xE500000000000000) & 1) == 0)
                      {
                        OUTLINED_FUNCTION_8_15();
                        v3 = 0x6870007265676170;
                        v38 = OUTLINED_FUNCTION_4_24();
                        v39 = a2 == v38 && a3 == 0xE500000000000000;
                        if (!v39 && (OUTLINED_FUNCTION_3_20(v38, 0xE500000000000000) & 1) == 0)
                        {
                          goto LABEL_31;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else if (a1 != 1 || ((OUTLINED_FUNCTION_9_18(), a2 == v7) ? (v8 = a3 == 0xE400000000000000) : (v8 = 0), !v8 && (v9 = OUTLINED_FUNCTION_11_15(), (OUTLINED_FUNCTION_3_20(v9, 0xE400000000000000) & 1) == 0) && ((OUTLINED_FUNCTION_17_9(), a2 == v3) ? (v10 = a3 == 0xE800000000000000) : (v10 = 0), !v10 && ((v11 = OUTLINED_FUNCTION_16_11(), v13 = OUTLINED_FUNCTION_3_20(v11, v12), a2 == v4) ? (v14 = a3 == 0xE400000000000000) : (v14 = 0), !v14 ? (v15 = 0) : (v15 = 1), (v13 & 1) == 0 && (v15 & 1) == 0 && (v16 = OUTLINED_FUNCTION_14_15(), (OUTLINED_FUNCTION_3_20(v16, 0xE400000000000000) & 1) == 0) && ((OUTLINED_FUNCTION_5_28(), v3 = v3 & 0xFFFFFFFFFFFFLL | 0x6520000000000000, v17 = OUTLINED_FUNCTION_2_35(), a2 == v17) ? (v18 = a3 == 0xE600000000000000) : (v18 = 0), !v18 && (OUTLINED_FUNCTION_3_20(v17, 0xE600000000000000) & 1) == 0 && ((OUTLINED_FUNCTION_8_15(), v3 = v3 & 0xFFFFFFFFFFFFLL | 0x6D65000000000000, v19 = OUTLINED_FUNCTION_4_24(), a2 == v19) ? (v20 = a3 == 0xE500000000000000) : (v20 = 0), !v20 && (OUTLINED_FUNCTION_3_20(v19, 0xE500000000000000) & 1) == 0))))))
  {
LABEL_31:

    return a2;
  }

  return v3;
}

void *String.sanitizeHomophones.getter(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type String and conformance String();
  result = StringProtocol.components<A>(separatedBy:)();
  if (result[2])
  {
    v3 = result[4];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t String.sanitizeContactIdURL.getter(unint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12URLQueryItemVSgMd, &_s10Foundation12URLQueryItemVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v43 - v5;
  v6 = type metadata accessor for URLQueryItem();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  v47 = a2;
  URLComponents.init(string:)();
  outlined init with copy of URLComponents?(v18, v16);
  v19 = type metadata accessor for URLComponents();
  if (__swift_getEnumTagSinglePayload(v16, 1, v19) == 1)
  {
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
LABEL_13:
    v25 = v48;
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v6);
LABEL_14:
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v25, &_s10Foundation12URLQueryItemVSgMd, &_s10Foundation12URLQueryItemVSgMR);
LABEL_15:
    v7 = v47;
    if (one-time initialization token for siriContacts != -1)
    {
LABEL_32:
      OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.siriContacts);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v50 = v30;
      *v29 = 136315138;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, v7, &v50);
      _os_log_impl(&dword_26686A000, v27, v28, "#sanitizeContactIdURL: string is not in URL format, returning raw value: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    outlined destroy of UsoEntity_common_Person.DefinedValues?(v18, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);

    return a1;
  }

  v20 = URLComponents.queryItems.getter();
  (*(*(v19 - 8) + 8))(v16, v19);
  if (!v20)
  {
    goto LABEL_13;
  }

  v45 = v18;
  v46 = v12;
  v44 = a1;
  a1 = 0;
  v21 = *(v20 + 16);
  v18 = (v7 + 16);
  v49 = (v7 + 8);
  while (1)
  {
    if (v21 == a1)
    {

      v32 = 1;
      a1 = v44;
      v18 = v45;
      v33 = v46;
      v25 = v48;
      goto LABEL_23;
    }

    if (a1 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    (*(v7 + 16))(v10, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a1, v6);
    if (URLQueryItem.name.getter() == 0x696669746E656469 && v22 == 0xEA00000000007265)
    {
      break;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_22;
    }

    (*v49)(v10, v6);
    ++a1;
  }

LABEL_22:

  v25 = v48;
  (*(v7 + 32))(v48, v10, v6);
  v32 = 0;
  a1 = v44;
  v18 = v45;
  v33 = v46;
LABEL_23:
  __swift_storeEnumTagSinglePayload(v25, v32, 1, v6);
  if (__swift_getEnumTagSinglePayload(v25, 1, v6) == 1)
  {
    goto LABEL_14;
  }

  (*(v7 + 32))(v33, v25, v6);
  v34 = URLQueryItem.value.getter();
  if (!v35)
  {
    (*v49)(v33, v6);
    goto LABEL_15;
  }

  v36 = v34;
  v37 = v35;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Logger.siriContacts);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50 = v42;
    *v41 = 136315138;
    *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v50);
    _os_log_impl(&dword_26686A000, v39, v40, "#sanitizeContactIdURL: string is in URL format, returning identifier query parameter: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  (*v49)(v46, v6);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v18, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  return v36;
}

uint64_t String.formattedForCNLabelConversion.getter(uint64_t a1, unint64_t a2)
{
  v4 = 0x656E6F685069;
  v5 = String.lowercased()();
  v6 = v5._countAndFlagsBits == 0x656E6F687069 && v5._object == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v4 = 0x64756F6C4369, v5._countAndFlagsBits == 0x64756F6C6369) ? (v7 = v5._object == 0xE600000000000000) : (v7 = 0), v7))
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {

      specialized Collection.prefix(_:)(1, a1, a2);
      countAndFlagsBits = Substring.uppercased()()._countAndFlagsBits;

      specialized Collection.dropFirst(_:)(1uLL, a1, a2);
      lazy protocol witness table accessor for type Substring and conformance Substring();

      String.append<A>(contentsOf:)();

      return countAndFlagsBits;
    }
  }

  return v4;
}

uint64_t outlined init with copy of URLComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_39(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_3_20(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *LabelMapper.localizedLabel(handleLabel:localeString:type:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v90 = a6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v11 = MEMORY[0x28223BE20](v89);
  v88 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v87 = &v83 - v14;
  MEMORY[0x28223BE20](v13);
  v86 = &v83 - v15;
  v16 = type metadata accessor for CharacterSet();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v92 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v91 = a5;
  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Logger.siriContacts);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_24();
    v85 = a3;
    v24 = v23;
    v25 = swift_slowAlloc();
    v83 = a4;
    v84 = v16;
    v26 = v20;
    v27 = v25;
    v97[0] = v25;
    *v24 = 136315138;
    v28 = a1;
    v98 = a1;
    v99 = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v29 = String.init<A>(describing:)();
    v31 = v17;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v97);

    *(v24 + 4) = v32;
    v17 = v31;
    _os_log_impl(&dword_26686A000, v21, v22, "#localizedLabel raw handleLabel: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    v20 = v26;
    a4 = v83;
    v16 = v84;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
    v28 = a1;
  }

  v33 = v92;
  if (a2)
  {
    v34 = HIBYTE(a2) & 0xF;
    v35 = v28;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v34 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      CharacterSet.init(charactersIn:)();
      v98 = v28;
      v99 = a2;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      if (v36)
      {
        v37 = String.formattedForCNLabelConversion.getter(v28, a2);
        v98 = 1008804959;
        v99 = 0xE400000000000000;
        MEMORY[0x26D5E2570](v37);

        MEMORY[0x26D5E2570](1596203326, 0xE400000000000000);

        v35 = v98;
        a2 = v99;
        (*(v17 + 8))(v33, v16);
        goto LABEL_21;
      }

      (*(v17 + 8))(v33, v16);
    }

LABEL_21:
    v98 = v35;
    v99 = a2;
    lazy protocol witness table accessor for type String and conformance String();
    v49 = StringProtocol.capitalized.getter();
    v51 = v50;

    v97[0] = v49;
    v97[1] = v51;
    v95 = 0x5F24213E786166;
    v96 = 0xE700000000000000;
    v93 = 0x5F24213E7861465FLL;
    v94 = 0xE800000000000000;
    v52 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v54 = v53;

    v55 = Logger.logObject.getter();
    LOBYTE(v51) = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v55, v51))
    {
      OUTLINED_FUNCTION_24();
      v56 = OUTLINED_FUNCTION_1_33();
      OUTLINED_FUNCTION_2_36(v56);
      *a2 = 136315138;

      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v98);

      *(a2 + 4) = v57;
      OUTLINED_FUNCTION_10_23(&dword_26686A000, v58, v59, "#localizedLabel attempting to map CNLabel: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(a4);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    MEMORY[0x26D5E2470](v52, v54);
    OUTLINED_FUNCTION_11_16();
    v22 = OUTLINED_FUNCTION_3_21();
    v61 = v60;

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v62, v63))
    {
      OUTLINED_FUNCTION_24();
      v64 = OUTLINED_FUNCTION_1_33();
      OUTLINED_FUNCTION_2_36(v64);
      v65 = OUTLINED_FUNCTION_0_40(4.8149e-34);
      *(a2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v61, v66);
      OUTLINED_FUNCTION_10_23(&dword_26686A000, v67, v68, "#localizedLabel CNLabel mapped: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(a4);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    String.sanitizeCNLabel.getter();
    OUTLINED_FUNCTION_6_24();

    v43 = v20;
    v44 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_8_16();
    if (OUTLINED_FUNCTION_7_13())
    {
      OUTLINED_FUNCTION_24();
      v69 = OUTLINED_FUNCTION_1_33();
      OUTLINED_FUNCTION_2_36(v69);
      v70 = OUTLINED_FUNCTION_0_40(4.8149e-34);
      *(a2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v63, v71);
      v48 = "#localizedLabel mapped label sanitized: %s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  switch(v91)
  {
    case 3:
      v22 = v88;
      ContactsLabelCATs.address()();
      Result<>.firstPrint.getter();
      OUTLINED_FUNCTION_9_19();
      outlined destroy of Result<TemplatingResult, Error>(v22);
      if (!v28)
      {
        static String.EMPTY.getter();
        OUTLINED_FUNCTION_9_19();
      }

      MEMORY[0x26D5E2470](v22, v28);
      OUTLINED_FUNCTION_11_16();
      OUTLINED_FUNCTION_3_21();
      OUTLINED_FUNCTION_6_24();

      v43 = v20;
      v44 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_8_16();
      if (OUTLINED_FUNCTION_7_13())
      {
        OUTLINED_FUNCTION_24();
        v76 = OUTLINED_FUNCTION_1_33();
        OUTLINED_FUNCTION_2_36(v76);
        v77 = OUTLINED_FUNCTION_0_40(4.8149e-34);
        MEMORY[4] = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v33, v78);
        v48 = "#localizedLabel mapped postalAddress: %s";
        goto LABEL_27;
      }

      break;
    case 2:
      v22 = v87;
      ContactsLabelCATs.phone()();
      Result<>.firstPrint.getter();
      OUTLINED_FUNCTION_9_19();
      outlined destroy of Result<TemplatingResult, Error>(v22);
      if (!v28)
      {
        static String.EMPTY.getter();
        OUTLINED_FUNCTION_9_19();
      }

      MEMORY[0x26D5E2470](v22, v28);
      OUTLINED_FUNCTION_11_16();
      OUTLINED_FUNCTION_3_21();
      OUTLINED_FUNCTION_6_24();

      v43 = v20;
      v44 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_8_16();
      if (OUTLINED_FUNCTION_7_13())
      {
        OUTLINED_FUNCTION_24();
        v73 = OUTLINED_FUNCTION_1_33();
        OUTLINED_FUNCTION_2_36(v73);
        v74 = OUTLINED_FUNCTION_0_40(4.8149e-34);
        MEMORY[4] = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v33, v75);
        v48 = "#localizedLabel mapped phoneNumber: %s";
        goto LABEL_27;
      }

      break;
    case 1:
      v38 = v86;
      ContactsLabelCATs.email()();
      v22 = Result<>.firstPrint.getter();
      v40 = v39;
      outlined destroy of Result<TemplatingResult, Error>(v38);
      if (!v40)
      {
        v22 = static String.EMPTY.getter();
        v40 = v41;
      }

      v42 = MEMORY[0x26D5E2470](v22, v40);

      static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
      OUTLINED_FUNCTION_6_24();

      v43 = v20;
      v44 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_8_16();
      if (OUTLINED_FUNCTION_7_13())
      {
        OUTLINED_FUNCTION_24();
        v45 = OUTLINED_FUNCTION_1_33();
        OUTLINED_FUNCTION_2_36(v45);
        v46 = OUTLINED_FUNCTION_0_40(4.8149e-34);
        MEMORY[4] = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v33, v47);
        v48 = "#localizedLabel mapped emailAddress: %s";
LABEL_27:
        _os_log_impl(&dword_26686A000, v44, v43, v48, a2, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(a4);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      break;
    default:
      v79 = static String.EMPTY.getter();
      MEMORY[0x26D5E2470](v79);
      OUTLINED_FUNCTION_11_16();
      OUTLINED_FUNCTION_3_21();
      OUTLINED_FUNCTION_6_24();

      v43 = v20;
      v44 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_8_16();
      if (!OUTLINED_FUNCTION_7_13())
      {
        break;
      }

      OUTLINED_FUNCTION_24();
      v80 = OUTLINED_FUNCTION_1_33();
      OUTLINED_FUNCTION_2_36(v80);
      v81 = OUTLINED_FUNCTION_0_40(4.8149e-34);
      MEMORY[4] = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v33, v82);
      v48 = "#localizedLabel mapped: %s";
      goto LABEL_27;
  }

LABEL_28:

  return v22;
}

unint64_t DefaultLabels.rawValue.getter(char a1)
{
  result = 1701670760;
  switch(a1)
  {
    case 1:
      result = 1802661751;
      break;
    case 2:
      result = 0x6C616E6F73726570;
      break;
    case 3:
      result = 0x6C6F6F686373;
      break;
    case 4:
      result = 7174503;
      break;
    case 5:
      result = 0x656C69626F6DLL;
      break;
    case 6:
      v3 = 1701344367;
      goto LABEL_12;
    case 7:
      result = 0x656E6F687069;
      break;
    case 8:
      v3 = 1701273968;
LABEL_12:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
      break;
    case 9:
      result = 7496035;
      break;
    case 10:
      result = 1852399981;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_33()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_3_21()
{

  return static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
}

BOOL OUTLINED_FUNCTION_7_13()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_8_16()
{
}

void OUTLINED_FUNCTION_10_23(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_11_16()
{
}

uint64_t ContactsFlowStrategy.__allocating_init(referenceResolver:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of DeviceState(a1, v2 + 16);
  return v2;
}

uint64_t ContactsFlowStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  OUTLINED_FUNCTION_4();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v1[10] = *v0;
  v1[11] = type metadata accessor for Signpost.OpenSignpost(0);
  v1[12] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = static Signpost.contactsLog;
  v0[13] = static Signpost.contactsLog;
  v6 = v5;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = v1 + *(v2 + 20);
  *v7 = "MakeIntentFromParse";
  *(v7 + 8) = 19;
  *(v7 + 16) = 2;
  outlined init with copy of DeviceState(v3 + 16, (v0 + 2));
  if (v4)
  {
    v8 = *(v0[10] + 96);
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = ContactsFlowStrategy.makeIntentFromParse(parse:currentIntent:);
  v10 = v0[8];

  return Parse.toSiriKitIntent(referenceResolver:previousIntent:)((v0 + 2), v10, v8);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v1 = v0;
  *(v0 + 120) = v2;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  v3 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void ContactsFlowStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  v2 = *(v0 + 120);
  if (v2)
  {
    v3 = swift_dynamicCastUnknownClass();
    if (v3)
    {
      v4 = v3;
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.siriContacts);
      v6 = v2;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v31[0] = v11;
        *v9 = 136315394;
        v12 = _typeName(_:qualified:)();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v31);

        *(v9 + 4) = v14;
        *(v9 + 12) = 2112;
        *(v9 + 14) = v4;
        *v10 = v4;
        v15 = v6;
        _os_log_impl(&dword_26686A000, v7, v8, "#ContactsFlowStrategy<%s> makeIntentFromParse SiriKit Intent: %@", v9, 0x16u);
        outlined destroy of NSObject?(v10);
        OUTLINED_FUNCTION_6();
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_3_22();
      }

      v16 = *(v0 + 96);
      static os_signpost_type_t.end.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      outlined destroy of Signpost.OpenSignpost(v16);

      OUTLINED_FUNCTION_12_14();
      OUTLINED_FUNCTION_13_0();

      __asm { BRAA            X2, X16 }
    }
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.siriContacts);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v22 = 136315394;
    v23 = _typeName(_:qualified:)();
    v25 = v24;
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v31);
    OUTLINED_FUNCTION_15_14();

    *(v22 + 4) = v1;
    *(v22 + 12) = 2080;
    v26 = _typeName(_:qualified:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v31);
    OUTLINED_FUNCTION_2_8();
    *(v22 + 14) = v25;
    _os_log_impl(&dword_26686A000, v20, v21, "#ContactsFlowStrategy<%s> makeIntentFromParse: failed to convert parse to expected intent type %s, throwing", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_22();
    OUTLINED_FUNCTION_6();
  }

  v28 = *(v0 + 96);
  type metadata accessor for ContactsError(0);
  lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v28);

  OUTLINED_FUNCTION_13_0();

  __asm { BRAA            X1, X16 }
}

uint64_t ContactsFlowStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = *v0;
  v4 = type metadata accessor for SiriKitIntentHandler();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void ContactsFlowStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2(&one-time initialization token for siriContacts);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriContacts);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v0 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v63 = v1;
    *v0 = 136315138;
    v8 = _typeName(_:qualified:)();
    v2 = v9;
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v63);
    OUTLINED_FUNCTION_15_14();

    *(v0 + 4) = v3;
    _os_log_impl(&dword_26686A000, v6, v7, "#ContactsFlowStrategy<%s> makeIntentExecutionBehavior", v0, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v1);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3_22();
  }

  type metadata accessor for GetContactIntent();
  if (swift_dynamicCastClass())
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v11))
    {
      OUTLINED_FUNCTION_9_20();
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_19_10();
      v12 = OUTLINED_FUNCTION_8_17(4.8149e-34);
      OUTLINED_FUNCTION_21_13(v12, v13, v14, v15, v16, v17);
      OUTLINED_FUNCTION_2_8();
      *(v7 + 4) = v2;
      OUTLINED_FUNCTION_4_25(&dword_26686A000, v18, v19, "#ContactsFlowStrategy<%s> makeIntentExecutionBehavior: GetContactIntentHandler embeddedIntentHandler");
      __swift_destroy_boxed_opaque_existential_0Tm(v0);
      OUTLINED_FUNCTION_3_22();
      OUTLINED_FUNCTION_6();
    }

    type metadata accessor for SiriKitIntentExecutionBehavior();
    v20 = one-time initialization token for current;

    if (v20 != -1)
    {
      OUTLINED_FUNCTION_1_34(&one-time initialization token for current);
    }

    OUTLINED_FUNCTION_13_14();
    type metadata accessor for ContactResolver();
    swift_allocObject();
    v21 = ContactResolver.init()();
    v22 = objc_allocWithZone(type metadata accessor for GetContactIntentHandler(0));
    OUTLINED_FUNCTION_15_14();

    v24 = &_s19SiriContactsIntents17BaseIntentHandlerCyAA010GetContactE0CAA0ghE8ResponseCAA0ghA23MatchesResolutionResultCGMd;
    v25 = &_s19SiriContactsIntents17BaseIntentHandlerCyAA010GetContactE0CAA0ghE8ResponseCAA0ghA23MatchesResolutionResultCGMR;
  }

  else
  {
    type metadata accessor for GetContactAttributeIntent();
    if (swift_dynamicCastClass())
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_15_0(v27))
      {
        OUTLINED_FUNCTION_9_20();
        OUTLINED_FUNCTION_32_4();
        OUTLINED_FUNCTION_19_10();
        v28 = OUTLINED_FUNCTION_8_17(4.8149e-34);
        OUTLINED_FUNCTION_21_13(v28, v29, v30, v31, v32, v33);
        OUTLINED_FUNCTION_2_8();
        *(v7 + 4) = v2;
        OUTLINED_FUNCTION_4_25(&dword_26686A000, v34, v35, "#ContactsFlowStrategy<%s> makeIntentExecutionBehavior: GetContactAttributeIntentHandler embeddedIntentHandler");
        __swift_destroy_boxed_opaque_existential_0Tm(v0);
        OUTLINED_FUNCTION_3_22();
        OUTLINED_FUNCTION_6();
      }

      type metadata accessor for SiriKitIntentExecutionBehavior();
      v36 = one-time initialization token for current;

      if (v36 != -1)
      {
        OUTLINED_FUNCTION_1_34(&one-time initialization token for current);
      }

      OUTLINED_FUNCTION_13_14();
      type metadata accessor for ContactResolver();
      swift_allocObject();
      v21 = ContactResolver.init()();
      v37 = objc_allocWithZone(type metadata accessor for GetContactAttributeIntentHandler(0));
      OUTLINED_FUNCTION_15_14();

      v24 = &_s19SiriContactsIntents17BaseIntentHandlerCyAA019GetContactAttributeE0CAA0ghiE8ResponseCAA0ghiA23MatchesResolutionResultCGMd;
      v25 = &_s19SiriContactsIntents17BaseIntentHandlerCyAA019GetContactAttributeE0CAA0ghiE8ResponseCAA0ghiA23MatchesResolutionResultCGMR;
    }

    else
    {
      type metadata accessor for ModifyContactAttributeIntent();
      v38 = swift_dynamicCastClass();
      v39 = Logger.logObject.getter();
      if (!v38)
      {
        v54 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_15_0(v54))
        {
          OUTLINED_FUNCTION_9_20();
          OUTLINED_FUNCTION_32_4();
          OUTLINED_FUNCTION_19_10();
          v55 = OUTLINED_FUNCTION_8_17(4.8149e-34);
          OUTLINED_FUNCTION_21_13(v55, v56, v57, v58, v59, v60);
          OUTLINED_FUNCTION_2_8();
          *(v7 + 4) = v2;
          OUTLINED_FUNCTION_4_25(&dword_26686A000, v61, v62, "#ContactsFlowStrategy<%s> ☠️ encountered an intent type we do not support...this should never happen but we cannot throw an error here ☠️");
          __swift_destroy_boxed_opaque_existential_0Tm(v0);
          OUTLINED_FUNCTION_3_22();
          OUTLINED_FUNCTION_6();
        }

        type metadata accessor for SiriKitIntentExecutionBehavior();
        static SiriKitIntentExecutionBehavior.standard()();
LABEL_24:

        OUTLINED_FUNCTION_12_14();
        OUTLINED_FUNCTION_13_0();

        __asm { BRAA            X2, X16 }
      }

      v40 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_15_0(v40))
      {
        OUTLINED_FUNCTION_9_20();
        OUTLINED_FUNCTION_32_4();
        OUTLINED_FUNCTION_19_10();
        v41 = OUTLINED_FUNCTION_8_17(4.8149e-34);
        OUTLINED_FUNCTION_21_13(v41, v42, v43, v44, v45, v46);
        OUTLINED_FUNCTION_2_8();
        *(v7 + 4) = v2;
        OUTLINED_FUNCTION_4_25(&dword_26686A000, v47, v48, "#ContactsFlowStrategy<%s> makeIntentExecutionBehavior: ModifyContactAttributeIntentHandler embeddedIntentHandler");
        __swift_destroy_boxed_opaque_existential_0Tm(v0);
        OUTLINED_FUNCTION_3_22();
        OUTLINED_FUNCTION_6();
      }

      type metadata accessor for SiriKitIntentExecutionBehavior();
      v49 = one-time initialization token for current;

      if (v49 != -1)
      {
        OUTLINED_FUNCTION_1_34(&one-time initialization token for current);
      }

      OUTLINED_FUNCTION_13_14();
      type metadata accessor for ContactResolver();
      swift_allocObject();
      v21 = ContactResolver.init()();
      v50 = objc_allocWithZone(type metadata accessor for ModifyContactAttributeIntentHandler(0));
      OUTLINED_FUNCTION_15_14();

      v24 = &_s19SiriContactsIntents17BaseIntentHandlerCyAA022ModifyContactAttributeE0CAA0ghiE8ResponseCAA0ghi7RelatedA23MatchesResolutionResultCGMd;
      v25 = &_s19SiriContactsIntents17BaseIntentHandlerCyAA022ModifyContactAttributeE0CAA0ghiE8ResponseCAA0ghi7RelatedA23MatchesResolutionResultCGMR;
    }
  }

  specialized BaseIntentHandler.init(contactService:contactResolver:)(v23, v21, v3, v24, v25);
  v51 = v4;
  SiriKitIntentHandler.init<A>(app:intentHandler:intent:)();
  static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)();
  MEMORY[0xFFFF9B70](v0, v1);
  goto LABEL_24;
}

uint64_t ContactsFlowStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance ContactsFlowStrategy<A, B>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance ContactsFlowStrategy<A, B>;

  return ContactsFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
}

{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  OUTLINED_FUNCTION_12_14();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}