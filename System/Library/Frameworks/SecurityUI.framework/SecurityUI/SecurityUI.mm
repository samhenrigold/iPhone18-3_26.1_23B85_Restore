id SFLogDefault(uint64_t a1)
{
  if (SFLogDefault_onceToken != -1)
  {
    SFLogDefault_cold_1();
  }

  v2 = SFLogDefault___logObj;

  return v2;
}

uint64_t __SFLogDefault_block_invoke()
{
  SFLogDefault___logObj = os_log_create("com.apple.SecurityUI", "Default");

  return MEMORY[0x2821F96F8]();
}

id SFLogCertificatePresentation(uint64_t a1)
{
  if (SFLogCertificatePresentation_onceToken != -1)
  {
    SFLogCertificatePresentation_cold_1();
  }

  v2 = SFLogCertificatePresentation___logObj;

  return v2;
}

uint64_t __SFLogCertificatePresentation_block_invoke()
{
  SFLogCertificatePresentation___logObj = os_log_create("com.apple.SecurityUI", "CertificatePresentation");

  return MEMORY[0x2821F96F8]();
}

id SFLogSFCertificatePresentation(uint64_t a1)
{
  if (SFLogSFCertificatePresentation_onceToken != -1)
  {
    SFLogSFCertificatePresentation_cold_1();
  }

  v2 = SFLogSFCertificatePresentation___logObj;

  return v2;
}

uint64_t __SFLogSFCertificatePresentation_block_invoke()
{
  SFLogSFCertificatePresentation___logObj = os_log_create("com.apple.SecurityUI", "SFCertificatePresentation");

  return MEMORY[0x2821F96F8]();
}

id SFLogCertificateModifier(uint64_t a1)
{
  if (SFLogCertificateModifier_onceToken != -1)
  {
    SFLogCertificateModifier_cold_1();
  }

  v2 = SFLogCertificateModifier___logObj;

  return v2;
}

uint64_t __SFLogCertificateModifier_block_invoke()
{
  SFLogCertificateModifier___logObj = os_log_create("com.apple.SecurityUI", "CertificateModifier");

  return MEMORY[0x2821F96F8]();
}

id SFLogCertificateView(uint64_t a1)
{
  if (SFLogCertificateView_onceToken != -1)
  {
    SFLogCertificateView_cold_1();
  }

  v2 = SFLogCertificateView___logObj;

  return v2;
}

uint64_t __SFLogCertificateView_block_invoke()
{
  SFLogCertificateView___logObj = os_log_create("com.apple.SecurityUI", "CertificateView");

  return MEMORY[0x2821F96F8]();
}

id SFLogCertificateChainView(uint64_t a1)
{
  if (SFLogCertificateChainView_onceToken != -1)
  {
    SFLogCertificateChainView_cold_1();
  }

  v2 = SFLogCertificateChainView___logObj;

  return v2;
}

uint64_t __SFLogCertificateChainView_block_invoke()
{
  SFLogCertificateChainView___logObj = os_log_create("com.apple.SecurityUI", "CertificateChainView");

  return MEMORY[0x2821F96F8]();
}

id SFLogCertificateDetailsView(uint64_t a1)
{
  if (SFLogCertificateDetailsView_onceToken != -1)
  {
    SFLogCertificateDetailsView_cold_1();
  }

  v2 = SFLogCertificateDetailsView___logObj;

  return v2;
}

uint64_t __SFLogCertificateDetailsView_block_invoke()
{
  SFLogCertificateDetailsView___logObj = os_log_create("com.apple.SecurityUI", "CertificateDetailsView");

  return MEMORY[0x2821F96F8]();
}

id SFLogCertificatePresentationView(uint64_t a1)
{
  if (SFLogCertificatePresentationView_onceToken != -1)
  {
    SFLogCertificatePresentationView_cold_1();
  }

  v2 = SFLogCertificatePresentationView___logObj;

  return v2;
}

uint64_t __SFLogCertificatePresentationView_block_invoke()
{
  SFLogCertificatePresentationView___logObj = os_log_create("com.apple.SecurityUI", "CertificatePresentationView");

  return MEMORY[0x2821F96F8]();
}

id SFLogCertificateHostingView(uint64_t a1)
{
  if (SFLogCertificateHostingView_onceToken != -1)
  {
    SFLogCertificateHostingView_cold_1();
  }

  v2 = SFLogCertificateHostingView___logObj;

  return v2;
}

uint64_t __SFLogCertificateHostingView_block_invoke()
{
  SFLogCertificateHostingView___logObj = os_log_create("com.apple.SecurityUI", "CertificateHostingView");

  return MEMORY[0x2821F96F8]();
}

id SFLogSFCertificatePresentationController(uint64_t a1)
{
  if (SFLogSFCertificatePresentationController_onceToken != -1)
  {
    SFLogSFCertificatePresentationController_cold_1();
  }

  v2 = SFLogSFCertificatePresentationController___logObj;

  return v2;
}

uint64_t __SFLogSFCertificatePresentationController_block_invoke()
{
  SFLogSFCertificatePresentationController___logObj = os_log_create("com.apple.SecurityUI", "SFCertificatePresentationController");

  return MEMORY[0x2821F96F8]();
}

id SFLogSFCertificatePresentationRequest(uint64_t a1)
{
  if (SFLogSFCertificatePresentationRequest_onceToken != -1)
  {
    SFLogSFCertificatePresentationRequest_cold_1();
  }

  v2 = SFLogSFCertificatePresentationRequest___logObj;

  return v2;
}

uint64_t __SFLogSFCertificatePresentationRequest_block_invoke()
{
  SFLogSFCertificatePresentationRequest___logObj = os_log_create("com.apple.SecurityUI", "SFCertificatePresentationRequest");

  return MEMORY[0x2821F96F8]();
}

id SFLogSFCertificateViewController(uint64_t a1)
{
  if (SFLogSFCertificateViewController_onceToken != -1)
  {
    SFLogSFCertificateViewController_cold_1();
  }

  v2 = SFLogSFCertificateViewController___logObj;

  return v2;
}

uint64_t __SFLogSFCertificateViewController_block_invoke()
{
  SFLogSFCertificateViewController___logObj = os_log_create("com.apple.SecurityUI", "SFCertificateViewController");

  return MEMORY[0x2821F96F8]();
}

id SFLogSFCertificateManager(uint64_t a1)
{
  if (SFLogSFCertificateManager_onceToken != -1)
  {
    SFLogSFCertificateManager_cold_1();
  }

  v2 = SFLogSFCertificateManager___logObj;

  return v2;
}

uint64_t __SFLogSFCertificateManager_block_invoke()
{
  SFLogSFCertificateManager___logObj = os_log_create("com.apple.SecurityUI", "SFCertificateManager");

  return MEMORY[0x2821F96F8]();
}

id SFLogSFCertificateProperties(uint64_t a1)
{
  if (SFLogSFCertificateProperties_onceToken != -1)
  {
    SFLogSFCertificateProperties_cold_1();
  }

  v2 = SFLogSFCertificateProperties___logObj;

  return v2;
}

uint64_t __SFLogSFCertificateProperties_block_invoke()
{
  SFLogSFCertificateProperties___logObj = os_log_create("com.apple.SecurityUI", "SFCertificateProperties");

  return MEMORY[0x2821F96F8]();
}

uint64_t View.certificateSheet(trust:title:message:help:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v43 = a4;
  v44 = a6;
  v47 = a9;
  v48 = a10;
  v49 = a11;
  v46 = type metadata accessor for CertificateModifier(0);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v40 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v42 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v41 = &v39 - v24;
  outlined init with copy of URL?(a8, v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  type metadata accessor for MainActor();

  v39 = a3;
  v25 = a5;

  v26 = static MainActor.shared.getter();
  v27 = (*(v40 + 80) + 88) & ~*(v40 + 80);
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  v28[2] = v26;
  v28[3] = v29;
  v28[4] = a1;
  v28[5] = a2;
  v31 = v43;
  v30 = v44;
  v28[6] = a3;
  v28[7] = v31;
  v28[8] = v25;
  v28[9] = v30;
  v28[10] = a7;
  outlined init with take of URL?(v20, v28 + v27);

  v32 = v39;
  v33 = static MainActor.shared.getter();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = MEMORY[0x277D85700];
  v34[4] = a1;
  v34[5] = a2;
  v34[6] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  v35 = v41;
  Binding.init(get:set:)();
  v36 = v42;
  outlined init with copy of URL?(v35, v42, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v37 = v45;
  CertificateModifier.init(request:)(v36, v45);
  MEMORY[0x23EE93670](v37, v48, v46, v49);
  outlined destroy of CertificateModifier(v37);
  return outlined destroy of Binding<CertificateRequest?>(v35);
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

uint64_t closure #1 in View.certificateSheet(trust:title:message:help:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v26 - v19;
  v26[1] = a1;
  v26[2] = a2;
  v26[3] = a3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo11SecTrustRefaSgGMd, &_s7SwiftUI7BindingVySo11SecTrustRefaSgGMR);
  MEMORY[0x23EE93750](v26, v21);
  v22 = v26[0];
  if (v26[0])
  {
    outlined init with copy of URL?(a8, v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    CertificateRequest.init(trust:qwacTrust:title:message:help:)(v22, 0, a4, a5, a6, a7, v20, a9);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = type metadata accessor for CertificateRequest(0);
  return (*(*(v24 - 8) + 56))(a9, v23, 1, v24);
}

uint64_t sub_23AAA3724()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in View.certificateSheet(trust:title:message:help:)@<X0>(void *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = v1[10];
  v11 = v1 + ((*(v3 + 80) + 88) & ~*(v3 + 80));

  return closure #1 in View.certificateSheet(trust:title:message:help:)(v4, v5, v6, v7, v8, v9, v10, v11, a1);
}

uint64_t sub_23AAA3968()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #2 in View.certificateSheet(trust:title:message:help:)(uint64_t a1)
{
  v2 = type metadata accessor for CertificateRequest(0);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (result == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo11SecTrustRefaSgGMd, &_s7SwiftUI7BindingVySo11SecTrustRefaSgGMR);
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of CertificateModifier(uint64_t a1)
{
  v2 = type metadata accessor for CertificateModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of Binding<CertificateRequest?>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23AAA3B88(uint64_t *a1)
{
  type metadata accessor for CertificateModifier(255);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type CertificateModifier and conformance CertificateModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type CertificateModifier and conformance CertificateModifier()
{
  result = lazy protocol witness table cache variable for type CertificateModifier and conformance CertificateModifier;
  if (!lazy protocol witness table cache variable for type CertificateModifier and conformance CertificateModifier)
  {
    type metadata accessor for CertificateModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateModifier and conformance CertificateModifier);
  }

  return result;
}

void type metadata accessor for SecTrustRef()
{
  if (!lazy cache variable for type metadata for SecTrustRef)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for SecTrustRef);
    }
  }
}

unint64_t SFLog.Category.rawValue.getter(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
    case 13:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6369666974726563;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
    case 8:
      result = 0xD000000000000016;
      break;
    case 7:
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0xD000000000000023;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SFLog.Category(char *a1, char *a2)
{
  v2 = *a2;
  v3 = SFLog.Category.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SFLog.Category.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SFLog.Category()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SFLog.Category.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SFLog.Category(uint64_t a1)
{
  SFLog.Category.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SFLog.Category(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  SFLog.Category.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SFLog.Category@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SFLog.Category.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SFLog.Category@<X0>(unint64_t *a1@<X8>)
{
  result = SFLog.Category.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static SFLog.default.getter(uint64_t a1)
{
  v1 = SFLogDefault(a1);

  return Logger.init(_:)();
}

uint64_t static SFLog.certificatePresentation.getter(uint64_t a1)
{
  v1 = SFLogCertificatePresentation(a1);

  return Logger.init(_:)();
}

uint64_t static SFLog.sfCertificatePresentation.getter(uint64_t a1)
{
  v1 = SFLogSFCertificatePresentation(a1);

  return Logger.init(_:)();
}

uint64_t static SFLog.certificateModifier.getter(uint64_t a1)
{
  v1 = SFLogCertificateModifier(a1);

  return Logger.init(_:)();
}

uint64_t static SFLog.certificateView.getter(uint64_t a1)
{
  v1 = SFLogCertificateView(a1);

  return Logger.init(_:)();
}

uint64_t static SFLog.certificateChainView.getter(uint64_t a1)
{
  v1 = SFLogCertificateChainView(a1);

  return Logger.init(_:)();
}

uint64_t static SFLog.certificateDetailsView.getter(uint64_t a1)
{
  v1 = SFLogCertificateDetailsView(a1);

  return Logger.init(_:)();
}

uint64_t static SFLog.certificatePresentationView.getter(uint64_t a1)
{
  v1 = SFLogCertificatePresentationView(a1);

  return Logger.init(_:)();
}

uint64_t static SFLog.certificateHostingView.getter(uint64_t a1)
{
  v1 = SFLogCertificateHostingView(a1);

  return Logger.init(_:)();
}

uint64_t static SFLog.sfCertificatePresentationController.getter(uint64_t a1)
{
  v1 = SFLogSFCertificatePresentationController(a1);

  return Logger.init(_:)();
}

uint64_t static SFLog.sfCertificatePresentationRequest.getter(uint64_t a1)
{
  v1 = SFLogSFCertificatePresentationRequest(a1);

  return Logger.init(_:)();
}

uint64_t static SFLog.sfCertificateViewController.getter(uint64_t a1)
{
  v1 = SFLogSFCertificateViewController(a1);

  return Logger.init(_:)();
}

uint64_t static SFLog.sfCertificateManager.getter(uint64_t a1)
{
  v1 = SFLogSFCertificateManager(a1);

  return Logger.init(_:)();
}

uint64_t static SFLog.sfCertificateProperties.getter(uint64_t a1)
{
  v1 = SFLogSFCertificateProperties(a1);

  return Logger.init(_:)();
}

uint64_t static SFLog.logFunctionCall(category:functionName:)(char a1, uint64_t a2, uint64_t a3)
{
  v99 = a2;
  v100 = a3;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v101 = v4;
  v102 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v8 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = MEMORY[0x28223BE20](&v98 - v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v98 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v98 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v98 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v98 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v98 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v98 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v98 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v98 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v41 = &v98 - v40;
  switch(a1)
  {
    case 1:
      v68 = SFLogCertificatePresentation(v35);
      Logger.init(_:)();
      v69 = v100;

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v103 = v73;
        *v72 = 136446210;
        *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v69, &v103);
        _os_log_impl(&dword_23AA9F000, v70, v71, "%{public}s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x23EE941B0](v73, -1, -1);
        MEMORY[0x23EE941B0](v72, -1, -1);
      }

      return (*(v102 + 8))(v34, v101);
    case 2:
      v49 = SFLogSFCertificatePresentation(v35);
      goto LABEL_29;
    case 3:
      v56 = SFLogCertificateModifier(v35);
      Logger.init(_:)();
      v57 = v100;

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v103 = v61;
        *v60 = 136446210;
        *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v57, &v103);
        _os_log_impl(&dword_23AA9F000, v58, v59, "%{public}s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v61);
        MEMORY[0x23EE941B0](v61, -1, -1);
        MEMORY[0x23EE941B0](v60, -1, -1);
      }

      return (*(v102 + 8))(v28, v101);
    case 4:
      v50 = SFLogCertificateView(v35);
      Logger.init(_:)();
      v51 = v100;

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v103 = v55;
        *v54 = 136446210;
        *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v51, &v103);
        _os_log_impl(&dword_23AA9F000, v52, v53, "%{public}s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x23EE941B0](v55, -1, -1);
        MEMORY[0x23EE941B0](v54, -1, -1);
      }

      return (*(v102 + 8))(v25, v101);
    case 5:
      v74 = SFLogCertificateChainView(v35);
      Logger.init(_:)();
      v75 = v100;

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v103 = v79;
        *v78 = 136446210;
        *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v75, &v103);
        _os_log_impl(&dword_23AA9F000, v76, v77, "%{public}s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x23EE941B0](v79, -1, -1);
        MEMORY[0x23EE941B0](v78, -1, -1);
      }

      return (*(v102 + 8))(v22, v101);
    case 6:
      v80 = SFLogCertificateDetailsView(v35);
      Logger.init(_:)();
      v81 = v100;

      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v103 = v85;
        *v84 = 136446210;
        *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v81, &v103);
        _os_log_impl(&dword_23AA9F000, v82, v83, "%{public}s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x23EE941B0](v85, -1, -1);
        MEMORY[0x23EE941B0](v84, -1, -1);
      }

      return (*(v102 + 8))(v19, v101);
    case 7:
      v62 = SFLogCertificatePresentationView(v35);
      Logger.init(_:)();
      v63 = v100;

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v103 = v67;
        *v66 = 136446210;
        *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v63, &v103);
        _os_log_impl(&dword_23AA9F000, v64, v65, "%{public}s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x23EE941B0](v67, -1, -1);
        MEMORY[0x23EE941B0](v66, -1, -1);
      }

      return (*(v102 + 8))(v16, v101);
    case 8:
      v92 = SFLogCertificateHostingView(v35);
      Logger.init(_:)();
      v93 = v100;

      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v103 = v97;
        *v96 = 136446210;
        *(v96 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v93, &v103);
        _os_log_impl(&dword_23AA9F000, v94, v95, "%{public}s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v97);
        MEMORY[0x23EE941B0](v97, -1, -1);
        MEMORY[0x23EE941B0](v96, -1, -1);
      }

      return (*(v102 + 8))(v13, v101);
    case 9:
      v31 = v36;
      v49 = SFLogSFCertificatePresentationController(v35);
      goto LABEL_29;
    case 10:
      v31 = v35;
      v49 = SFLogSFCertificatePresentationRequest(v35);
      goto LABEL_29;
    case 11:
      v31 = v39;
      v49 = SFLogSFCertificateViewController(v35);
      goto LABEL_29;
    case 12:
      v31 = v38;
      v49 = SFLogSFCertificateManager(v35);
      goto LABEL_29;
    case 13:
      v31 = v37;
      v49 = SFLogSFCertificateProperties(v35);
LABEL_29:
      v86 = v49;
      Logger.init(_:)();
      v87 = v100;

      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v103 = v91;
        *v90 = 136446210;
        *(v90 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v87, &v103);
        _os_log_impl(&dword_23AA9F000, v88, v89, "%{public}s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v91);
        MEMORY[0x23EE941B0](v91, -1, -1);
        MEMORY[0x23EE941B0](v90, -1, -1);
      }

      result = (*(v102 + 8))(v31, v101);
      break;
    default:
      v42 = SFLogDefault(v35);
      Logger.init(_:)();
      v43 = v100;

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v103 = v47;
        *v46 = 136446210;
        *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v43, &v103);
        _os_log_impl(&dword_23AA9F000, v44, v45, "%{public}s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x23EE941B0](v47, -1, -1);
        MEMORY[0x23EE941B0](v46, -1, -1);
      }

      result = (*(v102 + 8))(v41, v101);
      break;
  }

  return result;
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
  __swift_destroy_boxed_opaque_existential_0(v11);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized SFLog.Category.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SFLog.Category.init(rawValue:), v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

unint64_t lazy protocol witness table accessor for type SFLog.Category and conformance SFLog.Category(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type SFLog.Category and conformance SFLog.Category;
  if (!lazy protocol witness table cache variable for type SFLog.Category and conformance SFLog.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SFLog.Category and conformance SFLog.Category);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SFLog.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SFLog.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t key path getter for CertificateView.dismiss : CertificateView@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CertificateView(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
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

  return _sxRi_zRi0_zlyytIsegr_SgWOy_0(v4, v5);
}

uint64_t key path setter for CertificateView.dismiss : CertificateView(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for CertificateView(0) + 20));
  v8 = *v7;
  v9 = v7[1];
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t CertificateView.dismiss.getter()
{
  v1 = (v0 + *(type metadata accessor for CertificateView(0) + 20));
  v2 = *v1;
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(*v1, v1[1]);
  return v2;
}

uint64_t type metadata accessor for CertificateView(uint64_t a1)
{
  result = type metadata singleton initialization cache for CertificateView;
  if (!type metadata singleton initialization cache for CertificateView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _sxRi_zRi0_zlyytIsegr_SgWOy_0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t CertificateView.dismiss.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CertificateView(0) + 20));
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t variable initialization expression of CertificateView._openURL@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t key path setter for EnvironmentValues.openURL : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.openURL.setter();
}

uint64_t CertificateView.init(request:dismiss:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CertificateView(0);
  v9 = (a4 + v8[5]);
  v10 = v8[7];
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMR);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of CertificateRequest(a1, a4, type metadata accessor for CertificateRequest);
  *v9 = a2;
  v9[1] = a3;
  v11 = [objc_allocWithZone(SFCertificateManager) initWithTrust_];
  result = outlined destroy of CertificateRequest(a1);
  *(a4 + v8[6]) = v11;
  return result;
}

