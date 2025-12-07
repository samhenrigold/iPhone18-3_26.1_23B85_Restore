unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26UIFontDescriptorFeatureKeya_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26UIFontDescriptorFeatureKeyaSiGMd, &_ss18_DictionaryStorageCySo26UIFontDescriptorFeatureKeyaSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Date?)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService26MOSuggestionAssetAnalyticsC0F13TransferEventV0I6FieldsO_So0E10AssetsTypeaTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16MomentsUIService26MOSuggestionAssetAnalyticsC0F13TransferEventV0I6FieldsOSo0E10AssetsTypeaGMd, &_ss18_DictionaryStorageCy16MomentsUIService26MOSuggestionAssetAnalyticsC0F13TransferEventV0I6FieldsOSo0E10AssetsTypeaGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService30MOSuggestionAssetVisualSubTypeO_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeOSSGMd, &_ss18_DictionaryStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeOSSGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
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
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
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

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService30MOSuggestionAssetVisualSubTypeO_So0e6AssetsI0aTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeOSo0e6AssetsI0aGMd, &_ss18_DictionaryStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeOSo0e6AssetsI0aGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15CIContextOptiona_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo15CIContextOptionaypGMd, &_ss18_DictionaryStorageCySo15CIContextOptionaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Date?)(v4, &v11, &_sSo15CIContextOptiona_yptMd, &_sSo15CIContextOptiona_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_Sb_SbtTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_Sb_SbttMd, &_s10Foundation4UUIDV_Sb_SbttMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSb_SbtGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSb_SbtGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Date?)(v9, v5, &_s10Foundation4UUIDV_Sb_SbttMd, &_s10Foundation4UUIDV_Sb_SbttMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 2 * v13);
      v17 = v8[1];
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22MOSuggestionAssetsTypea_16MomentsUIService0c14AssetVisualSubE0OTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo22MOSuggestionAssetsTypea16MomentsUIService0c14AssetVisualSubE0OGMd, &_ss18_DictionaryStorageCySo22MOSuggestionAssetsTypea16MomentsUIService0c14AssetVisualSubE0OGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo38UIApplicationOpenExternalURLOptionsKeyaypGMd, &_ss18_DictionaryStorageCySo38UIApplicationOpenExternalURLOptionsKeyaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Date?)(v4, &v11, &_sSo38UIApplicationOpenExternalURLOptionsKeya_yptMd, &_sSo38UIApplicationOpenExternalURLOptionsKeya_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28MOSuggestionAssetMetadataKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo28MOSuggestionAssetMetadataKeyaypGMd, &_ss18_DictionaryStorageCySo28MOSuggestionAssetMetadataKeyaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Date?)(v4, &v11, &_sSo28MOSuggestionAssetMetadataKeya_yptMd, &_sSo28MOSuggestionAssetMetadataKeya_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_16MomentsUIService19TaskProcessorWorker_pTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_16MomentsUIService19TaskProcessorWorker_ptMd, &_s10Foundation4UUIDV_16MomentsUIService19TaskProcessorWorker_ptMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV16MomentsUIService19TaskProcessorWorker_pGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV16MomentsUIService19TaskProcessorWorker_pGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Date?)(v9, v5, &_s10Foundation4UUIDV_16MomentsUIService19TaskProcessorWorker_ptMd, &_s10Foundation4UUIDV_16MomentsUIService19TaskProcessorWorker_ptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = outlined init with take of MOMusicPlaybackCoordinatorDelegate(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_16MomentsUIService19TaskProcessorWorker_pyKcTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS16MomentsUIService19TaskProcessorWorker_pyKcGMd, &_ss18_DictionaryStorageCySS16MomentsUIService19TaskProcessorWorker_pyKcGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService25MOSuggestionAssetTileSizeO_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16MomentsUIService25MOSuggestionAssetTileSizeO12CoreGraphics7CGFloatVGMd, &_ss18_DictionaryStorageCy16MomentsUIService25MOSuggestionAssetTileSizeO12CoreGraphics7CGFloatVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo28MOSuggestionAssetMetadataKeya_ypSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo28MOSuggestionAssetMetadataKeyaypSgGMd, &_ss18_DictionaryStorageCySo28MOSuggestionAssetMetadataKeyaypSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Date?)(v4, &v13, &_sSo28MOSuggestionAssetMetadataKeya_ypSgtMd, &_sSo28MOSuggestionAssetMetadataKeya_ypSgtMR);
      v5 = v13;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16MomentsUIService19MOAssetAndMediaTypeV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16MomentsUIService19MOAssetAndMediaTypeVSiGMd, &_ss18_DictionaryStorageCy16MomentsUIService19MOAssetAndMediaTypeVSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 2);
      v6 = *(i - 8);
      v7 = *i;
      v8 = *(i - 3);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v8;
      *(v11 + 8) = v5;
      *(v11 + 16) = v6;
      *(v3[7] + 8 * result) = v7;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI13URLBasedAsset_pTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI13URLBasedAsset_ptMd, &_s10Foundation4UUIDV_9MomentsUI13URLBasedAsset_ptMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI13URLBasedAsset_pGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI13URLBasedAsset_pGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Date?)(v9, v5, &_s10Foundation4UUIDV_9MomentsUI13URLBasedAsset_ptMd, &_s10Foundation4UUIDV_9MomentsUI13URLBasedAsset_ptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = outlined init with take of MOMusicPlaybackCoordinatorDelegate(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSSe_SEpGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_16MomentsUIService28MOServerConnectionPropertiesCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_16MomentsUIService28MOServerConnectionPropertiesCtMd, &_s10Foundation4UUIDV_16MomentsUIService28MOServerConnectionPropertiesCtMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV16MomentsUIService28MOServerConnectionPropertiesCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV16MomentsUIService28MOServerConnectionPropertiesCGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Date?)(v9, v5, &_s10Foundation4UUIDV_16MomentsUIService28MOServerConnectionPropertiesCtMd, &_s10Foundation4UUIDV_16MomentsUIService28MOServerConnectionPropertiesCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Date?)(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation3URLVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVtMd, &_sSS_10Foundation3URLVtMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation3URLVGMd, &_ss18_DictionaryStorageCySS10Foundation3URLVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Date?)(v9, v5, &_sSS_10Foundation3URLVtMd, &_sSS_10Foundation3URLVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for URL();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
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

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd, &_ss18_DictionaryStorageCyS2SSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DateVSgTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4DateVSgtMd, &_sSS_10Foundation4DateVSgtMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVSgGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVSgGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Date?)(v9, v5, &_sSS_10Foundation4DateVSgtMd, &_sSS_10Foundation4DateVSgtMR);
      v12 = *v5;
      v11 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      result = outlined init with take of Date?(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

double partial apply for closure #1 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)()
{
  specialized closure #1 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)(v0);

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100044DA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type NotificationRealTimeCheckManager.MotionActivityEnum and conformance NotificationRealTimeCheckManager.MotionActivityEnum()
{
  result = lazy protocol witness table cache variable for type NotificationRealTimeCheckManager.MotionActivityEnum and conformance NotificationRealTimeCheckManager.MotionActivityEnum;
  if (!lazy protocol witness table cache variable for type NotificationRealTimeCheckManager.MotionActivityEnum and conformance NotificationRealTimeCheckManager.MotionActivityEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationRealTimeCheckManager.MotionActivityEnum and conformance NotificationRealTimeCheckManager.MotionActivityEnum);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationRealTimeCheckManager.MotionActivityEnum(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NotificationRealTimeCheckManager.MotionActivityEnum(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000451D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of MOMusicPlaybackCoordinatorDelegate(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA_37(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t outlined init with copy of (String, Date?)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_47(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRyt_Tg5(a1, v4);
}

uint64_t specialized closure #1 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.notification.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = v2;
    v9 = v8;
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136315138;
    swift_beginAccess();
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);

    v11 = Dictionary.description.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v18);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Notification Analytics for real time checks] result=%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);

    (*(v3 + 8))(v5, v17);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  return *(a1 + 16);
}

uint64_t sub_100045838()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOEventBundle, MOEventBundle_ptr);
  return static NSObject.== infix(_:_:)() & 1;
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

uint64_t sub_100045928()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in NotificationRealTimeCheckManager.isAtPlacesEligibleForJournaling(visit:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + v8);
  v10 = *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, a2, v3 + v7, v9, v10);
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t sub_100045B28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy16MomentsUIService32NotificationRealTimeCheckManagerC18MotionActivityEnumOs5NeverOGMd, &_sScCy16MomentsUIService32NotificationRealTimeCheckManagerC18MotionActivityEnumOs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in NotificationRealTimeCheckManager.isInSessionBasedOnMotion()(unint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy16MomentsUIService32NotificationRealTimeCheckManagerC18MotionActivityEnumOs5NeverOGMd, &_sScCy16MomentsUIService32NotificationRealTimeCheckManagerC18MotionActivityEnumOs5NeverOGMR) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return closure #1 in closure #1 in NotificationRealTimeCheckManager.isInSessionBasedOnMotion()(a1, a2, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type NSNumber and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSNumber and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSNumber and conformance NSObject)
  {
    type metadata accessor for UIApplication(255, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNumber and conformance NSObject);
  }

  return result;
}

uint64_t objectdestroy_73Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in NotificationRealTimeCheckManager.isInWorkOutSessionBasedOnHealthKit()(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t one-time initialization function for assets(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.assets, 0x535445535341, 0xE600000000000000);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.assets, &one-time initialization token for assets, static MOAngelLogger.assets, one-time initialization function for assets);
}

uint64_t one-time initialization function for pullToRefresh(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.pullToRefresh, 0x45524F544C4C5550, 0xED00004853455246);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.pullToRefresh, &one-time initialization token for pullToRefresh, static MOAngelLogger.pullToRefresh, one-time initialization function for pullToRefresh);
}

uint64_t one-time initialization function for processing(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.processing, 0x49535345434F5250, 0xEA0000000000474ELL);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.processing, &one-time initialization token for processing, static MOAngelLogger.processing, one-time initialization function for processing);
}

uint64_t one-time initialization function for bundleProcessing()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static MOAngelLogger.bundleProcessing);
  __swift_project_value_buffer(v0, static MOAngelLogger.bundleProcessing);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for assetRendering(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.assetRendering, 0x45525F5445535341, 0xEF474E495245444ELL);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.assetRendering, &one-time initialization token for assetRendering, static MOAngelLogger.assetRendering, one-time initialization function for assetRendering);
}

uint64_t one-time initialization function for databaseOps(uint64_t a1)
{
  return one-time initialization function for shared(a1, static MOAngelLogger.databaseOps, 0x4553414241544144, 0xEC00000053504F5FLL);
}

{
  return one-time initialization function for assets(a1, static MOAngelSignposter.databaseOps, &one-time initialization token for databaseOps, static MOAngelLogger.databaseOps, one-time initialization function for databaseOps);
}

uint64_t one-time initialization function for shared(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for assets(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, a4);
  (*(v9 + 16))(v11, v13, v8);
  return OSSignposter.init(logger:)();
}

uint64_t MOAngelLogger.shared.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t static MOAngelLogger.shared.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
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

id MOSuggestionPickerPrivacyBadge.iconView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_iconView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionPickerPrivacyBadge.iconView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_iconView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void closure #1 in variable initialization expression of MOSuggestionPickerPrivacyBadge.label()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleCaption1];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont:v5];
    v6 = [objc_opt_self() mainBundle];
    v10._object = 0x80000001002AFF10;
    v7._object = 0x80000001002AFEF0;
    v10._countAndFlagsBits = 0xD00000000000001DLL;
    v7._countAndFlagsBits = 0xD000000000000016;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v10);

    v9 = String._bridgeToObjectiveC()();

    [v0 setText:v9];

    [v0 setAdjustsFontForContentSizeCategory:1];
    [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  }

  else
  {
    __break(1u);
  }
}

id MOSuggestionPickerPrivacyBadge.label.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_label;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionPickerPrivacyBadge.label.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_label;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void MOSuggestionPickerPrivacyBadge.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_iconView;
  v2 = CGRectMake();
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for MOSuggestionPickerBadgeIconView()) initWithFrame:{v2, v3, v4, v5}];
  v6 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_label;
  closure #1 in variable initialization expression of MOSuggestionPickerPrivacyBadge.label();
  *(v0 + v6) = v7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MOSuggestionPickerPrivacyBadge.flipToPrivacyIconAndDismissAfterDelay()()
{
  v1 = v0;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  v3 = v2;
  v5 = v4;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  v7 = v6;
  v9 = v8;
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  v11 = v10;
  v13 = v12;
  v14 = (*((swift_isaMask & *v0) + 0x60))();
  (*((swift_isaMask & *v14) + 0x70))();

  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  v16 = objc_allocWithZone(UIViewPropertyAnimator);
  v29 = partial apply for closure #1 in MOSuggestionPickerPrivacyBadge.flipToPrivacyIconAndDismissAfterDelay();
  v30 = v15;
  v25 = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed () -> ();
  v28 = &block_descriptor_1;
  v17 = _Block_copy(&v25);
  v18 = v1;

  v19 = [v16 initWithDuration:v17 controlPoint1:0.167 controlPoint2:v3 animations:{v5, v11, v13}];
  _Block_release(v17);
  [v19 startAnimationAfterDelay:2.75];
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = objc_allocWithZone(UIViewPropertyAnimator);
  v29 = partial apply for closure #2 in MOSuggestionPickerPrivacyBadge.flipToPrivacyIconAndDismissAfterDelay();
  v30 = v20;
  v25 = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed () -> ();
  v28 = &block_descriptor_6;
  v22 = _Block_copy(&v25);
  v23 = v18;

  v24 = [v21 initWithDuration:v22 controlPoint1:0.167 controlPoint2:v3 animations:{v5, v7, v9}];
  _Block_release(v22);
  [v24 startAnimationAfterDelay:2.75];
}

id MOSuggestionPickerPrivacyBadge.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect:a1];

  return v3;
}

id MOSuggestionPickerPrivacyBadge.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MOSuggestionPickerPrivacyBadge();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *specialized MOSuggestionPickerPrivacyBadge.init(frame:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_iconView;
  v2 = CGRectMake();
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for MOSuggestionPickerBadgeIconView()) initWithFrame:{v2, v3, v4, v5}];
  v6 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_label;
  closure #1 in variable initialization expression of MOSuggestionPickerPrivacyBadge.label();
  *&v0[v6] = v7;
  v8 = [objc_opt_self() effectWithStyle:8];
  v44.receiver = v0;
  v44.super_class = type metadata accessor for MOSuggestionPickerPrivacyBadge();
  v43 = v8;
  v9 = objc_msgSendSuper2(&v44, "initWithEffect:", v43);
  [v9 setEffect:v43];

  v10 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_iconView;
  swift_beginAccess();
  [*&v9[v10] setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v9 contentView];
  [v11 addSubview:*&v9[v10]];

  v12 = [v9 contentView];
  v13 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionPickerPrivacyBadge_label;
  swift_beginAccess();
  [v12 addSubview:*&v9[v13]];

  [v9 _setCornerRadius:6.0];
  v42 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002A5170;
  v15 = [*&v9[v10] widthAnchor];
  v16 = [v15 constraintEqualToConstant:20.0];

  *(v14 + 32) = v16;
  v17 = [*&v9[v10] heightAnchor];
  v18 = [v17 constraintEqualToConstant:20.0];

  *(v14 + 40) = v18;
  v19 = [*&v9[v10] leadingAnchor];
  v20 = [v9 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:2.0];

  *(v14 + 48) = v21;
  v22 = [*&v9[v10] topAnchor];
  v23 = [v9 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:2.0];

  *(v14 + 56) = v24;
  v25 = [v9 bottomAnchor];
  v26 = [*&v9[v10] bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:2.0];

  *(v14 + 64) = v27;
  v28 = [*&v9[v13] leadingAnchor];
  v29 = [*&v9[v10] trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:3.0];

  *(v14 + 72) = v30;
  v31 = [*&v9[v13] topAnchor];
  v32 = [v9 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v14 + 80) = v33;
  v34 = [*&v9[v13] bottomAnchor];
  v35 = [v9 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v14 + 88) = v36;
  v37 = [v9 trailingAnchor];

  v38 = [*&v9[v13] trailingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:6.0];

  *(v14 + 96) = v39;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 activateConstraints:isa];

  return v9;
}

uint64_t sub_100047C94()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100047D24@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_100047DE4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x78))();
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for NSLayoutConstraint()
{
  result = lazy cache variable for type metadata for NSLayoutConstraint;
  if (!lazy cache variable for type metadata for NSLayoutConstraint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLayoutConstraint);
  }

  return result;
}

void MOSuggestionInterstitialListAssetViewModel.__allocating_init(contactAssets:bundleStartDate:bundleEndDate:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v108 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v111 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_66;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10 < 1)
  {
LABEL_67:

    v85 = type metadata accessor for Date();
    v86 = *(*(v85 - 8) + 8);
    v86(a3, v85);
    v86(a2, v85);
    return;
  }

LABEL_3:
  v113 = v9;
  v114 = v7;
  v104 = a3;
  v105 = a2;
  rawValue = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  a2 = 0;
  v11._rawValue = rawValue;
  v117 = a1 & 0xC000000000000001;
  a3 = &type metadata for String;
  v116 = a1;
  do
  {
    if (v117)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(a1 + 8 * a2 + 32);
    }

    v13 = v12;
    v14 = [v12 identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v118 = v9;
    v119 = v16;
    v121 = 35;
    v122 = 0xE100000000000000;
    v115 = lazy protocol witness table accessor for type String and conformance String();
    v17 = StringProtocol.components<A>(separatedBy:)();

    if (!v17[2])
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      v84 = v7;
      v10 = _CocoaArrayWrapper.endIndex.getter();
      v7 = v84;
      if (v10 < 1)
      {
        goto LABEL_67;
      }

      goto LABEL_3;
    }

    v19 = v17[4];
    v18 = v17[5];

    rawValue = v11._rawValue;
    v21 = *(v11._rawValue + 2);
    v20 = *(v11._rawValue + 3);
    if (v21 >= v20 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      v11._rawValue = rawValue;
    }

    ++a2;
    *(v11._rawValue + 2) = v21 + 1;
    v22 = v11._rawValue + 16 * v21;
    *(v22 + 4) = v19;
    *(v22 + 5) = v18;
    a1 = v116;
  }

  while (v10 != a2);
  v23 = String.init(combinedIdentifiersFrom:)(v11);
  countAndFlagsBits = v23._countAndFlagsBits;
  object = v23._object;
  v109 = MOSuggestionAssetsTypeContactPhoto;
  v123 = _swiftEmptyArrayStorage;
  v124 = _swiftEmptyArrayStorage;
  a2 = type metadata accessor for Date();
  v24 = *(a2 - 8);
  v25 = *(v24 + 16);
  v26 = v111;
  v25(v111, v105, a2);
  v27 = v114[5];
  v25(v26 + v27, v104, a2);
  v94 = v24;
  v95 = a2;
  (*(v24 + 56))(v26 + v27, 0, 1, a2);
  if (v113)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v109;
  if (v28)
  {
    v112 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = v109;
    a3 = 0;
    v102 = xmmword_1002A48B0;
    v92 = xmmword_1002A4A70;
    v29 = _swiftEmptyArrayStorage;
    v110 = _swiftEmptyArrayStorage;
    v103 = _swiftEmptyArrayStorage;
    v114 = v28;
    while (1)
    {
      if (v117)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a3 >= *(v112 + 16))
        {
          goto LABEL_65;
        }

        v7 = *(a1 + 8 * a3 + 32);
      }

      v30 = v7;
      a1 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        goto LABEL_64;
      }

      v31 = [v7 assetType];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a2 = v33;
      v35 = v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && a2 == v34;
      if (v35)
      {
      }

      else
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v36 & 1) == 0)
        {
          [v30 contentClassType];
          ObjCClassMetadata = swift_getObjCClassMetadata();
          if (ObjCClassMetadata != type metadata accessor for MOSuggestionGenericFallBackInfo())
          {
            if (one-time initialization token for shared != -1)
            {
              swift_once();
            }

            v38 = type metadata accessor for Logger();
            __swift_project_value_buffer(v38, static MOAngelLogger.shared);
            v39 = Logger.logObject.getter();
            v40 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v39, v40))
            {
              a2 = swift_slowAlloc();
              *a2 = 0;
              _os_log_impl(&_mh_execute_header, v39, v40, "[MOSuggestionInterstitialListAssetViewModel.contactAssets] Mismatched init for asset type", a2, 2u);
            }

            goto LABEL_51;
          }
        }
      }

      a2 = [v30 content];
      objc_opt_self();
      v41 = swift_dynamicCastObjCClass();
      if (v41)
      {
        v113 = v41;
        v42 = [v30 metadata];
        v43 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v43);
        v45 = v44;

        if (!v45)
        {
          goto LABEL_50;
        }

        if (!*(v45 + 16) || (v46 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyContactName), (v47 & 1) == 0))
        {
          swift_unknownObjectRelease();

          goto LABEL_17;
        }

        outlined init with copy of Any(*(v45 + 56) + 32 * v46, &v118);

        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_50:
          swift_unknownObjectRelease();
