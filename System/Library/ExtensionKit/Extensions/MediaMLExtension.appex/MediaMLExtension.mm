uint64_t one-time initialization function for kMediaML_rssi()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rssi", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_rssi = v1;
  return result;
}

Swift::String *kMediaML_rssi.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_rssi != -1)
  {
    swift_once();
  }

  return &kMediaML_rssi;
}

uint64_t one-time initialization function for kMediaML_cca()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cca", 3uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_cca = v1;
  return result;
}

Swift::String *kMediaML_cca.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_cca != -1)
  {
    swift_once();
  }

  return &kMediaML_cca;
}

uint64_t one-time initialization function for kMediaML_snr()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("snr", 3uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_snr = v1;
  return result;
}

Swift::String *kMediaML_snr.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_snr != -1)
  {
    swift_once();
  }

  return &kMediaML_snr;
}

uint64_t one-time initialization function for kMediaML_noise()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("noise", 5uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_noise = v1;
  return result;
}

Swift::String *kMediaML_noise.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_noise != -1)
  {
    swift_once();
  }

  return &kMediaML_noise;
}

uint64_t one-time initialization function for kMediaML_throughputTrue()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("throughput_true", 0xFuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_throughputTrue = v1;
  return result;
}

Swift::String *kMediaML_throughputTrue.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_throughputTrue != -1)
  {
    swift_once();
  }

  return &kMediaML_throughputTrue;
}

uint64_t one-time initialization function for kMediaML_txRate()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tx_rate", 7uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_txRate = v1;
  return result;
}

Swift::String *kMediaML_txRate.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_txRate != -1)
  {
    swift_once();
  }

  return &kMediaML_txRate;
}

uint64_t one-time initialization function for kMediaML_rxRate()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rx_rate", 7uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_rxRate = v1;
  return result;
}

Swift::String *kMediaML_rxRate.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_rxRate != -1)
  {
    swift_once();
  }

  return &kMediaML_rxRate;
}

uint64_t one-time initialization function for kMediaML_dayOfWeek()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dow", 3uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_dayOfWeek = v1;
  return result;
}

Swift::String *kMediaML_dayOfWeek.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_dayOfWeek != -1)
  {
    swift_once();
  }

  return &kMediaML_dayOfWeek;
}

uint64_t one-time initialization function for kMediaML_hourOfDay()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hour", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_hourOfDay = v1;
  return result;
}

Swift::String *kMediaML_hourOfDay.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_hourOfDay != -1)
  {
    swift_once();
  }

  return &kMediaML_hourOfDay;
}

uint64_t one-time initialization function for kMediaML_ssid()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ssid", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_ssid = v1;
  return result;
}

Swift::String *kMediaML_ssid.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_ssid != -1)
  {
    swift_once();
  }

  return &kMediaML_ssid;
}

uint64_t one-time initialization function for kMediaML_interfaceType()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ifty", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_interfaceType = v1;
  return result;
}

Swift::String *kMediaML_interfaceType.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_interfaceType != -1)
  {
    swift_once();
  }

  return &kMediaML_interfaceType;
}

uint64_t one-time initialization function for kMediaML_nData()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ndata", 5uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_nData = v1;
  return result;
}

Swift::String *kMediaML_nData.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_nData != -1)
  {
    swift_once();
  }

  return &kMediaML_nData;
}

uint64_t one-time initialization function for kMediaML_appName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app_name", 8uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_appName = v1;
  return result;
}

Swift::String *kMediaML_appName.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_appName != -1)
  {
    swift_once();
  }

  return &kMediaML_appName;
}

uint64_t one-time initialization function for kMediaML_sessionID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("session_id", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_sessionID = v1;
  return result;
}

Swift::String *kMediaML_sessionID.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_sessionID != -1)
  {
    swift_once();
  }

  return &kMediaML_sessionID;
}

uint64_t one-time initialization function for kMediaML_carrier()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("carrier", 7uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_carrier = v1;
  return result;
}

Swift::String *kMediaML_carrier.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_carrier != -1)
  {
    swift_once();
  }

  return &kMediaML_carrier;
}

uint64_t one-time initialization function for kMediaML_rsrp()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rsrp", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_rsrp = v1;
  return result;
}

Swift::String *kMediaML_rsrp.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_rsrp != -1)
  {
    swift_once();
  }

  return &kMediaML_rsrp;
}

uint64_t one-time initialization function for kMediaML_rscp()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rscp", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_rscp = v1;
  return result;
}

Swift::String *kMediaML_rscp.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_rscp != -1)
  {
    swift_once();
  }

  return &kMediaML_rscp;
}

uint64_t one-time initialization function for kMediaML_rsrq()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rsrq", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_rsrq = v1;
  return result;
}

Swift::String *kMediaML_rsrq.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_rsrq != -1)
  {
    swift_once();
  }

  return &kMediaML_rsrq;
}

uint64_t one-time initialization function for kMediaML_bars()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bars", 4uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_bars = v1;
  return result;
}

Swift::String *kMediaML_bars.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_bars != -1)
  {
    swift_once();
  }

  return &kMediaML_bars;
}

uint64_t one-time initialization function for kMediaML_count()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("count", 5uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_count = v1;
  return result;
}

Swift::String *kMediaML_count.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_count != -1)
  {
    swift_once();
  }

  return &kMediaML_count;
}

uint64_t one-time initialization function for kMediaML_medianThroughputTrue()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("quantile(throughput_true)", 0x19uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_medianThroughputTrue = v1;
  return result;
}

Swift::String *kMediaML_medianThroughputTrue.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_medianThroughputTrue != -1)
  {
    swift_once();
  }

  return &kMediaML_medianThroughputTrue;
}

uint64_t one-time initialization function for kMediaML_binnedRssi()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binned_rssi", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_binnedRssi = v1;
  return result;
}

Swift::String *kMediaML_binnedRssi.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_binnedRssi != -1)
  {
    swift_once();
  }

  return &kMediaML_binnedRssi;
}

uint64_t one-time initialization function for kMediaML_binnedRsrp()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binned_rsrp", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_binnedRsrp = v1;
  return result;
}

Swift::String *kMediaML_binnedRsrp.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_binnedRsrp != -1)
  {
    swift_once();
  }

  return &kMediaML_binnedRsrp;
}

uint64_t one-time initialization function for kMediaML_binnedRsrq()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binned_rsrq", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_binnedRsrq = v1;
  return result;
}

Swift::String *kMediaML_binnedRsrq.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_binnedRsrq != -1)
  {
    swift_once();
  }

  return &kMediaML_binnedRsrq;
}

uint64_t one-time initialization function for kMediaML_binnedRscp()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binned_rscp", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_binnedRscp = v1;
  return result;
}

Swift::String *kMediaML_binnedRscp.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_binnedRscp != -1)
  {
    swift_once();
  }

  return &kMediaML_binnedRscp;
}

uint64_t one-time initialization function for kMediaML_binnedSnr()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("binned_snr", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_binnedSnr = v1;
  return result;
}

Swift::String *kMediaML_binnedSnr.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_binnedSnr != -1)
  {
    swift_once();
  }

  return &kMediaML_binnedSnr;
}

uint64_t one-time initialization function for kMediaML_throughputStdDev()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("predStdDev", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_throughputStdDev = v1;
  return result;
}

Swift::String *kMediaML_throughputStdDev.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_throughputStdDev != -1)
  {
    swift_once();
  }

  return &kMediaML_throughputStdDev;
}

uint64_t one-time initialization function for kMediaML_throughputPrediction()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("predVal", 7uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_throughputPrediction = v1;
  return result;
}

Swift::String *kMediaML_throughputPrediction.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_throughputPrediction != -1)
  {
    swift_once();
  }

  return &kMediaML_throughputPrediction;
}

uint64_t one-time initialization function for rssiBucket_low()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("low", 3uLL, 1);
  result = v1._countAndFlagsBits;
  rssiBucket_low = v1;
  return result;
}

Swift::String *rssiBucket_low.unsafeMutableAddressor()
{
  if (one-time initialization token for rssiBucket_low != -1)
  {
    swift_once();
  }

  return &rssiBucket_low;
}

uint64_t one-time initialization function for rssiBucket_medium()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("medium", 6uLL, 1);
  result = v1._countAndFlagsBits;
  rssiBucket_medium = v1;
  return result;
}

Swift::String *rssiBucket_medium.unsafeMutableAddressor()
{
  if (one-time initialization token for rssiBucket_medium != -1)
  {
    swift_once();
  }

  return &rssiBucket_medium;
}

uint64_t one-time initialization function for rssiBucket_high()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("high", 4uLL, 1);
  result = v1._countAndFlagsBits;
  rssiBucket_high = v1;
  return result;
}

Swift::String *rssiBucket_high.unsafeMutableAddressor()
{
  if (one-time initialization token for rssiBucket_high != -1)
  {
    swift_once();
  }

  return &rssiBucket_high;
}

uint64_t one-time initialization function for kMediaML_trainingRowCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("trainingRowCount", 0x10uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_trainingRowCount = v1;
  return result;
}

Swift::String *kMediaML_trainingRowCount.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_trainingRowCount != -1)
  {
    swift_once();
  }

  return &kMediaML_trainingRowCount;
}

uint64_t one-time initialization function for kMediaML_validationRowCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("validationRowCount", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_validationRowCount = v1;
  return result;
}

Swift::String *kMediaML_validationRowCount.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_validationRowCount != -1)
  {
    swift_once();
  }

  return &kMediaML_validationRowCount;
}

uint64_t one-time initialization function for kMediaML_ssidCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ssidCount", 9uLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_ssidCount = v1;
  return result;
}

Swift::String *kMediaML_ssidCount.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_ssidCount != -1)
  {
    swift_once();
  }

  return &kMediaML_ssidCount;
}

uint64_t one-time initialization function for kMediaML_appNameCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appNameCount", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_appNameCount = v1;
  return result;
}

Swift::String *kMediaML_appNameCount.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_appNameCount != -1)
  {
    swift_once();
  }

  return &kMediaML_appNameCount;
}

uint64_t one-time initialization function for kMediaML_sessionIDCount()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sessionIDCount", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_sessionIDCount = v1;
  return result;
}

Swift::String *kMediaML_sessionIDCount.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_sessionIDCount != -1)
  {
    swift_once();
  }

  return &kMediaML_sessionIDCount;
}

uint64_t one-time initialization function for kMediaML_trainingMAPE()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("trainingMAPE", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_trainingMAPE = v1;
  return result;
}

Swift::String *kMediaML_trainingMAPE.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_trainingMAPE != -1)
  {
    swift_once();
  }

  return &kMediaML_trainingMAPE;
}

uint64_t one-time initialization function for kMediaML_validationMAPE()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("validationMAPE", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  kMediaML_validationMAPE = v1;
  return result;
}

Swift::String *kMediaML_validationMAPE.unsafeMutableAddressor()
{
  if (one-time initialization token for kMediaML_validationMAPE != -1)
  {
    swift_once();
  }

  return &kMediaML_validationMAPE;
}

uint64_t one-time initialization function for mediaMLBaseDirectory()
{
  v1 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v1, mediaMLBaseDirectory);
  __swift_project_value_buffer(v1, mediaMLBaseDirectory);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("/private/var/mobile/Library/MediaML/", 0x24uLL, 1);
  URL.init(fileURLWithPath:)();
}

uint64_t mediaMLBaseDirectory.unsafeMutableAddressor()
{
  if (one-time initialization token for mediaMLBaseDirectory != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  return __swift_project_value_buffer(v0, mediaMLBaseDirectory);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t one-time initialization function for mediaMLModelDirectory()
{
  v1 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v1, mediaMLModelDirectory);
  __swift_project_value_buffer(v1, mediaMLModelDirectory);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("/private/var/mobile/Library/MediaML/model/", 0x2AuLL, 1);
  URL.init(fileURLWithPath:)();
}

uint64_t mediaMLModelDirectory.unsafeMutableAddressor()
{
  if (one-time initialization token for mediaMLModelDirectory != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  return __swift_project_value_buffer(v0, mediaMLModelDirectory);
}

uint64_t one-time initialization function for mediaMLDataDirectory()
{
  v1 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v1, mediaMLDataDirectory);
  __swift_project_value_buffer(v1, mediaMLDataDirectory);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("/private/var/mobile/Library/MediaML/data/", 0x29uLL, 1);
  URL.init(fileURLWithPath:)();
}

uint64_t mediaMLDataDirectory.unsafeMutableAddressor()
{
  if (one-time initialization token for mediaMLDataDirectory != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  return __swift_project_value_buffer(v0, mediaMLDataDirectory);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t one-time initialization function for logger()
{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, logger);
  __swift_project_value_buffer(v1, logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaML", 0x11uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DataValidation", 0xEuLL, 1);
  return Logger.init(subsystem:category:)();
}

{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static SQLiteDB.logger);
  __swift_project_value_buffer(v1, static SQLiteDB.logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaML", 0x11uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sql", 3uLL, 1);
  return Logger.init(subsystem:category:)();
}

{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static MediaMLWorker.logger);
  __swift_project_value_buffer(v1, static MediaMLWorker.logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaMLPluginApp.MediaMLExtension", 0x2BuLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Extension", 9uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, logger);
}

