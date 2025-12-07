uint64_t _sSo21NSAttributedStringKeyas35_HasCustomAnyHashableRepresentationSCsACP03_toefG0s0fG0VSgyFTW_0(uint64_t a1)
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&_sSo21NSAttributedStringKeyaABSHSCWL_0, _sSo21NSAttributedStringKeyaMa_0, &_sSo21NSAttributedStringKeyaSHSCMc_0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&_sSo21NSAttributedStringKeyaABs20_SwiftNewtypeWrapperSCWL_0, _sSo21NSAttributedStringKeyaMa_0, &_sSo21NSAttributedStringKeyas20_SwiftNewtypeWrapperSCMc_0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance UILayoutPriority@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float protocol witness for RawRepresentable.rawValue.getter in conformance UILayoutPriority@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UILayoutPriority(uint64_t a1)
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSKeyValueChangeKey(uint64_t a1)
{
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey, &protocol conformance descriptor for NSKeyValueChangeKey);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey, &protocol conformance descriptor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void protocol witness for Hashable.hash(into:) in conformance UILayoutPriority()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance UILayoutPriority(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo14NSUserDefaultsC14MusicUtilitiesE9_Observer33_0EE8F48931DDE162065F15584D7CE3A3LLC18HandlerAssociationVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo14NSUserDefaultsC14MusicUtilitiesE9_Observer33_0EE8F48931DDE162065F15584D7CE3A3LLC18HandlerAssociationVGGMd, &_ss18_DictionaryStorageCySSSaySo14NSUserDefaultsC14MusicUtilitiesE9_Observer33_0EE8F48931DDE162065F15584D7CE3A3LLC18HandlerAssociationVGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n_1(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd_1, &_ss18_DictionaryStorageCySSSbGMR_1);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t outlined destroy of (String, Bool)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SbtMd_1, &_sSS_SbtMR_1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for NSValue()
{
  result = _sSo7NSValueCML_0;
  if (!_sSo7NSValueCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo7NSValueCML_0);
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_s5UInt8VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySJs5UInt8VGMd, &_ss18_DictionaryStorageCySJs5UInt8VGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = result;
    *(v3[7] + v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 24;
    v4 = *(v11 - 2);
    v17 = *(v11 - 1);
    v6 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v17);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd, &_ss18_DictionaryStorageCyS2iGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo17NSLayoutAttributeV_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo17NSLayoutAttributeV12CoreGraphics7CGFloatVGMd, &_ss18_DictionaryStorageCySo17NSLayoutAttributeV12CoreGraphics7CGFloatVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd_0, &_ss18_DictionaryStorageCyS2SGMR_0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo14NSUserDefaultsC14MusicUtilitiesE9_Observer33_0EE8F48931DDE162065F15584D7CE3A3LLC16SuiteAssociationV_SDySSSayAH07HandlerP0VGGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo14NSUserDefaultsC14MusicUtilitiesE9_Observer33_0EE8F48931DDE162065F15584D7CE3A3LLC16SuiteAssociationVSDySSSayAH07HandlerP0VGGGMd, &_ss18_DictionaryStorageCySo14NSUserDefaultsC14MusicUtilitiesE9_Observer33_0EE8F48931DDE162065F15584D7CE3A3LLC16SuiteAssociationVSDySSSayAH07HandlerP0VGGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      v9 = v8;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v9;
      *(v3[7] + 8 * result) = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

__n128 __swift_memcpy32_8_2(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8_2(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

BOOL static ApplicationRecordUtilities.isApplicationInstalled(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 0);
  v6 = v5 != 0;

  return v6;
}

uint64_t static ApplicationRecordUtilities.openApplication(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(static ApplicationRecordUtilities.openApplication(identifier:), 0, 0);
}

uint64_t static ApplicationRecordUtilities.openApplication(identifier:)()
{
  v1 = [objc_opt_self() defaultWorkspace];
  v0[20] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();
    v0[21] = v3;
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = static ApplicationRecordUtilities.openApplication(identifier:);
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd_0, _sSccySbs5Error_pGMR_0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = _sSbSo7NSErrorCSgIeyBhyy_SbTz__0;
    v0[13] = &block_descriptor_68;
    v0[14] = v4;
    [v2 openApplicationWithBundleIdentifier:v3 configuration:0 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = static ApplicationRecordUtilities.openApplication(identifier:);
  }

  else
  {
    v2 = static ApplicationRecordUtilities.openApplication(identifier:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static ApplicationRecordUtilities.openApplication(identifier:)(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[20];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t _sSbSo7NSErrorCSgIeyBhyy_SbTz__0(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_2, &_ss5Error_pMR_2);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

NSString one-time initialization function for applicationRegistered()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.applicationRegistered = result;
  return result;
}

uint64_t *NSNotificationName.applicationRegistered.unsafeMutableAddressor()
{
  if (one-time initialization token for applicationRegistered != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.applicationRegistered;
}

id static NSNotificationName.applicationRegistered.getter()
{
  if (one-time initialization token for applicationRegistered != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.applicationRegistered;

  return v1;
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t static ArrayBuilder.buildBlock(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Array();
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return Sequence.flatMap<A>(_:)();
}

double partial apply for closure #1 in static ArrayBuilder.buildBlock(_:)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t static ArrayBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Optional();
  type metadata accessor for _ContiguousArrayStorage();
  v4 = *(v3 - 8);
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  (*(v4 + 16))(v5, a1, v3);
  v6.location = type metadata accessor for Array();
  CFRange.init(_:)(v6);
  swift_getWitnessTable();
  v7 = Sequence.compactMap<A>(_:)();

  return v7;
}

uint64_t Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = swift_allocObject();
  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(a1, v6, a3, a4);
  return v8;
}

uint64_t Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin();
  v33 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  __chkstk_darwin();
  v31 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 40) = _swiftEmptyArrayStorage;
  v13 = (v5 + 40);
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  v43[0] = _swiftEmptyArrayStorage;
  v14 = *(a1 + 16);
  if (v14)
  {
    v29[0] = v5 + 40;
    v29[1] = a1;
    v30 = a2;
    v15 = a1 + 32;
    v37 = a4;

    v38 = _swiftEmptyArrayStorage;
    do
    {
      outlined init with copy of ActionPerforming(v15, aBlock);
      v17 = v40;
      v16 = v41;
      __swift_project_boxed_opaque_existential_0Tm(aBlock, v40);
      v18 = swift_allocObject();
      v19 = v5;
      swift_weakInit();
      v20 = *(v16 + 1);

      v20(partial apply for closure #1 in closure #1 in Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:), v18, v17, v16);

      __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v38 = v43[0];
      v5 = v19;
      v15 += 40;
      --v14;
    }

    while (v14);

    v21 = v38;
    LOBYTE(a2) = v30;
    v13 = v29[0];
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  *v13 = v21;

  if (a2)
  {
    v22 = objc_opt_self();

    if (![v22 isMainThread])
    {
      _sSo17OS_dispatch_queueCMa_2();
      v23 = static OS_dispatch_queue.main.getter();
      v41 = partial apply for closure #2 in ActionMenuView.body.getter;
      v42 = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      v40 = &block_descriptor_69;
      v24 = _Block_copy(aBlock);

      v25 = v31;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWl_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_2, &_sSay8Dispatch0A13WorkItemFlagsVGMR_2);
      _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWl_2();
      v26 = v33;
      v27 = v36;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v24);

      (*(v35 + 8))(v26, v27);
      (*(v32 + 8))(v25, v34);
      return v5;
    }

    (*(v5 + 16))();
  }

  return v5;
}

Swift::Void __swiftcall Whitetail.Binding.setNeedsUpdate()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  os_unfair_lock_lock((v0 + 32));
  swift_endAccess();
  if ((*(v0 + 36) & 1) == 0)
  {
    *(v0 + 36) = 1;
    _sSo17OS_dispatch_queueCMa_2();
    v12 = v5;
    v9 = static OS_dispatch_queue.main.getter();
    aBlock[4] = partial apply for closure #1 in Whitetail.Binding.setNeedsUpdate();
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_3_4;
    v10 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWl_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_2, &_sSay8Dispatch0A13WorkItemFlagsVGMR_2);
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWl_2();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v12);
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v0 + 32));
  swift_endAccess();
}

uint64_t sub_1003E48D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t _sSo17OS_dispatch_queueCMa_2()
{
  result = _sSo17OS_dispatch_queueCML_2;
  if (!_sSo17OS_dispatch_queueCML_2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo17OS_dispatch_queueCML_2);
  }

  return result;
}

uint64_t Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMd_0, &_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMR_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming(a1, inited + 32);
  v9 = swift_allocObject();
  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, a2, a3, a4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v9;
}

uint64_t Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMd_0, &_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMR_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = a1;
  *(inited + 40) = 0;
  v9 = swift_allocObject();
  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, a2, a3, a4);
  return v9;
}

uint64_t Whitetail.Binding.add(_:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = *(v4 + 8);

  v6(partial apply for closure #1 in Whitetail.Binding.add(_:), v5, v3, v4);
  if (v2)
  {
  }

  else
  {

    swift_beginAccess();
    swift_unknownObjectRetain();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }
}

double closure #1 in closure #1 in Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Whitetail.Binding.setNeedsUpdate()();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Whitetail.Binding.add(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    v3 = a1._rawValue + 32;
    do
    {
      outlined init with copy of ActionPerforming(v3, v9);
      v5 = v10;
      v4 = v11;
      __swift_project_boxed_opaque_existential_0Tm(v9, v10);
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = *(v4 + 8);

      v8 = v12;
      v7(partial apply for closure #1 in closure #1 in Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:), v6, v5, v4);
      if (v8)
      {

        v12 = 0;
      }

      else
      {
        v12 = 0;

        swift_beginAccess();
        swift_unknownObjectRetain();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      v3 += 40;
      --v2;
    }

    while (v2);
  }
}

uint64_t closure #1 in Whitetail.Binding.setNeedsUpdate()(uint64_t a1)
{
  swift_beginAccess();
  os_unfair_lock_lock((a1 + 32));
  *(a1 + 36) = 0;
  os_unfair_lock_unlock((a1 + 32));
  v2 = swift_endAccess();
  return (*(a1 + 16))(v2);
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWl_1()
{
  result = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_2;
  if (!_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_2)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_2);
  }

  return result;
}

unint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWl_2()
{
  result = _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_2;
  if (!_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_2, &_sSay8Dispatch0A13WorkItemFlagsVGMR_2);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_2);
  }

  return result;
}

uint64_t Whitetail.Binding.description.getter()
{
  _StringGuts.grow(_:)(21);
  v0._countAndFlagsBits = 60;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 8250;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 0x6576726573626F20;
  v3._object = 0xEB000000003D7372;
  String.append(_:)(v3);
  swift_beginAccess();

  v4 = Array.description.getter();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0;
}

uint64_t Whitetail.Binding.deinit()
{

  return v0;
}

uint64_t Whitetail.Binding.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id DistributedNotificationTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_allocWithZone(MusicDarwinNotificationObserver);
  v11[4] = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_12_1;
  v8 = _Block_copy(v11);

  v9 = [v7 initWithNotificationName:a3 handler:v8];
  _Block_release(v8);

  return v9;
}

id protocol witness for BindingTrigger.createObserver(_:) in conformance DistributedNotificationTrigger(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_allocWithZone(MusicDarwinNotificationObserver);
  v11[4] = partial apply for closure #2 in ActionMenuView.body.getter;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_44;
  v8 = _Block_copy(v11);

  v9 = [v7 initWithNotificationName:v5 handler:v8];
  _Block_release(v8);

  return v9;
}

uint64_t NotificationTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  type metadata accessor for NotificationObserver();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v8 + 16) = a3;
  swift_unknownObjectWeakAssign();
  *(v8 + 32) = 1;
  *(v8 + 48) = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
  *(v8 + 56) = v7;
  v9 = objc_opt_self();

  v10 = a3;

  v11 = [v9 defaultCenter];
  *(v8 + 40) = v11;
  v12 = *(v8 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = v11;

  v15 = v12;
  [v14 addObserver:v8 selector:"handleNotification:" name:v15 object:Strong];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1003E54E4()
{

  return swift_deallocObject();
}

uint64_t KeyValueObservationTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a1;
  v11[5] = a2;
  v12 = a3;

  v13 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  return v13;
}

uint64_t UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(*(a4 - 8) + 8))(a3, a4);
  return a1;
}

uint64_t UserDefaultsKeyValueTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = _sSo14NSUserDefaultsC14MusicUtilitiesE7observe_2in12valueChangedAbCE20KeyValueRegistrationCx_AbCE5SuiteOyypSgctKSyRzlFZSS_Tt2g5(a5, a6, a3, a4, partial apply for closure #2 in ActionMenuView.body.getter, v12);

  return v13;
}

uint64_t _sSo14NSUserDefaultsC14MusicUtilitiesE7observe_2in12valueChangedAbCE20KeyValueRegistrationCx_AbCE5SuiteOyypSgctKSyRzlFZSS_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v10 = type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier(0) - 8;
  v32 = *v10;
  v11 = *(v32 + 64);
  __chkstk_darwin();
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v31 - v13;
  __chkstk_darwin();
  v16 = &v31 - v15;
  v35 = a1;
  v36 = a2;

  v17 = String.init<A>(_:)();
  v19 = v18;
  UUID.init()();
  v20 = &v16[*(v10 + 28)];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v16[*(v10 + 32)];
  *v21 = v17;
  v21[1] = v19;
  v22 = one-time initialization token for shared;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static NSUserDefaults._Observer.shared;
  v24 = *(static NSUserDefaults._Observer.shared + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v24 + 16));
  v25 = v37;
  closure #1 in NSUserDefaults._Observer.addObserver(identifiedBy:handler:)(v23, v16, v33, v34);
  os_unfair_lock_unlock(*(v24 + 16));
  if (v25)
  {
    return outlined destroy of NSUserDefaults.KeyValueRegistration.Identifier(v16);
  }

  outlined init with copy of NSUserDefaults.KeyValueRegistration.Identifier(v16, v14);
  outlined init with take of NSUserDefaults.KeyValueRegistration.Identifier(v16, v12);
  v27 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v28 = swift_allocObject();
  outlined init with take of NSUserDefaults.KeyValueRegistration.Identifier(v12, v28 + v27);
  type metadata accessor for NSUserDefaults.KeyValueRegistration(0);
  v29 = swift_allocObject();
  outlined init with take of NSUserDefaults.KeyValueRegistration.Identifier(v14, v29 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier);
  result = v29;
  v30 = (v29 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);
  *v30 = partial apply for closure #1 in static NSUserDefaults.observe<A>(_:in:valueChanged:);
  v30[1] = v28;
  return result;
}