LABEL_51:

          goto LABEL_17;
        }

        v106 = v122;
        v107 = v121;
        type metadata accessor for MOSuggestionSheetImage();
        v9 = swift_allocObject();
        *(v9 + 5) = 0;
        *(v9 + 4) = 0;
        *(v9 + 3) = 0;
        *(v9 + 72) = 0u;
        *(v9 + 56) = 0u;
        v9[88] = 1;
        *(v9 + 12) = 0;
        v103 = (v9 + 96);
        v9[104] = 1;
        *(v9 + 2) = v113;
        swift_beginAccess();
        *(v9 + 3) = 0;
        swift_beginAccess();
        *(v9 + 4) = 0;
        swift_beginAccess();
        v48 = *(v9 + 5);
        *(v9 + 5) = 0;
        swift_unknownObjectRetain();

        v9[48] = 0;
        swift_beginAccess();
        *(v9 + 72) = 0u;
        *(v9 + 56) = 0u;
        v9[88] = 1;
        v49 = v103;
        swift_beginAccess();
        *v49 = 0.0;
        v9[104] = 1;
        v50 = [v30 identifier];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;

        v118 = v29;
        v119 = v52;
        v121 = 35;
        v122 = 0xE100000000000000;
        v53 = StringProtocol.components<A>(separatedBy:)();

        if (!v53[2])
        {
          __break(1u);
          goto LABEL_69;
        }

        v54 = v53[5];
        v103 = v53[4];
        v100 = v54;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMR);
        v55 = (*(v108 + 80) + 32) & ~*(v108 + 80);
        v56 = swift_allocObject();
        v99 = v56;
        *(v56 + 16) = v102;
        outlined init with copy of MOSuggestionSheetAssetDateRange(v111, v56 + v55);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v57 = swift_allocObject();
        v98 = v57;
        *(v57 + 16) = v102;
        v58 = v106;
        *(v57 + 32) = v107;
        *(v57 + 40) = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v59 = swift_allocObject();
        v97 = v59;
        *(v59 + 16) = v92;
        *(v59 + 32) = v9;
        type metadata accessor for MOSuggestionInterstitialListAssetViewModel(0);
        v60 = swift_allocObject();
        *(v60 + 32) = 0u;
        *(v60 + 48) = 0u;
        *(v60 + 64) = 0;
        *(v60 + 16) = 0u;
        *(v60 + 90) = 1;
        v96 = OBJC_IVAR____TtC16MomentsUIService42MOSuggestionInterstitialListAssetViewModel_uniqueUUID;

        v113 = v9;

        UUID.init()();
        swift_beginAccess();
        *(v60 + 16) = 0;

        swift_beginAccess();
        *(v60 + 24) = 0;
        *(v60 + 32) = 0;

        swift_beginAccess();
        *(v60 + 40) = v99;

        swift_beginAccess();
        *(v60 + 48) = v98;

        swift_beginAccess();
        *(v60 + 56) = v97;

        *(v60 + 65) = 11;
        v61 = v100;
        *(v60 + 72) = v103;
        *(v60 + 80) = v61;
        *(v60 + 90) = 1;
        *(v60 + 88) = 0;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v103 = v124;
        v62 = v110;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v62 + 2) + 1, 1, v62);
        }

        v64 = *(v62 + 2);
        v63 = *(v62 + 3);
        v66 = v106;
        v65 = v107;
        if (v64 >= v63 >> 1)
        {
          v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v62);
          v66 = v106;
          v65 = v107;
          v62 = v68;
        }

        *(v62 + 2) = v64 + 1;
        v110 = v62;
        v67 = &v62[2 * v64];
        *(v67 + 4) = v65;
        *(v67 + 5) = v66;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        swift_unknownObjectRelease();

        v29 = v123;
        v9 = v109;
      }

      else
      {

        v7 = swift_unknownObjectRelease();
      }

LABEL_17:
      ++a3;
      v35 = a1 == v114;
      a1 = v116;
      if (v35)
      {
        goto LABEL_54;
      }
    }
  }

  v69 = v109;
  v29 = _swiftEmptyArrayStorage;
  v110 = _swiftEmptyArrayStorage;
  v103 = _swiftEmptyArrayStorage;
LABEL_54:

  if (v29 >> 62)
  {
LABEL_69:
    v87 = _CocoaArrayWrapper.endIndex.getter();
    v70 = v105;
    v71 = v103;
    if (v87)
    {
      goto LABEL_56;
    }

LABEL_70:

    v88 = v95;
    v89 = *(v94 + 8);
    v89(v104, v95);
    v89(v70, v88);
    outlined destroy of MOSuggestionSheetAssetDateRange(v111);

    return;
  }

  v70 = v105;
  v71 = v103;
  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_70;
  }

LABEL_56:
  if ((v29 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_59:
    v72 = (*(v101 + 344))(countAndFlagsBits, object, 0, 0, 0, 0, 0, 0, 267);
    if (v71 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 2)
      {
        goto LABEL_62;
      }
    }

    else if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
LABEL_62:

      v76 = MOSuggestionInterstitialListAssetViewModel._groupAssetTypeAndCountDescription(with:)(0);
      v78 = v77;
      swift_beginAccess();
      v72[3] = v76;
      v72[4] = v78;

      swift_beginAccess();
      v72[6] = v110;

      swift_beginAccess();
      v72[7] = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMR);
      v79 = (*(v108 + 80) + 32) & ~*(v108 + 80);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_1002A48B0;
      v81 = v111;
      outlined init with copy of MOSuggestionSheetAssetDateRange(v111, v80 + v79);

      v82 = v95;
      v83 = *(v94 + 8);
      v83(v104, v95);
      v83(v70, v82);
      outlined destroy of MOSuggestionSheetAssetDateRange(v81);
      swift_beginAccess();
      v72[5] = v80;

      return;
    }

    v118 = specialized Array._copyToContiguousArray()(v74, v73);
    specialized MutableCollection<>.sort(by:)(&v118);

    v75 = v118;
    swift_beginAccess();
    v72[2] = v75;
    goto LABEL_62;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_59;
  }

  __break(1u);

  __break(1u);
}

double MOSuggestionContactAssetView.mediumWidth.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService28MOSuggestionContactAssetView____lazy_storage___mediumWidth);
  if ((*(v0 + OBJC_IVAR____TtC16MomentsUIService28MOSuggestionContactAssetView____lazy_storage___mediumWidth + 8) & 1) == 0)
  {
    return *v1;
  }

  *v1 = 0x4034000000000000;
  v1[8] = 0;
  return 20.0;
}

void MOSuggestionContactAssetView.mediumWidth.setter(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MomentsUIService28MOSuggestionContactAssetView____lazy_storage___mediumWidth;
  *v2 = a1;
  *(v2 + 8) = 0;
}

uint64_t (*MOSuggestionContactAssetView.mediumWidth.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  *a1 = MOSuggestionContactAssetView.mediumWidth.getter();
  return MOSuggestionContactAssetView.mediumWidth.modify;
}

void *MOSuggestionContactAssetView.mediumWidth.modify(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC16MomentsUIService28MOSuggestionContactAssetView____lazy_storage___mediumWidth;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

void MOSuggestionContactAssetView.__allocating_init(image:name:contactFirstName:assignedTileSize:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v13 = objc_allocWithZone(v6);
  MOSuggestionContactAssetView.init(image:name:contactFirstName:assignedTileSize:)(a1, a2, a3, a4, a5, v7);
}

void MOSuggestionContactAssetView.init(image:name:contactFirstName:assignedTileSize:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v8 = &v6[OBJC_IVAR____TtC16MomentsUIService28MOSuggestionContactAssetView____lazy_storage___mediumWidth];
  *v8 = 0;
  v8[8] = 1;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v141.receiver = v6;
  v141.super_class = type metadata accessor for MOSuggestionContactAssetView();
  v12 = objc_msgSendSuper2(&v141, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v13 = objc_allocWithZone(UIImageView);
  v14 = v12;
  v15 = a1;
  v16 = [v13 initWithImage:v15];
  v17 = [objc_opt_self() effectWithStyle:8];
  v18 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v17];
  v19 = v16;
  [v19 bounds];
  [v18 setFrame:?];
  [v18 setAutoresizingMask:18];
  [v19 addSubview:v18];

  [v19 setContentMode:2];
  v20 = v14;
  [v20 addSubview:v19];
  v136 = v19;
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v21 = [objc_allocWithZone(UIImageView) initWithImage:v15];
  v137 = v15;

  v22 = v21;
  [v22 setContentMode:1];
  v23 = [objc_allocWithZone(UILabel) init];
  v24 = objc_opt_self();
  v25 = [v24 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v26 = [v25 fontDescriptor];
  v27 = [v26 fontDescriptorWithSymbolicTraits:2];

  if (!v27)
  {
    __break(1u);
    goto LABEL_84;
  }

  v28 = [v24 fontWithDescriptor:v27 size:0.0];

  [v23 setFont:v28];
  v29 = [objc_opt_self() labelColor];
  [v23 setTextColor:v29];

  [v23 setNumberOfLines:0];
  [v23 setLineBreakMode:4];
  v30 = a6 == 2 || a6 == 5;
  [v23 setTextAlignment:v30];

  v31 = String._bridgeToObjectiveC()();

  [v23 setText:v31];

  v32 = v23;
  [v32 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v33 = [objc_allocWithZone(UIStackView) init];
  v140 = v22;
  [v33 addArrangedSubview:v22];
  [v33 addArrangedSubview:v32];
  [v33 setAlignment:3];
  [v20 addSubview:v33];
  v139 = v32;
  if (a6 <= 4u)
  {
    if (a6 == 2)
    {

      [v32 setTextAlignment:1];
      [v33 setAxis:1];
      [v32 setNumberOfLines:1];
      v63 = [v33 superview];
      v64 = v136;
      if (v63)
      {
        v65 = v63;
        [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
        v66 = [v33 topAnchor];
        v67 = [v65 topAnchor];
        v68 = [v66 constraintEqualToAnchor:v67];

        [v68 setConstant:8.0];
        if (v68)
        {
          [v68 setActive:1];
        }
      }

      v69 = [v33 superview];
      v34 = v140;
      if (v69)
      {
        v70 = v69;
        [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
        v71 = [v33 leadingAnchor];
        v72 = [v70 leadingAnchor];
        v73 = [v71 constraintEqualToAnchor:v72];

        [v73 setConstant:8.0];
        if (v73)
        {
          [v73 setActive:1];
        }
      }

      v74 = [v33 superview];
      if (v74)
      {
        v75 = v74;
        [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
        v76 = [v33 trailingAnchor];
        v77 = [v75 trailingAnchor];
        v78 = [v76 constraintEqualToAnchor:v77];

        [v78 setConstant:-8.0];
        if (v78)
        {
          [v78 setActive:1];
        }
      }

      v79 = [v33 superview];
      if (v79)
      {
        v80 = v79;
        [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
        v81 = [v33 bottomAnchor];
        v82 = [v80 bottomAnchor];
        v83 = [v81 constraintEqualToAnchor:v82];

        if (v83)
        {
          [v83 setConstant:-8.0];
          [v83 setActive:1];
        }
      }

      [v33 setCustomSpacing:v140 afterView:8.0];
      goto LABEL_78;
    }

    if (a6 == 3)
    {

      v34 = v22;
      [v33 removeFromSuperview];
      [v20 addSubview:v22];
      v84 = [v22 superview];
      if (v84)
      {
        v85 = v84;
        [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
        v86 = [v22 topAnchor];
        v87 = [v85 topAnchor];
        v88 = [v86 constraintEqualToAnchor:v87];

        [v88 setConstant:4.0];
        if (v88)
        {
          [v88 setActive:1];
        }
      }

      v89 = [v22 superview];
      v64 = v136;
      if (v89)
      {
        v90 = v89;
        [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
        v91 = [v140 leadingAnchor];
        v92 = [v90 leadingAnchor];
        v93 = [v91 constraintEqualToAnchor:v92];

        [v93 setConstant:4.0];
        if (v93)
        {
          [v93 setActive:1];
        }
      }

      v94 = [v140 superview];
      if (v94)
      {
        v95 = v94;
        [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
        v96 = [v140 trailingAnchor];
        v97 = [v95 trailingAnchor];
        v98 = [v96 constraintEqualToAnchor:v97];

        [v98 setConstant:-4.0];
        if (v98)
        {
          [v98 setActive:1];
        }
      }

      v99 = [v140 superview];
      if (v99)
      {
        v100 = v99;
        [v140 setTranslatesAutoresizingMaskIntoConstraints:0];
        v101 = [v140 bottomAnchor];
        v102 = [v100 bottomAnchor];
        v103 = [v101 constraintEqualToAnchor:v102];

        if (v103)
        {
          [v103 setConstant:-4.0];
          [v103 setActive:1];
        }
      }

      goto LABEL_78;
    }

    v34 = v22;
    if (a6 != 4)
    {
      goto LABEL_56;
    }

    goto LABEL_14;
  }

  v34 = v22;
  if (a6 - 6 < 2)
  {
LABEL_14:
    [v32 setTextAlignment:0];
    [v33 setAxis:0];
    v35 = [v34 widthAnchor];
    v36 = v32;
    v37 = [v34 heightAnchor];
    v38 = [v35 constraintEqualToAnchor:v37];

    [v38 setActive:1];
    v39 = [v36 leadingAnchor];

    v40 = [v34 trailingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:12.0];

    [v41 setActive:1];
    v42 = [v33 superview];
    if (v42)
    {
      v43 = v42;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v44 = [v33 topAnchor];
      v45 = [v43 topAnchor];
      v46 = [v44 constraintEqualToAnchor:v45];

      [v46 setConstant:8.0];
      [v46 setActive:1];
    }

    v47 = [v33 superview];
    if (v47)
    {
      v48 = v47;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v49 = [v33 leadingAnchor];
      v50 = [v48 leadingAnchor];
      v51 = [v49 constraintEqualToAnchor:v50];

      [v51 setConstant:8.0];
      [v51 setActive:1];
    }

    v52 = [v33 superview];
    if (v52)
    {
      v53 = v52;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v54 = [v33 trailingAnchor];
      v55 = [v53 trailingAnchor];
      v56 = [v54 constraintEqualToAnchor:v55];

      [v56 setConstant:-8.0];
      [v56 setActive:1];
    }

    v57 = [v33 superview];
    if (v57)
    {
      v58 = v57;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v59 = [v33 bottomAnchor];
      v60 = [v58 bottomAnchor];
      v61 = [v59 constraintEqualToAnchor:v60];

      [v61 setConstant:-8.0];
      [v61 setActive:1];
    }

    v62 = 12.0;
LABEL_76:
    v34 = v22;
    [v33 setCustomSpacing:v22 afterView:v62];
    goto LABEL_77;
  }

  if (a6 == 8)
  {

    v104 = [v24 preferredFontForTextStyle:UIFontTextStyleBody];
    v105 = [v104 fontDescriptor];
    v106 = v32;
    v107 = [v105 fontDescriptorWithSymbolicTraits:2];

    if (v107)
    {
      v34 = [v24 fontWithDescriptor:v107 size:0.0];

      [v106 setFont:v34];
      v32 = v106;
      goto LABEL_59;
    }

LABEL_84:
    __break(1u);
    return;
  }

  if (a6 == 5)
  {

LABEL_59:
    [v32 setTextAlignment:1];
    [v33 setAxis:1];
    v108 = [v33 superview];
    if (v108)
    {
      v109 = v108;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v110 = [v33 topAnchor];
      v111 = [v109 topAnchor];
      v112 = [v110 constraintEqualToAnchor:v111];

      [v112 setConstant:16.0];
      if (v112)
      {
        [v112 setActive:1];
      }
    }

    v113 = [v33 superview];
    if (v113)
    {
      v114 = v113;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v115 = [v33 leadingAnchor];
      v116 = [v114 leadingAnchor];
      v117 = [v115 constraintEqualToAnchor:v116];

      [v117 setConstant:12.0];
      if (v117)
      {
        [v117 setActive:1];
      }
    }

    v118 = [v33 superview];
    if (v118)
    {
      v119 = v118;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v120 = [v33 trailingAnchor];
      v121 = [v119 trailingAnchor];
      v122 = [v120 constraintEqualToAnchor:v121];

      [v122 setConstant:-12.0];
      if (v122)
      {
        [v122 setActive:1];
      }
    }

    v123 = [v33 superview];
    if (v123)
    {
      v124 = v123;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v125 = [v33 bottomAnchor];
      v126 = [v124 bottomAnchor];
      v127 = [v125 constraintEqualToAnchor:v126];

      if (v127)
      {
        [v127 setConstant:-16.0];
        [v127 setActive:1];
      }
    }

    v62 = 16.0;
    goto LABEL_76;
  }

LABEL_56:

LABEL_77:
  v64 = v136;
  v15 = v137;
LABEL_78:
  v128 = v20;
  [v128 setIsAccessibilityElement:1];
  v129 = UIAccessibilityTraitImage;
  v130 = [v128 accessibilityTraits];
  if ((v129 & ~v130) != 0)
  {
    v131 = v129;
  }

  else
  {
    v131 = 0;
  }

  [v128 setAccessibilityTraits:v131 | v130];
  [v128 setAccessibilityIgnoresInvertColors:1];

  v132 = [objc_opt_self() mainBundle];
  v142._object = 0x80000001002AFF30;
  v133._countAndFlagsBits = 0x746361746E6F43;
  v133._object = 0xE700000000000000;
  v134._countAndFlagsBits = 0;
  v134._object = 0xE000000000000000;
  v142._countAndFlagsBits = 0xD000000000000026;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v133, 0, v132, v134, v142);

  v135 = String._bridgeToObjectiveC()();

  [v128 setAccessibilityLabel:v135];
}

void MOSuggestionContactAssetView.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC16MomentsUIService28MOSuggestionContactAssetView____lazy_storage___mediumWidth;
  *v1 = 0;
  *(v1 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MOSuggestionContactAssetView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionContactAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *MOSuggestionSheetAssetGridView.gridCollectionView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_gridCollectionView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionSheetAssetGridView.gridCollectionView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_gridCollectionView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionSheetAssetGridView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MOSuggestionSheetAssetGridView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetAssetGridView.delegate.modify;
}

void MOSuggestionSheetAssetGridView.delegate.modify(uint64_t a1, char a2)
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

uint64_t MOSuggestionSheetAssetGridView.assetCount.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetAssetGridView.assetCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOSuggestionSheetAssetGridView.isFullWidth.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetAssetGridView.isFullWidth.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullWidth;
  swift_beginAccess();
  *(v1 + v3) = a1;
  if (a1)
  {
    v4 = type metadata accessor for MOSuggestionSheetMosaicLayout();
  }

  else
  {
    v4 = type metadata accessor for MOSuggestionSheetHalfMosaicLayout();
  }

  v5 = [objc_allocWithZone(v4) init];
  v6 = *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout);
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout) = v5;

  return (*((swift_isaMask & *v1) + 0x1E0))();
}

uint64_t (*MOSuggestionSheetAssetGridView.isFullWidth.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullWidth;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MOSuggestionSheetAssetGridView.isFullWidth.modify;
}

void MOSuggestionSheetAssetGridView.isFullWidth.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*(v4 + v3[4]) == 1)
    {
      v5 = type metadata accessor for MOSuggestionSheetMosaicLayout();
    }

    else
    {
      v5 = type metadata accessor for MOSuggestionSheetHalfMosaicLayout();
    }

    v6 = [objc_allocWithZone(v5) init];
    v7 = *(v4 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout);
    *(v4 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout) = v6;

    (*((swift_isaMask & *v4) + 0x1E0))();
  }

  free(v3);
}

uint64_t MOSuggestionSheetAssetGridView.isFullHeight.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetAssetGridView.isFullHeight.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullHeight;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout);
  type metadata accessor for MOSuggestionSheetMosaicLayout();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *((swift_isaMask & *v5) + 0xA8);
    v7 = v4;
    v6(a1 & 1);
  }

  return (*((swift_isaMask & *v1) + 0x1E0))();
}