uint64_t outlined destroy of CertificateRequest(uint64_t a1)
{
  v2 = type metadata accessor for CertificateRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CertificateView.labelsAndValues.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23AABC360;
  *(v1 + 32) = static SFLocalization.website.getter();
  *(v1 + 40) = v2;
  v3 = *(v0 + *(type metadata accessor for CertificateView(0) + 24));
  v4 = [v3 hostName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  *(v1 + 48) = v6;
  *(v1 + 56) = v8;
  *(v1 + 64) = static SFLocalization.issuedTo.getter();
  *(v1 + 72) = v9;
  v10 = [v3 issuerName];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  *(v1 + 80) = v12;
  *(v1 + 88) = v14;
  *(v1 + 96) = static SFLocalization.signedBy.getter();
  *(v1 + 104) = v15;
  v16 = [v3 issuerName];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  *(v1 + 112) = v18;
  *(v1 + 120) = v20;
  *(v1 + 128) = static SFLocalization.validUntil.getter();
  *(v1 + 136) = v21;
  *(v1 + 144) = CertificateView.expirationDate()();
  *(v1 + 152) = v22;
  return v1;
}

uint64_t CertificateView.expirationDate()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v11 setDateStyle_];
  [v11 setTimeStyle_];
  v12 = [*(v0 + *(type metadata accessor for CertificateView(0) + 24)) expiration];
  if (v12)
  {
    v13 = v12;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v5 + 32);
    v14(v3, v8, v4);
    (*(v5 + 56))(v3, 0, 1, v4);
    v14(v10, v3, v4);
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    Date.init()();
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  v16 = [v11 stringFromDate_];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v10, v4);
  return v17;
}

void CertificateView.maxColumnWidth.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v47.origin.x = v2;
  v47.origin.y = v4;
  v47.size.width = v6;
  v47.size.height = v8;
  CGRectGetWidth(v47);
  v42 = [objc_opt_self() preferredFontForTextStyle_];
  v9 = CertificateView.labelsAndValues.getter();
  v10 = *(v9 + 16);
  if (v10)
  {
    v46 = MEMORY[0x277D84F90];
    v11 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v12 = v46;
    v41 = *MEMORY[0x277D740A8];
    v40 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMR);
    v13 = v11;
    v14 = 0;
    v15 = v11 + 56;
    do
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      v16 = v12;
      v17 = *(v15 - 24);
      v18 = *(v15 - 16);

      v19 = MEMORY[0x23EE938A0](v17, v18);
      v45[0] = v41;
      v45[4] = type metadata accessor for UIFont(0, &lazy cache variable for type metadata for UIFont, 0x277D74300);
      v45[1] = v42;
      v20 = static _DictionaryStorage.allocate(capacity:)();
      v21 = v41;
      v22 = v42;
      outlined init with copy of URL?(v45, &v43, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
      v23 = v43;
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
      if (v25)
      {
        goto LABEL_19;
      }

      v20[(v24 >> 6) + 8] |= 1 << v24;
      *(v20[6] + 8 * v24) = v23;
      outlined init with take of Any(&v44, (v20[7] + 32 * v24));
      v26 = v20[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_20;
      }

      v20[2] = v28;
      outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v45, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
      type metadata accessor for NSAttributedStringKey();
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v19 sizeWithAttributes_];
      v31 = v30;

      v12 = v16;
      v46 = v16;
      v33 = *(v16 + 16);
      v32 = *(v16 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v12 = v46;
      }

      ++v14;
      *(v12 + 16) = v33 + 1;
      *(v12 + 8 * v33 + 32) = v31;
      v15 += 32;
      v13 = v40;
    }

    while (v10 != v14);

    v34 = *(v12 + 16);
    if (!v34)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v12 = MEMORY[0x277D84F90];
  v34 = *(MEMORY[0x277D84F90] + 16);
  if (v34)
  {
LABEL_10:
    v35 = *(v12 + 32);
    v36 = v34 - 1;
    if (v36)
    {
      v37 = (v12 + 40);
      do
      {
        v38 = *v37++;
        v39 = v38;
        if (v35 < v38)
        {
          v35 = v39;
        }

        --v36;
      }

      while (v36);
    }
  }

LABEL_17:
}

uint64_t CertificateView.learnMoreURL.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {

    return static SecurityUI.Links.learnMoreURL_iPad.getter();
  }

  else
  {

    return static SecurityUI.Links.learnMoreURL_iPhone.getter();
  }
}

uint64_t CertificateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVyAA15ModifiedContentVyAIyAA6VStackVyAGyAA6HStackVyAGyAIyAA5ImageVAA14_PaddingLayoutVG_AKyAGyAA0F0PAAE19hyphenationDisabledyQrSbFQOyAE_Qo__AIyAMyAGyAIyAoA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AIyAIyAIyAeQGAXyAA4FontVSgGGAA010_FixedSizeM0VGtGGAA010_FlexFrameM0VGtGGtGG_AEtGGAQGAQG_AIyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAGyAIyAIyAEA14_GAXyAA0D9AlignmentOGG_AtAEAUyQrSbFQOyA29__Qo_tGGGAQGAA14NavigationLinkVyAE08SecurityB0016CertificateChainF0VGAtAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyAIyAIyA29_AA01_h5ShapeS0VyAA9RectangleVGGA6_GA0_GG_AA16PlainButtonStyleVQo_tGAA05EmptyF0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVyAA15ModifiedContentVyAIyAA6VStackVyAGyAA6HStackVyAGyAIyAA5ImageVAA14_PaddingLayoutVG_AKyAGyAA0F0PAAE19hyphenationDisabledyQrSbFQOyAE_Qo__AIyAMyAGyAIyAoA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AIyAIyAIyAeQGAXyAA4FontVSgGGAA010_FixedSizeM0VGtGGAA010_FlexFrameM0VGtGGtGG_AEtGGAQGAQG_AIyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAGyAIyAIyAEA14_GAXyAA0D9AlignmentOGG_AtAEAUyQrSbFQOyA29__Qo_tGGGAQGAA14NavigationLinkVyAE08SecurityB0016CertificateChainF0VGAtAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyAIyAIyA29_AA01_h5ShapeS0VyAA9RectangleVGGA6_GA0_GG_AA16PlainButtonStyleVQo_tGAA05EmptyF0VGMR);
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v45 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v44 = v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v42 - v9;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0x4024000000000000;
  v10[16] = 0;
  v11 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAA16_OverlayModifierVyAKyAKyAKyAKyAKyAmA08_PaddingG0VGAA022_EnvironmentKeyWritingP0VyAA5ColorVSgGGAA011_BackgroundP0VyAKyA0_AA11_ClipEffectVyAA6CircleVGGGGARGAA07_OffsetX0VGGGAWG_AKyAA6VStackVyAIyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A28_SgtGGAWGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAA16_OverlayModifierVyAKyAKyAKyAKyAKyAmA08_PaddingG0VGAA022_EnvironmentKeyWritingP0VyAA5ColorVSgGGAA011_BackgroundP0VyAKyA0_AA11_ClipEffectVyAA6CircleVGGGGARGAA07_OffsetX0VGGGAWG_AKyAA6VStackVyAIyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A28_SgtGGAWGtGGMR) + 44)];
  v42[0] = v10;
  closure #1 in CertificateView.body.getter(v1, v11);
  v50 = static SFLocalization.certificate.getter();
  v51 = v12;
  lazy protocol witness table accessor for type String and conformance String(v50, v12, v13);
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Font.caption.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;

  outlined consume of Text.Storage(v14, v16, v18 & 1);

  static Color.gray.getter();
  v24 = Text.foregroundColor(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  outlined consume of Text.Storage(v19, v21, v23 & 1);

  v50 = v24;
  v51 = v26;
  v52 = v28 & 1;
  v53 = v30;
  v49 = v42[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6HStackVyACyAEyAA5ImageVAA14_PaddingLayoutVG_AGyACyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AEyAIyACyAEyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAEyAEyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMG_AEyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSACyAEyAEyASA12_GAVyAA0N9AlignmentOGG_ApAEAQyQrSbFQOyA27__Qo_tGGGAMGAA14NavigationLinkVyAS08SecurityB0016CertificateChainD0VGApAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyAEyAEyA27_AA01_f5ShapeR0VyAA9RectangleVGGA4_GAZGG_AA16PlainButtonStyleVQo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6HStackVyACyAEyAA5ImageVAA14_PaddingLayoutVG_AGyACyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AEyAIyACyAEyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAEyAEyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMG_AEyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSACyAEyAEyASA12_GAVyAA0N9AlignmentOGG_ApAEAQyQrSbFQOyA27__Qo_tGGGAMGAA14NavigationLinkVyAS08SecurityB0016CertificateChainD0VGApAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyAEyAEyA27_AA01_f5ShapeR0VyAA9RectangleVGGA4_GAZGG_AA16PlainButtonStyleVQo_tGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6HStackVyACyAEyAA5ImageVAA14_PaddingLayoutVG_AGyACyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AEyAIyACyAEyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAEyAEyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMG_AEyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSACyAEyAEyASA12_GAVyAA0N9AlignmentOGG_ApAEAQyQrSbFQOyA27__Qo_tGGGAMGAA14NavigationLinkVyAS08SecurityB0016CertificateChainD0VGApAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyAEyAEyA27_AA01_f5ShapeR0VyAA9RectangleVGGA4_GAZGG_AA16PlainButtonStyleVQo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA6VStackVyACyAA6HStackVyACyAEyAA5ImageVAA14_PaddingLayoutVG_AGyACyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AEyAIyACyAEyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAEyAEyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMG_AEyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSACyAEyAEyASA12_GAVyAA0N9AlignmentOGG_ApAEAQyQrSbFQOyA27__Qo_tGGGAMGAA14NavigationLinkVyAS08SecurityB0016CertificateChainD0VGApAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAEyAEyAEyA27_AA01_f5ShapeR0VyAA9RectangleVGGA4_GAZGG_AA16PlainButtonStyleVQo_tGMR, MEMORY[0x277CE14C0]);
  v31 = v44;
  Section<>.init(header:content:)();
  v32 = v10;
  v33 = v43;
  outlined init with copy of URL?(v32, v43, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMR);
  v35 = v45;
  v34 = v46;
  v36 = *(v46 + 16);
  v37 = v47;
  v36(v45, v31, v47);
  v38 = v48;
  outlined init with copy of URL?(v33, v48, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMR);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGG_AA7SectionVyA23_AEyAGyAGyA18_yAEyACyAEyAT_A18_yAEyA24__AGyACyAEyAGyAiZG_AGyAGyAGyA23_ASGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA05_FlexlK0VGtGGtGG_A23_tGGASGASG_AGyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAEyAGyAGyA23_A46_GAVyAA13TextAlignmentOGG_A20_AAEA21_yQrSbFQOyA61__Qo_tGGGASGAA14NavigationLinkVyA23_08SecurityB0016CertificateChainE0VGA20_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAGyA61_AA01_g5ShapeN0VyAA9RectangleVGGA38_GAZGG_AA16PlainButtonStyleVQo_tGAA05EmptyE0VGtMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGG_AA7SectionVyA23_AEyAGyAGyA18_yAEyACyAEyAT_A18_yAEyA24__AGyACyAEyAGyAiZG_AGyAGyAGyA23_ASGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA05_FlexlK0VGtGGtGG_A23_tGGASGASG_AGyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAEyAGyAGyA23_A46_GAVyAA13TextAlignmentOGG_A20_AAEA21_yQrSbFQOyA61__Qo_tGGGASGAA14NavigationLinkVyA23_08SecurityB0016CertificateChainE0VGA20_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAGyA61_AA01_g5ShapeN0VyAA9RectangleVGGA38_GAZGG_AA16PlainButtonStyleVQo_tGAA05EmptyE0VGtMR);
  v36((v38 + *(v39 + 48)), v35, v37);
  v40 = *(v34 + 8);
  v40(v31, v37);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v42[0], &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMR);
  v40(v35, v37);
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v33, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA16_OverlayModifierVyAGyAGyAGyAGyAGyAiA08_PaddingK0VGAA022_EnvironmentKeyWritingN0VyAA5ColorVSgGGAA011_BackgroundN0VyAGyAxA11_ClipEffectVyAA6CircleVGGGGANGAA07_OffsetV0VGGGASG_AGyAA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A24_SgtGGASGtGGMR);
}

uint64_t closure #1 in CertificateView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v65 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMR);
  v3 = MEMORY[0x28223BE20](v60);
  v64 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v63 = (&v60 - v5);
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  v10 = *MEMORY[0x277CE0FE0];
  v11 = *(v7 + 104);
  v11(v9, v10, v6);
  v62 = Image.resizable(capInsets:resizingMode:)();

  v12 = *(v7 + 8);
  v12(v9, v6);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v130 = 1;
  *&v129[6] = v133;
  *&v129[22] = v134;
  *&v129[38] = v135;
  v13 = *(type metadata accessor for CertificateView(0) + 24);
  v61 = a1;
  v14 = *(a1 + v13);
  [v14 isValid];
  Image.init(systemName:)();
  v11(v9, v10, v6);
  v15 = Image.resizable(capInsets:resizingMode:)();

  v12(v9, v6);
  v16 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if ([v14 isValid])
  {
    v25 = static Color.green.getter();
  }

  else
  {
    v25 = static Color.red.getter();
  }

  v26 = v25;
  KeyPath = swift_getKeyPath();
  v125 = 0;
  v28 = static Color.white.getter();
  v29 = static Alignment.center.getter();
  v31 = v30;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v32 = static Alignment.bottomTrailing.getter();
  *&v78 = v15;
  BYTE8(v78) = v16;
  *(&v78 + 9) = *v126;
  HIDWORD(v78) = *&v126[3];
  *&v79 = v18;
  *(&v79 + 1) = v20;
  *&v80 = v22;
  *(&v80 + 1) = v24;
  LOBYTE(v81) = 0;
  *(&v81 + 1) = *v124;
  DWORD1(v81) = *&v124[3];
  *(&v81 + 1) = KeyPath;
  *&v82 = v26;
  *(&v82 + 1) = v28;
  WORD3(v83) = v128;
  *(&v83 + 2) = v127;
  LOWORD(v83) = 256;
  *(&v83 + 1) = v29;
  *&v84[0] = v31;
  *(v84 + 8) = v109[0];
  *(&v84[2] + 8) = v109[2];
  *(&v84[1] + 8) = v109[1];
  __asm { FMOV            V0.2D, #5.0 }

  *(&v84[3] + 8) = _Q0;
  *(&v84[4] + 1) = v32;
  v85 = v38;
  v74 = v84[2];
  v75 = v84[3];
  v76 = v84[4];
  v77 = v38;
  v70 = v82;
  v71 = v83;
  v72 = v84[0];
  v73 = v84[1];
  v66 = v78;
  v67 = v79;
  v68 = v80;
  v69 = v81;
  v86 = v15;
  v87 = v16;
  *v88 = *v126;
  *&v88[3] = *&v126[3];
  v89 = v18;
  v90 = v20;
  v91 = v22;
  v92 = v24;
  v93 = 0;
  *v94 = *v124;
  *&v94[3] = *&v124[3];
  v95 = KeyPath;
  v96 = v26;
  v97 = v28;
  v98 = 256;
  v100 = v128;
  v99 = v127;
  v101 = v29;
  v102 = v31;
  v105 = v109[2];
  v104 = v109[1];
  v103 = v109[0];
  v106 = _Q0;
  v107 = v32;
  v108 = v38;
  outlined init with copy of URL?(&v78, v110, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA14_PaddingLayoutVGAA022_EnvironmentKeyWritingD0VyAA5ColorVSgGGAA011_BackgroundD0VyAEyAnA11_ClipEffectVyAA6CircleVGGGGAA06_FrameI0VGAA07_OffsetP0VGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA14_PaddingLayoutVGAA022_EnvironmentKeyWritingD0VyAA5ColorVSgGGAA011_BackgroundD0VyAEyAnA11_ClipEffectVyAA6CircleVGGGGAA06_FrameI0VGAA07_OffsetP0VGGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(&v86, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA14_PaddingLayoutVGAA022_EnvironmentKeyWritingD0VyAA5ColorVSgGGAA011_BackgroundD0VyAEyAnA11_ClipEffectVyAA6CircleVGGGGAA06_FrameI0VGAA07_OffsetP0VGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA14_PaddingLayoutVGAA022_EnvironmentKeyWritingD0VyAA5ColorVSgGGAA011_BackgroundD0VyAEyAnA11_ClipEffectVyAA6CircleVGGGGAA06_FrameI0VGAA07_OffsetP0VGGMR);
  LOBYTE(v31) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v131 = 0;
  v47 = static HorizontalAlignment.leading.getter();
  v48 = v63;
  *v63 = v47;
  *(v48 + 8) = 0x4024000000000000;
  *(v48 + 16) = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AOSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AOSgtGGMR);
  closure #1 in closure #1 in CertificateView.body.getter(v61, (v48 + *(v49 + 44)));
  LOBYTE(KeyPath) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v50 = v48 + *(v60 + 36);
  *v50 = KeyPath;
  *(v50 + 8) = v51;
  *(v50 + 16) = v52;
  *(v50 + 24) = v53;
  *(v50 + 32) = v54;
  *(v50 + 40) = 0;
  v55 = v64;
  outlined init with copy of URL?(v48, v64, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMR);
  v56 = v62;
  v109[0] = v62;
  LOWORD(v109[1]) = 1;
  *(&v109[1] + 2) = *v129;
  *(&v109[2] + 2) = *&v129[16];
  *(&v109[3] + 2) = *&v129[32];
  *(&v109[8] + 8) = v70;
  *(&v109[9] + 8) = v71;
  *(&v109[10] + 8) = v72;
  *(&v109[11] + 8) = v73;
  *(&v109[4] + 8) = v66;
  *(&v109[5] + 8) = v67;
  *(&v109[6] + 8) = v68;
  *(&v109[7] + 8) = v69;
  *&v109[4] = *&v129[46];
  *(&v109[15] + 1) = v77;
  *(&v109[14] + 8) = v76;
  *(&v109[13] + 8) = v75;
  *(&v109[12] + 8) = v74;
  LOBYTE(v109[16]) = v31;
  *(&v109[16] + 1) = *v132;
  DWORD1(v109[16]) = *&v132[3];
  *(&v109[16] + 1) = v40;
  *&v109[17] = v42;
  *(&v109[17] + 1) = v44;
  *&v109[18] = v46;
  BYTE8(v109[18]) = 0;
  v57 = v65;
  memcpy(v65, v109, 0x129uLL);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA16_OverlayModifierVyACyACyACyACyACyAeA08_PaddingH0VGAA022_EnvironmentKeyWritingK0VyAA5ColorVSgGGAA011_BackgroundK0VyACyAtA11_ClipEffectVyAA6CircleVGGGGAJGAA07_OffsetS0VGGGAOG_ACyAA6VStackVyAA9TupleViewVyAA0X0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A22_SgtGGAOGtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA16_OverlayModifierVyACyACyACyACyACyAeA08_PaddingH0VGAA022_EnvironmentKeyWritingK0VyAA5ColorVSgGGAA011_BackgroundK0VyACyAtA11_ClipEffectVyAA6CircleVGGGGAJGAA07_OffsetS0VGGGAOG_ACyAA6VStackVyAA9TupleViewVyAA0X0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__A22_SgtGGAOGtMR);
  outlined init with copy of URL?(v55, v57 + *(v58 + 48), &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMR);
  outlined init with copy of URL?(v109, v110, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA16_OverlayModifierVyACyACyACyACyACyAeA08_PaddingH0VGAA022_EnvironmentKeyWritingK0VyAA5ColorVSgGGAA011_BackgroundK0VyACyAtA11_ClipEffectVyAA6CircleVGGGGAJGAA07_OffsetS0VGGGAOGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA16_OverlayModifierVyACyACyACyACyACyAeA08_PaddingH0VGAA022_EnvironmentKeyWritingK0VyAA5ColorVSgGGAA011_BackgroundK0VyACyAtA11_ClipEffectVyAA6CircleVGGGGAJGAA07_OffsetS0VGGGAOGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v48, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v55, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMSgtGGAA14_PaddingLayoutVGMR);
  v113 = *v129;
  v114 = *&v129[16];
  *v115 = *&v129[32];
  *&v115[75] = v74;
  *&v115[83] = v75;
  *&v115[91] = v76;
  *&v115[43] = v70;
  *&v115[51] = v71;
  *&v115[59] = v72;
  *&v115[67] = v73;
  *&v115[11] = v66;
  *&v115[19] = v67;
  *&v115[27] = v68;
  v110[0] = v56;
  v110[1] = 0;
  v111 = 1;
  v112 = 0;
  *&v115[7] = *&v129[46];
  v116 = v77;
  *&v115[35] = v69;
  v117 = v31;
  *v118 = *v132;
  *&v118[3] = *&v132[3];
  v119 = v40;
  v120 = v42;
  v121 = v44;
  v122 = v46;
  v123 = 0;
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v110, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA16_OverlayModifierVyACyACyACyACyACyAeA08_PaddingH0VGAA022_EnvironmentKeyWritingK0VyAA5ColorVSgGGAA011_BackgroundK0VyACyAtA11_ClipEffectVyAA6CircleVGGGGAJGAA07_OffsetS0VGGGAOGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA16_OverlayModifierVyACyACyACyACyACyAeA08_PaddingH0VGAA022_EnvironmentKeyWritingK0VyAA5ColorVSgGGAA011_BackgroundK0VyACyAtA11_ClipEffectVyAA6CircleVGGGGAJGAA07_OffsetS0VGGGAOGMR);
}