Swift::Bool __swiftcall checkValidInterfaceType(data:)(Swift::OpaquePointer data)
{
  rawValue = data._rawValue;
  v12 = 0;
  v8 = *kMediaML_interfaceType.unsafeMutableAddressor();

  v10 = v8;
  Dictionary.subscript.getter();
  outlined destroy of String(&v10);
  if (v11[3])
  {
    if (swift_dynamicCast())
    {
      v6 = v9;
      v7 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }

    v4 = v6;
    v5 = v7;
  }

  else
  {
    outlined destroy of Any?(v11);
    v4 = 0;
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  if (v4 != *kMediaML_InterfaceType_WiFi.unsafeMutableAddressor() && v4 != *kMediaML_InterfaceType_Cellular.unsafeMutableAddressor())
  {
    return 0;
  }

  v12 = 1;
  return 1;
}

void *outlined destroy of Any?(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

Swift::Bool __swiftcall checkValidThroughputTrue(data:)(Swift::OpaquePointer data)
{
  rawValue = data._rawValue;
  v11 = 0;
  v7 = *kMediaML_throughputTrue.unsafeMutableAddressor();

  v9 = v7;
  Dictionary.subscript.getter();
  outlined destroy of String(&v9);
  if (v10[3])
  {
    if (swift_dynamicCast())
    {
      v5 = v8;
      v6 = 0;
    }

    else
    {
      v5 = 0.0;
      v6 = 1;
    }

    v3 = v5;
    v4 = v6;
  }

  else
  {
    outlined destroy of Any?(v10);
    v3 = 0.0;
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  if (v3 <= 0.0)
  {
    return 0;
  }

  v11 = 1;
  return 1;
}

Swift::Bool __swiftcall validateAppName(text:)(Swift::String text)
{
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v13 = 0;
  v21 = text;
  type metadata accessor for NSRegularExpression();
  pattern = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("^[A-Za-z0-9./]{1,155}$", 0x16uLL, 1);
  type metadata accessor for NSRegularExpressionOptions(0);
  _allocateUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  NSRegularExpression.__allocating_init(pattern:options:)(v1, pattern, v20);
  v9 = v2;
  if (v3)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v19 = v2;
    v17 = 0;
    v18 = String.count.getter();

    v6 = String._bridgeToObjectiveC()();

    type metadata accessor for NSMatchingOptions(0);
    _allocateUninitializedArray<A>(_:)();
    lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
    SetAlgebra<>.init(arrayLiteral:)();
    v14 = 0;
    v15 = v18;
    v7 = [v9 matchesInString:v6 options:v16 range:{0, v18}];

    type metadata accessor for NSTextCheckingResult();
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20NSTextCheckingResultCGMd, &_sSaySo20NSTextCheckingResultCGMR);
    lazy protocol witness table accessor for type [NSTextCheckingResult] and conformance [A]();
    Collection.first.getter();
    v10 = v11;
    v5 = v11 != 0;
    outlined destroy of NSTextCheckingResult?(&v10);

    return v5;
  }

  return result;
}

unint64_t type metadata accessor for NSRegularExpression()
{
  v2 = lazy cache variable for type metadata for NSRegularExpression;
  if (!lazy cache variable for type metadata for NSRegularExpression)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSRegularExpression);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NSRegularExpressionOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for NSRegularExpressionOptions;
  if (!lazy cache variable for type metadata for NSRegularExpressionOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSRegularExpressionOptions);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions()
{
  v2 = lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions;
  if (!lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions)
  {
    type metadata accessor for NSRegularExpressionOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions;
  if (!lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions)
  {
    type metadata accessor for NSRegularExpressionOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions;
  if (!lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions)
  {
    type metadata accessor for NSRegularExpressionOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions;
  if (!lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions)
  {
    type metadata accessor for NSRegularExpressionOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions;
  if (!lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions)
  {
    type metadata accessor for NSRegularExpressionOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions);
    return WitnessTable;
  }

  return v2;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSRegularExpression.__allocating_init(pattern:options:)(NSRegularExpression *__return_ptr retstr, Swift::String pattern, NSRegularExpressionOptions options)
{
  countAndFlagsBits = pattern._countAndFlagsBits;
  object = pattern._object;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  @nonobjc NSRegularExpression.init(pattern:options:)(countAndFlagsBits, object, options);
}

unint64_t type metadata accessor for NSMatchingOptions(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for NSMatchingOptions;
  if (!lazy cache variable for type metadata for NSMatchingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSMatchingOptions);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions()
{
  v2 = lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions;
  if (!lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions)
  {
    type metadata accessor for NSMatchingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions;
  if (!lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions)
  {
    type metadata accessor for NSMatchingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions;
  if (!lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions)
  {
    type metadata accessor for NSMatchingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions;
  if (!lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions)
  {
    type metadata accessor for NSMatchingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions;
  if (!lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions)
  {
    type metadata accessor for NSMatchingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSMatchingOptions and conformance NSMatchingOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for NSTextCheckingResult()
{
  v2 = lazy cache variable for type metadata for NSTextCheckingResult;
  if (!lazy cache variable for type metadata for NSTextCheckingResult)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSTextCheckingResult);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type [NSTextCheckingResult] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [NSTextCheckingResult] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NSTextCheckingResult] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo20NSTextCheckingResultCGMd, &_sSaySo20NSTextCheckingResultCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [NSTextCheckingResult] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

Swift::Bool __swiftcall validateSessionID(text:)(Swift::String text)
{
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v13 = 0;
  v21 = text;
  type metadata accessor for NSRegularExpression();
  pattern = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("^[A-Z0-9]{8}-[A-Z0-9]{4}-[A-Z0-9]{4}-[A-Z0-9]{4}-[A-Z0-9]{12}$", 0x3EuLL, 1);
  type metadata accessor for NSRegularExpressionOptions(0);
  _allocateUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  NSRegularExpression.__allocating_init(pattern:options:)(v1, pattern, v20);
  v9 = v2;
  if (v3)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v19 = v2;
    v17 = 0;
    v18 = String.count.getter();

    v6 = String._bridgeToObjectiveC()();

    type metadata accessor for NSMatchingOptions(0);
    _allocateUninitializedArray<A>(_:)();
    lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
    SetAlgebra<>.init(arrayLiteral:)();
    v14 = 0;
    v15 = v18;
    v7 = [v9 matchesInString:v6 options:v16 range:{0, v18}];

    type metadata accessor for NSTextCheckingResult();
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20NSTextCheckingResultCGMd, &_sSaySo20NSTextCheckingResultCGMR);
    lazy protocol witness table accessor for type [NSTextCheckingResult] and conformance [A]();
    Collection.first.getter();
    v10 = v11;
    v5 = v11 != 0;
    outlined destroy of NSTextCheckingResult?(&v10);

    return v5;
  }

  return result;
}

Swift::Bool __swiftcall validateSSID(text:)(Swift::String text)
{
  object = text._object;
  countAndFlagsBits = text._countAndFlagsBits;
  v35 = 0;
  v30 = 0;
  v37 = text;
  v36 = 0;
  v32 = String.count.getter();
  v33 = *maxSSIDLength.unsafeMutableAddressor();

  if (v33 < v32)
  {
    v28 = 1;
  }

  else
  {
    v27 = String.count.getter();
    v28 = v27 < *minSSIDLength.unsafeMutableAddressor();
  }

  v26 = v28;

  if (v28)
  {
    v24 = 0;
    v25 = v30;
  }

  else
  {
    v1 = v30;
    v17 = &type metadata for String;
    v16 = _allocateUninitializedArray<A>(_:)();
    v15 = v2;
    v13 = 6;
    v14 = 1;
    *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("select", 6uLL, 1);
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("delete", 6uLL, 1);
    v4 = v14;
    v15[1] = v3;
    v15[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("drop table", 0xAuLL, v4);
    _finalizeUninitializedArray<A>(_:)();
    v18 = v5;
    v35 = v5;
    v34 = v5;

    v19 = &v10;
    __chkstk_darwin(&v10);
    v20 = v9;
    v9[2] = countAndFlagsBits;
    v9[3] = v6;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v7 = Sequence.contains(where:)();
    v22 = v1;
    v23 = v7;
    v11 = v7;

    v12 = v11 ^ 1;
    v36 = (v11 ^ 1) & 1;

    v24 = v12;
    v25 = v22;
  }

  return v24 & 1;
}

uint64_t closure #1 in validateSSID(text:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  v4 = a1[1];
  v9 = *a1;
  v10 = v4;
  v7 = a2;
  v8 = a3;
  v6 = String.lowercased()();
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  v5 = BidirectionalCollection<>.starts<A>(with:)();
  outlined destroy of String(&v6);
  return v5 & 1;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

Swift::Bool __swiftcall checkValidTextInputs(data:)(Swift::OpaquePointer data)
{
  rawValue = data._rawValue;
  v169 = partial apply for implicit closure #1 in checkValidTextInputs(data:);
  v170 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v171 = partial apply for closure #1 in OSLogArguments.append(_:);
  v172 = closure #1 in OSLogArguments.append(_:)partial apply;
  v173 = partial apply for closure #1 in OSLogArguments.append(_:);
  v174 = partial apply for implicit closure #2 in checkValidTextInputs(data:);
  v175 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v176 = closure #1 in OSLogArguments.append(_:)partial apply;
  v177 = closure #1 in OSLogArguments.append(_:)partial apply;
  v178 = closure #1 in OSLogArguments.append(_:)partial apply;
  v179 = partial apply for implicit closure #3 in checkValidTextInputs(data:);
  v180 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v181 = closure #1 in OSLogArguments.append(_:)partial apply;
  v182 = closure #1 in OSLogArguments.append(_:)partial apply;
  v183 = closure #1 in OSLogArguments.append(_:)partial apply;
  v239 = 0;
  v238 = 0;
  v234 = 0;
  v235 = 0;
  v184 = 0;
  v225 = 0;
  v226 = 0;
  v211 = 0;
  v212 = 0;
  v185 = type metadata accessor for Logger();
  v186 = *(v185 - 8);
  v187 = v185 - 8;
  v188 = (*(v186 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(rawValue);
  v189 = &v59 - v188;
  v190 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v191 = &v59 - v190;
  v192 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v193 = &v59 - v192;
  v239 = v5;
  v238 = 0;
  v194 = *kMediaML_appName.unsafeMutableAddressor();

  v196 = &v236;
  v236 = v194;
  Dictionary.subscript.getter();
  outlined destroy of String(v196);
  if (v237[3])
  {
    if (swift_dynamicCast())
    {
      v167 = v197;
      v168 = v198;
    }

    else
    {
      v167 = 0;
      v168 = 0;
    }

    v165 = v167;
    v166 = v168;
  }

  else
  {
    outlined destroy of Any?(v237);
    v165 = 0;
    v166 = 0;
  }

  v163 = v166;
  v164 = v165;
  if (!v166)
  {
    return 0;
  }

  v161 = v164;
  v162 = v163;
  v6._countAndFlagsBits = v164;
  v6._object = v163;
  v159 = v163;
  v160 = v164;
  v234 = v164;
  v235 = v163;
  if (validateAppName(text:)(v6))
  {
    v157 = *kMediaML_sessionID.unsafeMutableAddressor();

    v158 = &v227;
    v227 = v157;
    Dictionary.subscript.getter();
    outlined destroy of String(v158);
    if (v228[3])
    {
      if (swift_dynamicCast())
      {
        v155 = v199;
        v156 = v200;
      }

      else
      {
        v155 = 0;
        v156 = 0;
      }

      v153 = v155;
      v154 = v156;
    }

    else
    {
      outlined destroy of Any?(v228);
      v153 = 0;
      v154 = 0;
    }

    v151 = v154;
    v152 = v153;
    if (!v154)
    {

      return 0;
    }

    v149 = v152;
    v150 = v151;
    v7._countAndFlagsBits = v152;
    v7._object = v151;
    v147 = v151;
    v148 = v152;
    v225 = v152;
    v226 = v151;
    if (validateSessionID(text:)(v7))
    {
      v145 = *kMediaML_interfaceType.unsafeMutableAddressor();

      v146 = &v218;
      v218 = v145;
      Dictionary.subscript.getter();
      outlined destroy of String(v146);
      if (v219[3])
      {
        if (swift_dynamicCast())
        {
          v143 = v201;
          v144 = 0;
        }

        else
        {
          v143 = 0;
          v144 = 1;
        }

        v141 = v143;
        v142 = v144;
      }

      else
      {
        outlined destroy of Any?(v219);
        v141 = 0;
        v142 = 1;
      }

      v140 = v142;
      v139 = v141;
      v8 = *kMediaML_InterfaceType_WiFi.unsafeMutableAddressor();
      v214[4] = v139;
      v215 = v140 & 1;
      v216 = v8;
      v217 = 0;
      if (v140)
      {
        v138 = 0;
      }

      else
      {
        v202 = v139;
        v203 = v140 & 1;
        v138 = v139 == v216;
      }

      if (!v138)
      {
        goto LABEL_41;
      }

      v136 = *kMediaML_ssid.unsafeMutableAddressor();

      v137 = &v213;
      v213 = v136;
      Dictionary.subscript.getter();
      outlined destroy of String(v137);
      if (v214[3])
      {
        if (swift_dynamicCast())
        {
          v134 = v204;
          v135 = v205;
        }

        else
        {
          v134 = 0;
          v135 = 0;
        }

        v132 = v134;
        v133 = v135;
      }

      else
      {
        outlined destroy of Any?(v214);
        v132 = 0;
        v133 = 0;
      }

      v130 = v133;
      v131 = v132;
      if (v133)
      {
        v128 = v131;
        v129 = v130;
        v9._countAndFlagsBits = v131;
        v9._object = v130;
        v126 = v130;
        v127 = v131;
        v211 = v131;
        v212 = v130;
        if (validateSSID(text:)(v9))
        {

LABEL_41:
          v238 = 1;

          return 1;
        }

        v10 = v193;
        v11 = logger.unsafeMutableAddressor();
        (*(v186 + 16))(v10, v11, v185);

        v114 = 32;
        v115 = 7;
        v12 = swift_allocObject();
        v13 = v126;
        v116 = v12;
        *(v12 + 16) = v127;
        *(v12 + 24) = v13;
        v124 = Logger.logObject.getter();
        v125 = static os_log_type_t.error.getter();
        v113 = 17;
        v118 = swift_allocObject();
        *(v118 + 16) = 32;
        v119 = swift_allocObject();
        *(v119 + 16) = 8;
        v14 = swift_allocObject();
        v15 = v116;
        v117 = v14;
        *(v14 + 16) = v179;
        *(v14 + 24) = v15;
        v16 = swift_allocObject();
        v17 = v117;
        v121 = v16;
        *(v16 + 16) = v180;
        *(v16 + 24) = v17;
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v120 = _allocateUninitializedArray<A>(_:)();
        v122 = v18;

        v19 = v118;
        v20 = v122;
        *v122 = v181;
        v20[1] = v19;

        v21 = v119;
        v22 = v122;
        v122[2] = v182;
        v22[3] = v21;

        v23 = v121;
        v24 = v122;
        v122[4] = v183;
        v24[5] = v23;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v124, v125))
        {
          v25 = v184;
          v106 = static UnsafeMutablePointer.allocate(capacity:)();
          v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v107 = createStorage<A>(capacity:type:)(0, v105, v105);
          v108 = createStorage<A>(capacity:type:)(1, &type metadata for Any + 8, &type metadata for Any + 8);
          v109 = &v210;
          v210 = v106;
          v110 = &v209;
          v209 = v107;
          v111 = &v208;
          v208 = v108;
          serialize(_:at:)(2, &v210);
          serialize(_:at:)(1, v109);
          v206 = v181;
          v207 = v118;
          closure #1 in osLogInternal(_:log:type:)(&v206, v109, v110, v111);
          v112 = v25;
          if (v25)
          {

            __break(1u);
          }

          else
          {
            v206 = v182;
            v207 = v119;
            closure #1 in osLogInternal(_:log:type:)(&v206, &v210, &v209, &v208);
            v104 = 0;
            v206 = v183;
            v207 = v121;
            closure #1 in osLogInternal(_:log:type:)(&v206, &v210, &v209, &v208);
            _os_log_impl(&_mh_execute_header, v124, v125, "ssid in data directory failed validation: %s", v106, 0xCu);
            destroyStorage<A>(_:count:)(v107, 0);
            destroyStorage<A>(_:count:)(v108, 1);
            UnsafeMutablePointer.deallocate()();
          }
        }

        else
        {
        }

        (*(v186 + 8))(v193, v185);

        return 0;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      v26 = v191;
      v27 = logger.unsafeMutableAddressor();
      (*(v186 + 16))(v26, v27, v185);

      v91 = 32;
      v92 = 7;
      v28 = swift_allocObject();
      v29 = v147;
      v93 = v28;
      *(v28 + 16) = v148;
      *(v28 + 24) = v29;
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.error.getter();
      v90 = 17;
      v95 = swift_allocObject();
      *(v95 + 16) = 32;
      v96 = swift_allocObject();
      *(v96 + 16) = 8;
      v30 = swift_allocObject();
      v31 = v93;
      v94 = v30;
      *(v30 + 16) = v174;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v94;
      v98 = v32;
      *(v32 + 16) = v175;
      *(v32 + 24) = v33;
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v97 = _allocateUninitializedArray<A>(_:)();
      v99 = v34;

      v35 = v95;
      v36 = v99;
      *v99 = v176;
      v36[1] = v35;

      v37 = v96;
      v38 = v99;
      v99[2] = v177;
      v38[3] = v37;

      v39 = v98;
      v40 = v99;
      v99[4] = v178;
      v40[5] = v39;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v101, v102))
      {
        v41 = v184;
        v83 = static UnsafeMutablePointer.allocate(capacity:)();
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v84 = createStorage<A>(capacity:type:)(0, v82, v82);
        v85 = createStorage<A>(capacity:type:)(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v86 = &v224;
        v224 = v83;
        v87 = &v223;
        v223 = v84;
        v88 = &v222;
        v222 = v85;
        serialize(_:at:)(2, &v224);
        serialize(_:at:)(1, v86);
        v220 = v176;
        v221 = v95;
        closure #1 in osLogInternal(_:log:type:)(&v220, v86, v87, v88);
        v89 = v41;
        if (v41)
        {

          __break(1u);
        }

        else
        {
          v220 = v177;
          v221 = v96;
          closure #1 in osLogInternal(_:log:type:)(&v220, &v224, &v223, &v222);
          v81 = 0;
          v220 = v178;
          v221 = v98;
          closure #1 in osLogInternal(_:log:type:)(&v220, &v224, &v223, &v222);
          _os_log_impl(&_mh_execute_header, v101, v102, "sessionID in data directory failed validation: %s", v83, 0xCu);
          destroyStorage<A>(_:count:)(v84, 0);
          destroyStorage<A>(_:count:)(v85, 1);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      (*(v186 + 8))(v191, v185);

      return 0;
    }
  }

  else
  {
    v42 = v189;
    v43 = logger.unsafeMutableAddressor();
    (*(v186 + 16))(v42, v43, v185);

    v69 = 32;
    v70 = 7;
    v44 = swift_allocObject();
    v45 = v159;
    v71 = v44;
    *(v44 + 16) = v160;
    *(v44 + 24) = v45;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    v68 = 17;
    v73 = swift_allocObject();
    *(v73 + 16) = 32;
    v74 = swift_allocObject();
    *(v74 + 16) = 8;
    v46 = swift_allocObject();
    v47 = v71;
    v72 = v46;
    *(v46 + 16) = v169;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v72;
    v76 = v48;
    *(v48 + 16) = v170;
    *(v48 + 24) = v49;
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v75 = _allocateUninitializedArray<A>(_:)();
    v77 = v50;

    v51 = v73;
    v52 = v77;
    *v77 = v171;
    v52[1] = v51;

    v53 = v74;
    v54 = v77;
    v77[2] = v172;
    v54[3] = v53;

    v55 = v76;
    v56 = v77;
    v77[4] = v173;
    v56[5] = v55;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v79, v80))
    {
      v57 = v184;
      v61 = static UnsafeMutablePointer.allocate(capacity:)();
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v62 = createStorage<A>(capacity:type:)(0, v60, v60);
      v63 = createStorage<A>(capacity:type:)(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v64 = &v233;
      v233 = v61;
      v65 = &v232;
      v232 = v62;
      v66 = &v231;
      v231 = v63;
      serialize(_:at:)(2, &v233);
      serialize(_:at:)(1, v64);
      v229 = v171;
      v230 = v73;
      closure #1 in osLogInternal(_:log:type:)(&v229, v64, v65, v66);
      v67 = v57;
      if (v57)
      {

        __break(1u);
      }

      else
      {
        v229 = v172;
        v230 = v74;
        closure #1 in osLogInternal(_:log:type:)(&v229, &v233, &v232, &v231);
        v59 = 0;
        v229 = v173;
        v230 = v76;
        closure #1 in osLogInternal(_:log:type:)(&v229, &v233, &v232, &v231);
        _os_log_impl(&_mh_execute_header, v79, v80, "AppName in data directory failed validation: %s", v61, 0xCu);
        destroyStorage<A>(_:count:)(v62, 0);
        destroyStorage<A>(_:count:)(v63, 1);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v186 + 8))(v189, v185);

    return 0;
  }
}

Swift::Bool __swiftcall checkValidNumericInputRange(data:)(Swift::OpaquePointer data)
{
  rawValue = data._rawValue;
  v442 = partial apply for implicit closure #11 in checkValidNumericInputRange(data:);
  v443 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  v444 = closure #1 in OSLogArguments.append(_:)partial apply;
  v445 = closure #1 in OSLogArguments.append(_:)partial apply;
  v446 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v447 = partial apply for implicit closure #13 in checkValidNumericInputRange(data:);
  v448 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v449 = closure #1 in OSLogArguments.append(_:)partial apply;
  v450 = closure #1 in OSLogArguments.append(_:)partial apply;
  v451 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v452 = partial apply for implicit closure #15 in checkValidNumericInputRange(data:);
  v453 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v454 = closure #1 in OSLogArguments.append(_:)partial apply;
  v455 = closure #1 in OSLogArguments.append(_:)partial apply;
  v456 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v457 = partial apply for implicit closure #17 in checkValidNumericInputRange(data:);
  v458 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v459 = closure #1 in OSLogArguments.append(_:)partial apply;
  v460 = closure #1 in OSLogArguments.append(_:)partial apply;
  v461 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v462 = partial apply for implicit closure #19 in checkValidNumericInputRange(data:);
  v463 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v464 = closure #1 in OSLogArguments.append(_:)partial apply;
  v465 = closure #1 in OSLogArguments.append(_:)partial apply;
  v466 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v467 = partial apply for implicit closure #21 in checkValidNumericInputRange(data:);
  v468 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v469 = closure #1 in OSLogArguments.append(_:)partial apply;
  v470 = closure #1 in OSLogArguments.append(_:)partial apply;
  v471 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v472 = partial apply for implicit closure #23 in checkValidNumericInputRange(data:);
  v473 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:);
  v474 = closure #1 in OSLogArguments.append(_:)partial apply;
  v475 = closure #1 in OSLogArguments.append(_:)partial apply;
  v476 = partial apply for closure #1 in OSLogArguments.append(_:);
  v477 = partial apply for implicit closure #25 in checkValidNumericInputRange(data:);
  v478 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:align:privacy:)partial apply;
  v479 = closure #1 in OSLogArguments.append(_:)partial apply;
  v480 = closure #1 in OSLogArguments.append(_:)partial apply;
  v481 = closure #1 in OSLogArguments.append(_:)partial apply;
  v482 = partial apply for implicit closure #27 in checkValidNumericInputRange(data:);
  v483 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v484 = closure #1 in OSLogArguments.append(_:)partial apply;
  v485 = closure #1 in OSLogArguments.append(_:)partial apply;
  v486 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v613 = 0;
  v612 = 0;
  v607 = 0;
  v602 = 0;
  v597 = 0;
  v592 = 0;
  v587 = 0;
  v582 = 0;
  v577 = 0.0;
  v572 = 0.0;
  v567 = 0;
  v487 = 0;
  v488 = type metadata accessor for Logger();
  v489 = *(v488 - 8);
  v490 = v488 - 8;
  v491 = *(v489 + 64);
  v492 = (v491 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(rawValue);
  v493 = &v145 - v492;
  v494 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v495 = &v145 - v494;
  v496 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v497 = &v145 - v496;
  v498 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v499 = &v145 - v498;
  v500 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v7);
  v501 = &v145 - v500;
  v502 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v9);
  v503 = &v145 - v502;
  v504 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v11);
  v505 = &v145 - v504;
  v506 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = __chkstk_darwin(v13);
  v507 = &v145 - v506;
  v508 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = __chkstk_darwin(v15);
  v509 = &v145 - v508;
  v613 = v17;
  v612 = 0;
  v510 = *kMediaML_rssi.unsafeMutableAddressor();

  v512 = &v610;
  v610 = v510;
  Dictionary.subscript.getter();
  outlined destroy of String(v512);
  if (v611[3])
  {
    if (swift_dynamicCast())
    {
      v440 = v513;
      v441 = 0;
    }

    else
    {
      v440 = 0;
      v441 = 1;
    }

    v438 = v440;
    v439 = v441;
  }

  else
  {
    outlined destroy of Any?(v611);
    v438 = 0;
    v439 = 1;
  }

  v608 = v438;
  v609 = v439 & 1;
  if (v439)
  {
    v437 = 0;
  }

  else
  {
    v437 = v608;
  }

  v434 = v437;
  v607 = v437;
  v435 = *kMediaML_rsrp.unsafeMutableAddressor();

  v436 = &v605;
  v605 = v435;
  Dictionary.subscript.getter();
  outlined destroy of String(v436);
  if (v606[3])
  {
    if (swift_dynamicCast())
    {
      v432 = v514;
      v433 = 0;
    }

    else
    {
      v432 = 0;
      v433 = 1;
    }

    v430 = v432;
    v431 = v433;
  }

  else
  {
    outlined destroy of Any?(v606);
    v430 = 0;
    v431 = 1;
  }

  v603 = v430;
  v604 = v431 & 1;
  if (v431)
  {
    v429 = 0;
  }

  else
  {
    v429 = v603;
  }

  v426 = v429;
  v602 = v429;
  v427 = *kMediaML_rsrq.unsafeMutableAddressor();

  v428 = &v600;
  v600 = v427;
  Dictionary.subscript.getter();
  outlined destroy of String(v428);
  if (v601[3])
  {
    if (swift_dynamicCast())
    {
      v424 = v515;
      v425 = 0;
    }

    else
    {
      v424 = 0;
      v425 = 1;
    }

    v422 = v424;
    v423 = v425;
  }

  else
  {
    outlined destroy of Any?(v601);
    v422 = 0;
    v423 = 1;
  }

  v598 = v422;
  v599 = v423 & 1;
  if (v423)
  {
    v421 = 0;
  }

  else
  {
    v421 = v598;
  }

  v418 = v421;
  v597 = v421;
  v419 = *kMediaML_rscp.unsafeMutableAddressor();

  v420 = &v595;
  v595 = v419;
  Dictionary.subscript.getter();
  outlined destroy of String(v420);
  if (v596[3])
  {
    if (swift_dynamicCast())
    {
      v416 = v516;
      v417 = 0;
    }

    else
    {
      v416 = 0;
      v417 = 1;
    }

    v414 = v416;
    v415 = v417;
  }

  else
  {
    outlined destroy of Any?(v596);
    v414 = 0;
    v415 = 1;
  }

  v593 = v414;
  v594 = v415 & 1;
  if (v415)
  {
    v413 = 0;
  }

  else
  {
    v413 = v593;
  }

  v410 = v413;
  v592 = v413;
  v411 = *kMediaML_noise.unsafeMutableAddressor();

  v412 = &v590;
  v590 = v411;
  Dictionary.subscript.getter();
  outlined destroy of String(v412);
  if (v591[3])
  {
    if (swift_dynamicCast())
    {
      v408 = v517;
      v409 = 0;
    }

    else
    {
      v408 = 0;
      v409 = 1;
    }

    v406 = v408;
    v407 = v409;
  }

  else
  {
    outlined destroy of Any?(v591);
    v406 = 0;
    v407 = 1;
  }

  v588 = v406;
  v589 = v407 & 1;
  if (v407)
  {
    v405 = 0;
  }

  else
  {
    v405 = v588;
  }

  v402 = v405;
  v587 = v405;
  v403 = *kMediaML_bars.unsafeMutableAddressor();

  v404 = &v585;
  v585 = v403;
  Dictionary.subscript.getter();
  outlined destroy of String(v404);
  if (v586[3])
  {
    if (swift_dynamicCast())
    {
      v400 = v518;
      v401 = 0;
    }

    else
    {
      v400 = 0;
      v401 = 1;
    }

    v398 = v400;
    v399 = v401;
  }

  else
  {
    outlined destroy of Any?(v586);
    v398 = 0;
    v399 = 1;
  }

  v583 = v398;
  v584 = v399 & 1;
  if (v399)
  {
    v397 = 0;
  }

  else
  {
    v397 = v583;
  }

  v394 = v397;
  v582 = v397;
  v395 = *kMediaML_rxRate.unsafeMutableAddressor();

  v396 = &v580;
  v580 = v395;
  Dictionary.subscript.getter();
  outlined destroy of String(v396);
  if (v581[3])
  {
    if (swift_dynamicCast())
    {
      v392 = v519;
      v393 = 0;
    }

    else
    {
      v392 = 0.0;
      v393 = 1;
    }

    v390 = v392;
    v391 = v393;
  }

  else
  {
    outlined destroy of Any?(v581);
    v390 = 0.0;
    v391 = 1;
  }

  v578 = v390;
  v579 = v391 & 1;
  if (v391)
  {
    v389 = 0.0;
  }

  else
  {
    v389 = v578;
  }

  v386 = v389;
  v577 = v389;
  v387 = *kMediaML_txRate.unsafeMutableAddressor();

  v388 = &v575;
  v575 = v387;
  Dictionary.subscript.getter();
  outlined destroy of String(v388);
  if (v576[3])
  {
    if (swift_dynamicCast())
    {
      v384 = v520;
      v385 = 0;
    }

    else
    {
      v384 = 0.0;
      v385 = 1;
    }

    v382 = v384;
    v383 = v385;
  }

  else
  {
    outlined destroy of Any?(v576);
    v382 = 0.0;
    v383 = 1;
  }

  v573 = v382;
  v574 = v383 & 1;
  if (v383)
  {
    v381 = 0.0;
  }

  else
  {
    v381 = v573;
  }

  v378 = v381;
  v572 = v381;
  v379 = *kMediaML_throughputTrue.unsafeMutableAddressor();

  v380 = &v570;
  v570 = v379;
  Dictionary.subscript.getter();
  outlined destroy of String(v380);
  if (v571[3])
  {
    if (swift_dynamicCast())
    {
      v376 = v521;
      v377 = 0;
    }

    else
    {
      v376 = 0;
      v377 = 1;
    }

    v374 = v376;
    v375 = v377;
  }

  else
  {
    outlined destroy of Any?(v571);
    v374 = 0;
    v375 = 1;
  }

  v568 = v374;
  v569 = v375 & 1;
  if (v375)
  {
    v373 = 0;
  }

  else
  {
    v373 = v568;
  }

  v372 = v373;
  v567 = v373;
  if (v434 <= 0 && v434 >= *minSignalStrength.unsafeMutableAddressor())
  {
    if (v426 <= 0 && v426 >= *minSignalStrength.unsafeMutableAddressor())
    {
      if (v418 <= 0 && v418 >= *minSignalStrength.unsafeMutableAddressor())
      {
        if (v410 <= 0 && v410 >= *minSignalStrength.unsafeMutableAddressor())
        {
          if (v402 <= 0 && v402 >= *minNoise.unsafeMutableAddressor())
          {
            if ((v394 & 0x8000000000000000) == 0 && *maxBars.unsafeMutableAddressor() >= v394)
            {
              if (v386 >= 0.0 && v386 <= *maxRxRate.unsafeMutableAddressor())
              {
                if (v378 >= 0.0 && v378 <= *maxTxRate.unsafeMutableAddressor())
                {
                  if (v372 > 0 && *maxThroughput.unsafeMutableAddressor() >= v372)
                  {
                    v612 = 1;
                    return 1;
                  }

                  else
                  {
                    v18 = v509;
                    v19 = logger.unsafeMutableAddressor();
                    (*(v489 + 16))(v18, v19, v488);
                    v351 = 7;
                    v352 = swift_allocObject();
                    *(v352 + 16) = v372;
                    v360 = Logger.logObject.getter();
                    v361 = static os_log_type_t.error.getter();
                    v349 = 17;
                    v354 = swift_allocObject();
                    *(v354 + 16) = 0;
                    v355 = swift_allocObject();
                    *(v355 + 16) = 8;
                    v350 = 32;
                    v20 = swift_allocObject();
                    v21 = v352;
                    v353 = v20;
                    *(v20 + 16) = v482;
                    *(v20 + 24) = v21;
                    v22 = swift_allocObject();
                    v23 = v353;
                    v357 = v22;
                    *(v22 + 16) = v483;
                    *(v22 + 24) = v23;
                    v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
                    v356 = _allocateUninitializedArray<A>(_:)();
                    v358 = v24;

                    v25 = v354;
                    v26 = v358;
                    *v358 = v484;
                    v26[1] = v25;

                    v27 = v355;
                    v28 = v358;
                    v358[2] = v485;
                    v28[3] = v27;

                    v29 = v357;
                    v30 = v358;
                    v358[4] = v486;
                    v30[5] = v29;
                    _finalizeUninitializedArray<A>(_:)();

                    if (os_log_type_enabled(v360, v361))
                    {
                      v31 = v487;
                      v342 = static UnsafeMutablePointer.allocate(capacity:)();
                      v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                      v341 = 0;
                      v343 = createStorage<A>(capacity:type:)(0, v340, v340);
                      v344 = createStorage<A>(capacity:type:)(v341, &type metadata for Any + 8, &type metadata for Any + 8);
                      v345 = &v526;
                      v526 = v342;
                      v346 = &v525;
                      v525 = v343;
                      v347 = &v524;
                      v524 = v344;
                      serialize(_:at:)(0, &v526);
                      serialize(_:at:)(1, v345);
                      v522 = v484;
                      v523 = v354;
                      closure #1 in osLogInternal(_:log:type:)(&v522, v345, v346, v347);
                      v348 = v31;
                      if (v31)
                      {

                        __break(1u);
                      }

                      else
                      {
                        v522 = v485;
                        v523 = v355;
                        closure #1 in osLogInternal(_:log:type:)(&v522, &v526, &v525, &v524);
                        v339 = 0;
                        v522 = v486;
                        v523 = v357;
                        closure #1 in osLogInternal(_:log:type:)(&v522, &v526, &v525, &v524);
                        _os_log_impl(&_mh_execute_header, v360, v361, "throughput_true in data directory failed validation: %ld", v342, 0xCu);
                        v338 = 0;
                        destroyStorage<A>(_:count:)(v343, 0);
                        destroyStorage<A>(_:count:)(v344, v338);
                        UnsafeMutablePointer.deallocate()();
                      }
                    }

                    else
                    {
                    }

                    (*(v489 + 8))(v509, v488);
                    return 0;
                  }
                }

                else
                {
                  v32 = v507;
                  v33 = logger.unsafeMutableAddressor();
                  (*(v489 + 16))(v32, v33, v488);
                  v327 = 7;
                  v328 = swift_allocObject();
                  *(v328 + 16) = v378;
                  v336 = Logger.logObject.getter();
                  v337 = static os_log_type_t.error.getter();
                  v325 = 17;
                  v330 = swift_allocObject();
                  *(v330 + 16) = 0;
                  v331 = swift_allocObject();
                  *(v331 + 16) = 8;
                  v326 = 32;
                  v34 = swift_allocObject();
                  v35 = v328;
                  v329 = v34;
                  *(v34 + 16) = v477;
                  *(v34 + 24) = v35;
                  v36 = swift_allocObject();
                  v37 = v329;
                  v333 = v36;
                  *(v36 + 16) = v478;
                  *(v36 + 24) = v37;
                  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
                  v332 = _allocateUninitializedArray<A>(_:)();
                  v334 = v38;

                  v39 = v330;
                  v40 = v334;
                  *v334 = v479;
                  v40[1] = v39;

                  v41 = v331;
                  v42 = v334;
                  v334[2] = v480;
                  v42[3] = v41;

                  v43 = v333;
                  v44 = v334;
                  v334[4] = v481;
                  v44[5] = v43;
                  _finalizeUninitializedArray<A>(_:)();

                  if (os_log_type_enabled(v336, v337))
                  {
                    v45 = v487;
                    v318 = static UnsafeMutablePointer.allocate(capacity:)();
                    v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                    v317 = 0;
                    v319 = createStorage<A>(capacity:type:)(0, v316, v316);
                    v320 = createStorage<A>(capacity:type:)(v317, &type metadata for Any + 8, &type metadata for Any + 8);
                    v321 = &v531;
                    v531 = v318;
                    v322 = &v530;
                    v530 = v319;
                    v323 = &v529;
                    v529 = v320;
                    serialize(_:at:)(0, &v531);
                    serialize(_:at:)(1, v321);
                    v527 = v479;
                    v528 = v330;
                    closure #1 in osLogInternal(_:log:type:)(&v527, v321, v322, v323);
                    v324 = v45;
                    if (v45)
                    {

                      __break(1u);
                    }

                    else
                    {
                      v527 = v480;
                      v528 = v331;
                      closure #1 in osLogInternal(_:log:type:)(&v527, &v531, &v530, &v529);
                      v315 = 0;
                      v527 = v481;
                      v528 = v333;
                      closure #1 in osLogInternal(_:log:type:)(&v527, &v531, &v530, &v529);
                      _os_log_impl(&_mh_execute_header, v336, v337, "txRate in data directory failed validation: %f", v318, 0xCu);
                      v314 = 0;
                      destroyStorage<A>(_:count:)(v319, 0);
                      destroyStorage<A>(_:count:)(v320, v314);
                      UnsafeMutablePointer.deallocate()();
                    }
                  }

                  else
                  {
                  }

                  (*(v489 + 8))(v507, v488);
                  return 0;
                }
              }

              else
              {
                v46 = v505;
                v47 = logger.unsafeMutableAddressor();
                (*(v489 + 16))(v46, v47, v488);
                v303 = 7;
                v304 = swift_allocObject();
                *(v304 + 16) = v386;
                v312 = Logger.logObject.getter();
                v313 = static os_log_type_t.error.getter();
                v301 = 17;
                v306 = swift_allocObject();
                *(v306 + 16) = 0;
                v307 = swift_allocObject();
                *(v307 + 16) = 8;
                v302 = 32;
                v48 = swift_allocObject();
                v49 = v304;
                v305 = v48;
                *(v48 + 16) = v472;
                *(v48 + 24) = v49;
                v50 = swift_allocObject();
                v51 = v305;
                v309 = v50;
                *(v50 + 16) = v473;
                *(v50 + 24) = v51;
                v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
                v308 = _allocateUninitializedArray<A>(_:)();
                v310 = v52;

                v53 = v306;
                v54 = v310;
                *v310 = v474;
                v54[1] = v53;

                v55 = v307;
                v56 = v310;
                v310[2] = v475;
                v56[3] = v55;

                v57 = v309;
                v58 = v310;
                v310[4] = v476;
                v58[5] = v57;
                _finalizeUninitializedArray<A>(_:)();

                if (os_log_type_enabled(v312, v313))
                {
                  v59 = v487;
                  v294 = static UnsafeMutablePointer.allocate(capacity:)();
                  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  v293 = 0;
                  v295 = createStorage<A>(capacity:type:)(0, v292, v292);
                  v296 = createStorage<A>(capacity:type:)(v293, &type metadata for Any + 8, &type metadata for Any + 8);
                  v297 = &v536;
                  v536 = v294;
                  v298 = &v535;
                  v535 = v295;
                  v299 = &v534;
                  v534 = v296;
                  serialize(_:at:)(0, &v536);
                  serialize(_:at:)(1, v297);
                  v532 = v474;
                  v533 = v306;
                  closure #1 in osLogInternal(_:log:type:)(&v532, v297, v298, v299);
                  v300 = v59;
                  if (v59)
                  {

                    __break(1u);
                  }

                  else
                  {
                    v532 = v475;
                    v533 = v307;
                    closure #1 in osLogInternal(_:log:type:)(&v532, &v536, &v535, &v534);
                    v291 = 0;
                    v532 = v476;
                    v533 = v309;
                    closure #1 in osLogInternal(_:log:type:)(&v532, &v536, &v535, &v534);
                    _os_log_impl(&_mh_execute_header, v312, v313, "rxRate in data directory failed validation: %f", v294, 0xCu);
                    v290 = 0;
                    destroyStorage<A>(_:count:)(v295, 0);
                    destroyStorage<A>(_:count:)(v296, v290);
                    UnsafeMutablePointer.deallocate()();
                  }
                }

                else
                {
                }

                (*(v489 + 8))(v505, v488);
                return 0;
              }
            }

            else
            {
              v60 = v503;
              v61 = logger.unsafeMutableAddressor();
              (*(v489 + 16))(v60, v61, v488);
              v279 = 7;
              v280 = swift_allocObject();
              *(v280 + 16) = v394;
              v288 = Logger.logObject.getter();
              v289 = static os_log_type_t.error.getter();
              v277 = 17;
              v282 = swift_allocObject();
              *(v282 + 16) = 0;
              v283 = swift_allocObject();
              *(v283 + 16) = 8;
              v278 = 32;
              v62 = swift_allocObject();
              v63 = v280;
              v281 = v62;
              *(v62 + 16) = v467;
              *(v62 + 24) = v63;
              v64 = swift_allocObject();
              v65 = v281;
              v285 = v64;
              *(v64 + 16) = v468;
              *(v64 + 24) = v65;
              v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
              v284 = _allocateUninitializedArray<A>(_:)();
              v286 = v66;

              v67 = v282;
              v68 = v286;
              *v286 = v469;
              v68[1] = v67;

              v69 = v283;
              v70 = v286;
              v286[2] = v470;
              v70[3] = v69;

              v71 = v285;
              v72 = v286;
              v286[4] = v471;
              v72[5] = v71;
              _finalizeUninitializedArray<A>(_:)();

              if (os_log_type_enabled(v288, v289))
              {
                v73 = v487;
                v270 = static UnsafeMutablePointer.allocate(capacity:)();
                v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v269 = 0;
                v271 = createStorage<A>(capacity:type:)(0, v268, v268);
                v272 = createStorage<A>(capacity:type:)(v269, &type metadata for Any + 8, &type metadata for Any + 8);
                v273 = &v541;
                v541 = v270;
                v274 = &v540;
                v540 = v271;
                v275 = &v539;
                v539 = v272;
                serialize(_:at:)(0, &v541);
                serialize(_:at:)(1, v273);
                v537 = v469;
                v538 = v282;
                closure #1 in osLogInternal(_:log:type:)(&v537, v273, v274, v275);
                v276 = v73;
                if (v73)
                {

                  __break(1u);
                }

                else
                {
                  v537 = v470;
                  v538 = v283;
                  closure #1 in osLogInternal(_:log:type:)(&v537, &v541, &v540, &v539);
                  v267 = 0;
                  v537 = v471;
                  v538 = v285;
                  closure #1 in osLogInternal(_:log:type:)(&v537, &v541, &v540, &v539);
                  _os_log_impl(&_mh_execute_header, v288, v289, "bars in data directory failed validation: %ld", v270, 0xCu);
                  v266 = 0;
                  destroyStorage<A>(_:count:)(v271, 0);
                  destroyStorage<A>(_:count:)(v272, v266);
                  UnsafeMutablePointer.deallocate()();
                }
              }

              else
              {
              }

              (*(v489 + 8))(v503, v488);
              return 0;
            }
          }

          else
          {
            v74 = v501;
            v75 = logger.unsafeMutableAddressor();
            (*(v489 + 16))(v74, v75, v488);
            v255 = 7;
            v256 = swift_allocObject();
            *(v256 + 16) = v402;
            v264 = Logger.logObject.getter();
            v265 = static os_log_type_t.error.getter();
            v253 = 17;
            v258 = swift_allocObject();
            *(v258 + 16) = 0;
            v259 = swift_allocObject();
            *(v259 + 16) = 8;
            v254 = 32;
            v76 = swift_allocObject();
            v77 = v256;
            v257 = v76;
            *(v76 + 16) = v462;
            *(v76 + 24) = v77;
            v78 = swift_allocObject();
            v79 = v257;
            v261 = v78;
            *(v78 + 16) = v463;
            *(v78 + 24) = v79;
            v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
            v260 = _allocateUninitializedArray<A>(_:)();
            v262 = v80;

            v81 = v258;
            v82 = v262;
            *v262 = v464;
            v82[1] = v81;

            v83 = v259;
            v84 = v262;
            v262[2] = v465;
            v84[3] = v83;

            v85 = v261;
            v86 = v262;
            v262[4] = v466;
            v86[5] = v85;
            _finalizeUninitializedArray<A>(_:)();

            if (os_log_type_enabled(v264, v265))
            {
              v87 = v487;
              v246 = static UnsafeMutablePointer.allocate(capacity:)();
              v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v245 = 0;
              v247 = createStorage<A>(capacity:type:)(0, v244, v244);
              v248 = createStorage<A>(capacity:type:)(v245, &type metadata for Any + 8, &type metadata for Any + 8);
              v249 = &v546;
              v546 = v246;
              v250 = &v545;
              v545 = v247;
              v251 = &v544;
              v544 = v248;
              serialize(_:at:)(0, &v546);
              serialize(_:at:)(1, v249);
              v542 = v464;
              v543 = v258;
              closure #1 in osLogInternal(_:log:type:)(&v542, v249, v250, v251);
              v252 = v87;
              if (v87)
              {

                __break(1u);
              }

              else
              {
                v542 = v465;
                v543 = v259;
                closure #1 in osLogInternal(_:log:type:)(&v542, &v546, &v545, &v544);
                v243 = 0;
                v542 = v466;
                v543 = v261;
                closure #1 in osLogInternal(_:log:type:)(&v542, &v546, &v545, &v544);
                _os_log_impl(&_mh_execute_header, v264, v265, "noise in data directory failed validation: %ld", v246, 0xCu);
                v242 = 0;
                destroyStorage<A>(_:count:)(v247, 0);
                destroyStorage<A>(_:count:)(v248, v242);
                UnsafeMutablePointer.deallocate()();
              }
            }

            else
            {
            }

            (*(v489 + 8))(v501, v488);
            return 0;
          }
        }

        else
        {
          v88 = v499;
          v89 = logger.unsafeMutableAddressor();
          (*(v489 + 16))(v88, v89, v488);
          v231 = 7;
          v232 = swift_allocObject();
          *(v232 + 16) = v410;
          v240 = Logger.logObject.getter();
          v241 = static os_log_type_t.error.getter();
          v229 = 17;
          v234 = swift_allocObject();
          *(v234 + 16) = 0;
          v235 = swift_allocObject();
          *(v235 + 16) = 8;
          v230 = 32;
          v90 = swift_allocObject();
          v91 = v232;
          v233 = v90;
          *(v90 + 16) = v457;
          *(v90 + 24) = v91;
          v92 = swift_allocObject();
          v93 = v233;
          v237 = v92;
          *(v92 + 16) = v458;
          *(v92 + 24) = v93;
          v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v236 = _allocateUninitializedArray<A>(_:)();
          v238 = v94;

          v95 = v234;
          v96 = v238;
          *v238 = v459;
          v96[1] = v95;

          v97 = v235;
          v98 = v238;
          v238[2] = v460;
          v98[3] = v97;

          v99 = v237;
          v100 = v238;
          v238[4] = v461;
          v100[5] = v99;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v240, v241))
          {
            v101 = v487;
            v222 = static UnsafeMutablePointer.allocate(capacity:)();
            v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v221 = 0;
            v223 = createStorage<A>(capacity:type:)(0, v220, v220);
            v224 = createStorage<A>(capacity:type:)(v221, &type metadata for Any + 8, &type metadata for Any + 8);
            v225 = &v551;
            v551 = v222;
            v226 = &v550;
            v550 = v223;
            v227 = &v549;
            v549 = v224;
            serialize(_:at:)(0, &v551);
            serialize(_:at:)(1, v225);
            v547 = v459;
            v548 = v234;
            closure #1 in osLogInternal(_:log:type:)(&v547, v225, v226, v227);
            v228 = v101;
            if (v101)
            {

              __break(1u);
            }

            else
            {
              v547 = v460;
              v548 = v235;
              closure #1 in osLogInternal(_:log:type:)(&v547, &v551, &v550, &v549);
              v219 = 0;
              v547 = v461;
              v548 = v237;
              closure #1 in osLogInternal(_:log:type:)(&v547, &v551, &v550, &v549);
              _os_log_impl(&_mh_execute_header, v240, v241, "rscp in data directory failed validation: %ld", v222, 0xCu);
              v218 = 0;
              destroyStorage<A>(_:count:)(v223, 0);
              destroyStorage<A>(_:count:)(v224, v218);
              UnsafeMutablePointer.deallocate()();
            }
          }

          else
          {
          }

          (*(v489 + 8))(v499, v488);
          return 0;
        }
      }

      else
      {
        v102 = v497;
        v103 = logger.unsafeMutableAddressor();
        (*(v489 + 16))(v102, v103, v488);
        v207 = 7;
        v208 = swift_allocObject();
        *(v208 + 16) = v418;
        v216 = Logger.logObject.getter();
        v217 = static os_log_type_t.error.getter();
        v205 = 17;
        v210 = swift_allocObject();
        *(v210 + 16) = 0;
        v211 = swift_allocObject();
        *(v211 + 16) = 8;
        v206 = 32;
        v104 = swift_allocObject();
        v105 = v208;
        v209 = v104;
        *(v104 + 16) = v452;
        *(v104 + 24) = v105;
        v106 = swift_allocObject();
        v107 = v209;
        v213 = v106;
        *(v106 + 16) = v453;
        *(v106 + 24) = v107;
        v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v212 = _allocateUninitializedArray<A>(_:)();
        v214 = v108;

        v109 = v210;
        v110 = v214;
        *v214 = v454;
        v110[1] = v109;

        v111 = v211;
        v112 = v214;
        v214[2] = v455;
        v112[3] = v111;

        v113 = v213;
        v114 = v214;
        v214[4] = v456;
        v114[5] = v113;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v216, v217))
        {
          v115 = v487;
          v198 = static UnsafeMutablePointer.allocate(capacity:)();
          v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v197 = 0;
          v199 = createStorage<A>(capacity:type:)(0, v196, v196);
          v200 = createStorage<A>(capacity:type:)(v197, &type metadata for Any + 8, &type metadata for Any + 8);
          v201 = &v556;
          v556 = v198;
          v202 = &v555;
          v555 = v199;
          v203 = &v554;
          v554 = v200;
          serialize(_:at:)(0, &v556);
          serialize(_:at:)(1, v201);
          v552 = v454;
          v553 = v210;
          closure #1 in osLogInternal(_:log:type:)(&v552, v201, v202, v203);
          v204 = v115;
          if (v115)
          {

            __break(1u);
          }

          else
          {
            v552 = v455;
            v553 = v211;
            closure #1 in osLogInternal(_:log:type:)(&v552, &v556, &v555, &v554);
            v195 = 0;
            v552 = v456;
            v553 = v213;
            closure #1 in osLogInternal(_:log:type:)(&v552, &v556, &v555, &v554);
            _os_log_impl(&_mh_execute_header, v216, v217, "rsrq in data directory failed validation: %ld", v198, 0xCu);
            v194 = 0;
            destroyStorage<A>(_:count:)(v199, 0);
            destroyStorage<A>(_:count:)(v200, v194);
            UnsafeMutablePointer.deallocate()();
          }
        }

        else
        {
        }

        (*(v489 + 8))(v497, v488);
        return 0;
      }
    }

    else
    {
      v116 = v495;
      v117 = logger.unsafeMutableAddressor();
      (*(v489 + 16))(v116, v117, v488);
      v183 = 7;
      v184 = swift_allocObject();
      *(v184 + 16) = v426;
      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.error.getter();
      v181 = 17;
      v186 = swift_allocObject();
      *(v186 + 16) = 0;
      v187 = swift_allocObject();
      *(v187 + 16) = 8;
      v182 = 32;
      v118 = swift_allocObject();
      v119 = v184;
      v185 = v118;
      *(v118 + 16) = v447;
      *(v118 + 24) = v119;
      v120 = swift_allocObject();
      v121 = v185;
      v189 = v120;
      *(v120 + 16) = v448;
      *(v120 + 24) = v121;
      v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v188 = _allocateUninitializedArray<A>(_:)();
      v190 = v122;

      v123 = v186;
      v124 = v190;
      *v190 = v449;
      v124[1] = v123;

      v125 = v187;
      v126 = v190;
      v190[2] = v450;
      v126[3] = v125;

      v127 = v189;
      v128 = v190;
      v190[4] = v451;
      v128[5] = v127;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v192, v193))
      {
        v129 = v487;
        v174 = static UnsafeMutablePointer.allocate(capacity:)();
        v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v173 = 0;
        v175 = createStorage<A>(capacity:type:)(0, v172, v172);
        v176 = createStorage<A>(capacity:type:)(v173, &type metadata for Any + 8, &type metadata for Any + 8);
        v177 = &v561;
        v561 = v174;
        v178 = &v560;
        v560 = v175;
        v179 = &v559;
        v559 = v176;
        serialize(_:at:)(0, &v561);
        serialize(_:at:)(1, v177);
        v557 = v449;
        v558 = v186;
        closure #1 in osLogInternal(_:log:type:)(&v557, v177, v178, v179);
        v180 = v129;
        if (v129)
        {

          __break(1u);
        }

        else
        {
          v557 = v450;
          v558 = v187;
          closure #1 in osLogInternal(_:log:type:)(&v557, &v561, &v560, &v559);
          v171 = 0;
          v557 = v451;
          v558 = v189;
          closure #1 in osLogInternal(_:log:type:)(&v557, &v561, &v560, &v559);
          _os_log_impl(&_mh_execute_header, v192, v193, "rsrp in data directory failed validation: %ld", v174, 0xCu);
          v170 = 0;
          destroyStorage<A>(_:count:)(v175, 0);
          destroyStorage<A>(_:count:)(v176, v170);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      (*(v489 + 8))(v495, v488);
      return 0;
    }
  }

  else
  {
    v130 = v493;
    v131 = logger.unsafeMutableAddressor();
    (*(v489 + 16))(v130, v131, v488);
    v159 = 7;
    v160 = swift_allocObject();
    *(v160 + 16) = v434;
    v168 = Logger.logObject.getter();
    v169 = static os_log_type_t.error.getter();
    v157 = 17;
    v162 = swift_allocObject();
    *(v162 + 16) = 0;
    v163 = swift_allocObject();
    *(v163 + 16) = 8;
    v158 = 32;
    v132 = swift_allocObject();
    v133 = v160;
    v161 = v132;
    *(v132 + 16) = v442;
    *(v132 + 24) = v133;
    v134 = swift_allocObject();
    v135 = v161;
    v165 = v134;
    *(v134 + 16) = v443;
    *(v134 + 24) = v135;
    v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v164 = _allocateUninitializedArray<A>(_:)();
    v166 = v136;

    v137 = v162;
    v138 = v166;
    *v166 = v444;
    v138[1] = v137;

    v139 = v163;
    v140 = v166;
    v166[2] = v445;
    v140[3] = v139;

    v141 = v165;
    v142 = v166;
    v166[4] = v446;
    v142[5] = v141;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v168, v169))
    {
      v143 = v487;
      v150 = static UnsafeMutablePointer.allocate(capacity:)();
      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v149 = 0;
      v151 = createStorage<A>(capacity:type:)(0, v148, v148);
      v152 = createStorage<A>(capacity:type:)(v149, &type metadata for Any + 8, &type metadata for Any + 8);
      v153 = &v566;
      v566 = v150;
      v154 = &v565;
      v565 = v151;
      v155 = &v564;
      v564 = v152;
      serialize(_:at:)(0, &v566);
      serialize(_:at:)(1, v153);
      v562 = v444;
      v563 = v162;
      closure #1 in osLogInternal(_:log:type:)(&v562, v153, v154, v155);
      v156 = v143;
      if (v143)
      {

        __break(1u);
      }

      else
      {
        v562 = v445;
        v563 = v163;
        closure #1 in osLogInternal(_:log:type:)(&v562, &v566, &v565, &v564);
        v147 = 0;
        v562 = v446;
        v563 = v165;
        closure #1 in osLogInternal(_:log:type:)(&v562, &v566, &v565, &v564);
        _os_log_impl(&_mh_execute_header, v168, v169, "rssi in data directory failed validation: %ld", v150, 0xCu);
        v146 = 0;
        destroyStorage<A>(_:count:)(v151, 0);
        destroyStorage<A>(_:count:)(v152, v146);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v489 + 8))(v493, v488);
    return 0;
  }
}

id @nonobjc NSRegularExpression.init(pattern:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSAySo7NSErrorCSgGMd, &_sSAySo7NSErrorCSgGMR);
  lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>();
  _convertInOutToPointerArgument<A>(_:)();
  v8 = [v5 initWithPattern:v6 options:a3 error:v9];
  0;

  if (v8)
  {

    return v8;
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return v4;
  }
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSRegularExpressionOptions(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance NSRegularExpressionOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance NSRegularExpressionOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance NSRegularExpressionOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSRegularExpressionOptions and conformance NSRegularExpressionOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSMatchingOptions(uint64_t a1)
{
  lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance NSMatchingOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance NSMatchingOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance NSMatchingOptions(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSMatchingOptions and conformance NSMatchingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

NSRegularExpressionOptions protocol witness for OptionSet.init(rawValue:) in conformance NSRegularExpressionOptions@<X0>(Swift::UInt *a1@<X0>, NSRegularExpressionOptions *a2@<X8>)
{
  result = NSRegularExpressionOptions.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

NSMatchingOptions protocol witness for OptionSet.init(rawValue:) in conformance NSMatchingOptions@<X0>(Swift::UInt *a1@<X0>, NSMatchingOptions *a2@<X8>)
{
  result = NSMatchingOptions.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

NSRegularExpressionOptions protocol witness for RawRepresentable.init(rawValue:) in conformance NSRegularExpressionOptions@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result = NSRegularExpressionOptions.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

NSMatchingOptions protocol witness for RawRepresentable.init(rawValue:) in conformance NSMatchingOptions@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result = NSMatchingOptions.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t createStorage<A>(capacity:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  else
  {
    return 0;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void destroyStorage<A>(_:count:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    UnsafeMutablePointer.deallocate()();
  }
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, a3);
  v8 = *a1;

  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

void *specialized _StringGuts._deconstructUTF8<A>(scratch:)(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        _sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(v22, v17, v16);
        UnsafeMutableRawBufferPointer.subscript.setter();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = _StringGuts._allocateForDeconstruct()(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _StringObject.sharedUTF8.getter();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *_sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, uint64_t a2)
{
  v7 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  inited = swift_initStackObject();
  _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(inited, 1);
  *v3 = 0;
  specialized _finalizeUninitializedArray<A>(_:)();
  specialized Array.append<A>(contentsOf:)(v4);

  v8 = specialized Array.count.getter(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        specialized UnsafeMutablePointer.initialize(from:count:)(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = _StringObject.sharedUTF8.getter();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      specialized UnsafeMutablePointer.initialize(from:count:)(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = _StringGuts._foreignCopyUTF8(into:)();
  if (v2)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined destroy of String.UTF8View(v17);
  return v10;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v18 = specialized Array.count.getter(a1);
  v2 = specialized Array.count.getter(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!specialized Array._getCount()(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    specialized Array._endMutation()();
    return;
  }

LABEL_33:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v5 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v3 = _swift_stdlib_malloc_size(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = String.UTF8View._foreignIndex(_:offsetBy:)();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v4, v6);
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)partial apply(_BYTE **a1, uint64_t a2, uint64_t a3)
{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply()
{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

void *closure #1 in OSLogArguments.append(_:)partial apply(void *a1, uint64_t a2, uint64_t *a3)
{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v23 = a6;
  v25 = a1;
  v19 = 0;
  v29 = a6;
  v20 = *(a6 - 8);
  v21 = v20;
  __chkstk_darwin(0);
  v22 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v26 = dispatch thunk of static FixedWidthInteger.bitWidth.getter() >> 3;
  v27 = *v25;
  v28 = v27;
  if (v26 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v18 = v27 + v26;
    v17 = &v17;
    v9 = __chkstk_darwin(v22);
    v15 = v28;
    v16 = v10;
    _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, partial apply for closure #1 in serialize<A>(_:at:), &v14, v11, &type metadata for Never, &type metadata for () + 8, v12, &type metadata for ());
    (*(v21 + 8))(v22, v23);
    result = v17;
    *v25 = v18;
  }

  return result;
}

uint64_t _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply@<X0>(uint64_t *a1@<X8>)
{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(*(v1 + 16), a1);
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)partial apply(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  (a4)(a1, a2, a3);
  v5 = *a1;
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  v2 = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt and conformance UInt);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>()
{
  v2 = lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>;
  if (!lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSAySo7NSErrorCSgGMd, &_sSAySo7NSErrorCSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>);
    return WitnessTable;
  }

  return v2;
}

Swift::Double __swiftcall getMean(nums:)(Swift::OpaquePointer nums)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
  lazy protocol witness table accessor for type [Double] and conformance [A]();
  Sequence.reduce<A>(_:_:)();
  v2 = Double.init(_:)(v3);
  return v2 / Array.count.getter();
}

double implicit closure #1 in getMean(nums:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [Double] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Double] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Double] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Double] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Double] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Double] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Double] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

Swift::Double __swiftcall getMedian(nums:)(Swift::OpaquePointer nums)
{
  v6 = Array.count.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
  lazy protocol witness table accessor for type [Double] and conformance [A]();
  Sequence<>.sorted()();
  if (Array.count.getter() % 2)
  {
    Array.subscript.getter();
    v3 = Double.init(_:)(v9);

    return v3;
  }

  Array.subscript.getter();
  result = v8;
  if (!__OFSUB__(v6 / 2, 1))
  {
    Array.subscript.getter();
    v4 = Double.init(_:)((v8 + v7) / 2.0);

    return v4;
  }

  __break(1u);
  return result;
}

{
  v5 = Array.count.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  Sequence<>.sorted()();
  if (Array.count.getter() % 2)
  {
    Array.subscript.getter();

    return v8;
  }

  Array.subscript.getter();
  if (__OFSUB__(v5 / 2, 1))
  {
    __break(1u);
  }

  else
  {
    Array.subscript.getter();
    if (!__OFADD__(v7, v6))
    {

      return ((v7 + v6) / 2);
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

void *getSteadyList(windowSize:rssiThreshold:rssiList:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[5] = a1;
  v30[4] = a2;
  v30[3] = a3;
  v20 = Array.count.getter();
  v30[2] = v20;
  v18 = a1 / 2;
  v30[1] = a1 / 2;
  v30[0] = _allocateUninitializedArray<A>(_:)();
  if (v20 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
    result = IndexingIterator.next()();
    if (v29)
    {
      v11 = v30[0];

      outlined destroy of [Int](v30);
      return v11;
    }

    if (v18 < v20)
    {
      if (v28 >= v18)
      {
        if (__OFSUB__(v28, v18))
        {
          goto LABEL_50;
        }

        result = max<A>(_:_:)();
        if (__OFADD__(v28, v18))
        {
          goto LABEL_51;
        }

        if (__OFSUB__(v20, 1))
        {
          goto LABEL_52;
        }

        min<A>(_:_:)();
        v14 = v22;
        v15 = v23;
      }

      else
      {
        if (__OFADD__(v28, v18))
        {
          goto LABEL_53;
        }

        if (__OFSUB__(v20, 1))
        {
          goto LABEL_54;
        }

        min<A>(_:_:)();
        v14 = v21;
        v15 = 0;
      }

      v16 = v14;
      v17 = v15;
    }

    else
    {
      if (__OFSUB__(v20, 1))
      {
        goto LABEL_55;
      }

      v16 = v20 - 1;
      v17 = 0;
    }

    if (v16 < v17)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
    MutableCollection.subscript.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySiGMd, &_ss10ArraySliceVySiGMR);
    lazy protocol witness table accessor for type ArraySlice<Int> and conformance ArraySlice<A>();
    Sequence<>.max()();
    if (v27)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v13 = v26;
    }

    result = Sequence<>.min()();
    if (v25)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v12 = v24;
    }

    if (__OFSUB__(v13, v12))
    {
      break;
    }

    abs<A>(_:)();
    Array.append(_:)();
    swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  v2 = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>()
{
  v2 = lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNySiGMd, &_sSNySiGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Int> and conformance ArraySlice<A>()
{
  v2 = lazy protocol witness table cache variable for type ArraySlice<Int> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Int> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySiGMd, &_ss10ArraySliceVySiGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<Int> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t getFlatList(durationThreshold:steadyList:)(uint64_t a1, uint64_t a2)
{
  v52[3] = a1;
  v52[2] = a2;
  v41 = Array.count.getter();
  v52[1] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi5start_Si3endSi5counttMd, &_sSi5start_Si3endSi5counttMR);
  v2 = _allocateUninitializedArray<A>(_:)();
  result = v41;
  v52[0] = v2;
  if (v41 < a1)
  {
LABEL_97:
    v18 = v52[0];

    outlined destroy of [(start: Int, end: Int, count: Int)](v52);
    return v18;
  }

  if (!__OFSUB__(v41, 2))
  {
    if (v41 - 2 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
    Collection<>.makeIterator()();
    v36 = 0;
    v37 = 0;
    v38 = 0;
    for (i = 0; ; i = v34)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
      IndexingIterator.next()();
      if (v51)
      {
        break;
      }

      Array.subscript.getter();

      if (v49)
      {
        v35 = 0;
      }

      else
      {
        if (__OFADD__(v50, 1))
        {
          goto LABEL_111;
        }

        Array.subscript.getter();
        v35 = v42 == 1;
      }

      if (v35)
      {
        if (__OFADD__(v50, 1))
        {
          goto LABEL_110;
        }

        v31 = v50 + 1;
        v32 = v50 + 1;
        v33 = 0;
        v34 = v50 + 1;
      }

      else
      {
        Array.subscript.getter();

        if (v48 == 1)
        {
          if (__OFADD__(v50, 1))
          {
            goto LABEL_109;
          }

          Array.subscript.getter();
          v30 = v43 == 0;
        }

        else
        {
          v30 = 0;
        }

        if (v30)
        {
          if (__OFSUB__(v50, i))
          {
            goto LABEL_106;
          }

          if (v50 - i >= a1)
          {
            if (__OFSUB__(v50, i))
            {
              goto LABEL_107;
            }

            if (__OFADD__(v50 - i, 1))
            {
              goto LABEL_108;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi5start_Si3endSi5counttGMd, &_sSaySi5start_Si3endSi5counttGMR);
            result = Array.append(_:)();
          }

          v27 = i;
          v28 = i;
          v29 = 0;
        }

        else
        {
          Array.subscript.getter();

          if (v47 == 1)
          {
            if (__OFADD__(v50, 1))
            {
              goto LABEL_105;
            }

            Array.subscript.getter();
            v26 = v44 == 1;
          }

          else
          {
            v26 = 0;
          }

          if (v26)
          {
            v25 = 1;
          }

          else
          {
            Array.subscript.getter();

            if (v46)
            {
              v24 = 0;
            }

            else
            {
              if (__OFADD__(v50, 1))
              {
                goto LABEL_104;
              }

              Array.subscript.getter();
              v24 = v45 == 0;
            }

            if (v24)
            {
              v23 = 0;
            }

            else
            {
              v23 = v38;
            }

            v25 = v23;
          }

          v27 = v36;
          v28 = v37;
          v29 = v25;
        }

        v31 = v27;
        v32 = v28;
        v33 = v29;
        v34 = i;
      }

      if (__OFSUB__(v41, 2))
      {
        goto LABEL_99;
      }

      if (v50 == v41 - 2 && (v33 & 1) == 1)
      {
        v21 = v41 - 1;
        if (__OFSUB__(v41, 1))
        {
          goto LABEL_102;
        }

        if (__OFSUB__(v21, v32))
        {
          goto LABEL_103;
        }

        v19 = v21 - v32 >= a1;
        v20 = v32;
      }

      else
      {
        v19 = 0;
        v20 = v31;
      }

      if (v19)
      {
        if (__OFSUB__(v41, 1))
        {
          goto LABEL_100;
        }

        if (__OFSUB__(v41, v20))
        {
          goto LABEL_101;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi5start_Si3endSi5counttGMd, &_sSaySi5start_Si3endSi5counttGMR);
        Array.append(_:)();
      }

      v36 = v20;
      v37 = v32;
      v38 = v33;
    }

    goto LABEL_97;
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>()
{
  v2 = lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t getReducedData(flatList:rssiList:obrList:noiseList:txRateList:rxRateList:dowList:hourList:ssidList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37[0] = 0;
  v37[1] = 0;
  v38[9] = a1;
  v38[8] = a2;
  v38[7] = a3;
  v38[6] = a4;
  v38[5] = a5;
  v38[4] = a6;
  v38[3] = a7;
  v38[2] = a8;
  v38[1] = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  v38[0] = _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi5start_Si3endSi5counttMd, &_sSi5start_Si3endSi5counttMR);
  if (Array.count.getter() > 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi5start_Si3endSi5counttGMd, &_sSaySi5start_Si3endSi5counttGMR);
    lazy protocol witness table accessor for type [(start: Int, end: Int, count: Int)] and conformance [A]();
    Collection<>.makeIterator()();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySi5start_Si3endSi5counttGGMd, &_ss16IndexingIteratorVySaySi5start_Si3endSi5counttGGMR);
      IndexingIterator.next()();
      if (v36)
      {
        break;
      }

      if (v35 < v34)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
      lazy protocol witness table accessor for type [Double] and conformance [A]();
      lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
      MutableCollection.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySdGMd, &_ss10ArraySliceVySdGMR);
      lazy protocol witness table accessor for type ArraySlice<Double> and conformance ArraySlice<A>();
      nums = Array.init<A>(_:)();
      if (v35 < v34)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
      lazy protocol witness table accessor for type [Int] and conformance [A]();
      MutableCollection.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySiGMd, &_ss10ArraySliceVySiGMR);
      lazy protocol witness table accessor for type ArraySlice<Int> and conformance ArraySlice<A>();
      v25 = Array.init<A>(_:)();
      if (v35 < v34)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      MutableCollection.subscript.getter();
      v24 = Array.init<A>(_:)();
      if (v35 < v34)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      MutableCollection.subscript.getter();
      v23 = Array.init<A>(_:)();
      if (v35 < v34)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      MutableCollection.subscript.getter();
      v22 = Array.init<A>(_:)();
      if (v35 < v34)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      MutableCollection.subscript.getter();
      Array.init<A>(_:)();
      if (v35 < v34)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      MutableCollection.subscript.getter();
      Array.init<A>(_:)();
      if (v35 < v34)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      MutableCollection.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySSGMd, &_ss10ArraySliceVySSGMR);
      lazy protocol witness table accessor for type ArraySlice<String> and conformance ArraySlice<A>();
      Array.init<A>(_:)();
      v17 = getMedian(nums:)(nums);
      v18 = getMedian(nums:)(v25);
      v19 = getMedian(nums:)(v24);
      v20 = getMedian(nums:)(v23);
      v21 = getMedian(nums:)(v22);
      lazy protocol witness table accessor for type [Int] and conformance [A]();
      Sequence<>.min()();
      if (v33)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      else
      {
        v16 = v32;
      }

      Sequence<>.min()();
      if (v31)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      else
      {
        v15 = v30;
      }

      lazy protocol witness table accessor for type [String] and conformance [A]();
      Sequence<>.min()();
      if (v29)
      {
        v13 = v28;
        v14 = v29;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v27 = Array.count.getter();
      _allocateUninitializedArray<A>(_:)();
      v12 = v9;
      v9[3] = &type metadata for Double;
      *v9 = v17;
      v9[7] = &type metadata for Double;
      *(v9 + 4) = v18;
      v9[11] = &type metadata for Double;
      *(v9 + 8) = v19;
      v9[15] = &type metadata for Double;
      *(v9 + 12) = v20;
      v9[19] = &type metadata for Double;
      *(v9 + 16) = v21;
      v9[23] = &type metadata for Int;
      v9[20] = v16;
      v9[27] = &type metadata for Int;
      v9[24] = v15;

      v12[31] = &type metadata for String;
      v12[28] = v13;
      v12[29] = v14;
      v12[35] = &type metadata for Int;
      v12[32] = v27;
      _finalizeUninitializedArray<A>(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySayypGGMd, &_sSaySayypGGMR);
      Array.append(_:)();
    }

    outlined destroy of IndexingIterator<[(start: Int, end: Int, count: Int)]>(v37);
  }

  v11 = v38[0];

  outlined destroy of [[Any]](v38);
  return v11;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Double> and conformance ArraySlice<A>()
{
  v2 = lazy protocol witness table cache variable for type ArraySlice<Double> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Double> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySdGMd, &_ss10ArraySliceVySdGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<Double> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<String> and conformance ArraySlice<A>()
{
  v2 = lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySSGMd, &_ss10ArraySliceVySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t preprocessData(rssiList:obrList:noiseList:txRateList:rxRateList:dowList:hourList:ssidList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = getSteadyList(windowSize:rssiThreshold:rssiList:)(7, 5, a1);
  v18 = getFlatList(durationThreshold:steadyList:)(3, v19);
  v17 = getReducedData(flatList:rssiList:obrList:noiseList:txRateList:rxRateList:dowList:hourList:ssidList:)(v18, a1, a2, a3, a4, a5, a6, a7, a8);

  return v17;
}

uint64_t SQLError.description.getter(int a1, uint64_t a2, void *a3)
{
  v6._countAndFlagsBits = a2;
  v6._object = a3;
  v9 = a1;
  v10 = a2;
  v11 = a3;

  v7 = v6;
  if (v6._object)
  {
    v8 = v7;
  }

  else
  {
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SQL Error", 9uLL, 1);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(": ", 2uLL, 1);
  static String.+ infix(_:_:)();

  if (!sqlite3_errstr(a1))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(cString:)();
  v4 = static String.+ infix(_:_:)();

  return v4;
}

uint64_t SQLError.desc.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t DBError.description.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("statement returned no rows", 0x1AuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("statement returned too many rows", 0x20uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("statement returned wrong columns count", 0x26uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("closed", 6uLL, 1)._countAndFlagsBits;
  }
}

BOOL static DBError.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t lazy protocol witness table accessor for type DBError and conformance DBError()
{
  v2 = lazy protocol witness table cache variable for type DBError and conformance DBError;
  if (!lazy protocol witness table cache variable for type DBError and conformance DBError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DBError and conformance DBError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type DBError and conformance DBError;
  if (!lazy protocol witness table cache variable for type DBError and conformance DBError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DBError and conformance DBError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type DBError and conformance DBError;
  if (!lazy protocol witness table cache variable for type DBError and conformance DBError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DBError and conformance DBError);
    return WitnessTable;
  }

  return v2;
}

uint64_t SQLiteDB.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static SQLiteDB.logger);
}

uint64_t static SQLiteDB.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = SQLiteDB.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t SQLiteDB.handle.getter()
{
  v2 = *(v0 + 112);

  return v2;
}

uint64_t SQLiteDB.Location.path.getter()
{
  v17 = 0;
  v18 = 0;
  v8 = 0;
  v15 = type metadata accessor for URL();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v9 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v10 = &v5 - v9;
  v18 = &v5 - v9;
  v12 = (*(*(type metadata accessor for SQLiteDB.Location(v0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v11);
  v16 = &v5 - v12;
  v17 = v1;
  outlined init with copy of SQLiteDB.Location(v1, &v5 - v12);
  if ((*(v13 + 48))(v16, 1, v15) == 1)
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(":memory:", 8uLL, 1);
  }

  else
  {
    v2 = v10;
    (*(v13 + 32))(v10, v16, v15);
    v18 = v2;
    v6._countAndFlagsBits = URL.path.getter();
    v6._object = v3;
    (*(v13 + 8))(v10, v15);
    v7 = v6;
  }

  return v7._countAndFlagsBits;
}

uint64_t type metadata accessor for SQLiteDB.Location(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for SQLiteDB.Location;
  if (!type metadata singleton initialization cache for SQLiteDB.Location)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *outlined init with copy of SQLiteDB.Location(const void *a1, void *a2)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = type metadata accessor for SQLiteDB.Location(0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t SQLiteDB.DBHandle.closed.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_endAccess();
  return v2 & 1;
}

uint64_t SQLiteDB.DBHandle.closed.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_endAccess();
}

uint64_t *SQLiteDB.DBHandle.__allocating_init(location:)(uint64_t a1)
{
  swift_allocObject();
  v5 = SQLiteDB.DBHandle.init(location:)(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t *SQLiteDB.DBHandle.init(location:)(uint64_t a1)
{
  *(v1 + 24) = 0;
  v12 = 0;
  SQLiteDB.Location.path.getter();
  v10 = String.utf8CString.getter();

  v11 = sqlite3_open_v2((v10 + 32), &v12, 32774, 0);
  swift_unknownObjectRelease();

  if (!v12 || v11)
  {
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to open database", 0x17uLL, 1);
    v13 = SQLError.init(code:desc:)(v11, v3);
    code = v13.code;
    desc_8 = v13.desc.value._countAndFlagsBits;
    object = v13.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v4 = code;
    *(v4 + 8) = desc_8;
    *(v4 + 16) = object;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    outlined destroy of SQLiteDB.Location(a1);
    return v5;
  }

  else
  {
    *(v1 + 16) = v12;
    outlined destroy of SQLiteDB.Location(a1);
    return v1;
  }
}

unint64_t lazy protocol witness table accessor for type SQLError and conformance SQLError()
{
  v2 = lazy protocol witness table cache variable for type SQLError and conformance SQLError;
  if (!lazy protocol witness table cache variable for type SQLError and conformance SQLError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SQLError and conformance SQLError);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of SQLiteDB.Location(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t SQLiteDB.DBHandle.close()()
{
  swift_beginAccess();
  v3 = *(v0 + 24);
  result = swift_endAccess();
  if ((v3 & 1) == 0)
  {
    swift_beginAccess();
    *(v2 + 24) = 1;
    swift_endAccess();
    return sqlite3_close_v2(*(v2 + 16));
  }

  return result;
}

uint64_t SQLiteDB.Statement.sqlString.getter()
{
  v4 = sqlite3_expanded_sql(*(v0 + 16));
  if (!v4)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  }

  v2 = String.init(cString:)();
  $defer #1 () in SQLiteDB.Statement.sqlString.getter(v4);
  return v2;
}

uint64_t key path getter for SQLiteDB.Statement.finished : SQLiteDB.Statement@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 104))(v2) & 1;
}

uint64_t key path setter for SQLiteDB.Statement.finished : SQLiteDB.Statement(char *a1, void *a2)
{
  v3 = *a1;

  SQLiteDB.Statement.finished.setter(v3 & 1);
}

uint64_t SQLiteDB.Statement.finished.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_endAccess();
  return v2 & 1;
}

uint64_t SQLiteDB.Statement.finished.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_endAccess();
}

uint64_t SQLiteDB.Statement.init(handle:)(uint64_t a1)
{
  result = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = a1;
  return result;
}

uint64_t SQLiteDB.Statement.step()()
{
  v21 = 0;
  v22 = v0;
  v18 = sqlite3_step(*(v0 + 16));
  v21 = v18;
  if (v18 == 100)
  {

    SQLiteDB.Row.init(statement:)();
    return v1;
  }

  else
  {
    if (v18 != 101)
    {
      v20[0] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v20[1] = v2;
      v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Statement ((", 0xCuLL, 1);
      DefaultStringInterpolation.appendLiteral(_:)(v3);

      v19[0] = (*(*v17 + 96))(v4);
      v19[1] = v5;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      outlined destroy of String(v19);
      v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(")) could not be executed", 0x18uLL, 1);
      DefaultStringInterpolation.appendLiteral(_:)(v6);

      outlined destroy of DefaultStringInterpolation(v20);
      desc = String.init(stringInterpolation:)();
      v8.value._object = v7;
      v8.value._countAndFlagsBits = desc;
      v23 = SQLError.init(code:desc:)(v18, v8);
      code = v23.code;
      desc_8 = v23.desc.value._countAndFlagsBits;
      object = v23.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      swift_allocError();
      *v9 = code;
      *(v9 + 8) = desc_8;
      *(v9 + 16) = object;
      swift_willThrow();
      return v15;
    }

    swift_beginAccess();
    v17[24] = 1;
    swift_endAccess();
    return 0;
  }
}

uint64_t SQLiteDB.Statement.forEach(handler:)(void (*a1)(void))
{
  while (1)
  {
    result = SQLiteDB.Statement.step()();
    if (v3 || !result)
    {
      break;
    }

    a1();

    v3 = 0;
  }

  return result;
}

uint64_t SQLiteDB.Statement.queryOneRow<A>(handler:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v49 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v45 = 0;
  v50 = a3;
  v36 = *(a3 - 8);
  v37 = a3 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = v14 - v38;
  v49 = v14 - v38;
  v47 = __chkstk_darwin(a1);
  v48 = v6;
  v46 = v4;
  result = SQLiteDB.Statement.step()();
  v40 = v5;
  v41 = result;
  v42 = v5;
  if (v5)
  {
    v17 = v42;
  }

  else
  {
    v31 = v41;
    if (v41)
    {
      v30 = v31;
      v8 = v40;
      v27 = v31;
      v45 = v31;
      v33();
      v28 = v8;
      v29 = v8;
      v9 = SQLiteDB.Statement.step()();
      *&v24[8] = 0;
      v25 = v9;
      v26 = 0;
      v44 = v9;
      *v24 = v9 != 0;
      v23 = v9 != 0;
      outlined destroy of SQLiteDB.Row?(&v44);
      if (v23)
      {
        for (i = *&v24[4]; ; i = *&v19[4])
        {
          v10 = i;
          v11 = SQLiteDB.Statement.step()();
          *&v19[4] = v10;
          v20 = v11;
          v21 = v10;
          if (v10)
          {
            break;
          }

          v43 = v20;
          *v19 = v20 != 0;
          v18 = v20 != 0;
          outlined destroy of SQLiteDB.Row?(&v43);
          if (!v18)
          {
            lazy protocol witness table accessor for type DBError and conformance DBError();
            v16 = swift_allocError();
            *v12 = 1;
            swift_willThrow();
            (*(v36 + 8))(v39, v35);

            result = v16;
            v17 = v16;
            return result;
          }
        }

        v14[1] = v21;
        (*(v36 + 8))(v39, v35);
      }

      else
      {
        (*(v36 + 16))(v32, v39, v35);
        (*(v36 + 8))(v39, v35);
      }
    }

    else
    {
      lazy protocol witness table accessor for type DBError and conformance DBError();
      v15 = swift_allocError();
      *v13 = 0;
      swift_willThrow();
      result = v15;
      v17 = v15;
    }
  }

  return result;
}

uint64_t SQLiteDB.Statement.queryOne<A>()(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = v2;
  v5 = a1;
  v6 = a2;
  return (*(*v2 + 152))(partial apply for closure #1 in SQLiteDB.Statement.queryOne<A>(), v4);
}

{
  v10 = a1;
  v9 = v2;
  v7 = a1;
  v8 = a2;
  v5 = *(*v2 + 152);
  v3 = type metadata accessor for Optional();
  return v5(partial apply for closure #1 in SQLiteDB.Statement.queryOne<A>(), v6, v3);
}

uint64_t closure #1 in SQLiteDB.Statement.queryOne<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (SQLiteDB.Row.count.getter(a1) == 1)
  {

    return (*(a3 + 8))(a1, 0);
  }

  else
  {
    lazy protocol witness table accessor for type DBError and conformance DBError();
    swift_allocError();
    *v4 = 2;
    return swift_willThrow();
  }
}

{
  if (SQLiteDB.Row.count.getter(a1) == 1)
  {

    return (*(a3 + 8))(a1, 0);
  }

  else
  {
    lazy protocol witness table accessor for type DBError and conformance DBError();
    swift_allocError();
    *v4 = 2;
    return swift_willThrow();
  }
}

uint64_t partial apply for closure #1 in SQLiteDB.Statement.queryOne<A>()(uint64_t a1)
{
  return closure #1 in SQLiteDB.Statement.queryOne<A>()(a1, *(v1 + 16), *(v1 + 24));
}

{
  return closure #1 in SQLiteDB.Statement.queryOne<A>()(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t SQLiteDB.Row.count.getter(uint64_t a1)
{

  pStmt = *(a1 + 16);

  return sqlite3_column_count(pStmt);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDB.Statement.execute()()
{
  v3[1] = 0;
  while (1)
  {
    *&v0[8] = HIDWORD(v2);
    v1 = SQLiteDB.Statement.step()();
    if (v2)
    {
      break;
    }

    v3[0] = v1;
    outlined destroy of SQLiteDB.Row?(v3);
    if (!v1)
    {
      break;
    }

    *v0 = 1;
    v2 = *&v0[4];
  }
}

uint64_t SQLiteDB.Statement.bind(at:to:)(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(v6, a1, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

void SQLiteDB.Statement.bind(values:)(uint64_t a1)
{
  memset(v9, 0, 32);
  v9[4] = a1;
  __dst[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16MediaMLExtension11SQLBindable_pGMd, &_sSay16MediaMLExtension11SQLBindable_pGMR);
  lazy protocol witness table accessor for type [SQLBindable] and conformance [A]();
  Sequence.enumerated()();
  __dst[6] = __dst[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySay16MediaMLExtension11SQLBindable_pGGMd, &_ss18EnumeratedSequenceVySay16MediaMLExtension11SQLBindable_pGGMR);
  EnumeratedSequence.makeIterator()();
  for (i = v4; ; i = 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVySay16MediaMLExtension11SQLBindable_pG_GMd, &_ss18EnumeratedSequenceV8IteratorVySay16MediaMLExtension11SQLBindable_pG_GMR);
    EnumeratedSequence.Iterator.next()();
    memcpy(__dst, v7, 0x30uLL);
    if (!__dst[4])
    {
      outlined destroy of EnumeratedSequence<[SQLBindable]>.Iterator(v9);
      return;
    }

    v2 = __dst[0];
    outlined init with take of SQLBindable(&__dst[1], v6);
    if (__OFADD__(v2, 1))
    {
      break;
    }

    (*(*v3 + 184))(v2 + 1, v6);
    if (i)
    {
      __swift_destroy_boxed_opaque_existential_1(v6);
      outlined destroy of EnumeratedSequence<[SQLBindable]>.Iterator(v9);
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type [SQLBindable] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SQLBindable] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SQLBindable] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16MediaMLExtension11SQLBindable_pGMd, &_sSay16MediaMLExtension11SQLBindable_pGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SQLBindable] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t SQLiteDB.Row.get<A>(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return (*(a4 + 8))(a2, a1);
}

{

  return (*(a4 + 8))(a2, a1);
}

uint64_t SQLiteDB.Transaction.db.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t key path getter for SQLiteDB.Transaction.finalized : SQLiteDB.Transaction@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 96))(v2) & 1;
}

uint64_t key path setter for SQLiteDB.Transaction.finalized : SQLiteDB.Transaction(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 104))(v4 & 1);
}

uint64_t SQLiteDB.Transaction.finalized.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_endAccess();
  return v2 & 1;
}

uint64_t SQLiteDB.Transaction.finalized.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_endAccess();
}

uint64_t SQLiteDB.Transaction.init(_:)(uint64_t a1)
{
  *(v1 + 24) = 0;

  *(v1 + 16) = a1;

  return v4;
}

uint64_t SQLiteDB.Transaction.withStatement<A>(sql:handler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  if ((*(*v4 + 96))())
  {
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("transaction already finalized", 0x1DuLL, 1);
    v17 = SQLError.init(code:desc:)(1, v6);
    code = v17.code;
    desc_8 = v17.desc.value._countAndFlagsBits;
    object = v17.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v11 = swift_allocError();
    *v7 = code;
    *(v7 + 8) = desc_8;
    *(v7 + 16) = object;
    swift_willThrow();
    return v11;
  }

  else
  {

    v12 = SQLiteDB.makeStatement(with:)(a1, a2);
    if (!v16)
    {

      a3(v12);
    }
  }
}

uint64_t SQLiteDB.makeStatement(with:)(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v37 = a1;
  v38 = 0;
  v48 = 0;
  v45 = 0;
  v43 = 0;
  v42 = 0;
  v49 = a1;
  v50 = a2;
  v40 = *(v2 + 112);

  v39 = v47;
  swift_beginAccess();
  v41 = *(v40 + 24);
  swift_endAccess();

  if (v41)
  {
    lazy protocol witness table accessor for type DBError and conformance DBError();
    v15 = 0;
    v16 = swift_allocError();
    *v13 = 3;
    swift_willThrow();
    result = v16;
    v23 = v16;
  }

  else
  {
    v30 = v35;
    v46 = 0;
    v3 = v35;
    v32 = String.utf8CString.getter();
    v31 = v32;
    v45 = v32;

    v33 = &v15;
    __chkstk_darwin(&v15);
    v14[2] = v4;
    v14[3] = v5;
    v14[4] = &v46;
    _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in SQLiteDB.makeStatement(with:), v14, v5, &type metadata for Int8, &type metadata for Int32, &type metadata for Never, &protocol witness table for Never, v6);
    v34 = v3;
    if (v3)
    {

      __break(1u);
    }

    else
    {

      v28 = v44;
      v43 = v44;
      v29 = v46;
      if (!v46 || (v27 = v29, v26 = v27, v42 = v27, v28))
      {
        v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to prepare statement", 0x1BuLL, 1);
        countAndFlagsBits = v8._countAndFlagsBits;
        v51 = SQLError.init(code:desc:)(v28, v8);
        code = v51.code;
        v18 = v51.desc.value._countAndFlagsBits;
        object = v51.desc.value._object;
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        v21 = 0;
        v9 = swift_allocError();
        v10 = v18;
        v11 = object;
        v22 = v9;
        *v12 = code;
        *(v12 + 8) = v10;
        *(v12 + 16) = v11;
        swift_willThrow();

        result = v22;
        v23 = v22;
      }

      else
      {
        v25 = v34;
        type metadata accessor for SQLiteDB.Statement();
        v24 = SQLiteDB.Statement.__allocating_init(handle:)(v26);

        return v24;
      }
    }
  }

  return result;
}

Swift::Int64 __swiftcall SQLiteDB.Transaction.changes()()
{
  v2 = *(v0 + 16);

  v3 = *(v2 + 112);

  v4 = *(v3 + 16);

  return sqlite3_changes64(v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDB.Transaction.commit()()
{
  if ((*(*v0 + 96))())
  {
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("transaction already finalized", 0x1DuLL, 1);
    v9 = SQLError.init(code:desc:)(1, v2);
    code = v9.code;
    desc_8 = v9.desc.value._countAndFlagsBits;
    object = v9.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v3 = code;
    *(v3 + 8) = desc_8;
    *(v3 + 16) = object;
    swift_willThrow();
  }

  else
  {

    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("COMMIT", 6uLL, 1);
    SQLiteDB.executeRaw(_:)(v1._countAndFlagsBits, v1._object);

    if (!v8)
    {
      (*(*v7 + 104))(1);
    }
  }
}

uint64_t SQLiteDB.executeRaw(_:)(uint64_t a1, uint64_t a2)
{
  v19 = *(v2 + 112);

  swift_beginAccess();
  v20 = *(v19 + 24);
  swift_endAccess();

  if (v20)
  {
    lazy protocol witness table accessor for type DBError and conformance DBError();
    v8 = swift_allocError();
    *v7 = 3;
    swift_willThrow();
    return v8;
  }

  else
  {
    v14 = *(v18 + 112);

    v15 = *(v14 + 16);

    v16 = String.utf8CString.getter();

    code = sqlite3_exec(v15, (v16 + 32), 0, 0, 0);
    swift_unknownObjectRelease();

    result = code;
    if (code)
    {
      desc = default argument 1 of SQLError.init(code:desc:)();
      v5.value._object = v4;
      v5.value._countAndFlagsBits = desc;
      v21 = SQLError.init(code:desc:)(code, v5);
      v12 = v21.code;
      desc_8 = v21.desc.value._countAndFlagsBits;
      object = v21.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v13 = swift_allocError();
      *v6 = v12;
      *(v6 + 8) = desc_8;
      *(v6 + 16) = object;
      swift_willThrow();
      return v13;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDB.Transaction.rollback()()
{
  if ((*(*v0 + 96))())
  {
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("transaction already finalized", 0x1DuLL, 1);
    v9 = SQLError.init(code:desc:)(1, v2);
    code = v9.code;
    desc_8 = v9.desc.value._countAndFlagsBits;
    object = v9.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v3 = code;
    *(v3 + 8) = desc_8;
    *(v3 + 16) = object;
    swift_willThrow();
  }

  else
  {

    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ROLLBACK", 8uLL, 1);
    SQLiteDB.executeRaw(_:)(v1._countAndFlagsBits, v1._object);

    if (!v8)
    {
      (*(*v7 + 104))(1);
    }
  }
}

void *SQLiteDB.__allocating_init(_:)(const void *a1)
{
  swift_allocObject();
  v5 = SQLiteDB.init(_:)(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

void *SQLiteDB.init(_:)(const void *a1)
{
  v45 = a1;
  v42 = v1;
  v41 = *v1;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v44 = 0;
  v43 = (*(*(type metadata accessor for SQLiteDB.Location(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v1);
  v47 = v17 - v43;
  v55 = v3;
  v54 = v2;
  swift_defaultActor_initialize();
  type metadata accessor for SQLiteDB.DBHandle();
  outlined init with copy of SQLiteDB.Location(v45, v47);
  v4 = v46;
  v5 = SQLiteDB.DBHandle.__allocating_init(location:)(v47);
  v48 = v4;
  v49 = v5;
  v50 = v4;
  if (v4)
  {
    v28 = v50;
    v29 = v42;
  }

  else
  {
    v35 = v49;
    v53 = v49;
    v37 = v49[2];
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PRAGMA journal_mode=WAL;", 0x18uLL, 1)._object;
    v38 = String.utf8CString.getter();

    v36 = (v38 + 32);

    v40 = sqlite3_exec(v37, v36, 0, 0, 0);
    swift_unknownObjectRelease();

    v52 = v40;
    if (v40)
    {
      v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to enable WAL", 0x14uLL, 1);
      v17[3] = v12._countAndFlagsBits;
      v57 = SQLError.init(code:desc:)(v40, v12);
      code = v57.code;
      countAndFlagsBits = v57.desc.value._countAndFlagsBits;
      v19 = v57.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v13 = swift_allocError();
      v14 = countAndFlagsBits;
      v15 = v19;
      v21 = v13;
      *v16 = code;
      *(v16 + 8) = v14;
      *(v16 + 16) = v15;
      swift_willThrow();

      v28 = v21;
      v29 = v42;
    }

    else
    {
      v31 = v35[2];
      v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PRAGMA foreign_keys=ON;", 0x17uLL, 1)._object;
      v32 = String.utf8CString.getter();

      v30 = (v32 + 32);

      v34 = sqlite3_exec(v31, v30, 0, 0, 0);
      swift_unknownObjectRelease();

      v51 = v34;
      if (!v34)
      {

        v42[14] = v35;

        outlined destroy of SQLiteDB.Location(v45);
        return v42;
      }

      v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to enable FK", 0x13uLL, 1);
      v23 = v7._countAndFlagsBits;
      v56 = SQLError.init(code:desc:)(v34, v7);
      v26 = v56.code;
      v24 = v56.desc.value._countAndFlagsBits;
      v25 = v56.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v8 = swift_allocError();
      v9 = v24;
      v10 = v25;
      v27 = v8;
      *v11 = v26;
      *(v11 + 8) = v9;
      *(v11 + 16) = v10;
      swift_willThrow();

      v28 = v27;
      v29 = v42;
    }
  }

  v17[1] = v29;
  v17[2] = v28;
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();
  outlined destroy of SQLiteDB.Location(v45);
  return v22;
}

uint64_t closure #1 in SQLiteDB.makeStatement(with:)@<X0>(uint64_t a3@<X2>, sqlite3_stmt **a5@<X4>, _DWORD *a6@<X8>)
{
  v10 = *(a3 + 112);

  v11 = *(v10 + 16);

  v12 = UnsafeBufferPointer.baseAddress.getter();
  if (!v12)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  nByte = ContiguousArray.count.getter();
  if (nByte < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (nByte > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = sqlite3_prepare_v2(v11, v12, nByte, a5, 0);
  *a6 = result;
  return result;
}

uint64_t _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(unint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a1;
  v17 = a3;
  v13 = a6;
  v14 = a8;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v15 = *(a6 - 8);
  v16 = a6 - 8;
  __chkstk_darwin(a1);
  v19 = &v12 - v9;
  result = v18(v17 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)), *(v17 + 16));
  v20 = v8;
  if (v8)
  {
    return (*(v15 + 32))(v14, v19, v13);
  }

  return result;
}

uint64_t SQLiteDB.withStatement<A>(sql:handler:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  result = SQLiteDB.makeStatement(with:)(a1, a2);
  if (!v3)
  {
    a3();
  }

  return result;
}

uint64_t SQLiteDB.withTransaction<A>(handler:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v38 = 0;
  v43 = a3;
  v28 = *(a3 - 8);
  v29 = a3 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v13 - v30;
  v42 = v13 - v30;
  v40 = __chkstk_darwin(a1);
  v41 = v5;
  v39 = v4;
  type metadata accessor for SQLiteDB.Transaction();

  v33 = SQLiteDB.Transaction.__allocating_init(_:)(v32);
  v38 = v33;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BEGIN TRANSACTION", 0x11uLL, 1);
  v7 = v34;
  object = v6._object;
  SQLiteDB.executeRaw(_:)(v6._countAndFlagsBits, v6._object);
  v36 = v7;
  v37 = v7;
  if (v7)
  {
    v15 = v37;

    v16 = v15;
  }

  else
  {

    v8 = v36;
    v9 = v25(v33);
    v22 = v8;
    v23 = v8;
    if (v8)
    {
      v14 = v23;

      v16 = v14;
    }

    else
    {
      if ((*(*v33 + 96))(v9))
      {
        v18 = v22;
        goto LABEL_7;
      }

      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("COMMIT", 6uLL, 1);
      v11 = v22;
      v19 = v10._object;
      SQLiteDB.executeRaw(_:)(v10._countAndFlagsBits, v10._object);
      v20 = v11;
      v21 = v11;
      if (!v11)
      {

        v18 = v20;
LABEL_7:
        v17 = v18;
        (*(v28 + 16))(v24, v31, v27);
        (*(v28 + 8))(v31, v27);
      }

      v13[1] = v21;

      (*(v28 + 8))(v31, v27);
    }
  }

  return result;
}

Swift::Void __swiftcall SQLiteDB.close()()
{

  SQLiteDB.DBHandle.close()();
}

uint64_t SQLiteDB.deinit()
{

  swift_defaultActor_destroy();
  return v1;
}

uint64_t SQLNullableType<>.init(with:column:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = a5;
  v23 = a1;
  v25 = a2;
  v11 = a3;
  v12 = a4;
  v13 = "Fatal error";
  v14 = "Not enough bits to represent the passed value";
  v15 = "Swift/Integers.swift";
  v16 = "Not enough bits to represent a signed value";
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v29 = a3;
  v17 = *(a3 - 8);
  v18 = a3 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(a1);
  v20 = &v10 - v19;
  v21 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v22 = &v10 - v21;
  v28 = &v10 - v21;
  v27 = v7;
  v26 = v8;

  v24 = *(v23 + 16);

  if (v25 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v25 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (sqlite3_column_type(v24, v25) == 5)
  {

    return (*(v17 + 56))(v10, 1, 1, v11);
  }

  else
  {
    (*(v12 + 8))(v23, v25);
    (*(v17 + 32))(v22, v20, v11);
    (*(v17 + 16))(v10, v22, v11);
    (*(v17 + 56))(v10, 0, 1, v11);
    return (*(v17 + 8))(v22, v11);
  }
}

uint64_t Int.init(with:column:)(uint64_t a1, uint64_t a2)
{

  v5 = *(a1 + 16);

  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v3 = sqlite3_column_int(v5, a2);

  return v3;
}

uint64_t Int.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *(a1 + 16);
  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a3 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a3 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = sqlite3_bind_int(v12, a2, a3);
  code = result;
  if (result)
  {
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to bind Int", 0x12uLL, 1);
    v13 = SQLError.init(code:desc:)(code, v4);
    v8 = v13.code;
    desc_8 = v13.desc.value._countAndFlagsBits;
    object = v13.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v5 = v8;
    *(v5 + 8) = desc_8;
    *(v5 + 16) = object;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for SQLType.init(with:column:) in conformance Int@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Int.init(with:column:)(a1, a2);
  *a3 = result;
  return result;
}

sqlite3_int64 Int64.init(with:column:)(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 16);

  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v6 = sqlite3_column_int64(v4, a2);

  return v6;
}

uint64_t Int64.bind(to:at:)(uint64_t a1, uint64_t a2, sqlite3_int64 a3)
{
  v12 = *(a1 + 16);
  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = sqlite3_bind_int64(v12, a2, a3);
  code = result;
  if (result)
  {
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to bind Int64", 0x14uLL, 1);
    v13 = SQLError.init(code:desc:)(code, v4);
    v8 = v13.code;
    desc_8 = v13.desc.value._countAndFlagsBits;
    object = v13.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v5 = v8;
    *(v5 + 8) = desc_8;
    *(v5 + 16) = object;
    return swift_willThrow();
  }

  return result;
}

sqlite3_int64 protocol witness for SQLType.init(with:column:) in conformance Int64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, sqlite3_int64 *a3@<X8>)
{
  result = Int64.init(with:column:)(a1, a2);
  *a3 = result;
  return result;
}

double Double.init(with:column:)(uint64_t a1, uint64_t a2)
{

  v5 = *(a1 + 16);

  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v2 = sqlite3_column_double(v5, a2);
  v7 = Double.init(_:)(v2);

  return v7;
}

uint64_t Double.bind(to:at:)(uint64_t a1, uint64_t a2, double a3)
{
  v12 = *(a1 + 16);
  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = sqlite3_bind_double(v12, a2, a3);
  code = result;
  if (result)
  {
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to bind Double", 0x15uLL, 1);
    v13 = SQLError.init(code:desc:)(code, v4);
    v8 = v13.code;
    desc_8 = v13.desc.value._countAndFlagsBits;
    object = v13.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v5 = v8;
    *(v5 + 8) = desc_8;
    *(v5 + 16) = object;
    return swift_willThrow();
  }

  return result;
}

uint64_t String.init(with:column:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = 0;

  v8 = *(a1 + 16);

  if (a2 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (sqlite3_column_text(v8, a2))
  {
    v5 = String.init(cString:)();
    v4 = v2;

    v10 = v5;
    v11 = v4;

    outlined destroy of String(&v10);
    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t String.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v25 = a1;
  v24 = a2;
  v22 = a3;
  v23 = a4;
  v21 = String.utf8CString.getter();

  v16 = a1;
  v17 = a2;
  v18 = v21;
  _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in String.bind(to:at:), v15, v21, &type metadata for Int8, &type metadata for Int32, &type metadata for Never, &protocol witness table for Never, v14);
  if (v11)
  {

    __break(1u);
  }

  else
  {

    code = v20;
    v19 = v20;
    if (v20)
    {
      v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to bind String", 0x15uLL, 1);
      v26 = SQLError.init(code:desc:)(code, v5);
      v9 = v26.code;
      desc_8 = v26.desc.value._countAndFlagsBits;
      object = v26.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      swift_allocError();
      *v6 = v9;
      *(v6 + 8) = desc_8;
      *(v6 + 16) = object;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t closure #1 in String.bind(to:at:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a6@<X8>)
{
  v12 = *(a3 + 16);
  if (a4 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a4 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v8 = UnsafeBufferPointer.baseAddress.getter();
  v9 = ContiguousArray.count.getter();
  if (v9 < 0xFFFFFFFF80000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v9 > 0x7FFFFFFF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v6 = SQLITE_TRANSIENT.unsafeMutableAddressor();
  result = sqlite3_bind_text(v12, a4, v8, v9, *v6);
  *a6 = result;
  return result;
}

uint64_t *SQLITE_TRANSIENT.unsafeMutableAddressor()
{
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  return &SQLITE_TRANSIENT;
}

uint64_t protocol witness for SQLNullableType.init(with:column:) in conformance String@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = String.init(with:column:)(a1, a2);
  *a3 = result;
  a3[1] = v4;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t getEnumTagSinglePayload for SQLError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v4 = *(a1 + 16);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DBError(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DBError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_10001793C(uint64_t a1, unsigned int a2)
{
  v2 = type metadata accessor for URL();
  v3 = (*(*(v2 - 8) + 48))(a1, a2);
  if (v3 > 1)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000179D4(uint64_t a1, int a2, unsigned int a3)
{
  if (a2)
  {
    v3 = a2 + 1;
  }

  else
  {
    v3 = 0;
  }

  v7 = v3;
  v4 = type metadata accessor for URL();
  return (*(*(v4 - 8) + 56))(a1, v7, a3);
}

uint64_t type metadata completion function for SQLiteDB.Location(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v3;
}

MediaMLExtension::WorkerErrors_optional __swiftcall WorkerErrors.init(rawValue:)(Swift::String rawValue)
{
  _allocateUninitializedArray<A>(_:)();
  *v1 = "wrongDataFrame";
  *(v1 + 8) = 14;
  *(v1 + 16) = 2;
  *(v1 + 24) = "dbLocked";
  *(v1 + 32) = 8;
  *(v1 + 40) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  if (!v7)
  {
    v5.value = MediaMLExtension_WorkerErrors_wrongDataFrame;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5.value = MediaMLExtension_WorkerErrors_dbLocked;
    goto LABEL_6;
  }

  return 2;
}

uint64_t WorkerErrors.rawValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dbLocked", 8uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wrongDataFrame", 0xEuLL, 1)._countAndFlagsBits;
  }
}

MediaMLExtension::WorkerErrors_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WorkerErrors@<W0>(Swift::String *a1@<X0>, MediaMLExtension::WorkerErrors_optional *a2@<X8>)
{
  result.value = WorkerErrors.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkerErrors@<X0>(uint64_t *a1@<X8>)
{
  result = WorkerErrors.rawValue.getter(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MediaMLWorker.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static MediaMLWorker.logger);
}

uint64_t static MediaMLWorker.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MediaMLWorker.logger.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t variable initialization expression of MediaMLWorker.dbPath@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v11 = type metadata accessor for URL();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v1 = &v4 - v5;
  v10 = &v4 - v5;
  v2 = mediaMLDataDirectory.unsafeMutableAddressor();
  (*(v8 + 16))(v1, v2, v11);
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rawdata.db", 0xAuLL, 1)._object;
  URL.appendingPathComponent(_:isDirectory:)();

  return (*(v8 + 8))(v10, v11);
}

uint64_t MediaMLWorker.database.getter()
{
  v8 = partial apply for implicit closure #1 in MediaMLWorker.database.getter;
  v9 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  v10 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  v11 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v12 = closure #1 in OSLogArguments.append(_:)partial apply;
  v13 = partial apply for closure #1 in OSLogArguments.append(_:);
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v20 = 0;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(0);
  v18 = &v4[-v17];
  v19 = (*(*(type metadata accessor for SQLiteDB.Location(v1) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v25 = &v4[-v19];
  v31 = v0;
  type metadata accessor for SQLiteDB();
  v24 = type metadata accessor for URL();
  v22 = *(v24 - 8);
  v23 = v24 - 8;
  (*(v22 + 16))(v25, v21);
  (*(v22 + 56))(v25, 0, 1, v24);
  v26 = SQLiteDB.__allocating_init(_:)(v25);
  v27 = 0;
  v6 = v26;
  v29 = v26;

  v5 = &v28;
  v28 = v6;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  v7 = OSAllocatedUnfairLock<A>.init(initialState:)(v5, v2);

  return v7;
}

uint64_t OSAllocatedUnfairLock<A>.init(initialState:)(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v10 = a2;
  v5 = *(a2 - 8);
  v6 = a2 - 8;
  v3 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v4 = &v3 - v3;
  (*(v5 + 16))();
  v9 = OSAllocatedUnfairLock.init(uncheckedState:)(v4, v7);
  (*(v5 + 8))(v8, v7);
  return v9;
}

uint64_t MediaMLWorker.shouldRun(context:)(uint64_t a1)
{
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return _swift_task_switch(MediaMLWorker.shouldRun(context:), 0);
}

uint64_t MediaMLWorker.shouldRun(context:)()
{
  *(v0 + 16) = v0;
  type metadata accessor for MLHostResult();
  v1 = MLHostResult.__allocating_init(status:policy:)();
  v2 = *(*(v0 + 16) + 8);

  return v2(v1);
}

uint64_t MediaMLWorker.doWork(context:)(uint64_t a1)
{
  v2[9] = v1;
  v2[8] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return _swift_task_switch(MediaMLWorker.doWork(context:), 0);
}

uint64_t MediaMLWorker.doWork(context:)()
{
  v8 = v0[9];
  v9 = v0[8];
  v0[2] = v0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaMLPlugin.perform-task", 0x24uLL, 1);
  String.utf8CString.getter();

  v7 = os_transaction_create();
  swift_unknownObjectRelease();

  v0[5] = v7;
  v0[7] = v7;
  v9;
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_os_transaction_pSgMd, &_sSo17OS_os_transaction_pSgMR);
  v1 = type metadata accessor for MLHostResult();
  _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF((v0 + 7), partial apply for closure #1 in MediaMLWorker.doWork(context:), v10, v11, &type metadata for Never, v1, &protocol witness table for Never, v12);
  v4 = v6[8];

  v5 = v6[6];
  swift_unknownObjectRelease();
  v2 = *(v6[2] + 8);

  return v2(v5);
}

void closure #1 in MediaMLWorker.doWork(context:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v131 = a3;
  v132 = a1;
  v159 = a2;
  v167 = 0;
  v170 = closure #1 in closure #1 in MediaMLWorker.doWork(context:);
  v133 = partial apply for implicit closure #1 in closure #1 in MediaMLWorker.doWork(context:);
  v134 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v135 = closure #1 in OSLogArguments.append(_:)partial apply;
  v136 = closure #1 in OSLogArguments.append(_:)partial apply;
  v137 = closure #1 in OSLogArguments.append(_:)partial apply;
  v138 = &async function pointer to partial apply for closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  v139 = partial apply for implicit closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  v140 = _s2os18OSLogInterpolationV06appendC0_6format5align7privacyySdyXA_AA0B15FloatFormattingVAA0B15StringAlignmentVAA0B7PrivacyVtFSdycfu_TA_0;
  v141 = closure #1 in OSLogArguments.append(_:)partial apply;
  v142 = closure #1 in OSLogArguments.append(_:)partial apply;
  v143 = _s2os14OSLogArgumentsV6appendyySdycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v187 = 0;
  v186 = 0;
  v184 = 0;
  v185 = 0;
  v182 = 0.0;
  v151 = 0;
  v4 = type metadata accessor for MediaMLWorker(0);
  v144 = *(v4 - 8);
  v145 = v144;
  v146 = *(v144 + 64);
  v147 = (v146 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v148 = &v56 - v147;
  v149 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v151);
  v150 = &v56 - v149;
  v152 = type metadata accessor for Logger();
  v153 = *(v152 - 8);
  v154 = v152 - 8;
  v155 = (v153[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v151);
  v156 = &v56 - v155;
  v157 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v158 = &v56 - v157;
  v160 = type metadata accessor for DispatchTime();
  v161 = *(v160 - 8);
  v162 = v160 - 8;
  v163 = (*(v161 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v160);
  v164 = &v56 - v163;
  v165 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v56 - v163);
  v166 = &v56 - v165;
  v194 = &v56 - v165;
  v193 = a1;
  v192 = v8;
  v168 = MediaMLWorker.database.getter();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  v10 = v169;
  OSAllocatedUnfairLock.withLock<A>(_:)(v170, v167, v168, v9, v9);
  v171 = v10;
  if (v10)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v130 = v191;
  if (!v191)
  {
    type metadata accessor for MLHostResult();
    v127 = &v188;
    v189 = &type metadata for WorkerErrors;
    v190 = lazy protocol witness table accessor for type WorkerErrors and conformance WorkerErrors();
    v188 = 1;
    v11 = MLHostResult.__allocating_init(error:policy:)();
    v12 = v171;
    *v131 = v11;
    v128 = v12;
    return;
  }

  v129 = v130;
  v13 = v158;
  v111 = v130;
  v187 = v130;
  static DispatchTime.now()();
  v14 = MediaMLWorker.logger.unsafeMutableAddressor();
  v112 = v153[2];
  v113 = v153 + 2;
  v112(v13, v14, v152);
  v159;
  v116 = 7;
  v117 = swift_allocObject();
  *(v117 + 16) = v159;
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.info.getter();
  v114 = 17;
  v119 = swift_allocObject();
  *(v119 + 16) = 32;
  v120 = swift_allocObject();
  *(v120 + 16) = 8;
  v115 = 32;
  v15 = swift_allocObject();
  v16 = v117;
  v118 = v15;
  *(v15 + 16) = v133;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v118;
  v122 = v17;
  *(v17 + 16) = v134;
  *(v17 + 24) = v18;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v121 = _allocateUninitializedArray<A>(_:)();
  v123 = v19;

  v20 = v119;
  v21 = v123;
  *v123 = v135;
  v21[1] = v20;

  v22 = v120;
  v23 = v123;
  v123[2] = v136;
  v23[3] = v22;

  v24 = v122;
  v25 = v123;
  v123[4] = v137;
  v25[5] = v24;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v125, v126))
  {
    v104 = static UnsafeMutablePointer.allocate(capacity:)();
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v105 = createStorage<A>(capacity:type:)(0, v103, v103);
    v106 = createStorage<A>(capacity:type:)(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v107 = &v176;
    v176 = v104;
    v108 = &v175;
    v175 = v105;
    v109 = &v174;
    v174 = v106;
    serialize(_:at:)(2, &v176);
    serialize(_:at:)(1, v107);
    v26 = v171;
    v172 = v135;
    v173 = v119;
    closure #1 in osLogInternal(_:log:type:)(&v172, v107, v108, v109);
    v110 = v26;
    if (v26)
    {

      __break(1u);
    }

    else
    {
      v172 = v136;
      v173 = v120;
      closure #1 in osLogInternal(_:log:type:)(&v172, &v176, &v175, &v174);
      v101 = 0;
      v172 = v137;
      v173 = v122;
      closure #1 in osLogInternal(_:log:type:)(&v172, &v176, &v175, &v174);
      v100 = 0;
      _os_log_impl(&_mh_execute_header, v125, v126, "Running MLHost task: %s", v104, 0xCu);
      destroyStorage<A>(_:count:)(v105, 0);
      destroyStorage<A>(_:count:)(v106, 1);
      UnsafeMutablePointer.deallocate()();

      v102 = v100;
    }
  }

  else
  {

    v102 = v171;
  }

  v85 = v102;

  v86 = v153[1];
  v87 = v153 + 1;
  v86(v158, v152);
  v94 = 0;
  v27 = dispatch_semaphore_create(0);
  v88 = v27;
  v186 = v27;
  v89 = [objc_opt_self() namespaceNameFromId:314];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v29;
  v184 = v28;
  v185 = v29;

  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v150, 1);
  outlined init with copy of MediaMLWorker(v132, v148);
  v159;
  v27;
  v91 = (*(v145 + 80) + 32) & ~*(v145 + 80);
  v92 = (v91 + v146 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v91;
  v33 = v31;
  v34 = v148;
  v95 = v33;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  outlined init with take of MediaMLWorker(v34, v33 + v32);
  v35 = v93;
  v36 = v94;
  v37 = v150;
  v38 = v138;
  v39 = v95;
  *(v95 + v92) = v159;
  *(v39 + v35) = v27;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(v36, v36, v37, v38, v39, &type metadata for () + 8);

  OS_dispatch_semaphore.wait()();
  static DispatchTime.now()();
  v98 = DispatchTime.uptimeNanoseconds.getter();
  v96 = *(v161 + 8);
  v97 = v161 + 8;
  v96(v164, v160);
  v40 = DispatchTime.uptimeNanoseconds.getter();
  v99 = v98 - v40;
  if (v98 < v40)
  {
    goto LABEL_18;
  }

  v41 = v156;
  v70 = &v183;
  v183 = v99;
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  Double.init<A>(_:)();
  v71 = v42;
  v72 = v42 / *kSecondsFromNanoseconds.unsafeMutableAddressor();
  v182 = v72;
  v43 = MediaMLWorker.logger.unsafeMutableAddressor();
  v112(v41, v43, v152);
  v75 = 7;
  v76 = swift_allocObject();
  *(v76 + 16) = v72;
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.info.getter();
  v73 = 17;
  v78 = swift_allocObject();
  *(v78 + 16) = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = 8;
  v74 = 32;
  v44 = swift_allocObject();
  v45 = v76;
  v77 = v44;
  *(v44 + 16) = v139;
  *(v44 + 24) = v45;
  v46 = swift_allocObject();
  v47 = v77;
  v81 = v46;
  *(v46 + 16) = v140;
  *(v46 + 24) = v47;
  v80 = _allocateUninitializedArray<A>(_:)();
  v82 = v48;

  v49 = v78;
  v50 = v82;
  *v82 = v141;
  v50[1] = v49;

  v51 = v79;
  v52 = v82;
  v82[2] = v142;
  v52[3] = v51;

  v53 = v81;
  v54 = v82;
  v82[4] = v143;
  v54[5] = v53;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v83, v84))
  {
    v63 = static UnsafeMutablePointer.allocate(capacity:)();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v62 = 0;
    v64 = createStorage<A>(capacity:type:)(0, v61, v61);
    v65 = createStorage<A>(capacity:type:)(v62, &type metadata for Any + 8, &type metadata for Any + 8);
    v66 = &v181;
    v181 = v63;
    v67 = &v180;
    v180 = v64;
    v68 = &v179;
    v179 = v65;
    serialize(_:at:)(0, &v181);
    serialize(_:at:)(1, v66);
    v55 = v85;
    v177 = v141;
    v178 = v78;
    closure #1 in osLogInternal(_:log:type:)(&v177, v66, v67, v68);
    v69 = v55;
    if (v55)
    {

      __break(1u);
    }

    else
    {
      v177 = v142;
      v178 = v79;
      closure #1 in osLogInternal(_:log:type:)(&v177, &v181, &v180, &v179);
      v59 = 0;
      v177 = v143;
      v178 = v81;
      closure #1 in osLogInternal(_:log:type:)(&v177, &v181, &v180, &v179);
      v58 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "Total Time taken to finish running plugin=%f[s]", v63, 0xCu);
      v57 = 0;
      destroyStorage<A>(_:count:)(v64, 0);
      destroyStorage<A>(_:count:)(v65, v57);
      UnsafeMutablePointer.deallocate()();

      v60 = v58;
    }
  }

  else
  {

    v60 = v85;
  }

  v56 = v60;

  v86(v156, v152);
  type metadata accessor for MLHostResult();
  *v131 = MLHostResult.__allocating_init(status:policy:)();

  v96(v166, v160);

  v128 = v56;
}

uint64_t closure #2 in closure #1 in MediaMLWorker.doWork(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 6088) = a6;
  *(v6 + 6080) = a5;
  *(v6 + 6072) = a4;
  *(v6 + 5632) = v6;
  *(v6 + 5640) = 0;
  *(v6 + 5648) = 0;
  *(v6 + 5656) = 0;
  *(v6 + 5664) = 0;
  *(v6 + 5672) = 0;
  *(v6 + 5680) = 0;
  *(v6 + 5600) = 0;
  *(v6 + 5608) = 0;
  *(v6 + 5616) = 0;
  *(v6 + 5624) = 0;
  *(v6 + 100) = 0;
  v7 = type metadata accessor for Logger();
  *(v6 + 6096) = v7;
  *(v6 + 6104) = *(v7 - 8);
  *(v6 + 6112) = swift_task_alloc();
  *(v6 + 6120) = swift_task_alloc();
  *(v6 + 6128) = swift_task_alloc();
  *(v6 + 6136) = swift_task_alloc();
  *(v6 + 6144) = swift_task_alloc();
  *(v6 + 6152) = swift_task_alloc();
  *(v6 + 6160) = swift_task_alloc();
  *(v6 + 6168) = swift_task_alloc();
  *(v6 + 6176) = swift_task_alloc();
  *(v6 + 6184) = swift_task_alloc();
  *(v6 + 6192) = swift_task_alloc();
  *(v6 + 6200) = swift_task_alloc();
  *(v6 + 6208) = swift_task_alloc();
  v8 = type metadata accessor for DataFrame();
  *(v6 + 6216) = v8;
  *(v6 + 6224) = *(v8 - 8);
  *(v6 + 6232) = swift_task_alloc();
  *(v6 + 6240) = swift_task_alloc();
  *(v6 + 6248) = swift_task_alloc();
  *(v6 + 6256) = swift_task_alloc();
  *(v6 + 6264) = swift_task_alloc();
  *(v6 + 5640) = a4;
  *(v6 + 5648) = a5;
  *(v6 + 5656) = a6;
  type metadata accessor for WifiModel();
  v9 = swift_task_alloc();
  *(v14 + 6272) = v9;
  *v9 = *(v14 + 5632);
  v9[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);

  return WifiModel.__allocating_init()();
}

uint64_t closure #2 in closure #1 in MediaMLWorker.doWork(context:)(uint64_t a1)
{
  v5 = *v1;
  v5[704] = *v1;
  v5[785] = a1;

  v5[708] = a1;
  type metadata accessor for CellularModel();
  v2 = swift_task_alloc();
  v5[786] = v2;
  *v2 = v5[704];
  v2[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);

  return CellularModel.__allocating_init()();
}

{
  v5 = *v1;
  v5[704] = *v1;
  v5[787] = a1;

  v5[709] = a1;
  v2 = swift_task_alloc();
  v5[788] = v2;
  *v2 = v5[704];
  v2[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);

  return MediaMLWorker.checkAndPruneProcessedCellDB()();
}

uint64_t closure #2 in closure #1 in MediaMLWorker.doWork(context:)()
{
  v7 = *v1;
  v5 = *v1 + 16;
  v6 = (*v1 + 5632);
  *(v7 + 5632) = *v1;
  *(v7 + 6312) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v5 + 6304) = v2;
    *v2 = *v6;
    v2[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v3 = *(v5 + 6248);

    return MediaMLWorker.getRawCellDataFromDB()(v3);
  }
}

{
  v7 = *v1;
  v5 = *v1 + 16;
  v6 = (*v1 + 5632);
  *(v7 + 5632) = *v1;
  *(v7 + 6328) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v5 + 6320) = v2;
    *v2 = *v6;
    v2[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v3 = *(v5 + 6240);

    return MediaMLWorker.getCellDataStandardDeviation()(v3);
  }
}

{
  v8 = *v1;
  v6 = (*v1 + 16);
  v7 = (*v1 + 5632);
  *(v8 + 5632) = *v1;
  *(v8 + 6344) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v2 = swift_task_alloc();
    v6[792] = v2;
    *v2 = *v7;
    v2[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v3 = v6[781];
    v4 = v6[779];

    return MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)(v4, v3);
  }
}

{
  v9 = *v1;
  v6 = *v1 + 16;
  v7 = (*v1 + 5632);
  v8 = *v1 + 104;
  *(v9 + 5632) = *v1;
  *(v9 + 6360) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v5 = (*(**(v6 + 6280) + 168) + **(**(v6 + 6280) + 168));
    v2 = swift_task_alloc();
    *(v6 + 6352) = v2;
    *v2 = *v7;
    v2[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v3 = *(v6 + 6232);

    return v5(v8, v3);
  }
}

{
  v12 = *v1;
  v8 = *v1 + 16;
  v9 = (*v1 + 5632);
  v10 = *v1 + 104;
  v11 = *v1 + 280;
  *(v12 + 5632) = *v1;
  *(v12 + 6376) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v2 = *v10;
    *(v11 + 16) = *(v10 + 16);
    *v11 = v2;
    v3 = *(v10 + 32);
    v4 = *(v10 + 48);
    v5 = *(v10 + 64);
    *(v11 + 80) = *(v10 + 80);
    *(v11 + 64) = v5;
    *(v11 + 48) = v4;
    *(v11 + 32) = v3;
    v6 = swift_task_alloc();
    *(v8 + 6368) = v6;
    *v6 = *v9;
    v6[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);

    return MediaMLWorker.cleanRawCellDataFromDB()();
  }
}

{
  v4 = *v1;
  *(v4 + 5632) = *v1;
  *(v4 + 6392) = v0;

  if (v0)
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v2, 0);
}

{
  v1 = v0[776];
  v17 = v0[763];
  v18 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v3 = *(v17 + 16);
  v0[800] = v3;
  v0[801] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v18);
  oslog = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  v0[802] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v19))
  {
    v4 = *(v16 + 6392);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(0, v11, v11);
    v14 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v16 + 6040) = buf;
    *(v16 + 6048) = v13;
    *(v16 + 6056) = v14;
    serialize(_:at:)(0, (v16 + 6040));
    serialize(_:at:)(0, (v16 + 6040));
    *(v16 + 6064) = v21;
    v15 = swift_task_alloc();
    v15[2] = v16 + 6040;
    v15[3] = v16 + 6048;
    v15[4] = v16 + 6056;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v4)
    {
    }

    _os_log_impl(&_mh_execute_header, oslog, v19, "Finished cell model training and received modelStats", buf, 2u);
    destroyStorage<A>(_:count:)(v13, 0);
    destroyStorage<A>(_:count:)(v14, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = *(v16 + 6208);
  v10 = *(v16 + 6096);
  v8 = *(v16 + 6104);

  v6 = *(v8 + 8);
  *(v16 + 6424) = v6;
  *(v16 + 6432) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v9, v10);
  v7 = swift_task_alloc();
  *(v16 + 6440) = v7;
  *v7 = *(v16 + 5632);
  v7[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);

  return MediaMLWorker.checkAndPruneProcessedWifiDB()();
}

{
  v7 = *v1;
  v5 = *v1 + 16;
  v6 = (*v1 + 5632);
  *(v7 + 5632) = *v1;
  *(v7 + 6448) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v5 + 6440) = v2;
    *v2 = *v6;
    v2[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v3 = *(v5 + 6224);

    return MediaMLWorker.getRawWiFiDataFromDB()(v3);
  }
}

{
  v8 = *v1;
  v6 = (*v1 + 16);
  v7 = (*v1 + 5632);
  *(v8 + 5632) = *v1;
  *(v8 + 6464) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v2 = swift_task_alloc();
    v6[807] = v2;
    *v2 = *v7;
    v2[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v3 = v6[778];
    v4 = v6[777];

    return MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)(v4, v3);
  }
}

{
  v8 = *v1;
  v6 = *v1 + 16;
  v7 = (*v1 + 5632);
  *(v8 + 5632) = *v1;
  *(v8 + 6480) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v5 = (*(**(v6 + 6264) + 160) + **(**(v6 + 6264) + 160));
    v2 = swift_task_alloc();
    *(v6 + 6472) = v2;
    *v2 = *v7;
    v2[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
    v3 = *(v6 + 6216);

    return v5(v6, v3);
  }
}

{
  v11 = *v1;
  v8 = *v1 + 16;
  v9 = (*v1 + 5632);
  v10 = *v1 + 192;
  *(v11 + 5632) = *v1;
  *(v11 + 6496) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #2 in closure #1 in MediaMLWorker.doWork(context:), 0);
  }

  else
  {
    v2 = *v8;
    *(v10 + 16) = *(v8 + 16);
    *v10 = v2;
    v3 = *(v8 + 32);
    v4 = *(v8 + 48);
    v5 = *(v8 + 64);
    *(v10 + 80) = *(v8 + 80);
    *(v10 + 64) = v5;
    *(v10 + 48) = v4;
    *(v10 + 32) = v3;
    v6 = swift_task_alloc();
    *(v8 + 6488) = v6;
    *v6 = *v9;
    v6[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);

    return MediaMLWorker.cleanRawWiFiDataFromDB()();
  }
}

{
  v4 = *v1;
  *(v4 + 5632) = *v1;
  *(v4 + 6512) = v0;

  if (v0)
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v2, 0);
}

{
  v4 = *v1;
  *(v4 + 5632) = *v1;
  *(v4 + 6560) = v0;

  if (v0)
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v2, 0);
}

{
  v16 = v0[800];
  v1 = v0[773];
  v15 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v16(v1, v2, v15);
  v18 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  v19 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v18, v17))
  {
    v3 = *(v14 + 6560);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v14 + 5944) = buf;
    *(v14 + 5952) = v11;
    *(v14 + 5960) = v12;
    serialize(_:at:)(0, (v14 + 5944));
    serialize(_:at:)(0, (v14 + 5944));
    *(v14 + 5968) = v19;
    v13 = swift_task_alloc();
    v13[2] = v14 + 5944;
    v13[3] = v14 + 5952;
    v13[4] = v14 + 5960;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, v18, v17, "Saved wifiModelStats to modelStats table", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0);
    destroyStorage<A>(_:count:)(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v8 = *(v14 + 6424);
  v6 = *(v14 + 6184);
  v7 = *(v14 + 6096);

  v8(v6, v7);
  memcpy((v14 + 4856), (v14 + 192), 0x51uLL);
  memcpy((v14 + 4768), (v14 + 4856), 0x51uLL);
  if (*(v14 + 4848))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  memcpy((v14 + 5200), (v14 + 4768), 0x50uLL);
  v5 = swift_task_alloc();
  *(v14 + 6568) = v5;
  *v5 = *(v14 + 5632);
  v5[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);

  return MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:)(v14 + 5200);
}

{
  v4 = *v1;
  *(v4 + 5632) = *v1;
  *(v4 + 6576) = v0;

  if (v0)
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v2, 0);
}

{
  v16 = v0[800];
  v1 = v0[772];
  v15 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v16(v1, v2, v15);
  oslog = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  v19 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v17))
  {
    v3 = *(v14 + 6576);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v14 + 5912) = buf;
    *(v14 + 5920) = v11;
    *(v14 + 5928) = v12;
    serialize(_:at:)(0, (v14 + 5912));
    serialize(_:at:)(0, (v14 + 5912));
    *(v14 + 5936) = v19;
    v13 = swift_task_alloc();
    v13[2] = v14 + 5912;
    v13[3] = v14 + 5920;
    v13[4] = v14 + 5928;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, oslog, v17, "Deleted previous wifiModelStats from modelStats table", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0);
    destroyStorage<A>(_:count:)(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v8 = *(v14 + 6424);
  v6 = *(v14 + 6176);
  v7 = *(v14 + 6096);

  v8(v6, v7);
  v5 = swift_task_alloc();
  *(v14 + 6584) = v5;
  *v5 = *(v14 + 5632);
  v5[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);

  return MediaMLWorker.saveWiFiDataStandardDeviation()();
}

{
  v4 = *v1;
  *(v4 + 5632) = *v1;
  *(v4 + 6592) = v0;

  if (v0)
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v2, 0);
}

{
  v16 = v0[800];
  v1 = v0[771];
  v15 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v16(v1, v2, v15);
  v18 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  v19 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v18, v17))
  {
    v3 = *(v14 + 6592);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v14 + 5880) = buf;
    *(v14 + 5888) = v11;
    *(v14 + 5896) = v12;
    serialize(_:at:)(0, (v14 + 5880));
    serialize(_:at:)(0, (v14 + 5880));
    *(v14 + 5904) = v19;
    v13 = swift_task_alloc();
    v13[2] = v14 + 5880;
    v13[3] = v14 + 5888;
    v13[4] = v14 + 5896;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, v18, v17, "Saved wifiStandardDeviation to wifiStdDev table", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0);
    destroyStorage<A>(_:count:)(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v8 = *(v14 + 6424);
  v6 = *(v14 + 6168);
  v7 = *(v14 + 6096);

  v8(v6, v7);
  memcpy((v14 + 5032), (v14 + 192), 0x51uLL);
  memcpy((v14 + 4944), (v14 + 5032), 0x51uLL);
  if (*(v14 + 5024))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  memcpy((v14 + 5280), (v14 + 4944), 0x50uLL);
  v5 = swift_task_alloc();
  *(v14 + 6600) = v5;
  *v5 = *(v14 + 5632);
  v5[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);

  return MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:)(v14 + 5280);
}

{
  v4 = *v1;
  *(v4 + 5632) = *v1;
  *(v4 + 6608) = v0;

  if (v0)
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v2, 0);
}

{
  v4 = *v1;
  *(v4 + 5632) = *v1;
  *(v4 + 6624) = v0;

  if (v0)
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v2, 0);
}

