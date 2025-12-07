uint64_t _sSo30UIPageViewControllerOptionsKeyaSYSCSY8rawValue03RawG0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21E647E64@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21E647EC0(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_21E647F44()
{
  MEMORY[0x223D620E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E647F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21E648030(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E6480D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TNUIActionItemConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21E648190(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TNUIActionItemConfiguration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21E64824C()
{
  v1 = *(type metadata accessor for TNUIActionItemView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(type metadata accessor for TNUIActionItemConfiguration(0) + 28);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E64835C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21E6483B0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21E648408@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_21E648458(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
  return TNUIPresentationManager.isPresenting.didset();
}

uint64_t sub_21E6484A0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_21E6484FC(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_21E648560()
{
  MEMORY[0x223D620E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E648598()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E648610()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E648650()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E64868C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21E648738(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E6487DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21E648828(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 128);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_21E64888C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_21E64892C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_21E648978(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 176);

  return v2(v3);
}

void *sub_21E6489CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21E648A28(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

uint64_t sub_21E648A6C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E648AA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21E648AFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _s20ThreatNotificationUI28TNUIAccountRemoteUIProviding_pWOb_0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21E648B4C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E648B94()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E648C28(void *a1)
{
  v1 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type EmbedInScrollViewIfNeededModifier and conformance EmbedInScrollViewIfNeededModifier(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_21E648CC8(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_21E648D10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E648D48()
{
  v1 = (type metadata accessor for TNUIActionItemConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E648EE4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21E648F34()
{
  MEMORY[0x223D620E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E648F6C()
{
  MEMORY[0x223D620E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E648FA4()
{

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_21E648FFC()
{

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_21E649044@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_21E6490A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21E6490F0(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 144);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_21E649180(void *a1)
{
  v1 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ImageColorScheme and conformance ImageColorScheme(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t default argument 1 of static TNUIDependencyContainer.makeDefault(environment:ldmManager:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TNCLDMManager();
  swift_allocObject();
  result = TNCLDMManager.init()();
  v4 = MEMORY[0x277D71448];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t default argument 0 of TNUIButtonConfiguration.init(id:actionIdentifier:title:style:)()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v4 = UUID.uuidString.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance AIDAServiceType(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance AIDAServiceType(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance AIDAServiceType@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x223D615B0](v3);

  *a2 = v4;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance AIDAServiceType()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x223D61660](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AIDAServiceType(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AIDAServiceType(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AIDAServiceType(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AIDAServiceType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type AIDAServiceType and conformance AIDAServiceType, type metadata accessor for AIDAServiceType, &protocol conformance descriptor for AIDAServiceType);
  v3 = lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type AIDAServiceType and conformance AIDAServiceType, type metadata accessor for AIDAServiceType, &protocol conformance descriptor for AIDAServiceType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AIDAServiceType@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x223D615B0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIPageViewControllerOptionsKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey, type metadata accessor for UIPageViewControllerOptionsKey, &protocol conformance descriptor for UIPageViewControllerOptionsKey);
  v3 = lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey, type metadata accessor for UIPageViewControllerOptionsKey, &protocol conformance descriptor for UIPageViewControllerOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

BOOL specialized static TNUIImageColorScheme.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a1)
      {
        if (!a3)
        {
          return 0;
        }

        v8 = static Color.== infix(_:_:)();
        outlined consume of TNUIImageColorScheme(a3);
        return (v8 & 1) != 0;
      }

      return !a3;
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  if (!a1)
  {
    return !a3;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = static Color.== infix(_:_:)();
  outlined consume of TNUIImageColorScheme(a3);
  result = 1;
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  return result;
}

BOOL specialized static TNUIImageConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }

      if (a3)
      {
        if (a7)
        {

          v14 = static Color.== infix(_:_:)();
          outlined consume of TNUIImageColorScheme(a7);
          result = 1;
          if (v14)
          {
            return result;
          }
        }

        return 0;
      }
    }

    else
    {
      if (a8)
      {
        return 0;
      }

      if (a3)
      {
        if (!a7)
        {
          return 0;
        }

        v15 = static Color.== infix(_:_:)();
        outlined consume of TNUIImageColorScheme(a7);
        return (v15 & 1) != 0;
      }
    }

    return !a7;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TNUIImageColorScheme(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TNUIImageColorScheme(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TNUIImageConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for TNUIImageConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata accessor for UIPageViewControllerOptionsKey(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t TNUIAccountRemoteUIProvider.makeRemoteUI(for:presentingViewController:)(uint64_t a1, _BYTE *a2, void *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 56) = *a2;
  v5 = type metadata accessor for TNUIAccountRemoteUI(0);
  *(v3 + 24) = v5;
  objc_allocWithZone(v5);
  v6 = a3;
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = TNUIAccountRemoteUIProvider.makeRemoteUI(for:presentingViewController:);

  return TNUIAccountRemoteUI.init(type:presentingViewController:)((v3 + 56), v6);
}

uint64_t TNUIAccountRemoteUIProvider.makeRemoteUI(for:presentingViewController:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = TNUIAccountRemoteUIProvider.makeRemoteUI(for:presentingViewController:);
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = TNUIAccountRemoteUIProvider.makeRemoteUI(for:presentingViewController:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t TNUIAccountRemoteUIProvider.makeRemoteUI(for:presentingViewController:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v2[3] = *(v0 + 24);
  v2[4] = &protocol witness table for TNUIAccountRemoteUI;
  *v2 = v1;
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

uint64_t protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 80) + **(**v3 + 80));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of TNUIAccountRemoteUIProvider.makeRemoteUI(for:presentingViewController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 80) + **(*v3 + 80));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return v10(a1, a2, a3);
}

uint64_t TNUIAccountRemoteUI.__allocating_init(type:presentingViewController:)(_BYTE *a1, uint64_t a2)
{
  objc_allocWithZone(v2);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = TNUIAccountRemoteUI.__allocating_init(type:presentingViewController:);

  return TNUIAccountRemoteUI.init(type:presentingViewController:)(a1, a2);
}

uint64_t TNUIAccountRemoteUI.__allocating_init(type:presentingViewController:)(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t TNUIAccountRemoteUI.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TNUIAccountRemoteUI.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return TNUIAccountRemoteUI.delegate.modify;
}

void TNUIAccountRemoteUI.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

uint64_t TNUIAccountRemoteUI.init(type:presentingViewController:)(_BYTE *a1, uint64_t a2)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = v2;
  *(v3 + 48) = swift_getObjectType();
  v5 = type metadata accessor for URL();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 121) = *a1;

  return MEMORY[0x2822009F8](TNUIAccountRemoteUI.init(type:presentingViewController:), 0, 0);
}

uint64_t TNUIAccountRemoteUI.init(type:presentingViewController:)()
{
  v1 = *(v0 + 121);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_delegate;
  *(v0 + 80) = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_delegate;
  *(v2 + v3 + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_continuation;
  *(v0 + 88) = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_continuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_presenter;
  *(v0 + 96) = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_presenter;
  *(v2 + v6) = 0;
  *(v0 + 120) = v1;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = TNUIAccountRemoteUI.init(type:presentingViewController:);
  v8 = *(v0 + 72);

  return static TNUIAccountRemoteUI.url(for:)(v8, (v0 + 120));
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = TNUIAccountRemoteUI.init(type:presentingViewController:);
  }

  else
  {
    v2 = TNUIAccountRemoteUI.init(type:presentingViewController:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);

  outlined destroy of weak TNUIAccountRemoteUIDelegate?(v4 + v3);
  outlined destroy of CheckedContinuation<(), Error>?(v4 + v2, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);

  type metadata accessor for TNUIAccountRemoteUI(0);
  swift_deallocPartialClassInstance();

  v5 = *(v0 + 8);

  return v5();
}

id TNUIAccountRemoteUI.init(type:presentingViewController:)()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  *(v4 + OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_contentType) = *(v0 + 121);
  (*(v2 + 16))(v4 + OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_url, v1, v3);
  v5 = type metadata accessor for TNUIAccountRemoteUI(0);
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  v6 = objc_msgSendSuper2((v0 + 16), sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  result = [v7 defaultStore];
  if (result)
  {
    v10 = result;
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);
    v14 = *(v0 + 32);
    v15 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

    v16 = v8;
    [v15 setDelegate_];
    v17 = [objc_allocWithZone(MEMORY[0x277CECA58]) initWithAccountManager:v15 presenter:v14];
    [v17 setDelegate_];

    (*(v12 + 8))(v11, v13);
    v18 = *&v16[OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_presenter];
    *&v16[OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_presenter] = v17;

    v19 = *(v0 + 8);

    return v19(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t static TNUIAccountRemoteUI.url(for:)(uint64_t a1, _BYTE *a2)
{
  *(v2 + 192) = a1;
  v4 = type metadata accessor for URL();
  *(v2 + 200) = v4;
  *(v2 + 208) = *(v4 - 8);
  *(v2 + 216) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5Error_pGMd, &_sScCy10Foundation3URLVSgs5Error_pGMR);
  *(v2 + 224) = v5;
  *(v2 + 232) = *(v5 - 8);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 320) = *a2;

  return MEMORY[0x2822009F8](static TNUIAccountRemoteUI.url(for:), 0, 0);
}

uint64_t static TNUIAccountRemoteUI.url(for:)()
{
  v1 = *(v0 + 320);
  v2 = *MEMORY[0x277CF0110];
  v3 = *MEMORY[0x277CF0108];
  *(v0 + 288) = *MEMORY[0x277CF0110];
  *(v0 + 296) = v3;
  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  v5 = objc_opt_self();
  v14 = v4;
  v6 = [v5 sharedBag];
  *(v0 + 304) = v6;
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 272);
    v9 = *(v0 + 240);
    v11 = *(v0 + 224);
    v10 = *(v0 + 232);
    *(v0 + 16) = v0;
    *(v0 + 56) = v8;
    *(v0 + 24) = static TNUIAccountRemoteUI.url(for:);
    swift_continuation_init();
    *(v0 + 136) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v10 + 32))(boxed_opaque_existential_0, v9, v11);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL?;
    *(v0 + 104) = &block_descriptor_20;
    [v7 urlForKey:v14 completion:?];
    (*(v10 + 8))(boxed_opaque_existential_0, v11);
    v6 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v6);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = static TNUIAccountRemoteUI.url(for:);
  }

  else
  {
    v2 = static TNUIAccountRemoteUI.url(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 304);
  v2 = (v0 + 296);
  v3 = *(v0 + 320);
  if (v3)
  {
    v2 = (v0 + 288);
  }

  v4 = *v2;
  outlined init with take of URL?(*(v0 + 272), *(v0 + 280));

  if ((v3 & 1) == 0)
  {
    v5 = *(v0 + 280);
    v6 = *(v0 + 200);
    v7 = *(v0 + 208);
    if (!(*(v7 + 48))(v5, 1, v6))
    {
      v8 = *(v0 + 216);
      (*(v7 + 16))(v8, v5, v6);
      v9 = URL.absoluteString.getter();
      v11 = v10;
      v12 = (*(v7 + 8))(v8, v6);
      *(v0 + 144) = v9;
      *(v0 + 152) = v11;
      *(v0 + 160) = 0x4449756663423725;
      *(v0 + 168) = 0xEB00000000443725;
      *(v0 + 176) = 0xD000000000000012;
      *(v0 + 184) = 0x800000021E675F10;
      lazy protocol witness table accessor for type String and conformance String(v12, v13, v14);
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      v5 = *(v0 + 280);
    }

    v15 = *(v0 + 264);
    URL.init(string:)();

    outlined assign with take of CheckedContinuation<(), Error>?(v15, v5, &_s10Foundation3URLVSgMd, "t-");
  }

  v16 = *(v0 + 256);
  v17 = *(v0 + 200);
  v18 = *(v0 + 208);
  outlined init with copy of (ObjectIdentifier, Sendable)(*(v0 + 280), v16, &_s10Foundation3URLVSgMd, "t-");
  v19 = (*(v18 + 48))(v16, 1, v17);
  v20 = *(v0 + 296);
  v21 = *(v0 + 280);
  if (v19 == 1)
  {
    if (*(v0 + 320))
    {
      v22 = *(v0 + 288);
    }

    else
    {
      v22 = *(v0 + 296);
    }

    outlined destroy of CheckedContinuation<(), Error>?(*(v0 + 256), &_s10Foundation3URLVSgMd, "t-");
    v23 = type metadata accessor for TNCError();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type TNCError and conformance TNCError, MEMORY[0x277D71490], MEMORY[0x277D71498]);
    swift_allocError();
    *v24 = 0xD000000000000014;
    v24[1] = 0x800000021E675EF0;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D71488], v23);
    swift_willThrow();

    outlined destroy of CheckedContinuation<(), Error>?(v21, &_s10Foundation3URLVSgMd, "t-");

    v25 = *(v0 + 8);
  }

  else
  {
    v26 = *(v0 + 256);
    v27 = *(v0 + 208);
    if (*(v0 + 320))
    {
      v20 = *(v0 + 288);
    }

    v29 = *(v0 + 192);
    v28 = *(v0 + 200);

    (*(v27 + 32))(v29, v26, v28);
    outlined destroy of CheckedContinuation<(), Error>?(v21, &_s10Foundation3URLVSgMd, "t-");

    v25 = *(v0 + 8);
  }

  return v25();
}

uint64_t static TNUIAccountRemoteUI.url(for:)(uint64_t a1)
{
  v2 = *(v1 + 304);
  v3 = (v1 + 296);
  if (*(v1 + 320))
  {
    v3 = (v1 + 288);
  }

  v4 = *v3;
  swift_willThrow();

  v5 = *(v1 + 8);

  return v5();
}

uint64_t type metadata accessor for TNUIAccountRemoteUI(uint64_t a1)
{
  result = type metadata singleton initialization cache for TNUIAccountRemoteUI;
  if (!type metadata singleton initialization cache for TNUIAccountRemoteUI)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TNUIAccountRemoteUI.present()()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[28] = v5;
  v1[29] = *(v5 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = type metadata accessor for MainActor();
  v1[33] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[34] = v7;
  v1[35] = v6;

  return MEMORY[0x2822009F8](TNUIAccountRemoteUI.present(), v7, v6);
}

{
  v34 = v0;
  v1 = v0[18];
  static TNCLogger.default.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[31];
  v8 = v0[28];
  v7 = v0[29];
  if (v5)
  {
    v9 = v0[18];
    v32 = v0[31];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v8;
    v12 = swift_slowAlloc();
    v33 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v13 = v9;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v33);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_21E646000, v3, v4, "%@ start presentation for url %s", v10, 0x16u);
    outlined destroy of CheckedContinuation<(), Error>?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D62010](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x223D62010](v12, -1, -1);
    MEMORY[0x223D62010](v10, -1, -1);

    v17 = *(v7 + 8);
    v18 = v17(v32, v30);
  }

  else
  {

    v17 = *(v7 + 8);
    v18 = v17(v6, v8);
  }

  v0[36] = v17;
  v19 = v0[18];
  v20 = *(v19 + OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_presenter);
  v0[37] = v20;
  if (v20)
  {
    v21 = v0[26];
    v22 = v0[27];
    v23 = v0[25];
    v25 = v0[20];
    v24 = v0[21];
    v26 = v0[19];
    (*(v0[23] + 16))(v0[24], v19 + OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_url, v0[22]);
    v31 = v20;
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v0[38] = isa;
    (*(v21 + 8))(v22, v23);
    v0[2] = v0;
    v0[7] = v0 + 44;
    v0[3] = TNUIAccountRemoteUI.present();
    swift_continuation_init();
    v0[17] = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    CheckedContinuation.init(continuation:function:)();
    (*(v25 + 32))(boxed_opaque_existential_0, v24, v26);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
    v0[13] = &block_descriptor;
    [v31 loadRequest:isa completion:?];
    (*(v25 + 8))(boxed_opaque_existential_0, v26);
    v18 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v18);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  v3 = *(v1 + 280);
  v4 = *(v1 + 272);
  if (v2)
  {
    v5 = TNUIAccountRemoteUI.present();
  }

  else
  {
    v5 = TNUIAccountRemoteUI.present();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 304);
  v2 = *(v0 + 144);
  v3 = *(v0 + 352);

  static TNCLogger.default.getter();
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 144);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v3;
    v10 = v7;
    _os_log_impl(&dword_21E646000, v5, v6, "%@ load result %{BOOL}d", v8, 0x12u);
    outlined destroy of CheckedContinuation<(), Error>?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D62010](v9, -1, -1);
    MEMORY[0x223D62010](v8, -1, -1);
  }

  v11 = *(v0 + 288);
  v12 = *(v0 + 240);
  v13 = *(v0 + 224);
  v14 = *(v0 + 144);

  v11(v12, v13);
  *(v0 + 320) = static MainActor.shared.getter();
  v15 = swift_task_alloc();
  *(v0 + 328) = v15;
  *(v15 + 16) = v14;
  v16 = swift_task_alloc();
  *(v0 + 336) = v16;
  *v16 = v0;
  v16[1] = TNUIAccountRemoteUI.present();

  return MEMORY[0x2822008A0]();
}

{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = TNUIAccountRemoteUI.present();
  }

  else
  {

    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = TNUIAccountRemoteUI.present();
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[38];
  v2 = v0[37];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, char a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #1 in TNUIAccountRemoteUI.present()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_continuation;
  swift_beginAccess();
  outlined assign with take of CheckedContinuation<(), Error>?(v6, a2 + v9, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  swift_endAccess();
}

id TNUIAccountRemoteUI.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TNUIAccountRemoteUI.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TNUIAccountRemoteUI(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*protocol witness for TNUIAccountRemoteUIType.delegate.modify in conformance TNUIAccountRemoteUI(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & **v1) + 0x88))();
  return protocol witness for TNUIAccountRemoteUIType.delegate.modify in conformance TNUIAccountRemoteUI;
}

void protocol witness for TNUIAccountRemoteUIType.delegate.modify in conformance TNUIAccountRemoteUI(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for TNUIAccountRemoteUIType.present() in conformance TNUIAccountRemoteUI()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0xC8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return v5();
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL?(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v15[1] = a3;
    v12 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5Error_pGMd, &_sScCy10Foundation3URLVSgs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = type metadata accessor for URL();
      (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
    }

    else
    {
      v14 = type metadata accessor for URL();
      (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    }

    outlined init with take of URL?(v9, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLVSgs5Error_pGMd, &_sScCy10Foundation3URLVSgs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t TNUIAccountRemoteUI.finishWithResult(_:)(void *a1, int a2)
{
  v3 = v2;
  v19 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-v13];
  v15 = OBJC_IVAR____TtC20ThreatNotificationUI19TNUIAccountRemoteUI_continuation;
  swift_beginAccess();
  outlined init with copy of (ObjectIdentifier, Sendable)(v3 + v15, v14, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  if ((*(v6 + 48))(v14, 1, v5))
  {
    outlined destroy of CheckedContinuation<(), Error>?(v14, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  }

  else
  {
    (*(v6 + 16))(v8, v14, v5);
    outlined destroy of CheckedContinuation<(), Error>?(v14, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
    if (v19)
    {
      v20 = a1;
      v16 = a1;
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      CheckedContinuation.resume(returning:)();
    }

    (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 56))(v12, 1, 1, v5);
  swift_beginAccess();
  outlined assign with take of CheckedContinuation<(), Error>?(v12, v3 + v15, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  return swift_endAccess();
}

unint64_t TNUIAccountRemoteUI.accounts(for:)(void *a1)
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15AIDAServiceTypea_So9ACAccountCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3 = [a1 accountStore];
  v4 = [v3 aa_primaryAppleAccount];

  if (v4)
  {
    specialized Dictionary.subscript.setter(v4, *MEMORY[0x277CED1A0]);
  }

  return v2;
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        specialized _NativeDictionary.copy()();
        v10 = v13;
      }

      specialized _NativeDictionary._delete(at:)(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

_OWORD *specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of Sendable(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    outlined destroy of CheckedContinuation<(), Error>?(a1, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
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

      outlined init with take of Sendable((*(v11 + 56) + 32 * v9), v14);
      specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return outlined destroy of CheckedContinuation<(), Error>?(v14, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  }

  return result;
}

uint64_t TNUIAccountRemoteUI.remoteUIWillPresent(_:modally:)(uint64_t a1, char a2)
{
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x78))(a1);
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v10[3] = type metadata accessor for TNUIAccountRemoteUI(0);
    v10[4] = &protocol witness table for TNUIAccountRemoteUI;
    v10[0] = v2;
    v8 = *(v6 + 8);
    v9 = v2;
    v8(v10, a2 & 1, ObjectType, v6);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  return result;
}

void TNUIAccountRemoteUI.remoteUIRequestComplete(_:error:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  MEMORY[0x28223BE20](v4);
  v6 = &v29[-v5];
  v7 = type metadata accessor for URLRequest();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Logger();
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static TNCLogger.default.getter();
  (*(v8 + 16))(v10, a1, v7);
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v11;
    v18 = v17;
    v31 = swift_slowAlloc();
    v35 = v31;
    *v18 = 136315394;
    v30 = v16;
    URLRequest.url.getter();
    v19 = Optional.debugDescription.getter();
    v21 = v20;
    outlined destroy of CheckedContinuation<(), Error>?(v6, &_s10Foundation3URLVSgMd, "t-");
    (*(v8 + 8))(v10, v7);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v35);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v34 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v23 = Optional.debugDescription.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v35);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_21E646000, v15, v30, "GrandSlam remote UI completed for request: %s, error: %s", v18, 0x16u);
    v26 = v31;
    swift_arrayDestroy();
    MEMORY[0x223D62010](v26, -1, -1);
    MEMORY[0x223D62010](v18, -1, -1);

    (*(v33 + 8))(v13, v32);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    (*(v33 + 8))(v13, v11);
  }

  v27 = a2;
  v28 = a2;
  TNUIAccountRemoteUI.finishWithResult(_:)(a2, a2 != 0);
  outlined consume of Result<(), Error>(a2, a2 != 0);
  outlined consume of Result<(), Error>(a2, a2 != 0);
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v10 = v9;
      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = MEMORY[0x223D619D0](*(a2 + 40), *v11);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15AIDAServiceTypea_So9ACAccountCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo15AIDAServiceTypeaSo9ACAccountCGMd, &_ss18_DictionaryStorageCySo15AIDAServiceTypeaSo9ACAccountCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void outlined consume of Result<(), Error>(id a1, char a2)
{
  if (a2)
  {
  }
}

void type metadata completion function for TNUIAccountRemoteUI(uint64_t a1)
{
  type metadata accessor for CheckedContinuation<(), Error>?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of TNUIAccountRemoteUI.__allocating_init(type:presentingViewController:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 192) + **(v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of TNUIAccountRemoteUI.__allocating_init(type:presentingViewController:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of TNUIAccountRemoteUI.__allocating_init(type:presentingViewController:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of TNUIAccountRemoteUI.present()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xC8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return v5();
}

void type metadata accessor for CheckedContinuation<(), Error>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CheckedContinuation<(), Error>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CheckedContinuation<(), Error>?);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t type metadata accessor for ACAccount()
{
  result = lazy cache variable for type metadata for ACAccount;
  if (!lazy cache variable for type metadata for ACAccount)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ACAccount);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s8Sendable_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOs8Sendable_pGMd, &_ss18_DictionaryStorageCySOs8Sendable_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 40)
    {
      outlined init with copy of (ObjectIdentifier, Sendable)(i, &v11, &_sSO_s8Sendable_ptMd, &_sSO_s8Sendable_ptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Sendable(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMd, &_ss18_DictionaryStorageCySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 16);
      v8 = *(i - 1);
      v9 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v12 = v3[7] + 32 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v12 + 24) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined destroy of CheckedContinuation<(), Error>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *outlined init with take of Sendable(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of (ObjectIdentifier, Sendable)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined assign with take of CheckedContinuation<(), Error>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type String and conformance String(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t TNUIViewIdentifier.identifier.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return static ThreatNotification.Screens.EnableLDM.identifier.getter();
    }

    else
    {
      return static ThreatNotification.Screens.LDMEnabled.identifier.getter();
    }
  }

  else if (a1)
  {
    return static ThreatNotification.Screens.AttackDetectedLDMOn.identifier.getter();
  }

  else
  {
    return static ThreatNotification.Screens.AttackDetectedLDMOff.identifier.getter();
  }
}

Swift::Int TNUIViewIdentifier.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TNUIViewIdentifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TNUIViewIdentifier(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TNUIViewIdentifier and conformance TNUIViewIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type TNUIViewIdentifier and conformance TNUIViewIdentifier;
  if (!lazy protocol witness table cache variable for type TNUIViewIdentifier and conformance TNUIViewIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIViewIdentifier and conformance TNUIViewIdentifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNUIViewIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TNUIViewIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of TNUIAccountRemoteUIType.present()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for TNUIAccountRemoteUIProviding.makeRemoteUI(for:presentingViewController:) in conformance TNUIAccountRemoteUIProvider;

  return v7(a1, a2);
}

ThreatNotificationUI::TNCUILink_optional __swiftcall TNCUILink.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TNCUILink.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t TNCUILink.rawValue.getter()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TNCUILink(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "emergencyAssistance";
  v4 = 0xD000000000000021;
  if (v2 == 1)
  {
    v5 = 0xD000000000000021;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (v2 == 1)
  {
    v6 = "emergencyAssistance";
  }

  else
  {
    v6 = "reatNotifications";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "TNUIWebViewController";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000017;
    v3 = "reatNotifications";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "TNUIWebViewController";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TNCUILink()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TNCUILink(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TNCUILink(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TNCUILink(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = "emergencyAssistance";
  v4 = 0xD000000000000021;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000017;
    v3 = "reatNotifications";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "TNUIWebViewController";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

BOOL specialized static TNUIActionIdentifier.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 5)
  {
    if (v2 == 3)
    {
      return v3 == 3;
    }

    if (v2 == 4)
    {
      return v3 == 4;
    }

    if (v2 != 5)
    {
      goto LABEL_18;
    }

    return v3 == 5;
  }

  if (*a1 <= 7u)
  {
    if (v2 != 6)
    {
      if (v2 == 7)
      {
        return v3 == 7;
      }

      goto LABEL_18;
    }

    return v3 == 6;
  }

  if (v2 == 8)
  {
    return v3 == 8;
  }

  if (v2 == 9)
  {
    return v3 == 9;
  }

LABEL_18:
  if ((v3 - 3) < 7)
  {
    return 0;
  }

  if (*a1)
  {
    if (v2 == 1)
    {
      v4 = 0xD000000000000021;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (v2 == 1)
    {
      v5 = "emergencyAssistance";
    }

    else
    {
      v5 = "reatNotifications";
    }
  }

  else
  {
    v4 = 0xD000000000000013;
    v5 = "TNUIWebViewController";
  }

  v7 = v5 | 0x8000000000000000;
  v8 = "emergencyAssistance";
  v9 = 0xD000000000000021;
  if (v3 != 1)
  {
    v9 = 0xD000000000000017;
    v8 = "reatNotifications";
  }

  if (*a2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0xD000000000000013;
  }

  if (*a2)
  {
    v11 = v8;
  }

  else
  {
    v11 = "TNUIWebViewController";
  }

  if (v4 == v10 && v7 == (v11 | 0x8000000000000000))
  {

    return 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v12 & 1;
  }
}

unint64_t lazy protocol witness table accessor for type TNCUILink and conformance TNCUILink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type TNCUILink and conformance TNCUILink;
  if (!lazy protocol witness table cache variable for type TNCUILink and conformance TNCUILink)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNCUILink and conformance TNCUILink);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNUIActionIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 8)
  {
    return v8 - 7;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TNUIActionIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for TNUIActionIdentifier(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for TNUIActionIdentifier(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNCUILink(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TNCUILink(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t one-time initialization function for container()
{
  v4 = 0;
  v0 = type metadata accessor for TNCLDMManager();
  swift_allocObject();
  v1 = TNCLDMManager.init()();
  v3[3] = v0;
  v3[4] = MEMORY[0x277D71448];
  v3[0] = v1;
  static TNUIDependencyContainer.makeDefault(environment:ldmManager:)(&v4, v3, &static TNUIOnBoardingFlow.container);
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t static TNUIOnBoardingFlow.isLDMEnabledOnBoardingViewControllerRequired()()
{
  if (one-time initialization token for container != -1)
  {
    swift_once();
  }

  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core24TNCOnBoardingControlling_p_Tt0B5(static TNUIOnBoardingFlow.container);
  swift_getObjectType();
  v0 = dispatch thunk of TNCOnBoardingControlling.isOnboardingFlowRequired.getter();
  swift_unknownObjectRelease();
  return v0 & 1;
}

TNUIOnBoardingFlow __swiftcall TNUIOnBoardingFlow.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id specialized static TNUIOnBoardingFlow.makeLDMEnabledOnBoardingViewController()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TNCLogger.default.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21E646000, v4, v5, "Did create LDM enabled onboarding flow", v6, 2u);
    MEMORY[0x223D62010](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  if (one-time initialization token for container != -1)
  {
    swift_once();
  }

  v7 = static TNUIOnBoardingFlow.container;
  v8 = type metadata accessor for TNUIOBFlowLDMEnabled();
  v9 = objc_allocWithZone(v8);
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container] = v7;
  v11.receiver = v9;
  v11.super_class = v8;

  return objc_msgSendSuper2(&v11, sel_initWithTransitionStyle_navigationOrientation_options_, 1, 0, 0);
}

unint64_t type metadata accessor for TNUIOnBoardingFlow()
{
  result = lazy cache variable for type metadata for TNUIOnBoardingFlow;
  if (!lazy cache variable for type metadata for TNUIOnBoardingFlow)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TNUIOnBoardingFlow);
  }

  return result;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for TNUIAnalytics();
  result = swift_initStaticObject();
  static TNUIAnalytics.shared = result;
  return result;
}

uint64_t *TNUIAnalytics.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static TNUIAnalytics.shared;
}

uint64_t static TNUIAnalytics.shared.getter()
{
  type metadata accessor for TNUIAnalytics();

  return swift_initStaticObject();
}

uint64_t static TNUIAnalytics.registerCFUReceiptIfNeeded(at:)(double a1)
{
  v2 = type metadata accessor for Logger();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TNCStorageKey();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v8 = type metadata accessor for TNCLDMManager();
  swift_allocObject();
  v9 = TNCLDMManager.init()();
  v27 = v8;
  v28 = MEMORY[0x277D71448];
  v26[0] = v9;
  static TNUIDependencyContainer.makeDefault(environment:ldmManager:)(&v29, v26, v24);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  v23 = v24[0];
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5(v24[0], v26);
  __swift_project_boxed_opaque_existential_0(v26, v27);
  v10 = *MEMORY[0x277D71450];
  v11 = *(v5 + 104);
  v11(v7, v10, v4);
  dispatch thunk of TNCKVStoring.value(for:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v13 = v25;
  outlined destroy of Any?(v24);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  if (v13)
  {

    v14 = v20;
    static TNCLogger.default.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21E646000, v15, v16, "CFU receipt already registered", v17, 2u);
      MEMORY[0x223D62010](v17, -1, -1);
    }

    return (*(v21 + 8))(v14, v22);
  }

  else
  {
    _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5(v23, v26);
    __swift_project_boxed_opaque_existential_0(v26, v27);
    v25 = MEMORY[0x277D839F8];
    *v24 = a1;
    v11(v7, v10, v4);
    dispatch thunk of TNCKVStoring.set(value:for:)();
    v12(v7, v4);
    outlined destroy of Any?(v24);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    type metadata accessor for TNUIAnalytics();
    swift_initStaticObject();
    v26[0] = v23;
    TNUIAnalytics.send(event:container:)(3, v26);
  }
}

uint64_t TNUIAnalytics.send(event:container:)(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = type metadata accessor for Logger();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  v10 = *a2;
  v11 = static ThreatNotification.Analytics.eventIdentifier.getter();
  v13 = v12;
  aBlock[0] = v10;
  v14 = specialized TNUIAnalyticsEvent.payload(with:)(aBlock, v3);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  aBlock[0] = v10;
  if (specialized TNUIAnalytics.shouldLog(payload:for:container:)(v14, v15 & 1, v17, v19 & 1, v3, aBlock))
  {
    _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5(v10, aBlock);
    v21 = v20 & 1;
    specialized TNUIAnalytics.store(payload:for:in:)(v14, v16 & 1, v18, v21, v3, aBlock);
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);

    v22 = MEMORY[0x223D615B0](v11, v13);

    v23 = swift_allocObject();
    *(v23 + 16) = v14;
    *(v23 + 24) = v16 & 1;
    *(v23 + 32) = v18;
    *(v23 + 40) = v21;
    aBlock[4] = partial apply for closure #1 in TNUIAnalytics.send(event:container:);
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    aBlock[3] = &block_descriptor_0;
    v24 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v24);

    static TNCLogger.default.getter();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      v29 = TNUIAnalyticsEvent.EventType.description.getter(v3);
      v31 = v30;

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, aBlock);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_21E646000, v25, v26, "Logged event %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x223D62010](v28, -1, -1);
      MEMORY[0x223D62010](v27, -1, -1);
    }

    else
    {
    }

    return (*(v43 + 8))(v9, v44);
  }

  else
  {
    static TNCLogger.default.getter();

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136315138;
      v37 = TNUIAnalyticsEvent.EventType.description.getter(v3);
      v39 = v38;

      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, aBlock);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_21E646000, v33, v34, "Event %s was not logged", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x223D62010](v36, -1, -1);
      MEMORY[0x223D62010](v35, -1, -1);
    }

    else
    {
    }

    return (*(v43 + 8))(v7, v44);
  }
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo15AIDAServiceTypeaSo9ACAccountCGMd, &_ss18_DictionaryStorageCySo15AIDAServiceTypeaSo9ACAccountCGMR);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
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
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
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
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOs8Sendable_pGMd, &_ss18_DictionaryStorageCySOs8Sendable_pGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
        outlined init with take of Sendable(v21, v31);
      }

      else
      {
        outlined init with copy of Any(v21, v31);
      }

      result = MEMORY[0x223D619D0](*(v7 + 40), v20);
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = outlined init with take of Sendable(v31, (*(v7 + 56) + 32 * v15));
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
      v29 = 1 << *(v5 + 32);
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

    v3 = v30;
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
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMd, &_ss18_DictionaryStorageCySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v3;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v37 = *(v22 + 24);
      v23 = *(v22 + 16);
      v24 = *(v22 + 8);
      v25 = *v22;
      result = MEMORY[0x223D619D0](*(v7 + 40), v21);
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v25;
      *(v16 + 8) = v24;
      *(v16 + 16) = v23;
      *(v16 + 24) = v37;
      ++*(v7 + 16);
      v5 = v36;
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

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
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
        type metadata accessor for AIDAServiceType(0);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x2821F96F8]();
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

    return MEMORY[0x2821F96F8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return MEMORY[0x2821F9840]();
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);

    return outlined init with take of Sendable(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = result;
      specialized _NativeDictionary.copy()();
      result = v23;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 32 * result;
    *v26 = a1;
    *(v26 + 8) = a2 & 1;
    *(v26 + 16) = a3;
    *(v26 + 24) = a4 & 1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a5, a1, a2 & 1, a3, a4 & 1, v25);
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Sendable(a3, (a4[7] + 32 * a1));
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = a7[7] + 32 * result;
  *v7 = a3;
  *(v7 + 8) = a4;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo15AIDAServiceTypeaSo9ACAccountCGMd, &_ss18_DictionaryStorageCySo15AIDAServiceTypeaSo9ACAccountCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOs8Sendable_pGMd, &_ss18_DictionaryStorageCySOs8Sendable_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = outlined init with take of Sendable(v19, (*(v4 + 56) + 32 * v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMd, &_ss18_DictionaryStorageCySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 24) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 32 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      LOBYTE(v17) = *(v17 + 24);
      result = *(v4 + 48);
      *(result + v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 32 * v14;
      *v21 = v18;
      *(v21 + 8) = v19;
      *(v21 + 16) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t specialized TNUIAnalytics.shouldLog(payload:for:container:)(uint64_t a1, int a2, uint64_t a3, int a4, char a5, uint64_t *a6)
{
  v12 = type metadata accessor for TNCStorageKey();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a6;
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAC11EnvironmentO_Tt0B5(v16, v31);
  if (v31[0])
  {
    v17 = 0;
    return v17 & 1;
  }

  v28 = a4;
  v29 = a2;
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core12TNCKVStoring_p_Tt0B5(v16, v31);
  __swift_project_boxed_opaque_existential_0(v31, v31[3]);
  (*(v13 + 104))(v15, *MEMORY[0x277D71458], v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMd, &_sSDySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMR);
  lazy protocol witness table accessor for type [Int : TNUIAnalyticsEvent.Payload] and conformance <> [A : B](&lazy protocol witness table cache variable for type [Int : TNUIAnalyticsEvent.Payload] and conformance <> [A : B], lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
  dispatch thunk of TNCKVStoring.decodedValue<A>(for:)();
  (*(v13 + 8))(v15, v12);
  v18 = v30;
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  if (!v18)
  {
LABEL_17:
    v17 = 1;
    return v17 & 1;
  }

  if ((a5 - 2) >= 6u)
  {
    if (a5)
    {
      v19 = 2;
    }

    else
    {
      v19 = 3;
    }

    if (!*(v18 + 16))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v19 = qword_21E674720[(a5 - 2)];
    if (!*(v18 + 16))
    {
      goto LABEL_16;
    }
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
  if ((v21 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  v22 = *(v18 + 56) + 32 * v20;
  v23 = *v22;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  v26 = *(v22 + 24);

  v17 = 1;
  if (v23 == a1 && ((v24 ^ v29) & 1) == 0 && v25 == a3)
  {
    v17 = v26 ^ v28;
  }

  return v17 & 1;
}

uint64_t specialized TNUIAnalytics.store(payload:for:in:)(uint64_t a1, int a2, uint64_t a3, int a4, char a5, void *a6)
{
  v24 = a2;
  v25 = a4;
  v26 = a1;
  v27 = a3;
  v8 = type metadata accessor for TNCStorageKey();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a6, a6[3]);
  v12 = *(v9 + 104);
  v22 = *MEMORY[0x277D71458];
  v21 = v12;
  v12(v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMd, &_sSDySi20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVGMR);
  lazy protocol witness table accessor for type [Int : TNUIAnalyticsEvent.Payload] and conformance <> [A : B](&lazy protocol witness table cache variable for type [Int : TNUIAnalyticsEvent.Payload] and conformance <> [A : B], lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
  v23 = v13;
  dispatch thunk of TNCKVStoring.decodedValue<A>(for:)();
  v14 = *(v9 + 8);
  v14(v11, v8);
  v15 = v28;
  if (!v28)
  {
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_20ThreatNotificationUI18TNUIAnalyticsEventV7PayloadVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  if ((a5 - 2) >= 6u)
  {
    if (a5)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }
  }

  else
  {
    v16 = qword_21E674720[(a5 - 2)];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v24 & 1, v27, v25 & 1, v16, isUniquelyReferenced_nonNull_native);
  v18 = v28;
  __swift_project_boxed_opaque_existential_0(a6, a6[3]);
  v28 = v18;
  v21(v11, v22, v8);
  lazy protocol witness table accessor for type [Int : TNUIAnalyticsEvent.Payload] and conformance <> [A : B](&lazy protocol witness table cache variable for type [Int : TNUIAnalyticsEvent.Payload] and conformance <> [A : B], lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
  dispatch thunk of TNCKVStoring.set<A>(encodedValue:for:)();
  v14(v11, v8);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload;
  if (!lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload;
  if (!lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIAnalyticsEvent.Payload and conformance TNUIAnalyticsEvent.Payload);
  }

  return result;
}

Swift::Int TNUIButtonStyle.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](a1);
  return Hasher._finalize()();
}

uint64_t TNUIButtonConfiguration.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TNUIButtonConfiguration.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t TNUIButtonConfiguration.accessibilityIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TNUIButtonConfiguration.init(id:actionIdentifier:title:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  if (a6)
  {
    if (a6 == 1)
    {
      result = static ThreatNotification.Screens.secondaryActionButtonIdentifier.getter();
    }

    else
    {
      result = static ThreatNotification.Screens.destructiveActionButtonIdentifier.getter();
    }
  }

  else
  {
    result = static ThreatNotification.Screens.primaryActionButtonIdentifier.getter();
  }

  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v13;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = result;
  *(a7 + 56) = v15;
  *(a7 + 64) = 1;
  return result;
}

uint64_t static TNUIButtonConfiguration.learnMore(link:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v9 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000011, 0x800000021E676010, 0, 0xE000000000000000);
  v11 = v10;
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  v15 = static ThreatNotification.Screens.secondaryActionButtonIdentifier.getter();
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v8;
  *(a2 + 17) = *v21;
  *(a2 + 20) = *&v21[3];
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = 1;
  *(a2 + 41) = *&v20[2];
  *(a2 + 44) = *&v20[5];
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = 1;
  if (v8 == 1)
  {

    v18 = 0;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v18 = v19 ^ 1;
  }

  *(a2 + 64) = v18 & 1;
  return result;
}

uint64_t static TNUIButtonConfiguration.notNow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0x5F574F4E5F544F4ELL, 0xEE004E4F49544341, 0, 0xE000000000000000);
  v8 = v7;
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  result = static ThreatNotification.Screens.destructiveActionButtonIdentifier.getter();
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = 7;
  *(a1 + 17) = *v15;
  *(a1 + 20) = *&v15[3];
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  *(a1 + 40) = 2;
  *(a1 + 41) = *&v14[2];
  *(a1 + 44) = *&v14[5];
  *(a1 + 48) = result;
  *(a1 + 56) = v13;
  *(a1 + 64) = 1;
  return result;
}

uint64_t static TNUIButtonConfiguration.turnOnAndRestart.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001ALL, 0x800000021E676030, 0, 0xE000000000000000);
  v8 = v7;
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  result = static ThreatNotification.Screens.primaryActionButtonIdentifier.getter();
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = 8;
  *(a1 + 17) = *v15;
  *(a1 + 20) = *&v15[3];
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  *(a1 + 40) = 0;
  *(a1 + 41) = *&v14[2];
  *(a1 + 44) = *&v14[5];
  *(a1 + 48) = result;
  *(a1 + 56) = v13;
  *(a1 + 64) = 1;
  return result;
}

uint64_t static TNUIButtonConfiguration.turnOnLDM.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000012, 0x800000021E676050, 0, 0xE000000000000000);
  v8 = v7;
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  result = static ThreatNotification.Screens.primaryActionButtonIdentifier.getter();
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = 8;
  *(a1 + 17) = *v15;
  *(a1 + 20) = *&v15[3];
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  *(a1 + 40) = 0;
  *(a1 + 41) = *&v14[2];
  *(a1 + 44) = *&v14[5];
  *(a1 + 48) = result;
  *(a1 + 56) = v13;
  *(a1 + 64) = 1;
  return result;
}

uint64_t static TNUIButtonConfiguration.continue.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(a1, a2, 0, 0xE000000000000000);
  v14 = v13;
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  result = static ThreatNotification.Screens.primaryActionButtonIdentifier.getter();
  *a4 = v15;
  *(a4 + 8) = v17;
  *(a4 + 16) = a3;
  *(a4 + 17) = *v21;
  *(a4 + 20) = *&v21[3];
  *(a4 + 24) = v12;
  *(a4 + 32) = v14;
  *(a4 + 40) = 0;
  *(a4 + 41) = *&v20[2];
  *(a4 + 44) = *&v20[5];
  *(a4 + 48) = result;
  *(a4 + 56) = v19;
  *(a4 + 64) = 1;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance TNUIButtonConfiguration@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t specialized static TNUIButtonConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a1 + 40);
  v16 = a1[6];
  v17 = a1[7];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v14 = *(a2 + 64);
  v15 = *(a1 + 64);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v19 = v2;
  v18 = v6;
  if (!specialized static TNUIActionIdentifier.== infix(_:_:)(&v19, &v18))
  {
    return 0;
  }

  if (v3 == v7 && v4 == v8)
  {
    if (v5 != v9)
    {
      return 0;
    }

LABEL_11:
    if (v16 == v10 && v17 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v15 ^ v14 ^ 1u;
    }

    return 0;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v12 & 1) != 0 && v5 == v9)
  {
    goto LABEL_11;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TNUIButtonStyle and conformance TNUIButtonStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type TNUIButtonStyle and conformance TNUIButtonStyle;
  if (!lazy protocol witness table cache variable for type TNUIButtonStyle and conformance TNUIButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIButtonStyle and conformance TNUIButtonStyle);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TNUIButtonConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for TNUIButtonConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id TNUIOBKViewController.__allocating_init(viewModel:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton] = 0;
  *&v3[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id TNUIOBKViewController.init(viewModel:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton] = 0;
  *&v1[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TNUIOBKViewController();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

id TNUIOBKViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TNUIOBKViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall TNUIOBKViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for TNUIOBKViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  TNUIOBKViewController.setup()();
}

void TNUIOBKViewController.setup()()
{
  v1 = v0;
  v2 = type metadata accessor for TNUIViewConfiguration(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = v5;
  (*(**&v0[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel] + 96))();
  v7 = *v4;
  outlined destroy of TNUIViewConfiguration(v4);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = static ThreatNotification.Screens.EnableLDM.identifier.getter();
    }

    else
    {
      v8 = static ThreatNotification.Screens.LDMEnabled.identifier.getter();
    }
  }

  else if (v7)
  {
    v8 = static ThreatNotification.Screens.AttackDetectedLDMOn.identifier.getter();
  }

  else
  {
    v8 = static ThreatNotification.Screens.AttackDetectedLDMOff.identifier.getter();
  }

  v9 = MEMORY[0x223D615B0](v8);

  [v6 setAccessibilityIdentifier_];

  v10 = TNUIOBKViewController.makeOBKViewController()();
  [v1 addChildViewController_];
  v11 = [v10 view];
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  v13 = [v1 view];
  if (!v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = v13;
  v15 = [v10 view];
  if (!v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  [v14 addSubview_];

  v17 = [v1 view];
  if (!v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v10 view];
  if (!v20)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  [v23 setActive_];

  v24 = [v1 view];
  if (!v24)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = v24;
  v26 = [v24 trailingAnchor];

  v27 = [v10 view];
  if (!v27)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v28 = v27;
  v29 = [v27 trailingAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  [v30 setActive_];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v10 view];
  if (!v34)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v35 = v34;
  v36 = [v34 bottomAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  [v37 setActive_];

  v38 = [v1 view];
  if (!v38)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v10 view];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 leadingAnchor];

    v44 = [v40 constraintEqualToAnchor_];
    [v44 setActive_];

    [v10 didMoveToParentViewController_];
    return;
  }

LABEL_32:
  __break(1u);
}

id TNUIOBKViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x223D615B0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TNUIOBKViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TNUIOBKViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TNUIOBKViewController.showActivityIndicator(for:show:)(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v24[-v9];
  v11 = type metadata accessor for TNUIViewConfiguration(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a1;
  (*(**(v3 + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel) + 96))(v13);
  v17 = &v15[*(v12 + 40)];
  v18 = *(v17 + 3);
  v29 = *(v17 + 2);
  v30 = v18;
  v31 = v17[64];
  v19 = *(v17 + 1);
  v27 = *v17;
  v28 = v19;
  outlined init with copy of (ObjectIdentifier, Sendable)(&v27, v26, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
  outlined destroy of TNUIViewConfiguration(v15);
  if (*(&v27 + 1) && (v20 = v28, outlined destroy of CheckedContinuation<(), Error>?(&v27, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR), v20 != 10))
  {
    v26[0] = v20;
    if (v16 == 10)
    {
      return;
    }

    v25 = v16;
    if (!specialized static TNUIActionIdentifier.== infix(_:_:)(v26, &v25))
    {
      return;
    }
  }

  else if (v16 != 10)
  {
    return;
  }

  v21 = *(v3 + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton);
  if (v21)
  {
    v22 = v21;
    UIButton.configuration.getter();
    v23 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v23 - 8) + 48))(v10, 1, v23))
    {
      outlined init with copy of (ObjectIdentifier, Sendable)(v10, v8, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
      UIButton.configuration.setter();

      outlined destroy of CheckedContinuation<(), Error>?(v10, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
    }

    else
    {
      UIButton.Configuration.showsActivityIndicator.setter();
      UIButton.configuration.setter();
    }
  }
}

uint64_t outlined destroy of TNUIViewConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for TNUIViewConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id TNUIOBKViewController.makeOBKViewController()()
{
  v79 = type metadata accessor for AttributedString();
  v78 = *(v79 - 1);
  MEMORY[0x28223BE20](v79);
  v77 = &v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for TNUIViewConfiguration(0);
  v2 = MEMORY[0x28223BE20](v83);
  v80 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v82 = &v76 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v76 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v76 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v76 - v13);
  v81 = v0;
  v15 = *(v0 + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel);
  v16 = *(*v15 + 96);
  v84 = *v15 + 96;
  v85 = v16;
  (v16)(v12);
  v18 = v14[1];
  v17 = v14[2];
  v19 = v14[3];
  outlined copy of TNUIImageConfiguration?(v18, v17, v19);
  outlined destroy of TNUIViewConfiguration(v14);
  if (v17)
  {
    v76 = v18;
    v20 = objc_opt_self();
    v21 = [v20 configurationPreferringMonochrome];
    v22 = &off_278361000;
    if (v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_21E6748D0;
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIColor, 0x277D75348);
      outlined copy of TNUIImageColorScheme(v19);
      outlined copy of TNUIImageColorScheme(v19);
      *(v23 + 32) = UIColor.init(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v25 = [v20 configurationWithPaletteColors_];

      v26 = [v21 configurationByApplyingConfiguration_];
      outlined consume of TNUIImageColorScheme(v19);

      v22 = &off_278361000;
      v21 = v26;
    }

    v27 = [v20 configurationWithPointSize_];
    v28 = [v21 v22[60]];

    v29 = MEMORY[0x223D615B0](v76, v17);
    v30 = [objc_opt_self() systemImageNamed:v29 withConfiguration:v28];

    outlined consume of TNUIImageColorScheme(v19);
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = v85;
  v85();
  v34 = *(v11 + 5);
  v33 = *(v11 + 6);

  outlined destroy of TNUIViewConfiguration(v11);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
  v32();
  (*(v78 + 16))(v77, &v8[*(v83 + 28)], v79);
  outlined destroy of TNUIViewConfiguration(v8);
  v35 = NSAttributedString.init(_:)();
  v36 = [v35 string];

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = objc_allocWithZone(MEMORY[0x277D37698]);
  v41 = MEMORY[0x223D615B0](v34, v33);

  v42 = MEMORY[0x223D615B0](v37, v39);

  v43 = v31;
  v44 = [v40 initWithTitle:v41 detailText:v42 icon:v31 contentLayout:2];

  v79 = v43;
  v45 = [v44 headerView];
  v46 = static ThreatNotification.Screens.iconIdentifier.getter();
  v47 = MEMORY[0x223D615B0](v46);

  [v45 setIconAccessibilityIdentifier_];

  v48 = [v44 headerView];
  v49 = static ThreatNotification.Screens.titleIdentifier.getter();
  v50 = MEMORY[0x223D615B0](v49);

  [v48 setTitleAccessibilityIdentifier_];

  v51 = [v44 headerView];
  v52 = static ThreatNotification.Screens.subtitleIdentifier.getter();
  v53 = MEMORY[0x223D615B0](v52);

  [v51 setDetailTextAccessibilityIdentifier_];

  v54 = v82;
  v55 = (v32)();
  v56 = v80;
  (v32)(v55);
  v57 = v56 + *(v83 + 32);
  v58 = *(v57 + 48);
  *v89 = *(v57 + 32);
  *&v89[16] = v58;
  v89[32] = *(v57 + 64);
  v59 = *(v57 + 16);
  v87 = *v57;
  v88 = v59;
  outlined init with copy of (ObjectIdentifier, Sendable)(&v87, v86, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
  outlined destroy of TNUIViewConfiguration(v56);
  v60 = *(&v87 + 1);
  if (*(&v87 + 1))
  {
    v62 = *(&v88 + 1);
    v61 = *v89;
    v83 = v88;
    v80 = v87;
    v86[0] = *&v89[8];
    *(v86 + 9) = *&v89[17];
    v63 = [objc_opt_self() accessoryButton];
    v64 = MEMORY[0x223D615B0](v62, v61);
    [v63 setTitle:v64 forState:0];

    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
    v65 = swift_allocObject();
    v66 = v81;
    swift_unknownObjectWeakInit();
    v67 = swift_allocObject();
    v68 = v80;
    *(v67 + 16) = v65;
    *(v67 + 24) = v68;
    v69 = v83;
    *(v67 + 32) = v60;
    *(v67 + 40) = v69;
    *(v67 + 48) = v62;
    *(v67 + 56) = v61;
    *(v67 + 64) = v86[0];
    *(v67 + 73) = *(v86 + 9);
    v70 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v63 addAction:v70 forControlEvents:64];

    v71 = [v44 headerView];
    [v71 addAccessoryButton_];

    outlined destroy of TNUIViewConfiguration(v82);
    v72 = *(v66 + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton);
    *(v66 + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_linkButton) = v63;
  }

  else
  {
    outlined destroy of TNUIViewConfiguration(v54);
  }

  v73 = v85;
  v85();
  TNUIOBKViewController.configureContentView(in:with:)(v44, v11);
  v74 = outlined destroy of TNUIViewConfiguration(v11);
  (v73)(v74);
  TNUIOBKViewController.configureButtons(in:with:)(v44);

  outlined destroy of TNUIViewConfiguration(v11);
  return v44;
}

void TNUIOBKViewController.configureContentView(in:with:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UIHostingControllerSizingOptions();
  MEMORY[0x28223BE20](v4);
  v5 = *(a2 + *(type metadata accessor for TNUIViewConfiguration(0) + 36));
  if (v5 && *(v5 + 16))
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for TNUIViewModel(0);
    lazy protocol witness table accessor for type TNUIViewModel and conformance TNUIViewModel(&lazy protocol witness table cache variable for type TNUIViewModel and conformance TNUIViewModel, type metadata accessor for TNUIViewModel, &protocol conformance descriptor for TNUIViewModel);

    ObservedObject.init(wrappedValue:)();
    v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy018ThreatNotificationB027TNUIActionItemContainerViewVGMd, &_s7SwiftUI19UIHostingControllerCy018ThreatNotificationB027TNUIActionItemContainerViewVGMR));

    v7 = UIHostingController.init(rootView:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI32UIHostingControllerSizingOptionsVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI32UIHostingControllerSizingOptionsVGMR);
    *(swift_allocObject() + 16) = xmmword_21E6748E0;
    static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
    lazy protocol witness table accessor for type TNUIViewModel and conformance TNUIViewModel(&lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions, MEMORY[0x277CDE4B0], MEMORY[0x277CDE4C0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMd, &_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMR);
    lazy protocol witness table accessor for type [UIHostingControllerSizingOptions] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    dispatch thunk of UIHostingController.sizingOptions.setter();
    v8 = [v7 view];
    if (!v8)
    {
      v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    }

    [a1 addChildViewController_];
    v9 = [a1 contentView];
    [v9 addSubview_];

    [v7 didMoveToParentViewController_];
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    v28 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21E6748F0;
    v11 = [v8 topAnchor];
    v12 = [a1 contentView];
    v13 = [v12 topAnchor];

    v14 = [v11 constraintEqualToAnchor_];
    *(v10 + 32) = v14;
    v15 = [v8 leadingAnchor];
    v16 = [a1 contentView];
    v17 = [v16 leadingAnchor];

    v18 = [v15 constraintEqualToAnchor_];
    *(v10 + 40) = v18;
    v19 = [v8 bottomAnchor];
    v20 = [a1 contentView];
    v21 = [v20 bottomAnchor];

    v22 = [v19 constraintEqualToAnchor_];
    *(v10 + 48) = v22;
    v23 = [v8 trailingAnchor];
    v24 = [a1 contentView];
    v25 = [v24 trailingAnchor];

    v26 = [v23 constraintEqualToAnchor_];
    *(v10 + 56) = v26;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v28 activateConstraints_];
  }
}

uint64_t TNUIOBKViewController.configureButtons(in:with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TNUIViewConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = [a1 buttonTray];
  (*(**(v2 + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel) + 96))();
  v9 = *&v7[*(v5 + 48)];

  outlined destroy of TNUIViewConfiguration(v7);
  v31 = v9;
  v10 = *(v9 + 16);
  if (v10)
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
    v11 = (v31 + 32);
    do
    {
      v25 = v11[3];
      v26 = *(v11 + 64);
      v27 = v11[1];
      v35 = v11[2];
      v28 = *v11;
      v37 = v26;
      v36 = v25;
      v33 = v28;
      v34 = v27;
      if (BYTE8(v35))
      {
        v12 = objc_opt_self();
        outlined init with copy of TNUIButtonConfiguration(&v33, v32);
        v13 = [v12 linkButton];
        v14 = static ThreatNotification.Screens.secondaryActionButtonIdentifier.getter();
      }

      else
      {
        v29 = objc_opt_self();
        outlined init with copy of TNUIButtonConfiguration(&v33, v32);
        v13 = [v29 boldButton];
        v14 = static ThreatNotification.Screens.primaryActionButtonIdentifier.getter();
      }

      v15 = MEMORY[0x223D615B0](v14);

      [v13 setAccessibilityIdentifier_];

      v16 = *(&v34 + 1);
      v17 = v35;
      v18 = v13;
      v19 = MEMORY[0x223D615B0](v16, v17);
      [v18 setTitle:v19 forState:0];

      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      v22 = v33;
      *(v21 + 40) = v34;
      v23 = v36;
      *(v21 + 56) = v35;
      *(v21 + 72) = v23;
      *(v21 + 88) = v37;
      *(v21 + 24) = v22;
      v24 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      [v18 addAction:v24 forControlEvents:64];

      [v8 addButton_];
      v11 = (v11 + 72);
      --v10;
    }

    while (v10);
  }
}

char *closure #1 in TNUIOBKViewController.configureContentView(in:with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *&result[OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel];
    v5 = result;

    v6 = *(a1 + 16);
    (*(*v4 + 184))(&v6);
  }

  return result;
}

uint64_t closure #1 in TNUIOBKViewController.configureLink(in:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC20ThreatNotificationUI21TNUIOBKViewController_viewModel);
    v7 = Strong;

    v9 = *(a3 + 16);
    (*(*v6 + 184))(&v9);
  }
}