uint64_t (*MOSuggestionSheetAssetGridView.isFullHeight.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullHeight;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MOSuggestionSheetAssetGridView.isFullHeight.modify;
}

void MOSuggestionSheetAssetGridView.isFullHeight.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout);
    type metadata accessor for MOSuggestionSheetMosaicLayout();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *(v4 + v3[4]);
      v8 = *((swift_isaMask & *v6) + 0xA8);
      v9 = v5;
      v8(v7);

      v4 = v3[3];
    }

    (*((swift_isaMask & *v4) + 0x1E0))();
  }

  free(v3);
}

uint64_t key path setter for MOSuggestionSheetAssetGridView.assetViewModels : MOSuggestionSheetAssetGridView(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *((swift_isaMask & **a2) + 0x158);
  v6 = outlined copy of MOWeakArray<MOSuggestionSheetAssetViewModel>?(*a1, v3);
  return v5(v2, v3, v4, v6);
}

void MOSuggestionSheetAssetGridView.assetViewModels.didset()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetViewModels;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!v4)
  {
    (*((swift_isaMask & *v1) + 0x1C0))(v3);
    return;
  }

  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
LABEL_4:
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v18 = v4 & 0xC000000000000001;
      v8 = v4 + 32;
      while (1)
      {
        if (v7 >= v6)
        {
          if (__OFADD__(v7++, 1))
          {
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            __break(1u);
LABEL_21:
            v6 = _CocoaArrayWrapper.endIndex.getter();
            if (!v6)
            {
              goto LABEL_22;
            }

            goto LABEL_4;
          }
        }

        else
        {
          if (v18)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v4 = v10;
          }

          else
          {
            if (v7 >= *(v5 + 16))
            {
              goto LABEL_19;
            }

            v4 = *(v8 + 8 * v7);
          }

          v11 = (*(*v4 + 96))(v10);

          ++v7;
          if (v11)
          {
            v19[0] = (*(*v11 + 512))(v12);
            v19[1] = v13;
            v20[0] = 35;
            v20[1] = 0xE100000000000000;
            lazy protocol witness table accessor for type String and conformance String();
            v4 = StringProtocol.components<A>(separatedBy:)();

            if (!*(v4 + 16))
            {
              goto LABEL_20;
            }

            v14 = *(v4 + 32);
            v15 = *(v4 + 40);

            v16 = (*((swift_isaMask & *v1) + 0x178))(v19);
            v4 = v17;
            specialized Set._Variant.insert(_:)(v20, v14, v15);

            v16(v19, 0);
          }
        }

        if (v7 == v6)
        {
          goto LABEL_22;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
  }
}

uint64_t MOSuggestionSheetAssetGridView.assetViewModels.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetViewModels);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of MOWeakArray<MOSuggestionSheetAssetViewModel>?(*v1, v1[1]);
  return v2;
}

double outlined copy of MOWeakArray<MOSuggestionSheetAssetViewModel>?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

void MOSuggestionSheetAssetGridView.assetViewModels.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetViewModels);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v8, v9);
  MOSuggestionSheetAssetGridView.assetViewModels.didset();
}

uint64_t outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void (*MOSuggestionSheetAssetGridView.assetViewModels.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionSheetAssetGridView.assetViewModels.modify;
}

void MOSuggestionSheetAssetGridView.assetViewModels.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    MOSuggestionSheetAssetGridView.assetViewModels.didset();
  }
}

double MOSuggestionSheetAssetGridView.selectedAssetIdentifiers.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t MOSuggestionSheetAssetGridView.selectedAssetIdentifiers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_selectedAssetIdentifiers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionSheetAssetGridView.isBundleSelected.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isBundleSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionSheetAssetGridView.isBundleSelected.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isBundleSelected;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  return (*((swift_isaMask & *v1) + 0x1E8))(v4);
}

uint64_t (*MOSuggestionSheetAssetGridView.isBundleSelected.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionSheetAssetGridView.isBundleSelected.modify;
}

uint64_t MOSuggestionSheetAssetGridView.isBundleSelected.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((swift_isaMask & **(a1 + 24)) + 0x1E8))(result);
  }

  return result;
}

uint64_t MOSuggestionSheetAssetGridView.isInterstitial.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isInterstitial;
  swift_beginAccess();
  return *(v0 + v1);
}

void MOSuggestionSheetAssetGridView.isInterstitial.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isInterstitial;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = (*((swift_isaMask & *v1) + 0xA8))(v4);
  if (v5)
  {
    v6 = v5;
    [v5 reloadData];
  }
}

void (*MOSuggestionSheetAssetGridView.isInterstitial.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionSheetAssetGridView.isInterstitial.modify;
}

void MOSuggestionSheetAssetGridView.isInterstitial.modify(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = (*((swift_isaMask & **(a1 + 24)) + 0xA8))(v4);
    if (v5)
    {
      v6 = v5;
      [v5 reloadData];
    }
  }
}

char *MOSuggestionSheetAssetGridView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_gridCollectionView] = 0;
  v10 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_addedView;
  v11 = [objc_allocWithZone(type metadata accessor for MOSuggestionAddedView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly] = 0;
  v12 = v11;
  [v12 setClipsToBounds:1];
  MOSuggestionAddedView.initAddedView()();

  *&v5[v10] = v12;
  *&v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetCount] = 0;
  v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullWidth] = 1;
  v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullHeight] = 1;
  v13 = &v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetViewModels];
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  *&v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_selectedAssetIdentifiers] = &_swiftEmptySetSingleton;
  v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isBundleSelected] = 0;
  v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isInterstitial] = 0;
  *&v5[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout] = [objc_allocWithZone(type metadata accessor for MOSuggestionSheetMosaicLayout()) init];
  v18.receiver = v5;
  v18.super_class = type metadata accessor for MOSuggestionSheetAssetGridView();
  v14 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  MOSuggestionSheetAssetGridView.initGridCollectionView()();
  v15 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_addedView;
  [v14 addSubview:*&v14[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_addedView]];
  v16 = [*&v14[v15] layer];
  [v16 setCornerRadius:8.0];

  return v14;
}

Swift::Void __swiftcall MOSuggestionSheetAssetGridView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetAssetGridView();
  v1 = objc_msgSendSuper2(&v2, "layoutSubviews");
  (*((swift_isaMask & *v0) + 0x1E8))(v1);
}

Swift::Void __swiftcall MOSuggestionSheetAssetGridView.setAddedViewInteractionState(_:)(MomentsUIService::MOSuggestionCollectionViewInteractionState a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_addedView);
  v4 = *((swift_isaMask & *v3) + 0x98);
  v5 = v3;
  v4(a1 & 1);
}

void MOSuggestionSheetAssetGridView.initGridCollectionView()()
{
  [v0 bounds];
  v5 = [objc_allocWithZone(type metadata accessor for MOSuggestionSheetGridCollectionView()) initWithFrame:*(v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout) collectionViewLayout:{v1, v2, v3, v4}];
  v6 = (*((swift_isaMask & *v0) + 0xB0))(v5);
  v7 = *((swift_isaMask & *v0) + 0xA8);
  v8 = (v7)(v6);
  if (v8)
  {
    v9 = v8;
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v10 = v7();
  if (v10)
  {
    v11 = v10;
    [v11 setAllowsSelection:1];
    [v11 setAllowsMultipleSelection:1];
    [v11 setDelegate:v0];
    [v11 setDataSource:v0];

    v35 = v11;
    [v35 setClipsToBounds:0];
    v12 = [v35 layer];
    [v12 setCornerCurve:kCACornerCurveContinuous];

    v13 = [v35 layer];
    [v13 setMaskedCorners:1];

    v14 = [objc_opt_self() clearColor];
    [v35 setBackgroundColor:v14];

    [v0 addSubview:v35];
    v15 = [v35 superview];
    if (v15)
    {
      v16 = v15;
      [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
      v17 = [v35 topAnchor];
      v18 = [v16 topAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];

      [v19 setConstant:2.0];
      [v19 setActive:1];
    }

    v20 = [v35 superview];
    if (v20)
    {
      v21 = v20;
      [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
      v22 = [v35 leadingAnchor];
      v23 = [v21 leadingAnchor];
      v24 = [v22 constraintEqualToAnchor:v23];

      [v24 setConstant:2.0];
      [v24 setActive:1];
    }

    v25 = [v35 superview];
    if (v25)
    {
      v26 = v25;
      [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
      v27 = [v35 trailingAnchor];
      v28 = [v26 trailingAnchor];
      v29 = [v27 constraintEqualToAnchor:v28];

      [v29 setConstant:-2.0];
      [v29 setActive:1];
    }

    v30 = [v35 superview];
    if (v30)
    {
      v31 = v30;
      [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
      v32 = [v35 bottomAnchor];
      v33 = [v31 bottomAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];

      [v34 setConstant:-2.0];
      [v34 setActive:1];
    }

    (*((swift_isaMask & *v0) + 0x1C0))();
  }
}

Swift::Void __swiftcall MOSuggestionSheetAssetGridView.reloadAll()()
{
  v1 = (*((swift_isaMask & *v0) + 0x1C0))();
  v2 = (*((swift_isaMask & *v0) + 0xA8))(v1);
  if (v2)
  {
    v3 = v2;
    [v2 reloadData];
  }
}

Swift::Void __swiftcall MOSuggestionSheetAssetGridView.reload(index:)(Swift::Int index)
{
  v3 = (*((swift_isaMask & *v1) + 0x150))();
  if (v3 && (v3 >> 62 ? (v4 = _CocoaArrayWrapper.endIndex.getter()) : (v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v5 = , v4 > index))
  {
    v6 = (*((swift_isaMask & *v1) + 0xA8))(v5);
    if (!v6)
    {
      return;
    }

    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, _ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR);
    type metadata accessor for IndexPath();
    *(swift_allocObject() + 16) = xmmword_1002A48B0;
    IndexPath.init(row:section:)();
    oslog = Array._bridgeToObjectiveC()().super.isa;

    [v7 reconfigureItemsAtIndexPaths:oslog];
  }

  else
  {
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static MOAngelLogger.assets);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "[MOSuggestionSheetAssetGridView] Refusing to reconfigure due to size / index mismatch", v10, 2u);
    }
  }
}

void MOSuggestionSheetAssetGridView.reloadWith(assetViewModel:index:)(uint64_t a1, uint64_t a2)
{
  v4 = (*((swift_isaMask & *v2) + 0x150))();
  if (v4 && (v4 >> 62 ? (v5 = _CocoaArrayWrapper.endIndex.getter()) : (v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10)), , , v5 > a2))
  {
    v6 = (*((swift_isaMask & *v2) + 0x160))(v17);
    if (*v7)
    {

      specialized MOWeakArray.subscript.setter(v8, a2);
    }

    v9 = v6(v17, 0);
    v10 = (*((swift_isaMask & *v2) + 0xA8))(v9);
    if (v10)
    {
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, _ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR);
      type metadata accessor for IndexPath();
      *(swift_allocObject() + 16) = xmmword_1002A48B0;
      IndexPath.init(row:section:)();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v11 reconfigureItemsAtIndexPaths:isa];
    }
  }

  else
  {
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static MOAngelLogger.assets);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "[MOSuggestionSheetAssetGridView] Refusing to reconfigure due to size / index mismatch", v15, 2u);
    }
  }
}

void specialized MOWeakArray.subscript.setter(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService15MOWeakReferenceCyAA31MOSuggestionSheetAssetViewModelCGMd, &_s16MomentsUIService15MOWeakReferenceCyAA31MOSuggestionSheetAssetViewModelCGMR);
    v4 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    swift_weakAssign();
    v5 = *v2;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v5 < 0 || (v5 & 0x4000000000000000) != 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()();
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = v4;

      *v2 = v5;
      return;
    }

    __break(1u);
  }
}

Swift::Void __swiftcall MOSuggestionSheetAssetGridView.updateGridLayout()()
{
  v1 = (*((swift_isaMask & *v0) + 0xA8))();
  if (v1)
  {
    v3 = v1;
    v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_mosaicLayout);
    [v3 setCollectionViewLayout:v2];
  }
}

Swift::Void __swiftcall MOSuggestionSheetAssetGridView.updateAddedVisibility()()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_addedView;
  v2 = *((swift_isaMask & *v0) + 0x180);
  v3 = *(v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_addedView);
  [v3 setHidden:(v2() & 1) == 0];

  v4 = *(v0 + v1);
  [v0 bounds];
  [v4 setFrame:?];
}

Swift::Void __swiftcall MOSuggestionSheetAssetGridView.updateSelectedAssets()()
{
  v1 = (*((swift_isaMask & *v0) + 0xA8))();
  if (v1)
  {
    v2 = v1;
    [v1 reloadData];
  }
}

Swift::Int __swiftcall MOSuggestionSheetAssetGridView.maxAssetCount()()
{
  result = (*((swift_isaMask & *v0) + 0x150))();
  if (result)
  {
    v2 = result;
    if ((*((swift_isaMask & *v0) + 0x198))())
    {
      if (v2 >> 62)
      {
        v3 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v3 >= 13)
      {
        return 13;
      }

      else
      {
        return v3;
      }
    }

    else
    {

      if ((*((swift_isaMask & *v0) + 0x120))(v4))
      {
        return 5;
      }

      else
      {
        return 4;
      }
    }
  }

  return result;
}

id MOSuggestionSheetAssetGridView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MOSuggestionSheetAssetGridView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

Swift::Int __swiftcall MOSuggestionSheetAssetGridView.collectionView(_:numberOfItemsInSection:)(UICollectionView _, Swift::Int numberOfItemsInSection)
{
  result = (*((swift_isaMask & *v2) + 0x150))(_.super.super.super.super.isa, numberOfItemsInSection);
  if (result)
  {
    if (result >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = (*((swift_isaMask & *v2) + 0x1F8))(v5);
    if (result >= v4)
    {
      return v4;
    }
  }

  return result;
}

void MOSuggestionSheetAssetGridView.collectionView(_:didEndDisplaying:forItemAt:)(uint64_t a1, void *a2)
{
  type metadata accessor for MOSuggestionSheetMosaicCell();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *((swift_isaMask & *v3) + 0x170);
    v5 = a2;
    v4();
  }
}

void *MOSuggestionSheetAssetGridView.collectionView(_:cellForItemAt:)(uint64_t a1, NSObject *a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  isa = v6[-1].isa;
  __chkstk_darwin(v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = String._bridgeToObjectiveC()();
  v11.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v70 = a1;
  v12 = [a1 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v11.super.isa];

  type metadata accessor for MOSuggestionSheetMosaicCell();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    goto LABEL_41;
  }

  v14 = v13;
  v15 = IndexPath.item.getter();
  v10 = *((swift_isaMask & *v3) + 0x150);
  v16 = (v10)();
  v72 = isa;
  if (v16)
  {
    if (v16 >> 62)
    {
      v71 = v14;
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v14 = v71;
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15 >= v17)
    {
      return v14;
    }
  }

  else if (v15 > -2)
  {
    return v14;
  }

  v71 = v14;
  v18 = (v10)(v16);
  if (v18)
  {
    v11.super.isa = v18;
    a1 = v19;
    isa = v20;
    v21 = IndexPath.item.getter();
    v12 = (v11.super.isa & 0xFFFFFFFFFFFFFF8);
    if (v11.super.isa >> 62)
    {
      v68 = v21;
      v56 = _CocoaArrayWrapper.endIndex.getter();
      if ((v56 & 0x8000000000000000) == 0)
      {
        goto LABEL_42;
      }

      __break(1u);
      goto LABEL_37;
    }

    v22 = *((v11.super.isa & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v21 & 0x8000000000000000) == 0)
    {
      do
      {
        if (v21 >= v22)
        {
          break;
        }

        v69 = isa;
        if ((v11.super.isa & 0xC000000000000001) != 0)
        {
LABEL_37:
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v23 = v24;
        }

        else
        {
          if (v21 >= v12[2])
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v23 = *(v11.super.isa + v21 + 4);
        }

        isa = (*(*v23 + 96))(v24);

        outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v11.super.isa, a1);
        v69 = isa;
        if (!isa)
        {
          goto LABEL_44;
        }

        v25 = [v70 collectionViewLayout];
        v6 = a2;
        v26 = IndexPath._bridgeToObjectiveC()().super.isa;
        v72 = v25;
        a2 = [(objc_class *)v25 layoutAttributesForItemAtIndexPath:v26];

        if (a2)
        {
          [a2 size];
          v28 = v27;
          [a2 size];
          v30 = v28 - v29;
        }

        else
        {
          v30 = 0.0;
        }

        v10 = v71;
        v31 = v69;
        v32 = (*(*v69 + 808))(fabs(v30) < 5.0);
        v33 = *((swift_isaMask & *v3) + 0x198);
        v70 = ((swift_isaMask & *v3) + 408);
        v68 = v33;
        v34 = v33(v32);
        (*((swift_isaMask & *v10) + 0x128))(v34 & 1);
        a1 = (swift_isaMask & *v10) + 272;
        v35 = *((swift_isaMask & *v10) + 0x110);

        v37 = v35(v36);
        v11.super.isa = (*((swift_isaMask & *v3) + 0x168))(v37);
        v38 = (*(*v31 + 512))();
        v9 = v39;
        v73[0] = v38;
        v73[1] = v39;
        v73[4] = 35;
        v73[5] = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v12 = StringProtocol.components<A>(separatedBy:)();

        if (!v12[2])
        {
          goto LABEL_39;
        }

        v40 = v12[4];
        v41 = v12[5];

        v42 = specialized Set.contains(_:)(v40, v41, v11.super.isa);

        v43 = [v10 setSelected:v42 & 1];
        isa = *((swift_isaMask & *v3) + 0x120);
        if ((isa)(v43))
        {
          v10 = 4;
        }

        else
        {
          v10 = 3;
        }

        v44 = (isa)();
        v9 = (*((swift_isaMask & *v3) + 0x108))();
        if (IndexPath.row.getter() != v10)
        {
          goto LABEL_33;
        }

        v45 = 4;
        if (v44)
        {
          v45 = 5;
        }

        if (v9 <= v45)
        {
          goto LABEL_33;
        }

        v12 = v3;
        a1 = (isa)();
        v11.super.isa = &swift_isaMask;
        v46 = (*((swift_isaMask & *v3) + 0x108))();
        if (a1)
        {
          v47 = v46 - 5;
          if (!__OFSUB__(v46, 5))
          {
            goto LABEL_32;
          }

          __break(1u);
        }

        v47 = v46 - 4;
        if (!__OFSUB__(v46, 4))
        {
LABEL_32:
          v48 = v47 + 1;
          v49 = *((swift_isaMask & *v71) + 0x148);
          v50 = v49(v73);
          *(v51 + 8) = v48;
          v52 = v50(v73, 0);
          v53 = (v68)(v52);
          v54 = v49(v73);
          *v55 = (v53 & 1) == 0;
          v54(v73, 0);
LABEL_33:

          goto LABEL_54;
        }

LABEL_40:
        __break(1u);
LABEL_41:

        __break(1u);
LABEL_42:
        v22 = v56;
        v21 = v68;
      }

      while ((v68 & 0x8000000000000000) == 0);
    }

    outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v11.super.isa, a1);
  }