{
  v16 = v0[800];
  v1 = v0[768];
  v15 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v16(v1, v2, v15);
  v18 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  v19 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v18, v17))
  {
    v3 = *(v14 + 6624);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v14 + 5784) = buf;
    *(v14 + 5792) = v11;
    *(v14 + 5800) = v12;
    serialize(_:at:)(0, (v14 + 5784));
    serialize(_:at:)(0, (v14 + 5784));
    *(v14 + 5808) = v19;
    v13 = swift_task_alloc();
    v13[2] = v14 + 5784;
    v13[3] = v14 + 5792;
    v13[4] = v14 + 5800;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, v18, v17, "Saved cellModelStats to modelStats table", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0);
    destroyStorage<A>(_:count:)(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v8 = *(v14 + 6424);
  v6 = *(v14 + 6144);
  v7 = *(v14 + 6096);

  v8(v6, v7);
  memcpy((v14 + 2568), (v14 + 280), 0x51uLL);
  memcpy((v14 + 2480), (v14 + 2568), 0x51uLL);
  if (*(v14 + 2560))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  memcpy((v14 + 5440), (v14 + 2480), 0x50uLL);
  v5 = swift_task_alloc();
  *(v14 + 6632) = v5;
  *v5 = *(v14 + 5632);
  v5[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);

  return MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:)(v14 + 5440);
}