uint64_t closure #1 in closure #1 in CertificateView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMd, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v76 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v79 = &v74 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_MR);
  v77 = *(v80 - 8);
  v7 = MEMORY[0x28223BE20](v80);
  v78 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v81 = &v74 - v9;
  if (*(a1 + 40))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    goto LABEL_16;
  }

  v12 = *(a1 + *(type metadata accessor for CertificateView(0) + 24));
  v13 = [v12 title];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      if ([v12 isValid])
      {
        v19 = static SFLocalization.connectionIsSecure(host:)(v15, v17);
      }

      else
      {
        v19 = static SFLocalization.connectionNotSecure(host:)(v15, v17);
      }

      v10 = v19;
      v11 = v20;

      goto LABEL_16;
    }
  }

  if ([v12 isValid])
  {
    IsSecure = static SFLocalization.connectionIsSecureDefault.getter();
  }

  else
  {
    IsSecure = static SFLocalization.connectionNotSecureDefault.getter();
  }

  v10 = IsSecure;
  v11 = v22;
LABEL_16:

  v23 = CertificateView.coloredMessageText(message:)(v10, v11);
  v25 = v24;
  v27 = v26;

  static Font.title3.getter();
  v28 = Text.font(_:)();
  v29 = a1;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  outlined consume of Text.Storage(v23, v25, v27 & 1);

  v82 = v28;
  v83 = v31;
  v84 = v33 & 1;
  v85 = v35;
  v36 = 1;
  View.hyphenationDisabled(_:)();
  outlined consume of Text.Storage(v28, v31, v33 & 1);

  v37 = type metadata accessor for CertificateView(0);
  v38 = *(v29 + *(v37 + 24));
  if ([v38 isValid] && objc_msgSend(v38, sel_isQWAC))
  {
    v39 = [*(v29 + *(v37 + 24)) title];
    if (v39)
    {
      v40 = v39;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = HIBYTE(v43) & 0xF;
      if ((v43 & 0x2000000000000000) == 0)
      {
        v44 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (v44)
      {
        v45 = static SFLocalization.qwac(host:)(v41, v43);
        v47 = v46;

        v48 = v45;
LABEL_25:
        v50 = CertificateView.coloredMessageText(message:)(v48, v47);
        v52 = v51;
        v54 = v53;

        static Font.title3.getter();
        v55 = Text.font(_:)();
        v57 = v56;
        v59 = v58;
        v61 = v60;

        outlined consume of Text.Storage(v50, v52, v54 & 1);

        v82 = v55;
        v83 = v57;
        v84 = v59 & 1;
        v85 = v61;
        v62 = v78;
        View.hyphenationDisabled(_:)();
        outlined consume of Text.Storage(v55, v57, v59 & 1);

        (*(v77 + 32))(v79, v62, v80);
        v36 = 0;
        goto LABEL_26;
      }
    }

    v48 = static SFLocalization.qwacDefault.getter();
    v47 = v49;
    goto LABEL_25;
  }

LABEL_26:
  v63 = v77;
  v65 = v79;
  v64 = v80;
  (*(v77 + 56))(v79, v36, 1, v80);
  v66 = *(v63 + 16);
  v67 = v78;
  v68 = v81;
  v66(v78, v81, v64);
  v69 = v76;
  outlined init with copy of URL?(v65, v76, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMd, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMR);
  v70 = v75;
  v66(v75, v67, v64);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGSgtMd, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGSgtMR);
  outlined init with copy of URL?(v69, &v70[*(v71 + 48)], &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMd, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v65, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMd, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMR);
  v72 = *(v63 + 8);
  v72(v68, v64);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v69, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMd, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_SgMR);
  return (v72)(v67, v64);
}

uint64_t CertificateView.coloredMessageText(message:)(uint64_t a1, unint64_t a2)
{
  v48 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGSgMd, &_sSny10Foundation16AttributedStringV5IndexVGSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = type metadata accessor for AttributedString();
  v47 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = [*(v2 + *(type metadata accessor for CertificateView(0) + 24)) title];
  if (!v20)
  {
    goto LABEL_8;
  }

  v23 = v20;
  v44 = v12;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

LABEL_8:
    v50 = v48;
    v51 = a2;
    lazy protocol witness table accessor for type String and conformance String(v20, v21, v22);

    return Text.init<A>(_:)();
  }

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v50 = v24;
  v51 = v26;
  v28 = type metadata accessor for Locale();
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  v29 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
  lazy protocol witness table accessor for type String and conformance String(v29, v30, v31);
  AttributedStringProtocol.range<A>(of:options:locale:)();
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  if ((*(v45 + 48))(v9, 1, v46) == 1)
  {
    v32 = &_sSny10Foundation16AttributedStringV5IndexVGSgMd;
    v33 = &_sSny10Foundation16AttributedStringV5IndexVGSgMR;
    v34 = v9;
  }

  else
  {
    v36 = v44;
    outlined init with take of Range<AttributedString.Index>(v9, v44);
    v37 = static Color.blue.getter();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR, MEMORY[0x277D83D30]);
    v38 = AttributedString.subscript.modify();
    v49 = v37;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute(v38, v39, v40);
    AttributedSubstring.subscript.setter();
    v38(&v50, 0);
    v34 = v36;
    v32 = &_sSny10Foundation16AttributedStringV5IndexVGMd;
    v33 = &_sSny10Foundation16AttributedStringV5IndexVGMR;
  }

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v34, v32, v33);
  v41 = v47;
  (*(v47 + 16))(v17, v19, v14);
  v42 = Text.init(_:)();
  (*(v41 + 8))(v19, v14);
  return v42;
}

uint64_t closure #2 in CertificateView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v105 = type metadata accessor for PlainButtonStyle();
  v104 = *(v105 - 1);
  MEMORY[0x28223BE20](v105);
  v101 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CertificateView(0);
  v5 = *(v4 - 8);
  v93 = v4 - 8;
  v94 = v5;
  MEMORY[0x28223BE20](v4 - 8);
  v95 = v6;
  v96 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGARyAA5ColorVSgGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGARyAA5ColorVSgGGGMR);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v89 - v7;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAIyAA4TextVAA16_FlexFrameLayoutVGAA01_I13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingO0VyAA4FontVSgGGAVyAA5ColorVSgGGG_AA05PlaingE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAIyAA4TextVAA16_FlexFrameLayoutVGAA01_I13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingO0VyAA4FontVSgGGAVyAA5ColorVSgGGG_AA05PlaingE0VQo_MR);
  v106 = *(v97 - 8);
  v8 = MEMORY[0x28223BE20](v97);
  v113 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v114 = &v89 - v10;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA4TextV08SecurityB020CertificateChainViewVGMd, &_s7SwiftUI14NavigationLinkVyAA4TextV08SecurityB020CertificateChainViewVGMR);
  v102 = *(v103 - 8);
  v11 = MEMORY[0x28223BE20](v103);
  v112 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v111 = &v89 - v13;
  v92 = type metadata accessor for PinnedScrollableViews();
  MEMORY[0x28223BE20](v92);
  v91 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GridItem.Size();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMd, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMR);
  v20 = v19 - 8;
  v21 = MEMORY[0x28223BE20](v19);
  v110 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v89 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMR);
  v26 = v25 - 8;
  v27 = MEMORY[0x28223BE20](v25);
  v109 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v89 - v29;
  *v30 = static HorizontalAlignment.leading.getter();
  *(v30 + 1) = 0;
  v30[16] = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAA5ImageVAA08_PaddingG0VG_AA0F0VyAIyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMyAKyAIyAMyAoA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAyQGA0_yAA4FontVSgGGAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VGtGGtGG_AYtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAA5ImageVAA08_PaddingG0VG_AA0F0VyAIyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMyAKyAIyAMyAoA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAyQGA0_yAA4FontVSgGGAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VGtGGtGG_AYtGGMR);
  closure #1 in closure #2 in CertificateView.body.getter(a1, &v30[*(v31 + 44)]);
  v32 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGMR) + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v43 = *(v26 + 44);
  v108 = v30;
  v44 = &v30[v43];
  *v44 = v42;
  *(v44 + 1) = v45;
  *(v44 + 2) = v46;
  *(v44 + 3) = v47;
  *(v44 + 4) = v48;
  v44[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GridItemVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI8GridItemVGMR);
  type metadata accessor for GridItem();
  *(swift_allocObject() + 16) = xmmword_23AABC370;
  CertificateView.maxColumnWidth.getter();
  *v18 = v49 + 10.0;
  v50 = *(v16 + 104);
  v50(v18, *MEMORY[0x277CDF0F0], v15);
  static Alignment.top.getter();
  GridItem.init(_:spacing:alignment:)();
  *v18 = xmmword_23AABC380;
  v50(v18, *MEMORY[0x277CDF108], v15);
  static Alignment.top.getter();
  GridItem.init(_:spacing:alignment:)();
  v115 = a1;
  static HorizontalAlignment.center.getter();
  LODWORD(v116[0]) = 0;
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  dispatch thunk of OptionSet.init(rawValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySS_SStGSSAA9TupleViewVyAA15ModifiedContentVyAHyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AA0F0PAAE19hyphenationDisabledyQrSbFQOyAM_Qo_tGGMd, &_s7SwiftUI7ForEachVySaySS_SStGSSAA9TupleViewVyAA15ModifiedContentVyAHyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG_AA0F0PAAE19hyphenationDisabledyQrSbFQOyAM_Qo_tGGMR);
  lazy protocol witness table accessor for type ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>> and conformance <> ForEach<A, B, C>();
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  LOBYTE(v26) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v51 = v24;
  v52 = &v24[*(v20 + 44)];
  *v52 = v26;
  *(v52 + 1) = v53;
  *(v52 + 2) = v54;
  *(v52 + 3) = v55;
  *(v52 + 4) = v56;
  v52[40] = 0;
  v57 = *(a1 + *(v93 + 32));
  v58 = [v57 hostName];
  if (v58)
  {
    v59 = v58;
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0xE000000000000000;
  }

  v63 = CertificateChainView.init(title:certificateManager:)(v60, v62, v57, v116);
  lazy protocol witness table accessor for type CertificateChainView and conformance CertificateChainView(v63, v64, v65);
  v66 = v111;
  NavigationLink.init(destination:label:)();
  v67 = v96;
  outlined init with copy of CertificateRequest(a1, v96, type metadata accessor for CertificateView);
  v68 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v69 = swift_allocObject();
  outlined init with take of CertificateView(v67, v69 + v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAPyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAPyAA5ColorVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v70 = v98;
  Button.init(action:label:)();
  v71 = v101;
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGARyAA5ColorVSgGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA01_E13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingK0VyAA4FontVSgGGARyAA5ColorVSgGGGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v72 = v100;
  v73 = v105;
  View.buttonStyle<A>(_:)();
  (*(v104 + 8))(v71, v73);
  (*(v99 + 8))(v70, v72);
  v74 = v109;
  outlined init with copy of URL?(v108, v109, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMR);
  v75 = v51;
  v90 = v51;
  v76 = v110;
  outlined init with copy of URL?(v75, v110, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMd, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMR);
  v77 = v102;
  v105 = *(v102 + 16);
  v78 = v112;
  v79 = v103;
  (v105)(v112, v66, v103);
  v80 = v106;
  v104 = *(v106 + 16);
  v81 = v97;
  (v104)(v113, v114, v97);
  v82 = v107;
  outlined init with copy of URL?(v74, v107, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMR);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMG_ACyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAGyACyACyASA12_GAVyAA0N9AlignmentOGG_ApAEAQyQrSbFQOyA27__Qo_tGGGAMGAA14NavigationLinkVyAS08SecurityB0016CertificateChainG0VGApAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyA27_AA01_d5ShapeR0VyAA9RectangleVGGA4_GAZGG_AA16PlainButtonStyleVQo_tMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMG_ACyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAGyACyACyASA12_GAVyAA0N9AlignmentOGG_ApAEAQyQrSbFQOyA27__Qo_tGGGAMGAA14NavigationLinkVyAS08SecurityB0016CertificateChainG0VGApAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyA27_AA01_d5ShapeR0VyAA9RectangleVGGA4_GAZGG_AA16PlainButtonStyleVQo_tMR);
  outlined init with copy of URL?(v76, v82 + v83[12], &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMd, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMR);
  (v105)(v82 + v83[16], v78, v79);
  v84 = v82 + v83[20];
  v85 = v113;
  (v104)(v84, v113, v81);
  v86 = *(v80 + 8);
  v86(v114, v81);
  v87 = *(v77 + 8);
  v87(v111, v79);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v90, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMd, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v108, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMR);
  v86(v85, v81);
  v87(v112, v79);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v110, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMd, &_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySaySS_SStGSSAA9TupleViewVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA0J0PAAE19hyphenationDisabledyQrSbFQOyAO_Qo_tGGGAA08_PaddingN0VGMR);
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v109, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyAA5ImageVAA14_PaddingLayoutVG_AEyAGyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAIyAGyACyAkA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAsMGAVyAA4FontVSgGGAA010_FixedSizeK0VGtGGAA010_FlexFrameK0VGtGGtGG_AStGGAMGAMGMR);
}

uint64_t closure #1 in closure #2 in CertificateView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ImageVAA08_PaddingG0VG_AA6VStackVyAIyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AKyAA0F0VyAIyAKyAmA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AKyAKyAKyAwOGA0_yAA4FontVSgGGAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VGtGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ImageVAA08_PaddingG0VG_AA6VStackVyAIyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AKyAA0F0VyAIyAKyAmA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AKyAKyAKyAwOGA0_yAA4FontVSgGGAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VGtGGtGGMR);
  closure #1 in closure #1 in closure #2 in CertificateView.body.getter(a1, &v9[*(v10 + 44)]);
  outlined init with copy of URL?(v9, v7, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMR);
  outlined init with copy of URL?(v7, a2, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMR);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGG_AStMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGG_AStMR) + 48);
  *v11 = xmmword_23AABC390;
  *(v11 + 16) = 0;
  *(v11 + 24) = MEMORY[0x277D84F90];
  outlined copy of Text.Storage(0, 0xE000000000000000, 0);

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMR);
  outlined consume of Text.Storage(0, 0xE000000000000000, 0);

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v7, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAEyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGyACyAEyAGyAiA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AGyAGyAGyAsKGAVyAA4FontVSgGGAA010_FixedSizeJ0VGtGGAA010_FlexFrameJ0VGtGGtGGMR);
}

uint64_t closure #1 in closure #1 in closure #2 in CertificateView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  [*(a1 + *(type metadata accessor for CertificateView(0) + 24)) isRoot];
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v10 = static NSBundle.current;
  v11 = Image.init(_:bundle:)();
  v12 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAIyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AQyAQyAQyAnA08_PaddingG0VGAWyAA4FontVSgGGAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAIyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AQyAQyAQyAnA08_PaddingG0VGAWyAA4FontVSgGGAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VGtGGMR);
  closure #1 in closure #1 in closure #1 in closure #2 in CertificateView.body.getter(a1, &v9[*(v21 + 44)]);
  outlined init with copy of URL?(v9, v7, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMR);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 40) = v20;
  *(a2 + 48) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAA9TupleViewVyAA0J0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAA6HStackVyALyACyAeA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAqGGAVyAA4FontVSgGGAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VGtGGtMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVG_AA6VStackVyAA9TupleViewVyAA0J0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__ACyAA6HStackVyALyACyAeA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAqGGAVyAA4FontVSgGGAA010_FixedSizeG0VGtGGAA010_FlexFrameG0VGtGGtMR);
  outlined init with copy of URL?(v7, a2 + *(v22 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMR);

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v9, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v7, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AMyAMyAMyAjA14_PaddingLayoutVGASyAA4FontVSgGGAA010_FixedSizeS0VGtGGAA010_FlexFrameS0VGtGGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in CertificateView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_MR);
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v74 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v73 = &v64 - v6;
  v67 = type metadata accessor for CertificateView(0);
  v68 = a1;
  v7 = [*(a1 + *(v67 + 24)) title];
  if (v7)
  {
    v10 = v7;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v76 = v11;
  v77 = v13;
  v65 = lazy protocol witness table accessor for type String and conformance String(v7, v8, v9);
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Font.title3.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  outlined consume of Text.Storage(v14, v16, v18 & 1);

  v76 = v19;
  v77 = v21;
  v78 = v23 & 1;
  *(&v79 + 7) = v25;
  View.hyphenationDisabled(_:)();
  outlined consume of Text.Storage(v19, v21, v23 & 1);

  v69 = static VerticalAlignment.top.getter();
  v90 = 1;
  v26 = *(v68 + *(v67 + 24));
  [v26 isValid];
  v68 = Image.init(systemName:)();
  if ([v26 isValid])
  {
    v27 = static Color.green.getter();
  }

  else
  {
    v27 = static Color.red.getter();
  }

  v67 = v27;
  KeyPath = swift_getKeyPath();
  if ([v26 isValid])
  {
    IsNot = static SFLocalization.certificateIsValid.getter();
  }

  else
  {
    IsNot = static SFLocalization.certificateIsNotValid.getter();
  }

  v76 = IsNot;
  v77 = v29;
  v30 = Text.init<A>(_:)();
  v32 = v31;
  v34 = v33;
  static Color.gray.getter();
  v35 = Text.foregroundColor(_:)();
  v37 = v36;
  v39 = v38;
  v65 = v40;

  outlined consume of Text.Storage(v30, v32, v34 & 1);

  LOBYTE(v32) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v112 = v39 & 1;
  v109 = 0;
  v49 = static Font.body.getter();
  v50 = swift_getKeyPath();
  *v75 = v35;
  *&v75[8] = v37;
  v75[16] = v39 & 1;
  *&v75[17] = *v111;
  *&v75[20] = *&v111[3];
  *&v75[24] = v65;
  v75[32] = v32;
  *&v75[33] = *v110;
  *&v75[36] = *&v110[3];
  *&v75[40] = v42;
  *&v75[48] = v44;
  *&v75[56] = v46;
  *&v75[64] = v48;
  v75[72] = 0;
  *&v75[73] = v92;
  *&v75[76] = *(&v92 + 3);
  *&v75[80] = v50;
  *&v75[88] = v49;
  *&v75[96] = 256;
  LOWORD(v108) = 256;
  v102 = *v75;
  v103 = *&v75[16];
  v104 = *&v75[32];
  v105 = *&v75[48];
  v106 = *&v75[64];
  v107 = *&v75[80];
  v76 = v35;
  v77 = v37;
  v78 = v39 & 1;
  *(&v79 + 3) = *&v111[3];
  LODWORD(v79) = *v111;
  *(&v79 + 7) = v65;
  HIBYTE(v79) = v32;
  *(v80 + 3) = *&v110[3];
  LODWORD(v80[0]) = *v110;
  *(v80 + 7) = v42;
  *(v80 + 15) = v44;
  *(&v80[1] + 7) = v46;
  *(&v80[1] + 15) = v48;
  BYTE7(v80[2]) = 0;
  *(&v80[2] + 11) = *(&v92 + 3);
  DWORD2(v80[2]) = v92;
  *(&v80[2] + 15) = v50;
  *(&v80[3] + 7) = v49;
  *(&v80[3] + 15) = 256;
  v51 = v68;

  v52 = KeyPath;

  v53 = v67;

  outlined init with copy of URL?(v75, v94, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA010_FixedSizeG0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA010_FixedSizeG0VGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(&v76, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA010_FixedSizeG0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA010_FixedSizeG0VGMR);

  *(&v93[3] + 8) = v105;
  *(&v93[4] + 8) = v106;
  *(&v93[5] + 8) = v107;
  *(v93 + 8) = v102;
  *(&v93[1] + 8) = v103;
  *(&v93[2] + 8) = v104;
  v98 = v105;
  v99 = v106;
  v100 = v107;
  v95 = v102;
  v96 = v103;
  *&v92 = v51;
  *(&v92 + 1) = v52;
  *&v93[0] = v53;
  WORD4(v93[6]) = v108;
  v94[0] = v51;
  v94[1] = v52;
  v94[2] = v53;
  v101 = v108;
  v97 = v104;
  outlined init with copy of URL?(&v92, &v76, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAEyAEyAA4TextVAA14_PaddingLayoutVGAIyAA4FontVSgGGAA010_FixedSizeO0VGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAEyAEyAA4TextVAA14_PaddingLayoutVGAIyAA4FontVSgGGAA010_FixedSizeO0VGtGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v94, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAEyAEyAA4TextVAA14_PaddingLayoutVGAIyAA4FontVSgGGAA010_FixedSizeO0VGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AEyAEyAEyAA4TextVAA14_PaddingLayoutVGAIyAA4FontVSgGGAA010_FixedSizeO0VGtGMR);
  *&v89[71] = v93[3];
  *&v89[87] = v93[4];
  *&v89[103] = v93[5];
  *&v89[113] = *(&v93[5] + 10);
  *&v89[7] = v92;
  *&v89[23] = v93[0];
  *&v89[39] = v93[1];
  *&v89[55] = v93[2];
  LODWORD(v68) = v90;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v91[70] = v106;
  *&v91[86] = v107;
  *&v91[102] = v108;
  *&v91[6] = v102;
  *&v91[22] = v103;
  *&v91[38] = v104;
  *&v91[54] = v105;
  v55 = v71;
  v54 = v72;
  v56 = *(v71 + 16);
  v58 = v73;
  v57 = v74;
  v56(v74, v73, v72);
  v59 = v70;
  v56(v70, v57, v54);
  v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AIyAIyAIyAfA14_PaddingLayoutVGAQyAA4FontVSgGGAA010_FixedSizeR0VGtGGAA010_FlexFrameR0VGtMd, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AIyAIyAIyAfA14_PaddingLayoutVGAQyAA4FontVSgGGAA010_FixedSizeR0VGtGGAA010_FlexFrameR0VGtMR) + 48);
  *&v75[97] = *&v89[80];
  *&v75[113] = *&v89[96];
  *&v75[129] = *&v89[112];
  *&v75[33] = *&v89[16];
  *&v75[49] = *&v89[32];
  *&v75[65] = *&v89[48];
  *&v75[81] = *&v89[64];
  v61 = v69;
  *v75 = v69;
  *&v75[8] = 0;
  LOBYTE(v37) = v68;
  v75[16] = v68;
  v75[145] = v89[128];
  *&v75[17] = *v89;
  *&v75[210] = *&v91[64];
  *&v75[226] = *&v91[80];
  *&v75[242] = *&v91[96];
  *&v75[256] = *&v91[110];
  *&v75[146] = *v91;
  *&v75[162] = *&v91[16];
  *&v75[178] = *&v91[32];
  *&v75[194] = *&v91[48];
  memcpy(&v59[v60], v75, 0x108uLL);
  outlined init with copy of URL?(v75, &v76, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAA4TextVAA14_PaddingLayoutVGAKyAA4FontVSgGGAA010_FixedSizeP0VGtGGAA010_FlexFrameP0VGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAA4TextVAA14_PaddingLayoutVGAKyAA4FontVSgGGAA010_FixedSizeP0VGtGGAA010_FlexFrameP0VGMR);
  v62 = *(v55 + 8);
  v62(v58, v54);
  v80[4] = *&v89[80];
  v80[5] = *&v89[96];
  v80[6] = *&v89[112];
  v80[0] = *&v89[16];
  v80[1] = *&v89[32];
  v80[2] = *&v89[48];
  v80[3] = *&v89[64];
  v76 = v61;
  v77 = 0;
  v78 = v37;
  v81 = v89[128];
  v79 = *v89;
  v86 = *&v91[64];
  v87 = *&v91[80];
  *v88 = *&v91[96];
  *&v88[14] = *&v91[110];
  v82 = *v91;
  v83 = *&v91[16];
  v84 = *&v91[32];
  v85 = *&v91[48];
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(&v76, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAA4TextVAA14_PaddingLayoutVGAKyAA4FontVSgGGAA010_FixedSizeP0VGtGGAA010_FlexFrameP0VGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_ACyACyACyAA4TextVAA14_PaddingLayoutVGAKyAA4FontVSgGGAA010_FixedSizeP0VGtGGAA010_FlexFrameP0VGMR);
  return (v62)(v74, v54);
}