void outlined copy of TNUIImageConfiguration?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    outlined copy of TNUIImageColorScheme(a3);
  }
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t lazy protocol witness table accessor for type TNUIViewModel and conformance TNUIViewModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type [UIHostingControllerSizingOptions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMd, &_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for NSAttributedString(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t static TNUILocalization.helpAppleImproveMessage(url:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21E6748E0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String(v4, v5, v6);
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001ALL, 0x800000021E676260, 0, 0xE000000000000000);
  v7 = String.init(format:_:)();

  return v7;
}

uint64_t static TNUILocalization.lockDownModeTurnedOnMessage(account:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21E674980;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v12 = lazy protocol witness table accessor for type String and conformance String(v8, v10, v11);
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 96) = v9;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;

  specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000027, 0x800000021E676300, 0, 0xE000000000000000);
  v13 = String.init(format:_:)();

  return v13;
}

uint64_t static TNUILocalization.spywareAttackDetectedLDMOffMessage(account:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21E6748E0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String(v4, v5, v6);
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000002CLL, 0x800000021E676370, 0, 0xE000000000000000);
  v7 = String.init(format:_:)();

  return v7;
}

uint64_t static TNUILocalization.spywareAttackDetectedLDMOnMessage(account:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21E6748E0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String(v4, v5, v6);
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000002BLL, 0x800000021E6763A0, 0, 0xE000000000000000);
  v7 = String.init(format:_:)();

  return v7;
}