{
  v4 = *v1;
  *(v4 + 5632) = *v1;
  *(v4 + 6640) = v0;

  if (v0)
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v2, 0);
}

{
  v17 = v0[800];
  v1 = v0[767];
  v16 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v17(v1, v2, v16);
  oslog = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v18))
  {
    v3 = *(v15 + 6640);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v15 + 5752) = buf;
    *(v15 + 5760) = v12;
    *(v15 + 5768) = v13;
    serialize(_:at:)(0, (v15 + 5752));
    serialize(_:at:)(0, (v15 + 5752));
    *(v15 + 5776) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 5752;
    v14[3] = v15 + 5760;
    v14[4] = v15 + 5768;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, oslog, v18, "Deleted previous cellModelStats from modelStats table", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0);
    destroyStorage<A>(_:count:)(v13, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = *(v15 + 6424);
  v7 = *(v15 + 6136);
  v8 = *(v15 + 6096);

  v9(v7, v8);
  v5 = swift_task_alloc();
  *(v15 + 6648) = v5;
  *v5 = *(v15 + 5632);
  v5[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  v6 = *(v15 + 6256);

  return MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)(v6);
}

{
  v4 = *v1;
  *(v4 + 5632) = *v1;
  *(v4 + 6656) = v0;

  if (v0)
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v2, 0);
}