uint64_t closure #1 in closure #2 in closure #2 in CertificateView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  *&v56 = a3;
  *(&v56 + 1) = a4;
  v62 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVG_Qo_Md, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVG_Qo_MR);
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v59 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v63 = v55 - v11;
  *&v77 = a1;
  *(&v77 + 1) = a2;
  v55[1] = lazy protocol witness table accessor for type String and conformance String(v10, v12, v13);

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Font.callout.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;
  KeyPath = v24;

  outlined consume of Text.Storage(v14, v16, v18 & 1);

  static Color.gray.getter();
  v57 = Text.foregroundColor(_:)();
  v58 = v25;
  v66 = v26;
  v28 = v27;

  outlined consume of Text.Storage(v19, v21, v23 & 1);

  static Alignment.topTrailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v64 = v28 & 1;
  v97 = v28 & 1;
  KeyPath = swift_getKeyPath();
  v77 = v56;

  v29 = Text.init<A>(_:)();
  v31 = v30;
  v33 = v32;
  static Font.callout.getter();
  v34 = Text.font(_:)();
  *(&v56 + 1) = v35;
  LOBYTE(v16) = v36;
  v38 = v37;

  outlined consume of Text.Storage(v29, v31, v33 & 1);

  static Alignment.topLeading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v88 = v16 & 1;
  *&v77 = v34;
  *(&v77 + 1) = *(&v56 + 1);
  LOBYTE(v78) = v16 & 1;
  *(&v78 + 1) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  v39 = v63;
  View.hyphenationDisabled(_:)();
  v67[6] = v83;
  v67[7] = v84;
  v67[8] = v85;
  v67[2] = v79;
  v67[3] = v80;
  v67[4] = v81;
  v67[5] = v82;
  v67[0] = v77;
  v67[1] = v78;
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v67, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
  v41 = v59;
  v40 = v60;
  v42 = *(v60 + 16);
  v43 = v61;
  v42(v59, v39, v61);
  v44 = v57;
  *&v68 = v57;
  *(&v68 + 1) = v66;
  LOBYTE(v69) = v64;
  *(&v69 + 1) = *v96;
  DWORD1(v69) = *&v96[3];
  v74 = v93;
  v75 = v94;
  v76[0] = v95;
  v70 = v89;
  v71 = v90;
  v72 = v91;
  v73 = v92;
  v45 = v58;
  *(&v69 + 1) = v58;
  *&v76[1] = KeyPath;
  BYTE8(v76[1]) = 2;
  v46 = v94;
  v47 = v62;
  v62[6] = v93;
  v47[7] = v46;
  v47[8] = v76[0];
  v48 = v71;
  v47[2] = v70;
  v47[3] = v48;
  v49 = v73;
  v47[4] = v72;
  v47[5] = v49;
  v50 = v69;
  *v47 = v68;
  v47[1] = v50;
  *(v47 + 137) = *(v76 + 9);
  v51 = v47;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_AA4ViewPAAE19hyphenationDisabledyQrSbFQOyAH_Qo_tMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_AA4ViewPAAE19hyphenationDisabledyQrSbFQOyAH_Qo_tMR);
  v42(&v51[*(v52 + 48)], v41, v43);
  outlined init with copy of URL?(&v68, &v77, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
  v53 = *(v40 + 8);
  v53(v63, v43);
  v53(v41, v43);
  *&v77 = v44;
  *(&v77 + 1) = v66;
  LOBYTE(v78) = v64;
  *(&v78 + 1) = *v96;
  DWORD1(v78) = *&v96[3];
  v83 = v93;
  v84 = v94;
  v85 = v95;
  v79 = v89;
  v80 = v90;
  v81 = v91;
  v82 = v92;
  *(&v78 + 1) = v45;
  v86 = KeyPath;
  v87 = 2;
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(&v77, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
}

uint64_t closure #3 in closure #2 in CertificateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v17 = static SFLocalization.details.getter();
  lazy protocol witness table accessor for type String and conformance String(v17, v2, v3);
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.body.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  outlined consume of Text.Storage(v4, v6, v8 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t closure #4 in closure #2 in CertificateView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  v63 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v60 - v5;
  v70 = type metadata accessor for URL();
  v7 = *(v70 - 8);
  v8 = MEMORY[0x28223BE20](v70);
  v61 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v60 - v10;
  v69 = type metadata accessor for Logger();
  v12 = *(v69 - 8);
  v13 = MEMORY[0x28223BE20](v69);
  v60 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v60 - v19;
  static SFLog.certificateView.getter(v18);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_23AA9F000, v21, v22, "'Learn More' button tapped", v23, 2u);
    MEMORY[0x23EE941B0](v23, -1, -1);
  }

  v67 = *(v12 + 8);
  v68 = v12 + 8;
  v67(v20, v69);
  v24 = [objc_opt_self() mainBundle];
  v25 = [v24 bundleIdentifier];

  if (!v25)
  {
    v26 = 0;
    v28 = 0xE000000000000000;
    goto LABEL_8;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (v26 != 0xD00000000000001BLL)
  {
LABEL_8:
    v29 = v70;
    goto LABEL_9;
  }

  v29 = v70;
  if (0x800000023AABD9B0 == v28)
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_9:
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v26 == 0xD000000000000010 && 0x800000023AABD9D0 == v28)
  {
    goto LABEL_12;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v54 & 1) == 0)
  {
    static SFLog.certificateView.getter(v55);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_23AA9F000, v56, v57, "dismissing certificate view", v58, 2u);
      MEMORY[0x23EE941B0](v58, -1, -1);
    }

    v67(v17, v69);
    v59 = *(a1 + *(type metadata accessor for CertificateView(0) + 20));
    if (v59)
    {
      v59();
    }
  }

LABEL_13:
  v30 = type metadata accessor for CertificateRequest(0);
  outlined init with copy of URL?(a1 + *(v30 + 32), v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v31 = *(v7 + 48);
  if (v31(v6, 1, v29) == 1)
  {
    v32 = [objc_opt_self() currentDevice];
    v33 = [v32 userInterfaceIdiom];

    if (v33 == 1)
    {
      static SecurityUI.Links.learnMoreURL_iPad.getter();
    }

    else
    {
      static SecurityUI.Links.learnMoreURL_iPhone.getter();
    }

    v34 = v31(v6, 1, v29);
    if (v34 != 1)
    {
      v34 = outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    v34 = (*(v7 + 32))(v11, v6, v29);
  }

  v64 = a1;
  v35 = v60;
  static SFLog.certificateView.getter(v34);
  v36 = *(v7 + 16);
  v37 = v61;
  v62 = v11;
  v36(v61, v11, v29);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v71 = v41;
    *v40 = 136315138;
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v37;
    v44 = v35;
    v46 = v45;
    v47 = *(v7 + 8);
    v47(v43, v70);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v46, &v71);

    *(v40 + 4) = v48;
    _os_log_impl(&dword_23AA9F000, v38, v39, "opening 'Learn More' URL: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    v49 = v41;
    v29 = v70;
    MEMORY[0x23EE941B0](v49, -1, -1);
    MEMORY[0x23EE941B0](v40, -1, -1);

    v50 = v44;
  }

  else
  {

    v47 = *(v7 + 8);
    v47(v37, v29);
    v50 = v35;
  }

  v67(v50, v69);
  type metadata accessor for CertificateView(0);
  v51 = v63;
  specialized Environment.wrappedValue.getter(v63);
  v52 = v62;
  OpenURLAction.callAsFunction(_:)();
  (*(v65 + 8))(v51, v66);
  return (v47)(v52, v29);
}

__n128 closure #5 in closure #2 in CertificateView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  *&v23 = static SFLocalization.learnMore.getter();
  *(&v23 + 1) = v2;
  lazy protocol witness table accessor for type String and conformance String(v23, v2, v3);
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v21 = static Alignment.leading.getter();
  v22 = v11;
  LOBYTE(v20) = 1;
  LOBYTE(v19) = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v12 = v8 & 1;
  v13 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v15 = [objc_opt_self() linkColor];
  v16 = MEMORY[0x23EE936E0](v15);
  v17 = swift_getKeyPath();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v12;
  *(a1 + 24) = v10;
  *(a1 + 96) = v27;
  *(a1 + 112) = v28;
  *(a1 + 128) = v29;
  *(a1 + 32) = v23;
  *(a1 + 48) = v24;
  result = v26;
  *(a1 + 64) = v25;
  *(a1 + 80) = v26;
  *(a1 + 144) = 0;
  *(a1 + 152) = KeyPath;
  *(a1 + 160) = v13;
  *(a1 + 168) = v17;
  *(a1 + 176) = v16;
  return result;
}

uint64_t CertificateView.makeAttributedString(from:forURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV9LineStyleVSgMd, &_s7SwiftUI4TextV9LineStyleVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGSgMd, &_sSny10Foundation16AttributedStringV5IndexVGSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  v19 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v19 - 8);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v42[0] = a3;
  v42[1] = v40;
  v20 = type metadata accessor for Locale();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  type metadata accessor for AttributedString();
  v21 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
  lazy protocol witness table accessor for type String and conformance String(v21, v22, v23);
  AttributedStringProtocol.range<A>(of:options:locale:)();
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v24 = &_sSny10Foundation16AttributedStringV5IndexVGSgMd;
    v25 = &_sSny10Foundation16AttributedStringV5IndexVGSgMR;
    v26 = v14;
  }

  else
  {
    outlined init with take of Range<AttributedString.Index>(v14, v18);
    v27 = static Color.blue.getter();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR, MEMORY[0x277D83D30]);
    v28 = AttributedString.subscript.modify();
    v41 = v27;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute(v28, v29, v30);
    AttributedSubstring.subscript.setter();
    v28(v42, 0);
    v31 = v39;
    static Text.LineStyle.single.getter();
    v32 = type metadata accessor for Text.LineStyle();
    (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    v33 = AttributedString.subscript.modify();
    v34 = outlined init with copy of URL?(v31, v38, &_s7SwiftUI4TextV9LineStyleVSgMd, &_s7SwiftUI4TextV9LineStyleVSgMR);
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute(v34, v35, v36);
    AttributedSubstring.subscript.setter();
    outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v31, &_s7SwiftUI4TextV9LineStyleVSgMd, &_s7SwiftUI4TextV9LineStyleVSgMR);
    v33(v42, 0);
    v26 = v18;
    v24 = &_sSny10Foundation16AttributedStringV5IndexVGMd;
    v25 = &_sSny10Foundation16AttributedStringV5IndexVGMR;
  }

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v26, v24, v25);
}

id one-time initialization function for current()
{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.current = result;
  return result;
}

{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.current = result;
  return result;
}

{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.current = result;
  return result;
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  outlined init with copy of URL?(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for OpenURLAction();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSAttributedStringKey@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x23EE938A0](v3);

  *a2 = v4;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSAttributedStringKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x23EE93920](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSAttributedStringKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSAttributedStringKey(void *a1, uint64_t *a2)
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

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSAttributedStringKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x23EE938A0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSAttributedStringKey@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  v3 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
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

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void type metadata accessor for NSAttributedStringKey()
{
  if (!lazy cache variable for type metadata for NSAttributedStringKey)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSAttributedStringKey);
    }
  }
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

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
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

uint64_t outlined init with take of Range<AttributedString.Index>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute);
  }

  return result;
}

uint64_t sub_23AAAB398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CertificateRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMd, &_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMR);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23AAAB4DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CertificateRequest(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMd, &_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void type metadata completion function for CertificateView(uint64_t a1)
{
  type metadata accessor for CertificateRequest(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (())?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIFont(319, &lazy cache variable for type metadata for SFCertificateManager, off_278B69C10);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Environment<OpenURLAction>(319);
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

uint64_t type metadata accessor for UIFont(uint64_t a1, unint64_t *a2, void *a3)
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

void type metadata accessor for Environment<OpenURLAction>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<OpenURLAction>)
  {
    type metadata accessor for OpenURLAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<OpenURLAction>);
    }
  }
}

uint64_t type metadata accessor for NSBundle.Sentinel()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

uint64_t sub_23AAAB914()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #2 in closure #2 in CertificateView.body.getter()
{
  v6 = CertificateView.labelsAndValues.getter();
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySS_SStGMd, &_sSaySS_SStGMR);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AA0D0PAAE19hyphenationDisabledyQrSbFQOyAJ_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AA0D0PAAE19hyphenationDisabledyQrSbFQOyAJ_Qo_tGMR);
  v3 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [(String, String)] and conformance [A], &_sSaySS_SStGMd, &_sSaySS_SStGMR, MEMORY[0x277D83980]);
  v4 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AA0D0PAAE19hyphenationDisabledyQrSbFQOyAJ_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGG_AA0D0PAAE19hyphenationDisabledyQrSbFQOyAJ_Qo_tGMR, MEMORY[0x277CE14C0]);
  return ForEach<>.init(_:id:content:)(&v6, KeyPath, specialized thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed String) -> (@out TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>), 0, v1, v2, v3, MEMORY[0x277D837E0], v4);
}

unint64_t lazy protocol witness table accessor for type CertificateChainView and conformance CertificateChainView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CertificateChainView and conformance CertificateChainView;
  if (!lazy protocol witness table cache variable for type CertificateChainView and conformance CertificateChainView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateChainView and conformance CertificateChainView);
  }

  return result;
}

uint64_t outlined init with copy of CertificateRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23AAABC38()
{
  v1 = type metadata accessor for CertificateView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = *(type metadata accessor for CertificateRequest(0) + 32);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v5 + v1[5]))
  {
  }

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of CertificateView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CertificateView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #4 in closure #2 in CertificateView.body.getter()
{
  v1 = *(type metadata accessor for CertificateView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #4 in closure #2 in CertificateView.body.getter(v2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAPyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAPyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA01_D13ShapeModifierVyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMR, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
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

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t key path getter for EnvironmentValues.foregroundColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t key path getter for EnvironmentValues.multilineTextAlignment : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
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

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t key path getter for CertificateHostingView.dismiss : CertificateHostingView@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CertificateHostingView(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
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

  return _sxRi_zRi0_zlyytIsegr_SgWOy_0(v4, v5);
}

uint64_t key path setter for CertificateHostingView.dismiss : CertificateHostingView(uint64_t *a1, uint64_t a2)
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

  v7 = (a2 + *(type metadata accessor for CertificateHostingView(0) + 20));
  v8 = *v7;
  v9 = v7[1];
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t CertificateHostingView.dismiss.getter()
{
  v1 = (v0 + *(type metadata accessor for CertificateHostingView(0) + 20));
  v2 = *v1;
  _sxRi_zRi0_zlyytIsegr_SgWOy_0(*v1, v1[1]);
  return v2;
}

uint64_t type metadata accessor for CertificateHostingView(uint64_t a1)
{
  result = type metadata singleton initialization cache for CertificateHostingView;
  if (!type metadata singleton initialization cache for CertificateHostingView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CertificateHostingView.dismiss.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CertificateHostingView(0) + 20));
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CertificateHostingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for StackNavigationViewStyle();
  v3 = *(v2 - 8);
  v24 = v2;
  v25 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v27 = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dE16TitleDisplayModeyQrAA010NavigationE4ItemV0hiJ0OFQOyAcAE0dH0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA_yA1_yAA4TextVGA6_GGGQo_Md, &_s7SwiftUI4ViewPAAE18navigationBarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dE16TitleDisplayModeyQrAA010NavigationE4ItemV0hiJ0OFQOyAcAE0dH0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA_yA1_yAA4TextVGA6_GGGQo_MR);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_Md, &_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_MR);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMR);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_MR);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR);
  v14 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, CertificateView> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR, MEMORY[0x277CDE5A0]);
  v17 = lazy protocol witness table accessor for type String and conformance String(v14, v15, v16);
  v28 = v13;
  v29 = MEMORY[0x277D837D0];
  v30 = v14;
  v31 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v12;
  v29 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>();
  v28 = v10;
  v29 = v11;
  v30 = v19;
  v31 = v20;
  swift_getOpaqueTypeConformance2();
  NavigationView.init(content:)();
  StackNavigationViewStyle.init()();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.navigationBarItems<A>(trailing:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR, MEMORY[0x277CDD978]);
  lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type StackNavigationViewStyle and conformance StackNavigationViewStyle, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
  v21 = v24;
  View.navigationViewStyle<A>(_:)();
  (*(v25 + 8))(v5, v21);
  return (*(v7 + 8))(v9, v6);
}