uint64_t protocol witness for BindingTrigger.createObserver(_:) in conformance UserDefaultsKeyValueTrigger(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = _sSo14NSUserDefaultsC14MusicUtilitiesE7observe_2in12valueChangedAbCE20KeyValueRegistrationCx_AbCE5SuiteOyypSgctKSyRzlFZSS_Tt2g5(v8, v7, v5, v6, partial apply for closure #2 in ActionMenuView.body.getter, v9);

  return v10;
}

uint64_t sub_1003E5AD8()
{

  return swift_deallocObject();
}

uint64_t type metadata instantiation function for KeyValueObservationTrigger(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for UserDefaultsKeyValueTrigger(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UserDefaultsKeyValueTrigger(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t outlined destroy of NSUserDefaults.KeyValueRegistration.Identifier(uint64_t a1)
{
  v2 = type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of NSUserDefaults.KeyValueRegistration.Identifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of NSUserDefaults.KeyValueRegistration.Identifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E5D9C()
{
  v1 = *(type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

void partial apply for closure #1 in static NSUserDefaults.observe<A>(_:in:valueChanged:)()
{
  v1 = *(type metadata accessor for NSUserDefaults.KeyValueRegistration.Identifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  closure #1 in static NSUserDefaults.observe<A>(_:in:valueChanged:)(v2);
}

uint64_t NotificationObserver.__allocating_init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v11 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v11 + 32) = a3;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  if (a4)
  {
    v12 = &selRef_defaultCenter;
  }

  else
  {
    v12 = &selRef_default;
  }

  v13 = objc_opt_self();
  v14 = a1;

  v15 = [v13 *v12];
  *(v11 + 40) = v15;
  v16 = *(v11 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = v15;

  v19 = v16;
  [v18 addObserver:v11 selector:"handleNotification:" name:v19 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v11;
}

uint64_t NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectWeakInit();
  *(v6 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v6 + 32) = a3;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  if (a4)
  {
    v12 = &selRef_defaultCenter;
  }

  else
  {
    v12 = &selRef_default;
  }

  v13 = objc_opt_self();
  v14 = a1;

  v15 = [v13 *v12];
  *(v6 + 40) = v15;
  v16 = *(v6 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = v15;

  v19 = v16;
  [v18 addObserver:v6 selector:"handleNotification:" name:v19 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v6;
}

uint64_t NotificationObserver.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v1;
  v5 = v2;
  [v4 removeObserver:v0 name:v5 object:Strong];

  swift_unknownObjectRelease();
  outlined destroy of weak ActionsObserver?(v0 + 24);

  return v0;
}

uint64_t NotificationObserver.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v1;
  v5 = v2;
  [v4 removeObserver:v0 name:v5 object:Strong];

  swift_unknownObjectRelease();
  outlined destroy of weak ActionsObserver?(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t NotificationObserver.handleNotification(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v27 = *(v29 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin();
  v14 = &v24 - v12;
  if (*(v1 + 32) != 1)
  {
    return (*(v1 + 48))(a1, v13);
  }

  v25 = v4;
  v26 = v3;
  v15 = *(v9 + 16);
  v15(&v24 - v12, a1, v8, v13);
  (v15)(v11, v14, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  (*(v9 + 32))(v17 + v16, v14, v8);
  v18 = objc_opt_self();

  if ([v18 isMainThread])
  {
    (*(v1 + 48))(v11);
  }

  else
  {
    type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_2, OS_dispatch_queue_ptr);
    v24 = static OS_dispatch_queue.main.getter();
    aBlock[4] = partial apply for closure #1 in NotificationObserver.handleNotification(_:);
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_70;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWl_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_2, &_sSay8Dispatch0A13WorkItemFlagsVGMR_2);
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWl_2();
    v21 = v28;
    v22 = v26;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v25 + 8))(v21, v22);
    (*(v27 + 8))(v7, v29);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t NotificationObserver.debugDescription.getter()
{
  v1 = v0;
  v2 = 7104878;
  _StringGuts.grow(_:)(65);
  v3._object = 0x80000001004D56B0;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  String.append(_:)(v3);
  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x3D7463656A626F20;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([Strong respondsToSelector:"description"])
    {
      v8 = [v7 description];
      swift_unknownObjectRelease();
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v10 = 0xE300000000000000;
LABEL_6:
  v11._countAndFlagsBits = v2;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x3D7265746E656320;
  v12._object = 0xE800000000000000;
  String.append(_:)(v12);
  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_1, NSObject_ptr);
  v13 = *(v1 + 40);
  v14 = [objc_opt_self() defaultCenter];
  v15 = static NSObject.== infix(_:_:)();

  if (v15)
  {
    v16 = 0xE700000000000000;
    v17 = 0x746C7561666564;
  }

  else
  {
    v18 = [v13 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v20;

    v17 = v19;
  }

  v21 = v16;
  String.append(_:)(*&v17);

  v22._countAndFlagsBits = 62;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return 0;
}

uint64_t sub_1003E6AB8()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t BrightnessManager.__allocating_init(windowScene:)(void *a1)
{
  v2 = swift_allocObject();
  BrightnessManager.init(windowScene:)(a1);
  return v2;
}

void *BrightnessManager.init(windowScene:)(void *a1)
{
  v1[2] = [objc_allocWithZone(BrightnessSystemClient) init];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(&outlined read-only object #0 of BrightnessManager.init(windowScene:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SdtMd, &_sSS_SdtMR);
  swift_arrayDestroy();
  v1[3] = v3;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(&outlined read-only object #1 of BrightnessManager.init(windowScene:));
  swift_arrayDestroy();
  v1[4] = v4;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n_1(&outlined read-only object #2 of BrightnessManager.init(windowScene:));
  outlined destroy of (String, Bool)(&unk_1005CDA40);
  v1[5] = v5;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n_1(&outlined read-only object #3 of BrightnessManager.init(windowScene:));
  outlined destroy of (String, Bool)(&unk_1005CDA78);
  v1[6] = v6;
  v1[7] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_1, &_ss23_ContiguousArrayStorageCyyXlGMR_1);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1004F2FF0;
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v8 + 16) = UISceneWillDeactivateNotification;
  swift_unknownObjectWeakAssign();
  *(v8 + 32) = 1;
  *(v8 + 48) = partial apply for closure #1 in BrightnessManager.init(windowScene:);
  *(v8 + 56) = v7;
  v9 = objc_opt_self();
  v10 = a1;

  swift_retain_n();
  v11 = UISceneWillDeactivateNotification;
  v12 = [v9 defaultCenter];
  *(v8 + 40) = v12;
  v13 = *(v8 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = v12;

  v16 = v13;
  [v15 addObserver:v8 selector:"handleNotification:" name:v16 object:Strong];

  swift_unknownObjectRelease();
  *(v27 + 32) = v8;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v10;

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v19 + 16) = UISceneDidActivateNotification;
  swift_unknownObjectWeakAssign();
  *(v19 + 32) = 1;
  *(v19 + 48) = partial apply for closure #2 in BrightnessManager.init(windowScene:);
  *(v19 + 56) = v17;
  swift_retain_n();
  v20 = UISceneDidActivateNotification;
  v21 = [v9 defaultCenter];
  *(v19 + 40) = v21;
  v22 = *(v19 + 16);
  v23 = swift_unknownObjectWeakLoadStrong();
  v24 = v21;

  v25 = v22;
  [v24 addObserver:v19 selector:"handleNotification:" name:v25 object:v23];

  swift_unknownObjectRelease();
  *(v27 + 40) = v19;

  v1[7] = v27;

  return v1;
}

Swift::Void __swiftcall BrightnessManager.resetBrightnessToSystemDefault()()
{
  v1 = *(v0 + 16);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setProperty:isa forKey:v3];

  v4 = Dictionary._bridgeToObjectiveC()().super.isa;
  v5 = String._bridgeToObjectiveC()();
  [v1 setProperty:v4 forKey:v5];
}

double closure #1 in BrightnessManager.init(windowScene:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3();
  }

  return result;
}

Swift::Void __swiftcall BrightnessManager.increaseBrightnessIfNeeded()()
{
  v1 = *(v0 + 16);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setProperty:isa forKey:v3];

  v4 = Dictionary._bridgeToObjectiveC()().super.isa;
  v5 = String._bridgeToObjectiveC()();
  [v1 setProperty:v4 forKey:v5];
}

uint64_t BrightnessManager.deinit()
{

  return v0;
}

uint64_t BrightnessManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1003E7340()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void Collection<>.compare<A>(with:comparator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v152 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v141 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v159 = &v116 - v16;
  v129 = swift_getAssociatedTypeWitness();
  v118 = *(v129 - 8);
  __chkstk_darwin();
  v128 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v150 = &v116 - v18;
  v19 = *(a7 + 8);
  v123 = type metadata accessor for EnumeratedSequence();
  __chkstk_darwin();
  v122 = &v116 - v20;
  v124 = v19;
  v137 = type metadata accessor for EnumeratedSequence.Iterator();
  v120 = *(v137 - 1);
  __chkstk_darwin();
  v133 = &v116 - v21;
  v22 = *(a6 + 8);
  v23 = swift_getAssociatedTypeWitness();
  v127 = *(v23 - 8);
  __chkstk_darwin();
  v140 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v155 = &v116 - v25;
  v146 = type metadata accessor for CollectionComparisonOperation(0, v23, a8, v26);
  __chkstk_darwin();
  v135 = (&v116 - v27);
  v156 = v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v153 = type metadata accessor for Optional();
  v131 = *(v153 - 1);
  __chkstk_darwin();
  v132 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v147 = &v116 - v29;
  __chkstk_darwin();
  v31 = (&v116 - v30);
  v126 = type metadata accessor for EnumeratedSequence();
  __chkstk_darwin();
  v125 = &v116 - v32;
  v136 = v22;
  v138 = type metadata accessor for EnumeratedSequence.Iterator();
  v121 = *(v138 - 1);
  __chkstk_darwin();
  v144 = &v116 - v33;
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = a6;
  v34[5] = a7;
  v34[6] = a8;
  if (a2)
  {
    v34[7] = a2;
    v34[8] = a3;
    v35 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Sequence.Element, @in_guaranteed A.Sequence.Element) -> (@unowned Bool);
  }

  else
  {
    v35 = partial apply for closure #1 in implicit closure #1 in Collection<>.compare<A>(with:comparator:);
  }

  v139 = v35;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a2, a3);
  v142 = v34;

  v148 = a4;
  v134 = a6;
  v36 = dispatch thunk of Collection.count.getter();
  v151 = a5;
  v37 = dispatch thunk of Collection.count.getter();
  v163 = static Array._allocateUninitialized(_:)();
  v130 = v37;
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v40 = type metadata accessor for Array();
  v41 = specialized Array.init(repeating:count:)(&v163, v39, v40);

  v163 = v41;
  if (__OFADD__(v36, 1))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v143 = v36;
  v149 = a7;
  v117 = a8;
  v158 = v40;
  v157 = type metadata accessor for Array();
  v42 = specialized Array.init(repeating:count:)(&v163, v36 + 1, v157);

  v165 = v42;
  v164 = static Array._allocateUninitialized(_:)();
  Sequence.enumerated()();
  EnumeratedSequence.makeIterator()();
  v43 = v131 + 4;
  v44 = TupleTypeMetadata2;
  v136 = (v127 + 32);
  while (1)
  {
    v45 = v147;
    EnumeratedSequence.Iterator.next()();
    v46 = *v43;
    (*v43)(v31, v45, v153);
    v47 = *(*(v44 - 8) + 48);
    if (v47(v31, 1, v44) == 1)
    {
      break;
    }

    v48 = *v31;
    v49 = *v136;
    v50 = v31 + *(v44 + 48);
    v51 = v155;
    v52 = v156;
    (*v136)(v155, v50, v156);
    v53 = v135;
    *v135 = 0;
    *(v53 + 8) = 1;
    v53[2] = v48;
    (v49)(v53 + *(v146 + 40), v51, v52);
    Array.append(_:)();
    v54 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v55 = v164;
    type metadata accessor for Array();

    Array._makeMutableAndUnique()();
    v56 = v165;
    Array._checkSubscript_mutating(_:)(v54);
    v57 = v56 + 8 * v54;
    Array._makeMutableAndUnique()();
    v58 = *(v57 + 32);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v60 = v58 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v60 = v58;
    }

    if (!*(v60 + 16))
    {
      goto LABEL_51;
    }

    *(*(v57 + 32) + 32) = v55;

    v44 = TupleTypeMetadata2;
  }

  (*(v121 + 8))(v144, v138);

  v164 = static Array._allocateUninitialized(_:)();
  Sequence.enumerated()();
  EnumeratedSequence.makeIterator()();
  v61 = v147;
  v62 = TupleTypeMetadata2;
  EnumeratedSequence.Iterator.next()();
  v63 = v132;
  v46(v132, v61, v153);
  if (v47(v63, 1, v62) != 1)
  {
    v144 = *v136;
    v131 = v43;
    do
    {
      v64 = *v63;
      v65 = v63 + *(v62 + 48);
      v66 = v155;
      v67 = v156;
      v68 = v144;
      (v144)(v155, v65, v156);
      v69 = v135;
      *v135 = 1;
      *(v69 + 8) = 1;
      v69[2] = v64;
      (v68)(v69 + *(v146 + 40), v66, v67);
      Array.append(_:)();
      v70 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_52;
      }

      v71 = v164;
      type metadata accessor for Array();

      Array._makeMutableAndUnique()();
      v72 = v165;
      v73 = _swift_isClassOrObjCExistentialType();
      v74 = v72 & 0xFFFFFFFFFFFFFF8;
      if ((v73 & 1) == 0)
      {
        v74 = v72;
      }

      if (!*(v74 + 16))
      {
        goto LABEL_53;
      }

      Array._makeMutableAndUnique()();
      Array._checkSubscript_mutating(_:)(v70);
      *(*(v72 + 32) + 8 * v70 + 32) = v71;

      v75 = v147;
      EnumeratedSequence.Iterator.next()();
      v63 = v132;
      v46(v132, v75, v153);
      v62 = TupleTypeMetadata2;
    }

    while (v47(v63, 1, TupleTypeMetadata2) != 1);
  }

  (*(v120 + 8))(v133, v137);

  v76 = v143;
  if (!v143 || !v130)
  {
LABEL_48:

    Array.subscript.getter();
    Array.subscript.getter();

    return;
  }

  dispatch thunk of Collection.startIndex.getter();
  if (v76 >= 1 && v130 >= 1)
  {
    v153 = (v127 + 16);
    v138 = (v127 + 8);
    v144 = (v119 + 8);
    v137 = (v119 + 32);
    v133 = (v118 + 8);
    v132 = (v118 + 32);
    v77 = 1;
    while (1)
    {
      dispatch thunk of Collection.startIndex.getter();
      v147 = (v77 - 1);
      v78 = 1;
      TupleTypeMetadata2 = v77;
      while (1)
      {
        v79 = dispatch thunk of Collection.subscript.read();
        v80 = *v153;
        v81 = v155;
        v82 = v156;
        (*v153)(v155);
        v79(&v163, 0);
        v83 = dispatch thunk of Collection.subscript.read();
        v84 = v140;
        v80(v140);
        v83(&v163, 0);
        v139(&v163, v81, v84);
        v85 = *v138;
        (*v138)(v84, v82);
        v85(v81, v82);
        if (v163 == 1)
        {
          Array.subscript.getter();
          Array.subscript.getter();

          v86 = v162;
          type metadata accessor for Array();
          Array._makeMutableAndUnique()();
          v87 = v165;
          Array._checkSubscript_mutating(_:)(v78);
          Array._makeMutableAndUnique()();
          v88 = TupleTypeMetadata2;
          Array._checkSubscript_mutating(_:)(TupleTypeMetadata2);
          *(*(v87 + 8 * v78 + 32) + 8 * v88 + 32) = v86;
        }

        else
        {
          v89 = (v78 - 1);
          Array.subscript.getter();
          Array.subscript.getter();

          Array.subscript.getter();
          Array.subscript.getter();

          Array.subscript.getter();
          Array.subscript.getter();

          v90 = Array.count.getter();
          v91 = Array.count.getter();
          v92 = Array.count.getter();
          v93 = v91 >= v90 ? v90 : v91;
          v94 = v92 >= v93 ? v93 : v92;
          if (v90 == v94)
          {

            v95 = dispatch thunk of Collection.subscript.read();
            v96 = v155;
            v97 = v156;
            v80(v155);
            v95(&v163, 0);
            v98 = v135;
            *v135 = 0;
            v99 = &v162;
          }

          else
          {

            if (Array.count.getter() == v94)
            {

              v100 = dispatch thunk of Collection.subscript.read();
              v96 = v155;
              v97 = v156;
              v80(v155);
              v100(&v163, 0);
              v98 = v135;
              *v135 = 1;
              v99 = &v161;
              v89 = v147;
            }

            else
            {

              v101 = dispatch thunk of Collection.subscript.read();
              v96 = v155;
              v97 = v156;
              v80(v155);
              v101(&v163, 0);
              v98 = v135;
              *v135 = 2;
              v99 = &v160;
            }
          }

          v88 = TupleTypeMetadata2;
          *(v98 + 8) = 1;
          v98[2] = v89;
          (*v136)(v98 + *(v146 + 40), v96, v97);
          Array.append(_:)();
          v102 = *v99;
          type metadata accessor for Array();
          Array._makeMutableAndUnique()();
          v103 = v165;
          Array._checkSubscript_mutating(_:)(v78);
          Array._makeMutableAndUnique()();
          Array._checkSubscript_mutating(_:)(v88);
          *(*(v103 + 8 * v78 + 32) + 8 * v88 + 32) = v102;
        }

        v104 = v141;
        v105 = v159;
        v106 = v148;
        dispatch thunk of Collection.index(_:offsetBy:)();
        v107 = *v144;
        v108 = AssociatedTypeWitness;
        (*v144)(v105, AssociatedTypeWitness);
        (*v137)(v105, v104, v108);
        if (v78 == v143)
        {
          break;
        }

        v38 = __OFADD__(v78++, 1);
        if (v38)
        {
          __break(1u);
          goto LABEL_50;
        }
      }

      v109 = v128;
      v110 = v150;
      dispatch thunk of Collection.index(_:offsetBy:)();
      v107(v159, AssociatedTypeWitness);
      v111 = *v133;
      v112 = v129;
      (*v133)(v110, v129);
      (*v132)(v110, v109, v112);
      if (v88 == v130)
      {
        break;
      }

      v38 = __OFADD__(v88, 1);
      v77 = v88 + 1;
      if (v38)
      {
        __break(1u);
        goto LABEL_48;
      }
    }

    Array.subscript.getter();
    Array.subscript.getter();

    v161 = Array.init()();
    __chkstk_darwin();
    v113 = v151;
    *(&v116 - 6) = v106;
    *(&v116 - 5) = v113;
    v114 = v149;
    *(&v116 - 4) = v115;
    *(&v116 - 3) = v114;
    *(&v116 - 2) = v117;
    swift_getWitnessTable();
    Sequence.reduce<A>(into:_:)();

    v111(v150, v129);

    return;
  }

LABEL_56:
  __break(1u);
}

uint64_t partial apply for closure #1 in implicit closure #1 in Collection<>.compare<A>(with:comparator:)@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  *a3 = result & 1;
  return result;
}

uint64_t CollectionComparisonOperation.init(type:index:value:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  v10 = type metadata accessor for CollectionComparisonOperation(0, a5, a6, a4);
  v11 = *(*(a5 - 8) + 32);
  v12 = a7 + *(v10 + 40);

  return v11(v12, a4, a5);
}

uint64_t closure #2 in Collection<>.compare<A>(with:comparator:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a6;
  v42 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v40 = &v35 - v13;
  v15 = type metadata accessor for CollectionComparisonOperation(0, AssociatedTypeWitness, a7, v14);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v19 = __chkstk_darwin();
  v20 = &v35 - v17;
  if (*(a2 + 8) != 1)
  {
    goto LABEL_5;
  }

  if (*a2)
  {
    if (*a2 == 1)
    {
      v35 = 1;
      v36 = v18;
      goto LABEL_8;
    }

LABEL_5:
    (*(v16 + 16))(&v35 - v17, a2, v15, v19);
    type metadata accessor for Array();
    return Array.append(_:)();
  }

  v35 = 0;
  v36 = v18;
LABEL_8:
  v38 = &v35;
  v39 = a1;
  v47 = *a1;
  __chkstk_darwin();
  v37 = &v35 - 10;
  v23 = v42;
  v22 = v43;
  *(&v35 - 8) = a3;
  *(&v35 - 7) = v23;
  *(&v35 - 6) = a5;
  *(&v35 - 5) = v22;
  *(&v35 - 4) = a7;
  *(&v35 - 3) = v24;
  *(&v35 - 16) = v25;
  *(&v35 - 1) = a2;
  v26 = type metadata accessor for Array();

  swift_getWitnessTable();
  v27 = v44;
  Collection.firstIndex(where:)();

  if (v46 == 1)
  {
    (*(v16 + 16))(v20, a2, v15);
    return Array.append(_:)();
  }

  else
  {
    v43 = v45;
    Array.subscript.getter();
    v37 = *(v20 + 2);
    v38 = v26;
    v42 = *(v16 + 8);
    v42(v20, v15);
    v44 = v27;
    v28 = *(a2 + 16);
    v29 = v40;
    v30 = v41;
    (*(v41 + 16))(v40, a2 + *(v15 + 40), AssociatedTypeWitness);
    v31 = v36;
    v32 = v37;
    if (v35)
    {
      v33 = v37;
    }

    else
    {
      v33 = v28;
    }

    if (v35)
    {
      v32 = v28;
    }

    *v36 = v33;
    *(v31 + 8) = 0;
    v31[2] = v32;
    (*(v30 + 32))(v31 + *(v15 + 40), v29, AssociatedTypeWitness);
    Array.remove(at:)();
    v34 = v42;
    v42(v20, v15);
    (*(v16 + 16))(v20, v31, v15);
    Array.append(_:)();
    return v34(v31, v15);
  }
}

BOOL static CollectionComparisonOperationType.__derived_enum_equals(_:_:)(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (!a1)
  {
    return (a4 & 1) != 0 && !a3;
  }

  if (a1 == 1)
  {
    return (a4 & 1) != 0 && a3 == 1;
  }

  return (a4 & 1) != 0 && a3 > 1;
}

uint64_t closure #1 in closure #2 in Collection<>.compare<A>(with:comparator:)(uint64_t *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a1;
  if (*(a1 + 8) != 1)
  {
    if ((a3 & 1) != 0 || v9 != a2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (!v9)
  {
    if ((a3 & 1) == 0 || a2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (v9 != 1)
  {
    if ((a3 & 1) == 0 || a2 < 2)
    {
      return 0;
    }

LABEL_15:
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for CollectionComparisonOperation(0, AssociatedTypeWitness, a9, v11);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if ((a3 & 1) != 0 && a2 == 1)
  {
    goto LABEL_15;
  }

  return 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CollectionComparisonOperationType(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t CollectionComparisonOperationType.description.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x747265736E69;
    if (a1 != 1)
    {
      v2 = 0x7574697473627573;
    }

    if (a1)
    {
      return v2;
    }

    else
    {
      return 0x6574656C6564;
    }
  }

  else
  {
    v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v4);

    return 0x6F72662065766F6DLL;
  }
}

void UICollectionView.performBatchUpdates<A>(using:modelUpdateHandler:forSectionAt:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a1;
  v16[7] = a4;
  v16[8] = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in UICollectionView.performBatchUpdates<A>(using:modelUpdateHandler:forSectionAt:completion:);
  *(v17 + 24) = v16;
  v26 = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
  v27 = v17;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = thunk for @escaping @callee_guaranteed () -> ();
  v25 = &block_descriptor_71;
  v18 = _Block_copy(&aBlock);

  v19 = v8;

  if (a5)
  {
    v26 = a5;
    v27 = a6;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v25 = &block_descriptor_12_2;
    a5 = _Block_copy(&aBlock);
  }

  [v19 performBatchUpdates:v18 completion:a5];
  _Block_release(a5);
  _Block_release(v18);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t closure #1 in UICollectionView.performBatchUpdates<A>(using:modelUpdateHandler:forSectionAt:completion:)(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v50 = a5;
  v46 = *(type metadata accessor for IndexPath() - 8);
  __chkstk_darwin();
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v39 - v13;
  v15 = a6;
  v17 = v16;
  v19 = type metadata accessor for CollectionComparisonOperation(0, v15, a7, v18);
  v51 = *(v19 - 8);
  v40 = *(v51 + 64);
  v20 = __chkstk_darwin();
  v22 = &v39 - v21;
  a1(v20);
  v52 = a3;
  result = Array.endIndex.getter();
  if (result)
  {
    v24 = 0;
    v49 = (v51 + 16);
    v47 = (v51 + 8);
    v42 = v46 + 16;
    v41 = xmmword_1004F2400;
    v43 = v14;
    v44 = a4;
    v48 = (v46 + 8);
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        result = (*(v51 + 16))(v22, v52 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v24, v19);
        v32 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v40 != 8)
        {
          __break(1u);
          return result;
        }

        v53 = result;
        (*v49)(v22, &v53, v19);
        result = swift_unknownObjectRelease();
        v32 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_17:
          __break(1u);
          return result;
        }
      }

      v33 = v17;
      IndexPath.init(row:section:)();
      v34 = *v22;
      v35 = v22[8];
      (*v47)(v22, v19);
      if (v35 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR);
        v36 = v46;
        v37 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = v41;
        (*(v36 + 16))(v38 + v37, v14, v33);
        v30.super.isa = Array._bridgeToObjectiveC()().super.isa;

        if (v34)
        {
          if (v34 == 1)
          {
            [v50 insertItemsAtIndexPaths:v30.super.isa];
          }

          else
          {
            [v50 reloadItemsAtIndexPaths:v30.super.isa];
          }
        }

        else
        {
          [v50 deleteItemsAtIndexPaths:v30.super.isa];
        }

        v14 = v43;
        a4 = v44;
        v17 = v33;
        v29 = v48;
      }

      else
      {
        v25 = v45;
        IndexPath.init(row:section:)();
        v26 = v19;
        v27 = a4;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v17 = v33;
        v29 = v48;
        (*v48)(v25, v17);
        v30.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v50 moveItemAtIndexPath:isa toIndexPath:v30.super.isa];

        a4 = v27;
        v19 = v26;
      }

      (*v29)(v14, v17);
      result = Array.endIndex.getter();
      ++v24;
    }

    while (v32 != result);
  }

  return result;
}