{
  v16 = v0[800];
  v1 = v0[766];
  v15 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v16(v1, v2, v15);
  v18 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  v19 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v18, v17))
  {
    v3 = *(v14 + 6656);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(0, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v14 + 5720) = buf;
    *(v14 + 5728) = v11;
    *(v14 + 5736) = v12;
    serialize(_:at:)(0, (v14 + 5720));
    serialize(_:at:)(0, (v14 + 5720));
    *(v14 + 5744) = v19;
    v13 = swift_task_alloc();
    v13[2] = v14 + 5720;
    v13[3] = v14 + 5728;
    v13[4] = v14 + 5736;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, v18, v17, "Saved cellStandardDeviation to cellStdDev table", buf, 2u);
    destroyStorage<A>(_:count:)(v11, 0);
    destroyStorage<A>(_:count:)(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v8 = *(v14 + 6424);
  v6 = *(v14 + 6128);
  v7 = *(v14 + 6096);

  v8(v6, v7);
  memcpy((v14 + 2744), (v14 + 280), 0x51uLL);
  memcpy((v14 + 2656), (v14 + 2744), 0x51uLL);
  if (*(v14 + 2736))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  memcpy((v14 + 5520), (v14 + 2656), 0x50uLL);
  v5 = swift_task_alloc();
  *(v14 + 6664) = v5;
  *v5 = *(v14 + 5632);
  v5[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);

  return MediaMLWorker.deletePreviousCellStdDevDB(modelStats:)(v14 + 5520);
}