uint64_t closure #1 in CertificateHostingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMR);
  MEMORY[0x28223BE20](v40);
  v39 = &v32 - v3;
  v4 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_MR);
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_Md, &_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_MR);
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v42 = a1;
  type metadata accessor for CertificateView(0);
  lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type CertificateView and conformance CertificateView, type metadata accessor for CertificateView, &protocol conformance descriptor for CertificateView);
  List<>.init(content:)();
  v17 = *(a1 + 24);
  v32 = a1;
  if (v17)
  {
    v18 = *(a1 + 16);
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  v43 = v18;
  v44 = v19;
  v20 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, CertificateView> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR, MEMORY[0x277CDE5A0]);
  v23 = lazy protocol witness table accessor for type String and conformance String(v20, v21, v22);

  v24 = MEMORY[0x277D837D0];
  View.navigationTitle<A>(_:)();

  (*(v8 + 8))(v10, v7);
  v26 = v37;
  v25 = v38;
  (*(v37 + 104))(v6, *MEMORY[0x277CDDDC0], v38);
  v43 = v7;
  v44 = v24;
  v45 = v20;
  v46 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v34;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v26 + 8))(v6, v25);
  (*(v33 + 8))(v13, v28);
  v29 = v39;
  closure #2 in closure #1 in CertificateHostingView.body.getter(v32, v39);
  v43 = v28;
  v44 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>();
  v30 = v36;
  View.navigationBarItems<A>(trailing:)();
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v29, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMR);
  return (*(v35 + 8))(v16, v30);
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA07DefaultF5LabelVGAA31AccessibilityAttachmentModifierVGAEyAGyAA4TextVGALGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ButtonVyAA07DefaultF5LabelVGAA31AccessibilityAttachmentModifierVGAEyAGyAA4TextVGALGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMR);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR, MEMORY[0x277CDF028]);
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in CertificateHostingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CertificateHostingView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for CertificateRequest(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s10SecurityUI18CertificateRequestVWOcTm_0(a1, v9, type metadata accessor for CertificateRequest);
  _s10SecurityUI18CertificateRequestVWOcTm_0(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CertificateHostingView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  outlined init with take of CertificateRequest(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for CertificateHostingView);
  return CertificateView.init(request:dismiss:)(v9, partial apply for closure #1 in closure #1 in closure #1 in CertificateHostingView.body.getter, v11, a2);
}

uint64_t closure #2 in closure #1 in CertificateHostingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v28 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v36);
  v33 = &v28 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANG_GMd, "P-");
  MEMORY[0x28223BE20](v35);
  v7 = &v28 - v6;
  v8 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR);
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v34);
  v15 = &v28 - v14;
  v16 = type metadata accessor for CertificateHostingView(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  _s10SecurityUI18CertificateRequestVWOcTm_0(a1, &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CertificateHostingView);
  v19 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v20 = swift_allocObject();
  outlined init with take of CertificateRequest(&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for CertificateHostingView);
  if (static Solarium.isEnabled.getter())
  {
    static ButtonRole.confirm.getter();

    MEMORY[0x23EE93740](v10, partial apply for closure #1 in closure #2 in closure #1 in CertificateHostingView.body.getter, v20);
    static SecurityUI.Screens.doneButtonIdentifier.getter();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR, MEMORY[0x277CDF028]);
    View.accessibilityIdentifier(_:)();

    (*(v29 + 8))(v13, v11);
    v21 = &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMd;
    v22 = &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMR;
    outlined init with copy of URL?(v15, v7, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v23 = v15;
  }

  else
  {

    v24 = v30;
    Button.init(action:label:)();
    static SecurityUI.Screens.doneButtonIdentifier.getter();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
    v25 = v33;
    v26 = v32;
    View.accessibilityIdentifier(_:)();

    (*(v31 + 8))(v24, v26);
    v21 = &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd;
    v22 = &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR;
    outlined init with copy of URL?(v25, v7, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v23 = v25;
  }

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v23, v21, v22);
}

uint64_t closure #1 in closure #2 in closure #1 in CertificateHostingView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFLog.certificateHostingView.getter(v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23AA9F000, v7, v8, "'Done' button tapped", v9, 2u);
    MEMORY[0x23EE941B0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  result = type metadata accessor for CertificateHostingView(0);
  v11 = (a1 + *(result + 20));
  if (*v11)
  {
    return (*v11)();
  }

  return result;
}

uint64_t closure #2 in closure #2 in closure #1 in CertificateHostingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v8 = static SFLocalization.done.getter();
  lazy protocol witness table accessor for type String and conformance String(v8, v2, v3);
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t CertificateHostingView.init(request:dismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of CertificateRequest(a1, a4, type metadata accessor for CertificateRequest);
  result = type metadata accessor for CertificateHostingView(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance CertificateHostingView@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for StackNavigationViewStyle();
  v3 = *(v2 - 8);
  v24 = v2;
  v25 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v27 = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dE16TitleDisplayModeyQrAA010NavigationE4ItemV0hiJ0OFQOyAcAE0dH0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA_yA1_yAA4TextVGA6_GGGQo_Md, &_s7SwiftUI4ViewPAAE18navigationBarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dE16TitleDisplayModeyQrAA010NavigationE4ItemV0hiJ0OFQOyAcAE0dH0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA_yA1_yAA4TextVGA6_GGGQo_MR);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_Md, &_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_MR);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMR);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_MR);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR);
  v14 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, CertificateView> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR, MEMORY[0x277CDE5A0]);
  v17 = lazy protocol witness table accessor for type String and conformance String(v14, v15, v16);
  v28 = v13;
  v29 = MEMORY[0x277D837D0];
  v30 = v14;
  v31 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v12;
  v29 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>();
  v28 = v10;
  v29 = v11;
  v30 = v19;
  v31 = v20;
  swift_getOpaqueTypeConformance2();
  NavigationView.init(content:)();
  StackNavigationViewStyle.init()();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.navigationBarItems<A>(trailing:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR, MEMORY[0x277CDD978]);
  lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type StackNavigationViewStyle and conformance StackNavigationViewStyle, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
  v21 = v24;
  View.navigationViewStyle<A>(_:)();
  (*(v25 + 8))(v5, v21);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_23AAADF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CertificateRequest(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23AAAE038(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CertificateRequest(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void type metadata completion function for CertificateHostingView(uint64_t a1)
{
  type metadata accessor for CertificateRequest(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (())?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23AAAE174()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR);
  type metadata accessor for StackNavigationViewStyle();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.navigationBarItems<A>(trailing:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR, MEMORY[0x277CDD978]);
  lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type StackNavigationViewStyle and conformance StackNavigationViewStyle, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23AAAE254()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10SecurityUI18CertificateRequestVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of CertificateRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in CertificateHostingView.body.getter()
{
  v1 = *(type metadata accessor for CertificateHostingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #2 in closure #1 in CertificateHostingView.body.getter(v2);
}

uint64_t objectdestroy_12Tm()
{
  v1 = type metadata accessor for CertificateHostingView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(type metadata accessor for CertificateRequest(0) + 32);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v5 + *(v1 + 20)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in CertificateHostingView.body.getter()
{
  v1 = type metadata accessor for CertificateHostingView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 28) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

void *CertificateRequest.qwacTrust.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t CertificateRequest.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CertificateRequest.message.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CertificateRequest.help.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CertificateRequest(0) + 32);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t type metadata accessor for CertificateRequest(uint64_t a1)
{
  result = type metadata singleton initialization cache for CertificateRequest;
  if (!type metadata singleton initialization cache for CertificateRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CertificateRequest.init(trust:qwacTrust:title:message:help:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v9 = a8 + *(type metadata accessor for CertificateRequest(0) + 32);

  return outlined init with take of URL?(a7, v9);
}

uint64_t sub_23AAAE7F4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_23AAAE8C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for CertificateRequest(uint64_t a1)
{
  type metadata accessor for SecTrustRef();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SecTrustRef?(319, &lazy cache variable for type metadata for SecTrustRef?, type metadata accessor for SecTrustRef);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SecTrustRef(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SecTrustRef?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for SecTrustRef(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for SecTrustRef?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t static SFLocalization.expires(date:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23AABCA00;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String(v8, v9, v10);
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  specialized static SFLocalization.localizedString(key:value:tableSuffix:)(a3, a4);
  v11 = String.init(format:_:)();

  return v11;
}

uint64_t static SFLocalization.connectionIsSecure(host:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23AABCA00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String(v4, v5, v6);
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  specialized static SFLocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x800000023AABDBB0);
  v7 = String.init(format:_:)();

  return v7;
}

uint64_t static SFLocalization.connectionNotSecure(host:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23AABCA00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String(v4, v5, v6);
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  specialized static SFLocalization.localizedString(key:value:tableSuffix:)(0xD00000000000001DLL, 0x800000023AABDC00);
  v7 = String.init(format:_:)();

  return v7;
}

uint64_t specialized static SFLocalization.localizedString(key:value:tableSuffix:)(uint64_t a1, void *a2)
{
  MEMORY[0x23EE93900](0, 0xE000000000000000);

  v4 = 0x617A696C61636F4CLL;
  if (one-time initialization token for current != -1)
  {
    swift_once();
    v4 = 0x617A696C61636F4CLL;
  }

  v10._object = 0xE000000000000000;
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v6 = 0xEB00000000656C62;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, *&v4, static NSBundle.current, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t CertificateViewIdentifier.identifier.getter(char a1)
{
  if (!a1)
  {
    return MEMORY[0x2821ACC80]();
  }

  if (a1 == 1)
  {
    return MEMORY[0x2821ACC70]();
  }

  return MEMORY[0x2821ACC78]();
}

Swift::Int CertificateViewIdentifier.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EE93B10](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CertificateViewIdentifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EE93B10](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CertificateViewIdentifier(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EE93B10](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CertificateViewIdentifier and conformance CertificateViewIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CertificateViewIdentifier and conformance CertificateViewIdentifier;
  if (!lazy protocol witness table cache variable for type CertificateViewIdentifier and conformance CertificateViewIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateViewIdentifier and conformance CertificateViewIdentifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CertificateViewIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CertificateViewIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

void CertificateModifier.request.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);

  JUMPOUT(0x23EE93750);
}

uint64_t key path setter for CertificateModifier.request : CertificateModifier(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  outlined init with copy of URL?(a1, &v9 - v6, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  outlined init with copy of URL?(v7, v5, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  Binding.wrappedValue.setter();
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v7, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
}

uint64_t CertificateModifier.request.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of URL?(a1, &v5 - v3, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  Binding.wrappedValue.setter();
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(a1, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
}

void (*CertificateModifier.request.modify(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR) - 8) + 64);
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  a1[2] = v6;
  if (v4)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v6 - 1) + 64));
  }

  a1[3] = v7;
  outlined init with copy of URL?(v1, v7, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  MEMORY[0x23EE93750](v6);
  return CertificateModifier.request.modify;
}

void CertificateModifier.request.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    outlined init with copy of URL?(*(a1 + 8), v3, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
    Binding.wrappedValue.setter();
    outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v2, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
    v5 = v4;
    v6 = &_s10SecurityUI18CertificateRequestVSgMd;
    v7 = &_s10SecurityUI18CertificateRequestVSgMR;
  }

  else
  {
    Binding.wrappedValue.setter();
    v6 = &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd;
    v7 = &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR;
    v5 = v2;
  }

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v5, v6, v7);
  free(v2);
  free(v4);

  free(v3);
}

uint64_t CertificateModifier.$request.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);

  return Binding.projectedValue.getter();
}

uint64_t CertificateModifier.body(content:)(uint64_t a1)
{
  v2 = v1;
  v15 = a1;
  v3 = type metadata accessor for CertificateModifier(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  outlined init with copy of CertificateModifier(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v6 = static MainActor.shared.getter();
  v7 = *(v4 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v6;
  *(v9 + 24) = v10;
  outlined init with take of CertificateModifier(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  outlined init with copy of CertificateModifier(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  outlined init with take of CertificateModifier(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v8);
  Binding.init(get:set:)();
  outlined init with copy of CertificateModifier(v2, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  outlined init with take of CertificateModifier(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + ((v7 + 16) & ~v7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy08SecurityB0011CertificateD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy08SecurityB0011CertificateD0VGMR);
  type metadata accessor for CertificatePresentationView(0);
  lazy protocol witness table accessor for type _ViewModifier_Content<CertificateModifier> and conformance _ViewModifier_Content<A>();
  lazy protocol witness table accessor for type CertificatePresentationView and conformance CertificatePresentationView();
  View.sheet<A>(isPresented:onDismiss:content:)();
}

uint64_t type metadata accessor for CertificateModifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for CertificateModifier;
  if (!type metadata singleton initialization cache for CertificateModifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in CertificateModifier.body(content:)@<X0>(BOOL *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  Binding.projectedValue.getter();
  MEMORY[0x23EE93750](v5);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v7, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v8 = type metadata accessor for CertificateRequest(0);
  v9 = (*(*(v8 - 8) + 48))(v4, 1, v8) != 1;
  result = outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v4, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  *a1 = v9;
  return result;
}

uint64_t outlined init with copy of CertificateModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CertificateModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CertificateModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CertificateModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in CertificateModifier.body(content:)@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for CertificateModifier(0);

  return closure #1 in CertificateModifier.body(content:)(a1);
}

uint64_t closure #2 in CertificateModifier.body(content:)(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  if ((*a1 & 1) == 0)
  {
    Binding.projectedValue.getter();
    v9 = type metadata accessor for CertificateRequest(0);
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    Binding.wrappedValue.setter();
    return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v8, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for CertificateModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = (v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR) + 32));
  v6 = type metadata accessor for CertificateRequest(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = *(v6 + 32);
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #2 in CertificateModifier.body(content:)(_BYTE *a1)
{
  type metadata accessor for CertificateModifier(0);

  return closure #2 in CertificateModifier.body(content:)(a1);
}

uint64_t closure #3 in CertificateModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  Binding.projectedValue.getter();
  return CertificatePresentationView.init(request:)(v4, a1);
}

uint64_t sub_23AAB026C()
{
  v1 = *(type metadata accessor for CertificateModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR) + 32));
  v6 = type metadata accessor for CertificateRequest(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = *(v6 + 32);
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #3 in CertificateModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CertificateModifier(0);

  return closure #3 in CertificateModifier.body(content:)(a1);
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<CertificateModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<CertificateModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<CertificateModifier> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy08SecurityB0011CertificateD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy08SecurityB0011CertificateD0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<CertificateModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CertificatePresentationView and conformance CertificatePresentationView()
{
  result = lazy protocol witness table cache variable for type CertificatePresentationView and conformance CertificatePresentationView;
  if (!lazy protocol witness table cache variable for type CertificatePresentationView and conformance CertificatePresentationView)
  {
    type metadata accessor for CertificatePresentationView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificatePresentationView and conformance CertificatePresentationView);
  }

  return result;
}

uint64_t outlined init with take of Binding<CertificateRequest?>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23AAB0614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23AAB06A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for CertificateModifier(uint64_t a1)
{
  type metadata accessor for Binding<CertificateRequest?>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Binding<CertificateRequest?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<CertificateRequest?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<CertificateRequest?>);
    }
  }
}

uint64_t sub_23AAB07EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy08SecurityB0011CertificateD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy08SecurityB0011CertificateD0VGMR);
  type metadata accessor for CertificatePresentationView(255);
  lazy protocol witness table accessor for type _ViewModifier_Content<CertificateModifier> and conformance _ViewModifier_Content<A>();
  lazy protocol witness table accessor for type CertificatePresentationView and conformance CertificatePresentationView();
  return swift_getOpaqueTypeConformance2();
}

void CertificatePresentationView.request.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);

  JUMPOUT(0x23EE93750);
}

uint64_t key path setter for CertificatePresentationView.request : CertificatePresentationView(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  outlined init with copy of URL?(a1, &v9 - v6, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  outlined init with copy of URL?(v7, v5, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  Binding.wrappedValue.setter();
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v7, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
}

uint64_t CertificatePresentationView.request.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of URL?(a1, &v5 - v3, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  Binding.wrappedValue.setter();
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(a1, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
}

void (*CertificatePresentationView.request.modify(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR) - 8) + 64);
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  a1[2] = v6;
  if (v4)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v6 - 1) + 64));
  }

  a1[3] = v7;
  outlined init with copy of URL?(v1, v7, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  MEMORY[0x23EE93750](v6);
  return CertificateModifier.request.modify;
}

uint64_t CertificatePresentationView.$request.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);

  return Binding.projectedValue.getter();
}

uint64_t CertificatePresentationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for StackNavigationViewStyle();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE010navigationC5StyleyQrqd__AA010NavigationcE0Rd__lFQOyAA0fC0VyAcAE0D8BarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dG16TitleDisplayModeyQrAA0fG4ItemV0jkL0OFQOyAcAE0dJ0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedT0VyAA6ButtonVyAA07DefaultV5LabelVGAA31AccessibilityAttachmentModifierVGA3_yA5_yAA4TextVGA10_GGGQo_G_AA05StackfcE0VQo_Md, &_s7SwiftUI4ViewPAAE010navigationC5StyleyQrqd__AA010NavigationcE0Rd__lFQOyAA0fC0VyAcAE0D8BarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dG16TitleDisplayModeyQrAA0fG4ItemV0jkL0OFQOyAcAE0dJ0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedT0VyAA6ButtonVyAA07DefaultV5LabelVGAA31AccessibilityAttachmentModifierVGA3_yA5_yAA4TextVGA10_GGGQo_G_AA05StackfcE0VQo_MR);
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v39 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for CertificateRequest(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Binding.projectedValue.getter();
  MEMORY[0x23EE93750](v11);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v13, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v10, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
    return (*(v46 + 56))(v48, 1, 1, v47);
  }

  else
  {
    v19 = _s10SecurityUI18CertificateRequestVWObTm_0(v10, v17, type metadata accessor for CertificateRequest);
    MEMORY[0x28223BE20](v19);
    *(&v39 - 2) = v17;
    *(&v39 - 1) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dE16TitleDisplayModeyQrAA010NavigationE4ItemV0hiJ0OFQOyAcAE0dH0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA_yA1_yAA4TextVGA6_GGGQo_Md, &_s7SwiftUI4ViewPAAE18navigationBarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dE16TitleDisplayModeyQrAA010NavigationE4ItemV0hiJ0OFQOyAcAE0dH0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA_yA1_yAA4TextVGA6_GGGQo_MR);
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_Md, &_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_MR);
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMR);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_MR);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR);
    v24 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, CertificateView> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR, MEMORY[0x277CDE5A0]);
    v27 = lazy protocol witness table accessor for type String and conformance String(v24, v25, v26);
    v49 = v23;
    v50 = MEMORY[0x277D837D0];
    v51 = v24;
    v52 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v22;
    v50 = OpaqueTypeConformance2;
    v29 = swift_getOpaqueTypeConformance2();
    v30 = lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>();
    v49 = v20;
    v50 = v21;
    v51 = v29;
    v52 = v30;
    swift_getOpaqueTypeConformance2();
    v31 = v40;
    NavigationView.init(content:)();
    v32 = v43;
    StackNavigationViewStyle.init()();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.navigationBarItems<A>(trailing:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR, MEMORY[0x277CDD978]);
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type StackNavigationViewStyle and conformance StackNavigationViewStyle, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
    v33 = v39;
    v34 = v42;
    v35 = v45;
    View.navigationViewStyle<A>(_:)();
    (*(v44 + 8))(v32, v35);
    (*(v41 + 8))(v31, v34);
    v37 = v46;
    v36 = v47;
    v38 = v48;
    (*(v46 + 32))(v48, v33, v47);
    (*(v37 + 56))(v38, 0, 1, v36);
    return outlined destroy of CertificateRequest(v17);
  }
}