LABEL_44:
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  __swift_project_value_buffer(v57, static MOAngelLogger.shared);
  v58 = v72;
  (*(v72 + 2))(v9, a2, v6);
  v59 = v3;
  a2 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(a2, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134218240;
    v62 = IndexPath.item.getter();
    v63 = v58[1](v9, v6);
    *(v61 + 4) = v62;
    *(v61 + 12) = 2048;
    v64 = (v10)(v63);
    if (v64)
    {
      if (v64 >> 62)
      {
        v65 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v65 = 0;
    }

    *(v61 + 14) = v65;

    _os_log_impl(&_mh_execute_header, a2, v60, "[MOSuggestionSheetAssetGridView] index out of bounds, indexPath.item=%ld, count=%ld", v61, 0x16u);
  }

  else
  {
    v58[1](v9, v6);

    a2 = v59;
  }

LABEL_54:

  return v71;
}

void MOSuggestionSheetAssetGridView.collectionView(_:willDisplay:forItemAt:)(void *a1, void *a2)
{
  v4 = v2;
  v6 = *((swift_isaMask & *v2) + 0x150);
  v7 = v6();
  if (v7)
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    v13 = IndexPath.item.getter();
    v14 = (v10 & 0xFFFFFFFFFFFFFF8);
    if (v10 >> 62)
    {
      v27 = v13;
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_28;
      }

      __break(1u);
      goto LABEL_24;
    }

    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v13 & 0x8000000000000000) == 0)
    {
      do
      {
        if (v13 >= v15)
        {
          break;
        }

        if ((v10 & 0xC000000000000001) != 0)
        {
LABEL_24:
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v16 = v17;
        }

        else
        {
          if (v13 >= v14[2])
          {
            __break(1u);
            goto LABEL_26;
          }

          v16 = *(v10 + 8 * v13 + 32);
        }

        v18 = (*(*v16 + 96))(v17);

        v19 = v10;
        v10 = v18;
        outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v19, v11);
        v3 = a1;
        a1 = &swift_isaMask;
        if (!v10)
        {
          return;
        }

        v12 = IndexPath.item.getter();
        v20 = v6();
        if (v20)
        {
          if (!(v20 >> 62))
          {
            v11 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_12;
          }

LABEL_26:
          v11 = _CocoaArrayWrapper.endIndex.getter();
LABEL_12:

          if (v12 >= v11)
          {
            goto LABEL_19;
          }

          goto LABEL_13;
        }

        if (v12 >= -1)
        {
LABEL_19:

          return;
        }

LABEL_13:
        v4 = (*((*a1 & *v4) + 0x168))(v20);
        (*(*v10 + 512))();
        v12 = v21;
        lazy protocol witness table accessor for type String and conformance String();
        v14 = StringProtocol.components<A>(separatedBy:)();

        if (v14[2])
        {
          v23 = v14[4];
          v24 = v14[5];

          v25 = specialized Set.contains(_:)(v23, v24, v4);

          if (v25)
          {
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            [v3 selectItemAtIndexPath:isa animated:0 scrollPosition:1];
          }

          [a2 setSelected:{v25 & 1, v27}];

          return;
        }

        __break(1u);
LABEL_28:
        v15 = v22;
        v13 = v27;
      }

      while ((v27 & 0x8000000000000000) == 0);
    }

    outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v10, v11);
  }
}

uint64_t @objc MOSuggestionSheetAssetGridView.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

void specialized MOSuggestionSheetAssetGridView.init(coder:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_gridCollectionView) = 0;
  v2 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_addedView;
  v3 = [objc_allocWithZone(type metadata accessor for MOSuggestionAddedView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly] = 0;
  v4 = v3;
  [v4 setClipsToBounds:1];
  MOSuggestionAddedView.initAddedView()();

  *(v1 + v2) = v4;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetCount) = 0;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullWidth) = 1;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isFullHeight) = 1;
  v5 = (v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_assetViewModels);
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_selectedAssetIdentifiers) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isBundleSelected) = 0;
  *(v1 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetAssetGridView_isInterstitial) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized MOSuggestionSheetAssetGridView.collectionView(_:didSelectItemAt:)(uint64_t a1)
{
  v3 = v1;
  v5 = (*((swift_isaMask & *v1) + 0x150))();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = IndexPath.item.getter();
    v10 = (v7 & 0xFFFFFFFFFFFFFF8);
    if (v7 >> 62)
    {
      a1 = v9;
      v23 = _CocoaArrayWrapper.endIndex.getter();
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_31;
    }

    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v9 & 0x8000000000000000) == 0)
    {
      do
      {
        if (v9 >= v11)
        {
          break;
        }

        if ((v7 & 0xC000000000000001) != 0)
        {
LABEL_31:
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = v13;
        }

        else
        {
          if (v9 >= v10[2])
          {
            __break(1u);
LABEL_33:
            swift_once();
            goto LABEL_21;
          }

          v12 = *(v7 + 8 * v9 + 32);
        }

        a1 = (*(*v12 + 96))(v13);

        v14 = outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v7, v8);
        if (!a1)
        {
          return;
        }

        v8 = 0x6C6F686563616C70;
        v15 = (*a1 + 512);
        v2 = *v15;
        v7 = v15;
        if ((*v15)(v14) == 0x6C6F686563616C70 && v16 == 0xEB00000000726564)
        {

          return;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {

          return;
        }

        if (one-time initialization token for assets != -1)
        {
          goto LABEL_33;
        }

LABEL_21:
        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static MOAngelLogger.assets);

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v36 = v21;
          v8 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v37 = v35;
          *v8 = 136315138;
          v38 = v2();
          v39 = v22;
          v40 = 35;
          v41 = 0xE100000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v10 = StringProtocol.components<A>(separatedBy:)();

          if (!v10[2])
          {
            goto LABEL_35;
          }

          v24 = v10[4];
          v25 = v10[5];

          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v37);

          *(v8 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v20, v36, "[MOSuggestionSheetAssetGridView] selecting %s", v8, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
        }

        v38 = v2();
        v39 = v27;
        v40 = 35;
        v41 = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v2 = &v38;
        v10 = StringProtocol.components<A>(separatedBy:)();

        if (v10[2])
        {
          v28 = v10[4];
          v29 = v10[5];

          v30 = (*((swift_isaMask & *v3) + 0x178))(&v38);
          specialized Set._Variant.insert(_:)(&v40, v28, v29);

          v31 = v30(&v38, 0);
          if ((*((swift_isaMask & *v3) + 0xF0))(v31))
          {
            v33 = v32;
            ObjectType = swift_getObjectType();
            (*(v33 + 8))(ObjectType, v33);
            swift_unknownObjectRelease();
          }

          return;
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v11 = v23;
        v9 = a1;
      }

      while ((a1 & 0x8000000000000000) == 0);
    }

    outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v7, v8);
  }
}

void specialized MOSuggestionSheetAssetGridView.collectionView(_:didDeselectItemAt:)(unint64_t a1)
{
  v3 = v1;
  v5 = (*((swift_isaMask & *v1) + 0x150))();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = IndexPath.item.getter();
    v10 = (v7 & 0xFFFFFFFFFFFFFF8);
    if (v7 >> 62)
    {
      a1 = v9;
      v17 = _CocoaArrayWrapper.endIndex.getter();
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_21;
    }

    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v9 & 0x8000000000000000) == 0)
    {
      do
      {
        if (v9 >= v11)
        {
          break;
        }

        if ((v7 & 0xC000000000000001) != 0)
        {
LABEL_21:
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = v13;
        }

        else
        {
          if (v9 >= v10[2])
          {
            __break(1u);
LABEL_23:
            swift_once();
            goto LABEL_10;
          }

          v12 = *(v7 + 8 * v9 + 32);
        }

        v2 = (*(*v12 + 96))(v13);

        outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v7, v8);
        if (!v2)
        {
          return;
        }

        if (one-time initialization token for assets != -1)
        {
          goto LABEL_23;
        }

LABEL_10:
        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, static MOAngelLogger.assets);

        v15 = Logger.logObject.getter();
        v8 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v15, v8))
        {
          v7 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v30 = v29;
          *v7 = 136315138;
          v31 = (*(*v2 + 512))();
          v32 = v16;
          v33 = 35;
          v34 = 0xE100000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v10 = StringProtocol.components<A>(separatedBy:)();

          if (!v10[2])
          {
            goto LABEL_25;
          }

          v18 = v10[4];
          v19 = v10[5];

          v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v30);

          *(v7 + 4) = v20;
          _os_log_impl(&_mh_execute_header, v15, v8, "[MOSuggestionSheetAssetGridView] un-selecting %s", v7, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
        }

        else
        {
        }

        v31 = (*(*v2 + 512))();
        v32 = v21;
        v33 = 35;
        v34 = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        a1 = &v31;
        v10 = StringProtocol.components<A>(separatedBy:)();

        if (v10[2])
        {
          v22 = v10[4];
          v23 = v10[5];

          v24 = (*((swift_isaMask & *v3) + 0x178))(&v31);
          specialized Set._Variant.remove(_:)(v22, v23);

          v25 = v24(&v31, 0);
          if ((*((swift_isaMask & *v3) + 0xF0))(v25))
          {
            v27 = v26;
            ObjectType = swift_getObjectType();
            (*(v27 + 8))(ObjectType, v27);
            swift_unknownObjectRelease();
          }

          return;
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        v11 = v17;
        v9 = a1;
      }

      while ((a1 & 0x8000000000000000) == 0);
    }

    outlined consume of MOWeakArray<MOSuggestionSheetAssetViewModel>?(v7, v8);
  }
}

uint64_t sub_10004EEFC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t sub_10004EF58(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xB0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10004EFC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xF0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10004F01C(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((swift_isaMask & **a2) + 0xF8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_10004F090@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t sub_10004F154@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x120))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004F21C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x138))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004F2E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x150))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_10004F350@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x168))();
  *a2 = result;
  return result;
}

uint64_t sub_10004F3B4(void *a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x170);

  return v2(v3);
}

uint64_t sub_10004F420@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x180))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004F4E8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x198))();
  *a2 = result & 1;
  return result;
}

id one-time initialization function for taskWorkKind()
{
  static HealthCheckTaskProcessor.taskWorkKind = MOTaskWorkHealthCheck;
  return MOTaskWorkHealthCheck;
}

{
  static BackgroundSyncTaskProcessor.taskWorkKind = MOTaskWorkBackgroundSync;
  return MOTaskWorkBackgroundSync;
}

uint64_t *HealthCheckTaskProcessor.taskWorkKind.unsafeMutableAddressor()
{
  if (one-time initialization token for taskWorkKind != -1)
  {
    swift_once();
  }

  return &static HealthCheckTaskProcessor.taskWorkKind;
}

id static HealthCheckTaskProcessor.taskWorkKind.getter()
{
  if (one-time initialization token for taskWorkKind != -1)
  {
    swift_once();
  }

  v1 = static HealthCheckTaskProcessor.taskWorkKind;

  return v1;
}

id MOSuggestionAssetReference.assetType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void MOServerConnectionProperties.connectionHost.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t MOSuggestionAssetReference.bundleType.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

id static HealthCheckTaskProcessor.createWorker()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for HealthCheckTaskProcessor();
  v3 = swift_allocObject();
  v4 = MOTaskActionMore;
  *(v3 + 16) = MOTaskActionMore;
  *(v3 + 24) = 2;
  a1[3] = v2;
  a1[4] = &protocol witness table for HealthCheckTaskProcessor;
  *a1 = v3;
  return v4;
}

uint64_t HealthCheckTaskProcessor.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MOTaskActionMore;
  *(v0 + 16) = MOTaskActionMore;
  *(v0 + 24) = 2;
  v2 = v1;
  return v0;
}

Swift::String __swiftcall HealthCheckTaskProcessor.me()()
{
  type metadata accessor for HealthCheckTaskProcessor();

  v0 = String.init<A>(describing:)();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t HealthCheckTaskProcessor.beginTask()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(HealthCheckTaskProcessor.beginTask(), 0, 0);
}

{
  v17 = v0;
  type metadata accessor for CommonLogger();
  static CommonLogger.services.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  if (v3)
  {
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = (*(*v7 + 144))(v9);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "beginTask: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  (*(v5 + 8))(v4, v6);
  v13 = MOTaskActionMore;

  v14 = v0[1];

  return v14(v13);
}

uint64_t HealthCheckTaskProcessor.continueTask(progressReporter:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for Logger();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(HealthCheckTaskProcessor.continueTask(progressReporter:), 0, 0);
}

uint64_t (*HealthCheckTaskProcessor.continueTask(progressReporter:)())(uint64_t, void)
{
  v24 = v0;
  type metadata accessor for CommonLogger();
  static CommonLogger.services.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  if (v3)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v10 = (*(*v6 + 144))();
    v22 = v7;
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "continueTask: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);

    (*(v5 + 8))(v4, v22);
  }

  else
  {

    (*(v5 + 8))(v4, v7);
  }

  v13 = *(v0 + 56);
  (*(**(v0 + 48) + 112))(1);
  result = (*(*v13 + 136))(v0 + 16);
  if (__OFSUB__(*v15, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = *(v0 + 56);
    --*v15;
    v17 = result(v0 + 16, 0);
    v18 = (*(*v16 + 120))(v17);
    v19 = &MOTaskActionMore;
    if (v18 <= 0)
    {
      v19 = &MOTaskActionCompleted;
    }

    v20 = *v19;

    v21 = *(v0 + 8);

    return v21(v20);
  }

  return result;
}

uint64_t HealthCheckTaskProcessor.endTask()()
{
  return _swift_task_switch(HealthCheckTaskProcessor.endTask(), 0, 0);
}

{
  v3 = *(v0 + 8);
  v1 = MOTaskActionCompleted;

  return v3(v1);
}

uint64_t HealthCheckTaskProcessor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t HealthCheckTaskProcessor.init()()
{
  v1 = MOTaskActionMore;
  *(v0 + 16) = MOTaskActionMore;
  *(v0 + 24) = 2;
  v2 = v1;
  return v0;
}

uint64_t protocol witness for TaskProcessorWorker.beginTask() in conformance HealthCheckTaskProcessor()
{
  v4 = (*(**v0 + 152) + **(**v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TaskProcessorWorker.continueTask(progressReporter:) in conformance HealthCheckTaskProcessor;

  return v4();
}

uint64_t protocol witness for TaskProcessorWorker.continueTask(progressReporter:) in conformance HealthCheckTaskProcessor(uint64_t a1)
{
  v6 = (*(**v1 + 160) + **(**v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for TaskProcessorWorker.continueTask(progressReporter:) in conformance HealthCheckTaskProcessor;

  return v6(a1);
}

uint64_t protocol witness for TaskProcessorWorker.endTask() in conformance HealthCheckTaskProcessor()
{
  v4 = (*(**v0 + 168) + **(**v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TaskProcessorWorker.endTask() in conformance HealthCheckTaskProcessor;

  return v4();
}

uint64_t protocol witness for TaskProcessorWorker.endTask() in conformance HealthCheckTaskProcessor(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

id protocol witness for static TaskProcessorWorker.createWorker() in conformance HealthCheckTaskProcessor@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HealthCheckTaskProcessor();
  v5 = swift_allocObject();
  v6 = MOTaskActionMore;
  *(v5 + 16) = MOTaskActionMore;
  *(v5 + 24) = 2;
  a2[3] = v4;
  a2[4] = a1;
  *a2 = v5;
  return v6;
}

uint64_t sub_100050528@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_1000505C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

void one-time initialization function for font()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = v4;
    v6 = [v0 fontWithDescriptor:v5 size:0.0];

    static MOSuggestionSheetOverflowView.font = v6;
  }

  else
  {
    __break(1u);
  }
}

{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCallout;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = v4;
    v6 = [v0 fontWithDescriptor:v5 size:0.0];

    static MOSuggestionAddedView.font = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *MOSuggestionSheetOverflowView.font.unsafeMutableAddressor()
{
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  return &static MOSuggestionSheetOverflowView.font;
}

void one-time initialization function for config()
{
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  v0 = static MOSuggestionSheetOverflowView.font;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithFont:v2 scale:1];

  static MOSuggestionSheetOverflowView.config = v3;
}

{
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  v0 = static MOSuggestionAddedView.font;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithFont:v2];

  static MOSuggestionAddedView.config = v3;
}

uint64_t *MOSuggestionSheetOverflowView.config.unsafeMutableAddressor()
{
  if (one-time initialization token for config != -1)
  {
    swift_once();
  }

  return &static MOSuggestionSheetOverflowView.config;
}

void one-time initialization function for symbolColor()
{
  v0 = [objc_opt_self() tertiarySystemBackgroundColor];
  v1 = [v0 colorWithAlphaComponent:0.5];

  static MOSuggestionSheetOverflowView.symbolColor = v1;
}

uint64_t *MOSuggestionSheetOverflowView.symbolColor.unsafeMutableAddressor()
{
  if (one-time initialization token for symbolColor != -1)
  {
    swift_once();
  }

  return &static MOSuggestionSheetOverflowView.symbolColor;
}

id one-time initialization function for numberColor()
{
  result = [objc_opt_self() systemWhiteColor];
  static MOSuggestionSheetOverflowView.numberColor = result;
  return result;
}

uint64_t *MOSuggestionSheetOverflowView.numberColor.unsafeMutableAddressor()
{
  if (one-time initialization token for numberColor != -1)
  {
    swift_once();
  }

  return &static MOSuggestionSheetOverflowView.numberColor;
}

void MOSuggestionSheetOverflowView.overflowCount.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCountLabel);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 mainBundle];
  v11._object = 0x80000001002B02B0;
  v5._countAndFlagsBits = 25637;
  v5._object = 0xE200000000000000;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002A48B0;
  v8 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCount;
  swift_beginAccess();
  v9 = *(v0 + v8);
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = v9;
  static String.localizedStringWithFormat(_:_:)();

  v10 = String._bridgeToObjectiveC()();

  [v3 setText:v10];
}

uint64_t MOSuggestionSheetOverflowView.overflowCount.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCount;
  swift_beginAccess();
  return *(v0 + v1);
}