void UITableView.performBatchUpdates<A>(using:modelUpdateHandler:forSectionAt:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a1;
  v16[7] = a4;
  v16[8] = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in UITableView.performBatchUpdates<A>(using:modelUpdateHandler:forSectionAt:completion:);
  *(v17 + 24) = v16;
  v26 = partial apply for closure #2 in ActionMenuView.body.getter;
  v27 = v17;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = thunk for @escaping @callee_guaranteed () -> ();
  v25 = &block_descriptor_22;
  v18 = _Block_copy(&aBlock);

  v19 = v8;

  if (a5)
  {
    v26 = a5;
    v27 = a6;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v25 = &block_descriptor_25_1;
    a5 = _Block_copy(&aBlock);
  }

  [v19 performBatchUpdates:v18 completion:a5];
  _Block_release(a5);
  _Block_release(v18);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t closure #1 in UITableView.performBatchUpdates<A>(using:modelUpdateHandler:forSectionAt:completion:)(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v50 = a5;
  v46 = *(type metadata accessor for IndexPath() - 8);
  __chkstk_darwin();
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v39 - v13;
  v15 = a6;
  v17 = v16;
  v19 = type metadata accessor for CollectionComparisonOperation(0, v15, a7, v18);
  v51 = *(v19 - 8);
  v40 = *(v51 + 64);
  v20 = __chkstk_darwin();
  v22 = &v39 - v21;
  a1(v20);
  v52 = a3;
  result = Array.endIndex.getter();
  if (result)
  {
    v24 = 0;
    v49 = (v51 + 16);
    v47 = (v51 + 8);
    v42 = v46 + 16;
    v41 = xmmword_1004F2400;
    v43 = v14;
    v44 = a4;
    v48 = (v46 + 8);
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        result = (*(v51 + 16))(v22, v52 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v24, v19);
        v32 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v40 != 8)
        {
          __break(1u);
          return result;
        }

        v53 = result;
        (*v49)(v22, &v53, v19);
        result = swift_unknownObjectRelease();
        v32 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_17:
          __break(1u);
          return result;
        }
      }

      v33 = v17;
      IndexPath.init(row:section:)();
      v34 = *v22;
      v35 = v22[8];
      (*v47)(v22, v19);
      if (v35 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR);
        v36 = v46;
        v37 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = v41;
        (*(v36 + 16))(v38 + v37, v14, v33);
        v30.super.isa = Array._bridgeToObjectiveC()().super.isa;

        if (v34)
        {
          if (v34 == 1)
          {
            [v50 insertRowsAtIndexPaths:v30.super.isa withRowAnimation:100];
          }

          else
          {
            [v50 reloadRowsAtIndexPaths:v30.super.isa withRowAnimation:100];
          }
        }

        else
        {
          [v50 deleteRowsAtIndexPaths:v30.super.isa withRowAnimation:100];
        }

        v14 = v43;
        a4 = v44;
        v17 = v33;
        v29 = v48;
      }

      else
      {
        v25 = v45;
        IndexPath.init(row:section:)();
        v26 = v19;
        v27 = a4;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v17 = v33;
        v29 = v48;
        (*v48)(v25, v17);
        v30.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v50 moveRowAtIndexPath:isa toIndexPath:v30.super.isa];

        a4 = v27;
        v19 = v26;
      }

      (*v29)(v14, v17);
      result = Array.endIndex.getter();
      ++v24;
    }

    while (v32 != result);
  }

  return result;
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

uint64_t specialized Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static Array._allocateUninitialized(_:)();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    type metadata accessor for Array();
    return v8;
  }

  return result;
}

uint64_t sub_1003E9FD0()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Sequence.Element, @in_guaranteed A.Sequence.Element) -> (@unowned Bool)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 56))();
  *a1 = result & 1;
  return result;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_5Tm()
{

  return swift_deallocObject();
}

uint64_t type metadata completion function for CollectionComparisonOperation(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CollectionComparisonOperation(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
  }

  v8 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for CollectionComparisonOperation(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 24) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *(a1 + v9) = v14;
              }

              else
              {
                *(a1 + v9) = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        *(a1 + 2) = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      *(a1 + v9) = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *(a1 + v9) = 0;
  }

  else if (v12)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v8 + 24) & ~v8;

  v18(v19);
}

uint64_t __swift_memcpy9_8_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t ControlEventHandler.__allocating_init<A>(control:events:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ControlEventHandler.init<A>(control:events:handler:)(a1, a2, a3, a4, a5);
  return v10;
}

void *ControlEventHandler.init<A>(control:events:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5[3] = a2;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v5[4] = partial apply for closure #1 in ControlEventHandler.init<A>(control:events:handler:);
  v5[5] = v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;

    [v13 addTarget:v5 action:"handleActionFromControl:" forControlEvents:a2];
  }

  return v5;
}

void closure #1 in ControlEventHandler.init<A>(control:events:handler:)(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = swift_dynamicCastUnknownClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    a2(v7);
  }
}

uint64_t sub_1003EA760()
{

  return swift_deallocObject();
}

uint64_t ControlEventHandler.deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromControl:" forControlEvents:*(v0 + 24)];
  }

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t ControlEventHandler.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromControl:" forControlEvents:*(v0 + 24)];
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void ControlEventHandling<>.on(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for UIAction(0, &_sSo8UIActionCML_1, UIAction_ptr);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = v10;
  v11[4] = a2;
  v11[5] = a3;

  v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v5 addAction:v12 forControlEvents:{a1, 0, 0, 0, partial apply for closure #1 in ControlEventHandling<>.on(_:handler:), v11}];
}

void specialized closure #1 in ControlEventHandling<>.on(_:handler:)(void *a1, uint64_t a2, void (*a3)(void *))
{
  if ([a1 sender])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    _sypSgWOh_1(v8);
LABEL_8:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    goto LABEL_9;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIControl, UIControl_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  Strong = v5;
LABEL_9:
  a3(Strong);
}

void closure #1 in ControlEventHandling<>.on(_:handler:)(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  if ([a1 sender])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    _sypSgWOh_1(v10);
LABEL_8:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  Strong = v7;
LABEL_9:
  a3(Strong);
}

uint64_t sub_1003EAC08()
{

  return swift_deallocObject();
}

void protocol witness for ControlEventHandling.on(_:handler:) in conformance UIControl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  type metadata accessor for UIAction(0, &_sSo8UIActionCML_1, UIAction_ptr);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;

  v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v7 addAction:v10 forControlEvents:{a1, 0, 0, 0, partial apply for specialized closure #1 in ControlEventHandling<>.on(_:handler:), v9}];
}

uint64_t sub_1003EAD9C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1003EADD4()
{

  return swift_deallocObject();
}

uint64_t _sypSgWOh_1(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd_2, &_sypSgMR_2);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Datavault.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities9Datavault_url;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Datavault.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  return outlined init with copy of Logger?(v1 + v3, a1);
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd_0, &_s2os6LoggerVSgMR_0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Datavault.logger.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  _s2os6LoggerVSgWOd_0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t _s2os6LoggerVSgWOd_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd_0, &_s2os6LoggerVSgMR_0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *Datavault.__allocating_init(url:storageClass:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = URL.path.getter();
  v12 = v11;
  (*(v7 + 16))(v9, a1, v6);
  swift_allocObject();
  v13 = Datavault.init(path:pathURL:storageClass:)(v10, v12, v9, a2, a3);
  (*(v7 + 8))(a1, v6);
  return v13;
}

char *Datavault.__allocating_init(path:storageClass:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v16 - v12;
  URL.init(fileURLWithPath:)();
  (*(v9 + 16))(v11, v13, v8);
  swift_allocObject();
  v14 = Datavault.init(path:pathURL:storageClass:)(a1, a2, v11, a3, a4);
  (*(v9 + 8))(v13, v8);
  return v14;
}

char *Datavault.init(path:pathURL:storageClass:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v87 = a5;
  v83 = a4;
  v84 = a1;
  v93 = a2;
  v85 = *v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v75[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v12 = &v75[-v11];
  __chkstk_darwin();
  v14 = &v75[-v13];
  v15 = type metadata accessor for URL();
  v89 = *(v15 - 8);
  v90 = v15;
  v16 = __chkstk_darwin();
  v18 = &v75[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  v20 = *(v8 + 56);
  v92 = v5;
  v20(v5 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger, 1, 1, v7, v16);
  v91 = a3;
  URL.deletingLastPathComponent()();
  v21 = [objc_opt_self() defaultManager];
  v88 = v18;
  v22 = v86;
  NSFileManager.createDirectoryIfNeeded(at:)(v18);
  v86 = v22;
  if (!v22)
  {
    v27 = v10;
    v28 = v14;
    v82 = v19;
    v80 = v12;
    v95[0] = 0;
    v29 = v84;
    v30 = v93;
    v31 = String._bridgeToObjectiveC()();
    v81 = v21;
    [v21 fileExistsAtPath:v31 isDirectory:v95];

    if (v95[0] == 1)
    {
      String.utf8CString.getter();
      String.utf8CString.getter();
      v32 = rootless_check_datavault_flag();

      if (v32)
      {
        v33 = v82;
        v34 = v92;
        swift_beginAccess();
        v35 = v34 + v33;
        v23 = v34;
        v36 = v7;
        v79 = *(v8 + 48);
        if (!v79(v35, 1, v7))
        {
          v37 = v28;
          (*(v8 + 16))(v28, v23 + v82, v36);

          v77 = v36;
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.default.getter();

          v76 = v39;
          v78 = v38;
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v94[0] = v41;
            *v40 = 136315138;
            *(v40 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v84, v93, v94);
            v42 = v78;
            _os_log_impl(&_mh_execute_header, v78, v76, "Found unsecure directory %s attempting to convert to datavault", v40, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v41);
          }

          else
          {
          }

          v36 = v77;
          (*(v8 + 8))(v37, v77);
        }

        v60 = v36;
        String.utf8CString.getter();
        String.utf8CString.getter();

        v61 = rootless_convert_to_datavault();

        if (v61)
        {

          v62 = errno.getter();
          lazy protocol witness table accessor for type Datavault.Error and conformance Datavault.Error();
          swift_allocError();
          *v63 = v62;
          *(v63 + 4) = 1;
          swift_willThrow();
          v21 = v81;
          goto LABEL_4;
        }

        v64 = v23;
        v65 = v82;
        swift_beginAccess();
        if (v79(v64 + v65, 1, v36))
        {
          v55 = v89;
          v56 = v90;
          (*(v89 + 8))(v88, v90);
          swift_endAccess();

          v30 = v93;
          v23 = v64;
        }

        else
        {
          v66 = v8;
          v67 = v80;
          (*(v8 + 16))(v80, v64 + v65, v36);
          swift_endAccess();
          v68 = v93;

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.default.getter();

          v23 = v64;
          if (os_log_type_enabled(v69, v70))
          {
            v71 = v67;
            v72 = v66;
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v94[0] = v74;
            *v73 = 136315138;
            *(v73 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v84, v68, v94);
            _os_log_impl(&_mh_execute_header, v69, v70, "Datavault directory conversion successful %s", v73, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v74);

            (*(v72 + 8))(v71, v60);
          }

          else
          {

            (*(v66 + 8))(v67, v60);
          }

          v55 = v89;
          v56 = v90;
          (*(v89 + 8))(v88, v90);
          v30 = v68;
        }

LABEL_20:
        (*(v55 + 32))(v23 + OBJC_IVAR____TtC14MusicUtilities9Datavault_url, v91, v56);
        v23[2] = v84;
        v23[3] = v30;
        return v23;
      }

      v55 = v89;
      v56 = v90;
      (*(v89 + 8))(v88, v90);

      v30 = v93;
    }

    else
    {
      v43 = v82;
      v44 = v92;
      swift_beginAccess();
      v45 = v8;
      v46 = v7;
      if (!(*(v8 + 48))(&v44[v43], 1, v7))
      {
        v47 = v92 + v43;
        v48 = v27;
        (*(v8 + 16))(v27, v47, v7);

        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();

        v51 = v49;
        if (os_log_type_enabled(v49, v50))
        {
          v52 = v45;
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v94[0] = v54;
          *v53 = 136315138;
          *(v53 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v29, v30, v94);
          _os_log_impl(&_mh_execute_header, v51, v50, "Creating DataVault directory %s", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v54);

          (*(v52 + 8))(v48, v46);
        }

        else
        {

          (*(v45 + 8))(v27, v46);
        }
      }

      S_IRUSR.getter();
      S_IWUSR.getter();
      S_IXUSR.getter();
      String.utf8CString.getter();
      String.utf8CString.getter();

      v57 = rootless_mkdir_datavault();

      if (v57)
      {

        v58 = errno.getter();
        lazy protocol witness table accessor for type Datavault.Error and conformance Datavault.Error();
        swift_allocError();
        *v59 = v58;
        *(v59 + 4) = 0;
        swift_willThrow();
        v21 = v81;
        goto LABEL_3;
      }

      v55 = v89;
      v56 = v90;
      (*(v89 + 8))(v88, v90);
    }

    v23 = v92;
    goto LABEL_20;
  }

LABEL_3:
  v23 = v92;
LABEL_4:

  v24 = v90;
  v25 = *(v89 + 8);
  v25(v91, v90);
  v25(v88, v24);
  outlined destroy of Logger?(v23 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger);
  swift_deallocPartialClassInstance();
  return v23;
}

uint64_t Datavault.deinit()
{

  v1 = OBJC_IVAR____TtC14MusicUtilities9Datavault_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of Logger?(v0 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger);
  return v0;
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd_0, &_s2os6LoggerVSgMR_0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Datavault.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14MusicUtilities9Datavault_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of Logger?(v0 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Datavault(uint64_t a1)
{
  result = type metadata singleton initialization cache for Datavault;
  if (!type metadata singleton initialization cache for Datavault)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Datavault(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Logger?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Logger?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Logger?)
  {
    type metadata accessor for Logger();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Logger?);
    }
  }
}

uint64_t __swift_memcpy5_4_0(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Datavault.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Datavault.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for Datavault.Error(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for Datavault.Error(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type Datavault.Error and conformance Datavault.Error()
{
  result = lazy protocol witness table cache variable for type Datavault.Error and conformance Datavault.Error;
  if (!lazy protocol witness table cache variable for type Datavault.Error and conformance Datavault.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Datavault.Error and conformance Datavault.Error);
  }

  return result;
}

id DisplayLinkHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayLinkHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t one-time initialization function for associationKey()
{
  result = swift_slowAlloc();
  static CADisplayLink.associationKey = result;
  return result;
}

id CADisplayLink.init(handler:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayLinkHandler();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC14MusicUtilitiesP33_A1FC62D80C043A876151FA559C82DA5918DisplayLinkHandler__handler];
  *v6 = a1;
  *(v6 + 1) = a2;
  v14.receiver = v5;
  v14.super_class = v4;

  v7 = objc_msgSendSuper2(&v14, "init");
  v8 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v7 selector:{"handleDisplayLinkFired:", v14.receiver, v14.super_class}];
  v9 = one-time initialization token for associationKey;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = static CADisplayLink.associationKey;
  v12 = v7;
  objc_setAssociatedObject(v10, v11, v12, 1);

  return v10;
}

uint64_t EdgePairSequence.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v17 - v7;
  v9 = *(v4 - 8);
  __chkstk_darwin();
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *v2;
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a2, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    swift_getWitnessTable();
    v17[0] = v5;
    RangeReplaceableCollection.removeFirst()();
    swift_getWitnessTable();
    RangeReplaceableCollection<>.popLast()();
    v14 = v17[0];
    v15 = swift_getTupleTypeMetadata2();
    v16 = *(v15 + 48);
    (*(v9 + 32))(a2, v11, v4);
    (*(v6 + 32))(a2 + v16, v8, v14);
    return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance EdgePairSequence<A>(uint64_t a1, uint64_t a2)
{
  v2 = _sSTsE22_copyToContiguousArrays0cD0Vy7ElementQzGyFTf4g_n_0();

  return v2;
}

uint64_t type metadata instantiation function for EdgePairSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static Task<>.sleep(for:)(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = closure #2 in static Actions.Collaborate.action(context:);
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t static Task<>.delayed(by:priority:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_3, &_sScPSgMR_3);
  __chkstk_darwin();
  v11 = &v14 - v10;
  _sScPSgWOc_2(a1, &v14 - v10);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;

  return _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC_0(0, 0, v11, &async function pointer to partial apply for closure #1 in static Task<>.delayed(by:priority:task:), v12, a4);
}

uint64_t _sScPSgWOc_2(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_3, &_sScPSgMR_3);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in static Task<>.delayed(by:priority:task:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 24) = a2;
  *(v6 + 16) = a1;
  return _swift_task_switch(closure #1 in static Task<>.delayed(by:priority:task:), 0, 0);
}

uint64_t closure #1 in static Task<>.delayed(by:priority:task:)(unint64_t a1)
{
  v3 = *(v1 + 24) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *v5 = v1;
  v5[1] = closure #1 in static Task<>.delayed(by:priority:task:);
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t closure #1 in static Task<>.delayed(by:priority:task:)()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {
    v8 = (v2[4] + *v2[4]);
    v6 = swift_task_alloc();
    v2[7] = v6;
    *v6 = v3;
    v6[1] = closure #1 in static Task<>.delayed(by:priority:task:);
    v7 = v2[2];

    return v8(v7);
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003ECEF0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static Task<>.delayed(by:priority:task:)(uint64_t a1)
{
  v4 = *(v1 + 3);
  v5 = *(v1 + 2);
  v6 = v1[5];
  v8 = *(v1 + 6);
  v7 = *(v1 + 7);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in static Task<>.delayed(by:priority:task:)(a1, v6, v5, v4, v8, v7);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_3, &_sScPSgMR_3);
  __chkstk_darwin();
  v11 = &v23[-1] - v10;
  v23[5] = a4;
  v23[6] = a5;
  _sScPSgWOc_2(a3, &v23[-1] - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    _sScPSgWOh_1(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter();
      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_(v19 + 32, v23);

      v20 = v23[0];
      _sScPSgWOh_1(a3);

      return v20;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  _sScPSgWOh_1(a3);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

uint64_t static Task<>.userFeedbackDelayed(task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_3, &_sScPSgMR_3);
  __chkstk_darwin();
  v7 = &v11 - v6;
  static TaskPriority.userInitiated.getter();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = static Task<>.delayed(by:priority:task:)(v7, a1, a2, a3, 2.0);
  _sScPSgWOh_1(v7);
  return v9;
}

uint64_t _sScPSgWOh_1(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_3, &_sScPSgMR_3);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CASpringAnimation.springParameters.getter()
{
  [v0 mass];
  v2 = v1;
  [v0 stiffness];
  v4 = v3;
  [v0 damping];
  v6 = v5;
  v7 = objc_allocWithZone(UISpringTimingParameters);

  return [v7 initWithMass:v2 stiffness:v4 damping:v6 initialVelocity:{0.0, 0.0}];
}

void CASpringAnimation.springParameters.setter(void *a1)
{
  [a1 mass];
  [v1 setMass:?];
  [a1 stiffness];
  [v1 setStiffness:?];
  [a1 damping];
  [v1 setDamping:?];
  [v1 setInitialVelocity:0.0];
}

void (*CASpringAnimation.springParameters.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  [v1 mass];
  v4 = v3;
  [v1 stiffness];
  v6 = v5;
  [v1 damping];
  *a1 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:v4 stiffness:v6 damping:v7 initialVelocity:{0.0, 0.0}];
  return CASpringAnimation.springParameters.modify;
}

void CASpringAnimation.springParameters.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1;
  if (a2)
  {
    v4 = v2;
    [v4 mass];
    [v3 setMass:?];
    [v4 stiffness];
    [v3 setStiffness:?];
    [v4 damping];
    [v3 setDamping:?];
    [v3 setInitialVelocity:0.0];
  }

  else
  {
    [v2 mass];
    [v3 setMass:?];
    [v5 stiffness];
    [v3 setStiffness:?];
    [v5 damping];
    [v3 setDamping:?];
    [v3 setInitialVelocity:0.0];
  }
}

void static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, double a7)
{
  [a1 settlingDuration];
  v15 = v14;
  [a1 mass];
  v17 = v16;
  [a1 stiffness];
  v19 = v18;
  [a1 damping];
  v21 = v20;
  v27 = a3;
  v28 = a4;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = thunk for @escaping @callee_guaranteed () -> ();
  v26 = &block_descriptor_72;
  v22 = _Block_copy(&v23);

  if (a5)
  {
    v27 = a5;
    v28 = a6;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v26 = &block_descriptor_3_5;
    a5 = _Block_copy(&v23);
  }

  [objc_opt_self() _animateUsingSpringWithDuration:a2 delay:v22 options:a5 mass:v15 stiffness:a7 damping:v17 initialVelocity:v19 animations:v21 completion:0.0];
  _Block_release(a5);
  _Block_release(v22);
}

id static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, double a7, double a8)
{
  v16 = objc_opt_self();
  [v16 begin];
  [v16 setAnimationTimingFunction:a1];
  v23 = a3;
  v24 = a4;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed () -> ();
  v22 = &block_descriptor_6_3;
  v17 = _Block_copy(&v19);

  if (a5)
  {
    v23 = a5;
    v24 = a6;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v22 = &block_descriptor_9;
    a5 = _Block_copy(&v19);
  }

  [objc_opt_self() animateWithDuration:a2 delay:v17 options:a5 animations:a7 completion:a8];
  _Block_release(a5);
  _Block_release(v17);
  return [v16 commit];
}