id one-time initialization function for current()
{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.current = result;
  return result;
}

uint64_t specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    MEMORY[0x223D61640](a3, a4);
    v7 = 45;
    v8 = 0xE100000000000000;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  MEMORY[0x223D61640](v7, v8);

  v9 = 0x617A696C61636F4CLL;
  if (one-time initialization token for current != -1)
  {
    swift_once();
    v9 = 0x617A696C61636F4CLL;
  }

  v15._object = 0xE000000000000000;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11 = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, *&v9, static NSBundle.current, v12, v15)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t specialized static TNUILocalization.lockDownModeTurnedOnMessage(date:)(uint64_t a1)
{
  v50 = a1;
  v1 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x28223BE20](v1);
  v47 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatStyleCapitalizationContext();
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TimeZone();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for Calendar();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV11FormatStyleV04TimeD0VSgMd, &_s10Foundation4DateV11FormatStyleV04TimeD0VSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV11FormatStyleV0bD0VSgMd, &_s10Foundation4DateV11FormatStyleV0bD0VSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v41 - v14;
  v42 = type metadata accessor for Date.FormatStyle();
  v16 = *(v42 - 8);
  v17 = MEMORY[0x28223BE20](v42);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v41 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  v25 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  v26 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  v27 = static TimeZone.autoupdatingCurrent.getter();
  MEMORY[0x223D60AA0](v27);
  v28 = Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v29 = v44;
  MEMORY[0x223D60B90](v28);
  Date.FormatStyle.month(_:)();
  (*(v45 + 8))(v29, v46);
  v30 = *(v16 + 8);
  v31 = v42;
  v32 = v30(v19, v42);
  v33 = v47;
  MEMORY[0x223D60B70](v32);
  Date.FormatStyle.day(_:)();
  (*(v48 + 8))(v33, v49);
  v30(v22, v31);
  lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle();
  Date.formatted<A>(_:)();
  v30(v24, v31);
  v34 = v51;
  v35 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_21E6748E0;
  *(v36 + 56) = MEMORY[0x277D837D0];
  *(v36 + 64) = lazy protocol witness table accessor for type String and conformance String(v36, v37, v38);
  *(v36 + 32) = v34;
  *(v36 + 40) = v35;
  specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000028, 0x800000021E6764D0, 0, 0xE000000000000000);
  v39 = String.init(format:_:)();

  return v39;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    type metadata accessor for Date.FormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