void MOSuggestionSheetOverflowView.overflowCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCount;
  swift_beginAccess();
  *(v1 + v3) = a1;
  MOSuggestionSheetOverflowView.overflowCount.didset();
}

void (*MOSuggestionSheetOverflowView.overflowCount.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionSheetOverflowView.overflowCount.modify;
}

void MOSuggestionSheetOverflowView.overflowCount.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    MOSuggestionSheetOverflowView.overflowCount.didset();
  }
}

char *MOSuggestionSheetOverflowView.__allocating_init(overflowCount:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = *&v4[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCountLabel];
  v6 = v5;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  return v4;
}

id MOSuggestionSheetOverflowView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_blurEffectView;
  *&v4[v9] = [objc_allocWithZone(UIVisualEffectView) init];
  *&v4[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCount] = 0;
  v10 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCountLabel;
  v11 = [objc_allocWithZone(UILabel) init];
  if (one-time initialization token for numberColor != -1)
  {
    swift_once();
  }

  [v11 setTextColor:static MOSuggestionSheetOverflowView.numberColor];
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  [v11 setFont:static MOSuggestionSheetOverflowView.font];
  [v11 setAdjustsFontForContentSizeCategory:1];
  *&v4[v10] = v11;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for MOSuggestionSheetOverflowView();
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  MOSuggestionSheetOverflowView.initOverflowView()();

  return v12;
}

void MOSuggestionSheetOverflowView.initOverflowView()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_blurEffectView];
  v3 = [objc_opt_self() _effectWithBlurRadius:10.0 scale:1.0];
  [v2 setEffect:v3];

  v4 = [objc_opt_self() blackColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  [v2 setBackgroundColor:v5];
  [v1 addSubview:v2];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v6 = [v2 layer];
  [v6 setCornerRadius:7.0];

  [v2 setClipsToBounds:1];
  v7 = [objc_allocWithZone(UIStackView) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setAxis:0];
  [v7 setDistribution:2];
  [v7 setAlignment:3];
  [v1 addSubview:v7];
  v8 = [v7 superview];
  if (v8)
  {
    v9 = v8;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v7 centerXAnchor];
    v11 = [v9 centerXAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:0.0];
    [v12 setActive:1];
  }

  v13 = [v7 superview];
  if (v13)
  {
    v14 = v13;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v7 centerYAnchor];
    v16 = [v14 centerYAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:0.0];
    [v17 setActive:1];
  }

  v18 = [objc_allocWithZone(UIImageView) init];
  if (one-time initialization token for config != -1)
  {
    swift_once();
  }

  v19 = static MOSuggestionSheetOverflowView.config;
  v20 = String._bridgeToObjectiveC()();
  v21 = [objc_opt_self() systemImageNamed:v20 withConfiguration:v19];

  [v18 setImage:v21];
  if (one-time initialization token for symbolColor != -1)
  {
    swift_once();
  }

  [v18 setTintColor:static MOSuggestionSheetOverflowView.symbolColor];
  v27 = v18;
  [v27 setOverrideUserInterfaceStyle:1];
  [v27 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  [v7 addArrangedSubview:v27];
  v22 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCountLabel;
  v23 = one-time initialization token for numberColor;
  v24 = *&v1[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCountLabel];
  if (v23 != -1)
  {
    swift_once();
  }

  [v24 setTextColor:static MOSuggestionSheetOverflowView.numberColor];

  v25 = one-time initialization token for font;
  v26 = *&v1[v22];
  if (v25 != -1)
  {
    swift_once();
  }

  [v26 setFont:static MOSuggestionSheetOverflowView.font];

  [*&v1[v22] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v7 addArrangedSubview:*&v1[v22]];
}

id MOSuggestionSheetOverflowView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetOverflowView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void specialized MOSuggestionSheetOverflowView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_blurEffectView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCount) = 0;
  v2 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetOverflowView_overflowCountLabel;
  v3 = [objc_allocWithZone(UILabel) init];
  if (one-time initialization token for numberColor != -1)
  {
    swift_once();
  }

  [v3 setTextColor:static MOSuggestionSheetOverflowView.numberColor];
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  [v3 setFont:static MOSuggestionSheetOverflowView.font];
  [v3 setAdjustsFontForContentSizeCategory:1];
  *(v0 + v2) = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10005174C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  return result;
}

Swift::Int MOSuggestionCollectionViewInteractionState.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

void MOSuggestionSheetInterstitialView.controller.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*MOSuggestionSheetInterstitialView.controller.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_controller;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return MOSuggestionSheetInterstitialView.controller.modify;
}

void MOSuggestionSheetInterstitialView.controller.modify(id **a1, char a2)
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

uint64_t MOSuggestionSheetInterstitialView.presentationDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_presentationDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MOSuggestionSheetInterstitialView.presentationDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_presentationDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetAssetGridView.delegate.modify;
}

double MOSuggestionSheetInterstitialView.cellViewModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_cellViewModel;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t MOSuggestionSheetInterstitialView.toggleListViewCarouselModeAccessibilityLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode);
  v2 = [objc_opt_self() mainBundle];
  v9 = 0x80000001002B06A0;
  if (v1)
  {
    v3 = 0x6C6573756F726143;
    v4 = 0xED00007765695620;
  }

  else
  {
    v3 = 0x656956207473694CLL;
    v4 = 0xE900000000000077;
  }

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = 0xD00000000000004ELL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v2, v5, *(&v9 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

void closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.titleLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setNumberOfLines:0];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleTitle2];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont:v5];
    [v0 setTextAlignment:1];
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.dateLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setLineBreakMode:4];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
  [v0 setFont:v1];

  [v0 setNumberOfLines:0];
  [v0 setTextAlignment:1];
  return v0;
}

id closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.assetTypeLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setNumberOfLines:0];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v0 setFont:v1];

  v2 = [objc_opt_self() secondaryLabelColor];
  v3 = [v2 colorWithAlphaComponent:0.67];

  [v0 setTextColor:v3];
  [v0 setTextAlignment:1];
  return v0;
}

id closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.emptySelectionLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setNumberOfLines:0];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v0 setFont:v1];

  v2 = [objc_opt_self() secondaryLabelColor];
  v3 = [v2 colorWithAlphaComponent:0.67];

  [v0 setTextColor:v3];
  [v0 setTextAlignment:1];
  [v0 setHidden:1];
  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  return v0;
}

void one-time initialization function for SELECT_AT_LEAST_ONE_TEXT()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001002B0990;
  v1._object = 0x80000001002B0960;
  v4._countAndFlagsBits = 0xD000000000000049;
  v1._countAndFlagsBits = 0xD00000000000002ELL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static MOSuggestionSheetInterstitialView.SELECT_AT_LEAST_ONE_TEXT = v3;
}

__int128 *MOSuggestionSheetInterstitialView.SELECT_AT_LEAST_ONE_TEXT.unsafeMutableAddressor()
{
  if (one-time initialization token for SELECT_AT_LEAST_ONE_TEXT != -1)
  {
    swift_once();
  }

  return &static MOSuggestionSheetInterstitialView.SELECT_AT_LEAST_ONE_TEXT;
}

uint64_t static MOSuggestionSheetInterstitialView.SELECT_AT_LEAST_ONE_TEXT.getter()
{
  if (one-time initialization token for SELECT_AT_LEAST_ONE_TEXT != -1)
  {
    swift_once();
  }

  v0 = static MOSuggestionSheetInterstitialView.SELECT_AT_LEAST_ONE_TEXT;

  return v0;
}

char *MOSuggestionSheetInterstitialView.__allocating_init(controller:cellViewModel:presentationDelegate:selectedSuggestion:indexPath:fromNotification:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v11 = objc_allocWithZone(v9);
  swift_unknownObjectWeakInit();
  v12 = &v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_presentationDelegate];
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_presentationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode] = 0;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_photoMemoryBanner] = 0;
  v13 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_cellViewModel;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_cellViewModel] = 0;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_toggleListViewCarouselButton] = 0;
  v14 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_scrollView;
  v15 = [objc_allocWithZone(UIScrollView) init];
  [v15 setShowsVerticalScrollIndicator:0];
  *&v11[v14] = v15;
  v16 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_stackView;
  v17 = [objc_allocWithZone(UIStackView) init];
  [v17 setAxis:1];
  [v17 setAlignment:3];
  [v17 setSpacing:3.0];
  *&v11[v16] = v17;
  v18 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_labelStackView;
  v19 = [objc_allocWithZone(UIStackView) init];
  [v19 setAxis:0];
  [v19 setAlignment:3];
  *&v11[v18] = v19;
  v20 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleLabel;
  closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.titleLabel();
  *&v11[v20] = v21;
  v22 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_dateLabel;
  *&v11[v22] = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.dateLabel();
  v23 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetTypeLabel;
  *&v11[v23] = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.assetTypeLabel();
  v24 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel;
  *&v11[v24] = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.emptySelectionLabel();
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_portraitConstraints] = _swiftEmptyArrayStorage;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_landscapeConstraints] = _swiftEmptyArrayStorage;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_commonConstraints] = _swiftEmptyArrayStorage;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint] = 0;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint] = 0;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonBottomConstraint] = 0;
  v25 = &v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString];
  *v26 = 0;
  v26[1] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v12 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v27 = &v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_selectedSuggestion];
  *v27 = a5;
  v27[1] = a6;
  v28 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_indexPath;
  v62 = type metadata accessor for IndexPath();
  v29 = *(v62 - 8);
  (*(v29 + 16))(&v11[v28], a7, v62);
  v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_fromNotification] = a8;
  v30 = objc_allocWithZone(UINavigationBar);

  v31 = [v30 init];
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_navigationBar] = v31;
  swift_beginAccess();
  *&v11[v13] = a2;

  v33 = *((swift_isaMask & *a1) + 0x1B0);
  LOBYTE(v30) = v33(v32);
  v34 = (*((swift_isaMask & *a1) + 0x1C8))();
  v36 = v35;
  v37 = (*((swift_isaMask & *a1) + 0x1C0))();
  v38 = specialized static MOSuggestionSheetInterstitialView.makeJournalButton(publicUI:clientName:isSourceJournalComposer:)(v30 & 1, v34, v36, v37 & 1);

  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton] = v38;
  v40 = v33(v39);
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton] = specialized static MOSuggestionSheetInterstitialView.makeQuickAddButton(publicUI:)(v40 & 1);
  v41 = objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialExpandableListView());
  v42 = a1;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView] = MOSuggestionInterstitialExpandableListView.init(controller:)(v42);
  v43 = objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialCarouselView());
  v44 = v42;
  *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView] = MOSuggestionInterstitialCarouselView.init(controller:)(v44);
  v67.receiver = v11;
  v67.super_class = v63;
  v45 = objc_msgSendSuper2(&v67, "initWithNibName:bundle:", 0, 0);
  v46 = *(v45 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
  v47 = *((swift_isaMask & *v46) + 0x198);
  v48 = v45;
  v49 = v46;
  v47(v45, &protocol witness table for MOSuggestionSheetInterstitialView);

  v50 = *(v48 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
  v51 = *((swift_isaMask & *v50) + 0xF0);
  v52 = v48;
  v53 = v50;
  v51(v45, &protocol witness table for MOSuggestionSheetInterstitialView);

  v54 = [objc_opt_self() defaultCenter];
  [v54 addObserver:v52 selector:"handleContentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];

  v55 = (*(*a2 + 176))();
  v56 = (v52 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString);
  *v56 = v55;
  v56[1] = v57;

  MOSuggestionSheetInterstitialView.updateTitleLabelString()();
  (*((swift_isaMask & *v52) + 0x318))();
  MOSuggestionSheetInterstitialView.updateConstraints()();

  (*(v29 + 8))(a7, v62);

  swift_unknownObjectRelease();

  return v52;
}

char *MOSuggestionSheetInterstitialView.init(controller:cellViewModel:presentationDelegate:selectedSuggestion:indexPath:fromNotification:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = specialized MOSuggestionSheetInterstitialView.init(controller:cellViewModel:presentationDelegate:selectedSuggestion:indexPath:fromNotification:)(a1, a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease();

  return v9;
}

void MOSuggestionSheetInterstitialView.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v7 = specialized static MOAngelRootViewController.isLandscape.getter();
  v8 = *&static MOAngelRootViewController.LANDSCAPE_WIDTH;
  if (!v7)
  {
    v8 = a2;
  }

  [v3 setPreferredContentSize:{v8, a3}];
  v13.receiver = v3;
  v13.super_class = type metadata accessor for MOSuggestionSheetInterstitialView(0);
  objc_msgSendSuper2(&v13, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  v12[4] = partial apply for closure #1 in MOSuggestionSheetInterstitialView.viewWillTransition(to:with:);
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v12[3] = &block_descriptor_2;
  v11 = _Block_copy(v12);

  [a1 animateAlongsideTransition:0 completion:v11];
  _Block_release(v11);
}

void closure #1 in MOSuggestionSheetInterstitialView.viewWillTransition(to:with:)(double a1, double a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    MOSuggestionSheetInterstitialView.updateConstraints()();
    v8 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView;
    v9 = *&v7[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView];
    MOSuggestionInterstitialCarouselView.updateLayout()();

    v10 = specialized static MOAngelRootViewController.isLandscape.getter();
    v11 = *&static MOAngelRootViewController.LANDSCAPE_WIDTH;
    if (!v10)
    {
      v11 = a1;
    }

    [v7 setPreferredContentSize:{v11, a2}];
    MOSuggestionSheetInterstitialView.updateConstraints()();
    v12 = *&v7[v8];
    MOSuggestionInterstitialCarouselView.updateLayout()();
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id MOSuggestionSheetInterstitialView.updateConstraints()()
{
  v1 = v0;
  if (specialized static MOAngelRootViewController.isLandscape.getter())
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static MOAngelLogger.shared);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "handling landscape", v5, 2u);
    }

    MOSuggestionSheetInterstitialView.handleLandscapeLayout()();
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static MOAngelLogger.shared);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "handling portrait", v9, 2u);
    }

    MOSuggestionSheetInterstitialView.handlePortraitLayout()();
  }

  v10 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView;
  [*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView) setNeedsLayout];
  v11 = *(v1 + v10);

  return [v11 layoutIfNeeded];
}

void MOSuggestionSheetInterstitialView.handlePortraitLayout()()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration.Size();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v45 - v11;
  v13 = (*((swift_isaMask & *v0) + 0x1C8))(v10);
  if (v13)
  {
    v14 = v13;
    v46 = v9;
    v15 = [v0 navigationItem];
    v16 = *(v14 + 16);
    MOEventBundle._orderedAssetReferences()();
    v18 = v5;
    if (v17)
    {
      if (v17 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v3;

      if (v19 == 1)
      {
        v21 = v2;
        v22 = "sets in the interstitial view";
        v23 = 0xEB000000006D6574;
LABEL_9:
        v24 = (v22 | 0x8000000000000000);
        v25 = [objc_opt_self() mainBundle];
        v47._object = v24;
        v26._countAndFlagsBits = 0x49207463656C6553;
        v26._object = v23;
        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        v47._countAndFlagsBits = 0xD00000000000002DLL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v47);

        v28 = String._bridgeToObjectiveC()();

        [v15 setTitle:v28];

        v2 = v21;
        v3 = v20;
        v5 = v18;
        v9 = v46;
        goto LABEL_10;
      }
    }

    else
    {
      v20 = v3;
    }

    v21 = v2;
    v22 = "ionCoordinatorContext>8";
    v23 = 0xEC000000736D6574;
    goto LABEL_9;
  }

LABEL_10:
  v29 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_navigationBar);
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [v29 heightAnchor];
  v31 = [v30 constraintEqualToConstant:50.0];

  [v31 setActive:1];
  v32 = objc_opt_self();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 deactivateConstraints:isa];

  v34 = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints:v34];

  v35 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_stackView);
  [v35 setCustomSpacing:*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleLabel) afterView:10.0];
  v36 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_labelStackView);
  [v35 setCustomSpacing:v36 afterView:20.0];
  [*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint) setConstant:20.0];
  v37 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint);
  if (v37)
  {
    [v37 setConstant:-20.0];
  }

  [v36 setAxis:1];
  [v36 setAlignment:3];
  v38 = [v36 setCustomSpacing:*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_dateLabel) afterView:0.0];
  v39 = (*((swift_isaMask & *v1) + 0x138))(v38);
  if (v39)
  {
    v40 = v39;
    if ((*((swift_isaMask & *v39) + 0x1B0))() & 1) != 0 || ((*((swift_isaMask & *v40) + 0x1C0))())
    {
      v41 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonBottomConstraint);
      if (v41)
      {
        v42 = v41;
        [v42 setConstant:-56.0];
      }
    }
  }

  v43 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton);
  UIButton.configuration.getter();
  v44 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v44 - 8) + 48))(v12, 1, v44))
  {
    outlined init with copy of UIButton.Configuration?(v12, v9);
    UIButton.configuration.setter();

    outlined destroy of UIButton.Configuration?(v12);
  }

  else
  {
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.Size.large(_:), v2);
    UIButton.Configuration.buttonSize.setter();
    UIButton.configuration.setter();
  }
}