{
  v4 = *v1;
  *(v4 + 5632) = *v1;
  *(v4 + 6672) = v0;

  if (v0)
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  else
  {
    v2 = closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  }

  return _swift_task_switch(v2, 0);
}

{
  v24 = v0[800];
  v1 = v0[765];
  v23 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v24(v1, v2, v23);
  v26 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v27 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v26, v25))
  {
    v3 = *(v22 + 6672);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = createStorage<A>(capacity:type:)(0, v17, v17);
    v20 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v22 + 5688) = buf;
    *(v22 + 5696) = v19;
    *(v22 + 5704) = v20;
    serialize(_:at:)(0, (v22 + 5688));
    serialize(_:at:)(0, (v22 + 5688));
    *(v22 + 5712) = v27;
    v21 = swift_task_alloc();
    v21[2] = v22 + 5688;
    v21[3] = v22 + 5696;
    v21[4] = v22 + 5704;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, v26, v25, "Deleted previous cellStandardDeviation from cellStdDev table", buf, 2u);
    destroyStorage<A>(_:count:)(v19, 0);
    destroyStorage<A>(_:count:)(v20, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v8 = *(v22 + 6424);
  v6 = *(v22 + 6120);
  v7 = *(v22 + 6096);

  v8(v6, v7);
  v14 = *(v22 + 6264);
  v13 = *(v22 + 6256);
  v12 = *(v22 + 6248);
  v11 = *(v22 + 6240);
  v10 = *(v22 + 6232);
  v15 = *(v22 + 6216);
  v9 = *(v22 + 6224);

  v16 = *(v9 + 8);
  v16(v10, v15);
  v16(v11, v15);
  v16(v12, v15);
  v16(v13, v15);
  v16(v14, v15);
  OS_dispatch_semaphore.signal()();

  v5 = *(*(v22 + 5632) + 8);

  return v5();
}