char *CAAnimationCompletionHandler.init(animating:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration];
  *v14 = 0;
  v14[8] = 1;
  *&v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink] = 0;
  v24.receiver = v5;
  v24.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v24, "init");
  v16 = &v15[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating];
  v17 = *&v15[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating];
  v18 = *&v15[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating + 8];
  *v16 = a1;
  *(v16 + 1) = a2;
  v19 = v15;
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v17, v18);
  v20 = &v19[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion];
  v21 = *&v19[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion];
  v22 = *&v19[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion + 8];
  *v20 = a3;
  *(v20 + 1) = a4;
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v21, v22);

  return v19;
}

Swift::Void __swiftcall CAAnimationCompletionHandler.animationDidStart(_:)(CAAnimation a1)
{
  if (*(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating))
  {
    [(objc_class *)a1.super.isa duration];
    v2 = v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration;
    *v2 = v3;
    *(v2 + 8) = 0;
    v4 = CACurrentMediaTime();
    v5 = v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime;
    *v5 = v4;
    *(v5 + 8) = 0;
    v6 = [objc_opt_self() displayLinkWithTarget:v1 selector:"displayLinkFiredWithDisplayLink:"];
    v7 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink);
    *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink) = v6;
    v8 = v6;

    if (v8)
    {
      v9 = [objc_opt_self() currentRunLoop];
      [v8 addToRunLoop:v9 forMode:NSDefaultRunLoopMode];
    }

    else
    {
      __break(1u);
    }
  }
}

id CAAnimationCompletionHandler.displayLinkFired(displayLink:)(void *a1)
{
  result = [a1 timestamp];
  v4 = (v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime);
  if (*(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime + 8))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
  if (!v5)
  {
    return result;
  }

  v6 = (v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration);
  if (*(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration + 8))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating + 8);
  v8 = (v3 - *v4) / *v6;

  v5(v9, v8);

  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v7);
}

id CAAnimation.progress.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v2 delegate];
  if (result)
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = (v7 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      v9 = *(v7 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      v10 = v8[1];
      *v8 = a1;
      v8[1] = a2;
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9, v10);

      return swift_unknownObjectRelease();
    }

    result = swift_unknownObjectRelease();
  }

  if (a1)
  {
    v11 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

    v12 = CAAnimationCompletionHandler.init(animating:completion:)(a1, a2, 0, 0);
    [v3 setDelegate:v12];

    return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a1, a2);
  }

  return result;
}

uint64_t (*CAAnimation.progress.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  if ([v1 delegate])
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      v5 = *(v3 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating + 8);
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v4, v5);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
  return CAAnimation.progress.modify;
}

uint64_t CAAnimation.progress.getter(void *a1, void (*a2)(void, void))
{
  if (![v2 delegate])
  {
    return 0;
  }

  type metadata accessor for CAAnimationCompletionHandler();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = (v5 + *a1);
    v7 = *v6;
    a2(*v6, v6[1]);
  }

  else
  {
    v7 = 0;
  }

  swift_unknownObjectRelease();
  return v7;
}

id CAAnimation.completion.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v2 delegate];
  if (result)
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = (v7 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v9 = *(v7 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v10 = v8[1];
      *v8 = a1;
      v8[1] = a2;
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v9, v10);

      return swift_unknownObjectRelease();
    }

    result = swift_unknownObjectRelease();
  }

  if (a1)
  {
    v11 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

    v12 = CAAnimationCompletionHandler.init(animating:completion:)(0, 0, a1, a2);
    [v3 setDelegate:v12];

    return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a1, a2);
  }

  return result;
}

uint64_t (*CAAnimation.completion.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  if ([v1 delegate])
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v5 = *(v3 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion + 8);
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v4, v5);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
  return CAAnimation.completion.modify;
}

uint64_t CAAnimation.progress.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  if ((a2 & 1) == 0)
  {
    return (a3)(*a1, v7, a3, a4, a5);
  }

  a4(*a1, v7);
  a3(v6, v7);

  return a5(v6, v7);
}

uint64_t CALayer.addAsyncAnimation(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(CALayer.addAsyncAnimation(_:forKey:), v6, v5);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo7CALayerC14MusicUtilitiesE15AnimationStatusO__GMd, &_sScS12ContinuationV15BufferingPolicyOySo7CALayerC14MusicUtilitiesE15AnimationStatusO__GMR);
  v7 = __chkstk_darwin();
  v12 = a1;
  v13 = v3;
  v14 = a2;
  v15 = a3;
  (*(v9 + 104))(&v11[-v8], enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v7);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t CALayer.addAsyncAnimation(_:forKey:)(uint64_t a1)
{
  v2 = v1[5];
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[2];
  v6 = static MainActor.shared.getter();
  v1[10] = v6;
  v7 = swift_task_alloc();
  v1[11] = v7;
  v7[2] = v5;
  v7[3] = v2;
  v7[4] = v4;
  v7[5] = v3;
  v8 = swift_task_alloc();
  v1[12] = v8;
  *v8 = v1;
  v8[1] = CALayer.addAsyncAnimation(_:forKey:);

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 13, v6, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x80000001004D5930, partial apply for closure #1 in CALayer.addAsyncAnimation(_:forKey:), v7, &type metadata for Bool);
}

uint64_t CALayer.addAsyncAnimation(_:forKey:)()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(CALayer.addAsyncAnimation(_:forKey:), v3, v2);
}

{

  v1 = *(v0 + 104);
  v2 = *(v0 + 8);

  return v2(v1);
}

void closure #1 in CALayer.addAsyncAnimation(_:forKey:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v45 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd_0, &_sScCySbs5NeverOGMR_0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v43 - v11;
  (*(v9 + 16))(&v43 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  if ([a2 delegate])
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = (v15 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v17 = *(v15 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v18 = v16[1];
      *v16 = partial apply for closure #1 in closure #1 in CALayer.addAsyncAnimation(_:forKey:);
      v16[1] = v14;
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v17, v18);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v19 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

  v20 = CAAnimationCompletionHandler.init(animating:completion:)(0, 0, partial apply for closure #1 in closure #1 in CALayer.addAsyncAnimation(_:forKey:), v14);
  [a2 setDelegate:v20];

LABEL_6:
  v21 = objc_opt_self();
  [v21 begin];
  [v21 setDisableActions:1];
  if (a5)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  [v45 addAnimation:a2 forKey:v22];

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    if (a5)
    {
      v24 = [v23 toValue];
      v25 = String._bridgeToObjectiveC()();
      [v45 setValue:v24 forKey:v25];
      swift_unknownObjectRelease();
    }

    goto LABEL_47;
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26)
  {
LABEL_47:
    [v21 commit];
    return;
  }

  v27 = [v26 animations];
  v28 = _swiftEmptyArrayStorage;
  if (v27)
  {
    v29 = v27;
    type metadata accessor for CAAnimation();
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = _swiftEmptyArrayStorage;
    if (v30 >> 62)
    {
LABEL_32:
      v31 = _CocoaArrayWrapper.endIndex.getter();
      if (v31)
      {
LABEL_16:
        v32 = 0;
        do
        {
          v33 = v32;
          while (1)
          {
            if ((v30 & 0xC000000000000001) != 0)
            {
              v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v33 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_31;
              }

              v34 = *(v30 + 8 * v33 + 32);
            }

            v35 = v34;
            v32 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              __break(1u);
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v33;
            if (v32 == v31)
            {
              goto LABEL_33;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v28 = v46;
        }

        while (v32 != v31);
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        goto LABEL_16;
      }
    }

LABEL_33:
  }

  if (!(v28 >> 62))
  {
    v36 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_36;
    }

    goto LABEL_46;
  }

  v36 = _CocoaArrayWrapper.endIndex.getter();
  if (!v36)
  {
LABEL_46:

    goto LABEL_47;
  }

LABEL_36:
  v44 = v21;
  if (v36 >= 1)
  {
    for (i = 0; i != v36; ++i)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v38 = *(v28 + 8 * i + 32);
      }

      v39 = v38;
      v40 = [v38 keyPath];
      if (v40)
      {
        v41 = v40;
        v42 = [v39 toValue];
        [v45 setValue:v42 forKey:v41];

        swift_unknownObjectRelease();
        v39 = v41;
      }
    }

    v21 = v44;
    goto LABEL_47;
  }

  __break(1u);
}

void partial apply for closure #1 in CALayer.addAsyncAnimation(_:forKey:)(uint64_t a1)
{
  closure #1 in CALayer.addAsyncAnimation(_:forKey:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

{
  closure #1 in CALayer.addAsyncAnimation(_:forKey:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

void closure #1 in CALayer.addAsyncAnimation(_:forKey:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v59 = a4;
  v60 = a5;
  v61 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo7CALayerC14MusicUtilitiesE15AnimationStatusO_GMd, &_sScS12ContinuationVySo7CALayerC14MusicUtilitiesE15AnimationStatusO_GMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v57 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v55 - v11;
  v13 = *(v8 + 16);
  v58 = a1;
  v56 = v13;
  (v13)(&v55 - v11, a1, v7, v10);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v55 = *(v8 + 32);
  v55(v15 + v14, v12, v7);
  v16 = a2;
  if ([a2 delegate])
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = (v17 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      v19 = *(v17 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      v20 = v18[1];
      *v18 = partial apply for closure #1 in closure #1 in CALayer.addAsyncAnimation(_:forKey:);
      v18[1] = v15;
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v19, v20);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v21 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

  v22 = CAAnimationCompletionHandler.init(animating:completion:)(partial apply for closure #1 in closure #1 in CALayer.addAsyncAnimation(_:forKey:), v15, 0, 0);
  [a2 setDelegate:v22];

LABEL_6:
  v23 = v57;
  v56(v57, v58, v7);
  v24 = swift_allocObject();
  v55(v24 + v14, v23, v7);
  v25 = [v16 delegate];
  v26 = v60;
  if (v25)
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = (v27 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v29 = *(v27 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v30 = v28[1];
      *v28 = partial apply for closure #2 in closure #1 in CALayer.addAsyncAnimation(_:forKey:);
      v28[1] = v24;
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v29, v30);
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }

  v31 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

  v32 = CAAnimationCompletionHandler.init(animating:completion:)(0, 0, partial apply for closure #2 in closure #1 in CALayer.addAsyncAnimation(_:forKey:), v24);
  [v16 setDelegate:v32];

LABEL_11:
  v33 = objc_opt_self();
  [v33 begin];
  [v33 setDisableActions:1];
  if (v26)
  {
    v34 = String._bridgeToObjectiveC()();
  }

  else
  {
    v34 = 0;
  }

  [v61 addAnimation:v16 forKey:v34];

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    if (v26)
    {
      v36 = [v35 toValue];
      v37 = String._bridgeToObjectiveC()();
      [v61 setValue:v36 forKey:v37];
      swift_unknownObjectRelease();
    }

    goto LABEL_52;
  }

  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (!v38)
  {
LABEL_52:
    [v33 commit];
    return;
  }

  v39 = [v38 animations];
  v40 = _swiftEmptyArrayStorage;
  if (v39)
  {
    v41 = v39;
    type metadata accessor for CAAnimation();
    v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v62 = _swiftEmptyArrayStorage;
    if (v42 >> 62)
    {
LABEL_37:
      v43 = _CocoaArrayWrapper.endIndex.getter();
      if (v43)
      {
LABEL_21:
        v44 = 0;
        do
        {
          v45 = v44;
          while (1)
          {
            if ((v42 & 0xC000000000000001) != 0)
            {
              v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v45 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_36;
              }

              v46 = *(v42 + 8 * v45 + 32);
            }

            v47 = v46;
            v44 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v45;
            if (v44 == v43)
            {
              goto LABEL_38;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v40 = v62;
        }

        while (v44 != v43);
      }
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43)
      {
        goto LABEL_21;
      }
    }

LABEL_38:
  }

  if (!(v40 >> 62))
  {
    v48 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_41;
    }

    goto LABEL_51;
  }

  v48 = _CocoaArrayWrapper.endIndex.getter();
  if (!v48)
  {
LABEL_51:

    goto LABEL_52;
  }

LABEL_41:
  v60 = v33;
  if (v48 >= 1)
  {
    for (i = 0; i != v48; ++i)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v50 = *(v40 + 8 * i + 32);
      }

      v51 = v50;
      v52 = [v50 keyPath];
      if (v52)
      {
        v53 = v52;
        v54 = [v51 toValue];
        [v61 setValue:v54 forKey:v53];

        swift_unknownObjectRelease();
        v51 = v53;
      }
    }

    v33 = v60;
    goto LABEL_52;
  }

  __break(1u);
}