void MOSuggestionSheetInterstitialView.handleLandscapeLayout()()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration.Size();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = [v0 navigationItem];
  v13 = String._bridgeToObjectiveC()();
  [v12 setTitle:v13];

  v14 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_navigationBar);
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v14 heightAnchor];
  v16 = [v15 constraintEqualToConstant:40.0];

  [v16 setActive:1];
  v17 = objc_opt_self();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 deactivateConstraints:isa];

  v19 = Array._bridgeToObjectiveC()().super.isa;

  [v17 activateConstraints:v19];

  v20 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_stackView);
  [v20 setCustomSpacing:*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleLabel) afterView:0.0];
  v21 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_labelStackView);
  [v20 setCustomSpacing:v21 afterView:10.0];
  v22 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint);
  if (v22)
  {
    [v22 setConstant:200.0];
  }

  v23 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint);
  if (v23)
  {
    [v23 setConstant:-200.0];
  }

  [v21 setAxis:1];
  [v21 setAlignment:3];
  v24 = [v21 setCustomSpacing:*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_dateLabel) afterView:2.0];
  v25 = (*((swift_isaMask & *v1) + 0x138))(v24);
  if (v25)
  {
    v26 = v25;
    if ((*((swift_isaMask & *v25) + 0x1B0))() & 1) != 0 || ((*((swift_isaMask & *v26) + 0x1C0))())
    {
      v27 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonBottomConstraint);
      if (v27)
      {
        v28 = v27;
        [v28 setConstant:-4.0];
      }
    }
  }

  v29 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton);
  UIButton.configuration.getter();
  v30 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v30 - 8) + 48))(v11, 1, v30))
  {
    outlined init with copy of UIButton.Configuration?(v11, v9);
    UIButton.configuration.setter();

    outlined destroy of UIButton.Configuration?(v11);
  }

  else
  {
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.Size.medium(_:), v2);
    UIButton.Configuration.buttonSize.setter();
    UIButton.configuration.setter();
  }
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.setupViews()()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x1C8))();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = (*((swift_isaMask & *v0) + 0x138))();
  if (v4)
  {
    v5 = v4;
    v6 = *&v0[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_navigationBar];
    v7 = objc_opt_self();
    v8 = [v7 systemBackgroundColor];
    [v6 setBarTintColor:v8];

    v9 = [v7 systemBackgroundColor];
    [v6 setBackgroundColor:v9];

    [v6 setTranslucent:0];
    v10 = [objc_allocWithZone(UIImage) init];
    [v6 setShadowImage:v10];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    p_align = &stru_100327FE8.align;
    v12 = [v0 view];
    if (!v12)
    {
      __break(1u);
      goto LABEL_76;
    }

    v13 = v12;
    v273 = v6;
    [v12 addSubview:v6];

    v14 = v3[2];
    MOEventBundle._orderedAssetReferences()();
    if (v15)
    {
      if (v15 >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v16 == 1)
      {
        v17 = "sets in the interstitial view";
        v18 = 0xEB000000006D6574;
        goto LABEL_15;
      }
    }

    else
    {
    }

    v17 = "ionCoordinatorContext>8";
    v18 = 0xEC000000736D6574;
LABEL_15:
    v269 = v5;
    v265 = v7;
    v19 = (v17 | 0x8000000000000000);
    v20 = [objc_opt_self() mainBundle];
    v279._object = v19;
    v21._countAndFlagsBits = 0x49207463656C6553;
    v21._object = v18;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v279._countAndFlagsBits = 0xD00000000000002DLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v279);

    v23 = [v1 navigationItem];
    v24 = String._bridgeToObjectiveC()();
    [v23 setTitle:v24];

    MOSuggestionSheetInterstitialView.setNavBar()();
    v25 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleLabel];
    [v25 setUserInteractionEnabled:1];
    v264 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"handleLabelEditTap:"];
    v26 = [v25 addGestureRecognizer:?];
    v27 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_dateLabel];
    (*(*v3 + 56))(v26);
    v28 = String._bridgeToObjectiveC()();

    v274 = v27;
    [v27 setText:v28];

    v29 = [v1 view];
    if (v29)
    {
      v30 = v29;
      v31 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_scrollView];
      [v29 addSubview:v31];

      v32 = [v31 superview];
      if (v32)
      {
        v33 = v32;
        [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
        v34 = [v31 leadingAnchor];
        v35 = [v33 leadingAnchor];
        v36 = [v34 constraintEqualToAnchor:v35];

        [v36 setConstant:0.0];
        [v36 setActive:1];

        p_align = (&stru_100327FE8 + 24);
      }

      v37 = [v31 superview];
      v38 = v31;
      if (v37)
      {
        v39 = v37;
        [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
        v40 = [v31 trailingAnchor];
        v41 = [v39 trailingAnchor];
        v42 = [v40 constraintEqualToAnchor:v41];

        [v42 setConstant:0.0];
        [v42 setActive:1];

        p_align = &stru_100327FE8.align;
      }

      v43 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_stackView];
      [v31 addSubview:v43];
      v44 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_labelStackView];
      [v44 addArrangedSubview:v274];
      v266 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetTypeLabel];
      [v44 addArrangedSubview:?];
      [v43 addArrangedSubview:v25];
      v267 = v44;
      [v43 addArrangedSubview:v44];
      v45 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView;
      [v43 addArrangedSubview:*&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView]];
      v46 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView;
      [v43 addArrangedSubview:*&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView]];
      [*&v1[v45] setHidden:1];
      v47 = [v1 *(p_align + 376)];
      if (v47)
      {
        v48 = v47;
        v276 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton;
        [v47 addSubview:*&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton]];

        v49 = [v1 *(p_align + 376)];
        if (v49)
        {
          v50 = v49;
          v271 = v31;
          v272 = v46;
          v268 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton;
          [v49 addSubview:*&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton]];

          v51 = [v1 *(p_align + 376)];
          if (v51)
          {
            v52 = v51;
            v53 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel];
            [v51 addSubview:v53];

            v54 = [v25 superview];
            v270 = v53;
            if (v54)
            {
              v55 = v54;
              [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
              v56 = [v25 leadingAnchor];
              v57 = [v55 leadingAnchor];
              v58 = [v56 constraintEqualToAnchor:v57];

              [v58 setConstant:24.0];
              [v58 setActive:1];

              p_align = (&stru_100327FE8 + 24);
            }

            v59 = [v25 superview];
            if (v59)
            {
              v60 = v59;
              [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
              v61 = [v25 trailingAnchor];
              v62 = [v60 trailingAnchor];
              v63 = [v61 constraintEqualToAnchor:v62];

              p_align = &stru_100327FE8.align;
              [v63 setConstant:-16.0];
              [v63 setActive:1];
            }

            v64 = [*&v1[v276] leadingAnchor];
            v65 = [v1 *(p_align + 376)];
            if (v65)
            {
              v66 = v65;
              v67 = [v65 leadingAnchor];

              v68 = [v64 constraintEqualToAnchor:v67 constant:20.0];
              v69 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint;
              v70 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint];
              *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint] = v68;

              v71 = [*&v1[v276] trailingAnchor];
              v72 = [v1 view];
              if (v72)
              {
                v73 = v72;
                v74 = [v72 trailingAnchor];

                v75 = [v71 constraintEqualToAnchor:v74 constant:-20.0];
                v76 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint;
                v77 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint];
                *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint] = v75;

                [*&v1[v69] setActive:1];
                [*&v1[v76] setActive:1];
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                v78 = swift_allocObject();
                *(v78 + 16) = xmmword_1002A5360;
                v79 = [*&v1[v272] heightAnchor];
                v80 = [*&v1[v272] widthAnchor];
                v81 = [v79 constraintEqualToAnchor:v80];

                *(v78 + 32) = v81;
                v82 = [*&v1[v45] leadingAnchor];
                v83 = [v43 leadingAnchor];
                v84 = [v82 constraintEqualToAnchor:v83 constant:20.0];

                *(v78 + 40) = v84;
                v85 = [*&v1[v45] trailingAnchor];
                v86 = [v43 trailingAnchor];
                v87 = [v85 constraintEqualToAnchor:v86 constant:-20.0];

                *(v78 + 48) = v87;
                v88 = [v38 topAnchor];
                v89 = [v273 bottomAnchor];
                v90 = [v88 constraintEqualToAnchor:v89 constant:20.0];

                *(v78 + 56) = v90;
                v91 = [v43 topAnchor];
                v92 = [v38 topAnchor];
                v93 = [v91 constraintEqualToAnchor:v92 constant:8.0];

                *(v78 + 64) = v93;
                v94 = [v274 topAnchor];
                v95 = [v267 topAnchor];
                v96 = [v94 constraintEqualToAnchor:v95];

                *(v78 + 72) = v96;
                v97 = [v274 bottomAnchor];
                v98 = [v266 topAnchor];
                v99 = [v97 constraintEqualToAnchor:v98 constant:-10.0];

                *(v78 + 80) = v99;
                v100 = [v266 bottomAnchor];
                v101 = [v267 bottomAnchor];
                v102 = [v100 constraintEqualToAnchor:v101];

                *(v78 + 88) = v102;
                *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_portraitConstraints] = v78;

                v103 = swift_allocObject();
                *(v103 + 16) = xmmword_1002A5370;
                v104 = [*&v1[v272] heightAnchor];
                v105 = [v1 view];
                if (v105)
                {
                  v106 = v105;
                  v107 = [v105 heightAnchor];

                  v108 = [v104 constraintEqualToAnchor:v107 multiplier:0.5];
                  *(v103 + 32) = v108;
                  v109 = [*&v1[v45] leadingAnchor];
                  v110 = [v43 leadingAnchor];
                  v111 = [v109 constraintEqualToAnchor:v110 constant:104.0];

                  *(v103 + 40) = v111;
                  v112 = [*&v1[v45] trailingAnchor];
                  v113 = [v43 trailingAnchor];
                  v114 = [v112 constraintEqualToAnchor:v113 constant:-104.0];

                  *(v103 + 48) = v114;
                  v115 = [v38 topAnchor];
                  v116 = [v273 bottomAnchor];
                  v117 = [v115 constraintEqualToAnchor:v116];

                  *(v103 + 56) = v117;
                  v118 = [v43 topAnchor];
                  v119 = [v38 topAnchor];
                  v120 = [v118 constraintEqualToAnchor:v119];

                  *(v103 + 64) = v120;
                  v121 = [v274 leadingAnchor];
                  v122 = [v267 leadingAnchor];
                  v123 = [v121 constraintEqualToAnchor:v122];

                  *(v103 + 72) = v123;
                  v124 = [v274 trailingAnchor];
                  v125 = [v267 trailingAnchor];
                  v126 = [v124 constraintEqualToAnchor:v125];

                  *(v103 + 80) = v126;
                  v127 = [v266 leadingAnchor];
                  v128 = [v267 leadingAnchor];
                  v129 = [v127 constraintEqualToAnchor:v128];

                  *(v103 + 88) = v129;
                  v130 = [v267 leadingAnchor];
                  v131 = [v43 leadingAnchor];
                  v132 = [v130 constraintGreaterThanOrEqualToAnchor:v131];

                  *(v103 + 96) = v132;
                  v133 = [v267 trailingAnchor];
                  v134 = [v43 trailingAnchor];
                  v135 = [v133 constraintLessThanOrEqualToAnchor:v134];

                  *(v103 + 104) = v135;
                  v136 = [v274 leadingAnchor];
                  v137 = [v267 leadingAnchor];
                  v138 = [v136 constraintGreaterThanOrEqualToAnchor:v137];

                  *(v103 + 112) = v138;
                  v139 = [v266 trailingAnchor];
                  v140 = [v267 trailingAnchor];
                  v141 = [v139 constraintLessThanOrEqualToAnchor:v140];

                  *(v103 + 120) = v141;
                  v142 = [v267 centerXAnchor];
                  v143 = [v43 centerXAnchor];
                  v144 = [v142 constraintEqualToAnchor:v143];

                  *(v103 + 128) = v144;
                  *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_landscapeConstraints] = v103;

                  v145 = *&v1[v272];
                  v146 = [v145 superview];
                  if (v146)
                  {
                    v147 = v146;
                    [v145 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v148 = &stru_100327FE8.align;
                    v149 = [v145 leadingAnchor];
                    v150 = [v147 leadingAnchor];
                    v151 = [v149 constraintEqualToAnchor:v150];

                    [v151 setConstant:0.0];
                    if (v151)
                    {
                      [v151 setActive:1];
                    }

                    v152 = (&stru_100327FE8 + 24);
                  }

                  else
                  {
                    v151 = 0;
                    v147 = v145;
                    v152 = &stru_100327FE8.align;
                    v148 = &stru_100327FE8.align;
                  }

                  v153 = *&v1[v272];
                  v154 = [v153 superview];
                  if (v154)
                  {
                    v155 = v154;
                    [v153 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v156 = [v153 trailingAnchor];
                    v157 = [v155 trailingAnchor];
                    v158 = [v156 constraintEqualToAnchor:v157];

                    [v158 setConstant:0.0];
                    if (v158)
                    {
                      [v158 setActive:1];
                    }

                    v152 = (&stru_100327FE8 + 24);
                  }

                  else
                  {
                    v158 = 0;
                    v155 = v153;
                  }

                  v159 = v270;
                  v160 = [v270 superview];
                  if (v160)
                  {
                    v161 = v160;
                    [v270 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v162 = [v270 leadingAnchor];
                    v163 = [v161 leadingAnchor];
                    v164 = [v162 constraintEqualToAnchor:v163];

                    v159 = v270;
                    [v164 setConstant:20.0];
                    [v164 setActive:1];
                  }

                  v165 = [v159 superview];
                  if (v165)
                  {
                    v166 = v165;
                    [v159 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v167 = [v159 trailingAnchor];
                    v168 = [v166 trailingAnchor];
                    v169 = [v167 constraintEqualToAnchor:v168];

                    [v169 setConstant:-20.0];
                    [v169 setActive:1];
                  }

                  if ((*((swift_isaMask & *v269) + 0x1B0))() & 1) != 0 || ((*((swift_isaMask & *v269) + 0x1C0))())
                  {
                    v170 = *&v1[v268];
                    [v170 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v171 = [v170 heightAnchor];
                    v172 = [v171 constraintEqualToConstant:0.0];

                    [v172 setActive:1];
                    [*&v1[v268] setHidden:1];
                    v173 = &stru_100327FE8.align;
                    v174 = [*&v1[v276] bottomAnchor];
                    v175 = [v1 *(v152 + 376)];
                    if (!v175)
                    {
LABEL_87:
                      __break(1u);
                      return;
                    }

                    v176 = v175;
                    v177 = [v175 safeAreaLayoutGuide];

                    v178 = [v177 bottomAnchor];
                    v179 = [v174 constraintEqualToAnchor:v178 constant:-4.0];
                  }

                  else
                  {
                    v180 = *&v1[v276];
                    v181 = *&v1[v268];
                    v182 = v180;
                    [v181 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v183 = [v181 leadingAnchor];
                    v184 = [v182 leadingAnchor];
                    v185 = [v183 constraintEqualToAnchor:v184 constant:0.0];

                    [v185 setActive:1];
                    v186 = *&v1[v276];
                    v187 = *&v1[v268];
                    v188 = v186;
                    [v187 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v189 = [v187 trailingAnchor];
                    v190 = [v188 trailingAnchor];
                    v191 = [v189 constraintEqualToAnchor:v190 constant:0.0];

                    [v191 setActive:1];
                    v192 = *&v1[v268];
                    v193 = [v192 superview];
                    if (v193)
                    {
                      v194 = v193;
                      [v192 setTranslatesAutoresizingMaskIntoConstraints:0];
                      v195 = [v192 centerXAnchor];
                      v196 = [v194 centerXAnchor];
                      v197 = [v195 constraintEqualToAnchor:v196];

                      [v197 setConstant:0.0];
                      if (v197)
                      {
                        [v197 setActive:1];
                      }

                      v152 = (&stru_100327FE8 + 24);
                      v148 = (&stru_100327FE8 + 24);
                      v173 = (&stru_100327FE8 + 24);
                    }

                    else
                    {
                      v197 = 0;
                      v194 = v192;
                      v152 = &stru_100327FE8.align;
                      v148 = &stru_100327FE8.align;
                      v173 = &stru_100327FE8.align;
                    }

                    v198 = *&v1[v268];
                    v199 = [v198 superview];
                    if (v199)
                    {
                      v200 = v199;
                      [v198 setTranslatesAutoresizingMaskIntoConstraints:0];
                      v201 = [v198 *(v173 + 276)];
                      v202 = v173;
                      v203 = v201;
                      v204 = [v200 *(v202 + 276)];
                      v205 = [v203 constraintEqualToAnchor:v204];

                      if (v205)
                      {
                        [v205 setConstant:-34.0];
                        [v205 setActive:1];
                      }

                      v152 = (&stru_100327FE8 + 24);

                      v173 = (&stru_100327FE8 + 24);
                    }

                    else
                    {
                      v205 = 0;
                      v200 = v198;
                    }

                    v174 = [*&v1[v276] *(v173 + 276)];
                    v178 = [*&v1[v268] topAnchor];
                    v179 = [v174 constraintEqualToAnchor:v178 constant:-5.0];
                  }

                  v206 = v179;

                  v207 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonBottomConstraint];
                  *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonBottomConstraint] = v206;
                  v208 = v206;

                  [v208 setActive:1];
                  v209 = [v43 superview];
                  if (v209)
                  {
                    v210 = v209;
                    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v211 = [v43 *(v148 + 272)];
                    v212 = [v210 *(v148 + 272)];
                    v213 = [v211 constraintEqualToAnchor:v212];

                    [v213 setConstant:0.0];
                    [v213 setActive:1];

                    v173 = (&stru_100327FE8 + 24);
                  }

                  v214 = [v43 superview];
                  if (v214)
                  {
                    v215 = v214;
                    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v216 = [v43 trailingAnchor];
                    v217 = [v215 trailingAnchor];
                    v218 = [v216 constraintEqualToAnchor:v217];

                    [v218 setConstant:0.0];
                    [v218 setActive:1];

                    v173 = &stru_100327FE8.align;
                  }

                  v219 = [v43 superview];
                  if (v219)
                  {
                    v220 = v219;
                    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v221 = [v43 *(v173 + 276)];
                    v222 = [v220 *(v173 + 276)];
                    v223 = [v221 constraintEqualToAnchor:v222];

                    if (v223)
                    {
                      [v223 setConstant:-0.0];
                      [v223 setActive:1];
                    }
                  }

                  v224 = swift_allocObject();
                  *(v224 + 16) = xmmword_1002A5380;
                  v225 = [v273 *(v148 + 272)];
                  v226 = [v1 *(v152 + 376)];
                  if (v226)
                  {
                    v227 = v226;
                    v228 = [v226 *(v148 + 272)];

                    v229 = [v225 constraintEqualToAnchor:v228];
                    *(v224 + 32) = v229;
                    v230 = [v273 trailingAnchor];
                    v231 = [v1 *(v152 + 376)];
                    if (v231)
                    {
                      v232 = v231;
                      v233 = [v231 trailingAnchor];

                      v234 = [v230 constraintEqualToAnchor:v233];
                      *(v224 + 40) = v234;
                      v235 = [v273 topAnchor];
                      v236 = [v1 *(v152 + 376)];
                      if (v236)
                      {
                        v237 = v236;
                        v275 = objc_opt_self();
                        v238 = [v237 topAnchor];

                        v239 = [v235 constraintEqualToAnchor:v238];
                        *(v224 + 48) = v239;
                        v240 = [*&v1[v276] centerXAnchor];
                        v241 = [v271 centerXAnchor];
                        v242 = [v240 constraintEqualToAnchor:v241];

                        *(v224 + 56) = v242;
                        v243 = [v43 widthAnchor];
                        v244 = [v271 widthAnchor];
                        v245 = [v243 constraintEqualToAnchor:v244];

                        *(v224 + 64) = v245;
                        v246 = [v271 bottomAnchor];
                        v247 = [v270 topAnchor];
                        v248 = [v246 constraintEqualToAnchor:v247];

                        *(v224 + 72) = v248;
                        v249 = [*&v1[v45] bottomAnchor];
                        v250 = [v270 topAnchor];
                        v251 = [v249 constraintEqualToAnchor:v250];

                        *(v224 + 80) = v251;
                        v252 = [*&v1[v276] topAnchor];
                        v253 = [v270 bottomAnchor];
                        v254 = [v252 constraintEqualToAnchor:v253];

                        *(v224 + 88) = v254;
                        v255 = [v270 centerXAnchor];
                        v256 = [*&v1[v276] centerXAnchor];
                        v257 = [v255 constraintEqualToAnchor:v256];

                        *(v224 + 96) = v257;
                        v258 = [v270 bottomAnchor];
                        v259 = [*&v1[v276] topAnchor];
                        v260 = [v258 constraintEqualToAnchor:v259 constant:-10.0];

                        *(v224 + 104) = v260;
                        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);
                        isa = Array._bridgeToObjectiveC()().super.isa;

                        [v275 activateConstraints:isa];

                        [*&v1[v276] addTarget:v1 action:"journalButtonTapped:" forControlEvents:64];
                        [*&v1[v268] addTarget:v1 action:"addButtonTapped" forControlEvents:64];
                        v262 = [v1 view];
                        if (v262)
                        {
                          v263 = v262;

                          v277 = [v265 systemBackgroundColor];
                          [v263 setBackgroundColor:v277];

                          return;
                        }

                        goto LABEL_86;
                      }

LABEL_85:
                      __break(1u);
LABEL_86:
                      __break(1u);
                      goto LABEL_87;
                    }

LABEL_84:
                    __break(1u);
                    goto LABEL_85;
                  }

LABEL_83:
                  __break(1u);
                  goto LABEL_84;
                }

LABEL_82:
                __break(1u);
                goto LABEL_83;
              }

LABEL_81:
              __break(1u);
              goto LABEL_82;
            }

LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.preFetch()()
{
  MOSuggestionSheetInterstitialView.fetchAssetsForCarousel()();

  MOSuggestionSheetInterstitialView.didUpdateSelection()();
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.didUpdateSelection()()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
    v3 = *((swift_isaMask & *v2) + 0xD0);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
    v3 = *((swift_isaMask & *v2) + 0x110);
  }

  v4 = v2;
  v5 = v3();

  specialized Set._Variant.remove(_:)(0x6C6F686563616C70, 0xEB00000000726564);

  specialized Set._Variant.remove(_:)(0, 0xE000000000000000);

  v6 = *(v5 + 16);

  v7 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton);
  if (v6)
  {
    [v7 setEnabled:1];
    [*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton) setEnabled:1];
    v8 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel);
    [v8 setHidden:1];
  }

  else
  {
    [v7 setEnabled:0];
    [*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton) setEnabled:0];
    v8 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel);
    [v8 setHidden:0];
    if (one-time initialization token for SELECT_AT_LEAST_ONE_TEXT != -1)
    {
      swift_once();
    }
  }

  v9 = String._bridgeToObjectiveC()();
  [v8 setText:v9];

  v10 = *((swift_isaMask & *v1) + 0x330);

  v10();
}