uint64_t closure #1 in CertificatePresentationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMR);
  MEMORY[0x28223BE20](v41);
  v40 = &v33 - v5;
  v6 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo_MR);
  v33 = *(v13 - 8);
  v34 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_Md, &_s7SwiftUI4ViewPAAE29navigationBarTitleDisplayModeyQrAA010NavigationE4ItemV0fgH0OFQOyAcAE0dF0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo_MR);
  v35 = *(v16 - 8);
  v36 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v43 = a1;
  v44 = a2;
  v39 = a2;
  type metadata accessor for CertificateView(0);
  lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type CertificateView and conformance CertificateView, type metadata accessor for CertificateView, &protocol conformance descriptor for CertificateView);
  List<>.init(content:)();
  if (*(a1 + 24))
  {
    v19 = *(a1 + 16);
    v20 = *(a1 + 24);
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  v45 = v19;
  v46 = v20;
  v21 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, CertificateView> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMd, &_s7SwiftUI4ListVys5NeverO08SecurityB015CertificateViewVGMR, MEMORY[0x277CDE5A0]);
  v24 = lazy protocol witness table accessor for type String and conformance String(v21, v22, v23);

  v25 = MEMORY[0x277D837D0];
  View.navigationTitle<A>(_:)();

  (*(v10 + 8))(v12, v9);
  v27 = v37;
  v26 = v38;
  (*(v37 + 104))(v8, *MEMORY[0x277CDDDC0], v38);
  v45 = v9;
  v46 = v25;
  v47 = v21;
  v48 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v34;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v27 + 8))(v8, v26);
  (*(v33 + 8))(v15, v29);
  v30 = v40;
  closure #2 in closure #1 in CertificatePresentationView.body.getter(v39, v40);
  v45 = v29;
  v46 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier>, ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>();
  v31 = v36;
  View.navigationBarItems<A>(trailing:)();
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v30, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANGGGMR);
  return (*(v35 + 8))(v18, v31);
}

uint64_t closure #1 in closure #1 in CertificatePresentationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CertificatePresentationView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = type metadata accessor for CertificateRequest(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of CertificatePresentationView(a1, v11, type metadata accessor for CertificateRequest);
  outlined init with copy of CertificatePresentationView(a2, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CertificatePresentationView);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  _s10SecurityUI18CertificateRequestVWObTm_0(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for CertificatePresentationView);
  return CertificateView.init(request:dismiss:)(v11, partial apply for closure #1 in closure #1 in closure #1 in CertificatePresentationView.body.getter, v13, a3);
}

uint64_t closure #1 in closure #1 in closure #1 in CertificatePresentationView.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = type metadata accessor for CertificateRequest(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  outlined init with copy of URL?(v5, v3, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  Binding.wrappedValue.setter();
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v5, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
}

uint64_t closure #2 in closure #1 in CertificatePresentationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = &v29 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v35);
  v32 = &v29 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6ButtonVyAA07DefaultG5LabelVGAA31AccessibilityAttachmentModifierVGAGyAIyAA4TextVGANG_GMd, "P-");
  MEMORY[0x28223BE20](v34);
  v7 = &v29 - v6;
  v8 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v33);
  v16 = &v29 - v15;
  v17 = type metadata accessor for CertificatePresentationView(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  outlined init with copy of CertificatePresentationView(a1, &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CertificatePresentationView);
  v20 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v21 = swift_allocObject();
  _s10SecurityUI18CertificateRequestVWObTm_0(&v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for CertificatePresentationView);
  if (static Solarium.isEnabled.getter())
  {
    static ButtonRole.confirm.getter();

    MEMORY[0x23EE93740](v10, partial apply for closure #1 in closure #2 in closure #1 in CertificatePresentationView.body.getter, v21);
    static SecurityUI.Screens.doneButtonIdentifier.getter();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR, MEMORY[0x277CDF028]);
    View.accessibilityIdentifier(_:)();

    (*(v12 + 8))(v14, v11);
    v22 = &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMd;
    v23 = &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMR;
    outlined init with copy of URL?(v16, v7, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA31AccessibilityAttachmentModifierVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v24 = v16;
  }

  else
  {

    v25 = v29;
    Button.init(action:label:)();
    static SecurityUI.Screens.doneButtonIdentifier.getter();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
    v26 = v32;
    v27 = v31;
    View.accessibilityIdentifier(_:)();

    (*(v30 + 8))(v25, v27);
    v22 = &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd;
    v23 = &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR;
    outlined init with copy of URL?(v26, v7, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v24 = v26;
  }

  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v24, v22, v23);
}

uint64_t closure #1 in closure #2 in closure #1 in CertificatePresentationView.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFLog.certificatePresentationView.getter(v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23AA9F000, v11, v12, "'Done' button tapped", v13, 2u);
    MEMORY[0x23EE941B0](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = type metadata accessor for CertificateRequest(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  outlined init with copy of URL?(v5, v3, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  Binding.wrappedValue.setter();
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _PaddingLayout>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<Color, _ClipEffect<Circle>>>>, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, (<<opaque return type of View.hyphenationDisabled(_:)>>.0)?)>>, _PaddingLayout>)>>(v5, &_s10SecurityUI18CertificateRequestVSgMd, &_s10SecurityUI18CertificateRequestVSgMR);
}

uint64_t sub_23AAB2258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23AAB22E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CertificatePresentationView(uint64_t a1)
{
  result = type metadata singleton initialization cache for CertificatePresentationView;
  if (!type metadata singleton initialization cache for CertificatePresentationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type (<<opaque return type of View.navigationViewStyle<A>(_:)>>.0)? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type (<<opaque return type of View.navigationViewStyle<A>(_:)>>.0)? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type (<<opaque return type of View.navigationViewStyle<A>(_:)>>.0)? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE010navigationC5StyleyQrqd__AA010NavigationcE0Rd__lFQOyAA0fC0VyAcAE0D8BarItems8trailingQrqd___tAaBRd__lFQOyAcAE0dG16TitleDisplayModeyQrAA0fG4ItemV0jkL0OFQOyAcAE0dJ0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateC0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedT0VyAA6ButtonVyAA07DefaultV5LabelVGAA31AccessibilityAttachmentModifierVGA3_yA5_yAA4TextVGA10_GGGQo_G_AA05StackfcE0VQo_SgMd, "Z+");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR);
    type metadata accessor for StackNavigationViewStyle();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationView<<<opaque return type of View.navigationBarItems<A>(trailing:)>>.0> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMd, &_s7SwiftUI14NavigationViewVyAA0D0PAAE18navigationBarItems8trailingQrqd___tAaDRd__lFQOyAeAE0eF16TitleDisplayModeyQrAA0cF4ItemV0ijK0OFQOyAeAE0eI0yQrqd__SyRd__lFQOyAA4ListVys5NeverO08SecurityB0011CertificateD0VG_SSQo__Qo__AA5GroupVyAA19_ConditionalContentVyAA08ModifiedS0VyAA6ButtonVyAA07DefaultU5LabelVGAA31AccessibilityAttachmentModifierVGA1_yA3_yAA4TextVGA8_GGGQo_GMR, MEMORY[0x277CDD978]);
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier(&lazy protocol witness table cache variable for type StackNavigationViewStyle and conformance StackNavigationViewStyle, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type (<<opaque return type of View.navigationViewStyle<A>(_:)>>.0)? and conformance <A> A?);
  }

  return result;
}

uint64_t _s10SecurityUI18CertificateRequestVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of CertificatePresentationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(type metadata accessor for CertificatePresentationView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMd, &_s7SwiftUI7BindingVy08SecurityB018CertificateRequestVSgGMR) + 32));
  v6 = type metadata accessor for CertificateRequest(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = *(v6 + 32);
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in CertificatePresentationView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CertificatePresentationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

Swift::String __swiftcall NSData.toHexString()()
{
  v0 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Foundation4DataV_SSs5NeverOTg557_sSo6NSDataC10SecurityUIE11toHexStringSSyFSSs5UInt8VXEfU_Tf1cn_n(v0, v1);
  outlined consume of Data._Representation(v0, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  v3 = BidirectionalCollection<>.joined(separator:)();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Foundation4DataV_SSs5NeverOTg557_sSo6NSDataC10SecurityUIE11toHexStringSSyFSSs5UInt8VXEfU_Tf1cn_n(unint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v45 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
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
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_23AABCA00;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v45 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
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

uint64_t CertificateSection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10SecurityUI18CertificateSection_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CertificateSection.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SecurityUI18CertificateSection_title);

  return v1;
}

id CertificateSection.__allocating_init(title:keyValuePairs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  UUID.init()();
  v8 = &v7[OBJC_IVAR____TtC10SecurityUI18CertificateSection_title];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC10SecurityUI18CertificateSection_keyValuePairs] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id CertificateSection.init(title:keyValuePairs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UUID.init()();
  v7 = &v3[OBJC_IVAR____TtC10SecurityUI18CertificateSection_title];
  *v7 = a1;
  *(v7 + 1) = a2;
  *&v3[OBJC_IVAR____TtC10SecurityUI18CertificateSection_keyValuePairs] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for CertificateSection(0);
  return objc_msgSendSuper2(&v9, sel_init);
}

id CertificateSection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t protocol witness for Identifiable.id.getter in conformance CertificateSection@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10SecurityUI18CertificateSection_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t key path getter for CertificateDetailsViewModel.sections : CertificateDetailsViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CertificateDetailsViewModel.sections : CertificateDetailsViewModel(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x60);

  return v2(v3);
}

uint64_t CertificateDetailsViewModel.sections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CertificateDetailsViewModel.sections.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*CertificateDetailsViewModel.sections.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return CertificateDetailsViewModel.sections.modify;
}

void CertificateDetailsViewModel.sections.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for CertificateDetailsViewModel.$sections : CertificateDetailsViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10SecurityUI18CertificateSectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay10SecurityUI18CertificateSectionCG_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x78))(v6);
}

uint64_t CertificateDetailsViewModel.$sections.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10SecurityUI18CertificateSectionCGGMd, &_s7Combine9PublishedVySay10SecurityUI18CertificateSectionCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CertificateDetailsViewModel.$sections.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10SecurityUI18CertificateSectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay10SecurityUI18CertificateSectionCG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10SecurityUI18CertificateSectionCGGMd, &_s7Combine9PublishedVySay10SecurityUI18CertificateSectionCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*CertificateDetailsViewModel.$sections.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10SecurityUI18CertificateSectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay10SecurityUI18CertificateSectionCG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC10SecurityUI27CertificateDetailsViewModel__sections;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10SecurityUI18CertificateSectionCGGMd, &_s7Combine9PublishedVySay10SecurityUI18CertificateSectionCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return CertificateDetailsViewModel.$sections.modify;
}

void CertificateDetailsViewModel.$sections.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

void *CertificateDetailsViewModel.init(certificate:)(void *a1)
{
  v119 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10SecurityUI18CertificateSectionCGGMd, &_s7Combine9PublishedVySay10SecurityUI18CertificateSectionCGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v75 - v9;
  v11 = OBJC_IVAR____TtC10SecurityUI27CertificateDetailsViewModel__sections;
  *&v116 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10SecurityUI18CertificateSectionCGMd, &_sSay10SecurityUI18CertificateSectionCGMR);
  Published.init(initialValue:)();
  (*(v8 + 32))(&v1[v11], v10, v7);
  v12 = type metadata accessor for CertificateDetailsViewModel(0);
  v112.receiver = v1;
  v112.super_class = v12;
  v13 = objc_msgSendSuper2(&v112, sel_init);
  v14 = objc_allocWithZone(SFCertificateProperties);
  v87 = v13;
  v76 = a1;
  v15 = [v14 initWithCertificate_];
  v16 = [v15 sectionTitles];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = specialized _arrayConditionalCast<A, B>(_:)(v17);

  v84 = v18;
  if (!v18)
  {
    goto LABEL_72;
  }

  v83 = v15;
  v19 = [v15 sections];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = specialized _arrayConditionalCast<A, B>(_:)(v20);

  if (!v21)
  {

    v15 = v83;
LABEL_72:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_23AABCA00;
    *(v71 + 56) = MEMORY[0x277D837D0];
    *(v71 + 32) = 0xD000000000000024;
    *(v71 + 40) = 0x800000023AABDCC0;
    print(_:separator:terminator:)();

    v72 = &v115;
    goto LABEL_74;
  }

  v22 = (v21 & 0xFFFFFFFFFFFFFF8);
  v75 = v21;
  v80 = v21 & 0xFFFFFFFFFFFFFF8;
  if (v21 >> 62)
  {
    goto LABEL_88;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v21 = v83;
  if (v23)
  {
    v24 = 0;
    v82 = v75 & 0xC000000000000001;
    v81 = v75 + 32;
    v79 = v4 + 1;
    v77 = v84 + 32;
    v97 = xmmword_23AABCA00;
    v78 = v23;
    v89 = v3;
    v88 = v6;
    while (1)
    {
      v86 = v24;
      if (v82)
      {
        v25 = MEMORY[0x23EE93A10](v24, v75);
      }

      else
      {
        if (v24 >= *(v22 + 2))
        {
          goto LABEL_84;
        }

        v25 = *(v81 + 8 * v24);
      }

      v85 = v25;
      NSArray.makeIterator()();
      v21 = v6;
      v96 = lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
      dispatch thunk of IteratorProtocol.next()();
      if (v118)
      {
        break;
      }

      v101 = MEMORY[0x277D84F90];
LABEL_65:
      (*v79)(v6, v3);
      v22 = &v114 + 8;
      v61 = v86;
      if (v86 >= *(v84 + 16))
      {
        goto LABEL_85;
      }

      v62 = (v77 + 16 * v86);
      v64 = *v62;
      v63 = v62[1];
      v65 = type metadata accessor for CertificateSection(0);
      v66 = objc_allocWithZone(v65);

      UUID.init()();
      v67 = &v66[OBJC_IVAR____TtC10SecurityUI18CertificateSection_title];
      *v67 = v64;
      *(v67 + 1) = v63;
      *&v66[OBJC_IVAR____TtC10SecurityUI18CertificateSection_keyValuePairs] = v101;
      v111.receiver = v66;
      v111.super_class = v65;
      v4 = objc_msgSendSuper2(&v111, sel_init);
      v68 = (*((*MEMORY[0x277D85000] & *v87) + 0x68))(&v116);
      v70 = v69;
      MEMORY[0x23EE93930]();
      if (*((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v24 = v61 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v68(&v116, 0);

      v21 = v83;
      v22 = v80;
      if (v24 == v78)
      {
        goto LABEL_73;
      }
    }

    v101 = MEMORY[0x277D84F90];
    while (1)
    {
      outlined init with take of Any(&v116, &v114);
      outlined init with copy of Any(&v114, &v113);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(&v114);
        v4 = v109;
        v26 = v110;
      }

      else
      {
        type metadata accessor for UIFont(0, &lazy cache variable for type metadata for NSDate, 0x277CBEAA8);
        if (swift_dynamicCast())
        {
          v27 = v109;
          v28 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          [v28 setDateStyle_];
          [v28 setTimeStyle_];
          v29 = [v28 stringFromDate_];
          v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v30;

LABEL_22:
          __swift_destroy_boxed_opaque_existential_0(&v114);
          goto LABEL_58;
        }

        type metadata accessor for UIFont(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
        if (!swift_dynamicCast())
        {
          v109 = 0;
          v110 = 0xE000000000000000;
          _print_unlocked<A, B>(_:_:)();
          v4 = v109;
          v26 = v110;
          goto LABEL_22;
        }

        v4 = v108[1];
        v109 = 0;
        v110 = 0xE000000000000000;
        v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = v31;
        v33 = v32;
        v34 = v32 >> 62;
        v22 = &v120;
        v95 = HIDWORD(v31);
        v90 = v4;
        if ((v32 >> 62) > 1)
        {
          if (v34 == 2)
          {
            v22 = *(v31 + 16);
            v36 = *(v31 + 24);
            v35 = v36 - v22;
            if (__OFSUB__(v36, v22))
            {
              goto LABEL_86;
            }

            if (v35)
            {
              goto LABEL_26;
            }
          }
        }

        else if (v34)
        {
          v38 = v95 - v31;
          if (__OFSUB__(v95, v31))
          {
            goto LABEL_87;
          }

          v35 = v38;
          if (v38)
          {
LABEL_26:
            v108[0] = MEMORY[0x277D84F90];
            v21 = v108;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35 & ~(v35 >> 63), 0);
            v94 = v6;
            if (v34)
            {
              if (v34 == 2)
              {
                v37 = *(v6 + 16);
              }

              else
              {
                v37 = v94;
              }
            }

            else
            {
              v37 = 0;
            }

            v22 = &v121;
            v100 = v37;
            if (v35 < 0)
            {
              goto LABEL_83;
            }

            v39 = 0;
            v4 = v108[0];
            v92 = v6 >> 32;
            v93 = BYTE6(v33);
            v22 = &v117;
            v91 = &v102 + v100;
            v99 = v34;
            v98 = v35;
            while (2)
            {
              if (v39 >= v35)
              {
                __break(1u);
LABEL_76:
                __break(1u);
LABEL_77:
                __break(1u);
LABEL_78:
                __break(1u);
LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
LABEL_81:
                __break(1u);
LABEL_82:
                __break(1u);
LABEL_83:
                __break(1u);
LABEL_84:
                __break(1u);
LABEL_85:
                __break(1u);
LABEL_86:
                __break(1u);
LABEL_87:
                __break(1u);
LABEL_88:
                if (v21 >= 0)
                {
                  v74 = v22;
                }

                else
                {
                  v74 = v21;
                }

                v23 = MEMORY[0x23EE93A90](v74);
                v22 = v80;
                goto LABEL_5;
              }

              v40 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                goto LABEL_76;
              }

              v41 = v100 + v39;
              if (v34 != 2)
              {
                if (v34 == 1)
                {
                  if (v41 < v94 || v41 >= v92)
                  {
                    goto LABEL_79;
                  }

                  v42 = __DataStorage._bytes.getter();
                  if (!v42)
                  {
                    __break(1u);
LABEL_93:
                    __break(1u);
                  }

                  v43 = v42;
                  v21 = v33 & 0x3FFFFFFFFFFFFFFFLL;
                  v44 = __DataStorage._offset.getter();
                  v45 = v41 - v44;
                  if (__OFSUB__(v41, v44))
                  {
                    goto LABEL_81;
                  }

LABEL_50:
                  v21 = *(v43 + v45);
                }

                else
                {
                  if (v41 >= v93)
                  {
                    goto LABEL_78;
                  }

                  LOWORD(v102) = v6;
                  BYTE2(v102) = BYTE2(v6);
                  BYTE3(v102) = BYTE3(v6);
                  BYTE4(v102) = v95;
                  BYTE5(v102) = BYTE5(v6);
                  BYTE6(v102) = BYTE6(v6);
                  HIBYTE(v102) = HIBYTE(v6);
                  v103 = v33;
                  v104 = BYTE2(v33);
                  v105 = BYTE3(v33);
                  v106 = BYTE4(v33);
                  v107 = BYTE5(v33);
                  v21 = v91[v39];
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                v48 = swift_allocObject();
                *(v48 + 16) = v97;
                *(v48 + 56) = MEMORY[0x277D84B78];
                *(v48 + 64) = MEMORY[0x277D84BC0];
                *(v48 + 32) = v21;
                v3 = String.init(format:_:)();
                v50 = v49;
                v108[0] = v4;
                v52 = v4[2];
                v51 = v4[3];
                if (v52 >= v51 >> 1)
                {
                  v21 = v108;
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
                  v4 = v108[0];
                }

                v4[2] = (v52 + 1);
                v53 = &v4[2 * v52];
                v53[4] = v3;
                v53[5] = v50;
                ++v39;
                v35 = v98;
                LODWORD(v34) = v99;
                if (v40 == v98)
                {
                  outlined consume of Data._Representation(v6, v33);
                  goto LABEL_57;
                }

                continue;
              }

              break;
            }

            if (v41 < *(v6 + 16))
            {
              goto LABEL_77;
            }

            if (v41 >= *(v6 + 24))
            {
              goto LABEL_80;
            }

            v46 = __DataStorage._bytes.getter();
            if (!v46)
            {
              goto LABEL_93;
            }

            v43 = v46;
            v21 = v33 & 0x3FFFFFFFFFFFFFFFLL;
            v47 = __DataStorage._offset.getter();
            v45 = v41 - v47;
            if (__OFSUB__(v41, v47))
            {
              goto LABEL_82;
            }

            goto LABEL_50;
          }
        }

        else
        {
          v35 = BYTE6(v32);
          if (BYTE6(v32))
          {
            goto LABEL_26;
          }
        }

        outlined consume of Data._Representation(v31, v32);
        v4 = MEMORY[0x277D84F90];
LABEL_57:
        v102 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
        v54 = BidirectionalCollection<>.joined(separator:)();
        v56 = v55;

        MEMORY[0x23EE93900](v54, v56);

        v4 = v109;
        v26 = v110;
        __swift_destroy_boxed_opaque_existential_0(&v114);
        v3 = v89;
        v6 = v88;
      }

LABEL_58:
      __swift_destroy_boxed_opaque_existential_0(&v113);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v101 + 2) + 1, 1, v101);
      }

      v58 = *(v101 + 2);
      v57 = *(v101 + 3);
      if (v58 >= v57 >> 1)
      {
        v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v101);
      }

      v59 = v101;
      *(v101 + 2) = v58 + 1;
      v60 = &v59[16 * v58];
      *(v60 + 4) = v4;
      *(v60 + 5) = v26;
      v21 = v6;
      dispatch thunk of IteratorProtocol.next()();
      if (!v118)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_73:

  v72 = &v110;
LABEL_74:

  return v87;
}

