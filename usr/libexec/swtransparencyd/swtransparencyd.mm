void sub_100001DA8(id a1)
{
  qword_100155EF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100001DEC(id a1)
{
  qword_100155EF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100001E30(id a1)
{
  qword_100155EF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100002158(id a1)
{
  qword_100155EF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000219C(id a1)
{
  qword_100155EF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100002450(id a1)
{
  qword_100155EF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100002494(id a1)
{
  qword_100155EF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100002748(id a1)
{
  qword_100155EF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000278C(id a1)
{
  qword_100155EF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100002A4C(id a1)
{
  qword_100155EF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100002A90(id a1)
{
  qword_100155EF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100002F38(id a1)
{
  qword_100155EF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100003210(id a1)
{
  qword_100155EF8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100003470(id a1)
{
  qword_100155F08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000034B4(id a1)
{
  qword_100155F08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100003CC4(id a1)
{
  qword_100155F08 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

unint64_t ProtocolVersion_EnumDescriptor()
{
  if (!atomic_load(&qword_100155F10))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"ProtocolVersion" valueNames:"UnknownVersion" values:&unk_100102BC8 count:5 enumVerifier:ProtocolVersion_IsValidValue flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_100155F10, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_100155F10);
}

unint64_t Application_EnumDescriptor()
{
  if (!atomic_load(&qword_100155F18))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"Application" valueNames:"UnknownApplication" values:&unk_100102C58 count:7 enumVerifier:Application_IsValidValue flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_100155F18, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_100155F18);
}

unint64_t Status_EnumDescriptor()
{
  if (!atomic_load(&qword_100155F20))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"Status" valueNames:"UnknownStatus" values:&unk_100102CBC count:6 enumVerifier:Status_IsValidValue flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_100155F20, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_100155F20);
}

unint64_t VRFType_EnumDescriptor()
{
  if (!atomic_load(&qword_100155F28))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"VRFType" valueNames:"UnknownVrf" values:&unk_100102D00 count:2 enumVerifier:VRFType_IsValidValue flags:0 extraTextFormatInfo:&unk_100102D08];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_100155F28, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_100155F28);
}

unint64_t LogType_EnumDescriptor()
{
  if (!atomic_load(&qword_100155F30))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"LogType" valueNames:"UnknownLog" values:&unk_100102D6C count:7 enumVerifier:LogType_IsValidValue flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_100155F30, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_100155F30);
}

unint64_t MapType_EnumDescriptor()
{
  if (!atomic_load(&qword_100155F38))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"MapType" valueNames:"UnknownMap" values:&unk_100102DB8 count:3 enumVerifier:MapType_IsValidValue flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_100155F38, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_100155F38);
}

unint64_t NodeType_EnumDescriptor()
{
  if (!atomic_load(&qword_100155F40))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"NodeType" valueNames:"PaclNode" values:&unk_100102E20 count:9 enumVerifier:NodeType_IsValidValue flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_100155F40, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_100155F40);
}

unint64_t Signature_SignatureAlgorithm_EnumDescriptor()
{
  if (!atomic_load(&qword_100155F48))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"Signature_SignatureAlgorithm" valueNames:"Unknown" values:&unk_100102E5C count:2 enumVerifier:Signature_SignatureAlgorithm_IsValidValue flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_100155F48, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_100155F48);
}

void *VRFWitness_Type_RawValue(uint64_t a1)
{
  v2 = [+[VRFWitness descriptor](VRFWitness "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetVRFWitness_Type_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[VRFWitness descriptor](VRFWitness "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *VRFPublicKey_Type_RawValue(uint64_t a1)
{
  v2 = [+[VRFPublicKey descriptor](VRFPublicKey "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetVRFPublicKey_Type_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[VRFPublicKey descriptor](VRFPublicKey "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *Signature_Algorithm_RawValue(uint64_t a1)
{
  v2 = [+[Signature descriptor](Signature "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetSignature_Algorithm_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[Signature descriptor](Signature "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *LogHead_LogType_RawValue(uint64_t a1)
{
  v2 = [+[LogHead descriptor](LogHead "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetLogHead_LogType_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[LogHead descriptor](LogHead "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *LogHead_Application_RawValue(uint64_t a1)
{
  v2 = [+[LogHead descriptor](LogHead "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetLogHead_Application_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[LogHead descriptor](LogHead "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *LogEntry_LogType_RawValue(uint64_t a1)
{
  v2 = [+[LogEntry descriptor](LogEntry "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetLogEntry_LogType_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[LogEntry descriptor](LogEntry "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *LogEntry_NodeType_RawValue(uint64_t a1)
{
  v2 = [+[LogEntry descriptor](LogEntry "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetLogEntry_NodeType_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[LogEntry descriptor](LogEntry "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *MapHead_Application_RawValue(uint64_t a1)
{
  v2 = [+[MapHead descriptor](MapHead "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetMapHead_Application_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[MapHead descriptor](MapHead "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *MapHead_MapType_RawValue(uint64_t a1)
{
  v2 = [+[MapHead descriptor](MapHead "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetMapHead_MapType_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[MapHead descriptor](MapHead "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *PerApplicationTreeConfigNode_EarliestVersion_RawValue(uint64_t a1)
{
  v2 = [+[PerApplicationTreeConfigNode descriptor](PerApplicationTreeConfigNode "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetPerApplicationTreeConfigNode_EarliestVersion_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[PerApplicationTreeConfigNode descriptor](PerApplicationTreeConfigNode "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *TopLevelTreeConfigNode_EarliestVersion_RawValue(uint64_t a1)
{
  v2 = [+[TopLevelTreeConfigNode descriptor](TopLevelTreeConfigNode "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetTopLevelTreeConfigNode_EarliestVersion_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[TopLevelTreeConfigNode descriptor](TopLevelTreeConfigNode "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *LogClosedNode_EarliestVersionForNextTree_RawValue(uint64_t a1)
{
  v2 = [+[LogClosedNode descriptor](LogClosedNode "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetLogClosedNode_EarliestVersionForNextTree_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[LogClosedNode descriptor](LogClosedNode "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *ConsistencyProofRequest_Version_RawValue(uint64_t a1)
{
  v2 = [+[ConsistencyProofRequest descriptor](ConsistencyProofRequest "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetConsistencyProofRequest_Version_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[ConsistencyProofRequest descriptor](ConsistencyProofRequest "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *ConsistencyProofRequest_LogType_RawValue(uint64_t a1)
{
  v2 = [+[ConsistencyProofRequest descriptor](ConsistencyProofRequest "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetConsistencyProofRequest_LogType_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[ConsistencyProofRequest descriptor](ConsistencyProofRequest "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *ConsistencyProofRequest_Application_RawValue(uint64_t a1)
{
  v2 = [+[ConsistencyProofRequest descriptor](ConsistencyProofRequest "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetConsistencyProofRequest_Application_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[ConsistencyProofRequest descriptor](ConsistencyProofRequest "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *ConsistencyProofResponse_Status_RawValue(uint64_t a1)
{
  v2 = [+[ConsistencyProofResponse descriptor](ConsistencyProofResponse "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetConsistencyProofResponse_Status_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[ConsistencyProofResponse descriptor](ConsistencyProofResponse "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *ConsistencyProofResponse_LogType_RawValue(uint64_t a1)
{
  v2 = [+[ConsistencyProofResponse descriptor](ConsistencyProofResponse "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetConsistencyProofResponse_LogType_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[ConsistencyProofResponse descriptor](ConsistencyProofResponse "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *ConsistencyProofResponse_Application_RawValue(uint64_t a1)
{
  v2 = [+[ConsistencyProofResponse descriptor](ConsistencyProofResponse "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetConsistencyProofResponse_Application_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[ConsistencyProofResponse descriptor](ConsistencyProofResponse "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *RevisionLogInclusionProofRequest_Version_RawValue(uint64_t a1)
{
  v2 = [+[RevisionLogInclusionProofRequest descriptor](RevisionLogInclusionProofRequest "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetRevisionLogInclusionProofRequest_Version_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[RevisionLogInclusionProofRequest descriptor](RevisionLogInclusionProofRequest "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *RevisionLogInclusionProofRequest_Application_RawValue(uint64_t a1)
{
  v2 = [+[RevisionLogInclusionProofRequest descriptor](RevisionLogInclusionProofRequest "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetRevisionLogInclusionProofRequest_Application_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[RevisionLogInclusionProofRequest descriptor](RevisionLogInclusionProofRequest "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *RevisionLogInclusionProofRequest_LogType_RawValue(uint64_t a1)
{
  v2 = [+[RevisionLogInclusionProofRequest descriptor](RevisionLogInclusionProofRequest "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetRevisionLogInclusionProofRequest_LogType_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[RevisionLogInclusionProofRequest descriptor](RevisionLogInclusionProofRequest "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *RevisionLogInclusionProofResponse_Status_RawValue(uint64_t a1)
{
  v2 = [+[RevisionLogInclusionProofResponse descriptor](RevisionLogInclusionProofResponse "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetRevisionLogInclusionProofResponse_Status_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[RevisionLogInclusionProofResponse descriptor](RevisionLogInclusionProofResponse "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *PublicKeysRequest_Version_RawValue(uint64_t a1)
{
  v2 = [+[PublicKeysRequest descriptor](PublicKeysRequest "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetPublicKeysRequest_Version_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[PublicKeysRequest descriptor](PublicKeysRequest "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *PublicKeysRequest_Application_RawValue(uint64_t a1)
{
  v2 = [+[PublicKeysRequest descriptor](PublicKeysRequest "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetPublicKeysRequest_Application_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[PublicKeysRequest descriptor](PublicKeysRequest "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *PublicKeysResponse_Status_RawValue(uint64_t a1)
{
  v2 = [+[PublicKeysResponse descriptor](PublicKeysResponse "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetPublicKeysResponse_Status_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[PublicKeysResponse descriptor](PublicKeysResponse "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void sub_100005E58(id a1)
{
  qword_100156018 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100005F80(id a1)
{
  qword_100156018 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000063DC(id a1)
{
  qword_100156018 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100006420(id a1)
{
  qword_100156018 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000697C(id a1)
{
  qword_100156028 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000069C0(id a1)
{
  qword_100156028 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100006B9C(id a1)
{
  qword_100156028 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000071C4(id a1)
{
  qword_100156038 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100007208(id a1)
{
  qword_100156038 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100007434(id a1)
{
  qword_100156038 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

unint64_t ATLogDataType_EnumDescriptor()
{
  if (!atomic_load(&qword_100156040))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"ATLogDataType" valueNames:"Unknown" values:&unk_100103018 count:6 enumVerifier:ATLogDataType_IsValidValue flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_100156040, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_100156040);
}

void *ATLogInsertRequest_Version_RawValue(uint64_t a1)
{
  v2 = [+[ATLogInsertRequest descriptor](ATLogInsertRequest "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetATLogInsertRequest_Version_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[ATLogInsertRequest descriptor](ATLogInsertRequest "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *ATLogInsertRequest_Type_RawValue(uint64_t a1)
{
  v2 = [+[ATLogInsertRequest descriptor](ATLogInsertRequest "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetATLogInsertRequest_Type_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[ATLogInsertRequest descriptor](ATLogInsertRequest "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *ATLogInsertResponse_Status_RawValue(uint64_t a1)
{
  v2 = [+[ATLogInsertResponse descriptor](ATLogInsertResponse "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetATLogInsertResponse_Status_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[ATLogInsertResponse descriptor](ATLogInsertResponse "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *ATLogProofRequest_Version_RawValue(uint64_t a1)
{
  v2 = [+[ATLogProofRequest descriptor](ATLogProofRequest "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetATLogProofRequest_Version_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[ATLogProofRequest descriptor](ATLogProofRequest "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *ATLogProofResponse_Status_RawValue(uint64_t a1)
{
  v2 = [+[ATLogProofResponse descriptor](ATLogProofResponse "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetATLogProofResponse_Status_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[ATLogProofResponse descriptor](ATLogProofResponse "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void sub_100007C90(uint64_t a1)
{
  v2 = [*(a1 + 32) copyManagedObject:0];
  if (v2)
  {
    v3 = [*(a1 + 32) dataStore];
    [v3 onMocSetMapHead:v2 inclusionResult:*(a1 + 48) inclusionError:*(a1 + 40)];

    v4 = [*(a1 + 32) dataStore];
    v16 = 0;
    v5 = [v4 persistWithError:&v16];
    v6 = v16;

    if ((v5 & 1) == 0)
    {
      if (qword_100156078 != -1)
      {
        sub_1000F269C();
      }

      v7 = qword_100156080;
      if (os_log_type_enabled(qword_100156080, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "failed to save inclusion state for map head: %@", buf, 0xCu);
      }

      v8 = [*(a1 + 32) dataStore];
      [v8 reportCoreDataPersistEventForLocation:@"mapHeadIncusionState" underlyingError:v6];
    }

    Current = CFAbsoluteTimeGetCurrent();
    [v2 receiptTime];
    v11 = Current - v10;
    v12 = [v2 application];
    v13 = [TransparencyAnalytics formatEventName:@"PatInclusionProofTime" application:v12];

    v14 = +[TransparencyAnalytics logger];
    v15 = [NSNumber numberWithDouble:v11];
    [v14 logMetric:v15 withName:v13];
  }
}

void sub_100007E84(id a1)
{
  qword_100156080 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100008144(id a1)
{
  qword_100156080 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_100008188(id *a1, void *a2, void *a3)
{
  if (+[TransparencyAnalytics hasInternalDiagnostics])
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [a1[4] metadata];
    v8 = kTransparencyResponseMetadataKeyServerHint;
    v9 = [v7 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

    if (v9)
    {
      v10 = [a1[4] metadata];
      v11 = [v10 objectForKeyedSubscript:v8];
      [v6 setObject:v11 forKeyedSubscript:v8];
    }

    if ([v6 count])
    {
      v12 = v6;
      *a3 = v6;
    }
  }

  v13 = a1[4];
  v32 = 0;
  v14 = [v13 verifyWithError:&v32];
  v15 = v32;
  if (v14 == 1)
  {
    v16 = [a1[4] nodeBytes];
    v31 = v15;
    v17 = [(TransparencyGPBMessage *)PerApplicationTreeNode parseFromData:v16 error:&v31];
    v18 = v31;

    if (v17)
    {
      if ([v17 hasObjectMapHead] && (objc_msgSend(v17, "objectMapHead"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "object"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1[5], "mapHead"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqualToData:", v21), v21, v20, v19, (v22 & 1) != 0))
      {
        v14 = 1;
        [a1[6] setInclusionResult:1 mapHead:a1[5] failure:0];
        v23 = v18;
      }

      else
      {
        v23 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-62 description:@"per-app tree entry does not contain the SMH in the map entry"];

        if (a2 && v23)
        {
          v26 = v23;
          *a2 = v23;
        }

        if (qword_100156078 != -1)
        {
          sub_1000F2728();
        }

        v27 = qword_100156080;
        if (os_log_type_enabled(qword_100156080, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "per-app tree entry does not contain the SMH in the map entry", buf, 2u);
        }

        [a1[6] setInclusionResult:0 mapHead:a1[5] failure:v23];
        v14 = 0;
      }
    }

    else
    {
      v23 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-140 underlyingError:v18 description:@"failed to decode per-app tree node: %@", v18];

      if (qword_100156078 != -1)
      {
        sub_1000F2750();
      }

      v28 = qword_100156080;
      if (os_log_type_enabled(qword_100156080, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v23;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "failed to decode per-app tree node: %@", buf, 0xCu);
      }

      v14 = 0;
      if (a2 && v23)
      {
        v29 = v23;
        v14 = 0;
        *a2 = v23;
      }
    }
  }

  else
  {
    v23 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-13 underlyingError:v15 description:@"per-app tree verification failed"];

    if (a2 && v23)
    {
      v24 = v23;
      *a2 = v23;
    }

    if (qword_100156078 != -1)
    {
      sub_1000F2700();
    }

    v25 = qword_100156080;
    if (os_log_type_enabled(qword_100156080, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "per-app tree verification failed", buf, 2u);
    }
  }

  return v14;
}

void sub_1000085B0(id a1)
{
  qword_100156080 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000085F4(id a1)
{
  qword_100156080 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100008638(id a1)
{
  qword_100156080 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000867C(id a1)
{
  qword_100156080 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_10000897C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [*(a1 + 32) verifyWithError:a2];
  if (!v5 && +[TransparencyAnalytics hasInternalDiagnostics])
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [*(a1 + 32) metadata];
    v8 = kTransparencyResponseMetadataKeyServerHint;
    v9 = [v7 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

    if (v9)
    {
      v10 = [*(a1 + 32) metadata];
      v11 = [v10 objectForKeyedSubscript:v8];
      [v6 setObject:v11 forKeyedSubscript:v8];
    }

    if ([v6 count])
    {
      v12 = v6;
      *a3 = v6;
    }
  }

  return v5;
}

void sub_100008A80(id a1)
{
  qword_100156080 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_100008D34(uint64_t a1, void *a2, void *a3)
{
  if (+[TransparencyAnalytics hasInternalDiagnostics])
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [*(a1 + 32) metadata];
    v8 = kTransparencyResponseMetadataKeyServerHint;
    v9 = [v7 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

    if (v9)
    {
      v10 = [*(a1 + 32) metadata];
      v11 = [v10 objectForKeyedSubscript:v8];
      [v6 setObject:v11 forKeyedSubscript:v8];
    }

    if ([v6 count])
    {
      v12 = v6;
      *a3 = v6;
    }
  }

  v13 = [*(a1 + 32) verifyWithError:a2];
  if (v13 != 1)
  {
    if (a2)
    {
      *a2 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-13 underlyingError:*a2 description:@"per-app tree verification failed"];
    }

    if (qword_100156088 != -1)
    {
      sub_1000F27A0();
    }

    v14 = qword_100156090;
    if (os_log_type_enabled(qword_100156090, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "per-app tree verification failed", v16, 2u);
    }
  }

  return v13;
}

void sub_100008ED8(id a1)
{
  qword_100156090 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100009674(id a1)
{
  qword_1001560A0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100009840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000986C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009884(uint64_t a1)
{
  v2 = *(a1 + 32);
  v42 = 0;
  v3 = [v2 copyManagedObject:&v42];
  v4 = v42;
  if (!v3)
  {
    if (qword_100156098 != -1)
    {
      sub_1000F2818();
    }

    v9 = qword_1001560A0;
    if (os_log_type_enabled(qword_1001560A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to find tree head after inclusion verification: %@", buf, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    v10 = [SecXPCHelper cleanseErrorForXPC:v4];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
    v13 = v4;
    goto LABEL_31;
  }

  [v3 setUnsigned:"inclusionVerified" value:*(a1 + 64)];
  if (*(a1 + 64) != 1)
  {
    v5 = [*(a1 + 40) dataStore];
    v6 = [v5 createSignedTreeHeadFailure];

    v7 = *(a1 + 72);
    if (v7 && *v7)
    {
      v8 = [*v7 code];
    }

    else
    {
      v8 = -120;
    }

    [v6 setErrorCode:v8];
    v14 = *(a1 + 72);
    if (v14 && *v14)
    {
      v15 = [*v14 domain];
      [v6 setErrorDomain:v15];
    }

    else
    {
      [v6 setErrorDomain:kTransparencyErrorUnknown];
    }

    [v6 setSth:v3];
    [v6 setVerificationType:1];
    if (!*(a1 + 64))
    {
      v16 = [*(a1 + 40) dataStore];
      v17 = [v3 application];
      v18 = [*(a1 + 40) optInServer];
      v19 = [v16 createFailureEvent:v4 application:v17 optInServer:v18];

      [v3 setFailureEvent:v19];
      v20 = [*(a1 + 40) optInServer];
      v21 = [v20 getAggregateOptInState:0];

      if (qword_100156098 != -1)
      {
        sub_1000F27C8();
      }

      v22 = qword_1001560A0;
      if (os_log_type_enabled(qword_1001560A0, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        v24 = [v19 eventId];
        *buf = 138543362;
        v44 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Created failure eventId %{public}@ for STH inclusion validation", buf, 0xCu);
      }

      v25 = [*(a1 + 40) followUp];
      v26 = [v3 application];
      v27 = [v19 eventId];
      [v25 postFollowup:v26 type:2 eventId:v27 errorCode:objc_msgSend(v4 optInState:"code") infoLink:v21 additionalInfo:0 error:{0, 0}];
    }
  }

  v28 = [*(a1 + 40) dataStore];
  v41 = v4;
  v29 = [v28 persistWithError:&v41];
  v13 = v41;

  if ((v29 & 1) == 0)
  {
    if (qword_100156098 != -1)
    {
      sub_1000F27F0();
    }

    v30 = qword_1001560A0;
    if (os_log_type_enabled(qword_1001560A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v13;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "failed to save inclusion verification state to PAT head after TLT entry verification: %@", buf, 0xCu);
    }

    v31 = [*(a1 + 40) dataStore];
    [v31 reportCoreDataPersistEventForLocation:@"verifyPatHeadInclusion" underlyingError:v13];

    *(*(*(a1 + 48) + 8) + 24) = 0;
    v32 = [SecXPCHelper cleanseErrorForXPC:v13];
    v33 = *(*(a1 + 56) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [v3 receiptTime];
  if (Current - v36 > 1.0)
  {
    v37 = CFAbsoluteTimeGetCurrent();
    [v3 receiptTime];
    v39 = v37 - v38;
    v12 = +[TransparencyAnalytics logger];
    v40 = [NSNumber numberWithDouble:v39];
    [v12 logMetric:v40 withName:@"ktTLTInclusionProofTime"];

LABEL_31:
  }
}

void sub_100009D84(id a1)
{
  qword_1001560A0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100009DC8(id a1)
{
  qword_1001560A0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100009E0C(id a1)
{
  qword_1001560A0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_100009F1C(uint64_t a1, void *a2, void *a3)
{
  if (+[TransparencyAnalytics hasInternalDiagnostics])
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [*(a1 + 32) metadata];
    v8 = kTransparencyResponseMetadataKeyServerHint;
    v9 = [v7 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

    if (v9)
    {
      v10 = [*(a1 + 32) metadata];
      v11 = [v10 objectForKeyedSubscript:v8];
      [v6 setObject:v11 forKeyedSubscript:v8];
    }

    if ([v6 count])
    {
      v12 = v6;
      *a3 = v6;
    }
  }

  v13 = [*(a1 + 32) verifyWithError:a2];
  if (v13 == 1)
  {
    v14 = [*(a1 + 32) nodeBytes];
    v15 = [(TransparencyGPBMessage *)TopLevelTreeNode parseFromData:v14 error:a2];

    if (v15)
    {
      if ([v15 hasPatHead])
      {
        v16 = [v15 patHead];
        v17 = [v16 object];
        v18 = [*(a1 + 40) logHead];
        v19 = [v17 isEqualToData:v18];

        if (v19)
        {
          v20 = 1;
LABEL_36:
          v23 = [*(a1 + 32) setInclusionResult:v20 signedLogHead:*(a1 + 40) error:a2];

          return v23;
        }
      }

      if (a2)
      {
        *a2 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-63 description:@"top-level tree entry does not contain the SLH in the per-app tree entry"];
      }

      if (qword_100156098 != -1)
      {
        sub_1000F2854();
      }

      v24 = qword_1001560A0;
      if (!os_log_type_enabled(qword_1001560A0, OS_LOG_TYPE_ERROR))
      {
LABEL_35:
        v20 = 0;
        goto LABEL_36;
      }

      *buf = 0;
      v25 = "top-level tree entry does not contain the SLH in the per-app tree entry";
      v26 = v24;
      v27 = 2;
    }

    else
    {
      if (a2)
      {
        *a2 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-141 underlyingError:*a2 description:?];
      }

      if (qword_100156098 != -1)
      {
        sub_1000F2868();
      }

      v28 = qword_1001560A0;
      if (!os_log_type_enabled(qword_1001560A0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      if (a2)
      {
        v29 = *a2;
      }

      else
      {
        v29 = 0;
      }

      *buf = 138412290;
      v32 = v29;
      v25 = "failed to decode top-level tree node: %@";
      v26 = v28;
      v27 = 12;
    }

    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
    goto LABEL_35;
  }

  v21 = v13;
  if (a2)
  {
    *a2 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-14 underlyingError:*a2 description:@"top-level tree verification failed"];
  }

  if (qword_100156098 != -1)
  {
    sub_1000F2840();
  }

  v22 = qword_1001560A0;
  if (os_log_type_enabled(qword_1001560A0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "top level tree verification failed", buf, 2u);
  }

  return [*(a1 + 32) setInclusionResult:v21 signedLogHead:*(a1 + 40) error:a2];
}

void sub_10000A2F0(id a1)
{
  qword_1001560A0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000A334(id a1)
{
  qword_1001560A0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000A378(id a1)
{
  qword_1001560A0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000ABF4(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000AC38(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000AC7C(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000ACC0(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000AD04(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000AD48(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000B41C(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000B460(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000B4A4(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000B4E8(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000BC44(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000BC88(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000BCCC(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000BD10(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000BED8(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000C540(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000C584(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000C5C8(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000CBB8(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000CBFC(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000CC40(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000CC84(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000CCC8(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000D1D4(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000D218(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000D25C(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000D2A0(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000D708(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000D74C(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000DC18(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000DC5C(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000DCA0(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000DCE4(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000DF28(id a1)
{
  qword_1001560B0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000E910(id a1)
{
  qword_1001560C0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000EF2C(id a1)
{
  qword_1001560C0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_10000F0D8(uint64_t a1, void *a2, void *a3)
{
  if (![*(a1 + 32) hasStartSlh] || (objc_msgSend(*(a1 + 32), "startSlh"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v36 = -181;
    if (!a2)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (![*(a1 + 32) hasEndSlh] || (objc_msgSend(*(a1 + 32), "endSlh"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v36 = -182;
    if (!a2)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v8 = [*(a1 + 32) proofHashesArray];
  if (v8)
  {
    v9 = [*(a1 + 32) proofHashesArray_Count];

    if (v9)
    {
      v10 = [*(a1 + 32) startSlh];
      v11 = [*(a1 + 32) verifier];
      v12 = [v11 trustedKeyStore];
      v13 = [v12 signatureVerifier];
      v14 = [*(a1 + 32) dataStore];
      v39 = [SignedLogHead signedTypeWithObject:v10 verifier:v13 dataStore:v14];

      v15 = [*(a1 + 32) endSlh];
      v16 = [*(a1 + 32) verifier];
      v17 = [v16 trustedKeyStore];
      v18 = [v17 signatureVerifier];
      v19 = [*(a1 + 32) dataStore];
      v20 = [SignedLogHead signedTypeWithObject:v15 verifier:v18 dataStore:v19];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v51 = 0x3032000000;
      v52 = sub_10000F640;
      v53 = sub_10000F650;
      v54 = 0;
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v21 = [*(a1 + 32) verifier];
      v22 = [*(a1 + 32) proofHashesArray];
      v23 = (*(&buf + 1) + 40);
      obj = *(*(&buf + 1) + 40);
      v24 = [v21 verifyConsistencyProof:v22 startLogHead:v39 endLogHead:v20 error:&obj];
      objc_storeStrong(v23, obj);

      v49 = v24;
      v25 = [*(a1 + 32) dataStore];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_10000F658;
      v40[3] = &unk_1001329C0;
      v40[4] = *(a1 + 32);
      v26 = v39;
      v41 = v26;
      p_buf = &buf;
      v27 = v20;
      v42 = v27;
      v44 = &v46;
      [v25 performBlockAndWait:v40];

      v28 = +[NSMutableDictionary dictionary];
      v29 = [*(a1 + 32) metadata];
      v30 = kTransparencyResponseMetadataKeyServerHint;
      v31 = [v29 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

      if (v31)
      {
        v32 = [*(a1 + 32) metadata];
        v33 = [v32 objectForKeyedSubscript:v30];
        [v28 setObject:v33 forKeyedSubscript:v30];
      }

      if ([v28 count])
      {
        v34 = v28;
        *a3 = v28;
      }

      if (a2)
      {
        *a2 = *(*(&buf + 1) + 40);
      }

      v35 = v47[3];

      _Block_object_dispose(&v46, 8);
      _Block_object_dispose(&buf, 8);

      return v35;
    }
  }

  v36 = -183;
  if (a2)
  {
LABEL_19:
    *a2 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v36 description:@"log consistency response missing data required for verification"];
  }

LABEL_20:
  if (qword_1001560B8 != -1)
  {
    sub_1000F2CA0();
  }

  v37 = qword_1001560C0;
  if (os_log_type_enabled(qword_1001560C0, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v36;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "log consistency response missing data required for verification: %ld", &buf, 0xCu);
  }

  return 0;
}

void sub_10000F5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000F5FC(id a1)
{
  qword_1001560C0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_10000F640(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000F658(uint64_t a1)
{
  v2 = [*(a1 + 32) forwards];
  v3 = *(*(a1 + 56) + 8);
  v6 = *(v3 + 40);
  v5 = (v3 + 40);
  v4 = v6;
  if (v2)
  {
    v7 = *(a1 + 40);
    obj = v4;
    v8 = [v7 copyManagedObject:&obj];
    objc_storeStrong(v5, obj);
    v9 = *(a1 + 48);
    v10 = *(*(a1 + 56) + 8);
    v12 = *(v10 + 40);
    v11 = (v10 + 40);
    v35 = v12;
    v13 = [v9 copyManagedObject:&v35];
    v14 = v35;
  }

  else
  {
    v15 = *(a1 + 48);
    v34 = v4;
    v8 = [v15 copyManagedObject:&v34];
    objc_storeStrong(v5, v34);
    v16 = *(a1 + 40);
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    v11 = (v17 + 40);
    v33 = v18;
    v13 = [v16 copyManagedObject:&v33];
    v14 = v33;
  }

  v19 = v14;
  v20 = *v11;
  *v11 = v19;

  if (!v8 || !v13)
  {
    if (qword_1001560B8 != -1)
    {
      sub_1000F2CB4();
    }

    v21 = qword_1001560C0;
    if (os_log_type_enabled(qword_1001560C0, OS_LOG_TYPE_ERROR))
    {
      v22 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v38 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "failed to get SLHs from data store: %@", buf, 0xCu);
    }
  }

  if ([*(a1 + 32) forwards])
  {
    if ([v8 consistencyVerified] == 2)
    {
      v23 = [v8 revision];
      v24 = [*(a1 + 32) startRevision];
      v25 = [v24 longLongValue];

      if (v23 == v25)
      {
        [*(a1 + 32) setResult:*(*(*(a1 + 64) + 8) + 24) treeHead:v8 error:*(*(*(a1 + 56) + 8) + 40)];
      }
    }
  }

  if ([v8 consistencyVerified] == 1)
  {
    [*(a1 + 32) setResult:*(*(*(a1 + 64) + 8) + 24) treeHead:v13 error:*(*(*(a1 + 56) + 8) + 40)];
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    [*(a1 + 32) checkSplitsFor:v13];
  }

  v26 = [*(a1 + 32) dataStore];
  v27 = *(*(a1 + 56) + 8);
  v32 = *(v27 + 40);
  v28 = [v26 persistWithError:&v32];
  objc_storeStrong((v27 + 40), v32);

  if ((v28 & 1) == 0)
  {
    if (qword_1001560B8 != -1)
    {
      sub_1000F2CDC();
    }

    v29 = qword_1001560C0;
    if (os_log_type_enabled(qword_1001560C0, OS_LOG_TYPE_ERROR))
    {
      v30 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v38 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "failed to save consistency results: %@", buf, 0xCu);
    }

    v31 = [*(a1 + 32) dataStore];
    [v31 reportCoreDataPersistEventForLocation:@"verifyConsistency" underlyingError:*(*(*(a1 + 56) + 8) + 40)];
  }
}

void sub_10000F984(id a1)
{
  qword_1001560C0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000F9C8(id a1)
{
  qword_1001560C0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100010028(id a1)
{
  qword_1001560D0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001006C(id a1)
{
  qword_1001560D0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001042C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v17 = 0;
  v3 = [v2 createManagedObjectWithError:&v17];
  v4 = v17;
  [v3 getUnsigned:"signatureVerified"];
  [v3 setUnsigned:"signatureVerified" value:*(a1 + 40)];
  [v3 setGossip:{objc_msgSend(*(a1 + 32), "gossip")}];
  if (!*(a1 + 40))
  {
    v5 = [*(a1 + 32) dataStore];
    v6 = [v5 createSignedTreeHeadFailure];

    v7 = *(a1 + 48);
    if (v7 && *v7)
    {
      v8 = [*v7 code];
    }

    else
    {
      v8 = -120;
    }

    [v6 setErrorCode:v8];
    v9 = *(a1 + 48);
    if (v9 && *v9)
    {
      v10 = [*v9 domain];
      [v6 setErrorDomain:v10];
    }

    else
    {
      [v6 setErrorDomain:kTransparencyErrorUnknown];
    }

    [v6 setSth:v3];
    [v6 setVerificationType:0];
  }

  v11 = [*(a1 + 32) dataStore];
  v16 = v4;
  v12 = [v11 persistWithError:&v16];
  v13 = v16;

  if ((v12 & 1) == 0)
  {
    if (qword_1001560C8 != -1)
    {
      sub_1000F2D40();
    }

    v14 = qword_1001560D0;
    if (os_log_type_enabled(qword_1001560D0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "failed to save signature result for STH: %@", buf, 0xCu);
    }

    v15 = [*(a1 + 32) dataStore];
    [v15 reportCoreDataPersistEventForLocation:@"verifySTHSignature" underlyingError:v13];
  }
}

void sub_100010664(id a1)
{
  qword_1001560D0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_1000107DC(uint64_t a1, uint64_t *a2)
{
  v4 = [*(a1 + 32) logHead];
  v5 = [(TransparencyGPBMessage *)LogHead parseFromData:v4 error:a2];

  if (![*(a1 + 32) hasSignature] || (objc_msgSend(*(a1 + 32), "signature"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v37 = -27;
    goto LABEL_24;
  }

  v7 = [*(a1 + 32) logHead];
  if (!v7 || (v8 = v7, [*(a1 + 32) logHead], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v8, !v10))
  {
    v37 = -26;
    goto LABEL_24;
  }

  if (!v5)
  {
    v37 = -208;
    goto LABEL_24;
  }

  v11 = [*(a1 + 32) signature];
  v12 = [v11 signature];
  if (!v12)
  {
    v37 = -46;
LABEL_36:

    goto LABEL_24;
  }

  v13 = v12;
  v14 = [*(a1 + 32) signature];
  v15 = [v14 signature];
  v16 = [v15 length];

  if (!v16)
  {
    v37 = -46;
    goto LABEL_24;
  }

  v11 = [*(a1 + 32) signature];
  v17 = [v11 signingKeySpkihash];
  if (!v17)
  {
    v37 = -47;
    goto LABEL_36;
  }

  v18 = v17;
  v19 = [*(a1 + 32) signature];
  v20 = [v19 signingKeySpkihash];
  v21 = [v20 length];

  if (v21)
  {
    v42 = [*(a1 + 32) verifier];
    v22 = [*(a1 + 32) logHead];
    v43 = [*(a1 + 32) signature];
    v23 = [v43 signature];
    v24 = [*(a1 + 32) signature];
    v25 = [v24 signingKeySpkihash];
    v26 = [*(a1 + 32) signature];
    v44 = 0;
    v27 = [v42 verifyMessage:v22 signature:v23 spkiHash:v25 algorithm:+[TransparencySignatureVerifier secKeyAlgorithmForProtoAlgorithm:](TransparencySignatureVerifier error:{"secKeyAlgorithmForProtoAlgorithm:", objc_msgSend(v26, "algorithm")), &v44}];
    v28 = v44;

    v29 = v27;
    v30 = [TransparencyError hasUnknownSPKIHashError:v28];
    if (v30)
    {
      v29 = 2;
    }

    if (a2 && v28)
    {
      v31 = v28;
      *a2 = v28;
    }

    if (![*(a1 + 32) gossip] || v29)
    {
      [*(a1 + 32) storeSignatureResult:v29 signatureError:a2];
      if (((v30 ^ 1) & v27 & 1) == 0)
      {
        if (a2)
        {
          *a2 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-139 underlyingError:*a2 description:?];
        }

        if (qword_1001560C8 != -1)
        {
          sub_1000F2D68();
        }

        v40 = qword_1001560D0;
        if (os_log_type_enabled(qword_1001560D0, OS_LOG_TYPE_ERROR))
        {
          if (a2)
          {
            v41 = *a2;
          }

          else
          {
            v41 = 0;
          }

          *buf = 138412290;
          v46 = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Signed log head signature verification failed: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (qword_1001560C8 != -1)
      {
        sub_1000F2D90();
      }

      v32 = qword_1001560D0;
      if (os_log_type_enabled(qword_1001560D0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "gossiped signed log head failed signature validation, will not store result", buf, 2u);
      }

      v33 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-139 underlyingError:*a2 description:?];
      v34 = [TransparencyAnalytics formatEventName:@"GossipSignatureVerificationFailed" application:kKTApplicationIdentifierTLT];
      v35 = +[TransparencyAnalytics logger];
      [v35 logResultForEvent:v34 hardFailure:1 result:v33];

      v36 = v33;
      *a2 = v33;
    }

    goto LABEL_31;
  }

  v37 = -47;
LABEL_24:
  if (a2)
  {
    *a2 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v37 underlyingError:*a2 description:@"SLH missing data required for verification"];
  }

  if (qword_1001560C8 != -1)
  {
    sub_1000F2DB8();
  }

  v38 = qword_1001560D0;
  if (os_log_type_enabled(qword_1001560D0, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v46 = v37;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "SLH missing data required for verification: %ld", buf, 0xCu);
  }

  v29 = 0;
LABEL_31:

  return v29;
}

void sub_100010D54(id a1)
{
  qword_1001560D0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100010D98(id a1)
{
  qword_1001560D0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100010DDC(id a1)
{
  qword_1001560D0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void *MilestoneRootsRequest_Version_RawValue(uint64_t a1)
{
  v2 = [+[MilestoneRootsRequest descriptor](MilestoneRootsRequest "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetMilestoneRootsRequest_Version_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[MilestoneRootsRequest descriptor](MilestoneRootsRequest "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void *MilestoneRootsResponse_Status_RawValue(uint64_t a1)
{
  v2 = [+[MilestoneRootsResponse descriptor](MilestoneRootsResponse "descriptor")];

  return sub_1000EF20C(a1, v2);
}

void *SetMilestoneRootsResponse_Status_RawValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [+[MilestoneRootsResponse descriptor](MilestoneRootsResponse "descriptor")];

  return sub_1000EF210(a1, v4, v2);
}

void sub_1000125C0(id a1)
{
  qword_1001560F8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100012604(id a1)
{
  qword_1001560F8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_10001277C(uint64_t a1, uint64_t *a2)
{
  v4 = [*(a1 + 32) mapHead];
  v5 = [(TransparencyGPBMessage *)MapHead parseFromData:v4 error:a2];

  if (![*(a1 + 32) hasSignature] || (objc_msgSend(*(a1 + 32), "signature"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v41 = -22;
    goto LABEL_36;
  }

  v7 = [*(a1 + 32) mapHead];
  if (!v7 || (v8 = v7, [*(a1 + 32) mapHead], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v8, !v10))
  {
    v41 = -21;
    goto LABEL_36;
  }

  v11 = [*(a1 + 32) signature];
  v12 = [v11 signature];
  if (!v12)
  {
    v41 = -51;
LABEL_35:

    goto LABEL_36;
  }

  v13 = v12;
  v14 = [*(a1 + 32) signature];
  v15 = [v14 signature];
  v16 = [v15 length];

  if (!v16)
  {
    v41 = -51;
    goto LABEL_36;
  }

  v11 = [*(a1 + 32) signature];
  v17 = [v11 signingKeySpkihash];
  if (!v17)
  {
    v41 = -52;
    goto LABEL_35;
  }

  v18 = v17;
  v19 = [*(a1 + 32) signature];
  v20 = [v19 signingKeySpkihash];
  v21 = [v20 length];

  if (v21)
  {
    if (v5)
    {
      v22 = [v5 mapHeadHash];
      if (v22 && (v23 = v22, [v5 mapHeadHash], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "length"), v24, v23, v25))
      {
        if ([v5 application] && objc_msgSend(v5, "application"))
        {
          if ([v5 hasChangeLogHead] && (objc_msgSend(v5, "changeLogHead"), v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
          {
            if ([v5 timestampMs])
            {
              v27 = [*(a1 + 32) verifier];
              v28 = [*(a1 + 32) mapHead];
              v44 = [*(a1 + 32) signature];
              v29 = [v44 signature];
              v30 = [*(a1 + 32) signature];
              v31 = [v30 signingKeySpkihash];
              v32 = [*(a1 + 32) signature];
              v45 = 0;
              v33 = v28;
              v34 = [v27 verifyMessage:v28 signature:v29 spkiHash:v31 algorithm:+[TransparencySignatureVerifier secKeyAlgorithmForProtoAlgorithm:](TransparencySignatureVerifier error:{"secKeyAlgorithmForProtoAlgorithm:", objc_msgSend(v32, "algorithm")), &v45}];
              v35 = v45;

              v36 = v34;
              v37 = [TransparencyError hasUnknownSPKIHashError:v35];
              if (v37)
              {
                v36 = 2;
              }

              if (a2 && v35)
              {
                v38 = v35;
                *a2 = v35;
              }

              if (((v37 ^ 1) & v34 & 1) == 0)
              {
                if (a2)
                {
                  *a2 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-138 underlyingError:*a2 description:?];
                }

                if (qword_1001560F0 != -1)
                {
                  sub_1000F2E08();
                }

                v39 = qword_1001560F8;
                if (os_log_type_enabled(qword_1001560F8, OS_LOG_TYPE_ERROR))
                {
                  if (a2)
                  {
                    v40 = *a2;
                  }

                  else
                  {
                    v40 = 0;
                  }

                  *buf = 138412290;
                  v47 = v40;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "SMH signature verification failed: %@", buf, 0xCu);
                }
              }

              goto LABEL_43;
            }

            v41 = -227;
          }

          else
          {
            v41 = -25;
          }
        }

        else
        {
          v41 = -24;
        }
      }

      else
      {
        v41 = -23;
      }
    }

    else
    {
      v41 = -207;
    }
  }

  else
  {
    v41 = -52;
  }

LABEL_36:
  if (a2)
  {
    *a2 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v41 underlyingError:*a2 description:@"SMH missing data required for verification"];
  }

  if (qword_1001560F0 != -1)
  {
    sub_1000F2E30();
  }

  v42 = qword_1001560F8;
  if (os_log_type_enabled(qword_1001560F8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v47 = v41;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "SMH missing data required for verification: %ld", buf, 0xCu);
  }

  v36 = 0;
LABEL_43:

  return v36;
}

void sub_100012C88(id a1)
{
  qword_1001560F8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100012CCC(id a1)
{
  qword_1001560F8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100012DCC(uint64_t a1)
{
  v2 = [*(a1 + 32) copyManagedObject:0];
  if (v2)
  {
    v3 = [*(a1 + 32) dataStore];
    [v3 onMocSetMapHead:v2 mmdResult:*(a1 + 48) mmdError:*(a1 + 40)];

    v4 = [*(a1 + 32) dataStore];
    v9 = 0;
    v5 = [v4 persistWithError:&v9];
    v6 = v9;

    if ((v5 & 1) == 0)
    {
      if (qword_1001560F0 != -1)
      {
        sub_1000F2E44();
      }

      v7 = qword_1001560F8;
      if (os_log_type_enabled(qword_1001560F8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "failed to save inclusion state for map head: %@", buf, 0xCu);
      }

      v8 = [*(a1 + 32) dataStore];
      [v8 reportCoreDataPersistEventForLocation:@"mapHeadMMDState" underlyingError:v6];
    }
  }
}

void sub_100012F28(id a1)
{
  qword_1001560F8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_100013100(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) mapHead];
  v5 = [(TransparencyGPBMessage *)MapHead parseFromData:v4 error:a2];

  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(a1 + 40)];
  [v6 timeIntervalSince1970];
  v8 = (v7 * 1000.0);

  v9 = [v5 timestampMs];
  if (v9 + kKTMaximumMergeDelayMs >= v8)
  {
    if (qword_1001560F0 != -1)
    {
      sub_1000F2E6C();
    }

    v15 = qword_1001560F8;
    if (os_log_type_enabled(qword_1001560F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "SMH MMD verified", buf, 2u);
    }

    v16 = *(a1 + 32);
    v14 = 1;
    [v16 setMMDVerifiedForMapHead:1 mmdError:0];
  }

  else
  {
    if (qword_1001560F0 != -1)
    {
      sub_1000F2E80();
    }

    v10 = qword_1001560F8;
    if (os_log_type_enabled(qword_1001560F8, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      *buf = 134217984;
      v19 = [v5 timestampMs];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "SMH timestamp exceeds MMD: %lld", buf, 0xCu);
    }

    v12 = +[TransparencyError errorWithDomain:code:underlyingError:description:](TransparencyError, "errorWithDomain:code:underlyingError:description:", @"TransparencyErrorVerify", -228, *a2, @"SMH timestamp exceeds MMD: %lld", [v5 timestampMs]);
    [*(a1 + 32) setMMDVerifiedForMapHead:0 mmdError:v12];
    if (v12)
    {
      v13 = v12;
      *a2 = v12;
    }

    v14 = 0;
  }

  return v14;
}

void sub_100013344(id a1)
{
  qword_1001560F8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100013388(id a1)
{
  qword_1001560F8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001370C(id a1)
{
  qword_100156108 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100013750(id a1)
{
  qword_100156108 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100013A00(id a1)
{
  qword_100156108 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100013CF4(id a1)
{
  qword_100156108 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100013D38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (qword_100156100 != -1)
    {
      sub_1000F2EF8();
    }

    v7 = qword_100156108;
    if (os_log_type_enabled(qword_100156108, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get PCC environment, defaulting to Carry: %@", &v8, 0xCu);
    }
  }

  [*(a1 + 32) determineATEnvironmentFromPCCEnvironment:v5 completion:*(a1 + 40)];
}

void sub_100013E24(id a1)
{
  qword_100156108 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000148AC(id a1)
{
  qword_100156118 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000148F0(id a1)
{
  qword_100156118 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100014B34(id a1)
{
  qword_100156118 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000153FC(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100015440(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001558C(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000155D0(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000158A8(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000158EC(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100015930(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100015B28(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100016474(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000164B8(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001688C(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000168D0(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100016CE8(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100016D2C(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100016D70(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100016DB4(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100017304(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100017348(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001738C(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000173D0(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000175E0(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100017730(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100017A28(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v6 = *(a1 + 32);
    v7 = 0;
    [v6 configureFromNetworkBagData:a2 error:&v7];
    v5 = v7;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100017D68(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100017DAC(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100017DF0(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100017E34(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100018060(id a1)
{
  qword_100156128 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000186BC(id a1)
{
  qword_100156138 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000187F4(id a1)
{
  qword_100156148 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100018A78(id a1)
{
  qword_100156148 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100018ABC(id a1)
{
  qword_100156148 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100018B00(id a1)
{
  qword_100156148 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_100018E50(id a1)
{
  qword_100156148 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001908C(id a1)
{
  qword_100156148 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000190D0(id a1)
{
  qword_100156148 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001AA38(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 40) objectAtColumn:a2];
  v6 = v4;
  if (v4)
  {
    [*(a1 + 32) setObject:v4 atIndexedSubscript:a2];
  }

  else
  {
    v5 = +[NSNull null];
    [*(a1 + 32) setObject:v5 atIndexedSubscript:a2];
  }
}

void sub_10001AB90(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectAtColumn:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_10001B5D8(id a1)
{
  qword_100156158 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001B61C(id a1)
{
  qword_100156158 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001B738(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13 = 0;
  v3 = [v2 createManagedObjectWithError:&v13];
  v4 = v13;
  if (v3)
  {
    v5 = [*(a1 + 32) dataStore];
    [v5 onMocSetMapHead:v3 signatureResult:*(a1 + 48) signatureError:*(a1 + 40)];

    v6 = [*(a1 + 32) dataStore];
    v12 = v4;
    v7 = [v6 persistWithError:&v12];
    v8 = v12;

    if ((v7 & 1) == 0)
    {
      if (qword_100156150 != -1)
      {
        sub_1000F32F4();
      }

      v9 = qword_100156158;
      if (os_log_type_enabled(qword_100156158, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed persist SMH signature failure: %@", buf, 0xCu);
      }

      v10 = [*(a1 + 32) dataStore];
      [v10 reportCoreDataPersistEventForLocation:@"mapHeadSignature" underlyingError:v8];
    }
  }

  else
  {
    if (qword_100156150 != -1)
    {
      sub_1000F331C();
    }

    v11 = qword_100156158;
    if (os_log_type_enabled(qword_100156158, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "failed to create SMH object: %@", buf, 0xCu);
    }

    v8 = v4;
  }
}

void sub_10001B918(id a1)
{
  qword_100156158 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001B95C(id a1)
{
  qword_100156158 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10001BB74(id a1)
{
  qword_100156158 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_10001BC40()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  sub_10001BC90(v1, *(v0 + 136));
  return v1;
}

uint64_t sub_10001BC90(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001BCA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 128);
  v6 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return sub_10001BCF4(v5, v6);
}

uint64_t sub_10001BCF4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001BD98(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
}

uint64_t sub_10001BE3C()
{
  v0 = swift_allocObject();
  sub_10001BE74();
  return v0;
}

void *sub_10001BE74()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v15 = *(v2 - 8);
  v16 = v2;
  __chkstk_darwin(v2);
  v14 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v13 - 8);
  __chkstk_darwin(v13);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  swift_defaultActor_initialize();
  v0[16] = 0;
  v0[17] = 0;
  v0[18] = sub_100024014(_swiftEmptyArrayStorage);
  sub_1000241FC();
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100024820(&qword_1001525E8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100024248(&qword_1001525F0, &qword_100103160);
  sub_100024290();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  v0[14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v14;
  Logger.init()();
  (*(v15 + 32))(v1 + OBJC_IVAR____TtC15swtransparencyd26NetworkReachabilityMonitor_logger, v9, v16);
  v10 = nw_path_monitor_create();
  v1[15] = v10;
  aBlock[4] = sub_10002433C;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001C960;
  aBlock[3] = &unk_1001332D8;
  v11 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  nw_path_monitor_set_update_handler(v10, v11);
  _Block_release(v11);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10001C218(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;
  v8[5] = a1;

  swift_unknownObjectRetain();
  sub_10001C660(0, 0, v6, &unk_100103478, v8);
}

uint64_t sub_10001C330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_100024248(&qword_100152F00, &qword_1001042C0);
  v5[4] = swift_task_alloc();

  return _swift_task_switch(sub_10001C3CC, 0, 0);
}

uint64_t sub_10001C3CC()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v8 = (*(*v2 + 184) + **(*v2 + 184));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_10001C538;
  v6 = v0[3];
  v5 = v0[4];

  return v8(v6, v5);
}

uint64_t sub_10001C538()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_10002533C(v1, &qword_100152F00, &qword_1001042C0);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001C660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100025834(a3, v25 - v10, &unk_100152620, &unk_1001031E0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10002533C(v11, &unk_100152620, &unk_1001031E0);
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
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10002533C(a3, &unk_100152620, &unk_1001031E0);

      return v23;
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

  sub_10002533C(a3, &unk_100152620, &unk_1001031E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10001C960(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10001C9C0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_10001C9E4, v2, 0);
}

uint64_t sub_10001C9E4()
{
  sub_100024248(&qword_100152600, &qword_100103170);
  OS_dispatch_queue.sync<A>(execute:)();
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v1)
  {
    v3 = *(v0 + 24);
    v4 = swift_allocObject();
    *(v0 + 56) = v4;
    *(v4 + 16) = v1;
    *(v4 + 24) = v3;
    v5 = nw_path_get_status(v2) == nw_path_status_satisfied;

    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_10001CBA4;
    v7 = *(v0 + 40);

    return sub_100024428(v5, v7);
  }

  else
  {
    nw_path_get_status(*(v0 + 32));
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10001CBA4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);

  sub_10001BCF4(&unk_100103180, v1);

  return _swift_task_switch(sub_10001CCE4, v2, 0);
}

uint64_t sub_10001CCE4()
{
  sub_10001BCF4(&unk_100103180, *(v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001CD58(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int *a4)
{
  v6 = *a2;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1000258C8;

  return v9(v6, a3);
}

uint64_t sub_10001CE58(char a1, uint64_t a2, int *a3)
{
  *(v3 + 24) = a1;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10001CF5C;

  return v6();
}

uint64_t sub_10001CF5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001D050(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 112);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100024504;
  *(v8 + 24) = v7;
  v11[4] = sub_100024570;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10001D1C0;
  v11[3] = &unk_100133378;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001D1E8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for URL();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v2[12] = *(v4 + 64);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10001D2B0, v1, 0);
}

uint64_t sub_10001D2B0()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];
  v5 = *(v4 + 112);
  (*(v3 + 16))(v1, v0[8], v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10002459C;
  *(v8 + 24) = v7;
  v0[6] = sub_1000258CC;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10001D1C0;
  v0[5] = &unk_1001333F0;
  v9 = _Block_copy(v0 + 2);

  dispatch_sync(v5, v9);
  _Block_release(v9);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }

  return result;
}

uint64_t sub_10001D494(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  if (*((*(*a1 + 152))(v7) + 16))
  {
    sub_1000222CC(a2);
    v9 = v8;

    if (v9)
    {
      return result;
    }
  }

  else
  {
  }

  URL.absoluteString.getter();
  v11 = String.utf8CString.getter();

  url = nw_endpoint_create_url((v11 + 32));

  v13 = nw_parameters_create();
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  if (evaluator_for_endpoint)
  {
    v15 = evaluator_for_endpoint;
    v29 = v13;
    v16 = *(v5 + 16);
    v16(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
    v17 = *a1;
    v26 = a2;
    v18 = *(v17 + 168);
    v25 = v4;
    swift_unknownObjectRetain();
    v28 = url;
    v19 = v18(aBlock);
    sub_10001D7D4(v15, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19(aBlock, 0);
    v27 = a1[14];
    v20 = v25;
    v16(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v25);
    v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    (*(v5 + 32))(v22 + v21, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
    aBlock[4] = sub_100025460;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C960;
    aBlock[3] = &unk_1001335D0;
    v23 = _Block_copy(aBlock);

    nw_path_evaluator_set_update_handler();
    _Block_release(v23);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_10001D7D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10002340C(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for URL();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1000222CC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_100023914();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for URL();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);
      swift_unknownObjectRelease();
      sub_100022DCC(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for URL();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_10001D994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100024248(&unk_100152620, &unk_1001031E0);
  result = __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  if (a1)
  {
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    (*(v7 + 16))(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v15 = sub_100024820(&qword_100152638, type metadata accessor for NetworkReachabilityMonitor, &unk_100103218);
    v16 = (*(v7 + 80) + 48) & ~*(v7 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = a2;
    *(v17 + 3) = v15;
    *(v17 + 4) = a1;
    *(v17 + 5) = a2;
    (*(v7 + 32))(&v17[v16], v9, v6);
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_10001C660(0, 0, v13, &unk_100103450, v17);
  }

  return result;
}

uint64_t sub_10001DBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100024248(&qword_100152F00, &qword_1001042C0);
  v6[5] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[6] = v8;
  v6[7] = *(v8 - 8);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10001DCC8, a5, 0);
}

uint64_t sub_10001DCC8()
{
  v33 = v0;
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  status = nw_path_get_status(*(v0 + 16));
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 48);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v13 = 136315394;
    v28 = status;
    v29 = v8;
    v14 = v6;
    v15 = URL.absoluteString.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_100021D24(v18, v17, &v32);

    *(v13 + 4) = v19;
    *(v13 + 12) = 1024;
    *(v13 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v7, v29, "network url changed %s to %u", v13, 0x12u);
    sub_100024E14(v30);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = *(v0 + 48);
  v21 = *(v0 + 56);
  v22 = *(v0 + 40);
  v23 = *(v0 + 24);
  v6(v22, *(v0 + 32), v20);
  (*(v21 + 56))(v22, 0, 1, v20);
  v31 = (*(*v23 + 184) + **(*v23 + 184));
  v24 = swift_task_alloc();
  *(v0 + 72) = v24;
  *v24 = v0;
  v24[1] = sub_10001DFAC;
  v25 = *(v0 + 40);
  v26 = *(v0 + 16);

  return v31(v26, v25);
}

uint64_t sub_10001DFAC()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  sub_10002533C(v1, &qword_100152F00, &qword_1001042C0);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001E110()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  nw_path_monitor_set_queue(v2, *(v1 + 112));
  nw_path_monitor_start(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001E1A0()
{
  v1 = v0[8];
  nw_path_monitor_cancel(*(v1 + 120));
  v2 = *(v1 + 112);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100024610;
  *(v3 + 24) = v1;
  v0[6] = sub_1000258CC;
  v0[7] = v3;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10001D1C0;
  v0[5] = &unk_100133440;
  v4 = _Block_copy(v0 + 2);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }

  return result;
}

uint64_t sub_10001E314(uint64_t a1)
{
  v2 = sub_100024248(&qword_1001529A8, &qword_100103438);
  v3 = __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = (*(*a1 + 152))(v3);
  v7 = v6;
  v8 = v6 + 64;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;

  for (i = 0; v11; result = sub_10002533C(v5, &qword_1001529A8, &qword_100103438))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(v7 + 48);
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 16))(v5, v18 + *(*(v19 - 8) + 72) * v17, v19);
    *&v5[*(v2 + 48)] = *(*(v7 + 56) + 8 * v17);
    swift_unknownObjectRetain();
    nw_path_evaluator_cancel();
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v20 = sub_100024014(_swiftEmptyArrayStorage);
      return (*(*a1 + 160))(v20);
    }

    v11 = *(v8 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001E50C()
{
  swift_unknownObjectRelease();
  sub_10001BCF4(*(v0 + 128), *(v0 + 136));

  v1 = OBJC_IVAR____TtC15swtransparencyd26NetworkReachabilityMonitor_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10001E594()
{
  swift_unknownObjectRelease();
  sub_10001BCF4(*(v0 + 128), *(v0 + 136));

  v1 = OBJC_IVAR____TtC15swtransparencyd26NetworkReachabilityMonitor_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10001E62C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10001E650, v2, 0);
}

uint64_t sub_10001E650()
{
  (*(**(v0 + 32) + 192))(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001E6D4(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000258C8;

  return v6(a1);
}

uint64_t sub_10001E7F4()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000258C8;

  return v4();
}

uint64_t sub_10001E904()
{
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000258C8;

  return v4();
}

uint64_t sub_10001EA48(char a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t sub_10001EB20(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t sub_10001EBFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_10001EC5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10001ECD0()
{
  v1 = (v0 + OBJC_IVAR____TtC15swtransparencyd19ReachabilityTracker_handler);
  swift_beginAccess();
  v2 = *v1;
  sub_10001BC90(*v1, v1[1]);
  return v2;
}

uint64_t sub_10001ED2C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15swtransparencyd19ReachabilityTracker_handler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001BCF4(v6, v7);
}

uint64_t sub_10001EDEC()
{
  type metadata accessor for NetworkReachabilityMonitor(0);
  v0 = swift_allocObject();
  sub_10001BE74();
  sub_100024820(&qword_100152608, type metadata accessor for NetworkReachabilityMonitor, &unk_100103260);
  return v0;
}

uint64_t sub_10001EE60(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_100024868(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_10001EEBC(uint64_t a1, uint64_t a2)
{
  v2 = sub_100024868(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_10001EEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = (*a4 + 176) & 0xFFFFFFFFFFFFLL | 0xE7FB000000000000;
  v4[3] = *(*a4 + 176);
  v4[4] = v5;
  return _swift_task_switch(sub_10001EF2C, a4, 0);
}

uint64_t sub_10001EF2C()
{
  *(v0 + 40) = (*(v0 + 24))();
  *(v0 + 48) = v1;

  return _swift_task_switch(sub_10001EF9C, 0, 0);
}

uint64_t sub_10001EF9C()
{
  v8 = v0[6];
  ObjectType = swift_getObjectType();
  v2 = *(v8 + 16);

  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_10001F0E4;
  v4 = v0[6];
  v5 = v0[2];

  return v7(&unk_100103428, v5, ObjectType, v4);
}

uint64_t sub_10001F0E4()
{
  v1 = *(*v0 + 16);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10001F218, v1, 0);
}

uint64_t sub_10001F218()
{
  v1 = (*(v0 + 24))();
  v3 = v2;
  *(v0 + 64) = v1;
  ObjectType = swift_getObjectType();
  v7 = (*(v3 + 32) + **(v3 + 32));
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_10001F348;

  return v7(ObjectType, v3);
}

uint64_t sub_10001F348()
{
  v3 = *v0;

  swift_unknownObjectRelease();
  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001F458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = (*(*a3 + 264) + **(*a3 + 264));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1000258C8;

  return v8(a1, a2);
}

uint64_t sub_10001F58C()
{
  v1[8] = v0;
  v1[9] = sub_100024248(&qword_100152610, &qword_1001031A8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10001F650, v0, 0);
}

uint64_t sub_10001F650()
{
  v39 = *(**(v0 + 64) + 152);
  v1 = v39();
  v2 = *(v1 + 16);
  if (v2)
  {
    v38 = v0 + 16;
    v41 = *(v0 + 72);
    do
    {
      *(v0 + 48) = 0;
      swift_stdlib_random();
      v6 = *(v0 + 48);
      v7 = (v6 * v2) >> 64;
      if (v2 > v6 * v2)
      {
        v8 = -v2 % v2;
        if (v8 > v6 * v2)
        {
          do
          {
            *(v0 + 56) = 0;
            swift_stdlib_random();
            v9 = *(v0 + 56);
          }

          while (v8 > v9 * v2);
          v7 = (v9 * v2) >> 64;
        }
      }

      v10 = 0;
      v11 = 1 << *(v1 + 32);
      v12 = (v11 + 63) >> 6;
      v13 = 64;
      while (1)
      {
        v14 = *(v1 + v13);
        if (v14)
        {
          break;
        }

        v10 -= 64;
        v13 += 8;
        if (!--v12)
        {
          goto LABEL_14;
        }
      }

      v11 = __clz(__rbit64(v14)) - v10;
LABEL_14:
      v15 = *(v0 + 96);
      v40 = *(v0 + 104);
      v16 = *(v0 + 80);
      v17 = *(v0 + 88);
      v18 = *(v0 + 64);
      v19 = sub_100023E14(v11, *(v1 + 36), 0, v7, v1);
      v21 = v20;
      v23 = v22;
      v24 = sub_100023F44(v17, v19, v20, v22 & 1, v1);

      sub_100024A68(v19, v21, v23 & 1);
      v25 = type metadata accessor for UUID();
      v26 = *(v25 - 8);
      (*(v26 + 32))(v15, v17, v25);
      *(v15 + *(v41 + 48)) = v24;
      sub_100024CB4(v15, v40, &qword_100152610, &qword_1001031A8);
      sub_100025834(v40, v16, &qword_100152610, &qword_1001031A8);

      v27 = (*(*v18 + 168))(v38);
      v29 = v28;
      v30 = sub_1000223A0(v16);
      if (v31)
      {
        v32 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = *v29;
        *v29 = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100023B94();
        }

        v34 = *(v0 + 80);
        v35 = *(v26 + 8);
        v35(*(v42 + 48) + *(v26 + 72) * v32, v25);

        sub_1000230EC(v32, v42);
        v35(v34, v25);
        *v29 = v42;
      }

      else
      {
        (*(v26 + 8))(*(v0 + 80), v25);
      }

      v3 = *(v0 + 104);
      v4 = v27(v38, 0);
      (*(**(v3 + *(v41 + 48)) + 176))(v4);
      v5 = sub_10002533C(v3, &qword_100152610, &qword_1001031A8);
      v1 = (v39)(v5);
      v2 = *(v1 + 16);
    }

    while (v2);
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_10001FA5C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10001FA80, v2, 0);
}

uint64_t sub_10001FA80()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(**(v0 + 32) + 208);

  v3(v2, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001FB24(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10001FB44, v1, 0);
}

uint64_t sub_10001FB44()
{
  v1 = (*(**(v0 + 24) + 176))();
  v3 = v2;
  *(v0 + 32) = v1;
  ObjectType = swift_getObjectType();
  v8 = (*(v3 + 24) + **(v3 + 24));
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_10001FC98;
  v6 = *(v0 + 16);

  return v8(v6, ObjectType, v3);
}

uint64_t sub_10001FC98()
{
  v3 = *v0;

  swift_unknownObjectRelease();
  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001FDA8()
{
  v1[6] = v0;
  v2 = type metadata accessor for UUID();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001FE68, v0, 0);
}

uint64_t sub_10001FE68()
{
  if ((*(*v0[6] + 128))())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[9];
    v4 = v0[6];
    UUID.init()();
    type metadata accessor for ContinuationStore(0);
    v5 = sub_10008CFD4();
    v0[10] = v5;
    v6 = *(*v4 + 168);

    v7 = v6(v0 + 2);
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v9;
    *v9 = 0x8000000000000000;
    sub_1000235D8(v5, v3, isUniquelyReferenced_nonNull_native);
    *v9 = v12;
    v7(v0 + 2, 0);
    sub_100024820(&qword_100152618, type metadata accessor for ReachabilityTracker, &unk_10010327C);
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_1000200AC;

    return withTaskCancellationHandler<A>(operation:onCancel:isolation:)();
  }
}

uint64_t sub_1000200AC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100020268;
  }

  else
  {
    v4 = sub_1000201D8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000201D8()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100020268()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000202F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100020318, 0, 0);
}

uint64_t sub_100020318()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1000203F0;
  v2 = v0[2];
  v3 = v0[3];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000010, 0x800000010010A3E0, sub_100025170, v3, &type metadata for () + 1);
}

uint64_t sub_1000203F0()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100020524, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10002053C(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 96) = a1;
  sub_100024248(&unk_100152620, &unk_1001031E0);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = sub_100024248(&qword_100152610, &qword_1001031A8);
  *(v3 + 48) = swift_task_alloc();
  v4 = *(sub_100024248(&qword_100152F00, &qword_1001042C0) - 8);
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 + 64);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10002069C, v2, 0);
}

uint64_t sub_10002069C()
{
  v67 = v0;
  v1 = *(v0 + 96);
  if (v1 == ((*(**(v0 + 24) + 128))() & 1))
  {
    if (*(v0 + 96) != 1 || (v2 = *(v0 + 16), v17 = type metadata accessor for URL(), (*(*(v17 - 8) + 48))(v2, 1, v17) == 1))
    {
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = *(v0 + 96);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v66 = v22;
        *v21 = 136446210;
        if (v20)
        {
          v23 = 7562617;
        }

        else
        {
          v23 = 28526;
        }

        if (v20)
        {
          v24 = 0xE300000000000000;
        }

        else
        {
          v24 = 0xE200000000000000;
        }

        v25 = sub_100021D24(v23, v24, &v66);

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v18, v19, "network notification, but no actual change %{public}s)", v21, 0xCu);
        sub_100024E14(v22);
      }

      goto LABEL_40;
    }

    v3 = 1;
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 96);
  }

  v4 = *(v0 + 88);
  (*(**(v0 + 24) + 136))(v3);
  sub_100025834(v2, v4, &qword_100152F00, &qword_1001042C0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 88);
  if (v7)
  {
    v9 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v10 = 136315394;
    sub_100025834(v8, v9, &qword_100152F00, &qword_1001042C0);
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v9, 1, v11);
    v14 = *(v0 + 80);
    if (v13 == 1)
    {
      sub_10002533C(*(v0 + 80), &qword_100152F00, &qword_1001042C0);
      v15 = 0;
      v16 = 0xE000000000000000;
    }

    else
    {
      v15 = URL.description.getter();
      v16 = v27;
      (*(v12 + 8))(v14, v11);
    }

    v28 = *(v0 + 96);
    sub_10002533C(*(v0 + 88), &qword_100152F00, &qword_1001042C0);
    v29 = sub_100021D24(v15, v16, &v66);

    *(v10 + 4) = v29;
    *(v10 + 12) = 2082;
    if (v28)
    {
      v30 = 7562617;
    }

    else
    {
      v30 = 28526;
    }

    if (v28)
    {
      v31 = 0xE300000000000000;
    }

    else
    {
      v31 = 0xE200000000000000;
    }

    v32 = sub_100021D24(v30, v31, &v66);

    *(v10 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v5, v6, "network change: %s available %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v26 = sub_10002533C(v8, &qword_100152F00, &qword_1001042C0);
  }

  if (*(v0 + 96) != 1)
  {
LABEL_38:
    v52 = (*(**(v0 + 24) + 200))(v26);
    if (v52)
    {
      v54 = v52;
      v55 = v53;
      v56 = *(v0 + 72);
      v57 = *(v0 + 56);
      v58 = *(v0 + 32);
      v59 = *(v0 + 16);
      v60 = *(v0 + 96);
      v61 = type metadata accessor for TaskPriority();
      (*(*(v61 - 8) + 56))(v58, 1, 1, v61);
      sub_100025834(v59, v56, &qword_100152F00, &qword_1001042C0);
      v62 = (*(v57 + 80) + 49) & ~*(v57 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = 0;
      *(v63 + 24) = 0;
      *(v63 + 32) = v54;
      *(v63 + 40) = v55;
      *(v63 + 48) = v60;
      sub_100024CB4(v56, v63 + v62, &qword_100152F00, &qword_1001042C0);
      sub_10001C660(0, 0, v58, &unk_1001031F8, v63);
    }

LABEL_40:

    v64 = *(v0 + 8);

    return v64();
  }

  v65 = *(v0 + 40);
  v33 = (*(**(v0 + 24) + 152))(v26);
  v34 = v33;
  v35 = v33 + 64;
  v36 = -1;
  v37 = -1 << *(v33 + 32);
  if (-v37 < 64)
  {
    v36 = ~(-1 << -v37);
  }

  v38 = v36 & *(v33 + 64);
  v39 = (63 - v37) >> 6;

  for (i = 0; v38; result = sub_10002533C(v43, &qword_100152610, &qword_1001031A8))
  {
    v42 = i;
LABEL_35:
    v43 = *(v0 + 48);
    v44 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v45 = v44 | (v42 << 6);
    v46 = *(v34 + 48);
    v47 = type metadata accessor for UUID();
    (*(*(v47 - 8) + 16))(v43, v46 + *(*(v47 - 8) + 72) * v45, v47);
    v48 = *(*(v34 + 56) + 8 * v45);
    *(v43 + *(v65 + 48)) = v48;
    v49 = *(*v48 + 168);

    v49();
  }

  while (1)
  {
    v42 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v42 >= v39)
    {
      v50 = *(v0 + 24);

      v51 = sub_100024618(_swiftEmptyArrayStorage);
      v26 = (*(*v50 + 160))(v51);
      goto LABEL_38;
    }

    v38 = *(v35 + 8 * v42);
    ++i;
    if (v38)
    {
      i = v42;
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100020E14(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = sub_10001CF5C;

  return v12(a6, a7);
}

uint64_t sub_100020F38()
{
  v1 = v0[2];
  v2 = (*(*v1 + 208))(0, 0);
  v3 = (*(*v1 + 176))(v2);
  v5 = v4;
  v0[3] = v3;
  ObjectType = swift_getObjectType();
  v9 = (*(v5 + 40) + **(v5 + 40));
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_1000210B0;

  return v9(ObjectType, v5);
}

uint64_t sub_1000210B0()
{
  v3 = *v0;

  swift_unknownObjectRelease();
  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000211C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000211E0, v1, 0);
}

uint64_t sub_1000211E0()
{
  v1 = *(v0 + 16);
  (*(**(v0 + 24) + 128))();
  TransparencySWSysdiagnose.Reachability.init(network:)();
  v2 = type metadata accessor for TransparencySWSysdiagnose.Reachability();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

void sub_1000212AC(void *a1)
{
  v2 = [a1 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {

    goto LABEL_12;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
LABEL_12:
    [a1 code];
    return;
  }

  v9 = [a1 underlyingErrors];
  sub_100024248(&qword_100152630, &qword_100103210);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = 0;
  v12 = *(v10 + 16);
  while (1)
  {
    if (v12 == v11)
    {
LABEL_10:

      return;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    v13 = v11 + 1;
    swift_errorRetain();
    v14 = _convertErrorToNSError(_:)();
    sub_1000212AC(v14);
    v16 = v15;

    v11 = v13;
    if (v16)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_100021448()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC15swtransparencyd19ReachabilityTracker_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10001BCF4(*(v0 + OBJC_IVAR____TtC15swtransparencyd19ReachabilityTracker_handler), *(v0 + OBJC_IVAR____TtC15swtransparencyd19ReachabilityTracker_handler + 8));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000214D4()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC15swtransparencyd19ReachabilityTracker_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10001BCF4(*(v0 + OBJC_IVAR____TtC15swtransparencyd19ReachabilityTracker_handler), *(v0 + OBJC_IVAR____TtC15swtransparencyd19ReachabilityTracker_handler + 8));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10002157C(uint64_t a1)
{
  v6 = (*(**v1 + 280) + **(**v1 + 280));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000258C8;

  return v6(a1);
}

uint64_t sub_1000216AC()
{
  v4 = (*(**v0 + 256) + **(**v0 + 256));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001CF5C;

  return v4();
}

uint64_t sub_1000217C8(uint64_t a1)
{
  v6 = (*(**v1 + 248) + **(**v1 + 248));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000258C8;

  return v6(a1);
}

uint64_t sub_1000218EC(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 240) + **(**v2 + 240));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1000258C8;

  return v8(a1, a2);
}

uint64_t sub_100021A18()
{
  v4 = (*(**v0 + 272) + **(**v0 + 272));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000258C8;

  return v4();
}

uint64_t sub_100021B34(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100021C2C;

  return v6(a1);
}

uint64_t sub_100021C2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100021D24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100021DF0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_100025058(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100024E14(v11);
  return v7;
}

unint64_t sub_100021DF0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100021EFC(a5, a6);
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

void *sub_100021EFC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100021F48(a1, a2);
  sub_100022078(&off_1001332B0);
  return v3;
}

void *sub_100021F48(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100022164(v5, 0);
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
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100022164(v10, 0);
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

uint64_t sub_100022078(uint64_t result)
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

  result = sub_1000221D8(result, v11, 1, v3);
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

void *sub_100022164(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100024248(&qword_100152980, &qword_100103FC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000221D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024248(&qword_100152980, &qword_100103FC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_1000222CC(uint64_t a1)
{
  type metadata accessor for URL();
  sub_100024820(&qword_100152A18, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100022474(a1, v2, &type metadata accessor for URL, &qword_100152A20, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_1000223A0(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100024820(&qword_100152990, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100022474(a1, v2, &type metadata accessor for UUID, &qword_100152998, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_100022474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_100024820(v23, v24, v25);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_100022614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100024248(&qword_100152A10, &qword_100103458);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        swift_unknownObjectRetain();
      }

      sub_100024820(&qword_100152A18, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000229F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100024248(&qword_100152988, &qword_100103408);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_100024820(&qword_100152990, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_100022DCC(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for URL();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_100024820(&qword_100152A18, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1000230EC(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_100024820(&qword_100152990, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_10002340C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000222CC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_100023914();
      goto LABEL_7;
    }

    sub_100022614(v17, a3 & 1);
    v22 = sub_1000222CC(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000237A4(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_1000235D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000223A0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_100023B94();
      goto LABEL_7;
    }

    sub_1000229F0(v17, a3 & 1);
    v22 = sub_1000223A0(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10002385C(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1000237A4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for URL();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10002385C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_100023914()
{
  v1 = v0;
  v33 = type metadata accessor for URL();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024248(&qword_100152A10, &qword_100103458);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = swift_unknownObjectRetain();
        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_100023B94()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024248(&qword_100152988, &qword_100103408);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_100023E14(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) == 0)
  {
    if (!a4)
    {
      v16 = result;
      sub_100025194(result, a2, a3 & 1);
      return v16;
    }

    v5 = 0;
    v6 = 1 << *(a5 + 32);
    while ((result & 0x8000000000000000) == 0 && result < v6)
    {
      if (a2 != *(a5 + 36))
      {
        goto LABEL_19;
      }

      v8 = result >> 6;
      v9 = *(a5 + 64 + 8 * (result >> 6));
      if ((v9 & (1 << result)) == 0)
      {
        goto LABEL_19;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 72 + 8 * v8);
        while (v12 < (v6 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      LODWORD(a2) = *(a5 + 36);
      if (v5++ == a4 - 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100023F44(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = *(a5 + 48);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 16))(v6, v7 + *(*(v8 - 8) + 72) * a2, v8);
}

unint64_t sub_100024014(uint64_t a1)
{
  v2 = sub_100024248(&qword_100152A28, &unk_100103480);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100024248(&qword_100152A10, &qword_100103458);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100025834(v9, v5, &qword_100152A28, &unk_100103480);
      result = sub_1000222CC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for URL();
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

unint64_t sub_1000241FC()
{
  result = qword_1001525E0;
  if (!qword_1001525E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001525E0);
  }

  return result;
}

uint64_t sub_100024248(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100024290()
{
  result = qword_1001525F8;
  if (!qword_1001525F8)
  {
    sub_1000242F4(&qword_1001525F0, &qword_100103160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001525F8);
  }

  return result;
}

uint64_t sub_1000242F4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100024344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002435C@<X0>(void *a1@<X8>)
{
  result = (*(*v1 + 128))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = &unk_100103468;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  a1[1] = result;
  return result;
}

uint64_t sub_1000243F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100024428(char a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000258C8;

  return sub_10001CE58(a1, a2, v6);
}

uint64_t sub_100024504()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(*v1 + 136);

  return v4(v2, v3);
}

uint64_t sub_10002459C()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10001D494(v2, v3);
}

unint64_t sub_100024618(uint64_t a1)
{
  v2 = sub_100024248(&qword_1001529A0, &qword_100103430);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100024248(&qword_100152988, &qword_100103408);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100025834(v9, v5, &qword_1001529A0, &qword_100103430);
      result = sub_1000223A0(v5);
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

uint64_t sub_100024820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100024868(uint64_t a1, uint64_t a2)
{
  v5 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v2 + 120) = sub_100024618(_swiftEmptyArrayStorage);
  v12 = (v2 + OBJC_IVAR____TtC15swtransparencyd19ReachabilityTracker_handler);
  *v12 = 0;
  v12[1] = 0;
  *(v2 + 112) = 0;
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  swift_unknownObjectRetain();
  Logger.init()();
  (*(v9 + 32))(v2 + OBJC_IVAR____TtC15swtransparencyd19ReachabilityTracker_log, v11, v8);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;

  sub_10001C660(0, 0, v7, &unk_100103418, v14);

  return v2;
}

uint64_t sub_100024A68(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100024A74(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001CF5C;

  return sub_1000202F8(a1, v1);
}

uint64_t sub_100024B54(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100024B8C()
{
  v1 = *(sub_100024248(&qword_100152F00, &qword_1001042C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 49) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100024CB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100024248(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100024D1C()
{
  v2 = *(sub_100024248(&qword_100152F00, &qword_1001042C0) - 8);
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001CF5C;

  return sub_100020E14(v7, v8, v9, v4, v5, v6, v0 + v3);
}

uint64_t sub_100024E14(void *a1)
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

uint64_t sub_100024E60(uint64_t a1)
{
  result = sub_100024820(&qword_100152638, type metadata accessor for NetworkReachabilityMonitor, &unk_100103218);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100024EC0(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100024F94(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100025058(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000250B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000258C8;

  return sub_100021B34(a1, v4);
}

uint64_t sub_100025194(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1000251B8(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100025200()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000258C8;

  return sub_10001EEF0(v3, v4, v5, v2);
}

uint64_t sub_100025294(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1000258C8;

  return sub_10001F458(a1, a2, v2);
}

uint64_t sub_10002533C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100024248(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10002539C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100025460(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10001D994(a1, v4, v5);
}

uint64_t sub_1000254D4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000255A8()
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000258C8;

  return sub_10001DBC8(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t sub_100025684(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000258C8;

  return sub_10001CD58(a1, a2, a3, v8);
}

uint64_t sub_100025754()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002579C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return sub_10001C330(v4, v5, v6, v2, v3);
}

uint64_t sub_100025834(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100024248(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100025920(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1000259C8()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1000259F0()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_1000259FC()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D140);
  sub_100025AE0(v0, qword_10015D140);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100025A7C()
{
  if (qword_100156300 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D140);
}

uint64_t sub_100025AE0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100025B18@<X0>(uint64_t a1@<X8>)
{
  if (qword_100156300 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D140);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100025BD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  _StringGuts.grow(_:)(40);

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x6F704577656E202CLL;
  v6._object = 0xEC000000203A6863;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x697369766572202CLL;
  v8._object = 0xEC000000203A6E6FLL;
  String.append(_:)(v8);
  if (a4)
  {
    v9 = 0xE100000000000000;
    v10 = 45;
  }

  else
  {
    sub_100025D44();
    v10 = BinaryInteger.description.getter();
    v9 = v11;
  }

  v12 = v9;
  String.append(_:)(*&v10);

  return 0x68636F7045646C6FLL;
}

unint64_t sub_100025D44()
{
  result = qword_100152A90;
  if (!qword_100152A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152A90);
  }

  return result;
}

unint64_t sub_100025DB0(void *a1, unint64_t a2)
{
  if ([a1 hasSlh])
  {
    v4 = [a1 slh];
    if (v4)
    {
      v5 = v4;
      sub_100025ECC();
      v6 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v5];
      v7 = sub_100061B40();
      if (v7 > 0 && v7 > a2)
      {
        sub_100061BFC();

        return a2;
      }
    }
  }

  return 0;
}

unint64_t sub_100025ECC()
{
  result = qword_100152A98;
  if (!qword_100152A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100152A98);
  }

  return result;
}

id sub_100025F18(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100024248(&qword_100152AA0, &qword_100103490);
  __chkstk_darwin(v6 - 8);
  v8 = &v94 - v7;
  v9 = type metadata accessor for KTSWDB.SignedLogHead(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100061A44();
  if (v3)
  {
    return result;
  }

  v120 = result;
  v121 = v14;
  v119 = a3;
  v15 = sub_100061B40();
  v118 = sub_100061B60();
  v117 = sub_100061BFC();
  v110 = sub_100061C1C();
  v109 = v16;
  v17 = a1[4];
  v116 = a1[3];
  sub_100026F6C(a1, v116);
  v18 = (*(v17 + 120))(v120, v121, v15, v118, v117, v116, v17);
  v19 = v18;
  v106 = v15;
  v113 = *(v18 + 16);
  v20 = v109;
  v21 = v110;
  if (v113 == 1)
  {
    *&v125[0] = v110;
    *(&v125[0] + 1) = v109;
    __chkstk_darwin(v110);
    *(&v94 - 2) = v125;
    v23 = v22;
    if (sub_100027698(sub_100027968, (&v94 - 4), v22))
    {

      sub_100026FB0(v110, v109);
    }

    v113 = *(v23 + 16);
    v20 = v109;
    v21 = v110;
    v19 = v23;
  }

  if (!v113)
  {
    sub_100026FB0(v21, v20);
  }

  v100 = 0;
  v24 = 0;
  if (v21)
  {
    v25 = 0;
  }

  else
  {
    v25 = v20 == 0xC000000000000000;
  }

  v26 = !v25;
  v105 = v26;
  v27 = v20 >> 62;
  v28 = __OFSUB__(HIDWORD(v21), v21);
  v102 = v28;
  v101 = HIDWORD(v21) - v21;
  v103 = BYTE6(v20);
  v104 = (v10 + 56);
  v29 = (v19 + 40);
  v112 = a1;
  v108 = v19;
  v107 = v20 >> 62;
  do
  {
    if (v24 >= *(v19 + 16))
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
    }

    v30 = *(v29 - 1);
    v31 = *v29;
    v32 = *v29 >> 62;
    if (v32 == 3)
    {
      if (v30)
      {
        v33 = 0;
      }

      else
      {
        v33 = v31 == 0xC000000000000000;
      }

      v35 = !v33 || v27 < 3;
      if (((v35 | v105) & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_42:
      v36 = 0;
      goto LABEL_45;
    }

    if (v32 > 1)
    {
      if (v32 != 2)
      {
        goto LABEL_42;
      }

      v38 = *(v30 + 16);
      v37 = *(v30 + 24);
      v39 = __OFSUB__(v37, v38);
      v36 = v37 - v38;
      if (v39)
      {
        goto LABEL_102;
      }
    }

    else if (v32)
    {
      LODWORD(v36) = HIDWORD(v30) - v30;
      if (__OFSUB__(HIDWORD(v30), v30))
      {
        goto LABEL_101;
      }

      v36 = v36;
    }

    else
    {
      v36 = BYTE6(v31);
    }

LABEL_45:
    if (v27 > 1)
    {
      if (v27 != 2)
      {
        if (v36)
        {
LABEL_57:
          v116 = v29;
          v115 = v24;
          sub_100027004(v30, v31);
          goto LABEL_58;
        }

        goto LABEL_21;
      }

      v42 = v110[2];
      v41 = v110[3];
      v39 = __OFSUB__(v41, v42);
      v40 = v41 - v42;
      if (v39)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v40 = v103;
      if (v27)
      {
        v40 = v101;
        if (v102)
        {
          goto LABEL_100;
        }
      }
    }

    if (v36 != v40)
    {
      goto LABEL_57;
    }

    if (v36 >= 1)
    {
      v116 = v29;
      v115 = v24;
      if (v32 > 1)
      {
        if (v32 == 2)
        {
          v58 = *(v30 + 16);
          v111 = *(v30 + 24);
          v114 = v30;
          sub_100027004(v30, v31);
          v59 = __DataStorage._bytes.getter();
          v60 = v31;
          v61 = v59;
          v62 = v60;
          if (v59)
          {
            v63 = __DataStorage._offset.getter();
            if (__OFSUB__(v58, v63))
            {
              goto LABEL_105;
            }

            v61 += v58 - v63;
          }

          if (__OFSUB__(v111, v58))
          {
            goto LABEL_104;
          }

          __DataStorage._length.getter();
          v64 = v61;
          v31 = v62;
          goto LABEL_78;
        }

        *(v125 + 6) = 0;
        *&v125[0] = 0;
        sub_100027004(v30, v31);
LABEL_74:
        sub_1000271C4(v125, v110, v109, v122);
        if ((v122[0] & 1) == 0)
        {
          goto LABEL_58;
        }

LABEL_79:
        sub_100026FB0(v30, v31);
      }

      else
      {
        if (!v32)
        {
          *&v125[0] = v30;
          WORD4(v125[0]) = v31;
          BYTE10(v125[0]) = BYTE2(v31);
          BYTE11(v125[0]) = BYTE3(v31);
          BYTE12(v125[0]) = BYTE4(v31);
          BYTE13(v125[0]) = BYTE5(v31);
          sub_100027004(v30, v31);
          goto LABEL_74;
        }

        v66 = v31;
        v111 = (v30 >> 32) - v30;
        if (v30 >> 32 < v30)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          swift_once();
          goto LABEL_95;
        }

        v114 = v30;
        sub_100027004(v30, v31);
        v67 = __DataStorage._bytes.getter();
        if (v67)
        {
          v99 = v67;
          v68 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v68))
          {
            goto LABEL_106;
          }

          v69 = v30 - v68 + v99;
        }

        else
        {
          v69 = 0;
        }

        __DataStorage._length.getter();
        v64 = v69;
        v31 = v66;
LABEL_78:
        sub_1000271C4(v64, v110, v109, v125);
        a1 = v112;
        v30 = v114;
        if (v125[0])
        {
          goto LABEL_79;
        }

LABEL_58:
        sub_100027004(v30, v31);
        v43 = v121;

        v114 = v30;
        v111 = v31;
        sub_10004D84C(v120, v43, v106, v118, v117, v30, v31, &v128);
        v44 = a1;
        v46 = a1[3];
        v45 = a1[4];
        sub_100026F6C(v44, v46);
        (*(v45 + 64))(&v128, v46, v45);
        (*v104)(v8, 0, 1, v9);
        sub_1000275D8(v8, v12);
        v51 = objc_allocWithZone(SignedObject);
        isa = Data._bridgeToObjectiveC()().super.isa;
        *&v125[0] = 0;
        v53 = [v51 initWithData:isa error:v125];

        v54 = *&v125[0];
        if (v53)
        {
          sub_100025ECC();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v56 = v54;
          v57 = [ObjCClassFromMetadata signedTypeWithObject:v53];

          [v57 setVerifier:v119];
          sub_1000587C8();
          v70 = v57;
          v71 = sub_100061A44();
          v73 = v72;
          v74 = sub_100061B40();
          v98 = sub_100061B60();
          v99 = v74;
          v97 = sub_100061BFC();
          v75 = v70;
          v95 = sub_100061C1C();
          v96 = v76;
          if (v120 == v71 && v121 == v73)
          {

            goto LABEL_84;
          }

          v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v77)
          {
LABEL_84:
            if (v106 == v99 && v118 == v98 && v117 == v97 && !sub_100027800(v110, v109, v95, v96))
            {
              v78 = v112[3];
              v79 = v112[4];
              sub_100026F6C(v112, v78);
              (*(v79 + 32))(&v128, 0, v78, v79);
              v100 = 1;
            }
          }

          sub_10002763C(v12);
          sub_100026FB0(v114, v111);

          v49 = v95;
          v50 = &v123;
        }

        else
        {
          v65 = *&v125[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();

          sub_10002763C(v12);
          v47 = v112[3];
          v48 = v112[4];
          sub_100026F6C(v112, v47);
          (*(v48 + 72))(&v128, v47, v48);
          v49 = v114;
          v50 = &v129;
        }

        sub_100026FB0(v49, *(v50 - 32));
        sub_1000270C0(&v128);
        a1 = v112;
      }

      v19 = v108;
      v24 = v115;
      v27 = v107;
      v29 = v116;
    }

LABEL_21:
    ++v24;
    v29 += 2;
  }

  while (v113 != v24);

  if ((v100 & 1) == 0)
  {
    return sub_100026FB0(v110, v109);
  }

  sub_100061CE4(v130);
  if (qword_100156300 != -1)
  {
    goto LABEL_107;
  }

LABEL_95:
  v80 = type metadata accessor for Logger();
  sub_100025AE0(v80, qword_10015D140);
  sub_100027114(v130, v125);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.error.getter();
  sub_1000270C0(v130);
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v124 = v84;
    *v83 = 136315138;
    v125[0] = v130[0];
    v125[1] = v130[1];
    v126 = v130[2];
    v127 = v131;
    sub_100027114(v130, v122);
    sub_100027584();
    v85 = dispatch thunk of CustomStringConvertible.description.getter();
    v87 = v86;
    v88 = *(&v126 + 1);
    v89 = v127;

    sub_100026FB0(v88, v89);
    v90 = sub_100021D24(v85, v87, &v124);

    *(v83 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v81, v82, "Found split view in DB for %s", v83, 0xCu);
    sub_100024E14(v84);
  }

  v91 = v112[3];
  v92 = v112[4];
  sub_100026F6C(v112, v91);
  (*(v92 + 32))(v130, 0, v91, v92);
  sub_100027170();
  swift_allocError();
  *v93 = 4;
  swift_willThrow();
  sub_100026FB0(v110, v109);
  return sub_1000270C0(v130);
}

void *sub_100026F6C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100026FB0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100027004(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100027058(uint64_t a1)
{
  v2 = sub_100024248(&qword_100152AA0, &qword_100103490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100027170()
{
  result = qword_100152AA8;
  if (!qword_100152AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152AA8);
  }

  return result;
}

uint64_t sub_1000271C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000273F4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100027748(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100026FB0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1000271C4(v13, a3, a4, &v12);
  v10 = v4;
  sub_100026FB0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_100027584()
{
  result = qword_100152AB0;
  if (!qword_100152AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152AB0);
  }

  return result;
}

uint64_t sub_1000275D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTSWDB.SignedLogHead(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002763C(uint64_t a1)
{
  v2 = type metadata accessor for KTSWDB.SignedLogHead(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027698(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_100027004(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_100026FB0(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_100027748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1000271C4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_100027800(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100027004(a3, a4);
          return sub_1000273F4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

__n128 sub_1000279DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000279F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100027A10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t *sub_100027A50(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100027ABC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(*(v2 + 56) + 8 * v11);
    v13 = *(*(v2 + 48) + v11);

    sub_10002A058(v13);
    if ((v14 & 1) == 0)
    {

      return 0;
    }

    v16 = sub_100027ABC(v15, v12);

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100027C04(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_10002A058(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100027C90(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_100027CE4()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  sub_10002A0C4(v1);
  return v1;
}

unint64_t sub_100027D2C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
  return sub_10002A0D4(v3);
}

uint64_t sub_100027D74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100024248(&qword_100152B58, &qword_100103560);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100027DEC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd17TransitionWatcher_continuation;
  swift_beginAccess();
  return sub_100025834(v1 + v3, a1, &qword_100152B60, &qword_100103568);
}

uint64_t sub_100027E54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd17TransitionWatcher_continuation;
  swift_beginAccess();
  sub_10002A0E4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100027F18@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd17TransitionWatcher_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100027F90(char a1, uint64_t a2)
{
  v4 = sub_100024248(&qword_100152B60, &qword_100103568);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC15swtransparencyd17TransitionWatcher_continuation;
  v9 = sub_100024248(&qword_100152B58, &qword_100103560);
  v10 = *(*(v9 - 8) + 56);
  v10(v7 + v8, 1, 1, v9);
  UUID.init()();
  *(v7 + 112) = a1;
  *(v7 + 120) = a2;
  *(v7 + 128) = 0;
  v10(v6, 1, 1, v9);
  v11 = OBJC_IVAR____TtC15swtransparencyd17TransitionWatcher_continuation;
  swift_beginAccess();
  sub_10002A0E4(v6, v7 + v11);
  swift_endAccess();
  return v7;
}

uint64_t sub_100028100(char a1, uint64_t a2)
{
  v5 = sub_100024248(&qword_100152B60, &qword_100103568);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC15swtransparencyd17TransitionWatcher_continuation;
  v9 = sub_100024248(&qword_100152B58, &qword_100103560);
  v10 = *(*(v9 - 8) + 56);
  v10(v2 + v8, 1, 1, v9);
  UUID.init()();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  *(v2 + 128) = 0;
  v10(v7, 1, 1, v9);
  v11 = OBJC_IVAR____TtC15swtransparencyd17TransitionWatcher_continuation;
  swift_beginAccess();
  sub_10002A0E4(v7, v2 + v11);
  swift_endAccess();
  return v2;
}

uint64_t sub_10002825C()
{
  v1 = (*(*v0 + 152))();
  if (v1 >= 3)
  {
    sub_10002A0D4(v1);
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = 4u >> (v1 & 7);
  }

  return v2 & 1;
}

uint64_t sub_1000282B8()
{
  v1[3] = v0;
  v2 = sub_100024248(&qword_100152B58, &qword_100103560);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_100024248(&qword_100152B60, &qword_100103568);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000283C8, v0, 0);
}

uint64_t sub_1000283C8()
{
  v1 = (*(**(v0 + 24) + 152))();
  if (v1 >= 2)
  {
    if (v1 != 2)
    {
      sub_10002A0D4(v1);
    }
  }

  else
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    (*(**(v0 + 24) + 176))();
    v5 = (*(v4 + 48))(v2, 1, v3);
    v6 = *(v0 + 64);
    if (v5)
    {
      sub_10002533C(*(v0 + 64), &qword_100152B60, &qword_100103568);
    }

    else
    {
      v8 = *(v0 + 40);
      v7 = *(v0 + 48);
      v9 = *(v0 + 32);
      (*(v8 + 16))(v7, *(v0 + 64), v9);
      sub_10002533C(v6, &qword_100152B60, &qword_100103568);
      type metadata accessor for SWTStateMachineError(0);
      sub_10002A7EC(&qword_100152F30, type metadata accessor for SWTStateMachineError, &unk_100107268);
      v10 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      *(v0 + 16) = v10;
      CheckedContinuation.resume(throwing:)();
      (*(v8 + 8))(v7, v9);
    }

    v11 = *(v0 + 56);
    v12 = *(v0 + 24);
    (*(*(v0 + 40) + 56))(v11, 1, 1, *(v0 + 32));
    (*(*v12 + 184))(v11);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10002861C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100024248(&unk_100152620, &unk_1001031E0);
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000286BC, v2, 0);
}

uint64_t sub_1000286BC()
{
  v1 = (*(**(v0 + 32) + 152))();
  if (v1 >= 2)
  {
    if (v1 != 2)
    {
      swift_willThrow();
    }

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = sub_10002A7EC(&qword_100152B68, type metadata accessor for TransitionWatcher, &unk_1001035C0);
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = v7;
    v8[4] = v5;
    v8[5] = v4;
    v8[6] = v2;
    swift_retain_n();
    *(v0 + 48) = sub_10001C660(0, 0, v3, &unk_100103590, v8);
    v9 = swift_task_alloc();
    *(v0 + 56) = v9;
    *v9 = v0;
    v9[1] = sub_100028920;
    v10 = *(v0 + 32);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v2, v7, 0xD000000000000010, 0x800000010010A490, sub_10002A288, v10, &type metadata for () + 1);
  }
}

uint64_t sub_100028920()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_100028AE0;
  }

  else
  {
    v4 = sub_100028A4C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100028A4C()
{
  Task.cancel()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100028AE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100028B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = type metadata accessor for ContinuousClock();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_100028C14, a6, 0);
}

uint64_t sub_100028C14()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100028CD4;
  v3 = v0[2];
  v2 = v0[3];

  return sub_100029BA0(v3, v2, 0, 0, 1);
}

uint64_t sub_100028CD4()
{
  v2 = *v1;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  v6 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v7 = sub_10002A9A8;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v7 = sub_100028E80;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100028E80()
{
  if (static Task<>.isCancelled.getter())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = (*(**(v0 + 32) + 216) + **(**(v0 + 32) + 216));
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_100028FD8;

    return v4();
  }
}

uint64_t sub_100028FD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000290E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024248(&qword_100152B60, &qword_100103568);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_100024248(&qword_100152B58, &qword_100103560);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  return (*(*a2 + 184))(v6);
}

uint64_t sub_100029214(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024248(&qword_100152B58, &qword_100103560);
  v38[0] = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v38 - v5;
  v7 = sub_100024248(&qword_100152B60, &qword_100103568);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v38 - v12;
  __chkstk_darwin(v11);
  v15 = v38 - v14;
  v16 = type metadata accessor for SWTStateMachineError(0);
  v17 = __chkstk_darwin(v16);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (*(*v1 + 152))(v17);
  if (v20 != 2)
  {
    if (v20 == 1)
    {
      v22 = (*(*v1 + 128))();
      if (!*(v22 + 16) || (v23 = sub_10002A058(a1), (v24 & 1) == 0))
      {

        *v19 = a1;
        swift_storeEnumTagMultiPayload();
        sub_10002A7EC(&qword_100152F30, type metadata accessor for SWTStateMachineError, &unk_100107268);
        v27 = swift_allocError();
        sub_10002A290(v19, v28);
        v29 = (*(*v2 + 160))(v27);
        (*(*v2 + 176))(v29);
        v30 = v38[0];
        if ((*(v38[0] + 48))(v15, 1, v4))
        {
          sub_10002533C(v15, &qword_100152B60, &qword_100103568);
        }

        else
        {
          (*(v30 + 16))(v6, v15, v4);
          sub_10002533C(v15, &qword_100152B60, &qword_100103568);
          v35 = swift_allocError();
          sub_10002A290(v19, v36);
          v39 = v35;
          CheckedContinuation.resume(throwing:)();
          v30 = v38[0];
          (*(v38[0] + 8))(v6, v4);
        }

        (*(v30 + 56))(v13, 1, 1, v4);
        (*(*v2 + 184))(v13);
        sub_10002A2F4(v19);
        return 0;
      }

      v25 = *(*(v22 + 56) + 8 * v23);

      v26 = (*(*v2 + 136))(v25);
      goto LABEL_15;
    }

    if (!v20)
    {
      v21 = v1[112];
      v42 = a1;
      v41 = v21;
      sub_10002A350();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v39 == v38[1] && v40 == v38[2])
      {
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v31 & 1) == 0)
        {
          return 0;
        }
      }

      v26 = (*(*v1 + 160))(1);
LABEL_15:
      v32 = *((*(*v2 + 128))(v26) + 16);

      if (!v32)
      {
        v33 = (*(*v2 + 160))(2);
        (*(*v2 + 176))(v33);
        v34 = v38[0];
        if ((*(v38[0] + 48))(v10, 1, v4))
        {
          sub_10002533C(v10, &qword_100152B60, &qword_100103568);
        }

        else
        {
          (*(v34 + 16))(v6, v10, v4);
          sub_10002533C(v10, &qword_100152B60, &qword_100103568);
          CheckedContinuation.resume(returning:)();
          v34 = v38[0];
          (*(v38[0] + 8))(v6, v4);
        }

        (*(v34 + 56))(v13, 1, 1, v4);
        (*(*v2 + 184))(v13);
        return 1;
      }

      return 0;
    }

    sub_10002A0D4(v20);
  }

  return 1;
}

uint64_t sub_1000298FC()
{

  sub_10002A0D4(*(v0 + 128));
  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd17TransitionWatcher_continuation, &qword_100152B60, &qword_100103568);
  v1 = OBJC_IVAR____TtC15swtransparencyd17TransitionWatcher_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100029994()
{

  sub_10002A0D4(*(v0 + 128));
  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd17TransitionWatcher_continuation, &qword_100152B60, &qword_100103568);
  v1 = OBJC_IVAR____TtC15swtransparencyd17TransitionWatcher_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int sub_100029A3C()
{
  Hasher.init(_seed:)();
  (*(*v0 + 240))(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100029B24(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  (*(*v2 + 240))(v4);
  return Hasher._finalize()();
}

uint64_t sub_100029BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100029CA0, 0, 0);
}

uint64_t sub_100029CA0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10002A7EC(&qword_100152CC8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10002A7EC(&qword_100152CD0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100029E30;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100029E30()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100029FEC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100029FEC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10002A058(uint64_t a1)
{
  v1 = a1;
  sub_10002A834();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10002A888(v1, v2);
}

unint64_t sub_10002A0C4(unint64_t result)
{
  if (result >= 3)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_10002A0D4(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_10002A0E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024248(&qword_100152B60, &qword_100103568);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TransitionWatcher(uint64_t a1)
{
  result = qword_100156590;
  if (!qword_100156590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002A1A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002A1E0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001CF5C;

  return sub_100028B4C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10002A290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SWTStateMachineError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A2F4(uint64_t a1)
{
  v2 = type metadata accessor for SWTStateMachineError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002A350()
{
  result = qword_100152B70;
  if (!qword_100152B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152B70);
  }

  return result;
}

__n128 _s18VerificationResultVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10002A408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10002A450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10002A4A4(uint64_t a1)
{
  sub_10002A598(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10002A598(uint64_t a1)
{
  if (!qword_100152BA8)
  {
    sub_1000242F4(&qword_100152B58, &qword_100103560);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100152BA8);
    }
  }
}

uint64_t sub_10002A5FC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10002A620(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002A67C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_10002A6CC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_10002A6FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A734(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001CF5C;

  return sub_100021B34(a1, v4);
}

uint64_t sub_10002A7EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002A834()
{
  result = qword_100152CD8;
  if (!qword_100152CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152CD8);
  }

  return result;
}

unint64_t sub_10002A888(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10002A950();
    do
    {
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10002A950()
{
  result = qword_100152CE0;
  if (!qword_100152CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152CE0);
  }

  return result;
}

uint64_t sub_10002A9AC(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        return 7759204;
      }

      if (a1 == 2)
      {
        return 0x6172656D65687065;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 3)
    {
      return 1718773104;
    }

    else
    {
      return 24945;
    }
  }

  else
  {
    if (a1 > 6)
    {
      switch(a1)
      {
        case 7:
          return 0x69746375646F7270;
        case 8:
          return 0x616D697250326171;
        case 9:
          return 0x7265746E49326171;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 5)
    {
      return 0x676E6967617473;
    }

    else
    {
      return 0x7972726163;
    }
  }
}

uint64_t SerializationVersion.description.getter(char a1)
{
  if (a1 == 1)
  {
    return 3233326;
  }

  _StringGuts.grow(_:)(34);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0xD00000000000001FLL;
}

unint64_t sub_10002ABFC()
{
  result = qword_100152CE8;
  if (!qword_100152CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152CE8);
  }

  return result;
}

uint64_t ATLeafType.description.getter(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1 == 1)
    {
      return 0x455341454C45522ELL;
    }

    if (a1 == 2)
    {
      return 0x4C45444F4D2ELL;
    }
  }

  else
  {
    if (a1 == 3 || a1 == 4)
    {
      return 0x444E554259454B2ELL;
    }

    if (a1 == 5)
    {
      return 0xD000000000000010;
    }
  }

  _StringGuts.grow(_:)(24);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0xD000000000000015;
}

Swift::Int sub_10002AE94()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002AEDC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t TransparencyExtensionType.description.getter()
{
  _StringGuts.grow(_:)(39);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000024;
}

uint64_t sub_10002AFD0(char a1)
{
  v3 = a1;
  v1 = sub_10002ABFC();
  ATLogProofs.VerificationResult.result.getter();
  return sub_1000A20C8(&v3, &type metadata for UInt8, &type metadata for UInt8, v1);
}

uint64_t sub_10002B034()
{
  sub_10002ABFC();
  ATLogProofs.VerificationResult.result.getter();
  sub_1000A2D44(&type metadata for UInt8, &type metadata for UInt8, &v2);
  v0 = v2;
  if (v3)
  {
    v0 = 0;
  }

  return v0 | (v3 << 8);
}

uint64_t sub_10002B0A4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5)
  {
    return static TransparencyByteBuffer.== infix(_:_:)(a2, a3, a4, a6, a7, a8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002B0D4(uint64_t a1, Swift::UInt8 a2)
{
  Hasher._combine(_:)(0);
  Hasher._combine(_:)(a2);
  sub_10002B154();
  return dispatch thunk of Hashable.hash(into:)();
}

unint64_t sub_10002B154()
{
  result = qword_100152CF0;
  if (!qword_100152CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152CF0);
  }

  return result;
}

Swift::Int sub_10002B1A8(Swift::UInt8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Hasher._combine(_:)(a1);
  sub_10002B154();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10002B23C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Hasher._combine(_:)(v1);
  sub_10002B154();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002B2CC(uint64_t a1)
{
  v2 = *v1;
  Hasher._combine(_:)(0);
  Hasher._combine(_:)(v2);
  sub_10002B154();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10002B348(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Hasher._combine(_:)(v2);
  sub_10002B154();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002B3D4(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return static TransparencyByteBuffer.== infix(_:_:)(a1[1], a1[2], a1[3], a2[1], a2[2], a2[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002B400(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v8 = sub_10002ABFC();
  ATLogProofs.VerificationResult.result.getter();
  v9 = sub_1000A20C8(&v18, &type metadata for UInt8, &type metadata for UInt8, v8);
  v14[16] = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v10 = sub_10002B4FC();
  v11 = sub_1000A39FC(&type metadata for UInt16, sub_10002B4CC, v14, &type metadata for UInt16, v10);
  v12 = __OFADD__(v9, v11);
  result = v9 + v11;
  if (v12)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10002B4FC()
{
  result = qword_100152CF8;
  if (!qword_100152CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152CF8);
  }

  return result;
}

void *sub_10002B550()
{
  sub_10002ABFC();
  ATLogProofs.VerificationResult.result.getter();
  v1 = sub_1000A2D44(&type metadata for UInt8, &type metadata for UInt8, &v3);
  if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  __chkstk_darwin(v1);
  sub_10002B4FC();
  result = sub_1000A3E94(&type metadata for TransparencyExtension, &v3);
  if (!v0)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10002B650@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = sub_1000A2084(*a1, a1[1], a1[2]);
  result = sub_1000A35A4(v5);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a3 = a2;
    *(a3 + 8) = result;
    *(a3 + 16) = v7;
    *(a3 + 24) = v8;
  }

  return result;
}

uint64_t sub_10002B710()
{
  v1 = *(v0 + 8);
  sub_100027004(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_10002B744(uint64_t a1, uint64_t a2)
{
  result = sub_100026FB0(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_10002B77C()
{
  v1 = *(v0 + 24);
  sub_100027004(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_10002B7B0(uint64_t a1, uint64_t a2)
{
  result = sub_100026FB0(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_10002B840(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

void *sub_10002B894()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t sub_10002B908@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 1) = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = 0;
  return result;
}

void *sub_10002B924@<X0>(uint64_t a1@<X8>)
{
  sub_10002ABFC();
  ATLogProofs.VerificationResult.result.getter();
  sub_1000A2D44(&type metadata for UInt8, &type metadata for UInt8, &v26);
  if ((v26 & 0x100) != 0)
  {
    goto LABEL_3;
  }

  v3 = v26;
  ATLogProofs.VerificationResult.result.getter();
  sub_1000A2D44(&type metadata for UInt8, &type metadata for UInt8, &v26);
  if ((v26 & 0x100) != 0)
  {
    goto LABEL_3;
  }

  v6 = v26;
  result = sub_1000A3E94(&type metadata for TransparencyByteBuffer, &v26);
  if (!v1)
  {
    v7 = v27;
    if (v27 >> 60 == 15)
    {
LABEL_3:
      sub_10002BC44();
      swift_allocError();
      *v4 = 1;
      return swift_willThrow();
    }

    v25 = v6;
    v8 = v26;
    v9 = TransparencyByteBuffer.readableBytesView.getter(v26, v27, v28);
    v29 = v10;
    sub_10002BEE0(v8, v7);
    sub_1000A3E94(&type metadata for TransparencyByteBuffer, &v26);
    v24 = v9;
    v11 = v27;
    if (v27 >> 60 != 15)
    {
      v12 = v26;
      v13 = TransparencyByteBuffer.readableBytesView.getter(v26, v27, v28);
      v15 = v14;
      sub_10002BEE0(v12, v11);
      sub_10002BEF4();
      sub_1000A2D44(&type metadata for UInt64, &type metadata for UInt64, &v26);
      if (v27 != 1)
      {
        v18 = v15;
        v19 = v26;
        v20 = sub_100024248(&qword_100152D10, &qword_1001037B8);
        sub_10002B4FC();
        result = sub_1000A3E94(v20, &v26);
        v21 = v19;
        v22 = v26;
        v23 = v29;
        if (v26)
        {
          *a1 = v3;
          *(a1 + 1) = v25;
          *(a1 + 8) = v24;
          *(a1 + 16) = v23;
          *(a1 + 24) = v13;
          *(a1 + 32) = v18;
          *(a1 + 40) = v21;
          *(a1 + 48) = v22;
          *(a1 + 56) = 0;
          return result;
        }

        sub_100026FB0(v13, v18);
        v16 = v24;
        v17 = v23;
        goto LABEL_11;
      }

      sub_100026FB0(v13, v15);
    }

    v16 = v24;
    v17 = v29;
LABEL_11:
    sub_100026FB0(v16, v17);
    goto LABEL_3;
  }

  return result;
}

unint64_t sub_10002BC44()
{
  result = qword_100152D00;
  if (!qword_100152D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152D00);
  }

  return result;
}

char *sub_10002BC98()
{
  sub_10002ABFC();
  ATLogProofs.VerificationResult.result.getter();
  sub_1000A2D44(&type metadata for UInt8, &type metadata for UInt8, &v12);
  if (v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = _swiftEmptyArrayStorage;
  v2 = sub_10002B4FC();
  v16 = v2;
  while (1)
  {
    __chkstk_darwin(v2);
    sub_1000A3E94(&type metadata for TransparencyExtension, &v12);
    if (v0)
    {
      break;
    }

    if (v15 >> 60 != 15)
    {
      v11 = v15;
      v4 = v12;
      v3 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_10002CA60(0, *(v1 + 2) + 1, 1, v1);
      }

      v6 = *(v1 + 2);
      v5 = *(v1 + 3);
      v7 = v11;
      if (v6 >= v5 >> 1)
      {
        v9 = sub_10002CA60((v5 > 1), v6 + 1, 1, v1);
        v7 = v11;
        v1 = v9;
      }

      *(v1 + 2) = v6 + 1;
      v8 = &v1[32 * v6];
      v8[32] = v4;
      *(v8 + 5) = v3;
      *(v8 + 3) = v7;
      ATLogProofs.VerificationResult.result.getter();
      v2 = sub_1000A2D44(&type metadata for UInt8, &type metadata for UInt8, &v12);
      if ((v13 & 1) == 0)
      {
        continue;
      }
    }

    return v1;
  }

  return v1;
}

uint64_t sub_10002BE84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1000A2084(*a1, a1[1], a1[2]);
  result = sub_1000A35A4(v3);
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_10002BEE0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100026FB0(result, a2);
  }

  return result;
}

unint64_t sub_10002BEF4()
{
  result = qword_100152D08;
  if (!qword_100152D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152D08);
  }

  return result;
}

char *sub_10002BF48@<X0>(char **a1@<X8>)
{
  result = sub_10002BC98();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10002BF74()
{
  v16 = *v0;
  v1 = sub_10002ABFC();
  ATLogProofs.VerificationResult.result.getter();
  v2 = sub_1000A20C8(&v16, &type metadata for UInt8, &type metadata for UInt8, v1);
  v15 = v0[1];
  ATLogProofs.VerificationResult.result.getter();
  result = sub_1000A20C8(&v15, &type metadata for UInt8, &type metadata for UInt8, v1);
  v4 = v2 + result;
  if (__OFADD__(v2, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  __chkstk_darwin(result);
  v13 = v0;
  result = sub_1000A39FC(&type metadata for UInt8, sub_10002C18C, v12, &type metadata for UInt8, v1);
  v5 = __OFADD__(v4, result);
  v6 = v4 + result;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __chkstk_darwin(result);
  v13 = v0;
  result = sub_1000A39FC(&type metadata for UInt8, sub_10002C1F8, v12, &type metadata for UInt8, v1);
  v7 = v6 + result;
  if (__OFADD__(v6, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = *(v0 + 5);
  v8 = sub_10002BEF4();
  ATLogProofs.VerificationResult.result.getter();
  result = sub_1000A20C8(&v14, &type metadata for UInt64, &type metadata for UInt64, v8);
  v9 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __chkstk_darwin(result);
  v13 = v0;
  v10 = sub_10002B4FC();
  v11 = sub_1000A39FC(&type metadata for UInt16, sub_10002C264, v12, &type metadata for UInt16, v10);
  v5 = __OFADD__(v9, v11);
  result = v9 + v11;
  if (v5)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_10002C18C()
{
  sub_100027004(*(*(v0 + 16) + 8), *(*(v0 + 16) + 16));
  TransparencyByteBuffer.init(data:)();
  v2 = v1;
  v4 = v3;
  v6 = sub_1000A3104(v1, v3, v5);
  sub_100026FB0(v2, v4);
  return v6;
}

uint64_t sub_10002C1F8()
{
  sub_100027004(*(*(v0 + 16) + 24), *(*(v0 + 16) + 32));
  TransparencyByteBuffer.init(data:)();
  v2 = v1;
  v4 = v3;
  v6 = sub_1000A3104(v1, v3, v5);
  sub_100026FB0(v2, v4);
  return v6;
}

uint64_t sub_10002C264(uint64_t a1)
{
  v4 = *(*(v1 + 16) + 48);

  sub_10002CB6C(&v4);
  v2 = sub_10002C2EC(0, v4);

  return v2;
}