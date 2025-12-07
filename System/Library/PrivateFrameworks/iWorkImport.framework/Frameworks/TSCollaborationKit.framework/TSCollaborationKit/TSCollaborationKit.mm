id sub_2765F5D80(void *a1, uint64_t a2)
{
  objc_opt_class();
  v6 = objc_msgSend_documentRoot(a1, v3, v4, v5);
  v7 = TSUCheckedDynamicCast();

  return v7;
}

uint64_t sub_2765F5F14(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v11 = objc_msgSend_objectForKey_(a1, v7, v6, v8);
  if (v11)
  {
    a4 = objc_msgSend_integerForKey_(a1, v9, v6, v10);
  }

  return a4;
}

id sub_2765F5F7C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_objectForKey_(a1, v8, v6, v9);
  if (v12)
  {
    v13 = objc_msgSend_stringForKey_(a1, v10, v6, v11);
  }

  else
  {
    v13 = v7;
  }

  v14 = v13;

  return v14;
}

uint64_t sub_2765F600C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v11 = objc_msgSend_objectForKey_(a1, v7, v6, v8);
  if (v11)
  {
    a4 = objc_msgSend_BOOLForKey_(a1, v9, v6, v10);
  }

  return a4;
}

id sub_2765F6074(void *a1, uint64_t a2)
{
  objc_opt_class();
  v6 = objc_msgSend_documentRoot(a1, v3, v4, v5);
  v7 = TSUCheckedDynamicCast();

  return v7;
}

uint64_t sub_2765F60E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::ActivityArchive::ActivityArchive(&TSCK::_ActivityArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_ActivityArchive_default_instance_);
}

uint64_t sub_2765F6150(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::ActivityAuthorArchive::ActivityAuthorArchive(&TSCK::_ActivityAuthorArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_ActivityAuthorArchive_default_instance_);
}

uint64_t sub_2765F61C0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::ActivityAuthorCacheArchive::ActivityAuthorCacheArchive(&TSCK::_ActivityAuthorCacheArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_ActivityAuthorCacheArchive_default_instance_);
}

uint64_t sub_2765F6230(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812FA858 = v4;
  TSCK::_ActivityAuthorCacheArchive_FirstJoinCache_default_instance_ = &unk_288571468;
  if (atomic_load_explicit(scc_info_ActivityAuthorCacheArchive_FirstJoinCache_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FA868 = 0;
  unk_2812FA870 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_ActivityAuthorCacheArchive_FirstJoinCache_default_instance_);
}

uint64_t sub_2765F62E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812FA830 = v4;
  TSCK::_ActivityAuthorCacheArchive_IndexCache_default_instance_ = &unk_2885713B8;
  if (atomic_load_explicit(scc_info_ActivityAuthorCacheArchive_IndexCache_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FA840 = 0;
  unk_2812FA848 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_ActivityAuthorCacheArchive_IndexCache_default_instance_);
}

uint64_t sub_2765F6390(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::ActivityAuthorCacheArchive_PublicIDCache::ActivityAuthorCacheArchive_PublicIDCache(&TSCK::_ActivityAuthorCacheArchive_PublicIDCache_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_ActivityAuthorCacheArchive_PublicIDCache_default_instance_);
}

uint64_t sub_2765F6400(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::ActivityAuthorCacheArchive_ShareParticipantIDCache(&TSCK::_ActivityAuthorCacheArchive_ShareParticipantIDCache_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_ActivityAuthorCacheArchive_ShareParticipantIDCache_default_instance_);
}

uint64_t sub_2765F6470(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::ActivityCommitCommandArchive::ActivityCommitCommandArchive(&TSCK::_ActivityCommitCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_ActivityCommitCommandArchive_default_instance_);
}

uint64_t sub_2765F64E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::ActivityCursorCollectionArchive::ActivityCursorCollectionArchive(&TSCK::_ActivityCursorCollectionArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_ActivityCursorCollectionArchive_default_instance_);
}

uint64_t sub_2765F6550(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812FA760 = v4;
  TSCK::_ActivityCursorCollectionPersistenceWrapperArchive_default_instance_ = &unk_288571048;
  if (atomic_load_explicit(scc_info_ActivityCursorCollectionPersistenceWrapperArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FA770 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_ActivityCursorCollectionPersistenceWrapperArchive_default_instance_);
}

uint64_t sub_2765F6600(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::_ActivityNavigationInfoArchive_default_instance_ = &unk_2885710F8;
  unk_2812FA780 = 0;
  google::protobuf::internal::ExtensionSet::ExtensionSet(&unk_2812FA788, 0);
  dword_2812FA7A0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_ActivityNavigationInfoArchive_default_instance_);
}

uint64_t sub_2765F6690(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::ActivityNotificationItemArchive::ActivityNotificationItemArchive(&TSCK::_ActivityNotificationItemArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_ActivityNotificationItemArchive_default_instance_);
}

uint64_t sub_2765F6700(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::ActivityNotificationParticipantCacheArchive::ActivityNotificationParticipantCacheArchive(&TSCK::_ActivityNotificationParticipantCacheArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_ActivityNotificationParticipantCacheArchive_default_instance_);
}

uint64_t sub_2765F6770(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812FA998 = v4;
  TSCK::_ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts_default_instance_ = &unk_288571728;
  if (atomic_load_explicit(scc_info_ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812FA9B0 = 0;
  qword_2812FA9A8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts_default_instance_);
}

uint64_t sub_2765F6824(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::ActivityNotificationQueueArchive::ActivityNotificationQueueArchive(&TSCK::_ActivityNotificationQueueArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_ActivityNotificationQueueArchive_default_instance_);
}

uint64_t sub_2765F6894(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812FA930 = v4;
  TSCK::_ActivityOnlyCommandArchive_default_instance_ = &unk_2885715C8;
  if (atomic_load_explicit(scc_info_ActivityOnlyCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FA940 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_ActivityOnlyCommandArchive_default_instance_);
}

uint64_t sub_2765F6944(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812FA5B8 = v4;
  TSCK::_ActivityStreamActivityArray_default_instance_ = &unk_288570C28;
  if (atomic_load_explicit(scc_info_ActivityStreamActivityArray_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FA5C8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_ActivityStreamActivityArray_default_instance_);
}

uint64_t sub_2765F69F4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812FA5D8 = v4;
  TSCK::_ActivityStreamActivityArraySegment_default_instance_ = &unk_288570CD8;
  if (atomic_load_explicit(scc_info_ActivityStreamActivityArraySegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FA5E8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_ActivityStreamActivityArraySegment_default_instance_);
}

uint64_t sub_2765F6AA4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::ActivityStreamActivityCounterArchive::ActivityStreamActivityCounterArchive(&TSCK::_ActivityStreamActivityCounterArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_ActivityStreamActivityCounterArchive_default_instance_);
}

uint64_t sub_2765F6B14(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  qword_2812FAAD8 = 0;
  unk_2812FAAE0 = 0;
  TSCK::_ActivityStreamActivityCounterArchive_ActionTypeCounter_default_instance_ = &unk_2885719E8;
  qword_2812FAAE8 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_ActivityStreamActivityCounterArchive_ActionTypeCounter_default_instance_);
}

uint64_t sub_2765F6B90(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  qword_2812FAAF8 = 0;
  unk_2812FAB00 = 0;
  TSCK::_ActivityStreamActivityCounterArchive_CursorTypeCounter_default_instance_ = &unk_288571A98;
  qword_2812FAB08 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_ActivityStreamActivityCounterArchive_CursorTypeCounter_default_instance_);
}

uint64_t sub_2765F6C0C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812FA568 = v4;
  TSCK::_ActivityStreamArchive_default_instance_ = &unk_288570B78;
  if (atomic_load_explicit(scc_info_ActivityStreamArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812FA5A8 = 0;
  unk_2812FA598 = 0u;
  unk_2812FA588 = 0u;
  unk_2812FA578 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_ActivityStreamArchive_default_instance_);
}

uint64_t sub_2765F6CCC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::ActivityStreamRemovedAuthorAuditorPendingStateArchive(&TSCK::_ActivityStreamRemovedAuthorAuditorPendingStateArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_ActivityStreamRemovedAuthorAuditorPendingStateArchive_default_instance_);
}

uint64_t sub_2765F6D3C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812FAB60 = v4;
  TSCK::_ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType_default_instance_ = &unk_288571BF8;
  if (atomic_load_explicit(scc_info_ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812FAB78 = 0;
  qword_2812FAB70 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType_default_instance_);
}

uint64_t sub_2765F6DF0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::ActivityStreamTransformationStateArchive::ActivityStreamTransformationStateArchive(&TSCK::_ActivityStreamTransformationStateArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_ActivityStreamTransformationStateArchive_default_instance_);
}

uint64_t sub_2765F6E60(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F9FE8 = v4;
  TSCK::_AddIdOperationArgs_default_instance_ = &unk_28856FC58;
  if (atomic_load_explicit(scc_info_AddIdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812FA000 = 0;
  qword_2812F9FF8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_AddIdOperationArgs_default_instance_);
}

uint64_t sub_2765F6F14(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::AssetUnmaterializedOnServerCommandArchive::AssetUnmaterializedOnServerCommandArchive(&TSCK::_AssetUnmaterializedOnServerCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_AssetUnmaterializedOnServerCommandArchive_default_instance_);
}

uint64_t sub_2765F6F84(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::AssetUploadStatusCommandArchive::AssetUploadStatusCommandArchive(&TSCK::_AssetUploadStatusCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_AssetUploadStatusCommandArchive_default_instance_);
}

uint64_t sub_2765F6FF4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::AssetUploadStatusCommandArchive_AssetUploadStatusInfo(&TSCK::_AssetUploadStatusCommandArchive_AssetUploadStatusInfo_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_AssetUploadStatusCommandArchive_AssetUploadStatusInfo_default_instance_);
}

uint64_t sub_2765F7064(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812FA108 = v4;
  TSCK::_BlockDiffsAtCurrentRevisionCommand_default_instance_ = &unk_288570128;
  if (atomic_load_explicit(scc_info_BlockDiffsAtCurrentRevisionCommand_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FA118 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_BlockDiffsAtCurrentRevisionCommand_default_instance_);
}

uint64_t sub_2765F7114(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::CollaborationAppliedCommandDocumentRevisionMapping::CollaborationAppliedCommandDocumentRevisionMapping(&TSCK::_CollaborationAppliedCommandDocumentRevisionMapping_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_CollaborationAppliedCommandDocumentRevisionMapping_default_instance_);
}

uint64_t sub_2765F7184(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F9E40 = v4;
  TSCK::_CollaborationCommandHistory_default_instance_ = &unk_28856F628;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistory_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F9E50 = 0;
  unk_2812F9E58 = 0;
  qword_2812F9E60 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_CollaborationCommandHistory_default_instance_);
}

uint64_t sub_2765F7238(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::CollaborationCommandHistory_ItemList::CollaborationCommandHistory_ItemList(&TSCK::_CollaborationCommandHistory_ItemList_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_CollaborationCommandHistory_ItemList_default_instance_);
}

uint64_t sub_2765F72A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F9DC8 = v4;
  TSCK::_CollaborationCommandHistoryArray_default_instance_ = &unk_28856F418;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryArray_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F9DD8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_CollaborationCommandHistoryArray_default_instance_);
}

uint64_t sub_2765F7358(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F9DE8 = v4;
  TSCK::_CollaborationCommandHistoryArraySegment_default_instance_ = &unk_28856F4C8;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryArraySegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F9DF8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_CollaborationCommandHistoryArraySegment_default_instance_);
}

uint64_t sub_2765F7408(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::CollaborationCommandHistoryCoalescingGroup::CollaborationCommandHistoryCoalescingGroup(&TSCK::_CollaborationCommandHistoryCoalescingGroup_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_CollaborationCommandHistoryCoalescingGroup_default_instance_);
}

uint64_t sub_2765F7478(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F9EE8 = v4;
  TSCK::_CollaborationCommandHistoryCoalescingGroupNode_default_instance_ = &unk_28856F838;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryCoalescingGroupNode_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F9EF8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_CollaborationCommandHistoryCoalescingGroupNode_default_instance_);
}