uint64_t closure #1 in closure #1 in CALayer.addAsyncAnimation(_:forKey:)(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo7CALayerC14MusicUtilitiesE15AnimationStatusO__GMd, &_sScS12ContinuationV11YieldResultOySo7CALayerC14MusicUtilitiesE15AnimationStatusO__GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - v4;
  v7 = a1;
  v8 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo7CALayerC14MusicUtilitiesE15AnimationStatusO_GMd, &_sScS12ContinuationVySo7CALayerC14MusicUtilitiesE15AnimationStatusO_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v3 + 8))(v5, v2);
}

void closure #2 in closure #1 in CALayer.addAsyncAnimation(_:forKey:)(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo7CALayerC14MusicUtilitiesE15AnimationStatusO__GMd, &_sScS12ContinuationV11YieldResultOySo7CALayerC14MusicUtilitiesE15AnimationStatusO__GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v6 - v4;
  v6 = a1 & 1;
  v7 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo7CALayerC14MusicUtilitiesE15AnimationStatusO_GMd, &_sScS12ContinuationVySo7CALayerC14MusicUtilitiesE15AnimationStatusO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v5, v2);
  AsyncStream.Continuation.finish()();
}

id static CATransaction.performWithoutAnimation(_:)(void (*a1)(id))
{
  v2 = objc_opt_self();
  [v2 begin];
  a1([v2 setDisableActions:1]);

  return [v2 commit];
}

void specialized CAAnimationCompletionHandler.animationDidStop(_:finished:)(char a1)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink;
  v4 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(v1 + v3);
    *(v1 + v3) = 0;
  }

  v6 = v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion + 8);

    v8(a1 & 1);

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v8, v9);
  }
}

uint64_t partial apply for closure #1 in closure #1 in CALayer.addAsyncAnimation(_:forKey:)(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo7CALayerC14MusicUtilitiesE15AnimationStatusO_GMd, &_sScS12ContinuationVySo7CALayerC14MusicUtilitiesE15AnimationStatusO_GMR);

  return closure #1 in closure #1 in CALayer.addAsyncAnimation(_:forKey:)(a1);
}

void partial apply for closure #2 in closure #1 in CALayer.addAsyncAnimation(_:forKey:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo7CALayerC14MusicUtilitiesE15AnimationStatusO_GMd, &_sScS12ContinuationVySo7CALayerC14MusicUtilitiesE15AnimationStatusO_GMR);

  closure #2 in closure #1 in CALayer.addAsyncAnimation(_:forKey:)(a1);
}

unint64_t type metadata accessor for CAAnimation()
{
  result = _sSo11CAAnimationCML_0;
  if (!_sSo11CAAnimationCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo11CAAnimationCML_0);
  }

  return result;
}

uint64_t objectdestroyTm_18(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in CALayer.addAsyncAnimation(_:forKey:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd_0, &_sScCySbs5NeverOGMR_0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd_0, &_sScCySbs5NeverOGMR_0);
  return CheckedContinuation.resume(returning:)();
}

double CGSize.nonNegative()(double result)
{
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

CGFloat static CGAffineTransform.+ infix(_:_:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v4;
  *&t1.tx = a1[2];
  v5 = a2[1];
  *&t2.a = *a2;
  *&t2.c = v5;
  *&t2.tx = a2[2];
  CGAffineTransformConcat(&v9, &t1, &t2);
  result = v9.a;
  v7 = *&v9.c;
  v8 = *&v9.tx;
  *a3 = *&v9.a;
  a3[1] = v7;
  a3[2] = v8;
  return result;
}

void static CGPoint.topLeft.setter(double a1, double a2)
{
  swift_beginAccess();
  static CGPoint.topLeft[0] = a1;
  unk_10063F9C0 = *&a2;
}

void static CGPoint.topCenter.setter(double a1, double a2)
{
  swift_beginAccess();
  static CGPoint.topCenter = *&a1;
  *algn_100612D18 = a2;
}

void static CGPoint.topRight.setter(double a1, double a2)
{
  swift_beginAccess();
  static CGPoint.topRight = *&a1;
  *algn_100612D28 = a2;
}

void static CGPoint.centerLeft.setter(double a1, double a2)
{
  swift_beginAccess();
  static CGPoint.centerLeft[0] = a1;
  unk_100612D38 = *&a2;
}

void static CGPoint.center.setter(double a1, double a2)
{
  swift_beginAccess();
  static CGPoint.center[0] = a1;
  unk_100612D48 = *&a2;
}

void static CGPoint.centerRight.setter(double a1, double a2)
{
  swift_beginAccess();
  static CGPoint.centerRight[0] = a1;
  unk_100612D58 = *&a2;
}

void static CGPoint.bottomLeft.setter(double a1, double a2)
{
  swift_beginAccess();
  static CGPoint.bottomLeft[0] = a1;
  unk_100612D68 = *&a2;
}

void static CGPoint.bottomCenter.setter(double a1, double a2)
{
  swift_beginAccess();
  static CGPoint.bottomCenter[0] = a1;
  unk_100612D78 = *&a2;
}

void static CGPoint.bottomRight.setter(double a1, double a2)
{
  swift_beginAccess();
  static CGPoint.bottomRight[0] = a1;
  unk_100612D88 = *&a2;
}

CTFrameRef CTFramesetterRef.createFrame(_:)(double a1, double a2, double a3, double a4)
{
  v5 = CGPathCreateWithRect(*&a1, 0);
  v8.location = 0;
  v8.length = 0;
  Frame = CTFramesetterCreateFrame(v4, v8, v5, 0);

  return Frame;
}

double CTFramesetterRef.suggestedFrameSize(constraints:)(double a1, double a2)
{
  v4.location = 0;
  v4.length = 0;
  *&result = *&CTFramesetterSuggestFrameSizeWithConstraints(v2, v4, 0, *&a1, 0);
  return result;
}

uint64_t CTFrameRef.lineOrigins.getter()
{
  v1 = CTFrameGetLines(v0);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_3;
    }

LABEL_6:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_4;
  }

  type metadata accessor for CTLineRef(0);
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  v3 = v0;
  _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSo7CGPointV_Tt1g5053_sSo10CTFrameRefa14MusicUtilitiesE11lineOriginsSaySo7F22VGvgySryAFGz_SiztXEfU_So0I3RefaTf1nc_nTf4ng_n(v2, v3);
  v5 = v4;

  return v5;
}

void closure #1 in CTFrameRef.lineOrigins.getter(CGPoint **a1, uint64_t *a2, CTFrameRef frame)
{
  v3 = *a1;
  if (*a1)
  {
    v9.location = 0;
    v9.length = 0;
    CTFrameGetLineOrigins(frame, v9, v3);
    v7 = CTFrameGetLines(frame);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for CTLineRef(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();

      if (!(_swiftEmptyArrayStorage >> 62))
      {
LABEL_4:
        v8 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

        *a2 = v8;
        return;
      }
    }

    else
    {

      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_4;
      }
    }

    v8 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_5;
  }

  __break(1u);
}

void *CTFrameRef.lineFrames(lines:origins:flippedCoordinates:useExtendedLineBounds:)(unint64_t a1, uint64_t a2, char a3, char a4)
{
  LOBYTE(v4) = a4;
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(a1 + 32);
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
  v10 = v9;
  if (!*(a2 + 16))
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_36:

    return v4;
  }

  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (v4)
  {
    v13 = 32;
  }

  else
  {
    v13 = 0;
  }

  options = v13;
  BoundsWithOptions = CTLineGetBoundsWithOptions(v9, v13);
  width = BoundsWithOptions.size.width;
  height = BoundsWithOptions.size.height;
  if ((a3 & 1) == 0)
  {
    v11 = 0.0;
  }

  v4 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v17 = v4[2];
  v16 = v4[3];
  if (v17 >= v16 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v4);
  }

  v4[2] = v17 + 1;
  v18 = &v4[5 * v17];
  *(v18 + 4) = v10;
  *(v18 + 5) = v12;
  v18[6] = 0.0;
  v18[7] = width;
  v18[8] = height;
  v19 = v7 - 1;
  if (v7 != 1)
  {
    v20 = (a2 + 56);
    v21 = 5;
    v22 = 0.0;
    while (1)
    {
      v23 = v21 - 4;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v8 + 16))
        {
          goto LABEL_37;
        }

        v24 = *(a1 + 8 * v21);
      }

      v10 = v24;
      v25 = *(a2 + 16);
      if (v23 == v25)
      {
        goto LABEL_36;
      }

      if (v23 >= v25)
      {
        goto LABEL_38;
      }

      v26 = *(v20 - 1);
      v27 = *v20;
      v39 = CTLineGetBoundsWithOptions(v24, options);
      v28 = v39.size.width;
      v29 = v39.size.height;
      v30 = v22 + v11 - v27;
      if (a3)
      {
        v31 = v22 + v11 - v27;
      }

      else
      {
        v31 = 0.0;
      }

      if (a3)
      {
        v11 = v27;
        v22 = v30;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
      }

      v33 = v4[2];
      v32 = v4[3];
      if (v33 >= v32 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v4);
      }

      v4[2] = v33 + 1;
      v34 = &v4[5 * v33];
      *(v34 + 4) = v10;
      *(v34 + 5) = v26;
      v34[6] = v31;
      v34[7] = v28;
      v34[8] = v29;
      ++v21;
      v20 += 2;
      --v19;
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v19)
      {
        return v4;
      }
    }
  }

  return v4;
}

void *CTFrameRef.linesWithFrames(flippedCoordinates:useExtendedLineBounds:)(char a1, char a2)
{
  v3 = v2;
  LOBYTE(v4) = a2;
  v5 = CTFrameGetLines(v2);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CTLineRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v6 = CTFrameGetLines(v3);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CTLineRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_5:
      v7 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }
  }

  else
  {

    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_5;
    }
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:

  v8 = v3;
  _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSo7CGPointV_Tt1g5053_sSo10CTFrameRefa14MusicUtilitiesE11lineOriginsSaySo7F22VGvgySryAFGz_SiztXEfU_So0I3RefaTf1nc_nTf4ng_n(v7, v8);
  v10 = v9;

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_46;
  }

  v11 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_47:
    v4 = _swiftEmptyArrayStorage;
    goto LABEL_48;
  }

  while (1)
  {
    v12 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = _swiftEmptyArrayStorage[4];
      goto LABEL_11;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
      goto LABEL_47;
    }
  }

  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
  v14 = v13;
  if (*(v10 + 16))
  {
    v16 = *(v10 + 32);
    v15 = *(v10 + 40);
    if (v4)
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    options = v17;
    BoundsWithOptions = CTLineGetBoundsWithOptions(v13, v17);
    width = BoundsWithOptions.size.width;
    height = BoundsWithOptions.size.height;
    if ((a1 & 1) == 0)
    {
      v15 = 0.0;
    }

    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v21 = v4[2];
    v20 = v4[3];
    if (v21 >= v20 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v4);
    }

    v4[2] = v21 + 1;
    v22 = &v4[5 * v21];
    *(v22 + 4) = v14;
    *(v22 + 5) = v16;
    v22[6] = 0.0;
    v22[7] = width;
    v22[8] = height;
    v23 = v11 - 1;
    if (v11 != 1)
    {
      v24 = (v10 + 56);
      v25 = 5;
      v26 = 0.0;
      do
      {
        v27 = v25 - 4;
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *(v12 + 16))
          {
            goto LABEL_44;
          }

          v28 = _swiftEmptyArrayStorage[v25];
        }

        v14 = v28;
        v29 = *(v10 + 16);
        if (v27 == v29)
        {
          goto LABEL_43;
        }

        if (v27 >= v29)
        {
          goto LABEL_45;
        }

        v30 = *(v24 - 1);
        v31 = *v24;
        v43 = CTLineGetBoundsWithOptions(v28, options);
        v32 = v43.size.width;
        v33 = v43.size.height;
        v34 = v26 + v15 - v31;
        if (a1)
        {
          v35 = v26 + v15 - v31;
        }

        else
        {
          v35 = 0.0;
        }

        if (a1)
        {
          v15 = v31;
          v26 = v34;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v37 = v4[2];
        v36 = v4[3];
        if (v37 >= v36 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v4);
        }

        v4[2] = v37 + 1;
        v38 = &v4[5 * v37];
        *(v38 + 4) = v14;
        *(v38 + 5) = v30;
        v38[6] = v35;
        v38[7] = v32;
        v38[8] = v33;
        ++v25;
        v24 += 2;
        --v23;
        v12 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
      }

      while (v23);
    }

LABEL_48:

    return v4;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_43:

  return v4;
}

void *CTFrameRef.lines.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(void))
{
  v4 = a1(v2);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    a2(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return _swiftEmptyArrayStorage;
}

__C::_NSRange_optional __swiftcall CTRunRef.convertToGlyphRange(textRange:stringIndices:)(__C::_NSRange textRange, Swift::OpaquePointer stringIndices)
{
  v3 = v2;
  length = textRange.length;
  location = textRange.location;
  Status = CTRunGetStatus(v3);
  v10 = location + length;
  v11 = __OFADD__(location, length);
  if (Status)
  {
    if (!v11)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = 1;
      v15 = location + length;
      v12 = location;
      goto LABEL_10;
    }

    goto LABEL_63;
  }

  if (v11)
  {
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v12 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v13 = -1;
  v14 = 0x8000000000000000;
  v15 = location;
LABEL_10:
  v9 = 0;
  v16 = 0;
  v17 = 0;
LABEL_11:
  v18 = v15 >= v12;
  if (Status)
  {
    v18 = v12 >= v15;
  }

  if (v18)
  {
    v19 = 0;
    v20 = v12 != v15 || v9;
    v9 = 1;
    if (v20)
    {
      v8 = 0;
      goto LABEL_60;
    }

    v21 = v12;
    v8 = 0;
    if (!v17 && v16 == 0x8000000000000000)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v17 = !__OFADD__(v12, v13);
    if (__OFADD__(v12, v13))
    {
      v16 = 0x8000000000000000;
    }

    else
    {
      v16 = 0;
    }

    if (__OFADD__(v12, v13))
    {
      v21 = v14;
    }

    else
    {
      v21 = v12 + v13;
    }
  }

  v22 = *(stringIndices._rawValue + 2);
  v23 = v22;
  do
  {
    if (!v23)
    {
      v12 = v21;
      goto LABEL_11;
    }

    v19 = v23 - 1;
    v24 = *(stringIndices._rawValue + v23-- + 3);
  }

  while (v24 != v12);
  v9 = 0;
  v8 = 1;
  if (v22 == 1 || length == 1)
  {
    goto LABEL_60;
  }

  if ((Status & 1) == 0)
  {
    v25 = 1;
    goto LABEL_37;
  }

  if (v11)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v25 = -1;
  location += length;
LABEL_37:
  v26 = v12 >= location;
  if ((Status & 1) == 0)
  {
    v26 = location >= v12;
  }

  if (!v26)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    if (Status)
    {
      v27 = 0x8000000000000000;
    }

    v8 = 1;
    while (1)
    {
      v29 = location + v25;
      if (__OFADD__(location, v25))
      {
        v29 = v27;
      }

      if (v22)
      {
        break;
      }

LABEL_44:
      v28 = v12 >= v29;
      if ((Status & 1) == 0)
      {
        v28 = v29 >= v12;
      }

      location = v29;
      if (v28)
      {
        goto LABEL_59;
      }
    }

    v30 = 0;
    while (*(stringIndices._rawValue + v30 + 4) != location)
    {
      if (v22 == ++v30)
      {
        goto LABEL_44;
      }
    }

    v32 = v19 - v30;
    v31 = v19 - v30 < 0;
    if (v19 >= v30)
    {
      v19 = v30;
    }

    if (v31)
    {
      v32 = -v32;
    }

    v8 = v32 + 1;
    if (!__OFADD__(v32, 1))
    {
LABEL_59:
      v9 = 0;
      goto LABEL_60;
    }

    goto LABEL_66;
  }

  v9 = 0;
  v8 = 1;
LABEL_60:
  Status = v19;
LABEL_67:
  result.value.length = v8;
  result.value.location = Status;
  result.is_nil = v9;
  return result;
}

void CTRunRef.drawingWidth(range:positions:)(CFRange range, CGPoint *a2)
{
  v3 = v2;
  location = range.location;
  ImageBounds = CTRunGetImageBounds(v3, 0, range);
  x = ImageBounds.origin.x;
  y = ImageBounds.origin.y;
  width = ImageBounds.size.width;
  height = ImageBounds.size.height;
  if (a2)
  {
    v10 = a2;
    if ((location & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (*&v10[1].x > location)
      {

        v18.origin.x = x;
        v18.origin.y = y;
        v18.size.width = width;
        v18.size.height = height;
        CGRectGetWidth(v18);
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  GlyphCount = CTRunGetGlyphCount(v3);
  if ((GlyphCount & 0x8000000000000000) == 0)
  {
    v12 = *&GlyphCount;
    if (GlyphCount)
    {
      _sSo7CGPointVMa_2(0);
      v13 = v3;
      v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v10[1].x = v12;
    }

    else
    {
      v14 = v3;
      v10 = _swiftEmptyArrayStorage;
    }

    v16.location = 0;
    v16.length = 0;
    CTRunGetPositions(v3, v16, v10 + 2);
    v15 = CTRunGetGlyphCount(v3);
    if (*&v12 < v15)
    {
      goto LABEL_14;
    }

    *&v10[1].x = v15;

    if ((location & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

CFIndex CTRunRef.positions.getter()
{
  result = CTRunGetGlyphCount(v0);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      _sSo7CGPointVMa_2(0);
      v3 = v0;
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *&v4[1].x = v2;
    }

    else
    {
      v5 = v0;
      v4 = _swiftEmptyArrayStorage;
    }

    v6.location = 0;
    v6.length = 0;
    CTRunGetPositions(v0, v6, v4 + 2);
    result = CTRunGetGlyphCount(v0);
    if (v2 >= result)
    {
      *&v4[1].x = result;

      return v4;
    }
  }

  __break(1u);
  return result;
}

void CTRunRef.drawingWidth(forGlyphAtIndex:positions:)(CFRange a1)
{
  length = a1.length;
  a1.length = 1;
  CTRunRef.drawingWidth(range:positions:)(a1, length);
}

double CTRunRef.typographicBounds(forGlyphAtIndex:)(CFRange range)
{
  v3.location = range.location;
  v3.length = 1;
  return CTRunGetTypographicBounds(v1, v3, 0, 0, 0);
}

CFIndex CTRunRef.stringIndices.getter(uint64_t a1, void (*a2)(const __CTRun *, void, void, void *))
{
  result = CTRunGetGlyphCount(v2);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = v2;
    if (v5)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v5;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    a2(v6, 0, 0, v7 + 4);
    result = CTRunGetGlyphCount(v6);
    if (v5 >= result)
    {
      v7[2] = result;

      return v7;
    }
  }

  __break(1u);
  return result;
}

id CTRunRef.PartialRunView.__allocating_init(run:range:textPosition:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_run] = a1;
  v12 = &v11[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_range];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_textPosition];
  *v13 = a4;
  v13[1] = a5;
  v17.receiver = v11;
  v17.super_class = v5;
  v14 = a1;
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v15 setOpaque:{0, v17.receiver, v17.super_class}];

  return v15;
}

id CTRunRef.PartialRunView.init(run:range:textPosition:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_run] = a1;
  v7 = &v5[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_range];
  *v7 = a2;
  *(v7 + 1) = a3;
  v8 = &v5[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_textPosition];
  *v8 = a4;
  v8[1] = a5;
  v12.receiver = v5;
  v12.super_class = type metadata accessor for CTRunRef.PartialRunView();
  v9 = a1;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setOpaque:{0, v12.receiver, v12.super_class}];

  return v10;
}