uint64_t TNUIViewConfiguration.image.getter()
{
  v1 = v0[1];
  outlined copy of TNUIImageConfiguration?(v1, v0[2], v0[3]);
  return v1;
}

uint64_t TNUIViewConfiguration.title.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t TNUIViewConfiguration.message.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TNUIViewConfiguration(0) + 28);
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TNUIViewConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for TNUIViewConfiguration;
  if (!type metadata singleton initialization cache for TNUIViewConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TNUIViewConfiguration.link.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TNUIViewConfiguration(0) + 32);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return outlined init with copy of (ObjectIdentifier, Sendable)(v10, v9, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
}

uint64_t TNUIViewConfiguration.actionItems.getter()
{
  type metadata accessor for TNUIViewConfiguration(0);
}

uint64_t TNUIViewConfiguration.actionButtons.getter()
{
  type metadata accessor for TNUIViewConfiguration(0);
}

__n128 TNUIViewConfiguration.init(identifier:image:title:markdownMessage:link:actionItems:actionButtons:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13)
{
  v56 = a7;
  v57 = a8;
  v55 = a6;
  v53 = a5;
  v51 = a3;
  v52 = a4;
  v50 = a2;
  v49 = a1;
  v59 = a12;
  v60 = a13;
  v58 = a10;
  v14 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v14 - 8);
  v46 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v48 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v18 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  MEMORY[0x28223BE20](v21 - 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v44 - v26;
  v28 = type metadata accessor for AttributedString();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v45 = &v44 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a11[3];
  v63 = a11[2];
  v64 = v31;
  v65 = *(a11 + 64);
  v32 = a11[1];
  v61 = *a11;
  v62 = v32;
  *a9 = v49;
  v33 = v51;
  *(a9 + 8) = v50;
  *(a9 + 16) = v33;
  *(a9 + 24) = v52;
  *(a9 + 32) = v53;
  v34 = v56;
  *(a9 + 40) = v55;
  *(a9 + 48) = v34;
  v35 = type metadata accessor for URL();
  (*(*(v35 - 8) + 56))(v24, 1, 1, v35);
  (*(v18 + 104))(v20, *MEMORY[0x277CC8BB0], v47);
  (*(v48 + 104))(v17, *MEMORY[0x277CC8B98], v54);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  AttributedString.init(markdown:options:baseURL:)();

  (*(v29 + 56))(v27, 0, 1, v28);
  v36 = *(v29 + 32);
  v37 = v45;
  v36(v45, v27, v28);
  v38 = type metadata accessor for TNUIViewConfiguration(0);
  v36((a9 + v38[7]), v37, v28);
  type metadata accessor for TNUIViewConfiguration(0);
  v39 = a9 + v38[8];
  v40 = v64;
  *(v39 + 32) = v63;
  *(v39 + 48) = v40;
  *(v39 + 64) = v65;
  v41 = v62;
  *v39 = v61;
  *(v39 + 16) = v41;
  v42 = v60;
  *(a9 + v38[9]) = v59;
  *(a9 + v38[10]) = v42;
  TNUIViewConfiguration.removeMailHighlighting()();
  return result;
}