uint64_t sub_2765F7528(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::CollaborationCommandHistoryItem::CollaborationCommandHistoryItem(&TSCK::_CollaborationCommandHistoryItem_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_CollaborationCommandHistoryItem_default_instance_);
}

uint64_t sub_2765F7598(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F9F08 = v4;
  TSCK::_CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver_default_instance_ = &unk_28856F8E8;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F9F18 = 0;
  unk_2812F9F20 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver_default_instance_);
}

uint64_t sub_2765F7648(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::CollaborationDocumentSessionState::CollaborationDocumentSessionState(&TSCK::_CollaborationDocumentSessionState_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_CollaborationDocumentSessionState_default_instance_);
}

uint64_t sub_2765F76B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::CollaborationDocumentSessionState_AcknowledgementObserverEntry(&TSCK::_CollaborationDocumentSessionState_AcknowledgementObserverEntry_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_CollaborationDocumentSessionState_AcknowledgementObserverEntry_default_instance_);
}

uint64_t sub_2765F7728(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::CollaboratorCursorArchive::CollaboratorCursorArchive(&TSCK::_CollaboratorCursorArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_CollaboratorCursorArchive_default_instance_);
}

uint64_t sub_2765F7798(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::CommandActivityBehaviorArchive::CommandActivityBehaviorArchive(&TSCK::_CommandActivityBehaviorArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_CommandActivityBehaviorArchive_default_instance_);
}

uint64_t sub_2765F7808(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::CommandAssetChunkArchive::CommandAssetChunkArchive(&TSCK::_CommandAssetChunkArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_CommandAssetChunkArchive_default_instance_);
}

uint64_t sub_2765F7878(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::CommentActivityNavigationInfoArchive::CommentActivityNavigationInfoArchive(&TSCK::_CommentActivityNavigationInfoArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_CommentActivityNavigationInfoArchive_default_instance_);
}

uint64_t sub_2765F78E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::CreateLocalStorageSnapshotCommandArchive::CreateLocalStorageSnapshotCommandArchive(&TSCK::_CreateLocalStorageSnapshotCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_CreateLocalStorageSnapshotCommandArchive_default_instance_);
}