void MOSuggestionSheetInterstitialView.setNavBar()()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x138))();
  if (v2)
  {
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() systemImageNamed:v4];

    v6 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v5 style:2 target:0 action:"didToggleListCarouselViewButtonWithCarouselIndex:"];
    v7 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_toggleListViewCarouselButton;
    v8 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_toggleListViewCarouselButton];
    *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_toggleListViewCarouselButton] = v6;

    v9 = (*((swift_isaMask & *v3) + 0x1B0))();
    v10 = objc_opt_self();
    v11 = &selRef_systemBlueColor;
    if ((v9 & 1) == 0)
    {
      v11 = &selRef_systemIndigoColor;
    }

    v12 = [v10 *v11];
    v13 = *&v1[v7];
    if (v13)
    {
      [v13 setTintColor:v12];
      v14 = *&v1[v7];
      if (v14)
      {
        v15 = v14;
        MOSuggestionSheetInterstitialView.toggleListViewCarouselModeAccessibilityLabel.getter();
        v16 = String._bridgeToObjectiveC()();

        [v15 setAccessibilityLabel:v16];

        v17 = *&v1[v7];
        if (v17)
        {
          v18 = v17;
          v19 = [v1 navigationItem];
          [v19 setRightBarButtonItem:v18];
        }
      }
    }

    v20 = *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_navigationBar];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1002A4A70;
    *(v21 + 32) = [v1 navigationItem];
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UINavigationItem, UINavigationItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v20 setItems:isa animated:0];

    v23 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:0 action:"cancelSheet"];
    [v23 setTintColor:v12];
    v24 = [v1 navigationItem];
    [v24 setLeftBarButtonItem:v23];
  }
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.updateAssetTypes()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in MOSuggestionSheetInterstitialView.updateAssetTypes();
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_7;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
}

void closure #1 in MOSuggestionSheetInterstitialView.updateAssetTypes()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    aBlock[4] = partial apply for closure #1 in closure #1 in MOSuggestionSheetInterstitialView.updateAssetTypes();
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_93;
    v5 = _Block_copy(aBlock);
    v6 = v2;

    [v3 animateWithDuration:v5 animations:1.0];
    _Block_release(v5);
  }
}

void closure #1 in closure #1 in MOSuggestionSheetInterstitialView.updateAssetTypes()(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode;
  if (*(a1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode) == 1)
  {
    v3 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView;
    v4 = *(a1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
    v5 = MOSuggestionInterstitialExpandableListView.assetTypeSummary.getter();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = *(a1 + v3);
      MOSuggestionInterstitialExpandableListView.assetTypeSummary.getter();
LABEL_11:

      goto LABEL_12;
    }

    if (*(a1 + v2))
    {
      goto LABEL_12;
    }
  }

  v10 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView;
  v11 = *(a1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
  v12 = MOSuggestionInterstitialCarouselView.assetTypeSummary.getter();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v9 = *(a1 + v10);
    MOSuggestionInterstitialCarouselView.assetTypeSummary.getter();
    goto LABEL_11;
  }

LABEL_12:
  v16 = *(a1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetTypeLabel);
  v17 = String._bridgeToObjectiveC()();

  [v16 setText:v17];
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MOSuggestionSheetInterstitialView(0);
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v34.receiver = v2;
  v34.super_class = type metadata accessor for MOSuggestionSheetInterstitialView(0);
  objc_msgSendSuper2(&v34, "viewDidDisappear:", a1);
  v4 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView;
  v5 = *&v2[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView];
  v6 = *((swift_isaMask & *v5) + 0xF0);
  v7 = v5;
  v8 = v6(v33);
  *v9 = _swiftEmptyArrayStorage;

  v8(v33, 0);

  v10 = *&v2[v4];
  v11 = *((swift_isaMask & *v10) + 0xD0);
  v12 = v10;
  v11(0);

  v13 = *&v2[v4];
  v14 = *((swift_isaMask & *v13) + 0xB8);
  v15 = v13;
  v14(0);

  v16 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView;
  v17 = *&v2[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView];
  v18 = *((swift_isaMask & *v17) + 0xC8);
  v19 = v17;
  v20 = v18(v33);
  *v21 = _swiftEmptyArrayStorage;

  v20(v33, 0);

  v22 = *&v2[v16];
  v23 = *((swift_isaMask & *v22) + 0x90);
  v24 = v22;
  v23(0);

  v25 = [v2 view];
  if (!v25)
  {
    goto LABEL_15;
  }

  v26 = v25;
  v27 = [v25 subviews];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIView, UIView_ptr);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v28 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
    if (v29)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
LABEL_4:
      if (v29 >= 1)
      {
        for (i = 0; i != v29; ++i)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v31 = *(v28 + 8 * i + 32);
          }

          v32 = v31;
          [v31 removeFromSuperview];
        }

        goto LABEL_11;
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }
  }

LABEL_11:

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static MOSuggestionAssetCacheManager.shared + 296))();
}

id MOSuggestionSheetInterstitialView.viewDidAppear(_:)(char a1, SEL *a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for MOSuggestionSheetInterstitialView(0);
  return objc_msgSendSuper2(&v6, *a2, a1 & 1);
}

id @objc MOSuggestionSheetInterstitialView.viewDidAppear(_:)(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for MOSuggestionSheetInterstitialView(0);
  return objc_msgSendSuper2(&v7, *a4, a3);
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.cancelSheet()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static MOSuggestionAssetCacheManager.shared + 288))();

  [v0 dismissViewControllerAnimated:1 completion:0];
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.addButtonTapped()()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x1C8))();
  if (v2)
  {
    v3 = v2;
    v4 = (*((swift_isaMask & *v0) + 0x138))();
    if (v4)
    {
      v15 = v4;
      v5 = (*((swift_isaMask & *v0) + 0x390))();
      v6 = (*((swift_isaMask & *v0) + 0x3A0))(v5);
      (*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_selectedSuggestion))(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_indexPath, 1);
      v7 = IndexPath.row.getter();
      v8 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString);
      v9 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString + 8);
      v10 = *(*v3 + 552);

      v10(v7, v8, v9, v6 & 1, v15);

      if ((*((swift_isaMask & *v1) + 0x150))(v11))
      {
        v13 = v12;
        ObjectType = swift_getObjectType();
        (*(v13 + 16))(ObjectType, v13);
        swift_unknownObjectRelease();
      }

      [v1 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
    }
  }
}

void MOSuggestionSheetInterstitialView.updateTitleLabelString()()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x138))();
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(NSMutableAttributedString);

    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithString:v5];

    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() systemImageNamed:v7];

    if (v8)
    {
      v9 = (*((swift_isaMask & *v3) + 0x1B0))();
      v10 = objc_opt_self();
      v11 = &selRef_systemBlueColor;
      if ((v9 & 1) == 0)
      {
        v11 = &selRef_systemIndigoColor;
      }

      v12 = [v10 *v11];
      v13 = [v8 imageWithTintColor:v12];

      v14 = objc_opt_self();
      v15 = [v14 preferredFontForTextStyle:UIFontTextStyleHeadline];
      v16 = [v15 fontDescriptor];
      v17 = [v16 fontDescriptorWithSymbolicTraits:2];

      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = [v14 fontWithDescriptor:v17 size:0.0];

      v19 = [objc_opt_self() configurationWithFont:v18];
      v8 = [v13 imageWithSymbolConfiguration:v19];
    }

    v20 = [objc_allocWithZone(NSTextAttachment) init];
    [v20 setImage:v8];
    v25 = [objc_opt_self() attributedStringWithAttachment:v20];
    v21 = objc_allocWithZone(NSAttributedString);
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 initWithString:v22];

    [v6 appendAttributedString:v23];
    [v6 appendAttributedString:v25];
    v24 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleLabel);
    [v24 setAttributedText:v6];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 setAdjustsFontForContentSizeCategory:1];
  }
}

void closure #1 in MOSuggestionSheetInterstitialView.handleLabelEditTap(_:)(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = (*((swift_isaMask & *a2) + 0x60))(a1);
  v5 = v4;
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString);
    v7 = *(Strong + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString + 8);
    v9 = Strong;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v17[0] = v8;
  v17[1] = v7;
  v10 = SettingsCodable<>.isEqual(_:)();
  __swift_destroy_boxed_opaque_existential_0(v17);
  if (v10)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = (v11 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString);
    *v12 = v3;
    v12[1] = v5;
    v13 = v11;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
LABEL_9:
  }

  else
  {
    v15 = v14;
    v16 = (v14 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString);
    *v16 = v3;
    v16[1] = v5;

    MOSuggestionSheetInterstitialView.updateTitleLabelString()();
  }
}

void MOSuggestionSheetInterstitialView.fetchAssetsForCarousel()()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x1C8))();
  if (v2)
  {
    v3 = v2;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static MOSuggestionAssetCacheManager.shared + 296))();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:style:typeSorted:completionHandler:)(0, 5, 5, 0, partial apply for closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForCarousel(), v4);

    v6 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView;
    v7 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
    v8 = specialized static MOSuggestionSheetAssetViewModel.placeholders(count:parent:)(v5, v3);
    (*((swift_isaMask & *v7) + 0xE8))(v8);

    v9 = *(v1 + v6);
    MOSuggestionInterstitialCarouselView.reloadAll()();
  }
}

void closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForCarousel()(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(a1 + 16) == 1 || (v12 = *a1) == 0)
    {
    }

    else
    {
      v13 = a1[1];
      v14 = Strong;
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);

      v20 = static OS_dispatch_queue.main.getter();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = v12;
      v15[4] = v13;
      aBlock[4] = partial apply for closure #1 in closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForCarousel();
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_100;
      v16 = _Block_copy(aBlock);

      v19 = v14;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v17 = v20;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v16);

      (*(v4 + 8))(v6, v3);
      (*(v8 + 8))(v10, v7);
    }
  }
}

void closure #1 in closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForCarousel()(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
  MOSuggestionInterstitialCarouselView.reloadCell(_:index:)(a2, a3);
}

void MOSuggestionSheetInterstitialView.fetchAssetsForListView(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((*((swift_isaMask & *v2) + 0x1C8))())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v6;
    v8[4] = a1;
    v8[5] = a2;

    v9 = MOSuggestionCollectionViewCellViewModel.fetchListAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:typeSorted:completion:)(0, 5, 1, partial apply for closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForListView(completion:), v8);

    v10 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView;
    v11 = *(v3 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
    v12 = specialized static MOSuggestionInterstitialListAssetViewModel.placeHolders(count:)(v9);
    (*((swift_isaMask & *v11) + 0xC0))(v12);

    v13 = *(v3 + v10);
    MOSuggestionInterstitialExpandableListView.reloadAll()();
  }
}

void closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForListView(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v35 = a5;
  v33 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v36 = *(v10 - 8);
  v37 = v10;
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (*(a1 + 16) == 1)
    {
    }

    else
    {
      v30 = *(a1 + 8);
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
      v31 = static OS_dispatch_queue.main.getter();
      outlined init with copy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult(a1, &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      v19 = (*(v14 + 80) + 24) & ~*(v14 + 80);
      v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
      v32 = v7;
      v22 = swift_allocObject();
      *(v22 + 16) = v18;
      outlined init with take of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult(v16, v22 + v19);
      *(v22 + v20) = v30;
      v23 = v33;
      *(v22 + v21) = v34;
      v24 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
      v25 = v35;
      *v24 = v23;
      v24[1] = v25;
      aBlock[4] = partial apply for closure #1 in closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForListView(completion:);
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_79;
      v26 = _Block_copy(aBlock);
      v27 = v18;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v28 = v31;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);

      (*(v32 + 8))(v9, v6);
      (*(v36 + 8))(v12, v37);
    }
  }
}

uint64_t closure #1 in closure #1 in MOSuggestionSheetInterstitialView.fetchAssetsForListView(completion:)(void *a1, uint64_t *a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = *(a1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
  v9 = *a2;
  v10 = *((swift_isaMask & *v8) + 0xC8);
  v11 = v8;

  v12 = v10(v18);
  v14 = v13;
  v15 = *v13;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v14 = v15;
  if (!result || v15 < 0 || (v15 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()();
    v15 = result;
    *v14 = result;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *((v15 & 0xFFFFFFFFFFFFFF8) + 8 * a3 + 0x20) = v9;

  v12(v18, 0);
  MOSuggestionInterstitialExpandableListView.reloadAll()();

  (*((swift_isaMask & *a1) + 0x330))();
  result = swift_beginAccess();
  if ((*(a4 + 16) & 1) == 0)
  {
    a5(result);
    result = swift_beginAccess();
    *(a4 + 16) = 1;
  }

  return result;
}

void MOSuggestionSheetInterstitialView.showCarousel()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView;
  v3 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
  v4 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode;
  if (*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode))
  {
    v5 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
    v6 = *((swift_isaMask & *v5) + 0xD0);
    v3;
    v7 = v5;
    v8 = v6();

    v9 = v8;
  }

  else
  {
    v10 = *((swift_isaMask & *v3) + 0x110);
    v11 = v3;
    v9 = v10();
  }

  (*((swift_isaMask & *v3) + 0x118))(v9);

  v12 = *(v1 + v2);
  MOSuggestionInterstitialCarouselView.refreshCheckmarksState()();

  *(v1 + v4) = 0;
  [*(v1 + v2) setHidden:0];
  [*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView) setHidden:1];
  [*(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_scrollView) setShowsVerticalScrollIndicator:0];
  MOSuggestionSheetInterstitialView.didUpdateSelection()();

  MOSuggestionSheetInterstitialView.setNavBar()();
}

uint64_t MOSuggestionSheetInterstitialView.currentlyActiveSelectedIdentifiers.getter()
{
  if (*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode))
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
    v2 = *((swift_isaMask & *v1) + 0xD0);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
    v2 = *((swift_isaMask & *v1) + 0x110);
  }

  v3 = v1;
  v4 = v2();

  return v4;
}

uint64_t MOSuggestionSheetInterstitialView.showListView()()
{
  v1 = v0;
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v21 - 8);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
  v8 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode;
  if (*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode))
  {
    v9 = *((swift_isaMask & *v7) + 0xD0);
    v10 = v7;
    v11 = v9();
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
    v13 = *((swift_isaMask & *v12) + 0x110);
    v7;
    v14 = v12;
    v15 = v13();

    v11 = v15;
  }

  (*((swift_isaMask & *v7) + 0xD8))(v11);

  *(v1 + v8) = 1;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in MOSuggestionSheetInterstitialView.showListView();
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_66;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v19 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v3, v19);
  return (*(v22 + 8))(v6, v23);
}

void closure #1 in MOSuggestionSheetInterstitialView.showListView()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView;
    v4 = *(Strong + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
    MOSuggestionInterstitialExpandableListView.refreshCheckmarksState()();

    [*&v2[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView] setHidden:1];
    [*&v2[v3] setHidden:0];
    [*&v2[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_scrollView] setShowsVerticalScrollIndicator:1];
    MOSuggestionSheetInterstitialView.didUpdateSelection()();
    MOSuggestionSheetInterstitialView.setNavBar()();
  }
}

void closure #1 in MOSuggestionSheetInterstitialView.didToggleListCarouselViewButton(carouselIndex:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    MOSuggestionSheetInterstitialView.showListView()();
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static MOAngelLogger.assets);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v7 = 136315394;
      if (v4[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode])
      {
        v8 = *&v4[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView];
        v9 = *((swift_isaMask & *v8) + 0xD0);
      }

      else
      {
        v8 = *&v4[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView];
        v9 = *((swift_isaMask & *v8) + 0x110);
      }

      v10 = v8;
      v9(v10);

      v11 = Set.debugDescription.getter();
      v13 = v12;

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v22);

      *(v7 + 4) = v14;
      *(v7 + 12) = 2080;
      v15 = *&v4[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView];
      v16 = *((swift_isaMask & *v15) + 0xD0);
      v17 = v15;
      v16(v17);

      v18 = Set.debugDescription.getter();
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v22);

      *(v7 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v5, v6, "[Interstitial] currentlySelected: %s, selectedList: %s", v7, 0x16u);
      swift_arrayDestroy();
    }
  }
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.markSelectedAssetsAsEligible()()
{
  if (*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode))
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
    v2 = *((swift_isaMask & *v1) + 0xD0);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
    v2 = *((swift_isaMask & *v1) + 0x110);
  }

  v3 = v1;
  v4 = v2();

  v5 = 0;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 56);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      do
      {
LABEL_11:
        v11 = (*(v4 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v8)))));
        v13 = *v11;
        v12 = v11[1];
        v14 = one-time initialization token for shared;

        if (v14 != -1)
        {
          swift_once();
        }

        v8 &= v8 - 1;
        (*(*static MOSuggestionAssetCacheManager.shared + 264))(v13, v12);
      }

      while (v8);
    }
  }
}

Swift::Bool __swiftcall MOSuggestionSheetInterstitialView.isPromptElligibleForTransfer()()
{
  if (!(*((swift_isaMask & *v0) + 0x1C8))())
  {
    v4 = 0;
LABEL_63:
    LOBYTE(v6) = v4 & 1;
    return v6;
  }

  if (*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode))
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
    v2 = *((swift_isaMask & *v1) + 0xD0);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
    v2 = *((swift_isaMask & *v1) + 0x110);
  }

  v3 = v1;
  v5 = v2();

  v6 = MOEventBundle.orderedAssetReferencesForPreview(max:)(13);
  if (!v6)
  {

    goto LABEL_61;
  }

  v7 = v6;
  if (v6 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v8 = v6;
    if (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_60;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_60:

LABEL_61:
    v4 = 1;
LABEL_62:

    goto LABEL_63;
  }

LABEL_9:
  if (v8 >= 1)
  {
    v9 = 0;
    v74 = 1;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = (*(*v10 + 120))();
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      if (v12 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v14 != v15)
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_21;
        }

        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v20 != v21)
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v23)
          {
            goto LABEL_21;
          }

          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;
          if (v24 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v26 != v27)
          {
            v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v28)
            {
              goto LABEL_21;
            }

            v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v31 = v30;
            if (v29 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v31 != v32)
            {
              v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v33)
              {
                goto LABEL_21;
              }

              v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v36 = v35;
              if (v34 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v36 != v37)
              {
                v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v38)
                {
                  goto LABEL_21;
                }

                v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v41 = v40;
                if (v39 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v41 != v42)
                {
                  break;
                }
              }
            }
          }
        }
      }