uint64_t type metadata accessor for CertificateSection(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v5);
    type metadata accessor for UIFont(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v5);
    type metadata accessor for SecCertificateRef();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id CertificateSection.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CertificateDetailsViewModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CertificateDetailsViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t property wrapper backing initializer of CertificateDetailsView.viewModel(uint64_t a1)
{
  type metadata accessor for CertificateDetailsViewModel(0);
  lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type CertificateDetailsViewModel and conformance CertificateDetailsViewModel, type metadata accessor for CertificateDetailsViewModel, &protocol conformance descriptor for CertificateDetailsViewModel);

  return ObservedObject.init(wrappedValue:)();
}

id key path getter for CertificateDetailsView.viewModel : CertificateDetailsView@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = v2;
  return v2;
}

void CertificateDetailsView.$viewModel.getter()
{
  type metadata accessor for CertificateDetailsViewModel(0);
  lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type CertificateDetailsViewModel and conformance CertificateDetailsViewModel, type metadata accessor for CertificateDetailsViewModel, &protocol conformance descriptor for CertificateDetailsViewModel);

  JUMPOUT(0x23EE932D0);
}

uint64_t CertificateDetailsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v9 = type metadata accessor for InsetGroupedListStyle();
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAK0klC0VGG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAK0klC0VGG_SSQo_MR);
  v18 = *(v17 - 8);
  v30 = v17;
  v31 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v29 - v19;
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAD0fG4ViewVGMd, &_s7SwiftUI7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAD0fG4ViewVGMR);
  lazy protocol witness table accessor for type ForEach<[CertificateSection], UUID, CertificateSectionView> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<[CertificateSection], UUID, CertificateSectionView> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAD0fG4ViewVGMd, &_s7SwiftUI7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAD0fG4ViewVGMR, lazy protocol witness table accessor for type CertificateSectionView and conformance CertificateSectionView);
  List<>.init(content:)();
  v39 = a1;
  v40 = a2;
  v21 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, ForEach<[CertificateSection], UUID, CertificateSectionView>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMR, MEMORY[0x277CDE5A0]);
  v24 = lazy protocol witness table accessor for type String and conformance String(v21, v22, v23);
  v25 = MEMORY[0x277D837D0];
  View.navigationTitle<A>(_:)();
  (*(v14 + 8))(v16, v13);
  InsetGroupedListStyle.init()();
  v39 = v13;
  v40 = v25;
  v41 = v21;
  v42 = v24;
  swift_getOpaqueTypeConformance2();
  v26 = v30;
  v27 = v32;
  View.listStyle<A>(_:)();
  (*(v33 + 8))(v12, v27);
  return (*(v31 + 8))(v20, v26);
}

uint64_t closure #1 in CertificateDetailsView.body.getter(void *a1)
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x58))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10SecurityUI18CertificateSectionCGMd, &_sSay10SecurityUI18CertificateSectionCGMR);
  type metadata accessor for UUID();
  v1 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [CertificateSection] and conformance [A], &_sSay10SecurityUI18CertificateSectionCGMd, &_sSay10SecurityUI18CertificateSectionCGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type CertificateSectionView and conformance CertificateSectionView(v1, v2, v3);
  lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type CertificateSection and conformance CertificateSection, type metadata accessor for CertificateSection, &protocol conformance descriptor for CertificateSection);
  return ForEach<>.init(_:content:)();
}

id closure #1 in closure #1 in CertificateDetailsView.body.getter@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t CertificateDetailsView.init(title:viewModel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CertificateDetailsViewModel(0);
  lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type CertificateDetailsViewModel and conformance CertificateDetailsViewModel, type metadata accessor for CertificateDetailsViewModel, &protocol conformance descriptor for CertificateDetailsViewModel);
  ObservedObject.init(wrappedValue:)();
  return a1;
}

uint64_t protocol witness for View.body.getter in conformance CertificateDetailsView@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for InsetGroupedListStyle();
  v3 = *(v2 - 8);
  v29 = v2;
  v30 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAK0klC0VGG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAK0klC0VGG_SSQo_MR);
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = v1[1];
  v16 = v1[2];
  v17 = v1[3];
  v32 = *v1;
  v15 = v32;
  v33 = v14;
  v34 = v16;
  v35 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAD0fG4ViewVGMd, &_s7SwiftUI7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAD0fG4ViewVGMR);
  lazy protocol witness table accessor for type ForEach<[CertificateSection], UUID, CertificateSectionView> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<[CertificateSection], UUID, CertificateSectionView> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAD0fG4ViewVGMd, &_s7SwiftUI7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAD0fG4ViewVGMR, lazy protocol witness table accessor for type CertificateSectionView and conformance CertificateSectionView);
  List<>.init(content:)();
  v36 = v15;
  v37 = v14;
  v18 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, ForEach<[CertificateSection], UUID, CertificateSectionView>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMR, MEMORY[0x277CDE5A0]);
  v21 = lazy protocol witness table accessor for type String and conformance String(v18, v19, v20);
  v22 = MEMORY[0x277D837D0];
  View.navigationTitle<A>(_:)();
  (*(v7 + 8))(v9, v6);
  InsetGroupedListStyle.init()();
  v36 = v6;
  v37 = v22;
  v38 = v18;
  v39 = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v27;
  v24 = v29;
  View.listStyle<A>(_:)();
  (*(v30 + 8))(v5, v24);
  return (*(v28 + 8))(v13, v23);
}

uint64_t CertificateSectionView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type String and conformance String(a1, a2, a3);

  Text.init<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMd, &_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMR);
  lazy protocol witness table accessor for type ForEach<[CertificateSection], UUID, CertificateSectionView> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, CertificateRowView> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMd, &_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMR, lazy protocol witness table accessor for type CertificateRowView and conformance CertificateRowView);
  return Section<>.init(header:content:)();
}

uint64_t closure #1 in CertificateSectionView.body.getter(char *a1)
{
  v2 = *(*&a1[OBJC_IVAR____TtC10SecurityUI18CertificateSection_keyValuePairs] + 16) >> 1;
  v12[0] = 0;
  v12[1] = v2;
  KeyPath = swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  v7 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v10 = lazy protocol witness table accessor for type CertificateRowView and conformance CertificateRowView(v7, v8, v9);
  return ForEach<>.init(_:id:content:)(v12, KeyPath, partial apply for closure #1 in closure #1 in CertificateSectionView.body.getter, v4, v6, &type metadata for CertificateRowView, v7, MEMORY[0x277D83B98], v10);
}

uint64_t protocol witness for View.body.getter in conformance CertificateSectionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type String and conformance String(a1, a2, a3);

  Text.init<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMd, &_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMR);
  lazy protocol witness table accessor for type ForEach<[CertificateSection], UUID, CertificateSectionView> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, CertificateRowView> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMd, &_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMR, lazy protocol witness table accessor for type CertificateRowView and conformance CertificateRowView);
  return Section<>.init(header:content:)();
}

uint64_t CertificateRowView.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CertificateRowView.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CertificateRowView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = static HorizontalAlignment.leading.getter();
  *(a5 + 8) = 0x4000000000000000;
  *(a5 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AOtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AOtGGMR);
  closure #1 in CertificateRowView.body.getter(a1, a2, a3, a4, (a5 + *(v10 + 44)));
  LOBYTE(a4) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMtGGAA14_PaddingLayoutVGMR);
  v20 = a5 + *(result + 36);
  *v20 = a4;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t closure #1 in CertificateRowView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v57 = a3;
  v58 = a4;
  v63 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_MR);
  v62 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v60 = &v56 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v59 = &v56 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v64 = &v56 - v15;
  v65 = a1;
  v66 = a2;
  v56 = lazy protocol witness table accessor for type String and conformance String(v14, v16, v17);

  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Font.headline.getter();
  v23 = Text.font(_:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  outlined consume of Text.Storage(v18, v20, v22 & 1);

  v65 = v23;
  v66 = v25;
  v67 = v27 & 1;
  v68 = v29;
  View.hyphenationDisabled(_:)();
  outlined consume of Text.Storage(v23, v25, v27 & 1);

  v65 = v57;
  v66 = v58;

  v30 = Text.init<A>(_:)();
  v32 = v31;
  v34 = v33;
  static Font.subheadline.getter();
  v35 = Text.font(_:)();
  v37 = v36;
  LOBYTE(v20) = v38;

  outlined consume of Text.Storage(v30, v32, v34 & 1);

  static Color.gray.getter();
  v39 = Text.foregroundColor(_:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;

  outlined consume of Text.Storage(v35, v37, v20 & 1);

  v65 = v39;
  v66 = v41;
  v43 &= 1u;
  v67 = v43;
  v68 = v45;
  v46 = v59;
  View.hyphenationDisabled(_:)();
  outlined consume of Text.Storage(v39, v41, v43);

  v47 = v62;
  v48 = *(v62 + 16);
  v49 = v60;
  v50 = v64;
  v48(v60, v64, v7);
  v51 = v61;
  v48(v61, v46, v7);
  v52 = v63;
  v48(v63, v49, v7);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGtMd, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AGtMR);
  v48(&v52[*(v53 + 48)], v51, v7);
  v54 = *(v47 + 8);
  v54(v46, v7);
  v54(v50, v7);
  v54(v51, v7);
  return (v54)(v49, v7);
}

uint64_t protocol witness for View.body.getter in conformance CertificateRowView@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AOtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AOtGGMR);
  closure #1 in CertificateRowView.body.getter(v4, v5, v7, v6, (a2 + *(v8 + 44)));
  LOBYTE(v6) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMtGGAA14_PaddingLayoutVGMR);
  v18 = a2 + *(result + 36);
  *v18 = v6;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type CertificateSectionView and conformance CertificateSectionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CertificateSectionView and conformance CertificateSectionView;
  if (!lazy protocol witness table cache variable for type CertificateSectionView and conformance CertificateSectionView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateSectionView and conformance CertificateSectionView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ForEach<[CertificateSection], UUID, CertificateSectionView> and conformance <> ForEach<A, B, C>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type CertificateRowView and conformance CertificateRowView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CertificateRowView and conformance CertificateRowView;
  if (!lazy protocol witness table cache variable for type CertificateRowView and conformance CertificateRowView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateRowView and conformance CertificateRowView);
  }

  return result;
}

uint64_t type metadata completion function for CertificateSection(uint64_t a1)
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

void type metadata completion function for CertificateDetailsViewModel(uint64_t a1)
{
  type metadata accessor for Published<[CertificateSection]>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[CertificateSection]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[CertificateSection]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10SecurityUI18CertificateSectionCGMd, &_sSay10SecurityUI18CertificateSectionCGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[CertificateSection]>);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CertificateDetailsView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for CertificateDetailsView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23AAB6744()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAK0klC0VGG_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAK0klC0VGG_SSQo_MR);
  type metadata accessor for InsetGroupedListStyle();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMR);
  v0 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, ForEach<[CertificateSection], UUID, CertificateSectionView>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySay08SecurityB018CertificateSectionCG10Foundation4UUIDVAH0hI4ViewVGGMR, MEMORY[0x277CDE5A0]);
  lazy protocol witness table accessor for type String and conformance String(v0, v1, v2);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t lazy protocol witness table accessor for type Section<Text, ForEach<Range<Int>, Int, CertificateRowView>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<Text, ForEach<Range<Int>, Int, CertificateRowView>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<Text, ForEach<Range<Int>, Int, CertificateRowView>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGAA05EmptyJ0VGMd, "6*");
    lazy protocol witness table accessor for type ForEach<[CertificateSection], UUID, CertificateSectionView> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, CertificateRowView> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMd, &_s7SwiftUI7ForEachVySnySiGSi08SecurityB018CertificateRowViewVGMR, lazy protocol witness table accessor for type CertificateRowView and conformance CertificateRowView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<Text, ForEach<Range<Int>, Int, CertificateRowView>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AMtGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AKtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo__AKtGGMR, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_23AAB69D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *partial apply for closure #1 in closure #1 in CertificateSectionView.body.getter@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = 2 * *result;
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(*(v2 + 16) + OBJC_IVAR____TtC10SecurityUI18CertificateSection_keyValuePairs);
  v5 = *(v4 + 16);
  if (v3 >= v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v3 | 1;
  if ((v3 | 1) >= v5)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = v4 + 32;
  v9 = *(v7 + 32 * *result);
  v8 = *(v7 + 32 * *result + 8);
  v10 = (v7 + 16 * v6);
  v11 = *v10;
  v12 = v10[1];
  *a2 = v9;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v12;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t key path getter for CertificateChainViewModel.certificates : CertificateChainViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CertificateChainViewModel.certificates : CertificateChainViewModel(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

uint64_t CertificateChainViewModel.certificates.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CertificateChainViewModel.certificates.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*CertificateChainViewModel.certificates.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return CertificateDetailsViewModel.sections.modify;
}

uint64_t key path setter for CertificateChainViewModel.$certificates : CertificateChainViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo17SecCertificateRefaG_GMd, &_s7Combine9PublishedV9PublisherVySaySo17SecCertificateRefaG_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 128))(v6);
}

uint64_t CertificateChainViewModel.$certificates.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17SecCertificateRefaGGMd, &_s7Combine9PublishedVySaySo17SecCertificateRefaGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CertificateChainViewModel.$certificates.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo17SecCertificateRefaG_GMd, &_s7Combine9PublishedV9PublisherVySaySo17SecCertificateRefaG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17SecCertificateRefaGGMd, &_s7Combine9PublishedVySaySo17SecCertificateRefaGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*CertificateChainViewModel.$certificates.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo17SecCertificateRefaG_GMd, &_s7Combine9PublishedV9PublisherVySaySo17SecCertificateRefaG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC10SecurityUI25CertificateChainViewModel__certificates;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17SecCertificateRefaGGMd, &_s7Combine9PublishedVySaySo17SecCertificateRefaGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return CertificateDetailsViewModel.$sections.modify;
}

uint64_t CertificateChainViewModel.__allocating_init(certificateManager:)(void *a1)
{
  swift_allocObject();
  v2 = specialized CertificateChainViewModel.init(certificateManager:)(a1);

  return v2;
}

uint64_t CertificateChainViewModel.init(certificateManager:)(void *a1)
{
  v2 = specialized CertificateChainViewModel.init(certificateManager:)(a1);

  return v2;
}

uint64_t CertificateChainViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC10SecurityUI25CertificateChainViewModel__certificates;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17SecCertificateRefaGGMd, &_s7Combine9PublishedVySaySo17SecCertificateRefaGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t CertificateChainViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10SecurityUI25CertificateChainViewModel__certificates;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17SecCertificateRefaGGMd, &_s7Combine9PublishedVySaySo17SecCertificateRefaGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CertificateChainViewModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CertificateChainViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t CertificateChainView.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CertificateChainView.init(title:certificateManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = partial apply for implicit closure #1 in CertificateChainView.init(title:certificateManager:);
  *(a4 + 32) = v7;
  *(a4 + 40) = 0;

  return MEMORY[0x2821F9840]();
}

uint64_t CertificateChainView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMd, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-v3];
  v10 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAN5IndexVyAQ_GAA14NavigationLinkVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyA0_yAEyAEyAEyAA5ImageVAA012_AspectRatioH0VGAA06_FrameH0VGAIG_AA0U0PAAE19hyphenationDisabledyQrSbFQOyAG_Qo_tGG_A15_A15_tGGAIG08SecurityB00n7DetailsU0VGGAA05EmptyU0VGMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAN5IndexVyAQ_GAA14NavigationLinkVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyA0_yAEyAEyAEyAA5ImageVAA012_AspectRatioH0VGAA06_FrameH0VGAIG_AA0U0PAAE19hyphenationDisabledyQrSbFQOyAG_Qo_tGG_A15_A15_tGGAIG08SecurityB00n7DetailsU0VGGAA05EmptyU0VGMR);
  lazy protocol witness table accessor for type Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView> and conformance <> Section<A, B, C>();
  List<>.init(content:)();
  v11 = *v0;
  v5 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMd, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMR, MEMORY[0x277CDE5A0]);
  lazy protocol witness table accessor for type String and conformance String(v5, v6, v7);
  View.navigationTitle<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t closure #1 in CertificateChainView.body.getter(uint64_t a1)
{
  v1 = static SFLocalization.certificates.getter();
  lazy protocol witness table accessor for type String and conformance String(v1, v2, v3);
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.caption.getter();
  Text.font(_:)();

  outlined consume of Text.Storage(v4, v6, v8 & 1);

  static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAE5IndexVyAH_GAA14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAUyAQyAQyAQyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VG_AA0Q0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A12_A12_tGGA5_G08SecurityB00h7DetailsQ0VGGMd, &_s7SwiftUI7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAE5IndexVyAH_GAA14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAUyAQyAQyAQyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VG_AA0Q0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A12_A12_tGGA5_G08SecurityB00h7DetailsQ0VGGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>> and conformance <> ForEach<A, B, C>();
  return Section<>.init(header:content:)();
}

void closure #1 in closure #1 in closure #1 in CertificateChainView.body.getter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for CertificateChainViewModel(0);
  lazy protocol witness table accessor for type CertificateChainViewModel and conformance CertificateChainViewModel();
  v4 = StateObject.wrappedValue.getter();
  v5 = (*(*v4 + 96))(v4);

  v6 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_8:
    v7 = MEMORY[0x23EE93A10](v6, v5);
    goto LABEL_6;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 8 * v6 + 32);