Swift::Void __swiftcall TNUIViewConfiguration.removeMailHighlighting()()
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  MEMORY[0x28223BE20](v57);
  v61 = &v51 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v56 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v55 = &v51 - v6;
  MEMORY[0x28223BE20](v5);
  v74 = &v51 - v7;
  v75 = type metadata accessor for URL();
  v8 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString.Runs.Index();
  v71 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributedString.Runs.Run();
  v14 = *(v13 - 8);
  v65 = v13;
  v66 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v59 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - v17;
  v19 = type metadata accessor for AttributedString.Runs();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = &v51 - v25;
  v27 = *(type metadata accessor for TNUIViewConfiguration(0) + 28);
  v58 = v0;
  v53 = v27;
  AttributedString.runs.getter();
  (*(v20 + 16))(v26, v22, v19);
  v28 = *(v24 + 44);
  v29 = v12;
  v30 = lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
  v72 = v28;
  dispatch thunk of Collection.startIndex.getter();
  v31 = *(v20 + 8);
  v32 = v22;
  v33 = v59;
  v73 = v19;
  v31(v32, v19);
  v34 = v65;
  ++v71;
  v68 = (v66 + 4);
  v69 = (v66 + 2);
  v67 = (v8 + 48);
  v63 = (v8 + 32);
  v51 = (v8 + 56);
  v62 = (v8 + 8);
  ++v66;
  v54 = v10;
  v64 = v18;
  v52 = v30;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
    v35 = v30;
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v71)(v29, v10);
    if (v36)
    {
      break;
    }

    v37 = dispatch thunk of Collection.subscript.read();
    (*v69)(v18);
    v37(v76, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v38 = (*v68)(v33, v18, v34);
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute(v38, v39, v40);
    v41 = v74;
    AttributedString.Runs.Run.subscript.getter();
    v42 = (*v67)(v41, 1, v75);
    v30 = v35;
    if (v42 == 1)
    {
      (*v66)(v33, v34);
      outlined destroy of CheckedContinuation<(), Error>?(v74, &_s10Foundation3URLVSgMd, "t-");
    }

    else
    {
      (*v63)(v70, v74, v75);
      v43 = URL.scheme.getter();
      if (v44)
      {
        if (v43 == 0x6F746C69616DLL && v44 == 0xE600000000000000)
        {

LABEL_10:
          AttributedString.Runs.Run.range.getter();
          v46 = v55;
          v47 = v75;
          (*v51)(v55, 1, 1, v75);
          lazy protocol witness table accessor for type Range<AttributedString.Index> and conformance Range<A>();
          v60 = AttributedString.subscript.modify();
          outlined init with copy of (ObjectIdentifier, Sendable)(v46, v56, &_s10Foundation3URLVSgMd, "t-");
          v33 = v59;
          AttributedSubstring.subscript.setter();
          v10 = v54;
          outlined destroy of CheckedContinuation<(), Error>?(v46, &_s10Foundation3URLVSgMd, "t-");
          v60(v76, 0);
          outlined destroy of CheckedContinuation<(), Error>?(v61, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
          v48 = v47;
          v30 = v52;
          (*v62)(v70, v48);
          v49 = *v66;
          v50 = v33;
          goto LABEL_12;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v45)
        {
          goto LABEL_10;
        }
      }

      (*v62)(v70, v75);
      v49 = *v66;
      v50 = v33;
LABEL_12:
      v34 = v65;
      v49(v50, v65);
      v18 = v64;
    }
  }

  outlined destroy of CheckedContinuation<(), Error>?(v26, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
}

uint64_t lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Range<AttributedString.Index> and conformance Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>;
  if (!lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>);
  }

  return result;
}

void static TNUIViewConfiguration.attackDetectedLDMOff(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a1;
  v5 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v5 - 8);
  v36[1] = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v41 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  MEMORY[0x28223BE20](v11 - 8);
  v42 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v36 - v17;
  v45 = type metadata accessor for AttributedString();
  v19 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v36[0] = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0x800000021E676500;
  v38 = static Color.red.getter();
  v21 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001FLL, 0x800000021E6761F0, 0, 0xE000000000000000);
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v24 = swift_allocObject();
  v37 = xmmword_21E6748E0;
  *(v24 + 16) = xmmword_21E6748E0;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String(v24, v25, v26);
  *(v24 + 32) = v40;
  *(v24 + 40) = a2;

  specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000002CLL, 0x800000021E676370, 0, 0xE000000000000000);
  String.init(format:_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = v37;
  static TNUIButtonConfiguration.continueToLockDownMode.getter(v27 + 32);
  *a3 = 0;
  v28 = v38;
  v29 = v39;
  *(a3 + 8) = 0xD00000000000001DLL;
  *(a3 + 16) = v29;
  *(a3 + 24) = v28;
  *(a3 + 32) = 0;
  *(a3 + 40) = v21;
  *(a3 + 48) = v23;
  v30 = type metadata accessor for URL();
  (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
  (*(v43 + 104))(v41, *MEMORY[0x277CC8BB0], v44);
  (*(v47 + 104))(v46, *MEMORY[0x277CC8B98], v48);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  AttributedString.init(markdown:options:baseURL:)();

  v31 = v45;
  (*(v19 + 56))(v18, 0, 1, v45);
  v32 = *(v19 + 32);
  v33 = v36[0];
  v32(v36[0], v18, v31);
  v34 = type metadata accessor for TNUIViewConfiguration(0);
  v32(a3 + v34[7], v33, v31);
  type metadata accessor for TNUIViewConfiguration(0);
  v35 = a3 + v34[8];
  *(v35 + 64) = 0;
  *(v35 + 32) = 0u;
  *(v35 + 48) = 0u;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  *(a3 + v34[9]) = 0;
  *(a3 + v34[10]) = v27;
  TNUIViewConfiguration.removeMailHighlighting()();
}

void static TNUIViewConfiguration.attackDetectedLDMOn(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a1;
  v5 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v5 - 8);
  v36[1] = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v41 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  MEMORY[0x28223BE20](v11 - 8);
  v42 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v36 - v17;
  v45 = type metadata accessor for AttributedString();
  v19 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v36[0] = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0x800000021E676500;
  v38 = static Color.red.getter();
  v21 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001FLL, 0x800000021E6761F0, 0, 0xE000000000000000);
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v24 = swift_allocObject();
  v37 = xmmword_21E6748E0;
  *(v24 + 16) = xmmword_21E6748E0;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String(v24, v25, v26);
  *(v24 + 32) = v40;
  *(v24 + 40) = a2;

  specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000002BLL, 0x800000021E6763A0, 0, 0xE000000000000000);
  String.init(format:_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = v37;
  static TNUIButtonConfiguration.continue.getter(v27 + 32);
  *a3 = 1;
  v28 = v38;
  v29 = v39;
  *(a3 + 8) = 0xD00000000000001DLL;
  *(a3 + 16) = v29;
  *(a3 + 24) = v28;
  *(a3 + 32) = 0;
  *(a3 + 40) = v21;
  *(a3 + 48) = v23;
  v30 = type metadata accessor for URL();
  (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
  (*(v43 + 104))(v41, *MEMORY[0x277CC8BB0], v44);
  (*(v47 + 104))(v46, *MEMORY[0x277CC8B98], v48);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  AttributedString.init(markdown:options:baseURL:)();

  v31 = v45;
  (*(v19 + 56))(v18, 0, 1, v45);
  v32 = *(v19 + 32);
  v33 = v36[0];
  v32(v36[0], v18, v31);
  v34 = type metadata accessor for TNUIViewConfiguration(0);
  v32(a3 + v34[7], v33, v31);
  type metadata accessor for TNUIViewConfiguration(0);
  v35 = a3 + v34[8];
  *(v35 + 64) = 0;
  *(v35 + 32) = 0u;
  *(v35 + 48) = 0u;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  *(a3 + v34[9]) = 0;
  *(a3 + v34[10]) = v27;
  TNUIViewConfiguration.removeMailHighlighting()();
}

void static TNUIViewConfiguration.turnOnLockDownMode.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - v14;
  v38 = type metadata accessor for AttributedString();
  v16 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v30 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = static Color.accentColor.getter();
  v19 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001ALL, 0x800000021E676430, 0, 0xE000000000000000);
  v21 = v20;
  v32 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x800000021E676410, 0, 0xE000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ThreatNotificationUI23TNUIButtonConfigurationVGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21E6748E0;
  v35 = v22;
  static TNUIButtonConfiguration.turnOnAndRestart.getter(v22 + 32);
  *a1 = 2;
  *(a1 + 8) = 0xD000000000000010;
  *(a1 + 16) = 0x800000021E676520;
  *(a1 + 24) = v18;
  *(a1 + 32) = 0;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  (*(v36 + 104))(v33, *MEMORY[0x277CC8BB0], v37);
  (*(v40 + 104))(v39, *MEMORY[0x277CC8B98], v41);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  AttributedString.init(markdown:options:baseURL:)();

  v24 = v38;
  (*(v16 + 56))(v15, 0, 1, v38);
  v25 = *(v16 + 32);
  v26 = v30;
  v25(v30, v15, v24);
  v27 = type metadata accessor for TNUIViewConfiguration(0);
  v25((a1 + v27[7]), v26, v24);
  type metadata accessor for TNUIViewConfiguration(0);
  v28 = a1 + v27[8];
  *(v28 + 64) = 0;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(a1 + v27[9]) = 0;
  *(a1 + v27[10]) = v35;
  TNUIViewConfiguration.removeMailHighlighting()();
}