{
  v31 = v0;
  v0[704] = v0;
  v16 = v0[789];
  v1 = v0[764];
  v14 = v0[763];
  v15 = v0[762];
  swift_errorRetain();
  v0[710] = v16;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v14 + 16))(v1, v2, v15);
  swift_errorRetain();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = 64;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v19 + 24) = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v22 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v23 = v3;

  *v23 = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[1] = v20;

  v23[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[3] = v21;

  v23[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v25))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(1, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v26 = buf;
    v27 = v11;
    v28 = v12;
    serialize(_:at:)(2, &v26);
    serialize(_:at:)(1, &v26);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v20;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v21;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v22;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    _os_log_impl(&_mh_execute_header, oslog, v25, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v11, 1);
    destroyStorage<A>(_:count:)(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v7 = v13[764];
  v8 = v13[762];
  v6 = v13[763];

  (*(v6 + 8))(v7, v8);

  OS_dispatch_semaphore.signal()();

  v4 = *(v13[704] + 8);

  return v4();
}

{
  v31 = v0;
  v0[704] = v0;
  v16 = v0[791];
  v1 = v0[764];
  v14 = v0[763];
  v15 = v0[762];
  swift_errorRetain();
  v0[710] = v16;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v14 + 16))(v1, v2, v15);
  swift_errorRetain();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = 64;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v19 + 24) = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v22 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v23 = v3;

  *v23 = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[1] = v20;

  v23[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[3] = v21;

  v23[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v25))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(1, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v26 = buf;
    v27 = v11;
    v28 = v12;
    serialize(_:at:)(2, &v26);
    serialize(_:at:)(1, &v26);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v20;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v21;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v22;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    _os_log_impl(&_mh_execute_header, oslog, v25, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v11, 1);
    destroyStorage<A>(_:count:)(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v7 = v13[764];
  v8 = v13[762];
  v6 = v13[763];

  (*(v6 + 8))(v7, v8);

  OS_dispatch_semaphore.signal()();

  v4 = *(v13[704] + 8);

  return v4();
}

{
  v34 = v0;
  v1 = v0[783];
  v2 = v0[778];
  v3 = v0[777];
  v0[704] = v0;
  (*(v2 + 8))(v1, v3);
  v19 = v0[793];
  v4 = v0[764];
  v17 = v0[763];
  v18 = v0[762];
  swift_errorRetain();
  v0[710] = v19;
  v5 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v17 + 16))(v4, v5, v18);
  swift_errorRetain();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = 64;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v25 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v26 = v6;

  *v26 = closure #1 in OSLogArguments.append(_:)partial apply;
  v26[1] = v23;

  v26[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v26[3] = v24;

  v26[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v28))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(1, v12, v12);
    v15 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v29 = buf;
    v30 = v14;
    v31 = v15;
    serialize(_:at:)(2, &v29);
    serialize(_:at:)(1, &v29);
    v32 = closure #1 in OSLogArguments.append(_:)partial apply;
    v33 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    v32 = closure #1 in OSLogArguments.append(_:)partial apply;
    v33 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    v32 = closure #1 in OSLogArguments.append(_:)partial apply;
    v33 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    _os_log_impl(&_mh_execute_header, oslog, v28, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v14, 1);
    destroyStorage<A>(_:count:)(v15, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v10 = v16[764];
  v11 = v16[762];
  v9 = v16[763];

  (*(v9 + 8))(v10, v11);

  OS_dispatch_semaphore.signal()();

  v7 = *(v16[704] + 8);

  return v7();
}