uint64_t sub_2765F7958(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F9F30 = v4;
  TSCK::_DocumentSupportCollaborationState_default_instance_ = &unk_28856F998;
  if (atomic_load_explicit(scc_info_DocumentSupportCollaborationState_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F9F40 = 0;
  unk_2812F9F48 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_DocumentSupportCollaborationState_default_instance_);
}

uint64_t sub_2765F7A08(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812FA0C0 = v4;
  TSCK::_ExecuteTestBetweenRollbackAndReapplyCommandArchive_default_instance_ = &unk_28856FFC8;
  if (atomic_load_explicit(scc_info_ExecuteTestBetweenRollbackAndReapplyCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FA0D0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_ExecuteTestBetweenRollbackAndReapplyCommandArchive_default_instance_);
}

uint64_t sub_2765F7AB8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F9FC8 = v4;
  TSCK::_IdOperationArgs_default_instance_ = &unk_28856FBA8;
  if (atomic_load_explicit(scc_info_IdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F9FD8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_IdOperationArgs_default_instance_);
}

uint64_t sub_2765F7B68(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812FA060 = v4;
  TSCK::_IdPlacementOperationArgs_default_instance_ = &unk_28856FE68;
  if (atomic_load_explicit(scc_info_IdPlacementOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FA070 = 0;
  unk_2812FA078 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_IdPlacementOperationArgs_default_instance_);
}

uint64_t sub_2765F7C18(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::OperationStorage::OperationStorage(&TSCK::_OperationStorage_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_OperationStorage_default_instance_);
}

uint64_t sub_2765F7C88(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812FA320 = v4;
  TSCK::_OperationStorageEntryArray_default_instance_ = &unk_288570498;
  if (atomic_load_explicit(scc_info_OperationStorageEntryArray_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FA330 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_OperationStorageEntryArray_default_instance_);
}

uint64_t sub_2765F7D38(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::OperationStorageEntryArraySegment::OperationStorageEntryArraySegment(&TSCK::_OperationStorageEntryArraySegment_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_OperationStorageEntryArraySegment_default_instance_);
}

uint64_t sub_2765F7DA8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812FA410 = v4;
  TSCK::_OutgoingCommandQueue_default_instance_ = &unk_2885706A8;
  if (atomic_load_explicit(scc_info_OutgoingCommandQueue_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FA420 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_OutgoingCommandQueue_default_instance_);
}

uint64_t sub_2765F7E58(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812FA430 = v4;
  TSCK::_OutgoingCommandQueueSegment_default_instance_ = &unk_288570758;
  if (atomic_load_explicit(scc_info_OutgoingCommandQueueSegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FA440 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_OutgoingCommandQueueSegment_default_instance_);
}

uint64_t sub_2765F7F08(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812FA038 = v4;
  TSCK::_RearrangeIdOperationArgs_default_instance_ = &unk_28856FDB8;
  if (atomic_load_explicit(scc_info_RearrangeIdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FA048 = 0;
  unk_2812FA050 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_RearrangeIdOperationArgs_default_instance_);
}

uint64_t sub_2765F7FB8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812FA010 = v4;
  TSCK::_RemoveIdOperationArgs_default_instance_ = &unk_28856FD08;
  if (atomic_load_explicit(scc_info_RemoveIdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812FA028 = 0;
  qword_2812FA020 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_RemoveIdOperationArgs_default_instance_);
}

uint64_t sub_2765F806C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  TSCK::SetActivityAuthorShareParticipantIDCommandArchive::SetActivityAuthorShareParticipantIDCommandArchive(&TSCK::_SetActivityAuthorShareParticipantIDCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCK::_SetActivityAuthorShareParticipantIDCommandArchive_default_instance_);
}

uint64_t sub_2765F80DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F9F58 = v4;
  TSCK::_SetAnnotationAuthorColorCommandArchive_default_instance_ = &unk_28856FA48;
  if (atomic_load_explicit(scc_info_SetAnnotationAuthorColorCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F9F78 = 0u;
  unk_2812F9F68 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_SetAnnotationAuthorColorCommandArchive_default_instance_);
}

uint64_t sub_2765F8194(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812FA128 = v4;
  TSCK::_TransformerEntry_default_instance_ = &unk_2885701D8;
  if (atomic_load_explicit(scc_info_TransformerEntry_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FA138 = 0;
  unk_2812FA140 = 0;
  qword_2812FA148 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCK::_TransformerEntry_default_instance_);
}

TSP::LargeArray *TSCK::CollaborationCommandHistoryArray::clear_large_array(TSCK::CollaborationCommandHistoryArray *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::LargeArray::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::CollaborationCommandHistoryArray *TSCK::CollaborationCommandHistoryArray::CollaborationCommandHistoryArray(TSCK::CollaborationCommandHistoryArray *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856F418;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryArray_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28856F418;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryArray_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCK::CollaborationCommandHistoryArray *TSCK::CollaborationCommandHistoryArray::CollaborationCommandHistoryArray(TSCK::CollaborationCommandHistoryArray *this, const TSCK::CollaborationCommandHistoryArray *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28856F418;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSCK::CollaborationCommandHistoryArray::~CollaborationCommandHistoryArray(TSCK::CollaborationCommandHistoryArray *this)
{
  if (this != &TSCK::_CollaborationCommandHistoryArray_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C990C0]();
    MEMORY[0x277C999C0](v2, 0x10A1C40B3F725BALL);
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::CollaborationCommandHistoryArray::~CollaborationCommandHistoryArray(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *sub_2765F8538(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (!*(v1 & 0xFFFFFFFFFFFFFFFELL) && v2 != 0)
    {
      v4 = *(v2 + 8);
      if (v4 != *(v2 + 16))
      {
        google::protobuf::UnknownFieldSet::ClearFallback((v2 + 8));
        v4 = *(v2 + 8);
      }

      if (v4)
      {
        *(v2 + 16) = v4;
        operator delete(v4);
      }

      JUMPOUT(0x277C999C0);
    }
  }

  return result;
}

uint64_t *TSCK::CollaborationCommandHistoryArray::default_instance(TSCK::CollaborationCommandHistoryArray *this)
{
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryArray_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_CollaborationCommandHistoryArray_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCK::CollaborationCommandHistoryArray::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSP::LargeArray::Clear(*(this + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27662D2EC(v2);
  }

  return this;
}

google::protobuf::internal *TSCK::CollaborationCommandHistoryArray::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  for (i = *(a3 + 92); (sub_27662CC00(a3, &v16, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v16 + 1);
    v7 = *v16;
    if (*v16 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v8 - 128));
        v16 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v14;
        goto LABEL_7;
      }

      v6 = (v16 + 2);
    }

    v16 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C99460](v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_276635740(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27662D0DC((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *TSCK::CollaborationCommandHistoryArray::_InternalSerialize(TSCK::CollaborationCommandHistoryArray *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSP::LargeArray::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::CollaborationCommandHistoryArray::ByteSizeLong(TSP::LargeArray **this)
{
  if (this[2])
  {
    v3 = TSP::LargeArray::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSCK::CollaborationCommandHistoryArray::MergeFrom(TSCK::CollaborationCommandHistoryArray *a1, void *lpsrc)
{
  if (v4)
  {

    return TSCK::CollaborationCommandHistoryArray::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::CollaborationCommandHistoryArray::MergeFrom(uint64_t this, const TSCK::CollaborationCommandHistoryArray *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;
    if (!*(v3 + 24))
    {
      v5 = *(v3 + 8);
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 24) = MEMORY[0x277C99460](v5);
    }

    return MEMORY[0x2821EA748]();
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSCK::CollaborationCommandHistoryArray::CopyFrom(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::CollaborationCommandHistoryArray::Clear(result);

    return TSCK::CollaborationCommandHistoryArray::MergeFrom(v4, a2);
  }

  return result;
}

const TSCK::CollaborationCommandHistoryArray *TSCK::CollaborationCommandHistoryArray::CopyFrom(const TSCK::CollaborationCommandHistoryArray *this, const TSCK::CollaborationCommandHistoryArray *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::CollaborationCommandHistoryArray::Clear(this);

    return TSCK::CollaborationCommandHistoryArray::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::CollaborationCommandHistoryArray::IsInitialized(TSP::LargeArray **this)
{
  if (this[2])
  {
    return TSP::LargeArray::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSCK::CollaborationCommandHistoryArray::InternalSwap(TSCK::CollaborationCommandHistoryArray *this, TSCK::CollaborationCommandHistoryArray *a2)
{
  result = sub_2765F8BC4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t *sub_2765F8BC4(uint64_t *result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  if (*result)
  {
    if ((v3 & 1) == 0)
    {
      v4 = sub_27662D0DC(a2);
      goto LABEL_6;
    }
  }

  else if ((v3 & 1) == 0)
  {
    return result;
  }

  v4 = ((v3 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_6:

  return sub_27662D33C(v2, v4);
}

TSP::LargeObjectArraySegment *TSCK::CollaborationCommandHistoryArraySegment::clear_large_object_array_segment(TSCK::CollaborationCommandHistoryArraySegment *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::LargeObjectArraySegment::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::CollaborationCommandHistoryArraySegment *TSCK::CollaborationCommandHistoryArraySegment::CollaborationCommandHistoryArraySegment(TSCK::CollaborationCommandHistoryArraySegment *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856F4C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryArraySegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28856F4C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryArraySegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCK::CollaborationCommandHistoryArraySegment *TSCK::CollaborationCommandHistoryArraySegment::CollaborationCommandHistoryArraySegment(TSCK::CollaborationCommandHistoryArraySegment *this, const TSCK::CollaborationCommandHistoryArraySegment *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28856F4C8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSCK::CollaborationCommandHistoryArraySegment::~CollaborationCommandHistoryArraySegment(TSCK::CollaborationCommandHistoryArraySegment *this)
{
  if (this != &TSCK::_CollaborationCommandHistoryArraySegment_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C991B0]();
    MEMORY[0x277C999C0](v2, 0x10A1C40D196C376);
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::CollaborationCommandHistoryArraySegment::~CollaborationCommandHistoryArraySegment(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::CollaborationCommandHistoryArraySegment::default_instance(TSCK::CollaborationCommandHistoryArraySegment *this)
{
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryArraySegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_CollaborationCommandHistoryArraySegment_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCK::CollaborationCommandHistoryArraySegment::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSP::LargeObjectArraySegment::Clear(*(this + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27662D2EC(v2);
  }

  return this;
}

google::protobuf::internal *TSCK::CollaborationCommandHistoryArraySegment::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  for (i = *(a3 + 92); (sub_27662CC00(a3, &v16, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v16 + 1);
    v7 = *v16;
    if (*v16 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v8 - 128));
        v16 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v14;
        goto LABEL_7;
      }

      v6 = (v16 + 2);
    }

    v16 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C99490](v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_276635810(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27662D0DC((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *TSCK::CollaborationCommandHistoryArraySegment::_InternalSerialize(TSCK::CollaborationCommandHistoryArraySegment *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSP::LargeObjectArraySegment::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::CollaborationCommandHistoryArraySegment::ByteSizeLong(TSP::LargeObjectArraySegment **this)
{
  if (this[2])
  {
    v3 = TSP::LargeObjectArraySegment::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSCK::CollaborationCommandHistoryArraySegment::MergeFrom(TSCK::CollaborationCommandHistoryArraySegment *a1, void *lpsrc)
{
  if (v4)
  {

    return TSCK::CollaborationCommandHistoryArraySegment::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::CollaborationCommandHistoryArraySegment::MergeFrom(uint64_t this, const TSCK::CollaborationCommandHistoryArraySegment *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;
    if (!*(v3 + 24))
    {
      v5 = *(v3 + 8);
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 24) = MEMORY[0x277C99490](v5);
    }

    return MEMORY[0x2821EA8F0]();
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSCK::CollaborationCommandHistoryArraySegment::CopyFrom(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::CollaborationCommandHistoryArraySegment::Clear(result);

    return TSCK::CollaborationCommandHistoryArraySegment::MergeFrom(v4, a2);
  }

  return result;
}

const TSCK::CollaborationCommandHistoryArraySegment *TSCK::CollaborationCommandHistoryArraySegment::CopyFrom(const TSCK::CollaborationCommandHistoryArraySegment *this, const TSCK::CollaborationCommandHistoryArraySegment *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::CollaborationCommandHistoryArraySegment::Clear(this);

    return TSCK::CollaborationCommandHistoryArraySegment::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::CollaborationCommandHistoryArraySegment::IsInitialized(TSP::LargeObjectArraySegment **this)
{
  if (this[2])
  {
    return TSP::LargeObjectArraySegment::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSCK::CollaborationCommandHistoryArraySegment::InternalSwap(TSCK::CollaborationCommandHistoryArraySegment *this, TSCK::CollaborationCommandHistoryArraySegment *a2)
{
  result = sub_2765F8BC4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSP::Reference *TSCK::CollaborationCommandHistory_ItemList::clear_items_array(TSCK::CollaborationCommandHistory_ItemList *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSCK::CollaborationCommandHistory_ItemList::clear_transformer_entries(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSCK::CollaborationCommandHistory_ItemList *TSCK::CollaborationCommandHistory_ItemList::CollaborationCommandHistory_ItemList(TSCK::CollaborationCommandHistory_ItemList *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856F578;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistory_ItemList_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCK::CollaborationCommandHistory_ItemList *TSCK::CollaborationCommandHistory_ItemList::CollaborationCommandHistory_ItemList(TSCK::CollaborationCommandHistory_ItemList *this, const TSCK::CollaborationCommandHistory_ItemList *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28856F578;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27662D428(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_27662D2A0(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_2765F970C(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v2, 0x1081C407D3F2757);
  sub_27662D3A4((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCK::CollaborationCommandHistory_ItemList::~CollaborationCommandHistory_ItemList(TSCK::CollaborationCommandHistory_ItemList *this)
{
  if (this != &TSCK::_CollaborationCommandHistory_ItemList_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
  sub_27662D3A4(this + 3);
}

{
  TSCK::CollaborationCommandHistory_ItemList::~CollaborationCommandHistory_ItemList(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::CollaborationCommandHistory_ItemList::default_instance(TSCK::CollaborationCommandHistory_ItemList *this)
{
  if (atomic_load_explicit(scc_info_CollaborationCommandHistory_ItemList_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_CollaborationCommandHistory_ItemList_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCK::CollaborationCommandHistory_ItemList::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::Reference::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_27662D2EC(v5);
  }

  return this;
}

google::protobuf::internal *TSCK::CollaborationCommandHistory_ItemList::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_27662CC00(a3, &v25, i))
    {
      return v25;
    }

    v6 = (v25 + 1);
    v7 = *v25;
    if ((*v25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v25 + 2);
LABEL_6:
      v25 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v8 - 128));
    v25 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v23;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v20 = *(a1 + 48);
    if (!v20)
    {
      v21 = *(a1 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277C994F0](v21);
      *(a1 + 48) = v20;
      v6 = v25;
    }

    v11 = sub_2766358E0(a3, v20, v6);
LABEL_37:
    v25 = v11;
    if (!v11)
    {
      return 0;
    }

LABEL_38:
    ;
  }

  if (v7 == 18)
  {
    v12 = v6 - 1;
    while (1)
    {
      v13 = (v12 + 1);
      v25 = (v12 + 1);
      v14 = *(a1 + 40);
      if (!v14)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 32);
      v15 = *v14;
      if (v19 < *v14)
      {
        *(a1 + 32) = v19 + 1;
        v16 = *&v14[2 * v19 + 2];
        goto LABEL_26;
      }

      if (v15 == *(a1 + 36))
      {
LABEL_22:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v14 = *(a1 + 40);
        v15 = *v14;
      }

      *v14 = v15 + 1;
      v16 = MEMORY[0x277C994F0](*(a1 + 24));
      v17 = *(a1 + 32);
      v18 = *(a1 + 40) + 8 * v17;
      *(a1 + 32) = v17 + 1;
      *(v18 + 8) = v16;
      v13 = v25;
LABEL_26:
      v12 = sub_2766358E0(a3, v16, v13);
      v25 = v12;
      if (!v12)
      {
        return 0;
      }

      if (*a3 <= v12 || *v12 != 18)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_12:
  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27662D0DC((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_37;
  }

  *(a3 + 80) = v7 - 1;
  return v25;
}

unsigned __int8 *TSCK::CollaborationCommandHistory_ItemList::_InternalSerialize(TSCK::CollaborationCommandHistory_ItemList *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 6);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 8);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 5);
      if (v14 > 0x7F)
      {
        a2[1] = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v15 = a2 + 3;
          do
          {
            *(v15 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++v15;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(v15 - 1) = v17;
        }

        else
        {
          a2[2] = v16;
          v15 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v14;
        v15 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::CollaborationCommandHistory_ItemList::ByteSizeLong(TSCK::CollaborationCommandHistory_ItemList *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::Reference::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 16))
  {
    v8 = TSP::Reference::ByteSizeLong(*(this + 6));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSCK::CollaborationCommandHistory_ItemList::MergeFrom(TSCK::CollaborationCommandHistory_ItemList *a1, void *lpsrc)
{
  if (v4)
  {

    return TSCK::CollaborationCommandHistory_ItemList::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::CollaborationCommandHistory_ItemList::MergeFrom(uint64_t this, const TSCK::CollaborationCommandHistory_ItemList *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27662D428((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 6);
    *(v3 + 16) |= 1u;
    v11 = *(v3 + 48);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C994F0](v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v11, v13);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSCK::CollaborationCommandHistory_ItemList::CopyFrom(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::CollaborationCommandHistory_ItemList::Clear(result);

    return TSCK::CollaborationCommandHistory_ItemList::MergeFrom(v4, a2);
  }

  return result;
}

const TSCK::CollaborationCommandHistory_ItemList *TSCK::CollaborationCommandHistory_ItemList::CopyFrom(const TSCK::CollaborationCommandHistory_ItemList *this, const TSCK::CollaborationCommandHistory_ItemList *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::CollaborationCommandHistory_ItemList::Clear(this);

    return TSCK::CollaborationCommandHistory_ItemList::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::CollaborationCommandHistory_ItemList::IsInitialized(TSCK::CollaborationCommandHistory_ItemList *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCK::CollaborationCommandHistory_ItemList::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2765F8BC4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v8;
  return result;
}

TSP::UUID *TSCK::CollaborationCommandHistory::clear_local_identifier(TSCK::CollaborationCommandHistory *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::CollaborationCommandHistory *TSCK::CollaborationCommandHistory::CollaborationCommandHistory(TSCK::CollaborationCommandHistory *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856F628;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistory_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_28856F628;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistory_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSCK::CollaborationCommandHistory *TSCK::CollaborationCommandHistory::CollaborationCommandHistory(TSCK::CollaborationCommandHistory *this, const TSCK::CollaborationCommandHistory *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28856F628;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  return this;
}

void TSCK::CollaborationCommandHistory::~CollaborationCommandHistory(TSCK::CollaborationCommandHistory *this)
{
  if (this != &TSCK::_CollaborationCommandHistory_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C999C0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSCK::CollaborationCommandHistory_ItemList::~CollaborationCommandHistory_ItemList(v3);
      MEMORY[0x277C999C0]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSCK::CollaborationCommandHistory_ItemList::~CollaborationCommandHistory_ItemList(v4);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::CollaborationCommandHistory::~CollaborationCommandHistory(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::CollaborationCommandHistory::default_instance(TSCK::CollaborationCommandHistory *this)
{
  if (atomic_load_explicit(scc_info_CollaborationCommandHistory_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_CollaborationCommandHistory_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCK::CollaborationCommandHistory::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSP::UUID::Clear(*(this + 3));
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    this = TSCK::CollaborationCommandHistory_ItemList::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSCK::CollaborationCommandHistory_ItemList::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return this;
}

google::protobuf::internal *TSCK::CollaborationCommandHistory::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  for (i = *(a3 + 92); (sub_27662CC00(a3, &v21, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v21 + 1);
    v7 = *v21;
    if ((*v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v21 + 2);
LABEL_6:
      v21 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v8 - 128));
    v21 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v19;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v13 = *(a1 + 40);
        if (!v13)
        {
          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaborationCommandHistory_ItemList>(v15);
          *(a1 + 40) = v13;
LABEL_30:
          v6 = v21;
        }

LABEL_31:
        v12 = sub_276635A80(a3, v13, v6);
        goto LABEL_37;
      }
    }

    else if (v9 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v13 = *(a1 + 32);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaborationCommandHistory_ItemList>(v14);
          *(a1 + 32) = v13;
          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    else if (v9 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v16 = *(a1 + 24);
      if (!v16)
      {
        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C994B0](v17);
        *(a1 + 24) = v16;
        v6 = v21;
      }

      v12 = sub_2766359B0(a3, v16, v6);
      goto LABEL_37;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      *(a3 + 80) = v7 - 1;
      return v21;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27662D0DC((a1 + 8));
    }

    v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v21 = v12;
    if (!v12)
    {
      return 0;
    }
  }

  return v21;
}

unsigned __int8 *TSCK::CollaborationCommandHistory::_InternalSerialize(TSCK::CollaborationCommandHistory *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 4);
  *a2 = 18;
  v13 = *(v12 + 5);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = TSCK::CollaborationCommandHistory_ItemList::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 5);
    *a2 = 26;
    v19 = *(v18 + 5);
    if (v19 > 0x7F)
    {
      a2[1] = v19 | 0x80;
      v21 = v19 >> 7;
      if (v19 >> 14)
      {
        v20 = a2 + 3;
        do
        {
          *(v20 - 1) = v21 | 0x80;
          v22 = v21 >> 7;
          ++v20;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
        *(v20 - 1) = v22;
      }

      else
      {
        a2[2] = v21;
        v20 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v19;
      v20 = a2 + 2;
    }

    a2 = TSCK::CollaborationCommandHistory_ItemList::_InternalSerialize(v18, v20, a3);
  }

LABEL_35:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::CollaborationCommandHistory::ByteSizeLong(TSCK::CollaborationCommandHistory *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = TSCK::CollaborationCommandHistory_ItemList::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = TSCK::CollaborationCommandHistory_ItemList::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSCK::CollaborationCommandHistory::MergeFrom(TSCK::CollaborationCommandHistory *a1, void *lpsrc)
{
  if (v4)
  {

    return TSCK::CollaborationCommandHistory::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::CollaborationCommandHistory::MergeFrom(uint64_t this, const TSCK::CollaborationCommandHistory *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C994B0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v9 = *(v3 + 32);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaborationCommandHistory_ItemList>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSCK::_CollaborationCommandHistory_ItemList_default_instance_;
      }

      this = TSCK::CollaborationCommandHistory_ItemList::MergeFrom(v9, v11);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v12 = *(v3 + 40);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaborationCommandHistory_ItemList>(v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 5))
      {
        v14 = *(a2 + 5);
      }

      else
      {
        v14 = &TSCK::_CollaborationCommandHistory_ItemList_default_instance_;
      }

      return TSCK::CollaborationCommandHistory_ItemList::MergeFrom(v12, v14);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSCK::CollaborationCommandHistory::CopyFrom(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::CollaborationCommandHistory::Clear(result);

    return TSCK::CollaborationCommandHistory::MergeFrom(v4, a2);
  }

  return result;
}

const TSCK::CollaborationCommandHistory *TSCK::CollaborationCommandHistory::CopyFrom(const TSCK::CollaborationCommandHistory *this, const TSCK::CollaborationCommandHistory *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::CollaborationCommandHistory::Clear(this);

    return TSCK::CollaborationCommandHistory::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::CollaborationCommandHistory::IsInitialized(TSCK::CollaborationCommandHistory *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::UUID::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSCK::CollaborationCommandHistory_ItemList::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = TSCK::CollaborationCommandHistory_ItemList::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCK::CollaborationCommandHistory::InternalSwap(TSCK::CollaborationCommandHistory *this, TSCK::CollaborationCommandHistory *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  return result;
}

TSP::Reference *TSCK::CollaborationCommandHistoryItem::clear_command(TSCK::CollaborationCommandHistoryItem *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSCK::CollaborationCommandHistoryItem::clear_behavior(TSCK::CollaborationCommandHistoryItem *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSCK::CollaborationCommandHistoryItem::clear_coalescing_group(TSCK::CollaborationCommandHistoryItem *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSCK::CollaborationCommandHistoryItem *TSCK::CollaborationCommandHistoryItem::CollaborationCommandHistoryItem(TSCK::CollaborationCommandHistoryItem *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856F6D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryItem_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  return this;
}

TSCK::CollaborationCommandHistoryItem *TSCK::CollaborationCommandHistoryItem::CollaborationCommandHistoryItem(TSCK::CollaborationCommandHistoryItem *this, const TSCK::CollaborationCommandHistoryItem *a2)
{
  *(this + 1) = 0;
  *this = &unk_28856F6D8;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27662D2A0(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  if ((v4 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v4 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v4 & 8) != 0)
  {
    operator new();
  }

  v6 = *(a2 + 7);
  *(this + 6) = 0;
  *(this + 7) = v6;
  return this;
}

void TSCK::CollaborationCommandHistoryItem::~CollaborationCommandHistoryItem(TSCK::CollaborationCommandHistoryItem *this)
{
  sub_2765FB088(this);
  sub_2765F8538(this + 1);
}

{
  TSCK::CollaborationCommandHistoryItem::~CollaborationCommandHistoryItem(this);

  JUMPOUT(0x277C999C0);
}

TSP::Reference *sub_2765FB088(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C999C0](v2, 0x1012C40EC159624);
  }

  if (v1 != &TSCK::_CollaborationCommandHistoryItem_default_instance_)
  {
    v3 = *(v1 + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C999C0]();
    }

    v4 = *(v1 + 5);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C999C0]();
    }

    result = *(v1 + 6);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C999C0);
    }
  }

  return result;
}

void *TSCK::CollaborationCommandHistoryItem::default_instance(TSCK::CollaborationCommandHistoryItem *this)
{
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryItem_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_CollaborationCommandHistoryItem_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCK::CollaborationCommandHistoryItem::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_15:
    this = TSP::Reference::Clear(*(this + 4));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_16:
  this = TSP::Reference::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSP::Reference::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 48) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return this;
}

google::protobuf::internal *TSCK::CollaborationCommandHistoryItem::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  v5 = 0;
  if ((sub_27662CC00(a3, &v25, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v25 + 1);
      v8 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v9 - 128));
      v25 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_55;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 != 1)
        {
          if (v10 == 2 && v8 == 18)
          {
            *(a1 + 16) |= 1u;
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v15 = google::protobuf::internal::InlineGreedyStringParser();
            goto LABEL_47;
          }

          goto LABEL_40;
        }

        if (v8 != 10)
        {
LABEL_40:
          if (v8)
          {
            v20 = (v8 & 7) == 4;
          }

          else
          {
            v20 = 1;
          }

          if (v20)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27662D0DC((a1 + 8));
          }

          v15 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_47;
        }

        *(a1 + 16) |= 2u;
        v16 = *(a1 + 32);
        if (v16)
        {
          goto LABEL_39;
        }

        v19 = *(a1 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C994F0](v19);
        *(a1 + 32) = v16;
LABEL_38:
        v7 = v25;
        goto LABEL_39;
      }

      if (v10 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_40;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 40);
        if (v16)
        {
          goto LABEL_39;
        }

        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C994F0](v17);
        *(a1 + 40) = v16;
        goto LABEL_38;
      }

      if (v10 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 8u;
          v16 = *(a1 + 48);
          if (!v16)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = MEMORY[0x277C994F0](v18);
            *(a1 + 48) = v16;
            goto LABEL_38;
          }

LABEL_39:
          v15 = sub_2766358E0(a3, v16, v7);
LABEL_47:
          v25 = v15;
          if (!v15)
          {
            goto LABEL_55;
          }

          goto LABEL_48;
        }

        goto LABEL_40;
      }

      if (v10 != 5 || v8 != 40)
      {
        goto LABEL_40;
      }

      v5 |= 0x10u;
      v12 = (v7 + 1);
      v11 = *v7;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      v13 = *v12;
      v11 = (v13 << 7) + v11 - 128;
      if ((v13 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_15:
        v25 = v12;
        *(a1 + 56) = v11;
        goto LABEL_48;
      }

      v23 = google::protobuf::internal::VarintParseSlow64(v7, v11);
      v25 = v23;
      *(a1 + 56) = v24;
      if (!v23)
      {
LABEL_55:
        v25 = 0;
        goto LABEL_2;
      }

LABEL_48:
      if (sub_27662CC00(a3, &v25, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v25 + 2);
LABEL_6:
    v25 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

unsigned __int8 *TSCK::CollaborationCommandHistoryItem::_InternalSerialize(TSCK::CollaborationCommandHistoryItem *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 4);
    *v4 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_2765FB858(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 5);
  *v4 = 26;
  v14 = *(v13 + 5);
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = v4 + 3;
      do
      {
        *(v15 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v15;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v15 - 1) = v17;
    }

    else
    {
      v4[2] = v16;
      v15 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v14;
    v15 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 6);
  *v4 = 34;
  v20 = *(v19 + 5);
  if (v20 > 0x7F)
  {
    v4[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = v4 + 3;
      do
      {
        *(v21 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++v21;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(v21 - 1) = v23;
    }

    else
    {
      v4[2] = v22;
      v21 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v20;
    v21 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v19, v21, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_38:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(this + 7);
    *v4 = 40;
    if (v25 > 0x7F)
    {
      v4[1] = v25 | 0x80;
      v26 = v25 >> 7;
      if (v25 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v26 | 0x80;
          v27 = v26 >> 7;
          ++v4;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
        *(v4 - 1) = v27;
      }

      else
      {
        v4[2] = v26;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v25;
      v4 += 2;
    }
  }

LABEL_47:
  v29 = *(this + 1);
  if ((v29 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v29 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_2765FB858(uint64_t *a1, uint64_t a2, const void **a3, _BYTE *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = v7 + 1;
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return v14 + v4;
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return MEMORY[0x2821EAB50](a1, a2);
}

uint64_t TSCK::CollaborationCommandHistoryItem::ByteSizeLong(TSCK::CollaborationCommandHistoryItem *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v9 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v10 = TSP::Reference::ByteSizeLong(*(this + 6));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_13:
    v3 += ((9 * (__clz(*(this + 7) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_14:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSCK::CollaborationCommandHistoryItem::MergeFrom(TSCK::CollaborationCommandHistoryItem *a1, void *lpsrc)
{
  if (v4)
  {

    return TSCK::CollaborationCommandHistoryItem::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::CollaborationCommandHistoryItem::MergeFrom(uint64_t this, const TSCK::CollaborationCommandHistoryItem *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x1F) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    v6 = MEMORY[0x277D80A18];
    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v7 = *(v3 + 32);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x277C994F0](v8);
        *(v3 + 32) = v7;
      }

      if (*(a2 + 4))
      {
        v9 = *(a2 + 4);
      }

      else
      {
        v9 = v6;
      }

      this = TSP::Reference::MergeFrom(v7, v9);
      if ((v5 & 4) == 0)
      {
LABEL_8:
        if ((v5 & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_29;
      }
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    *(v3 + 16) |= 4u;
    v10 = *(v3 + 40);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C994F0](v11);
      *(v3 + 40) = v10;
    }

    if (*(a2 + 5))
    {
      v12 = *(a2 + 5);
    }

    else
    {
      v12 = v6;
    }

    this = TSP::Reference::MergeFrom(v10, v12);
    if ((v5 & 8) == 0)
    {
LABEL_9:
      if ((v5 & 0x10) == 0)
      {
LABEL_11:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_10:
      *(v3 + 56) = *(a2 + 7);
      goto LABEL_11;
    }

LABEL_29:
    *(v3 + 16) |= 8u;
    v13 = *(v3 + 48);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C994F0](v14);
      *(v3 + 48) = v13;
    }

    if (*(a2 + 6))
    {
      v15 = *(a2 + 6);
    }

    else
    {
      v15 = v6;
    }

    this = TSP::Reference::MergeFrom(v13, v15);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSCK::CollaborationCommandHistoryItem::CopyFrom(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::CollaborationCommandHistoryItem::Clear(result);

    return TSCK::CollaborationCommandHistoryItem::MergeFrom(v4, a2);
  }

  return result;
}

const TSCK::CollaborationCommandHistoryItem *TSCK::CollaborationCommandHistoryItem::CopyFrom(const TSCK::CollaborationCommandHistoryItem *this, const TSCK::CollaborationCommandHistoryItem *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::CollaborationCommandHistoryItem::Clear(this);

    return TSCK::CollaborationCommandHistoryItem::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::CollaborationCommandHistoryItem::IsInitialized(TSCK::CollaborationCommandHistoryItem *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCK::CollaborationCommandHistoryItem::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2765F8BC4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[1].n128_u64[1];
  this[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v5;
  v6 = this[2].n128_u64[0];
  v7 = this[2].n128_u64[1];
  this[2] = a2[2];
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u64[1] = v7;
  v8 = this[3].n128_u64[0];
  v9 = this[3].n128_u64[1];
  result = a2[3];
  this[3] = result;
  a2[3].n128_u64[0] = v8;
  a2[3].n128_u64[1] = v9;
  return result;
}

uint64_t TSCK::CollaborationCommandHistoryCoalescingGroup::clear_nodes(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSCK::CollaborationCommandHistoryCoalescingGroup *TSCK::CollaborationCommandHistoryCoalescingGroup::CollaborationCommandHistoryCoalescingGroup(TSCK::CollaborationCommandHistoryCoalescingGroup *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856F788;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryCoalescingGroup_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 48) = 0;
  return this;
}

TSCK::CollaborationCommandHistoryCoalescingGroup *TSCK::CollaborationCommandHistoryCoalescingGroup::CollaborationCommandHistoryCoalescingGroup(TSCK::CollaborationCommandHistoryCoalescingGroup *this, const TSCK::CollaborationCommandHistoryCoalescingGroup *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28856F788;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27662D428(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_27662D2A0(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 48) = *(a2 + 48);
  return this;
}

void TSCK::CollaborationCommandHistoryCoalescingGroup::~CollaborationCommandHistoryCoalescingGroup(TSCK::CollaborationCommandHistoryCoalescingGroup *this)
{
  sub_2765F8538(this + 1);
  sub_27662D3A4(this + 3);
}

{
  TSCK::CollaborationCommandHistoryCoalescingGroup::~CollaborationCommandHistoryCoalescingGroup(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::CollaborationCommandHistoryCoalescingGroup::default_instance(TSCK::CollaborationCommandHistoryCoalescingGroup *this)
{
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryCoalescingGroup_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_CollaborationCommandHistoryCoalescingGroup_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCK::CollaborationCommandHistoryCoalescingGroup::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_27662D2EC(v5);
  }

  return this;
}

google::protobuf::internal *TSCK::CollaborationCommandHistoryCoalescingGroup::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_27662CC00(a3, &v27, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v27 + 1);
      v8 = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
      v27 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 != 1 || v8 != 10)
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27662D0DC((a1 + 8));
          }

          v27 = google::protobuf::internal::UnknownFieldParse();
          if (!v27)
          {
LABEL_44:
            v27 = 0;
            goto LABEL_2;
          }

          goto LABEL_25;
        }

        v15 = v7 - 1;
        while (2)
        {
          v16 = (v15 + 1);
          v27 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v17 = *(a1 + 40);
            v18 = *v17;
            goto LABEL_30;
          }

          v22 = *(a1 + 32);
          v18 = *v17;
          if (v22 >= *v17)
          {
            if (v18 == *(a1 + 36))
            {
              goto LABEL_29;
            }

LABEL_30:
            *v17 = v18 + 1;
            v19 = MEMORY[0x277C994F0](*(a1 + 24));
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v27;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_2766358E0(a3, v19, v16);
          v27 = v15;
          if (!v15)
          {
            goto LABEL_44;
          }

          if (*a3 <= v15 || *v15 != 10)
          {
            goto LABEL_25;
          }

          continue;
        }
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v13 = (v7 + 1);
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_24:
        v27 = v13;
        *(a1 + 48) = v12 != 0;
        v5 = 1;
        goto LABEL_25;
      }

      v25 = google::protobuf::internal::VarintParseSlow64(v7, v12);
      v27 = v25;
      *(a1 + 48) = v26 != 0;
      v5 = 1;
      if (!v25)
      {
        goto LABEL_44;
      }

LABEL_25:
      if (sub_27662CC00(a3, &v27, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v27 + 2);
LABEL_6:
    v27 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

unsigned __int8 *TSCK::CollaborationCommandHistoryCoalescingGroup::_InternalSerialize(TSCK::CollaborationCommandHistoryCoalescingGroup *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 5) + 8 * i + 8);
      *a2 = 10;
      v8 = *(v7 + 5);
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = a2 + 3;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          a2[2] = v10;
          v9 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v8;
        v9 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 48);
    *a2 = 16;
    a2[1] = v13;
    a2 += 2;
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::CollaborationCommandHistoryCoalescingGroup::ByteSizeLong(TSCK::CollaborationCommandHistoryCoalescingGroup *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::Reference::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = 2 * (*(this + 4) & 1);
  v9 = v2 + v8;
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v9, this + 20);
  }

  else
  {
    *(this + 5) = v9;
    return v2 + v8;
  }
}

uint64_t TSCK::CollaborationCommandHistoryCoalescingGroup::MergeFrom(TSCK::CollaborationCommandHistoryCoalescingGroup *a1, void *lpsrc)
{
  if (v4)
  {

    return TSCK::CollaborationCommandHistoryCoalescingGroup::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::CollaborationCommandHistoryCoalescingGroup::MergeFrom(uint64_t this, const TSCK::CollaborationCommandHistoryCoalescingGroup *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27662D428((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 48);
    *(v3 + 16) |= 1u;
    *(v3 + 48) = v10;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSCK::CollaborationCommandHistoryCoalescingGroup::CopyFrom(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::CollaborationCommandHistoryCoalescingGroup::Clear(result);

    return TSCK::CollaborationCommandHistoryCoalescingGroup::MergeFrom(v4, a2);
  }

  return result;
}

const TSCK::CollaborationCommandHistoryCoalescingGroup *TSCK::CollaborationCommandHistoryCoalescingGroup::CopyFrom(const TSCK::CollaborationCommandHistoryCoalescingGroup *this, const TSCK::CollaborationCommandHistoryCoalescingGroup *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::CollaborationCommandHistoryCoalescingGroup::Clear(this);

    return TSCK::CollaborationCommandHistoryCoalescingGroup::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCK::CollaborationCommandHistoryCoalescingGroup::IsInitialized(TSCK::CollaborationCommandHistoryCoalescingGroup *this)
{
  v2 = *(this + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSCK::CollaborationCommandHistoryCoalescingGroup::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2765F8BC4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  LOBYTE(v5) = this[3].n128_u8[0];
  this[3].n128_u8[0] = a2[3].n128_u8[0];
  a2[3].n128_u8[0] = v5;
  return result;
}

TSP::Reference *TSCK::CollaborationCommandHistoryCoalescingGroupNode::clear_command(TSCK::CollaborationCommandHistoryCoalescingGroupNode *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::CollaborationCommandHistoryCoalescingGroupNode *TSCK::CollaborationCommandHistoryCoalescingGroupNode::CollaborationCommandHistoryCoalescingGroupNode(TSCK::CollaborationCommandHistoryCoalescingGroupNode *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856F838;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryCoalescingGroupNode_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28856F838;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryCoalescingGroupNode_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCK::CollaborationCommandHistoryCoalescingGroupNode *TSCK::CollaborationCommandHistoryCoalescingGroupNode::CollaborationCommandHistoryCoalescingGroupNode(TSCK::CollaborationCommandHistoryCoalescingGroupNode *this, const TSCK::CollaborationCommandHistoryCoalescingGroupNode *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28856F838;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSCK::CollaborationCommandHistoryCoalescingGroupNode::~CollaborationCommandHistoryCoalescingGroupNode(TSCK::CollaborationCommandHistoryCoalescingGroupNode *this)
{
  if (this != &TSCK::_CollaborationCommandHistoryCoalescingGroupNode_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::CollaborationCommandHistoryCoalescingGroupNode::~CollaborationCommandHistoryCoalescingGroupNode(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::CollaborationCommandHistoryCoalescingGroupNode::default_instance(TSCK::CollaborationCommandHistoryCoalescingGroupNode *this)
{
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryCoalescingGroupNode_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_CollaborationCommandHistoryCoalescingGroupNode_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCK::CollaborationCommandHistoryCoalescingGroupNode::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSP::Reference::Clear(*(this + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27662D2EC(v2);
  }

  return this;
}

google::protobuf::internal *TSCK::CollaborationCommandHistoryCoalescingGroupNode::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  for (i = *(a3 + 92); (sub_27662CC00(a3, &v16, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v16 + 1);
    v7 = *v16;
    if (*v16 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v8 - 128));
        v16 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v14;
        goto LABEL_7;
      }

      v6 = (v16 + 2);
    }

    v16 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C994F0](v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_2766358E0(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27662D0DC((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *TSCK::CollaborationCommandHistoryCoalescingGroupNode::_InternalSerialize(TSCK::CollaborationCommandHistoryCoalescingGroupNode *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::CollaborationCommandHistoryCoalescingGroupNode::ByteSizeLong(TSP::Reference **this)
{
  if (this[2])
  {
    v3 = TSP::Reference::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSCK::CollaborationCommandHistoryCoalescingGroupNode::MergeFrom(TSCK::CollaborationCommandHistoryCoalescingGroupNode *a1, void *lpsrc)
{
  if (v4)
  {

    return TSCK::CollaborationCommandHistoryCoalescingGroupNode::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::CollaborationCommandHistoryCoalescingGroupNode::MergeFrom(uint64_t this, const TSCK::CollaborationCommandHistoryCoalescingGroupNode *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C994F0](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v6, v8);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSCK::CollaborationCommandHistoryCoalescingGroupNode::CopyFrom(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::CollaborationCommandHistoryCoalescingGroupNode::Clear(result);

    return TSCK::CollaborationCommandHistoryCoalescingGroupNode::MergeFrom(v4, a2);
  }

  return result;
}

const TSCK::CollaborationCommandHistoryCoalescingGroupNode *TSCK::CollaborationCommandHistoryCoalescingGroupNode::CopyFrom(const TSCK::CollaborationCommandHistoryCoalescingGroupNode *this, const TSCK::CollaborationCommandHistoryCoalescingGroupNode *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::CollaborationCommandHistoryCoalescingGroupNode::Clear(this);

    return TSCK::CollaborationCommandHistoryCoalescingGroupNode::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::CollaborationCommandHistoryCoalescingGroupNode::IsInitialized(TSCK::CollaborationCommandHistoryCoalescingGroupNode *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSCK::CollaborationCommandHistoryCoalescingGroupNode::InternalSwap(TSCK::CollaborationCommandHistoryCoalescingGroupNode *this, TSCK::CollaborationCommandHistoryCoalescingGroupNode *a2)
{
  result = sub_2765F8BC4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSP::Reference *TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::clear_coalescing_group(TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::clear_node(TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver(TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856F8E8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_28856F8E8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver(TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *this, const TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28856F8E8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::~CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver(TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *this)
{
  if (this != &TSCK::_CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C999C0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::~CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::default_instance(TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *this)
{
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::Reference::Clear(*(this + 3));
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return this;
}

google::protobuf::internal *TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  for (i = *(a3 + 92); (sub_27662CC00(a3, &v18, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v18 + 1);
    v7 = *v18;
    if ((*v18 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v18 + 2);
LABEL_6:
      v18 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v8 - 128));
    v18 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v16;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v12 = *(a1 + 32);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277C994F0](v13);
          *(a1 + 32) = v12;
LABEL_28:
          v6 = v18;
        }

LABEL_29:
        v11 = sub_2766358E0(a3, v12, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 24);
      if (!v12)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C994F0](v14);
        *(a1 + 24) = v12;
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      *(a3 + 80) = v7 - 1;
      return v18;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27662D0DC((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_30:
    v18 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v18;
}

unsigned __int8 *TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::_InternalSerialize(TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 4);
    *a2 = 18;
    v13 = *(v12 + 5);
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v15 = v13 >> 7;
      if (v13 >> 14)
      {
        v14 = a2 + 3;
        do
        {
          *(v14 - 1) = v15 | 0x80;
          v16 = v15 >> 7;
          ++v14;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
        *(v14 - 1) = v16;
      }

      else
      {
        a2[2] = v15;
        v14 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v13;
      v14 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::ByteSizeLong(TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::MergeFrom(TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *a1, void *lpsrc)
{
  if (v4)
  {

    return TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::MergeFrom(uint64_t this, const TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    v6 = MEMORY[0x277D80A18];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x277C994F0](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = v6;
      }

      this = TSP::Reference::MergeFrom(v7, v9);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v10 = *(v3 + 32);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x277C994F0](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 4))
      {
        v12 = *(a2 + 4);
      }

      else
      {
        v12 = v6;
      }

      return TSP::Reference::MergeFrom(v10, v12);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::CopyFrom(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::Clear(result);

    return TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::MergeFrom(v4, a2);
  }

  return result;
}

const TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::CopyFrom(const TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *this, const TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::Clear(this);

    return TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::IsInitialized(TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::InternalSwap(TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *this, TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  return result;
}

TSP::Reference *TSCK::DocumentSupportCollaborationState::clear_collaboration_command_history(TSCK::DocumentSupportCollaborationState *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSCK::DocumentSupportCollaborationState::clear_collaboration_session_state(TSCK::DocumentSupportCollaborationState *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCK::DocumentSupportCollaborationState *TSCK::DocumentSupportCollaborationState::DocumentSupportCollaborationState(TSCK::DocumentSupportCollaborationState *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856F998;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DocumentSupportCollaborationState_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_28856F998;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DocumentSupportCollaborationState_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCK::DocumentSupportCollaborationState *TSCK::DocumentSupportCollaborationState::DocumentSupportCollaborationState(TSCK::DocumentSupportCollaborationState *this, const TSCK::DocumentSupportCollaborationState *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28856F998;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TSCK::DocumentSupportCollaborationState::~DocumentSupportCollaborationState(TSCK::DocumentSupportCollaborationState *this)
{
  if (this != &TSCK::_DocumentSupportCollaborationState_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C999C0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::DocumentSupportCollaborationState::~DocumentSupportCollaborationState(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::DocumentSupportCollaborationState::default_instance(TSCK::DocumentSupportCollaborationState *this)
{
  if (atomic_load_explicit(scc_info_DocumentSupportCollaborationState_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_DocumentSupportCollaborationState_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCK::DocumentSupportCollaborationState::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::Reference::Clear(*(this + 3));
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return this;
}

google::protobuf::internal *TSCK::DocumentSupportCollaborationState::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  for (i = *(a3 + 92); (sub_27662CC00(a3, &v18, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v18 + 1);
    v7 = *v18;
    if ((*v18 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v18 + 2);
LABEL_6:
      v18 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v8 - 128));
    v18 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v16;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v12 = *(a1 + 32);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277C994F0](v13);
          *(a1 + 32) = v12;
LABEL_28:
          v6 = v18;
        }

LABEL_29:
        v11 = sub_2766358E0(a3, v12, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 24);
      if (!v12)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C994F0](v14);
        *(a1 + 24) = v12;
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      *(a3 + 80) = v7 - 1;
      return v18;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27662D0DC((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_30:
    v18 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v18;
}

unsigned __int8 *TSCK::DocumentSupportCollaborationState::_InternalSerialize(TSCK::DocumentSupportCollaborationState *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 4);
    *a2 = 18;
    v13 = *(v12 + 5);
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v15 = v13 >> 7;
      if (v13 >> 14)
      {
        v14 = a2 + 3;
        do
        {
          *(v14 - 1) = v15 | 0x80;
          v16 = v15 >> 7;
          ++v14;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
        *(v14 - 1) = v16;
      }

      else
      {
        a2[2] = v15;
        v14 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v13;
      v14 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::DocumentSupportCollaborationState::ByteSizeLong(TSCK::DocumentSupportCollaborationState *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSCK::DocumentSupportCollaborationState::MergeFrom(TSCK::DocumentSupportCollaborationState *a1, void *lpsrc)
{
  if (v4)
  {

    return TSCK::DocumentSupportCollaborationState::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::DocumentSupportCollaborationState::MergeFrom(uint64_t this, const TSCK::DocumentSupportCollaborationState *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    v6 = MEMORY[0x277D80A18];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x277C994F0](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = v6;
      }

      this = TSP::Reference::MergeFrom(v7, v9);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v10 = *(v3 + 32);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x277C994F0](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 4))
      {
        v12 = *(a2 + 4);
      }

      else
      {
        v12 = v6;
      }

      return TSP::Reference::MergeFrom(v10, v12);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSCK::DocumentSupportCollaborationState::CopyFrom(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::DocumentSupportCollaborationState::Clear(result);

    return TSCK::DocumentSupportCollaborationState::MergeFrom(v4, a2);
  }

  return result;
}

const TSCK::DocumentSupportCollaborationState *TSCK::DocumentSupportCollaborationState::CopyFrom(const TSCK::DocumentSupportCollaborationState *this, const TSCK::DocumentSupportCollaborationState *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::DocumentSupportCollaborationState::Clear(this);

    return TSCK::DocumentSupportCollaborationState::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::DocumentSupportCollaborationState::IsInitialized(TSCK::DocumentSupportCollaborationState *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCK::DocumentSupportCollaborationState::InternalSwap(TSCK::DocumentSupportCollaborationState *this, TSCK::DocumentSupportCollaborationState *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  return result;
}

TSK::CommandArchive *TSCK::SetAnnotationAuthorColorCommandArchive::clear_super(TSCK::SetAnnotationAuthorColorCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSCK::SetAnnotationAuthorColorCommandArchive::clear_annotation_author(TSCK::SetAnnotationAuthorColorCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Color *TSCK::SetAnnotationAuthorColorCommandArchive::clear_color(TSCK::SetAnnotationAuthorColorCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Color *TSCK::SetAnnotationAuthorColorCommandArchive::clear_old_color(TSCK::SetAnnotationAuthorColorCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSCK::SetAnnotationAuthorColorCommandArchive *TSCK::SetAnnotationAuthorColorCommandArchive::SetAnnotationAuthorColorCommandArchive(TSCK::SetAnnotationAuthorColorCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856FA48;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SetAnnotationAuthorColorCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_28856FA48;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SetAnnotationAuthorColorCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSCK::SetAnnotationAuthorColorCommandArchive *TSCK::SetAnnotationAuthorColorCommandArchive::SetAnnotationAuthorColorCommandArchive(TSCK::SetAnnotationAuthorColorCommandArchive *this, const TSCK::SetAnnotationAuthorColorCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28856FA48;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void TSCK::SetAnnotationAuthorColorCommandArchive::~SetAnnotationAuthorColorCommandArchive(TSCK::SetAnnotationAuthorColorCommandArchive *this)
{
  sub_2765FEB30(this);
  sub_2765F8538(this + 1);
}

{
  TSCK::SetAnnotationAuthorColorCommandArchive::~SetAnnotationAuthorColorCommandArchive(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *sub_2765FEB30(uint64_t *result)
{
  if (result != &TSCK::_SetAnnotationAuthorColorCommandArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277C98FA0]();
      MEMORY[0x277C999C0](v2, 0x10A1C40C24530F0);
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C999C0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::Color::~Color(v4);
      MEMORY[0x277C999C0]();
    }

    result = v1[6];
    if (result)
    {
      TSP::Color::~Color(result);

      JUMPOUT(0x277C999C0);
    }
  }

  return result;
}

uint64_t *TSCK::SetAnnotationAuthorColorCommandArchive::default_instance(TSCK::SetAnnotationAuthorColorCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_SetAnnotationAuthorColorCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_SetAnnotationAuthorColorCommandArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCK::SetAnnotationAuthorColorCommandArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_12:
    this = TSP::Reference::Clear(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  this = TSK::CommandArchive::Clear(*(this + 3));
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  this = TSP::Color::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSP::Color::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return this;
}

google::protobuf::internal *TSCK::SetAnnotationAuthorColorCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  for (i = *(a3 + 92); (sub_27662CC00(a3, &v23, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v23 + 1);
    v7 = *v23;
    if ((*v23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v23 + 2);
LABEL_6:
      v23 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v8 - 128));
    v23 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v21;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v9 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v14 = *(a1 + 40);
          if (!v14)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = MEMORY[0x277C994C0](v18);
            *(a1 + 40) = v14;
LABEL_37:
            v6 = v23;
          }

LABEL_38:
          v13 = sub_276635C20(a3, v14, v6);
          goto LABEL_46;
        }
      }

      else if (v9 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v14 = *(a1 + 48);
        if (!v14)
        {
          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277C994C0](v15);
          *(a1 + 48) = v14;
          goto LABEL_37;
        }

        goto LABEL_38;
      }
    }

    else if (v9 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v16 = *(a1 + 24);
        if (!v16)
        {
          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v16 = MEMORY[0x277C99420](v17);
          *(a1 + 24) = v16;
          v6 = v23;
        }

        v13 = sub_276635B50(a3, v16, v6);
        goto LABEL_46;
      }
    }

    else if (v9 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v11 = *(a1 + 32);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C994F0](v12);
        *(a1 + 32) = v11;
        v6 = v23;
      }

      v13 = sub_2766358E0(a3, v11, v6);
      goto LABEL_46;
    }

    if (v7)
    {
      v19 = (v7 & 7) == 4;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      *(a3 + 80) = v7 - 1;
      return v23;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27662D0DC((a1 + 8));
    }

    v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_46:
    v23 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v23;
}

unsigned __int8 *TSCK::SetAnnotationAuthorColorCommandArchive::_InternalSerialize(TSCK::SetAnnotationAuthorColorCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 4);
  *a2 = 18;
  v13 = *(v12 + 5);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 5);
  *a2 = 26;
  v19 = *(v18 + 5);
  if (v19 > 0x7F)
  {
    a2[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = a2 + 3;
      do
      {
        *(v20 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++v20;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(v20 - 1) = v22;
    }

    else
    {
      a2[2] = v21;
      v20 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v19;
    v20 = a2 + 2;
  }

  a2 = TSP::Color::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(this + 6);
    *a2 = 34;
    v25 = *(v24 + 5);
    if (v25 > 0x7F)
    {
      a2[1] = v25 | 0x80;
      v27 = v25 >> 7;
      if (v25 >> 14)
      {
        v26 = a2 + 3;
        do
        {
          *(v26 - 1) = v27 | 0x80;
          v28 = v27 >> 7;
          ++v26;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
        *(v26 - 1) = v28;
      }

      else
      {
        a2[2] = v27;
        v26 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v25;
      v26 = a2 + 2;
    }

    a2 = TSP::Color::_InternalSerialize(v24, v26, a3);
  }

LABEL_46:
  v30 = *(this + 1);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v30 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::SetAnnotationAuthorColorCommandArchive::ByteSizeLong(TSCK::SetAnnotationAuthorColorCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v7 = TSP::Reference::ByteSizeLong(*(this + 4));
      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 4) == 0)
      {
LABEL_7:
        if ((v2 & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

    v8 = TSP::Color::ByteSizeLong(*(this + 5));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) != 0)
    {
LABEL_8:
      v5 = TSP::Color::ByteSizeLong(*(this + 6));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_9:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSCK::SetAnnotationAuthorColorCommandArchive::MergeFrom(TSCK::SetAnnotationAuthorColorCommandArchive *a1, void *lpsrc)
{
  if (v4)
  {

    return TSCK::SetAnnotationAuthorColorCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::SetAnnotationAuthorColorCommandArchive::MergeFrom(uint64_t this, const TSCK::SetAnnotationAuthorColorCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C99420](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v9 = *(v3 + 32);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = MEMORY[0x277C994F0](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = MEMORY[0x277D80A18];
      }

      this = TSP::Reference::MergeFrom(v9, v11);
    }

    v12 = MEMORY[0x277D809E8];
    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v13 = *(v3 + 40);
      if (!v13)
      {
        v14 = *(v3 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C994C0](v14);
        *(v3 + 40) = v13;
      }

      if (*(a2 + 5))
      {
        v15 = *(a2 + 5);
      }

      else
      {
        v15 = v12;
      }

      this = TSP::Color::MergeFrom(v13, v15);
    }

    if ((v5 & 8) != 0)
    {
      *(v3 + 16) |= 8u;
      v16 = *(v3 + 48);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C994C0](v17);
        *(v3 + 48) = v16;
      }

      if (*(a2 + 6))
      {
        v18 = *(a2 + 6);
      }

      else
      {
        v18 = v12;
      }

      return TSP::Color::MergeFrom(v16, v18);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSCK::SetAnnotationAuthorColorCommandArchive::CopyFrom(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::SetAnnotationAuthorColorCommandArchive::Clear(result);

    return TSCK::SetAnnotationAuthorColorCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

const TSCK::SetAnnotationAuthorColorCommandArchive *TSCK::SetAnnotationAuthorColorCommandArchive::CopyFrom(const TSCK::SetAnnotationAuthorColorCommandArchive *this, const TSCK::SetAnnotationAuthorColorCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::SetAnnotationAuthorColorCommandArchive::Clear(this);

    return TSCK::SetAnnotationAuthorColorCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::SetAnnotationAuthorColorCommandArchive::IsInitialized(TSCK::SetAnnotationAuthorColorCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      result = TSP::Color::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    result = TSP::Color::IsInitialized(*(this + 6));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCK::SetAnnotationAuthorColorCommandArchive::InternalSwap(TSCK::SetAnnotationAuthorColorCommandArchive *this, TSCK::SetAnnotationAuthorColorCommandArchive *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  result = *(a2 + 40);
  *(this + 40) = result;
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  return result;
}

TSK::CommandArchive *TSCK::SetActivityAuthorShareParticipantIDCommandArchive::clear_super(TSCK::SetActivityAuthorShareParticipantIDCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSCK::SetActivityAuthorShareParticipantIDCommandArchive::clear_activity_author(TSCK::SetActivityAuthorShareParticipantIDCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSCK::SetActivityAuthorShareParticipantIDCommandArchive *TSCK::SetActivityAuthorShareParticipantIDCommandArchive::SetActivityAuthorShareParticipantIDCommandArchive(TSCK::SetActivityAuthorShareParticipantIDCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856FAF8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SetActivityAuthorShareParticipantIDCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = 0;
  *(this + 6) = 0;
  return this;
}

TSCK::SetActivityAuthorShareParticipantIDCommandArchive *TSCK::SetActivityAuthorShareParticipantIDCommandArchive::SetActivityAuthorShareParticipantIDCommandArchive(TSCK::SetActivityAuthorShareParticipantIDCommandArchive *this, const TSCK::SetActivityAuthorShareParticipantIDCommandArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_28856FAF8;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27662D2A0(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  v6 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 4) = v6;
  if ((v4 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  if ((v4 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v4 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void TSCK::SetActivityAuthorShareParticipantIDCommandArchive::~SetActivityAuthorShareParticipantIDCommandArchive(TSCK::SetActivityAuthorShareParticipantIDCommandArchive *this)
{
  sub_2765FFA00(this);
  sub_2765F8538(this + 1);
}

{
  TSCK::SetActivityAuthorShareParticipantIDCommandArchive::~SetActivityAuthorShareParticipantIDCommandArchive(this);

  JUMPOUT(0x277C999C0);
}

TSP::Reference *sub_2765FFA00(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C999C0](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C999C0](v4, 0x1012C40EC159624);
  }

  if (v1 != &TSCK::_SetActivityAuthorShareParticipantIDCommandArchive_default_instance_)
  {
    if (*(v1 + 5))
    {
      v5 = MEMORY[0x277C98FA0]();
      MEMORY[0x277C999C0](v5, 0x10A1C40C24530F0);
    }

    result = *(v1 + 6);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C999C0);
    }
  }

  return result;
}

void *TSCK::SetActivityAuthorShareParticipantIDCommandArchive::default_instance(TSCK::SetActivityAuthorShareParticipantIDCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_SetActivityAuthorShareParticipantIDCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_SetActivityAuthorShareParticipantIDCommandArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCK::SetActivityAuthorShareParticipantIDCommandArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  this = TSK::CommandArchive::Clear(*(this + 5));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSP::Reference::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return this;
}

google::protobuf::internal *TSCK::SetActivityAuthorShareParticipantIDCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  for (i = *(a3 + 92); (sub_27662CC00(a3, &v20, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v20 + 1);
    v7 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v20 + 2);
LABEL_6:
      v20 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v8 - 128));
    v20 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v18;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v9 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 1u;
          goto LABEL_31;
        }
      }

      else if (v9 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 2u;
LABEL_31:
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v13 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_39;
      }
    }

    else if (v9 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 4u;
        v14 = *(a1 + 40);
        if (!v14)
        {
          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277C99420](v15);
          *(a1 + 40) = v14;
          v6 = v20;
        }

        v13 = sub_276635B50(a3, v14, v6);
        goto LABEL_39;
      }
    }

    else if (v9 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 8u;
      v11 = *(a1 + 48);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C994F0](v12);
        *(a1 + 48) = v11;
        v6 = v20;
      }

      v13 = sub_2766358E0(a3, v11, v6);
      goto LABEL_39;
    }

    if (v7)
    {
      v16 = (v7 & 7) == 4;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      *(a3 + 80) = v7 - 1;
      return v20;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27662D0DC((a1 + 8));
    }

    v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_39:
    v20 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v20;
}

unsigned __int8 *TSCK::SetActivityAuthorShareParticipantIDCommandArchive::_InternalSerialize(TSCK::SetActivityAuthorShareParticipantIDCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 5);
    *v4 = 10;
    v10 = *(v9 + 5);
    if (v10 > 0x7F)
    {
      v4[1] = v10 | 0x80;
      v12 = v10 >> 7;
      if (v10 >> 14)
      {
        v11 = v4 + 3;
        do
        {
          *(v11 - 1) = v12 | 0x80;
          v13 = v12 >> 7;
          ++v11;
          v14 = v12 >> 14;
          v12 >>= 7;
        }

        while (v14);
        *(v11 - 1) = v13;
      }

      else
      {
        v4[2] = v12;
        v11 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v10;
      v11 = v4 + 2;
    }

    v4 = TSK::CommandArchive::_InternalSerialize(v9, v11, a3);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(this + 6);
  *v4 = 18;
  v16 = *(v15 + 5);
  if (v16 > 0x7F)
  {
    v4[1] = v16 | 0x80;
    v18 = v16 >> 7;
    if (v16 >> 14)
    {
      v17 = v4 + 3;
      do
      {
        *(v17 - 1) = v18 | 0x80;
        v19 = v18 >> 7;
        ++v17;
        v20 = v18 >> 14;
        v18 >>= 7;
      }

      while (v20);
      *(v17 - 1) = v19;
    }

    else
    {
      v4[2] = v18;
      v17 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v16;
    v17 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v15, v17, a3);
  if ((v6 & 1) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_28:
  v4 = sub_2765FB858(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_5:
    v4 = sub_2765FB858(a3, 4, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_6:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSCK::SetActivityAuthorShareParticipantIDCommandArchive::ByteSizeLong(TSCK::SetActivityAuthorShareParticipantIDCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 4) != 0)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 5));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 2) != 0)
    {
      v8 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if ((v2 & 8) != 0)
  {
    v11 = TSP::Reference::ByteSizeLong(*(this + 6));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSCK::SetActivityAuthorShareParticipantIDCommandArchive::MergeFrom(TSCK::SetActivityAuthorShareParticipantIDCommandArchive *a1, void *lpsrc)
{
  if (v4)
  {

    return TSCK::SetActivityAuthorShareParticipantIDCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::SetActivityAuthorShareParticipantIDCommandArchive::MergeFrom(uint64_t this, const TSCK::SetActivityAuthorShareParticipantIDCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) == 0)
  {
    return this;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    *(v3 + 16) |= 2u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return this;
      }

      goto LABEL_19;
    }

    goto LABEL_11;
  }

  *(v3 + 16) |= 1u;
  this = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v5 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  *(v3 + 16) |= 4u;
  v6 = *(v3 + 40);
  if (!v6)
  {
    v7 = *(v3 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x277C99420](v7);
    *(v3 + 40) = v6;
  }

  if (*(a2 + 5))
  {
    v8 = *(a2 + 5);
  }

  else
  {
    v8 = MEMORY[0x277D80718];
  }

  this = TSK::CommandArchive::MergeFrom(v6, v8);
  if ((v5 & 8) != 0)
  {
LABEL_19:
    *(v3 + 16) |= 8u;
    v9 = *(v3 + 48);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C994F0](v10);
      *(v3 + 48) = v9;
    }

    if (*(a2 + 6))
    {
      v11 = *(a2 + 6);
    }

    else
    {
      v11 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v9, v11);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSCK::SetActivityAuthorShareParticipantIDCommandArchive::CopyFrom(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::SetActivityAuthorShareParticipantIDCommandArchive::Clear(result);

    return TSCK::SetActivityAuthorShareParticipantIDCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

const TSCK::SetActivityAuthorShareParticipantIDCommandArchive *TSCK::SetActivityAuthorShareParticipantIDCommandArchive::CopyFrom(const TSCK::SetActivityAuthorShareParticipantIDCommandArchive *this, const TSCK::SetActivityAuthorShareParticipantIDCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::SetActivityAuthorShareParticipantIDCommandArchive::Clear(this);

    return TSCK::SetActivityAuthorShareParticipantIDCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::SetActivityAuthorShareParticipantIDCommandArchive::IsInitialized(TSCK::SetActivityAuthorShareParticipantIDCommandArchive *this)
{
  if ((*(this + 16) & 4) == 0)
  {
    return 0;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 5));
  if (result)
  {
    if ((*(this + 16) & 8) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 6));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCK::SetActivityAuthorShareParticipantIDCommandArchive::InternalSwap(TSCK::SetActivityAuthorShareParticipantIDCommandArchive *this, TSCK::SetActivityAuthorShareParticipantIDCommandArchive *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  result = *(a2 + 40);
  *(this + 40) = result;
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  return result;
}

TSP::UUIDPath *TSCK::IdOperationArgs::clear_id_path(TSCK::IdOperationArgs *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::IdOperationArgs *TSCK::IdOperationArgs::IdOperationArgs(TSCK::IdOperationArgs *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856FBA8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_IdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28856FBA8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_IdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCK::IdOperationArgs *TSCK::IdOperationArgs::IdOperationArgs(TSCK::IdOperationArgs *this, const TSCK::IdOperationArgs *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28856FBA8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSCK::IdOperationArgs::~IdOperationArgs(TSCK::IdOperationArgs *this)
{
  if (this != &TSCK::_IdOperationArgs_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C99350]();
    MEMORY[0x277C999C0](v2, 0x10A1C40290C9B23);
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::IdOperationArgs::~IdOperationArgs(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::IdOperationArgs::default_instance(TSCK::IdOperationArgs *this)
{
  if (atomic_load_explicit(scc_info_IdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_IdOperationArgs_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCK::IdOperationArgs::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSP::UUIDPath::Clear(*(this + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27662D2EC(v2);
  }

  return this;
}

google::protobuf::internal *TSCK::IdOperationArgs::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  for (i = *(a3 + 92); (sub_27662CC00(a3, &v16, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v16 + 1);
    v7 = *v16;
    if (*v16 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v8 - 128));
        v16 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v14;
        goto LABEL_7;
      }

      v6 = (v16 + 2);
    }

    v16 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C994E0](v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_276635CF0(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27662D0DC((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *TSCK::IdOperationArgs::_InternalSerialize(TSCK::IdOperationArgs *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
    *a2 = 10;
    v6 = *(v5 + 10);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSP::UUIDPath::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::IdOperationArgs::ByteSizeLong(TSP::UUIDPath **this)
{
  if (this[2])
  {
    v3 = TSP::UUIDPath::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSCK::IdOperationArgs::MergeFrom(TSCK::IdOperationArgs *a1, void *lpsrc)
{
  if (v4)
  {

    return TSCK::IdOperationArgs::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::IdOperationArgs::MergeFrom(uint64_t this, const TSCK::IdOperationArgs *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;
    if (!*(v3 + 24))
    {
      v5 = *(v3 + 8);
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 24) = MEMORY[0x277C994E0](v5);
    }

    return MEMORY[0x2821EAAC8]();
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSCK::IdOperationArgs::CopyFrom(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::IdOperationArgs::Clear(result);

    return TSCK::IdOperationArgs::MergeFrom(v4, a2);
  }

  return result;
}

const TSCK::IdOperationArgs *TSCK::IdOperationArgs::CopyFrom(const TSCK::IdOperationArgs *this, const TSCK::IdOperationArgs *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::IdOperationArgs::Clear(this);

    return TSCK::IdOperationArgs::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::IdOperationArgs::IsInitialized(TSP::UUIDPath **this)
{
  if (this[2])
  {
    return TSP::UUIDPath::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSCK::IdOperationArgs::InternalSwap(TSCK::IdOperationArgs *this, TSCK::IdOperationArgs *a2)
{
  result = sub_2765F8BC4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSCK::AddIdOperationArgs *TSCK::AddIdOperationArgs::AddIdOperationArgs(TSCK::AddIdOperationArgs *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856FC58;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_AddIdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28856FC58;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_AddIdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSCK::AddIdOperationArgs *TSCK::AddIdOperationArgs::AddIdOperationArgs(TSCK::AddIdOperationArgs *this, const TSCK::AddIdOperationArgs *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28856FC58;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 8) = *(a2 + 8);
  return this;
}

void TSCK::AddIdOperationArgs::~AddIdOperationArgs(TSCK::AddIdOperationArgs *this)
{
  if (this != &TSCK::_AddIdOperationArgs_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCK::IdOperationArgs::~IdOperationArgs(v2);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::AddIdOperationArgs::~AddIdOperationArgs(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::AddIdOperationArgs::default_instance(TSCK::AddIdOperationArgs *this)
{
  if (atomic_load_explicit(scc_info_AddIdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_AddIdOperationArgs_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCK::AddIdOperationArgs::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSCK::IdOperationArgs::Clear(*(this + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27662D2EC(v2);
  }

  return this;
}

google::protobuf::internal *TSCK::AddIdOperationArgs::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_27662CC00(a3, &v22, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSCK::IdOperationArgs>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_276635DC0(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27662D0DC((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      LODWORD(v13) = *v7;
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v13 + (v15 << 7) - 128);
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_27662CC00(a3, &v22, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TSCK::AddIdOperationArgs::_InternalSerialize(TSCK::AddIdOperationArgs *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSCK::IdOperationArgs::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 8);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
    }
  }

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::AddIdOperationArgs::RequiredFieldsByteSizeFallback(TSCK::AddIdOperationArgs *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCK::IdOperationArgs::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      return result;
    }
  }

  v5 = *(this + 8);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
  return result;
}

uint64_t TSCK::AddIdOperationArgs::ByteSizeLong(TSP::UUIDPath ***this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v7 = TSCK::AddIdOperationArgs::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCK::IdOperationArgs::ByteSizeLong(this[3]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = *(this + 8);
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 10;
    }

    v7 = v2 + v3 + v6 + 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v7, this + 20);
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

uint64_t TSCK::AddIdOperationArgs::MergeFrom(TSCK::AddIdOperationArgs *a1, void *lpsrc)
{
  if (v4)
  {

    return TSCK::AddIdOperationArgs::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::AddIdOperationArgs::MergeFrom(uint64_t this, const TSCK::AddIdOperationArgs *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCK::IdOperationArgs>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCK::_IdOperationArgs_default_instance_;
      }

      this = TSCK::IdOperationArgs::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSCK::AddIdOperationArgs::CopyFrom(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::AddIdOperationArgs::Clear(result);

    return TSCK::AddIdOperationArgs::MergeFrom(v4, a2);
  }

  return result;
}

const TSCK::AddIdOperationArgs *TSCK::AddIdOperationArgs::CopyFrom(const TSCK::AddIdOperationArgs *this, const TSCK::AddIdOperationArgs *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::AddIdOperationArgs::Clear(this);

    return TSCK::AddIdOperationArgs::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::AddIdOperationArgs::IsInitialized(TSCK::AddIdOperationArgs *this)
{
  if (~*(this + 4) & 3) == 0 && (v1 = *(this + 3), (*(v1 + 16)))
  {
    return TSP::UUIDPath::IsInitialized(*(v1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t *TSCK::AddIdOperationArgs::InternalSwap(TSCK::AddIdOperationArgs *this, TSCK::AddIdOperationArgs *a2)
{
  result = sub_2765F8BC4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

TSCK::RemoveIdOperationArgs *TSCK::RemoveIdOperationArgs::RemoveIdOperationArgs(TSCK::RemoveIdOperationArgs *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856FD08;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RemoveIdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28856FD08;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RemoveIdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSCK::RemoveIdOperationArgs *TSCK::RemoveIdOperationArgs::RemoveIdOperationArgs(TSCK::RemoveIdOperationArgs *this, const TSCK::RemoveIdOperationArgs *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28856FD08;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 8) = *(a2 + 8);
  return this;
}

void TSCK::RemoveIdOperationArgs::~RemoveIdOperationArgs(TSCK::RemoveIdOperationArgs *this)
{
  if (this != &TSCK::_RemoveIdOperationArgs_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCK::IdOperationArgs::~IdOperationArgs(v2);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::RemoveIdOperationArgs::~RemoveIdOperationArgs(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::RemoveIdOperationArgs::default_instance(TSCK::RemoveIdOperationArgs *this)
{
  if (atomic_load_explicit(scc_info_RemoveIdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_RemoveIdOperationArgs_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCK::RemoveIdOperationArgs::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSCK::IdOperationArgs::Clear(*(this + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27662D2EC(v2);
  }

  return this;
}

google::protobuf::internal *TSCK::RemoveIdOperationArgs::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_27662CC00(a3, &v22, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSCK::IdOperationArgs>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_276635DC0(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27662D0DC((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      LODWORD(v13) = *v7;
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v13 + (v15 << 7) - 128);
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_27662CC00(a3, &v22, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TSCK::RemoveIdOperationArgs::_InternalSerialize(TSCK::RemoveIdOperationArgs *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSCK::IdOperationArgs::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 8);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
    }
  }

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::RemoveIdOperationArgs::RequiredFieldsByteSizeFallback(TSCK::RemoveIdOperationArgs *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCK::IdOperationArgs::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      return result;
    }
  }

  v5 = *(this + 8);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
  return result;
}

uint64_t TSCK::RemoveIdOperationArgs::ByteSizeLong(TSP::UUIDPath ***this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v7 = TSCK::RemoveIdOperationArgs::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCK::IdOperationArgs::ByteSizeLong(this[3]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = *(this + 8);
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 10;
    }

    v7 = v2 + v3 + v6 + 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v7, this + 20);
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

uint64_t TSCK::RemoveIdOperationArgs::MergeFrom(TSCK::RemoveIdOperationArgs *a1, void *lpsrc)
{
  if (v4)
  {

    return TSCK::RemoveIdOperationArgs::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::RemoveIdOperationArgs::MergeFrom(uint64_t this, const TSCK::RemoveIdOperationArgs *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCK::IdOperationArgs>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCK::_IdOperationArgs_default_instance_;
      }

      this = TSCK::IdOperationArgs::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSCK::RemoveIdOperationArgs::CopyFrom(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::RemoveIdOperationArgs::Clear(result);

    return TSCK::RemoveIdOperationArgs::MergeFrom(v4, a2);
  }

  return result;
}

const TSCK::RemoveIdOperationArgs *TSCK::RemoveIdOperationArgs::CopyFrom(const TSCK::RemoveIdOperationArgs *this, const TSCK::RemoveIdOperationArgs *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::RemoveIdOperationArgs::Clear(this);

    return TSCK::RemoveIdOperationArgs::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::RemoveIdOperationArgs::IsInitialized(TSCK::RemoveIdOperationArgs *this)
{
  if (~*(this + 4) & 3) == 0 && (v1 = *(this + 3), (*(v1 + 16)))
  {
    return TSP::UUIDPath::IsInitialized(*(v1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t *TSCK::RemoveIdOperationArgs::InternalSwap(TSCK::RemoveIdOperationArgs *this, TSCK::RemoveIdOperationArgs *a2)
{
  result = sub_2765F8BC4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

TSCK::RearrangeIdOperationArgs *TSCK::RearrangeIdOperationArgs::RearrangeIdOperationArgs(TSCK::RearrangeIdOperationArgs *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856FDB8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RearrangeIdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_28856FDB8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RearrangeIdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCK::RearrangeIdOperationArgs *TSCK::RearrangeIdOperationArgs::RearrangeIdOperationArgs(TSCK::RearrangeIdOperationArgs *this, const TSCK::RearrangeIdOperationArgs *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28856FDB8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 4) = *(a2 + 4);
  return this;
}

void TSCK::RearrangeIdOperationArgs::~RearrangeIdOperationArgs(TSCK::RearrangeIdOperationArgs *this)
{
  if (this != &TSCK::_RearrangeIdOperationArgs_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCK::IdOperationArgs::~IdOperationArgs(v2);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::RearrangeIdOperationArgs::~RearrangeIdOperationArgs(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::RearrangeIdOperationArgs::default_instance(TSCK::RearrangeIdOperationArgs *this)
{
  if (atomic_load_explicit(scc_info_RearrangeIdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_RearrangeIdOperationArgs_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCK::RearrangeIdOperationArgs::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSCK::IdOperationArgs::Clear(*(this + 3));
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 32) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return this;
}

google::protobuf::internal *TSCK::RearrangeIdOperationArgs::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_27662CC00(a3, &v28, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v28 + 1);
      v8 = *v28;
      if ((*v28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v9 - 128));
      v28 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_45;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_13;
        }

        v5 |= 4u;
        v18 = (v7 + 1);
        LODWORD(v17) = *v7;
        if ((v17 & 0x80) == 0)
        {
          goto LABEL_29;
        }

        v19 = *v18;
        v17 = (v17 + (v19 << 7) - 128);
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_29:
          v28 = v18;
          *(a1 + 36) = v17;
          goto LABEL_36;
        }

        v26 = google::protobuf::internal::VarintParseSlow64(v7, v17);
        v28 = v26;
        *(a1 + 36) = v27;
        if (!v26)
        {
LABEL_45:
          v28 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 == 1 && v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v20 = *(a1 + 24);
            if (!v20)
            {
              v21 = *(a1 + 8);
              if (v21)
              {
                v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
              }

              v20 = google::protobuf::Arena::CreateMaybeMessage<TSCK::IdOperationArgs>(v21);
              *(a1 + 24) = v20;
              v7 = v28;
            }

            v13 = sub_276635DC0(a3, v20, v7);
          }

          else
          {
LABEL_13:
            if (v8)
            {
              v12 = (v8 & 7) == 4;
            }

            else
            {
              v12 = 1;
            }

            if (v12)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_27662D0DC((a1 + 8));
            }

            v13 = google::protobuf::internal::UnknownFieldParse();
          }

          v28 = v13;
          if (!v13)
          {
            goto LABEL_45;
          }

          goto LABEL_36;
        }

        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v15 = (v7 + 1);
        LODWORD(v14) = *v7;
        if ((v14 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        v16 = *v15;
        v14 = (v14 + (v16 << 7) - 128);
        if ((v16 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_24:
          v28 = v15;
          *(a1 + 32) = v14;
          goto LABEL_36;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v7, v14);
        v28 = v24;
        *(a1 + 32) = v25;
        if (!v24)
        {
          goto LABEL_45;
        }
      }

LABEL_36:
      if (sub_27662CC00(a3, &v28, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v28 + 2);
LABEL_6:
    v28 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

unsigned __int8 *TSCK::RearrangeIdOperationArgs::_InternalSerialize(TSCK::RearrangeIdOperationArgs *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v11 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v11 | 0x80;
          v14 = v11 >> 7;
          ++v9;
          v15 = v11 >> 14;
          v11 >>= 7;
        }

        while (v15);
        *(v9 - 1) = v14;
      }

      else
      {
        a2[2] = v11;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSCK::IdOperationArgs::_InternalSerialize(v7, v9, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 8);
  *a2 = 16;
  if (v16 > 0x7F)
  {
    a2[1] = v16 | 0x80;
    v17 = v16 >> 7;
    if (v16 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v17 | 0x80;
        v18 = v17 >> 7;
        ++a2;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
      *(a2 - 1) = v18;
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      a2[2] = v17;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    a2[1] = v16;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 9);
  *a2 = 24;
  if (v6 > 0x7F)
  {
    a2[1] = v6 | 0x80;
    v10 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v12 = v10 >> 7;
        ++a2;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
  }

LABEL_34:
  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v20 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::RearrangeIdOperationArgs::RequiredFieldsByteSizeFallback(TSCK::RearrangeIdOperationArgs *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCK::IdOperationArgs::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  v5 = *(this + 8);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_9:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 9);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
  }

  return result;
}

uint64_t TSCK::RearrangeIdOperationArgs::ByteSizeLong(TSP::UUIDPath ***this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v10 = TSCK::RearrangeIdOperationArgs::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCK::IdOperationArgs::ByteSizeLong(this[3]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = 10;
    v5 = *(this + 8);
    v6 = *(this + 9);
    v7 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    if (v5 >= 0)
    {
      v4 = v7;
    }

    v8 = 10;
    v9 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    if (v6 >= 0)
    {
      v8 = v9;
    }

    v10 = v2 + v3 + v4 + v8 + 3;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v10, this + 20);
  }

  else
  {
    *(this + 5) = v10;
    return v10;
  }
}