__n128 static TNUIViewConfiguration.lockDownModeTurnedOn(notificationDate:shareAnalytics:)@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v153) = a2;
  v133 = a1;
  v138 = a3;
  v145 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v135 = &v118 - v4;
  v137 = type metadata accessor for Date();
  v134 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v122 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v6 - 8);
  v142 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v141 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v136 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v129 = &v118 - v19;
  MEMORY[0x28223BE20](v18);
  v125 = (&v118 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v131 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v127 = &v118 - v25;
  MEMORY[0x28223BE20](v24);
  v123 = &v118 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v132 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v128 = &v118 - v31;
  MEMORY[0x28223BE20](v30);
  v126 = &v118 - v32;
  v33 = type metadata accessor for AttributedString();
  v149 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33);
  v121 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v120 = &v118 - v37;
  MEMORY[0x28223BE20](v36);
  v119 = &v118 - v38;
  v139 = type metadata accessor for TNUIActionItemConfiguration(0);
  v140 = *(v139 - 8);
  v39 = MEMORY[0x28223BE20](v139);
  v41 = &v118 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v39);
  v130 = &v118 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v118 - v45;
  MEMORY[0x28223BE20](v44);
  v124 = &v118 - v47;
  v150 = v33;
  v151 = v10;
  v147 = v14;
  v148 = v11;
  v152 = v8;
  if (v153)
  {
    v153 = static ThreatNotification.Screens.LDMEnabled.ActionItem.shareAnalyticsIdentifier.getter();
    v144 = v48;
    v49 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000016, 0x800000021E676350, 0, 0xE000000000000000);
    v146 = v12;
    v143 = v49;
    v118 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_21E6748E0;
    *(v51 + 56) = MEMORY[0x277D837D0];
    *(v51 + 64) = lazy protocol witness table accessor for type String and conformance String(v51, v52, v53);
    *(v51 + 32) = 0xD000000000000017;
    *(v51 + 40) = 0x800000021E675CD0;
    specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001ALL, 0x800000021E676260, 0, 0xE000000000000000);
    v54 = String.init(format:_:)();

    v55 = v144;
    *v46 = v153;
    *(v46 + 1) = v55;
    v46[16] = 6;
    v56 = v118;
    *(v46 + 3) = v143;
    *(v46 + 4) = v56;
    v57 = type metadata accessor for URL();
    (*(*(v57 - 8) + 56))(v123, 1, 1, v57);
    v58 = v146;
    v59 = *(v146 + 104);
    LODWORD(v144) = *MEMORY[0x277CC8BB0];
    v59(v14);
    v60 = *(v141 + 13);
    LODWORD(v143) = *MEMORY[0x277CC8B98];
    v60(v151);

    AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
    v153 = v54;
    v61 = v145;
    AttributedString.init(markdown:options:baseURL:)();
    v12 = v58;
    if (v61)
    {

      v62 = v126;
      (*(v149 + 56))(v126, 1, 1, v150);
      outlined destroy of CheckedContinuation<(), Error>?(v62, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      v145 = 0;
    }

    else
    {
      v145 = 0;

      v65 = v149;
      v66 = v150;
      v67 = v126;
      (*(v149 + 56))(v126, 0, 1, v150);
      v68 = *(v65 + 32);
      v69 = v119;
      v68(v119, v67, v66);
      v68(&v46[*(v139 + 28)], v69, v66);
    }

    v70 = v124;
    outlined init with take of TNUIActionItemConfiguration(v46, v124);
    v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v73 = v71[2];
    v72 = v71[3];
    v153 = v71;
    if (v73 >= v72 >> 1)
    {
      v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v153);
    }

    v74 = v153;
    v153[2] = v73 + 1;
    outlined init with take of TNUIActionItemConfiguration(v70, v74 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v73);
    v63 = v144;
    v64 = v143;
  }

  else
  {
    v63 = *MEMORY[0x277CC8BB0];
    v64 = *MEMORY[0x277CC8B98];
    v153 = MEMORY[0x277D84F90];
  }

  v75 = static ThreatNotification.Screens.LDMEnabled.ActionItem.emergencyAssistanceIdentifier.getter();
  v77 = v76;
  v78 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001FLL, 0x800000021E676210, 0, 0xE000000000000000);
  v80 = v79;
  specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000020, 0x800000021E676230, 0, 0xE000000000000000);
  *v41 = v75;
  *(v41 + 1) = v77;
  v41[16] = 0;
  *(v41 + 3) = v78;
  *(v41 + 4) = v80;
  v81 = type metadata accessor for URL();
  v82 = *(v81 - 8);
  v83 = *(v82 + 56);
  v126 = v81;
  v125 = v83;
  v124 = v82 + 56;
  (v83)(v127, 1, 1);
  v84 = *(v12 + 104);
  LODWORD(v144) = v63;
  v146 = v12 + 104;
  v123 = v84;
  (v84)(v147, v63, v148);
  v85 = *(v141 + 13);
  LODWORD(v143) = v64;
  v141 = v85;
  v85(v151, v64, v152);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  v86 = v128;
  v87 = v145;
  AttributedString.init(markdown:options:baseURL:)();
  if (v87)
  {

    v145 = *(v149 + 56);
    v145(v86, 1, 1, v150);
    outlined destroy of CheckedContinuation<(), Error>?(v86, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
  }

  else
  {

    v88 = v149;
    v89 = v150;
    v145 = *(v149 + 56);
    v145(v86, 0, 1, v150);
    v90 = *(v88 + 32);
    v91 = v120;
    v90(v120, v86, v89);
    v90(&v41[*(v139 + 28)], v91, v89);
  }

  v92 = v138;
  v93 = v130;
  v94 = v153;
  outlined init with take of TNUIActionItemConfiguration(v41, v130);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v96 = v143;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94[2] + 1, 1, v94);
  }

  v97 = v137;
  v99 = v94[2];
  v98 = v94[3];
  if (v99 >= v98 >> 1)
  {
    v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1, v94);
  }

  v94[2] = v99 + 1;
  outlined init with take of TNUIActionItemConfiguration(v93, v94 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v99);
  v100 = v135;
  outlined init with copy of (ObjectIdentifier, Sendable)(v133, v135, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v101 = v134;
  v102 = (*(v134 + 48))(v100, 1, v97);
  v153 = v94;
  if (v102 == 1)
  {
    outlined destroy of CheckedContinuation<(), Error>?(v100, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001ELL, 0x800000021E6762E0, 0, 0xE000000000000000);
  }

  else
  {
    v103 = v122;
    (*(v101 + 32))(v122, v100, v97);
    specialized static TNUILocalization.lockDownModeTurnedOnMessage(date:)(v103);
    (*(v101 + 8))(v103, v97);
  }

  v104 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001FLL, 0x800000021E6761F0, 0, 0xE000000000000000);
  v106 = v105;
  v154 = 1;
  static TNUIButtonConfiguration.learnMore(link:)(&v154, v155);
  *v92 = 3;
  *(v92 + 16) = 0;
  *(v92 + 24) = 0;
  *(v92 + 8) = 0;
  *(v92 + 32) = 0;
  *(v92 + 40) = v104;
  *(v92 + 48) = v106;
  v125(v131, 1, 1, v126);
  (v123)(v147, v144, v148);
  v141(v151, v96, v152);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  v107 = v132;
  AttributedString.init(markdown:options:baseURL:)();

  v109 = v149;
  v108 = v150;
  v145(v107, 0, 1, v150);
  v110 = *(v109 + 32);
  v111 = v121;
  v110(v121, v107, v108);
  v112 = type metadata accessor for TNUIViewConfiguration(0);
  v110((v92 + v112[7]), v111, v108);
  v113 = v153;
  type metadata accessor for TNUIViewConfiguration(0);
  v114 = v92 + v112[8];
  v115 = v155[3];
  *(v114 + 32) = v155[2];
  *(v114 + 48) = v115;
  *(v114 + 64) = v156;
  v116 = v155[1];
  *v114 = v155[0];
  *(v114 + 16) = v116;
  *(v92 + v112[9]) = v113;
  *(v92 + v112[10]) = MEMORY[0x277D84F90];
  TNUIViewConfiguration.removeMailHighlighting()();
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ20ThreatNotificationUI27TNUIActionItemConfigurationV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TNUIActionItemConfiguration(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      v34 = "emergencyAssistance";
      v35 = "TNUIWebViewController";
      v33 = "reatNotifications";
      while (1)
      {
        outlined init with copy of TNUIActionItemConfiguration(v13, v10);
        outlined init with copy of TNUIActionItemConfiguration(v14, v7);
        v16 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
        if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_61:
          outlined destroy of TNUIActionItemConfiguration(v7);
          outlined destroy of TNUIActionItemConfiguration(v10);
          goto LABEL_62;
        }

        v17 = v10[16];
        v18 = v7[16];
        if (v17 <= 5)
        {
          switch(v17)
          {
            case 3u:
              if (v18 != 3)
              {
                goto LABEL_61;
              }

              goto LABEL_54;
            case 4u:
              if (v18 != 4)
              {
                goto LABEL_61;
              }

              goto LABEL_54;
            case 5u:
              if (v18 != 5)
              {
                goto LABEL_61;
              }

              goto LABEL_54;
          }
        }

        else if (v10[16] > 7u)
        {
          if (v17 == 8)
          {
            if (v18 != 8)
            {
              goto LABEL_61;
            }

            goto LABEL_54;
          }

          if (v17 == 9)
          {
            if (v18 != 9)
            {
              goto LABEL_61;
            }

            goto LABEL_54;
          }
        }

        else
        {
          if (v17 == 6)
          {
            if (v18 != 6)
            {
              goto LABEL_61;
            }

            goto LABEL_54;
          }

          if (v17 == 7)
          {
            if (v18 != 7)
            {
              goto LABEL_61;
            }

            goto LABEL_54;
          }
        }

        if ((v18 - 3) < 7)
        {
          goto LABEL_61;
        }

        if (v10[16])
        {
          if (v17 == 1)
          {
            v19 = 0xD000000000000021;
          }

          else
          {
            v19 = 0xD000000000000017;
          }

          v21 = v33;
          v20 = v34;
          if (v17 == 1)
          {
            v22 = v34;
          }

          else
          {
            v22 = v33;
          }
        }

        else
        {
          v19 = 0xD000000000000013;
          v20 = v34;
          v22 = v35;
          v21 = v33;
        }

        v23 = v22 | 0x8000000000000000;
        v24 = 0xD000000000000021;
        if (v18 == 1)
        {
          v25 = v20;
        }

        else
        {
          v24 = 0xD000000000000017;
          v25 = v21;
        }

        v26 = v18 == 0;
        if (v7[16])
        {
          v27 = v24;
        }

        else
        {
          v27 = 0xD000000000000013;
        }

        v28 = v35;
        if (!v26)
        {
          v28 = v25;
        }

        if (v19 == v27 && v23 == (v28 | 0x8000000000000000))
        {
        }

        else
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v29 & 1) == 0)
          {
            goto LABEL_61;
          }
        }