void CTRunRef.PartialRunView.draw(_:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v16.receiver = v4;
  v16.super_class = type metadata accessor for CTRunRef.PartialRunView();
  objc_msgSendSuper2(&v16, "drawRect:", a1, a2, a3, a4);
  v9 = UIGraphicsGetCurrentContext();
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() blueColor];
    v12 = [v11 CGColor];

    CGContextSetFillColorWithColor(v10, v12);
    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    Height = CGRectGetHeight(v17);
    CGAffineTransformMakeTranslation(&v15, 0.0, Height + *&v4[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_textPosition + 8]);
    CGAffineTransformScale(&v14, &v15, 1.0, -1.0);
    v15 = v14;
    CGContextSetTextMatrix(v10, &v15);
    CTRunDraw(*&v4[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_run], v10, *&v4[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_range]);
  }
}

id CTRunRef.PartialRunView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CTRunRef.PartialRunView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *_ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd_1, &_ss23_ContiguousArrayStorageCySSGMR_1);
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
    v10 = _swiftEmptyArrayStorage;
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

void _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSo7CGPointV_Tt1g5053_sSo10CTFrameRefa14MusicUtilitiesE11lineOriginsSaySo7F22VGvgySryAFGz_SiztXEfU_So0I3RefaTf1nc_nTf4ng_n(CGPoint *a1, const __CTFrame *a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a1)
  {
    _sSo7CGPointVMa_2(0);
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *&v5[1].x = a1;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v7 = 0;
  v6[0] = v5 + 2;
  v6[1] = a1;
  closure #1 in CTFrameRef.lineOrigins.getter(v6, &v7, a2);
  if (v2)
  {
    if (v7 <= a1)
    {
      *&v5[1].x = v7;

      return;
    }

    goto LABEL_11;
  }

  if (v7 <= a1)
  {
    *&v5[1].x = v7;
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  _sSo17OS_dispatch_queueCMa_2();
  v13 = static OS_dispatch_queue.main.getter();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_73;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWl_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_2, &_sSay8Dispatch0A13WorkItemFlagsVGMR_2);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWl_2();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static OS_dispatch_queue.syncOnMainIfNeeded(_:)(void (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    a1();
  }

  else
  {
    _sSo17OS_dispatch_queueCMa_2();
    v4 = static OS_dispatch_queue.main.getter();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v7[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v7[5] = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed () -> ();
    v7[3] = &block_descriptor_3_6;
    v6 = _Block_copy(v7);

    dispatch_sync(v4, v6);

    _Block_release(v6);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }
}

void OS_dispatch_queue.asyncAfter(_:block:)(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v20 = *(v8 - 8);
  v21 = v8;
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v19 - v15;
  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v12 + 8);
  v17(v14, v11);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_6_4;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWl_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_2, &_sSay8Dispatch0A13WorkItemFlagsVGMR_2);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWl_2();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);
  (*(v22 + 8))(v7, v5);
  (*(v20 + 8))(v10, v21);
  v17(v16, v11);
}

uint64_t OS_dispatch_queue.asyncAfterUIFeedbackDeadline(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v12 - v8;
  type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_9_0;
  _Block_copy(aBlock);
  v12[1] = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWl_1();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_2, &_sSay8Dispatch0A13WorkItemFlagsVGMR_2);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWl_2();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  DispatchWorkItem.init(flags:block:)();

  static DispatchTime.now()();
  + infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v10)(v9, v4);
}

uint64_t OS_dispatch_queue.asyncAfterUIFeedbackDeadline(_:)(uint64_t a1)
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v9 - v5;
  static DispatchTime.now()();
  + infix(_:_:)();
  v7 = *(v2 + 8);
  v7(v4, v1);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();
  return (v7)(v6, v1);
}

uint64_t static OS_dispatch_queue.UIFeedbackDeadline.getter()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchTime.now()();
  + infix(_:_:)();
  return (*(v1 + 8))(v3, v0);
}

void NSFileManager.createDirectoryIfNeeded(at:)(uint64_t a1)
{
  v2 = v1;
  URL.path.getter();
  LOBYTE(v16) = 0;
  v3 = String._bridgeToObjectiveC()();

  v4 = [v1 fileExistsAtPath:v3 isDirectory:&v16];

  if (v4)
  {
    if (v16)
    {
      return;
    }

    URL._bridgeToObjectiveC()(v16);
    v7 = v6;
    v16 = 0;
    v8 = [v1 removeItemAtURL:v6 error:&v16];

    v9 = v16;
    if (!v8)
    {
      goto LABEL_7;
    }

    v10 = v16;
  }

  URL._bridgeToObjectiveC()(v5);
  v12 = v11;
  v16 = 0;
  v13 = [v2 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v16];

  v9 = v16;
  if (v13)
  {
    v14 = v16;
    return;
  }

LABEL_7:
  v15 = v9;
  _convertNSErrorToError(_:)();

  swift_willThrow();
}

Swift::tuple_exists_Bool_isDirectory_Bool __swiftcall NSFileManager.directoryExists(at:)(Swift::String at)
{
  v7 = 0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v7];

  v5 = v3;
  result.isDirectory = v4;
  result.exists = v5;
  return result;
}

uint64_t NSFileManager.groupCacheURL(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_2, &_s10Foundation3URLVSgMR_2);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v2 containerURLForSecurityApplicationGroupIdentifier:v12];

  if (v13)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v9 + 56);
    v14(v5, 0, 1, v8);
  }

  else
  {
    v14 = *(v9 + 56);
    v14(v5, 1, 1, v8);
  }

  _s10Foundation3URLVSgWOb_2(v5, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    _s10Foundation3URLVSgWOh_2(v7);
    v15 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();
    v16 = *(v9 + 8);
    v16(v7, v8);
    URL.appendingPathComponent(_:isDirectory:)();
    v16(v11, v8);
    v15 = 0;
  }

  return (v14)(a1, v15, 1, v8);
}

uint64_t _s10Foundation3URLVSgWOb_2(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_2, &_s10Foundation3URLVSgMR_2);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation3URLVSgWOh_2(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_2, &_s10Foundation3URLVSgMR_2);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type NSFileManager.Failure and conformance NSFileManager.Failure()
{
  result = lazy protocol witness table cache variable for type NSFileManager.Failure and conformance NSFileManager.Failure;
  if (!lazy protocol witness table cache variable for type NSFileManager.Failure and conformance NSFileManager.Failure)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSFileManager.Failure and conformance NSFileManager.Failure);
  }

  return result;
}

uint64_t String.sha256Data.getter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for SHA256();
  v19 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256Digest();
  v21 = *(v5 - 8);
  __chkstk_darwin();
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v11 = String.data(using:allowLossyConversion:)();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (v13 >> 60 != 15)
  {
    outlined copy of Data._Representation(v11, v13);
    lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    dispatch thunk of HashFunction.init()();
    outlined copy of Data._Representation(v11, v13);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v11, v13, v4);
    outlined consume of Data?(v11, v13);
    outlined consume of Data?(v11, v13);
    v14 = v20;
    dispatch thunk of HashFunction.finalize()();
    (*(v19 + 8))(v4, v2);
    v24 = v5;
    v25 = lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
    v16 = v21;
    (*(v21 + 16))(boxed_opaque_existential_1, v14, v5);
    __swift_project_boxed_opaque_existential_0Tm(v23, v24);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    outlined consume of Data?(v11, v13);
    (*(v16 + 8))(v14, v5);
    v11 = v22;
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  return v11;
}

uint64_t Data.Digest.SHA256.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SHA256();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(a1, a2);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2, v7);
  outlined consume of Data._Representation(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Data.Digest.MD5.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Insecure.MD5();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(a1, a2);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2, v7);
  outlined consume of Data._Representation(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Data.Digest.SHA512.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SHA512();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA512 and conformance SHA512, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(a1, a2);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2, v7);
  outlined consume of Data._Representation(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  return (*(v5 + 8))(v7, v4);
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &lazy protocol witness table cache variable for type SHA256 and conformance SHA256, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &lazy protocol witness table cache variable for type SHA256 and conformance SHA256, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  }

  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for Insecure.MD5();
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for Insecure.MD5, &lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for Insecure.MD5, &lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
  }

  type metadata accessor for Insecure.MD5();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA512();
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA512 and conformance SHA512, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &lazy protocol witness table cache variable for type SHA512 and conformance SHA512, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &lazy protocol witness table cache variable for type SHA512 and conformance SHA512, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  }

  type metadata accessor for SHA512();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA512 and conformance SHA512, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO_1(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for Data.Digest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Data.Digest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      a5(0);
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(a6, a7, a8);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copyContents(initializing:)(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
LABEL_20:
    a3 = 0;
    goto LABEL_24;
  }

  if (!a3)
  {
LABEL_24:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v5;
    *(result + 24) = a5 < 1;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a4 + a5;
    v7 = __OFADD__(a4, a5);
    if (v5 > v6)
    {
      v6 = v5;
    }

    v8 = v6 - v5;
    v9 = 1;
    while (1)
    {
      if (a5 < 1)
      {
        v5 = 0;
        a3 = 0;
        goto LABEL_24;
      }

      if (v7)
      {
        break;
      }

      if (v5 - v6 + v9 == 1)
      {
        v5 = v6;
        a3 = v8;
        goto LABEL_24;
      }

      *a2 = v5 + v9 - 1;
      if (a3 == v9)
      {
        v5 += v9;
        goto LABEL_24;
      }

      ++a2;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array.append(_:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10(v7);
  if (v11)
  {
    (*(v6 + 16))(v9, a1, v5);
    Array.append(_:)();
  }

  return v11 & 1;
}

uint64_t Array.append<A>(contentsOf:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a5 - 8);
  v9 = __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12(v9);
  if (v13)
  {
    (*(v8 + 16))(v11, a1, a5);
    Array.append<A>(contentsOf:)();
  }

  return v13 & 1;
}

uint64_t Array.item(where:)@<X0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.firstIndex(where:)();
  if (v9)
  {
    v7 = 1;
  }

  else
  {
    Array.subscript.getter();
    v7 = 0;
  }

  return (*(*(a4 - 8) + 56))(a5, v7, 1, a4);
}

Swift::Void __swiftcall Array.moveItem(at:to:)(Swift::Int at, Swift::Int to)
{
  v3 = *(v2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v9 - v7;
  Array.remove(at:)();
  (*(v4 + 16))(v6, v8, v3);
  Array.insert(_:at:)();
  (*(v4 + 8))(v8, v3);
}

uint64_t Array.subscript.getter@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd_0, &_sSnySiGMR_0);
  if (Range.contains(_:)())
  {
    Array.subscript.getter();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return (*(*(a3 - 8) + 56))(a4, v6, 1, a3);
}

uint64_t Array.inserting(separator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = a1;
  return Array.inserting(separator:)(partial apply for closure #1 in Array.inserting(separator:), v4, a2, a3);
}

uint64_t Array.inserting(separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = Array.count.getter();
  if (result < 2)
  {

    return a3;
  }

  if (result + 0x4000000000000000 >= 0)
  {
    v13[8] = 0;
    v13[9] = 2 * result - 1;
    __chkstk_darwin();
    v13[2] = a4;
    v13[3] = a3;
    v13[4] = a1;
    v13[5] = a2;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd_0, &_sSnySiGMR_0);
    v10 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in Array.inserting(separator:), v13, v9, a4, &type metadata for Never, v10, &protocol witness table for Never, v11);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in Array.inserting(separator:)(uint64_t *a1)
{
  if (*a1)
  {
    return (*(v1 + 32))();
  }

  else
  {
    return Array.subscript.getter();
  }
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a8;
  v36 = a1;
  v37 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin();
  v38 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v13 = &v25 - v12;
  __chkstk_darwin();
  v34 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v28 = *(v15 - 8);
  v29 = v15;
  __chkstk_darwin();
  v17 = &v25 - v16;
  v18 = dispatch thunk of Collection.count.getter();
  if (v18)
  {
    v39 = v18;
    v43 = ContiguousArray.init()();
    v30 = type metadata accessor for ContiguousArray();
    ContiguousArray.reserveCapacity(_:)(v39);
    dispatch thunk of Collection.startIndex.getter();
    if ((v39 & 0x8000000000000000) == 0)
    {
      v25 = v10;
      v26 = a5;
      v19 = 0;
      v31 = (v40 + 16);
      v32 = (v40 + 8);
      v33 = v8;
      while (!__OFADD__(v19, 1))
      {
        v40 = v19 + 1;
        v20 = dispatch thunk of Collection.subscript.read();
        v21 = v13;
        v22 = v13;
        v23 = AssociatedTypeWitness;
        (*v31)(v21);
        v20(v42, 0);
        v24 = v41;
        v36(v22, v38);
        if (v24)
        {
          (*v32)(v22, v23);
          (*(v28 + 8))(v17, v29);

          (*(v25 + 32))(v27, v38, v26);
          return;
        }

        v41 = 0;
        (*v32)(v22, v23);
        ContiguousArray.append(_:)();
        dispatch thunk of Collection.formIndex(after:)();
        ++v19;
        v13 = v22;
        if (v40 == v39)
        {
          (*(v28 + 8))(v17, v29);
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    static Array._allocateUninitialized(_:)();
  }
}

unint64_t _sS2iSZsWl_0()
{
  result = _sS2iSZsWL_0;
  if (!_sS2iSZsWL_0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_sS2iSZsWL_0);
  }

  return result;
}

uint64_t Set.insert(_:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 16);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12(v9))
  {
    (*(v8 + 16))(v11, a2, v7);
    v13 = Set.insert(_:)();
    (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(a1, 1, 1, v7);
    v13 = 0;
  }

  return v13 & 1;
}

id NSBundle.displayName.getter()
{
  result = [v0 localizedInfoDictionary];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16) && (v4 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5Tm_0(0xD000000000000013, 0x80000001004D5AE0, &String.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:)), (v5 & 1) != 0))
    {
      outlined init with copy of Any(*(v3 + 56) + 32 * v4, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t NSBundle.exportedTypeDeclarations.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForInfoDictionaryKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd_0, &_sSaySDySSypGGMR_0);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v7, &_sypSgMd_2, &_sypSgMR_2);
    return 0;
  }
}

uint64_t ClosedRange.clamp(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  max<A>(_:_:)();
  min<A>(_:_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ClosedRange<>.scaledValue(relativeTo:relativeValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v30 = a4;
  v25 = a2;
  v7 = *(*(a4 + 16) + 8);
  v8 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  __chkstk_darwin();
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v24 - v10;
  __chkstk_darwin();
  v31 = &v24 - v12;
  __chkstk_darwin();
  v14 = &v24 - v13;
  __chkstk_darwin();
  v16 = &v24 - v15;
  v28 = a3;
  v29 = v7;
  v17 = *(v7 + 8);
  v27 = a1;
  v19 = v18;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  LOBYTE(v7) = dispatch thunk of static Comparable.> infix(_:_:)();
  v20 = *(v19 + 8);
  v20(v14, v8);
  if (v7)
  {
    ClosedRange.clamp(_:)(v25, v28);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v24 = v17;
    dispatch thunk of static FloatingPoint./ infix(_:_:)();
    v20(v11, v8);
    v21 = v26;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v22 = v31;
    dispatch thunk of static Numeric.* infix(_:_:)();
    v20(v21, v8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v20(v11, v8);
    v20(v22, v8);
    v20(v14, v8);
    return (v20)(v16, v8);
  }

  else
  {
    v20(v16, v8);
    return (*(v19 + 16))(v32, v33, v8);
  }
}

uint64_t Data.hexRepresentation.getter(uint64_t a1, unint64_t a2)
{
  outlined copy of Data._Representation(a1, a2);
  result = specialized Data.withUnsafeBytes<A>(_:)(a1, a2, a1, a2);
  if (!v5)
  {
    return 0;
  }

  return result;
}

void closure #1 in Data.hexRepresentation.getter(uint8x16_t *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a3);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    swift_slowAlloc();
    goto LABEL_42;
  }

  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_8:
    LODWORD(v9) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v9 = v9;
  }

LABEL_10:
  if (v9 + 0x4000000000000000 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v13 = swift_slowAlloc();
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      LODWORD(v14) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v14 = v14;
      goto LABEL_17;
    }

    v14 = BYTE6(a3);
    if (BYTE6(a3))
    {
LABEL_21:
      v17 = v14 - 1;
      if (v14 - 1 >= 0x4000000000000000)
      {
        v18 = 0x4000000000000000;
      }

      else
      {
        v18 = v14 - 1;
      }

      if (v14 <= 0x20)
      {
        goto LABEL_29;
      }

      if (v17 >= 0x4000000000000000)
      {
        v17 = 0x4000000000000000;
      }

      if (v13 >= a1->u64 + v17 + 1 || v13 + 2 * v17 + 2 <= a1)
      {
        v20 = v18 + 1;
        v21 = v20 & 0x1F;
        if ((v20 & 0x1F) == 0)
        {
          v21 = 32;
        }

        v19 = v20 - v21;
        v22 = (v13 + 32);
        v23 = a1 + 1;
        v24.i64[0] = 0x9F9F9F9F9F9F9F9FLL;
        v24.i64[1] = 0x9F9F9F9F9F9F9F9FLL;
        v25.i64[0] = 0x5757575757575757;
        v25.i64[1] = 0x5757575757575757;
        v26.i64[0] = 0x3030303030303030;
        v26.i64[1] = 0x3030303030303030;
        v27.i64[0] = 0xF0F0F0F0F0F0F0FLL;
        v27.i64[1] = 0xF0F0F0F0F0F0F0FLL;
        v28.i64[0] = 0x909090909090909;
        v28.i64[1] = 0x909090909090909;
        v29 = v19;
        do
        {
          v30 = v23[-1];
          v31.i64[0] = 0x5757575757575757;
          v31.i64[1] = 0x5757575757575757;
          v32.i64[0] = 0x5757575757575757;
          v32.i64[1] = 0x5757575757575757;
          v33.i64[0] = 0x3030303030303030;
          v33.i64[1] = 0x3030303030303030;
          v34.i64[0] = 0x3030303030303030;
          v34.i64[1] = 0x3030303030303030;
          v49.val[0] = vbslq_s8(vcgtq_u8(v30, v24), vsraq_n_u8(v31, v30, 4uLL), vsraq_n_u8(v33, v30, 4uLL));
          v35 = vandq_s8(v30, v27);
          v49.val[1] = vbslq_s8(vcgtq_u8(v35, v28), vaddq_s8(v35, v25), vorrq_s8(v35, v26));
          v48.val[0] = vbslq_s8(vcgtq_u8(*v23, v24), vsraq_n_u8(v32, *v23, 4uLL), vsraq_n_u8(v34, *v23, 4uLL));
          v36 = vandq_s8(*v23, v27);
          v37 = v22 - 32;
          vst2q_s8(v37, v49);
          v48.val[1] = vbslq_s8(vcgtq_u8(v36, v28), vaddq_s8(v36, v25), vorrq_s8(v36, v26));
          vst2q_s8(v22, v48);
          v22 += 64;
          v23 += 2;
          v29 -= 32;
        }

        while (v29);
      }

      else
      {
LABEL_29:
        v19 = 0;
      }

      v38 = v19 - 0x4000000000000000;
      v39 = (v13 + 2 * v19 + 1);
      v40 = v14 - v19;
      v41 = &a1->u8[v19];
      while (v38)
      {
        v43 = *v41++;
        v42 = v43;
        v44 = (v43 >> 4) + 87;
        v45 = (v43 >> 4) | 0x30;
        if (v43 > 0x9F)
        {
          LOBYTE(v45) = v44;
        }

        *(v39 - 1) = v45;
        if ((v42 & 0xFu) <= 9)
        {
          v46 = v42 & 0xF | 0x30;
        }

        else
        {
          v46 = (v42 & 0xF) + 87;
        }

        *v39 = v46;
        v39 += 2;
        ++v38;
        if (!--v40)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_42:
    static String.Encoding.utf8.getter();
    *a4 = String.init(bytesNoCopy:length:encoding:freeWhenDone:)();
    a4[1] = v47;
    return;
  }

  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v12 = __OFSUB__(v15, v16);
  v14 = v15 - v16;
  if (!v12)
  {
LABEL_17:
    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (!v14)
    {
      goto LABEL_42;
    }

    goto LABEL_21;
  }

LABEL_48:
  __break(1u);
}

uint64_t one-time initialization function for hexToDecimalMapping()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_s5UInt8VTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for hexToDecimalMapping);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSJ_s5UInt8VtMd, &_sSJ_s5UInt8VtMR);
  result = swift_arrayDestroy();
  static Data.Hexadecimal.hexToDecimalMapping = v0;
  return result;
}