LABEL_12:
      if (v8 == ++v9)
      {

        v4 = v74;
        goto LABEL_62;
      }
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v43 & 1) == 0)
    {
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
      if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
      {
LABEL_41:
      }

      else
      {
        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v49 & 1) == 0)
        {
          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;
          if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
          {
            goto LABEL_41;
          }

          v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v57 & 1) == 0)
          {
            v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v59;
            if (v58 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v61)
            {
              goto LABEL_41;
            }

            v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v62 & 1) == 0)
            {
              v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v65 = v64;
              if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
              {
                goto LABEL_41;
              }

              v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v67 & 1) == 0)
              {
                v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v70 = v69;
                if (v68 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v70 == v71)
                {
                  goto LABEL_41;
                }

                v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v72 & 1) == 0)
                {
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  goto LABEL_41;
                }
              }
            }
          }
        }
      }

      v50 = (*(*v10 + 296))(v48);
      v52 = specialized Set.contains(_:)(v50, v51, v5);

      v74 &= v52;
      goto LABEL_12;
    }

LABEL_21:

    goto LABEL_12;
  }

  __break(1u);
  return v6;
}

id MOSuggestionSheetInterstitialView.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MOSuggestionSheetInterstitialView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetInterstitialView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.enableActionButtons()()
{
  [*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton) setEnabled:1];
  [*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton) setEnabled:1];
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel);
  [v1 setHidden:1];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];
}

Swift::Void __swiftcall MOSuggestionSheetInterstitialView.disableActionButtons()()
{
  [*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton) setEnabled:0];
  [*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton) setEnabled:0];
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel);
  [v1 setHidden:0];
  if (one-time initialization token for SELECT_AT_LEAST_ONE_TEXT != -1)
  {
    swift_once();
  }

  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v16;
  return v12;
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13, &type metadata accessor for UUID, &lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

{
  v5 = type metadata accessor for CloudDevice.Capability();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability, &protocol conformance descriptor for CloudDevice.Capability);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability, &protocol conformance descriptor for CloudDevice.Capability);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13, &type metadata accessor for CloudDevice.Capability, &lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability, &protocol conformance descriptor for CloudDevice.Capability);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v11;
  *v1 = v12;
  return result;
}

void specialized _NativeSet._delete(at:)(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void specialized _NativeSet._delete(at:)(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = _HashTable.previousHole(before:)();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v38 = (v16 + 1) & v15;
      v37 = *(v8 + 16);
      v43 = *(v8 + 72);
      v39 = v8 + 16;
      v17 = (v8 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v37(v10, *(v18 + 48) + v43 * v14, v7);
        v23 = v18;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v40, v41, v42);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v17)(v10, v7);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v38)
        {
          if (v25 < v38 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v38 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}

id specialized static MOSuggestionSheetInterstitialView.makeJournalButton(publicUI:clientName:isSourceJournalComposer:)(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v56 = a4;
  v55 = a3;
  v53 = a2;
  v54 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - v5;
  v59 = type metadata accessor for UIButton.Configuration.Size();
  v7 = *(v59 - 8);
  __chkstk_darwin(v59);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UIButton.Configuration();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(UIButton) init];
  static UIButton.Configuration.filled()();
  (*(v11 + 104))(v13, enum case for UIButton.Configuration.CornerStyle.large(_:), v10);
  UIButton.Configuration.cornerStyle.setter();
  (*(v7 + 104))(v9, enum case for UIButton.Configuration.Size.large(_:), v59);
  UIButton.Configuration.buttonSize.setter();
  v19 = objc_opt_self();
  v20 = &selRef_systemBlueColor;
  v21 = v54;
  if ((v54 & 1) == 0)
  {
    v20 = &selRef_systemIndigoColor;
  }

  v22 = [v19 *v20];
  UIButton.Configuration.baseBackgroundColor.setter();
  v23 = *(v15 + 16);
  v57 = v17;
  v23(v6, v17, v14);
  v58 = v15;
  v59 = v14;
  v24 = v15;
  v25 = v55;
  (*(v24 + 56))(v6, 0, 1, v14);
  UIButton.configuration.setter();
  [v18 setRole:1];
  v26 = v18;
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = objc_opt_self();
  v28 = [v27 mainBundle];
  v52 = 0x80000001002B08B0;
  v60._object = 0x80000001002B08B0;
  v29._countAndFlagsBits = 0x7257207472617453;
  v29._object = 0xED0000676E697469;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v60._countAndFlagsBits = 0xD00000000000003BLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v60);

  v31 = String._bridgeToObjectiveC()();

  [v26 setTitle:v31 forState:0];

  v32 = v26;
  v33 = [v27 mainBundle];
  v61._object = 0x80000001002B08F0;
  v61._countAndFlagsBits = 0xD000000000000042;
  v34._countAndFlagsBits = 0x7257207472617453;
  v34._object = 0xED0000676E697469;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v61);

  v36 = String._bridgeToObjectiveC()();

  [v32 setAccessibilityLabel:v36];

  [v32 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  if ((v21 & 1) != 0 && v25)
  {

    v37 = [v27 mainBundle];
    v62._countAndFlagsBits = 0xD000000000000011;
    v62._object = 0x80000001002B0940;
    v38._countAndFlagsBits = 0xE2206F7420646441;
    v38._object = 0xAF9D80E240259C80;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v37, v39, v62);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1002A48B0;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v40 + 32) = v53;
    *(v40 + 40) = v25;
    static String.localizedStringWithFormat(_:_:)();

    v41 = String._bridgeToObjectiveC()();
    [v32 setTitle:v41 forState:0];

    v42 = String._bridgeToObjectiveC()();

    [v32 setAccessibilityLabel:v42];
  }

  v43 = v32;
  if (v56)
  {
    v43 = v32;
    if ((v21 & 1) == 0)
    {
      v44 = [v27 mainBundle];
      v63._object = v52;
      v45._countAndFlagsBits = 0x45206F7420646441;
      v45._object = 0xEC0000007972746ELL;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      v63._countAndFlagsBits = 0xD00000000000003BLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v63);

      v47 = String._bridgeToObjectiveC()();

      [v32 setTitle:v47 forState:0];

      v48 = [v27 mainBundle];
      v64._object = 0x80000001002B08F0;
      v64._countAndFlagsBits = 0xD000000000000042;
      v49._countAndFlagsBits = 0x45206F7420646441;
      v49._object = 0xEC0000007972746ELL;
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, v48, v50, v64);

      v43 = String._bridgeToObjectiveC()();

      [v32 setAccessibilityLabel:v43];
    }
  }

  (*(v58 + 8))(v57, v59);
  return v32;
}

id specialized static MOSuggestionSheetInterstitialView.makeQuickAddButton(publicUI:)(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for UIButton.Configuration.Size();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(UIButton) init];
  static UIButton.Configuration.plain()();
  (*(v6 + 104))(v8, enum case for UIButton.Configuration.Size.large(_:), v5);
  UIButton.Configuration.buttonSize.setter();
  (*(v10 + 16))(v4, v12, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  UIButton.configuration.setter();
  v14 = v13;
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = objc_opt_self();
  v16 = [v15 systemBackgroundColor];
  [v14 setBackgroundColor:v16];

  v17 = [objc_opt_self() mainBundle];
  v26._object = 0x80000001002B0860;
  v18._object = 0x80000001002B0840;
  v26._countAndFlagsBits = 0xD00000000000004ALL;
  v18._countAndFlagsBits = 0xD000000000000014;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v26);

  v20 = String._bridgeToObjectiveC()();

  [v14 setTitle:v20 forState:0];

  if (a1)
  {
    v21 = &selRef_systemBlueColor;
  }

  else
  {
    v21 = &selRef_systemIndigoColor;
  }

  v22 = [v15 *v21];
  [v14 setTitleColor:v22 forState:0];

  v23 = [v15 *v21];
  [v14 setTintColor:v23];

  [v14 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v14 setRole:1];
  (*(v10 + 8))(v12, v9);
  return v14;
}

char *specialized MOSuggestionSheetInterstitialView.init(controller:cellViewModel:presentationDelegate:selectedSuggestion:indexPath:fromNotification:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  swift_unknownObjectWeakInit();
  v11 = &v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_presentationDelegate];
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_presentationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode] = 0;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_photoMemoryBanner] = 0;
  v12 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_cellViewModel;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_cellViewModel] = 0;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_toggleListViewCarouselButton] = 0;
  v13 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_scrollView;
  v14 = [objc_allocWithZone(UIScrollView) init];
  [v14 setShowsVerticalScrollIndicator:0];
  *&v9[v13] = v14;
  v15 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_stackView;
  v16 = [objc_allocWithZone(UIStackView) init];
  [v16 setAxis:1];
  [v16 setAlignment:3];
  [v16 setSpacing:3.0];
  *&v9[v15] = v16;
  v17 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_labelStackView;
  v18 = [objc_allocWithZone(UIStackView) init];
  [v18 setAxis:0];
  [v18 setAlignment:3];
  *&v9[v17] = v18;
  v19 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleLabel;
  closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.titleLabel();
  *&v9[v19] = v20;
  v21 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_dateLabel;
  *&v9[v21] = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.dateLabel();
  v22 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetTypeLabel;
  *&v9[v22] = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.assetTypeLabel();
  v23 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel;
  *&v9[v23] = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.emptySelectionLabel();
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_portraitConstraints] = _swiftEmptyArrayStorage;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_landscapeConstraints] = _swiftEmptyArrayStorage;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_commonConstraints] = _swiftEmptyArrayStorage;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint] = 0;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint] = 0;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonBottomConstraint] = 0;
  v24 = &v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString];
  *v25 = 0;
  v25[1] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v11 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v26 = &v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_selectedSuggestion];
  *v26 = a5;
  v26[1] = a6;
  v27 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_indexPath;
  v61 = type metadata accessor for IndexPath();
  v28 = *(v61 - 8);
  (*(v28 + 16))(&v9[v27], a7, v61);
  v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_fromNotification] = a8;
  v29 = objc_allocWithZone(UINavigationBar);

  v30 = [v29 init];
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_navigationBar] = v30;
  swift_beginAccess();
  *&v9[v12] = a2;

  v32 = *((swift_isaMask & *a1) + 0x1B0);
  LOBYTE(v29) = v32(v31);
  v33 = (*((swift_isaMask & *a1) + 0x1C8))();
  v35 = v34;
  v36 = (*((swift_isaMask & *a1) + 0x1C0))();
  v37 = specialized static MOSuggestionSheetInterstitialView.makeJournalButton(publicUI:clientName:isSourceJournalComposer:)(v29 & 1, v33, v35, v36 & 1);

  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButton] = v37;
  v39 = v32(v38);
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_quickAddButton] = specialized static MOSuggestionSheetInterstitialView.makeQuickAddButton(publicUI:)(v39 & 1);
  v40 = objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialExpandableListView());
  v41 = a1;
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView] = MOSuggestionInterstitialExpandableListView.init(controller:)(v41);
  v42 = objc_allocWithZone(type metadata accessor for MOSuggestionInterstitialCarouselView());
  *&v9[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView] = MOSuggestionInterstitialCarouselView.init(controller:)(v41);
  v64.receiver = v9;
  v64.super_class = type metadata accessor for MOSuggestionSheetInterstitialView(0);
  v43 = objc_msgSendSuper2(&v64, "initWithNibName:bundle:", 0, 0);
  v44 = *(v43 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView);
  v45 = *((swift_isaMask & *v44) + 0x198);
  v46 = v43;
  v47 = v44;
  v45(v43, &protocol witness table for MOSuggestionSheetInterstitialView);

  v48 = *(v46 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView);
  v49 = *((swift_isaMask & *v48) + 0xF0);
  v50 = v46;
  v51 = v48;
  v49(v43, &protocol witness table for MOSuggestionSheetInterstitialView);

  v52 = [objc_opt_self() defaultCenter];
  [v52 addObserver:v50 selector:"handleContentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];

  v53 = (*(*a2 + 176))();
  v54 = (v50 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString);
  *v54 = v53;
  v54[1] = v55;

  MOSuggestionSheetInterstitialView.updateTitleLabelString()();
  (*((swift_isaMask & *v50) + 0x318))();
  MOSuggestionSheetInterstitialView.updateConstraints()();

  (*(v28 + 8))(a7, v61);
  return v50;
}

uint64_t type metadata accessor for MOSuggestionSheetInterstitialView(uint64_t a1)
{
  result = type metadata singleton initialization cache for MOSuggestionSheetInterstitialView;
  if (!type metadata singleton initialization cache for MOSuggestionSheetInterstitialView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005C450()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C488()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized MOSuggestionSheetInterstitialView.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_presentationDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_photoMemoryBanner) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_cellViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_toggleListViewCarouselButton) = 0;
  v1 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_scrollView;
  v2 = [objc_allocWithZone(UIScrollView) init];
  [v2 setShowsVerticalScrollIndicator:0];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_stackView;
  v4 = [objc_allocWithZone(UIStackView) init];
  [v4 setAxis:1];
  [v4 setAlignment:3];
  [v4 setSpacing:3.0];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_labelStackView;
  v6 = [objc_allocWithZone(UIStackView) init];
  [v6 setAxis:0];
  [v6 setAlignment:3];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleLabel;
  closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.titleLabel();
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_dateLabel;
  *(v0 + v9) = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.dateLabel();
  v10 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetTypeLabel;
  *(v0 + v10) = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.assetTypeLabel();
  v11 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_emptySelectionLabel;
  *(v0 + v11) = closure #1 in variable initialization expression of MOSuggestionSheetInterstitialView.emptySelectionLabel();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_portraitConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_landscapeConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_commonConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonTrailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_journalButtonBottomConstraint) = 0;
  v12 = (v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString);
  *v13 = 0;
  v13[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double specialized MOSuggestionSheetInterstitialView.journalButtonTapped(_:)()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x1C8))();
  if (v2)
  {
    v4 = v2;
    v5 = (*((swift_isaMask & *v0) + 0x138))();
    if (v5)
    {
      v15 = v5;
      v6 = (*((swift_isaMask & *v0) + 0x390))();
      v7 = (*((swift_isaMask & *v0) + 0x3A0))(v6);
      (*(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_selectedSuggestion))(v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_indexPath, 0);
      v8 = IndexPath.row.getter();
      v9 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString);
      v10 = *(v1 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_modifiedTitleString + 8);
      v11 = *(*v4 + 528);

      v11(v8, v9, v10, v7 & 1, v15);

      if ((*((swift_isaMask & *v15) + 0x1C0))())
      {
        if ((*((swift_isaMask & *v1) + 0x150))())
        {
          v13 = v12;
          ObjectType = swift_getObjectType();
          (*(v13 + 16))(ObjectType, v13);
          swift_unknownObjectRelease();
        }

        [v1 dismissViewControllerAnimated:1 completion:0];
      }
    }

    else
    {
    }
  }

  return result;
}

void specialized MOSuggestionSheetInterstitialView.handleLabelEditTap(_:)()
{
  v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString + 8];
  if (v1)
  {
    v2 = v0;
    v3 = *&v0[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_titleString];
    type metadata accessor for MOSuggestionInterstitialAlertController();
    v4 = objc_opt_self();

    v5 = [v4 mainBundle];
    v26._object = 0x80000001002B06F0;
    v6._countAndFlagsBits = 0x7469542074696445;
    v26._countAndFlagsBits = 0xD00000000000004ALL;
    v6._object = 0xEA0000000000656CLL;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v26);

    v8 = String._bridgeToObjectiveC()();

    v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v8 message:0 preferredStyle:1];

    (*((swift_isaMask & *v9) + 0x58))(v3, v1);

    v10 = [v4 mainBundle];
    v27._object = 0x80000001002B0740;
    v11._countAndFlagsBits = 0x6C65636E6143;
    v27._countAndFlagsBits = 0xD000000000000049;
    v11._object = 0xE600000000000000;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v27);

    v13 = String._bridgeToObjectiveC()();

    v14 = objc_opt_self();
    v15 = [v14 actionWithTitle:v13 style:1 handler:0];

    [v9 addAction:v15];
    v16 = [v4 mainBundle];
    v28._object = 0x80000001002B0790;
    v17._countAndFlagsBits = 0x6D7269666E6F43;
    v17._object = 0xE700000000000000;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0xD000000000000044;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v28);

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v9;
    *(v20 + 24) = v19;
    v21 = v9;

    v22 = String._bridgeToObjectiveC()();

    aBlock[4] = partial apply for closure #1 in MOSuggestionSheetInterstitialView.handleLabelEditTap(_:);
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    aBlock[3] = &block_descriptor_87;
    v23 = _Block_copy(aBlock);

    v24 = [v14 actionWithTitle:v22 style:0 handler:v23];
    _Block_release(v23);

    [v21 addAction:v24];
    [v2 presentViewController:v21 animated:1 completion:0];
  }
}

void specialized MOSuggestionSheetInterstitialView.didToggleListCarouselViewButton(carouselIndex:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode;
  if (v0[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_currentViewMode] == 1)
  {
    MOSuggestionSheetInterstitialView.showCarousel()();
    goto LABEL_8;
  }

  v3 = *&v0[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView];
  v4 = *((swift_isaMask & *v3) + 0xB8);
  v5 = v3;
  v6 = v4();

  if (v6 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();

    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
LABEL_5:
      MOSuggestionSheetInterstitialView.showListView()();
      goto LABEL_8;
    }
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  MOSuggestionSheetInterstitialView.fetchAssetsForListView(completion:)(partial apply for closure #1 in MOSuggestionSheetInterstitialView.didToggleListCarouselViewButton(carouselIndex:), v9);

LABEL_8:
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static MOAngelLogger.assets);
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v14 = 136315394;
    if (*(v1 + v2))
    {
      v15 = *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetListView];
      v16 = *((swift_isaMask & *v15) + 0xD0);
    }

    else
    {
      v15 = *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView];
      v16 = *((swift_isaMask & *v15) + 0x110);
    }

    v17 = v15;
    v16();

    v18 = Set.debugDescription.getter();
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v29);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2080;
    v22 = *&v11[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetInterstitialView_assetCarouselView];
    v23 = *((swift_isaMask & *v22) + 0x110);
    v24 = v22;
    v23();

    v25 = Set.debugDescription.getter();
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v29);

    *(v14 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v12, v13, "[Interstitial] currentlySelected: %s, selectedList: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  MOSuggestionSheetInterstitialView.setNavBar()();
}

unint64_t lazy protocol witness table accessor for type AssetViewMode and conformance AssetViewMode()
{
  result = lazy protocol witness table cache variable for type AssetViewMode and conformance AssetViewMode;
  if (!lazy protocol witness table cache variable for type AssetViewMode and conformance AssetViewMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetViewMode and conformance AssetViewMode);
  }

  return result;
}

uint64_t sub_10005D2C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t sub_10005D328(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x140);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10005D398@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x150))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10005D3FC(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((swift_isaMask & **a2) + 0x158);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_10005D478@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x1C8))();
  *a2 = result;
  return result;
}

uint64_t sub_10005D4DC(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x1D0);

  return v2(v3);
}

uint64_t getEnumTagSinglePayload for AssetViewMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetViewMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for MOSuggestionSheetInterstitialView(uint64_t a1)
{
  result = type metadata accessor for IndexPath();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10005D7E4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t outlined init with copy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}