{
  v36 = v0;
  v16 = v0[783];
  v1 = v0[782];
  v2 = v0[778];
  v17 = v0[777];
  v0[704] = v0;
  v18 = *(v2 + 8);
  v18(v1);
  (v18)(v16, v17);
  v21 = v0[795];
  v3 = v0[764];
  v19 = v0[763];
  v20 = v0[762];
  swift_errorRetain();
  v0[710] = v21;
  v4 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v19 + 16))(v3, v4, v20);
  swift_errorRetain();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = 64;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v24 + 24) = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v27 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v28 = v5;

  *v28 = closure #1 in OSLogArguments.append(_:)partial apply;
  v28[1] = v25;

  v28[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v28[3] = v26;

  v28[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v28[5] = v27;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v30))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(1, v11, v11);
    v14 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v31 = buf;
    v32 = v13;
    v33 = v14;
    serialize(_:at:)(2, &v31);
    serialize(_:at:)(1, &v31);
    v34 = closure #1 in OSLogArguments.append(_:)partial apply;
    v35 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = closure #1 in OSLogArguments.append(_:)partial apply;
    v35 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = closure #1 in OSLogArguments.append(_:)partial apply;
    v35 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    _os_log_impl(&_mh_execute_header, oslog, v30, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v13, 1);
    destroyStorage<A>(_:count:)(v14, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = v15[764];
  v10 = v15[762];
  v8 = v15[763];

  (*(v8 + 8))(v9, v10);

  OS_dispatch_semaphore.signal()();

  v6 = *(v15[704] + 8);

  return v6();
}

{
  v37 = v0;
  v17 = v0[783];
  v16 = v0[782];
  v1 = v0[781];
  v2 = v0[778];
  v18 = v0[777];
  v0[704] = v0;
  v19 = *(v2 + 8);
  v19(v1);
  (v19)(v16, v18);
  (v19)(v17, v18);
  v22 = v0[797];
  v3 = v0[764];
  v20 = v0[763];
  v21 = v0[762];
  swift_errorRetain();
  v0[710] = v22;
  v4 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v20 + 16))(v3, v4, v21);
  swift_errorRetain();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = 64;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v28 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v29 = v5;

  *v29 = closure #1 in OSLogArguments.append(_:)partial apply;
  v29[1] = v26;

  v29[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v29[3] = v27;

  v29[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v29[5] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v31))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(1, v11, v11);
    v14 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v32 = buf;
    v33 = v13;
    v34 = v14;
    serialize(_:at:)(2, &v32);
    serialize(_:at:)(1, &v32);
    v35 = closure #1 in OSLogArguments.append(_:)partial apply;
    v36 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = closure #1 in OSLogArguments.append(_:)partial apply;
    v36 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = closure #1 in OSLogArguments.append(_:)partial apply;
    v36 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    _os_log_impl(&_mh_execute_header, oslog, v31, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v13, 1);
    destroyStorage<A>(_:count:)(v14, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = v15[764];
  v10 = v15[762];
  v8 = v15[763];

  (*(v8 + 8))(v9, v10);

  OS_dispatch_semaphore.signal()();

  v6 = *(v15[704] + 8);

  return v6();
}

{
  v37 = v0;
  v17 = v0[783];
  v16 = v0[782];
  v1 = v0[781];
  v2 = v0[778];
  v18 = v0[777];
  v0[704] = v0;
  v19 = *(v2 + 8);
  v19(v1);
  (v19)(v16, v18);
  (v19)(v17, v18);
  v22 = v0[799];
  v3 = v0[764];
  v20 = v0[763];
  v21 = v0[762];
  swift_errorRetain();
  v0[710] = v22;
  v4 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v20 + 16))(v3, v4, v21);
  swift_errorRetain();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = 64;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v28 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v29 = v5;

  *v29 = closure #1 in OSLogArguments.append(_:)partial apply;
  v29[1] = v26;

  v29[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v29[3] = v27;

  v29[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v29[5] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v31))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(1, v11, v11);
    v14 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v32 = buf;
    v33 = v13;
    v34 = v14;
    serialize(_:at:)(2, &v32);
    serialize(_:at:)(1, &v32);
    v35 = closure #1 in OSLogArguments.append(_:)partial apply;
    v36 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = closure #1 in OSLogArguments.append(_:)partial apply;
    v36 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = closure #1 in OSLogArguments.append(_:)partial apply;
    v36 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    _os_log_impl(&_mh_execute_header, oslog, v31, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v13, 1);
    destroyStorage<A>(_:count:)(v14, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = v15[764];
  v10 = v15[762];
  v8 = v15[763];

  (*(v8 + 8))(v9, v10);

  OS_dispatch_semaphore.signal()();

  v6 = *(v15[704] + 8);

  return v6();
}

{
  v37 = v0;
  v17 = v0[783];
  v16 = v0[782];
  v1 = v0[781];
  v2 = v0[778];
  v18 = v0[777];
  v0[704] = v0;
  v19 = *(v2 + 8);
  v19(v1);
  (v19)(v16, v18);
  (v19)(v17, v18);
  v22 = v0[806];
  v3 = v0[764];
  v20 = v0[763];
  v21 = v0[762];
  swift_errorRetain();
  v0[710] = v22;
  v4 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v20 + 16))(v3, v4, v21);
  swift_errorRetain();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = 64;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v28 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v29 = v5;

  *v29 = closure #1 in OSLogArguments.append(_:)partial apply;
  v29[1] = v26;

  v29[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v29[3] = v27;

  v29[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v29[5] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v31))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(1, v11, v11);
    v14 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v32 = buf;
    v33 = v13;
    v34 = v14;
    serialize(_:at:)(2, &v32);
    serialize(_:at:)(1, &v32);
    v35 = closure #1 in OSLogArguments.append(_:)partial apply;
    v36 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = closure #1 in OSLogArguments.append(_:)partial apply;
    v36 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = closure #1 in OSLogArguments.append(_:)partial apply;
    v36 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    _os_log_impl(&_mh_execute_header, oslog, v31, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v13, 1);
    destroyStorage<A>(_:count:)(v14, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = v15[764];
  v10 = v15[762];
  v8 = v15[763];

  (*(v8 + 8))(v9, v10);

  OS_dispatch_semaphore.signal()();

  v6 = *(v15[704] + 8);

  return v6();
}

{
  v37 = v0;
  v17 = v0[783];
  v16 = v0[782];
  v1 = v0[781];
  v2 = v0[778];
  v18 = v0[777];
  v0[704] = v0;
  v19 = *(v2 + 8);
  v19(v1);
  (v19)(v16, v18);
  (v19)(v17, v18);
  v22 = v0[808];
  v3 = v0[764];
  v20 = v0[763];
  v21 = v0[762];
  swift_errorRetain();
  v0[710] = v22;
  v4 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v20 + 16))(v3, v4, v21);
  swift_errorRetain();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = 64;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v28 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v29 = v5;

  *v29 = closure #1 in OSLogArguments.append(_:)partial apply;
  v29[1] = v26;

  v29[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v29[3] = v27;

  v29[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v29[5] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v31))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(1, v11, v11);
    v14 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v32 = buf;
    v33 = v13;
    v34 = v14;
    serialize(_:at:)(2, &v32);
    serialize(_:at:)(1, &v32);
    v35 = closure #1 in OSLogArguments.append(_:)partial apply;
    v36 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = closure #1 in OSLogArguments.append(_:)partial apply;
    v36 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = closure #1 in OSLogArguments.append(_:)partial apply;
    v36 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    _os_log_impl(&_mh_execute_header, oslog, v31, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v13, 1);
    destroyStorage<A>(_:count:)(v14, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = v15[764];
  v10 = v15[762];
  v8 = v15[763];

  (*(v8 + 8))(v9, v10);

  OS_dispatch_semaphore.signal()();

  v6 = *(v15[704] + 8);

  return v6();
}

{
  v38 = v0;
  v18 = v0[783];
  v17 = v0[782];
  v16 = v0[781];
  v1 = v0[780];
  v2 = v0[778];
  v19 = v0[777];
  v0[704] = v0;
  v20 = *(v2 + 8);
  v20(v1);
  (v20)(v16, v19);
  (v20)(v17, v19);
  (v20)(v18, v19);
  v23 = v0[810];
  v3 = v0[764];
  v21 = v0[763];
  v22 = v0[762];
  swift_errorRetain();
  v0[710] = v23;
  v4 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v21 + 16))(v3, v4, v22);
  swift_errorRetain();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v26 + 24) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v29 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v30 = v5;

  *v30 = closure #1 in OSLogArguments.append(_:)partial apply;
  v30[1] = v27;

  v30[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v30[3] = v28;

  v30[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v30[5] = v29;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v32))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(1, v11, v11);
    v14 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v33 = buf;
    v34 = v13;
    v35 = v14;
    serialize(_:at:)(2, &v33);
    serialize(_:at:)(1, &v33);
    v36 = closure #1 in OSLogArguments.append(_:)partial apply;
    v37 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    v36 = closure #1 in OSLogArguments.append(_:)partial apply;
    v37 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    v36 = closure #1 in OSLogArguments.append(_:)partial apply;
    v37 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    _os_log_impl(&_mh_execute_header, oslog, v32, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v13, 1);
    destroyStorage<A>(_:count:)(v14, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = v15[764];
  v10 = v15[762];
  v8 = v15[763];

  (*(v8 + 8))(v9, v10);

  OS_dispatch_semaphore.signal()();

  v6 = *(v15[704] + 8);

  return v6();
}

{
  v39 = v0;
  v19 = v0[783];
  v18 = v0[782];
  v17 = v0[781];
  v16 = v0[780];
  v1 = v0[779];
  v2 = v0[778];
  v20 = v0[777];
  v0[704] = v0;
  v21 = *(v2 + 8);
  v21(v1);
  (v21)(v16, v20);
  (v21)(v17, v20);
  (v21)(v18, v20);
  (v21)(v19, v20);
  v24 = v0[812];
  v3 = v0[764];
  v22 = v0[763];
  v23 = v0[762];
  swift_errorRetain();
  v0[710] = v24;
  v4 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v22 + 16))(v3, v4, v23);
  swift_errorRetain();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 64;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v30 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v31 = v5;

  *v31 = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[1] = v28;

  v31[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[3] = v29;

  v31[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[5] = v30;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v33))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(1, v11, v11);
    v14 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v34 = buf;
    v35 = v13;
    v36 = v14;
    serialize(_:at:)(2, &v34);
    serialize(_:at:)(1, &v34);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    _os_log_impl(&_mh_execute_header, oslog, v33, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v13, 1);
    destroyStorage<A>(_:count:)(v14, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = v15[764];
  v10 = v15[762];
  v8 = v15[763];

  (*(v8 + 8))(v9, v10);

  OS_dispatch_semaphore.signal()();

  v6 = *(v15[704] + 8);

  return v6();
}

{
  v39 = v0;
  v19 = v0[783];
  v18 = v0[782];
  v17 = v0[781];
  v16 = v0[780];
  v1 = v0[779];
  v2 = v0[778];
  v20 = v0[777];
  v0[704] = v0;
  v21 = *(v2 + 8);
  v21(v1);
  (v21)(v16, v20);
  (v21)(v17, v20);
  (v21)(v18, v20);
  (v21)(v19, v20);
  v24 = v0[814];
  v3 = v0[764];
  v22 = v0[763];
  v23 = v0[762];
  swift_errorRetain();
  v0[710] = v24;
  v4 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v22 + 16))(v3, v4, v23);
  swift_errorRetain();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 64;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v30 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v31 = v5;

  *v31 = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[1] = v28;

  v31[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[3] = v29;

  v31[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[5] = v30;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v33))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(1, v11, v11);
    v14 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v34 = buf;
    v35 = v13;
    v36 = v14;
    serialize(_:at:)(2, &v34);
    serialize(_:at:)(1, &v34);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    _os_log_impl(&_mh_execute_header, oslog, v33, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v13, 1);
    destroyStorage<A>(_:count:)(v14, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v9 = v15[764];
  v10 = v15[762];
  v8 = v15[763];

  (*(v8 + 8))(v9, v10);

  OS_dispatch_semaphore.signal()();

  v6 = *(v15[704] + 8);

  return v6();
}

{
  v39 = v0;
  v19 = v0[783];
  v18 = v0[782];
  v17 = v0[781];
  v16 = v0[780];
  v15 = v0[779];
  v14 = v0[778];
  v20 = v0[777];
  v0[704] = v0;

  v21 = *(v14 + 8);
  v21(v15, v20);
  v21(v16, v20);
  v21(v17, v20);
  v21(v18, v20);
  v21(v19, v20);
  v24 = v0[820];
  v1 = v0[764];
  v22 = v0[763];
  v23 = v0[762];
  swift_errorRetain();
  v0[710] = v24;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v22 + 16))(v1, v2, v23);
  swift_errorRetain();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 64;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v30 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v31 = v3;

  *v31 = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[1] = v28;

  v31[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[3] = v29;

  v31[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[5] = v30;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v33))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(1, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v34 = buf;
    v35 = v11;
    v36 = v12;
    serialize(_:at:)(2, &v34);
    serialize(_:at:)(1, &v34);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    _os_log_impl(&_mh_execute_header, oslog, v33, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v11, 1);
    destroyStorage<A>(_:count:)(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v7 = v13[764];
  v8 = v13[762];
  v6 = v13[763];

  (*(v6 + 8))(v7, v8);

  OS_dispatch_semaphore.signal()();

  v4 = *(v13[704] + 8);

  return v4();
}

{
  v39 = v0;
  v19 = v0[783];
  v18 = v0[782];
  v17 = v0[781];
  v16 = v0[780];
  v15 = v0[779];
  v14 = v0[778];
  v20 = v0[777];
  v0[704] = v0;

  v21 = *(v14 + 8);
  v21(v15, v20);
  v21(v16, v20);
  v21(v17, v20);
  v21(v18, v20);
  v21(v19, v20);
  v24 = v0[822];
  v1 = v0[764];
  v22 = v0[763];
  v23 = v0[762];
  swift_errorRetain();
  v0[710] = v24;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v22 + 16))(v1, v2, v23);
  swift_errorRetain();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 64;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v30 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v31 = v3;

  *v31 = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[1] = v28;

  v31[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[3] = v29;

  v31[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[5] = v30;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v33))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(1, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v34 = buf;
    v35 = v11;
    v36 = v12;
    serialize(_:at:)(2, &v34);
    serialize(_:at:)(1, &v34);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    _os_log_impl(&_mh_execute_header, oslog, v33, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v11, 1);
    destroyStorage<A>(_:count:)(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v7 = v13[764];
  v8 = v13[762];
  v6 = v13[763];

  (*(v6 + 8))(v7, v8);

  OS_dispatch_semaphore.signal()();

  v4 = *(v13[704] + 8);

  return v4();
}

{
  v39 = v0;
  v19 = v0[783];
  v18 = v0[782];
  v17 = v0[781];
  v16 = v0[780];
  v15 = v0[779];
  v14 = v0[778];
  v20 = v0[777];
  v0[704] = v0;

  v21 = *(v14 + 8);
  v21(v15, v20);
  v21(v16, v20);
  v21(v17, v20);
  v21(v18, v20);
  v21(v19, v20);
  v24 = v0[824];
  v1 = v0[764];
  v22 = v0[763];
  v23 = v0[762];
  swift_errorRetain();
  v0[710] = v24;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v22 + 16))(v1, v2, v23);
  swift_errorRetain();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 64;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v30 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v31 = v3;

  *v31 = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[1] = v28;

  v31[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[3] = v29;

  v31[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[5] = v30;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v33))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(1, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v34 = buf;
    v35 = v11;
    v36 = v12;
    serialize(_:at:)(2, &v34);
    serialize(_:at:)(1, &v34);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    _os_log_impl(&_mh_execute_header, oslog, v33, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v11, 1);
    destroyStorage<A>(_:count:)(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v7 = v13[764];
  v8 = v13[762];
  v6 = v13[763];

  (*(v6 + 8))(v7, v8);

  OS_dispatch_semaphore.signal()();

  v4 = *(v13[704] + 8);

  return v4();
}

{
  v39 = v0;
  v19 = v0[783];
  v18 = v0[782];
  v17 = v0[781];
  v16 = v0[780];
  v15 = v0[779];
  v14 = v0[778];
  v20 = v0[777];
  v0[704] = v0;

  v21 = *(v14 + 8);
  v21(v15, v20);
  v21(v16, v20);
  v21(v17, v20);
  v21(v18, v20);
  v21(v19, v20);
  v24 = v0[826];
  v1 = v0[764];
  v22 = v0[763];
  v23 = v0[762];
  swift_errorRetain();
  v0[710] = v24;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v22 + 16))(v1, v2, v23);
  swift_errorRetain();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 64;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v30 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v31 = v3;

  *v31 = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[1] = v28;

  v31[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[3] = v29;

  v31[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[5] = v30;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v33))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(1, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v34 = buf;
    v35 = v11;
    v36 = v12;
    serialize(_:at:)(2, &v34);
    serialize(_:at:)(1, &v34);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    _os_log_impl(&_mh_execute_header, oslog, v33, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v11, 1);
    destroyStorage<A>(_:count:)(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v7 = v13[764];
  v8 = v13[762];
  v6 = v13[763];

  (*(v6 + 8))(v7, v8);

  OS_dispatch_semaphore.signal()();

  v4 = *(v13[704] + 8);

  return v4();
}

{
  v39 = v0;
  v19 = v0[783];
  v18 = v0[782];
  v17 = v0[781];
  v16 = v0[780];
  v15 = v0[779];
  v14 = v0[778];
  v20 = v0[777];
  v0[704] = v0;

  v21 = *(v14 + 8);
  v21(v15, v20);
  v21(v16, v20);
  v21(v17, v20);
  v21(v18, v20);
  v21(v19, v20);
  v24 = v0[828];
  v1 = v0[764];
  v22 = v0[763];
  v23 = v0[762];
  swift_errorRetain();
  v0[710] = v24;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v22 + 16))(v1, v2, v23);
  swift_errorRetain();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 64;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v30 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v31 = v3;

  *v31 = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[1] = v28;

  v31[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[3] = v29;

  v31[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[5] = v30;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v33))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(1, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v34 = buf;
    v35 = v11;
    v36 = v12;
    serialize(_:at:)(2, &v34);
    serialize(_:at:)(1, &v34);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    _os_log_impl(&_mh_execute_header, oslog, v33, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v11, 1);
    destroyStorage<A>(_:count:)(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v7 = v13[764];
  v8 = v13[762];
  v6 = v13[763];

  (*(v6 + 8))(v7, v8);

  OS_dispatch_semaphore.signal()();

  v4 = *(v13[704] + 8);

  return v4();
}

{
  v39 = v0;
  v19 = v0[783];
  v18 = v0[782];
  v17 = v0[781];
  v16 = v0[780];
  v15 = v0[779];
  v14 = v0[778];
  v20 = v0[777];
  v0[704] = v0;

  v21 = *(v14 + 8);
  v21(v15, v20);
  v21(v16, v20);
  v21(v17, v20);
  v21(v18, v20);
  v21(v19, v20);
  v24 = v0[830];
  v1 = v0[764];
  v22 = v0[763];
  v23 = v0[762];
  swift_errorRetain();
  v0[710] = v24;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v22 + 16))(v1, v2, v23);
  swift_errorRetain();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 64;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v30 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v31 = v3;

  *v31 = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[1] = v28;

  v31[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[3] = v29;

  v31[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[5] = v30;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v33))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(1, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v34 = buf;
    v35 = v11;
    v36 = v12;
    serialize(_:at:)(2, &v34);
    serialize(_:at:)(1, &v34);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    _os_log_impl(&_mh_execute_header, oslog, v33, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v11, 1);
    destroyStorage<A>(_:count:)(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v7 = v13[764];
  v8 = v13[762];
  v6 = v13[763];

  (*(v6 + 8))(v7, v8);

  OS_dispatch_semaphore.signal()();

  v4 = *(v13[704] + 8);

  return v4();
}

{
  v39 = v0;
  v19 = v0[783];
  v18 = v0[782];
  v17 = v0[781];
  v16 = v0[780];
  v15 = v0[779];
  v14 = v0[778];
  v20 = v0[777];
  v0[704] = v0;

  v21 = *(v14 + 8);
  v21(v15, v20);
  v21(v16, v20);
  v21(v17, v20);
  v21(v18, v20);
  v21(v19, v20);
  v24 = v0[832];
  v1 = v0[764];
  v22 = v0[763];
  v23 = v0[762];
  swift_errorRetain();
  v0[710] = v24;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v22 + 16))(v1, v2, v23);
  swift_errorRetain();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 64;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v30 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v31 = v3;

  *v31 = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[1] = v28;

  v31[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[3] = v29;

  v31[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[5] = v30;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v33))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(1, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v34 = buf;
    v35 = v11;
    v36 = v12;
    serialize(_:at:)(2, &v34);
    serialize(_:at:)(1, &v34);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    _os_log_impl(&_mh_execute_header, oslog, v33, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v11, 1);
    destroyStorage<A>(_:count:)(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v7 = v13[764];
  v8 = v13[762];
  v6 = v13[763];

  (*(v6 + 8))(v7, v8);

  OS_dispatch_semaphore.signal()();

  v4 = *(v13[704] + 8);

  return v4();
}

{
  v39 = v0;
  v19 = v0[783];
  v18 = v0[782];
  v17 = v0[781];
  v16 = v0[780];
  v15 = v0[779];
  v14 = v0[778];
  v20 = v0[777];
  v0[704] = v0;

  v21 = *(v14 + 8);
  v21(v15, v20);
  v21(v16, v20);
  v21(v17, v20);
  v21(v18, v20);
  v21(v19, v20);
  v24 = v0[834];
  v1 = v0[764];
  v22 = v0[763];
  v23 = v0[762];
  swift_errorRetain();
  v0[710] = v24;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v22 + 16))(v1, v2, v23);
  swift_errorRetain();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 64;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in closure #2 in closure #1 in MediaMLWorker.doWork(context:);
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v30 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v31 = v3;

  *v31 = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[1] = v28;

  v31[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[3] = v29;

  v31[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v31[5] = v30;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v33))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(1, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v34 = buf;
    v35 = v11;
    v36 = v12;
    serialize(_:at:)(2, &v34);
    serialize(_:at:)(1, &v34);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = closure #1 in OSLogArguments.append(_:)partial apply;
    v38 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    _os_log_impl(&_mh_execute_header, oslog, v33, "Failed to train model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v11, 1);
    destroyStorage<A>(_:count:)(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v7 = v13[764];
  v8 = v13[762];
  v6 = v13[763];

  (*(v6 + 8))(v7, v8);

  OS_dispatch_semaphore.signal()();

  v4 = *(v13[704] + 8);

  return v4();
}