uint64_t *Data.Hexadecimal.hexToDecimalMapping.unsafeMutableAddressor()
{
  if (one-time initialization token for hexToDecimalMapping != -1)
  {
    swift_once();
  }

  return &static Data.Hexadecimal.hexToDecimalMapping;
}

double static Data.Hexadecimal.hexToDecimalMapping.getter()
{
  if (one-time initialization token for hexToDecimalMapping != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static Data.Hexadecimal.hexToDecimalMapping.setter(uint64_t a1)
{
  if (one-time initialization token for hexToDecimalMapping != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Data.Hexadecimal.hexToDecimalMapping = a1;

  return result;
}

uint64_t (*static Data.Hexadecimal.hexToDecimalMapping.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for hexToDecimalMapping != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ArtworkVideoReportingController.videoArtworkContextProviding.modify;
}

uint64_t Data.init(hexString:)(uint64_t a1, void *a2)
{
  if (String.count.getter())
  {
    v15[0] = 48;
    v15[1] = 0xE100000000000000;
    v4._countAndFlagsBits = a1;
    v4._object = a2;
    String.append(_:)(v4);
  }

  v5 = 0;
  LOBYTE(v6) = 0;
  v16 = xmmword_1004F3030;
  while (1)
  {
    v8 = String.Iterator.next()();
    if (!v8.value._object)
    {
      break;
    }

    if (one-time initialization token for hexToDecimalMapping != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = static Data.Hexadecimal.hexToDecimalMapping;
    if (!*(static Data.Hexadecimal.hexToDecimalMapping + 16) || (v10 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5Tm_0(v8.value._countAndFlagsBits, v8.value._object, &Character.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:)), (v11 & 1) == 0))
    {
      swift_endAccess();

      outlined consume of Data._Representation(v16, *(&v16 + 1));
      return 0;
    }

    v12 = *(*(v9 + 56) + v10);
    swift_endAccess();

    if (v5)
    {
      v6 = v12 + v6;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_17;
      }

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVys5UInt8VGMd, &_ss15CollectionOfOneVys5UInt8VGMR);
      v15[3] = v13;
      v15[4] = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>, &_ss15CollectionOfOneVys5UInt8VGMd, &_ss15CollectionOfOneVys5UInt8VGMR, &protocol conformance descriptor for <A> CollectionOfOne<A>);
      LOBYTE(v15[0]) = v6;
      __swift_project_boxed_opaque_existential_0Tm(v15, v13);
      Data._Representation.replaceSubrange(_:with:count:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      LOBYTE(v6) = 0;
    }

    else
    {
      v6 = 16 * (v12 & 0xF) + v6;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_18;
      }
    }

    if (__OFADD__(v5++, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
    }
  }

  return v16;
}

uint64_t one-time initialization function for musicDefaultCalendar()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  __chkstk_darwin();
  v1 = &v14 - v0;
  v2 = type metadata accessor for Calendar.Identifier();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v10, static Calendar.musicDefaultCalendar);
  v11 = __swift_project_value_buffer(v6, static Calendar.musicDefaultCalendar);
  (*(v3 + 104))(v5, enum case for Calendar.Identifier.gregorian(_:), v2);
  Calendar.init(identifier:)();
  (*(v3 + 8))(v5, v2);
  TimeZone.init(secondsFromGMT:)();
  v12 = type metadata accessor for TimeZone();
  result = (*(*(v12 - 8) + 48))(v1, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    Calendar.timeZone.setter();
    return (*(v7 + 32))(v11, v9, v6);
  }

  return result;
}

uint64_t Calendar.musicDefaultCalendar.unsafeMutableAddressor()
{
  if (one-time initialization token for musicDefaultCalendar != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Calendar();

  return __swift_project_value_buffer(v0, static Calendar.musicDefaultCalendar);
}

uint64_t static Calendar.musicDefaultCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for musicDefaultCalendar != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Calendar();
  v3 = __swift_project_value_buffer(v2, static Calendar.musicDefaultCalendar);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static Calendar.date(forReleaseYear:)@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  __chkstk_darwin();
  v6 = &v18 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  __chkstk_darwin();
  v8 = &v18 - v7;
  v9 = type metadata accessor for DateComponents();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 56);

    return v14(a3, 1, 1, v13);
  }

  else
  {
    if (one-time initialization token for musicDefaultCalendar != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Calendar();
    __swift_project_value_buffer(v16, static Calendar.musicDefaultCalendar);
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    v17 = type metadata accessor for TimeZone();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    Calendar.date(from:)();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t static FormatStyle<>.musicReleaseYear.getter()
{
  type metadata accessor for TimeZone();
  __chkstk_darwin();
  v0 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date.FormatStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ParseableFormatStyle<>.dateTime.getter();
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  Date.FormatStyle.year(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  if (one-time initialization token for musicDefaultCalendar != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Calendar();
  __swift_project_value_buffer(v8, static Calendar.musicDefaultCalendar);
  Calendar.timeZone.getter();
  return Date.FormatStyle.timeZone.setter();
}

id static NSDateFormatter.iso8601ExtendedDateFormatter.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  __chkstk_darwin();
  v1 = &v13 - v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSDateFormatter) init];
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  [v6 setLocale:isa];

  v8 = String._bridgeToObjectiveC()();
  [v6 setDateFormat:v8];

  TimeZone.init(secondsFromGMT:)();
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v1, 1, v9) != 1)
  {
    v11 = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v1, v9);
  }

  [v6 setTimeZone:v11];

  return v6;
}

void one-time initialization function for releaseDateFormatter()
{
  v0 = type metadata accessor for TimeZone();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  [v4 setDateStyle:3];
  if (one-time initialization token for musicDefaultCalendar != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Calendar();
  __swift_project_value_buffer(v5, static Calendar.musicDefaultCalendar);
  Calendar.timeZone.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone:isa];

  static NSDateFormatter.releaseDateFormatter = v4;
}

uint64_t *NSDateFormatter.releaseDateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for releaseDateFormatter != -1)
  {
    swift_once();
  }

  return &static NSDateFormatter.releaseDateFormatter;
}

id one-time initialization function for collectionsDurationFormatter()
{
  v0 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v0 setUnitsStyle:3];
  result = [v0 setAllowedUnits:96];
  static NSDateFormatter.collectionsDurationFormatter = v0;
  return result;
}

uint64_t *NSDateFormatter.collectionsDurationFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for collectionsDurationFormatter != -1)
  {
    swift_once();
  }

  return &static NSDateFormatter.collectionsDurationFormatter;
}

void Dictionary.filterIncludingPairsWithStringValues()(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = *(a3 - 8);
  __chkstk_darwin();
  v65 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v56 = v52 - v9;
  v53 = *(v10 - 8);
  __chkstk_darwin();
  v73 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = v52 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = type metadata accessor for Optional();
  v14 = *(v62 - 8);
  __chkstk_darwin();
  v68 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = v52 - v16;
  swift_getTupleTypeMetadata2();
  v17 = static Array._allocateUninitialized(_:)();
  v55 = a4;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n_0(v17, a2, &type metadata for String, a4);

  v76 = v18;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = __CocoaDictionary.makeIterator()();
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v64 = v19 | 0x8000000000000000;
  }

  else
  {
    v23 = -1 << *(a1 + 32);
    v21 = ~v23;
    v20 = a1 + 64;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(a1 + 64);
    v64 = a1;
  }

  v70 = (v53 + 32);
  v69 = (v54 + 32);
  v60 = TupleTypeMetadata2 - 8;
  v52[1] = v21;
  v26 = (v21 + 64) >> 6;
  v66 = (v53 + 16);
  v52[2] = v54 + 16;
  v58 = (v53 + 8);
  v59 = (v14 + 32);
  v57 = (v54 + 8);

  v27 = 0;
  v28 = v65;
  v29 = v68;
  v63 = v20;
  v30 = v64;
  if ((v64 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (__CocoaDictionary.Iterator.next()())
  {
    _forceBridgeFromObjectiveC<A>(_:_:)();
    swift_unknownObjectRelease();
    v31 = v56;
    _forceBridgeFromObjectiveC<A>(_:_:)();
    swift_unknownObjectRelease();
    v32 = v27;
    v72 = v22;
    goto LABEL_20;
  }

  v33 = 1;
  v71 = v27;
  v72 = v22;
  while (1)
  {
    v28 = v65;
LABEL_22:
    v42 = *(TupleTypeMetadata2 - 8);
    (*(v42 + 56))(v29, v33, 1, TupleTypeMetadata2);
    v43 = v61;
    (*v59)(v61, v29, v62);
    if ((*(v42 + 48))(v43, 1, TupleTypeMetadata2) == 1)
    {
      outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v64);
      return;
    }

    v44 = *(TupleTypeMetadata2 + 48);
    (*v70)(v73, v43, a2);
    (*v69)(v28, &v43[v44], a3);
    if (swift_dynamicCast())
    {
      v45 = v74;
      v46 = v75;
LABEL_27:
      v50 = v67;
      v22 = v72;
      (*v57)(v28, a3);
      v51 = v73;
      (*v66)(v50, v73, a2);
      v74 = v45;
      v75 = v46;
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      (*v58)(v51, a2);
      v27 = v71;
      v29 = v68;
      goto LABEL_29;
    }

    type metadata accessor for UIAction(0, &_sSo8NSNumberCML_1, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v47 = v74;
      v48 = [v74 description];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v49;

      v28 = v65;
      goto LABEL_27;
    }

    (*v58)(v73, a2);
    (*v57)(v28, a3);
    v27 = v71;
    v22 = v72;
LABEL_29:
    v20 = v63;
    v30 = v64;
    if ((v64 & 0x8000000000000000) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v34 = v22;
    v32 = v27;
    if (!v22)
    {
      break;
    }

LABEL_19:
    v72 = (v34 - 1) & v34;
    v38 = __clz(__rbit64(v34)) | (v32 << 6);
    v39 = v30;
    (*(v53 + 16))(v67, *(v30 + 48) + *(v53 + 72) * v38, a2);
    v40 = *(v39 + 56) + *(v54 + 72) * v38;
    v31 = v56;
    (*(v54 + 16))(v56, v40, a3);
LABEL_20:
    v41 = *(TupleTypeMetadata2 + 48);
    v29 = v68;
    (*v70)();
    (*v69)(&v29[v41], v31, a3);
    v33 = 0;
    v71 = v32;
  }

  if (v26 <= v27 + 1)
  {
    v35 = v27 + 1;
  }

  else
  {
    v35 = v26;
  }

  v36 = v35 - 1;
  v37 = v27;
  while (1)
  {
    v32 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v32 >= v26)
    {
      v71 = v36;
      v72 = 0;
      v33 = 1;
      goto LABEL_22;
    }

    v34 = *(v20 + 8 * v32);
    ++v37;
    if (v34)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

void Dictionary.filteredDictionary(_:)(uint64_t (*a1)(char *, char *), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a1;
  v61 = a2;
  type metadata accessor for Optional();
  __chkstk_darwin();
  v52 = v50 - v10;
  v55 = *(a5 - 8);
  __chkstk_darwin();
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = v50 - v13;
  v54 = *(a4 - 8);
  __chkstk_darwin();
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = v50 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = type metadata accessor for Optional();
  v18 = *(v68 - 8);
  __chkstk_darwin();
  v67 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = v50 - v20;
  swift_getTupleTypeMetadata2();
  v21 = static Array._allocateUninitialized(_:)();
  v73 = a4;
  v53 = a6;
  v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n_0(v21, a4, a5, a6);

  v77 = v22;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v23 = __CocoaDictionary.makeIterator()();
    v24 = 0;
    v25 = 0;
    v69 = v23 | 0x8000000000000000;
    v70 = 0;
  }

  else
  {
    v26 = -1 << *(a3 + 32);
    v24 = ~v26;
    v27 = *(a3 + 64);
    v69 = a3;
    v70 = a3 + 64;
    v28 = -v26;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v25 = v29 & v27;
  }

  v72 = (v54 + 32);
  v30 = (v55 + 32);
  v65 = TupleTypeMetadata2 - 8;
  v50[1] = v24;
  v31 = (v24 + 64) >> 6;
  v62 = (v55 + 16);
  v63 = (v54 + 16);
  v64 = (v18 + 32);
  v58 = (v54 + 8);
  v59 = (v55 + 8);
  v51 = (v55 + 56);

  v32 = 0;
  v74 = v12;
  v56 = v15;
  while (1)
  {
    v71 = v25;
    if ((v69 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (__CocoaDictionary.Iterator.next()())
    {
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v41 = v57;
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v34 = v32;
      v76 = v71;
      goto LABEL_21;
    }

    v44 = 1;
    v36 = v32;
    v76 = v71;
    v43 = v67;
LABEL_22:
    v45 = *(TupleTypeMetadata2 - 8);
    (*(v45 + 56))(v43, v44, 1, TupleTypeMetadata2);
    v46 = v66;
    (*v64)();
    if ((*(v45 + 48))(v46, 1, TupleTypeMetadata2) == 1)
    {
      outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v69);
      return;
    }

    v47 = *(TupleTypeMetadata2 + 48);
    v48 = v73;
    (*v72)(v15, v46, v73);
    (*v30)(v12, &v46[v47], a5);
    if (v60(v15, v12))
    {
      (*v63)(v75, v15, v48);
      v49 = v52;
      (*v62)(v52, v74, a5);
      (*v51)(v49, 0, 1, a5);
      type metadata accessor for Dictionary();
      v12 = v74;
      Dictionary.subscript.setter();
    }

    (*v59)(v12, a5);
    (*v58)(v15, v48);
    v32 = v36;
    v25 = v76;
  }

  v33 = v25;
  v34 = v32;
  if (v25)
  {
LABEL_18:
    v76 = (v33 - 1) & v33;
    v38 = __clz(__rbit64(v33)) | (v34 << 6);
    v39 = v69;
    (*(v54 + 16))(v75, *(v69 + 48) + *(v54 + 72) * v38, v73);
    v40 = *(v39 + 56) + *(v55 + 72) * v38;
    v41 = v57;
    (*(v55 + 16))(v57, v40, a5);
LABEL_21:
    v42 = *(TupleTypeMetadata2 + 48);
    v43 = v67;
    (*v72)();
    (*v30)(&v43[v42], v41, a5);
    v44 = 0;
    v36 = v34;
    v12 = v74;
    v15 = v56;
    goto LABEL_22;
  }

  if (v31 <= v32 + 1)
  {
    v35 = v32 + 1;
  }

  else
  {
    v35 = v31;
  }

  v36 = v35 - 1;
  v37 = v32;
  while (1)
  {
    v34 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
      v76 = 0;
      v44 = 1;
      v43 = v67;
      goto LABEL_22;
    }

    v33 = *(v70 + 8 * v34);
    ++v37;
    if (v33)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t IndexPath.safeSection.getter()
{
  if ((IndexPath.count.getter() - 1) > 1)
  {

    return NSNotFound.getter();
  }

  else
  {

    return IndexPath.subscript.getter();
  }
}

uint64_t IndexPath.safeSection.setter(uint64_t a1)
{
  result = IndexPath.count.getter();
  if ((result - 1) <= 1)
  {

    return IndexPath.subscript.setter();
  }

  return result;
}

uint64_t (*IndexPath.safeSection.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if ((IndexPath.count.getter() - 1) > 1)
  {
    v3 = NSNotFound.getter();
  }

  else
  {
    v3 = IndexPath.subscript.getter();
  }

  *a1 = v3;
  return IndexPath.safeSection.modify;
}

uint64_t IndexPath.safeSection.modify(uint64_t *a1)
{
  result = IndexPath.count.getter();
  if ((result - 1) <= 1)
  {
    return IndexPath.subscript.setter();
  }

  return result;
}

uint64_t IndexPath.safeItem.getter()
{
  if (IndexPath.count.getter() > 1)
  {

    return IndexPath.subscript.getter();
  }

  else
  {

    return NSNotFound.getter();
  }
}

unint64_t IndexPath.safeItem.setter(uint64_t a1)
{
  result = IndexPath.count.getter();
  if (result >= 2)
  {

    return IndexPath.subscript.setter();
  }

  return result;
}

unint64_t (*IndexPath.safeItem.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (IndexPath.count.getter() > 1)
  {
    v3 = IndexPath.subscript.getter();
  }

  else
  {
    v3 = NSNotFound.getter();
  }

  *a1 = v3;
  return IndexPath.safeItem.modify;
}

unint64_t IndexPath.safeItem.modify(uint64_t *a1)
{
  result = IndexPath.count.getter();
  if (result >= 2)
  {
    return IndexPath.subscript.setter();
  }

  return result;
}

Swift::String __swiftcall String.trim()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CharacterSet.whitespacesAndNewlines.getter();
  v8._countAndFlagsBits = 41154;
  v8._object = 0xA200000000000000;
  CharacterSet.insert(charactersIn:)(v8);
  v15[0] = v3;
  v15[1] = v2;
  _sS2SSysWl_1();
  v9 = StringProtocol.trimmingCharacters(in:)();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

Swift::String __swiftcall String.removeSpaces()()
{
  _sS2SSysWl_1();
  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.replace(usingRegexPattern:with:options:)(Swift::String usingRegexPattern, Swift::String with, NSRegularExpressionOptions options)
{
  v5 = v4;
  v6 = v3;
  object = usingRegexPattern._object;
  countAndFlagsBits = usingRegexPattern._countAndFlagsBits;
  objc_allocWithZone(NSRegularExpression);

  v10 = @nonobjc NSRegularExpression.init(pattern:options:)(countAndFlagsBits, object, options);
  if (v10)
  {
    v11 = v10;
    v12 = String.count.getter();
    v13 = String._bridgeToObjectiveC()();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v11 stringByReplacingMatchesInString:v13 options:0 range:0 withTemplate:{v12, v14}];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v16;
  }

  else
  {
  }

  v17 = v6;
  v18 = v5;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

Swift::String __swiftcall String.insensitiveCompareString()()
{
  v2 = v1;
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd_1, &_s10Foundation6LocaleVSgMR_1);
  __chkstk_darwin();
  v5 = &v24 - v4;
  v6 = 0xE000000000000000;
  v28 = 0;
  v29 = 0xE000000000000000;
  v7 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v24 = v3;
  v25 = v2;
  v26 = 0;
  v27 = v7;

  v8 = String.Iterator.next()();
  if (v8.value._object)
  {
    countAndFlagsBits = v8.value._countAndFlagsBits;
    object = v8.value._object;
    do
    {
      if ((Character.isPunctuation.getter() & 1) == 0)
      {
        v12._countAndFlagsBits = countAndFlagsBits;
        v12._object = object;
        String.append(_:)(v12);
      }

      v11 = String.Iterator.next()();
      countAndFlagsBits = v11.value._countAndFlagsBits;
      object = v11.value._object;
    }

    while (v11.value._object);
    v13 = v28;
    v6 = v29;
  }

  else
  {
    v13 = 0;
  }

  v24 = v13;
  v25 = v6;
  _sS2SSysWl_1();
  v14 = StringProtocol.localizedLowercase.getter();
  v16 = v15;

  v28 = v14;
  v29 = v16;
  static Locale.current.getter();
  v17 = type metadata accessor for Locale();
  (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
  v18 = StringProtocol.folding(options:locale:)();
  v20 = v19;
  outlined destroy of TaskPriority?(v5, &_s10Foundation6LocaleVSgMd_1, &_s10Foundation6LocaleVSgMR_1);

  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

id String.BOOLValue.getter()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [v0 BOOLValue];

  return v1;
}

uint64_t String.containsExcessiveHeightCharacters.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12CharacterSetVSgMd, &_s10Foundation12CharacterSetVSgMR);
  __chkstk_darwin();
  v5 = v22 - v4;
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v22 - v10;
  __chkstk_darwin();
  v13 = v22 - v12;
  v14 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  if (v14)
  {
    v15 = v14;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      v16 = 0;
      return v16 & 1;
    }

    (*(v7 + 56))(v5, 1, 1, v6);
    lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, &type metadata accessor for CharacterSet, &protocol conformance descriptor for CharacterSet);
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v17 = *(v7 + 32);
      v17(v11, v5, v6);
      v17(v13, v11, v6);
      (*(v7 + 16))(v9, v13, v6);
      CharacterSet.remove(_:)();
      CharacterSet.remove(_:)();
      v22[0] = a1;
      v22[1] = a2;
      _sS2SSysWl_1();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      v19 = v18;
      v20 = *(v7 + 8);
      v20(v9, v6);
      v20(v13, v6);
      v16 = v19 ^ 1;
      return v16 & 1;
    }
  }

  v16 = 0;
  return v16 & 1;
}