LABEL_6:
    v8 = v7;

    v9 = *(a2 + 16);
    v10 = [v9 titleForCertificate_];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    type metadata accessor for CertificateDetailsViewModel(0);
    v14 = v8;
    v15 = CertificateDetailsViewModel.__allocating_init(certificate:)(v14);
    [v9 isRootCertificate_];

    v16 = v15;
    v20 = CertificateDetailsView.init(title:viewModel:)(v11, v13, v16);
    MEMORY[0x28223BE20](v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA08_PaddingL0VG_AA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2ZtGGASGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA08_PaddingL0VG_AA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2ZtGGASGMR);
    v17 = lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CertificateDetailsView and conformance CertificateDetailsView(v17, v18, v19);
    NavigationLink.init(destination:label:)();

    return;
  }

  __break(1u);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in CertificateChainView.body.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v82 = a5;
  v89 = a6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_MR);
  v88 = *(v85 - 8);
  v10 = MEMORY[0x28223BE20](v85);
  v87 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v86 = &v81 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v84 = &v81 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v81 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA08_PaddingK0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA08_PaddingK0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGGMR);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v90 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v81 - v21;
  *v22 = static VerticalAlignment.top.getter();
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  v91 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VG_AA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VG_AA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGGMR);
  closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in CertificateChainView.body.getter(a2, a3, (v22 + *(v23 + 44)));
  v83 = *(a4 + 16);
  v24 = [v83 issuerNameForCertificate_];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = static SFLocalization.issuedBy(name:)(v25, v27);
  v30 = v29;

  v92 = v28;
  v93 = v30;
  v81 = lazy protocol witness table accessor for type String and conformance String(v31, v32, v33);
  v34 = Text.init<A>(_:)();
  v36 = v35;
  LOBYTE(v22) = v37;
  static Font.subheadline.getter();
  v38 = Text.font(_:)();
  v40 = v39;
  LOBYTE(v27) = v41;

  outlined consume of Text.Storage(v34, v36, v22 & 1);

  static Color.gray.getter();
  v42 = Text.foregroundColor(_:)();
  v44 = v43;
  LOBYTE(v6) = v45;
  v47 = v46;

  outlined consume of Text.Storage(v38, v40, v27 & 1);

  v92 = v42;
  v93 = v44;
  v94 = v6 & 1;
  v95 = v47;
  View.hyphenationDisabled(_:)();
  outlined consume of Text.Storage(v42, v44, v6 & 1);

  v48 = specialized CertificateChainView.formattedExpirationDate(for:)(v82, v83);
  v50 = static SFLocalization.expires(date:)(v48, v49);
  v52 = v51;

  v92 = v50;
  v93 = v52;
  v53 = Text.init<A>(_:)();
  v55 = v54;
  LOBYTE(v52) = v56;
  static Font.subheadline.getter();
  v57 = Text.font(_:)();
  v59 = v58;
  v61 = v60;

  outlined consume of Text.Storage(v53, v55, v52 & 1);

  static Color.gray.getter();
  v62 = Text.foregroundColor(_:)();
  v64 = v63;
  LOBYTE(v44) = v65;
  v67 = v66;

  outlined consume of Text.Storage(v57, v59, v61 & 1);

  v92 = v62;
  v93 = v64;
  LOBYTE(v44) = v44 & 1;
  v94 = v44;
  v95 = v67;
  v68 = v84;
  View.hyphenationDisabled(_:)();
  outlined consume of Text.Storage(v62, v64, v44);

  v69 = v90;
  sub_23AAB9884(v91, v90);
  v70 = v88;
  v71 = *(v88 + 16);
  v72 = v86;
  v73 = v17;
  v74 = v17;
  v75 = v85;
  v71(v86, v74, v85);
  v76 = v87;
  v71(v87, v68, v75);
  v77 = v89;
  sub_23AAB9884(v69, v89);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA08_PaddingK0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2XtMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA08_PaddingK0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2XtMR);
  v71((v77 + *(v78 + 48)), v72, v75);
  v71((v77 + *(v78 + 64)), v76, v75);
  v79 = *(v70 + 8);
  v79(v68, v75);
  v79(v73, v75);
  sub_23AAB98F4(v91);
  v79(v76, v75);
  v79(v72, v75);
  return sub_23AAB98F4(v90);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in CertificateChainView.body.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v54 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_MR);
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v53 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v50 - v9;
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v14 = static NSBundle.current;
  Image.init(_:bundle:)();
  (*(v11 + 104))(v13, *MEMORY[0x277CE0FE0], v10);
  v51 = Image.resizable(capInsets:resizingMode:)();

  (*(v11 + 8))(v13, v10);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v77 = 1;
  *&v76[6] = v80[0];
  *&v76[22] = v80[1];
  *&v76[38] = v80[2];
  v57 = static Edge.Set.trailing.getter();
  v15 = EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v78 = 0;
  v63 = a2;
  v64 = a3;
  lazy protocol witness table accessor for type String and conformance String(v15, v24, v25);

  v26 = Text.init<A>(_:)();
  v28 = v27;
  v30 = v29;
  static Font.headline.getter();
  v31 = Text.font(_:)();
  v33 = v32;
  v35 = v34;
  v50 = v36;

  outlined consume of Text.Storage(v26, v28, v30 & 1);

  v63 = v31;
  v64 = v33;
  v35 &= 1u;
  LOBYTE(v65) = v35;
  *(&v66 + 6) = v50;
  v37 = v52;
  View.hyphenationDisabled(_:)();
  outlined consume of Text.Storage(v31, v33, v35);

  v39 = v55;
  v38 = v56;
  v40 = *(v55 + 16);
  v41 = v53;
  v40(v53, v37, v56);
  v42 = v51;
  v58 = v51;
  LOWORD(v59[0]) = 1;
  *(v59 + 2) = *v76;
  *(&v59[1] + 2) = *&v76[16];
  *(&v59[2] + 2) = *&v76[32];
  *&v59[3] = *&v76[46];
  BYTE8(v59[3]) = v57;
  *(&v59[3] + 9) = *v79;
  HIDWORD(v59[3]) = *&v79[3];
  *&v60 = v17;
  *(&v60 + 1) = v19;
  *&v61 = v21;
  *(&v61 + 1) = v23;
  v62 = 0;
  v43 = v54;
  v54[112] = 0;
  v44 = v60;
  *(v43 + 4) = v59[3];
  *(v43 + 5) = v44;
  v45 = v59[0];
  *v43 = v58;
  *(v43 + 1) = v45;
  v46 = v59[2];
  *(v43 + 2) = v59[1];
  *(v43 + 3) = v46;
  *(v43 + 6) = v61;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VG_AA4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VG_AA4ViewPAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tMR);
  v40(&v43[*(v47 + 48)], v41, v38);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(&v58, &v63);
  v48 = *(v39 + 8);
  v48(v37, v38);
  v48(v41, v38);
  v63 = v42;
  v64 = 0;
  v65 = 1;
  v66 = *v76;
  v67 = *&v76[16];
  *v68 = *&v76[32];
  *&v68[14] = *&v76[46];
  v69 = v57;
  *v70 = *v79;
  *&v70[3] = *&v79[3];
  v71 = v17;
  v72 = v19;
  v73 = v21;
  v74 = v23;
  v75 = 0;
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(&v63);
}

uint64_t protocol witness for View.body.getter in conformance CertificateChainView()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMd, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-v3];
  v5 = v0[1];
  v13 = *v0;
  v14[0] = v5;
  *(v14 + 9) = *(v0 + 25);
  v11 = &v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAN5IndexVyAQ_GAA14NavigationLinkVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyA0_yAEyAEyAEyAA5ImageVAA012_AspectRatioH0VGAA06_FrameH0VGAIG_AA0U0PAAE19hyphenationDisabledyQrSbFQOyAG_Qo_tGG_A15_A15_tGGAIG08SecurityB00n7DetailsU0VGGAA05EmptyU0VGMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAN5IndexVyAQ_GAA14NavigationLinkVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyA0_yAEyAEyAEyAA5ImageVAA012_AspectRatioH0VGAA06_FrameH0VGAIG_AA0U0PAAE19hyphenationDisabledyQrSbFQOyAG_Qo_tGG_A15_A15_tGGAIG08SecurityB00n7DetailsU0VGGAA05EmptyU0VGMR);
  lazy protocol witness table accessor for type Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView> and conformance <> Section<A, B, C>();
  List<>.init(content:)();
  v12 = v13;
  v6 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMd, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMR, MEMORY[0x277CDE5A0]);
  lazy protocol witness table accessor for type String and conformance String(v6, v7, v8);
  View.navigationTitle<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t specialized CertificateChainViewModel.init(certificateManager:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo17SecCertificateRefaGGMd, &_s7Combine9PublishedVySaySo17SecCertificateRefaGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = OBJC_IVAR____TtC10SecurityUI25CertificateChainViewModel__certificates;
  v13[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17SecCertificateRefaGMd, &_sSaySo17SecCertificateRefaGMR);
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + OBJC_IVAR____TtC10SecurityUI25CertificateChainViewModel_certificateManager) = a1;
  v8 = [a1 certificates];
  if (v8)
  {
    v9 = v8;
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = specialized _arrayConditionalCast<A, B>(_:)(v10);

    if (v11)
    {
      (*(*v1 + 104))(v11);
    }
  }

  return v1;
}

uint64_t sub_23AAB89A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t partial apply for implicit closure #1 in CertificateChainView.init(title:certificateManager:)()
{
  v1 = *(v0 + 16);
  type metadata accessor for CertificateChainViewModel(0);
  swift_allocObject();
  v2 = v1;
  v3 = specialized CertificateChainViewModel.init(certificateManager:)(v2);

  return v3;
}

unint64_t lazy protocol witness table accessor for type Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAN5IndexVyAQ_GAA14NavigationLinkVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyA0_yAEyAEyAEyAA5ImageVAA012_AspectRatioH0VGAA06_FrameH0VGAIG_AA0U0PAAE19hyphenationDisabledyQrSbFQOyAG_Qo_tGG_A15_A15_tGGAIG08SecurityB00n7DetailsU0VGGAA05EmptyU0VGMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAN5IndexVyAQ_GAA14NavigationLinkVyAEyAA6VStackVyAA9TupleViewVyAA6HStackVyA0_yAEyAEyAEyAA5ImageVAA012_AspectRatioH0VGAA06_FrameH0VGAIG_AA0U0PAAE19hyphenationDisabledyQrSbFQOyAG_Qo_tGG_A15_A15_tGGAIG08SecurityB00n7DetailsU0VGGAA05EmptyU0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAE5IndexVyAH_GAA14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAUyAQyAQyAQyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VG_AA0Q0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A12_A12_tGGA5_G08SecurityB00h7DetailsQ0VGGMd, &_s7SwiftUI7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAE5IndexVyAH_GAA14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAUyAQyAQyAQyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VG_AA0Q0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A12_A12_tGGA5_G08SecurityB00h7DetailsQ0VGGMR);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA08_PaddingN0VG_AA0I0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A0_A0_tGGAUG08SecurityB0018CertificateDetailsI0VGMd, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA08_PaddingN0VG_AA0I0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A0_A0_tGGAUG08SecurityB0018CertificateDetailsI0VGMR, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t type metadata accessor for CertificateChainViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for CertificateChainViewModel;
  if (!type metadata singleton initialization cache for CertificateChainViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CertificateChainViewModel(uint64_t a1)
{
  type metadata accessor for Published<[SecCertificateRef]>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[SecCertificateRef]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[SecCertificateRef]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17SecCertificateRefaGMd, &_sSaySo17SecCertificateRefaGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[SecCertificateRef]>);
    }
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CertificateChainView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for CertificateChainView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23AAB8F60()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMd, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMR);
  v0 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, Section<ModifiedContent<Text, _PaddingLayout>, ForEach<DefaultIndices<ReversedCollection<[SecCertificateRef]>>, ReversedCollection<[SecCertificateRef]>.Index, NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView>>, EmptyView>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMd, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA15ModifiedContentVyAA4TextVAA14_PaddingLayoutVGAA7ForEachVySIys18ReversedCollectionVySaySo17SecCertificateRefaGGGAR5IndexVyAU_GAA14NavigationLinkVyAIyAA6VStackVyAA9TupleViewVyAA6HStackVyA4_yAIyAIyAIyAA5ImageVAA012_AspectRatioJ0VGAA06_FrameJ0VGAMG_AA0W0PAAE19hyphenationDisabledyQrSbFQOyAK_Qo_tGG_A19_A19_tGGAMG08SecurityB00p7DetailsW0VGGAA05EmptyW0VGGMR, MEMORY[0x277CDE5A0]);
  lazy protocol witness table accessor for type String and conformance String(v0, v1, v2);
  return swift_getOpaqueTypeConformance2();
}

void type metadata accessor for SecCertificateRef()
{
  if (!lazy cache variable for type metadata for SecCertificateRef)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for SecCertificateRef);
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in CertificateChainView.body.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 3);
  v3 = *(v1 + 4);
  type metadata accessor for CertificateChainViewModel(0);
  lazy protocol witness table accessor for type CertificateChainViewModel and conformance CertificateChainViewModel();
  v4 = StateObject.wrappedValue.getter();
  v5 = (*(*v4 + 96))();

  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v19 = v5;
    }

    else
    {
      v19 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = MEMORY[0x23EE93A90](v19);
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21[0] = v5;
  v21[1] = v6;
  v21[2] = 0;
  KeyPath = swift_getKeyPath();
  v22 = *v1;
  v8 = *(v1 + 2);
  v9 = swift_allocObject();
  v10 = *(v1 + 25);
  v11 = v1[1];
  v9[1] = *v1;
  v9[2] = v11;
  *(v9 + 41) = v10;
  outlined init with copy of String(&v22, v20);
  v12 = v8;
  outlined copy of StateObject<CertificateChainViewModel>.Storage(v2, v3);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSIys18ReversedCollectionVySaySo17SecCertificateRefaGGGMd, &_sSIys18ReversedCollectionVySaySo17SecCertificateRefaGGGMR);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA08_PaddingN0VG_AA0I0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A0_A0_tGGAUG08SecurityB0018CertificateDetailsI0VGMd, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA08_PaddingN0VG_AA0I0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A0_A0_tGGAUG08SecurityB0018CertificateDetailsI0VGMR);
  v15 = lazy protocol witness table accessor for type DefaultIndices<ReversedCollection<[SecCertificateRef]>> and conformance <> DefaultIndices<A>();
  v16 = lazy protocol witness table accessor for type ReversedCollection<[SecCertificateRef]>.Index and conformance <> ReversedCollection<A>.Index();
  v17 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout>, CertificateDetailsView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA08_PaddingN0VG_AA0I0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A0_A0_tGGAUG08SecurityB0018CertificateDetailsI0VGMd, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA08_PaddingN0VG_AA0I0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A0_A0_tGGAUG08SecurityB0018CertificateDetailsI0VGMR, MEMORY[0x277CDD938]);
  return ForEach<>.init(_:id:content:)(v21, KeyPath, partial apply for closure #1 in closure #1 in closure #1 in CertificateChainView.body.getter, v9, v13, v14, v15, v16, v17);
}

unint64_t lazy protocol witness table accessor for type CertificateChainViewModel and conformance CertificateChainViewModel()
{
  result = lazy protocol witness table cache variable for type CertificateChainViewModel and conformance CertificateChainViewModel;
  if (!lazy protocol witness table cache variable for type CertificateChainViewModel and conformance CertificateChainViewModel)
  {
    type metadata accessor for CertificateChainViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateChainViewModel and conformance CertificateChainViewModel);
  }

  return result;
}

uint64_t sub_23AAB92A4()
{

  outlined consume of StateObject<CertificateChainViewModel>.Storage(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

unint64_t lazy protocol witness table accessor for type DefaultIndices<ReversedCollection<[SecCertificateRef]>> and conformance <> DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<ReversedCollection<[SecCertificateRef]>> and conformance <> DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<ReversedCollection<[SecCertificateRef]>> and conformance <> DefaultIndices<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIys18ReversedCollectionVySaySo17SecCertificateRefaGGGMd, &_sSIys18ReversedCollectionVySaySo17SecCertificateRefaGGGMR);
    lazy protocol witness table accessor for type ReversedCollection<[SecCertificateRef]> and conformance <> ReversedCollection<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<ReversedCollection<[SecCertificateRef]>> and conformance <> DefaultIndices<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReversedCollection<[SecCertificateRef]> and conformance <> ReversedCollection<A>()
{
  result = lazy protocol witness table cache variable for type ReversedCollection<[SecCertificateRef]> and conformance <> ReversedCollection<A>;
  if (!lazy protocol witness table cache variable for type ReversedCollection<[SecCertificateRef]> and conformance <> ReversedCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18ReversedCollectionVySaySo17SecCertificateRefaGGMd, &_ss18ReversedCollectionVySaySo17SecCertificateRefaGGMR);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [SecCertificateRef] and conformance [A], &_sSaySo17SecCertificateRefaGMd, &_sSaySo17SecCertificateRefaGMR, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReversedCollection<[SecCertificateRef]> and conformance <> ReversedCollection<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReversedCollection<[SecCertificateRef]>.Index and conformance <> ReversedCollection<A>.Index()
{
  result = lazy protocol witness table cache variable for type ReversedCollection<[SecCertificateRef]>.Index and conformance <> ReversedCollection<A>.Index;
  if (!lazy protocol witness table cache variable for type ReversedCollection<[SecCertificateRef]>.Index and conformance <> ReversedCollection<A>.Index)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18ReversedCollectionV5IndexVySaySo17SecCertificateRefaG_GMd, &_ss18ReversedCollectionV5IndexVySaySo17SecCertificateRefaG_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReversedCollection<[SecCertificateRef]>.Index and conformance <> ReversedCollection<A>.Index);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in CertificateChainView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v7 = v2[5];
  v6 = v2[6];
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAMyAMyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VG_AA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2_A2_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAMyAMyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VG_AA0D0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2_A2_tGGMR);
  closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in CertificateChainView.body.getter(v4, v5, v7, v6, a2 + *(v8 + 44));
  LOBYTE(v6) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA08_PaddingL0VG_AA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2ZtGGASGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA08_PaddingL0VG_AA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2ZtGGASGMR);
  v18 = a2 + *(result + 36);
  *v18 = v6;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA08_PaddingL0VG_AA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2ZtGGASGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA08_PaddingL0VG_AA0G0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2ZtGGASGMR);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<Image, _PaddingLayout>, VStack<TupleView<(<<opaque return type of View.hyphenationDisabled(_:)>>.0, ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>)>>, _FlexFrameLayout>)>>)>>, Text)>>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<LazyVGrid<ForEach<[(String, String)], String, TupleView<(ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>>, _PaddingLayout>, NavigationLink<Text, CertificateChainView>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA08_PaddingL0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2ZtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGAA08_PaddingL0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGG_A2ZtGGMR, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, <<opaque return type of View.hyphenationDisabled(_:)>>.0, <<opaque return type of View.hyphenationDisabled(_:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CertificateDetailsView and conformance CertificateDetailsView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CertificateDetailsView and conformance CertificateDetailsView;
  if (!lazy protocol witness table cache variable for type CertificateDetailsView and conformance CertificateDetailsView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateDetailsView and conformance CertificateDetailsView);
  }

  return result;
}

uint64_t specialized CertificateChainView.formattedExpirationDate(for:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 expirationDateForCertificate_];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v9 setDateStyle_];
  [v9 setTimeStyle_];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v9 stringFromDate_];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return v12;
}

uint64_t sub_23AAB9884(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA08_PaddingK0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA08_PaddingK0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23AAB98F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA08_PaddingK0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGAA08_PaddingK0VG_AA0E0PAAE19hyphenationDisabledyQrSbFQOyAA4TextV_Qo_tGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall SFCertificateViewController.layoutView(with:)(SFCertificatePresentationRequest *with)
{
  v2 = type metadata accessor for CertificateHostingView(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v64 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v66 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v62 - v7;
  v9 = type metadata accessor for CertificateRequest(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = (&v62 - v13);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFLog.sfCertificateViewController.getter(v16);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v67 = v22;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000023AABDE60, &v67);
    _os_log_impl(&dword_23AA9F000, v19, v20, "%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x23EE941B0](v22, -1, -1);
    MEMORY[0x23EE941B0](v21, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v23 = [(SFCertificatePresentationRequest *)with trust];
  v24 = [(SFCertificatePresentationRequest *)with qwacTrust];
  v25 = [(SFCertificatePresentationRequest *)with title];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = [(SFCertificatePresentationRequest *)with message];
  if (v30)
  {
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = [(SFCertificatePresentationRequest *)with help];
  if (v35)
  {
    v36 = v35;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = type metadata accessor for URL();
  (*(*(v38 - 8) + 56))(v8, v37, 1, v38);
  v39 = v65;
  CertificateRequest.init(trust:qwacTrust:title:message:help:)(v23, v24, v27, v29, v32, v34, v8, v65);
  _s10SecurityUI18CertificateRequestVWOcTm_0(v39, v12, type metadata accessor for CertificateRequest);
  v40 = swift_allocObject();
  v41 = v63;
  *(v40 + 16) = v63;
  v42 = v41;
  v43 = v66;
  CertificateHostingView.init(request:dismiss:)(v12, partial apply for closure #1 in SFCertificateViewController.layoutView(with:), v40, v66);
  _s10SecurityUI18CertificateRequestVWOcTm_0(v43, v64, type metadata accessor for CertificateHostingView);
  v44 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy08SecurityB022CertificateHostingViewVGMd, &_s7SwiftUI19UIHostingControllerCy08SecurityB022CertificateHostingViewVGMR));
  v45 = UIHostingController.init(rootView:)();
  [v42 addChildViewController_];
  v46 = [v42 view];
  if (!v46)
  {
    __break(1u);
    goto LABEL_19;
  }

  v47 = v46;
  v48 = [v45 view];
  if (!v48)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v49 = v48;
  [v47 addSubview_];

  v50 = [v45 view];
  if (!v50)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v51 = [v42 view];
  if (!v51)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v52 = v51;
  [v51 bounds];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;

  [v50 setFrame_];
  v61 = [v45 view];

  if (v61)
  {
    [v61 setAutoresizingMask_];

    [v45 didMoveToParentViewController_];
    outlined destroy of CertificateHostingView(v43, type metadata accessor for CertificateHostingView);
    outlined destroy of CertificateHostingView(v39, type metadata accessor for CertificateRequest);
    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_23AABA12C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t outlined destroy of CertificateHostingView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

objc_class *one-time initialization function for resourceBundle()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  resourceBundle.super.isa = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t one-time initialization function for certLargeRoot(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x23EE93110](0x6772614C74726543, a3, resourceBundle.super.isa);
}

uint64_t ImageResource.certLargeRoot.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for ImageResource();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static ImageResource.certLargeRoot.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ImageResource();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

unint64_t type metadata accessor for UIImage()
{
  result = lazy cache variable for type metadata for UIImage;
  if (!lazy cache variable for type metadata for UIImage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIImage);
  }

  return result;
}

uint64_t static UIImage.certLargeRoot.getter(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ImageResource();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIImage();
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, a2);
  (*(v6 + 16))(v8, v9, v5);
  return UIImage.init(resource:)();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x28211C320](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}