LABEL_54:
        if ((*(v10 + 3) != *(v7 + 3) || *(v10 + 4) != *(v7 + 4)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_61;
        }

        v30 = static AttributedString.== infix(_:_:)();
        outlined destroy of TNUIActionItemConfiguration(v7);
        outlined destroy of TNUIActionItemConfiguration(v10);
        if (v30)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v30 & 1;
      }
    }

    v30 = 1;
  }

  else
  {
LABEL_62:
    v30 = 0;
  }

  return v30 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ20ThreatNotificationUI23TNUIButtonConfigurationV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v28 = v2;
  v29 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v20 = *v5;
    *v21 = v8;
    v9 = v5[3];
    *&v21[16] = v5[2];
    v22 = v9;
    v23 = *(v5 + 64);
    v10 = v6[3];
    *&v25[16] = v6[2];
    v26 = v10;
    v27 = *(v6 + 64);
    v11 = v6[1];
    v24 = *v6;
    *v25 = v11;
    if (v20 != v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v21[0] <= 5u)
    {
      switch(v21[0])
      {
        case 3:
          if (v25[0] != 3)
          {
            return 0;
          }

          goto LABEL_34;
        case 4:
          if (v25[0] != 4)
          {
            return 0;
          }

          goto LABEL_34;
        case 5:
          if (v25[0] != 5)
          {
            return 0;
          }

          goto LABEL_34;
      }
    }

    else if (v21[0] > 7u)
    {
      if (v21[0] == 8)
      {
        if (v25[0] != 8)
        {
          return 0;
        }

        goto LABEL_34;
      }

      if (v21[0] == 9)
      {
        if (v25[0] != 9)
        {
          return 0;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (v21[0] == 6)
      {
        if (v25[0] != 6)
        {
          return 0;
        }

        goto LABEL_34;
      }

      if (v21[0] == 7)
      {
        if (v25[0] != 7)
        {
          return 0;
        }

LABEL_34:
        outlined init with copy of TNUIButtonConfiguration(&v20, v19);
        outlined init with copy of TNUIButtonConfiguration(&v24, v19);
        goto LABEL_35;
      }
    }

    if (v25[0] - 3 < 7)
    {
      return 0;
    }

    v12 = 0xD000000000000013;
    if (v21[0])
    {
      if (v21[0] == 1)
      {
        v13 = 0xD000000000000021;
        v14 = "emergencyAssistance";
        if (!v25[0])
        {
          goto LABEL_48;
        }
      }

      else
      {
        v13 = 0xD000000000000017;
        v14 = "reatNotifications";
        if (!v25[0])
        {
LABEL_48:
          v16 = "TNUIWebViewController";
          goto LABEL_50;
        }
      }
    }

    else
    {
      v13 = 0xD000000000000013;
      v14 = "TNUIWebViewController";
      if (!v25[0])
      {
        goto LABEL_48;
      }
    }

    if (v25[0] == 1)
    {
      v12 = 0xD000000000000021;
      v16 = "emergencyAssistance";
    }

    else
    {
      v12 = 0xD000000000000017;
      v16 = "reatNotifications";
    }

LABEL_50:
    if (v13 == v12 && (v14 | 0x8000000000000000) == (v16 | 0x8000000000000000))
    {
      outlined init with copy of TNUIButtonConfiguration(&v20, v19);
      outlined init with copy of TNUIButtonConfiguration(&v24, v19);
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined init with copy of TNUIButtonConfiguration(&v20, v19);
      outlined init with copy of TNUIButtonConfiguration(&v24, v19);

      if ((v17 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

LABEL_35:
    if (*&v21[8] != *&v25[8] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v21[24] != v25[24])
    {
LABEL_54:
      outlined destroy of TNUIButtonConfiguration(&v24);
      outlined destroy of TNUIButtonConfiguration(&v20);
      return 0;
    }

    if (v22 == v26)
    {
      outlined destroy of TNUIButtonConfiguration(&v24);
      outlined destroy of TNUIButtonConfiguration(&v20);
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined destroy of TNUIButtonConfiguration(&v24);
      outlined destroy of TNUIButtonConfiguration(&v20);
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    if (v23 != v27)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 72);
    v5 = (v5 + 72);
  }

  return 1;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI27TNUIActionItemConfigurationVGMd, &_ss23_ContiguousArrayStorageCy20ThreatNotificationUI27TNUIActionItemConfigurationVGMR);
  v10 = *(type metadata accessor for TNUIActionItemConfiguration(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TNUIActionItemConfiguration(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20ThreatNotificationUI28TNUIActivityIndicatorShowing_pGMd, "|3");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pMd, &_s20ThreatNotificationUI28TNUIActivityIndicatorShowing_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized static TNUIViewConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v77 = v2;
  v78 = v3;
  v6 = *(a1 + 2);
  v7 = *(a2 + 2);
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = *(a1 + 1);
    v9 = *(a1 + 3);
    v10 = a1[32];
    v11 = *(a2 + 1);
    v12 = *(a2 + 3);
    v13 = a2[32];

    outlined copy of TNUIImageColorScheme(v12);
    v14 = specialized static TNUIImageConfiguration.== infix(_:_:)(v8, v6, v9, v10 & 1, v11, v7, v12, v13 & 1);

    outlined consume of TNUIImageColorScheme(v12);
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  else if (v7)
  {
    goto LABEL_20;
  }

  if ((*(a1 + 5) != *(a2 + 5) || *(a1 + 6) != *(a2 + 6)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_20;
  }

  v16 = type metadata accessor for TNUIViewConfiguration(0);
  if ((static AttributedString.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_20;
  }

  v17 = &a1[v16[8]];
  v18 = *(v17 + 1);
  v19 = *(v17 + 3);
  v70 = *(v17 + 2);
  v71 = v19;
  v72 = v17[64];
  v20 = *(v17 + 1);
  v69[0] = *v17;
  v69[1] = v20;
  v21 = &a2[v16[8]];
  v22 = *(v21 + 3);
  v23 = *(v21 + 1);
  v74 = *(v21 + 2);
  v75 = v22;
  v24 = *(v21 + 1);
  v73[0] = *v21;
  v73[1] = v24;
  v65 = v18;
  v66 = v70;
  v67 = *(v17 + 3);
  v25 = *(v21 + 3);
  v62 = v74;
  v63 = v25;
  v76 = v21[64];
  v26 = v69[0];
  v68 = v17[64];
  v27 = v73[0];
  v64 = v21[64];
  v61 = v23;
  if (*(&v69[0] + 1))
  {
    v51 = v69[0];
    v28 = *(v17 + 2);
    v52 = *(v17 + 1);
    v53 = v28;
    v54 = *(v17 + 3);
    v55 = v17[64];
    v48 = v28;
    v49 = v54;
    v50 = v55;
    v46 = v69[0];
    v47 = v52;
    if (*(&v73[0] + 1))
    {
      v29 = *(v21 + 2);
      v42 = *(v21 + 1);
      v43 = v29;
      v44 = *(v21 + 3);
      v45 = v21[64];
      v41 = v73[0];
      outlined init with copy of (ObjectIdentifier, Sendable)(v69, v39, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
      outlined init with copy of (ObjectIdentifier, Sendable)(v73, v39, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
      outlined init with copy of (ObjectIdentifier, Sendable)(&v51, v39, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
      v30 = specialized static TNUIButtonConfiguration.== infix(_:_:)(&v46, &v41);
      v37[2] = v43;
      v37[3] = v44;
      v38 = v45;
      v37[0] = v41;
      v37[1] = v42;
      outlined destroy of TNUIButtonConfiguration(v37);
      v39[2] = v48;
      v39[3] = v49;
      v40 = v50;
      v39[0] = v46;
      v39[1] = v47;
      outlined destroy of TNUIButtonConfiguration(v39);
      v41 = v26;
      v42 = v65;
      v43 = v66;
      v44 = v67;
      v45 = v68;
      outlined destroy of CheckedContinuation<(), Error>?(&v41, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
      if ((v30 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    v43 = v53;
    v44 = v54;
    v45 = v55;
    v41 = v51;
    v42 = v52;
    outlined init with copy of (ObjectIdentifier, Sendable)(v69, v39, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
    outlined init with copy of (ObjectIdentifier, Sendable)(v73, v39, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
    outlined init with copy of (ObjectIdentifier, Sendable)(&v51, v39, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
    outlined destroy of TNUIButtonConfiguration(&v41);
LABEL_19:
    v52 = v65;
    v53 = v66;
    v54 = v67;
    v57 = v61;
    v51 = v26;
    v55 = v68;
    v56 = v27;
    v58 = v62;
    v59 = v63;
    v60 = v64;
    outlined destroy of CheckedContinuation<(), Error>?(&v51, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSg_ADtMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSg_ADtMR);
    goto LABEL_20;
  }

  if (*(&v73[0] + 1))
  {
    outlined init with copy of (ObjectIdentifier, Sendable)(v69, &v51, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
    outlined init with copy of (ObjectIdentifier, Sendable)(v73, &v51, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
    goto LABEL_19;
  }

  v51 = *&v69[0];
  v32 = *(v17 + 2);
  v52 = *(v17 + 1);
  v53 = v32;
  v54 = *(v17 + 3);
  v55 = v17[64];
  outlined init with copy of (ObjectIdentifier, Sendable)(v69, &v46, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
  outlined init with copy of (ObjectIdentifier, Sendable)(v73, &v46, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
  outlined destroy of CheckedContinuation<(), Error>?(&v51, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMd, &_s20ThreatNotificationUI23TNUIButtonConfigurationVSgMR);
LABEL_23:
  v33 = v16[9];
  v34 = *&a1[v33];
  v35 = *&a2[v33];
  if (v34)
  {
    if (v35)
    {

      v36 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ20ThreatNotificationUI27TNUIActionItemConfigurationV_Tt1g5(v34, v35);

      if (v36)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v35)
  {
LABEL_28:
    v31 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ20ThreatNotificationUI23TNUIButtonConfigurationV_Tt1g5(*&a1[v16[10]], *&a2[v16[10]]);
    return v31 & 1;
  }

LABEL_20:
  v31 = 0;
  return v31 & 1;
}

uint64_t outlined init with take of TNUIActionItemConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TNUIActionItemConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for TNUIViewConfiguration(uint64_t a1)
{
  type metadata accessor for TNUIImageConfiguration?(319, &lazy cache variable for type metadata for TNUIImageConfiguration?, &type metadata for TNUIImageConfiguration, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AttributedString();
    if (v2 <= 0x3F)
    {
      type metadata accessor for TNUIImageConfiguration?(319, &lazy cache variable for type metadata for TNUIButtonConfiguration?, &type metadata for TNUIButtonConfiguration, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [TNUIActionItemConfiguration]?(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for TNUIImageConfiguration?(319, &lazy cache variable for type metadata for [TNUIButtonConfiguration], &type metadata for TNUIButtonConfiguration, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for [TNUIActionItemConfiguration]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [TNUIActionItemConfiguration]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay20ThreatNotificationUI27TNUIActionItemConfigurationVGMd, &_sSay20ThreatNotificationUI27TNUIActionItemConfigurationVGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [TNUIActionItemConfiguration]?);
    }
  }
}

void type metadata accessor for TNUIImageConfiguration?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t outlined init with copy of TNUIActionItemConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TNUIActionItemConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TNUIActionItemConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for TNUIActionItemConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TNUIActionItemView.action.getter()
{
  v1 = *(v0 + *(type metadata accessor for TNUIActionItemView(0) + 20));

  return v1;
}

uint64_t type metadata accessor for TNUIActionItemView(uint64_t a1)
{
  result = type metadata singleton initialization cache for TNUIActionItemView;
  if (!type metadata singleton initialization cache for TNUIActionItemView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TNUIActionItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19 = a1;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v17 = *(v3 - 8);
  v18 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAMyAMyAMyAA6ButtonVyAMyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingR0VGASGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA0g10AttachmentW0VG_AMyAMyAMyAMyAMyAMyAqA022_EnvironmentKeyWritingW0VyAA0O9AlignmentOGGA10_yAA4FontVSgGGAA016_ForegroundStyleW0VyAA012HierarchicalV5StyleVGGASGAWGA7_GtGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAMyAMyAMyAA6ButtonVyAMyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingR0VGASGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA0g10AttachmentW0VG_AMyAMyAMyAMyAMyAMyAqA022_EnvironmentKeyWritingW0VyAA0O9AlignmentOGGA10_yAA4FontVSgGGAA016_ForegroundStyleW0VyAA012HierarchicalV5StyleVGGASGAWGA7_GtGG_Qo_MR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6ButtonVyAKyAA4TextVAA010_FlexFrameG0VGGAA08_PaddingG0VGAQGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentS0VG_AKyAKyAKyAKyAKyAKyAoA022_EnvironmentKeyWritingS0VyAA0L9AlignmentOGGA8_yAA4FontVSgGGAA016_ForegroundStyleS0VyAA012HierarchicalR5StyleVGGAQGAUGA5_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6ButtonVyAKyAA4TextVAA010_FlexFrameG0VGGAA08_PaddingG0VGAQGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentS0VG_AKyAKyAKyAKyAKyAKyAoA022_EnvironmentKeyWritingS0VyAA0L9AlignmentOGGA8_yAA4FontVSgGGAA016_ForegroundStyleS0VyAA012HierarchicalR5StyleVGGAQGAUGA5_GtGGMR);
  closure #1 in TNUIActionItemView.body.getter(v2, &v8[*(v13 + 44)]);
  static AccessibilityChildBehavior.contain.getter();
  v14 = lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMR, MEMORY[0x277CE1198]);
  View.accessibilityElement(children:)();
  (*(v17 + 8))(v5, v18);
  outlined destroy of CheckedContinuation<(), Error>?(v8, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMR);
  v20 = v6;
  v21 = v14;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t closure #1 in TNUIActionItemView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for AttributedString();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x28223BE20](v3);
  v68 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v74 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v64 - v8;
  v9 = type metadata accessor for TNUIActionItemView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGMR);
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGMR);
  MEMORY[0x28223BE20](v64);
  v16 = &v64 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGMR);
  MEMORY[0x28223BE20](v66);
  v67 = &v64 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMR);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v72 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v76 = &v64 - v21;
  type metadata accessor for MainActor();
  v71 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  outlined init with copy of TNUIActionItemConfiguration(a1, &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TNUIActionItemView);
  v22 = *(v10 + 80);
  v65 = a1;
  v23 = (v22 + 16) & ~v22;
  v24 = swift_allocObject();
  v25 = outlined init with take of TNUIActionItemConfiguration(&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for TNUIActionItemView);
  MEMORY[0x28223BE20](v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v26 = static Edge.Set.all.getter();
  v27 = &v14[*(v12 + 36)];
  *v27 = v26;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  v27[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v28 = v16;
  outlined init with take of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>(v14, v16, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGMR);
  v29 = &v16[*(v64 + 36)];
  v30 = v92;
  v31 = v94;
  *(v29 + 4) = v93;
  *(v29 + 5) = v31;
  *(v29 + 6) = v95;
  v32 = v90;
  *v29 = v89;
  *(v29 + 1) = v32;
  *(v29 + 2) = v91;
  *(v29 + 3) = v30;
  v33 = [objc_opt_self() secondarySystemBackgroundColor];
  v64 = Color.init(uiColor:)();
  v34 = v67;
  v35 = &v67[*(v66 + 36)];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMR);
  v37 = v35 + *(v36 + 52);
  v38 = *(type metadata accessor for RoundedRectangle() + 20);
  v39 = *MEMORY[0x277CE0118];
  v40 = type metadata accessor for RoundedCornerStyle();
  (*(*(v40 - 8) + 104))(&v37[v38], v39, v40);
  __asm { FMOV            V0.2D, #8.0 }

  *v37 = _Q0;
  *v35 = v64;
  *(v35 + *(v36 + 56)) = 256;
  outlined init with take of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>(v28, v34, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGMR);
  static ThreatNotification.Screens.actionItemButtonIdentifier.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityIdentifier(_:)();

  outlined destroy of CheckedContinuation<(), Error>?(v34, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGMR);
  v46 = type metadata accessor for TNUIActionItemConfiguration(0);
  (*(v69 + 16))(v68, v65 + *(v46 + 28), v70);
  v47 = Text.init(_:)();
  v49 = v48;
  LOBYTE(v38) = v50;
  v52 = v51;
  KeyPath = swift_getKeyPath();
  v54 = static Font.subheadline.getter();
  v55 = swift_getKeyPath();
  LOBYTE(v34) = v38 & 1;
  LOBYTE(v85[0]) = v38 & 1;
  LODWORD(v38) = static HierarchicalShapeStyle.secondary.getter();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v87[52] = v96[3];
  *&v87[68] = v96[4];
  *&v87[84] = v96[5];
  *&v87[100] = v96[6];
  *&v87[4] = v96[0];
  *&v87[20] = v96[1];
  *&v87[36] = v96[2];
  v56 = static Edge.Set.horizontal.getter();
  *(&v81[4] + 4) = *&v87[64];
  *(&v81[5] + 4) = *&v87[80];
  *(&v81[6] + 4) = *&v87[96];
  *(v81 + 4) = *v87;
  *(&v81[1] + 4) = *&v87[16];
  *(&v81[2] + 4) = *&v87[32];
  v88 = 1;
  *&v77 = v47;
  *(&v77 + 1) = v49;
  LOBYTE(v78) = v34;
  *(&v78 + 1) = v52;
  *&v79 = KeyPath;
  BYTE8(v79) = 0;
  *&v80 = v55;
  *(&v80 + 1) = v54;
  LODWORD(v81[0]) = v38;
  DWORD1(v81[7]) = *&v87[112];
  *(&v81[3] + 4) = *&v87[48];
  BYTE8(v81[7]) = v56;
  v82 = 0u;
  v83 = 0u;
  v84 = 1;
  static ThreatNotification.Screens.actionItemFooterIdentifier.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v57 = v73;
  View.accessibilityIdentifier(_:)();

  v85[12] = v82;
  v85[13] = v83;
  v86 = v84;
  v85[8] = v81[4];
  v85[9] = v81[5];
  v85[10] = v81[6];
  v85[11] = v81[7];
  v85[4] = v81[0];
  v85[5] = v81[1];
  v85[6] = v81[2];
  v85[7] = v81[3];
  v85[0] = v77;
  v85[1] = v78;
  v85[2] = v79;
  v85[3] = v80;
  outlined destroy of CheckedContinuation<(), Error>?(v85, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGMR);
  v58 = v76;
  v59 = v72;
  outlined init with copy of (ObjectIdentifier, Sendable)(v76, v72, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMR);
  v60 = v74;
  outlined init with copy of (ObjectIdentifier, Sendable)(v57, v74, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMR);
  v61 = v75;
  outlined init with copy of (ObjectIdentifier, Sendable)(v59, v75, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMR);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VG_ACyACyACyACyACyACyAgA022_EnvironmentKeyWritingN0VyAA0F9AlignmentOGGA0_yAA4FontVSgGGAA016_ForegroundStyleN0VyAA012HierarchicalmZ0VGGAIGAMGAYGtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VG_ACyACyACyACyACyACyAgA022_EnvironmentKeyWritingN0VyAA0F9AlignmentOGGA0_yAA4FontVSgGGAA016_ForegroundStyleN0VyAA012HierarchicalmZ0VGGAIGAMGAYGtMR);
  outlined init with copy of (ObjectIdentifier, Sendable)(v60, v61 + *(v62 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMR);
  outlined destroy of CheckedContinuation<(), Error>?(v57, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMR);
  outlined destroy of CheckedContinuation<(), Error>?(v58, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMR);
  outlined destroy of CheckedContinuation<(), Error>?(v60, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGAA023AccessibilityAttachmentI0VGMR);
  outlined destroy of CheckedContinuation<(), Error>?(v59, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentN0VGMR);
}

uint64_t closure #1 in closure #1 in TNUIActionItemView.body.getter(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in closure #1 in TNUIActionItemView.body.getter(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for TNUIActionItemView(0);
  (*(a1 + *(v2 + 20)))();
}

__n128 closure #2 in closure #1 in TNUIActionItemView.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v20 = *(a1 + 24);
  lazy protocol witness table accessor for type String and conformance String(isCurrentExecutor, v5, v6);

  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Font.headline.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  outlined consume of Text.Storage(v7, v9, v11 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v18;
  *(a2 + 96) = v24;
  *(a2 + 112) = v25;
  *(a2 + 128) = v26;
  *(a2 + 32) = v20;
  *(a2 + 48) = v21;
  result = v23;
  *(a2 + 64) = v22;
  *(a2 + 80) = v23;
  return result;
}

uint64_t TNUIActionItemView.init(configuration:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of TNUIActionItemConfiguration(a1, a4, type metadata accessor for TNUIActionItemConfiguration);
  result = type metadata accessor for TNUIActionItemView(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance TNUIActionItemView@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19 = a1;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v17 = *(v3 - 8);
  v18 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAMyAMyAMyAA6ButtonVyAMyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingR0VGASGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA0g10AttachmentW0VG_AMyAMyAMyAMyAMyAMyAqA022_EnvironmentKeyWritingW0VyAA0O9AlignmentOGGA10_yAA4FontVSgGGAA016_ForegroundStyleW0VyAA012HierarchicalV5StyleVGGASGAWGA7_GtGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAMyAMyAMyAA6ButtonVyAMyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingR0VGASGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA0g10AttachmentW0VG_AMyAMyAMyAMyAMyAMyAqA022_EnvironmentKeyWritingW0VyAA0O9AlignmentOGGA10_yAA4FontVSgGGAA016_ForegroundStyleW0VyAA012HierarchicalV5StyleVGGASGAWGA7_GtGG_Qo_MR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6ButtonVyAKyAA4TextVAA010_FlexFrameG0VGGAA08_PaddingG0VGAQGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentS0VG_AKyAKyAKyAKyAKyAKyAoA022_EnvironmentKeyWritingS0VyAA0L9AlignmentOGGA8_yAA4FontVSgGGAA016_ForegroundStyleS0VyAA012HierarchicalR5StyleVGGAQGAUGA5_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6ButtonVyAKyAA4TextVAA010_FlexFrameG0VGGAA08_PaddingG0VGAQGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentS0VG_AKyAKyAKyAKyAKyAKyAoA022_EnvironmentKeyWritingS0VyAA0L9AlignmentOGGA8_yAA4FontVSgGGAA016_ForegroundStyleS0VyAA012HierarchicalR5StyleVGGAQGAUGA5_GtGGMR);
  closure #1 in TNUIActionItemView.body.getter(v2, &v8[*(v13 + 44)]);
  static AccessibilityChildBehavior.contain.getter();
  v14 = lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMR, MEMORY[0x277CE1198]);
  View.accessibilityElement(children:)();
  (*(v17 + 8))(v5, v18);
  outlined destroy of CheckedContinuation<(), Error>?(v8, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMR);
  v20 = v6;
  v21 = v14;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t type metadata completion function for TNUIActionItemView(uint64_t a1)
{
  result = type metadata accessor for TNUIActionItemConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyACyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingR0VGASGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA0i10AttachmentW0VG_ACyACyACyACyACyACyAqA022_EnvironmentKeyWritingW0VyAA0O9AlignmentOGGA10_yAA4FontVSgGGAA016_ForegroundStyleW0VyAA012HierarchicalV5StyleVGGASGAWGA7_GtGG_Qo_A7_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyACyACyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingR0VGASGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA0i10AttachmentW0VG_ACyACyACyACyACyACyAqA022_EnvironmentKeyWritingW0VyAA0O9AlignmentOGGA10_yAA4FontVSgGGAA016_ForegroundStyleW0VyAA012HierarchicalV5StyleVGGASGAWGA7_GtGG_Qo_A7_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6ButtonVyAGyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingL0VGAMGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGAA023AccessibilityAttachmentQ0VG_AGyAGyAGyAGyAGyAGyAkA022_EnvironmentKeyWritingQ0VyAA0I9AlignmentOGGA4_yAA4FontVSgGGAA016_ForegroundStyleQ0VyAA012HierarchicalP5StyleVGGAMGAQGA1_GtGGMR, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier);
  }

  return result;
}

uint64_t outlined init with copy of TNUIActionItemConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of TNUIActionItemConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in TNUIActionItemView.body.getter()
{
  v1 = *(type metadata accessor for TNUIActionItemView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #1 in TNUIActionItemView.body.getter(v2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGAA34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGAIGMR, lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<Color, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMR, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA08_PaddingI0VGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGAA08_PaddingR0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGAA16_FlexFrameLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeM0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _PaddingLayout>, _FlexFrameLayout>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FlexFrameLayout>, _PaddingLayout>, AccessibilityAttachmentModifier>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t TNUIPresentationManager.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t static TNUIPresentationManager.shared.getter()
{
  type metadata accessor for TNUIPresentationManager();

  return swift_initStaticObject();
}

uint64_t TNUIPresentationManager.isPresenting.didset()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static TNCLogger.default.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_beginAccess();
    if (*(v1 + 16))
    {
      v10 = 0x7472617473;
    }

    else
    {
      v10 = 1886352499;
    }

    if (*(v1 + 16))
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v11 = 0xE400000000000000;
    }

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21E646000, v6, v7, "Did %s presenting CFU", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x223D62010](v9, -1, -1);
    MEMORY[0x223D62010](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t TNUIPresentationManager.startPresenting()(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return TNUIPresentationManager.isPresenting.didset();
}

uint64_t TNUIPresentationManager.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

id TNUIOBFlowLDMEnabled.__allocating_init(container:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container] = v4;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_initWithTransitionStyle_navigationOrientation_options_, 1, 0, 0);
}

uint64_t TNUIOBFlowLDMEnabled.onBoardingDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TNUIOBFlowLDMEnabled.onBoardingDelegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_onBoardingDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return TNUIOBFlowLDMEnabled.onBoardingDelegate.modify;
}

void TNUIOBFlowLDMEnabled.onBoardingDelegate.modify(void **a1, char a2)
{
  v3 = *a1;
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

id TNUIOBFlowLDMEnabled.init(container:)(uint64_t *a1)
{
  v2 = *a1;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container] = v2;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TNUIOBFlowLDMEnabled();
  return objc_msgSendSuper2(&v4, sel_initWithTransitionStyle_navigationOrientation_options_, 1, 0, 0);
}

id TNUIOBFlowLDMEnabled.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TNUIOBFlowLDMEnabled.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  v9 = 0;
  v3 = type metadata accessor for TNCLDMManager();
  swift_allocObject();
  v4 = TNCLDMManager.init()();
  v8[3] = v3;
  v8[4] = MEMORY[0x277D71448];
  v8[0] = v4;
  static TNUIDependencyContainer.makeDefault(environment:ldmManager:)(&v9, v8, &v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  *&v1[OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container] = v10;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for TNUIOBFlowLDMEnabled();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

Swift::Void __swiftcall TNUIOBFlowLDMEnabled.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for TNUIOBFlowLDMEnabled();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  TNUIOBFlowLDMEnabled.showPage(page:animated:)(1, 0);
}

id TNUIOBFlowLDMEnabled.__allocating_init(transitionStyle:navigationOrientation:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    type metadata accessor for UIPageViewControllerOptionsKey(0);
    lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey, type metadata accessor for UIPageViewControllerOptionsKey, &protocol conformance descriptor for UIPageViewControllerOptionsKey);
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [objc_allocWithZone(v4) initWithTransitionStyle:a1 navigationOrientation:a2 options:v7.super.isa];

  return v8;
}

id TNUIOBFlowLDMEnabled.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TNUIOBFlowLDMEnabled();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TNUIOBFlowLDMEnabled.showPage(page:animated:)(char a1, int a2)
{
  LODWORD(v3) = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TNCLogger.default.getter();
  v9 = v2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v29 = v3;
    v3 = v12;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v6;
    v15 = v14;
    v30 = v14;
    *v3 = 138412546;
    *(v3 + 4) = v9;
    *v13 = v9;
    *(v3 + 12) = 2080;
    if (a1)
    {
      v16 = 7169132;
    }

    else
    {
      v16 = 0x636974796C616E61;
    }

    v27 = v5;
    v17 = a1;
    if (a1)
    {
      v18 = 0xE300000000000000;
    }

    else
    {
      v18 = 0xE900000000000073;
    }

    v19 = v9;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v30);

    *(v3 + 14) = v20;
    _os_log_impl(&dword_21E646000, v10, v11, "%@ showing page: %s", v3, 0x16u);
    outlined destroy of NSObject?(v13);
    MEMORY[0x223D62010](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x223D62010](v15, -1, -1);
    v21 = v3;
    LOBYTE(v3) = v29;
    MEMORY[0x223D62010](v21, -1, -1);

    (*(v28 + 8))(v8, v27);
    if ((v17 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v22 = TNUIOBFlowLDMEnabled.makeLDMScreen()();
    goto LABEL_12;
  }

  (*(v6 + 8))(v8, v5);
  if (a1)
  {
    goto LABEL_11;
  }

LABEL_9:
  v22 = TNUIOBFlowLDMEnabled.makeAnalyticsScreen()();
LABEL_12:
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21E6748D0;
  *(v24 + 32) = v23;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIViewController, 0x277D75D28);
  v25 = v23;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 setViewControllers:isa direction:0 animated:v3 & 1 completion:0];
}

void *TNUIOBFlowLDMEnabled.finishFlow()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container;
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlFAA08TNUIUserB8Managing_p_Tt0B5(*&v0[OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container], v31);
  v6 = v31[4];
  __swift_project_boxed_opaque_existential_0(v31, v31[3]);
  (*(v6 + 8))(2.0);
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core24TNCOnBoardingControlling_p_Tt0B5(*&v0[v5]);
  swift_getObjectType();
  dispatch thunk of TNCOnBoardingControlling.isOnboardingFlowRequired.setter();
  swift_unknownObjectRelease();
  static TNCLogger.default.getter();
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = MEMORY[0x277D85000];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v2;
    v14 = v13;
    v27 = swift_slowAlloc();
    v31[0] = v27;
    *v12 = 138412546;
    *(v12 + 4) = v7;
    *v14 = v7;
    *(v12 + 12) = 2080;
    v15 = *v7;
    v16 = *v11;
    v28 = v1;
    v17 = *((v16 & v15) + 0x60);
    v18 = v7;
    v30 = v17();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo36TNUIOnBoardingViewControllerDelegate_pSgMd, &_sSo36TNUIOnBoardingViewControllerDelegate_pSgMR);
    v19 = Optional.debugDescription.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v31);
    v11 = MEMORY[0x277D85000];

    *(v12 + 14) = v22;
    _os_log_impl(&dword_21E646000, v8, v9, "%@ finishing flow and informing delegate: %s", v12, 0x16u);
    outlined destroy of NSObject?(v14);
    MEMORY[0x223D62010](v14, -1, -1);
    v23 = v27;
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x223D62010](v23, -1, -1);
    MEMORY[0x223D62010](v12, -1, -1);

    v24 = (*(v29 + 8))(v4, v28);
  }

  else
  {

    v24 = (*(v2 + 8))(v4, v1);
  }

  result = (*((*v11 & *v7) + 0x60))(v24);
  if (result)
  {
    v26 = result;
    if ([result respondsToSelector_])
    {
      [v26 tnuiOnBoardingViewControllerDidComplete_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TNUIOBFlowLDMEnabled.presentPrivacyVC()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TNCLogger.default.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_21E646000, v6, v7, "%@ presenting privacy VC", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x223D62010](v9, -1, -1);
    MEMORY[0x223D62010](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  specialized static TNUIPrivacyViewController.privacyViewController(for:)(&outlined read-only object #0 of TNUIOBFlowLDMEnabled.presentPrivacyVC());
  v12 = v11;
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 16);
  v15 = v5;
  v14(v5, ObjectType, v12);
  (*(v12 + 32))(ObjectType, v12);
  return swift_unknownObjectRelease();
}

uint64_t TNUIOBFlowLDMEnabled.shareAnalytics(completion:)(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  (*(v10 + 104))(v12, *MEMORY[0x277D851C8], v9);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v14 = *(v20[1] + OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container);
  v15 = swift_allocObject();
  v16 = v21;
  v17 = v22;
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v17;
  aBlock[4] = partial apply for closure #1 in TNUIOBFlowLDMEnabled.shareAnalytics(completion:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223D617A0](0, v8, v5, v18);
  _Block_release(v18);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v23);
}

uint64_t closure #1 in TNUIOBFlowLDMEnabled.shareAnalytics(completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core13TNCMCManaging_p_Tt0B5(a1, aBlock);
  __swift_project_boxed_opaque_existential_0(aBlock, v20);
  dispatch thunk of TNCMCManaging.enableDiagnosticsSharing()();
  __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v16;
  *(v13 + 24) = a3;
  v21 = partial apply for closure #1 in closure #1 in TNUIOBFlowLDMEnabled.shareAnalytics(completion:);
  v22 = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v20 = &block_descriptor_25;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UIPageViewControllerOptionsKey and conformance UIPageViewControllerOptionsKey(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223D617A0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t closure #1 in closure #1 in TNUIOBFlowLDMEnabled.shareAnalytics(completion:)(void (*a1)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id TNUIOBFlowLDMEnabled.makeAnalyticsScreen()()
{
  v1 = v0;
  v2 = [objc_opt_self() configurationWithPointSize_];
  v3 = MEMORY[0x223D615B0](0xD00000000000001DLL, 0x800000021E676740);
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  v5 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x800000021E6762A0, 0, 0xE000000000000000);
  v7 = v6;
  v8 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001ELL, 0x800000021E676280, 0, 0xE000000000000000);
  v10 = v9;
  v11 = objc_allocWithZone(MEMORY[0x277D37698]);
  v12 = v4;
  v13 = MEMORY[0x223D615B0](v5, v7);

  v14 = MEMORY[0x223D615B0](v8, v10);

  v42 = v12;
  v41 = [v11 initWithTitle:v13 detailText:v14 icon:v12];

  v15 = [v41 buttonTray];
  v16 = [objc_opt_self() boldButton];
  v17 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000016, 0x800000021E676350, 0, 0xE000000000000000);
  v18 = MEMORY[0x223D615B0](v17);

  [v16 setTitle:v18 forState:0];

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container;
  v22 = *(v1 + OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container);
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = v19;
  v23[4] = v22;

  v39 = v23;
  v24 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v16 addAction:v24 forControlEvents:{64, 0, 0, 0, partial apply for closure #1 in TNUIOBFlowLDMEnabled.makeAnalyticsScreen(), v39}];

  v25 = [objc_opt_self() linkButton];
  v26 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0x5F574F4E5F544F4ELL, 0xEE004E4F49544341, 0, 0xE000000000000000);
  v27 = MEMORY[0x223D615B0](v26);

  [v25 setTitle:v27 forState:0];

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = v28;
  v29 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v25 0x278361EF8];

  v30 = [objc_opt_self() accessoryButton];
  v31 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD000000000000011, 0x800000021E676010, 0, 0xE000000000000000);
  v32 = MEMORY[0x223D615B0](v31);

  [v30 setTitle:v32 forState:0];

  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = *(v1 + v21);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v34;

  v36 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v30 addAction:v36 forControlEvents:{64, 0, 0, 0, partial apply for closure #3 in TNUIOBFlowLDMEnabled.makeAnalyticsScreen(), v35}];

  v37 = [v41 headerView];
  [v37 addAccessoryButton_];

  [v15 addButton_];
  [v15 addButton_];

  return v41;
}

id TNUIOBFlowLDMEnabled.makeLDMScreen()()
{
  v0 = [objc_opt_self() configurationWithPointSize_];
  v1 = MEMORY[0x223D615B0](0xD000000000000015, 0x800000021E676770);
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  v3 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x800000021E676330, 0, 0xE000000000000000);
  v5 = v4;
  v6 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x800000021E6762C0, 0, 0xE000000000000000);
  v8 = v7;
  v9 = objc_allocWithZone(MEMORY[0x277D37698]);
  v10 = v2;
  v11 = MEMORY[0x223D615B0](v3, v5);

  v12 = MEMORY[0x223D615B0](v6, v8);

  v13 = [v9 initWithTitle:v11 detailText:v12 icon:v10];

  v14 = [v13 buttonTray];
  v15 = [objc_opt_self() boldButton];
  v16 = specialized static TNUILocalization.localizedString(key:value:tableSuffix:)(0x45554E49544E4F43, 0xEF4E4F495443415FLL, 0, 0xE000000000000000);
  v17 = MEMORY[0x223D615B0](v16);

  [v15 setTitle:v17 forState:0];

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v15 addAction:v19 forControlEvents:{64, 0, 0, 0, partial apply for closure #1 in TNUIOBFlowLDMEnabled.makeLDMScreen(), v18}];

  [v14 addButton_];
  return v13;
}

void closure #1 in TNUIOBFlowLDMEnabled.makeAnalyticsScreen()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong view];

    if (!v9)
    {
      __break(1u);
      return;
    }

    [v9 setUserInteractionEnabled_];
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 showsBusyIndicator];
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a2;

    TNUIOBFlowLDMEnabled.shareAnalytics(completion:)(partial apply for closure #1 in closure #1 in TNUIOBFlowLDMEnabled.makeAnalyticsScreen(), v14);
  }

  type metadata accessor for TNUIAnalytics();
  swift_initStaticObject();
  v15 = a4;
  TNUIAnalytics.send(event:container:)(1, &v15);
}

void closure #1 in closure #1 in TNUIOBFlowLDMEnabled.makeAnalyticsScreen()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong hidesBusyIndicator];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 view];

    if (!v6)
    {
      __break(1u);
      return;
    }

    [v6 setUserInteractionEnabled_];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    TNUIOBFlowLDMEnabled.finishFlow()();
  }
}

void closure #2 in TNUIOBFlowLDMEnabled.makeAnalyticsScreen()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    TNUIOBFlowLDMEnabled.finishFlow()();
  }

  else
  {
  }
}