BOOL String.containsCharacter(from:)(uint64_t a1)
{
  _sS2SSysWl_1();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  return (v1 & 1) == 0;
}

BOOL Optional<A>.isEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

uint64_t Optional<A>.nonEmpty.getter(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  return a1;
}

NSAttributedString __swiftcall NSAttributedString.init(string:attributes:replacingPlaceholder:withImage:imageAttributes:)(Swift::String string, Swift::OpaquePointer attributes, Swift::String replacingPlaceholder, UIImage_optional withImage, Swift::OpaquePointer imageAttributes)
{
  isa = withImage.value.super.isa;
  static String.localizedStringWithFormat(_:_:)();
  v6 = objc_allocWithZone(NSMutableAttributedString);
  v7 = String._bridgeToObjectiveC()();

  _sSo21NSAttributedStringKeyaMa_0(0);
  lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&_sSo21NSAttributedStringKeyaABSHSCWL_0, _sSo21NSAttributedStringKeyaMa_0, &_sSo21NSAttributedStringKeyaSHSCMc_0);
  v8 = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v6 initWithString:v7 attributes:v8];

  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 rangeOfString:v11 options:129];
  v14 = v13;

  if (isa)
  {
    v15 = objc_opt_self();
    isa = isa;
    v16 = [v15 textAttachmentWithImage:isa];
    v17 = Dictionary._bridgeToObjectiveC()().super.isa;

    v18 = [objc_opt_self() attributedStringWithAttachment:v16 attributes:v17];
  }

  else
  {

    v18 = [objc_allocWithZone(NSAttributedString) init];
  }

  [v9 replaceCharactersInRange:v12 withAttributedString:{v14, v18}];
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString:v9];

  return v19;
}

uint64_t NSAttributedString.init(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd_1, &_s10Foundation16AttributedStringVSgMR_1);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  _s10Foundation16AttributedStringVSgWOc_0(a1, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(a1, &_s10Foundation16AttributedStringVSgMd_1, &_s10Foundation16AttributedStringVSgMR_1);
    outlined destroy of TaskPriority?(v3, &_s10Foundation16AttributedStringVSgMd_1, &_s10Foundation16AttributedStringVSgMR_1);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v9, v3, v4);
    (*(v5 + 16))(v7, v9, v4);
    v11 = NSAttributedString.init(_:)();
    outlined destroy of TaskPriority?(a1, &_s10Foundation16AttributedStringVSgMd_1, &_s10Foundation16AttributedStringVSgMR_1);
    (*(v5 + 8))(v9, v4);
    return v11;
  }
}

uint64_t *Double.epsilon.unsafeMutableAddressor()
{
  if (one-time initialization token for epsilon != -1)
  {
    swift_once();
  }

  return &static Double.epsilon;
}

double static Double.epsilon.getter()
{
  if (one-time initialization token for epsilon != -1)
  {
    swift_once();
  }

  return *&static Double.epsilon;
}

uint64_t _NSRange.init(range:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  String.Index.samePosition(in:)();
  if (v4 & 1) != 0 || (String.Index.samePosition(in:)(), (v5))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = String.UTF16View.distance(from:to:)();
    String.UTF16View.distance(from:to:)();

    return v6;
  }

  return result;
}

{
  String.index(after:)();
  String.Index.samePosition(in:)();
  if (v4 & 1) != 0 || (String.Index.samePosition(in:)(), (v5))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = String.UTF16View.distance(from:to:)();
    String.UTF16View.distance(from:to:)();

    return v6;
  }

  return result;
}

Swift::Bool __swiftcall _NSRange.contains(_:)(__C::_NSRange a1)
{
  if (a1.location >= v1)
  {
    if (__OFADD__(a1.location, a1.length))
    {
      __break(1u);
    }

    else if (!__OFADD__(v1, v2))
    {
      LOBYTE(a1.location) = v1 + v2 >= a1.location + a1.length;
      return a1.location;
    }

    __break(1u);
    return a1.location;
  }

  LOBYTE(a1.location) = 0;
  return a1.location;
}

__C::_NSRange __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _NSRange.convert(from:to:preserveLength:)(Swift::String from, Swift::String to, Swift::Bool preserveLength)
{
  _sS2SSysWl_1();
  if (StringProtocol.contains<A>(_:)())
  {
    v4 = String.UTF16View.count.getter();
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 rangeOfString:{v6, to._countAndFlagsBits, to._object, from._countAndFlagsBits, from._object}];
    v9 = v8;

    v10.location = 0;
    v10.length = v4;
    v11.location = v7;
    v11.length = v9;
    v14 = _NSRange.convert(from:to:preserveLength:)(v10, v11, preserveLength);
    length = v14.length;
    location = v14.location;
  }

  else
  {
    lazy protocol witness table accessor for type _NSRange.ConversionError and conformance _NSRange.ConversionError();
    swift_allocError();
    *v15 = 4;
    location = swift_willThrow();
  }

  result.length = length;
  result.location = location;
  return result;
}

__C::_NSRange __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _NSRange.convert(from:to:preserveLength:)(__C::_NSRange from, __C::_NSRange to, Swift::Bool preserveLength)
{
  if (to.location < from.location)
  {
    goto LABEL_5;
  }

  if (__OFADD__(to.location, to.length))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = from.location + from.length;
  if (__OFADD__(from.location, from.length))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v5 < to.location + to.length)
  {
LABEL_5:
    v6 = 0;
LABEL_6:
    lazy protocol witness table accessor for type _NSRange.ConversionError and conformance _NSRange.ConversionError();
    swift_allocError();
    *v7 = v6;
    from.location = swift_willThrow();
    return from;
  }

  if (v3 < from.location)
  {
LABEL_11:
    v6 = 1;
    goto LABEL_6;
  }

  if (__OFADD__(v3, v4))
  {
    goto LABEL_20;
  }

  if (v5 < v3 + v4)
  {
    goto LABEL_11;
  }

  if (__OFSUB__(v3, to.location))
  {
LABEL_21:
    __break(1u);
    return from;
  }

  v9.location = 0;
  v9.length = v10;
  v11 = v4;
  *&from.location = _NSRange.intersection(_:)(v9);
  if (v12)
  {
    v6 = 2;
    goto LABEL_6;
  }

  if (preserveLength && from.length != v11)
  {
    v6 = 3;
    goto LABEL_6;
  }

  return from;
}

Swift::Bool __swiftcall _NSRange.intersects(_:)(__C::_NSRange a1)
{
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = a1.location + a1.length;
  if (__OFADD__(a1.location, a1.length))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 >= v4)
  {
    v5 = a1.location + a1.length;
  }

  else
  {
    v5 = v1 + v2;
  }

  if (v1 >= a1.location && v4 > v1)
  {
    if (!__OFSUB__(v5, v1))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v6 = 0;
  if (a1.location < v1 || v3 <= a1.location)
  {
    goto LABEL_15;
  }

  if (__OFSUB__(v5, a1.location))
  {
LABEL_18:
    __break(1u);
    return a1.location;
  }

LABEL_14:
  v6 = 1;
LABEL_15:
  LOBYTE(a1.location) = v6;
  return a1.location;
}

uint64_t one-time initialization function for notFound()
{
  result = NSNotFound.getter();
  static _NSRange.notFound = result;
  *algn_10063FA08 = 0;
  return result;
}

uint64_t *_NSRange.notFound.unsafeMutableAddressor()
{
  if (one-time initialization token for notFound != -1)
  {
    swift_once();
  }

  return &static _NSRange.notFound;
}

uint64_t static _NSRange.notFound.getter()
{
  if (one-time initialization token for notFound != -1)
  {
    swift_once();
  }

  return static _NSRange.notFound;
}

Swift::tuple_first___C__NSRange_second___C__NSRange __swiftcall _NSRange.difference(_:)(__C::_NSRange a1)
{
  v3 = v1 + v2;
  v4 = __OFADD__(v1, v2);
  if (v1 < a1.location)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (__OFADD__(a1.location, a1.length))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    v11 = v2;
    v13 = v1;
    swift_once();
    v2 = v11;
    v1 = v13;
    goto LABEL_39;
  }

  if (a1.location + a1.length >= v3)
  {
    if (one-time initialization token for notFound == -1)
    {
LABEL_44:
      v1 = static _NSRange.notFound;
      v2 = *algn_10063FA08;
      v5 = static _NSRange.notFound;
      v7 = *algn_10063FA08;
      goto LABEL_45;
    }

LABEL_47:
    swift_once();
    goto LABEL_44;
  }

LABEL_10:
  v5 = a1.location + a1.length;
  if (__OFADD__(a1.location, a1.length))
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v1 < a1.location || v5 <= v1)
  {
    goto LABEL_27;
  }

  v6 = 0;
  v2 = a1.location - v1;
  if (!__OFSUB__(a1.location, v1))
  {
    while (1)
    {
      v7 = v3 - v5;
      if (__OFSUB__(v3, v5))
      {
        goto LABEL_49;
      }

      if (!v6)
      {
        break;
      }

      if (v5 >= v3)
      {
        goto LABEL_38;
      }

      v3 = v1 + v2;
      if (__OFADD__(v1, v2))
      {
        __break(1u);
LABEL_54:
        v12 = v7;
        v14 = a1.location + a1.length;
        swift_once();
        v7 = v12;
        v5 = v14;
LABEL_42:
        v1 = v5;
        v2 = v7;
        v5 = static _NSRange.notFound;
        v7 = *algn_10063FA08;
        goto LABEL_45;
      }

      if (v3 < v5)
      {
        goto LABEL_45;
      }

      v8 = __OFADD__(v5, v7);
      v9 = v5 + v7;
      if (v8)
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v3 > v9)
      {
        v9 = v1 + v2;
      }

      if (v5 < v1)
      {
        v1 = a1.location + a1.length;
      }

      v2 = v9 - v1;
      if (!__OFSUB__(v9, v1))
      {
        goto LABEL_38;
      }

      __break(1u);
LABEL_27:
      if (a1.location < v1 || v3 <= a1.location)
      {
        goto LABEL_38;
      }

      v6 = v1 < a1.location && v2 > 0;
      v2 = a1.location - v1;
      if (__OFSUB__(a1.location, v1))
      {
        goto LABEL_37;
      }
    }

    if (v5 < v3)
    {
      if (one-time initialization token for notFound != -1)
      {
        goto LABEL_54;
      }

      goto LABEL_42;
    }

    if (one-time initialization token for notFound == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_47;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  if (one-time initialization token for notFound != -1)
  {
    goto LABEL_52;
  }

LABEL_39:
  v5 = static _NSRange.notFound;
  v7 = *algn_10063FA08;
LABEL_45:
  a1.location = v1;
  a1.length = v2;
  v1 = v5;
  v2 = v7;
LABEL_56:
  result.first = a1;
  result.second.length = v2;
  result.second.location = v1;
  return result;
}

Swift::Int_optional __swiftcall _NSRange.NSRangeIterator.next()()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v2 = 1;
  }

  else
  {
    v3 = *(v0 + 8);
    if (__OFADD__(*v0, v3))
    {
      __break(1u);
    }

    else if (v1 >= *v0 + v3)
    {
      v1 = 0;
      v2 = 1;
    }

    else
    {
      v2 = 0;
      *(v0 + 16) = v1 + 1;
    }
  }

  result.value = v1;
  result.is_nil = v2;
  return result;
}

void protocol witness for IteratorProtocol.next() in conformance _NSRange.NSRangeIterator(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (*(v1 + 24))
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 8);
  if (!__OFADD__(*v1, v3))
  {
    if (v2 < *v1 + v3)
    {
      v4 = 0;
      *(v1 + 16) = v2 + 1;
LABEL_7:
      *a1 = v2;
      *(a1 + 8) = v4;
      return;
    }

    v2 = 0;
LABEL_6:
    v4 = 1;
    goto LABEL_7;
  }

  __break(1u);
}

void protocol witness for Sequence.makeIterator() in conformance _NSRange(uint64_t a1@<X8>)
{
  v2 = v1[1];
  if (v2 >= 1)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2 < 1;
}

uint64_t WeakWrapper.value.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*WeakWrapper.value.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return WeakWrapper.value.modify;
}

uint64_t WeakWrapper.value.modify(void *a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t WeakWrapper.init(value:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

BOOL static WeakWrapper.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v3)
    {
      v4 = v3;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v4;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t Int.romanNumeral.getter(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v1 = a1;
  for (i = 0; i != 13; ++i)
  {
    v3 = qword_100516DC8[*(&outlined read-only object #0 of static RomanNumerals.allCases.getter + i + 32)];
    if (v1 >= v3)
    {
      v4 = 0xE100000000000000;
      v5 = 77;
      switch(*(&outlined read-only object #0 of static RomanNumerals.allCases.getter + i + 32))
      {
        case 1:
          v4 = 0xE200000000000000;
          v5 = 19779;
          break;
        case 2:
          v5 = 68;
          break;
        case 3:
          v4 = 0xE200000000000000;
          v5 = 17475;
          break;
        case 4:
          v5 = 67;
          break;
        case 5:
          v4 = 0xE200000000000000;
          v5 = 17240;
          break;
        case 6:
          v5 = 76;
          break;
        case 7:
          v4 = 0xE200000000000000;
          v5 = 19544;
          break;
        case 8:
          v5 = 88;
          break;
        case 9:
          v4 = 0xE200000000000000;
          v5 = 22601;
          break;
        case 0xA:
          v5 = 86;
          break;
        case 0xB:
          v4 = 0xE200000000000000;
          v5 = 22089;
          break;
        case 0xC:
          v5 = 73;
          break;
        default:
          goto LABEL_18;
      }

      do
      {
LABEL_18:
        v1 -= v3;
        v6._countAndFlagsBits = v5;
        v6._object = v4;
        String.append(_:)(v6);
      }

      while (v1 >= v3);
    }
  }

  return 0;
}

uint64_t RomanNumerals.rawValue.getter(char a1)
{
  result = 77;
  switch(a1)
  {
    case 1:
      result = 19779;
      break;
    case 2:
      result = 68;
      break;
    case 3:
      result = 17475;
      break;
    case 4:
      result = 67;
      break;
    case 5:
      result = 17240;
      break;
    case 6:
      result = 76;
      break;
    case 7:
      result = 19544;
      break;
    case 8:
      result = 88;
      break;
    case 9:
      result = 22601;
      break;
    case 10:
      result = 86;
      break;
    case 11:
      result = 22089;
      break;
    case 12:
      result = 73;
      break;
    default:
      return result;
  }

  return result;
}