uint64_t closure #3 in TNUIOBFlowLDMEnabled.makeAnalyticsScreen()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    TNUIOBFlowLDMEnabled.presentPrivacyVC()();
  }

  type metadata accessor for TNUIAnalytics();
  swift_initStaticObject();
  v7 = a3;
  TNUIAnalytics.send(event:container:)(6, &v7);
}

void closure #1 in TNUIOBFlowLDMEnabled.makeLDMScreen()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    _s20ThreatNotificationUI23TNUIDependencyContainerV10tryResolve4typexxm_tKs8SendableRzlF0aB4Core13TNCMCManaging_p_Tt0B5(*(Strong + OBJC_IVAR____TtC20ThreatNotificationUI20TNUIOBFlowLDMEnabled_container), v5);
    __swift_project_boxed_opaque_existential_0(v5, v5[3]);
    v4 = dispatch thunk of TNCMCManaging.isDiagnosticsSharingEnabled.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    if (v4)
    {
      TNUIOBFlowLDMEnabled.finishFlow()();
    }

    else
    {
      TNUIOBFlowLDMEnabled.showPage(page:animated:)(0, 1);
    }
  }

  else
  {
  }
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_12Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

Swift::Int TNUIUserNotificationType.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TNUIUserNotificationType()
{
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TNUIUserNotificationType(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223D619F0](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TNUIUserNotificationType and conformance TNUIUserNotificationType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type TNUIUserNotificationType and conformance TNUIUserNotificationType;
  if (!lazy protocol witness table cache variable for type TNUIUserNotificationType and conformance TNUIUserNotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNUIUserNotificationType and conformance TNUIUserNotificationType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNUIUserNotificationType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TNUIUserNotificationType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t TNUIActionItemConfiguration.init(id:action:title:markdownFooter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a7;
  v43 = a6;
  v39 = a4;
  v40 = a5;
  v36 = a3;
  v37 = a2;
  v35 = a1;
  v9 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v9 - 8);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v13 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, "t-");
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v33 - v21;
  v23 = type metadata accessor for AttributedString();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v25) = *v36;
  v27 = v37;
  *a8 = v35;
  *(a8 + 8) = v27;
  *(a8 + 16) = v25;
  v28 = v40;
  *(a8 + 24) = v39;
  *(a8 + 32) = v28;
  v29 = type metadata accessor for URL();
  (*(*(v29 - 8) + 56))(v19, 1, 1, v29);
  (*(v13 + 104))(v15, *MEMORY[0x277CC8BB0], v34);
  (*(v38 + 104))(v12, *MEMORY[0x277CC8B98], v41);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  AttributedString.init(markdown:options:baseURL:)();

  (*(v24 + 56))(v22, 0, 1, v23);
  v30 = *(v24 + 32);
  v30(v26, v22, v23);
  v31 = type metadata accessor for TNUIActionItemConfiguration(0);
  return (v30)(a8 + *(v31 + 28), v26, v23);
}

uint64_t outlined destroy of AttributedString?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TNUIActionItemConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for TNUIActionItemConfiguration;
  if (!type metadata singleton initialization cache for TNUIActionItemConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TNUIActionItemConfiguration.id.getter()
{
  v1 = *v0;

  return v1;
}